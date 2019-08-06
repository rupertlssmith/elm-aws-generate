const { lowCam, upCam, safeIdentifier } = require('./util');
const render = require('./render');

const jsonDecode = 'JD';
const jsonEncode = 'JE';

module.exports = (shapesWithoutNames, { inputShapes, outputShapes }) => {
  const shapes = {};
  Object.keys(shapesWithoutNames).forEach((rawName) => {
    const name = upCam(rawName);
    shapes[rawName] = Object.assign({ name }, shapesWithoutNames[rawName]);
  });

  const resolve = {};

  resolve.type = (sh) => {
    const typeResolver = resolve[sh.type];
    if (typeResolver) {
      return Object.assign({ name: sh.name }, typeResolver(sh));
    }
    throw new Error(`Could not find type resolver for ${JSON.stringify(sh)}`);
  };

  resolve.shape = sh =>
    resolve.type(shapes[sh.shape]);

  resolve.boolean = () => render.nothing({
    type: 'Bool',
    decoder: `${jsonDecode}.bool`,
    jsonEncoder: `${jsonEncode}.bool`,
    queryEncoderType: 'AWS.Core.Encode.bool',
    queryEncoder: base => `AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "${base}"`,
  });

  resolve.float = () => render.nothing({
    type: 'Float',
    decoder: `${jsonDecode}.float`,
    jsonEncoder: `${jsonEncode}.float`,
    queryEncoderType: 'String.fromFloat',
    queryEncoder: base => `AWS.Core.Encode.addOneToQueryArgs String.fromFloat "${base}"`,
  });

  resolve.double = resolve.float;

  resolve.integer = () => render.nothing({
    type: 'Int',
    decoder: `${jsonDecode}.int`,
    jsonEncoder: `${jsonEncode}.int`,
    queryEncoderType: 'String.fromInt',
    queryEncoder: base => `AWS.Core.Encode.addOneToQueryArgs String.fromInt "${base}"`,
  });

  resolve.long = resolve.integer;

  resolve.list = (sh) => {
    const child = resolve.shape(sh.member);
    return render.nothing({
      type: `(List ${child.type})`,
      decoder: `(${jsonDecode}.list ${child.decoder})`,
      jsonEncoder: `${jsonEncode}.list (${child.jsonEncoder})`,
      queryEncoderType: child.queryEncoderType,
      queryEncoder: base => `AWS.Core.Encode.addListToQueryArgs ${sh.flattened ? 'True' : 'False'} (${child.queryEncoder('')}) "${base}"`,
    });
  };

  const isEnumOf = pattern => key => (
    key.enum && key.enum.length &&
    key.enum.every(pattern.test.bind(pattern))
  );

  const isEnumOfFloats = isEnumOf(/\d+(\.\d+)/);

  resolve.map = (sh) => {
    const key = resolve.shape(sh.key);
    if (key.type !== 'String' && !key.enum) {
      throw new Error(`Unexpected map key type ${key.type}, don't know how to decode`);
    }
    const value = resolve.shape(sh.value);
    const queryEncoderType = isEnumOfFloats(key)
      ? 'AWS.Core.Enum.toFloat >> Result.withDefault 0.0 >> String.fromFloat'
      : (value.type == 'Int')
        ? 'String.fromInt'
        : (value.type == 'String')
          ? 'identity'
          : `${lowCam(value.type)}ToString`;
    const queryEncoder = base => `AWS.Core.Encode.addDictToQueryArgs (${queryEncoderType}) "${base}"`;

    const jsonEncoder = isEnumOfFloats(key)
      ? 'AWS.Core.Enum.toFloat >> Result.withDefault 0.0 >> String.fromFloat'
      : (value.type == 'Int')
        ? `${jsonEncode}.dict identity ${jsonEncode}.int`
        : (value.type == 'String')
          ? `${jsonEncode}.dict identity ${jsonEncode}.string`
          : `${lowCam(value.type)}Encoder`;

    return isEnumOfFloats(key) ?
      render.nothing({
        type: `(Dict Float ${value.type})`,
        decoder: `(JDX.dict2 ${jsonDecode}.float ${value.decoder})`,
        jsonEncoder: `AWS.Core.Enum.toFloat >> Result.withDefault 0.0 >> ${jsonEncode}.float`,
        queryEncoderType,
        queryEncoder,
        extraImports: [
          'import Dict exposing (Dict)',
          'import Json.Decode.Extra as JDX',
        ],
      }) :
      render.nothing({
        type: `(Dict String ${value.type})`,
        decoder: `(AWS.Core.Decode.dict ${value.decoder})`,
        jsonEncoder,
        queryEncoderType,
        queryEncoder,
        extraImports: [
          'import Dict exposing (Dict)',
        ],
      });
  };

  resolve.string = sh => (sh.enum
    ? resolve.enum(sh)
    : render.nothing({
      type: 'String',
      decoder: `${jsonDecode}.string`,
      jsonEncoder: `${jsonEncode}.string`,
      queryEncoderType: 'identity',
      queryEncoder: base => `AWS.Core.Encode.addOneToQueryArgs identity "${base}"`,
    }));

  resolve.blob = resolve.string; // TODO:

  resolve.timestamp = () => render.nothing({
    type: 'Posix',
    decoder: 'JDX.datetime',
    jsonEncoder: `Iso8601.fromTime >> ${jsonEncode}.string`,
    queryEncoderType: 'Iso8601.fromTime',
    queryEncoder: base => `AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "${base}"`,
    extraImports: [
      'import Time exposing (Posix)',
      'import Iso8601',
      'import Json.Decode.Extra as JDX',
    ],
  });

  resolve.enum = sh => render.enum({
    type: sh.name,
    decoder: `${lowCam(sh.name)}Decoder`,
    jsonEncoder: `${lowCam(sh.name)}ToString >> ${jsonEncode}.string`,
    queryEncoderType: '${lowCam(sh.name)}ToString',
    queryEncoder: base => `AWS.Core.Encode.addOneToQueryArgs ${lowCam(sh.name)}ToString "${base}"`,
    extraImports: [
    ],
    enum: sh.enum.map(safeIdentifier),
    doc: render.enumDoc(sh),
    toStringFn : `${lowCam(sh.name)}ToString`,
    category: 'union',
  });

  resolve.structure = (sh) => {
    const category = resolve.structureCategory(sh);
    return render.structure({
      type: sh.name,
      decoder: `${lowCam(sh.name)}Decoder`,
      jsonEncoder: `${lowCam(sh.name)}Encoder`,
      queryEncoderType: `${lowCam(sh.name)}Encoder`,
      queryEncoder: base => `AWS.Core.Encode.addRecordToQueryArgs ${lowCam(sh.name)}Encoder "${base}"`,
      members: Object.keys(sh.members).map(key => ({
        required: sh.required && sh.required.indexOf(key) !== -1,
        key: safeIdentifier(lowCam(key)),
        rawKey: key,
        decodeKeys: Array.from(new Set([key, lowCam(key), upCam(key)])),
        value: resolve.shape(sh.members[key]),
      })),
      doc: category === 'response'
        ? `Type of HTTP response from ${lowCam(sh.name).slice(0, sh.name.length - 8)}`
        : sh.documentation,
      category,
    });
  };

  resolve.structureCategory = (sh) => {
    if (sh.exception) { return 'exception'; }
    if (outputShapes.indexOf(sh.name) !== -1) { return 'response'; }
    if (inputShapes.indexOf(sh.name) !== -1) { return 'request'; }
    return 'record';
  };

  const types = Object.keys(shapes).map(name =>
    resolve.type(Object.assign({ name }, shapes[name])));
  const byShape = {};
  types.forEach((t) => {
    byShape[t.type] = t;
  });
  types.findByShape = shape => byShape[shape];
  return types;
};
