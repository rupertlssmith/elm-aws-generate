module AWS.Health
    exposing
        ( service
        , describeAffectedEntities
        , DescribeAffectedEntitiesOptions
        , describeEntityAggregates
        , DescribeEntityAggregatesOptions
        , describeEventAggregates
        , DescribeEventAggregatesOptions
        , describeEventDetails
        , DescribeEventDetailsOptions
        , describeEventTypes
        , DescribeEventTypesOptions
        , describeEvents
        , DescribeEventsOptions
        , AffectedEntity
        , DateTimeRange
        , DescribeAffectedEntitiesResponse
        , DescribeEntityAggregatesResponse
        , DescribeEventAggregatesResponse
        , DescribeEventDetailsResponse
        , DescribeEventTypesResponse
        , DescribeEventsResponse
        , EntityAggregate
        , EntityFilter
        , Event
        , EventAggregate
        , EventDescription
        , EventDetails
        , EventDetailsErrorItem
        , EventFilter
        , EventType
        , EventTypeFilter
        , EntityStatusCode(..)
        , EventAggregateField(..)
        , EventStatusCode(..)
        , EventTypeCategory(..)
        )

{-| <fullname>AWS Health</fullname> <p>The AWS Health API provides programmatic access to the AWS Health information that is presented in the <a href="https://phd.aws.amazon.com/phd/home#/">AWS Personal Health Dashboard</a>. You can get information about events that affect your AWS resources:</p> <ul> <li> <p> <a>DescribeEvents</a>: Summary information about events.</p> </li> <li> <p> <a>DescribeEventDetails</a>: Detailed information about one or more events.</p> </li> <li> <p> <a>DescribeAffectedEntities</a>: Information about AWS resources that are affected by one or more events.</p> </li> </ul> <p>In addition, these operations provide information about event types and summary counts of events or affected entities:</p> <ul> <li> <p> <a>DescribeEventTypes</a>: Information about the kinds of events that AWS Health tracks.</p> </li> <li> <p> <a>DescribeEventAggregates</a>: A count of the number of events that meet specified criteria.</p> </li> <li> <p> <a>DescribeEntityAggregates</a>: A count of the number of affected entities that meet specified criteria.</p> </li> </ul> <p>The Health API requires a Business or Enterprise support plan from <a href="http://aws.amazon.com/premiumsupport/">AWS Support</a>. Calling the Health API from an account that does not have a Business or Enterprise support plan causes a <code>SubscriptionRequiredException</code>. </p> <p>For authentication of requests, AWS Health uses the <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a>.</p> <p>See the <a href="https://docs.aws.amazon.com/health/latest/ug/what-is-aws-health.html">AWS Health User Guide</a> for information about how to use the API.</p> <p> <b>Service Endpoint</b> </p> <p>The HTTP endpoint for the AWS Health API is:</p> <ul> <li> <p>https://health.us-east-1.amazonaws.com </p> </li> </ul>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [describeAffectedEntities](#describeAffectedEntities)
* [DescribeAffectedEntitiesOptions](#DescribeAffectedEntitiesOptions)
* [describeEntityAggregates](#describeEntityAggregates)
* [DescribeEntityAggregatesOptions](#DescribeEntityAggregatesOptions)
* [describeEventAggregates](#describeEventAggregates)
* [DescribeEventAggregatesOptions](#DescribeEventAggregatesOptions)
* [describeEventDetails](#describeEventDetails)
* [DescribeEventDetailsOptions](#DescribeEventDetailsOptions)
* [describeEventTypes](#describeEventTypes)
* [DescribeEventTypesOptions](#DescribeEventTypesOptions)
* [describeEvents](#describeEvents)
* [DescribeEventsOptions](#DescribeEventsOptions)


@docs describeAffectedEntities,DescribeAffectedEntitiesOptions,describeEntityAggregates,DescribeEntityAggregatesOptions,describeEventAggregates,DescribeEventAggregatesOptions,describeEventDetails,DescribeEventDetailsOptions,describeEventTypes,DescribeEventTypesOptions,describeEvents,DescribeEventsOptions

## Responses

* [DescribeAffectedEntitiesResponse](#DescribeAffectedEntitiesResponse)
* [DescribeEntityAggregatesResponse](#DescribeEntityAggregatesResponse)
* [DescribeEventAggregatesResponse](#DescribeEventAggregatesResponse)
* [DescribeEventDetailsResponse](#DescribeEventDetailsResponse)
* [DescribeEventTypesResponse](#DescribeEventTypesResponse)
* [DescribeEventsResponse](#DescribeEventsResponse)


@docs DescribeAffectedEntitiesResponse,DescribeEntityAggregatesResponse,DescribeEventAggregatesResponse,DescribeEventDetailsResponse,DescribeEventTypesResponse,DescribeEventsResponse

## Records

* [AffectedEntity](#AffectedEntity)
* [DateTimeRange](#DateTimeRange)
* [EntityAggregate](#EntityAggregate)
* [EntityFilter](#EntityFilter)
* [Event](#Event)
* [EventAggregate](#EventAggregate)
* [EventDescription](#EventDescription)
* [EventDetails](#EventDetails)
* [EventDetailsErrorItem](#EventDetailsErrorItem)
* [EventFilter](#EventFilter)
* [EventType](#EventType)
* [EventTypeFilter](#EventTypeFilter)


@docs AffectedEntity,DateTimeRange,EntityAggregate,EntityFilter,Event,EventAggregate,EventDescription,EventDetails,EventDetailsErrorItem,EventFilter,EventType,EventTypeFilter

## Unions

* [EntityStatusCode](#EntityStatusCode)
* [EventAggregateField](#EventAggregateField)
* [EventStatusCode](#EventStatusCode)
* [EventTypeCategory](#EventTypeCategory)


@docs EntityStatusCode,EventAggregateField,EventStatusCode,EventTypeCategory

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
        "health"
        "2016-08-04"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWSHealth_20160804")



-- OPERATIONS

{-| <p>Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this.</p> <p>At least one event ARN is required. Results are sorted by the <code>lastUpdatedTime</code> of the entity, starting with the most recent.</p>

__Required Parameters__

* `filter` __:__ `EntityFilter`


-}

describeAffectedEntities :
  
    EntityFilter ->
  
  
    ( DescribeAffectedEntitiesOptions -> DescribeAffectedEntitiesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAffectedEntitiesResponse)

describeAffectedEntities filter setOptions =
    
    let
        requestInput = DescribeAffectedEntitiesRequest
            
            filter
            
            options.locale
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (DescribeAffectedEntitiesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeAffectedEntitiesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAffectedEntities"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAffectedEntitiesResponse" describeAffectedEntitiesResponseDecoder)
                
            )



{-| Options for a describeAffectedEntities request
-}
type alias DescribeAffectedEntitiesOptions =
    {
    locale : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Returns the number of entities that are affected by each of the specified events. If no events are specified, the counts of all affected entities are returned.</p>

__Required Parameters__



-}

describeEntityAggregates :
  
  
    ( DescribeEntityAggregatesOptions -> DescribeEntityAggregatesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEntityAggregatesResponse)

describeEntityAggregates setOptions =
    
    let
        requestInput = DescribeEntityAggregatesRequest
            
            options.eventArns
            
        
        options = setOptions (DescribeEntityAggregatesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeEntityAggregatesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEntityAggregates"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEntityAggregatesResponse" describeEntityAggregatesResponseDecoder)
                
            )



{-| Options for a describeEntityAggregates request
-}
type alias DescribeEntityAggregatesOptions =
    {
    eventArns : Maybe (List String)
    }



{-| <p>Returns the number of events of each event type (issue, scheduled change, and account notification). If no filter is specified, the counts of all events in each category are returned.</p>

__Required Parameters__

* `aggregateField` __:__ `EventAggregateField`


-}

describeEventAggregates :
  
    EventAggregateField ->
  
  
    ( DescribeEventAggregatesOptions -> DescribeEventAggregatesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEventAggregatesResponse)

describeEventAggregates aggregateField setOptions =
    
    let
        requestInput = DescribeEventAggregatesRequest
            
            options.filter
            
            aggregateField
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeEventAggregatesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeEventAggregatesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEventAggregates"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEventAggregatesResponse" describeEventAggregatesResponseDecoder)
                
            )



{-| Options for a describeEventAggregates request
-}
type alias DescribeEventAggregatesOptions =
    {
    filter : Maybe EventFilter,maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Returns detailed information about one or more specified events. Information includes standard event data (region, service, etc., as returned by <a>DescribeEvents</a>), a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included; to retrieve those, use the <a>DescribeAffectedEntities</a> operation.</p> <p>If a specified event cannot be retrieved, an error message is returned for that event.</p>

__Required Parameters__

* `eventArns` __:__ `(List String)`


-}

describeEventDetails :
  
    (List String) ->
  
  
    ( DescribeEventDetailsOptions -> DescribeEventDetailsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEventDetailsResponse)

describeEventDetails eventArns setOptions =
    
    let
        requestInput = DescribeEventDetailsRequest
            
            eventArns
            
            options.locale
            
        
        options = setOptions (DescribeEventDetailsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeEventDetailsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEventDetails"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEventDetailsResponse" describeEventDetailsResponseDecoder)
                
            )



{-| Options for a describeEventDetails request
-}
type alias DescribeEventDetailsOptions =
    {
    locale : Maybe String
    }



{-| <p>Returns the event types that meet the specified filter criteria. If no filter criteria are specified, all event types are returned, in no particular order.</p>

__Required Parameters__



-}

describeEventTypes :
  
  
    ( DescribeEventTypesOptions -> DescribeEventTypesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEventTypesResponse)

describeEventTypes setOptions =
    
    let
        requestInput = DescribeEventTypesRequest
            
            options.filter
            
            options.locale
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (DescribeEventTypesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeEventTypesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEventTypes"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEventTypesResponse" describeEventTypesResponseDecoder)
                
            )



{-| Options for a describeEventTypes request
-}
type alias DescribeEventTypesOptions =
    {
    filter : Maybe EventTypeFilter,locale : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the <a>DescribeEventDetails</a> and <a>DescribeAffectedEntities</a> operations.</p> <p>If no filter criteria are specified, all events are returned. Results are sorted by <code>lastModifiedTime</code>, starting with the most recent.</p>

__Required Parameters__



-}

describeEvents :
  
  
    ( DescribeEventsOptions -> DescribeEventsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEventsResponse)

describeEvents setOptions =
    
    let
        requestInput = DescribeEventsRequest
            
            options.filter
            
            options.nextToken
            
            options.maxResults
            
            options.locale
            
        
        options = setOptions (DescribeEventsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeEventsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEvents"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEventsResponse" describeEventsResponseDecoder)
                
            )



{-| Options for a describeEvents request
-}
type alias DescribeEventsOptions =
    {
    filter : Maybe EventFilter,nextToken : Maybe String,maxResults : Maybe Int,locale : Maybe String
    }




{-| <p>Information about an entity that is affected by a Health event.</p>
-}
type alias AffectedEntity =
    { entityArn : Maybe String
    , eventArn : Maybe String
    , entityValue : Maybe String
    , entityUrl : Maybe String
    , awsAccountId : Maybe String
    , lastUpdatedTime : Maybe Posix
    , statusCode : Maybe EntityStatusCode
    , tags : Maybe (Dict String String)
    }



affectedEntityDecoder : JD.Decoder AffectedEntity
affectedEntityDecoder =
    JD.succeed AffectedEntity
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["entityArn", "EntityArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventArn", "EventArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["entityValue", "EntityValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["entityUrl", "EntityUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["awsAccountId", "AwsAccountId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastUpdatedTime", "LastUpdatedTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["statusCode", "StatusCode"]
            entityStatusCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (AWS.Core.Decode.dict JD.string)
        )
        




affectedEntityToString : AffectedEntity -> String -- List (String, String)
affectedEntityToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "entityArn" "" -- val.entityArn
        
    --     |> Dict.insert
    --         "eventArn" "" -- val.eventArn
        
    --     |> Dict.insert
    --         "entityValue" "" -- val.entityValue
        
    --     |> Dict.insert
    --         "entityUrl" "" -- val.entityUrl
        
    --     |> Dict.insert
    --         "awsAccountId" "" -- val.awsAccountId
        
    --     |> Dict.insert
    --         "lastUpdatedTime" "" -- val.lastUpdatedTime
        
    --     |> Dict.insert
    --         "statusCode" "" -- val.statusCode
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>A range of dates and times that is used by the <a>EventFilter</a> and <a>EntityFilter</a> objects. If <code>from</code> is set and <code>to</code> is set: match items where the timestamp (<code>startTime</code>, <code>endTime</code>, or <code>lastUpdatedTime</code>) is between <code>from</code> and <code>to</code> inclusive. If <code>from</code> is set and <code>to</code> is not set: match items where the timestamp value is equal to or after <code>from</code>. If <code>from</code> is not set and <code>to</code> is set: match items where the timestamp value is equal to or before <code>to</code>.</p>
-}
type alias DateTimeRange =
    { from : Maybe Posix
    , to : Maybe Posix
    }



dateTimeRangeDecoder : JD.Decoder DateTimeRange
dateTimeRangeDecoder =
    JD.succeed DateTimeRange
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["from", "From"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["to", "To"]
            JDX.datetime
        )
        




dateTimeRangeToString : DateTimeRange -> String -- List (String, String)
dateTimeRangeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "from" "" -- val.from
        
    --     |> Dict.insert
    --         "to" "" -- val.to
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAffectedEntities
-}
type alias DescribeAffectedEntitiesResponse =
    { entities : Maybe (List AffectedEntity)
    , nextToken : Maybe String
    }



describeAffectedEntitiesResponseDecoder : JD.Decoder DescribeAffectedEntitiesResponse
describeAffectedEntitiesResponseDecoder =
    JD.succeed DescribeAffectedEntitiesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["entities", "Entities"]
            (JD.list affectedEntityDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeAffectedEntitiesResponseToString : DescribeAffectedEntitiesResponse -> String -- List (String, String)
describeAffectedEntitiesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "entities" "" -- val.entities
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEntityAggregates
-}
type alias DescribeEntityAggregatesResponse =
    { entityAggregates : Maybe (List EntityAggregate)
    }



describeEntityAggregatesResponseDecoder : JD.Decoder DescribeEntityAggregatesResponse
describeEntityAggregatesResponseDecoder =
    JD.succeed DescribeEntityAggregatesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["entityAggregates", "EntityAggregates"]
            (JD.list entityAggregateDecoder)
        )
        




describeEntityAggregatesResponseToString : DescribeEntityAggregatesResponse -> String -- List (String, String)
describeEntityAggregatesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "entityAggregates" "" -- val.entityAggregates
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEventAggregates
-}
type alias DescribeEventAggregatesResponse =
    { eventAggregates : Maybe (List EventAggregate)
    , nextToken : Maybe String
    }



describeEventAggregatesResponseDecoder : JD.Decoder DescribeEventAggregatesResponse
describeEventAggregatesResponseDecoder =
    JD.succeed DescribeEventAggregatesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventAggregates", "EventAggregates"]
            (JD.list eventAggregateDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeEventAggregatesResponseToString : DescribeEventAggregatesResponse -> String -- List (String, String)
describeEventAggregatesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventAggregates" "" -- val.eventAggregates
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEventDetails
-}
type alias DescribeEventDetailsResponse =
    { successfulSet : Maybe (List EventDetails)
    , failedSet : Maybe (List EventDetailsErrorItem)
    }



describeEventDetailsResponseDecoder : JD.Decoder DescribeEventDetailsResponse
describeEventDetailsResponseDecoder =
    JD.succeed DescribeEventDetailsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["successfulSet", "SuccessfulSet"]
            (JD.list eventDetailsDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["failedSet", "FailedSet"]
            (JD.list eventDetailsErrorItemDecoder)
        )
        




describeEventDetailsResponseToString : DescribeEventDetailsResponse -> String -- List (String, String)
describeEventDetailsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "successfulSet" "" -- val.successfulSet
        
    --     |> Dict.insert
    --         "failedSet" "" -- val.failedSet
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEventTypes
-}
type alias DescribeEventTypesResponse =
    { eventTypes : Maybe (List EventType)
    , nextToken : Maybe String
    }



describeEventTypesResponseDecoder : JD.Decoder DescribeEventTypesResponse
describeEventTypesResponseDecoder =
    JD.succeed DescribeEventTypesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventTypes", "EventTypes"]
            (JD.list eventTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeEventTypesResponseToString : DescribeEventTypesResponse -> String -- List (String, String)
describeEventTypesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventTypes" "" -- val.eventTypes
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEvents
-}
type alias DescribeEventsResponse =
    { events : Maybe (List Event)
    , nextToken : Maybe String
    }



describeEventsResponseDecoder : JD.Decoder DescribeEventsResponse
describeEventsResponseDecoder =
    JD.succeed DescribeEventsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["events", "Events"]
            (JD.list eventDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeEventsResponseToString : DescribeEventsResponse -> String -- List (String, String)
describeEventsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "events" "" -- val.events
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>The number of entities that are affected by one or more events. Returned by the <a>DescribeEntityAggregates</a> operation.</p>
-}
type alias EntityAggregate =
    { eventArn : Maybe String
    , count : Maybe Int
    }



entityAggregateDecoder : JD.Decoder EntityAggregate
entityAggregateDecoder =
    JD.succeed EntityAggregate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventArn", "EventArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["count", "Count"]
            JD.int
        )
        




entityAggregateToString : EntityAggregate -> String -- List (String, String)
entityAggregateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventArn" "" -- val.eventArn
        
    --     |> Dict.insert
    --         "count" "" -- val.count
        
    --     |> Dict.toList
    ""



{-| <p>The values to use to filter results from the <a>DescribeAffectedEntities</a> operation.</p>
-}
type alias EntityFilter =
    { eventArns : (List String)
    , entityArns : Maybe (List String)
    , entityValues : Maybe (List String)
    , lastUpdatedTimes : Maybe (List DateTimeRange)
    , tags : Maybe (List (Dict String String))
    , statusCodes : Maybe (List EntityStatusCode)
    }



entityFilterDecoder : JD.Decoder EntityFilter
entityFilterDecoder =
    JD.succeed EntityFilter
        
        |> JDP.custom (AWS.Core.Decode.required
            ["eventArns", "EventArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["entityArns", "EntityArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["entityValues", "EntityValues"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastUpdatedTimes", "LastUpdatedTimes"]
            (JD.list dateTimeRangeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list (AWS.Core.Decode.dict JD.string))
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["statusCodes", "StatusCodes"]
            (JD.list entityStatusCodeDecoder)
        )
        




entityFilterToString : EntityFilter -> String -- List (String, String)
entityFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventArns" "" -- val.eventArns
        
    --     |> Dict.insert
    --         "entityArns" "" -- val.entityArns
        
    --     |> Dict.insert
    --         "entityValues" "" -- val.entityValues
        
    --     |> Dict.insert
    --         "lastUpdatedTimes" "" -- val.lastUpdatedTimes
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "statusCodes" "" -- val.statusCodes
        
    --     |> Dict.toList
    ""



{-| <p>Summary information about an event, returned by the <a>DescribeEvents</a> operation. The <a>DescribeEventDetails</a> operation also returns this information, as well as the <a>EventDescription</a> and additional event metadata.</p>
-}
type alias Event =
    { arn : Maybe String
    , service : Maybe String
    , eventTypeCode : Maybe String
    , eventTypeCategory : Maybe EventTypeCategory
    , region : Maybe String
    , availabilityZone : Maybe String
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , lastUpdatedTime : Maybe Posix
    , statusCode : Maybe EventStatusCode
    }



eventDecoder : JD.Decoder Event
eventDecoder =
    JD.succeed Event
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["service", "Service"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventTypeCode", "EventTypeCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventTypeCategory", "EventTypeCategory"]
            eventTypeCategoryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["region", "Region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["availabilityZone", "AvailabilityZone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["startTime", "StartTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["endTime", "EndTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastUpdatedTime", "LastUpdatedTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["statusCode", "StatusCode"]
            eventStatusCodeDecoder
        )
        




eventToString : Event -> String -- List (String, String)
eventToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "service" "" -- val.service
        
    --     |> Dict.insert
    --         "eventTypeCode" "" -- val.eventTypeCode
        
    --     |> Dict.insert
    --         "eventTypeCategory" "" -- val.eventTypeCategory
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "endTime" "" -- val.endTime
        
    --     |> Dict.insert
    --         "lastUpdatedTime" "" -- val.lastUpdatedTime
        
    --     |> Dict.insert
    --         "statusCode" "" -- val.statusCode
        
    --     |> Dict.toList
    ""



{-| <p>The number of events of each issue type. Returned by the <a>DescribeEventAggregates</a> operation.</p>
-}
type alias EventAggregate =
    { aggregateValue : Maybe String
    , count : Maybe Int
    }



eventAggregateDecoder : JD.Decoder EventAggregate
eventAggregateDecoder =
    JD.succeed EventAggregate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["aggregateValue", "AggregateValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["count", "Count"]
            JD.int
        )
        




eventAggregateToString : EventAggregate -> String -- List (String, String)
eventAggregateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "aggregateValue" "" -- val.aggregateValue
        
    --     |> Dict.insert
    --         "count" "" -- val.count
        
    --     |> Dict.toList
    ""



{-| <p>The detailed description of the event. Included in the information returned by the <a>DescribeEventDetails</a> operation.</p>
-}
type alias EventDescription =
    { latestDescription : Maybe String
    }



eventDescriptionDecoder : JD.Decoder EventDescription
eventDescriptionDecoder =
    JD.succeed EventDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["latestDescription", "LatestDescription"]
            JD.string
        )
        




eventDescriptionToString : EventDescription -> String -- List (String, String)
eventDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "latestDescription" "" -- val.latestDescription
        
    --     |> Dict.toList
    ""



{-| <p>Detailed information about an event. A combination of an <a>Event</a> object, an <a>EventDescription</a> object, and additional metadata about the event. Returned by the <a>DescribeEventDetails</a> operation.</p>
-}
type alias EventDetails =
    { event : Maybe Event
    , eventDescription : Maybe EventDescription
    , eventMetadata : Maybe (Dict String String)
    }



eventDetailsDecoder : JD.Decoder EventDetails
eventDetailsDecoder =
    JD.succeed EventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["event", "Event"]
            eventDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventDescription", "EventDescription"]
            eventDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventMetadata", "EventMetadata"]
            (AWS.Core.Decode.dict JD.string)
        )
        




eventDetailsToString : EventDetails -> String -- List (String, String)
eventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "event" "" -- val.event
        
    --     |> Dict.insert
    --         "eventDescription" "" -- val.eventDescription
        
    --     |> Dict.insert
    --         "eventMetadata" "" -- val.eventMetadata
        
    --     |> Dict.toList
    ""



{-| <p>Error information returned when a <a>DescribeEventDetails</a> operation cannot find a specified event.</p>
-}
type alias EventDetailsErrorItem =
    { eventArn : Maybe String
    , errorName : Maybe String
    , errorMessage : Maybe String
    }



eventDetailsErrorItemDecoder : JD.Decoder EventDetailsErrorItem
eventDetailsErrorItemDecoder =
    JD.succeed EventDetailsErrorItem
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventArn", "EventArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errorName", "ErrorName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errorMessage", "ErrorMessage"]
            JD.string
        )
        




eventDetailsErrorItemToString : EventDetailsErrorItem -> String -- List (String, String)
eventDetailsErrorItemToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventArn" "" -- val.eventArn
        
    --     |> Dict.insert
    --         "errorName" "" -- val.errorName
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| <p>The values to use to filter results from the <a>DescribeEvents</a> and <a>DescribeEventAggregates</a> operations.</p>
-}
type alias EventFilter =
    { eventArns : Maybe (List String)
    , eventTypeCodes : Maybe (List String)
    , services : Maybe (List String)
    , regions : Maybe (List String)
    , availabilityZones : Maybe (List String)
    , startTimes : Maybe (List DateTimeRange)
    , endTimes : Maybe (List DateTimeRange)
    , lastUpdatedTimes : Maybe (List DateTimeRange)
    , entityArns : Maybe (List String)
    , entityValues : Maybe (List String)
    , eventTypeCategories : Maybe (List EventTypeCategory)
    , tags : Maybe (List (Dict String String))
    , eventStatusCodes : Maybe (List EventStatusCode)
    }



eventFilterDecoder : JD.Decoder EventFilter
eventFilterDecoder =
    JD.succeed EventFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventArns", "EventArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventTypeCodes", "EventTypeCodes"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["services", "Services"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["regions", "Regions"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["availabilityZones", "AvailabilityZones"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["startTimes", "StartTimes"]
            (JD.list dateTimeRangeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["endTimes", "EndTimes"]
            (JD.list dateTimeRangeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastUpdatedTimes", "LastUpdatedTimes"]
            (JD.list dateTimeRangeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["entityArns", "EntityArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["entityValues", "EntityValues"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventTypeCategories", "EventTypeCategories"]
            (JD.list eventTypeCategoryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list (AWS.Core.Decode.dict JD.string))
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventStatusCodes", "EventStatusCodes"]
            (JD.list eventStatusCodeDecoder)
        )
        




eventFilterToString : EventFilter -> String -- List (String, String)
eventFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventArns" "" -- val.eventArns
        
    --     |> Dict.insert
    --         "eventTypeCodes" "" -- val.eventTypeCodes
        
    --     |> Dict.insert
    --         "services" "" -- val.services
        
    --     |> Dict.insert
    --         "regions" "" -- val.regions
        
    --     |> Dict.insert
    --         "availabilityZones" "" -- val.availabilityZones
        
    --     |> Dict.insert
    --         "startTimes" "" -- val.startTimes
        
    --     |> Dict.insert
    --         "endTimes" "" -- val.endTimes
        
    --     |> Dict.insert
    --         "lastUpdatedTimes" "" -- val.lastUpdatedTimes
        
    --     |> Dict.insert
    --         "entityArns" "" -- val.entityArns
        
    --     |> Dict.insert
    --         "entityValues" "" -- val.entityValues
        
    --     |> Dict.insert
    --         "eventTypeCategories" "" -- val.eventTypeCategories
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "eventStatusCodes" "" -- val.eventStatusCodes
        
    --     |> Dict.toList
    ""



{-| <p>Metadata about a type of event that is reported by AWS Health. Data consists of the category (for example, <code>issue</code>), the service (for example, <code>EC2</code>), and the event type code (for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>).</p>
-}
type alias EventType =
    { service : Maybe String
    , code : Maybe String
    , category : Maybe EventTypeCategory
    }



eventTypeDecoder : JD.Decoder EventType
eventTypeDecoder =
    JD.succeed EventType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["service", "Service"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["code", "Code"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["category", "Category"]
            eventTypeCategoryDecoder
        )
        




eventTypeToString : EventType -> String -- List (String, String)
eventTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "service" "" -- val.service
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.insert
    --         "category" "" -- val.category
        
    --     |> Dict.toList
    ""



{-| <p>The values to use to filter results from the <a>DescribeEventTypes</a> operation.</p>
-}
type alias EventTypeFilter =
    { eventTypeCodes : Maybe (List String)
    , services : Maybe (List String)
    , eventTypeCategories : Maybe (List EventTypeCategory)
    }



eventTypeFilterDecoder : JD.Decoder EventTypeFilter
eventTypeFilterDecoder =
    JD.succeed EventTypeFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventTypeCodes", "EventTypeCodes"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["services", "Services"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventTypeCategories", "EventTypeCategories"]
            (JD.list eventTypeCategoryDecoder)
        )
        




eventTypeFilterToString : EventTypeFilter -> String -- List (String, String)
eventTypeFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventTypeCodes" "" -- val.eventTypeCodes
        
    --     |> Dict.insert
    --         "services" "" -- val.services
        
    --     |> Dict.insert
    --         "eventTypeCategories" "" -- val.eventTypeCategories
        
    --     |> Dict.toList
    ""



{-| One of

* `EntityStatusCode_IMPAIRED`
* `EntityStatusCode_UNIMPAIRED`
* `EntityStatusCode_UNKNOWN`

-}
type EntityStatusCode
    = EntityStatusCode_IMPAIRED
    | EntityStatusCode_UNIMPAIRED
    | EntityStatusCode_UNKNOWN



entityStatusCodeDecoder : JD.Decoder EntityStatusCode
entityStatusCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IMPAIRED" ->
                        JD.succeed EntityStatusCode_IMPAIRED

                    "UNIMPAIRED" ->
                        JD.succeed EntityStatusCode_UNIMPAIRED

                    "UNKNOWN" ->
                        JD.succeed EntityStatusCode_UNKNOWN


                    _ ->
                        JD.fail "bad thing"
            )




entityStatusCodeToString : EntityStatusCode -> String
entityStatusCodeToString val =
    case val of
        EntityStatusCode_IMPAIRED ->
            "IMPAIRED"

        EntityStatusCode_UNIMPAIRED ->
            "UNIMPAIRED"

        EntityStatusCode_UNKNOWN ->
            "UNKNOWN"




{-| One of

* `EventAggregateField_eventTypeCategory`

-}
type EventAggregateField
    = EventAggregateField_eventTypeCategory



eventAggregateFieldDecoder : JD.Decoder EventAggregateField
eventAggregateFieldDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "eventTypeCategory" ->
                        JD.succeed EventAggregateField_eventTypeCategory


                    _ ->
                        JD.fail "bad thing"
            )




eventAggregateFieldToString : EventAggregateField -> String
eventAggregateFieldToString val =
    case val of
        EventAggregateField_eventTypeCategory ->
            "eventTypeCategory"




{-| One of

* `EventStatusCode_open`
* `EventStatusCode_closed`
* `EventStatusCode_upcoming`

-}
type EventStatusCode
    = EventStatusCode_open
    | EventStatusCode_closed
    | EventStatusCode_upcoming



eventStatusCodeDecoder : JD.Decoder EventStatusCode
eventStatusCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "open" ->
                        JD.succeed EventStatusCode_open

                    "closed" ->
                        JD.succeed EventStatusCode_closed

                    "upcoming" ->
                        JD.succeed EventStatusCode_upcoming


                    _ ->
                        JD.fail "bad thing"
            )




eventStatusCodeToString : EventStatusCode -> String
eventStatusCodeToString val =
    case val of
        EventStatusCode_open ->
            "open"

        EventStatusCode_closed ->
            "closed"

        EventStatusCode_upcoming ->
            "upcoming"




{-| One of

* `EventTypeCategory_issue`
* `EventTypeCategory_accountNotification`
* `EventTypeCategory_scheduledChange`
* `EventTypeCategory_investigation`

-}
type EventTypeCategory
    = EventTypeCategory_issue
    | EventTypeCategory_accountNotification
    | EventTypeCategory_scheduledChange
    | EventTypeCategory_investigation



eventTypeCategoryDecoder : JD.Decoder EventTypeCategory
eventTypeCategoryDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "issue" ->
                        JD.succeed EventTypeCategory_issue

                    "accountNotification" ->
                        JD.succeed EventTypeCategory_accountNotification

                    "scheduledChange" ->
                        JD.succeed EventTypeCategory_scheduledChange

                    "investigation" ->
                        JD.succeed EventTypeCategory_investigation


                    _ ->
                        JD.fail "bad thing"
            )




eventTypeCategoryToString : EventTypeCategory -> String
eventTypeCategoryToString val =
    case val of
        EventTypeCategory_issue ->
            "issue"

        EventTypeCategory_accountNotification ->
            "accountNotification"

        EventTypeCategory_scheduledChange ->
            "scheduledChange"

        EventTypeCategory_investigation ->
            "investigation"







{-| undefined
-}
type alias DescribeAffectedEntitiesRequest =
    { filter : EntityFilter
    , locale : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias DescribeEntityAggregatesRequest =
    { eventArns : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeEventAggregatesRequest =
    { filter : Maybe EventFilter
    , aggregateField : EventAggregateField
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeEventDetailsRequest =
    { eventArns : (List String)
    , locale : Maybe String
    }


{-| undefined
-}
type alias DescribeEventTypesRequest =
    { filter : Maybe EventTypeFilter
    , locale : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias DescribeEventsRequest =
    { filter : Maybe EventFilter
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , locale : Maybe String
    }






affectedEntityEncoder : AffectedEntity -> JE.Value
affectedEntityEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("entityArn", data.entityArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("eventArn", data.eventArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("entityValue", data.entityValue)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("entityUrl", data.entityUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("awsAccountId", data.awsAccountId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastUpdatedTime", data.lastUpdatedTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (entityStatusCodeToString >> JE.string)
            ("statusCode", data.statusCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("tags", data.tags)
        
        
        |> JE.object






dateTimeRangeEncoder : DateTimeRange -> JE.Value
dateTimeRangeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("from", data.from)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("to", data.to)
        
        
        |> JE.object






describeAffectedEntitiesRequestEncoder : DescribeAffectedEntitiesRequest -> JE.Value
describeAffectedEntitiesRequestEncoder data =
    []
        
        
        |> (::) ("filter", data.filter |> (entityFilterEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("locale", data.locale)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






describeAffectedEntitiesResponseEncoder : DescribeAffectedEntitiesResponse -> JE.Value
describeAffectedEntitiesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (affectedEntityEncoder))
            ("entities", data.entities)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeEntityAggregatesRequestEncoder : DescribeEntityAggregatesRequest -> JE.Value
describeEntityAggregatesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("eventArns", data.eventArns)
        
        
        |> JE.object






describeEntityAggregatesResponseEncoder : DescribeEntityAggregatesResponse -> JE.Value
describeEntityAggregatesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (entityAggregateEncoder))
            ("entityAggregates", data.entityAggregates)
        
        
        |> JE.object






describeEventAggregatesRequestEncoder : DescribeEventAggregatesRequest -> JE.Value
describeEventAggregatesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (eventFilterEncoder)
            ("filter", data.filter)
        
        
        
        |> (::) ("aggregateField", data.aggregateField |> (eventAggregateFieldToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeEventAggregatesResponseEncoder : DescribeEventAggregatesResponse -> JE.Value
describeEventAggregatesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (eventAggregateEncoder))
            ("eventAggregates", data.eventAggregates)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeEventDetailsRequestEncoder : DescribeEventDetailsRequest -> JE.Value
describeEventDetailsRequestEncoder data =
    []
        
        
        |> (::) ("eventArns", data.eventArns |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("locale", data.locale)
        
        
        |> JE.object






describeEventDetailsResponseEncoder : DescribeEventDetailsResponse -> JE.Value
describeEventDetailsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (eventDetailsEncoder))
            ("successfulSet", data.successfulSet)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (eventDetailsErrorItemEncoder))
            ("failedSet", data.failedSet)
        
        
        |> JE.object






describeEventTypesRequestEncoder : DescribeEventTypesRequest -> JE.Value
describeEventTypesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (eventTypeFilterEncoder)
            ("filter", data.filter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("locale", data.locale)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






describeEventTypesResponseEncoder : DescribeEventTypesResponse -> JE.Value
describeEventTypesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (eventTypeEncoder))
            ("eventTypes", data.eventTypes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeEventsRequestEncoder : DescribeEventsRequest -> JE.Value
describeEventsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (eventFilterEncoder)
            ("filter", data.filter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("locale", data.locale)
        
        
        |> JE.object






describeEventsResponseEncoder : DescribeEventsResponse -> JE.Value
describeEventsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (eventEncoder))
            ("events", data.events)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






entityAggregateEncoder : EntityAggregate -> JE.Value
entityAggregateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("eventArn", data.eventArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("count", data.count)
        
        
        |> JE.object






entityFilterEncoder : EntityFilter -> JE.Value
entityFilterEncoder data =
    []
        
        
        |> (::) ("eventArns", data.eventArns |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("entityArns", data.entityArns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("entityValues", data.entityValues)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (dateTimeRangeEncoder))
            ("lastUpdatedTimes", data.lastUpdatedTimes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.dict identity (JE.string)))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (entityStatusCodeToString >> JE.string))
            ("statusCodes", data.statusCodes)
        
        
        |> JE.object






eventEncoder : Event -> JE.Value
eventEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("service", data.service)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("eventTypeCode", data.eventTypeCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eventTypeCategoryToString >> JE.string)
            ("eventTypeCategory", data.eventTypeCategory)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("availabilityZone", data.availabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("startTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("endTime", data.endTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastUpdatedTime", data.lastUpdatedTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eventStatusCodeToString >> JE.string)
            ("statusCode", data.statusCode)
        
        
        |> JE.object






eventAggregateEncoder : EventAggregate -> JE.Value
eventAggregateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("aggregateValue", data.aggregateValue)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("count", data.count)
        
        
        |> JE.object






eventDescriptionEncoder : EventDescription -> JE.Value
eventDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("latestDescription", data.latestDescription)
        
        
        |> JE.object






eventDetailsEncoder : EventDetails -> JE.Value
eventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (eventEncoder)
            ("event", data.event)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eventDescriptionEncoder)
            ("eventDescription", data.eventDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("eventMetadata", data.eventMetadata)
        
        
        |> JE.object






eventDetailsErrorItemEncoder : EventDetailsErrorItem -> JE.Value
eventDetailsErrorItemEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("eventArn", data.eventArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("errorName", data.errorName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("errorMessage", data.errorMessage)
        
        
        |> JE.object






eventFilterEncoder : EventFilter -> JE.Value
eventFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("eventArns", data.eventArns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("eventTypeCodes", data.eventTypeCodes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("services", data.services)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("regions", data.regions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("availabilityZones", data.availabilityZones)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (dateTimeRangeEncoder))
            ("startTimes", data.startTimes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (dateTimeRangeEncoder))
            ("endTimes", data.endTimes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (dateTimeRangeEncoder))
            ("lastUpdatedTimes", data.lastUpdatedTimes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("entityArns", data.entityArns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("entityValues", data.entityValues)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (eventTypeCategoryToString >> JE.string))
            ("eventTypeCategories", data.eventTypeCategories)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.dict identity (JE.string)))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (eventStatusCodeToString >> JE.string))
            ("eventStatusCodes", data.eventStatusCodes)
        
        
        |> JE.object






eventTypeEncoder : EventType -> JE.Value
eventTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("service", data.service)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("code", data.code)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eventTypeCategoryToString >> JE.string)
            ("category", data.category)
        
        
        |> JE.object






eventTypeFilterEncoder : EventTypeFilter -> JE.Value
eventTypeFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("eventTypeCodes", data.eventTypeCodes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("services", data.services)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (eventTypeCategoryToString >> JE.string))
            ("eventTypeCategories", data.eventTypeCategories)
        
        
        |> JE.object





















