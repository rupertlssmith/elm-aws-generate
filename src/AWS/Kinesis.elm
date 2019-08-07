module AWS.Kinesis
    exposing
        ( service
        , addTagsToStream
        , createStream
        , decreaseStreamRetentionPeriod
        , deleteStream
        , DeleteStreamOptions
        , deregisterStreamConsumer
        , DeregisterStreamConsumerOptions
        , describeLimits
        , describeStream
        , DescribeStreamOptions
        , describeStreamConsumer
        , DescribeStreamConsumerOptions
        , describeStreamSummary
        , disableEnhancedMonitoring
        , enableEnhancedMonitoring
        , getRecords
        , GetRecordsOptions
        , getShardIterator
        , GetShardIteratorOptions
        , increaseStreamRetentionPeriod
        , listShards
        , ListShardsOptions
        , listStreamConsumers
        , ListStreamConsumersOptions
        , listStreams
        , ListStreamsOptions
        , listTagsForStream
        , ListTagsForStreamOptions
        , mergeShards
        , putRecord
        , PutRecordOptions
        , putRecords
        , registerStreamConsumer
        , removeTagsFromStream
        , splitShard
        , startStreamEncryption
        , stopStreamEncryption
        , updateShardCount
        , Consumer
        , ConsumerDescription
        , ConsumerStatus(..)
        , DescribeLimitsOutput
        , DescribeStreamConsumerOutput
        , DescribeStreamOutput
        , DescribeStreamSummaryOutput
        , EncryptionType(..)
        , EnhancedMetrics
        , EnhancedMonitoringOutput
        , ExpiredIteratorException
        , ExpiredNextTokenException
        , GetRecordsOutput
        , GetShardIteratorOutput
        , HashKeyRange
        , InternalFailureException
        , InvalidArgumentException
        , KMSAccessDeniedException
        , KMSDisabledException
        , KMSInvalidStateException
        , KMSNotFoundException
        , KMSOptInRequired
        , KMSThrottlingException
        , LimitExceededException
        , ListShardsOutput
        , ListStreamConsumersOutput
        , ListStreamsOutput
        , ListTagsForStreamOutput
        , MetricsName(..)
        , ProvisionedThroughputExceededException
        , PutRecordOutput
        , PutRecordsOutput
        , PutRecordsRequestEntry
        , PutRecordsResultEntry
        , Record
        , RegisterStreamConsumerOutput
        , ResourceInUseException
        , ResourceNotFoundException
        , ScalingType(..)
        , SequenceNumberRange
        , Shard
        , ShardIteratorType(..)
        , StartingPosition
        , StreamDescription
        , StreamDescriptionSummary
        , StreamStatus(..)
        , SubscribeToShardEvent
        , SubscribeToShardEventStream
        , SubscribeToShardInput
        , SubscribeToShardOutput
        , Tag
        , UpdateShardCountOutput
        )

{-| <fullname>Amazon Kinesis Data Streams Service API Reference</fullname> <p>Amazon Kinesis Data Streams is a managed service that scales elastically for real-time processing of streaming big data.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addTagsToStream](#addTagsToStream)
* [createStream](#createStream)
* [decreaseStreamRetentionPeriod](#decreaseStreamRetentionPeriod)
* [deleteStream](#deleteStream)
* [DeleteStreamOptions](#DeleteStreamOptions)
* [deregisterStreamConsumer](#deregisterStreamConsumer)
* [DeregisterStreamConsumerOptions](#DeregisterStreamConsumerOptions)
* [describeLimits](#describeLimits)
* [describeStream](#describeStream)
* [DescribeStreamOptions](#DescribeStreamOptions)
* [describeStreamConsumer](#describeStreamConsumer)
* [DescribeStreamConsumerOptions](#DescribeStreamConsumerOptions)
* [describeStreamSummary](#describeStreamSummary)
* [disableEnhancedMonitoring](#disableEnhancedMonitoring)
* [enableEnhancedMonitoring](#enableEnhancedMonitoring)
* [getRecords](#getRecords)
* [GetRecordsOptions](#GetRecordsOptions)
* [getShardIterator](#getShardIterator)
* [GetShardIteratorOptions](#GetShardIteratorOptions)
* [increaseStreamRetentionPeriod](#increaseStreamRetentionPeriod)
* [listShards](#listShards)
* [ListShardsOptions](#ListShardsOptions)
* [listStreamConsumers](#listStreamConsumers)
* [ListStreamConsumersOptions](#ListStreamConsumersOptions)
* [listStreams](#listStreams)
* [ListStreamsOptions](#ListStreamsOptions)
* [listTagsForStream](#listTagsForStream)
* [ListTagsForStreamOptions](#ListTagsForStreamOptions)
* [mergeShards](#mergeShards)
* [putRecord](#putRecord)
* [PutRecordOptions](#PutRecordOptions)
* [putRecords](#putRecords)
* [registerStreamConsumer](#registerStreamConsumer)
* [removeTagsFromStream](#removeTagsFromStream)
* [splitShard](#splitShard)
* [startStreamEncryption](#startStreamEncryption)
* [stopStreamEncryption](#stopStreamEncryption)
* [updateShardCount](#updateShardCount)


@docs addTagsToStream,createStream,decreaseStreamRetentionPeriod,deleteStream,DeleteStreamOptions,deregisterStreamConsumer,DeregisterStreamConsumerOptions,describeLimits,describeStream,DescribeStreamOptions,describeStreamConsumer,DescribeStreamConsumerOptions,describeStreamSummary,disableEnhancedMonitoring,enableEnhancedMonitoring,getRecords,GetRecordsOptions,getShardIterator,GetShardIteratorOptions,increaseStreamRetentionPeriod,listShards,ListShardsOptions,listStreamConsumers,ListStreamConsumersOptions,listStreams,ListStreamsOptions,listTagsForStream,ListTagsForStreamOptions,mergeShards,putRecord,PutRecordOptions,putRecords,registerStreamConsumer,removeTagsFromStream,splitShard,startStreamEncryption,stopStreamEncryption,updateShardCount

## Responses

* [DescribeLimitsOutput](#DescribeLimitsOutput)
* [DescribeStreamConsumerOutput](#DescribeStreamConsumerOutput)
* [DescribeStreamOutput](#DescribeStreamOutput)
* [DescribeStreamSummaryOutput](#DescribeStreamSummaryOutput)
* [EnhancedMonitoringOutput](#EnhancedMonitoringOutput)
* [GetRecordsOutput](#GetRecordsOutput)
* [GetShardIteratorOutput](#GetShardIteratorOutput)
* [ListShardsOutput](#ListShardsOutput)
* [ListStreamConsumersOutput](#ListStreamConsumersOutput)
* [ListStreamsOutput](#ListStreamsOutput)
* [ListTagsForStreamOutput](#ListTagsForStreamOutput)
* [PutRecordOutput](#PutRecordOutput)
* [PutRecordsOutput](#PutRecordsOutput)
* [RegisterStreamConsumerOutput](#RegisterStreamConsumerOutput)
* [UpdateShardCountOutput](#UpdateShardCountOutput)


@docs DescribeLimitsOutput,DescribeStreamConsumerOutput,DescribeStreamOutput,DescribeStreamSummaryOutput,EnhancedMonitoringOutput,GetRecordsOutput,GetShardIteratorOutput,ListShardsOutput,ListStreamConsumersOutput,ListStreamsOutput,ListTagsForStreamOutput,PutRecordOutput,PutRecordsOutput,RegisterStreamConsumerOutput,UpdateShardCountOutput

## Records

* [Consumer](#Consumer)
* [ConsumerDescription](#ConsumerDescription)
* [EnhancedMetrics](#EnhancedMetrics)
* [HashKeyRange](#HashKeyRange)
* [PutRecordsRequestEntry](#PutRecordsRequestEntry)
* [PutRecordsResultEntry](#PutRecordsResultEntry)
* [Record](#Record)
* [SequenceNumberRange](#SequenceNumberRange)
* [Shard](#Shard)
* [StartingPosition](#StartingPosition)
* [StreamDescription](#StreamDescription)
* [StreamDescriptionSummary](#StreamDescriptionSummary)
* [SubscribeToShardEvent](#SubscribeToShardEvent)
* [SubscribeToShardEventStream](#SubscribeToShardEventStream)
* [SubscribeToShardInput](#SubscribeToShardInput)
* [SubscribeToShardOutput](#SubscribeToShardOutput)
* [Tag](#Tag)


@docs Consumer,ConsumerDescription,EnhancedMetrics,HashKeyRange,PutRecordsRequestEntry,PutRecordsResultEntry,Record,SequenceNumberRange,Shard,StartingPosition,StreamDescription,StreamDescriptionSummary,SubscribeToShardEvent,SubscribeToShardEventStream,SubscribeToShardInput,SubscribeToShardOutput,Tag

## Unions

* [ConsumerStatus](#ConsumerStatus)
* [EncryptionType](#EncryptionType)
* [MetricsName](#MetricsName)
* [ScalingType](#ScalingType)
* [ShardIteratorType](#ShardIteratorType)
* [StreamStatus](#StreamStatus)


@docs ConsumerStatus,EncryptionType,MetricsName,ScalingType,ShardIteratorType,StreamStatus

## Exceptions

* [ExpiredIteratorException](#ExpiredIteratorException)
* [ExpiredNextTokenException](#ExpiredNextTokenException)
* [InternalFailureException](#InternalFailureException)
* [InvalidArgumentException](#InvalidArgumentException)
* [KMSAccessDeniedException](#KMSAccessDeniedException)
* [KMSDisabledException](#KMSDisabledException)
* [KMSInvalidStateException](#KMSInvalidStateException)
* [KMSNotFoundException](#KMSNotFoundException)
* [KMSOptInRequired](#KMSOptInRequired)
* [KMSThrottlingException](#KMSThrottlingException)
* [LimitExceededException](#LimitExceededException)
* [ProvisionedThroughputExceededException](#ProvisionedThroughputExceededException)
* [ResourceInUseException](#ResourceInUseException)
* [ResourceNotFoundException](#ResourceNotFoundException)


@docs ExpiredIteratorException,ExpiredNextTokenException,InternalFailureException,InvalidArgumentException,KMSAccessDeniedException,KMSDisabledException,KMSInvalidStateException,KMSNotFoundException,KMSOptInRequired,KMSThrottlingException,LimitExceededException,ProvisionedThroughputExceededException,ResourceInUseException,ResourceNotFoundException

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
        "kinesis"
        "2013-12-02"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "Kinesis_20131202")



-- OPERATIONS

{-| <p>Adds or updates tags for the specified Kinesis data stream. Each time you invoke this operation, you can specify up to 10 tags. If you want to add more than 10 tags to your stream, you can invoke this operation multiple times. In total, each stream can have up to 50 tags.</p> <p>If tags have already been assigned to the stream, <code>AddTagsToStream</code> overwrites any existing tags that correspond to the specified tag keys.</p> <p> <a>AddTagsToStream</a> has a limit of five transactions per second per account.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `tags` __:__ `(Dict String String)`


-}

addTagsToStream :
  
    String ->
  
    (Dict String String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

addTagsToStream streamName tags =
    
    let
        requestInput = AddTagsToStreamInput
            
            streamName
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> addTagsToStreamInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddTagsToStream"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Creates a Kinesis data stream. A stream captures and transports data records that are continuously emitted from different data sources or <i>producers</i>. Scale-out within a stream is explicitly supported by means of shards, which are uniquely identified groups of data records in a stream.</p> <p>You specify and control the number of shards that a stream is composed of. Each shard can support reads up to five transactions per second, up to a maximum data read total of 2 MB per second. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MB per second. If the amount of data input increases or decreases, you can add or remove shards.</p> <p>The stream name identifies the stream. The name is scoped to the AWS account used by the application. It is also scoped by AWS Region. That is, two streams in two different accounts can have the same name, and two streams in the same account, but in two different Regions, can have the same name.</p> <p> <code>CreateStream</code> is an asynchronous operation. Upon receiving a <code>CreateStream</code> request, Kinesis Data Streams immediately returns and sets the stream status to <code>CREATING</code>. After the stream is created, Kinesis Data Streams sets the stream status to <code>ACTIVE</code>. You should perform read and write operations only on an <code>ACTIVE</code> stream. </p> <p>You receive a <code>LimitExceededException</code> when making a <code>CreateStream</code> request when you try to do one of the following:</p> <ul> <li> <p>Have more than five streams in the <code>CREATING</code> state at any point in time.</p> </li> <li> <p>Create more shards than are authorized for your account.</p> </li> </ul> <p>For the default shard limit for an AWS account, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Amazon Kinesis Data Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>. To increase this limit, <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">contact AWS Support</a>.</p> <p>You can use <code>DescribeStream</code> to check the stream status, which is returned in <code>StreamStatus</code>.</p> <p> <a>CreateStream</a> has a limit of five transactions per second per account.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `shardCount` __:__ `Int`


-}

createStream :
  
    String ->
  
    Int ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

createStream streamName shardCount =
    
    let
        requestInput = CreateStreamInput
            
            streamName
            
            shardCount
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createStreamInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateStream"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Decreases the Kinesis data stream's retention period, which is the length of time data records are accessible after they are added to the stream. The minimum value of a stream's retention period is 24 hours.</p> <p>This operation may result in lost data. For example, if the stream's retention period is 48 hours and is decreased to 24 hours, any data already in the stream that is older than 24 hours is inaccessible.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `retentionPeriodHours` __:__ `Int`


-}

decreaseStreamRetentionPeriod :
  
    String ->
  
    Int ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

decreaseStreamRetentionPeriod streamName retentionPeriodHours =
    
    let
        requestInput = DecreaseStreamRetentionPeriodInput
            
            streamName
            
            retentionPeriodHours
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> decreaseStreamRetentionPeriodInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DecreaseStreamRetentionPeriod"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a Kinesis data stream and all its shards and data. You must shut down any applications that are operating on the stream before you delete the stream. If an application attempts to operate on a deleted stream, it receives the exception <code>ResourceNotFoundException</code>.</p> <p>If the stream is in the <code>ACTIVE</code> state, you can delete it. After a <code>DeleteStream</code> request, the specified stream is in the <code>DELETING</code> state until Kinesis Data Streams completes the deletion.</p> <p> <b>Note:</b> Kinesis Data Streams might continue to accept data read and write operations, such as <a>PutRecord</a>, <a>PutRecords</a>, and <a>GetRecords</a>, on a stream in the <code>DELETING</code> state until the stream deletion is complete.</p> <p>When you delete a stream, any shards in that stream are also deleted, and any tags are dissociated from the stream.</p> <p>You can use the <a>DescribeStream</a> operation to check the state of the stream, which is returned in <code>StreamStatus</code>.</p> <p> <a>DeleteStream</a> has a limit of five transactions per second per account.</p>

__Required Parameters__

* `streamName` __:__ `String`


-}

deleteStream :
  
    String ->
  
  
    ( DeleteStreamOptions -> DeleteStreamOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteStream streamName setOptions =
    
    let
        requestInput = DeleteStreamInput
            
            streamName
            
            options.enforceConsumerDeletion
            
        
        options = setOptions (DeleteStreamOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteStreamInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteStream"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a deleteStream request
-}
type alias DeleteStreamOptions =
    {
    enforceConsumerDeletion : Maybe Bool
    }



{-| <p>To deregister a consumer, provide its ARN. Alternatively, you can provide the ARN of the data stream and the name you gave the consumer when you registered it. You may also provide all three parameters, as long as they don't conflict with each other. If you don't know the name or ARN of the consumer that you want to deregister, you can use the <a>ListStreamConsumers</a> operation to get a list of the descriptions of all the consumers that are currently registered with a given data stream. The description of a consumer contains its name and ARN.</p> <p>This operation has a limit of five transactions per second per account.</p>

__Required Parameters__



-}

deregisterStreamConsumer :
  
  
    ( DeregisterStreamConsumerOptions -> DeregisterStreamConsumerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deregisterStreamConsumer setOptions =
    
    let
        requestInput = DeregisterStreamConsumerInput
            
            options.streamARN
            
            options.consumerName
            
            options.consumerARN
            
        
        options = setOptions (DeregisterStreamConsumerOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deregisterStreamConsumerInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeregisterStreamConsumer"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a deregisterStreamConsumer request
-}
type alias DeregisterStreamConsumerOptions =
    {
    streamARN : Maybe String,consumerName : Maybe String,consumerARN : Maybe String
    }



{-| <p>Describes the shard limits and usage for the account.</p> <p>If you update your account limits, the old limits might be returned for a few minutes.</p> <p>This operation has a limit of one transaction per second per account.</p>

__Required Parameters__



-}

describeLimits :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLimitsOutput)

describeLimits =
    
    let
        requestInput = DescribeLimitsInput
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeLimitsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeLimits"
                
                (AWS.Core.Decode.ResultDecoder "DescribeLimitsOutput" describeLimitsOutputDecoder)
                
            )





{-| <p>Describes the specified Kinesis data stream.</p> <p>The information returned includes the stream name, Amazon Resource Name (ARN), creation time, enhanced metric configuration, and shard map. The shard map is an array of shard objects. For each shard object, there is the hash key and sequence number ranges that the shard spans, and the IDs of any earlier shards that played in a role in creating the shard. Every record ingested in the stream is identified by a sequence number, which is assigned when the record is put into the stream.</p> <p>You can limit the number of shards returned by each call. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-retrieve-shards.html">Retrieving Shards from a Stream</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>There are no guarantees about the chronological order shards returned. To process shards in chronological order, use the ID of the parent shard to track the lineage to the oldest shard.</p> <p>This operation has a limit of 10 transactions per second per account.</p>

__Required Parameters__

* `streamName` __:__ `String`


-}

describeStream :
  
    String ->
  
  
    ( DescribeStreamOptions -> DescribeStreamOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStreamOutput)

describeStream streamName setOptions =
    
    let
        requestInput = DescribeStreamInput
            
            streamName
            
            options.limit
            
            options.exclusiveStartShardId
            
        
        options = setOptions (DescribeStreamOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeStreamInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStream"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStreamOutput" describeStreamOutputDecoder)
                
            )



{-| Options for a describeStream request
-}
type alias DescribeStreamOptions =
    {
    limit : Maybe Int,exclusiveStartShardId : Maybe String
    }



{-| <p>To get the description of a registered consumer, provide the ARN of the consumer. Alternatively, you can provide the ARN of the data stream and the name you gave the consumer when you registered it. You may also provide all three parameters, as long as they don't conflict with each other. If you don't know the name or ARN of the consumer that you want to describe, you can use the <a>ListStreamConsumers</a> operation to get a list of the descriptions of all the consumers that are currently registered with a given data stream.</p> <p>This operation has a limit of 20 transactions per second per account.</p>

__Required Parameters__



-}

describeStreamConsumer :
  
  
    ( DescribeStreamConsumerOptions -> DescribeStreamConsumerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStreamConsumerOutput)

describeStreamConsumer setOptions =
    
    let
        requestInput = DescribeStreamConsumerInput
            
            options.streamARN
            
            options.consumerName
            
            options.consumerARN
            
        
        options = setOptions (DescribeStreamConsumerOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeStreamConsumerInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStreamConsumer"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStreamConsumerOutput" describeStreamConsumerOutputDecoder)
                
            )



{-| Options for a describeStreamConsumer request
-}
type alias DescribeStreamConsumerOptions =
    {
    streamARN : Maybe String,consumerName : Maybe String,consumerARN : Maybe String
    }



{-| <p>Provides a summarized description of the specified Kinesis data stream without the shard list.</p> <p>The information returned includes the stream name, Amazon Resource Name (ARN), status, record retention period, approximate creation time, monitoring, encryption details, and open shard count. </p>

__Required Parameters__

* `streamName` __:__ `String`


-}

describeStreamSummary :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStreamSummaryOutput)

describeStreamSummary streamName =
    
    let
        requestInput = DescribeStreamSummaryInput
            
            streamName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeStreamSummaryInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStreamSummary"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStreamSummaryOutput" describeStreamSummaryOutputDecoder)
                
            )





{-| <p>Disables enhanced monitoring.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `shardLevelMetrics` __:__ `(List MetricsName)`


-}

disableEnhancedMonitoring :
  
    String ->
  
    (List MetricsName) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnhancedMonitoringOutput)

disableEnhancedMonitoring streamName shardLevelMetrics =
    
    let
        requestInput = DisableEnhancedMonitoringInput
            
            streamName
            
            shardLevelMetrics
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disableEnhancedMonitoringInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisableEnhancedMonitoring"
                
                (AWS.Core.Decode.ResultDecoder "EnhancedMonitoringOutput" enhancedMonitoringOutputDecoder)
                
            )





{-| <p>Enables enhanced Kinesis data stream monitoring for shard-level metrics.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `shardLevelMetrics` __:__ `(List MetricsName)`


-}

enableEnhancedMonitoring :
  
    String ->
  
    (List MetricsName) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnhancedMonitoringOutput)

enableEnhancedMonitoring streamName shardLevelMetrics =
    
    let
        requestInput = EnableEnhancedMonitoringInput
            
            streamName
            
            shardLevelMetrics
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> enableEnhancedMonitoringInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "EnableEnhancedMonitoring"
                
                (AWS.Core.Decode.ResultDecoder "EnhancedMonitoringOutput" enhancedMonitoringOutputDecoder)
                
            )





{-| <p>Gets data records from a Kinesis data stream's shard.</p> <p>Specify a shard iterator using the <code>ShardIterator</code> parameter. The shard iterator specifies the position in the shard from which you want to start reading data records sequentially. If there are no records available in the portion of the shard that the iterator points to, <a>GetRecords</a> returns an empty list. It might take multiple calls to get to a portion of the shard that contains records.</p> <p>You can scale by provisioning multiple shards per stream while considering service limits (for more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Amazon Kinesis Data Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>). Your application should have one thread per shard, each reading continuously from its stream. To read from a stream continually, call <a>GetRecords</a> in a loop. Use <a>GetShardIterator</a> to get the shard iterator to specify in the first <a>GetRecords</a> call. <a>GetRecords</a> returns a new shard iterator in <code>NextShardIterator</code>. Specify the shard iterator returned in <code>NextShardIterator</code> in subsequent calls to <a>GetRecords</a>. If the shard has been closed, the shard iterator can't return more data and <a>GetRecords</a> returns <code>null</code> in <code>NextShardIterator</code>. You can terminate the loop when the shard is closed, or when the shard iterator reaches the record with the sequence number or other attribute that marks it as the last record to process.</p> <p>Each data record can be up to 1 MiB in size, and each shard can read up to 2 MiB per second. You can ensure that your calls don't exceed the maximum supported size or throughput by using the <code>Limit</code> parameter to specify the maximum number of records that <a>GetRecords</a> can return. Consider your average record size when determining this limit. The maximum number of records that can be returned per call is 10,000.</p> <p>The size of the data returned by <a>GetRecords</a> varies depending on the utilization of the shard. The maximum size of data that <a>GetRecords</a> can return is 10 MiB. If a call returns this amount of data, subsequent calls made within the next 5 seconds throw <code>ProvisionedThroughputExceededException</code>. If there is insufficient provisioned throughput on the stream, subsequent calls made within the next 1 second throw <code>ProvisionedThroughputExceededException</code>. <a>GetRecords</a> doesn't return any data when it throws an exception. For this reason, we recommend that you wait 1 second between calls to <a>GetRecords</a>. However, it's possible that the application will get exceptions for longer than 1 second.</p> <p>To detect whether the application is falling behind in processing, you can use the <code>MillisBehindLatest</code> response attribute. You can also monitor the stream using CloudWatch metrics and other mechanisms (see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/monitoring.html">Monitoring</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>).</p> <p>Each Amazon Kinesis record includes a value, <code>ApproximateArrivalTimestamp</code>, that is set when a stream successfully receives and stores a record. This is commonly referred to as a server-side time stamp, whereas a client-side time stamp is set when a data producer creates or sends the record to a stream (a data producer is any data source putting data records into a stream, for example with <a>PutRecords</a>). The time stamp has millisecond precision. There are no guarantees about the time stamp accuracy, or that the time stamp is always increasing. For example, records in a shard or across a stream might have time stamps that are out of order.</p> <p>This operation has a limit of five transactions per second per account.</p>

__Required Parameters__

* `shardIterator` __:__ `String`


-}

getRecords :
  
    String ->
  
  
    ( GetRecordsOptions -> GetRecordsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRecordsOutput)

getRecords shardIterator setOptions =
    
    let
        requestInput = GetRecordsInput
            
            shardIterator
            
            options.limit
            
        
        options = setOptions (GetRecordsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRecordsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRecords"
                
                (AWS.Core.Decode.ResultDecoder "GetRecordsOutput" getRecordsOutputDecoder)
                
            )



{-| Options for a getRecords request
-}
type alias GetRecordsOptions =
    {
    limit : Maybe Int
    }



{-| <p>Gets an Amazon Kinesis shard iterator. A shard iterator expires 5 minutes after it is returned to the requester.</p> <p>A shard iterator specifies the shard position from which to start reading data records sequentially. The position is specified using the sequence number of a data record in a shard. A sequence number is the identifier associated with every record ingested in the stream, and is assigned when a record is put into the stream. Each stream has one or more shards.</p> <p>You must specify the shard iterator type. For example, you can set the <code>ShardIteratorType</code> parameter to read exactly from the position denoted by a specific sequence number by using the <code>AT_SEQUENCE_NUMBER</code> shard iterator type. Alternatively, the parameter can read right after the sequence number by using the <code>AFTER_SEQUENCE_NUMBER</code> shard iterator type, using sequence numbers returned by earlier calls to <a>PutRecord</a>, <a>PutRecords</a>, <a>GetRecords</a>, or <a>DescribeStream</a>. In the request, you can specify the shard iterator type <code>AT_TIMESTAMP</code> to read records from an arbitrary point in time, <code>TRIM_HORIZON</code> to cause <code>ShardIterator</code> to point to the last untrimmed record in the shard in the system (the oldest data record in the shard), or <code>LATEST</code> so that you always read the most recent data in the shard. </p> <p>When you read repeatedly from a stream, use a <a>GetShardIterator</a> request to get the first shard iterator for use in your first <a>GetRecords</a> request and for subsequent reads use the shard iterator returned by the <a>GetRecords</a> request in <code>NextShardIterator</code>. A new shard iterator is returned by every <a>GetRecords</a> request in <code>NextShardIterator</code>, which you use in the <code>ShardIterator</code> parameter of the next <a>GetRecords</a> request. </p> <p>If a <a>GetShardIterator</a> request is made too often, you receive a <code>ProvisionedThroughputExceededException</code>. For more information about throughput limits, see <a>GetRecords</a>, and <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>If the shard is closed, <a>GetShardIterator</a> returns a valid iterator for the last sequence number of the shard. A shard can be closed as a result of using <a>SplitShard</a> or <a>MergeShards</a>.</p> <p> <a>GetShardIterator</a> has a limit of five transactions per second per account per open shard.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `shardId` __:__ `String`
* `shardIteratorType` __:__ `ShardIteratorType`


-}

getShardIterator :
  
    String ->
  
    String ->
  
    ShardIteratorType ->
  
  
    ( GetShardIteratorOptions -> GetShardIteratorOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetShardIteratorOutput)

getShardIterator streamName shardId shardIteratorType setOptions =
    
    let
        requestInput = GetShardIteratorInput
            
            streamName
            
            shardId
            
            shardIteratorType
            
            options.startingSequenceNumber
            
            options.timestamp
            
        
        options = setOptions (GetShardIteratorOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getShardIteratorInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetShardIterator"
                
                (AWS.Core.Decode.ResultDecoder "GetShardIteratorOutput" getShardIteratorOutputDecoder)
                
            )



{-| Options for a getShardIterator request
-}
type alias GetShardIteratorOptions =
    {
    startingSequenceNumber : Maybe String,timestamp : Maybe Posix
    }



{-| <p>Increases the Kinesis data stream's retention period, which is the length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 168 hours (7 days).</p> <p>If you choose a longer stream retention period, this operation increases the time period during which records that have not yet expired are accessible. However, it does not make previous, expired data (older than the stream's previous retention period) accessible after the operation has been called. For example, if a stream's retention period is set to 24 hours and is increased to 168 hours, any data that is older than 24 hours remains inaccessible to consumer applications.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `retentionPeriodHours` __:__ `Int`


-}

increaseStreamRetentionPeriod :
  
    String ->
  
    Int ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

increaseStreamRetentionPeriod streamName retentionPeriodHours =
    
    let
        requestInput = IncreaseStreamRetentionPeriodInput
            
            streamName
            
            retentionPeriodHours
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> increaseStreamRetentionPeriodInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "IncreaseStreamRetentionPeriod"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Lists the shards in a stream and provides information about each shard. This operation has a limit of 100 transactions per second per data stream.</p> <important> <p>This API is a new operation that is used by the Amazon Kinesis Client Library (KCL). If you have a fine-grained IAM policy that only allows specific operations, you must update your policy to allow calls to this API. For more information, see <a href="https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html">Controlling Access to Amazon Kinesis Data Streams Resources Using IAM</a>.</p> </important>

__Required Parameters__



-}

listShards :
  
  
    ( ListShardsOptions -> ListShardsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListShardsOutput)

listShards setOptions =
    
    let
        requestInput = ListShardsInput
            
            options.streamName
            
            options.nextToken
            
            options.exclusiveStartShardId
            
            options.maxResults
            
            options.streamCreationTimestamp
            
        
        options = setOptions (ListShardsOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listShardsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListShards"
                
                (AWS.Core.Decode.ResultDecoder "ListShardsOutput" listShardsOutputDecoder)
                
            )



{-| Options for a listShards request
-}
type alias ListShardsOptions =
    {
    streamName : Maybe String,nextToken : Maybe String,exclusiveStartShardId : Maybe String,maxResults : Maybe Int,streamCreationTimestamp : Maybe Posix
    }



{-| <p>Lists the consumers registered to receive data from a stream using enhanced fan-out, and provides information about each consumer.</p> <p>This operation has a limit of 10 transactions per second per account.</p>

__Required Parameters__

* `streamARN` __:__ `String`


-}

listStreamConsumers :
  
    String ->
  
  
    ( ListStreamConsumersOptions -> ListStreamConsumersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStreamConsumersOutput)

listStreamConsumers streamARN setOptions =
    
    let
        requestInput = ListStreamConsumersInput
            
            streamARN
            
            options.nextToken
            
            options.maxResults
            
            options.streamCreationTimestamp
            
        
        options = setOptions (ListStreamConsumersOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listStreamConsumersInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListStreamConsumers"
                
                (AWS.Core.Decode.ResultDecoder "ListStreamConsumersOutput" listStreamConsumersOutputDecoder)
                
            )



{-| Options for a listStreamConsumers request
-}
type alias ListStreamConsumersOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int,streamCreationTimestamp : Maybe Posix
    }



{-| <p>Lists your Kinesis data streams.</p> <p>The number of streams may be too large to return from a single call to <code>ListStreams</code>. You can limit the number of returned streams using the <code>Limit</code> parameter. If you do not specify a value for the <code>Limit</code> parameter, Kinesis Data Streams uses the default limit, which is currently 10.</p> <p>You can detect if there are more streams available to list by using the <code>HasMoreStreams</code> flag from the returned output. If there are more streams available, you can request more streams by using the name of the last stream returned by the <code>ListStreams</code> request in the <code>ExclusiveStartStreamName</code> parameter in a subsequent request to <code>ListStreams</code>. The group of stream names returned by the subsequent request is then added to the list. You can continue this process until all the stream names have been collected in the list. </p> <p> <a>ListStreams</a> has a limit of five transactions per second per account.</p>

__Required Parameters__



-}

listStreams :
  
  
    ( ListStreamsOptions -> ListStreamsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStreamsOutput)

listStreams setOptions =
    
    let
        requestInput = ListStreamsInput
            
            options.limit
            
            options.exclusiveStartStreamName
            
        
        options = setOptions (ListStreamsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listStreamsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListStreams"
                
                (AWS.Core.Decode.ResultDecoder "ListStreamsOutput" listStreamsOutputDecoder)
                
            )



{-| Options for a listStreams request
-}
type alias ListStreamsOptions =
    {
    limit : Maybe Int,exclusiveStartStreamName : Maybe String
    }



{-| <p>Lists the tags for the specified Kinesis data stream. This operation has a limit of five transactions per second per account.</p>

__Required Parameters__

* `streamName` __:__ `String`


-}

listTagsForStream :
  
    String ->
  
  
    ( ListTagsForStreamOptions -> ListTagsForStreamOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForStreamOutput)

listTagsForStream streamName setOptions =
    
    let
        requestInput = ListTagsForStreamInput
            
            streamName
            
            options.exclusiveStartTagKey
            
            options.limit
            
        
        options = setOptions (ListTagsForStreamOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listTagsForStreamInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForStream"
                
                (AWS.Core.Decode.ResultDecoder "ListTagsForStreamOutput" listTagsForStreamOutputDecoder)
                
            )



{-| Options for a listTagsForStream request
-}
type alias ListTagsForStreamOptions =
    {
    exclusiveStartTagKey : Maybe String,limit : Maybe Int
    }



{-| <p>Merges two adjacent shards in a Kinesis data stream and combines them into a single shard to reduce the stream's capacity to ingest and transport data. Two shards are considered adjacent if the union of the hash key ranges for the two shards form a contiguous set with no gaps. For example, if you have two shards, one with a hash key range of 276...381 and the other with a hash key range of 382...454, then you could merge these two shards into a single shard that would have a hash key range of 276...454. After the merge, the single child shard receives data for all hash key values covered by the two parent shards.</p> <p> <code>MergeShards</code> is called when there is a need to reduce the overall capacity of a stream because of excess capacity that is not being used. You must specify the shard to be merged and the adjacent shard for a stream. For more information about merging shards, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-merge.html">Merge Two Shards</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>If the stream is in the <code>ACTIVE</code> state, you can call <code>MergeShards</code>. If a stream is in the <code>CREATING</code>, <code>UPDATING</code>, or <code>DELETING</code> state, <code>MergeShards</code> returns a <code>ResourceInUseException</code>. If the specified stream does not exist, <code>MergeShards</code> returns a <code>ResourceNotFoundException</code>. </p> <p>You can use <a>DescribeStream</a> to check the state of the stream, which is returned in <code>StreamStatus</code>.</p> <p> <code>MergeShards</code> is an asynchronous operation. Upon receiving a <code>MergeShards</code> request, Amazon Kinesis Data Streams immediately returns a response and sets the <code>StreamStatus</code> to <code>UPDATING</code>. After the operation is completed, Kinesis Data Streams sets the <code>StreamStatus</code> to <code>ACTIVE</code>. Read and write operations continue to work while the stream is in the <code>UPDATING</code> state. </p> <p>You use <a>DescribeStream</a> to determine the shard IDs that are specified in the <code>MergeShards</code> request. </p> <p>If you try to operate on too many streams in parallel using <a>CreateStream</a>, <a>DeleteStream</a>, <code>MergeShards</code>, or <a>SplitShard</a>, you receive a <code>LimitExceededException</code>. </p> <p> <code>MergeShards</code> has a limit of five transactions per second per account.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `shardToMerge` __:__ `String`
* `adjacentShardToMerge` __:__ `String`


-}

mergeShards :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

mergeShards streamName shardToMerge adjacentShardToMerge =
    
    let
        requestInput = MergeShardsInput
            
            streamName
            
            shardToMerge
            
            adjacentShardToMerge
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> mergeShardsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "MergeShards"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Writes a single data record into an Amazon Kinesis data stream. Call <code>PutRecord</code> to send data into the stream for real-time ingestion and subsequent processing, one record at a time. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MB per second.</p> <p>You must specify the name of the stream that captures, stores, and transports the data; a partition key; and the data blob itself.</p> <p>The data blob can be any type of data; for example, a segment from a log file, geographic/location data, website clickstream data, and so on.</p> <p>The partition key is used by Kinesis Data Streams to distribute data across shards. Kinesis Data Streams segregates the data records that belong to a stream into multiple shards, using the partition key associated with each data record to determine the shard to which a given data record belongs.</p> <p>Partition keys are Unicode strings, with a maximum length limit of 256 characters for each key. An MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards using the hash key ranges of the shards. You can override hashing the partition key to determine the shard by explicitly specifying a hash value using the <code>ExplicitHashKey</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p> <code>PutRecord</code> returns the shard ID of where the data record was placed and the sequence number that was assigned to the data record.</p> <p>Sequence numbers increase over time and are specific to a shard within a stream, not across all shards within a stream. To guarantee strictly increasing ordering, write serially to a shard and use the <code>SequenceNumberForOrdering</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>If a <code>PutRecord</code> request cannot be processed because of insufficient provisioned throughput on the shard involved in the request, <code>PutRecord</code> throws <code>ProvisionedThroughputExceededException</code>. </p> <p>By default, data records are accessible for 24 hours from the time that they are added to a stream. You can use <a>IncreaseStreamRetentionPeriod</a> or <a>DecreaseStreamRetentionPeriod</a> to modify this retention period.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `data` __:__ `String`
* `partitionKey` __:__ `String`


-}

putRecord :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( PutRecordOptions -> PutRecordOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutRecordOutput)

putRecord streamName data partitionKey setOptions =
    
    let
        requestInput = PutRecordInput
            
            streamName
            
            data
            
            partitionKey
            
            options.explicitHashKey
            
            options.sequenceNumberForOrdering
            
        
        options = setOptions (PutRecordOptions Nothing Nothing)
        
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



{-| Options for a putRecord request
-}
type alias PutRecordOptions =
    {
    explicitHashKey : Maybe String,sequenceNumberForOrdering : Maybe String
    }



{-| <p>Writes multiple data records into a Kinesis data stream in a single call (also referred to as a <code>PutRecords</code> request). Use this operation to send data into the stream for data ingestion and processing. </p> <p>Each <code>PutRecords</code> request can support up to 500 records. Each record in the request can be as large as 1 MB, up to a limit of 5 MB for the entire request, including partition keys. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MB per second.</p> <p>You must specify the name of the stream that captures, stores, and transports the data; and an array of request <code>Records</code>, with each record in the array requiring a partition key and data blob. The record size limit applies to the total size of the partition key and data blob.</p> <p>The data blob can be any type of data; for example, a segment from a log file, geographic/location data, website clickstream data, and so on.</p> <p>The partition key is used by Kinesis Data Streams as input to a hash function that maps the partition key and associated data to a specific shard. An MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>Each record in the <code>Records</code> array may include an optional parameter, <code>ExplicitHashKey</code>, which overrides the partition key to shard mapping. This parameter allows a data producer to determine explicitly the shard where the record is stored. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-putrecords">Adding Multiple Records with PutRecords</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>The <code>PutRecords</code> response includes an array of response <code>Records</code>. Each record in the response array directly correlates with a record in the request array using natural ordering, from the top to the bottom of the request and response. The response <code>Records</code> array always includes the same number of records as the request array.</p> <p>The response <code>Records</code> array includes both successfully and unsuccessfully processed records. Kinesis Data Streams attempts to process all records in each <code>PutRecords</code> request. A single record failure does not stop the processing of subsequent records.</p> <p>A successfully processed record includes <code>ShardId</code> and <code>SequenceNumber</code> values. The <code>ShardId</code> parameter identifies the shard in the stream where the record is stored. The <code>SequenceNumber</code> parameter is an identifier assigned to the put record, unique to all records in the stream.</p> <p>An unsuccessfully processed record includes <code>ErrorCode</code> and <code>ErrorMessage</code> values. <code>ErrorCode</code> reflects the type of error and can be one of the following values: <code>ProvisionedThroughputExceededException</code> or <code>InternalFailure</code>. <code>ErrorMessage</code> provides more detailed information about the <code>ProvisionedThroughputExceededException</code> exception including the account ID, stream name, and shard ID of the record that was throttled. For more information about partially successful responses, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-add-data-to-stream.html#kinesis-using-sdk-java-putrecords">Adding Multiple Records with PutRecords</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>By default, data records are accessible for 24 hours from the time that they are added to a stream. You can use <a>IncreaseStreamRetentionPeriod</a> or <a>DecreaseStreamRetentionPeriod</a> to modify this retention period.</p>

__Required Parameters__

* `records` __:__ `(List PutRecordsRequestEntry)`
* `streamName` __:__ `String`


-}

putRecords :
  
    (List PutRecordsRequestEntry) ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutRecordsOutput)

putRecords records streamName =
    
    let
        requestInput = PutRecordsInput
            
            records
            
            streamName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putRecordsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutRecords"
                
                (AWS.Core.Decode.ResultDecoder "PutRecordsOutput" putRecordsOutputDecoder)
                
            )





{-| <p>Registers a consumer with a Kinesis data stream. When you use this operation, the consumer you register can read data from the stream at a rate of up to 2 MiB per second. This rate is unaffected by the total number of consumers that read from the same stream.</p> <p>You can register up to 5 consumers per stream. A given consumer can only be registered with one stream.</p> <p>This operation has a limit of five transactions per second per account.</p>

__Required Parameters__

* `streamARN` __:__ `String`
* `consumerName` __:__ `String`


-}

registerStreamConsumer :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RegisterStreamConsumerOutput)

registerStreamConsumer streamARN consumerName =
    
    let
        requestInput = RegisterStreamConsumerInput
            
            streamARN
            
            consumerName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> registerStreamConsumerInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RegisterStreamConsumer"
                
                (AWS.Core.Decode.ResultDecoder "RegisterStreamConsumerOutput" registerStreamConsumerOutputDecoder)
                
            )





{-| <p>Removes tags from the specified Kinesis data stream. Removed tags are deleted and cannot be recovered after this operation successfully completes.</p> <p>If you specify a tag that does not exist, it is ignored.</p> <p> <a>RemoveTagsFromStream</a> has a limit of five transactions per second per account.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

removeTagsFromStream :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

removeTagsFromStream streamName tagKeys =
    
    let
        requestInput = RemoveTagsFromStreamInput
            
            streamName
            
            tagKeys
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> removeTagsFromStreamInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemoveTagsFromStream"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Splits a shard into two new shards in the Kinesis data stream, to increase the stream's capacity to ingest and transport data. <code>SplitShard</code> is called when there is a need to increase the overall capacity of a stream because of an expected increase in the volume of data records being ingested. </p> <p>You can also use <code>SplitShard</code> when a shard appears to be approaching its maximum utilization; for example, the producers sending data into the specific shard are suddenly sending more than previously anticipated. You can also call <code>SplitShard</code> to increase stream capacity, so that more Kinesis Data Streams applications can simultaneously read data from the stream for real-time processing. </p> <p>You must specify the shard to be split and the new hash key, which is the position in the shard where the shard gets split in two. In many cases, the new hash key might be the average of the beginning and ending hash key, but it can be any hash key value in the range being mapped into the shard. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-split.html">Split a Shard</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>You can use <a>DescribeStream</a> to determine the shard ID and hash key values for the <code>ShardToSplit</code> and <code>NewStartingHashKey</code> parameters that are specified in the <code>SplitShard</code> request.</p> <p> <code>SplitShard</code> is an asynchronous operation. Upon receiving a <code>SplitShard</code> request, Kinesis Data Streams immediately returns a response and sets the stream status to <code>UPDATING</code>. After the operation is completed, Kinesis Data Streams sets the stream status to <code>ACTIVE</code>. Read and write operations continue to work while the stream is in the <code>UPDATING</code> state. </p> <p>You can use <code>DescribeStream</code> to check the status of the stream, which is returned in <code>StreamStatus</code>. If the stream is in the <code>ACTIVE</code> state, you can call <code>SplitShard</code>. If a stream is in <code>CREATING</code> or <code>UPDATING</code> or <code>DELETING</code> states, <code>DescribeStream</code> returns a <code>ResourceInUseException</code>.</p> <p>If the specified stream does not exist, <code>DescribeStream</code> returns a <code>ResourceNotFoundException</code>. If you try to create more shards than are authorized for your account, you receive a <code>LimitExceededException</code>. </p> <p>For the default shard limit for an AWS account, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Kinesis Data Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>. To increase this limit, <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">contact AWS Support</a>.</p> <p>If you try to operate on too many streams simultaneously using <a>CreateStream</a>, <a>DeleteStream</a>, <a>MergeShards</a>, and/or <a>SplitShard</a>, you receive a <code>LimitExceededException</code>. </p> <p> <code>SplitShard</code> has a limit of five transactions per second per account.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `shardToSplit` __:__ `String`
* `newStartingHashKey` __:__ `String`


-}

splitShard :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

splitShard streamName shardToSplit newStartingHashKey =
    
    let
        requestInput = SplitShardInput
            
            streamName
            
            shardToSplit
            
            newStartingHashKey
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> splitShardInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SplitShard"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Enables or updates server-side encryption using an AWS KMS key for a specified stream. </p> <p>Starting encryption is an asynchronous operation. Upon receiving the request, Kinesis Data Streams returns immediately and sets the status of the stream to <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the status of the stream back to <code>ACTIVE</code>. Updating or applying encryption normally takes a few seconds to complete, but it can take minutes. You can continue to read and write data to your stream while its status is <code>UPDATING</code>. Once the status of the stream is <code>ACTIVE</code>, encryption begins for records written to the stream. </p> <p>API Limits: You can successfully apply a new AWS KMS key for server-side encryption 25 times in a rolling 24-hour period.</p> <p>Note: It can take up to 5 seconds after the stream is in an <code>ACTIVE</code> status before all records written to the stream are encrypted. After you enable encryption, you can verify that encryption is applied by inspecting the API response from <code>PutRecord</code> or <code>PutRecords</code>.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `encryptionType` __:__ `EncryptionType`
* `keyId` __:__ `String`


-}

startStreamEncryption :
  
    String ->
  
    EncryptionType ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

startStreamEncryption streamName encryptionType keyId =
    
    let
        requestInput = StartStreamEncryptionInput
            
            streamName
            
            encryptionType
            
            keyId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startStreamEncryptionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartStreamEncryption"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Disables server-side encryption for a specified stream. </p> <p>Stopping encryption is an asynchronous operation. Upon receiving the request, Kinesis Data Streams returns immediately and sets the status of the stream to <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the status of the stream back to <code>ACTIVE</code>. Stopping encryption normally takes a few seconds to complete, but it can take minutes. You can continue to read and write data to your stream while its status is <code>UPDATING</code>. Once the status of the stream is <code>ACTIVE</code>, records written to the stream are no longer encrypted by Kinesis Data Streams. </p> <p>API Limits: You can successfully disable server-side encryption 25 times in a rolling 24-hour period. </p> <p>Note: It can take up to 5 seconds after the stream is in an <code>ACTIVE</code> status before all records written to the stream are no longer subject to encryption. After you disabled encryption, you can verify that encryption is not applied by inspecting the API response from <code>PutRecord</code> or <code>PutRecords</code>.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `encryptionType` __:__ `EncryptionType`
* `keyId` __:__ `String`


-}

stopStreamEncryption :
  
    String ->
  
    EncryptionType ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

stopStreamEncryption streamName encryptionType keyId =
    
    let
        requestInput = StopStreamEncryptionInput
            
            streamName
            
            encryptionType
            
            keyId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopStreamEncryptionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopStreamEncryption"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Updates the shard count of the specified stream to the specified number of shards.</p> <p>Updating the shard count is an asynchronous operation. Upon receiving the request, Kinesis Data Streams returns immediately and sets the status of the stream to <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the status of the stream back to <code>ACTIVE</code>. Depending on the size of the stream, the scaling action could take a few minutes to complete. You can continue to read and write data to your stream while its status is <code>UPDATING</code>.</p> <p>To update the shard count, Kinesis Data Streams performs splits or merges on individual shards. This can cause short-lived shards to be created, in addition to the final shards. We recommend that you double or halve the shard count, as this results in the fewest number of splits or merges.</p> <p>This operation has the following default limits. By default, you cannot do the following:</p> <ul> <li> <p>Scale more than twice per rolling 24-hour period per stream</p> </li> <li> <p>Scale up to more than double your current shard count for a stream</p> </li> <li> <p>Scale down below half your current shard count for a stream</p> </li> <li> <p>Scale up to more than 500 shards in a stream</p> </li> <li> <p>Scale a stream with more than 500 shards down unless the result is less than 500 shards</p> </li> <li> <p>Scale up to more than the shard limit for your account</p> </li> </ul> <p>For the default limits for an AWS account, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>. To request an increase in the call rate limit, the shard limit for this API, or your overall shard limit, use the <a href="https://console.aws.amazon.com/support/v1#/case/create?issueType=service-limit-increase&amp;limitType=service-code-kinesis">limits form</a>.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `targetShardCount` __:__ `Int`
* `scalingType` __:__ `ScalingType`


-}

updateShardCount :
  
    String ->
  
    Int ->
  
    ScalingType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateShardCountOutput)

updateShardCount streamName targetShardCount scalingType =
    
    let
        requestInput = UpdateShardCountInput
            
            streamName
            
            targetShardCount
            
            scalingType
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateShardCountInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateShardCount"
                
                (AWS.Core.Decode.ResultDecoder "UpdateShardCountOutput" updateShardCountOutputDecoder)
                
            )






{-| <p>An object that represents the details of the consumer you registered.</p>
-}
type alias Consumer =
    { consumerName : String
    , consumerARN : String
    , consumerStatus : ConsumerStatus
    , consumerCreationTimestamp : Posix
    }



consumerDecoder : JD.Decoder Consumer
consumerDecoder =
    JD.succeed Consumer
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ConsumerName", "consumerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ConsumerARN", "consumerARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ConsumerStatus", "consumerStatus"]
            consumerStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ConsumerCreationTimestamp", "consumerCreationTimestamp"]
            JDX.datetime
        )
        




consumerToString : Consumer -> String -- List (String, String)
consumerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "consumerName" "" -- val.consumerName
        
    --     |> Dict.insert
    --         "consumerARN" "" -- val.consumerARN
        
    --     |> Dict.insert
    --         "consumerStatus" "" -- val.consumerStatus
        
    --     |> Dict.insert
    --         "consumerCreationTimestamp" "" -- val.consumerCreationTimestamp
        
    --     |> Dict.toList
    ""



{-| <p>An object that represents the details of a registered consumer.</p>
-}
type alias ConsumerDescription =
    { consumerName : String
    , consumerARN : String
    , consumerStatus : ConsumerStatus
    , consumerCreationTimestamp : Posix
    , streamARN : String
    }



consumerDescriptionDecoder : JD.Decoder ConsumerDescription
consumerDescriptionDecoder =
    JD.succeed ConsumerDescription
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ConsumerName", "consumerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ConsumerARN", "consumerARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ConsumerStatus", "consumerStatus"]
            consumerStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ConsumerCreationTimestamp", "consumerCreationTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StreamARN", "streamARN"]
            JD.string
        )
        




consumerDescriptionToString : ConsumerDescription -> String -- List (String, String)
consumerDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "consumerName" "" -- val.consumerName
        
    --     |> Dict.insert
    --         "consumerARN" "" -- val.consumerARN
        
    --     |> Dict.insert
    --         "consumerStatus" "" -- val.consumerStatus
        
    --     |> Dict.insert
    --         "consumerCreationTimestamp" "" -- val.consumerCreationTimestamp
        
    --     |> Dict.insert
    --         "streamARN" "" -- val.streamARN
        
    --     |> Dict.toList
    ""



{-| One of

* `ConsumerStatus_CREATING`
* `ConsumerStatus_DELETING`
* `ConsumerStatus_ACTIVE`

-}
type ConsumerStatus
    = ConsumerStatus_CREATING
    | ConsumerStatus_DELETING
    | ConsumerStatus_ACTIVE



consumerStatusDecoder : JD.Decoder ConsumerStatus
consumerStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATING" ->
                        JD.succeed ConsumerStatus_CREATING

                    "DELETING" ->
                        JD.succeed ConsumerStatus_DELETING

                    "ACTIVE" ->
                        JD.succeed ConsumerStatus_ACTIVE


                    _ ->
                        JD.fail "bad thing"
            )




consumerStatusToString : ConsumerStatus -> String
consumerStatusToString val =
    case val of
        ConsumerStatus_CREATING ->
            "CREATING"

        ConsumerStatus_DELETING ->
            "DELETING"

        ConsumerStatus_ACTIVE ->
            "ACTIVE"




{-| Type of HTTP response from describeLimi
-}
type alias DescribeLimitsOutput =
    { shardLimit : Int
    , openShardCount : Int
    }



describeLimitsOutputDecoder : JD.Decoder DescribeLimitsOutput
describeLimitsOutputDecoder =
    JD.succeed DescribeLimitsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ShardLimit", "shardLimit"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["OpenShardCount", "openShardCount"]
            JD.int
        )
        




describeLimitsOutputToString : DescribeLimitsOutput -> String -- List (String, String)
describeLimitsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "shardLimit" "" -- val.shardLimit
        
    --     |> Dict.insert
    --         "openShardCount" "" -- val.openShardCount
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStreamConsum
-}
type alias DescribeStreamConsumerOutput =
    { consumerDescription : ConsumerDescription
    }



describeStreamConsumerOutputDecoder : JD.Decoder DescribeStreamConsumerOutput
describeStreamConsumerOutputDecoder =
    JD.succeed DescribeStreamConsumerOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ConsumerDescription", "consumerDescription"]
            consumerDescriptionDecoder
        )
        




describeStreamConsumerOutputToString : DescribeStreamConsumerOutput -> String -- List (String, String)
describeStreamConsumerOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "consumerDescription" "" -- val.consumerDescription
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStre
-}
type alias DescribeStreamOutput =
    { streamDescription : StreamDescription
    }



describeStreamOutputDecoder : JD.Decoder DescribeStreamOutput
describeStreamOutputDecoder =
    JD.succeed DescribeStreamOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StreamDescription", "streamDescription"]
            streamDescriptionDecoder
        )
        




describeStreamOutputToString : DescribeStreamOutput -> String -- List (String, String)
describeStreamOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "streamDescription" "" -- val.streamDescription
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStreamSumma
-}
type alias DescribeStreamSummaryOutput =
    { streamDescriptionSummary : StreamDescriptionSummary
    }



describeStreamSummaryOutputDecoder : JD.Decoder DescribeStreamSummaryOutput
describeStreamSummaryOutputDecoder =
    JD.succeed DescribeStreamSummaryOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StreamDescriptionSummary", "streamDescriptionSummary"]
            streamDescriptionSummaryDecoder
        )
        




describeStreamSummaryOutputToString : DescribeStreamSummaryOutput -> String -- List (String, String)
describeStreamSummaryOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "streamDescriptionSummary" "" -- val.streamDescriptionSummary
        
    --     |> Dict.toList
    ""



{-| One of

* `EncryptionType_NONE`
* `EncryptionType_KMS`

-}
type EncryptionType
    = EncryptionType_NONE
    | EncryptionType_KMS



encryptionTypeDecoder : JD.Decoder EncryptionType
encryptionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NONE" ->
                        JD.succeed EncryptionType_NONE

                    "KMS" ->
                        JD.succeed EncryptionType_KMS


                    _ ->
                        JD.fail "bad thing"
            )




encryptionTypeToString : EncryptionType -> String
encryptionTypeToString val =
    case val of
        EncryptionType_NONE ->
            "NONE"

        EncryptionType_KMS ->
            "KMS"




{-| <p>Represents enhanced metrics types.</p>
-}
type alias EnhancedMetrics =
    { shardLevelMetrics : Maybe (List MetricsName)
    }



enhancedMetricsDecoder : JD.Decoder EnhancedMetrics
enhancedMetricsDecoder =
    JD.succeed EnhancedMetrics
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ShardLevelMetrics", "shardLevelMetrics"]
            (JD.list metricsNameDecoder)
        )
        




enhancedMetricsToString : EnhancedMetrics -> String -- List (String, String)
enhancedMetricsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "shardLevelMetrics" "" -- val.shardLevelMetrics
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from enhancedMonitori
-}
type alias EnhancedMonitoringOutput =
    { streamName : Maybe String
    , currentShardLevelMetrics : Maybe (List MetricsName)
    , desiredShardLevelMetrics : Maybe (List MetricsName)
    }



enhancedMonitoringOutputDecoder : JD.Decoder EnhancedMonitoringOutput
enhancedMonitoringOutputDecoder =
    JD.succeed EnhancedMonitoringOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StreamName", "streamName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CurrentShardLevelMetrics", "currentShardLevelMetrics"]
            (JD.list metricsNameDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DesiredShardLevelMetrics", "desiredShardLevelMetrics"]
            (JD.list metricsNameDecoder)
        )
        




enhancedMonitoringOutputToString : EnhancedMonitoringOutput -> String -- List (String, String)
enhancedMonitoringOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "streamName" "" -- val.streamName
        
    --     |> Dict.insert
    --         "currentShardLevelMetrics" "" -- val.currentShardLevelMetrics
        
    --     |> Dict.insert
    --         "desiredShardLevelMetrics" "" -- val.desiredShardLevelMetrics
        
    --     |> Dict.toList
    ""



{-| <p>The provided iterator exceeds the maximum age allowed.</p>
-}
type alias ExpiredIteratorException =
    { message : Maybe String
    }



expiredIteratorExceptionDecoder : JD.Decoder ExpiredIteratorException
expiredIteratorExceptionDecoder =
    JD.succeed ExpiredIteratorException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




expiredIteratorExceptionToString : ExpiredIteratorException -> String -- List (String, String)
expiredIteratorExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The pagination token passed to the operation is expired.</p>
-}
type alias ExpiredNextTokenException =
    { message : Maybe String
    }



expiredNextTokenExceptionDecoder : JD.Decoder ExpiredNextTokenException
expiredNextTokenExceptionDecoder =
    JD.succeed ExpiredNextTokenException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




expiredNextTokenExceptionToString : ExpiredNextTokenException -> String -- List (String, String)
expiredNextTokenExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRecor
-}
type alias GetRecordsOutput =
    { records : (List Record)
    , nextShardIterator : Maybe String
    , millisBehindLatest : Maybe Int
    }



getRecordsOutputDecoder : JD.Decoder GetRecordsOutput
getRecordsOutputDecoder =
    JD.succeed GetRecordsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Records", "records"]
            (JD.list recordDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextShardIterator", "nextShardIterator"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MillisBehindLatest", "millisBehindLatest"]
            JD.int
        )
        




getRecordsOutputToString : GetRecordsOutput -> String -- List (String, String)
getRecordsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "records" "" -- val.records
        
    --     |> Dict.insert
    --         "nextShardIterator" "" -- val.nextShardIterator
        
    --     |> Dict.insert
    --         "millisBehindLatest" "" -- val.millisBehindLatest
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getShardIterat
-}
type alias GetShardIteratorOutput =
    { shardIterator : Maybe String
    }



getShardIteratorOutputDecoder : JD.Decoder GetShardIteratorOutput
getShardIteratorOutputDecoder =
    JD.succeed GetShardIteratorOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ShardIterator", "shardIterator"]
            JD.string
        )
        




getShardIteratorOutputToString : GetShardIteratorOutput -> String -- List (String, String)
getShardIteratorOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "shardIterator" "" -- val.shardIterator
        
    --     |> Dict.toList
    ""



{-| <p>The range of possible hash key values for the shard, which is a set of ordered contiguous positive integers.</p>
-}
type alias HashKeyRange =
    { startingHashKey : String
    , endingHashKey : String
    }



hashKeyRangeDecoder : JD.Decoder HashKeyRange
hashKeyRangeDecoder =
    JD.succeed HashKeyRange
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StartingHashKey", "startingHashKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["EndingHashKey", "endingHashKey"]
            JD.string
        )
        




hashKeyRangeToString : HashKeyRange -> String -- List (String, String)
hashKeyRangeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "startingHashKey" "" -- val.startingHashKey
        
    --     |> Dict.insert
    --         "endingHashKey" "" -- val.endingHashKey
        
    --     |> Dict.toList
    ""



{-| undefined
-}
type alias InternalFailureException =
    { message : Maybe String
    }



internalFailureExceptionDecoder : JD.Decoder InternalFailureException
internalFailureExceptionDecoder =
    JD.succeed InternalFailureException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




internalFailureExceptionToString : InternalFailureException -> String -- List (String, String)
internalFailureExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>A specified parameter exceeds its restrictions, is not supported, or can't be used. For more information, see the returned message.</p>
-}
type alias InvalidArgumentException =
    { message : Maybe String
    }



invalidArgumentExceptionDecoder : JD.Decoder InvalidArgumentException
invalidArgumentExceptionDecoder =
    JD.succeed InvalidArgumentException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




invalidArgumentExceptionToString : InvalidArgumentException -> String -- List (String, String)
invalidArgumentExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The ciphertext references a key that doesn't exist or that you don't have access to.</p>
-}
type alias KMSAccessDeniedException =
    { message : Maybe String
    }



kMSAccessDeniedExceptionDecoder : JD.Decoder KMSAccessDeniedException
kMSAccessDeniedExceptionDecoder =
    JD.succeed KMSAccessDeniedException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




kMSAccessDeniedExceptionToString : KMSAccessDeniedException -> String -- List (String, String)
kMSAccessDeniedExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The request was rejected because the specified customer master key (CMK) isn't enabled.</p>
-}
type alias KMSDisabledException =
    { message : Maybe String
    }



kMSDisabledExceptionDecoder : JD.Decoder KMSDisabledException
kMSDisabledExceptionDecoder =
    JD.succeed KMSDisabledException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




kMSDisabledExceptionToString : KMSDisabledException -> String -- List (String, String)
kMSDisabledExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The request was rejected because the state of the specified resource isn't valid for this request. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-}
type alias KMSInvalidStateException =
    { message : Maybe String
    }



kMSInvalidStateExceptionDecoder : JD.Decoder KMSInvalidStateException
kMSInvalidStateExceptionDecoder =
    JD.succeed KMSInvalidStateException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




kMSInvalidStateExceptionToString : KMSInvalidStateException -> String -- List (String, String)
kMSInvalidStateExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The request was rejected because the specified entity or resource can't be found.</p>
-}
type alias KMSNotFoundException =
    { message : Maybe String
    }



kMSNotFoundExceptionDecoder : JD.Decoder KMSNotFoundException
kMSNotFoundExceptionDecoder =
    JD.succeed KMSNotFoundException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




kMSNotFoundExceptionToString : KMSNotFoundException -> String -- List (String, String)
kMSNotFoundExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The AWS access key ID needs a subscription for the service.</p>
-}
type alias KMSOptInRequired =
    { message : Maybe String
    }



kMSOptInRequiredDecoder : JD.Decoder KMSOptInRequired
kMSOptInRequiredDecoder =
    JD.succeed KMSOptInRequired
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




kMSOptInRequiredToString : KMSOptInRequired -> String -- List (String, String)
kMSOptInRequiredToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The request was denied due to request throttling. For more information about throttling, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/limits.html#requests-per-second">Limits</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-}
type alias KMSThrottlingException =
    { message : Maybe String
    }



kMSThrottlingExceptionDecoder : JD.Decoder KMSThrottlingException
kMSThrottlingExceptionDecoder =
    JD.succeed KMSThrottlingException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




kMSThrottlingExceptionToString : KMSThrottlingException -> String -- List (String, String)
kMSThrottlingExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The requested resource exceeds the maximum number allowed, or the number of concurrent stream requests exceeds the maximum number allowed. </p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JD.succeed LimitExceededException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




limitExceededExceptionToString : LimitExceededException -> String -- List (String, String)
limitExceededExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listShar
-}
type alias ListShardsOutput =
    { shards : Maybe (List Shard)
    , nextToken : Maybe String
    }



listShardsOutputDecoder : JD.Decoder ListShardsOutput
listShardsOutputDecoder =
    JD.succeed ListShardsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Shards", "shards"]
            (JD.list shardDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listShardsOutputToString : ListShardsOutput -> String -- List (String, String)
listShardsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "shards" "" -- val.shards
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listStreamConsume
-}
type alias ListStreamConsumersOutput =
    { consumers : Maybe (List Consumer)
    , nextToken : Maybe String
    }



listStreamConsumersOutputDecoder : JD.Decoder ListStreamConsumersOutput
listStreamConsumersOutputDecoder =
    JD.succeed ListStreamConsumersOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Consumers", "consumers"]
            (JD.list consumerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listStreamConsumersOutputToString : ListStreamConsumersOutput -> String -- List (String, String)
listStreamConsumersOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "consumers" "" -- val.consumers
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listStrea
-}
type alias ListStreamsOutput =
    { streamNames : (List String)
    , hasMoreStreams : Bool
    }



listStreamsOutputDecoder : JD.Decoder ListStreamsOutput
listStreamsOutputDecoder =
    JD.succeed ListStreamsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StreamNames", "streamNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HasMoreStreams", "hasMoreStreams"]
            JD.bool
        )
        




listStreamsOutputToString : ListStreamsOutput -> String -- List (String, String)
listStreamsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "streamNames" "" -- val.streamNames
        
    --     |> Dict.insert
    --         "hasMoreStreams" "" -- val.hasMoreStreams
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForStre
-}
type alias ListTagsForStreamOutput =
    { tags : (List Tag)
    , hasMoreTags : Bool
    }



listTagsForStreamOutputDecoder : JD.Decoder ListTagsForStreamOutput
listTagsForStreamOutputDecoder =
    JD.succeed ListTagsForStreamOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HasMoreTags", "hasMoreTags"]
            JD.bool
        )
        




listTagsForStreamOutputToString : ListTagsForStreamOutput -> String -- List (String, String)
listTagsForStreamOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "hasMoreTags" "" -- val.hasMoreTags
        
    --     |> Dict.toList
    ""



{-| One of

* `MetricsName_IncomingBytes`
* `MetricsName_IncomingRecords`
* `MetricsName_OutgoingBytes`
* `MetricsName_OutgoingRecords`
* `MetricsName_WriteProvisionedThroughputExceeded`
* `MetricsName_ReadProvisionedThroughputExceeded`
* `MetricsName_IteratorAgeMilliseconds`
* `MetricsName_ALL`

-}
type MetricsName
    = MetricsName_IncomingBytes
    | MetricsName_IncomingRecords
    | MetricsName_OutgoingBytes
    | MetricsName_OutgoingRecords
    | MetricsName_WriteProvisionedThroughputExceeded
    | MetricsName_ReadProvisionedThroughputExceeded
    | MetricsName_IteratorAgeMilliseconds
    | MetricsName_ALL



metricsNameDecoder : JD.Decoder MetricsName
metricsNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IncomingBytes" ->
                        JD.succeed MetricsName_IncomingBytes

                    "IncomingRecords" ->
                        JD.succeed MetricsName_IncomingRecords

                    "OutgoingBytes" ->
                        JD.succeed MetricsName_OutgoingBytes

                    "OutgoingRecords" ->
                        JD.succeed MetricsName_OutgoingRecords

                    "WriteProvisionedThroughputExceeded" ->
                        JD.succeed MetricsName_WriteProvisionedThroughputExceeded

                    "ReadProvisionedThroughputExceeded" ->
                        JD.succeed MetricsName_ReadProvisionedThroughputExceeded

                    "IteratorAgeMilliseconds" ->
                        JD.succeed MetricsName_IteratorAgeMilliseconds

                    "ALL" ->
                        JD.succeed MetricsName_ALL


                    _ ->
                        JD.fail "bad thing"
            )




metricsNameToString : MetricsName -> String
metricsNameToString val =
    case val of
        MetricsName_IncomingBytes ->
            "IncomingBytes"

        MetricsName_IncomingRecords ->
            "IncomingRecords"

        MetricsName_OutgoingBytes ->
            "OutgoingBytes"

        MetricsName_OutgoingRecords ->
            "OutgoingRecords"

        MetricsName_WriteProvisionedThroughputExceeded ->
            "WriteProvisionedThroughputExceeded"

        MetricsName_ReadProvisionedThroughputExceeded ->
            "ReadProvisionedThroughputExceeded"

        MetricsName_IteratorAgeMilliseconds ->
            "IteratorAgeMilliseconds"

        MetricsName_ALL ->
            "ALL"




{-| <p>The request rate for the stream is too high, or the requested data is too large for the available throughput. Reduce the frequency or size of your requests. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>, and <a href="http://docs.aws.amazon.com/general/latest/gr/api-retries.html">Error Retries and Exponential Backoff in AWS</a> in the <i>AWS General Reference</i>.</p>
-}
type alias ProvisionedThroughputExceededException =
    { message : Maybe String
    }



provisionedThroughputExceededExceptionDecoder : JD.Decoder ProvisionedThroughputExceededException
provisionedThroughputExceededExceptionDecoder =
    JD.succeed ProvisionedThroughputExceededException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




provisionedThroughputExceededExceptionToString : ProvisionedThroughputExceededException -> String -- List (String, String)
provisionedThroughputExceededExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putReco
-}
type alias PutRecordOutput =
    { shardId : String
    , sequenceNumber : String
    , encryptionType : Maybe EncryptionType
    }



putRecordOutputDecoder : JD.Decoder PutRecordOutput
putRecordOutputDecoder =
    JD.succeed PutRecordOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ShardId", "shardId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SequenceNumber", "sequenceNumber"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncryptionType", "encryptionType"]
            encryptionTypeDecoder
        )
        




putRecordOutputToString : PutRecordOutput -> String -- List (String, String)
putRecordOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "shardId" "" -- val.shardId
        
    --     |> Dict.insert
    --         "sequenceNumber" "" -- val.sequenceNumber
        
    --     |> Dict.insert
    --         "encryptionType" "" -- val.encryptionType
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putRecor
-}
type alias PutRecordsOutput =
    { failedRecordCount : Maybe Int
    , records : (List PutRecordsResultEntry)
    , encryptionType : Maybe EncryptionType
    }



putRecordsOutputDecoder : JD.Decoder PutRecordsOutput
putRecordsOutputDecoder =
    JD.succeed PutRecordsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedRecordCount", "failedRecordCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Records", "records"]
            (JD.list putRecordsResultEntryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncryptionType", "encryptionType"]
            encryptionTypeDecoder
        )
        




putRecordsOutputToString : PutRecordsOutput -> String -- List (String, String)
putRecordsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedRecordCount" "" -- val.failedRecordCount
        
    --     |> Dict.insert
    --         "records" "" -- val.records
        
    --     |> Dict.insert
    --         "encryptionType" "" -- val.encryptionType
        
    --     |> Dict.toList
    ""



{-| <p>Represents the output for <code>PutRecords</code>.</p>
-}
type alias PutRecordsRequestEntry =
    { data : String
    , explicitHashKey : Maybe String
    , partitionKey : String
    }



putRecordsRequestEntryDecoder : JD.Decoder PutRecordsRequestEntry
putRecordsRequestEntryDecoder =
    JD.succeed PutRecordsRequestEntry
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Data", "data"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExplicitHashKey", "explicitHashKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["PartitionKey", "partitionKey"]
            JD.string
        )
        




putRecordsRequestEntryToString : PutRecordsRequestEntry -> String -- List (String, String)
putRecordsRequestEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "data" "" -- val.data
        
    --     |> Dict.insert
    --         "explicitHashKey" "" -- val.explicitHashKey
        
    --     |> Dict.insert
    --         "partitionKey" "" -- val.partitionKey
        
    --     |> Dict.toList
    ""



{-| <p>Represents the result of an individual record from a <code>PutRecords</code> request. A record that is successfully added to a stream includes <code>SequenceNumber</code> and <code>ShardId</code> in the result. A record that fails to be added to the stream includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>
-}
type alias PutRecordsResultEntry =
    { sequenceNumber : Maybe String
    , shardId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



putRecordsResultEntryDecoder : JD.Decoder PutRecordsResultEntry
putRecordsResultEntryDecoder =
    JD.succeed PutRecordsResultEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SequenceNumber", "sequenceNumber"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ShardId", "shardId"]
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
        




putRecordsResultEntryToString : PutRecordsResultEntry -> String -- List (String, String)
putRecordsResultEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sequenceNumber" "" -- val.sequenceNumber
        
    --     |> Dict.insert
    --         "shardId" "" -- val.shardId
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| <p>The unit of data of the Kinesis data stream, which is composed of a sequence number, a partition key, and a data blob.</p>
-}
type alias Record =
    { sequenceNumber : String
    , approximateArrivalTimestamp : Maybe Posix
    , data : String
    , partitionKey : String
    , encryptionType : Maybe EncryptionType
    }



recordDecoder : JD.Decoder Record
recordDecoder =
    JD.succeed Record
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SequenceNumber", "sequenceNumber"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApproximateArrivalTimestamp", "approximateArrivalTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Data", "data"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["PartitionKey", "partitionKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncryptionType", "encryptionType"]
            encryptionTypeDecoder
        )
        




recordToString : Record -> String -- List (String, String)
recordToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sequenceNumber" "" -- val.sequenceNumber
        
    --     |> Dict.insert
    --         "approximateArrivalTimestamp" "" -- val.approximateArrivalTimestamp
        
    --     |> Dict.insert
    --         "data" "" -- val.data
        
    --     |> Dict.insert
    --         "partitionKey" "" -- val.partitionKey
        
    --     |> Dict.insert
    --         "encryptionType" "" -- val.encryptionType
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from registerStreamConsum
-}
type alias RegisterStreamConsumerOutput =
    { consumer : Consumer
    }



registerStreamConsumerOutputDecoder : JD.Decoder RegisterStreamConsumerOutput
registerStreamConsumerOutputDecoder =
    JD.succeed RegisterStreamConsumerOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Consumer", "consumer"]
            consumerDecoder
        )
        




registerStreamConsumerOutputToString : RegisterStreamConsumerOutput -> String -- List (String, String)
registerStreamConsumerOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "consumer" "" -- val.consumer
        
    --     |> Dict.toList
    ""



{-| <p>The resource is not available for this operation. For successful operation, the resource must be in the <code>ACTIVE</code> state.</p>
-}
type alias ResourceInUseException =
    { message : Maybe String
    }



resourceInUseExceptionDecoder : JD.Decoder ResourceInUseException
resourceInUseExceptionDecoder =
    JD.succeed ResourceInUseException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




resourceInUseExceptionToString : ResourceInUseException -> String -- List (String, String)
resourceInUseExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The requested resource could not be found. The stream might not be specified correctly.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JD.succeed ResourceNotFoundException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




resourceNotFoundExceptionToString : ResourceNotFoundException -> String -- List (String, String)
resourceNotFoundExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| One of

* `ScalingType_UNIFORM_SCALING`

-}
type ScalingType
    = ScalingType_UNIFORM_SCALING



scalingTypeDecoder : JD.Decoder ScalingType
scalingTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNIFORM_SCALING" ->
                        JD.succeed ScalingType_UNIFORM_SCALING


                    _ ->
                        JD.fail "bad thing"
            )




scalingTypeToString : ScalingType -> String
scalingTypeToString val =
    case val of
        ScalingType_UNIFORM_SCALING ->
            "UNIFORM_SCALING"




{-| <p>The range of possible sequence numbers for the shard.</p>
-}
type alias SequenceNumberRange =
    { startingSequenceNumber : String
    , endingSequenceNumber : Maybe String
    }



sequenceNumberRangeDecoder : JD.Decoder SequenceNumberRange
sequenceNumberRangeDecoder =
    JD.succeed SequenceNumberRange
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StartingSequenceNumber", "startingSequenceNumber"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndingSequenceNumber", "endingSequenceNumber"]
            JD.string
        )
        




sequenceNumberRangeToString : SequenceNumberRange -> String -- List (String, String)
sequenceNumberRangeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "startingSequenceNumber" "" -- val.startingSequenceNumber
        
    --     |> Dict.insert
    --         "endingSequenceNumber" "" -- val.endingSequenceNumber
        
    --     |> Dict.toList
    ""



{-| <p>A uniquely identified group of data records in a Kinesis data stream.</p>
-}
type alias Shard =
    { shardId : String
    , parentShardId : Maybe String
    , adjacentParentShardId : Maybe String
    , hashKeyRange : HashKeyRange
    , sequenceNumberRange : SequenceNumberRange
    }



shardDecoder : JD.Decoder Shard
shardDecoder =
    JD.succeed Shard
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ShardId", "shardId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParentShardId", "parentShardId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AdjacentParentShardId", "adjacentParentShardId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HashKeyRange", "hashKeyRange"]
            hashKeyRangeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SequenceNumberRange", "sequenceNumberRange"]
            sequenceNumberRangeDecoder
        )
        




shardToString : Shard -> String -- List (String, String)
shardToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "shardId" "" -- val.shardId
        
    --     |> Dict.insert
    --         "parentShardId" "" -- val.parentShardId
        
    --     |> Dict.insert
    --         "adjacentParentShardId" "" -- val.adjacentParentShardId
        
    --     |> Dict.insert
    --         "hashKeyRange" "" -- val.hashKeyRange
        
    --     |> Dict.insert
    --         "sequenceNumberRange" "" -- val.sequenceNumberRange
        
    --     |> Dict.toList
    ""



{-| One of

* `ShardIteratorType_AT_SEQUENCE_NUMBER`
* `ShardIteratorType_AFTER_SEQUENCE_NUMBER`
* `ShardIteratorType_TRIM_HORIZON`
* `ShardIteratorType_LATEST`
* `ShardIteratorType_AT_TIMESTAMP`

-}
type ShardIteratorType
    = ShardIteratorType_AT_SEQUENCE_NUMBER
    | ShardIteratorType_AFTER_SEQUENCE_NUMBER
    | ShardIteratorType_TRIM_HORIZON
    | ShardIteratorType_LATEST
    | ShardIteratorType_AT_TIMESTAMP



shardIteratorTypeDecoder : JD.Decoder ShardIteratorType
shardIteratorTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AT_SEQUENCE_NUMBER" ->
                        JD.succeed ShardIteratorType_AT_SEQUENCE_NUMBER

                    "AFTER_SEQUENCE_NUMBER" ->
                        JD.succeed ShardIteratorType_AFTER_SEQUENCE_NUMBER

                    "TRIM_HORIZON" ->
                        JD.succeed ShardIteratorType_TRIM_HORIZON

                    "LATEST" ->
                        JD.succeed ShardIteratorType_LATEST

                    "AT_TIMESTAMP" ->
                        JD.succeed ShardIteratorType_AT_TIMESTAMP


                    _ ->
                        JD.fail "bad thing"
            )




shardIteratorTypeToString : ShardIteratorType -> String
shardIteratorTypeToString val =
    case val of
        ShardIteratorType_AT_SEQUENCE_NUMBER ->
            "AT_SEQUENCE_NUMBER"

        ShardIteratorType_AFTER_SEQUENCE_NUMBER ->
            "AFTER_SEQUENCE_NUMBER"

        ShardIteratorType_TRIM_HORIZON ->
            "TRIM_HORIZON"

        ShardIteratorType_LATEST ->
            "LATEST"

        ShardIteratorType_AT_TIMESTAMP ->
            "AT_TIMESTAMP"




{-| undefined
-}
type alias StartingPosition =
    { type_ : ShardIteratorType
    , sequenceNumber : Maybe String
    , timestamp : Maybe Posix
    }



startingPositionDecoder : JD.Decoder StartingPosition
startingPositionDecoder =
    JD.succeed StartingPosition
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Type", "type"]
            shardIteratorTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SequenceNumber", "sequenceNumber"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timestamp", "timestamp"]
            JDX.datetime
        )
        




startingPositionToString : StartingPosition -> String -- List (String, String)
startingPositionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "sequenceNumber" "" -- val.sequenceNumber
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.toList
    ""



{-| <p>Represents the output for <a>DescribeStream</a>.</p>
-}
type alias StreamDescription =
    { streamName : String
    , streamARN : String
    , streamStatus : StreamStatus
    , shards : (List Shard)
    , hasMoreShards : Bool
    , retentionPeriodHours : Int
    , streamCreationTimestamp : Posix
    , enhancedMonitoring : (List EnhancedMetrics)
    , encryptionType : Maybe EncryptionType
    , keyId : Maybe String
    }



streamDescriptionDecoder : JD.Decoder StreamDescription
streamDescriptionDecoder =
    JD.succeed StreamDescription
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StreamName", "streamName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StreamARN", "streamARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StreamStatus", "streamStatus"]
            streamStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Shards", "shards"]
            (JD.list shardDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HasMoreShards", "hasMoreShards"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RetentionPeriodHours", "retentionPeriodHours"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StreamCreationTimestamp", "streamCreationTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["EnhancedMonitoring", "enhancedMonitoring"]
            (JD.list enhancedMetricsDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncryptionType", "encryptionType"]
            encryptionTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyId", "keyId"]
            JD.string
        )
        




streamDescriptionToString : StreamDescription -> String -- List (String, String)
streamDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "streamName" "" -- val.streamName
        
    --     |> Dict.insert
    --         "streamARN" "" -- val.streamARN
        
    --     |> Dict.insert
    --         "streamStatus" "" -- val.streamStatus
        
    --     |> Dict.insert
    --         "shards" "" -- val.shards
        
    --     |> Dict.insert
    --         "hasMoreShards" "" -- val.hasMoreShards
        
    --     |> Dict.insert
    --         "retentionPeriodHours" "" -- val.retentionPeriodHours
        
    --     |> Dict.insert
    --         "streamCreationTimestamp" "" -- val.streamCreationTimestamp
        
    --     |> Dict.insert
    --         "enhancedMonitoring" "" -- val.enhancedMonitoring
        
    --     |> Dict.insert
    --         "encryptionType" "" -- val.encryptionType
        
    --     |> Dict.insert
    --         "keyId" "" -- val.keyId
        
    --     |> Dict.toList
    ""



{-| <p>Represents the output for <a>DescribeStreamSummary</a> </p>
-}
type alias StreamDescriptionSummary =
    { streamName : String
    , streamARN : String
    , streamStatus : StreamStatus
    , retentionPeriodHours : Int
    , streamCreationTimestamp : Posix
    , enhancedMonitoring : (List EnhancedMetrics)
    , encryptionType : Maybe EncryptionType
    , keyId : Maybe String
    , openShardCount : Int
    , consumerCount : Maybe Int
    }



streamDescriptionSummaryDecoder : JD.Decoder StreamDescriptionSummary
streamDescriptionSummaryDecoder =
    JD.succeed StreamDescriptionSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StreamName", "streamName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StreamARN", "streamARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StreamStatus", "streamStatus"]
            streamStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RetentionPeriodHours", "retentionPeriodHours"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StreamCreationTimestamp", "streamCreationTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["EnhancedMonitoring", "enhancedMonitoring"]
            (JD.list enhancedMetricsDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncryptionType", "encryptionType"]
            encryptionTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyId", "keyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["OpenShardCount", "openShardCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConsumerCount", "consumerCount"]
            JD.int
        )
        




streamDescriptionSummaryToString : StreamDescriptionSummary -> String -- List (String, String)
streamDescriptionSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "streamName" "" -- val.streamName
        
    --     |> Dict.insert
    --         "streamARN" "" -- val.streamARN
        
    --     |> Dict.insert
    --         "streamStatus" "" -- val.streamStatus
        
    --     |> Dict.insert
    --         "retentionPeriodHours" "" -- val.retentionPeriodHours
        
    --     |> Dict.insert
    --         "streamCreationTimestamp" "" -- val.streamCreationTimestamp
        
    --     |> Dict.insert
    --         "enhancedMonitoring" "" -- val.enhancedMonitoring
        
    --     |> Dict.insert
    --         "encryptionType" "" -- val.encryptionType
        
    --     |> Dict.insert
    --         "keyId" "" -- val.keyId
        
    --     |> Dict.insert
    --         "openShardCount" "" -- val.openShardCount
        
    --     |> Dict.insert
    --         "consumerCount" "" -- val.consumerCount
        
    --     |> Dict.toList
    ""



{-| One of

* `StreamStatus_CREATING`
* `StreamStatus_DELETING`
* `StreamStatus_ACTIVE`
* `StreamStatus_UPDATING`

-}
type StreamStatus
    = StreamStatus_CREATING
    | StreamStatus_DELETING
    | StreamStatus_ACTIVE
    | StreamStatus_UPDATING



streamStatusDecoder : JD.Decoder StreamStatus
streamStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATING" ->
                        JD.succeed StreamStatus_CREATING

                    "DELETING" ->
                        JD.succeed StreamStatus_DELETING

                    "ACTIVE" ->
                        JD.succeed StreamStatus_ACTIVE

                    "UPDATING" ->
                        JD.succeed StreamStatus_UPDATING


                    _ ->
                        JD.fail "bad thing"
            )




streamStatusToString : StreamStatus -> String
streamStatusToString val =
    case val of
        StreamStatus_CREATING ->
            "CREATING"

        StreamStatus_DELETING ->
            "DELETING"

        StreamStatus_ACTIVE ->
            "ACTIVE"

        StreamStatus_UPDATING ->
            "UPDATING"




{-| <p>After you call <a>SubscribeToShard</a>, Kinesis Data Streams sends events of this type to your consumer. </p>
-}
type alias SubscribeToShardEvent =
    { records : (List Record)
    , continuationSequenceNumber : String
    , millisBehindLatest : Int
    }



subscribeToShardEventDecoder : JD.Decoder SubscribeToShardEvent
subscribeToShardEventDecoder =
    JD.succeed SubscribeToShardEvent
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Records", "records"]
            (JD.list recordDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ContinuationSequenceNumber", "continuationSequenceNumber"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["MillisBehindLatest", "millisBehindLatest"]
            JD.int
        )
        




subscribeToShardEventToString : SubscribeToShardEvent -> String -- List (String, String)
subscribeToShardEventToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "records" "" -- val.records
        
    --     |> Dict.insert
    --         "continuationSequenceNumber" "" -- val.continuationSequenceNumber
        
    --     |> Dict.insert
    --         "millisBehindLatest" "" -- val.millisBehindLatest
        
    --     |> Dict.toList
    ""



{-| undefined
-}
type alias SubscribeToShardEventStream =
    { subscribeToShardEvent : SubscribeToShardEvent
    }



subscribeToShardEventStreamDecoder : JD.Decoder SubscribeToShardEventStream
subscribeToShardEventStreamDecoder =
    JD.succeed SubscribeToShardEventStream
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SubscribeToShardEvent", "subscribeToShardEvent"]
            subscribeToShardEventDecoder
        )
        




subscribeToShardEventStreamToString : SubscribeToShardEventStream -> String -- List (String, String)
subscribeToShardEventStreamToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subscribeToShardEvent" "" -- val.subscribeToShardEvent
        
    --     |> Dict.toList
    ""



{-| undefined
-}
type alias SubscribeToShardInput =
    { consumerARN : String
    , shardId : String
    , startingPosition : StartingPosition
    }



subscribeToShardInputDecoder : JD.Decoder SubscribeToShardInput
subscribeToShardInputDecoder =
    JD.succeed SubscribeToShardInput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ConsumerARN", "consumerARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ShardId", "shardId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StartingPosition", "startingPosition"]
            startingPositionDecoder
        )
        




subscribeToShardInputToString : SubscribeToShardInput -> String -- List (String, String)
subscribeToShardInputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "consumerARN" "" -- val.consumerARN
        
    --     |> Dict.insert
    --         "shardId" "" -- val.shardId
        
    --     |> Dict.insert
    --         "startingPosition" "" -- val.startingPosition
        
    --     |> Dict.toList
    ""



{-| undefined
-}
type alias SubscribeToShardOutput =
    { eventStream : SubscribeToShardEventStream
    }



subscribeToShardOutputDecoder : JD.Decoder SubscribeToShardOutput
subscribeToShardOutputDecoder =
    JD.succeed SubscribeToShardOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["EventStream", "eventStream"]
            subscribeToShardEventStreamDecoder
        )
        




subscribeToShardOutputToString : SubscribeToShardOutput -> String -- List (String, String)
subscribeToShardOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventStream" "" -- val.eventStream
        
    --     |> Dict.toList
    ""



{-| <p>Metadata assigned to the stream, consisting of a key-value pair.</p>
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



{-| Type of HTTP response from updateShardCou
-}
type alias UpdateShardCountOutput =
    { streamName : Maybe String
    , currentShardCount : Maybe Int
    , targetShardCount : Maybe Int
    }



updateShardCountOutputDecoder : JD.Decoder UpdateShardCountOutput
updateShardCountOutputDecoder =
    JD.succeed UpdateShardCountOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StreamName", "streamName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CurrentShardCount", "currentShardCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetShardCount", "targetShardCount"]
            JD.int
        )
        




updateShardCountOutputToString : UpdateShardCountOutput -> String -- List (String, String)
updateShardCountOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "streamName" "" -- val.streamName
        
    --     |> Dict.insert
    --         "currentShardCount" "" -- val.currentShardCount
        
    --     |> Dict.insert
    --         "targetShardCount" "" -- val.targetShardCount
        
    --     |> Dict.toList
    ""






{-| <p>Represents the input for <code>AddTagsToStream</code>.</p>
-}
type alias AddTagsToStreamInput =
    { streamName : String
    , tags : (Dict String String)
    }


{-| <p>Represents the input for <code>CreateStream</code>.</p>
-}
type alias CreateStreamInput =
    { streamName : String
    , shardCount : Int
    }


{-| <p>Represents the input for <a>DecreaseStreamRetentionPeriod</a>.</p>
-}
type alias DecreaseStreamRetentionPeriodInput =
    { streamName : String
    , retentionPeriodHours : Int
    }


{-| <p>Represents the input for <a>DeleteStream</a>.</p>
-}
type alias DeleteStreamInput =
    { streamName : String
    , enforceConsumerDeletion : Maybe Bool
    }


{-| undefined
-}
type alias DeregisterStreamConsumerInput =
    { streamARN : Maybe String
    , consumerName : Maybe String
    , consumerARN : Maybe String
    }


{-| undefined
-}
type alias DescribeLimitsInput =
    { 
    }


{-| undefined
-}
type alias DescribeStreamConsumerInput =
    { streamARN : Maybe String
    , consumerName : Maybe String
    , consumerARN : Maybe String
    }


{-| <p>Represents the input for <code>DescribeStream</code>.</p>
-}
type alias DescribeStreamInput =
    { streamName : String
    , limit : Maybe Int
    , exclusiveStartShardId : Maybe String
    }


{-| undefined
-}
type alias DescribeStreamSummaryInput =
    { streamName : String
    }


{-| <p>Represents the input for <a>DisableEnhancedMonitoring</a>.</p>
-}
type alias DisableEnhancedMonitoringInput =
    { streamName : String
    , shardLevelMetrics : (List MetricsName)
    }


{-| <p>Represents the input for <a>EnableEnhancedMonitoring</a>.</p>
-}
type alias EnableEnhancedMonitoringInput =
    { streamName : String
    , shardLevelMetrics : (List MetricsName)
    }


{-| <p>Represents the input for <a>GetRecords</a>.</p>
-}
type alias GetRecordsInput =
    { shardIterator : String
    , limit : Maybe Int
    }


{-| <p>Represents the input for <code>GetShardIterator</code>.</p>
-}
type alias GetShardIteratorInput =
    { streamName : String
    , shardId : String
    , shardIteratorType : ShardIteratorType
    , startingSequenceNumber : Maybe String
    , timestamp : Maybe Posix
    }


{-| <p>Represents the input for <a>IncreaseStreamRetentionPeriod</a>.</p>
-}
type alias IncreaseStreamRetentionPeriodInput =
    { streamName : String
    , retentionPeriodHours : Int
    }


{-| undefined
-}
type alias ListShardsInput =
    { streamName : Maybe String
    , nextToken : Maybe String
    , exclusiveStartShardId : Maybe String
    , maxResults : Maybe Int
    , streamCreationTimestamp : Maybe Posix
    }


{-| undefined
-}
type alias ListStreamConsumersInput =
    { streamARN : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , streamCreationTimestamp : Maybe Posix
    }


{-| <p>Represents the input for <code>ListStreams</code>.</p>
-}
type alias ListStreamsInput =
    { limit : Maybe Int
    , exclusiveStartStreamName : Maybe String
    }


{-| <p>Represents the input for <code>ListTagsForStream</code>.</p>
-}
type alias ListTagsForStreamInput =
    { streamName : String
    , exclusiveStartTagKey : Maybe String
    , limit : Maybe Int
    }


{-| <p>Represents the input for <code>MergeShards</code>.</p>
-}
type alias MergeShardsInput =
    { streamName : String
    , shardToMerge : String
    , adjacentShardToMerge : String
    }


{-| <p>Represents the input for <code>PutRecord</code>.</p>
-}
type alias PutRecordInput =
    { streamName : String
    , data : String
    , partitionKey : String
    , explicitHashKey : Maybe String
    , sequenceNumberForOrdering : Maybe String
    }


{-| <p>A <code>PutRecords</code> request.</p>
-}
type alias PutRecordsInput =
    { records : (List PutRecordsRequestEntry)
    , streamName : String
    }


{-| undefined
-}
type alias RegisterStreamConsumerInput =
    { streamARN : String
    , consumerName : String
    }


{-| <p>Represents the input for <code>RemoveTagsFromStream</code>.</p>
-}
type alias RemoveTagsFromStreamInput =
    { streamName : String
    , tagKeys : (List String)
    }


{-| <p>Represents the input for <code>SplitShard</code>.</p>
-}
type alias SplitShardInput =
    { streamName : String
    , shardToSplit : String
    , newStartingHashKey : String
    }


{-| undefined
-}
type alias StartStreamEncryptionInput =
    { streamName : String
    , encryptionType : EncryptionType
    , keyId : String
    }


{-| undefined
-}
type alias StopStreamEncryptionInput =
    { streamName : String
    , encryptionType : EncryptionType
    , keyId : String
    }


{-| undefined
-}
type alias UpdateShardCountInput =
    { streamName : String
    , targetShardCount : Int
    , scalingType : ScalingType
    }






addTagsToStreamInputEncoder : AddTagsToStreamInput -> JE.Value
addTagsToStreamInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("Tags", data.tags |> (JE.dict identity (JE.string)))
        
        
        |> JE.object






consumerEncoder : Consumer -> JE.Value
consumerEncoder data =
    []
        
        
        |> (::) ("ConsumerName", data.consumerName |> (JE.string))
        
        
        
        |> (::) ("ConsumerARN", data.consumerARN |> (JE.string))
        
        
        
        |> (::) ("ConsumerStatus", data.consumerStatus |> (consumerStatusToString >> JE.string))
        
        
        
        |> (::) ("ConsumerCreationTimestamp", data.consumerCreationTimestamp |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






consumerDescriptionEncoder : ConsumerDescription -> JE.Value
consumerDescriptionEncoder data =
    []
        
        
        |> (::) ("ConsumerName", data.consumerName |> (JE.string))
        
        
        
        |> (::) ("ConsumerARN", data.consumerARN |> (JE.string))
        
        
        
        |> (::) ("ConsumerStatus", data.consumerStatus |> (consumerStatusToString >> JE.string))
        
        
        
        |> (::) ("ConsumerCreationTimestamp", data.consumerCreationTimestamp |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("StreamARN", data.streamARN |> (JE.string))
        
        
        |> JE.object










createStreamInputEncoder : CreateStreamInput -> JE.Value
createStreamInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("ShardCount", data.shardCount |> (JE.int))
        
        
        |> JE.object






decreaseStreamRetentionPeriodInputEncoder : DecreaseStreamRetentionPeriodInput -> JE.Value
decreaseStreamRetentionPeriodInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("RetentionPeriodHours", data.retentionPeriodHours |> (JE.int))
        
        
        |> JE.object






deleteStreamInputEncoder : DeleteStreamInput -> JE.Value
deleteStreamInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnforceConsumerDeletion", data.enforceConsumerDeletion)
        
        
        |> JE.object






deregisterStreamConsumerInputEncoder : DeregisterStreamConsumerInput -> JE.Value
deregisterStreamConsumerInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StreamARN", data.streamARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ConsumerName", data.consumerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ConsumerARN", data.consumerARN)
        
        
        |> JE.object






describeLimitsInputEncoder : DescribeLimitsInput -> JE.Value
describeLimitsInputEncoder data =
    []
        
        |> JE.object






describeLimitsOutputEncoder : DescribeLimitsOutput -> JE.Value
describeLimitsOutputEncoder data =
    []
        
        
        |> (::) ("ShardLimit", data.shardLimit |> (JE.int))
        
        
        
        |> (::) ("OpenShardCount", data.openShardCount |> (JE.int))
        
        
        |> JE.object






describeStreamConsumerInputEncoder : DescribeStreamConsumerInput -> JE.Value
describeStreamConsumerInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StreamARN", data.streamARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ConsumerName", data.consumerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ConsumerARN", data.consumerARN)
        
        
        |> JE.object






describeStreamConsumerOutputEncoder : DescribeStreamConsumerOutput -> JE.Value
describeStreamConsumerOutputEncoder data =
    []
        
        
        |> (::) ("ConsumerDescription", data.consumerDescription |> (consumerDescriptionEncoder))
        
        
        |> JE.object






describeStreamInputEncoder : DescribeStreamInput -> JE.Value
describeStreamInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExclusiveStartShardId", data.exclusiveStartShardId)
        
        
        |> JE.object






describeStreamOutputEncoder : DescribeStreamOutput -> JE.Value
describeStreamOutputEncoder data =
    []
        
        
        |> (::) ("StreamDescription", data.streamDescription |> (streamDescriptionEncoder))
        
        
        |> JE.object






describeStreamSummaryInputEncoder : DescribeStreamSummaryInput -> JE.Value
describeStreamSummaryInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        |> JE.object






describeStreamSummaryOutputEncoder : DescribeStreamSummaryOutput -> JE.Value
describeStreamSummaryOutputEncoder data =
    []
        
        
        |> (::) ("StreamDescriptionSummary", data.streamDescriptionSummary |> (streamDescriptionSummaryEncoder))
        
        
        |> JE.object






disableEnhancedMonitoringInputEncoder : DisableEnhancedMonitoringInput -> JE.Value
disableEnhancedMonitoringInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("ShardLevelMetrics", data.shardLevelMetrics |> (JE.list (metricsNameToString >> JE.string)))
        
        
        |> JE.object






enableEnhancedMonitoringInputEncoder : EnableEnhancedMonitoringInput -> JE.Value
enableEnhancedMonitoringInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("ShardLevelMetrics", data.shardLevelMetrics |> (JE.list (metricsNameToString >> JE.string)))
        
        
        |> JE.object










enhancedMetricsEncoder : EnhancedMetrics -> JE.Value
enhancedMetricsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (metricsNameToString >> JE.string))
            ("ShardLevelMetrics", data.shardLevelMetrics)
        
        
        |> JE.object






enhancedMonitoringOutputEncoder : EnhancedMonitoringOutput -> JE.Value
enhancedMonitoringOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StreamName", data.streamName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (metricsNameToString >> JE.string))
            ("CurrentShardLevelMetrics", data.currentShardLevelMetrics)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (metricsNameToString >> JE.string))
            ("DesiredShardLevelMetrics", data.desiredShardLevelMetrics)
        
        
        |> JE.object






expiredIteratorExceptionEncoder : ExpiredIteratorException -> JE.Value
expiredIteratorExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






expiredNextTokenExceptionEncoder : ExpiredNextTokenException -> JE.Value
expiredNextTokenExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






getRecordsInputEncoder : GetRecordsInput -> JE.Value
getRecordsInputEncoder data =
    []
        
        
        |> (::) ("ShardIterator", data.shardIterator |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






getRecordsOutputEncoder : GetRecordsOutput -> JE.Value
getRecordsOutputEncoder data =
    []
        
        
        |> (::) ("Records", data.records |> (JE.list (recordEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextShardIterator", data.nextShardIterator)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MillisBehindLatest", data.millisBehindLatest)
        
        
        |> JE.object






getShardIteratorInputEncoder : GetShardIteratorInput -> JE.Value
getShardIteratorInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("ShardId", data.shardId |> (JE.string))
        
        
        
        |> (::) ("ShardIteratorType", data.shardIteratorType |> (shardIteratorTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StartingSequenceNumber", data.startingSequenceNumber)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("Timestamp", data.timestamp)
        
        
        |> JE.object






getShardIteratorOutputEncoder : GetShardIteratorOutput -> JE.Value
getShardIteratorOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ShardIterator", data.shardIterator)
        
        
        |> JE.object






hashKeyRangeEncoder : HashKeyRange -> JE.Value
hashKeyRangeEncoder data =
    []
        
        
        |> (::) ("StartingHashKey", data.startingHashKey |> (JE.string))
        
        
        
        |> (::) ("EndingHashKey", data.endingHashKey |> (JE.string))
        
        
        |> JE.object






increaseStreamRetentionPeriodInputEncoder : IncreaseStreamRetentionPeriodInput -> JE.Value
increaseStreamRetentionPeriodInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("RetentionPeriodHours", data.retentionPeriodHours |> (JE.int))
        
        
        |> JE.object






internalFailureExceptionEncoder : InternalFailureException -> JE.Value
internalFailureExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






invalidArgumentExceptionEncoder : InvalidArgumentException -> JE.Value
invalidArgumentExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






kMSAccessDeniedExceptionEncoder : KMSAccessDeniedException -> JE.Value
kMSAccessDeniedExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






kMSDisabledExceptionEncoder : KMSDisabledException -> JE.Value
kMSDisabledExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






kMSInvalidStateExceptionEncoder : KMSInvalidStateException -> JE.Value
kMSInvalidStateExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






kMSNotFoundExceptionEncoder : KMSNotFoundException -> JE.Value
kMSNotFoundExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






kMSOptInRequiredEncoder : KMSOptInRequired -> JE.Value
kMSOptInRequiredEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






kMSThrottlingExceptionEncoder : KMSThrottlingException -> JE.Value
kMSThrottlingExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






limitExceededExceptionEncoder : LimitExceededException -> JE.Value
limitExceededExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






listShardsInputEncoder : ListShardsInput -> JE.Value
listShardsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StreamName", data.streamName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExclusiveStartShardId", data.exclusiveStartShardId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StreamCreationTimestamp", data.streamCreationTimestamp)
        
        
        |> JE.object






listShardsOutputEncoder : ListShardsOutput -> JE.Value
listShardsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (shardEncoder))
            ("Shards", data.shards)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listStreamConsumersInputEncoder : ListStreamConsumersInput -> JE.Value
listStreamConsumersInputEncoder data =
    []
        
        
        |> (::) ("StreamARN", data.streamARN |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StreamCreationTimestamp", data.streamCreationTimestamp)
        
        
        |> JE.object






listStreamConsumersOutputEncoder : ListStreamConsumersOutput -> JE.Value
listStreamConsumersOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (consumerEncoder))
            ("Consumers", data.consumers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listStreamsInputEncoder : ListStreamsInput -> JE.Value
listStreamsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExclusiveStartStreamName", data.exclusiveStartStreamName)
        
        
        |> JE.object






listStreamsOutputEncoder : ListStreamsOutput -> JE.Value
listStreamsOutputEncoder data =
    []
        
        
        |> (::) ("StreamNames", data.streamNames |> (JE.list (JE.string)))
        
        
        
        |> (::) ("HasMoreStreams", data.hasMoreStreams |> (JE.bool))
        
        
        |> JE.object






listTagsForStreamInputEncoder : ListTagsForStreamInput -> JE.Value
listTagsForStreamInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExclusiveStartTagKey", data.exclusiveStartTagKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listTagsForStreamOutputEncoder : ListTagsForStreamOutput -> JE.Value
listTagsForStreamOutputEncoder data =
    []
        
        
        |> (::) ("Tags", data.tags |> (JE.list (tagEncoder)))
        
        
        
        |> (::) ("HasMoreTags", data.hasMoreTags |> (JE.bool))
        
        
        |> JE.object






mergeShardsInputEncoder : MergeShardsInput -> JE.Value
mergeShardsInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("ShardToMerge", data.shardToMerge |> (JE.string))
        
        
        
        |> (::) ("AdjacentShardToMerge", data.adjacentShardToMerge |> (JE.string))
        
        
        |> JE.object










provisionedThroughputExceededExceptionEncoder : ProvisionedThroughputExceededException -> JE.Value
provisionedThroughputExceededExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






putRecordInputEncoder : PutRecordInput -> JE.Value
putRecordInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("Data", data.data |> (JE.string))
        
        
        
        |> (::) ("PartitionKey", data.partitionKey |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExplicitHashKey", data.explicitHashKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SequenceNumberForOrdering", data.sequenceNumberForOrdering)
        
        
        |> JE.object






putRecordOutputEncoder : PutRecordOutput -> JE.Value
putRecordOutputEncoder data =
    []
        
        
        |> (::) ("ShardId", data.shardId |> (JE.string))
        
        
        
        |> (::) ("SequenceNumber", data.sequenceNumber |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (encryptionTypeToString >> JE.string)
            ("EncryptionType", data.encryptionType)
        
        
        |> JE.object






putRecordsInputEncoder : PutRecordsInput -> JE.Value
putRecordsInputEncoder data =
    []
        
        
        |> (::) ("Records", data.records |> (JE.list (putRecordsRequestEntryEncoder)))
        
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        |> JE.object






putRecordsOutputEncoder : PutRecordsOutput -> JE.Value
putRecordsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("FailedRecordCount", data.failedRecordCount)
        
        
        
        |> (::) ("Records", data.records |> (JE.list (putRecordsResultEntryEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (encryptionTypeToString >> JE.string)
            ("EncryptionType", data.encryptionType)
        
        
        |> JE.object






putRecordsRequestEntryEncoder : PutRecordsRequestEntry -> JE.Value
putRecordsRequestEntryEncoder data =
    []
        
        
        |> (::) ("Data", data.data |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExplicitHashKey", data.explicitHashKey)
        
        
        
        |> (::) ("PartitionKey", data.partitionKey |> (JE.string))
        
        
        |> JE.object






putRecordsResultEntryEncoder : PutRecordsResultEntry -> JE.Value
putRecordsResultEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SequenceNumber", data.sequenceNumber)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ShardId", data.shardId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object






recordEncoder : Record -> JE.Value
recordEncoder data =
    []
        
        
        |> (::) ("SequenceNumber", data.sequenceNumber |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ApproximateArrivalTimestamp", data.approximateArrivalTimestamp)
        
        
        
        |> (::) ("Data", data.data |> (JE.string))
        
        
        
        |> (::) ("PartitionKey", data.partitionKey |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (encryptionTypeToString >> JE.string)
            ("EncryptionType", data.encryptionType)
        
        
        |> JE.object






registerStreamConsumerInputEncoder : RegisterStreamConsumerInput -> JE.Value
registerStreamConsumerInputEncoder data =
    []
        
        
        |> (::) ("StreamARN", data.streamARN |> (JE.string))
        
        
        
        |> (::) ("ConsumerName", data.consumerName |> (JE.string))
        
        
        |> JE.object






registerStreamConsumerOutputEncoder : RegisterStreamConsumerOutput -> JE.Value
registerStreamConsumerOutputEncoder data =
    []
        
        
        |> (::) ("Consumer", data.consumer |> (consumerEncoder))
        
        
        |> JE.object






removeTagsFromStreamInputEncoder : RemoveTagsFromStreamInput -> JE.Value
removeTagsFromStreamInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("TagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






resourceInUseExceptionEncoder : ResourceInUseException -> JE.Value
resourceInUseExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






resourceNotFoundExceptionEncoder : ResourceNotFoundException -> JE.Value
resourceNotFoundExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object










sequenceNumberRangeEncoder : SequenceNumberRange -> JE.Value
sequenceNumberRangeEncoder data =
    []
        
        
        |> (::) ("StartingSequenceNumber", data.startingSequenceNumber |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EndingSequenceNumber", data.endingSequenceNumber)
        
        
        |> JE.object






shardEncoder : Shard -> JE.Value
shardEncoder data =
    []
        
        
        |> (::) ("ShardId", data.shardId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ParentShardId", data.parentShardId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AdjacentParentShardId", data.adjacentParentShardId)
        
        
        
        |> (::) ("HashKeyRange", data.hashKeyRange |> (hashKeyRangeEncoder))
        
        
        
        |> (::) ("SequenceNumberRange", data.sequenceNumberRange |> (sequenceNumberRangeEncoder))
        
        
        |> JE.object










splitShardInputEncoder : SplitShardInput -> JE.Value
splitShardInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("ShardToSplit", data.shardToSplit |> (JE.string))
        
        
        
        |> (::) ("NewStartingHashKey", data.newStartingHashKey |> (JE.string))
        
        
        |> JE.object






startStreamEncryptionInputEncoder : StartStreamEncryptionInput -> JE.Value
startStreamEncryptionInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("EncryptionType", data.encryptionType |> (encryptionTypeToString >> JE.string))
        
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        |> JE.object






startingPositionEncoder : StartingPosition -> JE.Value
startingPositionEncoder data =
    []
        
        
        |> (::) ("Type", data.type_ |> (shardIteratorTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SequenceNumber", data.sequenceNumber)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("Timestamp", data.timestamp)
        
        
        |> JE.object






stopStreamEncryptionInputEncoder : StopStreamEncryptionInput -> JE.Value
stopStreamEncryptionInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("EncryptionType", data.encryptionType |> (encryptionTypeToString >> JE.string))
        
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        |> JE.object






streamDescriptionEncoder : StreamDescription -> JE.Value
streamDescriptionEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("StreamARN", data.streamARN |> (JE.string))
        
        
        
        |> (::) ("StreamStatus", data.streamStatus |> (streamStatusToString >> JE.string))
        
        
        
        |> (::) ("Shards", data.shards |> (JE.list (shardEncoder)))
        
        
        
        |> (::) ("HasMoreShards", data.hasMoreShards |> (JE.bool))
        
        
        
        |> (::) ("RetentionPeriodHours", data.retentionPeriodHours |> (JE.int))
        
        
        
        |> (::) ("StreamCreationTimestamp", data.streamCreationTimestamp |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("EnhancedMonitoring", data.enhancedMonitoring |> (JE.list (enhancedMetricsEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (encryptionTypeToString >> JE.string)
            ("EncryptionType", data.encryptionType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyId", data.keyId)
        
        
        |> JE.object






streamDescriptionSummaryEncoder : StreamDescriptionSummary -> JE.Value
streamDescriptionSummaryEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("StreamARN", data.streamARN |> (JE.string))
        
        
        
        |> (::) ("StreamStatus", data.streamStatus |> (streamStatusToString >> JE.string))
        
        
        
        |> (::) ("RetentionPeriodHours", data.retentionPeriodHours |> (JE.int))
        
        
        
        |> (::) ("StreamCreationTimestamp", data.streamCreationTimestamp |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("EnhancedMonitoring", data.enhancedMonitoring |> (JE.list (enhancedMetricsEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (encryptionTypeToString >> JE.string)
            ("EncryptionType", data.encryptionType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyId", data.keyId)
        
        
        
        |> (::) ("OpenShardCount", data.openShardCount |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ConsumerCount", data.consumerCount)
        
        
        |> JE.object










subscribeToShardEventEncoder : SubscribeToShardEvent -> JE.Value
subscribeToShardEventEncoder data =
    []
        
        
        |> (::) ("Records", data.records |> (JE.list (recordEncoder)))
        
        
        
        |> (::) ("ContinuationSequenceNumber", data.continuationSequenceNumber |> (JE.string))
        
        
        
        |> (::) ("MillisBehindLatest", data.millisBehindLatest |> (JE.int))
        
        
        |> JE.object






subscribeToShardEventStreamEncoder : SubscribeToShardEventStream -> JE.Value
subscribeToShardEventStreamEncoder data =
    []
        
        
        |> (::) ("SubscribeToShardEvent", data.subscribeToShardEvent |> (subscribeToShardEventEncoder))
        
        
        |> JE.object






subscribeToShardInputEncoder : SubscribeToShardInput -> JE.Value
subscribeToShardInputEncoder data =
    []
        
        
        |> (::) ("ConsumerARN", data.consumerARN |> (JE.string))
        
        
        
        |> (::) ("ShardId", data.shardId |> (JE.string))
        
        
        
        |> (::) ("StartingPosition", data.startingPosition |> (startingPositionEncoder))
        
        
        |> JE.object






subscribeToShardOutputEncoder : SubscribeToShardOutput -> JE.Value
subscribeToShardOutputEncoder data =
    []
        
        
        |> (::) ("EventStream", data.eventStream |> (subscribeToShardEventStreamEncoder))
        
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object






updateShardCountInputEncoder : UpdateShardCountInput -> JE.Value
updateShardCountInputEncoder data =
    []
        
        
        |> (::) ("StreamName", data.streamName |> (JE.string))
        
        
        
        |> (::) ("TargetShardCount", data.targetShardCount |> (JE.int))
        
        
        
        |> (::) ("ScalingType", data.scalingType |> (scalingTypeToString >> JE.string))
        
        
        |> JE.object






updateShardCountOutputEncoder : UpdateShardCountOutput -> JE.Value
updateShardCountOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StreamName", data.streamName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("CurrentShardCount", data.currentShardCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TargetShardCount", data.targetShardCount)
        
        
        |> JE.object





