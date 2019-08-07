module AWS.CloudWatchEvents
    exposing
        ( service
        , activateEventSource
        , createEventBus
        , CreateEventBusOptions
        , createPartnerEventSource
        , deactivateEventSource
        , deleteEventBus
        , deletePartnerEventSource
        , deleteRule
        , DeleteRuleOptions
        , describeEventBus
        , DescribeEventBusOptions
        , describeEventSource
        , describePartnerEventSource
        , describeRule
        , DescribeRuleOptions
        , disableRule
        , DisableRuleOptions
        , enableRule
        , EnableRuleOptions
        , listEventBuses
        , ListEventBusesOptions
        , listEventSources
        , ListEventSourcesOptions
        , listPartnerEventSourceAccounts
        , ListPartnerEventSourceAccountsOptions
        , listPartnerEventSources
        , ListPartnerEventSourcesOptions
        , listRuleNamesByTarget
        , ListRuleNamesByTargetOptions
        , listRules
        , ListRulesOptions
        , listTagsForResource
        , listTargetsByRule
        , ListTargetsByRuleOptions
        , putEvents
        , putPartnerEvents
        , putPermission
        , PutPermissionOptions
        , putRule
        , PutRuleOptions
        , putTargets
        , PutTargetsOptions
        , removePermission
        , RemovePermissionOptions
        , removeTargets
        , RemoveTargetsOptions
        , tagResource
        , testEventPattern
        , untagResource
        , AssignPublicIp(..)
        , AwsVpcConfiguration
        , BatchArrayProperties
        , BatchParameters
        , BatchRetryStrategy
        , Condition
        , CreateEventBusResponse
        , CreatePartnerEventSourceResponse
        , DescribeEventBusResponse
        , DescribeEventSourceResponse
        , DescribePartnerEventSourceResponse
        , DescribeRuleResponse
        , EcsParameters
        , EventBus
        , EventSource
        , EventSourceState(..)
        , InputTransformer
        , KinesisParameters
        , LaunchType(..)
        , ListEventBusesResponse
        , ListEventSourcesResponse
        , ListPartnerEventSourceAccountsResponse
        , ListPartnerEventSourcesResponse
        , ListRuleNamesByTargetResponse
        , ListRulesResponse
        , ListTagsForResourceResponse
        , ListTargetsByRuleResponse
        , NetworkConfiguration
        , PartnerEventSource
        , PartnerEventSourceAccount
        , PutEventsRequestEntry
        , PutEventsResponse
        , PutEventsResultEntry
        , PutPartnerEventsRequestEntry
        , PutPartnerEventsResponse
        , PutPartnerEventsResultEntry
        , PutRuleResponse
        , PutTargetsResponse
        , PutTargetsResultEntry
        , RemoveTargetsResponse
        , RemoveTargetsResultEntry
        , Rule
        , RuleState(..)
        , RunCommandParameters
        , RunCommandTarget
        , SqsParameters
        , Tag
        , TagResourceResponse
        , Target
        , TestEventPatternResponse
        , UntagResourceResponse
        )

{-| <p>Amazon EventBridge helps you to respond to state changes in your AWS resources. When your resources change state, they automatically send events into an event stream. You can create rules that match selected events in the stream and route them to targets to take action. You can also use rules to take action on a predetermined schedule. For example, you can configure rules to:</p> <ul> <li> <p>Automatically invoke an AWS Lambda function to update DNS entries when an event notifies you that Amazon EC2 instance enters the running state</p> </li> <li> <p>Direct specific API records from AWS CloudTrail to an Amazon Kinesis data stream for detailed analysis of potential security or availability risks</p> </li> <li> <p>Periodically invoke a built-in target to create a snapshot of an Amazon EBS volume</p> </li> </ul> <p>For more information about the features of Amazon EventBridge, see the <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/">Amazon EventBridge User Guide</a>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [activateEventSource](#activateEventSource)
* [createEventBus](#createEventBus)
* [CreateEventBusOptions](#CreateEventBusOptions)
* [createPartnerEventSource](#createPartnerEventSource)
* [deactivateEventSource](#deactivateEventSource)
* [deleteEventBus](#deleteEventBus)
* [deletePartnerEventSource](#deletePartnerEventSource)
* [deleteRule](#deleteRule)
* [DeleteRuleOptions](#DeleteRuleOptions)
* [describeEventBus](#describeEventBus)
* [DescribeEventBusOptions](#DescribeEventBusOptions)
* [describeEventSource](#describeEventSource)
* [describePartnerEventSource](#describePartnerEventSource)
* [describeRule](#describeRule)
* [DescribeRuleOptions](#DescribeRuleOptions)
* [disableRule](#disableRule)
* [DisableRuleOptions](#DisableRuleOptions)
* [enableRule](#enableRule)
* [EnableRuleOptions](#EnableRuleOptions)
* [listEventBuses](#listEventBuses)
* [ListEventBusesOptions](#ListEventBusesOptions)
* [listEventSources](#listEventSources)
* [ListEventSourcesOptions](#ListEventSourcesOptions)
* [listPartnerEventSourceAccounts](#listPartnerEventSourceAccounts)
* [ListPartnerEventSourceAccountsOptions](#ListPartnerEventSourceAccountsOptions)
* [listPartnerEventSources](#listPartnerEventSources)
* [ListPartnerEventSourcesOptions](#ListPartnerEventSourcesOptions)
* [listRuleNamesByTarget](#listRuleNamesByTarget)
* [ListRuleNamesByTargetOptions](#ListRuleNamesByTargetOptions)
* [listRules](#listRules)
* [ListRulesOptions](#ListRulesOptions)
* [listTagsForResource](#listTagsForResource)
* [listTargetsByRule](#listTargetsByRule)
* [ListTargetsByRuleOptions](#ListTargetsByRuleOptions)
* [putEvents](#putEvents)
* [putPartnerEvents](#putPartnerEvents)
* [putPermission](#putPermission)
* [PutPermissionOptions](#PutPermissionOptions)
* [putRule](#putRule)
* [PutRuleOptions](#PutRuleOptions)
* [putTargets](#putTargets)
* [PutTargetsOptions](#PutTargetsOptions)
* [removePermission](#removePermission)
* [RemovePermissionOptions](#RemovePermissionOptions)
* [removeTargets](#removeTargets)
* [RemoveTargetsOptions](#RemoveTargetsOptions)
* [tagResource](#tagResource)
* [testEventPattern](#testEventPattern)
* [untagResource](#untagResource)


@docs activateEventSource,createEventBus,CreateEventBusOptions,createPartnerEventSource,deactivateEventSource,deleteEventBus,deletePartnerEventSource,deleteRule,DeleteRuleOptions,describeEventBus,DescribeEventBusOptions,describeEventSource,describePartnerEventSource,describeRule,DescribeRuleOptions,disableRule,DisableRuleOptions,enableRule,EnableRuleOptions,listEventBuses,ListEventBusesOptions,listEventSources,ListEventSourcesOptions,listPartnerEventSourceAccounts,ListPartnerEventSourceAccountsOptions,listPartnerEventSources,ListPartnerEventSourcesOptions,listRuleNamesByTarget,ListRuleNamesByTargetOptions,listRules,ListRulesOptions,listTagsForResource,listTargetsByRule,ListTargetsByRuleOptions,putEvents,putPartnerEvents,putPermission,PutPermissionOptions,putRule,PutRuleOptions,putTargets,PutTargetsOptions,removePermission,RemovePermissionOptions,removeTargets,RemoveTargetsOptions,tagResource,testEventPattern,untagResource

## Responses

* [CreateEventBusResponse](#CreateEventBusResponse)
* [CreatePartnerEventSourceResponse](#CreatePartnerEventSourceResponse)
* [DescribeEventBusResponse](#DescribeEventBusResponse)
* [DescribeEventSourceResponse](#DescribeEventSourceResponse)
* [DescribePartnerEventSourceResponse](#DescribePartnerEventSourceResponse)
* [DescribeRuleResponse](#DescribeRuleResponse)
* [ListEventBusesResponse](#ListEventBusesResponse)
* [ListEventSourcesResponse](#ListEventSourcesResponse)
* [ListPartnerEventSourceAccountsResponse](#ListPartnerEventSourceAccountsResponse)
* [ListPartnerEventSourcesResponse](#ListPartnerEventSourcesResponse)
* [ListRuleNamesByTargetResponse](#ListRuleNamesByTargetResponse)
* [ListRulesResponse](#ListRulesResponse)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [ListTargetsByRuleResponse](#ListTargetsByRuleResponse)
* [PutEventsResponse](#PutEventsResponse)
* [PutPartnerEventsResponse](#PutPartnerEventsResponse)
* [PutRuleResponse](#PutRuleResponse)
* [PutTargetsResponse](#PutTargetsResponse)
* [RemoveTargetsResponse](#RemoveTargetsResponse)
* [TagResourceResponse](#TagResourceResponse)
* [TestEventPatternResponse](#TestEventPatternResponse)
* [UntagResourceResponse](#UntagResourceResponse)


@docs CreateEventBusResponse,CreatePartnerEventSourceResponse,DescribeEventBusResponse,DescribeEventSourceResponse,DescribePartnerEventSourceResponse,DescribeRuleResponse,ListEventBusesResponse,ListEventSourcesResponse,ListPartnerEventSourceAccountsResponse,ListPartnerEventSourcesResponse,ListRuleNamesByTargetResponse,ListRulesResponse,ListTagsForResourceResponse,ListTargetsByRuleResponse,PutEventsResponse,PutPartnerEventsResponse,PutRuleResponse,PutTargetsResponse,RemoveTargetsResponse,TagResourceResponse,TestEventPatternResponse,UntagResourceResponse

## Records

* [AwsVpcConfiguration](#AwsVpcConfiguration)
* [BatchArrayProperties](#BatchArrayProperties)
* [BatchParameters](#BatchParameters)
* [BatchRetryStrategy](#BatchRetryStrategy)
* [Condition](#Condition)
* [EcsParameters](#EcsParameters)
* [EventBus](#EventBus)
* [EventSource](#EventSource)
* [InputTransformer](#InputTransformer)
* [KinesisParameters](#KinesisParameters)
* [NetworkConfiguration](#NetworkConfiguration)
* [PartnerEventSource](#PartnerEventSource)
* [PartnerEventSourceAccount](#PartnerEventSourceAccount)
* [PutEventsRequestEntry](#PutEventsRequestEntry)
* [PutEventsResultEntry](#PutEventsResultEntry)
* [PutPartnerEventsRequestEntry](#PutPartnerEventsRequestEntry)
* [PutPartnerEventsResultEntry](#PutPartnerEventsResultEntry)
* [PutTargetsResultEntry](#PutTargetsResultEntry)
* [RemoveTargetsResultEntry](#RemoveTargetsResultEntry)
* [Rule](#Rule)
* [RunCommandParameters](#RunCommandParameters)
* [RunCommandTarget](#RunCommandTarget)
* [SqsParameters](#SqsParameters)
* [Tag](#Tag)
* [Target](#Target)


@docs AwsVpcConfiguration,BatchArrayProperties,BatchParameters,BatchRetryStrategy,Condition,EcsParameters,EventBus,EventSource,InputTransformer,KinesisParameters,NetworkConfiguration,PartnerEventSource,PartnerEventSourceAccount,PutEventsRequestEntry,PutEventsResultEntry,PutPartnerEventsRequestEntry,PutPartnerEventsResultEntry,PutTargetsResultEntry,RemoveTargetsResultEntry,Rule,RunCommandParameters,RunCommandTarget,SqsParameters,Tag,Target

## Unions

* [AssignPublicIp](#AssignPublicIp)
* [EventSourceState](#EventSourceState)
* [LaunchType](#LaunchType)
* [RuleState](#RuleState)


@docs AssignPublicIp,EventSourceState,LaunchType,RuleState

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE

import Time exposing (Posix)
import Iso8601
import Json.Decode.Extra as JDX
import Dict exposing (Dict)


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "events"
        "2015-10-07"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWSEvents")



-- OPERATIONS

{-| <p>Activates a partner event source that has been deactivated. Once activated, your matching event bus will start receiving events from the event source.</p> <note> <p>This operation is performed by AWS customers, not by SaaS partners.</p> </note>

__Required Parameters__

* `name` __:__ `String`


-}

activateEventSource :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

activateEventSource name =
    
    let
        requestInput = ActivateEventSourceRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> activateEventSourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ActivateEventSource"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Creates a new event bus within your account. This can be a custom event bus which you can use to receive events from your own custom applications and services, or it can be a partner event bus which can be matched to a partner event source.</p> <note> <p>This operation is used by AWS customers, not by SaaS partners.</p> </note>

__Required Parameters__

* `name` __:__ `String`


-}

createEventBus :
  
    String ->
  
  
    ( CreateEventBusOptions -> CreateEventBusOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateEventBusResponse)

createEventBus name setOptions =
    
    let
        requestInput = CreateEventBusRequest
            
            name
            
            options.eventSourceName
            
        
        options = setOptions (CreateEventBusOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createEventBusRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateEventBus"
                
                (AWS.Core.Decode.ResultDecoder "CreateEventBusResponse" createEventBusResponseDecoder)
                
            )



{-| Options for a createEventBus request
-}
type alias CreateEventBusOptions =
    {
    eventSourceName : Maybe String
    }



{-| <p>Called by an SaaS partner to create a partner event source.</p> <note> <p>This operation is not used by AWS customers.</p> </note> <p>Each partner event source can be used by one AWS account to create a matching partner event bus in that AWS account. A SaaS partner must create one partner event source for each AWS account that wants to receive those event types. </p> <p>A partner event source creates events based on resources in the SaaS partner's service or application.</p> <p>An AWS account that creates a partner event bus that matches the partner event source can use that event bus to receive events from the partner, and then process them using AWS Events rules and targets.</p> <p>Partner event source names follow this format:</p> <p> <code>aws.partner/<i>partner_name</i>/<i>event_namespace</i>/<i>event_name</i> </code> </p> <ul> <li> <p> <i>partner_name</i> is determined during partner registration and identifies the partner to AWS customers.</p> </li> <li> <p>For <i>event_namespace</i>, we recommend that partners use a string that identifies the AWS customer within the partner's system. This should not be the customer's AWS account ID.</p> </li> <li> <p> <i>event_name</i> is determined by the partner, and should uniquely identify an event-generating resource within the partner system. This should help AWS customers decide whether to create an event bus to receive these events.</p> </li> </ul>

__Required Parameters__

* `name` __:__ `String`
* `account` __:__ `String`


-}

createPartnerEventSource :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreatePartnerEventSourceResponse)

createPartnerEventSource name account =
    
    let
        requestInput = CreatePartnerEventSourceRequest
            
            name
            
            account
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createPartnerEventSourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreatePartnerEventSource"
                
                (AWS.Core.Decode.ResultDecoder "CreatePartnerEventSourceResponse" createPartnerEventSourceResponseDecoder)
                
            )





{-| <p>An AWS customer uses this operation to temporarily stop receiving events from the specified partner event source. The matching event bus isn't deleted. </p> <p>When you deactivate a partner event source, the source goes into <code>PENDING</code> state. If it remains in <code>PENDING</code> state for more than two weeks, it's deleted.</p> <p>To activate a deactivated partner event source, use <a>ActivateEventSource</a>.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deactivateEventSource :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deactivateEventSource name =
    
    let
        requestInput = DeactivateEventSourceRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deactivateEventSourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeactivateEventSource"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes the specified custom event bus or partner event bus. All rules associated with this event bus are also deleted. You can't delete your account's default event bus.</p> <note> <p>This operation is performed by AWS customers, not by SaaS partners.</p> </note>

__Required Parameters__

* `name` __:__ `String`


-}

deleteEventBus :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteEventBus name =
    
    let
        requestInput = DeleteEventBusRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteEventBusRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteEventBus"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>This operation is used by SaaS partners to delete a partner event source. AWS customers don't use this operation.</p> <p>When you delete an event source, the status of the corresponding partner event bus in the AWS customer account becomes <code>DELETED</code>.</p>

__Required Parameters__

* `name` __:__ `String`
* `account` __:__ `String`


-}

deletePartnerEventSource :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deletePartnerEventSource name account =
    
    let
        requestInput = DeletePartnerEventSourceRequest
            
            name
            
            account
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deletePartnerEventSourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeletePartnerEventSource"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes the specified rule.</p> <p>Before you can delete the rule, you must remove all targets, using <a>RemoveTargets</a>.</p> <p>When you delete a rule, incoming events might continue to match to the deleted rule. Allow a short period of time for changes to take effect.</p> <p>Managed rules are rules created and managed by another AWS service on your behalf. These rules are created by those other AWS services to support functionality in those services. You can delete these rules using the <code>Force</code> option, but you should do so only if you're sure that the other service isn't still using that rule.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deleteRule :
  
    String ->
  
  
    ( DeleteRuleOptions -> DeleteRuleOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteRule name setOptions =
    
    let
        requestInput = DeleteRuleRequest
            
            name
            
            options.eventBusName
            
            options.force
            
        
        options = setOptions (DeleteRuleOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRuleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRule"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a deleteRule request
-}
type alias DeleteRuleOptions =
    {
    eventBusName : Maybe String,force : Maybe Bool
    }



{-| <p>Displays details about an event bus in your account. This can include the external AWS accounts that are permitted to write events to your default event bus, and the associated policy. For custom event buses and partner event buses, it displays the name, ARN, policy, state, and creation time.</p> <p> To enable your account to receive events from other accounts on its default event bus, use <a>PutPermission</a>.</p> <p>For more information about partner event buses, see <a>CreateEventBus</a>.</p>

__Required Parameters__



-}

describeEventBus :
  
  
    ( DescribeEventBusOptions -> DescribeEventBusOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEventBusResponse)

describeEventBus setOptions =
    
    let
        requestInput = DescribeEventBusRequest
            
            options.name
            
        
        options = setOptions (DescribeEventBusOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeEventBusRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEventBus"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEventBusResponse" describeEventBusResponseDecoder)
                
            )



{-| Options for a describeEventBus request
-}
type alias DescribeEventBusOptions =
    {
    name : Maybe String
    }



{-| <p>This operation lists details about a partner event source that is shared with your account.</p> <note> <p>This operation is run by AWS customers, not by SaaS partners.</p> </note>

__Required Parameters__

* `name` __:__ `String`


-}

describeEventSource :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEventSourceResponse)

describeEventSource name =
    
    let
        requestInput = DescribeEventSourceRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeEventSourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEventSource"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEventSourceResponse" describeEventSourceResponseDecoder)
                
            )





{-| <p>An SaaS partner can use this operation to list details about a partner event source that they have created.</p> <note> <p>AWS customers do not use this operation. Instead, AWS customers can use <a>DescribeEventSource</a> to see details about a partner event source that is shared with them.</p> </note>

__Required Parameters__

* `name` __:__ `String`


-}

describePartnerEventSource :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribePartnerEventSourceResponse)

describePartnerEventSource name =
    
    let
        requestInput = DescribePartnerEventSourceRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describePartnerEventSourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribePartnerEventSource"
                
                (AWS.Core.Decode.ResultDecoder "DescribePartnerEventSourceResponse" describePartnerEventSourceResponseDecoder)
                
            )





{-| <p>Describes the specified rule.</p> <p> <code>DescribeRule</code> doesn't list the targets of a rule. To see the targets associated with a rule, use <a>ListTargetsByRule</a>.</p>

__Required Parameters__

* `name` __:__ `String`


-}

describeRule :
  
    String ->
  
  
    ( DescribeRuleOptions -> DescribeRuleOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeRuleResponse)

describeRule name setOptions =
    
    let
        requestInput = DescribeRuleRequest
            
            name
            
            options.eventBusName
            
        
        options = setOptions (DescribeRuleOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeRuleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeRule"
                
                (AWS.Core.Decode.ResultDecoder "DescribeRuleResponse" describeRuleResponseDecoder)
                
            )



{-| Options for a describeRule request
-}
type alias DescribeRuleOptions =
    {
    eventBusName : Maybe String
    }



{-| <p>Disables the specified rule. A disabled rule won't match any events and won't self-trigger if it has a schedule expression.</p> <p>When you disable a rule, incoming events might continue to match to the disabled rule. Allow a short period of time for changes to take effect.</p>

__Required Parameters__

* `name` __:__ `String`


-}

disableRule :
  
    String ->
  
  
    ( DisableRuleOptions -> DisableRuleOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

disableRule name setOptions =
    
    let
        requestInput = DisableRuleRequest
            
            name
            
            options.eventBusName
            
        
        options = setOptions (DisableRuleOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disableRuleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisableRule"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a disableRule request
-}
type alias DisableRuleOptions =
    {
    eventBusName : Maybe String
    }



{-| <p>Enables the specified rule. If the rule doesn't exist, the operation fails.</p> <p>When you enable a rule, incoming events might not immediately start matching to a newly enabled rule. Allow a short period of time for changes to take effect.</p>

__Required Parameters__

* `name` __:__ `String`


-}

enableRule :
  
    String ->
  
  
    ( EnableRuleOptions -> EnableRuleOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

enableRule name setOptions =
    
    let
        requestInput = EnableRuleRequest
            
            name
            
            options.eventBusName
            
        
        options = setOptions (EnableRuleOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> enableRuleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "EnableRule"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a enableRule request
-}
type alias EnableRuleOptions =
    {
    eventBusName : Maybe String
    }



{-| <p>Lists all the event buses in your account, including the default event bus, custom event buses, and partner event buses.</p> <note> <p>This operation is run by AWS customers, not by SaaS partners.</p> </note>

__Required Parameters__



-}

listEventBuses :
  
  
    ( ListEventBusesOptions -> ListEventBusesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListEventBusesResponse)

listEventBuses setOptions =
    
    let
        requestInput = ListEventBusesRequest
            
            options.namePrefix
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (ListEventBusesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listEventBusesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListEventBuses"
                
                (AWS.Core.Decode.ResultDecoder "ListEventBusesResponse" listEventBusesResponseDecoder)
                
            )



{-| Options for a listEventBuses request
-}
type alias ListEventBusesOptions =
    {
    namePrefix : Maybe String,nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>You can use this to see all the partner event sources that have been shared with your AWS account. For more information about partner event sources, see <a>CreateEventBus</a>.</p> <note> <p>This operation is run by AWS customers, not by SaaS partners.</p> </note>

__Required Parameters__



-}

listEventSources :
  
  
    ( ListEventSourcesOptions -> ListEventSourcesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListEventSourcesResponse)

listEventSources setOptions =
    
    let
        requestInput = ListEventSourcesRequest
            
            options.namePrefix
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (ListEventSourcesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listEventSourcesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListEventSources"
                
                (AWS.Core.Decode.ResultDecoder "ListEventSourcesResponse" listEventSourcesResponseDecoder)
                
            )



{-| Options for a listEventSources request
-}
type alias ListEventSourcesOptions =
    {
    namePrefix : Maybe String,nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>An SaaS partner can use this operation to display the AWS account ID that a particular partner event source name is associated with.</p> <note> <p>This operation is used by SaaS partners, not by AWS customers.</p> </note>

__Required Parameters__

* `eventSourceName` __:__ `String`


-}

listPartnerEventSourceAccounts :
  
    String ->
  
  
    ( ListPartnerEventSourceAccountsOptions -> ListPartnerEventSourceAccountsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPartnerEventSourceAccountsResponse)

listPartnerEventSourceAccounts eventSourceName setOptions =
    
    let
        requestInput = ListPartnerEventSourceAccountsRequest
            
            eventSourceName
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (ListPartnerEventSourceAccountsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listPartnerEventSourceAccountsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListPartnerEventSourceAccounts"
                
                (AWS.Core.Decode.ResultDecoder "ListPartnerEventSourceAccountsResponse" listPartnerEventSourceAccountsResponseDecoder)
                
            )



{-| Options for a listPartnerEventSourceAccounts request
-}
type alias ListPartnerEventSourceAccountsOptions =
    {
    nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>An SaaS partner can use this operation to list all the partner event source names that they have created.</p> <note> <p>This operation is not used by AWS customers.</p> </note>

__Required Parameters__

* `namePrefix` __:__ `String`


-}

listPartnerEventSources :
  
    String ->
  
  
    ( ListPartnerEventSourcesOptions -> ListPartnerEventSourcesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPartnerEventSourcesResponse)

listPartnerEventSources namePrefix setOptions =
    
    let
        requestInput = ListPartnerEventSourcesRequest
            
            namePrefix
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (ListPartnerEventSourcesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listPartnerEventSourcesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListPartnerEventSources"
                
                (AWS.Core.Decode.ResultDecoder "ListPartnerEventSourcesResponse" listPartnerEventSourcesResponseDecoder)
                
            )



{-| Options for a listPartnerEventSources request
-}
type alias ListPartnerEventSourcesOptions =
    {
    nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>Lists the rules for the specified target. You can see which rules can invoke a specific target in your account.</p>

__Required Parameters__

* `targetArn` __:__ `String`


-}

listRuleNamesByTarget :
  
    String ->
  
  
    ( ListRuleNamesByTargetOptions -> ListRuleNamesByTargetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRuleNamesByTargetResponse)

listRuleNamesByTarget targetArn setOptions =
    
    let
        requestInput = ListRuleNamesByTargetRequest
            
            targetArn
            
            options.eventBusName
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (ListRuleNamesByTargetOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listRuleNamesByTargetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListRuleNamesByTarget"
                
                (AWS.Core.Decode.ResultDecoder "ListRuleNamesByTargetResponse" listRuleNamesByTargetResponseDecoder)
                
            )



{-| Options for a listRuleNamesByTarget request
-}
type alias ListRuleNamesByTargetOptions =
    {
    eventBusName : Maybe String,nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>Lists your EventBridge rules. You can either list all the rules or provide a prefix to match to the rule names.</p> <p> <code>ListRules</code> doesn't list the targets of a rule. To see the targets associated with a rule, use <a>ListTargetsByRule</a>.</p>

__Required Parameters__



-}

listRules :
  
  
    ( ListRulesOptions -> ListRulesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRulesResponse)

listRules setOptions =
    
    let
        requestInput = ListRulesRequest
            
            options.namePrefix
            
            options.eventBusName
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (ListRulesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listRulesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListRules"
                
                (AWS.Core.Decode.ResultDecoder "ListRulesResponse" listRulesResponseDecoder)
                
            )



{-| Options for a listRules request
-}
type alias ListRulesOptions =
    {
    namePrefix : Maybe String,eventBusName : Maybe String,nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>Displays the tags associated with an EventBridge resource. In EventBridge, rules can be tagged.</p>

__Required Parameters__

* `resourceARN` __:__ `String`


-}

listTagsForResource :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceResponse)

listTagsForResource resourceARN =
    
    let
        requestInput = ListTagsForResourceRequest
            
            resourceARN
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listTagsForResourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForResource"
                
                (AWS.Core.Decode.ResultDecoder "ListTagsForResourceResponse" listTagsForResourceResponseDecoder)
                
            )





{-| <p>Lists the targets assigned to the specified rule.</p>

__Required Parameters__

* `rule` __:__ `String`


-}

listTargetsByRule :
  
    String ->
  
  
    ( ListTargetsByRuleOptions -> ListTargetsByRuleOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTargetsByRuleResponse)

listTargetsByRule rule setOptions =
    
    let
        requestInput = ListTargetsByRuleRequest
            
            rule
            
            options.eventBusName
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (ListTargetsByRuleOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listTargetsByRuleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTargetsByRule"
                
                (AWS.Core.Decode.ResultDecoder "ListTargetsByRuleResponse" listTargetsByRuleResponseDecoder)
                
            )



{-| Options for a listTargetsByRule request
-}
type alias ListTargetsByRuleOptions =
    {
    eventBusName : Maybe String,nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>Sends custom events to EventBridge so that they can be matched to rules. These events can be from your custom applications and services.</p>

__Required Parameters__

* `entries` __:__ `(List PutEventsRequestEntry)`


-}

putEvents :
  
    (List PutEventsRequestEntry) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutEventsResponse)

putEvents entries =
    
    let
        requestInput = PutEventsRequest
            
            entries
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putEventsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutEvents"
                
                (AWS.Core.Decode.ResultDecoder "PutEventsResponse" putEventsResponseDecoder)
                
            )





{-| <p>This is used by SaaS partners to write events to a customer's partner event bus.</p> <note> <p>AWS customers do not use this operation. Instead, AWS customers can use <a>PutEvents</a> to write custom events from their own applications to an event bus.</p> </note>

__Required Parameters__

* `entries` __:__ `(List PutPartnerEventsRequestEntry)`


-}

putPartnerEvents :
  
    (List PutPartnerEventsRequestEntry) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutPartnerEventsResponse)

putPartnerEvents entries =
    
    let
        requestInput = PutPartnerEventsRequest
            
            entries
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putPartnerEventsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutPartnerEvents"
                
                (AWS.Core.Decode.ResultDecoder "PutPartnerEventsResponse" putPartnerEventsResponseDecoder)
                
            )





{-| <p>Running <code>PutPermission</code> permits the specified AWS account or AWS organization to put events to the specified <i>event bus</i>. Rules in your account are triggered by these events arriving to an event bus in your account. </p> <p>For another account to send events to your account, that external account must have a rule with your account's event bus as a target.</p> <p>To enable multiple AWS accounts to put events to an event bus, run <code>PutPermission</code> once for each of these accounts. Or, if all the accounts are members of the same AWS organization, you can run <code>PutPermission</code> once specifying <code>Principal</code> as "*" and specifying the AWS organization ID in <code>Condition</code>, to grant permissions to all accounts in that organization.</p> <p>If you grant permissions using an organization, then accounts in that organization must specify a <code>RoleArn</code> with proper permissions when they use <code>PutTarget</code> to add your account's event bus as a target. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html">Sending and Receiving Events Between AWS Accounts</a> in the <i>Amazon EventBridge User Guide</i>.</p> <p>The permission policy on an event bus can't exceed 10 KB in size.</p>

__Required Parameters__

* `action` __:__ `String`
* `principal` __:__ `String`
* `statementId` __:__ `String`


-}

putPermission :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( PutPermissionOptions -> PutPermissionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

putPermission action principal statementId setOptions =
    
    let
        requestInput = PutPermissionRequest
            
            options.eventBusName
            
            action
            
            principal
            
            statementId
            
            options.condition
            
        
        options = setOptions (PutPermissionOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putPermissionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutPermission"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a putPermission request
-}
type alias PutPermissionOptions =
    {
    eventBusName : Maybe String,condition : Maybe Condition
    }



{-| <p>Creates or updates the specified rule. Rules are enabled by default or based on value of the state. You can disable a rule using <a>DisableRule</a>.</p> <p>A single rule watches for events from a single event bus. Events generated by AWS services go to your account's default event bus. Events generated by SaaS partner services or applications go to the matching partner event bus. If you have custom applications or services, you can specify whether their events go to your default event bus or a custom event bus that you have created. For more information, see <a>CreateEventBus</a>.</p> <p>If you're updating an existing rule, the rule is replaced with what you specify in this <code>PutRule</code> command. If you omit arguments in <code>PutRule</code>, the old values for those arguments aren't kept. Instead, they're replaced with null values.</p> <p>When you create or update a rule, incoming events might not immediately start matching to new or updated rules. Allow a short period of time for changes to take effect.</p> <p>A rule must contain at least an <code>EventPattern</code> or <code>ScheduleExpression</code>. Rules with <code>EventPatterns</code> are triggered when a matching event is observed. Rules with <code>ScheduleExpressions</code> self-trigger based on the given schedule. A rule can have both an <code>EventPattern</code> and a <code>ScheduleExpression</code>, in which case the rule triggers on matching events as well as on a schedule.</p> <p>When you initially create a rule, you can optionally assign one or more tags to the rule. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only rules with certain tag values. To use the <code>PutRule</code> operation and assign tags, you must have both the <code>events:PutRule</code> and <code>events:TagResource</code> permissions.</p> <p>If you are updating an existing rule, any tags you specify in the <code>PutRule</code> operation are ignored. To update the tags of an existing rule, use <a>TagResource</a> and <a>UntagResource</a>.</p> <p>Most services in AWS treat <code>:</code> or <code>/</code> as the same character in Amazon Resource Names (ARNs). However, EventBridge uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event that you want to match.</p> <p>In EventBridge, you could create rules that lead to infinite loops, where a rule is fired repeatedly. For example, a rule might detect that ACLs have changed on an S3 bucket, and trigger software to change them to the desired state. If you don't write the rule carefully, the subsequent change to the ACLs fires the rule again, creating an infinite loop.</p> <p>To prevent this, write the rules so that the triggered actions don't refire the same rule. For example, your rule could fire only if ACLs are found to be in a bad state, instead of after any change. </p> <p>An infinite loop can quickly cause higher than expected charges. We recommend that you use budgeting, which alerts you when charges exceed your specified limit. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-managing-costs.html">Managing Your Costs with Budgets</a>.</p>

__Required Parameters__

* `name` __:__ `String`


-}

putRule :
  
    String ->
  
  
    ( PutRuleOptions -> PutRuleOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutRuleResponse)

putRule name setOptions =
    
    let
        requestInput = PutRuleRequest
            
            name
            
            options.scheduleExpression
            
            options.eventPattern
            
            options.state
            
            options.description
            
            options.roleArn
            
            options.tags
            
            options.eventBusName
            
        
        options = setOptions (PutRuleOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putRuleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutRule"
                
                (AWS.Core.Decode.ResultDecoder "PutRuleResponse" putRuleResponseDecoder)
                
            )



{-| Options for a putRule request
-}
type alias PutRuleOptions =
    {
    scheduleExpression : Maybe String,eventPattern : Maybe String,state : Maybe RuleState,description : Maybe String,roleArn : Maybe String,tags : Maybe (List Tag),eventBusName : Maybe String
    }



{-| <p>Adds the specified targets to the specified rule, or updates the targets if they're already associated with the rule.</p> <p>Targets are the resources that are invoked when a rule is triggered.</p> <p>You can configure the following as targets in EventBridge:</p> <ul> <li> <p>EC2 instances</p> </li> <li> <p>SSM Run Command</p> </li> <li> <p>SSM Automation</p> </li> <li> <p>AWS Lambda functions</p> </li> <li> <p>Data streams in Amazon Kinesis Data Streams</p> </li> <li> <p>Data delivery streams in Amazon Kinesis Data Firehose</p> </li> <li> <p>Amazon ECS tasks</p> </li> <li> <p>AWS Step Functions state machines</p> </li> <li> <p>AWS Batch jobs</p> </li> <li> <p>AWS CodeBuild projects</p> </li> <li> <p>Pipelines in AWS CodePipeline</p> </li> <li> <p>Amazon Inspector assessment templates</p> </li> <li> <p>Amazon SNS topics</p> </li> <li> <p>Amazon SQS queues, including FIFO queues</p> </li> <li> <p>The default event bus of another AWS account</p> </li> </ul> <p>Creating rules with built-in targets is supported only on the AWS Management Console. The built-in targets are <code>EC2 CreateSnapshot API call</code>, <code>EC2 RebootInstances API call</code>, <code>EC2 StopInstances API call</code>, and <code>EC2 TerminateInstances API call</code>. </p> <p>For some target types, <code>PutTargets</code> provides target-specific parameters. If the target is a Kinesis data stream, you can optionally specify which shard the event goes to by using the <code>KinesisParameters</code> argument. To invoke a command on multiple EC2 instances with one rule, you can use the <code>RunCommandParameters</code> field.</p> <p>To be able to make API calls against the resources that you own, Amazon EventBridge needs the appropriate permissions. For AWS Lambda and Amazon SNS resources, EventBridge relies on resource-based policies. For EC2 instances, Kinesis data streams, and AWS Step Functions state machines, EventBridge relies on IAM roles that you specify in the <code>RoleARN</code> argument in <code>PutTargets</code>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/auth-and-access-control-eventbridge.html">Authentication and Access Control</a> in the <i>Amazon EventBridge User Guide</i>.</p> <p>If another AWS account is in the same Region and has granted you permission (using <code>PutPermission</code>), you can send events to that account. Set that account's event bus as a target of the rules in your account. To send the matched events to the other account, specify that account's event bus as the <code>Arn</code> value when you run <code>PutTargets</code>. If your account sends events to another account, your account is charged for each sent event. Each event sent to another account is charged as a custom event. The account receiving the event isn't charged. For more information, see <a href="https://aws.amazon.com/eventbridge/pricing/">Amazon EventBridge Pricing</a>.</p> <p>If you're setting an event bus in another account as the target and that account granted permission to your account through an organization instead of directly by the account ID, you must specify a <code>RoleArn</code> with proper permissions in the <code>Target</code> structure. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html">Sending and Receiving Events Between AWS Accounts</a> in the <i>Amazon EventBridge User Guide</i>.</p> <p>For more information about enabling cross-account events, see <a>PutPermission</a>.</p> <p> <code>Input</code>, <code>InputPath</code>, and <code>InputTransformer</code> are mutually exclusive and optional parameters of a target. When a rule is triggered due to a matched event:</p> <ul> <li> <p>If none of the following arguments are specified for a target, the entire event is passed to the target in JSON format (unless the target is Amazon EC2 Run Command or Amazon ECS task, in which case nothing from the event is passed to the target).</p> </li> <li> <p>If <code>Input</code> is specified in the form of valid JSON, then the matched event is overridden with this constant.</p> </li> <li> <p>If <code>InputPath</code> is specified in the form of JSONPath (for example, <code>$.detail</code>), only the part of the event specified in the path is passed to the target (for example, only the detail part of the event is passed).</p> </li> <li> <p>If <code>InputTransformer</code> is specified, one or more specified JSONPaths are extracted from the event and used as values in a template that you specify as the input to the target.</p> </li> </ul> <p>When you specify <code>InputPath</code> or <code>InputTransformer</code>, you must use JSON dot notation, not bracket notation.</p> <p>When you add targets to a rule and the associated rule triggers soon after, new or updated targets might not be immediately invoked. Allow a short period of time for changes to take effect.</p> <p>This action can partially fail if too many requests are made at the same time. If that happens, <code>FailedEntryCount</code> is nonzero in the response, and each entry in <code>FailedEntries</code> provides the ID of the failed target and the error code.</p>

__Required Parameters__

* `rule` __:__ `String`
* `targets` __:__ `(List Target)`


-}

putTargets :
  
    String ->
  
    (List Target) ->
  
  
    ( PutTargetsOptions -> PutTargetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutTargetsResponse)

putTargets rule targets setOptions =
    
    let
        requestInput = PutTargetsRequest
            
            rule
            
            options.eventBusName
            
            targets
            
        
        options = setOptions (PutTargetsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putTargetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutTargets"
                
                (AWS.Core.Decode.ResultDecoder "PutTargetsResponse" putTargetsResponseDecoder)
                
            )



{-| Options for a putTargets request
-}
type alias PutTargetsOptions =
    {
    eventBusName : Maybe String
    }



{-| <p>Revokes the permission of another AWS account to be able to put events to the specified event bus. Specify the account to revoke by the <code>StatementId</code> value that you associated with the account when you granted it permission with <code>PutPermission</code>. You can find the <code>StatementId</code> by using <a>DescribeEventBus</a>.</p>

__Required Parameters__

* `statementId` __:__ `String`


-}

removePermission :
  
    String ->
  
  
    ( RemovePermissionOptions -> RemovePermissionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

removePermission statementId setOptions =
    
    let
        requestInput = RemovePermissionRequest
            
            statementId
            
            options.eventBusName
            
        
        options = setOptions (RemovePermissionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> removePermissionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemovePermission"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a removePermission request
-}
type alias RemovePermissionOptions =
    {
    eventBusName : Maybe String
    }



{-| <p>Removes the specified targets from the specified rule. When the rule is triggered, those targets are no longer be invoked.</p> <p>When you remove a target, when the associated rule triggers, removed targets might continue to be invoked. Allow a short period of time for changes to take effect.</p> <p>This action can partially fail if too many requests are made at the same time. If that happens, <code>FailedEntryCount</code> is non-zero in the response and each entry in <code>FailedEntries</code> provides the ID of the failed target and the error code.</p>

__Required Parameters__

* `rule` __:__ `String`
* `ids` __:__ `(List String)`


-}

removeTargets :
  
    String ->
  
    (List String) ->
  
  
    ( RemoveTargetsOptions -> RemoveTargetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveTargetsResponse)

removeTargets rule ids setOptions =
    
    let
        requestInput = RemoveTargetsRequest
            
            rule
            
            options.eventBusName
            
            ids
            
            options.force
            
        
        options = setOptions (RemoveTargetsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> removeTargetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemoveTargets"
                
                (AWS.Core.Decode.ResultDecoder "RemoveTargetsResponse" removeTargetsResponseDecoder)
                
            )



{-| Options for a removeTargets request
-}
type alias RemoveTargetsOptions =
    {
    eventBusName : Maybe String,force : Maybe Bool
    }



{-| <p>Assigns one or more tags (key-value pairs) to the specified EventBridge resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. In EventBridge, rules can be tagged.</p> <p>Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of characters.</p> <p>You can use the <code>TagResource</code> action with a rule that already has tags. If you specify a new tag key for the rule, this tag is appended to the list of tags associated with the rule. If you specify a tag key that is already associated with the rule, the new tag value that you specify replaces the previous value for that tag.</p> <p>You can associate as many as 50 tags with a resource.</p>

__Required Parameters__

* `resourceARN` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

tagResource :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceResponse)

tagResource resourceARN tags =
    
    let
        requestInput = TagResourceRequest
            
            resourceARN
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> tagResourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TagResource"
                
                (AWS.Core.Decode.ResultDecoder "TagResourceResponse" tagResourceResponseDecoder)
                
            )





{-| <p>Tests whether the specified event pattern matches the provided event.</p> <p>Most services in AWS treat <code>:</code> or <code>/</code> as the same character in Amazon Resource Names (ARNs). However, EventBridge uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event that you want to match.</p>

__Required Parameters__

* `eventPattern` __:__ `String`
* `event` __:__ `String`


-}

testEventPattern :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TestEventPatternResponse)

testEventPattern eventPattern event =
    
    let
        requestInput = TestEventPatternRequest
            
            eventPattern
            
            event
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> testEventPatternRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TestEventPattern"
                
                (AWS.Core.Decode.ResultDecoder "TestEventPatternResponse" testEventPatternResponseDecoder)
                
            )





{-| <p>Removes one or more tags from the specified EventBridge resource. In EventBridge, rules can be tagged.</p>

__Required Parameters__

* `resourceARN` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

untagResource :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceResponse)

untagResource resourceARN tagKeys =
    
    let
        requestInput = UntagResourceRequest
            
            resourceARN
            
            tagKeys
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> untagResourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UntagResource"
                
                (AWS.Core.Decode.ResultDecoder "UntagResourceResponse" untagResourceResponseDecoder)
                
            )






{-| One of

* `AssignPublicIp_ENABLED`
* `AssignPublicIp_DISABLED`

-}
type AssignPublicIp
    = AssignPublicIp_ENABLED
    | AssignPublicIp_DISABLED



assignPublicIpDecoder : JD.Decoder AssignPublicIp
assignPublicIpDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed AssignPublicIp_ENABLED

                    "DISABLED" ->
                        JD.succeed AssignPublicIp_DISABLED


                    _ ->
                        JD.fail "bad thing"
            )




assignPublicIpToString : AssignPublicIp -> String
assignPublicIpToString val =
    case val of
        AssignPublicIp_ENABLED ->
            "ENABLED"

        AssignPublicIp_DISABLED ->
            "DISABLED"




{-| <p>This structure specifies the VPC subnets and security groups for the task and whether a public IP address is to be used. This structure is relevant only for ECS tasks that use the <code>awsvpc</code> network mode.</p>
-}
type alias AwsVpcConfiguration =
    { subnets : (List String)
    , securityGroups : Maybe (List String)
    , assignPublicIp : Maybe AssignPublicIp
    }



awsVpcConfigurationDecoder : JD.Decoder AwsVpcConfiguration
awsVpcConfigurationDecoder =
    JD.succeed AwsVpcConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Subnets", "subnets"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityGroups", "securityGroups"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AssignPublicIp", "assignPublicIp"]
            assignPublicIpDecoder
        )
        




awsVpcConfigurationToString : AwsVpcConfiguration -> String -- List (String, String)
awsVpcConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subnets" "" -- val.subnets
        
    --     |> Dict.insert
    --         "securityGroups" "" -- val.securityGroups
        
    --     |> Dict.insert
    --         "assignPublicIp" "" -- val.assignPublicIp
        
    --     |> Dict.toList
    ""



{-| <p>The array properties for the submitted job, such as the size of the array. The array size can be between 2 and 10,000. If you specify array properties for a job, it becomes an array job. This parameter is used only if the target is an AWS Batch job.</p>
-}
type alias BatchArrayProperties =
    { size : Maybe Int
    }



batchArrayPropertiesDecoder : JD.Decoder BatchArrayProperties
batchArrayPropertiesDecoder =
    JD.succeed BatchArrayProperties
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Size", "size"]
            JD.int
        )
        




batchArrayPropertiesToString : BatchArrayProperties -> String -- List (String, String)
batchArrayPropertiesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "size" "" -- val.size
        
    --     |> Dict.toList
    ""



{-| <p>The custom parameters to be used when the target is an AWS Batch job.</p>
-}
type alias BatchParameters =
    { jobDefinition : String
    , jobName : String
    , arrayProperties : Maybe BatchArrayProperties
    , retryStrategy : Maybe BatchRetryStrategy
    }



batchParametersDecoder : JD.Decoder BatchParameters
batchParametersDecoder =
    JD.succeed BatchParameters
        
        |> JDP.custom (AWS.Core.Decode.required
            ["JobDefinition", "jobDefinition"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["JobName", "jobName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ArrayProperties", "arrayProperties"]
            batchArrayPropertiesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RetryStrategy", "retryStrategy"]
            batchRetryStrategyDecoder
        )
        




batchParametersToString : BatchParameters -> String -- List (String, String)
batchParametersToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobDefinition" "" -- val.jobDefinition
        
    --     |> Dict.insert
    --         "jobName" "" -- val.jobName
        
    --     |> Dict.insert
    --         "arrayProperties" "" -- val.arrayProperties
        
    --     |> Dict.insert
    --         "retryStrategy" "" -- val.retryStrategy
        
    --     |> Dict.toList
    ""



{-| <p>The retry strategy to use for failed jobs if the target is an AWS Batch job. If you specify a retry strategy here, it overrides the retry strategy defined in the job definition.</p>
-}
type alias BatchRetryStrategy =
    { attempts : Maybe Int
    }



batchRetryStrategyDecoder : JD.Decoder BatchRetryStrategy
batchRetryStrategyDecoder =
    JD.succeed BatchRetryStrategy
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attempts", "attempts"]
            JD.int
        )
        




batchRetryStrategyToString : BatchRetryStrategy -> String -- List (String, String)
batchRetryStrategyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attempts" "" -- val.attempts
        
    --     |> Dict.toList
    ""



{-| <p>A JSON string that you can use to limit the event bus permissions that you're granting to only accounts that fulfill the condition. Currently, the only supported condition is membership in a certain AWS organization. The string must contain <code>Type</code>, <code>Key</code>, and <code>Value</code> fields. The <code>Value</code> field specifies the ID of the AWS organization. The following is an example value for <code>Condition</code>:</p> <p> <code>'{"Type" : "StringEquals", "Key": "aws:PrincipalOrgID", "Value": "o-1234567890"}'</code> </p>
-}
type alias Condition =
    { type_ : String
    , key : String
    , value : String
    }



conditionDecoder : JD.Decoder Condition
conditionDecoder =
    JD.succeed Condition
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Type", "type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Value", "value"]
            JD.string
        )
        




conditionToString : Condition -> String -- List (String, String)
conditionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createEventBus
-}
type alias CreateEventBusResponse =
    { eventBusArn : Maybe String
    }



createEventBusResponseDecoder : JD.Decoder CreateEventBusResponse
createEventBusResponseDecoder =
    JD.succeed CreateEventBusResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventBusArn", "eventBusArn"]
            JD.string
        )
        




createEventBusResponseToString : CreateEventBusResponse -> String -- List (String, String)
createEventBusResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventBusArn" "" -- val.eventBusArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createPartnerEventSource
-}
type alias CreatePartnerEventSourceResponse =
    { eventSourceArn : Maybe String
    }



createPartnerEventSourceResponseDecoder : JD.Decoder CreatePartnerEventSourceResponse
createPartnerEventSourceResponseDecoder =
    JD.succeed CreatePartnerEventSourceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventSourceArn", "eventSourceArn"]
            JD.string
        )
        




createPartnerEventSourceResponseToString : CreatePartnerEventSourceResponse -> String -- List (String, String)
createPartnerEventSourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventSourceArn" "" -- val.eventSourceArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEventBus
-}
type alias DescribeEventBusResponse =
    { name : Maybe String
    , arn : Maybe String
    , policy : Maybe String
    }



describeEventBusResponseDecoder : JD.Decoder DescribeEventBusResponse
describeEventBusResponseDecoder =
    JD.succeed DescribeEventBusResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Policy", "policy"]
            JD.string
        )
        




describeEventBusResponseToString : DescribeEventBusResponse -> String -- List (String, String)
describeEventBusResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "policy" "" -- val.policy
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEventSource
-}
type alias DescribeEventSourceResponse =
    { arn : Maybe String
    , createdBy : Maybe String
    , creationTime : Maybe Posix
    , expirationTime : Maybe Posix
    , name : Maybe String
    , state : Maybe EventSourceState
    }



describeEventSourceResponseDecoder : JD.Decoder DescribeEventSourceResponse
describeEventSourceResponseDecoder =
    JD.succeed DescribeEventSourceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedBy", "createdBy"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExpirationTime", "expirationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            eventSourceStateDecoder
        )
        




describeEventSourceResponseToString : DescribeEventSourceResponse -> String -- List (String, String)
describeEventSourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "createdBy" "" -- val.createdBy
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "expirationTime" "" -- val.expirationTime
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describePartnerEventSource
-}
type alias DescribePartnerEventSourceResponse =
    { arn : Maybe String
    , name : Maybe String
    }



describePartnerEventSourceResponseDecoder : JD.Decoder DescribePartnerEventSourceResponse
describePartnerEventSourceResponseDecoder =
    JD.succeed DescribePartnerEventSourceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




describePartnerEventSourceResponseToString : DescribePartnerEventSourceResponse -> String -- List (String, String)
describePartnerEventSourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeRule
-}
type alias DescribeRuleResponse =
    { name : Maybe String
    , arn : Maybe String
    , eventPattern : Maybe String
    , scheduleExpression : Maybe String
    , state : Maybe RuleState
    , description : Maybe String
    , roleArn : Maybe String
    , managedBy : Maybe String
    , eventBusName : Maybe String
    }



describeRuleResponseDecoder : JD.Decoder DescribeRuleResponse
describeRuleResponseDecoder =
    JD.succeed DescribeRuleResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventPattern", "eventPattern"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScheduleExpression", "scheduleExpression"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            ruleStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleArn", "roleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ManagedBy", "managedBy"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventBusName", "eventBusName"]
            JD.string
        )
        




describeRuleResponseToString : DescribeRuleResponse -> String -- List (String, String)
describeRuleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "eventPattern" "" -- val.eventPattern
        
    --     |> Dict.insert
    --         "scheduleExpression" "" -- val.scheduleExpression
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "managedBy" "" -- val.managedBy
        
    --     |> Dict.insert
    --         "eventBusName" "" -- val.eventBusName
        
    --     |> Dict.toList
    ""



{-| <p>The custom parameters to be used when the target is an Amazon ECS task.</p>
-}
type alias EcsParameters =
    { taskDefinitionArn : String
    , taskCount : Maybe Int
    , launchType : Maybe LaunchType
    , networkConfiguration : Maybe NetworkConfiguration
    , platformVersion : Maybe String
    , group : Maybe String
    }



ecsParametersDecoder : JD.Decoder EcsParameters
ecsParametersDecoder =
    JD.succeed EcsParameters
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TaskDefinitionArn", "taskDefinitionArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TaskCount", "taskCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LaunchType", "launchType"]
            launchTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NetworkConfiguration", "networkConfiguration"]
            networkConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformVersion", "platformVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Group", "group"]
            JD.string
        )
        




ecsParametersToString : EcsParameters -> String -- List (String, String)
ecsParametersToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "taskDefinitionArn" "" -- val.taskDefinitionArn
        
    --     |> Dict.insert
    --         "taskCount" "" -- val.taskCount
        
    --     |> Dict.insert
    --         "launchType" "" -- val.launchType
        
    --     |> Dict.insert
    --         "networkConfiguration" "" -- val.networkConfiguration
        
    --     |> Dict.insert
    --         "platformVersion" "" -- val.platformVersion
        
    --     |> Dict.insert
    --         "group" "" -- val.group
        
    --     |> Dict.toList
    ""



{-| <p>An event bus receives events from a source and routes them to rules associated with that event bus. Your account's default event bus receives rules from AWS services. A custom event bus can receive rules from AWS services as well as your custom applications and services. A partner event bus receives events from an event source created by an SaaS partner. These events come from the partners services or applications.</p>
-}
type alias EventBus =
    { name : Maybe String
    , arn : Maybe String
    , policy : Maybe String
    }



eventBusDecoder : JD.Decoder EventBus
eventBusDecoder =
    JD.succeed EventBus
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Policy", "policy"]
            JD.string
        )
        




eventBusToString : EventBus -> String -- List (String, String)
eventBusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "policy" "" -- val.policy
        
    --     |> Dict.toList
    ""



{-| <p>A partner event source is created by an SaaS partner. If a customer creates a partner event bus that matches this event source, that AWS account can receive events from the partner's applications or services.</p>
-}
type alias EventSource =
    { arn : Maybe String
    , createdBy : Maybe String
    , creationTime : Maybe Posix
    , expirationTime : Maybe Posix
    , name : Maybe String
    , state : Maybe EventSourceState
    }



eventSourceDecoder : JD.Decoder EventSource
eventSourceDecoder =
    JD.succeed EventSource
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedBy", "createdBy"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExpirationTime", "expirationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            eventSourceStateDecoder
        )
        




eventSourceToString : EventSource -> String -- List (String, String)
eventSourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "createdBy" "" -- val.createdBy
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "expirationTime" "" -- val.expirationTime
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.toList
    ""



{-| One of

* `EventSourceState_PENDING`
* `EventSourceState_ACTIVE`
* `EventSourceState_DELETED`

-}
type EventSourceState
    = EventSourceState_PENDING
    | EventSourceState_ACTIVE
    | EventSourceState_DELETED



eventSourceStateDecoder : JD.Decoder EventSourceState
eventSourceStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed EventSourceState_PENDING

                    "ACTIVE" ->
                        JD.succeed EventSourceState_ACTIVE

                    "DELETED" ->
                        JD.succeed EventSourceState_DELETED


                    _ ->
                        JD.fail "bad thing"
            )




eventSourceStateToString : EventSourceState -> String
eventSourceStateToString val =
    case val of
        EventSourceState_PENDING ->
            "PENDING"

        EventSourceState_ACTIVE ->
            "ACTIVE"

        EventSourceState_DELETED ->
            "DELETED"




{-| <p>Contains the parameters needed for you to provide custom input to a target based on one or more pieces of data extracted from the event.</p>
-}
type alias InputTransformer =
    { inputPathsMap : Maybe (Dict String String)
    , inputTemplate : String
    }



inputTransformerDecoder : JD.Decoder InputTransformer
inputTransformerDecoder =
    JD.succeed InputTransformer
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputPathsMap", "inputPathsMap"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["InputTemplate", "inputTemplate"]
            JD.string
        )
        




inputTransformerToString : InputTransformer -> String -- List (String, String)
inputTransformerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "inputPathsMap" "" -- val.inputPathsMap
        
    --     |> Dict.insert
    --         "inputTemplate" "" -- val.inputTemplate
        
    --     |> Dict.toList
    ""



{-| <p>This object enables you to specify a JSON path to extract from the event and use as the partition key for the Amazon Kinesis data stream so that you can control the shard that the event goes to. If you don't include this parameter, the default is to use the <code>eventId</code> as the partition key.</p>
-}
type alias KinesisParameters =
    { partitionKeyPath : String
    }



kinesisParametersDecoder : JD.Decoder KinesisParameters
kinesisParametersDecoder =
    JD.succeed KinesisParameters
        
        |> JDP.custom (AWS.Core.Decode.required
            ["PartitionKeyPath", "partitionKeyPath"]
            JD.string
        )
        




kinesisParametersToString : KinesisParameters -> String -- List (String, String)
kinesisParametersToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "partitionKeyPath" "" -- val.partitionKeyPath
        
    --     |> Dict.toList
    ""



{-| One of

* `LaunchType_EC2`
* `LaunchType_FARGATE`

-}
type LaunchType
    = LaunchType_EC2
    | LaunchType_FARGATE



launchTypeDecoder : JD.Decoder LaunchType
launchTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EC2" ->
                        JD.succeed LaunchType_EC2

                    "FARGATE" ->
                        JD.succeed LaunchType_FARGATE


                    _ ->
                        JD.fail "bad thing"
            )




launchTypeToString : LaunchType -> String
launchTypeToString val =
    case val of
        LaunchType_EC2 ->
            "EC2"

        LaunchType_FARGATE ->
            "FARGATE"




{-| Type of HTTP response from listEventBuses
-}
type alias ListEventBusesResponse =
    { eventBuses : Maybe (List EventBus)
    , nextToken : Maybe String
    }



listEventBusesResponseDecoder : JD.Decoder ListEventBusesResponse
listEventBusesResponseDecoder =
    JD.succeed ListEventBusesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventBuses", "eventBuses"]
            (JD.list eventBusDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listEventBusesResponseToString : ListEventBusesResponse -> String -- List (String, String)
listEventBusesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventBuses" "" -- val.eventBuses
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listEventSources
-}
type alias ListEventSourcesResponse =
    { eventSources : Maybe (List EventSource)
    , nextToken : Maybe String
    }



listEventSourcesResponseDecoder : JD.Decoder ListEventSourcesResponse
listEventSourcesResponseDecoder =
    JD.succeed ListEventSourcesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventSources", "eventSources"]
            (JD.list eventSourceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listEventSourcesResponseToString : ListEventSourcesResponse -> String -- List (String, String)
listEventSourcesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventSources" "" -- val.eventSources
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listPartnerEventSourceAccounts
-}
type alias ListPartnerEventSourceAccountsResponse =
    { partnerEventSourceAccounts : Maybe (List PartnerEventSourceAccount)
    , nextToken : Maybe String
    }



listPartnerEventSourceAccountsResponseDecoder : JD.Decoder ListPartnerEventSourceAccountsResponse
listPartnerEventSourceAccountsResponseDecoder =
    JD.succeed ListPartnerEventSourceAccountsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PartnerEventSourceAccounts", "partnerEventSourceAccounts"]
            (JD.list partnerEventSourceAccountDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listPartnerEventSourceAccountsResponseToString : ListPartnerEventSourceAccountsResponse -> String -- List (String, String)
listPartnerEventSourceAccountsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "partnerEventSourceAccounts" "" -- val.partnerEventSourceAccounts
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listPartnerEventSources
-}
type alias ListPartnerEventSourcesResponse =
    { partnerEventSources : Maybe (List PartnerEventSource)
    , nextToken : Maybe String
    }



listPartnerEventSourcesResponseDecoder : JD.Decoder ListPartnerEventSourcesResponse
listPartnerEventSourcesResponseDecoder =
    JD.succeed ListPartnerEventSourcesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PartnerEventSources", "partnerEventSources"]
            (JD.list partnerEventSourceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listPartnerEventSourcesResponseToString : ListPartnerEventSourcesResponse -> String -- List (String, String)
listPartnerEventSourcesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "partnerEventSources" "" -- val.partnerEventSources
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listRuleNamesByTarget
-}
type alias ListRuleNamesByTargetResponse =
    { ruleNames : Maybe (List String)
    , nextToken : Maybe String
    }



listRuleNamesByTargetResponseDecoder : JD.Decoder ListRuleNamesByTargetResponse
listRuleNamesByTargetResponseDecoder =
    JD.succeed ListRuleNamesByTargetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RuleNames", "ruleNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listRuleNamesByTargetResponseToString : ListRuleNamesByTargetResponse -> String -- List (String, String)
listRuleNamesByTargetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleNames" "" -- val.ruleNames
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listRules
-}
type alias ListRulesResponse =
    { rules : Maybe (List Rule)
    , nextToken : Maybe String
    }



listRulesResponseDecoder : JD.Decoder ListRulesResponse
listRulesResponseDecoder =
    JD.succeed ListRulesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Rules", "rules"]
            (JD.list ruleDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listRulesResponseToString : ListRulesResponse -> String -- List (String, String)
listRulesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "rules" "" -- val.rules
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { tags : Maybe (List Tag)
    }



listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JD.succeed ListTagsForResourceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        




listTagsForResourceResponseToString : ListTagsForResourceResponse -> String -- List (String, String)
listTagsForResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTargetsByRule
-}
type alias ListTargetsByRuleResponse =
    { targets : Maybe (List Target)
    , nextToken : Maybe String
    }



listTargetsByRuleResponseDecoder : JD.Decoder ListTargetsByRuleResponse
listTargetsByRuleResponseDecoder =
    JD.succeed ListTargetsByRuleResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Targets", "targets"]
            (JD.list targetDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listTargetsByRuleResponseToString : ListTargetsByRuleResponse -> String -- List (String, String)
listTargetsByRuleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "targets" "" -- val.targets
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>This structure specifies the network configuration for an ECS task.</p>
-}
type alias NetworkConfiguration =
    { awsvpcConfiguration : Maybe AwsVpcConfiguration
    }



networkConfigurationDecoder : JD.Decoder NetworkConfiguration
networkConfigurationDecoder =
    JD.succeed NetworkConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["awsvpcConfiguration", "AwsvpcConfiguration"]
            awsVpcConfigurationDecoder
        )
        




networkConfigurationToString : NetworkConfiguration -> String -- List (String, String)
networkConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "awsvpcConfiguration" "" -- val.awsvpcConfiguration
        
    --     |> Dict.toList
    ""



{-| <p>A partner event source is created by an SaaS partner. If a customer creates a partner event bus that matches this event source, that AWS account can receive events from the partner's applications or services.</p>
-}
type alias PartnerEventSource =
    { arn : Maybe String
    , name : Maybe String
    }



partnerEventSourceDecoder : JD.Decoder PartnerEventSource
partnerEventSourceDecoder =
    JD.succeed PartnerEventSource
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




partnerEventSourceToString : PartnerEventSource -> String -- List (String, String)
partnerEventSourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>The AWS account that a partner event source has been offered to.</p>
-}
type alias PartnerEventSourceAccount =
    { account : Maybe String
    , creationTime : Maybe Posix
    , expirationTime : Maybe Posix
    , state : Maybe EventSourceState
    }



partnerEventSourceAccountDecoder : JD.Decoder PartnerEventSourceAccount
partnerEventSourceAccountDecoder =
    JD.succeed PartnerEventSourceAccount
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Account", "account"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExpirationTime", "expirationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            eventSourceStateDecoder
        )
        




partnerEventSourceAccountToString : PartnerEventSourceAccount -> String -- List (String, String)
partnerEventSourceAccountToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "account" "" -- val.account
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "expirationTime" "" -- val.expirationTime
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.toList
    ""



{-| <p>Represents an event to be submitted.</p>
-}
type alias PutEventsRequestEntry =
    { time : Maybe Posix
    , source : Maybe String
    , resources : Maybe (List String)
    , detailType : Maybe String
    , detail : Maybe String
    , eventBusName : Maybe String
    }



putEventsRequestEntryDecoder : JD.Decoder PutEventsRequestEntry
putEventsRequestEntryDecoder =
    JD.succeed PutEventsRequestEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Time", "time"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Source", "source"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Resources", "resources"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DetailType", "detailType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Detail", "detail"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventBusName", "eventBusName"]
            JD.string
        )
        




putEventsRequestEntryToString : PutEventsRequestEntry -> String -- List (String, String)
putEventsRequestEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "time" "" -- val.time
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "resources" "" -- val.resources
        
    --     |> Dict.insert
    --         "detailType" "" -- val.detailType
        
    --     |> Dict.insert
    --         "detail" "" -- val.detail
        
    --     |> Dict.insert
    --         "eventBusName" "" -- val.eventBusName
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putEvents
-}
type alias PutEventsResponse =
    { failedEntryCount : Maybe Int
    , entries : Maybe (List PutEventsResultEntry)
    }



putEventsResponseDecoder : JD.Decoder PutEventsResponse
putEventsResponseDecoder =
    JD.succeed PutEventsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedEntryCount", "failedEntryCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Entries", "entries"]
            (JD.list putEventsResultEntryDecoder)
        )
        




putEventsResponseToString : PutEventsResponse -> String -- List (String, String)
putEventsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedEntryCount" "" -- val.failedEntryCount
        
    --     |> Dict.insert
    --         "entries" "" -- val.entries
        
    --     |> Dict.toList
    ""



{-| <p>Represents an event that failed to be submitted.</p>
-}
type alias PutEventsResultEntry =
    { eventId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



putEventsResultEntryDecoder : JD.Decoder PutEventsResultEntry
putEventsResultEntryDecoder =
    JD.succeed PutEventsResultEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventId", "eventId"]
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
        




putEventsResultEntryToString : PutEventsResultEntry -> String -- List (String, String)
putEventsResultEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventId" "" -- val.eventId
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| <p>The details about an event generated by an SaaS partner.</p>
-}
type alias PutPartnerEventsRequestEntry =
    { time : Maybe Posix
    , source : Maybe String
    , resources : Maybe (List String)
    , detailType : Maybe String
    , detail : Maybe String
    }



putPartnerEventsRequestEntryDecoder : JD.Decoder PutPartnerEventsRequestEntry
putPartnerEventsRequestEntryDecoder =
    JD.succeed PutPartnerEventsRequestEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Time", "time"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Source", "source"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Resources", "resources"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DetailType", "detailType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Detail", "detail"]
            JD.string
        )
        




putPartnerEventsRequestEntryToString : PutPartnerEventsRequestEntry -> String -- List (String, String)
putPartnerEventsRequestEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "time" "" -- val.time
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "resources" "" -- val.resources
        
    --     |> Dict.insert
    --         "detailType" "" -- val.detailType
        
    --     |> Dict.insert
    --         "detail" "" -- val.detail
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putPartnerEvents
-}
type alias PutPartnerEventsResponse =
    { failedEntryCount : Maybe Int
    , entries : Maybe (List PutPartnerEventsResultEntry)
    }



putPartnerEventsResponseDecoder : JD.Decoder PutPartnerEventsResponse
putPartnerEventsResponseDecoder =
    JD.succeed PutPartnerEventsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedEntryCount", "failedEntryCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Entries", "entries"]
            (JD.list putPartnerEventsResultEntryDecoder)
        )
        




putPartnerEventsResponseToString : PutPartnerEventsResponse -> String -- List (String, String)
putPartnerEventsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedEntryCount" "" -- val.failedEntryCount
        
    --     |> Dict.insert
    --         "entries" "" -- val.entries
        
    --     |> Dict.toList
    ""



{-| <p>Represents an event that a partner tried to generate but failed.</p>
-}
type alias PutPartnerEventsResultEntry =
    { eventId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



putPartnerEventsResultEntryDecoder : JD.Decoder PutPartnerEventsResultEntry
putPartnerEventsResultEntryDecoder =
    JD.succeed PutPartnerEventsResultEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventId", "eventId"]
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
        




putPartnerEventsResultEntryToString : PutPartnerEventsResultEntry -> String -- List (String, String)
putPartnerEventsResultEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventId" "" -- val.eventId
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putRule
-}
type alias PutRuleResponse =
    { ruleArn : Maybe String
    }



putRuleResponseDecoder : JD.Decoder PutRuleResponse
putRuleResponseDecoder =
    JD.succeed PutRuleResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RuleArn", "ruleArn"]
            JD.string
        )
        




putRuleResponseToString : PutRuleResponse -> String -- List (String, String)
putRuleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleArn" "" -- val.ruleArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putTargets
-}
type alias PutTargetsResponse =
    { failedEntryCount : Maybe Int
    , failedEntries : Maybe (List PutTargetsResultEntry)
    }



putTargetsResponseDecoder : JD.Decoder PutTargetsResponse
putTargetsResponseDecoder =
    JD.succeed PutTargetsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedEntryCount", "failedEntryCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedEntries", "failedEntries"]
            (JD.list putTargetsResultEntryDecoder)
        )
        




putTargetsResponseToString : PutTargetsResponse -> String -- List (String, String)
putTargetsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedEntryCount" "" -- val.failedEntryCount
        
    --     |> Dict.insert
    --         "failedEntries" "" -- val.failedEntries
        
    --     |> Dict.toList
    ""



{-| <p>Represents a target that failed to be added to a rule.</p>
-}
type alias PutTargetsResultEntry =
    { targetId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



putTargetsResultEntryDecoder : JD.Decoder PutTargetsResultEntry
putTargetsResultEntryDecoder =
    JD.succeed PutTargetsResultEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetId", "targetId"]
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
        




putTargetsResultEntryToString : PutTargetsResultEntry -> String -- List (String, String)
putTargetsResultEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "targetId" "" -- val.targetId
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from removeTargets
-}
type alias RemoveTargetsResponse =
    { failedEntryCount : Maybe Int
    , failedEntries : Maybe (List RemoveTargetsResultEntry)
    }



removeTargetsResponseDecoder : JD.Decoder RemoveTargetsResponse
removeTargetsResponseDecoder =
    JD.succeed RemoveTargetsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedEntryCount", "failedEntryCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedEntries", "failedEntries"]
            (JD.list removeTargetsResultEntryDecoder)
        )
        




removeTargetsResponseToString : RemoveTargetsResponse -> String -- List (String, String)
removeTargetsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedEntryCount" "" -- val.failedEntryCount
        
    --     |> Dict.insert
    --         "failedEntries" "" -- val.failedEntries
        
    --     |> Dict.toList
    ""



{-| <p>Represents a target that failed to be removed from a rule.</p>
-}
type alias RemoveTargetsResultEntry =
    { targetId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



removeTargetsResultEntryDecoder : JD.Decoder RemoveTargetsResultEntry
removeTargetsResultEntryDecoder =
    JD.succeed RemoveTargetsResultEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetId", "targetId"]
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
        




removeTargetsResultEntryToString : RemoveTargetsResultEntry -> String -- List (String, String)
removeTargetsResultEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "targetId" "" -- val.targetId
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about a rule in Amazon EventBridge.</p>
-}
type alias Rule =
    { name : Maybe String
    , arn : Maybe String
    , eventPattern : Maybe String
    , state : Maybe RuleState
    , description : Maybe String
    , scheduleExpression : Maybe String
    , roleArn : Maybe String
    , managedBy : Maybe String
    , eventBusName : Maybe String
    }



ruleDecoder : JD.Decoder Rule
ruleDecoder =
    JD.succeed Rule
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventPattern", "eventPattern"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            ruleStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScheduleExpression", "scheduleExpression"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleArn", "roleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ManagedBy", "managedBy"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventBusName", "eventBusName"]
            JD.string
        )
        




ruleToString : Rule -> String -- List (String, String)
ruleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "eventPattern" "" -- val.eventPattern
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "scheduleExpression" "" -- val.scheduleExpression
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "managedBy" "" -- val.managedBy
        
    --     |> Dict.insert
    --         "eventBusName" "" -- val.eventBusName
        
    --     |> Dict.toList
    ""



{-| One of

* `RuleState_ENABLED`
* `RuleState_DISABLED`

-}
type RuleState
    = RuleState_ENABLED
    | RuleState_DISABLED



ruleStateDecoder : JD.Decoder RuleState
ruleStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed RuleState_ENABLED

                    "DISABLED" ->
                        JD.succeed RuleState_DISABLED


                    _ ->
                        JD.fail "bad thing"
            )




ruleStateToString : RuleState -> String
ruleStateToString val =
    case val of
        RuleState_ENABLED ->
            "ENABLED"

        RuleState_DISABLED ->
            "DISABLED"




{-| <p>This parameter contains the criteria (either <code>InstanceIds</code> or a tag) used to specify which EC2 instances are to be sent the command. </p>
-}
type alias RunCommandParameters =
    { runCommandTargets : (List RunCommandTarget)
    }



runCommandParametersDecoder : JD.Decoder RunCommandParameters
runCommandParametersDecoder =
    JD.succeed RunCommandParameters
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RunCommandTargets", "runCommandTargets"]
            (JD.list runCommandTargetDecoder)
        )
        




runCommandParametersToString : RunCommandParameters -> String -- List (String, String)
runCommandParametersToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "runCommandTargets" "" -- val.runCommandTargets
        
    --     |> Dict.toList
    ""



{-| <p>Information about the EC2 instances that are to be sent the command, specified as key-value pairs. Each <code>RunCommandTarget</code> block can include only one key, but this key can specify multiple values.</p>
-}
type alias RunCommandTarget =
    { key : String
    , values : (List String)
    }



runCommandTargetDecoder : JD.Decoder RunCommandTarget
runCommandTargetDecoder =
    JD.succeed RunCommandTarget
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Values", "values"]
            (JD.list JD.string)
        )
        




runCommandTargetToString : RunCommandTarget -> String -- List (String, String)
runCommandTargetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| <p>This structure includes the custom parameter to be used when the target is an SQS FIFO queue.</p>
-}
type alias SqsParameters =
    { messageGroupId : Maybe String
    }



sqsParametersDecoder : JD.Decoder SqsParameters
sqsParametersDecoder =
    JD.succeed SqsParameters
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MessageGroupId", "messageGroupId"]
            JD.string
        )
        




sqsParametersToString : SqsParameters -> String -- List (String, String)
sqsParametersToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "messageGroupId" "" -- val.messageGroupId
        
    --     |> Dict.toList
    ""



{-| <p>A key-value pair associated with an AWS resource. In EventBridge, rules support tagging.</p>
-}
type alias Tag =
    { key : String
    , value : String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
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



{-| Type of HTTP response from tagResource
-}
type alias TagResourceResponse =
    { 
    }



tagResourceResponseDecoder : JD.Decoder TagResourceResponse
tagResourceResponseDecoder =
    JD.succeed TagResourceResponse
        




tagResourceResponseToString : TagResourceResponse -> String -- List (String, String)
tagResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Targets are the resources to be invoked when a rule is triggered. For a complete list of services and resources that can be set as a target, see <a>PutTargets</a>.</p> <p>If you're setting the event bus of another account as the target and that account granted permission to your account through an organization instead of directly by the account ID, you must specify a <code>RoleArn</code> with proper permissions in the <code>Target</code> structure. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html">Sending and Receiving Events Between AWS Accounts</a> in the <i>Amazon EventBridge User Guide</i>.</p>
-}
type alias Target =
    { id : String
    , arn : String
    , roleArn : Maybe String
    , input : Maybe String
    , inputPath : Maybe String
    , inputTransformer : Maybe InputTransformer
    , kinesisParameters : Maybe KinesisParameters
    , runCommandParameters : Maybe RunCommandParameters
    , ecsParameters : Maybe EcsParameters
    , batchParameters : Maybe BatchParameters
    , sqsParameters : Maybe SqsParameters
    }



targetDecoder : JD.Decoder Target
targetDecoder =
    JD.succeed Target
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleArn", "roleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Input", "input"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputPath", "inputPath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputTransformer", "inputTransformer"]
            inputTransformerDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisParameters", "kinesisParameters"]
            kinesisParametersDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RunCommandParameters", "runCommandParameters"]
            runCommandParametersDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EcsParameters", "ecsParameters"]
            ecsParametersDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BatchParameters", "batchParameters"]
            batchParametersDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SqsParameters", "sqsParameters"]
            sqsParametersDecoder
        )
        




targetToString : Target -> String -- List (String, String)
targetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "input" "" -- val.input
        
    --     |> Dict.insert
    --         "inputPath" "" -- val.inputPath
        
    --     |> Dict.insert
    --         "inputTransformer" "" -- val.inputTransformer
        
    --     |> Dict.insert
    --         "kinesisParameters" "" -- val.kinesisParameters
        
    --     |> Dict.insert
    --         "runCommandParameters" "" -- val.runCommandParameters
        
    --     |> Dict.insert
    --         "ecsParameters" "" -- val.ecsParameters
        
    --     |> Dict.insert
    --         "batchParameters" "" -- val.batchParameters
        
    --     |> Dict.insert
    --         "sqsParameters" "" -- val.sqsParameters
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from testEventPattern
-}
type alias TestEventPatternResponse =
    { result : Maybe Bool
    }



testEventPatternResponseDecoder : JD.Decoder TestEventPatternResponse
testEventPatternResponseDecoder =
    JD.succeed TestEventPatternResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Result", "result"]
            JD.bool
        )
        




testEventPatternResponseToString : TestEventPatternResponse -> String -- List (String, String)
testEventPatternResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "result" "" -- val.result
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from untagResource
-}
type alias UntagResourceResponse =
    { 
    }



untagResourceResponseDecoder : JD.Decoder UntagResourceResponse
untagResourceResponseDecoder =
    JD.succeed UntagResourceResponse
        




untagResourceResponseToString : UntagResourceResponse -> String -- List (String, String)
untagResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias ActivateEventSourceRequest =
    { name : String
    }


{-| undefined
-}
type alias CreateEventBusRequest =
    { name : String
    , eventSourceName : Maybe String
    }


{-| undefined
-}
type alias CreatePartnerEventSourceRequest =
    { name : String
    , account : String
    }


{-| undefined
-}
type alias DeactivateEventSourceRequest =
    { name : String
    }


{-| undefined
-}
type alias DeleteEventBusRequest =
    { name : String
    }


{-| undefined
-}
type alias DeletePartnerEventSourceRequest =
    { name : String
    , account : String
    }


{-| undefined
-}
type alias DeleteRuleRequest =
    { name : String
    , eventBusName : Maybe String
    , force : Maybe Bool
    }


{-| undefined
-}
type alias DescribeEventBusRequest =
    { name : Maybe String
    }


{-| undefined
-}
type alias DescribeEventSourceRequest =
    { name : String
    }


{-| undefined
-}
type alias DescribePartnerEventSourceRequest =
    { name : String
    }


{-| undefined
-}
type alias DescribeRuleRequest =
    { name : String
    , eventBusName : Maybe String
    }


{-| undefined
-}
type alias DisableRuleRequest =
    { name : String
    , eventBusName : Maybe String
    }


{-| undefined
-}
type alias EnableRuleRequest =
    { name : String
    , eventBusName : Maybe String
    }


{-| undefined
-}
type alias ListEventBusesRequest =
    { namePrefix : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListEventSourcesRequest =
    { namePrefix : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListPartnerEventSourceAccountsRequest =
    { eventSourceName : String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListPartnerEventSourcesRequest =
    { namePrefix : String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListRuleNamesByTargetRequest =
    { targetArn : String
    , eventBusName : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListRulesRequest =
    { namePrefix : Maybe String
    , eventBusName : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListTagsForResourceRequest =
    { resourceARN : String
    }


{-| undefined
-}
type alias ListTargetsByRuleRequest =
    { rule : String
    , eventBusName : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias PutEventsRequest =
    { entries : (List PutEventsRequestEntry)
    }


{-| undefined
-}
type alias PutPartnerEventsRequest =
    { entries : (List PutPartnerEventsRequestEntry)
    }


{-| undefined
-}
type alias PutPermissionRequest =
    { eventBusName : Maybe String
    , action : String
    , principal : String
    , statementId : String
    , condition : Maybe Condition
    }


{-| undefined
-}
type alias PutRuleRequest =
    { name : String
    , scheduleExpression : Maybe String
    , eventPattern : Maybe String
    , state : Maybe RuleState
    , description : Maybe String
    , roleArn : Maybe String
    , tags : Maybe (List Tag)
    , eventBusName : Maybe String
    }


{-| undefined
-}
type alias PutTargetsRequest =
    { rule : String
    , eventBusName : Maybe String
    , targets : (List Target)
    }


{-| undefined
-}
type alias RemovePermissionRequest =
    { statementId : String
    , eventBusName : Maybe String
    }


{-| undefined
-}
type alias RemoveTargetsRequest =
    { rule : String
    , eventBusName : Maybe String
    , ids : (List String)
    , force : Maybe Bool
    }


{-| undefined
-}
type alias TagResourceRequest =
    { resourceARN : String
    , tags : (List Tag)
    }


{-| undefined
-}
type alias TestEventPatternRequest =
    { eventPattern : String
    , event : String
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { resourceARN : String
    , tagKeys : (List String)
    }






activateEventSourceRequestEncoder : ActivateEventSourceRequest -> JE.Value
activateEventSourceRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object










awsVpcConfigurationEncoder : AwsVpcConfiguration -> JE.Value
awsVpcConfigurationEncoder data =
    []
        
        
        |> (::) ("Subnets", data.subnets |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SecurityGroups", data.securityGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (assignPublicIpToString >> JE.string)
            ("AssignPublicIp", data.assignPublicIp)
        
        
        |> JE.object






batchArrayPropertiesEncoder : BatchArrayProperties -> JE.Value
batchArrayPropertiesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Size", data.size)
        
        
        |> JE.object






batchParametersEncoder : BatchParameters -> JE.Value
batchParametersEncoder data =
    []
        
        
        |> (::) ("JobDefinition", data.jobDefinition |> (JE.string))
        
        
        
        |> (::) ("JobName", data.jobName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (batchArrayPropertiesEncoder)
            ("ArrayProperties", data.arrayProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (batchRetryStrategyEncoder)
            ("RetryStrategy", data.retryStrategy)
        
        
        |> JE.object






batchRetryStrategyEncoder : BatchRetryStrategy -> JE.Value
batchRetryStrategyEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Attempts", data.attempts)
        
        
        |> JE.object






conditionEncoder : Condition -> JE.Value
conditionEncoder data =
    []
        
        
        |> (::) ("Type", data.type_ |> (JE.string))
        
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> (::) ("Value", data.value |> (JE.string))
        
        
        |> JE.object






createEventBusRequestEncoder : CreateEventBusRequest -> JE.Value
createEventBusRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventSourceName", data.eventSourceName)
        
        
        |> JE.object






createEventBusResponseEncoder : CreateEventBusResponse -> JE.Value
createEventBusResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusArn", data.eventBusArn)
        
        
        |> JE.object






createPartnerEventSourceRequestEncoder : CreatePartnerEventSourceRequest -> JE.Value
createPartnerEventSourceRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("Account", data.account |> (JE.string))
        
        
        |> JE.object






createPartnerEventSourceResponseEncoder : CreatePartnerEventSourceResponse -> JE.Value
createPartnerEventSourceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventSourceArn", data.eventSourceArn)
        
        
        |> JE.object






deactivateEventSourceRequestEncoder : DeactivateEventSourceRequest -> JE.Value
deactivateEventSourceRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteEventBusRequestEncoder : DeleteEventBusRequest -> JE.Value
deleteEventBusRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deletePartnerEventSourceRequestEncoder : DeletePartnerEventSourceRequest -> JE.Value
deletePartnerEventSourceRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("Account", data.account |> (JE.string))
        
        
        |> JE.object






deleteRuleRequestEncoder : DeleteRuleRequest -> JE.Value
deleteRuleRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Force", data.force)
        
        
        |> JE.object






describeEventBusRequestEncoder : DescribeEventBusRequest -> JE.Value
describeEventBusRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






describeEventBusResponseEncoder : DescribeEventBusResponse -> JE.Value
describeEventBusResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Policy", data.policy)
        
        
        |> JE.object






describeEventSourceRequestEncoder : DescribeEventSourceRequest -> JE.Value
describeEventSourceRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






describeEventSourceResponseEncoder : DescribeEventSourceResponse -> JE.Value
describeEventSourceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedBy", data.createdBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ExpirationTime", data.expirationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eventSourceStateToString >> JE.string)
            ("State", data.state)
        
        
        |> JE.object






describePartnerEventSourceRequestEncoder : DescribePartnerEventSourceRequest -> JE.Value
describePartnerEventSourceRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






describePartnerEventSourceResponseEncoder : DescribePartnerEventSourceResponse -> JE.Value
describePartnerEventSourceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






describeRuleRequestEncoder : DescribeRuleRequest -> JE.Value
describeRuleRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        |> JE.object






describeRuleResponseEncoder : DescribeRuleResponse -> JE.Value
describeRuleResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventPattern", data.eventPattern)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ScheduleExpression", data.scheduleExpression)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (ruleStateToString >> JE.string)
            ("State", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ManagedBy", data.managedBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        |> JE.object






disableRuleRequestEncoder : DisableRuleRequest -> JE.Value
disableRuleRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        |> JE.object






ecsParametersEncoder : EcsParameters -> JE.Value
ecsParametersEncoder data =
    []
        
        
        |> (::) ("TaskDefinitionArn", data.taskDefinitionArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TaskCount", data.taskCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (launchTypeToString >> JE.string)
            ("LaunchType", data.launchType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (networkConfigurationEncoder)
            ("NetworkConfiguration", data.networkConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlatformVersion", data.platformVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Group", data.group)
        
        
        |> JE.object






enableRuleRequestEncoder : EnableRuleRequest -> JE.Value
enableRuleRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        |> JE.object






eventBusEncoder : EventBus -> JE.Value
eventBusEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Policy", data.policy)
        
        
        |> JE.object






eventSourceEncoder : EventSource -> JE.Value
eventSourceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedBy", data.createdBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ExpirationTime", data.expirationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eventSourceStateToString >> JE.string)
            ("State", data.state)
        
        
        |> JE.object










inputTransformerEncoder : InputTransformer -> JE.Value
inputTransformerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("InputPathsMap", data.inputPathsMap)
        
        
        
        |> (::) ("InputTemplate", data.inputTemplate |> (JE.string))
        
        
        |> JE.object






kinesisParametersEncoder : KinesisParameters -> JE.Value
kinesisParametersEncoder data =
    []
        
        
        |> (::) ("PartitionKeyPath", data.partitionKeyPath |> (JE.string))
        
        
        |> JE.object










listEventBusesRequestEncoder : ListEventBusesRequest -> JE.Value
listEventBusesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NamePrefix", data.namePrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listEventBusesResponseEncoder : ListEventBusesResponse -> JE.Value
listEventBusesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (eventBusEncoder))
            ("EventBuses", data.eventBuses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listEventSourcesRequestEncoder : ListEventSourcesRequest -> JE.Value
listEventSourcesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NamePrefix", data.namePrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listEventSourcesResponseEncoder : ListEventSourcesResponse -> JE.Value
listEventSourcesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (eventSourceEncoder))
            ("EventSources", data.eventSources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listPartnerEventSourceAccountsRequestEncoder : ListPartnerEventSourceAccountsRequest -> JE.Value
listPartnerEventSourceAccountsRequestEncoder data =
    []
        
        
        |> (::) ("EventSourceName", data.eventSourceName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listPartnerEventSourceAccountsResponseEncoder : ListPartnerEventSourceAccountsResponse -> JE.Value
listPartnerEventSourceAccountsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (partnerEventSourceAccountEncoder))
            ("PartnerEventSourceAccounts", data.partnerEventSourceAccounts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listPartnerEventSourcesRequestEncoder : ListPartnerEventSourcesRequest -> JE.Value
listPartnerEventSourcesRequestEncoder data =
    []
        
        
        |> (::) ("NamePrefix", data.namePrefix |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listPartnerEventSourcesResponseEncoder : ListPartnerEventSourcesResponse -> JE.Value
listPartnerEventSourcesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (partnerEventSourceEncoder))
            ("PartnerEventSources", data.partnerEventSources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listRuleNamesByTargetRequestEncoder : ListRuleNamesByTargetRequest -> JE.Value
listRuleNamesByTargetRequestEncoder data =
    []
        
        
        |> (::) ("TargetArn", data.targetArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listRuleNamesByTargetResponseEncoder : ListRuleNamesByTargetResponse -> JE.Value
listRuleNamesByTargetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("RuleNames", data.ruleNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listRulesRequestEncoder : ListRulesRequest -> JE.Value
listRulesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NamePrefix", data.namePrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listRulesResponseEncoder : ListRulesResponse -> JE.Value
listRulesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (ruleEncoder))
            ("Rules", data.rules)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listTagsForResourceRequestEncoder : ListTagsForResourceRequest -> JE.Value
listTagsForResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        |> JE.object






listTagsForResourceResponseEncoder : ListTagsForResourceResponse -> JE.Value
listTagsForResourceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






listTargetsByRuleRequestEncoder : ListTargetsByRuleRequest -> JE.Value
listTargetsByRuleRequestEncoder data =
    []
        
        
        |> (::) ("Rule", data.rule |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listTargetsByRuleResponseEncoder : ListTargetsByRuleResponse -> JE.Value
listTargetsByRuleResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (targetEncoder))
            ("Targets", data.targets)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






networkConfigurationEncoder : NetworkConfiguration -> JE.Value
networkConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (awsVpcConfigurationEncoder)
            ("awsvpcConfiguration", data.awsvpcConfiguration)
        
        
        |> JE.object






partnerEventSourceEncoder : PartnerEventSource -> JE.Value
partnerEventSourceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






partnerEventSourceAccountEncoder : PartnerEventSourceAccount -> JE.Value
partnerEventSourceAccountEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Account", data.account)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ExpirationTime", data.expirationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eventSourceStateToString >> JE.string)
            ("State", data.state)
        
        
        |> JE.object






putEventsRequestEncoder : PutEventsRequest -> JE.Value
putEventsRequestEncoder data =
    []
        
        
        |> (::) ("Entries", data.entries |> (JE.list (putEventsRequestEntryEncoder)))
        
        
        |> JE.object






putEventsRequestEntryEncoder : PutEventsRequestEntry -> JE.Value
putEventsRequestEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("Time", data.time)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Source", data.source)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Resources", data.resources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DetailType", data.detailType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Detail", data.detail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        |> JE.object






putEventsResponseEncoder : PutEventsResponse -> JE.Value
putEventsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("FailedEntryCount", data.failedEntryCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (putEventsResultEntryEncoder))
            ("Entries", data.entries)
        
        
        |> JE.object






putEventsResultEntryEncoder : PutEventsResultEntry -> JE.Value
putEventsResultEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventId", data.eventId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object






putPartnerEventsRequestEncoder : PutPartnerEventsRequest -> JE.Value
putPartnerEventsRequestEncoder data =
    []
        
        
        |> (::) ("Entries", data.entries |> (JE.list (putPartnerEventsRequestEntryEncoder)))
        
        
        |> JE.object






putPartnerEventsRequestEntryEncoder : PutPartnerEventsRequestEntry -> JE.Value
putPartnerEventsRequestEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("Time", data.time)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Source", data.source)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Resources", data.resources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DetailType", data.detailType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Detail", data.detail)
        
        
        |> JE.object






putPartnerEventsResponseEncoder : PutPartnerEventsResponse -> JE.Value
putPartnerEventsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("FailedEntryCount", data.failedEntryCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (putPartnerEventsResultEntryEncoder))
            ("Entries", data.entries)
        
        
        |> JE.object






putPartnerEventsResultEntryEncoder : PutPartnerEventsResultEntry -> JE.Value
putPartnerEventsResultEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventId", data.eventId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object






putPermissionRequestEncoder : PutPermissionRequest -> JE.Value
putPermissionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        
        |> (::) ("Action", data.action |> (JE.string))
        
        
        
        |> (::) ("Principal", data.principal |> (JE.string))
        
        
        
        |> (::) ("StatementId", data.statementId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conditionEncoder)
            ("Condition", data.condition)
        
        
        |> JE.object






putRuleRequestEncoder : PutRuleRequest -> JE.Value
putRuleRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ScheduleExpression", data.scheduleExpression)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventPattern", data.eventPattern)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (ruleStateToString >> JE.string)
            ("State", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        |> JE.object






putRuleResponseEncoder : PutRuleResponse -> JE.Value
putRuleResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RuleArn", data.ruleArn)
        
        
        |> JE.object






putTargetsRequestEncoder : PutTargetsRequest -> JE.Value
putTargetsRequestEncoder data =
    []
        
        
        |> (::) ("Rule", data.rule |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        
        |> (::) ("Targets", data.targets |> (JE.list (targetEncoder)))
        
        
        |> JE.object






putTargetsResponseEncoder : PutTargetsResponse -> JE.Value
putTargetsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("FailedEntryCount", data.failedEntryCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (putTargetsResultEntryEncoder))
            ("FailedEntries", data.failedEntries)
        
        
        |> JE.object






putTargetsResultEntryEncoder : PutTargetsResultEntry -> JE.Value
putTargetsResultEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TargetId", data.targetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object






removePermissionRequestEncoder : RemovePermissionRequest -> JE.Value
removePermissionRequestEncoder data =
    []
        
        
        |> (::) ("StatementId", data.statementId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        |> JE.object






removeTargetsRequestEncoder : RemoveTargetsRequest -> JE.Value
removeTargetsRequestEncoder data =
    []
        
        
        |> (::) ("Rule", data.rule |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        
        |> (::) ("Ids", data.ids |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Force", data.force)
        
        
        |> JE.object






removeTargetsResponseEncoder : RemoveTargetsResponse -> JE.Value
removeTargetsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("FailedEntryCount", data.failedEntryCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (removeTargetsResultEntryEncoder))
            ("FailedEntries", data.failedEntries)
        
        
        |> JE.object






removeTargetsResultEntryEncoder : RemoveTargetsResultEntry -> JE.Value
removeTargetsResultEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TargetId", data.targetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object






ruleEncoder : Rule -> JE.Value
ruleEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventPattern", data.eventPattern)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (ruleStateToString >> JE.string)
            ("State", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ScheduleExpression", data.scheduleExpression)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ManagedBy", data.managedBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventBusName", data.eventBusName)
        
        
        |> JE.object










runCommandParametersEncoder : RunCommandParameters -> JE.Value
runCommandParametersEncoder data =
    []
        
        
        |> (::) ("RunCommandTargets", data.runCommandTargets |> (JE.list (runCommandTargetEncoder)))
        
        
        |> JE.object






runCommandTargetEncoder : RunCommandTarget -> JE.Value
runCommandTargetEncoder data =
    []
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> (::) ("Values", data.values |> (JE.list (JE.string)))
        
        
        |> JE.object






sqsParametersEncoder : SqsParameters -> JE.Value
sqsParametersEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MessageGroupId", data.messageGroupId)
        
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> (::) ("Value", data.value |> (JE.string))
        
        
        |> JE.object






tagResourceRequestEncoder : TagResourceRequest -> JE.Value
tagResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        
        |> (::) ("Tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object






tagResourceResponseEncoder : TagResourceResponse -> JE.Value
tagResourceResponseEncoder data =
    []
        
        |> JE.object






targetEncoder : Target -> JE.Value
targetEncoder data =
    []
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        
        |> (::) ("Arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Input", data.input)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InputPath", data.inputPath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (inputTransformerEncoder)
            ("InputTransformer", data.inputTransformer)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisParametersEncoder)
            ("KinesisParameters", data.kinesisParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (runCommandParametersEncoder)
            ("RunCommandParameters", data.runCommandParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (ecsParametersEncoder)
            ("EcsParameters", data.ecsParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (batchParametersEncoder)
            ("BatchParameters", data.batchParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sqsParametersEncoder)
            ("SqsParameters", data.sqsParameters)
        
        
        |> JE.object






testEventPatternRequestEncoder : TestEventPatternRequest -> JE.Value
testEventPatternRequestEncoder data =
    []
        
        
        |> (::) ("EventPattern", data.eventPattern |> (JE.string))
        
        
        
        |> (::) ("Event", data.event |> (JE.string))
        
        
        |> JE.object






testEventPatternResponseEncoder : TestEventPatternResponse -> JE.Value
testEventPatternResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Result", data.result)
        
        
        |> JE.object






untagResourceRequestEncoder : UntagResourceRequest -> JE.Value
untagResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        
        |> (::) ("TagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






untagResourceResponseEncoder : UntagResourceResponse -> JE.Value
untagResourceResponseEncoder data =
    []
        
        |> JE.object





