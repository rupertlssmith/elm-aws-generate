module AWS.CloudWatchLogs
    exposing
        ( service
        , associateKmsKey
        , cancelExportTask
        , createExportTask
        , CreateExportTaskOptions
        , createLogGroup
        , CreateLogGroupOptions
        , createLogStream
        , deleteDestination
        , deleteLogGroup
        , deleteLogStream
        , deleteMetricFilter
        , deleteResourcePolicy
        , DeleteResourcePolicyOptions
        , deleteRetentionPolicy
        , deleteSubscriptionFilter
        , describeDestinations
        , DescribeDestinationsOptions
        , describeExportTasks
        , DescribeExportTasksOptions
        , describeLogGroups
        , DescribeLogGroupsOptions
        , describeLogStreams
        , DescribeLogStreamsOptions
        , describeMetricFilters
        , DescribeMetricFiltersOptions
        , describeQueries
        , DescribeQueriesOptions
        , describeResourcePolicies
        , DescribeResourcePoliciesOptions
        , describeSubscriptionFilters
        , DescribeSubscriptionFiltersOptions
        , disassociateKmsKey
        , filterLogEvents
        , FilterLogEventsOptions
        , getLogEvents
        , GetLogEventsOptions
        , getLogGroupFields
        , GetLogGroupFieldsOptions
        , getLogRecord
        , getQueryResults
        , listTagsLogGroup
        , putDestination
        , putDestinationPolicy
        , putLogEvents
        , PutLogEventsOptions
        , putMetricFilter
        , putResourcePolicy
        , PutResourcePolicyOptions
        , putRetentionPolicy
        , putSubscriptionFilter
        , PutSubscriptionFilterOptions
        , startQuery
        , StartQueryOptions
        , stopQuery
        , tagLogGroup
        , testMetricFilter
        , untagLogGroup
        , CreateExportTaskResponse
        , DescribeDestinationsResponse
        , DescribeExportTasksResponse
        , DescribeLogGroupsResponse
        , DescribeLogStreamsResponse
        , DescribeMetricFiltersResponse
        , DescribeQueriesResponse
        , DescribeResourcePoliciesResponse
        , DescribeSubscriptionFiltersResponse
        , Destination
        , Distribution(..)
        , ExportTask
        , ExportTaskExecutionInfo
        , ExportTaskStatus
        , ExportTaskStatusCode(..)
        , FilterLogEventsResponse
        , FilteredLogEvent
        , GetLogEventsResponse
        , GetLogGroupFieldsResponse
        , GetLogRecordResponse
        , GetQueryResultsResponse
        , InputLogEvent
        , ListTagsLogGroupResponse
        , LogGroup
        , LogGroupField
        , LogStream
        , MetricFilter
        , MetricFilterMatchRecord
        , MetricTransformation
        , OrderBy(..)
        , OutputLogEvent
        , PutDestinationResponse
        , PutLogEventsResponse
        , PutResourcePolicyResponse
        , QueryInfo
        , QueryStatistics
        , QueryStatus(..)
        , RejectedLogEventsInfo
        , ResourcePolicy
        , ResultField
        , SearchedLogStream
        , StartQueryResponse
        , StopQueryResponse
        , SubscriptionFilter
        , TestMetricFilterResponse
        )

{-| <p>You can use Amazon CloudWatch Logs to monitor, store, and access your log files from Amazon EC2 instances, AWS CloudTrail, or other sources. You can then retrieve the associated log data from CloudWatch Logs using the CloudWatch console, CloudWatch Logs commands in the AWS CLI, CloudWatch Logs API, or CloudWatch Logs SDK.</p> <p>You can use CloudWatch Logs to:</p> <ul> <li> <p> <b>Monitor logs from EC2 instances in real-time</b>: You can use CloudWatch Logs to monitor applications and systems using log data. For example, CloudWatch Logs can track the number of errors that occur in your application logs and send you a notification whenever the rate of errors exceeds a threshold that you specify. CloudWatch Logs uses your log data for monitoring; so, no code changes are required. For example, you can monitor application logs for specific literal terms (such as "NullReferenceException") or count the number of occurrences of a literal term at a particular position in log data (such as "404" status codes in an Apache access log). When the term you are searching for is found, CloudWatch Logs reports the data to a CloudWatch metric that you specify.</p> </li> <li> <p> <b>Monitor AWS CloudTrail logged events</b>: You can create alarms in CloudWatch and receive notifications of particular API activity as captured by CloudTrail and use the notification to perform troubleshooting.</p> </li> <li> <p> <b>Archive log data</b>: You can use CloudWatch Logs to store your log data in highly durable storage. You can change the log retention setting so that any log events older than this setting are automatically deleted. The CloudWatch Logs agent makes it easy to quickly send both rotated and non-rotated log data off of a host and into the log service. You can then access the raw log data when you need it.</p> </li> </ul>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [associateKmsKey](#associateKmsKey)
* [cancelExportTask](#cancelExportTask)
* [createExportTask](#createExportTask)
* [CreateExportTaskOptions](#CreateExportTaskOptions)
* [createLogGroup](#createLogGroup)
* [CreateLogGroupOptions](#CreateLogGroupOptions)
* [createLogStream](#createLogStream)
* [deleteDestination](#deleteDestination)
* [deleteLogGroup](#deleteLogGroup)
* [deleteLogStream](#deleteLogStream)
* [deleteMetricFilter](#deleteMetricFilter)
* [deleteResourcePolicy](#deleteResourcePolicy)
* [DeleteResourcePolicyOptions](#DeleteResourcePolicyOptions)
* [deleteRetentionPolicy](#deleteRetentionPolicy)
* [deleteSubscriptionFilter](#deleteSubscriptionFilter)
* [describeDestinations](#describeDestinations)
* [DescribeDestinationsOptions](#DescribeDestinationsOptions)
* [describeExportTasks](#describeExportTasks)
* [DescribeExportTasksOptions](#DescribeExportTasksOptions)
* [describeLogGroups](#describeLogGroups)
* [DescribeLogGroupsOptions](#DescribeLogGroupsOptions)
* [describeLogStreams](#describeLogStreams)
* [DescribeLogStreamsOptions](#DescribeLogStreamsOptions)
* [describeMetricFilters](#describeMetricFilters)
* [DescribeMetricFiltersOptions](#DescribeMetricFiltersOptions)
* [describeQueries](#describeQueries)
* [DescribeQueriesOptions](#DescribeQueriesOptions)
* [describeResourcePolicies](#describeResourcePolicies)
* [DescribeResourcePoliciesOptions](#DescribeResourcePoliciesOptions)
* [describeSubscriptionFilters](#describeSubscriptionFilters)
* [DescribeSubscriptionFiltersOptions](#DescribeSubscriptionFiltersOptions)
* [disassociateKmsKey](#disassociateKmsKey)
* [filterLogEvents](#filterLogEvents)
* [FilterLogEventsOptions](#FilterLogEventsOptions)
* [getLogEvents](#getLogEvents)
* [GetLogEventsOptions](#GetLogEventsOptions)
* [getLogGroupFields](#getLogGroupFields)
* [GetLogGroupFieldsOptions](#GetLogGroupFieldsOptions)
* [getLogRecord](#getLogRecord)
* [getQueryResults](#getQueryResults)
* [listTagsLogGroup](#listTagsLogGroup)
* [putDestination](#putDestination)
* [putDestinationPolicy](#putDestinationPolicy)
* [putLogEvents](#putLogEvents)
* [PutLogEventsOptions](#PutLogEventsOptions)
* [putMetricFilter](#putMetricFilter)
* [putResourcePolicy](#putResourcePolicy)
* [PutResourcePolicyOptions](#PutResourcePolicyOptions)
* [putRetentionPolicy](#putRetentionPolicy)
* [putSubscriptionFilter](#putSubscriptionFilter)
* [PutSubscriptionFilterOptions](#PutSubscriptionFilterOptions)
* [startQuery](#startQuery)
* [StartQueryOptions](#StartQueryOptions)
* [stopQuery](#stopQuery)
* [tagLogGroup](#tagLogGroup)
* [testMetricFilter](#testMetricFilter)
* [untagLogGroup](#untagLogGroup)


@docs associateKmsKey,cancelExportTask,createExportTask,CreateExportTaskOptions,createLogGroup,CreateLogGroupOptions,createLogStream,deleteDestination,deleteLogGroup,deleteLogStream,deleteMetricFilter,deleteResourcePolicy,DeleteResourcePolicyOptions,deleteRetentionPolicy,deleteSubscriptionFilter,describeDestinations,DescribeDestinationsOptions,describeExportTasks,DescribeExportTasksOptions,describeLogGroups,DescribeLogGroupsOptions,describeLogStreams,DescribeLogStreamsOptions,describeMetricFilters,DescribeMetricFiltersOptions,describeQueries,DescribeQueriesOptions,describeResourcePolicies,DescribeResourcePoliciesOptions,describeSubscriptionFilters,DescribeSubscriptionFiltersOptions,disassociateKmsKey,filterLogEvents,FilterLogEventsOptions,getLogEvents,GetLogEventsOptions,getLogGroupFields,GetLogGroupFieldsOptions,getLogRecord,getQueryResults,listTagsLogGroup,putDestination,putDestinationPolicy,putLogEvents,PutLogEventsOptions,putMetricFilter,putResourcePolicy,PutResourcePolicyOptions,putRetentionPolicy,putSubscriptionFilter,PutSubscriptionFilterOptions,startQuery,StartQueryOptions,stopQuery,tagLogGroup,testMetricFilter,untagLogGroup

## Responses

* [CreateExportTaskResponse](#CreateExportTaskResponse)
* [DescribeDestinationsResponse](#DescribeDestinationsResponse)
* [DescribeExportTasksResponse](#DescribeExportTasksResponse)
* [DescribeLogGroupsResponse](#DescribeLogGroupsResponse)
* [DescribeLogStreamsResponse](#DescribeLogStreamsResponse)
* [DescribeMetricFiltersResponse](#DescribeMetricFiltersResponse)
* [DescribeQueriesResponse](#DescribeQueriesResponse)
* [DescribeResourcePoliciesResponse](#DescribeResourcePoliciesResponse)
* [DescribeSubscriptionFiltersResponse](#DescribeSubscriptionFiltersResponse)
* [FilterLogEventsResponse](#FilterLogEventsResponse)
* [GetLogEventsResponse](#GetLogEventsResponse)
* [GetLogGroupFieldsResponse](#GetLogGroupFieldsResponse)
* [GetLogRecordResponse](#GetLogRecordResponse)
* [GetQueryResultsResponse](#GetQueryResultsResponse)
* [ListTagsLogGroupResponse](#ListTagsLogGroupResponse)
* [PutDestinationResponse](#PutDestinationResponse)
* [PutLogEventsResponse](#PutLogEventsResponse)
* [PutResourcePolicyResponse](#PutResourcePolicyResponse)
* [StartQueryResponse](#StartQueryResponse)
* [StopQueryResponse](#StopQueryResponse)
* [TestMetricFilterResponse](#TestMetricFilterResponse)


@docs CreateExportTaskResponse,DescribeDestinationsResponse,DescribeExportTasksResponse,DescribeLogGroupsResponse,DescribeLogStreamsResponse,DescribeMetricFiltersResponse,DescribeQueriesResponse,DescribeResourcePoliciesResponse,DescribeSubscriptionFiltersResponse,FilterLogEventsResponse,GetLogEventsResponse,GetLogGroupFieldsResponse,GetLogRecordResponse,GetQueryResultsResponse,ListTagsLogGroupResponse,PutDestinationResponse,PutLogEventsResponse,PutResourcePolicyResponse,StartQueryResponse,StopQueryResponse,TestMetricFilterResponse

## Records

* [Destination](#Destination)
* [ExportTask](#ExportTask)
* [ExportTaskExecutionInfo](#ExportTaskExecutionInfo)
* [ExportTaskStatus](#ExportTaskStatus)
* [FilteredLogEvent](#FilteredLogEvent)
* [InputLogEvent](#InputLogEvent)
* [LogGroup](#LogGroup)
* [LogGroupField](#LogGroupField)
* [LogStream](#LogStream)
* [MetricFilter](#MetricFilter)
* [MetricFilterMatchRecord](#MetricFilterMatchRecord)
* [MetricTransformation](#MetricTransformation)
* [OutputLogEvent](#OutputLogEvent)
* [QueryInfo](#QueryInfo)
* [QueryStatistics](#QueryStatistics)
* [RejectedLogEventsInfo](#RejectedLogEventsInfo)
* [ResourcePolicy](#ResourcePolicy)
* [ResultField](#ResultField)
* [SearchedLogStream](#SearchedLogStream)
* [SubscriptionFilter](#SubscriptionFilter)


@docs Destination,ExportTask,ExportTaskExecutionInfo,ExportTaskStatus,FilteredLogEvent,InputLogEvent,LogGroup,LogGroupField,LogStream,MetricFilter,MetricFilterMatchRecord,MetricTransformation,OutputLogEvent,QueryInfo,QueryStatistics,RejectedLogEventsInfo,ResourcePolicy,ResultField,SearchedLogStream,SubscriptionFilter

## Unions

* [Distribution](#Distribution)
* [ExportTaskStatusCode](#ExportTaskStatusCode)
* [OrderBy](#OrderBy)
* [QueryStatus](#QueryStatus)


@docs Distribution,ExportTaskStatusCode,OrderBy,QueryStatus

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE

import Dict exposing (Dict)


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "logs"
        "2014-03-28"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "Logs_20140328")



-- OPERATIONS

{-| <p>Associates the specified AWS Key Management Service (AWS KMS) customer master key (CMK) with the specified log group.</p> <p>Associating an AWS KMS CMK with a log group overrides any existing associations between the log group and a CMK. After a CMK is associated with a log group, all newly ingested data for the log group is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested.</p> <p>Note that it can take up to 5 minutes for this operation to take effect.</p> <p>If you attempt to associate a CMK with a log group but the CMK does not exist or the CMK is disabled, you will receive an <code>InvalidParameterException</code> error. </p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `kmsKeyId` __:__ `String`


-}

associateKmsKey :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

associateKmsKey logGroupName kmsKeyId =
    
    let
        requestInput = AssociateKmsKeyRequest
            
            logGroupName
            
            kmsKeyId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateKmsKeyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateKmsKey"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Cancels the specified export task.</p> <p>The task must be in the <code>PENDING</code> or <code>RUNNING</code> state.</p>

__Required Parameters__

* `taskId` __:__ `String`


-}

cancelExportTask :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

cancelExportTask taskId =
    
    let
        requestInput = CancelExportTaskRequest
            
            taskId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> cancelExportTaskRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CancelExportTask"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Creates an export task, which allows you to efficiently export data from a log group to an Amazon S3 bucket.</p> <p>This is an asynchronous call. If all the required information is provided, this operation initiates an export task and responds with the ID of the task. After the task has started, you can use <a>DescribeExportTasks</a> to get the status of the export task. Each account can only have one active (<code>RUNNING</code> or <code>PENDING</code>) export task at a time. To cancel an export task, use <a>CancelExportTask</a>.</p> <p>You can export logs from multiple log groups or multiple time ranges to the same S3 bucket. To separate out log data for each export task, you can specify a prefix to be used as the Amazon S3 key prefix for all exported objects.</p> <p>Exporting to S3 buckets that are encrypted with AES-256 is supported. Exporting to S3 buckets encrypted with SSE-KMS is not supported. </p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `from` __:__ `Int`
* `to` __:__ `Int`
* `destination` __:__ `String`


-}

createExportTask :
  
    String ->
  
    Int ->
  
    Int ->
  
    String ->
  
  
    ( CreateExportTaskOptions -> CreateExportTaskOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateExportTaskResponse)

createExportTask logGroupName from to destination setOptions =
    
    let
        requestInput = CreateExportTaskRequest
            
            options.taskName
            
            logGroupName
            
            options.logStreamNamePrefix
            
            from
            
            to
            
            destination
            
            options.destinationPrefix
            
        
        options = setOptions (CreateExportTaskOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createExportTaskRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateExportTask"
                
                (AWS.Core.Decode.ResultDecoder "CreateExportTaskResponse" createExportTaskResponseDecoder)
                
            )



{-| Options for a createExportTask request
-}
type alias CreateExportTaskOptions =
    {
    taskName : Maybe String,logStreamNamePrefix : Maybe String,destinationPrefix : Maybe String
    }



{-| <p>Creates a log group with the specified name.</p> <p>You can create up to 5000 log groups per account.</p> <p>You must use the following guidelines when naming a log group:</p> <ul> <li> <p>Log group names must be unique within a region for an AWS account.</p> </li> <li> <p>Log group names can be between 1 and 512 characters long.</p> </li> <li> <p>Log group names consist of the following characters: a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).</p> </li> </ul> <p>If you associate a AWS Key Management Service (AWS KMS) customer master key (CMK) with the log group, ingested data is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested.</p> <p>If you attempt to associate a CMK with the log group but the CMK does not exist or the CMK is disabled, you will receive an <code>InvalidParameterException</code> error. </p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}

createLogGroup :
  
    String ->
  
  
    ( CreateLogGroupOptions -> CreateLogGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

createLogGroup logGroupName setOptions =
    
    let
        requestInput = CreateLogGroupRequest
            
            logGroupName
            
            options.kmsKeyId
            
            options.tags
            
        
        options = setOptions (CreateLogGroupOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createLogGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateLogGroup"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a createLogGroup request
-}
type alias CreateLogGroupOptions =
    {
    kmsKeyId : Maybe String,tags : Maybe (Dict String String)
    }



{-| <p>Creates a log stream for the specified log group.</p> <p>There is no limit on the number of log streams that you can create for a log group.</p> <p>You must use the following guidelines when naming a log stream:</p> <ul> <li> <p>Log stream names must be unique within the log group.</p> </li> <li> <p>Log stream names can be between 1 and 512 characters long.</p> </li> <li> <p>The ':' (colon) and '*' (asterisk) characters are not allowed.</p> </li> </ul>

__Required Parameters__

* `logGroupName` __:__ `String`
* `logStreamName` __:__ `String`


-}

createLogStream :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

createLogStream logGroupName logStreamName =
    
    let
        requestInput = CreateLogStreamRequest
            
            logGroupName
            
            logStreamName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createLogStreamRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateLogStream"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes the specified destination, and eventually disables all the subscription filters that publish to it. This operation does not delete the physical resource encapsulated by the destination.</p>

__Required Parameters__

* `destinationName` __:__ `String`


-}

deleteDestination :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteDestination destinationName =
    
    let
        requestInput = DeleteDestinationRequest
            
            destinationName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteDestinationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDestination"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes the specified log group and permanently deletes all the archived log events associated with the log group.</p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}

deleteLogGroup :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteLogGroup logGroupName =
    
    let
        requestInput = DeleteLogGroupRequest
            
            logGroupName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteLogGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteLogGroup"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `logStreamName` __:__ `String`


-}

deleteLogStream :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteLogStream logGroupName logStreamName =
    
    let
        requestInput = DeleteLogStreamRequest
            
            logGroupName
            
            logStreamName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteLogStreamRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteLogStream"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes the specified metric filter.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `filterName` __:__ `String`


-}

deleteMetricFilter :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteMetricFilter logGroupName filterName =
    
    let
        requestInput = DeleteMetricFilterRequest
            
            logGroupName
            
            filterName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteMetricFilterRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteMetricFilter"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a resource policy from this account. This revokes the access of the identities in that policy to put log events to this account.</p>

__Required Parameters__



-}

deleteResourcePolicy :
  
  
    ( DeleteResourcePolicyOptions -> DeleteResourcePolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteResourcePolicy setOptions =
    
    let
        requestInput = DeleteResourcePolicyRequest
            
            options.policyName
            
        
        options = setOptions (DeleteResourcePolicyOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteResourcePolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteResourcePolicy"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a deleteResourcePolicy request
-}
type alias DeleteResourcePolicyOptions =
    {
    policyName : Maybe String
    }



{-| <p>Deletes the specified retention policy.</p> <p>Log events do not expire if they belong to log groups without a retention policy.</p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}

deleteRetentionPolicy :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteRetentionPolicy logGroupName =
    
    let
        requestInput = DeleteRetentionPolicyRequest
            
            logGroupName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRetentionPolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRetentionPolicy"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes the specified subscription filter.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `filterName` __:__ `String`


-}

deleteSubscriptionFilter :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteSubscriptionFilter logGroupName filterName =
    
    let
        requestInput = DeleteSubscriptionFilterRequest
            
            logGroupName
            
            filterName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteSubscriptionFilterRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteSubscriptionFilter"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Lists all your destinations. The results are ASCII-sorted by destination name.</p>

__Required Parameters__



-}

describeDestinations :
  
  
    ( DescribeDestinationsOptions -> DescribeDestinationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDestinationsResponse)

describeDestinations setOptions =
    
    let
        requestInput = DescribeDestinationsRequest
            
            options.destinationNamePrefix
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (DescribeDestinationsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeDestinationsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDestinations"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDestinationsResponse" describeDestinationsResponseDecoder)
                
            )



{-| Options for a describeDestinations request
-}
type alias DescribeDestinationsOptions =
    {
    destinationNamePrefix : Maybe String,nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>Lists the specified export tasks. You can list all your export tasks or filter the results based on task ID or task status.</p>

__Required Parameters__



-}

describeExportTasks :
  
  
    ( DescribeExportTasksOptions -> DescribeExportTasksOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeExportTasksResponse)

describeExportTasks setOptions =
    
    let
        requestInput = DescribeExportTasksRequest
            
            options.taskId
            
            options.statusCode
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (DescribeExportTasksOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeExportTasksRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeExportTasks"
                
                (AWS.Core.Decode.ResultDecoder "DescribeExportTasksResponse" describeExportTasksResponseDecoder)
                
            )



{-| Options for a describeExportTasks request
-}
type alias DescribeExportTasksOptions =
    {
    taskId : Maybe String,statusCode : Maybe ExportTaskStatusCode,nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.</p>

__Required Parameters__



-}

describeLogGroups :
  
  
    ( DescribeLogGroupsOptions -> DescribeLogGroupsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLogGroupsResponse)

describeLogGroups setOptions =
    
    let
        requestInput = DescribeLogGroupsRequest
            
            options.logGroupNamePrefix
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (DescribeLogGroupsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeLogGroupsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeLogGroups"
                
                (AWS.Core.Decode.ResultDecoder "DescribeLogGroupsResponse" describeLogGroupsResponseDecoder)
                
            )



{-| Options for a describeLogGroups request
-}
type alias DescribeLogGroupsOptions =
    {
    logGroupNamePrefix : Maybe String,nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered.</p> <p>This operation has a limit of five transactions per second, after which transactions are throttled.</p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}

describeLogStreams :
  
    String ->
  
  
    ( DescribeLogStreamsOptions -> DescribeLogStreamsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLogStreamsResponse)

describeLogStreams logGroupName setOptions =
    
    let
        requestInput = DescribeLogStreamsRequest
            
            logGroupName
            
            options.logStreamNamePrefix
            
            options.orderBy
            
            options.descending
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (DescribeLogStreamsOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeLogStreamsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeLogStreams"
                
                (AWS.Core.Decode.ResultDecoder "DescribeLogStreamsResponse" describeLogStreamsResponseDecoder)
                
            )



{-| Options for a describeLogStreams request
-}
type alias DescribeLogStreamsOptions =
    {
    logStreamNamePrefix : Maybe String,orderBy : Maybe OrderBy,descending : Maybe Bool,nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>Lists the specified metric filters. You can list all the metric filters or filter the results by log name, prefix, metric name, or metric namespace. The results are ASCII-sorted by filter name.</p>

__Required Parameters__



-}

describeMetricFilters :
  
  
    ( DescribeMetricFiltersOptions -> DescribeMetricFiltersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeMetricFiltersResponse)

describeMetricFilters setOptions =
    
    let
        requestInput = DescribeMetricFiltersRequest
            
            options.logGroupName
            
            options.filterNamePrefix
            
            options.nextToken
            
            options.limit
            
            options.metricName
            
            options.metricNamespace
            
        
        options = setOptions (DescribeMetricFiltersOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeMetricFiltersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeMetricFilters"
                
                (AWS.Core.Decode.ResultDecoder "DescribeMetricFiltersResponse" describeMetricFiltersResponseDecoder)
                
            )



{-| Options for a describeMetricFilters request
-}
type alias DescribeMetricFiltersOptions =
    {
    logGroupName : Maybe String,filterNamePrefix : Maybe String,nextToken : Maybe String,limit : Maybe Int,metricName : Maybe String,metricNamespace : Maybe String
    }



{-| <p>Returns a list of CloudWatch Logs Insights queries that are scheduled, executing, or have been executed recently in this account. You can request all queries, or limit it to queries of a specific log group or queries with a certain status.</p>

__Required Parameters__



-}

describeQueries :
  
  
    ( DescribeQueriesOptions -> DescribeQueriesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeQueriesResponse)

describeQueries setOptions =
    
    let
        requestInput = DescribeQueriesRequest
            
            options.logGroupName
            
            options.status
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeQueriesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeQueriesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeQueries"
                
                (AWS.Core.Decode.ResultDecoder "DescribeQueriesResponse" describeQueriesResponseDecoder)
                
            )



{-| Options for a describeQueries request
-}
type alias DescribeQueriesOptions =
    {
    logGroupName : Maybe String,status : Maybe QueryStatus,maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Lists the resource policies in this account.</p>

__Required Parameters__



-}

describeResourcePolicies :
  
  
    ( DescribeResourcePoliciesOptions -> DescribeResourcePoliciesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeResourcePoliciesResponse)

describeResourcePolicies setOptions =
    
    let
        requestInput = DescribeResourcePoliciesRequest
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (DescribeResourcePoliciesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeResourcePoliciesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeResourcePolicies"
                
                (AWS.Core.Decode.ResultDecoder "DescribeResourcePoliciesResponse" describeResourcePoliciesResponseDecoder)
                
            )



{-| Options for a describeResourcePolicies request
-}
type alias DescribeResourcePoliciesOptions =
    {
    nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.</p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}

describeSubscriptionFilters :
  
    String ->
  
  
    ( DescribeSubscriptionFiltersOptions -> DescribeSubscriptionFiltersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSubscriptionFiltersResponse)

describeSubscriptionFilters logGroupName setOptions =
    
    let
        requestInput = DescribeSubscriptionFiltersRequest
            
            logGroupName
            
            options.filterNamePrefix
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (DescribeSubscriptionFiltersOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeSubscriptionFiltersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeSubscriptionFilters"
                
                (AWS.Core.Decode.ResultDecoder "DescribeSubscriptionFiltersResponse" describeSubscriptionFiltersResponseDecoder)
                
            )



{-| Options for a describeSubscriptionFilters request
-}
type alias DescribeSubscriptionFiltersOptions =
    {
    filterNamePrefix : Maybe String,nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>Disassociates the associated AWS Key Management Service (AWS KMS) customer master key (CMK) from the specified log group.</p> <p>After the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested.</p> <p>Note that it can take up to 5 minutes for this operation to take effect.</p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}

disassociateKmsKey :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

disassociateKmsKey logGroupName =
    
    let
        requestInput = DisassociateKmsKeyRequest
            
            logGroupName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disassociateKmsKeyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisassociateKmsKey"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream.</p> <p>By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events), or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call.</p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}

filterLogEvents :
  
    String ->
  
  
    ( FilterLogEventsOptions -> FilterLogEventsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper FilterLogEventsResponse)

filterLogEvents logGroupName setOptions =
    
    let
        requestInput = FilterLogEventsRequest
            
            logGroupName
            
            options.logStreamNames
            
            options.logStreamNamePrefix
            
            options.startTime
            
            options.endTime
            
            options.filterPattern
            
            options.nextToken
            
            options.limit
            
            options.interleaved
            
        
        options = setOptions (FilterLogEventsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> filterLogEventsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "FilterLogEvents"
                
                (AWS.Core.Decode.ResultDecoder "FilterLogEventsResponse" filterLogEventsResponseDecoder)
                
            )



{-| Options for a filterLogEvents request
-}
type alias FilterLogEventsOptions =
    {
    logStreamNames : Maybe (List String),logStreamNamePrefix : Maybe String,startTime : Maybe Int,endTime : Maybe Int,filterPattern : Maybe String,nextToken : Maybe String,limit : Maybe Int,interleaved : Maybe Bool
    }



{-| <p>Lists log events from the specified log stream. You can list all the log events or filter using a time range.</p> <p>By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). You can get additional log events by specifying one of the tokens in a subsequent call.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `logStreamName` __:__ `String`


-}

getLogEvents :
  
    String ->
  
    String ->
  
  
    ( GetLogEventsOptions -> GetLogEventsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLogEventsResponse)

getLogEvents logGroupName logStreamName setOptions =
    
    let
        requestInput = GetLogEventsRequest
            
            logGroupName
            
            logStreamName
            
            options.startTime
            
            options.endTime
            
            options.nextToken
            
            options.limit
            
            options.startFromHead
            
        
        options = setOptions (GetLogEventsOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getLogEventsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetLogEvents"
                
                (AWS.Core.Decode.ResultDecoder "GetLogEventsResponse" getLogEventsResponseDecoder)
                
            )



{-| Options for a getLogEvents request
-}
type alias GetLogEventsOptions =
    {
    startTime : Maybe Int,endTime : Maybe Int,nextToken : Maybe String,limit : Maybe Int,startFromHead : Maybe Bool
    }



{-| <p>Returns a list of the fields that are included in log events in the specified log group, along with the percentage of log events that contain each field. The search is limited to a time period that you specify.</p> <p>In the results, fields that start with @ are fields generated by CloudWatch Logs. For example, <code>@timestamp</code> is the timestamp of each log event.</p> <p>The response results are sorted by the frequency percentage, starting with the highest percentage.</p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}

getLogGroupFields :
  
    String ->
  
  
    ( GetLogGroupFieldsOptions -> GetLogGroupFieldsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLogGroupFieldsResponse)

getLogGroupFields logGroupName setOptions =
    
    let
        requestInput = GetLogGroupFieldsRequest
            
            logGroupName
            
            options.time
            
        
        options = setOptions (GetLogGroupFieldsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getLogGroupFieldsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetLogGroupFields"
                
                (AWS.Core.Decode.ResultDecoder "GetLogGroupFieldsResponse" getLogGroupFieldsResponseDecoder)
                
            )



{-| Options for a getLogGroupFields request
-}
type alias GetLogGroupFieldsOptions =
    {
    time : Maybe Int
    }



{-| <p>Retrieves all the fields and values of a single log event. All fields are retrieved, even if the original query that produced the <code>logRecordPointer</code> retrieved only a subset of fields. Fields are returned as field name/field value pairs.</p> <p>Additionally, the entire unparsed log event is returned within <code>@message</code>.</p>

__Required Parameters__

* `logRecordPointer` __:__ `String`


-}

getLogRecord :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLogRecordResponse)

getLogRecord logRecordPointer =
    
    let
        requestInput = GetLogRecordRequest
            
            logRecordPointer
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getLogRecordRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetLogRecord"
                
                (AWS.Core.Decode.ResultDecoder "GetLogRecordResponse" getLogRecordResponseDecoder)
                
            )





{-| <p>Returns the results from the specified query.</p> <p>Only the fields requested in the query are returned, along with a <code>@ptr</code> field which is the identifier for the log record. You can use the value of <code>@ptr</code> in a operation to get the full log record.</p> <p> <code>GetQueryResults</code> does not start a query execution. To run a query, use .</p> <p>If the value of the <code>Status</code> field in the output is <code>Running</code>, this operation returns only partial results. If you see a value of <code>Scheduled</code> or <code>Running</code> for the status, you can retry the operation later to see the final results. </p>

__Required Parameters__

* `queryId` __:__ `String`


-}

getQueryResults :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetQueryResultsResponse)

getQueryResults queryId =
    
    let
        requestInput = GetQueryResultsRequest
            
            queryId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getQueryResultsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetQueryResults"
                
                (AWS.Core.Decode.ResultDecoder "GetQueryResultsResponse" getQueryResultsResponseDecoder)
                
            )





{-| <p>Lists the tags for the specified log group.</p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}

listTagsLogGroup :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsLogGroupResponse)

listTagsLogGroup logGroupName =
    
    let
        requestInput = ListTagsLogGroupRequest
            
            logGroupName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listTagsLogGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTagsLogGroup"
                
                (AWS.Core.Decode.ResultDecoder "ListTagsLogGroupResponse" listTagsLogGroupResponseDecoder)
                
            )





{-| <p>Creates or updates a destination. A destination encapsulates a physical resource (such as an Amazon Kinesis stream) and enables you to subscribe to a real-time stream of log events for a different account, ingested using <a>PutLogEvents</a>. A destination can be an Amazon Kinesis stream, Amazon Kinesis Data Firehose strea, or an AWS Lambda function.</p> <p>Through an access policy, a destination controls what is written to it. By default, <code>PutDestination</code> does not set any access policy with the destination, which means a cross-account user cannot call <a>PutSubscriptionFilter</a> against this destination. To enable this, the destination owner must call <a>PutDestinationPolicy</a> after <code>PutDestination</code>.</p>

__Required Parameters__

* `destinationName` __:__ `String`
* `targetArn` __:__ `String`
* `roleArn` __:__ `String`


-}

putDestination :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutDestinationResponse)

putDestination destinationName targetArn roleArn =
    
    let
        requestInput = PutDestinationRequest
            
            destinationName
            
            targetArn
            
            roleArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putDestinationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutDestination"
                
                (AWS.Core.Decode.ResultDecoder "PutDestinationResponse" putDestinationResponseDecoder)
                
            )





{-| <p>Creates or updates an access policy associated with an existing destination. An access policy is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html">IAM policy document</a> that is used to authorize claims to register a subscription filter against a given destination.</p>

__Required Parameters__

* `destinationName` __:__ `String`
* `accessPolicy` __:__ `String`


-}

putDestinationPolicy :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

putDestinationPolicy destinationName accessPolicy =
    
    let
        requestInput = PutDestinationPolicyRequest
            
            destinationName
            
            accessPolicy
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putDestinationPolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutDestinationPolicy"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Uploads a batch of log events to the specified log stream.</p> <p>You must include the sequence token obtained from the response of the previous call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token using <a>DescribeLogStreams</a>. If you call <code>PutLogEvents</code> twice within a narrow time period using the same value for <code>sequenceToken</code>, both calls may be successful, or one may be rejected.</p> <p>The batch of events must satisfy the following constraints:</p> <ul> <li> <p>The maximum batch size is 1,048,576 bytes, and this size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.</p> </li> <li> <p>None of the log events in the batch can be more than 2 hours in the future.</p> </li> <li> <p>None of the log events in the batch can be older than 14 days or older than the retention period of the log group.</p> </li> <li> <p>The log events in the batch must be in chronological ordered by their timestamp. The timestamp is the time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. (In AWS Tools for PowerShell and the AWS SDK for .NET, the timestamp is specified in .NET format: yyyy-mm-ddThh:mm:ss. For example, 2017-09-15T13:45:30.) </p> </li> <li> <p>The maximum number of log events in a batch is 10,000.</p> </li> <li> <p>A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.</p> </li> </ul> <p>If a call to PutLogEvents returns "UnrecognizedClientException" the most likely cause is an invalid AWS access key ID or secret key. </p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `logStreamName` __:__ `String`
* `logEvents` __:__ `(List InputLogEvent)`


-}

putLogEvents :
  
    String ->
  
    String ->
  
    (List InputLogEvent) ->
  
  
    ( PutLogEventsOptions -> PutLogEventsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutLogEventsResponse)

putLogEvents logGroupName logStreamName logEvents setOptions =
    
    let
        requestInput = PutLogEventsRequest
            
            logGroupName
            
            logStreamName
            
            logEvents
            
            options.sequenceToken
            
        
        options = setOptions (PutLogEventsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putLogEventsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutLogEvents"
                
                (AWS.Core.Decode.ResultDecoder "PutLogEventsResponse" putLogEventsResponseDecoder)
                
            )



{-| Options for a putLogEvents request
-}
type alias PutLogEventsOptions =
    {
    sequenceToken : Maybe String
    }



{-| <p>Creates or updates a metric filter and associates it with the specified log group. Metric filters allow you to configure rules to extract metric data from log events ingested through <a>PutLogEvents</a>.</p> <p>The maximum number of metric filters that can be associated with a log group is 100.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `filterName` __:__ `String`
* `filterPattern` __:__ `String`
* `metricTransformations` __:__ `(List MetricTransformation)`


-}

putMetricFilter :
  
    String ->
  
    String ->
  
    String ->
  
    (List MetricTransformation) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

putMetricFilter logGroupName filterName filterPattern metricTransformations =
    
    let
        requestInput = PutMetricFilterRequest
            
            logGroupName
            
            filterName
            
            filterPattern
            
            metricTransformations
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putMetricFilterRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutMetricFilter"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Creates or updates a resource policy allowing other AWS services to put log events to this account, such as Amazon Route 53. An account can have up to 10 resource policies per region.</p>

__Required Parameters__



-}

putResourcePolicy :
  
  
    ( PutResourcePolicyOptions -> PutResourcePolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutResourcePolicyResponse)

putResourcePolicy setOptions =
    
    let
        requestInput = PutResourcePolicyRequest
            
            options.policyName
            
            options.policyDocument
            
        
        options = setOptions (PutResourcePolicyOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putResourcePolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutResourcePolicy"
                
                (AWS.Core.Decode.ResultDecoder "PutResourcePolicyResponse" putResourcePolicyResponseDecoder)
                
            )



{-| Options for a putResourcePolicy request
-}
type alias PutResourcePolicyOptions =
    {
    policyName : Maybe String,policyDocument : Maybe String
    }



{-| <p>Sets the retention of the specified log group. A retention policy allows you to configure the number of days for which to retain log events in the specified log group.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `retentionInDays` __:__ `Int`


-}

putRetentionPolicy :
  
    String ->
  
    Int ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

putRetentionPolicy logGroupName retentionInDays =
    
    let
        requestInput = PutRetentionPolicyRequest
            
            logGroupName
            
            retentionInDays
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putRetentionPolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutRetentionPolicy"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Creates or updates a subscription filter and associates it with the specified log group. Subscription filters allow you to subscribe to a real-time stream of log events ingested through <a>PutLogEvents</a> and have them delivered to a specific destination. Currently, the supported destinations are:</p> <ul> <li> <p>An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.</p> </li> <li> <p>A logical destination that belongs to a different account, for cross-account delivery.</p> </li> <li> <p>An Amazon Kinesis Firehose delivery stream that belongs to the same account as the subscription filter, for same-account delivery.</p> </li> <li> <p>An AWS Lambda function that belongs to the same account as the subscription filter, for same-account delivery.</p> </li> </ul> <p>There can only be one subscription filter associated with a log group. If you are updating an existing filter, you must specify the correct name in <code>filterName</code>. Otherwise, the call fails because you cannot associate a second filter with a log group.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `filterName` __:__ `String`
* `filterPattern` __:__ `String`
* `destinationArn` __:__ `String`


-}

putSubscriptionFilter :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( PutSubscriptionFilterOptions -> PutSubscriptionFilterOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

putSubscriptionFilter logGroupName filterName filterPattern destinationArn setOptions =
    
    let
        requestInput = PutSubscriptionFilterRequest
            
            logGroupName
            
            filterName
            
            filterPattern
            
            destinationArn
            
            options.roleArn
            
            options.distribution
            
        
        options = setOptions (PutSubscriptionFilterOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putSubscriptionFilterRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutSubscriptionFilter"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a putSubscriptionFilter request
-}
type alias PutSubscriptionFilterOptions =
    {
    roleArn : Maybe String,distribution : Maybe Distribution
    }



{-| <p>Schedules a query of a log group using CloudWatch Logs Insights. You specify the log group and time range to query, and the query string to use.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html">CloudWatch Logs Insights Query Syntax</a>.</p> <p>Queries time out after 15 minutes of execution. If your queries are timing out, reduce the time range being searched, or partition your query into a number of queries.</p>

__Required Parameters__

* `startTime` __:__ `Int`
* `endTime` __:__ `Int`
* `queryString` __:__ `String`


-}

startQuery :
  
    Int ->
  
    Int ->
  
    String ->
  
  
    ( StartQueryOptions -> StartQueryOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartQueryResponse)

startQuery startTime endTime queryString setOptions =
    
    let
        requestInput = StartQueryRequest
            
            options.logGroupName
            
            options.logGroupNames
            
            startTime
            
            endTime
            
            queryString
            
            options.limit
            
        
        options = setOptions (StartQueryOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startQueryRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartQuery"
                
                (AWS.Core.Decode.ResultDecoder "StartQueryResponse" startQueryResponseDecoder)
                
            )



{-| Options for a startQuery request
-}
type alias StartQueryOptions =
    {
    logGroupName : Maybe String,logGroupNames : Maybe (List String),limit : Maybe Int
    }



{-| <p>Stops a CloudWatch Logs Insights query that is in progress. If the query has already ended, the operation returns an error indicating that the specified query is not running.</p>

__Required Parameters__

* `queryId` __:__ `String`


-}

stopQuery :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopQueryResponse)

stopQuery queryId =
    
    let
        requestInput = StopQueryRequest
            
            queryId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopQueryRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopQuery"
                
                (AWS.Core.Decode.ResultDecoder "StopQueryResponse" stopQueryResponseDecoder)
                
            )





{-| <p>Adds or updates the specified tags for the specified log group.</p> <p>To list the tags for a log group, use <a>ListTagsLogGroup</a>. To remove tags, use <a>UntagLogGroup</a>.</p> <p>For more information about tags, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/log-group-tagging.html">Tag Log Groups in Amazon CloudWatch Logs</a> in the <i>Amazon CloudWatch Logs User Guide</i>.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `tags` __:__ `(Dict String String)`


-}

tagLogGroup :
  
    String ->
  
    (Dict String String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

tagLogGroup logGroupName tags =
    
    let
        requestInput = TagLogGroupRequest
            
            logGroupName
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> tagLogGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TagLogGroup"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Tests the filter pattern of a metric filter against a sample of log event messages. You can use this operation to validate the correctness of a metric filter pattern.</p>

__Required Parameters__

* `filterPattern` __:__ `String`
* `logEventMessages` __:__ `(List String)`


-}

testMetricFilter :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TestMetricFilterResponse)

testMetricFilter filterPattern logEventMessages =
    
    let
        requestInput = TestMetricFilterRequest
            
            filterPattern
            
            logEventMessages
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> testMetricFilterRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TestMetricFilter"
                
                (AWS.Core.Decode.ResultDecoder "TestMetricFilterResponse" testMetricFilterResponseDecoder)
                
            )





{-| <p>Removes the specified tags from the specified log group.</p> <p>To list the tags for a log group, use <a>ListTagsLogGroup</a>. To add tags, use <a>UntagLogGroup</a>.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `tags` __:__ `(List String)`


-}

untagLogGroup :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

untagLogGroup logGroupName tags =
    
    let
        requestInput = UntagLogGroupRequest
            
            logGroupName
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> untagLogGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UntagLogGroup"
                
                (AWS.Core.Decode.FixedResult ())
                
            )






{-| Type of HTTP response from createExportTask
-}
type alias CreateExportTaskResponse =
    { taskId : Maybe String
    }



createExportTaskResponseDecoder : JD.Decoder CreateExportTaskResponse
createExportTaskResponseDecoder =
    JD.succeed CreateExportTaskResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["taskId", "TaskId"]
            JD.string
        )
        




createExportTaskResponseToString : CreateExportTaskResponse -> String -- List (String, String)
createExportTaskResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "taskId" "" -- val.taskId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeDestinations
-}
type alias DescribeDestinationsResponse =
    { destinations : Maybe (List Destination)
    , nextToken : Maybe String
    }



describeDestinationsResponseDecoder : JD.Decoder DescribeDestinationsResponse
describeDestinationsResponseDecoder =
    JD.succeed DescribeDestinationsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destinations", "Destinations"]
            (JD.list destinationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeDestinationsResponseToString : DescribeDestinationsResponse -> String -- List (String, String)
describeDestinationsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "destinations" "" -- val.destinations
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeExportTasks
-}
type alias DescribeExportTasksResponse =
    { exportTasks : Maybe (List ExportTask)
    , nextToken : Maybe String
    }



describeExportTasksResponseDecoder : JD.Decoder DescribeExportTasksResponse
describeExportTasksResponseDecoder =
    JD.succeed DescribeExportTasksResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["exportTasks", "ExportTasks"]
            (JD.list exportTaskDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeExportTasksResponseToString : DescribeExportTasksResponse -> String -- List (String, String)
describeExportTasksResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "exportTasks" "" -- val.exportTasks
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeLogGroups
-}
type alias DescribeLogGroupsResponse =
    { logGroups : Maybe (List LogGroup)
    , nextToken : Maybe String
    }



describeLogGroupsResponseDecoder : JD.Decoder DescribeLogGroupsResponse
describeLogGroupsResponseDecoder =
    JD.succeed DescribeLogGroupsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logGroups", "LogGroups"]
            (JD.list logGroupDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeLogGroupsResponseToString : DescribeLogGroupsResponse -> String -- List (String, String)
describeLogGroupsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logGroups" "" -- val.logGroups
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeLogStreams
-}
type alias DescribeLogStreamsResponse =
    { logStreams : Maybe (List LogStream)
    , nextToken : Maybe String
    }



describeLogStreamsResponseDecoder : JD.Decoder DescribeLogStreamsResponse
describeLogStreamsResponseDecoder =
    JD.succeed DescribeLogStreamsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logStreams", "LogStreams"]
            (JD.list logStreamDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeLogStreamsResponseToString : DescribeLogStreamsResponse -> String -- List (String, String)
describeLogStreamsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logStreams" "" -- val.logStreams
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeMetricFilters
-}
type alias DescribeMetricFiltersResponse =
    { metricFilters : Maybe (List MetricFilter)
    , nextToken : Maybe String
    }



describeMetricFiltersResponseDecoder : JD.Decoder DescribeMetricFiltersResponse
describeMetricFiltersResponseDecoder =
    JD.succeed DescribeMetricFiltersResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["metricFilters", "MetricFilters"]
            (JD.list metricFilterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeMetricFiltersResponseToString : DescribeMetricFiltersResponse -> String -- List (String, String)
describeMetricFiltersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "metricFilters" "" -- val.metricFilters
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeQueries
-}
type alias DescribeQueriesResponse =
    { queries : Maybe (List QueryInfo)
    , nextToken : Maybe String
    }



describeQueriesResponseDecoder : JD.Decoder DescribeQueriesResponse
describeQueriesResponseDecoder =
    JD.succeed DescribeQueriesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["queries", "Queries"]
            (JD.list queryInfoDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeQueriesResponseToString : DescribeQueriesResponse -> String -- List (String, String)
describeQueriesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "queries" "" -- val.queries
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeResourcePolicies
-}
type alias DescribeResourcePoliciesResponse =
    { resourcePolicies : Maybe (List ResourcePolicy)
    , nextToken : Maybe String
    }



describeResourcePoliciesResponseDecoder : JD.Decoder DescribeResourcePoliciesResponse
describeResourcePoliciesResponseDecoder =
    JD.succeed DescribeResourcePoliciesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourcePolicies", "ResourcePolicies"]
            (JD.list resourcePolicyDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeResourcePoliciesResponseToString : DescribeResourcePoliciesResponse -> String -- List (String, String)
describeResourcePoliciesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourcePolicies" "" -- val.resourcePolicies
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeSubscriptionFilters
-}
type alias DescribeSubscriptionFiltersResponse =
    { subscriptionFilters : Maybe (List SubscriptionFilter)
    , nextToken : Maybe String
    }



describeSubscriptionFiltersResponseDecoder : JD.Decoder DescribeSubscriptionFiltersResponse
describeSubscriptionFiltersResponseDecoder =
    JD.succeed DescribeSubscriptionFiltersResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["subscriptionFilters", "SubscriptionFilters"]
            (JD.list subscriptionFilterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeSubscriptionFiltersResponseToString : DescribeSubscriptionFiltersResponse -> String -- List (String, String)
describeSubscriptionFiltersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subscriptionFilters" "" -- val.subscriptionFilters
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>Represents a cross-account destination that receives subscription log events.</p>
-}
type alias Destination =
    { destinationName : Maybe String
    , targetArn : Maybe String
    , roleArn : Maybe String
    , accessPolicy : Maybe String
    , arn : Maybe String
    , creationTime : Maybe Int
    }



destinationDecoder : JD.Decoder Destination
destinationDecoder =
    JD.succeed Destination
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destinationName", "DestinationName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["targetArn", "TargetArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["roleArn", "RoleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["accessPolicy", "AccessPolicy"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["creationTime", "CreationTime"]
            JD.int
        )
        




destinationToString : Destination -> String -- List (String, String)
destinationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "destinationName" "" -- val.destinationName
        
    --     |> Dict.insert
    --         "targetArn" "" -- val.targetArn
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "accessPolicy" "" -- val.accessPolicy
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.toList
    ""



{-| One of

* `Distribution_Random`
* `Distribution_ByLogStream`

-}
type Distribution
    = Distribution_Random
    | Distribution_ByLogStream



distributionDecoder : JD.Decoder Distribution
distributionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Random" ->
                        JD.succeed Distribution_Random

                    "ByLogStream" ->
                        JD.succeed Distribution_ByLogStream


                    _ ->
                        JD.fail "bad thing"
            )




distributionToString : Distribution -> String
distributionToString val =
    case val of
        Distribution_Random ->
            "Random"

        Distribution_ByLogStream ->
            "ByLogStream"




{-| <p>Represents an export task.</p>
-}
type alias ExportTask =
    { taskId : Maybe String
    , taskName : Maybe String
    , logGroupName : Maybe String
    , from : Maybe Int
    , to : Maybe Int
    , destination : Maybe String
    , destinationPrefix : Maybe String
    , status : Maybe ExportTaskStatus
    , executionInfo : Maybe ExportTaskExecutionInfo
    }



exportTaskDecoder : JD.Decoder ExportTask
exportTaskDecoder =
    JD.succeed ExportTask
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["taskId", "TaskId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["taskName", "TaskName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logGroupName", "LogGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["from", "From"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["to", "To"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destination", "Destination"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destinationPrefix", "DestinationPrefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            exportTaskStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["executionInfo", "ExecutionInfo"]
            exportTaskExecutionInfoDecoder
        )
        




exportTaskToString : ExportTask -> String -- List (String, String)
exportTaskToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "taskId" "" -- val.taskId
        
    --     |> Dict.insert
    --         "taskName" "" -- val.taskName
        
    --     |> Dict.insert
    --         "logGroupName" "" -- val.logGroupName
        
    --     |> Dict.insert
    --         "from" "" -- val.from
        
    --     |> Dict.insert
    --         "to" "" -- val.to
        
    --     |> Dict.insert
    --         "destination" "" -- val.destination
        
    --     |> Dict.insert
    --         "destinationPrefix" "" -- val.destinationPrefix
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "executionInfo" "" -- val.executionInfo
        
    --     |> Dict.toList
    ""



{-| <p>Represents the status of an export task.</p>
-}
type alias ExportTaskExecutionInfo =
    { creationTime : Maybe Int
    , completionTime : Maybe Int
    }



exportTaskExecutionInfoDecoder : JD.Decoder ExportTaskExecutionInfo
exportTaskExecutionInfoDecoder =
    JD.succeed ExportTaskExecutionInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["creationTime", "CreationTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["completionTime", "CompletionTime"]
            JD.int
        )
        




exportTaskExecutionInfoToString : ExportTaskExecutionInfo -> String -- List (String, String)
exportTaskExecutionInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "completionTime" "" -- val.completionTime
        
    --     |> Dict.toList
    ""



{-| <p>Represents the status of an export task.</p>
-}
type alias ExportTaskStatus =
    { code : Maybe ExportTaskStatusCode
    , message : Maybe String
    }



exportTaskStatusDecoder : JD.Decoder ExportTaskStatus
exportTaskStatusDecoder =
    JD.succeed ExportTaskStatus
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["code", "Code"]
            exportTaskStatusCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




exportTaskStatusToString : ExportTaskStatus -> String -- List (String, String)
exportTaskStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| One of

* `ExportTaskStatusCode_CANCELLED`
* `ExportTaskStatusCode_COMPLETED`
* `ExportTaskStatusCode_FAILED`
* `ExportTaskStatusCode_PENDING`
* `ExportTaskStatusCode_PENDING_CANCEL`
* `ExportTaskStatusCode_RUNNING`

-}
type ExportTaskStatusCode
    = ExportTaskStatusCode_CANCELLED
    | ExportTaskStatusCode_COMPLETED
    | ExportTaskStatusCode_FAILED
    | ExportTaskStatusCode_PENDING
    | ExportTaskStatusCode_PENDING_CANCEL
    | ExportTaskStatusCode_RUNNING



exportTaskStatusCodeDecoder : JD.Decoder ExportTaskStatusCode
exportTaskStatusCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CANCELLED" ->
                        JD.succeed ExportTaskStatusCode_CANCELLED

                    "COMPLETED" ->
                        JD.succeed ExportTaskStatusCode_COMPLETED

                    "FAILED" ->
                        JD.succeed ExportTaskStatusCode_FAILED

                    "PENDING" ->
                        JD.succeed ExportTaskStatusCode_PENDING

                    "PENDING_CANCEL" ->
                        JD.succeed ExportTaskStatusCode_PENDING_CANCEL

                    "RUNNING" ->
                        JD.succeed ExportTaskStatusCode_RUNNING


                    _ ->
                        JD.fail "bad thing"
            )




exportTaskStatusCodeToString : ExportTaskStatusCode -> String
exportTaskStatusCodeToString val =
    case val of
        ExportTaskStatusCode_CANCELLED ->
            "CANCELLED"

        ExportTaskStatusCode_COMPLETED ->
            "COMPLETED"

        ExportTaskStatusCode_FAILED ->
            "FAILED"

        ExportTaskStatusCode_PENDING ->
            "PENDING"

        ExportTaskStatusCode_PENDING_CANCEL ->
            "PENDING_CANCEL"

        ExportTaskStatusCode_RUNNING ->
            "RUNNING"




{-| Type of HTTP response from filterLogEvents
-}
type alias FilterLogEventsResponse =
    { events : Maybe (List FilteredLogEvent)
    , searchedLogStreams : Maybe (List SearchedLogStream)
    , nextToken : Maybe String
    }



filterLogEventsResponseDecoder : JD.Decoder FilterLogEventsResponse
filterLogEventsResponseDecoder =
    JD.succeed FilterLogEventsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["events", "Events"]
            (JD.list filteredLogEventDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["searchedLogStreams", "SearchedLogStreams"]
            (JD.list searchedLogStreamDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




filterLogEventsResponseToString : FilterLogEventsResponse -> String -- List (String, String)
filterLogEventsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "events" "" -- val.events
        
    --     |> Dict.insert
    --         "searchedLogStreams" "" -- val.searchedLogStreams
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>Represents a matched event.</p>
-}
type alias FilteredLogEvent =
    { logStreamName : Maybe String
    , timestamp : Maybe Int
    , message : Maybe String
    , ingestionTime : Maybe Int
    , eventId : Maybe String
    }



filteredLogEventDecoder : JD.Decoder FilteredLogEvent
filteredLogEventDecoder =
    JD.succeed FilteredLogEvent
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logStreamName", "LogStreamName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["timestamp", "Timestamp"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ingestionTime", "IngestionTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventId", "EventId"]
            JD.string
        )
        




filteredLogEventToString : FilteredLogEvent -> String -- List (String, String)
filteredLogEventToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logStreamName" "" -- val.logStreamName
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "ingestionTime" "" -- val.ingestionTime
        
    --     |> Dict.insert
    --         "eventId" "" -- val.eventId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getLogEvents
-}
type alias GetLogEventsResponse =
    { events : Maybe (List OutputLogEvent)
    , nextForwardToken : Maybe String
    , nextBackwardToken : Maybe String
    }



getLogEventsResponseDecoder : JD.Decoder GetLogEventsResponse
getLogEventsResponseDecoder =
    JD.succeed GetLogEventsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["events", "Events"]
            (JD.list outputLogEventDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextForwardToken", "NextForwardToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextBackwardToken", "NextBackwardToken"]
            JD.string
        )
        




getLogEventsResponseToString : GetLogEventsResponse -> String -- List (String, String)
getLogEventsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "events" "" -- val.events
        
    --     |> Dict.insert
    --         "nextForwardToken" "" -- val.nextForwardToken
        
    --     |> Dict.insert
    --         "nextBackwardToken" "" -- val.nextBackwardToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getLogGroupFields
-}
type alias GetLogGroupFieldsResponse =
    { logGroupFields : Maybe (List LogGroupField)
    }



getLogGroupFieldsResponseDecoder : JD.Decoder GetLogGroupFieldsResponse
getLogGroupFieldsResponseDecoder =
    JD.succeed GetLogGroupFieldsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logGroupFields", "LogGroupFields"]
            (JD.list logGroupFieldDecoder)
        )
        




getLogGroupFieldsResponseToString : GetLogGroupFieldsResponse -> String -- List (String, String)
getLogGroupFieldsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logGroupFields" "" -- val.logGroupFields
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getLogRecord
-}
type alias GetLogRecordResponse =
    { logRecord : Maybe (Dict String String)
    }



getLogRecordResponseDecoder : JD.Decoder GetLogRecordResponse
getLogRecordResponseDecoder =
    JD.succeed GetLogRecordResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logRecord", "LogRecord"]
            (AWS.Core.Decode.dict JD.string)
        )
        




getLogRecordResponseToString : GetLogRecordResponse -> String -- List (String, String)
getLogRecordResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logRecord" "" -- val.logRecord
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getQueryResults
-}
type alias GetQueryResultsResponse =
    { results : Maybe (List (List ResultField))
    , statistics : Maybe QueryStatistics
    , status : Maybe QueryStatus
    }



getQueryResultsResponseDecoder : JD.Decoder GetQueryResultsResponse
getQueryResultsResponseDecoder =
    JD.succeed GetQueryResultsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["results", "Results"]
            (JD.list (JD.list resultFieldDecoder))
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["statistics", "Statistics"]
            queryStatisticsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            queryStatusDecoder
        )
        




getQueryResultsResponseToString : GetQueryResultsResponse -> String -- List (String, String)
getQueryResultsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "results" "" -- val.results
        
    --     |> Dict.insert
    --         "statistics" "" -- val.statistics
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| <p>Represents a log event, which is a record of activity that was recorded by the application or resource being monitored.</p>
-}
type alias InputLogEvent =
    { timestamp : Int
    , message : String
    }



inputLogEventDecoder : JD.Decoder InputLogEvent
inputLogEventDecoder =
    JD.succeed InputLogEvent
        
        |> JDP.custom (AWS.Core.Decode.required
            ["timestamp", "Timestamp"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["message", "Message"]
            JD.string
        )
        




inputLogEventToString : InputLogEvent -> String -- List (String, String)
inputLogEventToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsLogGroup
-}
type alias ListTagsLogGroupResponse =
    { tags : Maybe (Dict String String)
    }



listTagsLogGroupResponseDecoder : JD.Decoder ListTagsLogGroupResponse
listTagsLogGroupResponseDecoder =
    JD.succeed ListTagsLogGroupResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (AWS.Core.Decode.dict JD.string)
        )
        




listTagsLogGroupResponseToString : ListTagsLogGroupResponse -> String -- List (String, String)
listTagsLogGroupResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>Represents a log group.</p>
-}
type alias LogGroup =
    { logGroupName : Maybe String
    , creationTime : Maybe Int
    , retentionInDays : Maybe Int
    , metricFilterCount : Maybe Int
    , arn : Maybe String
    , storedBytes : Maybe Int
    , kmsKeyId : Maybe String
    }



logGroupDecoder : JD.Decoder LogGroup
logGroupDecoder =
    JD.succeed LogGroup
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logGroupName", "LogGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["creationTime", "CreationTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["retentionInDays", "RetentionInDays"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["metricFilterCount", "MetricFilterCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["storedBytes", "StoredBytes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["kmsKeyId", "KmsKeyId"]
            JD.string
        )
        




logGroupToString : LogGroup -> String -- List (String, String)
logGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logGroupName" "" -- val.logGroupName
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "retentionInDays" "" -- val.retentionInDays
        
    --     |> Dict.insert
    --         "metricFilterCount" "" -- val.metricFilterCount
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "storedBytes" "" -- val.storedBytes
        
    --     |> Dict.insert
    --         "kmsKeyId" "" -- val.kmsKeyId
        
    --     |> Dict.toList
    ""



{-| <p>The fields contained in log events found by a <code>GetLogGroupFields</code> operation, along with the percentage of queried log events in which each field appears.</p>
-}
type alias LogGroupField =
    { name : Maybe String
    , percent : Maybe Int
    }



logGroupFieldDecoder : JD.Decoder LogGroupField
logGroupFieldDecoder =
    JD.succeed LogGroupField
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["percent", "Percent"]
            JD.int
        )
        




logGroupFieldToString : LogGroupField -> String -- List (String, String)
logGroupFieldToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "percent" "" -- val.percent
        
    --     |> Dict.toList
    ""



{-| <p>Represents a log stream, which is a sequence of log events from a single emitter of logs.</p>
-}
type alias LogStream =
    { logStreamName : Maybe String
    , creationTime : Maybe Int
    , firstEventTimestamp : Maybe Int
    , lastEventTimestamp : Maybe Int
    , lastIngestionTime : Maybe Int
    , uploadSequenceToken : Maybe String
    , arn : Maybe String
    , storedBytes : Maybe Int
    }



logStreamDecoder : JD.Decoder LogStream
logStreamDecoder =
    JD.succeed LogStream
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logStreamName", "LogStreamName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["creationTime", "CreationTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["firstEventTimestamp", "FirstEventTimestamp"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastEventTimestamp", "LastEventTimestamp"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastIngestionTime", "LastIngestionTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["uploadSequenceToken", "UploadSequenceToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["storedBytes", "StoredBytes"]
            JD.int
        )
        




logStreamToString : LogStream -> String -- List (String, String)
logStreamToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logStreamName" "" -- val.logStreamName
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "firstEventTimestamp" "" -- val.firstEventTimestamp
        
    --     |> Dict.insert
    --         "lastEventTimestamp" "" -- val.lastEventTimestamp
        
    --     |> Dict.insert
    --         "lastIngestionTime" "" -- val.lastIngestionTime
        
    --     |> Dict.insert
    --         "uploadSequenceToken" "" -- val.uploadSequenceToken
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "storedBytes" "" -- val.storedBytes
        
    --     |> Dict.toList
    ""



{-| <p>Metric filters express how CloudWatch Logs would extract metric observations from ingested log events and transform them into metric data in a CloudWatch metric.</p>
-}
type alias MetricFilter =
    { filterName : Maybe String
    , filterPattern : Maybe String
    , metricTransformations : Maybe (List MetricTransformation)
    , creationTime : Maybe Int
    , logGroupName : Maybe String
    }



metricFilterDecoder : JD.Decoder MetricFilter
metricFilterDecoder =
    JD.succeed MetricFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["filterName", "FilterName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["filterPattern", "FilterPattern"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["metricTransformations", "MetricTransformations"]
            (JD.list metricTransformationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["creationTime", "CreationTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logGroupName", "LogGroupName"]
            JD.string
        )
        




metricFilterToString : MetricFilter -> String -- List (String, String)
metricFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "filterName" "" -- val.filterName
        
    --     |> Dict.insert
    --         "filterPattern" "" -- val.filterPattern
        
    --     |> Dict.insert
    --         "metricTransformations" "" -- val.metricTransformations
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "logGroupName" "" -- val.logGroupName
        
    --     |> Dict.toList
    ""



{-| <p>Represents a matched event.</p>
-}
type alias MetricFilterMatchRecord =
    { eventNumber : Maybe Int
    , eventMessage : Maybe String
    , extractedValues : Maybe (Dict String String)
    }



metricFilterMatchRecordDecoder : JD.Decoder MetricFilterMatchRecord
metricFilterMatchRecordDecoder =
    JD.succeed MetricFilterMatchRecord
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventNumber", "EventNumber"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventMessage", "EventMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["extractedValues", "ExtractedValues"]
            (AWS.Core.Decode.dict JD.string)
        )
        




metricFilterMatchRecordToString : MetricFilterMatchRecord -> String -- List (String, String)
metricFilterMatchRecordToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventNumber" "" -- val.eventNumber
        
    --     |> Dict.insert
    --         "eventMessage" "" -- val.eventMessage
        
    --     |> Dict.insert
    --         "extractedValues" "" -- val.extractedValues
        
    --     |> Dict.toList
    ""



{-| <p>Indicates how to transform ingested log events to metric data in a CloudWatch metric.</p>
-}
type alias MetricTransformation =
    { metricName : String
    , metricNamespace : String
    , metricValue : String
    , defaultValue : Maybe Float
    }



metricTransformationDecoder : JD.Decoder MetricTransformation
metricTransformationDecoder =
    JD.succeed MetricTransformation
        
        |> JDP.custom (AWS.Core.Decode.required
            ["metricName", "MetricName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["metricNamespace", "MetricNamespace"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["metricValue", "MetricValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["defaultValue", "DefaultValue"]
            JD.float
        )
        




metricTransformationToString : MetricTransformation -> String -- List (String, String)
metricTransformationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "metricName" "" -- val.metricName
        
    --     |> Dict.insert
    --         "metricNamespace" "" -- val.metricNamespace
        
    --     |> Dict.insert
    --         "metricValue" "" -- val.metricValue
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.toList
    ""



{-| One of

* `OrderBy_LogStreamName`
* `OrderBy_LastEventTime`

-}
type OrderBy
    = OrderBy_LogStreamName
    | OrderBy_LastEventTime



orderByDecoder : JD.Decoder OrderBy
orderByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "LogStreamName" ->
                        JD.succeed OrderBy_LogStreamName

                    "LastEventTime" ->
                        JD.succeed OrderBy_LastEventTime


                    _ ->
                        JD.fail "bad thing"
            )




orderByToString : OrderBy -> String
orderByToString val =
    case val of
        OrderBy_LogStreamName ->
            "LogStreamName"

        OrderBy_LastEventTime ->
            "LastEventTime"




{-| <p>Represents a log event.</p>
-}
type alias OutputLogEvent =
    { timestamp : Maybe Int
    , message : Maybe String
    , ingestionTime : Maybe Int
    }



outputLogEventDecoder : JD.Decoder OutputLogEvent
outputLogEventDecoder =
    JD.succeed OutputLogEvent
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["timestamp", "Timestamp"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ingestionTime", "IngestionTime"]
            JD.int
        )
        




outputLogEventToString : OutputLogEvent -> String -- List (String, String)
outputLogEventToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "ingestionTime" "" -- val.ingestionTime
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putDestination
-}
type alias PutDestinationResponse =
    { destination : Maybe Destination
    }



putDestinationResponseDecoder : JD.Decoder PutDestinationResponse
putDestinationResponseDecoder =
    JD.succeed PutDestinationResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destination", "Destination"]
            destinationDecoder
        )
        




putDestinationResponseToString : PutDestinationResponse -> String -- List (String, String)
putDestinationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "destination" "" -- val.destination
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putLogEvents
-}
type alias PutLogEventsResponse =
    { nextSequenceToken : Maybe String
    , rejectedLogEventsInfo : Maybe RejectedLogEventsInfo
    }



putLogEventsResponseDecoder : JD.Decoder PutLogEventsResponse
putLogEventsResponseDecoder =
    JD.succeed PutLogEventsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextSequenceToken", "NextSequenceToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["rejectedLogEventsInfo", "RejectedLogEventsInfo"]
            rejectedLogEventsInfoDecoder
        )
        




putLogEventsResponseToString : PutLogEventsResponse -> String -- List (String, String)
putLogEventsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextSequenceToken" "" -- val.nextSequenceToken
        
    --     |> Dict.insert
    --         "rejectedLogEventsInfo" "" -- val.rejectedLogEventsInfo
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putResourcePolicy
-}
type alias PutResourcePolicyResponse =
    { resourcePolicy : Maybe ResourcePolicy
    }



putResourcePolicyResponseDecoder : JD.Decoder PutResourcePolicyResponse
putResourcePolicyResponseDecoder =
    JD.succeed PutResourcePolicyResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourcePolicy", "ResourcePolicy"]
            resourcePolicyDecoder
        )
        




putResourcePolicyResponseToString : PutResourcePolicyResponse -> String -- List (String, String)
putResourcePolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourcePolicy" "" -- val.resourcePolicy
        
    --     |> Dict.toList
    ""



{-| <p>Information about one CloudWatch Logs Insights query that matches the request in a <code>DescribeQueries</code> operation. </p>
-}
type alias QueryInfo =
    { queryId : Maybe String
    , queryString : Maybe String
    , status : Maybe QueryStatus
    , createTime : Maybe Int
    , logGroupName : Maybe String
    }



queryInfoDecoder : JD.Decoder QueryInfo
queryInfoDecoder =
    JD.succeed QueryInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["queryId", "QueryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["queryString", "QueryString"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            queryStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createTime", "CreateTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logGroupName", "LogGroupName"]
            JD.string
        )
        




queryInfoToString : QueryInfo -> String -- List (String, String)
queryInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "queryId" "" -- val.queryId
        
    --     |> Dict.insert
    --         "queryString" "" -- val.queryString
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "createTime" "" -- val.createTime
        
    --     |> Dict.insert
    --         "logGroupName" "" -- val.logGroupName
        
    --     |> Dict.toList
    ""



{-| <p>Contains the number of log events scanned by the query, the number of log events that matched the query criteria, and the total number of bytes in the log events that were scanned.</p>
-}
type alias QueryStatistics =
    { recordsMatched : Maybe Float
    , recordsScanned : Maybe Float
    , bytesScanned : Maybe Float
    }



queryStatisticsDecoder : JD.Decoder QueryStatistics
queryStatisticsDecoder =
    JD.succeed QueryStatistics
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["recordsMatched", "RecordsMatched"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["recordsScanned", "RecordsScanned"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bytesScanned", "BytesScanned"]
            JD.float
        )
        




queryStatisticsToString : QueryStatistics -> String -- List (String, String)
queryStatisticsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordsMatched" "" -- val.recordsMatched
        
    --     |> Dict.insert
    --         "recordsScanned" "" -- val.recordsScanned
        
    --     |> Dict.insert
    --         "bytesScanned" "" -- val.bytesScanned
        
    --     |> Dict.toList
    ""



{-| One of

* `QueryStatus_Scheduled`
* `QueryStatus_Running`
* `QueryStatus_Complete`
* `QueryStatus_Failed`
* `QueryStatus_Cancelled`

-}
type QueryStatus
    = QueryStatus_Scheduled
    | QueryStatus_Running
    | QueryStatus_Complete
    | QueryStatus_Failed
    | QueryStatus_Cancelled



queryStatusDecoder : JD.Decoder QueryStatus
queryStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Scheduled" ->
                        JD.succeed QueryStatus_Scheduled

                    "Running" ->
                        JD.succeed QueryStatus_Running

                    "Complete" ->
                        JD.succeed QueryStatus_Complete

                    "Failed" ->
                        JD.succeed QueryStatus_Failed

                    "Cancelled" ->
                        JD.succeed QueryStatus_Cancelled


                    _ ->
                        JD.fail "bad thing"
            )




queryStatusToString : QueryStatus -> String
queryStatusToString val =
    case val of
        QueryStatus_Scheduled ->
            "Scheduled"

        QueryStatus_Running ->
            "Running"

        QueryStatus_Complete ->
            "Complete"

        QueryStatus_Failed ->
            "Failed"

        QueryStatus_Cancelled ->
            "Cancelled"




{-| <p>Represents the rejected events.</p>
-}
type alias RejectedLogEventsInfo =
    { tooNewLogEventStartIndex : Maybe Int
    , tooOldLogEventEndIndex : Maybe Int
    , expiredLogEventEndIndex : Maybe Int
    }



rejectedLogEventsInfoDecoder : JD.Decoder RejectedLogEventsInfo
rejectedLogEventsInfoDecoder =
    JD.succeed RejectedLogEventsInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tooNewLogEventStartIndex", "TooNewLogEventStartIndex"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tooOldLogEventEndIndex", "TooOldLogEventEndIndex"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["expiredLogEventEndIndex", "ExpiredLogEventEndIndex"]
            JD.int
        )
        




rejectedLogEventsInfoToString : RejectedLogEventsInfo -> String -- List (String, String)
rejectedLogEventsInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tooNewLogEventStartIndex" "" -- val.tooNewLogEventStartIndex
        
    --     |> Dict.insert
    --         "tooOldLogEventEndIndex" "" -- val.tooOldLogEventEndIndex
        
    --     |> Dict.insert
    --         "expiredLogEventEndIndex" "" -- val.expiredLogEventEndIndex
        
    --     |> Dict.toList
    ""



{-| <p>A policy enabling one or more entities to put logs to a log group in this account.</p>
-}
type alias ResourcePolicy =
    { policyName : Maybe String
    , policyDocument : Maybe String
    , lastUpdatedTime : Maybe Int
    }



resourcePolicyDecoder : JD.Decoder ResourcePolicy
resourcePolicyDecoder =
    JD.succeed ResourcePolicy
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["policyName", "PolicyName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["policyDocument", "PolicyDocument"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastUpdatedTime", "LastUpdatedTime"]
            JD.int
        )
        




resourcePolicyToString : ResourcePolicy -> String -- List (String, String)
resourcePolicyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policyName" "" -- val.policyName
        
    --     |> Dict.insert
    --         "policyDocument" "" -- val.policyDocument
        
    --     |> Dict.insert
    --         "lastUpdatedTime" "" -- val.lastUpdatedTime
        
    --     |> Dict.toList
    ""



{-| <p>Contains one field from one log event returned by a CloudWatch Logs Insights query, along with the value of that field.</p>
-}
type alias ResultField =
    { field : Maybe String
    , value : Maybe String
    }



resultFieldDecoder : JD.Decoder ResultField
resultFieldDecoder =
    JD.succeed ResultField
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["field", "Field"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["value", "Value"]
            JD.string
        )
        




resultFieldToString : ResultField -> String -- List (String, String)
resultFieldToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "field" "" -- val.field
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| <p>Represents the search status of a log stream.</p>
-}
type alias SearchedLogStream =
    { logStreamName : Maybe String
    , searchedCompletely : Maybe Bool
    }



searchedLogStreamDecoder : JD.Decoder SearchedLogStream
searchedLogStreamDecoder =
    JD.succeed SearchedLogStream
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logStreamName", "LogStreamName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["searchedCompletely", "SearchedCompletely"]
            JD.bool
        )
        




searchedLogStreamToString : SearchedLogStream -> String -- List (String, String)
searchedLogStreamToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logStreamName" "" -- val.logStreamName
        
    --     |> Dict.insert
    --         "searchedCompletely" "" -- val.searchedCompletely
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startQuery
-}
type alias StartQueryResponse =
    { queryId : Maybe String
    }



startQueryResponseDecoder : JD.Decoder StartQueryResponse
startQueryResponseDecoder =
    JD.succeed StartQueryResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["queryId", "QueryId"]
            JD.string
        )
        




startQueryResponseToString : StartQueryResponse -> String -- List (String, String)
startQueryResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "queryId" "" -- val.queryId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopQuery
-}
type alias StopQueryResponse =
    { success : Maybe Bool
    }



stopQueryResponseDecoder : JD.Decoder StopQueryResponse
stopQueryResponseDecoder =
    JD.succeed StopQueryResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["success", "Success"]
            JD.bool
        )
        




stopQueryResponseToString : StopQueryResponse -> String -- List (String, String)
stopQueryResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "success" "" -- val.success
        
    --     |> Dict.toList
    ""



{-| <p>Represents a subscription filter.</p>
-}
type alias SubscriptionFilter =
    { filterName : Maybe String
    , logGroupName : Maybe String
    , filterPattern : Maybe String
    , destinationArn : Maybe String
    , roleArn : Maybe String
    , distribution : Maybe Distribution
    , creationTime : Maybe Int
    }



subscriptionFilterDecoder : JD.Decoder SubscriptionFilter
subscriptionFilterDecoder =
    JD.succeed SubscriptionFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["filterName", "FilterName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logGroupName", "LogGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["filterPattern", "FilterPattern"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destinationArn", "DestinationArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["roleArn", "RoleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["distribution", "Distribution"]
            distributionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["creationTime", "CreationTime"]
            JD.int
        )
        




subscriptionFilterToString : SubscriptionFilter -> String -- List (String, String)
subscriptionFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "filterName" "" -- val.filterName
        
    --     |> Dict.insert
    --         "logGroupName" "" -- val.logGroupName
        
    --     |> Dict.insert
    --         "filterPattern" "" -- val.filterPattern
        
    --     |> Dict.insert
    --         "destinationArn" "" -- val.destinationArn
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "distribution" "" -- val.distribution
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from testMetricFilter
-}
type alias TestMetricFilterResponse =
    { matches : Maybe (List MetricFilterMatchRecord)
    }



testMetricFilterResponseDecoder : JD.Decoder TestMetricFilterResponse
testMetricFilterResponseDecoder =
    JD.succeed TestMetricFilterResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["matches", "Matches"]
            (JD.list metricFilterMatchRecordDecoder)
        )
        




testMetricFilterResponseToString : TestMetricFilterResponse -> String -- List (String, String)
testMetricFilterResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "matches" "" -- val.matches
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias AssociateKmsKeyRequest =
    { logGroupName : String
    , kmsKeyId : String
    }


{-| undefined
-}
type alias CancelExportTaskRequest =
    { taskId : String
    }


{-| undefined
-}
type alias CreateExportTaskRequest =
    { taskName : Maybe String
    , logGroupName : String
    , logStreamNamePrefix : Maybe String
    , from : Int
    , to : Int
    , destination : String
    , destinationPrefix : Maybe String
    }


{-| undefined
-}
type alias CreateLogGroupRequest =
    { logGroupName : String
    , kmsKeyId : Maybe String
    , tags : Maybe (Dict String String)
    }


{-| undefined
-}
type alias CreateLogStreamRequest =
    { logGroupName : String
    , logStreamName : String
    }


{-| undefined
-}
type alias DeleteDestinationRequest =
    { destinationName : String
    }


{-| undefined
-}
type alias DeleteLogGroupRequest =
    { logGroupName : String
    }


{-| undefined
-}
type alias DeleteLogStreamRequest =
    { logGroupName : String
    , logStreamName : String
    }


{-| undefined
-}
type alias DeleteMetricFilterRequest =
    { logGroupName : String
    , filterName : String
    }


{-| undefined
-}
type alias DeleteResourcePolicyRequest =
    { policyName : Maybe String
    }


{-| undefined
-}
type alias DeleteRetentionPolicyRequest =
    { logGroupName : String
    }


{-| undefined
-}
type alias DeleteSubscriptionFilterRequest =
    { logGroupName : String
    , filterName : String
    }


{-| undefined
-}
type alias DescribeDestinationsRequest =
    { destinationNamePrefix : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias DescribeExportTasksRequest =
    { taskId : Maybe String
    , statusCode : Maybe ExportTaskStatusCode
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias DescribeLogGroupsRequest =
    { logGroupNamePrefix : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias DescribeLogStreamsRequest =
    { logGroupName : String
    , logStreamNamePrefix : Maybe String
    , orderBy : Maybe OrderBy
    , descending : Maybe Bool
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias DescribeMetricFiltersRequest =
    { logGroupName : Maybe String
    , filterNamePrefix : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    , metricName : Maybe String
    , metricNamespace : Maybe String
    }


{-| undefined
-}
type alias DescribeQueriesRequest =
    { logGroupName : Maybe String
    , status : Maybe QueryStatus
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeResourcePoliciesRequest =
    { nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias DescribeSubscriptionFiltersRequest =
    { logGroupName : String
    , filterNamePrefix : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias DisassociateKmsKeyRequest =
    { logGroupName : String
    }


{-| undefined
-}
type alias FilterLogEventsRequest =
    { logGroupName : String
    , logStreamNames : Maybe (List String)
    , logStreamNamePrefix : Maybe String
    , startTime : Maybe Int
    , endTime : Maybe Int
    , filterPattern : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    , interleaved : Maybe Bool
    }


{-| undefined
-}
type alias GetLogEventsRequest =
    { logGroupName : String
    , logStreamName : String
    , startTime : Maybe Int
    , endTime : Maybe Int
    , nextToken : Maybe String
    , limit : Maybe Int
    , startFromHead : Maybe Bool
    }


{-| undefined
-}
type alias GetLogGroupFieldsRequest =
    { logGroupName : String
    , time : Maybe Int
    }


{-| undefined
-}
type alias GetLogRecordRequest =
    { logRecordPointer : String
    }


{-| undefined
-}
type alias GetQueryResultsRequest =
    { queryId : String
    }


{-| undefined
-}
type alias ListTagsLogGroupRequest =
    { logGroupName : String
    }


{-| undefined
-}
type alias PutDestinationPolicyRequest =
    { destinationName : String
    , accessPolicy : String
    }


{-| undefined
-}
type alias PutDestinationRequest =
    { destinationName : String
    , targetArn : String
    , roleArn : String
    }


{-| undefined
-}
type alias PutLogEventsRequest =
    { logGroupName : String
    , logStreamName : String
    , logEvents : (List InputLogEvent)
    , sequenceToken : Maybe String
    }


{-| undefined
-}
type alias PutMetricFilterRequest =
    { logGroupName : String
    , filterName : String
    , filterPattern : String
    , metricTransformations : (List MetricTransformation)
    }


{-| undefined
-}
type alias PutResourcePolicyRequest =
    { policyName : Maybe String
    , policyDocument : Maybe String
    }


{-| undefined
-}
type alias PutRetentionPolicyRequest =
    { logGroupName : String
    , retentionInDays : Int
    }


{-| undefined
-}
type alias PutSubscriptionFilterRequest =
    { logGroupName : String
    , filterName : String
    , filterPattern : String
    , destinationArn : String
    , roleArn : Maybe String
    , distribution : Maybe Distribution
    }


{-| undefined
-}
type alias StartQueryRequest =
    { logGroupName : Maybe String
    , logGroupNames : Maybe (List String)
    , startTime : Int
    , endTime : Int
    , queryString : String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias StopQueryRequest =
    { queryId : String
    }


{-| undefined
-}
type alias TagLogGroupRequest =
    { logGroupName : String
    , tags : (Dict String String)
    }


{-| undefined
-}
type alias TestMetricFilterRequest =
    { filterPattern : String
    , logEventMessages : (List String)
    }


{-| undefined
-}
type alias UntagLogGroupRequest =
    { logGroupName : String
    , tags : (List String)
    }






associateKmsKeyRequestEncoder : AssociateKmsKeyRequest -> JE.Value
associateKmsKeyRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> (::) ("kmsKeyId", data.kmsKeyId |> (JE.string))
        
        
        |> JE.object






cancelExportTaskRequestEncoder : CancelExportTaskRequest -> JE.Value
cancelExportTaskRequestEncoder data =
    []
        
        
        |> (::) ("taskId", data.taskId |> (JE.string))
        
        
        |> JE.object






createExportTaskRequestEncoder : CreateExportTaskRequest -> JE.Value
createExportTaskRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("taskName", data.taskName)
        
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logStreamNamePrefix", data.logStreamNamePrefix)
        
        
        
        |> (::) ("from", data.from |> (JE.int))
        
        
        
        |> (::) ("to", data.to |> (JE.int))
        
        
        
        |> (::) ("destination", data.destination |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("destinationPrefix", data.destinationPrefix)
        
        
        |> JE.object






createExportTaskResponseEncoder : CreateExportTaskResponse -> JE.Value
createExportTaskResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("taskId", data.taskId)
        
        
        |> JE.object






createLogGroupRequestEncoder : CreateLogGroupRequest -> JE.Value
createLogGroupRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("kmsKeyId", data.kmsKeyId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("tags", data.tags)
        
        
        |> JE.object






createLogStreamRequestEncoder : CreateLogStreamRequest -> JE.Value
createLogStreamRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> (::) ("logStreamName", data.logStreamName |> (JE.string))
        
        
        |> JE.object






deleteDestinationRequestEncoder : DeleteDestinationRequest -> JE.Value
deleteDestinationRequestEncoder data =
    []
        
        
        |> (::) ("destinationName", data.destinationName |> (JE.string))
        
        
        |> JE.object






deleteLogGroupRequestEncoder : DeleteLogGroupRequest -> JE.Value
deleteLogGroupRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        |> JE.object






deleteLogStreamRequestEncoder : DeleteLogStreamRequest -> JE.Value
deleteLogStreamRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> (::) ("logStreamName", data.logStreamName |> (JE.string))
        
        
        |> JE.object






deleteMetricFilterRequestEncoder : DeleteMetricFilterRequest -> JE.Value
deleteMetricFilterRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> (::) ("filterName", data.filterName |> (JE.string))
        
        
        |> JE.object






deleteResourcePolicyRequestEncoder : DeleteResourcePolicyRequest -> JE.Value
deleteResourcePolicyRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("policyName", data.policyName)
        
        
        |> JE.object






deleteRetentionPolicyRequestEncoder : DeleteRetentionPolicyRequest -> JE.Value
deleteRetentionPolicyRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        |> JE.object






deleteSubscriptionFilterRequestEncoder : DeleteSubscriptionFilterRequest -> JE.Value
deleteSubscriptionFilterRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> (::) ("filterName", data.filterName |> (JE.string))
        
        
        |> JE.object






describeDestinationsRequestEncoder : DescribeDestinationsRequest -> JE.Value
describeDestinationsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DestinationNamePrefix", data.destinationNamePrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("limit", data.limit)
        
        
        |> JE.object






describeDestinationsResponseEncoder : DescribeDestinationsResponse -> JE.Value
describeDestinationsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (destinationEncoder))
            ("destinations", data.destinations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeExportTasksRequestEncoder : DescribeExportTasksRequest -> JE.Value
describeExportTasksRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("taskId", data.taskId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (exportTaskStatusCodeToString >> JE.string)
            ("statusCode", data.statusCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("limit", data.limit)
        
        
        |> JE.object






describeExportTasksResponseEncoder : DescribeExportTasksResponse -> JE.Value
describeExportTasksResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (exportTaskEncoder))
            ("exportTasks", data.exportTasks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeLogGroupsRequestEncoder : DescribeLogGroupsRequest -> JE.Value
describeLogGroupsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logGroupNamePrefix", data.logGroupNamePrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("limit", data.limit)
        
        
        |> JE.object






describeLogGroupsResponseEncoder : DescribeLogGroupsResponse -> JE.Value
describeLogGroupsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (logGroupEncoder))
            ("logGroups", data.logGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeLogStreamsRequestEncoder : DescribeLogStreamsRequest -> JE.Value
describeLogStreamsRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logStreamNamePrefix", data.logStreamNamePrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (orderByToString >> JE.string)
            ("orderBy", data.orderBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("descending", data.descending)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("limit", data.limit)
        
        
        |> JE.object






describeLogStreamsResponseEncoder : DescribeLogStreamsResponse -> JE.Value
describeLogStreamsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (logStreamEncoder))
            ("logStreams", data.logStreams)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeMetricFiltersRequestEncoder : DescribeMetricFiltersRequest -> JE.Value
describeMetricFiltersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logGroupName", data.logGroupName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("filterNamePrefix", data.filterNamePrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("metricName", data.metricName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("metricNamespace", data.metricNamespace)
        
        
        |> JE.object






describeMetricFiltersResponseEncoder : DescribeMetricFiltersResponse -> JE.Value
describeMetricFiltersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (metricFilterEncoder))
            ("metricFilters", data.metricFilters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeQueriesRequestEncoder : DescribeQueriesRequest -> JE.Value
describeQueriesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logGroupName", data.logGroupName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (queryStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeQueriesResponseEncoder : DescribeQueriesResponse -> JE.Value
describeQueriesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (queryInfoEncoder))
            ("queries", data.queries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeResourcePoliciesRequestEncoder : DescribeResourcePoliciesRequest -> JE.Value
describeResourcePoliciesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("limit", data.limit)
        
        
        |> JE.object






describeResourcePoliciesResponseEncoder : DescribeResourcePoliciesResponse -> JE.Value
describeResourcePoliciesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourcePolicyEncoder))
            ("resourcePolicies", data.resourcePolicies)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeSubscriptionFiltersRequestEncoder : DescribeSubscriptionFiltersRequest -> JE.Value
describeSubscriptionFiltersRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("filterNamePrefix", data.filterNamePrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("limit", data.limit)
        
        
        |> JE.object






describeSubscriptionFiltersResponseEncoder : DescribeSubscriptionFiltersResponse -> JE.Value
describeSubscriptionFiltersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (subscriptionFilterEncoder))
            ("subscriptionFilters", data.subscriptionFilters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






destinationEncoder : Destination -> JE.Value
destinationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("destinationName", data.destinationName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("targetArn", data.targetArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("accessPolicy", data.accessPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("creationTime", data.creationTime)
        
        
        |> JE.object






disassociateKmsKeyRequestEncoder : DisassociateKmsKeyRequest -> JE.Value
disassociateKmsKeyRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        |> JE.object










exportTaskEncoder : ExportTask -> JE.Value
exportTaskEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("taskId", data.taskId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("taskName", data.taskName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logGroupName", data.logGroupName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("from", data.from)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("to", data.to)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("destination", data.destination)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("destinationPrefix", data.destinationPrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (exportTaskStatusEncoder)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (exportTaskExecutionInfoEncoder)
            ("executionInfo", data.executionInfo)
        
        
        |> JE.object






exportTaskExecutionInfoEncoder : ExportTaskExecutionInfo -> JE.Value
exportTaskExecutionInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("creationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("completionTime", data.completionTime)
        
        
        |> JE.object






exportTaskStatusEncoder : ExportTaskStatus -> JE.Value
exportTaskStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (exportTaskStatusCodeToString >> JE.string)
            ("code", data.code)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object










filterLogEventsRequestEncoder : FilterLogEventsRequest -> JE.Value
filterLogEventsRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("logStreamNames", data.logStreamNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logStreamNamePrefix", data.logStreamNamePrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("startTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("endTime", data.endTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("filterPattern", data.filterPattern)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("interleaved", data.interleaved)
        
        
        |> JE.object






filterLogEventsResponseEncoder : FilterLogEventsResponse -> JE.Value
filterLogEventsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (filteredLogEventEncoder))
            ("events", data.events)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (searchedLogStreamEncoder))
            ("searchedLogStreams", data.searchedLogStreams)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






filteredLogEventEncoder : FilteredLogEvent -> JE.Value
filteredLogEventEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logStreamName", data.logStreamName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("timestamp", data.timestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ingestionTime", data.ingestionTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("eventId", data.eventId)
        
        
        |> JE.object






getLogEventsRequestEncoder : GetLogEventsRequest -> JE.Value
getLogEventsRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> (::) ("logStreamName", data.logStreamName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("startTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("endTime", data.endTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("startFromHead", data.startFromHead)
        
        
        |> JE.object






getLogEventsResponseEncoder : GetLogEventsResponse -> JE.Value
getLogEventsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (outputLogEventEncoder))
            ("events", data.events)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextForwardToken", data.nextForwardToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextBackwardToken", data.nextBackwardToken)
        
        
        |> JE.object






getLogGroupFieldsRequestEncoder : GetLogGroupFieldsRequest -> JE.Value
getLogGroupFieldsRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("time", data.time)
        
        
        |> JE.object






getLogGroupFieldsResponseEncoder : GetLogGroupFieldsResponse -> JE.Value
getLogGroupFieldsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (logGroupFieldEncoder))
            ("logGroupFields", data.logGroupFields)
        
        
        |> JE.object






getLogRecordRequestEncoder : GetLogRecordRequest -> JE.Value
getLogRecordRequestEncoder data =
    []
        
        
        |> (::) ("logRecordPointer", data.logRecordPointer |> (JE.string))
        
        
        |> JE.object






getLogRecordResponseEncoder : GetLogRecordResponse -> JE.Value
getLogRecordResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("logRecord", data.logRecord)
        
        
        |> JE.object






getQueryResultsRequestEncoder : GetQueryResultsRequest -> JE.Value
getQueryResultsRequestEncoder data =
    []
        
        
        |> (::) ("queryId", data.queryId |> (JE.string))
        
        
        |> JE.object






getQueryResultsResponseEncoder : GetQueryResultsResponse -> JE.Value
getQueryResultsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.list (resultFieldEncoder)))
            ("results", data.results)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (queryStatisticsEncoder)
            ("statistics", data.statistics)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (queryStatusToString >> JE.string)
            ("status", data.status)
        
        
        |> JE.object






inputLogEventEncoder : InputLogEvent -> JE.Value
inputLogEventEncoder data =
    []
        
        
        |> (::) ("timestamp", data.timestamp |> (JE.int))
        
        
        
        |> (::) ("message", data.message |> (JE.string))
        
        
        |> JE.object






listTagsLogGroupRequestEncoder : ListTagsLogGroupRequest -> JE.Value
listTagsLogGroupRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        |> JE.object






listTagsLogGroupResponseEncoder : ListTagsLogGroupResponse -> JE.Value
listTagsLogGroupResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("tags", data.tags)
        
        
        |> JE.object






logGroupEncoder : LogGroup -> JE.Value
logGroupEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logGroupName", data.logGroupName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("creationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("retentionInDays", data.retentionInDays)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("metricFilterCount", data.metricFilterCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("storedBytes", data.storedBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("kmsKeyId", data.kmsKeyId)
        
        
        |> JE.object






logGroupFieldEncoder : LogGroupField -> JE.Value
logGroupFieldEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("percent", data.percent)
        
        
        |> JE.object






logStreamEncoder : LogStream -> JE.Value
logStreamEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logStreamName", data.logStreamName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("creationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("firstEventTimestamp", data.firstEventTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("lastEventTimestamp", data.lastEventTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("lastIngestionTime", data.lastIngestionTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("uploadSequenceToken", data.uploadSequenceToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("storedBytes", data.storedBytes)
        
        
        |> JE.object






metricFilterEncoder : MetricFilter -> JE.Value
metricFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("filterName", data.filterName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("filterPattern", data.filterPattern)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (metricTransformationEncoder))
            ("metricTransformations", data.metricTransformations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("creationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logGroupName", data.logGroupName)
        
        
        |> JE.object






metricFilterMatchRecordEncoder : MetricFilterMatchRecord -> JE.Value
metricFilterMatchRecordEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("eventNumber", data.eventNumber)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("eventMessage", data.eventMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("extractedValues", data.extractedValues)
        
        
        |> JE.object






metricTransformationEncoder : MetricTransformation -> JE.Value
metricTransformationEncoder data =
    []
        
        
        |> (::) ("metricName", data.metricName |> (JE.string))
        
        
        
        |> (::) ("metricNamespace", data.metricNamespace |> (JE.string))
        
        
        
        |> (::) ("metricValue", data.metricValue |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("defaultValue", data.defaultValue)
        
        
        |> JE.object










outputLogEventEncoder : OutputLogEvent -> JE.Value
outputLogEventEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("timestamp", data.timestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ingestionTime", data.ingestionTime)
        
        
        |> JE.object






putDestinationPolicyRequestEncoder : PutDestinationPolicyRequest -> JE.Value
putDestinationPolicyRequestEncoder data =
    []
        
        
        |> (::) ("destinationName", data.destinationName |> (JE.string))
        
        
        
        |> (::) ("accessPolicy", data.accessPolicy |> (JE.string))
        
        
        |> JE.object






putDestinationRequestEncoder : PutDestinationRequest -> JE.Value
putDestinationRequestEncoder data =
    []
        
        
        |> (::) ("destinationName", data.destinationName |> (JE.string))
        
        
        
        |> (::) ("targetArn", data.targetArn |> (JE.string))
        
        
        
        |> (::) ("roleArn", data.roleArn |> (JE.string))
        
        
        |> JE.object






putDestinationResponseEncoder : PutDestinationResponse -> JE.Value
putDestinationResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (destinationEncoder)
            ("destination", data.destination)
        
        
        |> JE.object






putLogEventsRequestEncoder : PutLogEventsRequest -> JE.Value
putLogEventsRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> (::) ("logStreamName", data.logStreamName |> (JE.string))
        
        
        
        |> (::) ("logEvents", data.logEvents |> (JE.list (inputLogEventEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sequenceToken", data.sequenceToken)
        
        
        |> JE.object






putLogEventsResponseEncoder : PutLogEventsResponse -> JE.Value
putLogEventsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextSequenceToken", data.nextSequenceToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (rejectedLogEventsInfoEncoder)
            ("rejectedLogEventsInfo", data.rejectedLogEventsInfo)
        
        
        |> JE.object






putMetricFilterRequestEncoder : PutMetricFilterRequest -> JE.Value
putMetricFilterRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> (::) ("filterName", data.filterName |> (JE.string))
        
        
        
        |> (::) ("filterPattern", data.filterPattern |> (JE.string))
        
        
        
        |> (::) ("metricTransformations", data.metricTransformations |> (JE.list (metricTransformationEncoder)))
        
        
        |> JE.object






putResourcePolicyRequestEncoder : PutResourcePolicyRequest -> JE.Value
putResourcePolicyRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("policyName", data.policyName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("policyDocument", data.policyDocument)
        
        
        |> JE.object






putResourcePolicyResponseEncoder : PutResourcePolicyResponse -> JE.Value
putResourcePolicyResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (resourcePolicyEncoder)
            ("resourcePolicy", data.resourcePolicy)
        
        
        |> JE.object






putRetentionPolicyRequestEncoder : PutRetentionPolicyRequest -> JE.Value
putRetentionPolicyRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> (::) ("retentionInDays", data.retentionInDays |> (JE.int))
        
        
        |> JE.object






putSubscriptionFilterRequestEncoder : PutSubscriptionFilterRequest -> JE.Value
putSubscriptionFilterRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> (::) ("filterName", data.filterName |> (JE.string))
        
        
        
        |> (::) ("filterPattern", data.filterPattern |> (JE.string))
        
        
        
        |> (::) ("destinationArn", data.destinationArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (distributionToString >> JE.string)
            ("distribution", data.distribution)
        
        
        |> JE.object






queryInfoEncoder : QueryInfo -> JE.Value
queryInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("queryId", data.queryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("queryString", data.queryString)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (queryStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("createTime", data.createTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logGroupName", data.logGroupName)
        
        
        |> JE.object






queryStatisticsEncoder : QueryStatistics -> JE.Value
queryStatisticsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("recordsMatched", data.recordsMatched)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("recordsScanned", data.recordsScanned)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("bytesScanned", data.bytesScanned)
        
        
        |> JE.object










rejectedLogEventsInfoEncoder : RejectedLogEventsInfo -> JE.Value
rejectedLogEventsInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("tooNewLogEventStartIndex", data.tooNewLogEventStartIndex)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("tooOldLogEventEndIndex", data.tooOldLogEventEndIndex)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("expiredLogEventEndIndex", data.expiredLogEventEndIndex)
        
        
        |> JE.object






resourcePolicyEncoder : ResourcePolicy -> JE.Value
resourcePolicyEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("policyName", data.policyName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("policyDocument", data.policyDocument)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("lastUpdatedTime", data.lastUpdatedTime)
        
        
        |> JE.object






resultFieldEncoder : ResultField -> JE.Value
resultFieldEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("field", data.field)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("value", data.value)
        
        
        |> JE.object






searchedLogStreamEncoder : SearchedLogStream -> JE.Value
searchedLogStreamEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logStreamName", data.logStreamName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("searchedCompletely", data.searchedCompletely)
        
        
        |> JE.object






startQueryRequestEncoder : StartQueryRequest -> JE.Value
startQueryRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logGroupName", data.logGroupName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("logGroupNames", data.logGroupNames)
        
        
        
        |> (::) ("startTime", data.startTime |> (JE.int))
        
        
        
        |> (::) ("endTime", data.endTime |> (JE.int))
        
        
        
        |> (::) ("queryString", data.queryString |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("limit", data.limit)
        
        
        |> JE.object






startQueryResponseEncoder : StartQueryResponse -> JE.Value
startQueryResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("queryId", data.queryId)
        
        
        |> JE.object






stopQueryRequestEncoder : StopQueryRequest -> JE.Value
stopQueryRequestEncoder data =
    []
        
        
        |> (::) ("queryId", data.queryId |> (JE.string))
        
        
        |> JE.object






stopQueryResponseEncoder : StopQueryResponse -> JE.Value
stopQueryResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("success", data.success)
        
        
        |> JE.object






subscriptionFilterEncoder : SubscriptionFilter -> JE.Value
subscriptionFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("filterName", data.filterName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logGroupName", data.logGroupName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("filterPattern", data.filterPattern)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("destinationArn", data.destinationArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (distributionToString >> JE.string)
            ("distribution", data.distribution)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("creationTime", data.creationTime)
        
        
        |> JE.object






tagLogGroupRequestEncoder : TagLogGroupRequest -> JE.Value
tagLogGroupRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> (::) ("tags", data.tags |> (JE.dict identity (JE.string)))
        
        
        |> JE.object






testMetricFilterRequestEncoder : TestMetricFilterRequest -> JE.Value
testMetricFilterRequestEncoder data =
    []
        
        
        |> (::) ("filterPattern", data.filterPattern |> (JE.string))
        
        
        
        |> (::) ("logEventMessages", data.logEventMessages |> (JE.list (JE.string)))
        
        
        |> JE.object






testMetricFilterResponseEncoder : TestMetricFilterResponse -> JE.Value
testMetricFilterResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (metricFilterMatchRecordEncoder))
            ("matches", data.matches)
        
        
        |> JE.object






untagLogGroupRequestEncoder : UntagLogGroupRequest -> JE.Value
untagLogGroupRequestEncoder data =
    []
        
        
        |> (::) ("logGroupName", data.logGroupName |> (JE.string))
        
        
        
        |> (::) ("tags", data.tags |> (JE.list (JE.string)))
        
        
        |> JE.object





