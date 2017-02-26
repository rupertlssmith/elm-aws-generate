
var _ktonon$aws_sdk_elm$Native_HMAC = function () {

    var signatureKey = function(secretKey, dateStamp, regionName, serviceName, toSign) {
        // # NOTE #
        // AWS docs show an HMAC function defined like:
        // HMAC(key, data)
        // crypto-js flips these arguments to:
        // HMAC(data, key)
        var Crypto = window.Crypto;

        var kDate = Crypto.HmacSHA256(dateStamp, "AWS4" + secretKey);
        var kRegion = Crypto.HmacSHA256(regionName, kDate);
        var kService = Crypto.HmacSHA256(serviceName, kRegion);
        var kSigning = Crypto.HmacSHA256("aws4_request", kService);

        var signature = Crypto.HmacSHA256(toSign, kSigning);
        return signature.toString(Crypto.enc.Hex);
    };

    return {
        signatureKey: F5(signatureKey),
    };

}();
