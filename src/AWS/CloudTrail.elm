module AWS.CloudTrail exposing
    ( service
    , addTags, AddTagsOptions, createTrail, CreateTrailOptions, deleteTrail, describeTrails, DescribeTrailsOptions, getEventSelectors, getTrailStatus, listPublicKeys, ListPublicKeysOptions, listTags, ListTagsOptions, lookupEvents, LookupEventsOptions, putEventSelectors, removeTags, RemoveTagsOptions, startLogging, stopLogging, updateTrail, UpdateTrailOptions
    , AddTagsResponse, CreateTrailResponse, DeleteTrailResponse, DescribeTrailsResponse, GetEventSelectorsResponse, GetTrailStatusResponse, ListPublicKeysResponse, ListTagsResponse, LookupEventsResponse, PutEventSelectorsResponse, RemoveTagsResponse, StartLoggingResponse, StopLoggingResponse, UpdateTrailResponse
    , DataResource, Event, EventSelector, LookupAttribute, PublicKey, Resource, ResourceTag, Tag, Trail
    , LookupAttributeKey(..), ReadWriteType(..)
    )

{-| <fullname>AWS CloudTrail</fullname> <p>This is the CloudTrail API Reference. It provides descriptions of actions, data types, common parameters, and common errors for CloudTrail.</p> <p>CloudTrail is a web service that records AWS API calls for your AWS account and delivers log files to an Amazon S3 bucket. The recorded information includes the identity of the user, the start time of the AWS API call, the source IP address, the request parameters, and the response elements returned by the service.</p> <note> <p>As an alternative to the API, you can use one of the AWS SDKs, which consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWSCloudTrail. For example, the SDKs take care of cryptographically signing requests, managing errors, and retrying requests automatically. For information about the AWS SDKs, including how to download and install them, see the <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services page</a>.</p> </note> <p>See the <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html">AWS CloudTrail User Guide</a> for information about the data that is included with each AWS API call listed in the log files.</p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [addTags](#addTags)
  - [AddTagsOptions](#AddTagsOptions)
  - [createTrail](#createTrail)
  - [CreateTrailOptions](#CreateTrailOptions)
  - [deleteTrail](#deleteTrail)
  - [describeTrails](#describeTrails)
  - [DescribeTrailsOptions](#DescribeTrailsOptions)
  - [getEventSelectors](#getEventSelectors)
  - [getTrailStatus](#getTrailStatus)
  - [listPublicKeys](#listPublicKeys)
  - [ListPublicKeysOptions](#ListPublicKeysOptions)
  - [listTags](#listTags)
  - [ListTagsOptions](#ListTagsOptions)
  - [lookupEvents](#lookupEvents)
  - [LookupEventsOptions](#LookupEventsOptions)
  - [putEventSelectors](#putEventSelectors)
  - [removeTags](#removeTags)
  - [RemoveTagsOptions](#RemoveTagsOptions)
  - [startLogging](#startLogging)
  - [stopLogging](#stopLogging)
  - [updateTrail](#updateTrail)
  - [UpdateTrailOptions](#UpdateTrailOptions)

@docs addTags, AddTagsOptions, createTrail, CreateTrailOptions, deleteTrail, describeTrails, DescribeTrailsOptions, getEventSelectors, getTrailStatus, listPublicKeys, ListPublicKeysOptions, listTags, ListTagsOptions, lookupEvents, LookupEventsOptions, putEventSelectors, removeTags, RemoveTagsOptions, startLogging, stopLogging, updateTrail, UpdateTrailOptions


## Responses

  - [AddTagsResponse](#AddTagsResponse)
  - [CreateTrailResponse](#CreateTrailResponse)
  - [DeleteTrailResponse](#DeleteTrailResponse)
  - [DescribeTrailsResponse](#DescribeTrailsResponse)
  - [GetEventSelectorsResponse](#GetEventSelectorsResponse)
  - [GetTrailStatusResponse](#GetTrailStatusResponse)
  - [ListPublicKeysResponse](#ListPublicKeysResponse)
  - [ListTagsResponse](#ListTagsResponse)
  - [LookupEventsResponse](#LookupEventsResponse)
  - [PutEventSelectorsResponse](#PutEventSelectorsResponse)
  - [RemoveTagsResponse](#RemoveTagsResponse)
  - [StartLoggingResponse](#StartLoggingResponse)
  - [StopLoggingResponse](#StopLoggingResponse)
  - [UpdateTrailResponse](#UpdateTrailResponse)

@docs AddTagsResponse, CreateTrailResponse, DeleteTrailResponse, DescribeTrailsResponse, GetEventSelectorsResponse, GetTrailStatusResponse, ListPublicKeysResponse, ListTagsResponse, LookupEventsResponse, PutEventSelectorsResponse, RemoveTagsResponse, StartLoggingResponse, StopLoggingResponse, UpdateTrailResponse


## Records

  - [DataResource](#DataResource)
  - [Event](#Event)
  - [EventSelector](#EventSelector)
  - [LookupAttribute](#LookupAttribute)
  - [PublicKey](#PublicKey)
  - [Resource](#Resource)
  - [ResourceTag](#ResourceTag)
  - [Tag](#Tag)
  - [Trail](#Trail)

@docs DataResource, Event, EventSelector, LookupAttribute, PublicKey, Resource, ResourceTag, Tag, Trail


## Unions

  - [LookupAttributeKey](#LookupAttributeKey)
  - [ReadWriteType](#ReadWriteType)

@docs LookupAttributeKey, ReadWriteType

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Iso8601
import Json.Decode as JD
import Json.Decode.Extra as JDX
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Time exposing (Posix)


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "cloudtrail"
        "2013-11-01"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101")



-- OPERATIONS


{-|

<p>Adds one or more tags to a trail, up to a limit of 50. Tags must be unique per trail. Overwrites an existing tag's value when a new value is specified for an existing tag key. If you specify a key without a value, the tag will be created with the specified key and a value of null. You can tag a trail that applies to all regions only from the region in which the trail was created (that is, from its home region).</p>

**Required Parameters**

  - `resourceId` **:** `String`

-}
addTags :
    String
    -> (AddTagsOptions -> AddTagsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddTagsResponse)
addTags resourceId setOptions =
    let
        requestInput =
            AddTagsRequest
                resourceId
                options.tagsList

        options =
            setOptions (AddTagsOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> addTagsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AddTags"
            (AWS.Core.Decode.ResultDecoder "AddTagsResponse" addTagsResponseDecoder)
        )


{-| Options for a addTags request
-}
type alias AddTagsOptions =
    { tagsList : Maybe (List Tag)
    }


{-|

<p>Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket. A maximum of five trails can exist in a region, irrespective of the region in which they were created.</p>

**Required Parameters**

  - `name` **:** `String`
  - `s3BucketName` **:** `String`

-}
createTrail :
    String
    -> String
    -> (CreateTrailOptions -> CreateTrailOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTrailResponse)
createTrail name s3BucketName setOptions =
    let
        requestInput =
            CreateTrailRequest
                name
                s3BucketName
                options.s3KeyPrefix
                options.snsTopicName
                options.includeGlobalServiceEvents
                options.isMultiRegionTrail
                options.enableLogFileValidation
                options.cloudWatchLogsLogGroupArn
                options.cloudWatchLogsRoleArn
                options.kmsKeyId
                options.isOrganizationTrail

        options =
            setOptions (CreateTrailOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createTrailRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateTrail"
            (AWS.Core.Decode.ResultDecoder "CreateTrailResponse" createTrailResponseDecoder)
        )


{-| Options for a createTrail request
-}
type alias CreateTrailOptions =
    { s3KeyPrefix : Maybe String
    , snsTopicName : Maybe String
    , includeGlobalServiceEvents : Maybe Bool
    , isMultiRegionTrail : Maybe Bool
    , enableLogFileValidation : Maybe Bool
    , cloudWatchLogsLogGroupArn : Maybe String
    , cloudWatchLogsRoleArn : Maybe String
    , kmsKeyId : Maybe String
    , isOrganizationTrail : Maybe Bool
    }


{-|

<p>Deletes a trail. This operation must be called from the region in which the trail was created. <code>DeleteTrail</code> cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.</p>

**Required Parameters**

  - `name` **:** `String`

-}
deleteTrail :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTrailResponse)
deleteTrail name =
    let
        requestInput =
            DeleteTrailRequest
                name
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteTrailRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteTrail"
            (AWS.Core.Decode.ResultDecoder "DeleteTrailResponse" deleteTrailResponseDecoder)
        )


{-|

<p>Retrieves settings for the trail associated with the current region for your account.</p>

**Required Parameters**

-}
describeTrails :
    (DescribeTrailsOptions -> DescribeTrailsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTrailsResponse)
describeTrails setOptions =
    let
        requestInput =
            DescribeTrailsRequest
                options.trailNameList
                options.includeShadowTrails

        options =
            setOptions (DescribeTrailsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeTrailsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeTrails"
            (AWS.Core.Decode.ResultDecoder "DescribeTrailsResponse" describeTrailsResponseDecoder)
        )


{-| Options for a describeTrails request
-}
type alias DescribeTrailsOptions =
    { trailNameList : Maybe (List String)
    , includeShadowTrails : Maybe Bool
    }


{-|

<p>Describes the settings for the event selectors that you configured for your trail. The information returned for your event selectors includes the following:</p> <ul> <li> <p>If your event selector includes read-only events, write-only events, or all events. This applies to both management events and data events.</p> </li> <li> <p>If your event selector includes management events.</p> </li> <li> <p>If your event selector includes data events, the Amazon S3 objects or AWS Lambda functions that you are logging for data events.</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html">Logging Data and Management Events for Trails </a> in the <i>AWS CloudTrail User Guide</i>.</p>

**Required Parameters**

  - `trailName` **:** `String`

-}
getEventSelectors :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetEventSelectorsResponse)
getEventSelectors trailName =
    let
        requestInput =
            GetEventSelectorsRequest
                trailName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getEventSelectorsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetEventSelectors"
            (AWS.Core.Decode.ResultDecoder "GetEventSelectorsResponse" getEventSelectorsResponseDecoder)
        )


{-|

<p>Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.</p>

**Required Parameters**

  - `name` **:** `String`

-}
getTrailStatus :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTrailStatusResponse)
getTrailStatus name =
    let
        requestInput =
            GetTrailStatusRequest
                name
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getTrailStatusRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetTrailStatus"
            (AWS.Core.Decode.ResultDecoder "GetTrailStatusResponse" getTrailStatusResponseDecoder)
        )


{-|

<p>Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.</p> <note> <p>CloudTrail uses different private/public key pairs per region. Each digest file is signed with a private key unique to its region. Therefore, when you validate a digest file from a particular region, you must look in the same region for its corresponding public key.</p> </note>

**Required Parameters**

-}
listPublicKeys :
    (ListPublicKeysOptions -> ListPublicKeysOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPublicKeysResponse)
listPublicKeys setOptions =
    let
        requestInput =
            ListPublicKeysRequest
                options.startTime
                options.endTime
                options.nextToken

        options =
            setOptions (ListPublicKeysOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listPublicKeysRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListPublicKeys"
            (AWS.Core.Decode.ResultDecoder "ListPublicKeysResponse" listPublicKeysResponseDecoder)
        )


{-| Options for a listPublicKeys request
-}
type alias ListPublicKeysOptions =
    { startTime : Maybe Posix
    , endTime : Maybe Posix
    , nextToken : Maybe String
    }


{-|

<p>Lists the tags for the trail in the current region.</p>

**Required Parameters**

  - `resourceIdList` **:** `(List String)`

-}
listTags :
    List String
    -> (ListTagsOptions -> ListTagsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsResponse)
listTags resourceIdList setOptions =
    let
        requestInput =
            ListTagsRequest
                resourceIdList
                options.nextToken

        options =
            setOptions (ListTagsOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listTagsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListTags"
            (AWS.Core.Decode.ResultDecoder "ListTagsResponse" listTagsResponseDecoder)
        )


{-| Options for a listTags request
-}
type alias ListTagsOptions =
    { nextToken : Maybe String
    }


{-|

<p>Looks up <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events">management events</a> captured by CloudTrail. Events for a region can be looked up in that region during the last 90 days. Lookup supports the following attributes:</p> <ul> <li> <p>AWS access key</p> </li> <li> <p>Event ID</p> </li> <li> <p>Event name</p> </li> <li> <p>Event source</p> </li> <li> <p>Read only</p> </li> <li> <p>Resource name</p> </li> <li> <p>Resource type</p> </li> <li> <p>User name</p> </li> </ul> <p>All attributes are optional. The default number of results returned is 50, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.</p> <important> <p>The rate of lookup requests is limited to one per second per account. If this limit is exceeded, a throttling error occurs.</p> </important> <important> <p>Events that occurred during the selected time range will not be available for lookup if CloudTrail logging was not enabled when the events occurred.</p> </important>

**Required Parameters**

-}
lookupEvents :
    (LookupEventsOptions -> LookupEventsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper LookupEventsResponse)
lookupEvents setOptions =
    let
        requestInput =
            LookupEventsRequest
                options.lookupAttributes
                options.startTime
                options.endTime
                options.maxResults
                options.nextToken

        options =
            setOptions (LookupEventsOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> lookupEventsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "LookupEvents"
            (AWS.Core.Decode.ResultDecoder "LookupEventsResponse" lookupEventsResponseDecoder)
        )


{-| Options for a lookupEvents request
-}
type alias LookupEventsOptions =
    { lookupAttributes : Maybe (List LookupAttribute)
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Configures an event selector for your trail. Use event selectors to further specify the management and data event settings for your trail. By default, trails created without specific event selectors will be configured to log all read and write management events, and no data events. </p> <p>When an event occurs in your account, CloudTrail evaluates the event selectors in all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event. </p> <p>Example</p> <ol> <li> <p>You create an event selector for a trail and specify that you want write-only events.</p> </li> <li> <p>The EC2 <code>GetConsoleOutput</code> and <code>RunInstances</code> API operations occur in your account.</p> </li> <li> <p>CloudTrail evaluates whether the events match your event selectors.</p> </li> <li> <p>The <code>RunInstances</code> is a write-only event and it matches your event selector. The trail logs the event.</p> </li> <li> <p>The <code>GetConsoleOutput</code> is a read-only event but it doesn't match your event selector. The trail doesn't log the event. </p> </li> </ol> <p>The <code>PutEventSelectors</code> operation must be called from the region in which the trail was created; otherwise, an <code>InvalidHomeRegionException</code> is thrown.</p> <p>You can configure up to five event selectors for each trail. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html">Logging Data and Management Events for Trails </a> and <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html">Limits in AWS CloudTrail</a> in the <i>AWS CloudTrail User Guide</i>.</p>

**Required Parameters**

  - `trailName` **:** `String`
  - `eventSelectors` **:** `(List EventSelector)`

-}
putEventSelectors :
    String
    -> List EventSelector
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutEventSelectorsResponse)
putEventSelectors trailName eventSelectors =
    let
        requestInput =
            PutEventSelectorsRequest
                trailName
                eventSelectors
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> putEventSelectorsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "PutEventSelectors"
            (AWS.Core.Decode.ResultDecoder "PutEventSelectorsResponse" putEventSelectorsResponseDecoder)
        )


{-|

<p>Removes the specified tags from a trail.</p>

**Required Parameters**

  - `resourceId` **:** `String`

-}
removeTags :
    String
    -> (RemoveTagsOptions -> RemoveTagsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveTagsResponse)
removeTags resourceId setOptions =
    let
        requestInput =
            RemoveTagsRequest
                resourceId
                options.tagsList

        options =
            setOptions (RemoveTagsOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> removeTagsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RemoveTags"
            (AWS.Core.Decode.ResultDecoder "RemoveTagsResponse" removeTagsResponseDecoder)
        )


{-| Options for a removeTags request
-}
type alias RemoveTagsOptions =
    { tagsList : Maybe (List Tag)
    }


{-|

<p>Starts the recording of AWS API calls and log file delivery for a trail. For a trail that is enabled in all regions, this operation must be called from the region in which the trail was created. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.</p>

**Required Parameters**

  - `name` **:** `String`

-}
startLogging :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartLoggingResponse)
startLogging name =
    let
        requestInput =
            StartLoggingRequest
                name
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> startLoggingRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StartLogging"
            (AWS.Core.Decode.ResultDecoder "StartLoggingResponse" startLoggingResponseDecoder)
        )


{-|

<p>Suspends the recording of AWS API calls and log file delivery for the specified trail. Under most circumstances, there is no need to use this action. You can update a trail without stopping it first. This action is the only way to stop recording. For a trail enabled in all regions, this operation must be called from the region in which the trail was created, or an <code>InvalidHomeRegionException</code> will occur. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail enabled in all regions.</p>

**Required Parameters**

  - `name` **:** `String`

-}
stopLogging :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopLoggingResponse)
stopLogging name =
    let
        requestInput =
            StopLoggingRequest
                name
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> stopLoggingRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StopLogging"
            (AWS.Core.Decode.ResultDecoder "StopLoggingResponse" stopLoggingResponseDecoder)
        )


{-|

<p>Updates the settings that specify delivery of log files. Changes to a trail do not require stopping the CloudTrail service. Use this action to designate an existing bucket for log delivery. If the existing bucket has previously been a target for CloudTrail log files, an IAM policy exists for the bucket. <code>UpdateTrail</code> must be called from the region in which the trail was created; otherwise, an <code>InvalidHomeRegionException</code> is thrown.</p>

**Required Parameters**

  - `name` **:** `String`

-}
updateTrail :
    String
    -> (UpdateTrailOptions -> UpdateTrailOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTrailResponse)
updateTrail name setOptions =
    let
        requestInput =
            UpdateTrailRequest
                name
                options.s3BucketName
                options.s3KeyPrefix
                options.snsTopicName
                options.includeGlobalServiceEvents
                options.isMultiRegionTrail
                options.enableLogFileValidation
                options.cloudWatchLogsLogGroupArn
                options.cloudWatchLogsRoleArn
                options.kmsKeyId
                options.isOrganizationTrail

        options =
            setOptions (UpdateTrailOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateTrailRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateTrail"
            (AWS.Core.Decode.ResultDecoder "UpdateTrailResponse" updateTrailResponseDecoder)
        )


{-| Options for a updateTrail request
-}
type alias UpdateTrailOptions =
    { s3BucketName : Maybe String
    , s3KeyPrefix : Maybe String
    , snsTopicName : Maybe String
    , includeGlobalServiceEvents : Maybe Bool
    , isMultiRegionTrail : Maybe Bool
    , enableLogFileValidation : Maybe Bool
    , cloudWatchLogsLogGroupArn : Maybe String
    , cloudWatchLogsRoleArn : Maybe String
    , kmsKeyId : Maybe String
    , isOrganizationTrail : Maybe Bool
    }


{-| Type of HTTP response from addTags
-}
type alias AddTagsResponse =
    {}


addTagsResponseDecoder : JD.Decoder AddTagsResponse
addTagsResponseDecoder =
    JD.succeed AddTagsResponse


{-| Type of HTTP response from createTrail
-}
type alias CreateTrailResponse =
    { name : Maybe String
    , s3BucketName : Maybe String
    , s3KeyPrefix : Maybe String
    , snsTopicName : Maybe String
    , snsTopicARN : Maybe String
    , includeGlobalServiceEvents : Maybe Bool
    , isMultiRegionTrail : Maybe Bool
    , trailARN : Maybe String
    , logFileValidationEnabled : Maybe Bool
    , cloudWatchLogsLogGroupArn : Maybe String
    , cloudWatchLogsRoleArn : Maybe String
    , kmsKeyId : Maybe String
    , isOrganizationTrail : Maybe Bool
    }


createTrailResponseDecoder : JD.Decoder CreateTrailResponse
createTrailResponseDecoder =
    JD.succeed CreateTrailResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "S3BucketName", "s3BucketName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "S3KeyPrefix", "s3KeyPrefix" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnsTopicName", "snsTopicName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnsTopicARN", "snsTopicARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IncludeGlobalServiceEvents", "includeGlobalServiceEvents" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsMultiRegionTrail", "isMultiRegionTrail" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrailARN", "trailARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LogFileValidationEnabled", "logFileValidationEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudWatchLogsLogGroupArn", "cloudWatchLogsLogGroupArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudWatchLogsRoleArn", "cloudWatchLogsRoleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KmsKeyId", "kmsKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsOrganizationTrail", "isOrganizationTrail" ]
                JD.bool
            )


{-|

<p>The Amazon S3 buckets or AWS Lambda functions that you specify in your event selectors for your trail to log data events. Data events provide insight into the resource operations performed on or within a resource itself. These are also known as data plane operations. You can specify up to 250 data resources for a trail.</p> <note> <p>The total number of allowed data resources is 250. This number can be distributed between 1 and 5 event selectors, but the total cannot exceed 250 across all selectors.</p> </note> <p>The following example demonstrates how logging works when you configure logging of all data events for an S3 bucket named <code>bucket-1</code>. In this example, the CloudTrail user spcified an empty prefix, and the option to log both <code>Read</code> and <code>Write</code> data events.</p> <ol> <li> <p>A user uploads an image file to <code>bucket-1</code>.</p> </li> <li> <p>The <code>PutObject</code> API operation is an Amazon S3 object-level API. It is recorded as a data event in CloudTrail. Because the CloudTrail user specified an S3 bucket with an empty prefix, events that occur on any object in that bucket are logged. The trail processes and logs the event.</p> </li> <li> <p>A user uploads an object to an Amazon S3 bucket named <code>arn:aws:s3:::bucket-2</code>.</p> </li> <li> <p>The <code>PutObject</code> API operation occurred for an object in an S3 bucket that the CloudTrail user didn't specify for the trail. The trail doesn’t log the event.</p> </li> </ol> <p>The following example demonstrates how logging works when you configure logging of AWS Lambda data events for a Lambda function named <i>MyLambdaFunction</i>, but not for all AWS Lambda functions.</p> <ol> <li> <p>A user runs a script that includes a call to the <i>MyLambdaFunction</i> function and the <i>MyOtherLambdaFunction</i> function.</p> </li> <li> <p>The <code>Invoke</code> API operation on <i>MyLambdaFunction</i> is an AWS Lambda API. It is recorded as a data event in CloudTrail. Because the CloudTrail user specified logging data events for <i>MyLambdaFunction</i>, any invocations of that function are logged. The trail processes and logs the event. </p> </li> <li> <p>The <code>Invoke</code> API operation on <i>MyOtherLambdaFunction</i> is an AWS Lambda API. Because the CloudTrail user did not specify logging data events for all Lambda functions, the <code>Invoke</code> operation for <i>MyOtherLambdaFunction</i> does not match the function specified for the trail. The trail doesn’t log the event. </p> </li> </ol>

-}
type alias DataResource =
    { type_ : Maybe String
    , values : Maybe (List String)
    }


dataResourceDecoder : JD.Decoder DataResource
dataResourceDecoder =
    JD.succeed DataResource
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Type", "type" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Values", "values" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from deleteTrail
-}
type alias DeleteTrailResponse =
    {}


deleteTrailResponseDecoder : JD.Decoder DeleteTrailResponse
deleteTrailResponseDecoder =
    JD.succeed DeleteTrailResponse


{-| Type of HTTP response from describeTrails
-}
type alias DescribeTrailsResponse =
    { trailList : Maybe (List Trail)
    }


describeTrailsResponseDecoder : JD.Decoder DescribeTrailsResponse
describeTrailsResponseDecoder =
    JD.succeed DescribeTrailsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "trailList", "TrailList" ]
                (JD.list trailDecoder)
            )


{-|

<p>Contains information about an event that was returned by a lookup request. The result includes a representation of a CloudTrail event.</p>

-}
type alias Event =
    { eventId : Maybe String
    , eventName : Maybe String
    , readOnly : Maybe String
    , accessKeyId : Maybe String
    , eventTime : Maybe Posix
    , eventSource : Maybe String
    , username : Maybe String
    , resources : Maybe (List Resource)
    , cloudTrailEvent : Maybe String
    }


eventDecoder : JD.Decoder Event
eventDecoder =
    JD.succeed Event
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventId", "eventId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventName", "eventName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReadOnly", "readOnly" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccessKeyId", "accessKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventTime", "eventTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventSource", "eventSource" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Username", "username" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Resources", "resources" ]
                (JD.list resourceDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudTrailEvent", "cloudTrailEvent" ]
                JD.string
            )


{-|

<p>Use event selectors to further specify the management and data event settings for your trail. By default, trails created without specific event selectors will be configured to log all read and write management events, and no data events. When an event occurs in your account, CloudTrail evaluates the event selector for all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event.</p> <p>You can configure up to five event selectors for a trail.</p>

-}
type alias EventSelector =
    { readWriteType : Maybe ReadWriteType
    , includeManagementEvents : Maybe Bool
    , dataResources : Maybe (List DataResource)
    }


eventSelectorDecoder : JD.Decoder EventSelector
eventSelectorDecoder =
    JD.succeed EventSelector
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReadWriteType", "readWriteType" ]
                readWriteTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IncludeManagementEvents", "includeManagementEvents" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DataResources", "dataResources" ]
                (JD.list dataResourceDecoder)
            )


{-| Type of HTTP response from getEventSelectors
-}
type alias GetEventSelectorsResponse =
    { trailARN : Maybe String
    , eventSelectors : Maybe (List EventSelector)
    }


getEventSelectorsResponseDecoder : JD.Decoder GetEventSelectorsResponse
getEventSelectorsResponseDecoder =
    JD.succeed GetEventSelectorsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrailARN", "trailARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventSelectors", "eventSelectors" ]
                (JD.list eventSelectorDecoder)
            )


{-| Type of HTTP response from getTrailStatus
-}
type alias GetTrailStatusResponse =
    { isLogging : Maybe Bool
    , latestDeliveryError : Maybe String
    , latestNotificationError : Maybe String
    , latestDeliveryTime : Maybe Posix
    , latestNotificationTime : Maybe Posix
    , startLoggingTime : Maybe Posix
    , stopLoggingTime : Maybe Posix
    , latestCloudWatchLogsDeliveryError : Maybe String
    , latestCloudWatchLogsDeliveryTime : Maybe Posix
    , latestDigestDeliveryTime : Maybe Posix
    , latestDigestDeliveryError : Maybe String
    , latestDeliveryAttemptTime : Maybe String
    , latestNotificationAttemptTime : Maybe String
    , latestNotificationAttemptSucceeded : Maybe String
    , latestDeliveryAttemptSucceeded : Maybe String
    , timeLoggingStarted : Maybe String
    , timeLoggingStopped : Maybe String
    }


getTrailStatusResponseDecoder : JD.Decoder GetTrailStatusResponse
getTrailStatusResponseDecoder =
    JD.succeed GetTrailStatusResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsLogging", "isLogging" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LatestDeliveryError", "latestDeliveryError" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LatestNotificationError", "latestNotificationError" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LatestDeliveryTime", "latestDeliveryTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LatestNotificationTime", "latestNotificationTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StartLoggingTime", "startLoggingTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StopLoggingTime", "stopLoggingTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LatestCloudWatchLogsDeliveryError", "latestCloudWatchLogsDeliveryError" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LatestCloudWatchLogsDeliveryTime", "latestCloudWatchLogsDeliveryTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LatestDigestDeliveryTime", "latestDigestDeliveryTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LatestDigestDeliveryError", "latestDigestDeliveryError" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LatestDeliveryAttemptTime", "latestDeliveryAttemptTime" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LatestNotificationAttemptTime", "latestNotificationAttemptTime" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LatestNotificationAttemptSucceeded", "latestNotificationAttemptSucceeded" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LatestDeliveryAttemptSucceeded", "latestDeliveryAttemptSucceeded" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TimeLoggingStarted", "timeLoggingStarted" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TimeLoggingStopped", "timeLoggingStopped" ]
                JD.string
            )


{-| Type of HTTP response from listPublicKeys
-}
type alias ListPublicKeysResponse =
    { publicKeyList : Maybe (List PublicKey)
    , nextToken : Maybe String
    }


listPublicKeysResponseDecoder : JD.Decoder ListPublicKeysResponse
listPublicKeysResponseDecoder =
    JD.succeed ListPublicKeysResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PublicKeyList", "publicKeyList" ]
                (JD.list publicKeyDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from listTags
-}
type alias ListTagsResponse =
    { resourceTagList : Maybe (List ResourceTag)
    , nextToken : Maybe String
    }


listTagsResponseDecoder : JD.Decoder ListTagsResponse
listTagsResponseDecoder =
    JD.succeed ListTagsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceTagList", "resourceTagList" ]
                (JD.list resourceTagDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-|

<p>Specifies an attribute and value that filter the events returned.</p>

-}
type alias LookupAttribute =
    { attributeKey : LookupAttributeKey
    , attributeValue : String
    }


lookupAttributeDecoder : JD.Decoder LookupAttribute
lookupAttributeDecoder =
    JD.succeed LookupAttribute
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AttributeKey", "attributeKey" ]
                lookupAttributeKeyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AttributeValue", "attributeValue" ]
                JD.string
            )


{-| One of

  - `LookupAttributeKey_EventId`
  - `LookupAttributeKey_EventName`
  - `LookupAttributeKey_ReadOnly`
  - `LookupAttributeKey_Username`
  - `LookupAttributeKey_ResourceType`
  - `LookupAttributeKey_ResourceName`
  - `LookupAttributeKey_EventSource`
  - `LookupAttributeKey_AccessKeyId`

-}
type LookupAttributeKey
    = LookupAttributeKey_EventId
    | LookupAttributeKey_EventName
    | LookupAttributeKey_ReadOnly
    | LookupAttributeKey_Username
    | LookupAttributeKey_ResourceType
    | LookupAttributeKey_ResourceName
    | LookupAttributeKey_EventSource
    | LookupAttributeKey_AccessKeyId


lookupAttributeKeyDecoder : JD.Decoder LookupAttributeKey
lookupAttributeKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EventId" ->
                        JD.succeed LookupAttributeKey_EventId

                    "EventName" ->
                        JD.succeed LookupAttributeKey_EventName

                    "ReadOnly" ->
                        JD.succeed LookupAttributeKey_ReadOnly

                    "Username" ->
                        JD.succeed LookupAttributeKey_Username

                    "ResourceType" ->
                        JD.succeed LookupAttributeKey_ResourceType

                    "ResourceName" ->
                        JD.succeed LookupAttributeKey_ResourceName

                    "EventSource" ->
                        JD.succeed LookupAttributeKey_EventSource

                    "AccessKeyId" ->
                        JD.succeed LookupAttributeKey_AccessKeyId

                    _ ->
                        JD.fail "bad thing"
            )


lookupAttributeKeyToString : LookupAttributeKey -> String
lookupAttributeKeyToString val =
    case val of
        LookupAttributeKey_EventId ->
            "EventId"

        LookupAttributeKey_EventName ->
            "EventName"

        LookupAttributeKey_ReadOnly ->
            "ReadOnly"

        LookupAttributeKey_Username ->
            "Username"

        LookupAttributeKey_ResourceType ->
            "ResourceType"

        LookupAttributeKey_ResourceName ->
            "ResourceName"

        LookupAttributeKey_EventSource ->
            "EventSource"

        LookupAttributeKey_AccessKeyId ->
            "AccessKeyId"


{-| Type of HTTP response from lookupEvents
-}
type alias LookupEventsResponse =
    { events : Maybe (List Event)
    , nextToken : Maybe String
    }


lookupEventsResponseDecoder : JD.Decoder LookupEventsResponse
lookupEventsResponseDecoder =
    JD.succeed LookupEventsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Events", "events" ]
                (JD.list eventDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-|

<p>Contains information about a returned public key.</p>

-}
type alias PublicKey =
    { value : Maybe String
    , validityStartTime : Maybe Posix
    , validityEndTime : Maybe Posix
    , fingerprint : Maybe String
    }


publicKeyDecoder : JD.Decoder PublicKey
publicKeyDecoder =
    JD.succeed PublicKey
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Value", "value" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ValidityStartTime", "validityStartTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ValidityEndTime", "validityEndTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Fingerprint", "fingerprint" ]
                JD.string
            )


{-| Type of HTTP response from putEventSelectors
-}
type alias PutEventSelectorsResponse =
    { trailARN : Maybe String
    , eventSelectors : Maybe (List EventSelector)
    }


putEventSelectorsResponseDecoder : JD.Decoder PutEventSelectorsResponse
putEventSelectorsResponseDecoder =
    JD.succeed PutEventSelectorsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrailARN", "trailARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventSelectors", "eventSelectors" ]
                (JD.list eventSelectorDecoder)
            )


{-| One of

  - `ReadWriteType_ReadOnly`
  - `ReadWriteType_WriteOnly`
  - `ReadWriteType_All`

-}
type ReadWriteType
    = ReadWriteType_ReadOnly
    | ReadWriteType_WriteOnly
    | ReadWriteType_All


readWriteTypeDecoder : JD.Decoder ReadWriteType
readWriteTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ReadOnly" ->
                        JD.succeed ReadWriteType_ReadOnly

                    "WriteOnly" ->
                        JD.succeed ReadWriteType_WriteOnly

                    "All" ->
                        JD.succeed ReadWriteType_All

                    _ ->
                        JD.fail "bad thing"
            )


readWriteTypeToString : ReadWriteType -> String
readWriteTypeToString val =
    case val of
        ReadWriteType_ReadOnly ->
            "ReadOnly"

        ReadWriteType_WriteOnly ->
            "WriteOnly"

        ReadWriteType_All ->
            "All"


{-| Type of HTTP response from removeTags
-}
type alias RemoveTagsResponse =
    {}


removeTagsResponseDecoder : JD.Decoder RemoveTagsResponse
removeTagsResponseDecoder =
    JD.succeed RemoveTagsResponse


{-|

<p>Specifies the type and name of a resource referenced by an event.</p>

-}
type alias Resource =
    { resourceType : Maybe String
    , resourceName : Maybe String
    }


resourceDecoder : JD.Decoder Resource
resourceDecoder =
    JD.succeed Resource
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceType", "resourceType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceName", "resourceName" ]
                JD.string
            )


{-|

<p>A resource tag.</p>

-}
type alias ResourceTag =
    { resourceId : Maybe String
    , tagsList : Maybe (List Tag)
    }


resourceTagDecoder : JD.Decoder ResourceTag
resourceTagDecoder =
    JD.succeed ResourceTag
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceId", "resourceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TagsList", "tagsList" ]
                (JD.list tagDecoder)
            )


{-| Type of HTTP response from startLogging
-}
type alias StartLoggingResponse =
    {}


startLoggingResponseDecoder : JD.Decoder StartLoggingResponse
startLoggingResponseDecoder =
    JD.succeed StartLoggingResponse


{-| Type of HTTP response from stopLogging
-}
type alias StopLoggingResponse =
    {}


stopLoggingResponseDecoder : JD.Decoder StopLoggingResponse
stopLoggingResponseDecoder =
    JD.succeed StopLoggingResponse


{-|

<p>A custom key-value pair associated with a resource such as a CloudTrail trail.</p>

-}
type alias Tag =
    { key : String
    , value : Maybe String
    }


tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Key", "key" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Value", "value" ]
                JD.string
            )


{-|

<p>The settings for a trail.</p>

-}
type alias Trail =
    { name : Maybe String
    , s3BucketName : Maybe String
    , s3KeyPrefix : Maybe String
    , snsTopicName : Maybe String
    , snsTopicARN : Maybe String
    , includeGlobalServiceEvents : Maybe Bool
    , isMultiRegionTrail : Maybe Bool
    , homeRegion : Maybe String
    , trailARN : Maybe String
    , logFileValidationEnabled : Maybe Bool
    , cloudWatchLogsLogGroupArn : Maybe String
    , cloudWatchLogsRoleArn : Maybe String
    , kmsKeyId : Maybe String
    , hasCustomEventSelectors : Maybe Bool
    , isOrganizationTrail : Maybe Bool
    }


trailDecoder : JD.Decoder Trail
trailDecoder =
    JD.succeed Trail
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "S3BucketName", "s3BucketName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "S3KeyPrefix", "s3KeyPrefix" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnsTopicName", "snsTopicName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnsTopicARN", "snsTopicARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IncludeGlobalServiceEvents", "includeGlobalServiceEvents" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsMultiRegionTrail", "isMultiRegionTrail" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HomeRegion", "homeRegion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrailARN", "trailARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LogFileValidationEnabled", "logFileValidationEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudWatchLogsLogGroupArn", "cloudWatchLogsLogGroupArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudWatchLogsRoleArn", "cloudWatchLogsRoleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KmsKeyId", "kmsKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HasCustomEventSelectors", "hasCustomEventSelectors" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsOrganizationTrail", "isOrganizationTrail" ]
                JD.bool
            )


{-| Type of HTTP response from updateTrail
-}
type alias UpdateTrailResponse =
    { name : Maybe String
    , s3BucketName : Maybe String
    , s3KeyPrefix : Maybe String
    , snsTopicName : Maybe String
    , snsTopicARN : Maybe String
    , includeGlobalServiceEvents : Maybe Bool
    , isMultiRegionTrail : Maybe Bool
    , trailARN : Maybe String
    , logFileValidationEnabled : Maybe Bool
    , cloudWatchLogsLogGroupArn : Maybe String
    , cloudWatchLogsRoleArn : Maybe String
    , kmsKeyId : Maybe String
    , isOrganizationTrail : Maybe Bool
    }


updateTrailResponseDecoder : JD.Decoder UpdateTrailResponse
updateTrailResponseDecoder =
    JD.succeed UpdateTrailResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "S3BucketName", "s3BucketName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "S3KeyPrefix", "s3KeyPrefix" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnsTopicName", "snsTopicName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnsTopicARN", "snsTopicARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IncludeGlobalServiceEvents", "includeGlobalServiceEvents" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsMultiRegionTrail", "isMultiRegionTrail" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrailARN", "trailARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LogFileValidationEnabled", "logFileValidationEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudWatchLogsLogGroupArn", "cloudWatchLogsLogGroupArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudWatchLogsRoleArn", "cloudWatchLogsRoleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KmsKeyId", "kmsKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsOrganizationTrail", "isOrganizationTrail" ]
                JD.bool
            )


{-|

<p>Specifies the tags to add to a trail.</p>

-}
type alias AddTagsRequest =
    { resourceId : String
    , tagsList : Maybe (List Tag)
    }


{-|

<p>Specifies the settings for each trail.</p>

-}
type alias CreateTrailRequest =
    { name : String
    , s3BucketName : String
    , s3KeyPrefix : Maybe String
    , snsTopicName : Maybe String
    , includeGlobalServiceEvents : Maybe Bool
    , isMultiRegionTrail : Maybe Bool
    , enableLogFileValidation : Maybe Bool
    , cloudWatchLogsLogGroupArn : Maybe String
    , cloudWatchLogsRoleArn : Maybe String
    , kmsKeyId : Maybe String
    , isOrganizationTrail : Maybe Bool
    }


{-|

<p>The request that specifies the name of a trail to delete.</p>

-}
type alias DeleteTrailRequest =
    { name : String
    }


{-|

<p>Returns information about the trail.</p>

-}
type alias DescribeTrailsRequest =
    { trailNameList : Maybe (List String)
    , includeShadowTrails : Maybe Bool
    }


{-| undefined
-}
type alias GetEventSelectorsRequest =
    { trailName : String
    }


{-|

<p>The name of a trail about which you want the current status.</p>

-}
type alias GetTrailStatusRequest =
    { name : String
    }


{-|

<p>Requests the public keys for a specified time range.</p>

-}
type alias ListPublicKeysRequest =
    { startTime : Maybe Posix
    , endTime : Maybe Posix
    , nextToken : Maybe String
    }


{-|

<p>Specifies a list of trail tags to return.</p>

-}
type alias ListTagsRequest =
    { resourceIdList : List String
    , nextToken : Maybe String
    }


{-|

<p>Contains a request for LookupEvents.</p>

-}
type alias LookupEventsRequest =
    { lookupAttributes : Maybe (List LookupAttribute)
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias PutEventSelectorsRequest =
    { trailName : String
    , eventSelectors : List EventSelector
    }


{-|

<p>Specifies the tags to remove from a trail.</p>

-}
type alias RemoveTagsRequest =
    { resourceId : String
    , tagsList : Maybe (List Tag)
    }


{-|

<p>The request to CloudTrail to start logging AWS API calls for an account.</p>

-}
type alias StartLoggingRequest =
    { name : String
    }


{-|

<p>Passes the request to CloudTrail to stop logging AWS API calls for the specified account.</p>

-}
type alias StopLoggingRequest =
    { name : String
    }


{-|

<p>Specifies settings to update for the trail.</p>

-}
type alias UpdateTrailRequest =
    { name : String
    , s3BucketName : Maybe String
    , s3KeyPrefix : Maybe String
    , snsTopicName : Maybe String
    , includeGlobalServiceEvents : Maybe Bool
    , isMultiRegionTrail : Maybe Bool
    , enableLogFileValidation : Maybe Bool
    , cloudWatchLogsLogGroupArn : Maybe String
    , cloudWatchLogsRoleArn : Maybe String
    , kmsKeyId : Maybe String
    , isOrganizationTrail : Maybe Bool
    }


addTagsRequestEncoder : AddTagsRequest -> JE.Value
addTagsRequestEncoder data =
    []
        |> (::) ( "ResourceId", data.resourceId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "TagsList", data.tagsList )
        |> JE.object


addTagsResponseEncoder : AddTagsResponse -> JE.Value
addTagsResponseEncoder data =
    []
        |> JE.object


createTrailRequestEncoder : CreateTrailRequest -> JE.Value
createTrailRequestEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> (::) ( "S3BucketName", data.s3BucketName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "S3KeyPrefix", data.s3KeyPrefix )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnsTopicName", data.snsTopicName )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IncludeGlobalServiceEvents", data.includeGlobalServiceEvents )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IsMultiRegionTrail", data.isMultiRegionTrail )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "EnableLogFileValidation", data.enableLogFileValidation )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CloudWatchLogsLogGroupArn", data.cloudWatchLogsLogGroupArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CloudWatchLogsRoleArn", data.cloudWatchLogsRoleArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KmsKeyId", data.kmsKeyId )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IsOrganizationTrail", data.isOrganizationTrail )
        |> JE.object


createTrailResponseEncoder : CreateTrailResponse -> JE.Value
createTrailResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "S3BucketName", data.s3BucketName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "S3KeyPrefix", data.s3KeyPrefix )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnsTopicName", data.snsTopicName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnsTopicARN", data.snsTopicARN )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IncludeGlobalServiceEvents", data.includeGlobalServiceEvents )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IsMultiRegionTrail", data.isMultiRegionTrail )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TrailARN", data.trailARN )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "LogFileValidationEnabled", data.logFileValidationEnabled )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CloudWatchLogsLogGroupArn", data.cloudWatchLogsLogGroupArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CloudWatchLogsRoleArn", data.cloudWatchLogsRoleArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KmsKeyId", data.kmsKeyId )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IsOrganizationTrail", data.isOrganizationTrail )
        |> JE.object


dataResourceEncoder : DataResource -> JE.Value
dataResourceEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Type", data.type_ )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "Values", data.values )
        |> JE.object


deleteTrailRequestEncoder : DeleteTrailRequest -> JE.Value
deleteTrailRequestEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> JE.object


deleteTrailResponseEncoder : DeleteTrailResponse -> JE.Value
deleteTrailResponseEncoder data =
    []
        |> JE.object


describeTrailsRequestEncoder : DescribeTrailsRequest -> JE.Value
describeTrailsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "trailNameList", data.trailNameList )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "includeShadowTrails", data.includeShadowTrails )
        |> JE.object


describeTrailsResponseEncoder : DescribeTrailsResponse -> JE.Value
describeTrailsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list trailEncoder)
            ( "trailList", data.trailList )
        |> JE.object


eventEncoder : Event -> JE.Value
eventEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EventId", data.eventId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EventName", data.eventName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReadOnly", data.readOnly )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AccessKeyId", data.accessKeyId )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "EventTime", data.eventTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EventSource", data.eventSource )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Username", data.username )
        |> AWS.Core.Encode.optionalMember
            (JE.list resourceEncoder)
            ( "Resources", data.resources )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CloudTrailEvent", data.cloudTrailEvent )
        |> JE.object


eventSelectorEncoder : EventSelector -> JE.Value
eventSelectorEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (readWriteTypeToString >> JE.string)
            ( "ReadWriteType", data.readWriteType )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IncludeManagementEvents", data.includeManagementEvents )
        |> AWS.Core.Encode.optionalMember
            (JE.list dataResourceEncoder)
            ( "DataResources", data.dataResources )
        |> JE.object


getEventSelectorsRequestEncoder : GetEventSelectorsRequest -> JE.Value
getEventSelectorsRequestEncoder data =
    []
        |> (::) ( "TrailName", data.trailName |> JE.string )
        |> JE.object


getEventSelectorsResponseEncoder : GetEventSelectorsResponse -> JE.Value
getEventSelectorsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TrailARN", data.trailARN )
        |> AWS.Core.Encode.optionalMember
            (JE.list eventSelectorEncoder)
            ( "EventSelectors", data.eventSelectors )
        |> JE.object


getTrailStatusRequestEncoder : GetTrailStatusRequest -> JE.Value
getTrailStatusRequestEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> JE.object


getTrailStatusResponseEncoder : GetTrailStatusResponse -> JE.Value
getTrailStatusResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IsLogging", data.isLogging )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LatestDeliveryError", data.latestDeliveryError )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LatestNotificationError", data.latestNotificationError )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LatestDeliveryTime", data.latestDeliveryTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LatestNotificationTime", data.latestNotificationTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StartLoggingTime", data.startLoggingTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StopLoggingTime", data.stopLoggingTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LatestCloudWatchLogsDeliveryError", data.latestCloudWatchLogsDeliveryError )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LatestCloudWatchLogsDeliveryTime", data.latestCloudWatchLogsDeliveryTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LatestDigestDeliveryTime", data.latestDigestDeliveryTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LatestDigestDeliveryError", data.latestDigestDeliveryError )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LatestDeliveryAttemptTime", data.latestDeliveryAttemptTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LatestNotificationAttemptTime", data.latestNotificationAttemptTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LatestNotificationAttemptSucceeded", data.latestNotificationAttemptSucceeded )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LatestDeliveryAttemptSucceeded", data.latestDeliveryAttemptSucceeded )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TimeLoggingStarted", data.timeLoggingStarted )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TimeLoggingStopped", data.timeLoggingStopped )
        |> JE.object


listPublicKeysRequestEncoder : ListPublicKeysRequest -> JE.Value
listPublicKeysRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StartTime", data.startTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "EndTime", data.endTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listPublicKeysResponseEncoder : ListPublicKeysResponse -> JE.Value
listPublicKeysResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list publicKeyEncoder)
            ( "PublicKeyList", data.publicKeyList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listTagsRequestEncoder : ListTagsRequest -> JE.Value
listTagsRequestEncoder data =
    []
        |> (::) ( "ResourceIdList", data.resourceIdList |> JE.list JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listTagsResponseEncoder : ListTagsResponse -> JE.Value
listTagsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list resourceTagEncoder)
            ( "ResourceTagList", data.resourceTagList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


lookupAttributeEncoder : LookupAttribute -> JE.Value
lookupAttributeEncoder data =
    []
        |> (::) ( "AttributeKey", data.attributeKey |> (lookupAttributeKeyToString >> JE.string) )
        |> (::) ( "AttributeValue", data.attributeValue |> JE.string )
        |> JE.object


lookupEventsRequestEncoder : LookupEventsRequest -> JE.Value
lookupEventsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list lookupAttributeEncoder)
            ( "LookupAttributes", data.lookupAttributes )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StartTime", data.startTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "EndTime", data.endTime )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


lookupEventsResponseEncoder : LookupEventsResponse -> JE.Value
lookupEventsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list eventEncoder)
            ( "Events", data.events )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


publicKeyEncoder : PublicKey -> JE.Value
publicKeyEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Value", data.value )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ValidityStartTime", data.validityStartTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ValidityEndTime", data.validityEndTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Fingerprint", data.fingerprint )
        |> JE.object


putEventSelectorsRequestEncoder : PutEventSelectorsRequest -> JE.Value
putEventSelectorsRequestEncoder data =
    []
        |> (::) ( "TrailName", data.trailName |> JE.string )
        |> (::) ( "EventSelectors", data.eventSelectors |> JE.list eventSelectorEncoder )
        |> JE.object


putEventSelectorsResponseEncoder : PutEventSelectorsResponse -> JE.Value
putEventSelectorsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TrailARN", data.trailARN )
        |> AWS.Core.Encode.optionalMember
            (JE.list eventSelectorEncoder)
            ( "EventSelectors", data.eventSelectors )
        |> JE.object


removeTagsRequestEncoder : RemoveTagsRequest -> JE.Value
removeTagsRequestEncoder data =
    []
        |> (::) ( "ResourceId", data.resourceId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "TagsList", data.tagsList )
        |> JE.object


removeTagsResponseEncoder : RemoveTagsResponse -> JE.Value
removeTagsResponseEncoder data =
    []
        |> JE.object


resourceEncoder : Resource -> JE.Value
resourceEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceType", data.resourceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceName", data.resourceName )
        |> JE.object


resourceTagEncoder : ResourceTag -> JE.Value
resourceTagEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceId", data.resourceId )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "TagsList", data.tagsList )
        |> JE.object


startLoggingRequestEncoder : StartLoggingRequest -> JE.Value
startLoggingRequestEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> JE.object


startLoggingResponseEncoder : StartLoggingResponse -> JE.Value
startLoggingResponseEncoder data =
    []
        |> JE.object


stopLoggingRequestEncoder : StopLoggingRequest -> JE.Value
stopLoggingRequestEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> JE.object


stopLoggingResponseEncoder : StopLoggingResponse -> JE.Value
stopLoggingResponseEncoder data =
    []
        |> JE.object


tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        |> (::) ( "Key", data.key |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Value", data.value )
        |> JE.object


trailEncoder : Trail -> JE.Value
trailEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "S3BucketName", data.s3BucketName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "S3KeyPrefix", data.s3KeyPrefix )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnsTopicName", data.snsTopicName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnsTopicARN", data.snsTopicARN )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IncludeGlobalServiceEvents", data.includeGlobalServiceEvents )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IsMultiRegionTrail", data.isMultiRegionTrail )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "HomeRegion", data.homeRegion )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TrailARN", data.trailARN )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "LogFileValidationEnabled", data.logFileValidationEnabled )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CloudWatchLogsLogGroupArn", data.cloudWatchLogsLogGroupArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CloudWatchLogsRoleArn", data.cloudWatchLogsRoleArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KmsKeyId", data.kmsKeyId )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "HasCustomEventSelectors", data.hasCustomEventSelectors )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IsOrganizationTrail", data.isOrganizationTrail )
        |> JE.object


updateTrailRequestEncoder : UpdateTrailRequest -> JE.Value
updateTrailRequestEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "S3BucketName", data.s3BucketName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "S3KeyPrefix", data.s3KeyPrefix )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnsTopicName", data.snsTopicName )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IncludeGlobalServiceEvents", data.includeGlobalServiceEvents )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IsMultiRegionTrail", data.isMultiRegionTrail )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "EnableLogFileValidation", data.enableLogFileValidation )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CloudWatchLogsLogGroupArn", data.cloudWatchLogsLogGroupArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CloudWatchLogsRoleArn", data.cloudWatchLogsRoleArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KmsKeyId", data.kmsKeyId )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IsOrganizationTrail", data.isOrganizationTrail )
        |> JE.object


updateTrailResponseEncoder : UpdateTrailResponse -> JE.Value
updateTrailResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "S3BucketName", data.s3BucketName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "S3KeyPrefix", data.s3KeyPrefix )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnsTopicName", data.snsTopicName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnsTopicARN", data.snsTopicARN )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IncludeGlobalServiceEvents", data.includeGlobalServiceEvents )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IsMultiRegionTrail", data.isMultiRegionTrail )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TrailARN", data.trailARN )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "LogFileValidationEnabled", data.logFileValidationEnabled )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CloudWatchLogsLogGroupArn", data.cloudWatchLogsLogGroupArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CloudWatchLogsRoleArn", data.cloudWatchLogsRoleArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KmsKeyId", data.kmsKeyId )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IsOrganizationTrail", data.isOrganizationTrail )
        |> JE.object
