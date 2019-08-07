module AWS.SNS
    exposing
        ( service
        , addPermission
        , checkIfPhoneNumberIsOptedOut
        , confirmSubscription
        , ConfirmSubscriptionOptions
        , createPlatformApplication
        , createPlatformEndpoint
        , CreatePlatformEndpointOptions
        , createTopic
        , CreateTopicOptions
        , deleteEndpoint
        , deletePlatformApplication
        , deleteTopic
        , getEndpointAttributes
        , getPlatformApplicationAttributes
        , getSMSAttributes
        , GetSMSAttributesOptions
        , getSubscriptionAttributes
        , getTopicAttributes
        , listEndpointsByPlatformApplication
        , ListEndpointsByPlatformApplicationOptions
        , listPhoneNumbersOptedOut
        , ListPhoneNumbersOptedOutOptions
        , listPlatformApplications
        , ListPlatformApplicationsOptions
        , listSubscriptions
        , ListSubscriptionsOptions
        , listSubscriptionsByTopic
        , ListSubscriptionsByTopicOptions
        , listTagsForResource
        , listTopics
        , ListTopicsOptions
        , optInPhoneNumber
        , publish
        , PublishOptions
        , removePermission
        , setEndpointAttributes
        , setPlatformApplicationAttributes
        , setSMSAttributes
        , setSubscriptionAttributes
        , SetSubscriptionAttributesOptions
        , setTopicAttributes
        , SetTopicAttributesOptions
        , subscribe
        , SubscribeOptions
        , tagResource
        , unsubscribe
        , untagResource
        , CheckIfPhoneNumberIsOptedOutResponse
        , ConfirmSubscriptionResponse
        , CreateEndpointResponse
        , CreatePlatformApplicationResponse
        , CreateTopicResponse
        , Endpoint
        , GetEndpointAttributesResponse
        , GetPlatformApplicationAttributesResponse
        , GetSMSAttributesResponse
        , GetSubscriptionAttributesResponse
        , GetTopicAttributesResponse
        , ListEndpointsByPlatformApplicationResponse
        , ListPhoneNumbersOptedOutResponse
        , ListPlatformApplicationsResponse
        , ListSubscriptionsByTopicResponse
        , ListSubscriptionsResponse
        , ListTagsForResourceResponse
        , ListTopicsResponse
        , MessageAttributeValue
        , OptInPhoneNumberResponse
        , PlatformApplication
        , PublishResponse
        , SetSMSAttributesResponse
        , SubscribeResponse
        , Subscription
        , Tag
        , TagResourceResponse
        , Topic
        , UntagResourceResponse
        )

{-| <fullname>Amazon Simple Notification Service</fullname> <p>Amazon Simple Notification Service (Amazon SNS) is a web service that enables you to build distributed web-enabled applications. Applications can use Amazon SNS to easily push real-time notification messages to interested subscribers over multiple delivery protocols. For more information about this product see <a href="http://aws.amazon.com/sns/">https://aws.amazon.com/sns</a>. For detailed information about Amazon SNS features and their associated API calls, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/">Amazon SNS Developer Guide</a>. </p> <p>We also provide SDKs that enable you to access Amazon SNS from your preferred programming language. The SDKs contain functionality that automatically takes care of tasks such as: cryptographically signing your service requests, retrying requests, and handling error responses. For a list of available SDKs, go to <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>. </p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)

## Operations

* [addPermission](#addPermission)
* [checkIfPhoneNumberIsOptedOut](#checkIfPhoneNumberIsOptedOut)
* [confirmSubscription](#confirmSubscription)
* [ConfirmSubscriptionOptions](#ConfirmSubscriptionOptions)
* [createPlatformApplication](#createPlatformApplication)
* [createPlatformEndpoint](#createPlatformEndpoint)
* [CreatePlatformEndpointOptions](#CreatePlatformEndpointOptions)
* [createTopic](#createTopic)
* [CreateTopicOptions](#CreateTopicOptions)
* [deleteEndpoint](#deleteEndpoint)
* [deletePlatformApplication](#deletePlatformApplication)
* [deleteTopic](#deleteTopic)
* [getEndpointAttributes](#getEndpointAttributes)
* [getPlatformApplicationAttributes](#getPlatformApplicationAttributes)
* [getSMSAttributes](#getSMSAttributes)
* [GetSMSAttributesOptions](#GetSMSAttributesOptions)
* [getSubscriptionAttributes](#getSubscriptionAttributes)
* [getTopicAttributes](#getTopicAttributes)
* [listEndpointsByPlatformApplication](#listEndpointsByPlatformApplication)
* [ListEndpointsByPlatformApplicationOptions](#ListEndpointsByPlatformApplicationOptions)
* [listPhoneNumbersOptedOut](#listPhoneNumbersOptedOut)
* [ListPhoneNumbersOptedOutOptions](#ListPhoneNumbersOptedOutOptions)
* [listPlatformApplications](#listPlatformApplications)
* [ListPlatformApplicationsOptions](#ListPlatformApplicationsOptions)
* [listSubscriptions](#listSubscriptions)
* [ListSubscriptionsOptions](#ListSubscriptionsOptions)
* [listSubscriptionsByTopic](#listSubscriptionsByTopic)
* [ListSubscriptionsByTopicOptions](#ListSubscriptionsByTopicOptions)
* [listTagsForResource](#listTagsForResource)
* [listTopics](#listTopics)
* [ListTopicsOptions](#ListTopicsOptions)
* [optInPhoneNumber](#optInPhoneNumber)
* [publish](#publish)
* [PublishOptions](#PublishOptions)
* [removePermission](#removePermission)
* [setEndpointAttributes](#setEndpointAttributes)
* [setPlatformApplicationAttributes](#setPlatformApplicationAttributes)
* [setSMSAttributes](#setSMSAttributes)
* [setSubscriptionAttributes](#setSubscriptionAttributes)
* [SetSubscriptionAttributesOptions](#SetSubscriptionAttributesOptions)
* [setTopicAttributes](#setTopicAttributes)
* [SetTopicAttributesOptions](#SetTopicAttributesOptions)
* [subscribe](#subscribe)
* [SubscribeOptions](#SubscribeOptions)
* [tagResource](#tagResource)
* [unsubscribe](#unsubscribe)
* [untagResource](#untagResource)


@docs addPermission,checkIfPhoneNumberIsOptedOut,confirmSubscription,ConfirmSubscriptionOptions,createPlatformApplication,createPlatformEndpoint,CreatePlatformEndpointOptions,createTopic,CreateTopicOptions,deleteEndpoint,deletePlatformApplication,deleteTopic,getEndpointAttributes,getPlatformApplicationAttributes,getSMSAttributes,GetSMSAttributesOptions,getSubscriptionAttributes,getTopicAttributes,listEndpointsByPlatformApplication,ListEndpointsByPlatformApplicationOptions,listPhoneNumbersOptedOut,ListPhoneNumbersOptedOutOptions,listPlatformApplications,ListPlatformApplicationsOptions,listSubscriptions,ListSubscriptionsOptions,listSubscriptionsByTopic,ListSubscriptionsByTopicOptions,listTagsForResource,listTopics,ListTopicsOptions,optInPhoneNumber,publish,PublishOptions,removePermission,setEndpointAttributes,setPlatformApplicationAttributes,setSMSAttributes,setSubscriptionAttributes,SetSubscriptionAttributesOptions,setTopicAttributes,SetTopicAttributesOptions,subscribe,SubscribeOptions,tagResource,unsubscribe,untagResource

## Responses

* [CheckIfPhoneNumberIsOptedOutResponse](#CheckIfPhoneNumberIsOptedOutResponse)
* [ConfirmSubscriptionResponse](#ConfirmSubscriptionResponse)
* [CreateEndpointResponse](#CreateEndpointResponse)
* [CreatePlatformApplicationResponse](#CreatePlatformApplicationResponse)
* [CreateTopicResponse](#CreateTopicResponse)
* [GetEndpointAttributesResponse](#GetEndpointAttributesResponse)
* [GetPlatformApplicationAttributesResponse](#GetPlatformApplicationAttributesResponse)
* [GetSMSAttributesResponse](#GetSMSAttributesResponse)
* [GetSubscriptionAttributesResponse](#GetSubscriptionAttributesResponse)
* [GetTopicAttributesResponse](#GetTopicAttributesResponse)
* [ListEndpointsByPlatformApplicationResponse](#ListEndpointsByPlatformApplicationResponse)
* [ListPhoneNumbersOptedOutResponse](#ListPhoneNumbersOptedOutResponse)
* [ListPlatformApplicationsResponse](#ListPlatformApplicationsResponse)
* [ListSubscriptionsByTopicResponse](#ListSubscriptionsByTopicResponse)
* [ListSubscriptionsResponse](#ListSubscriptionsResponse)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [ListTopicsResponse](#ListTopicsResponse)
* [OptInPhoneNumberResponse](#OptInPhoneNumberResponse)
* [PublishResponse](#PublishResponse)
* [SetSMSAttributesResponse](#SetSMSAttributesResponse)
* [SubscribeResponse](#SubscribeResponse)
* [TagResourceResponse](#TagResourceResponse)
* [UntagResourceResponse](#UntagResourceResponse)


@docs CheckIfPhoneNumberIsOptedOutResponse,ConfirmSubscriptionResponse,CreateEndpointResponse,CreatePlatformApplicationResponse,CreateTopicResponse,GetEndpointAttributesResponse,GetPlatformApplicationAttributesResponse,GetSMSAttributesResponse,GetSubscriptionAttributesResponse,GetTopicAttributesResponse,ListEndpointsByPlatformApplicationResponse,ListPhoneNumbersOptedOutResponse,ListPlatformApplicationsResponse,ListSubscriptionsByTopicResponse,ListSubscriptionsResponse,ListTagsForResourceResponse,ListTopicsResponse,OptInPhoneNumberResponse,PublishResponse,SetSMSAttributesResponse,SubscribeResponse,TagResourceResponse,UntagResourceResponse

## Records

* [Endpoint](#Endpoint)
* [MessageAttributeValue](#MessageAttributeValue)
* [PlatformApplication](#PlatformApplication)
* [Subscription](#Subscription)
* [Tag](#Tag)
* [Topic](#Topic)


@docs Endpoint,MessageAttributeValue,PlatformApplication,Subscription,Tag,Topic

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Json.Decode as JD
import Json.Decode.Pipeline as JDP

import Dict exposing (Dict)


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "sns"
        "2010-03-31"
        AWS.Core.Service.query
        AWS.Core.Service.signV4
        (AWS.Core.Service.setXmlNamespace "http://sns.amazonaws.com/doc/2010-03-31/")



-- OPERATIONS

{-| <p>Adds a statement to a topic's access control policy, granting access for the specified AWS accounts to the specified actions.</p>

__Required Parameters__

* `topicArn` __:__ `String`
* `label` __:__ `String`
* `aWSAccountId` __:__ `(List String)`
* `actionName` __:__ `(List String)`


-}

addPermission :
  
    String ->
  
    String ->
  
    (List String) ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

addPermission topicArn label aWSAccountId actionName =
    
    let
        requestInput = AddPermissionInput
            
            topicArn
            
            label
            
            aWSAccountId
            
            actionName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "AddPermission")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs addPermissionInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddPermission"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Accepts a phone number and indicates whether the phone holder has opted out of receiving SMS messages from your account. You cannot send SMS messages to a number that is opted out.</p> <p>To resume sending messages, you can opt in the number by using the <code>OptInPhoneNumber</code> action.</p>

__Required Parameters__

* `phoneNumber` __:__ `String`


-}

checkIfPhoneNumberIsOptedOut :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CheckIfPhoneNumberIsOptedOutResponse)

checkIfPhoneNumberIsOptedOut phoneNumber =
    
    let
        requestInput = CheckIfPhoneNumberIsOptedOutInput
            
            phoneNumber
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CheckIfPhoneNumberIsOptedOut")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs checkIfPhoneNumberIsOptedOutInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CheckIfPhoneNumberIsOptedOut"
                
                (AWS.Core.Decode.ResultDecoder "CheckIfPhoneNumberIsOptedOutResult" checkIfPhoneNumberIsOptedOutResponseDecoder)
                
            )





{-| <p>Verifies an endpoint owner's intent to receive messages by validating the token sent to the endpoint by an earlier <code>Subscribe</code> action. If the token is valid, the action creates a new subscription and returns its Amazon Resource Name (ARN). This call requires an AWS signature only when the <code>AuthenticateOnUnsubscribe</code> flag is set to "true".</p>

__Required Parameters__

* `topicArn` __:__ `String`
* `token` __:__ `String`


-}

confirmSubscription :
  
    String ->
  
    String ->
  
  
    ( ConfirmSubscriptionOptions -> ConfirmSubscriptionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConfirmSubscriptionResponse)

confirmSubscription topicArn token setOptions =
    
    let
        requestInput = ConfirmSubscriptionInput
            
            topicArn
            
            token
            
            options.authenticateOnUnsubscribe
            
        
        options = setOptions (ConfirmSubscriptionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ConfirmSubscription")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs confirmSubscriptionInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ConfirmSubscription"
                
                (AWS.Core.Decode.ResultDecoder "ConfirmSubscriptionResult" confirmSubscriptionResponseDecoder)
                
            )



{-| Options for a confirmSubscription request
-}
type alias ConfirmSubscriptionOptions =
    {
    authenticateOnUnsubscribe : Maybe String
    }



{-| <p>Creates a platform application object for one of the supported push notification services, such as APNS and FCM, to which devices and mobile apps may register. You must specify PlatformPrincipal and PlatformCredential attributes when using the <code>CreatePlatformApplication</code> action. The PlatformPrincipal is received from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal is "SSL certificate". For GCM, PlatformPrincipal is not applicable. For ADM, PlatformPrincipal is "client id". The PlatformCredential is also received from the notification service. For WNS, PlatformPrincipal is "Package Security Identifier". For MPNS, PlatformPrincipal is "TLS certificate". For Baidu, PlatformPrincipal is "API key".</p> <p>For APNS/APNS_SANDBOX, PlatformCredential is "private key". For GCM, PlatformCredential is "API key". For ADM, PlatformCredential is "client secret". For WNS, PlatformCredential is "secret key". For MPNS, PlatformCredential is "private key". For Baidu, PlatformCredential is "secret key". The PlatformApplicationArn that is returned when using <code>CreatePlatformApplication</code> is then used as an attribute for the <code>CreatePlatformEndpoint</code> action. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. For more information about obtaining the PlatformPrincipal and PlatformCredential for each of the supported push notification services, see <a href="https://docs.aws.amazon.com/sns/latest/dg/mobile-push-apns.html">Getting Started with Apple Push Notification Service</a>, <a href="https://docs.aws.amazon.com/sns/latest/dg/mobile-push-adm.html">Getting Started with Amazon Device Messaging</a>, <a href="https://docs.aws.amazon.com/sns/latest/dg/mobile-push-baidu.html">Getting Started with Baidu Cloud Push</a>, <a href="https://docs.aws.amazon.com/sns/latest/dg/mobile-push-gcm.html">Getting Started with Google Cloud Messaging for Android</a>, <a href="https://docs.aws.amazon.com/sns/latest/dg/mobile-push-mpns.html">Getting Started with MPNS</a>, or <a href="https://docs.aws.amazon.com/sns/latest/dg/mobile-push-wns.html">Getting Started with WNS</a>. </p>

__Required Parameters__

* `name` __:__ `String`
* `platform` __:__ `String`
* `attributes` __:__ `(Dict String String)`


-}

createPlatformApplication :
  
    String ->
  
    String ->
  
    (Dict String String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreatePlatformApplicationResponse)

createPlatformApplication name platform attributes =
    
    let
        requestInput = CreatePlatformApplicationInput
            
            name
            
            platform
            
            attributes
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreatePlatformApplication")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createPlatformApplicationInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreatePlatformApplication"
                
                (AWS.Core.Decode.ResultDecoder "CreatePlatformApplicationResult" createPlatformApplicationResponseDecoder)
                
            )





{-| <p>Creates an endpoint for a device and mobile app on one of the supported push notification services, such as GCM and APNS. <code>CreatePlatformEndpoint</code> requires the PlatformApplicationArn that is returned from <code>CreatePlatformApplication</code>. The EndpointArn that is returned when using <code>CreatePlatformEndpoint</code> can then be used by the <code>Publish</code> action to send a message to a mobile app or by the <code>Subscribe</code> action for subscription to a topic. The <code>CreatePlatformEndpoint</code> action is idempotent, so if the requester already owns an endpoint with the same device token and attributes, that endpoint's ARN is returned without creating a new endpoint. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p> <p>When using <code>CreatePlatformEndpoint</code> with Baidu, two attributes must be provided: ChannelId and UserId. The token field must also contain the ChannelId. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html">Creating an Amazon SNS Endpoint for Baidu</a>. </p>

__Required Parameters__

* `platformApplicationArn` __:__ `String`
* `token` __:__ `String`


-}

createPlatformEndpoint :
  
    String ->
  
    String ->
  
  
    ( CreatePlatformEndpointOptions -> CreatePlatformEndpointOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateEndpointResponse)

createPlatformEndpoint platformApplicationArn token setOptions =
    
    let
        requestInput = CreatePlatformEndpointInput
            
            platformApplicationArn
            
            token
            
            options.customUserData
            
            options.attributes
            
        
        options = setOptions (CreatePlatformEndpointOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreatePlatformEndpoint")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createPlatformEndpointInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreatePlatformEndpoint"
                
                (AWS.Core.Decode.ResultDecoder "CreatePlatformEndpointResult" createEndpointResponseDecoder)
                
            )



{-| Options for a createPlatformEndpoint request
-}
type alias CreatePlatformEndpointOptions =
    {
    customUserData : Maybe String,attributes : Maybe (Dict String String)
    }



{-| <p>Creates a topic to which notifications can be published. Users can create at most 100,000 topics. For more information, see <a href="http://aws.amazon.com/sns/">https://aws.amazon.com/sns</a>. This action is idempotent, so if the requester already owns a topic with the specified name, that topic's ARN is returned without creating a new topic.</p>

__Required Parameters__

* `name` __:__ `String`


-}

createTopic :
  
    String ->
  
  
    ( CreateTopicOptions -> CreateTopicOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTopicResponse)

createTopic name setOptions =
    
    let
        requestInput = CreateTopicInput
            
            name
            
            options.attributes
            
            options.tags
            
        
        options = setOptions (CreateTopicOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateTopic")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createTopicInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateTopic"
                
                (AWS.Core.Decode.ResultDecoder "CreateTopicResult" createTopicResponseDecoder)
                
            )



{-| Options for a createTopic request
-}
type alias CreateTopicOptions =
    {
    attributes : Maybe (Dict String String),tags : Maybe (List Tag)
    }



{-| <p>Deletes the endpoint for a device and mobile app from Amazon SNS. This action is idempotent. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p> <p>When you delete an endpoint that is also subscribed to a topic, then you must also unsubscribe the endpoint from the topic.</p>

__Required Parameters__

* `endpointArn` __:__ `String`


-}

deleteEndpoint :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteEndpoint endpointArn =
    
    let
        requestInput = DeleteEndpointInput
            
            endpointArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteEndpoint")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteEndpointInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteEndpoint"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a platform application object for one of the supported push notification services, such as APNS and GCM. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

__Required Parameters__

* `platformApplicationArn` __:__ `String`


-}

deletePlatformApplication :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deletePlatformApplication platformApplicationArn =
    
    let
        requestInput = DeletePlatformApplicationInput
            
            platformApplicationArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeletePlatformApplication")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deletePlatformApplicationInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeletePlatformApplication"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a topic and all its subscriptions. Deleting a topic might prevent some messages previously sent to the topic from being delivered to subscribers. This action is idempotent, so deleting a topic that does not exist does not result in an error.</p>

__Required Parameters__

* `topicArn` __:__ `String`


-}

deleteTopic :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteTopic topicArn =
    
    let
        requestInput = DeleteTopicInput
            
            topicArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteTopic")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteTopicInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteTopic"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Retrieves the endpoint attributes for a device on one of the supported push notification services, such as GCM and APNS. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

__Required Parameters__

* `endpointArn` __:__ `String`


-}

getEndpointAttributes :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetEndpointAttributesResponse)

getEndpointAttributes endpointArn =
    
    let
        requestInput = GetEndpointAttributesInput
            
            endpointArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "GetEndpointAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs getEndpointAttributesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetEndpointAttributes"
                
                (AWS.Core.Decode.ResultDecoder "GetEndpointAttributesResult" getEndpointAttributesResponseDecoder)
                
            )





{-| <p>Retrieves the attributes of the platform application object for the supported push notification services, such as APNS and GCM. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

__Required Parameters__

* `platformApplicationArn` __:__ `String`


-}

getPlatformApplicationAttributes :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetPlatformApplicationAttributesResponse)

getPlatformApplicationAttributes platformApplicationArn =
    
    let
        requestInput = GetPlatformApplicationAttributesInput
            
            platformApplicationArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "GetPlatformApplicationAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs getPlatformApplicationAttributesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetPlatformApplicationAttributes"
                
                (AWS.Core.Decode.ResultDecoder "GetPlatformApplicationAttributesResult" getPlatformApplicationAttributesResponseDecoder)
                
            )





{-| <p>Returns the settings for sending SMS messages from your account.</p> <p>These settings are set with the <code>SetSMSAttributes</code> action.</p>

__Required Parameters__



-}

getSMSAttributes :
  
  
    ( GetSMSAttributesOptions -> GetSMSAttributesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSMSAttributesResponse)

getSMSAttributes setOptions =
    
    let
        requestInput = GetSMSAttributesInput
            
            options.attributes
            
        
        options = setOptions (GetSMSAttributesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "GetSMSAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs getSMSAttributesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetSMSAttributes"
                
                (AWS.Core.Decode.ResultDecoder "GetSMSAttributesResult" getSMSAttributesResponseDecoder)
                
            )



{-| Options for a getSMSAttributes request
-}
type alias GetSMSAttributesOptions =
    {
    attributes : Maybe (List String)
    }



{-| <p>Returns all of the properties of a subscription.</p>

__Required Parameters__

* `subscriptionArn` __:__ `String`


-}

getSubscriptionAttributes :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSubscriptionAttributesResponse)

getSubscriptionAttributes subscriptionArn =
    
    let
        requestInput = GetSubscriptionAttributesInput
            
            subscriptionArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "GetSubscriptionAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs getSubscriptionAttributesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetSubscriptionAttributes"
                
                (AWS.Core.Decode.ResultDecoder "GetSubscriptionAttributesResult" getSubscriptionAttributesResponseDecoder)
                
            )





{-| <p>Returns all of the properties of a topic. Topic properties returned might differ based on the authorization of the user.</p>

__Required Parameters__

* `topicArn` __:__ `String`


-}

getTopicAttributes :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTopicAttributesResponse)

getTopicAttributes topicArn =
    
    let
        requestInput = GetTopicAttributesInput
            
            topicArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "GetTopicAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs getTopicAttributesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetTopicAttributes"
                
                (AWS.Core.Decode.ResultDecoder "GetTopicAttributesResult" getTopicAttributesResponseDecoder)
                
            )





{-| <p>Lists the endpoints and endpoint attributes for devices in a supported push notification service, such as GCM and APNS. The results for <code>ListEndpointsByPlatformApplication</code> are paginated and return a limited list of endpoints, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call <code>ListEndpointsByPlatformApplication</code> again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p> <p>This action is throttled at 30 transactions per second (TPS).</p>

__Required Parameters__

* `platformApplicationArn` __:__ `String`


-}

listEndpointsByPlatformApplication :
  
    String ->
  
  
    ( ListEndpointsByPlatformApplicationOptions -> ListEndpointsByPlatformApplicationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListEndpointsByPlatformApplicationResponse)

listEndpointsByPlatformApplication platformApplicationArn setOptions =
    
    let
        requestInput = ListEndpointsByPlatformApplicationInput
            
            platformApplicationArn
            
            options.nextToken
            
        
        options = setOptions (ListEndpointsByPlatformApplicationOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListEndpointsByPlatformApplication")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listEndpointsByPlatformApplicationInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListEndpointsByPlatformApplication"
                
                (AWS.Core.Decode.ResultDecoder "ListEndpointsByPlatformApplicationResult" listEndpointsByPlatformApplicationResponseDecoder)
                
            )



{-| Options for a listEndpointsByPlatformApplication request
-}
type alias ListEndpointsByPlatformApplicationOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Returns a list of phone numbers that are opted out, meaning you cannot send SMS messages to them.</p> <p>The results for <code>ListPhoneNumbersOptedOut</code> are paginated, and each page returns up to 100 phone numbers. If additional phone numbers are available after the first page of results, then a <code>NextToken</code> string will be returned. To receive the next page, you call <code>ListPhoneNumbersOptedOut</code> again using the <code>NextToken</code> string received from the previous call. When there are no more records to return, <code>NextToken</code> will be null.</p>

__Required Parameters__



-}

listPhoneNumbersOptedOut :
  
  
    ( ListPhoneNumbersOptedOutOptions -> ListPhoneNumbersOptedOutOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPhoneNumbersOptedOutResponse)

listPhoneNumbersOptedOut setOptions =
    
    let
        requestInput = ListPhoneNumbersOptedOutInput
            
            options.nextToken
            
        
        options = setOptions (ListPhoneNumbersOptedOutOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListPhoneNumbersOptedOut")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listPhoneNumbersOptedOutInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListPhoneNumbersOptedOut"
                
                (AWS.Core.Decode.ResultDecoder "ListPhoneNumbersOptedOutResult" listPhoneNumbersOptedOutResponseDecoder)
                
            )



{-| Options for a listPhoneNumbersOptedOut request
-}
type alias ListPhoneNumbersOptedOutOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Lists the platform application objects for the supported push notification services, such as APNS and GCM. The results for <code>ListPlatformApplications</code> are paginated and return a limited list of applications, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call <code>ListPlatformApplications</code> using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p> <p>This action is throttled at 15 transactions per second (TPS).</p>

__Required Parameters__



-}

listPlatformApplications :
  
  
    ( ListPlatformApplicationsOptions -> ListPlatformApplicationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPlatformApplicationsResponse)

listPlatformApplications setOptions =
    
    let
        requestInput = ListPlatformApplicationsInput
            
            options.nextToken
            
        
        options = setOptions (ListPlatformApplicationsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListPlatformApplications")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listPlatformApplicationsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListPlatformApplications"
                
                (AWS.Core.Decode.ResultDecoder "ListPlatformApplicationsResult" listPlatformApplicationsResponseDecoder)
                
            )



{-| Options for a listPlatformApplications request
-}
type alias ListPlatformApplicationsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Returns a list of the requester's subscriptions. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListSubscriptions</code> call to get further results.</p> <p>This action is throttled at 30 transactions per second (TPS).</p>

__Required Parameters__



-}

listSubscriptions :
  
  
    ( ListSubscriptionsOptions -> ListSubscriptionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListSubscriptionsResponse)

listSubscriptions setOptions =
    
    let
        requestInput = ListSubscriptionsInput
            
            options.nextToken
            
        
        options = setOptions (ListSubscriptionsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListSubscriptions")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listSubscriptionsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListSubscriptions"
                
                (AWS.Core.Decode.ResultDecoder "ListSubscriptionsResult" listSubscriptionsResponseDecoder)
                
            )



{-| Options for a listSubscriptions request
-}
type alias ListSubscriptionsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Returns a list of the subscriptions to a specific topic. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListSubscriptionsByTopic</code> call to get further results.</p> <p>This action is throttled at 30 transactions per second (TPS).</p>

__Required Parameters__

* `topicArn` __:__ `String`


-}

listSubscriptionsByTopic :
  
    String ->
  
  
    ( ListSubscriptionsByTopicOptions -> ListSubscriptionsByTopicOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListSubscriptionsByTopicResponse)

listSubscriptionsByTopic topicArn setOptions =
    
    let
        requestInput = ListSubscriptionsByTopicInput
            
            topicArn
            
            options.nextToken
            
        
        options = setOptions (ListSubscriptionsByTopicOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListSubscriptionsByTopic")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listSubscriptionsByTopicInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListSubscriptionsByTopic"
                
                (AWS.Core.Decode.ResultDecoder "ListSubscriptionsByTopicResult" listSubscriptionsByTopicResponseDecoder)
                
            )



{-| Options for a listSubscriptionsByTopic request
-}
type alias ListSubscriptionsByTopicOptions =
    {
    nextToken : Maybe String
    }



{-| <p>List all tags added to the specified Amazon SNS topic. For an overview, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html">Amazon SNS Tags</a> in the <i>Amazon Simple Notification Service Developer Guide</i>.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

listTagsForResource :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceResponse)

listTagsForResource resourceArn =
    
    let
        requestInput = ListTagsForResourceRequest
            
            resourceArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListTagsForResource")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listTagsForResourceRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForResource"
                
                (AWS.Core.Decode.ResultDecoder "ListTagsForResourceResult" listTagsForResourceResponseDecoder)
                
            )





{-| <p>Returns a list of the requester's topics. Each call returns a limited list of topics, up to 100. If there are more topics, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListTopics</code> call to get further results.</p> <p>This action is throttled at 30 transactions per second (TPS).</p>

__Required Parameters__



-}

listTopics :
  
  
    ( ListTopicsOptions -> ListTopicsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTopicsResponse)

listTopics setOptions =
    
    let
        requestInput = ListTopicsInput
            
            options.nextToken
            
        
        options = setOptions (ListTopicsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListTopics")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listTopicsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTopics"
                
                (AWS.Core.Decode.ResultDecoder "ListTopicsResult" listTopicsResponseDecoder)
                
            )



{-| Options for a listTopics request
-}
type alias ListTopicsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Use this request to opt in a phone number that is opted out, which enables you to resume sending SMS messages to the number.</p> <p>You can opt in a phone number only once every 30 days.</p>

__Required Parameters__

* `phoneNumber` __:__ `String`


-}

optInPhoneNumber :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper OptInPhoneNumberResponse)

optInPhoneNumber phoneNumber =
    
    let
        requestInput = OptInPhoneNumberInput
            
            phoneNumber
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "OptInPhoneNumber")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs optInPhoneNumberInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "OptInPhoneNumber"
                
                (AWS.Core.Decode.ResultDecoder "OptInPhoneNumberResult" optInPhoneNumberResponseDecoder)
                
            )





{-| <p>Sends a message to an Amazon SNS topic or sends a text message (SMS message) directly to a phone number. </p> <p>If you send a message to a topic, Amazon SNS delivers the message to each endpoint that is subscribed to the topic. The format of the message depends on the notification protocol for each subscribed endpoint.</p> <p>When a <code>messageId</code> is returned, the message has been saved and Amazon SNS will attempt to deliver it shortly.</p> <p>To use the <code>Publish</code> action for sending a message to a mobile endpoint, such as an app on a Kindle device or mobile phone, you must specify the EndpointArn for the TargetArn parameter. The EndpointArn is returned when making a call with the <code>CreatePlatformEndpoint</code> action. </p> <p>For more information about formatting messages, see <a href="https://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html">Send Custom Platform-Specific Payloads in Messages to Mobile Devices</a>. </p>

__Required Parameters__

* `message` __:__ `String`


-}

publish :
  
    String ->
  
  
    ( PublishOptions -> PublishOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PublishResponse)

publish message setOptions =
    
    let
        requestInput = PublishInput
            
            options.topicArn
            
            options.targetArn
            
            options.phoneNumber
            
            message
            
            options.subject
            
            options.messageStructure
            
            options.messageAttributes
            
        
        options = setOptions (PublishOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "Publish")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs publishInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "Publish"
                
                (AWS.Core.Decode.ResultDecoder "PublishResult" publishResponseDecoder)
                
            )



{-| Options for a publish request
-}
type alias PublishOptions =
    {
    topicArn : Maybe String,targetArn : Maybe String,phoneNumber : Maybe String,subject : Maybe String,messageStructure : Maybe String,messageAttributes : Maybe (Dict String MessageAttributeValue)
    }



{-| <p>Removes a statement from a topic's access control policy.</p>

__Required Parameters__

* `topicArn` __:__ `String`
* `label` __:__ `String`


-}

removePermission :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

removePermission topicArn label =
    
    let
        requestInput = RemovePermissionInput
            
            topicArn
            
            label
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RemovePermission")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs removePermissionInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemovePermission"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Sets the attributes for an endpoint for a device on one of the supported push notification services, such as GCM and APNS. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

__Required Parameters__

* `endpointArn` __:__ `String`
* `attributes` __:__ `(Dict String String)`


-}

setEndpointAttributes :
  
    String ->
  
    (Dict String String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

setEndpointAttributes endpointArn attributes =
    
    let
        requestInput = SetEndpointAttributesInput
            
            endpointArn
            
            attributes
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SetEndpointAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs setEndpointAttributesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetEndpointAttributes"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Sets the attributes of the platform application object for the supported push notification services, such as APNS and GCM. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. For information on configuring attributes for message delivery status, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html">Using Amazon SNS Application Attributes for Message Delivery Status</a>. </p>

__Required Parameters__

* `platformApplicationArn` __:__ `String`
* `attributes` __:__ `(Dict String String)`


-}

setPlatformApplicationAttributes :
  
    String ->
  
    (Dict String String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

setPlatformApplicationAttributes platformApplicationArn attributes =
    
    let
        requestInput = SetPlatformApplicationAttributesInput
            
            platformApplicationArn
            
            attributes
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SetPlatformApplicationAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs setPlatformApplicationAttributesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetPlatformApplicationAttributes"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Use this request to set the default settings for sending SMS messages and receiving daily SMS usage reports.</p> <p>You can override some of these settings for a single message when you use the <code>Publish</code> action with the <code>MessageAttributes.entry.N</code> parameter. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html">Sending an SMS Message</a> in the <i>Amazon SNS Developer Guide</i>.</p>

__Required Parameters__

* `attributes` __:__ `(Dict String String)`


-}

setSMSAttributes :
  
    (Dict String String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetSMSAttributesResponse)

setSMSAttributes attributes =
    
    let
        requestInput = SetSMSAttributesInput
            
            attributes
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SetSMSAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs setSMSAttributesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetSMSAttributes"
                
                (AWS.Core.Decode.ResultDecoder "SetSMSAttributesResult" setSMSAttributesResponseDecoder)
                
            )





{-| <p>Allows a subscription owner to set an attribute of the subscription to a new value.</p>

__Required Parameters__

* `subscriptionArn` __:__ `String`
* `attributeName` __:__ `String`


-}

setSubscriptionAttributes :
  
    String ->
  
    String ->
  
  
    ( SetSubscriptionAttributesOptions -> SetSubscriptionAttributesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

setSubscriptionAttributes subscriptionArn attributeName setOptions =
    
    let
        requestInput = SetSubscriptionAttributesInput
            
            subscriptionArn
            
            attributeName
            
            options.attributeValue
            
        
        options = setOptions (SetSubscriptionAttributesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SetSubscriptionAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs setSubscriptionAttributesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetSubscriptionAttributes"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a setSubscriptionAttributes request
-}
type alias SetSubscriptionAttributesOptions =
    {
    attributeValue : Maybe String
    }



{-| <p>Allows a topic owner to set an attribute of the topic to a new value.</p>

__Required Parameters__

* `topicArn` __:__ `String`
* `attributeName` __:__ `String`


-}

setTopicAttributes :
  
    String ->
  
    String ->
  
  
    ( SetTopicAttributesOptions -> SetTopicAttributesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

setTopicAttributes topicArn attributeName setOptions =
    
    let
        requestInput = SetTopicAttributesInput
            
            topicArn
            
            attributeName
            
            options.attributeValue
            
        
        options = setOptions (SetTopicAttributesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SetTopicAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs setTopicAttributesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetTopicAttributes"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a setTopicAttributes request
-}
type alias SetTopicAttributesOptions =
    {
    attributeValue : Maybe String
    }



{-| <p>Prepares to subscribe an endpoint by sending the endpoint a confirmation message. To actually create a subscription, the endpoint owner must call the <code>ConfirmSubscription</code> action with the token from the confirmation message. Confirmation tokens are valid for three days.</p> <p>This action is throttled at 100 transactions per second (TPS).</p>

__Required Parameters__

* `topicArn` __:__ `String`
* `protocol` __:__ `String`


-}

subscribe :
  
    String ->
  
    String ->
  
  
    ( SubscribeOptions -> SubscribeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SubscribeResponse)

subscribe topicArn protocol setOptions =
    
    let
        requestInput = SubscribeInput
            
            topicArn
            
            protocol
            
            options.endpoint
            
            options.attributes
            
            options.returnSubscriptionArn
            
        
        options = setOptions (SubscribeOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "Subscribe")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs subscribeInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "Subscribe"
                
                (AWS.Core.Decode.ResultDecoder "SubscribeResult" subscribeResponseDecoder)
                
            )



{-| Options for a subscribe request
-}
type alias SubscribeOptions =
    {
    endpoint : Maybe String,attributes : Maybe (Dict String String),returnSubscriptionArn : Maybe Bool
    }



{-| <p>Add tags to the specified Amazon SNS topic. For an overview, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html">Amazon SNS Tags</a> in the <i>Amazon SNS Developer Guide</i>.</p> <p>When you use topic tags, keep the following guidelines in mind:</p> <ul> <li> <p>Adding more than 50 tags to a topic isn't recommended.</p> </li> <li> <p>Tags don't have any semantic meaning. Amazon SNS interprets tags as character strings.</p> </li> <li> <p>Tags are case-sensitive.</p> </li> <li> <p>A new tag with a key identical to that of an existing tag overwrites the existing tag.</p> </li> <li> <p>Tagging actions are limited to 10 TPS per AWS account. If your application requires a higher throughput, file a <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=technical">technical support request</a>.</p> </li> </ul> <p>For a full list of tag restrictions, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-limits.html#limits-topics">Limits Related to Topics</a> in the <i>Amazon SNS Developer Guide</i>.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

tagResource :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceResponse)

tagResource resourceArn tags =
    
    let
        requestInput = TagResourceRequest
            
            resourceArn
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "TagResource")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs tagResourceRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TagResource"
                
                (AWS.Core.Decode.ResultDecoder "TagResourceResult" tagResourceResponseDecoder)
                
            )





{-| <p>Deletes a subscription. If the subscription requires authentication for deletion, only the owner of the subscription or the topic's owner can unsubscribe, and an AWS signature is required. If the <code>Unsubscribe</code> call does not require authentication and the requester is not the subscription owner, a final cancellation message is delivered to the endpoint, so that the endpoint owner can easily resubscribe to the topic if the <code>Unsubscribe</code> request was unintended.</p> <p>This action is throttled at 100 transactions per second (TPS).</p>

__Required Parameters__

* `subscriptionArn` __:__ `String`


-}

unsubscribe :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

unsubscribe subscriptionArn =
    
    let
        requestInput = UnsubscribeInput
            
            subscriptionArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "Unsubscribe")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs unsubscribeInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "Unsubscribe"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Remove tags from the specified Amazon SNS topic. For an overview, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html">Amazon SNS Tags</a> in the <i>Amazon SNS Developer Guide</i>.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

untagResource :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceResponse)

untagResource resourceArn tagKeys =
    
    let
        requestInput = UntagResourceRequest
            
            resourceArn
            
            tagKeys
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UntagResource")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs untagResourceRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UntagResource"
                
                (AWS.Core.Decode.ResultDecoder "UntagResourceResult" untagResourceResponseDecoder)
                
            )






{-| Type of HTTP response from checkIfPhoneNumberIsOptedOut
-}
type alias CheckIfPhoneNumberIsOptedOutResponse =
    { isOptedOut : Maybe Bool
    }



checkIfPhoneNumberIsOptedOutResponseDecoder : JD.Decoder CheckIfPhoneNumberIsOptedOutResponse
checkIfPhoneNumberIsOptedOutResponseDecoder =
    JD.succeed CheckIfPhoneNumberIsOptedOutResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isOptedOut", "IsOptedOut"]
            JD.bool
        )
        




checkIfPhoneNumberIsOptedOutResponseToString : CheckIfPhoneNumberIsOptedOutResponse -> String -- List (String, String)
checkIfPhoneNumberIsOptedOutResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "isOptedOut" "" -- val.isOptedOut
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from confirmSubscription
-}
type alias ConfirmSubscriptionResponse =
    { subscriptionArn : Maybe String
    }



confirmSubscriptionResponseDecoder : JD.Decoder ConfirmSubscriptionResponse
confirmSubscriptionResponseDecoder =
    JD.succeed ConfirmSubscriptionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubscriptionArn", "subscriptionArn"]
            JD.string
        )
        




confirmSubscriptionResponseToString : ConfirmSubscriptionResponse -> String -- List (String, String)
confirmSubscriptionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subscriptionArn" "" -- val.subscriptionArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createEndpoint
-}
type alias CreateEndpointResponse =
    { endpointArn : Maybe String
    }



createEndpointResponseDecoder : JD.Decoder CreateEndpointResponse
createEndpointResponseDecoder =
    JD.succeed CreateEndpointResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndpointArn", "endpointArn"]
            JD.string
        )
        




createEndpointResponseToString : CreateEndpointResponse -> String -- List (String, String)
createEndpointResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "endpointArn" "" -- val.endpointArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createPlatformApplication
-}
type alias CreatePlatformApplicationResponse =
    { platformApplicationArn : Maybe String
    }



createPlatformApplicationResponseDecoder : JD.Decoder CreatePlatformApplicationResponse
createPlatformApplicationResponseDecoder =
    JD.succeed CreatePlatformApplicationResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformApplicationArn", "platformApplicationArn"]
            JD.string
        )
        




createPlatformApplicationResponseToString : CreatePlatformApplicationResponse -> String -- List (String, String)
createPlatformApplicationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "platformApplicationArn" "" -- val.platformApplicationArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createTopic
-}
type alias CreateTopicResponse =
    { topicArn : Maybe String
    }



createTopicResponseDecoder : JD.Decoder CreateTopicResponse
createTopicResponseDecoder =
    JD.succeed CreateTopicResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TopicArn", "topicArn"]
            JD.string
        )
        




createTopicResponseToString : CreateTopicResponse -> String -- List (String, String)
createTopicResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "topicArn" "" -- val.topicArn
        
    --     |> Dict.toList
    ""



{-| <p>Endpoint for mobile app and device.</p>
-}
type alias Endpoint =
    { endpointArn : Maybe String
    , attributes : Maybe (Dict String String)
    }



endpointDecoder : JD.Decoder Endpoint
endpointDecoder =
    JD.succeed Endpoint
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndpointArn", "endpointArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (AWS.Core.Decode.dict JD.string)
        )
        




endpointToString : Endpoint -> String -- List (String, String)
endpointToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "endpointArn" "" -- val.endpointArn
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getEndpointAttributes
-}
type alias GetEndpointAttributesResponse =
    { attributes : Maybe (Dict String String)
    }



getEndpointAttributesResponseDecoder : JD.Decoder GetEndpointAttributesResponse
getEndpointAttributesResponseDecoder =
    JD.succeed GetEndpointAttributesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (AWS.Core.Decode.dict JD.string)
        )
        




getEndpointAttributesResponseToString : GetEndpointAttributesResponse -> String -- List (String, String)
getEndpointAttributesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getPlatformApplicationAttributes
-}
type alias GetPlatformApplicationAttributesResponse =
    { attributes : Maybe (Dict String String)
    }



getPlatformApplicationAttributesResponseDecoder : JD.Decoder GetPlatformApplicationAttributesResponse
getPlatformApplicationAttributesResponseDecoder =
    JD.succeed GetPlatformApplicationAttributesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (AWS.Core.Decode.dict JD.string)
        )
        




getPlatformApplicationAttributesResponseToString : GetPlatformApplicationAttributesResponse -> String -- List (String, String)
getPlatformApplicationAttributesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getSMSAttributes
-}
type alias GetSMSAttributesResponse =
    { attributes : Maybe (Dict String String)
    }



getSMSAttributesResponseDecoder : JD.Decoder GetSMSAttributesResponse
getSMSAttributesResponseDecoder =
    JD.succeed GetSMSAttributesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attributes", "Attributes"]
            (AWS.Core.Decode.dict JD.string)
        )
        




getSMSAttributesResponseToString : GetSMSAttributesResponse -> String -- List (String, String)
getSMSAttributesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getSubscriptionAttributes
-}
type alias GetSubscriptionAttributesResponse =
    { attributes : Maybe (Dict String String)
    }



getSubscriptionAttributesResponseDecoder : JD.Decoder GetSubscriptionAttributesResponse
getSubscriptionAttributesResponseDecoder =
    JD.succeed GetSubscriptionAttributesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (AWS.Core.Decode.dict JD.string)
        )
        




getSubscriptionAttributesResponseToString : GetSubscriptionAttributesResponse -> String -- List (String, String)
getSubscriptionAttributesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getTopicAttributes
-}
type alias GetTopicAttributesResponse =
    { attributes : Maybe (Dict String String)
    }



getTopicAttributesResponseDecoder : JD.Decoder GetTopicAttributesResponse
getTopicAttributesResponseDecoder =
    JD.succeed GetTopicAttributesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (AWS.Core.Decode.dict JD.string)
        )
        




getTopicAttributesResponseToString : GetTopicAttributesResponse -> String -- List (String, String)
getTopicAttributesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listEndpointsByPlatformApplication
-}
type alias ListEndpointsByPlatformApplicationResponse =
    { endpoints : Maybe (List Endpoint)
    , nextToken : Maybe String
    }



listEndpointsByPlatformApplicationResponseDecoder : JD.Decoder ListEndpointsByPlatformApplicationResponse
listEndpointsByPlatformApplicationResponseDecoder =
    JD.succeed ListEndpointsByPlatformApplicationResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Endpoints", "endpoints"]
            (JD.list endpointDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listEndpointsByPlatformApplicationResponseToString : ListEndpointsByPlatformApplicationResponse -> String -- List (String, String)
listEndpointsByPlatformApplicationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "endpoints" "" -- val.endpoints
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listPhoneNumbersOptedOut
-}
type alias ListPhoneNumbersOptedOutResponse =
    { phoneNumbers : Maybe (List String)
    , nextToken : Maybe String
    }



listPhoneNumbersOptedOutResponseDecoder : JD.Decoder ListPhoneNumbersOptedOutResponse
listPhoneNumbersOptedOutResponseDecoder =
    JD.succeed ListPhoneNumbersOptedOutResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["phoneNumbers", "PhoneNumbers"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listPhoneNumbersOptedOutResponseToString : ListPhoneNumbersOptedOutResponse -> String -- List (String, String)
listPhoneNumbersOptedOutResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "phoneNumbers" "" -- val.phoneNumbers
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listPlatformApplications
-}
type alias ListPlatformApplicationsResponse =
    { platformApplications : Maybe (List PlatformApplication)
    , nextToken : Maybe String
    }



listPlatformApplicationsResponseDecoder : JD.Decoder ListPlatformApplicationsResponse
listPlatformApplicationsResponseDecoder =
    JD.succeed ListPlatformApplicationsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformApplications", "platformApplications"]
            (JD.list platformApplicationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listPlatformApplicationsResponseToString : ListPlatformApplicationsResponse -> String -- List (String, String)
listPlatformApplicationsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "platformApplications" "" -- val.platformApplications
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listSubscriptionsByTopic
-}
type alias ListSubscriptionsByTopicResponse =
    { subscriptions : Maybe (List Subscription)
    , nextToken : Maybe String
    }



listSubscriptionsByTopicResponseDecoder : JD.Decoder ListSubscriptionsByTopicResponse
listSubscriptionsByTopicResponseDecoder =
    JD.succeed ListSubscriptionsByTopicResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Subscriptions", "subscriptions"]
            (JD.list subscriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listSubscriptionsByTopicResponseToString : ListSubscriptionsByTopicResponse -> String -- List (String, String)
listSubscriptionsByTopicResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subscriptions" "" -- val.subscriptions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listSubscriptions
-}
type alias ListSubscriptionsResponse =
    { subscriptions : Maybe (List Subscription)
    , nextToken : Maybe String
    }



listSubscriptionsResponseDecoder : JD.Decoder ListSubscriptionsResponse
listSubscriptionsResponseDecoder =
    JD.succeed ListSubscriptionsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Subscriptions", "subscriptions"]
            (JD.list subscriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listSubscriptionsResponseToString : ListSubscriptionsResponse -> String -- List (String, String)
listSubscriptionsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subscriptions" "" -- val.subscriptions
        
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



{-| Type of HTTP response from listTopics
-}
type alias ListTopicsResponse =
    { topics : Maybe (List Topic)
    , nextToken : Maybe String
    }



listTopicsResponseDecoder : JD.Decoder ListTopicsResponse
listTopicsResponseDecoder =
    JD.succeed ListTopicsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Topics", "topics"]
            (JD.list topicDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listTopicsResponseToString : ListTopicsResponse -> String -- List (String, String)
listTopicsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "topics" "" -- val.topics
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>The user-specified message attribute value. For string data types, the value attribute has the same restrictions on the content as the message body. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/api/API_Publish.html">Publish</a>.</p> <p>Name, type, and value must not be empty or null. In addition, the message body should not be empty or null. All parts of the message attribute, including name, type, and value, are included in the message size restriction, which is currently 256 KB (262,144 bytes). For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html">Using Amazon SNS Message Attributes</a>.</p>
-}
type alias MessageAttributeValue =
    { dataType : String
    , stringValue : Maybe String
    , binaryValue : Maybe String
    }



messageAttributeValueDecoder : JD.Decoder MessageAttributeValue
messageAttributeValueDecoder =
    JD.succeed MessageAttributeValue
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DataType", "dataType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StringValue", "stringValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BinaryValue", "binaryValue"]
            JD.string
        )
        




messageAttributeValueToString : MessageAttributeValue -> String -- List (String, String)
messageAttributeValueToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dataType" "" -- val.dataType
        
    --     |> Dict.insert
    --         "stringValue" "" -- val.stringValue
        
    --     |> Dict.insert
    --         "binaryValue" "" -- val.binaryValue
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from optInPhoneNumber
-}
type alias OptInPhoneNumberResponse =
    { 
    }



optInPhoneNumberResponseDecoder : JD.Decoder OptInPhoneNumberResponse
optInPhoneNumberResponseDecoder =
    JD.succeed OptInPhoneNumberResponse
        




optInPhoneNumberResponseToString : OptInPhoneNumberResponse -> String -- List (String, String)
optInPhoneNumberResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Platform application object.</p>
-}
type alias PlatformApplication =
    { platformApplicationArn : Maybe String
    , attributes : Maybe (Dict String String)
    }



platformApplicationDecoder : JD.Decoder PlatformApplication
platformApplicationDecoder =
    JD.succeed PlatformApplication
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformApplicationArn", "platformApplicationArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (AWS.Core.Decode.dict JD.string)
        )
        




platformApplicationToString : PlatformApplication -> String -- List (String, String)
platformApplicationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "platformApplicationArn" "" -- val.platformApplicationArn
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from publish
-}
type alias PublishResponse =
    { messageId : Maybe String
    }



publishResponseDecoder : JD.Decoder PublishResponse
publishResponseDecoder =
    JD.succeed PublishResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MessageId", "messageId"]
            JD.string
        )
        




publishResponseToString : PublishResponse -> String -- List (String, String)
publishResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "messageId" "" -- val.messageId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from setSMSAttributes
-}
type alias SetSMSAttributesResponse =
    { 
    }



setSMSAttributesResponseDecoder : JD.Decoder SetSMSAttributesResponse
setSMSAttributesResponseDecoder =
    JD.succeed SetSMSAttributesResponse
        




setSMSAttributesResponseToString : SetSMSAttributesResponse -> String -- List (String, String)
setSMSAttributesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from subscribe
-}
type alias SubscribeResponse =
    { subscriptionArn : Maybe String
    }



subscribeResponseDecoder : JD.Decoder SubscribeResponse
subscribeResponseDecoder =
    JD.succeed SubscribeResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubscriptionArn", "subscriptionArn"]
            JD.string
        )
        




subscribeResponseToString : SubscribeResponse -> String -- List (String, String)
subscribeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subscriptionArn" "" -- val.subscriptionArn
        
    --     |> Dict.toList
    ""



{-| <p>A wrapper type for the attributes of an Amazon SNS subscription.</p>
-}
type alias Subscription =
    { subscriptionArn : Maybe String
    , owner : Maybe String
    , protocol : Maybe String
    , endpoint : Maybe String
    , topicArn : Maybe String
    }



subscriptionDecoder : JD.Decoder Subscription
subscriptionDecoder =
    JD.succeed Subscription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubscriptionArn", "subscriptionArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Owner", "owner"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Protocol", "protocol"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Endpoint", "endpoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TopicArn", "topicArn"]
            JD.string
        )
        




subscriptionToString : Subscription -> String -- List (String, String)
subscriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subscriptionArn" "" -- val.subscriptionArn
        
    --     |> Dict.insert
    --         "owner" "" -- val.owner
        
    --     |> Dict.insert
    --         "protocol" "" -- val.protocol
        
    --     |> Dict.insert
    --         "endpoint" "" -- val.endpoint
        
    --     |> Dict.insert
    --         "topicArn" "" -- val.topicArn
        
    --     |> Dict.toList
    ""



{-| <p>The list of tags to be added to the specified topic.</p>
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



{-| <p>A wrapper type for the topic's Amazon Resource Name (ARN). To retrieve a topic's attributes, use <code>GetTopicAttributes</code>.</p>
-}
type alias Topic =
    { topicArn : Maybe String
    }



topicDecoder : JD.Decoder Topic
topicDecoder =
    JD.succeed Topic
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TopicArn", "topicArn"]
            JD.string
        )
        




topicToString : Topic -> String -- List (String, String)
topicToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "topicArn" "" -- val.topicArn
        
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
type alias AddPermissionInput =
    { topicArn : String
    , label : String
    , aWSAccountId : (List String)
    , actionName : (List String)
    }


{-| <p>The input for the <code>CheckIfPhoneNumberIsOptedOut</code> action.</p>
-}
type alias CheckIfPhoneNumberIsOptedOutInput =
    { phoneNumber : String
    }


{-| <p>Input for ConfirmSubscription action.</p>
-}
type alias ConfirmSubscriptionInput =
    { topicArn : String
    , token : String
    , authenticateOnUnsubscribe : Maybe String
    }


{-| <p>Input for CreatePlatformApplication action.</p>
-}
type alias CreatePlatformApplicationInput =
    { name : String
    , platform : String
    , attributes : (Dict String String)
    }


{-| <p>Input for CreatePlatformEndpoint action.</p>
-}
type alias CreatePlatformEndpointInput =
    { platformApplicationArn : String
    , token : String
    , customUserData : Maybe String
    , attributes : Maybe (Dict String String)
    }


{-| <p>Input for CreateTopic action.</p>
-}
type alias CreateTopicInput =
    { name : String
    , attributes : Maybe (Dict String String)
    , tags : Maybe (List Tag)
    }


{-| <p>Input for DeleteEndpoint action.</p>
-}
type alias DeleteEndpointInput =
    { endpointArn : String
    }


{-| <p>Input for DeletePlatformApplication action.</p>
-}
type alias DeletePlatformApplicationInput =
    { platformApplicationArn : String
    }


{-| undefined
-}
type alias DeleteTopicInput =
    { topicArn : String
    }


{-| <p>Input for GetEndpointAttributes action.</p>
-}
type alias GetEndpointAttributesInput =
    { endpointArn : String
    }


{-| <p>Input for GetPlatformApplicationAttributes action.</p>
-}
type alias GetPlatformApplicationAttributesInput =
    { platformApplicationArn : String
    }


{-| <p>The input for the <code>GetSMSAttributes</code> request.</p>
-}
type alias GetSMSAttributesInput =
    { attributes : Maybe (List String)
    }


{-| <p>Input for GetSubscriptionAttributes.</p>
-}
type alias GetSubscriptionAttributesInput =
    { subscriptionArn : String
    }


{-| <p>Input for GetTopicAttributes action.</p>
-}
type alias GetTopicAttributesInput =
    { topicArn : String
    }


{-| <p>Input for ListEndpointsByPlatformApplication action.</p>
-}
type alias ListEndpointsByPlatformApplicationInput =
    { platformApplicationArn : String
    , nextToken : Maybe String
    }


{-| <p>The input for the <code>ListPhoneNumbersOptedOut</code> action.</p>
-}
type alias ListPhoneNumbersOptedOutInput =
    { nextToken : Maybe String
    }


{-| <p>Input for ListPlatformApplications action.</p>
-}
type alias ListPlatformApplicationsInput =
    { nextToken : Maybe String
    }


{-| <p>Input for ListSubscriptionsByTopic action.</p>
-}
type alias ListSubscriptionsByTopicInput =
    { topicArn : String
    , nextToken : Maybe String
    }


{-| <p>Input for ListSubscriptions action.</p>
-}
type alias ListSubscriptionsInput =
    { nextToken : Maybe String
    }


{-| undefined
-}
type alias ListTagsForResourceRequest =
    { resourceArn : String
    }


{-| undefined
-}
type alias ListTopicsInput =
    { nextToken : Maybe String
    }


{-| <p>Input for the OptInPhoneNumber action.</p>
-}
type alias OptInPhoneNumberInput =
    { phoneNumber : String
    }


{-| <p>Input for Publish action.</p>
-}
type alias PublishInput =
    { topicArn : Maybe String
    , targetArn : Maybe String
    , phoneNumber : Maybe String
    , message : String
    , subject : Maybe String
    , messageStructure : Maybe String
    , messageAttributes : Maybe (Dict String MessageAttributeValue)
    }


{-| <p>Input for RemovePermission action.</p>
-}
type alias RemovePermissionInput =
    { topicArn : String
    , label : String
    }


{-| <p>Input for SetEndpointAttributes action.</p>
-}
type alias SetEndpointAttributesInput =
    { endpointArn : String
    , attributes : (Dict String String)
    }


{-| <p>Input for SetPlatformApplicationAttributes action.</p>
-}
type alias SetPlatformApplicationAttributesInput =
    { platformApplicationArn : String
    , attributes : (Dict String String)
    }


{-| <p>The input for the SetSMSAttributes action.</p>
-}
type alias SetSMSAttributesInput =
    { attributes : (Dict String String)
    }


{-| <p>Input for SetSubscriptionAttributes action.</p>
-}
type alias SetSubscriptionAttributesInput =
    { subscriptionArn : String
    , attributeName : String
    , attributeValue : Maybe String
    }


{-| <p>Input for SetTopicAttributes action.</p>
-}
type alias SetTopicAttributesInput =
    { topicArn : String
    , attributeName : String
    , attributeValue : Maybe String
    }


{-| <p>Input for Subscribe action.</p>
-}
type alias SubscribeInput =
    { topicArn : String
    , protocol : String
    , endpoint : Maybe String
    , attributes : Maybe (Dict String String)
    , returnSubscriptionArn : Maybe Bool
    }


{-| undefined
-}
type alias TagResourceRequest =
    { resourceArn : String
    , tags : (List Tag)
    }


{-| <p>Input for Unsubscribe action.</p>
-}
type alias UnsubscribeInput =
    { subscriptionArn : String
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { resourceArn : String
    , tagKeys : (List String)
    }








addPermissionInputEncoder : AddPermissionInput -> List (String, String)
addPermissionInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" data.topicArn
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Label" data.label
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AWSAccountId" data.aWSAccountId
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ActionName" data.actionName
        
        






checkIfPhoneNumberIsOptedOutInputEncoder : CheckIfPhoneNumberIsOptedOutInput -> List (String, String)
checkIfPhoneNumberIsOptedOutInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "phoneNumber" data.phoneNumber
        
        






checkIfPhoneNumberIsOptedOutResponseEncoder : CheckIfPhoneNumberIsOptedOutResponse -> List (String, String)
checkIfPhoneNumberIsOptedOutResponseEncoder data =
    []
        
        
        |> (case data.isOptedOut of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "isOptedOut" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






confirmSubscriptionInputEncoder : ConfirmSubscriptionInput -> List (String, String)
confirmSubscriptionInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" data.topicArn
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Token" data.token
        
        
        
        |> (case data.authenticateOnUnsubscribe of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AuthenticateOnUnsubscribe" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






confirmSubscriptionResponseEncoder : ConfirmSubscriptionResponse -> List (String, String)
confirmSubscriptionResponseEncoder data =
    []
        
        
        |> (case data.subscriptionArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createEndpointResponseEncoder : CreateEndpointResponse -> List (String, String)
createEndpointResponseEncoder data =
    []
        
        
        |> (case data.endpointArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EndpointArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createPlatformApplicationInputEncoder : CreatePlatformApplicationInput -> List (String, String)
createPlatformApplicationInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Name" data.name
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Platform" data.platform
        
        
        
        |> AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" data.attributes
        
        






createPlatformApplicationResponseEncoder : CreatePlatformApplicationResponse -> List (String, String)
createPlatformApplicationResponseEncoder data =
    []
        
        
        |> (case data.platformApplicationArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformApplicationArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createPlatformEndpointInputEncoder : CreatePlatformEndpointInput -> List (String, String)
createPlatformEndpointInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "PlatformApplicationArn" data.platformApplicationArn
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Token" data.token
        
        
        
        |> (case data.customUserData of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CustomUserData" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createTopicInputEncoder : CreateTopicInput -> List (String, String)
createTopicInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Name" data.name
        
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createTopicResponseEncoder : CreateTopicResponse -> List (String, String)
createTopicResponseEncoder data =
    []
        
        
        |> (case data.topicArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteEndpointInputEncoder : DeleteEndpointInput -> List (String, String)
deleteEndpointInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "EndpointArn" data.endpointArn
        
        






deletePlatformApplicationInputEncoder : DeletePlatformApplicationInput -> List (String, String)
deletePlatformApplicationInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "PlatformApplicationArn" data.platformApplicationArn
        
        






deleteTopicInputEncoder : DeleteTopicInput -> List (String, String)
deleteTopicInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" data.topicArn
        
        






endpointEncoder : Endpoint -> List (String, String)
endpointEncoder data =
    []
        
        
        |> (case data.endpointArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EndpointArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






getEndpointAttributesInputEncoder : GetEndpointAttributesInput -> List (String, String)
getEndpointAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "EndpointArn" data.endpointArn
        
        






getEndpointAttributesResponseEncoder : GetEndpointAttributesResponse -> List (String, String)
getEndpointAttributesResponseEncoder data =
    []
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






getPlatformApplicationAttributesInputEncoder : GetPlatformApplicationAttributesInput -> List (String, String)
getPlatformApplicationAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "PlatformApplicationArn" data.platformApplicationArn
        
        






getPlatformApplicationAttributesResponseEncoder : GetPlatformApplicationAttributesResponse -> List (String, String)
getPlatformApplicationAttributesResponseEncoder data =
    []
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






getSMSAttributesInputEncoder : GetSMSAttributesInput -> List (String, String)
getSMSAttributesInputEncoder data =
    []
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






getSMSAttributesResponseEncoder : GetSMSAttributesResponse -> List (String, String)
getSMSAttributesResponseEncoder data =
    []
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






getSubscriptionAttributesInputEncoder : GetSubscriptionAttributesInput -> List (String, String)
getSubscriptionAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionArn" data.subscriptionArn
        
        






getSubscriptionAttributesResponseEncoder : GetSubscriptionAttributesResponse -> List (String, String)
getSubscriptionAttributesResponseEncoder data =
    []
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






getTopicAttributesInputEncoder : GetTopicAttributesInput -> List (String, String)
getTopicAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" data.topicArn
        
        






getTopicAttributesResponseEncoder : GetTopicAttributesResponse -> List (String, String)
getTopicAttributesResponseEncoder data =
    []
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listEndpointsByPlatformApplicationInputEncoder : ListEndpointsByPlatformApplicationInput -> List (String, String)
listEndpointsByPlatformApplicationInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "PlatformApplicationArn" data.platformApplicationArn
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listEndpointsByPlatformApplicationResponseEncoder : ListEndpointsByPlatformApplicationResponse -> List (String, String)
listEndpointsByPlatformApplicationResponseEncoder data =
    []
        
        
        |> (case data.endpoints of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs endpointEncoder "") "Endpoints" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listPhoneNumbersOptedOutInputEncoder : ListPhoneNumbersOptedOutInput -> List (String, String)
listPhoneNumbersOptedOutInputEncoder data =
    []
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "nextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listPhoneNumbersOptedOutResponseEncoder : ListPhoneNumbersOptedOutResponse -> List (String, String)
listPhoneNumbersOptedOutResponseEncoder data =
    []
        
        
        |> (case data.phoneNumbers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "phoneNumbers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "nextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listPlatformApplicationsInputEncoder : ListPlatformApplicationsInput -> List (String, String)
listPlatformApplicationsInputEncoder data =
    []
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listPlatformApplicationsResponseEncoder : ListPlatformApplicationsResponse -> List (String, String)
listPlatformApplicationsResponseEncoder data =
    []
        
        
        |> (case data.platformApplications of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs platformApplicationEncoder "") "PlatformApplications" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listSubscriptionsByTopicInputEncoder : ListSubscriptionsByTopicInput -> List (String, String)
listSubscriptionsByTopicInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" data.topicArn
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listSubscriptionsByTopicResponseEncoder : ListSubscriptionsByTopicResponse -> List (String, String)
listSubscriptionsByTopicResponseEncoder data =
    []
        
        
        |> (case data.subscriptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs subscriptionEncoder "") "Subscriptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listSubscriptionsInputEncoder : ListSubscriptionsInput -> List (String, String)
listSubscriptionsInputEncoder data =
    []
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listSubscriptionsResponseEncoder : ListSubscriptionsResponse -> List (String, String)
listSubscriptionsResponseEncoder data =
    []
        
        
        |> (case data.subscriptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs subscriptionEncoder "") "Subscriptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listTagsForResourceRequestEncoder : ListTagsForResourceRequest -> List (String, String)
listTagsForResourceRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceArn" data.resourceArn
        
        






listTagsForResourceResponseEncoder : ListTagsForResourceResponse -> List (String, String)
listTagsForResourceResponseEncoder data =
    []
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listTopicsInputEncoder : ListTopicsInput -> List (String, String)
listTopicsInputEncoder data =
    []
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listTopicsResponseEncoder : ListTopicsResponse -> List (String, String)
listTopicsResponseEncoder data =
    []
        
        
        |> (case data.topics of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs topicEncoder "") "Topics" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






messageAttributeValueEncoder : MessageAttributeValue -> List (String, String)
messageAttributeValueEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DataType" data.dataType
        
        
        
        |> (case data.stringValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StringValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.binaryValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "BinaryValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






optInPhoneNumberInputEncoder : OptInPhoneNumberInput -> List (String, String)
optInPhoneNumberInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "phoneNumber" data.phoneNumber
        
        






optInPhoneNumberResponseEncoder : OptInPhoneNumberResponse -> List (String, String)
optInPhoneNumberResponseEncoder data =
    []
        






platformApplicationEncoder : PlatformApplication -> List (String, String)
platformApplicationEncoder data =
    []
        
        
        |> (case data.platformApplicationArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformApplicationArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






publishInputEncoder : PublishInput -> List (String, String)
publishInputEncoder data =
    []
        
        
        |> (case data.topicArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.targetArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TargetArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.phoneNumber of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PhoneNumber" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Message" data.message
        
        
        
        |> (case data.subject of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Subject" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.messageStructure of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MessageStructure" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.messageAttributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (messageAttributeValueToString) "MessageAttributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






publishResponseEncoder : PublishResponse -> List (String, String)
publishResponseEncoder data =
    []
        
        
        |> (case data.messageId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MessageId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






removePermissionInputEncoder : RemovePermissionInput -> List (String, String)
removePermissionInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" data.topicArn
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Label" data.label
        
        






setEndpointAttributesInputEncoder : SetEndpointAttributesInput -> List (String, String)
setEndpointAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "EndpointArn" data.endpointArn
        
        
        
        |> AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" data.attributes
        
        






setPlatformApplicationAttributesInputEncoder : SetPlatformApplicationAttributesInput -> List (String, String)
setPlatformApplicationAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "PlatformApplicationArn" data.platformApplicationArn
        
        
        
        |> AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" data.attributes
        
        






setSMSAttributesInputEncoder : SetSMSAttributesInput -> List (String, String)
setSMSAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addDictToQueryArgs (identity) "attributes" data.attributes
        
        






setSMSAttributesResponseEncoder : SetSMSAttributesResponse -> List (String, String)
setSMSAttributesResponseEncoder data =
    []
        






setSubscriptionAttributesInputEncoder : SetSubscriptionAttributesInput -> List (String, String)
setSubscriptionAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionArn" data.subscriptionArn
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "AttributeName" data.attributeName
        
        
        
        |> (case data.attributeValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AttributeValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






setTopicAttributesInputEncoder : SetTopicAttributesInput -> List (String, String)
setTopicAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" data.topicArn
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "AttributeName" data.attributeName
        
        
        
        |> (case data.attributeValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AttributeValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






subscribeInputEncoder : SubscribeInput -> List (String, String)
subscribeInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" data.topicArn
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Protocol" data.protocol
        
        
        
        |> (case data.endpoint of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Endpoint" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.returnSubscriptionArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReturnSubscriptionArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






subscribeResponseEncoder : SubscribeResponse -> List (String, String)
subscribeResponseEncoder data =
    []
        
        
        |> (case data.subscriptionArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






subscriptionEncoder : Subscription -> List (String, String)
subscriptionEncoder data =
    []
        
        
        |> (case data.subscriptionArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.owner of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Owner" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.protocol of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Protocol" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.endpoint of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Endpoint" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.topicArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






tagEncoder : Tag -> List (String, String)
tagEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Key" data.key
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Value" data.value
        
        






tagResourceRequestEncoder : TagResourceRequest -> List (String, String)
tagResourceRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceArn" data.resourceArn
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" data.tags
        
        






tagResourceResponseEncoder : TagResourceResponse -> List (String, String)
tagResourceResponseEncoder data =
    []
        






topicEncoder : Topic -> List (String, String)
topicEncoder data =
    []
        
        
        |> (case data.topicArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






unsubscribeInputEncoder : UnsubscribeInput -> List (String, String)
unsubscribeInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionArn" data.subscriptionArn
        
        






untagResourceRequestEncoder : UntagResourceRequest -> List (String, String)
untagResourceRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceArn" data.resourceArn
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" data.tagKeys
        
        






untagResourceResponseEncoder : UntagResourceResponse -> List (String, String)
untagResourceResponseEncoder data =
    []
        



