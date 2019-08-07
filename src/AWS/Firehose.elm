module AWS.Firehose
    exposing
        ( service
        , createDeliveryStream
        , CreateDeliveryStreamOptions
        , deleteDeliveryStream
        , describeDeliveryStream
        , DescribeDeliveryStreamOptions
        , listDeliveryStreams
        , ListDeliveryStreamsOptions
        , listTagsForDeliveryStream
        , ListTagsForDeliveryStreamOptions
        , putRecord
        , putRecordBatch
        , startDeliveryStreamEncryption
        , stopDeliveryStreamEncryption
        , tagDeliveryStream
        , untagDeliveryStream
        , updateDestination
        , UpdateDestinationOptions
        , BufferingHints
        , CloudWatchLoggingOptions
        , CompressionFormat(..)
        , CopyCommand
        , CreateDeliveryStreamOutput
        , DataFormatConversionConfiguration
        , DeleteDeliveryStreamOutput
        , DeliveryStreamDescription
        , DeliveryStreamEncryptionConfiguration
        , DeliveryStreamEncryptionStatus(..)
        , DeliveryStreamStatus(..)
        , DeliveryStreamType(..)
        , DescribeDeliveryStreamOutput
        , Deserializer
        , DestinationDescription
        , ElasticsearchBufferingHints
        , ElasticsearchDestinationConfiguration
        , ElasticsearchDestinationDescription
        , ElasticsearchDestinationUpdate
        , ElasticsearchIndexRotationPeriod(..)
        , ElasticsearchRetryOptions
        , ElasticsearchS3BackupMode(..)
        , EncryptionConfiguration
        , ExtendedS3DestinationConfiguration
        , ExtendedS3DestinationDescription
        , ExtendedS3DestinationUpdate
        , HECEndpointType(..)
        , HiveJsonSerDe
        , InputFormatConfiguration
        , KMSEncryptionConfig
        , KinesisStreamSourceConfiguration
        , KinesisStreamSourceDescription
        , ListDeliveryStreamsOutput
        , ListTagsForDeliveryStreamOutput
        , NoEncryptionConfig(..)
        , OpenXJsonSerDe
        , OrcCompression(..)
        , OrcFormatVersion(..)
        , OrcSerDe
        , OutputFormatConfiguration
        , ParquetCompression(..)
        , ParquetSerDe
        , ParquetWriterVersion(..)
        , ProcessingConfiguration
        , Processor
        , ProcessorParameter
        , ProcessorParameterName(..)
        , ProcessorType(..)
        , PutRecordBatchOutput
        , PutRecordBatchResponseEntry
        , PutRecordOutput
        , Record
        , RedshiftDestinationConfiguration
        , RedshiftDestinationDescription
        , RedshiftDestinationUpdate
        , RedshiftRetryOptions
        , RedshiftS3BackupMode(..)
        , S3BackupMode(..)
        , S3DestinationConfiguration
        , S3DestinationDescription
        , S3DestinationUpdate
        , SchemaConfiguration
        , Serializer
        , SourceDescription
        , SplunkDestinationConfiguration
        , SplunkDestinationDescription
        , SplunkDestinationUpdate
        , SplunkRetryOptions
        , SplunkS3BackupMode(..)
        , StartDeliveryStreamEncryptionOutput
        , StopDeliveryStreamEncryptionOutput
        , Tag
        , TagDeliveryStreamOutput
        , UntagDeliveryStreamOutput
        , UpdateDestinationOutput
        )

{-| <fullname>Amazon Kinesis Data Firehose API Reference</fullname> <p>Amazon Kinesis Data Firehose is a fully managed service that delivers real-time streaming data to destinations such as Amazon Simple Storage Service (Amazon S3), Amazon Elasticsearch Service (Amazon ES), Amazon Redshift, and Splunk.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [createDeliveryStream](#createDeliveryStream)
* [CreateDeliveryStreamOptions](#CreateDeliveryStreamOptions)
* [deleteDeliveryStream](#deleteDeliveryStream)
* [describeDeliveryStream](#describeDeliveryStream)
* [DescribeDeliveryStreamOptions](#DescribeDeliveryStreamOptions)
* [listDeliveryStreams](#listDeliveryStreams)
* [ListDeliveryStreamsOptions](#ListDeliveryStreamsOptions)
* [listTagsForDeliveryStream](#listTagsForDeliveryStream)
* [ListTagsForDeliveryStreamOptions](#ListTagsForDeliveryStreamOptions)
* [putRecord](#putRecord)
* [putRecordBatch](#putRecordBatch)
* [startDeliveryStreamEncryption](#startDeliveryStreamEncryption)
* [stopDeliveryStreamEncryption](#stopDeliveryStreamEncryption)
* [tagDeliveryStream](#tagDeliveryStream)
* [untagDeliveryStream](#untagDeliveryStream)
* [updateDestination](#updateDestination)
* [UpdateDestinationOptions](#UpdateDestinationOptions)


@docs createDeliveryStream,CreateDeliveryStreamOptions,deleteDeliveryStream,describeDeliveryStream,DescribeDeliveryStreamOptions,listDeliveryStreams,ListDeliveryStreamsOptions,listTagsForDeliveryStream,ListTagsForDeliveryStreamOptions,putRecord,putRecordBatch,startDeliveryStreamEncryption,stopDeliveryStreamEncryption,tagDeliveryStream,untagDeliveryStream,updateDestination,UpdateDestinationOptions

## Responses

* [CreateDeliveryStreamOutput](#CreateDeliveryStreamOutput)
* [DeleteDeliveryStreamOutput](#DeleteDeliveryStreamOutput)
* [DescribeDeliveryStreamOutput](#DescribeDeliveryStreamOutput)
* [ListDeliveryStreamsOutput](#ListDeliveryStreamsOutput)
* [ListTagsForDeliveryStreamOutput](#ListTagsForDeliveryStreamOutput)
* [PutRecordBatchOutput](#PutRecordBatchOutput)
* [PutRecordOutput](#PutRecordOutput)
* [StartDeliveryStreamEncryptionOutput](#StartDeliveryStreamEncryptionOutput)
* [StopDeliveryStreamEncryptionOutput](#StopDeliveryStreamEncryptionOutput)
* [TagDeliveryStreamOutput](#TagDeliveryStreamOutput)
* [UntagDeliveryStreamOutput](#UntagDeliveryStreamOutput)
* [UpdateDestinationOutput](#UpdateDestinationOutput)


@docs CreateDeliveryStreamOutput,DeleteDeliveryStreamOutput,DescribeDeliveryStreamOutput,ListDeliveryStreamsOutput,ListTagsForDeliveryStreamOutput,PutRecordBatchOutput,PutRecordOutput,StartDeliveryStreamEncryptionOutput,StopDeliveryStreamEncryptionOutput,TagDeliveryStreamOutput,UntagDeliveryStreamOutput,UpdateDestinationOutput

## Records

* [BufferingHints](#BufferingHints)
* [CloudWatchLoggingOptions](#CloudWatchLoggingOptions)
* [CopyCommand](#CopyCommand)
* [DataFormatConversionConfiguration](#DataFormatConversionConfiguration)
* [DeliveryStreamDescription](#DeliveryStreamDescription)
* [DeliveryStreamEncryptionConfiguration](#DeliveryStreamEncryptionConfiguration)
* [Deserializer](#Deserializer)
* [DestinationDescription](#DestinationDescription)
* [ElasticsearchBufferingHints](#ElasticsearchBufferingHints)
* [ElasticsearchDestinationConfiguration](#ElasticsearchDestinationConfiguration)
* [ElasticsearchDestinationDescription](#ElasticsearchDestinationDescription)
* [ElasticsearchDestinationUpdate](#ElasticsearchDestinationUpdate)
* [ElasticsearchRetryOptions](#ElasticsearchRetryOptions)
* [EncryptionConfiguration](#EncryptionConfiguration)
* [ExtendedS3DestinationConfiguration](#ExtendedS3DestinationConfiguration)
* [ExtendedS3DestinationDescription](#ExtendedS3DestinationDescription)
* [ExtendedS3DestinationUpdate](#ExtendedS3DestinationUpdate)
* [HiveJsonSerDe](#HiveJsonSerDe)
* [InputFormatConfiguration](#InputFormatConfiguration)
* [KMSEncryptionConfig](#KMSEncryptionConfig)
* [KinesisStreamSourceConfiguration](#KinesisStreamSourceConfiguration)
* [KinesisStreamSourceDescription](#KinesisStreamSourceDescription)
* [OpenXJsonSerDe](#OpenXJsonSerDe)
* [OrcSerDe](#OrcSerDe)
* [OutputFormatConfiguration](#OutputFormatConfiguration)
* [ParquetSerDe](#ParquetSerDe)
* [ProcessingConfiguration](#ProcessingConfiguration)
* [Processor](#Processor)
* [ProcessorParameter](#ProcessorParameter)
* [PutRecordBatchResponseEntry](#PutRecordBatchResponseEntry)
* [Record](#Record)
* [RedshiftDestinationConfiguration](#RedshiftDestinationConfiguration)
* [RedshiftDestinationDescription](#RedshiftDestinationDescription)
* [RedshiftDestinationUpdate](#RedshiftDestinationUpdate)
* [RedshiftRetryOptions](#RedshiftRetryOptions)
* [S3DestinationConfiguration](#S3DestinationConfiguration)
* [S3DestinationDescription](#S3DestinationDescription)
* [S3DestinationUpdate](#S3DestinationUpdate)
* [SchemaConfiguration](#SchemaConfiguration)
* [Serializer](#Serializer)
* [SourceDescription](#SourceDescription)
* [SplunkDestinationConfiguration](#SplunkDestinationConfiguration)
* [SplunkDestinationDescription](#SplunkDestinationDescription)
* [SplunkDestinationUpdate](#SplunkDestinationUpdate)
* [SplunkRetryOptions](#SplunkRetryOptions)
* [Tag](#Tag)


@docs BufferingHints,CloudWatchLoggingOptions,CopyCommand,DataFormatConversionConfiguration,DeliveryStreamDescription,DeliveryStreamEncryptionConfiguration,Deserializer,DestinationDescription,ElasticsearchBufferingHints,ElasticsearchDestinationConfiguration,ElasticsearchDestinationDescription,ElasticsearchDestinationUpdate,ElasticsearchRetryOptions,EncryptionConfiguration,ExtendedS3DestinationConfiguration,ExtendedS3DestinationDescription,ExtendedS3DestinationUpdate,HiveJsonSerDe,InputFormatConfiguration,KMSEncryptionConfig,KinesisStreamSourceConfiguration,KinesisStreamSourceDescription,OpenXJsonSerDe,OrcSerDe,OutputFormatConfiguration,ParquetSerDe,ProcessingConfiguration,Processor,ProcessorParameter,PutRecordBatchResponseEntry,Record,RedshiftDestinationConfiguration,RedshiftDestinationDescription,RedshiftDestinationUpdate,RedshiftRetryOptions,S3DestinationConfiguration,S3DestinationDescription,S3DestinationUpdate,SchemaConfiguration,Serializer,SourceDescription,SplunkDestinationConfiguration,SplunkDestinationDescription,SplunkDestinationUpdate,SplunkRetryOptions,Tag

## Unions

* [CompressionFormat](#CompressionFormat)
* [DeliveryStreamEncryptionStatus](#DeliveryStreamEncryptionStatus)
* [DeliveryStreamStatus](#DeliveryStreamStatus)
* [DeliveryStreamType](#DeliveryStreamType)
* [ElasticsearchIndexRotationPeriod](#ElasticsearchIndexRotationPeriod)
* [ElasticsearchS3BackupMode](#ElasticsearchS3BackupMode)
* [HECEndpointType](#HECEndpointType)
* [NoEncryptionConfig](#NoEncryptionConfig)
* [OrcCompression](#OrcCompression)
* [OrcFormatVersion](#OrcFormatVersion)
* [ParquetCompression](#ParquetCompression)
* [ParquetWriterVersion](#ParquetWriterVersion)
* [ProcessorParameterName](#ProcessorParameterName)
* [ProcessorType](#ProcessorType)
* [RedshiftS3BackupMode](#RedshiftS3BackupMode)
* [S3BackupMode](#S3BackupMode)
* [SplunkS3BackupMode](#SplunkS3BackupMode)


@docs CompressionFormat,DeliveryStreamEncryptionStatus,DeliveryStreamStatus,DeliveryStreamType,ElasticsearchIndexRotationPeriod,ElasticsearchS3BackupMode,HECEndpointType,NoEncryptionConfig,OrcCompression,OrcFormatVersion,ParquetCompression,ParquetWriterVersion,ProcessorParameterName,ProcessorType,RedshiftS3BackupMode,S3BackupMode,SplunkS3BackupMode

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE

import Dict exposing (Dict)
import Time exposing (Posix)
import Iso8601
import Json.Decode.Extra as JDX


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "firehose"
        "2015-08-04"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "Firehose_20150804")



-- OPERATIONS

{-| <p>Creates a Kinesis Data Firehose delivery stream.</p> <p>By default, you can create up to 50 delivery streams per AWS Region.</p> <p>This is an asynchronous operation that immediately returns. The initial status of the delivery stream is <code>CREATING</code>. After the delivery stream is created, its status is <code>ACTIVE</code> and it now accepts data. Attempts to send data to a delivery stream that is not in the <code>ACTIVE</code> state cause an exception. To check the state of a delivery stream, use <a>DescribeDeliveryStream</a>.</p> <p>A Kinesis Data Firehose delivery stream can be configured to receive records directly from providers using <a>PutRecord</a> or <a>PutRecordBatch</a>, or it can be configured to use an existing Kinesis stream as its source. To specify a Kinesis data stream as input, set the <code>DeliveryStreamType</code> parameter to <code>KinesisStreamAsSource</code>, and provide the Kinesis stream Amazon Resource Name (ARN) and role ARN in the <code>KinesisStreamSourceConfiguration</code> parameter.</p> <p>A delivery stream is configured with a single destination: Amazon S3, Amazon ES, Amazon Redshift, or Splunk. You must specify only one of the following destination configuration parameters: <code>ExtendedS3DestinationConfiguration</code>, <code>S3DestinationConfiguration</code>, <code>ElasticsearchDestinationConfiguration</code>, <code>RedshiftDestinationConfiguration</code>, or <code>SplunkDestinationConfiguration</code>.</p> <p>When you specify <code>S3DestinationConfiguration</code>, you can also provide the following optional values: BufferingHints, <code>EncryptionConfiguration</code>, and <code>CompressionFormat</code>. By default, if no <code>BufferingHints</code> value is provided, Kinesis Data Firehose buffers data up to 5 MB or for 5 minutes, whichever condition is satisfied first. <code>BufferingHints</code> is a hint, so there are some cases where the service cannot adhere to these conditions strictly. For example, record boundaries might be such that the size is a little over or under the configured buffering size. By default, no encryption is performed. We strongly recommend that you enable encryption to ensure secure data storage in Amazon S3.</p> <p>A few notes about Amazon Redshift as a destination:</p> <ul> <li> <p>An Amazon Redshift destination requires an S3 bucket as intermediate location. Kinesis Data Firehose first delivers data to Amazon S3 and then uses <code>COPY</code> syntax to load data into an Amazon Redshift table. This is specified in the <code>RedshiftDestinationConfiguration.S3Configuration</code> parameter.</p> </li> <li> <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified in <code>RedshiftDestinationConfiguration.S3Configuration</code> because the Amazon Redshift <code>COPY</code> operation that reads from the S3 bucket doesn't support these compression formats.</p> </li> <li> <p>We strongly recommend that you use the user name and password you provide exclusively with Kinesis Data Firehose, and that the permissions for the account are restricted for Amazon Redshift <code>INSERT</code> permissions.</p> </li> </ul> <p>Kinesis Data Firehose assumes the IAM role that is configured as part of the destination. The role should allow the Kinesis Data Firehose principal to assume the role, and the role should have permissions that allow the service to deliver the data. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3">Grant Kinesis Data Firehose Access to an Amazon S3 Destination</a> in the <i>Amazon Kinesis Data Firehose Developer Guide</i>.</p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`


-}

createDeliveryStream :
  
    String ->
  
  
    ( CreateDeliveryStreamOptions -> CreateDeliveryStreamOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDeliveryStreamOutput)

createDeliveryStream deliveryStreamName setOptions =
    
    let
        requestInput = CreateDeliveryStreamInput
            
            deliveryStreamName
            
            options.deliveryStreamType
            
            options.kinesisStreamSourceConfiguration
            
            options.s3DestinationConfiguration
            
            options.extendedS3DestinationConfiguration
            
            options.redshiftDestinationConfiguration
            
            options.elasticsearchDestinationConfiguration
            
            options.splunkDestinationConfiguration
            
            options.tags
            
        
        options = setOptions (CreateDeliveryStreamOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDeliveryStreamInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDeliveryStream"
                
                (AWS.Core.Decode.ResultDecoder "CreateDeliveryStreamOutput" createDeliveryStreamOutputDecoder)
                
            )



{-| Options for a createDeliveryStream request
-}
type alias CreateDeliveryStreamOptions =
    {
    deliveryStreamType : Maybe DeliveryStreamType,kinesisStreamSourceConfiguration : Maybe KinesisStreamSourceConfiguration,s3DestinationConfiguration : Maybe S3DestinationConfiguration,extendedS3DestinationConfiguration : Maybe ExtendedS3DestinationConfiguration,redshiftDestinationConfiguration : Maybe RedshiftDestinationConfiguration,elasticsearchDestinationConfiguration : Maybe ElasticsearchDestinationConfiguration,splunkDestinationConfiguration : Maybe SplunkDestinationConfiguration,tags : Maybe (List Tag)
    }



{-| <p>Deletes a delivery stream and its data.</p> <p>You can delete a delivery stream only if it is in <code>ACTIVE</code> or <code>DELETING</code> state, and not in the <code>CREATING</code> state. While the deletion request is in process, the delivery stream is in the <code>DELETING</code> state.</p> <p>To check the state of a delivery stream, use <a>DescribeDeliveryStream</a>.</p> <p>While the delivery stream is <code>DELETING</code> state, the service might continue to accept the records, but it doesn't make any guarantees with respect to delivering the data. Therefore, as a best practice, you should first stop any applications that are sending records before deleting a delivery stream.</p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`


-}

deleteDeliveryStream :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDeliveryStreamOutput)

deleteDeliveryStream deliveryStreamName =
    
    let
        requestInput = DeleteDeliveryStreamInput
            
            deliveryStreamName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteDeliveryStreamInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDeliveryStream"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDeliveryStreamOutput" deleteDeliveryStreamOutputDecoder)
                
            )





{-| <p>Describes the specified delivery stream and gets the status. For example, after your delivery stream is created, call <code>DescribeDeliveryStream</code> to see whether the delivery stream is <code>ACTIVE</code> and therefore ready for data to be sent to it.</p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`


-}

describeDeliveryStream :
  
    String ->
  
  
    ( DescribeDeliveryStreamOptions -> DescribeDeliveryStreamOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDeliveryStreamOutput)

describeDeliveryStream deliveryStreamName setOptions =
    
    let
        requestInput = DescribeDeliveryStreamInput
            
            deliveryStreamName
            
            options.limit
            
            options.exclusiveStartDestinationId
            
        
        options = setOptions (DescribeDeliveryStreamOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeDeliveryStreamInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDeliveryStream"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDeliveryStreamOutput" describeDeliveryStreamOutputDecoder)
                
            )



{-| Options for a describeDeliveryStream request
-}
type alias DescribeDeliveryStreamOptions =
    {
    limit : Maybe Int,exclusiveStartDestinationId : Maybe String
    }



{-| <p>Lists your delivery streams in alphabetical order of their names.</p> <p>The number of delivery streams might be too large to return using a single call to <code>ListDeliveryStreams</code>. You can limit the number of delivery streams returned, using the <code>Limit</code> parameter. To determine whether there are more delivery streams to list, check the value of <code>HasMoreDeliveryStreams</code> in the output. If there are more delivery streams to list, you can request them by calling this operation again and setting the <code>ExclusiveStartDeliveryStreamName</code> parameter to the name of the last delivery stream returned in the last call.</p>

__Required Parameters__



-}

listDeliveryStreams :
  
  
    ( ListDeliveryStreamsOptions -> ListDeliveryStreamsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDeliveryStreamsOutput)

listDeliveryStreams setOptions =
    
    let
        requestInput = ListDeliveryStreamsInput
            
            options.limit
            
            options.deliveryStreamType
            
            options.exclusiveStartDeliveryStreamName
            
        
        options = setOptions (ListDeliveryStreamsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listDeliveryStreamsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListDeliveryStreams"
                
                (AWS.Core.Decode.ResultDecoder "ListDeliveryStreamsOutput" listDeliveryStreamsOutputDecoder)
                
            )



{-| Options for a listDeliveryStreams request
-}
type alias ListDeliveryStreamsOptions =
    {
    limit : Maybe Int,deliveryStreamType : Maybe DeliveryStreamType,exclusiveStartDeliveryStreamName : Maybe String
    }



{-| <p>Lists the tags for the specified delivery stream. This operation has a limit of five transactions per second per account. </p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`


-}

listTagsForDeliveryStream :
  
    String ->
  
  
    ( ListTagsForDeliveryStreamOptions -> ListTagsForDeliveryStreamOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForDeliveryStreamOutput)

listTagsForDeliveryStream deliveryStreamName setOptions =
    
    let
        requestInput = ListTagsForDeliveryStreamInput
            
            deliveryStreamName
            
            options.exclusiveStartTagKey
            
            options.limit
            
        
        options = setOptions (ListTagsForDeliveryStreamOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listTagsForDeliveryStreamInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForDeliveryStream"
                
                (AWS.Core.Decode.ResultDecoder "ListTagsForDeliveryStreamOutput" listTagsForDeliveryStreamOutputDecoder)
                
            )



{-| Options for a listTagsForDeliveryStream request
-}
type alias ListTagsForDeliveryStreamOptions =
    {
    exclusiveStartTagKey : Maybe String,limit : Maybe Int
    }



{-| <p>Writes a single data record into an Amazon Kinesis Data Firehose delivery stream. To write multiple data records into a delivery stream, use <a>PutRecordBatch</a>. Applications using these operations are referred to as producers.</p> <p>By default, each delivery stream can take in up to 2,000 transactions per second, 5,000 records per second, or 5 MB per second. If you use <a>PutRecord</a> and <a>PutRecordBatch</a>, the limits are an aggregate across these two operations for each delivery stream. For more information about limits and how to request an increase, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon Kinesis Data Firehose Limits</a>. </p> <p>You must specify the name of the delivery stream and the data record when using <a>PutRecord</a>. The data record consists of a data blob that can be up to 1,000 KB in size, and any kind of data. For example, it can be a segment from a log file, geographic location data, website clickstream data, and so on.</p> <p>Kinesis Data Firehose buffers records before delivering them to the destination. To disambiguate the data blobs at the destination, a common solution is to use delimiters in the data, such as a newline (<code>\n</code>) or some other character unique within the data. This allows the consumer application to parse individual data items when reading the data from the destination.</p> <p>The <code>PutRecord</code> operation returns a <code>RecordId</code>, which is a unique string assigned to each record. Producer applications can use this ID for purposes such as auditability and investigation.</p> <p>If the <code>PutRecord</code> operation throws a <code>ServiceUnavailableException</code>, back off and retry. If the exception persists, it is possible that the throughput limits have been exceeded for the delivery stream. </p> <p>Data records sent to Kinesis Data Firehose are stored for 24 hours from the time they are added to a delivery stream as it tries to send the records to the destination. If the destination is unreachable for more than 24 hours, the data is no longer available.</p> <important> <p>Don't concatenate two or more base64 strings to form the data fields of your records. Instead, concatenate the raw data, then perform base64 encoding.</p> </important>

__Required Parameters__

* `deliveryStreamName` __:__ `String`
* `record` __:__ `Record`


-}

putRecord :
  
    String ->
  
    Record ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutRecordOutput)

putRecord deliveryStreamName record =
    
    let
        requestInput = PutRecordInput
            
            deliveryStreamName
            
            record
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putRecordInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutRecord"
                
                (AWS.Core.Decode.ResultDecoder "PutRecordOutput" putRecordOutputDecoder)
                
            )





{-| <p>Writes multiple data records into a delivery stream in a single call, which can achieve higher throughput per producer than when writing single records. To write single data records into a delivery stream, use <a>PutRecord</a>. Applications using these operations are referred to as producers.</p> <p>By default, each delivery stream can take in up to 2,000 transactions per second, 5,000 records per second, or 5 MB per second. If you use <a>PutRecord</a> and <a>PutRecordBatch</a>, the limits are an aggregate across these two operations for each delivery stream. For more information about limits, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon Kinesis Data Firehose Limits</a>.</p> <p>Each <a>PutRecordBatch</a> request supports up to 500 records. Each record in the request can be as large as 1,000 KB (before 64-bit encoding), up to a limit of 4 MB for the entire request. These limits cannot be changed.</p> <p>You must specify the name of the delivery stream and the data record when using <a>PutRecord</a>. The data record consists of a data blob that can be up to 1,000 KB in size, and any kind of data. For example, it could be a segment from a log file, geographic location data, website clickstream data, and so on.</p> <p>Kinesis Data Firehose buffers records before delivering them to the destination. To disambiguate the data blobs at the destination, a common solution is to use delimiters in the data, such as a newline (<code>\n</code>) or some other character unique within the data. This allows the consumer application to parse individual data items when reading the data from the destination.</p> <p>The <a>PutRecordBatch</a> response includes a count of failed records, <code>FailedPutCount</code>, and an array of responses, <code>RequestResponses</code>. Even if the <a>PutRecordBatch</a> call succeeds, the value of <code>FailedPutCount</code> may be greater than 0, indicating that there are records for which the operation didn't succeed. Each entry in the <code>RequestResponses</code> array provides additional information about the processed record. It directly correlates with a record in the request array using the same ordering, from the top to the bottom. The response array always includes the same number of records as the request array. <code>RequestResponses</code> includes both successfully and unsuccessfully processed records. Kinesis Data Firehose tries to process all records in each <a>PutRecordBatch</a> request. A single record failure does not stop the processing of subsequent records. </p> <p>A successfully processed record includes a <code>RecordId</code> value, which is unique for the record. An unsuccessfully processed record includes <code>ErrorCode</code> and <code>ErrorMessage</code> values. <code>ErrorCode</code> reflects the type of error, and is one of the following values: <code>ServiceUnavailableException</code> or <code>InternalFailure</code>. <code>ErrorMessage</code> provides more detailed information about the error.</p> <p>If there is an internal server error or a timeout, the write might have completed or it might have failed. If <code>FailedPutCount</code> is greater than 0, retry the request, resending only those records that might have failed processing. This minimizes the possible duplicate records and also reduces the total bytes sent (and corresponding charges). We recommend that you handle any duplicates at the destination.</p> <p>If <a>PutRecordBatch</a> throws <code>ServiceUnavailableException</code>, back off and retry. If the exception persists, it is possible that the throughput limits have been exceeded for the delivery stream.</p> <p>Data records sent to Kinesis Data Firehose are stored for 24 hours from the time they are added to a delivery stream as it attempts to send the records to the destination. If the destination is unreachable for more than 24 hours, the data is no longer available.</p> <important> <p>Don't concatenate two or more base64 strings to form the data fields of your records. Instead, concatenate the raw data, then perform base64 encoding.</p> </important>

__Required Parameters__

* `deliveryStreamName` __:__ `String`
* `records` __:__ `(List Record)`


-}

putRecordBatch :
  
    String ->
  
    (List Record) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutRecordBatchOutput)

putRecordBatch deliveryStreamName records =
    
    let
        requestInput = PutRecordBatchInput
            
            deliveryStreamName
            
            records
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putRecordBatchInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutRecordBatch"
                
                (AWS.Core.Decode.ResultDecoder "PutRecordBatchOutput" putRecordBatchOutputDecoder)
                
            )





{-| <p>Enables server-side encryption (SSE) for the delivery stream. </p> <p>This operation is asynchronous. It returns immediately. When you invoke it, Kinesis Data Firehose first sets the status of the stream to <code>ENABLING</code>, and then to <code>ENABLED</code>. You can continue to read and write data to your stream while its status is <code>ENABLING</code>, but the data is not encrypted. It can take up to 5 seconds after the encryption status changes to <code>ENABLED</code> before all records written to the delivery stream are encrypted. To find out whether a record or a batch of records was encrypted, check the response elements <a>PutRecordOutput$Encrypted</a> and <a>PutRecordBatchOutput$Encrypted</a>, respectively.</p> <p>To check the encryption state of a delivery stream, use <a>DescribeDeliveryStream</a>.</p> <p>You can only enable SSE for a delivery stream that uses <code>DirectPut</code> as its source. </p> <p>The <code>StartDeliveryStreamEncryption</code> and <code>StopDeliveryStreamEncryption</code> operations have a combined limit of 25 calls per delivery stream per 24 hours. For example, you reach the limit if you call <code>StartDeliveryStreamEncryption</code> 13 times and <code>StopDeliveryStreamEncryption</code> 12 times for the same delivery stream in a 24-hour period.</p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`


-}

startDeliveryStreamEncryption :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartDeliveryStreamEncryptionOutput)

startDeliveryStreamEncryption deliveryStreamName =
    
    let
        requestInput = StartDeliveryStreamEncryptionInput
            
            deliveryStreamName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startDeliveryStreamEncryptionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartDeliveryStreamEncryption"
                
                (AWS.Core.Decode.ResultDecoder "StartDeliveryStreamEncryptionOutput" startDeliveryStreamEncryptionOutputDecoder)
                
            )





{-| <p>Disables server-side encryption (SSE) for the delivery stream. </p> <p>This operation is asynchronous. It returns immediately. When you invoke it, Kinesis Data Firehose first sets the status of the stream to <code>DISABLING</code>, and then to <code>DISABLED</code>. You can continue to read and write data to your stream while its status is <code>DISABLING</code>. It can take up to 5 seconds after the encryption status changes to <code>DISABLED</code> before all records written to the delivery stream are no longer subject to encryption. To find out whether a record or a batch of records was encrypted, check the response elements <a>PutRecordOutput$Encrypted</a> and <a>PutRecordBatchOutput$Encrypted</a>, respectively.</p> <p>To check the encryption state of a delivery stream, use <a>DescribeDeliveryStream</a>. </p> <p>The <code>StartDeliveryStreamEncryption</code> and <code>StopDeliveryStreamEncryption</code> operations have a combined limit of 25 calls per delivery stream per 24 hours. For example, you reach the limit if you call <code>StartDeliveryStreamEncryption</code> 13 times and <code>StopDeliveryStreamEncryption</code> 12 times for the same delivery stream in a 24-hour period.</p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`


-}

stopDeliveryStreamEncryption :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopDeliveryStreamEncryptionOutput)

stopDeliveryStreamEncryption deliveryStreamName =
    
    let
        requestInput = StopDeliveryStreamEncryptionInput
            
            deliveryStreamName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopDeliveryStreamEncryptionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopDeliveryStreamEncryption"
                
                (AWS.Core.Decode.ResultDecoder "StopDeliveryStreamEncryptionOutput" stopDeliveryStreamEncryptionOutputDecoder)
                
            )





{-| <p>Adds or updates tags for the specified delivery stream. A tag is a key-value pair that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. Tags are metadata. For example, you can add friendly names and descriptions or other types of information that can help you distinguish the delivery stream. For more information about tags, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>. </p> <p>Each delivery stream can have up to 50 tags. </p> <p>This operation has a limit of five transactions per second per account. </p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

tagDeliveryStream :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagDeliveryStreamOutput)

tagDeliveryStream deliveryStreamName tags =
    
    let
        requestInput = TagDeliveryStreamInput
            
            deliveryStreamName
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> tagDeliveryStreamInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TagDeliveryStream"
                
                (AWS.Core.Decode.ResultDecoder "TagDeliveryStreamOutput" tagDeliveryStreamOutputDecoder)
                
            )





{-| <p>Removes tags from the specified delivery stream. Removed tags are deleted, and you can't recover them after this operation successfully completes.</p> <p>If you specify a tag that doesn't exist, the operation ignores it.</p> <p>This operation has a limit of five transactions per second per account. </p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

untagDeliveryStream :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagDeliveryStreamOutput)

untagDeliveryStream deliveryStreamName tagKeys =
    
    let
        requestInput = UntagDeliveryStreamInput
            
            deliveryStreamName
            
            tagKeys
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> untagDeliveryStreamInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UntagDeliveryStream"
                
                (AWS.Core.Decode.ResultDecoder "UntagDeliveryStreamOutput" untagDeliveryStreamOutputDecoder)
                
            )





{-| <p>Updates the specified destination of the specified delivery stream.</p> <p>Use this operation to change the destination type (for example, to replace the Amazon S3 destination with Amazon Redshift) or change the parameters associated with a destination (for example, to change the bucket name of the Amazon S3 destination). The update might not occur immediately. The target delivery stream remains active while the configurations are updated, so data writes to the delivery stream can continue during this process. The updated configurations are usually effective within a few minutes.</p> <p>Switching between Amazon ES and other services is not supported. For an Amazon ES destination, you can only update to another Amazon ES destination.</p> <p>If the destination type is the same, Kinesis Data Firehose merges the configuration parameters specified with the destination configuration that already exists on the delivery stream. If any of the parameters are not specified in the call, the existing values are retained. For example, in the Amazon S3 destination, if <a>EncryptionConfiguration</a> is not specified, then the existing <code>EncryptionConfiguration</code> is maintained on the destination.</p> <p>If the destination type is not the same, for example, changing the destination from Amazon S3 to Amazon Redshift, Kinesis Data Firehose does not merge any parameters. In this case, all parameters must be specified.</p> <p>Kinesis Data Firehose uses <code>CurrentDeliveryStreamVersionId</code> to avoid race conditions and conflicting merges. This is a required field, and the service updates the configuration only if the existing configuration has a version ID that matches. After the update is applied successfully, the version ID is updated, and can be retrieved using <a>DescribeDeliveryStream</a>. Use the new version ID to set <code>CurrentDeliveryStreamVersionId</code> in the next call.</p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`
* `currentDeliveryStreamVersionId` __:__ `String`
* `destinationId` __:__ `String`


-}

updateDestination :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( UpdateDestinationOptions -> UpdateDestinationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateDestinationOutput)

updateDestination deliveryStreamName currentDeliveryStreamVersionId destinationId setOptions =
    
    let
        requestInput = UpdateDestinationInput
            
            deliveryStreamName
            
            currentDeliveryStreamVersionId
            
            destinationId
            
            options.s3DestinationUpdate
            
            options.extendedS3DestinationUpdate
            
            options.redshiftDestinationUpdate
            
            options.elasticsearchDestinationUpdate
            
            options.splunkDestinationUpdate
            
        
        options = setOptions (UpdateDestinationOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateDestinationInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateDestination"
                
                (AWS.Core.Decode.ResultDecoder "UpdateDestinationOutput" updateDestinationOutputDecoder)
                
            )



{-| Options for a updateDestination request
-}
type alias UpdateDestinationOptions =
    {
    s3DestinationUpdate : Maybe S3DestinationUpdate,extendedS3DestinationUpdate : Maybe ExtendedS3DestinationUpdate,redshiftDestinationUpdate : Maybe RedshiftDestinationUpdate,elasticsearchDestinationUpdate : Maybe ElasticsearchDestinationUpdate,splunkDestinationUpdate : Maybe SplunkDestinationUpdate
    }




{-| <p>Describes hints for the buffering to perform before delivering data to the destination. These options are treated as hints, and therefore Kinesis Data Firehose might choose to use different values when it is optimal.</p>
-}
type alias BufferingHints =
    { sizeInMBs : Maybe Int
    , intervalInSeconds : Maybe Int
    }



bufferingHintsDecoder : JD.Decoder BufferingHints
bufferingHintsDecoder =
    JD.succeed BufferingHints
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SizeInMBs", "sizeInMBs"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IntervalInSeconds", "intervalInSeconds"]
            JD.int
        )
        




bufferingHintsToString : BufferingHints -> String -- List (String, String)
bufferingHintsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sizeInMBs" "" -- val.sizeInMBs
        
    --     |> Dict.insert
    --         "intervalInSeconds" "" -- val.intervalInSeconds
        
    --     |> Dict.toList
    ""



{-| <p>Describes the Amazon CloudWatch logging options for your delivery stream.</p>
-}
type alias CloudWatchLoggingOptions =
    { enabled : Maybe Bool
    , logGroupName : Maybe String
    , logStreamName : Maybe String
    }



cloudWatchLoggingOptionsDecoder : JD.Decoder CloudWatchLoggingOptions
cloudWatchLoggingOptionsDecoder =
    JD.succeed CloudWatchLoggingOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogGroupName", "logGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogStreamName", "logStreamName"]
            JD.string
        )
        




cloudWatchLoggingOptionsToString : CloudWatchLoggingOptions -> String -- List (String, String)
cloudWatchLoggingOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "logGroupName" "" -- val.logGroupName
        
    --     |> Dict.insert
    --         "logStreamName" "" -- val.logStreamName
        
    --     |> Dict.toList
    ""



{-| One of

* `CompressionFormat_UNCOMPRESSED`
* `CompressionFormat_GZIP`
* `CompressionFormat_ZIP`
* `CompressionFormat_Snappy`

-}
type CompressionFormat
    = CompressionFormat_UNCOMPRESSED
    | CompressionFormat_GZIP
    | CompressionFormat_ZIP
    | CompressionFormat_Snappy



compressionFormatDecoder : JD.Decoder CompressionFormat
compressionFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNCOMPRESSED" ->
                        JD.succeed CompressionFormat_UNCOMPRESSED

                    "GZIP" ->
                        JD.succeed CompressionFormat_GZIP

                    "ZIP" ->
                        JD.succeed CompressionFormat_ZIP

                    "Snappy" ->
                        JD.succeed CompressionFormat_Snappy


                    _ ->
                        JD.fail "bad thing"
            )




compressionFormatToString : CompressionFormat -> String
compressionFormatToString val =
    case val of
        CompressionFormat_UNCOMPRESSED ->
            "UNCOMPRESSED"

        CompressionFormat_GZIP ->
            "GZIP"

        CompressionFormat_ZIP ->
            "ZIP"

        CompressionFormat_Snappy ->
            "Snappy"




{-| <p>Describes a <code>COPY</code> command for Amazon Redshift.</p>
-}
type alias CopyCommand =
    { dataTableName : String
    , dataTableColumns : Maybe String
    , copyOptions : Maybe String
    }



copyCommandDecoder : JD.Decoder CopyCommand
copyCommandDecoder =
    JD.succeed CopyCommand
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DataTableName", "dataTableName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataTableColumns", "dataTableColumns"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CopyOptions", "copyOptions"]
            JD.string
        )
        




copyCommandToString : CopyCommand -> String -- List (String, String)
copyCommandToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dataTableName" "" -- val.dataTableName
        
    --     |> Dict.insert
    --         "dataTableColumns" "" -- val.dataTableColumns
        
    --     |> Dict.insert
    --         "copyOptions" "" -- val.copyOptions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDeliveryStre
-}
type alias CreateDeliveryStreamOutput =
    { deliveryStreamARN : Maybe String
    }



createDeliveryStreamOutputDecoder : JD.Decoder CreateDeliveryStreamOutput
createDeliveryStreamOutputDecoder =
    JD.succeed CreateDeliveryStreamOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeliveryStreamARN", "deliveryStreamARN"]
            JD.string
        )
        




createDeliveryStreamOutputToString : CreateDeliveryStreamOutput -> String -- List (String, String)
createDeliveryStreamOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deliveryStreamARN" "" -- val.deliveryStreamARN
        
    --     |> Dict.toList
    ""



{-| <p>Specifies that you want Kinesis Data Firehose to convert data from the JSON format to the Parquet or ORC format before writing it to Amazon S3. Kinesis Data Firehose uses the serializer and deserializer that you specify, in addition to the column information from the AWS Glue table, to deserialize your input data from JSON and then serialize it to the Parquet or ORC format. For more information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/record-format-conversion.html">Kinesis Data Firehose Record Format Conversion</a>.</p>
-}
type alias DataFormatConversionConfiguration =
    { schemaConfiguration : Maybe SchemaConfiguration
    , inputFormatConfiguration : Maybe InputFormatConfiguration
    , outputFormatConfiguration : Maybe OutputFormatConfiguration
    , enabled : Maybe Bool
    }



dataFormatConversionConfigurationDecoder : JD.Decoder DataFormatConversionConfiguration
dataFormatConversionConfigurationDecoder =
    JD.succeed DataFormatConversionConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SchemaConfiguration", "schemaConfiguration"]
            schemaConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputFormatConfiguration", "inputFormatConfiguration"]
            inputFormatConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OutputFormatConfiguration", "outputFormatConfiguration"]
            outputFormatConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enabled", "enabled"]
            JD.bool
        )
        




dataFormatConversionConfigurationToString : DataFormatConversionConfiguration -> String -- List (String, String)
dataFormatConversionConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "schemaConfiguration" "" -- val.schemaConfiguration
        
    --     |> Dict.insert
    --         "inputFormatConfiguration" "" -- val.inputFormatConfiguration
        
    --     |> Dict.insert
    --         "outputFormatConfiguration" "" -- val.outputFormatConfiguration
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDeliveryStre
-}
type alias DeleteDeliveryStreamOutput =
    { 
    }



deleteDeliveryStreamOutputDecoder : JD.Decoder DeleteDeliveryStreamOutput
deleteDeliveryStreamOutputDecoder =
    JD.succeed DeleteDeliveryStreamOutput
        




deleteDeliveryStreamOutputToString : DeleteDeliveryStreamOutput -> String -- List (String, String)
deleteDeliveryStreamOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about a delivery stream.</p>
-}
type alias DeliveryStreamDescription =
    { deliveryStreamName : String
    , deliveryStreamARN : String
    , deliveryStreamStatus : DeliveryStreamStatus
    , deliveryStreamEncryptionConfiguration : Maybe DeliveryStreamEncryptionConfiguration
    , deliveryStreamType : DeliveryStreamType
    , versionId : String
    , createTimestamp : Maybe Posix
    , lastUpdateTimestamp : Maybe Posix
    , source : Maybe SourceDescription
    , destinations : (List DestinationDescription)
    , hasMoreDestinations : Bool
    }



deliveryStreamDescriptionDecoder : JD.Decoder DeliveryStreamDescription
deliveryStreamDescriptionDecoder =
    JD.succeed DeliveryStreamDescription
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DeliveryStreamName", "deliveryStreamName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DeliveryStreamARN", "deliveryStreamARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DeliveryStreamStatus", "deliveryStreamStatus"]
            deliveryStreamStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeliveryStreamEncryptionConfiguration", "deliveryStreamEncryptionConfiguration"]
            deliveryStreamEncryptionConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DeliveryStreamType", "deliveryStreamType"]
            deliveryStreamTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["VersionId", "versionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreateTimestamp", "createTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdateTimestamp", "lastUpdateTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Source", "source"]
            sourceDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Destinations", "destinations"]
            (JD.list destinationDescriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HasMoreDestinations", "hasMoreDestinations"]
            JD.bool
        )
        




deliveryStreamDescriptionToString : DeliveryStreamDescription -> String -- List (String, String)
deliveryStreamDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deliveryStreamName" "" -- val.deliveryStreamName
        
    --     |> Dict.insert
    --         "deliveryStreamARN" "" -- val.deliveryStreamARN
        
    --     |> Dict.insert
    --         "deliveryStreamStatus" "" -- val.deliveryStreamStatus
        
    --     |> Dict.insert
    --         "deliveryStreamEncryptionConfiguration" "" -- val.deliveryStreamEncryptionConfiguration
        
    --     |> Dict.insert
    --         "deliveryStreamType" "" -- val.deliveryStreamType
        
    --     |> Dict.insert
    --         "versionId" "" -- val.versionId
        
    --     |> Dict.insert
    --         "createTimestamp" "" -- val.createTimestamp
        
    --     |> Dict.insert
    --         "lastUpdateTimestamp" "" -- val.lastUpdateTimestamp
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "destinations" "" -- val.destinations
        
    --     |> Dict.insert
    --         "hasMoreDestinations" "" -- val.hasMoreDestinations
        
    --     |> Dict.toList
    ""



{-| <p>Indicates the server-side encryption (SSE) status for the delivery stream.</p>
-}
type alias DeliveryStreamEncryptionConfiguration =
    { status : Maybe DeliveryStreamEncryptionStatus
    }



deliveryStreamEncryptionConfigurationDecoder : JD.Decoder DeliveryStreamEncryptionConfiguration
deliveryStreamEncryptionConfigurationDecoder =
    JD.succeed DeliveryStreamEncryptionConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            deliveryStreamEncryptionStatusDecoder
        )
        




deliveryStreamEncryptionConfigurationToString : DeliveryStreamEncryptionConfiguration -> String -- List (String, String)
deliveryStreamEncryptionConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| One of

* `DeliveryStreamEncryptionStatus_ENABLED`
* `DeliveryStreamEncryptionStatus_ENABLING`
* `DeliveryStreamEncryptionStatus_DISABLED`
* `DeliveryStreamEncryptionStatus_DISABLING`

-}
type DeliveryStreamEncryptionStatus
    = DeliveryStreamEncryptionStatus_ENABLED
    | DeliveryStreamEncryptionStatus_ENABLING
    | DeliveryStreamEncryptionStatus_DISABLED
    | DeliveryStreamEncryptionStatus_DISABLING



deliveryStreamEncryptionStatusDecoder : JD.Decoder DeliveryStreamEncryptionStatus
deliveryStreamEncryptionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed DeliveryStreamEncryptionStatus_ENABLED

                    "ENABLING" ->
                        JD.succeed DeliveryStreamEncryptionStatus_ENABLING

                    "DISABLED" ->
                        JD.succeed DeliveryStreamEncryptionStatus_DISABLED

                    "DISABLING" ->
                        JD.succeed DeliveryStreamEncryptionStatus_DISABLING


                    _ ->
                        JD.fail "bad thing"
            )




deliveryStreamEncryptionStatusToString : DeliveryStreamEncryptionStatus -> String
deliveryStreamEncryptionStatusToString val =
    case val of
        DeliveryStreamEncryptionStatus_ENABLED ->
            "ENABLED"

        DeliveryStreamEncryptionStatus_ENABLING ->
            "ENABLING"

        DeliveryStreamEncryptionStatus_DISABLED ->
            "DISABLED"

        DeliveryStreamEncryptionStatus_DISABLING ->
            "DISABLING"




{-| One of

* `DeliveryStreamStatus_CREATING`
* `DeliveryStreamStatus_DELETING`
* `DeliveryStreamStatus_ACTIVE`

-}
type DeliveryStreamStatus
    = DeliveryStreamStatus_CREATING
    | DeliveryStreamStatus_DELETING
    | DeliveryStreamStatus_ACTIVE



deliveryStreamStatusDecoder : JD.Decoder DeliveryStreamStatus
deliveryStreamStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATING" ->
                        JD.succeed DeliveryStreamStatus_CREATING

                    "DELETING" ->
                        JD.succeed DeliveryStreamStatus_DELETING

                    "ACTIVE" ->
                        JD.succeed DeliveryStreamStatus_ACTIVE


                    _ ->
                        JD.fail "bad thing"
            )




deliveryStreamStatusToString : DeliveryStreamStatus -> String
deliveryStreamStatusToString val =
    case val of
        DeliveryStreamStatus_CREATING ->
            "CREATING"

        DeliveryStreamStatus_DELETING ->
            "DELETING"

        DeliveryStreamStatus_ACTIVE ->
            "ACTIVE"




{-| One of

* `DeliveryStreamType_DirectPut`
* `DeliveryStreamType_KinesisStreamAsSource`

-}
type DeliveryStreamType
    = DeliveryStreamType_DirectPut
    | DeliveryStreamType_KinesisStreamAsSource



deliveryStreamTypeDecoder : JD.Decoder DeliveryStreamType
deliveryStreamTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DirectPut" ->
                        JD.succeed DeliveryStreamType_DirectPut

                    "KinesisStreamAsSource" ->
                        JD.succeed DeliveryStreamType_KinesisStreamAsSource


                    _ ->
                        JD.fail "bad thing"
            )




deliveryStreamTypeToString : DeliveryStreamType -> String
deliveryStreamTypeToString val =
    case val of
        DeliveryStreamType_DirectPut ->
            "DirectPut"

        DeliveryStreamType_KinesisStreamAsSource ->
            "KinesisStreamAsSource"




{-| Type of HTTP response from describeDeliveryStre
-}
type alias DescribeDeliveryStreamOutput =
    { deliveryStreamDescription : DeliveryStreamDescription
    }



describeDeliveryStreamOutputDecoder : JD.Decoder DescribeDeliveryStreamOutput
describeDeliveryStreamOutputDecoder =
    JD.succeed DescribeDeliveryStreamOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DeliveryStreamDescription", "deliveryStreamDescription"]
            deliveryStreamDescriptionDecoder
        )
        




describeDeliveryStreamOutputToString : DescribeDeliveryStreamOutput -> String -- List (String, String)
describeDeliveryStreamOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deliveryStreamDescription" "" -- val.deliveryStreamDescription
        
    --     |> Dict.toList
    ""



{-| <p>The deserializer you want Kinesis Data Firehose to use for converting the input data from JSON. Kinesis Data Firehose then serializes the data to its final format using the <a>Serializer</a>. Kinesis Data Firehose supports two types of deserializers: the <a href="https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-JSON">Apache Hive JSON SerDe</a> and the <a href="https://github.com/rcongiu/Hive-JSON-Serde">OpenX JSON SerDe</a>.</p>
-}
type alias Deserializer =
    { openXJsonSerDe : Maybe OpenXJsonSerDe
    , hiveJsonSerDe : Maybe HiveJsonSerDe
    }



deserializerDecoder : JD.Decoder Deserializer
deserializerDecoder =
    JD.succeed Deserializer
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OpenXJsonSerDe", "openXJsonSerDe"]
            openXJsonSerDeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HiveJsonSerDe", "hiveJsonSerDe"]
            hiveJsonSerDeDecoder
        )
        




deserializerToString : Deserializer -> String -- List (String, String)
deserializerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "openXJsonSerDe" "" -- val.openXJsonSerDe
        
    --     |> Dict.insert
    --         "hiveJsonSerDe" "" -- val.hiveJsonSerDe
        
    --     |> Dict.toList
    ""



{-| <p>Describes the destination for a delivery stream.</p>
-}
type alias DestinationDescription =
    { destinationId : String
    , s3DestinationDescription : Maybe S3DestinationDescription
    , extendedS3DestinationDescription : Maybe ExtendedS3DestinationDescription
    , redshiftDestinationDescription : Maybe RedshiftDestinationDescription
    , elasticsearchDestinationDescription : Maybe ElasticsearchDestinationDescription
    , splunkDestinationDescription : Maybe SplunkDestinationDescription
    }



destinationDescriptionDecoder : JD.Decoder DestinationDescription
destinationDescriptionDecoder =
    JD.succeed DestinationDescription
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DestinationId", "destinationId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3DestinationDescription", "s3DestinationDescription"]
            s3DestinationDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExtendedS3DestinationDescription", "extendedS3DestinationDescription"]
            extendedS3DestinationDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RedshiftDestinationDescription", "redshiftDestinationDescription"]
            redshiftDestinationDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ElasticsearchDestinationDescription", "elasticsearchDestinationDescription"]
            elasticsearchDestinationDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SplunkDestinationDescription", "splunkDestinationDescription"]
            splunkDestinationDescriptionDecoder
        )
        




destinationDescriptionToString : DestinationDescription -> String -- List (String, String)
destinationDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "destinationId" "" -- val.destinationId
        
    --     |> Dict.insert
    --         "s3DestinationDescription" "" -- val.s3DestinationDescription
        
    --     |> Dict.insert
    --         "extendedS3DestinationDescription" "" -- val.extendedS3DestinationDescription
        
    --     |> Dict.insert
    --         "redshiftDestinationDescription" "" -- val.redshiftDestinationDescription
        
    --     |> Dict.insert
    --         "elasticsearchDestinationDescription" "" -- val.elasticsearchDestinationDescription
        
    --     |> Dict.insert
    --         "splunkDestinationDescription" "" -- val.splunkDestinationDescription
        
    --     |> Dict.toList
    ""



{-| <p>Describes the buffering to perform before delivering data to the Amazon ES destination.</p>
-}
type alias ElasticsearchBufferingHints =
    { intervalInSeconds : Maybe Int
    , sizeInMBs : Maybe Int
    }



elasticsearchBufferingHintsDecoder : JD.Decoder ElasticsearchBufferingHints
elasticsearchBufferingHintsDecoder =
    JD.succeed ElasticsearchBufferingHints
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IntervalInSeconds", "intervalInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SizeInMBs", "sizeInMBs"]
            JD.int
        )
        




elasticsearchBufferingHintsToString : ElasticsearchBufferingHints -> String -- List (String, String)
elasticsearchBufferingHintsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "intervalInSeconds" "" -- val.intervalInSeconds
        
    --     |> Dict.insert
    --         "sizeInMBs" "" -- val.sizeInMBs
        
    --     |> Dict.toList
    ""



{-| <p>Describes the configuration of a destination in Amazon ES.</p>
-}
type alias ElasticsearchDestinationConfiguration =
    { roleARN : String
    , domainARN : String
    , indexName : String
    , typeName : String
    , indexRotationPeriod : Maybe ElasticsearchIndexRotationPeriod
    , bufferingHints : Maybe ElasticsearchBufferingHints
    , retryOptions : Maybe ElasticsearchRetryOptions
    , s3BackupMode : Maybe ElasticsearchS3BackupMode
    , s3Configuration : S3DestinationConfiguration
    , processingConfiguration : Maybe ProcessingConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



elasticsearchDestinationConfigurationDecoder : JD.Decoder ElasticsearchDestinationConfiguration
elasticsearchDestinationConfigurationDecoder =
    JD.succeed ElasticsearchDestinationConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DomainARN", "domainARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IndexName", "indexName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TypeName", "typeName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IndexRotationPeriod", "indexRotationPeriod"]
            elasticsearchIndexRotationPeriodDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BufferingHints", "bufferingHints"]
            elasticsearchBufferingHintsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RetryOptions", "retryOptions"]
            elasticsearchRetryOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupMode", "s3BackupMode"]
            elasticsearchS3BackupModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["S3Configuration", "s3Configuration"]
            s3DestinationConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessingConfiguration", "processingConfiguration"]
            processingConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        




elasticsearchDestinationConfigurationToString : ElasticsearchDestinationConfiguration -> String -- List (String, String)
elasticsearchDestinationConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "domainARN" "" -- val.domainARN
        
    --     |> Dict.insert
    --         "indexName" "" -- val.indexName
        
    --     |> Dict.insert
    --         "typeName" "" -- val.typeName
        
    --     |> Dict.insert
    --         "indexRotationPeriod" "" -- val.indexRotationPeriod
        
    --     |> Dict.insert
    --         "bufferingHints" "" -- val.bufferingHints
        
    --     |> Dict.insert
    --         "retryOptions" "" -- val.retryOptions
        
    --     |> Dict.insert
    --         "s3BackupMode" "" -- val.s3BackupMode
        
    --     |> Dict.insert
    --         "s3Configuration" "" -- val.s3Configuration
        
    --     |> Dict.insert
    --         "processingConfiguration" "" -- val.processingConfiguration
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.toList
    ""



{-| <p>The destination description in Amazon ES.</p>
-}
type alias ElasticsearchDestinationDescription =
    { roleARN : Maybe String
    , domainARN : Maybe String
    , indexName : Maybe String
    , typeName : Maybe String
    , indexRotationPeriod : Maybe ElasticsearchIndexRotationPeriod
    , bufferingHints : Maybe ElasticsearchBufferingHints
    , retryOptions : Maybe ElasticsearchRetryOptions
    , s3BackupMode : Maybe ElasticsearchS3BackupMode
    , s3DestinationDescription : Maybe S3DestinationDescription
    , processingConfiguration : Maybe ProcessingConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



elasticsearchDestinationDescriptionDecoder : JD.Decoder ElasticsearchDestinationDescription
elasticsearchDestinationDescriptionDecoder =
    JD.succeed ElasticsearchDestinationDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DomainARN", "domainARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IndexName", "indexName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TypeName", "typeName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IndexRotationPeriod", "indexRotationPeriod"]
            elasticsearchIndexRotationPeriodDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BufferingHints", "bufferingHints"]
            elasticsearchBufferingHintsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RetryOptions", "retryOptions"]
            elasticsearchRetryOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupMode", "s3BackupMode"]
            elasticsearchS3BackupModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3DestinationDescription", "s3DestinationDescription"]
            s3DestinationDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessingConfiguration", "processingConfiguration"]
            processingConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        




elasticsearchDestinationDescriptionToString : ElasticsearchDestinationDescription -> String -- List (String, String)
elasticsearchDestinationDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "domainARN" "" -- val.domainARN
        
    --     |> Dict.insert
    --         "indexName" "" -- val.indexName
        
    --     |> Dict.insert
    --         "typeName" "" -- val.typeName
        
    --     |> Dict.insert
    --         "indexRotationPeriod" "" -- val.indexRotationPeriod
        
    --     |> Dict.insert
    --         "bufferingHints" "" -- val.bufferingHints
        
    --     |> Dict.insert
    --         "retryOptions" "" -- val.retryOptions
        
    --     |> Dict.insert
    --         "s3BackupMode" "" -- val.s3BackupMode
        
    --     |> Dict.insert
    --         "s3DestinationDescription" "" -- val.s3DestinationDescription
        
    --     |> Dict.insert
    --         "processingConfiguration" "" -- val.processingConfiguration
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.toList
    ""



{-| <p>Describes an update for a destination in Amazon ES.</p>
-}
type alias ElasticsearchDestinationUpdate =
    { roleARN : Maybe String
    , domainARN : Maybe String
    , indexName : Maybe String
    , typeName : Maybe String
    , indexRotationPeriod : Maybe ElasticsearchIndexRotationPeriod
    , bufferingHints : Maybe ElasticsearchBufferingHints
    , retryOptions : Maybe ElasticsearchRetryOptions
    , s3Update : Maybe S3DestinationUpdate
    , processingConfiguration : Maybe ProcessingConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



elasticsearchDestinationUpdateDecoder : JD.Decoder ElasticsearchDestinationUpdate
elasticsearchDestinationUpdateDecoder =
    JD.succeed ElasticsearchDestinationUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DomainARN", "domainARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IndexName", "indexName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TypeName", "typeName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IndexRotationPeriod", "indexRotationPeriod"]
            elasticsearchIndexRotationPeriodDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BufferingHints", "bufferingHints"]
            elasticsearchBufferingHintsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RetryOptions", "retryOptions"]
            elasticsearchRetryOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3Update", "s3Update"]
            s3DestinationUpdateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessingConfiguration", "processingConfiguration"]
            processingConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        




elasticsearchDestinationUpdateToString : ElasticsearchDestinationUpdate -> String -- List (String, String)
elasticsearchDestinationUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "domainARN" "" -- val.domainARN
        
    --     |> Dict.insert
    --         "indexName" "" -- val.indexName
        
    --     |> Dict.insert
    --         "typeName" "" -- val.typeName
        
    --     |> Dict.insert
    --         "indexRotationPeriod" "" -- val.indexRotationPeriod
        
    --     |> Dict.insert
    --         "bufferingHints" "" -- val.bufferingHints
        
    --     |> Dict.insert
    --         "retryOptions" "" -- val.retryOptions
        
    --     |> Dict.insert
    --         "s3Update" "" -- val.s3Update
        
    --     |> Dict.insert
    --         "processingConfiguration" "" -- val.processingConfiguration
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.toList
    ""



{-| One of

* `ElasticsearchIndexRotationPeriod_NoRotation`
* `ElasticsearchIndexRotationPeriod_OneHour`
* `ElasticsearchIndexRotationPeriod_OneDay`
* `ElasticsearchIndexRotationPeriod_OneWeek`
* `ElasticsearchIndexRotationPeriod_OneMonth`

-}
type ElasticsearchIndexRotationPeriod
    = ElasticsearchIndexRotationPeriod_NoRotation
    | ElasticsearchIndexRotationPeriod_OneHour
    | ElasticsearchIndexRotationPeriod_OneDay
    | ElasticsearchIndexRotationPeriod_OneWeek
    | ElasticsearchIndexRotationPeriod_OneMonth



elasticsearchIndexRotationPeriodDecoder : JD.Decoder ElasticsearchIndexRotationPeriod
elasticsearchIndexRotationPeriodDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NoRotation" ->
                        JD.succeed ElasticsearchIndexRotationPeriod_NoRotation

                    "OneHour" ->
                        JD.succeed ElasticsearchIndexRotationPeriod_OneHour

                    "OneDay" ->
                        JD.succeed ElasticsearchIndexRotationPeriod_OneDay

                    "OneWeek" ->
                        JD.succeed ElasticsearchIndexRotationPeriod_OneWeek

                    "OneMonth" ->
                        JD.succeed ElasticsearchIndexRotationPeriod_OneMonth


                    _ ->
                        JD.fail "bad thing"
            )




elasticsearchIndexRotationPeriodToString : ElasticsearchIndexRotationPeriod -> String
elasticsearchIndexRotationPeriodToString val =
    case val of
        ElasticsearchIndexRotationPeriod_NoRotation ->
            "NoRotation"

        ElasticsearchIndexRotationPeriod_OneHour ->
            "OneHour"

        ElasticsearchIndexRotationPeriod_OneDay ->
            "OneDay"

        ElasticsearchIndexRotationPeriod_OneWeek ->
            "OneWeek"

        ElasticsearchIndexRotationPeriod_OneMonth ->
            "OneMonth"




{-| <p>Configures retry behavior in case Kinesis Data Firehose is unable to deliver documents to Amazon ES.</p>
-}
type alias ElasticsearchRetryOptions =
    { durationInSeconds : Maybe Int
    }



elasticsearchRetryOptionsDecoder : JD.Decoder ElasticsearchRetryOptions
elasticsearchRetryOptionsDecoder =
    JD.succeed ElasticsearchRetryOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DurationInSeconds", "durationInSeconds"]
            JD.int
        )
        




elasticsearchRetryOptionsToString : ElasticsearchRetryOptions -> String -- List (String, String)
elasticsearchRetryOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "durationInSeconds" "" -- val.durationInSeconds
        
    --     |> Dict.toList
    ""



{-| One of

* `ElasticsearchS3BackupMode_FailedDocumentsOnly`
* `ElasticsearchS3BackupMode_AllDocuments`

-}
type ElasticsearchS3BackupMode
    = ElasticsearchS3BackupMode_FailedDocumentsOnly
    | ElasticsearchS3BackupMode_AllDocuments



elasticsearchS3BackupModeDecoder : JD.Decoder ElasticsearchS3BackupMode
elasticsearchS3BackupModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FailedDocumentsOnly" ->
                        JD.succeed ElasticsearchS3BackupMode_FailedDocumentsOnly

                    "AllDocuments" ->
                        JD.succeed ElasticsearchS3BackupMode_AllDocuments


                    _ ->
                        JD.fail "bad thing"
            )




elasticsearchS3BackupModeToString : ElasticsearchS3BackupMode -> String
elasticsearchS3BackupModeToString val =
    case val of
        ElasticsearchS3BackupMode_FailedDocumentsOnly ->
            "FailedDocumentsOnly"

        ElasticsearchS3BackupMode_AllDocuments ->
            "AllDocuments"




{-| <p>Describes the encryption for a destination in Amazon S3.</p>
-}
type alias EncryptionConfiguration =
    { noEncryptionConfig : Maybe NoEncryptionConfig
    , kMSEncryptionConfig : Maybe KMSEncryptionConfig
    }



encryptionConfigurationDecoder : JD.Decoder EncryptionConfiguration
encryptionConfigurationDecoder =
    JD.succeed EncryptionConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NoEncryptionConfig", "noEncryptionConfig"]
            noEncryptionConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KMSEncryptionConfig", "kMSEncryptionConfig"]
            kMSEncryptionConfigDecoder
        )
        




encryptionConfigurationToString : EncryptionConfiguration -> String -- List (String, String)
encryptionConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "noEncryptionConfig" "" -- val.noEncryptionConfig
        
    --     |> Dict.insert
    --         "kMSEncryptionConfig" "" -- val.kMSEncryptionConfig
        
    --     |> Dict.toList
    ""



{-| <p>Describes the configuration of a destination in Amazon S3.</p>
-}
type alias ExtendedS3DestinationConfiguration =
    { roleARN : String
    , bucketARN : String
    , prefix : Maybe String
    , errorOutputPrefix : Maybe String
    , bufferingHints : Maybe BufferingHints
    , compressionFormat : Maybe CompressionFormat
    , encryptionConfiguration : Maybe EncryptionConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    , processingConfiguration : Maybe ProcessingConfiguration
    , s3BackupMode : Maybe S3BackupMode
    , s3BackupConfiguration : Maybe S3DestinationConfiguration
    , dataFormatConversionConfiguration : Maybe DataFormatConversionConfiguration
    }



extendedS3DestinationConfigurationDecoder : JD.Decoder ExtendedS3DestinationConfiguration
extendedS3DestinationConfigurationDecoder =
    JD.succeed ExtendedS3DestinationConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["BucketARN", "bucketARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Prefix", "prefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorOutputPrefix", "errorOutputPrefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BufferingHints", "bufferingHints"]
            bufferingHintsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CompressionFormat", "compressionFormat"]
            compressionFormatDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncryptionConfiguration", "encryptionConfiguration"]
            encryptionConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessingConfiguration", "processingConfiguration"]
            processingConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupMode", "s3BackupMode"]
            s3BackupModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupConfiguration", "s3BackupConfiguration"]
            s3DestinationConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataFormatConversionConfiguration", "dataFormatConversionConfiguration"]
            dataFormatConversionConfigurationDecoder
        )
        




extendedS3DestinationConfigurationToString : ExtendedS3DestinationConfiguration -> String -- List (String, String)
extendedS3DestinationConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "bucketARN" "" -- val.bucketARN
        
    --     |> Dict.insert
    --         "prefix" "" -- val.prefix
        
    --     |> Dict.insert
    --         "errorOutputPrefix" "" -- val.errorOutputPrefix
        
    --     |> Dict.insert
    --         "bufferingHints" "" -- val.bufferingHints
        
    --     |> Dict.insert
    --         "compressionFormat" "" -- val.compressionFormat
        
    --     |> Dict.insert
    --         "encryptionConfiguration" "" -- val.encryptionConfiguration
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.insert
    --         "processingConfiguration" "" -- val.processingConfiguration
        
    --     |> Dict.insert
    --         "s3BackupMode" "" -- val.s3BackupMode
        
    --     |> Dict.insert
    --         "s3BackupConfiguration" "" -- val.s3BackupConfiguration
        
    --     |> Dict.insert
    --         "dataFormatConversionConfiguration" "" -- val.dataFormatConversionConfiguration
        
    --     |> Dict.toList
    ""



{-| <p>Describes a destination in Amazon S3.</p>
-}
type alias ExtendedS3DestinationDescription =
    { roleARN : String
    , bucketARN : String
    , prefix : Maybe String
    , errorOutputPrefix : Maybe String
    , bufferingHints : BufferingHints
    , compressionFormat : CompressionFormat
    , encryptionConfiguration : EncryptionConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    , processingConfiguration : Maybe ProcessingConfiguration
    , s3BackupMode : Maybe S3BackupMode
    , s3BackupDescription : Maybe S3DestinationDescription
    , dataFormatConversionConfiguration : Maybe DataFormatConversionConfiguration
    }



extendedS3DestinationDescriptionDecoder : JD.Decoder ExtendedS3DestinationDescription
extendedS3DestinationDescriptionDecoder =
    JD.succeed ExtendedS3DestinationDescription
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["BucketARN", "bucketARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Prefix", "prefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorOutputPrefix", "errorOutputPrefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["BufferingHints", "bufferingHints"]
            bufferingHintsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CompressionFormat", "compressionFormat"]
            compressionFormatDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["EncryptionConfiguration", "encryptionConfiguration"]
            encryptionConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessingConfiguration", "processingConfiguration"]
            processingConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupMode", "s3BackupMode"]
            s3BackupModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupDescription", "s3BackupDescription"]
            s3DestinationDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataFormatConversionConfiguration", "dataFormatConversionConfiguration"]
            dataFormatConversionConfigurationDecoder
        )
        




extendedS3DestinationDescriptionToString : ExtendedS3DestinationDescription -> String -- List (String, String)
extendedS3DestinationDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "bucketARN" "" -- val.bucketARN
        
    --     |> Dict.insert
    --         "prefix" "" -- val.prefix
        
    --     |> Dict.insert
    --         "errorOutputPrefix" "" -- val.errorOutputPrefix
        
    --     |> Dict.insert
    --         "bufferingHints" "" -- val.bufferingHints
        
    --     |> Dict.insert
    --         "compressionFormat" "" -- val.compressionFormat
        
    --     |> Dict.insert
    --         "encryptionConfiguration" "" -- val.encryptionConfiguration
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.insert
    --         "processingConfiguration" "" -- val.processingConfiguration
        
    --     |> Dict.insert
    --         "s3BackupMode" "" -- val.s3BackupMode
        
    --     |> Dict.insert
    --         "s3BackupDescription" "" -- val.s3BackupDescription
        
    --     |> Dict.insert
    --         "dataFormatConversionConfiguration" "" -- val.dataFormatConversionConfiguration
        
    --     |> Dict.toList
    ""



{-| <p>Describes an update for a destination in Amazon S3.</p>
-}
type alias ExtendedS3DestinationUpdate =
    { roleARN : Maybe String
    , bucketARN : Maybe String
    , prefix : Maybe String
    , errorOutputPrefix : Maybe String
    , bufferingHints : Maybe BufferingHints
    , compressionFormat : Maybe CompressionFormat
    , encryptionConfiguration : Maybe EncryptionConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    , processingConfiguration : Maybe ProcessingConfiguration
    , s3BackupMode : Maybe S3BackupMode
    , s3BackupUpdate : Maybe S3DestinationUpdate
    , dataFormatConversionConfiguration : Maybe DataFormatConversionConfiguration
    }



extendedS3DestinationUpdateDecoder : JD.Decoder ExtendedS3DestinationUpdate
extendedS3DestinationUpdateDecoder =
    JD.succeed ExtendedS3DestinationUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BucketARN", "bucketARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Prefix", "prefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorOutputPrefix", "errorOutputPrefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BufferingHints", "bufferingHints"]
            bufferingHintsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CompressionFormat", "compressionFormat"]
            compressionFormatDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncryptionConfiguration", "encryptionConfiguration"]
            encryptionConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessingConfiguration", "processingConfiguration"]
            processingConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupMode", "s3BackupMode"]
            s3BackupModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupUpdate", "s3BackupUpdate"]
            s3DestinationUpdateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataFormatConversionConfiguration", "dataFormatConversionConfiguration"]
            dataFormatConversionConfigurationDecoder
        )
        




extendedS3DestinationUpdateToString : ExtendedS3DestinationUpdate -> String -- List (String, String)
extendedS3DestinationUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "bucketARN" "" -- val.bucketARN
        
    --     |> Dict.insert
    --         "prefix" "" -- val.prefix
        
    --     |> Dict.insert
    --         "errorOutputPrefix" "" -- val.errorOutputPrefix
        
    --     |> Dict.insert
    --         "bufferingHints" "" -- val.bufferingHints
        
    --     |> Dict.insert
    --         "compressionFormat" "" -- val.compressionFormat
        
    --     |> Dict.insert
    --         "encryptionConfiguration" "" -- val.encryptionConfiguration
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.insert
    --         "processingConfiguration" "" -- val.processingConfiguration
        
    --     |> Dict.insert
    --         "s3BackupMode" "" -- val.s3BackupMode
        
    --     |> Dict.insert
    --         "s3BackupUpdate" "" -- val.s3BackupUpdate
        
    --     |> Dict.insert
    --         "dataFormatConversionConfiguration" "" -- val.dataFormatConversionConfiguration
        
    --     |> Dict.toList
    ""



{-| One of

* `HECEndpointType_Raw`
* `HECEndpointType_Event`

-}
type HECEndpointType
    = HECEndpointType_Raw
    | HECEndpointType_Event



hECEndpointTypeDecoder : JD.Decoder HECEndpointType
hECEndpointTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Raw" ->
                        JD.succeed HECEndpointType_Raw

                    "Event" ->
                        JD.succeed HECEndpointType_Event


                    _ ->
                        JD.fail "bad thing"
            )




hECEndpointTypeToString : HECEndpointType -> String
hECEndpointTypeToString val =
    case val of
        HECEndpointType_Raw ->
            "Raw"

        HECEndpointType_Event ->
            "Event"




{-| <p>The native Hive / HCatalog JsonSerDe. Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format. This is one of two deserializers you can choose, depending on which one offers the functionality you need. The other option is the OpenX SerDe.</p>
-}
type alias HiveJsonSerDe =
    { timestampFormats : Maybe (List String)
    }



hiveJsonSerDeDecoder : JD.Decoder HiveJsonSerDe
hiveJsonSerDeDecoder =
    JD.succeed HiveJsonSerDe
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimestampFormats", "timestampFormats"]
            (JD.list JD.string)
        )
        




hiveJsonSerDeToString : HiveJsonSerDe -> String -- List (String, String)
hiveJsonSerDeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "timestampFormats" "" -- val.timestampFormats
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the deserializer you want to use to convert the format of the input data.</p>
-}
type alias InputFormatConfiguration =
    { deserializer : Maybe Deserializer
    }



inputFormatConfigurationDecoder : JD.Decoder InputFormatConfiguration
inputFormatConfigurationDecoder =
    JD.succeed InputFormatConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Deserializer", "deserializer"]
            deserializerDecoder
        )
        




inputFormatConfigurationToString : InputFormatConfiguration -> String -- List (String, String)
inputFormatConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deserializer" "" -- val.deserializer
        
    --     |> Dict.toList
    ""



{-| <p>Describes an encryption key for a destination in Amazon S3.</p>
-}
type alias KMSEncryptionConfig =
    { aWSKMSKeyARN : String
    }



kMSEncryptionConfigDecoder : JD.Decoder KMSEncryptionConfig
kMSEncryptionConfigDecoder =
    JD.succeed KMSEncryptionConfig
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AWSKMSKeyARN", "aWSKMSKeyARN"]
            JD.string
        )
        




kMSEncryptionConfigToString : KMSEncryptionConfig -> String -- List (String, String)
kMSEncryptionConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "aWSKMSKeyARN" "" -- val.aWSKMSKeyARN
        
    --     |> Dict.toList
    ""



{-| <p>The stream and role Amazon Resource Names (ARNs) for a Kinesis data stream used as the source for a delivery stream.</p>
-}
type alias KinesisStreamSourceConfiguration =
    { kinesisStreamARN : String
    , roleARN : String
    }



kinesisStreamSourceConfigurationDecoder : JD.Decoder KinesisStreamSourceConfiguration
kinesisStreamSourceConfigurationDecoder =
    JD.succeed KinesisStreamSourceConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["KinesisStreamARN", "kinesisStreamARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        




kinesisStreamSourceConfigurationToString : KinesisStreamSourceConfiguration -> String -- List (String, String)
kinesisStreamSourceConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "kinesisStreamARN" "" -- val.kinesisStreamARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p>Details about a Kinesis data stream used as the source for a Kinesis Data Firehose delivery stream.</p>
-}
type alias KinesisStreamSourceDescription =
    { kinesisStreamARN : Maybe String
    , roleARN : Maybe String
    , deliveryStartTimestamp : Maybe Posix
    }



kinesisStreamSourceDescriptionDecoder : JD.Decoder KinesisStreamSourceDescription
kinesisStreamSourceDescriptionDecoder =
    JD.succeed KinesisStreamSourceDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisStreamARN", "kinesisStreamARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeliveryStartTimestamp", "deliveryStartTimestamp"]
            JDX.datetime
        )
        




kinesisStreamSourceDescriptionToString : KinesisStreamSourceDescription -> String -- List (String, String)
kinesisStreamSourceDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "kinesisStreamARN" "" -- val.kinesisStreamARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "deliveryStartTimestamp" "" -- val.deliveryStartTimestamp
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listDeliveryStrea
-}
type alias ListDeliveryStreamsOutput =
    { deliveryStreamNames : (List String)
    , hasMoreDeliveryStreams : Bool
    }



listDeliveryStreamsOutputDecoder : JD.Decoder ListDeliveryStreamsOutput
listDeliveryStreamsOutputDecoder =
    JD.succeed ListDeliveryStreamsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DeliveryStreamNames", "deliveryStreamNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HasMoreDeliveryStreams", "hasMoreDeliveryStreams"]
            JD.bool
        )
        




listDeliveryStreamsOutputToString : ListDeliveryStreamsOutput -> String -- List (String, String)
listDeliveryStreamsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deliveryStreamNames" "" -- val.deliveryStreamNames
        
    --     |> Dict.insert
    --         "hasMoreDeliveryStreams" "" -- val.hasMoreDeliveryStreams
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForDeliveryStre
-}
type alias ListTagsForDeliveryStreamOutput =
    { tags : (List Tag)
    , hasMoreTags : Bool
    }



listTagsForDeliveryStreamOutputDecoder : JD.Decoder ListTagsForDeliveryStreamOutput
listTagsForDeliveryStreamOutputDecoder =
    JD.succeed ListTagsForDeliveryStreamOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HasMoreTags", "hasMoreTags"]
            JD.bool
        )
        




listTagsForDeliveryStreamOutputToString : ListTagsForDeliveryStreamOutput -> String -- List (String, String)
listTagsForDeliveryStreamOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "hasMoreTags" "" -- val.hasMoreTags
        
    --     |> Dict.toList
    ""



{-| One of

* `NoEncryptionConfig_NoEncryption`

-}
type NoEncryptionConfig
    = NoEncryptionConfig_NoEncryption



noEncryptionConfigDecoder : JD.Decoder NoEncryptionConfig
noEncryptionConfigDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NoEncryption" ->
                        JD.succeed NoEncryptionConfig_NoEncryption


                    _ ->
                        JD.fail "bad thing"
            )




noEncryptionConfigToString : NoEncryptionConfig -> String
noEncryptionConfigToString val =
    case val of
        NoEncryptionConfig_NoEncryption ->
            "NoEncryption"




{-| <p>The OpenX SerDe. Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format. This is one of two deserializers you can choose, depending on which one offers the functionality you need. The other option is the native Hive / HCatalog JsonSerDe.</p>
-}
type alias OpenXJsonSerDe =
    { convertDotsInJsonKeysToUnderscores : Maybe Bool
    , caseInsensitive : Maybe Bool
    , columnToJsonKeyMappings : Maybe (Dict String String)
    }



openXJsonSerDeDecoder : JD.Decoder OpenXJsonSerDe
openXJsonSerDeDecoder =
    JD.succeed OpenXJsonSerDe
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConvertDotsInJsonKeysToUnderscores", "convertDotsInJsonKeysToUnderscores"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CaseInsensitive", "caseInsensitive"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ColumnToJsonKeyMappings", "columnToJsonKeyMappings"]
            (AWS.Core.Decode.dict JD.string)
        )
        




openXJsonSerDeToString : OpenXJsonSerDe -> String -- List (String, String)
openXJsonSerDeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "convertDotsInJsonKeysToUnderscores" "" -- val.convertDotsInJsonKeysToUnderscores
        
    --     |> Dict.insert
    --         "caseInsensitive" "" -- val.caseInsensitive
        
    --     |> Dict.insert
    --         "columnToJsonKeyMappings" "" -- val.columnToJsonKeyMappings
        
    --     |> Dict.toList
    ""



{-| One of

* `OrcCompression_NONE`
* `OrcCompression_ZLIB`
* `OrcCompression_SNAPPY`

-}
type OrcCompression
    = OrcCompression_NONE
    | OrcCompression_ZLIB
    | OrcCompression_SNAPPY



orcCompressionDecoder : JD.Decoder OrcCompression
orcCompressionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NONE" ->
                        JD.succeed OrcCompression_NONE

                    "ZLIB" ->
                        JD.succeed OrcCompression_ZLIB

                    "SNAPPY" ->
                        JD.succeed OrcCompression_SNAPPY


                    _ ->
                        JD.fail "bad thing"
            )




orcCompressionToString : OrcCompression -> String
orcCompressionToString val =
    case val of
        OrcCompression_NONE ->
            "NONE"

        OrcCompression_ZLIB ->
            "ZLIB"

        OrcCompression_SNAPPY ->
            "SNAPPY"




{-| One of

* `OrcFormatVersion_V0_11`
* `OrcFormatVersion_V0_12`

-}
type OrcFormatVersion
    = OrcFormatVersion_V0_11
    | OrcFormatVersion_V0_12



orcFormatVersionDecoder : JD.Decoder OrcFormatVersion
orcFormatVersionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "V0_11" ->
                        JD.succeed OrcFormatVersion_V0_11

                    "V0_12" ->
                        JD.succeed OrcFormatVersion_V0_12


                    _ ->
                        JD.fail "bad thing"
            )




orcFormatVersionToString : OrcFormatVersion -> String
orcFormatVersionToString val =
    case val of
        OrcFormatVersion_V0_11 ->
            "V0_11"

        OrcFormatVersion_V0_12 ->
            "V0_12"




{-| <p>A serializer to use for converting data to the ORC format before storing it in Amazon S3. For more information, see <a href="https://orc.apache.org/docs/">Apache ORC</a>.</p>
-}
type alias OrcSerDe =
    { stripeSizeBytes : Maybe Int
    , blockSizeBytes : Maybe Int
    , rowIndexStride : Maybe Int
    , enablePadding : Maybe Bool
    , paddingTolerance : Maybe Float
    , compression : Maybe OrcCompression
    , bloomFilterColumns : Maybe (List String)
    , bloomFilterFalsePositiveProbability : Maybe Float
    , dictionaryKeyThreshold : Maybe Float
    , formatVersion : Maybe OrcFormatVersion
    }



orcSerDeDecoder : JD.Decoder OrcSerDe
orcSerDeDecoder =
    JD.succeed OrcSerDe
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StripeSizeBytes", "stripeSizeBytes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BlockSizeBytes", "blockSizeBytes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RowIndexStride", "rowIndexStride"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnablePadding", "enablePadding"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PaddingTolerance", "paddingTolerance"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Compression", "compression"]
            orcCompressionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BloomFilterColumns", "bloomFilterColumns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BloomFilterFalsePositiveProbability", "bloomFilterFalsePositiveProbability"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DictionaryKeyThreshold", "dictionaryKeyThreshold"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FormatVersion", "formatVersion"]
            orcFormatVersionDecoder
        )
        




orcSerDeToString : OrcSerDe -> String -- List (String, String)
orcSerDeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stripeSizeBytes" "" -- val.stripeSizeBytes
        
    --     |> Dict.insert
    --         "blockSizeBytes" "" -- val.blockSizeBytes
        
    --     |> Dict.insert
    --         "rowIndexStride" "" -- val.rowIndexStride
        
    --     |> Dict.insert
    --         "enablePadding" "" -- val.enablePadding
        
    --     |> Dict.insert
    --         "paddingTolerance" "" -- val.paddingTolerance
        
    --     |> Dict.insert
    --         "compression" "" -- val.compression
        
    --     |> Dict.insert
    --         "bloomFilterColumns" "" -- val.bloomFilterColumns
        
    --     |> Dict.insert
    --         "bloomFilterFalsePositiveProbability" "" -- val.bloomFilterFalsePositiveProbability
        
    --     |> Dict.insert
    --         "dictionaryKeyThreshold" "" -- val.dictionaryKeyThreshold
        
    --     |> Dict.insert
    --         "formatVersion" "" -- val.formatVersion
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the serializer that you want Kinesis Data Firehose to use to convert the format of your data before it writes it to Amazon S3.</p>
-}
type alias OutputFormatConfiguration =
    { serializer : Maybe Serializer
    }



outputFormatConfigurationDecoder : JD.Decoder OutputFormatConfiguration
outputFormatConfigurationDecoder =
    JD.succeed OutputFormatConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Serializer", "serializer"]
            serializerDecoder
        )
        




outputFormatConfigurationToString : OutputFormatConfiguration -> String -- List (String, String)
outputFormatConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serializer" "" -- val.serializer
        
    --     |> Dict.toList
    ""



{-| One of

* `ParquetCompression_UNCOMPRESSED`
* `ParquetCompression_GZIP`
* `ParquetCompression_SNAPPY`

-}
type ParquetCompression
    = ParquetCompression_UNCOMPRESSED
    | ParquetCompression_GZIP
    | ParquetCompression_SNAPPY



parquetCompressionDecoder : JD.Decoder ParquetCompression
parquetCompressionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNCOMPRESSED" ->
                        JD.succeed ParquetCompression_UNCOMPRESSED

                    "GZIP" ->
                        JD.succeed ParquetCompression_GZIP

                    "SNAPPY" ->
                        JD.succeed ParquetCompression_SNAPPY


                    _ ->
                        JD.fail "bad thing"
            )




parquetCompressionToString : ParquetCompression -> String
parquetCompressionToString val =
    case val of
        ParquetCompression_UNCOMPRESSED ->
            "UNCOMPRESSED"

        ParquetCompression_GZIP ->
            "GZIP"

        ParquetCompression_SNAPPY ->
            "SNAPPY"




{-| <p>A serializer to use for converting data to the Parquet format before storing it in Amazon S3. For more information, see <a href="https://parquet.apache.org/documentation/latest/">Apache Parquet</a>.</p>
-}
type alias ParquetSerDe =
    { blockSizeBytes : Maybe Int
    , pageSizeBytes : Maybe Int
    , compression : Maybe ParquetCompression
    , enableDictionaryCompression : Maybe Bool
    , maxPaddingBytes : Maybe Int
    , writerVersion : Maybe ParquetWriterVersion
    }



parquetSerDeDecoder : JD.Decoder ParquetSerDe
parquetSerDeDecoder =
    JD.succeed ParquetSerDe
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BlockSizeBytes", "blockSizeBytes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PageSizeBytes", "pageSizeBytes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Compression", "compression"]
            parquetCompressionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnableDictionaryCompression", "enableDictionaryCompression"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxPaddingBytes", "maxPaddingBytes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WriterVersion", "writerVersion"]
            parquetWriterVersionDecoder
        )
        




parquetSerDeToString : ParquetSerDe -> String -- List (String, String)
parquetSerDeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "blockSizeBytes" "" -- val.blockSizeBytes
        
    --     |> Dict.insert
    --         "pageSizeBytes" "" -- val.pageSizeBytes
        
    --     |> Dict.insert
    --         "compression" "" -- val.compression
        
    --     |> Dict.insert
    --         "enableDictionaryCompression" "" -- val.enableDictionaryCompression
        
    --     |> Dict.insert
    --         "maxPaddingBytes" "" -- val.maxPaddingBytes
        
    --     |> Dict.insert
    --         "writerVersion" "" -- val.writerVersion
        
    --     |> Dict.toList
    ""



{-| One of

* `ParquetWriterVersion_V1`
* `ParquetWriterVersion_V2`

-}
type ParquetWriterVersion
    = ParquetWriterVersion_V1
    | ParquetWriterVersion_V2



parquetWriterVersionDecoder : JD.Decoder ParquetWriterVersion
parquetWriterVersionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "V1" ->
                        JD.succeed ParquetWriterVersion_V1

                    "V2" ->
                        JD.succeed ParquetWriterVersion_V2


                    _ ->
                        JD.fail "bad thing"
            )




parquetWriterVersionToString : ParquetWriterVersion -> String
parquetWriterVersionToString val =
    case val of
        ParquetWriterVersion_V1 ->
            "V1"

        ParquetWriterVersion_V2 ->
            "V2"




{-| <p>Describes a data processing configuration.</p>
-}
type alias ProcessingConfiguration =
    { enabled : Maybe Bool
    , processors : Maybe (List Processor)
    }



processingConfigurationDecoder : JD.Decoder ProcessingConfiguration
processingConfigurationDecoder =
    JD.succeed ProcessingConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Processors", "processors"]
            (JD.list processorDecoder)
        )
        




processingConfigurationToString : ProcessingConfiguration -> String -- List (String, String)
processingConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "processors" "" -- val.processors
        
    --     |> Dict.toList
    ""



{-| <p>Describes a data processor.</p>
-}
type alias Processor =
    { type_ : ProcessorType
    , parameters : Maybe (List ProcessorParameter)
    }



processorDecoder : JD.Decoder Processor
processorDecoder =
    JD.succeed Processor
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Type", "type"]
            processorTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (JD.list processorParameterDecoder)
        )
        




processorToString : Processor -> String -- List (String, String)
processorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.toList
    ""



{-| <p>Describes the processor parameter.</p>
-}
type alias ProcessorParameter =
    { parameterName : ProcessorParameterName
    , parameterValue : String
    }



processorParameterDecoder : JD.Decoder ProcessorParameter
processorParameterDecoder =
    JD.succeed ProcessorParameter
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ParameterName", "parameterName"]
            processorParameterNameDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ParameterValue", "parameterValue"]
            JD.string
        )
        




processorParameterToString : ProcessorParameter -> String -- List (String, String)
processorParameterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "parameterName" "" -- val.parameterName
        
    --     |> Dict.insert
    --         "parameterValue" "" -- val.parameterValue
        
    --     |> Dict.toList
    ""



{-| One of

* `ProcessorParameterName_LambdaArn`
* `ProcessorParameterName_NumberOfRetries`
* `ProcessorParameterName_RoleArn`
* `ProcessorParameterName_BufferSizeInMBs`
* `ProcessorParameterName_BufferIntervalInSeconds`

-}
type ProcessorParameterName
    = ProcessorParameterName_LambdaArn
    | ProcessorParameterName_NumberOfRetries
    | ProcessorParameterName_RoleArn
    | ProcessorParameterName_BufferSizeInMBs
    | ProcessorParameterName_BufferIntervalInSeconds



processorParameterNameDecoder : JD.Decoder ProcessorParameterName
processorParameterNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "LambdaArn" ->
                        JD.succeed ProcessorParameterName_LambdaArn

                    "NumberOfRetries" ->
                        JD.succeed ProcessorParameterName_NumberOfRetries

                    "RoleArn" ->
                        JD.succeed ProcessorParameterName_RoleArn

                    "BufferSizeInMBs" ->
                        JD.succeed ProcessorParameterName_BufferSizeInMBs

                    "BufferIntervalInSeconds" ->
                        JD.succeed ProcessorParameterName_BufferIntervalInSeconds


                    _ ->
                        JD.fail "bad thing"
            )




processorParameterNameToString : ProcessorParameterName -> String
processorParameterNameToString val =
    case val of
        ProcessorParameterName_LambdaArn ->
            "LambdaArn"

        ProcessorParameterName_NumberOfRetries ->
            "NumberOfRetries"

        ProcessorParameterName_RoleArn ->
            "RoleArn"

        ProcessorParameterName_BufferSizeInMBs ->
            "BufferSizeInMBs"

        ProcessorParameterName_BufferIntervalInSeconds ->
            "BufferIntervalInSeconds"




{-| One of

* `ProcessorType_Lambda`

-}
type ProcessorType
    = ProcessorType_Lambda



processorTypeDecoder : JD.Decoder ProcessorType
processorTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Lambda" ->
                        JD.succeed ProcessorType_Lambda


                    _ ->
                        JD.fail "bad thing"
            )




processorTypeToString : ProcessorType -> String
processorTypeToString val =
    case val of
        ProcessorType_Lambda ->
            "Lambda"




{-| Type of HTTP response from putRecordBat
-}
type alias PutRecordBatchOutput =
    { failedPutCount : Int
    , encrypted : Maybe Bool
    , requestResponses : (List PutRecordBatchResponseEntry)
    }



putRecordBatchOutputDecoder : JD.Decoder PutRecordBatchOutput
putRecordBatchOutputDecoder =
    JD.succeed PutRecordBatchOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["FailedPutCount", "failedPutCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Encrypted", "encrypted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RequestResponses", "requestResponses"]
            (JD.list putRecordBatchResponseEntryDecoder)
        )
        




putRecordBatchOutputToString : PutRecordBatchOutput -> String -- List (String, String)
putRecordBatchOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedPutCount" "" -- val.failedPutCount
        
    --     |> Dict.insert
    --         "encrypted" "" -- val.encrypted
        
    --     |> Dict.insert
    --         "requestResponses" "" -- val.requestResponses
        
    --     |> Dict.toList
    ""



{-| <p>Contains the result for an individual record from a <a>PutRecordBatch</a> request. If the record is successfully added to your delivery stream, it receives a record ID. If the record fails to be added to your delivery stream, the result includes an error code and an error message.</p>
-}
type alias PutRecordBatchResponseEntry =
    { recordId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



putRecordBatchResponseEntryDecoder : JD.Decoder PutRecordBatchResponseEntry
putRecordBatchResponseEntryDecoder =
    JD.succeed PutRecordBatchResponseEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordId", "recordId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        




putRecordBatchResponseEntryToString : PutRecordBatchResponseEntry -> String -- List (String, String)
putRecordBatchResponseEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordId" "" -- val.recordId
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putReco
-}
type alias PutRecordOutput =
    { recordId : String
    , encrypted : Maybe Bool
    }



putRecordOutputDecoder : JD.Decoder PutRecordOutput
putRecordOutputDecoder =
    JD.succeed PutRecordOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RecordId", "recordId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Encrypted", "encrypted"]
            JD.bool
        )
        




putRecordOutputToString : PutRecordOutput -> String -- List (String, String)
putRecordOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordId" "" -- val.recordId
        
    --     |> Dict.insert
    --         "encrypted" "" -- val.encrypted
        
    --     |> Dict.toList
    ""



{-| <p>The unit of data in a delivery stream.</p>
-}
type alias Record =
    { data : String
    }



recordDecoder : JD.Decoder Record
recordDecoder =
    JD.succeed Record
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Data", "data"]
            JD.string
        )
        




recordToString : Record -> String -- List (String, String)
recordToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "data" "" -- val.data
        
    --     |> Dict.toList
    ""



{-| <p>Describes the configuration of a destination in Amazon Redshift.</p>
-}
type alias RedshiftDestinationConfiguration =
    { roleARN : String
    , clusterJDBCURL : String
    , copyCommand : CopyCommand
    , username : String
    , password : String
    , retryOptions : Maybe RedshiftRetryOptions
    , s3Configuration : S3DestinationConfiguration
    , processingConfiguration : Maybe ProcessingConfiguration
    , s3BackupMode : Maybe RedshiftS3BackupMode
    , s3BackupConfiguration : Maybe S3DestinationConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



redshiftDestinationConfigurationDecoder : JD.Decoder RedshiftDestinationConfiguration
redshiftDestinationConfigurationDecoder =
    JD.succeed RedshiftDestinationConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ClusterJDBCURL", "clusterJDBCURL"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CopyCommand", "copyCommand"]
            copyCommandDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Username", "username"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Password", "password"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RetryOptions", "retryOptions"]
            redshiftRetryOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["S3Configuration", "s3Configuration"]
            s3DestinationConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessingConfiguration", "processingConfiguration"]
            processingConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupMode", "s3BackupMode"]
            redshiftS3BackupModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupConfiguration", "s3BackupConfiguration"]
            s3DestinationConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        




redshiftDestinationConfigurationToString : RedshiftDestinationConfiguration -> String -- List (String, String)
redshiftDestinationConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "clusterJDBCURL" "" -- val.clusterJDBCURL
        
    --     |> Dict.insert
    --         "copyCommand" "" -- val.copyCommand
        
    --     |> Dict.insert
    --         "username" "" -- val.username
        
    --     |> Dict.insert
    --         "password" "" -- val.password
        
    --     |> Dict.insert
    --         "retryOptions" "" -- val.retryOptions
        
    --     |> Dict.insert
    --         "s3Configuration" "" -- val.s3Configuration
        
    --     |> Dict.insert
    --         "processingConfiguration" "" -- val.processingConfiguration
        
    --     |> Dict.insert
    --         "s3BackupMode" "" -- val.s3BackupMode
        
    --     |> Dict.insert
    --         "s3BackupConfiguration" "" -- val.s3BackupConfiguration
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.toList
    ""



{-| <p>Describes a destination in Amazon Redshift.</p>
-}
type alias RedshiftDestinationDescription =
    { roleARN : String
    , clusterJDBCURL : String
    , copyCommand : CopyCommand
    , username : String
    , retryOptions : Maybe RedshiftRetryOptions
    , s3DestinationDescription : S3DestinationDescription
    , processingConfiguration : Maybe ProcessingConfiguration
    , s3BackupMode : Maybe RedshiftS3BackupMode
    , s3BackupDescription : Maybe S3DestinationDescription
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



redshiftDestinationDescriptionDecoder : JD.Decoder RedshiftDestinationDescription
redshiftDestinationDescriptionDecoder =
    JD.succeed RedshiftDestinationDescription
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ClusterJDBCURL", "clusterJDBCURL"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CopyCommand", "copyCommand"]
            copyCommandDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Username", "username"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RetryOptions", "retryOptions"]
            redshiftRetryOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["S3DestinationDescription", "s3DestinationDescription"]
            s3DestinationDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessingConfiguration", "processingConfiguration"]
            processingConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupMode", "s3BackupMode"]
            redshiftS3BackupModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupDescription", "s3BackupDescription"]
            s3DestinationDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        




redshiftDestinationDescriptionToString : RedshiftDestinationDescription -> String -- List (String, String)
redshiftDestinationDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "clusterJDBCURL" "" -- val.clusterJDBCURL
        
    --     |> Dict.insert
    --         "copyCommand" "" -- val.copyCommand
        
    --     |> Dict.insert
    --         "username" "" -- val.username
        
    --     |> Dict.insert
    --         "retryOptions" "" -- val.retryOptions
        
    --     |> Dict.insert
    --         "s3DestinationDescription" "" -- val.s3DestinationDescription
        
    --     |> Dict.insert
    --         "processingConfiguration" "" -- val.processingConfiguration
        
    --     |> Dict.insert
    --         "s3BackupMode" "" -- val.s3BackupMode
        
    --     |> Dict.insert
    --         "s3BackupDescription" "" -- val.s3BackupDescription
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.toList
    ""



{-| <p>Describes an update for a destination in Amazon Redshift.</p>
-}
type alias RedshiftDestinationUpdate =
    { roleARN : Maybe String
    , clusterJDBCURL : Maybe String
    , copyCommand : Maybe CopyCommand
    , username : Maybe String
    , password : Maybe String
    , retryOptions : Maybe RedshiftRetryOptions
    , s3Update : Maybe S3DestinationUpdate
    , processingConfiguration : Maybe ProcessingConfiguration
    , s3BackupMode : Maybe RedshiftS3BackupMode
    , s3BackupUpdate : Maybe S3DestinationUpdate
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



redshiftDestinationUpdateDecoder : JD.Decoder RedshiftDestinationUpdate
redshiftDestinationUpdateDecoder =
    JD.succeed RedshiftDestinationUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClusterJDBCURL", "clusterJDBCURL"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CopyCommand", "copyCommand"]
            copyCommandDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Username", "username"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Password", "password"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RetryOptions", "retryOptions"]
            redshiftRetryOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3Update", "s3Update"]
            s3DestinationUpdateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessingConfiguration", "processingConfiguration"]
            processingConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupMode", "s3BackupMode"]
            redshiftS3BackupModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupUpdate", "s3BackupUpdate"]
            s3DestinationUpdateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        




redshiftDestinationUpdateToString : RedshiftDestinationUpdate -> String -- List (String, String)
redshiftDestinationUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "clusterJDBCURL" "" -- val.clusterJDBCURL
        
    --     |> Dict.insert
    --         "copyCommand" "" -- val.copyCommand
        
    --     |> Dict.insert
    --         "username" "" -- val.username
        
    --     |> Dict.insert
    --         "password" "" -- val.password
        
    --     |> Dict.insert
    --         "retryOptions" "" -- val.retryOptions
        
    --     |> Dict.insert
    --         "s3Update" "" -- val.s3Update
        
    --     |> Dict.insert
    --         "processingConfiguration" "" -- val.processingConfiguration
        
    --     |> Dict.insert
    --         "s3BackupMode" "" -- val.s3BackupMode
        
    --     |> Dict.insert
    --         "s3BackupUpdate" "" -- val.s3BackupUpdate
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.toList
    ""



{-| <p>Configures retry behavior in case Kinesis Data Firehose is unable to deliver documents to Amazon Redshift.</p>
-}
type alias RedshiftRetryOptions =
    { durationInSeconds : Maybe Int
    }



redshiftRetryOptionsDecoder : JD.Decoder RedshiftRetryOptions
redshiftRetryOptionsDecoder =
    JD.succeed RedshiftRetryOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DurationInSeconds", "durationInSeconds"]
            JD.int
        )
        




redshiftRetryOptionsToString : RedshiftRetryOptions -> String -- List (String, String)
redshiftRetryOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "durationInSeconds" "" -- val.durationInSeconds
        
    --     |> Dict.toList
    ""



{-| One of

* `RedshiftS3BackupMode_Disabled`
* `RedshiftS3BackupMode_Enabled`

-}
type RedshiftS3BackupMode
    = RedshiftS3BackupMode_Disabled
    | RedshiftS3BackupMode_Enabled



redshiftS3BackupModeDecoder : JD.Decoder RedshiftS3BackupMode
redshiftS3BackupModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Disabled" ->
                        JD.succeed RedshiftS3BackupMode_Disabled

                    "Enabled" ->
                        JD.succeed RedshiftS3BackupMode_Enabled


                    _ ->
                        JD.fail "bad thing"
            )




redshiftS3BackupModeToString : RedshiftS3BackupMode -> String
redshiftS3BackupModeToString val =
    case val of
        RedshiftS3BackupMode_Disabled ->
            "Disabled"

        RedshiftS3BackupMode_Enabled ->
            "Enabled"




{-| One of

* `S3BackupMode_Disabled`
* `S3BackupMode_Enabled`

-}
type S3BackupMode
    = S3BackupMode_Disabled
    | S3BackupMode_Enabled



s3BackupModeDecoder : JD.Decoder S3BackupMode
s3BackupModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Disabled" ->
                        JD.succeed S3BackupMode_Disabled

                    "Enabled" ->
                        JD.succeed S3BackupMode_Enabled


                    _ ->
                        JD.fail "bad thing"
            )




s3BackupModeToString : S3BackupMode -> String
s3BackupModeToString val =
    case val of
        S3BackupMode_Disabled ->
            "Disabled"

        S3BackupMode_Enabled ->
            "Enabled"




{-| <p>Describes the configuration of a destination in Amazon S3.</p>
-}
type alias S3DestinationConfiguration =
    { roleARN : String
    , bucketARN : String
    , prefix : Maybe String
    , errorOutputPrefix : Maybe String
    , bufferingHints : Maybe BufferingHints
    , compressionFormat : Maybe CompressionFormat
    , encryptionConfiguration : Maybe EncryptionConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



s3DestinationConfigurationDecoder : JD.Decoder S3DestinationConfiguration
s3DestinationConfigurationDecoder =
    JD.succeed S3DestinationConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["BucketARN", "bucketARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Prefix", "prefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorOutputPrefix", "errorOutputPrefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BufferingHints", "bufferingHints"]
            bufferingHintsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CompressionFormat", "compressionFormat"]
            compressionFormatDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncryptionConfiguration", "encryptionConfiguration"]
            encryptionConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        




s3DestinationConfigurationToString : S3DestinationConfiguration -> String -- List (String, String)
s3DestinationConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "bucketARN" "" -- val.bucketARN
        
    --     |> Dict.insert
    --         "prefix" "" -- val.prefix
        
    --     |> Dict.insert
    --         "errorOutputPrefix" "" -- val.errorOutputPrefix
        
    --     |> Dict.insert
    --         "bufferingHints" "" -- val.bufferingHints
        
    --     |> Dict.insert
    --         "compressionFormat" "" -- val.compressionFormat
        
    --     |> Dict.insert
    --         "encryptionConfiguration" "" -- val.encryptionConfiguration
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.toList
    ""



{-| <p>Describes a destination in Amazon S3.</p>
-}
type alias S3DestinationDescription =
    { roleARN : String
    , bucketARN : String
    , prefix : Maybe String
    , errorOutputPrefix : Maybe String
    , bufferingHints : BufferingHints
    , compressionFormat : CompressionFormat
    , encryptionConfiguration : EncryptionConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



s3DestinationDescriptionDecoder : JD.Decoder S3DestinationDescription
s3DestinationDescriptionDecoder =
    JD.succeed S3DestinationDescription
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["BucketARN", "bucketARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Prefix", "prefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorOutputPrefix", "errorOutputPrefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["BufferingHints", "bufferingHints"]
            bufferingHintsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CompressionFormat", "compressionFormat"]
            compressionFormatDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["EncryptionConfiguration", "encryptionConfiguration"]
            encryptionConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        




s3DestinationDescriptionToString : S3DestinationDescription -> String -- List (String, String)
s3DestinationDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "bucketARN" "" -- val.bucketARN
        
    --     |> Dict.insert
    --         "prefix" "" -- val.prefix
        
    --     |> Dict.insert
    --         "errorOutputPrefix" "" -- val.errorOutputPrefix
        
    --     |> Dict.insert
    --         "bufferingHints" "" -- val.bufferingHints
        
    --     |> Dict.insert
    --         "compressionFormat" "" -- val.compressionFormat
        
    --     |> Dict.insert
    --         "encryptionConfiguration" "" -- val.encryptionConfiguration
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.toList
    ""



{-| <p>Describes an update for a destination in Amazon S3.</p>
-}
type alias S3DestinationUpdate =
    { roleARN : Maybe String
    , bucketARN : Maybe String
    , prefix : Maybe String
    , errorOutputPrefix : Maybe String
    , bufferingHints : Maybe BufferingHints
    , compressionFormat : Maybe CompressionFormat
    , encryptionConfiguration : Maybe EncryptionConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



s3DestinationUpdateDecoder : JD.Decoder S3DestinationUpdate
s3DestinationUpdateDecoder =
    JD.succeed S3DestinationUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BucketARN", "bucketARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Prefix", "prefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorOutputPrefix", "errorOutputPrefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BufferingHints", "bufferingHints"]
            bufferingHintsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CompressionFormat", "compressionFormat"]
            compressionFormatDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncryptionConfiguration", "encryptionConfiguration"]
            encryptionConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        




s3DestinationUpdateToString : S3DestinationUpdate -> String -- List (String, String)
s3DestinationUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "bucketARN" "" -- val.bucketARN
        
    --     |> Dict.insert
    --         "prefix" "" -- val.prefix
        
    --     |> Dict.insert
    --         "errorOutputPrefix" "" -- val.errorOutputPrefix
        
    --     |> Dict.insert
    --         "bufferingHints" "" -- val.bufferingHints
        
    --     |> Dict.insert
    --         "compressionFormat" "" -- val.compressionFormat
        
    --     |> Dict.insert
    --         "encryptionConfiguration" "" -- val.encryptionConfiguration
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the schema to which you want Kinesis Data Firehose to configure your data before it writes it to Amazon S3.</p>
-}
type alias SchemaConfiguration =
    { roleARN : Maybe String
    , catalogId : Maybe String
    , databaseName : Maybe String
    , tableName : Maybe String
    , region : Maybe String
    , versionId : Maybe String
    }



schemaConfigurationDecoder : JD.Decoder SchemaConfiguration
schemaConfigurationDecoder =
    JD.succeed SchemaConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CatalogId", "catalogId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DatabaseName", "databaseName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TableName", "tableName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Region", "region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VersionId", "versionId"]
            JD.string
        )
        




schemaConfigurationToString : SchemaConfiguration -> String -- List (String, String)
schemaConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "catalogId" "" -- val.catalogId
        
    --     |> Dict.insert
    --         "databaseName" "" -- val.databaseName
        
    --     |> Dict.insert
    --         "tableName" "" -- val.tableName
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "versionId" "" -- val.versionId
        
    --     |> Dict.toList
    ""



{-| <p>The serializer that you want Kinesis Data Firehose to use to convert data to the target format before writing it to Amazon S3. Kinesis Data Firehose supports two types of serializers: the <a href="https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/orc/OrcSerde.html">ORC SerDe</a> and the <a href="https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/parquet/serde/ParquetHiveSerDe.html">Parquet SerDe</a>.</p>
-}
type alias Serializer =
    { parquetSerDe : Maybe ParquetSerDe
    , orcSerDe : Maybe OrcSerDe
    }



serializerDecoder : JD.Decoder Serializer
serializerDecoder =
    JD.succeed Serializer
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParquetSerDe", "parquetSerDe"]
            parquetSerDeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OrcSerDe", "orcSerDe"]
            orcSerDeDecoder
        )
        




serializerToString : Serializer -> String -- List (String, String)
serializerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "parquetSerDe" "" -- val.parquetSerDe
        
    --     |> Dict.insert
    --         "orcSerDe" "" -- val.orcSerDe
        
    --     |> Dict.toList
    ""



{-| <p>Details about a Kinesis data stream used as the source for a Kinesis Data Firehose delivery stream.</p>
-}
type alias SourceDescription =
    { kinesisStreamSourceDescription : Maybe KinesisStreamSourceDescription
    }



sourceDescriptionDecoder : JD.Decoder SourceDescription
sourceDescriptionDecoder =
    JD.succeed SourceDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisStreamSourceDescription", "kinesisStreamSourceDescription"]
            kinesisStreamSourceDescriptionDecoder
        )
        




sourceDescriptionToString : SourceDescription -> String -- List (String, String)
sourceDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "kinesisStreamSourceDescription" "" -- val.kinesisStreamSourceDescription
        
    --     |> Dict.toList
    ""



{-| <p>Describes the configuration of a destination in Splunk.</p>
-}
type alias SplunkDestinationConfiguration =
    { hECEndpoint : String
    , hECEndpointType : HECEndpointType
    , hECToken : String
    , hECAcknowledgmentTimeoutInSeconds : Maybe Int
    , retryOptions : Maybe SplunkRetryOptions
    , s3BackupMode : Maybe SplunkS3BackupMode
    , s3Configuration : S3DestinationConfiguration
    , processingConfiguration : Maybe ProcessingConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



splunkDestinationConfigurationDecoder : JD.Decoder SplunkDestinationConfiguration
splunkDestinationConfigurationDecoder =
    JD.succeed SplunkDestinationConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HECEndpoint", "hECEndpoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HECEndpointType", "hECEndpointType"]
            hECEndpointTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HECToken", "hECToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HECAcknowledgmentTimeoutInSeconds", "hECAcknowledgmentTimeoutInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RetryOptions", "retryOptions"]
            splunkRetryOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupMode", "s3BackupMode"]
            splunkS3BackupModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["S3Configuration", "s3Configuration"]
            s3DestinationConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessingConfiguration", "processingConfiguration"]
            processingConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        




splunkDestinationConfigurationToString : SplunkDestinationConfiguration -> String -- List (String, String)
splunkDestinationConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hECEndpoint" "" -- val.hECEndpoint
        
    --     |> Dict.insert
    --         "hECEndpointType" "" -- val.hECEndpointType
        
    --     |> Dict.insert
    --         "hECToken" "" -- val.hECToken
        
    --     |> Dict.insert
    --         "hECAcknowledgmentTimeoutInSeconds" "" -- val.hECAcknowledgmentTimeoutInSeconds
        
    --     |> Dict.insert
    --         "retryOptions" "" -- val.retryOptions
        
    --     |> Dict.insert
    --         "s3BackupMode" "" -- val.s3BackupMode
        
    --     |> Dict.insert
    --         "s3Configuration" "" -- val.s3Configuration
        
    --     |> Dict.insert
    --         "processingConfiguration" "" -- val.processingConfiguration
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.toList
    ""



{-| <p>Describes a destination in Splunk.</p>
-}
type alias SplunkDestinationDescription =
    { hECEndpoint : Maybe String
    , hECEndpointType : Maybe HECEndpointType
    , hECToken : Maybe String
    , hECAcknowledgmentTimeoutInSeconds : Maybe Int
    , retryOptions : Maybe SplunkRetryOptions
    , s3BackupMode : Maybe SplunkS3BackupMode
    , s3DestinationDescription : Maybe S3DestinationDescription
    , processingConfiguration : Maybe ProcessingConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



splunkDestinationDescriptionDecoder : JD.Decoder SplunkDestinationDescription
splunkDestinationDescriptionDecoder =
    JD.succeed SplunkDestinationDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HECEndpoint", "hECEndpoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HECEndpointType", "hECEndpointType"]
            hECEndpointTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HECToken", "hECToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HECAcknowledgmentTimeoutInSeconds", "hECAcknowledgmentTimeoutInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RetryOptions", "retryOptions"]
            splunkRetryOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupMode", "s3BackupMode"]
            splunkS3BackupModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3DestinationDescription", "s3DestinationDescription"]
            s3DestinationDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessingConfiguration", "processingConfiguration"]
            processingConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        




splunkDestinationDescriptionToString : SplunkDestinationDescription -> String -- List (String, String)
splunkDestinationDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hECEndpoint" "" -- val.hECEndpoint
        
    --     |> Dict.insert
    --         "hECEndpointType" "" -- val.hECEndpointType
        
    --     |> Dict.insert
    --         "hECToken" "" -- val.hECToken
        
    --     |> Dict.insert
    --         "hECAcknowledgmentTimeoutInSeconds" "" -- val.hECAcknowledgmentTimeoutInSeconds
        
    --     |> Dict.insert
    --         "retryOptions" "" -- val.retryOptions
        
    --     |> Dict.insert
    --         "s3BackupMode" "" -- val.s3BackupMode
        
    --     |> Dict.insert
    --         "s3DestinationDescription" "" -- val.s3DestinationDescription
        
    --     |> Dict.insert
    --         "processingConfiguration" "" -- val.processingConfiguration
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.toList
    ""



{-| <p>Describes an update for a destination in Splunk.</p>
-}
type alias SplunkDestinationUpdate =
    { hECEndpoint : Maybe String
    , hECEndpointType : Maybe HECEndpointType
    , hECToken : Maybe String
    , hECAcknowledgmentTimeoutInSeconds : Maybe Int
    , retryOptions : Maybe SplunkRetryOptions
    , s3BackupMode : Maybe SplunkS3BackupMode
    , s3Update : Maybe S3DestinationUpdate
    , processingConfiguration : Maybe ProcessingConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



splunkDestinationUpdateDecoder : JD.Decoder SplunkDestinationUpdate
splunkDestinationUpdateDecoder =
    JD.succeed SplunkDestinationUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HECEndpoint", "hECEndpoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HECEndpointType", "hECEndpointType"]
            hECEndpointTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HECToken", "hECToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HECAcknowledgmentTimeoutInSeconds", "hECAcknowledgmentTimeoutInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RetryOptions", "retryOptions"]
            splunkRetryOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BackupMode", "s3BackupMode"]
            splunkS3BackupModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3Update", "s3Update"]
            s3DestinationUpdateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessingConfiguration", "processingConfiguration"]
            processingConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptions", "cloudWatchLoggingOptions"]
            cloudWatchLoggingOptionsDecoder
        )
        




splunkDestinationUpdateToString : SplunkDestinationUpdate -> String -- List (String, String)
splunkDestinationUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hECEndpoint" "" -- val.hECEndpoint
        
    --     |> Dict.insert
    --         "hECEndpointType" "" -- val.hECEndpointType
        
    --     |> Dict.insert
    --         "hECToken" "" -- val.hECToken
        
    --     |> Dict.insert
    --         "hECAcknowledgmentTimeoutInSeconds" "" -- val.hECAcknowledgmentTimeoutInSeconds
        
    --     |> Dict.insert
    --         "retryOptions" "" -- val.retryOptions
        
    --     |> Dict.insert
    --         "s3BackupMode" "" -- val.s3BackupMode
        
    --     |> Dict.insert
    --         "s3Update" "" -- val.s3Update
        
    --     |> Dict.insert
    --         "processingConfiguration" "" -- val.processingConfiguration
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptions" "" -- val.cloudWatchLoggingOptions
        
    --     |> Dict.toList
    ""



{-| <p>Configures retry behavior in case Kinesis Data Firehose is unable to deliver documents to Splunk, or if it doesn't receive an acknowledgment from Splunk.</p>
-}
type alias SplunkRetryOptions =
    { durationInSeconds : Maybe Int
    }



splunkRetryOptionsDecoder : JD.Decoder SplunkRetryOptions
splunkRetryOptionsDecoder =
    JD.succeed SplunkRetryOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DurationInSeconds", "durationInSeconds"]
            JD.int
        )
        




splunkRetryOptionsToString : SplunkRetryOptions -> String -- List (String, String)
splunkRetryOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "durationInSeconds" "" -- val.durationInSeconds
        
    --     |> Dict.toList
    ""



{-| One of

* `SplunkS3BackupMode_FailedEventsOnly`
* `SplunkS3BackupMode_AllEvents`

-}
type SplunkS3BackupMode
    = SplunkS3BackupMode_FailedEventsOnly
    | SplunkS3BackupMode_AllEvents



splunkS3BackupModeDecoder : JD.Decoder SplunkS3BackupMode
splunkS3BackupModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FailedEventsOnly" ->
                        JD.succeed SplunkS3BackupMode_FailedEventsOnly

                    "AllEvents" ->
                        JD.succeed SplunkS3BackupMode_AllEvents


                    _ ->
                        JD.fail "bad thing"
            )




splunkS3BackupModeToString : SplunkS3BackupMode -> String
splunkS3BackupModeToString val =
    case val of
        SplunkS3BackupMode_FailedEventsOnly ->
            "FailedEventsOnly"

        SplunkS3BackupMode_AllEvents ->
            "AllEvents"




{-| Type of HTTP response from startDeliveryStreamEncrypti
-}
type alias StartDeliveryStreamEncryptionOutput =
    { 
    }



startDeliveryStreamEncryptionOutputDecoder : JD.Decoder StartDeliveryStreamEncryptionOutput
startDeliveryStreamEncryptionOutputDecoder =
    JD.succeed StartDeliveryStreamEncryptionOutput
        




startDeliveryStreamEncryptionOutputToString : StartDeliveryStreamEncryptionOutput -> String -- List (String, String)
startDeliveryStreamEncryptionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopDeliveryStreamEncrypti
-}
type alias StopDeliveryStreamEncryptionOutput =
    { 
    }



stopDeliveryStreamEncryptionOutputDecoder : JD.Decoder StopDeliveryStreamEncryptionOutput
stopDeliveryStreamEncryptionOutputDecoder =
    JD.succeed StopDeliveryStreamEncryptionOutput
        




stopDeliveryStreamEncryptionOutputToString : StopDeliveryStreamEncryptionOutput -> String -- List (String, String)
stopDeliveryStreamEncryptionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Metadata that you can assign to a delivery stream, consisting of a key-value pair.</p>
-}
type alias Tag =
    { key : String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




tagToString : Tag -> String -- List (String, String)
tagToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from tagDeliveryStre
-}
type alias TagDeliveryStreamOutput =
    { 
    }



tagDeliveryStreamOutputDecoder : JD.Decoder TagDeliveryStreamOutput
tagDeliveryStreamOutputDecoder =
    JD.succeed TagDeliveryStreamOutput
        




tagDeliveryStreamOutputToString : TagDeliveryStreamOutput -> String -- List (String, String)
tagDeliveryStreamOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from untagDeliveryStre
-}
type alias UntagDeliveryStreamOutput =
    { 
    }



untagDeliveryStreamOutputDecoder : JD.Decoder UntagDeliveryStreamOutput
untagDeliveryStreamOutputDecoder =
    JD.succeed UntagDeliveryStreamOutput
        




untagDeliveryStreamOutputToString : UntagDeliveryStreamOutput -> String -- List (String, String)
untagDeliveryStreamOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateDestinati
-}
type alias UpdateDestinationOutput =
    { 
    }



updateDestinationOutputDecoder : JD.Decoder UpdateDestinationOutput
updateDestinationOutputDecoder =
    JD.succeed UpdateDestinationOutput
        




updateDestinationOutputToString : UpdateDestinationOutput -> String -- List (String, String)
updateDestinationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias CreateDeliveryStreamInput =
    { deliveryStreamName : String
    , deliveryStreamType : Maybe DeliveryStreamType
    , kinesisStreamSourceConfiguration : Maybe KinesisStreamSourceConfiguration
    , s3DestinationConfiguration : Maybe S3DestinationConfiguration
    , extendedS3DestinationConfiguration : Maybe ExtendedS3DestinationConfiguration
    , redshiftDestinationConfiguration : Maybe RedshiftDestinationConfiguration
    , elasticsearchDestinationConfiguration : Maybe ElasticsearchDestinationConfiguration
    , splunkDestinationConfiguration : Maybe SplunkDestinationConfiguration
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias DeleteDeliveryStreamInput =
    { deliveryStreamName : String
    }


{-| undefined
-}
type alias DescribeDeliveryStreamInput =
    { deliveryStreamName : String
    , limit : Maybe Int
    , exclusiveStartDestinationId : Maybe String
    }


{-| undefined
-}
type alias ListDeliveryStreamsInput =
    { limit : Maybe Int
    , deliveryStreamType : Maybe DeliveryStreamType
    , exclusiveStartDeliveryStreamName : Maybe String
    }


{-| undefined
-}
type alias ListTagsForDeliveryStreamInput =
    { deliveryStreamName : String
    , exclusiveStartTagKey : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias PutRecordBatchInput =
    { deliveryStreamName : String
    , records : (List Record)
    }


{-| undefined
-}
type alias PutRecordInput =
    { deliveryStreamName : String
    , record : Record
    }


{-| undefined
-}
type alias StartDeliveryStreamEncryptionInput =
    { deliveryStreamName : String
    }


{-| undefined
-}
type alias StopDeliveryStreamEncryptionInput =
    { deliveryStreamName : String
    }


{-| undefined
-}
type alias TagDeliveryStreamInput =
    { deliveryStreamName : String
    , tags : (List Tag)
    }


{-| undefined
-}
type alias UntagDeliveryStreamInput =
    { deliveryStreamName : String
    , tagKeys : (List String)
    }


{-| undefined
-}
type alias UpdateDestinationInput =
    { deliveryStreamName : String
    , currentDeliveryStreamVersionId : String
    , destinationId : String
    , s3DestinationUpdate : Maybe S3DestinationUpdate
    , extendedS3DestinationUpdate : Maybe ExtendedS3DestinationUpdate
    , redshiftDestinationUpdate : Maybe RedshiftDestinationUpdate
    , elasticsearchDestinationUpdate : Maybe ElasticsearchDestinationUpdate
    , splunkDestinationUpdate : Maybe SplunkDestinationUpdate
    }






bufferingHintsEncoder : BufferingHints -> JE.Value
bufferingHintsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("SizeInMBs", data.sizeInMBs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("IntervalInSeconds", data.intervalInSeconds)
        
        
        |> JE.object






cloudWatchLoggingOptionsEncoder : CloudWatchLoggingOptions -> JE.Value
cloudWatchLoggingOptionsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enabled", data.enabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogGroupName", data.logGroupName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogStreamName", data.logStreamName)
        
        
        |> JE.object










copyCommandEncoder : CopyCommand -> JE.Value
copyCommandEncoder data =
    []
        
        
        |> (::) ("DataTableName", data.dataTableName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataTableColumns", data.dataTableColumns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CopyOptions", data.copyOptions)
        
        
        |> JE.object






createDeliveryStreamInputEncoder : CreateDeliveryStreamInput -> JE.Value
createDeliveryStreamInputEncoder data =
    []
        
        
        |> (::) ("DeliveryStreamName", data.deliveryStreamName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deliveryStreamTypeToString >> JE.string)
            ("DeliveryStreamType", data.deliveryStreamType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisStreamSourceConfigurationEncoder)
            ("KinesisStreamSourceConfiguration", data.kinesisStreamSourceConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3DestinationConfigurationEncoder)
            ("S3DestinationConfiguration", data.s3DestinationConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (extendedS3DestinationConfigurationEncoder)
            ("ExtendedS3DestinationConfiguration", data.extendedS3DestinationConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (redshiftDestinationConfigurationEncoder)
            ("RedshiftDestinationConfiguration", data.redshiftDestinationConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (elasticsearchDestinationConfigurationEncoder)
            ("ElasticsearchDestinationConfiguration", data.elasticsearchDestinationConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (splunkDestinationConfigurationEncoder)
            ("SplunkDestinationConfiguration", data.splunkDestinationConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






createDeliveryStreamOutputEncoder : CreateDeliveryStreamOutput -> JE.Value
createDeliveryStreamOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DeliveryStreamARN", data.deliveryStreamARN)
        
        
        |> JE.object






dataFormatConversionConfigurationEncoder : DataFormatConversionConfiguration -> JE.Value
dataFormatConversionConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (schemaConfigurationEncoder)
            ("SchemaConfiguration", data.schemaConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (inputFormatConfigurationEncoder)
            ("InputFormatConfiguration", data.inputFormatConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (outputFormatConfigurationEncoder)
            ("OutputFormatConfiguration", data.outputFormatConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enabled", data.enabled)
        
        
        |> JE.object






deleteDeliveryStreamInputEncoder : DeleteDeliveryStreamInput -> JE.Value
deleteDeliveryStreamInputEncoder data =
    []
        
        
        |> (::) ("DeliveryStreamName", data.deliveryStreamName |> (JE.string))
        
        
        |> JE.object






deleteDeliveryStreamOutputEncoder : DeleteDeliveryStreamOutput -> JE.Value
deleteDeliveryStreamOutputEncoder data =
    []
        
        |> JE.object






deliveryStreamDescriptionEncoder : DeliveryStreamDescription -> JE.Value
deliveryStreamDescriptionEncoder data =
    []
        
        
        |> (::) ("DeliveryStreamName", data.deliveryStreamName |> (JE.string))
        
        
        
        |> (::) ("DeliveryStreamARN", data.deliveryStreamARN |> (JE.string))
        
        
        
        |> (::) ("DeliveryStreamStatus", data.deliveryStreamStatus |> (deliveryStreamStatusToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deliveryStreamEncryptionConfigurationEncoder)
            ("DeliveryStreamEncryptionConfiguration", data.deliveryStreamEncryptionConfiguration)
        
        
        
        |> (::) ("DeliveryStreamType", data.deliveryStreamType |> (deliveryStreamTypeToString >> JE.string))
        
        
        
        |> (::) ("VersionId", data.versionId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreateTimestamp", data.createTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdateTimestamp", data.lastUpdateTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceDescriptionEncoder)
            ("Source", data.source)
        
        
        
        |> (::) ("Destinations", data.destinations |> (JE.list (destinationDescriptionEncoder)))
        
        
        
        |> (::) ("HasMoreDestinations", data.hasMoreDestinations |> (JE.bool))
        
        
        |> JE.object






deliveryStreamEncryptionConfigurationEncoder : DeliveryStreamEncryptionConfiguration -> JE.Value
deliveryStreamEncryptionConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (deliveryStreamEncryptionStatusToString >> JE.string)
            ("Status", data.status)
        
        
        |> JE.object


















describeDeliveryStreamInputEncoder : DescribeDeliveryStreamInput -> JE.Value
describeDeliveryStreamInputEncoder data =
    []
        
        
        |> (::) ("DeliveryStreamName", data.deliveryStreamName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExclusiveStartDestinationId", data.exclusiveStartDestinationId)
        
        
        |> JE.object






describeDeliveryStreamOutputEncoder : DescribeDeliveryStreamOutput -> JE.Value
describeDeliveryStreamOutputEncoder data =
    []
        
        
        |> (::) ("DeliveryStreamDescription", data.deliveryStreamDescription |> (deliveryStreamDescriptionEncoder))
        
        
        |> JE.object






deserializerEncoder : Deserializer -> JE.Value
deserializerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (openXJsonSerDeEncoder)
            ("OpenXJsonSerDe", data.openXJsonSerDe)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (hiveJsonSerDeEncoder)
            ("HiveJsonSerDe", data.hiveJsonSerDe)
        
        
        |> JE.object






destinationDescriptionEncoder : DestinationDescription -> JE.Value
destinationDescriptionEncoder data =
    []
        
        
        |> (::) ("DestinationId", data.destinationId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3DestinationDescriptionEncoder)
            ("S3DestinationDescription", data.s3DestinationDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (extendedS3DestinationDescriptionEncoder)
            ("ExtendedS3DestinationDescription", data.extendedS3DestinationDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (redshiftDestinationDescriptionEncoder)
            ("RedshiftDestinationDescription", data.redshiftDestinationDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (elasticsearchDestinationDescriptionEncoder)
            ("ElasticsearchDestinationDescription", data.elasticsearchDestinationDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (splunkDestinationDescriptionEncoder)
            ("SplunkDestinationDescription", data.splunkDestinationDescription)
        
        
        |> JE.object






elasticsearchBufferingHintsEncoder : ElasticsearchBufferingHints -> JE.Value
elasticsearchBufferingHintsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("IntervalInSeconds", data.intervalInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("SizeInMBs", data.sizeInMBs)
        
        
        |> JE.object






elasticsearchDestinationConfigurationEncoder : ElasticsearchDestinationConfiguration -> JE.Value
elasticsearchDestinationConfigurationEncoder data =
    []
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        
        |> (::) ("DomainARN", data.domainARN |> (JE.string))
        
        
        
        |> (::) ("IndexName", data.indexName |> (JE.string))
        
        
        
        |> (::) ("TypeName", data.typeName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (elasticsearchIndexRotationPeriodToString >> JE.string)
            ("IndexRotationPeriod", data.indexRotationPeriod)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (elasticsearchBufferingHintsEncoder)
            ("BufferingHints", data.bufferingHints)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (elasticsearchRetryOptionsEncoder)
            ("RetryOptions", data.retryOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (elasticsearchS3BackupModeToString >> JE.string)
            ("S3BackupMode", data.s3BackupMode)
        
        
        
        |> (::) ("S3Configuration", data.s3Configuration |> (s3DestinationConfigurationEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (processingConfigurationEncoder)
            ("ProcessingConfiguration", data.processingConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        |> JE.object






elasticsearchDestinationDescriptionEncoder : ElasticsearchDestinationDescription -> JE.Value
elasticsearchDestinationDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DomainARN", data.domainARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IndexName", data.indexName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TypeName", data.typeName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (elasticsearchIndexRotationPeriodToString >> JE.string)
            ("IndexRotationPeriod", data.indexRotationPeriod)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (elasticsearchBufferingHintsEncoder)
            ("BufferingHints", data.bufferingHints)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (elasticsearchRetryOptionsEncoder)
            ("RetryOptions", data.retryOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (elasticsearchS3BackupModeToString >> JE.string)
            ("S3BackupMode", data.s3BackupMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3DestinationDescriptionEncoder)
            ("S3DestinationDescription", data.s3DestinationDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (processingConfigurationEncoder)
            ("ProcessingConfiguration", data.processingConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        |> JE.object






elasticsearchDestinationUpdateEncoder : ElasticsearchDestinationUpdate -> JE.Value
elasticsearchDestinationUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DomainARN", data.domainARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IndexName", data.indexName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TypeName", data.typeName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (elasticsearchIndexRotationPeriodToString >> JE.string)
            ("IndexRotationPeriod", data.indexRotationPeriod)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (elasticsearchBufferingHintsEncoder)
            ("BufferingHints", data.bufferingHints)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (elasticsearchRetryOptionsEncoder)
            ("RetryOptions", data.retryOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3DestinationUpdateEncoder)
            ("S3Update", data.s3Update)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (processingConfigurationEncoder)
            ("ProcessingConfiguration", data.processingConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        |> JE.object










elasticsearchRetryOptionsEncoder : ElasticsearchRetryOptions -> JE.Value
elasticsearchRetryOptionsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("DurationInSeconds", data.durationInSeconds)
        
        
        |> JE.object










encryptionConfigurationEncoder : EncryptionConfiguration -> JE.Value
encryptionConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (noEncryptionConfigToString >> JE.string)
            ("NoEncryptionConfig", data.noEncryptionConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kMSEncryptionConfigEncoder)
            ("KMSEncryptionConfig", data.kMSEncryptionConfig)
        
        
        |> JE.object






extendedS3DestinationConfigurationEncoder : ExtendedS3DestinationConfiguration -> JE.Value
extendedS3DestinationConfigurationEncoder data =
    []
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        
        |> (::) ("BucketARN", data.bucketARN |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Prefix", data.prefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorOutputPrefix", data.errorOutputPrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (bufferingHintsEncoder)
            ("BufferingHints", data.bufferingHints)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (compressionFormatToString >> JE.string)
            ("CompressionFormat", data.compressionFormat)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (encryptionConfigurationEncoder)
            ("EncryptionConfiguration", data.encryptionConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (processingConfigurationEncoder)
            ("ProcessingConfiguration", data.processingConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3BackupModeToString >> JE.string)
            ("S3BackupMode", data.s3BackupMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3DestinationConfigurationEncoder)
            ("S3BackupConfiguration", data.s3BackupConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (dataFormatConversionConfigurationEncoder)
            ("DataFormatConversionConfiguration", data.dataFormatConversionConfiguration)
        
        
        |> JE.object






extendedS3DestinationDescriptionEncoder : ExtendedS3DestinationDescription -> JE.Value
extendedS3DestinationDescriptionEncoder data =
    []
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        
        |> (::) ("BucketARN", data.bucketARN |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Prefix", data.prefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorOutputPrefix", data.errorOutputPrefix)
        
        
        
        |> (::) ("BufferingHints", data.bufferingHints |> (bufferingHintsEncoder))
        
        
        
        |> (::) ("CompressionFormat", data.compressionFormat |> (compressionFormatToString >> JE.string))
        
        
        
        |> (::) ("EncryptionConfiguration", data.encryptionConfiguration |> (encryptionConfigurationEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (processingConfigurationEncoder)
            ("ProcessingConfiguration", data.processingConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3BackupModeToString >> JE.string)
            ("S3BackupMode", data.s3BackupMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3DestinationDescriptionEncoder)
            ("S3BackupDescription", data.s3BackupDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (dataFormatConversionConfigurationEncoder)
            ("DataFormatConversionConfiguration", data.dataFormatConversionConfiguration)
        
        
        |> JE.object






extendedS3DestinationUpdateEncoder : ExtendedS3DestinationUpdate -> JE.Value
extendedS3DestinationUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BucketARN", data.bucketARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Prefix", data.prefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorOutputPrefix", data.errorOutputPrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (bufferingHintsEncoder)
            ("BufferingHints", data.bufferingHints)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (compressionFormatToString >> JE.string)
            ("CompressionFormat", data.compressionFormat)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (encryptionConfigurationEncoder)
            ("EncryptionConfiguration", data.encryptionConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (processingConfigurationEncoder)
            ("ProcessingConfiguration", data.processingConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3BackupModeToString >> JE.string)
            ("S3BackupMode", data.s3BackupMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3DestinationUpdateEncoder)
            ("S3BackupUpdate", data.s3BackupUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (dataFormatConversionConfigurationEncoder)
            ("DataFormatConversionConfiguration", data.dataFormatConversionConfiguration)
        
        
        |> JE.object










hiveJsonSerDeEncoder : HiveJsonSerDe -> JE.Value
hiveJsonSerDeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("TimestampFormats", data.timestampFormats)
        
        
        |> JE.object






inputFormatConfigurationEncoder : InputFormatConfiguration -> JE.Value
inputFormatConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (deserializerEncoder)
            ("Deserializer", data.deserializer)
        
        
        |> JE.object






kMSEncryptionConfigEncoder : KMSEncryptionConfig -> JE.Value
kMSEncryptionConfigEncoder data =
    []
        
        
        |> (::) ("AWSKMSKeyARN", data.aWSKMSKeyARN |> (JE.string))
        
        
        |> JE.object






kinesisStreamSourceConfigurationEncoder : KinesisStreamSourceConfiguration -> JE.Value
kinesisStreamSourceConfigurationEncoder data =
    []
        
        
        |> (::) ("KinesisStreamARN", data.kinesisStreamARN |> (JE.string))
        
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        |> JE.object






kinesisStreamSourceDescriptionEncoder : KinesisStreamSourceDescription -> JE.Value
kinesisStreamSourceDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KinesisStreamARN", data.kinesisStreamARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("DeliveryStartTimestamp", data.deliveryStartTimestamp)
        
        
        |> JE.object






listDeliveryStreamsInputEncoder : ListDeliveryStreamsInput -> JE.Value
listDeliveryStreamsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deliveryStreamTypeToString >> JE.string)
            ("DeliveryStreamType", data.deliveryStreamType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExclusiveStartDeliveryStreamName", data.exclusiveStartDeliveryStreamName)
        
        
        |> JE.object






listDeliveryStreamsOutputEncoder : ListDeliveryStreamsOutput -> JE.Value
listDeliveryStreamsOutputEncoder data =
    []
        
        
        |> (::) ("DeliveryStreamNames", data.deliveryStreamNames |> (JE.list (JE.string)))
        
        
        
        |> (::) ("HasMoreDeliveryStreams", data.hasMoreDeliveryStreams |> (JE.bool))
        
        
        |> JE.object






listTagsForDeliveryStreamInputEncoder : ListTagsForDeliveryStreamInput -> JE.Value
listTagsForDeliveryStreamInputEncoder data =
    []
        
        
        |> (::) ("DeliveryStreamName", data.deliveryStreamName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExclusiveStartTagKey", data.exclusiveStartTagKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listTagsForDeliveryStreamOutputEncoder : ListTagsForDeliveryStreamOutput -> JE.Value
listTagsForDeliveryStreamOutputEncoder data =
    []
        
        
        |> (::) ("Tags", data.tags |> (JE.list (tagEncoder)))
        
        
        
        |> (::) ("HasMoreTags", data.hasMoreTags |> (JE.bool))
        
        
        |> JE.object










openXJsonSerDeEncoder : OpenXJsonSerDe -> JE.Value
openXJsonSerDeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("ConvertDotsInJsonKeysToUnderscores", data.convertDotsInJsonKeysToUnderscores)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("CaseInsensitive", data.caseInsensitive)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("ColumnToJsonKeyMappings", data.columnToJsonKeyMappings)
        
        
        |> JE.object














orcSerDeEncoder : OrcSerDe -> JE.Value
orcSerDeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StripeSizeBytes", data.stripeSizeBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("BlockSizeBytes", data.blockSizeBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RowIndexStride", data.rowIndexStride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnablePadding", data.enablePadding)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("PaddingTolerance", data.paddingTolerance)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (orcCompressionToString >> JE.string)
            ("Compression", data.compression)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("BloomFilterColumns", data.bloomFilterColumns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("BloomFilterFalsePositiveProbability", data.bloomFilterFalsePositiveProbability)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("DictionaryKeyThreshold", data.dictionaryKeyThreshold)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (orcFormatVersionToString >> JE.string)
            ("FormatVersion", data.formatVersion)
        
        
        |> JE.object






outputFormatConfigurationEncoder : OutputFormatConfiguration -> JE.Value
outputFormatConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (serializerEncoder)
            ("Serializer", data.serializer)
        
        
        |> JE.object










parquetSerDeEncoder : ParquetSerDe -> JE.Value
parquetSerDeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("BlockSizeBytes", data.blockSizeBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSizeBytes", data.pageSizeBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (parquetCompressionToString >> JE.string)
            ("Compression", data.compression)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnableDictionaryCompression", data.enableDictionaryCompression)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxPaddingBytes", data.maxPaddingBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (parquetWriterVersionToString >> JE.string)
            ("WriterVersion", data.writerVersion)
        
        
        |> JE.object










processingConfigurationEncoder : ProcessingConfiguration -> JE.Value
processingConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enabled", data.enabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (processorEncoder))
            ("Processors", data.processors)
        
        
        |> JE.object






processorEncoder : Processor -> JE.Value
processorEncoder data =
    []
        
        
        |> (::) ("Type", data.type_ |> (processorTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (processorParameterEncoder))
            ("Parameters", data.parameters)
        
        
        |> JE.object






processorParameterEncoder : ProcessorParameter -> JE.Value
processorParameterEncoder data =
    []
        
        
        |> (::) ("ParameterName", data.parameterName |> (processorParameterNameToString >> JE.string))
        
        
        
        |> (::) ("ParameterValue", data.parameterValue |> (JE.string))
        
        
        |> JE.object














putRecordBatchInputEncoder : PutRecordBatchInput -> JE.Value
putRecordBatchInputEncoder data =
    []
        
        
        |> (::) ("DeliveryStreamName", data.deliveryStreamName |> (JE.string))
        
        
        
        |> (::) ("Records", data.records |> (JE.list (recordEncoder)))
        
        
        |> JE.object






putRecordBatchOutputEncoder : PutRecordBatchOutput -> JE.Value
putRecordBatchOutputEncoder data =
    []
        
        
        |> (::) ("FailedPutCount", data.failedPutCount |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Encrypted", data.encrypted)
        
        
        
        |> (::) ("RequestResponses", data.requestResponses |> (JE.list (putRecordBatchResponseEntryEncoder)))
        
        
        |> JE.object






putRecordBatchResponseEntryEncoder : PutRecordBatchResponseEntry -> JE.Value
putRecordBatchResponseEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RecordId", data.recordId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object






putRecordInputEncoder : PutRecordInput -> JE.Value
putRecordInputEncoder data =
    []
        
        
        |> (::) ("DeliveryStreamName", data.deliveryStreamName |> (JE.string))
        
        
        
        |> (::) ("Record", data.record |> (recordEncoder))
        
        
        |> JE.object






putRecordOutputEncoder : PutRecordOutput -> JE.Value
putRecordOutputEncoder data =
    []
        
        
        |> (::) ("RecordId", data.recordId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Encrypted", data.encrypted)
        
        
        |> JE.object






recordEncoder : Record -> JE.Value
recordEncoder data =
    []
        
        
        |> (::) ("Data", data.data |> (JE.string))
        
        
        |> JE.object






redshiftDestinationConfigurationEncoder : RedshiftDestinationConfiguration -> JE.Value
redshiftDestinationConfigurationEncoder data =
    []
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        
        |> (::) ("ClusterJDBCURL", data.clusterJDBCURL |> (JE.string))
        
        
        
        |> (::) ("CopyCommand", data.copyCommand |> (copyCommandEncoder))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("Password", data.password |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (redshiftRetryOptionsEncoder)
            ("RetryOptions", data.retryOptions)
        
        
        
        |> (::) ("S3Configuration", data.s3Configuration |> (s3DestinationConfigurationEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (processingConfigurationEncoder)
            ("ProcessingConfiguration", data.processingConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (redshiftS3BackupModeToString >> JE.string)
            ("S3BackupMode", data.s3BackupMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3DestinationConfigurationEncoder)
            ("S3BackupConfiguration", data.s3BackupConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        |> JE.object






redshiftDestinationDescriptionEncoder : RedshiftDestinationDescription -> JE.Value
redshiftDestinationDescriptionEncoder data =
    []
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        
        |> (::) ("ClusterJDBCURL", data.clusterJDBCURL |> (JE.string))
        
        
        
        |> (::) ("CopyCommand", data.copyCommand |> (copyCommandEncoder))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (redshiftRetryOptionsEncoder)
            ("RetryOptions", data.retryOptions)
        
        
        
        |> (::) ("S3DestinationDescription", data.s3DestinationDescription |> (s3DestinationDescriptionEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (processingConfigurationEncoder)
            ("ProcessingConfiguration", data.processingConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (redshiftS3BackupModeToString >> JE.string)
            ("S3BackupMode", data.s3BackupMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3DestinationDescriptionEncoder)
            ("S3BackupDescription", data.s3BackupDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        |> JE.object






redshiftDestinationUpdateEncoder : RedshiftDestinationUpdate -> JE.Value
redshiftDestinationUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClusterJDBCURL", data.clusterJDBCURL)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (copyCommandEncoder)
            ("CopyCommand", data.copyCommand)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Username", data.username)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Password", data.password)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (redshiftRetryOptionsEncoder)
            ("RetryOptions", data.retryOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3DestinationUpdateEncoder)
            ("S3Update", data.s3Update)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (processingConfigurationEncoder)
            ("ProcessingConfiguration", data.processingConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (redshiftS3BackupModeToString >> JE.string)
            ("S3BackupMode", data.s3BackupMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3DestinationUpdateEncoder)
            ("S3BackupUpdate", data.s3BackupUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        |> JE.object






redshiftRetryOptionsEncoder : RedshiftRetryOptions -> JE.Value
redshiftRetryOptionsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("DurationInSeconds", data.durationInSeconds)
        
        
        |> JE.object














s3DestinationConfigurationEncoder : S3DestinationConfiguration -> JE.Value
s3DestinationConfigurationEncoder data =
    []
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        
        |> (::) ("BucketARN", data.bucketARN |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Prefix", data.prefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorOutputPrefix", data.errorOutputPrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (bufferingHintsEncoder)
            ("BufferingHints", data.bufferingHints)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (compressionFormatToString >> JE.string)
            ("CompressionFormat", data.compressionFormat)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (encryptionConfigurationEncoder)
            ("EncryptionConfiguration", data.encryptionConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        |> JE.object






s3DestinationDescriptionEncoder : S3DestinationDescription -> JE.Value
s3DestinationDescriptionEncoder data =
    []
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        
        |> (::) ("BucketARN", data.bucketARN |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Prefix", data.prefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorOutputPrefix", data.errorOutputPrefix)
        
        
        
        |> (::) ("BufferingHints", data.bufferingHints |> (bufferingHintsEncoder))
        
        
        
        |> (::) ("CompressionFormat", data.compressionFormat |> (compressionFormatToString >> JE.string))
        
        
        
        |> (::) ("EncryptionConfiguration", data.encryptionConfiguration |> (encryptionConfigurationEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        |> JE.object






s3DestinationUpdateEncoder : S3DestinationUpdate -> JE.Value
s3DestinationUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BucketARN", data.bucketARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Prefix", data.prefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorOutputPrefix", data.errorOutputPrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (bufferingHintsEncoder)
            ("BufferingHints", data.bufferingHints)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (compressionFormatToString >> JE.string)
            ("CompressionFormat", data.compressionFormat)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (encryptionConfigurationEncoder)
            ("EncryptionConfiguration", data.encryptionConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        |> JE.object






schemaConfigurationEncoder : SchemaConfiguration -> JE.Value
schemaConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DatabaseName", data.databaseName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TableName", data.tableName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VersionId", data.versionId)
        
        
        |> JE.object






serializerEncoder : Serializer -> JE.Value
serializerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (parquetSerDeEncoder)
            ("ParquetSerDe", data.parquetSerDe)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (orcSerDeEncoder)
            ("OrcSerDe", data.orcSerDe)
        
        
        |> JE.object






sourceDescriptionEncoder : SourceDescription -> JE.Value
sourceDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisStreamSourceDescriptionEncoder)
            ("KinesisStreamSourceDescription", data.kinesisStreamSourceDescription)
        
        
        |> JE.object






splunkDestinationConfigurationEncoder : SplunkDestinationConfiguration -> JE.Value
splunkDestinationConfigurationEncoder data =
    []
        
        
        |> (::) ("HECEndpoint", data.hECEndpoint |> (JE.string))
        
        
        
        |> (::) ("HECEndpointType", data.hECEndpointType |> (hECEndpointTypeToString >> JE.string))
        
        
        
        |> (::) ("HECToken", data.hECToken |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("HECAcknowledgmentTimeoutInSeconds", data.hECAcknowledgmentTimeoutInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (splunkRetryOptionsEncoder)
            ("RetryOptions", data.retryOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (splunkS3BackupModeToString >> JE.string)
            ("S3BackupMode", data.s3BackupMode)
        
        
        
        |> (::) ("S3Configuration", data.s3Configuration |> (s3DestinationConfigurationEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (processingConfigurationEncoder)
            ("ProcessingConfiguration", data.processingConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        |> JE.object






splunkDestinationDescriptionEncoder : SplunkDestinationDescription -> JE.Value
splunkDestinationDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HECEndpoint", data.hECEndpoint)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (hECEndpointTypeToString >> JE.string)
            ("HECEndpointType", data.hECEndpointType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HECToken", data.hECToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("HECAcknowledgmentTimeoutInSeconds", data.hECAcknowledgmentTimeoutInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (splunkRetryOptionsEncoder)
            ("RetryOptions", data.retryOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (splunkS3BackupModeToString >> JE.string)
            ("S3BackupMode", data.s3BackupMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3DestinationDescriptionEncoder)
            ("S3DestinationDescription", data.s3DestinationDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (processingConfigurationEncoder)
            ("ProcessingConfiguration", data.processingConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        |> JE.object






splunkDestinationUpdateEncoder : SplunkDestinationUpdate -> JE.Value
splunkDestinationUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HECEndpoint", data.hECEndpoint)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (hECEndpointTypeToString >> JE.string)
            ("HECEndpointType", data.hECEndpointType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HECToken", data.hECToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("HECAcknowledgmentTimeoutInSeconds", data.hECAcknowledgmentTimeoutInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (splunkRetryOptionsEncoder)
            ("RetryOptions", data.retryOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (splunkS3BackupModeToString >> JE.string)
            ("S3BackupMode", data.s3BackupMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3DestinationUpdateEncoder)
            ("S3Update", data.s3Update)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (processingConfigurationEncoder)
            ("ProcessingConfiguration", data.processingConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLoggingOptionsEncoder)
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        |> JE.object






splunkRetryOptionsEncoder : SplunkRetryOptions -> JE.Value
splunkRetryOptionsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("DurationInSeconds", data.durationInSeconds)
        
        
        |> JE.object










startDeliveryStreamEncryptionInputEncoder : StartDeliveryStreamEncryptionInput -> JE.Value
startDeliveryStreamEncryptionInputEncoder data =
    []
        
        
        |> (::) ("DeliveryStreamName", data.deliveryStreamName |> (JE.string))
        
        
        |> JE.object






startDeliveryStreamEncryptionOutputEncoder : StartDeliveryStreamEncryptionOutput -> JE.Value
startDeliveryStreamEncryptionOutputEncoder data =
    []
        
        |> JE.object






stopDeliveryStreamEncryptionInputEncoder : StopDeliveryStreamEncryptionInput -> JE.Value
stopDeliveryStreamEncryptionInputEncoder data =
    []
        
        
        |> (::) ("DeliveryStreamName", data.deliveryStreamName |> (JE.string))
        
        
        |> JE.object






stopDeliveryStreamEncryptionOutputEncoder : StopDeliveryStreamEncryptionOutput -> JE.Value
stopDeliveryStreamEncryptionOutputEncoder data =
    []
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object






tagDeliveryStreamInputEncoder : TagDeliveryStreamInput -> JE.Value
tagDeliveryStreamInputEncoder data =
    []
        
        
        |> (::) ("DeliveryStreamName", data.deliveryStreamName |> (JE.string))
        
        
        
        |> (::) ("Tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object






tagDeliveryStreamOutputEncoder : TagDeliveryStreamOutput -> JE.Value
tagDeliveryStreamOutputEncoder data =
    []
        
        |> JE.object






untagDeliveryStreamInputEncoder : UntagDeliveryStreamInput -> JE.Value
untagDeliveryStreamInputEncoder data =
    []
        
        
        |> (::) ("DeliveryStreamName", data.deliveryStreamName |> (JE.string))
        
        
        
        |> (::) ("TagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






untagDeliveryStreamOutputEncoder : UntagDeliveryStreamOutput -> JE.Value
untagDeliveryStreamOutputEncoder data =
    []
        
        |> JE.object






updateDestinationInputEncoder : UpdateDestinationInput -> JE.Value
updateDestinationInputEncoder data =
    []
        
        
        |> (::) ("DeliveryStreamName", data.deliveryStreamName |> (JE.string))
        
        
        
        |> (::) ("CurrentDeliveryStreamVersionId", data.currentDeliveryStreamVersionId |> (JE.string))
        
        
        
        |> (::) ("DestinationId", data.destinationId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3DestinationUpdateEncoder)
            ("S3DestinationUpdate", data.s3DestinationUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (extendedS3DestinationUpdateEncoder)
            ("ExtendedS3DestinationUpdate", data.extendedS3DestinationUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (redshiftDestinationUpdateEncoder)
            ("RedshiftDestinationUpdate", data.redshiftDestinationUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (elasticsearchDestinationUpdateEncoder)
            ("ElasticsearchDestinationUpdate", data.elasticsearchDestinationUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (splunkDestinationUpdateEncoder)
            ("SplunkDestinationUpdate", data.splunkDestinationUpdate)
        
        
        |> JE.object






updateDestinationOutputEncoder : UpdateDestinationOutput -> JE.Value
updateDestinationOutputEncoder data =
    []
        
        |> JE.object





