module AWS.Shield exposing
    ( service
    , associateDRTLogBucket, associateDRTRole, createProtection, createSubscription, deleteProtection, deleteSubscription, describeAttack, describeDRTAccess, describeEmergencyContactSettings, describeProtection, DescribeProtectionOptions, describeSubscription, disassociateDRTLogBucket, disassociateDRTRole, getSubscriptionState, listAttacks, ListAttacksOptions, listProtections, ListProtectionsOptions, updateEmergencyContactSettings, UpdateEmergencyContactSettingsOptions, updateSubscription, UpdateSubscriptionOptions
    , AssociateDRTLogBucketResponse, AssociateDRTRoleResponse, CreateProtectionResponse, CreateSubscriptionResponse, DeleteProtectionResponse, DeleteSubscriptionResponse, DescribeAttackResponse, DescribeDRTAccessResponse, DescribeEmergencyContactSettingsResponse, DescribeProtectionResponse, DescribeSubscriptionResponse, DisassociateDRTLogBucketResponse, DisassociateDRTRoleResponse, GetSubscriptionStateResponse, ListAttacksResponse, ListProtectionsResponse, UpdateEmergencyContactSettingsResponse, UpdateSubscriptionResponse
    , AttackDetail, AttackProperty, AttackSummary, AttackVectorDescription, Contributor, EmergencyContact, Limit, Mitigation, Protection, SubResourceSummary, Subscription, SummarizedAttackVector, SummarizedCounter, TimeRange
    , AttackLayer(..), AttackPropertyIdentifier(..), AutoRenew(..), SubResourceType(..), SubscriptionState(..), Unit(..)
    )

{-| <fullname>AWS Shield Advanced</fullname> <p>This is the <i>AWS Shield Advanced API Reference</i>. This guide is for developers who need detailed information about the AWS Shield Advanced API actions, data types, and errors. For detailed information about AWS WAF and AWS Shield Advanced features and an overview of how to use the AWS WAF and AWS Shield Advanced APIs, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF and AWS Shield Developer Guide</a>.</p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [associateDRTLogBucket](#associateDRTLogBucket)
  - [associateDRTRole](#associateDRTRole)
  - [createProtection](#createProtection)
  - [createSubscription](#createSubscription)
  - [deleteProtection](#deleteProtection)
  - [deleteSubscription](#deleteSubscription)
  - [describeAttack](#describeAttack)
  - [describeDRTAccess](#describeDRTAccess)
  - [describeEmergencyContactSettings](#describeEmergencyContactSettings)
  - [describeProtection](#describeProtection)
  - [DescribeProtectionOptions](#DescribeProtectionOptions)
  - [describeSubscription](#describeSubscription)
  - [disassociateDRTLogBucket](#disassociateDRTLogBucket)
  - [disassociateDRTRole](#disassociateDRTRole)
  - [getSubscriptionState](#getSubscriptionState)
  - [listAttacks](#listAttacks)
  - [ListAttacksOptions](#ListAttacksOptions)
  - [listProtections](#listProtections)
  - [ListProtectionsOptions](#ListProtectionsOptions)
  - [updateEmergencyContactSettings](#updateEmergencyContactSettings)
  - [UpdateEmergencyContactSettingsOptions](#UpdateEmergencyContactSettingsOptions)
  - [updateSubscription](#updateSubscription)
  - [UpdateSubscriptionOptions](#UpdateSubscriptionOptions)

@docs associateDRTLogBucket, associateDRTRole, createProtection, createSubscription, deleteProtection, deleteSubscription, describeAttack, describeDRTAccess, describeEmergencyContactSettings, describeProtection, DescribeProtectionOptions, describeSubscription, disassociateDRTLogBucket, disassociateDRTRole, getSubscriptionState, listAttacks, ListAttacksOptions, listProtections, ListProtectionsOptions, updateEmergencyContactSettings, UpdateEmergencyContactSettingsOptions, updateSubscription, UpdateSubscriptionOptions


## Responses

  - [AssociateDRTLogBucketResponse](#AssociateDRTLogBucketResponse)
  - [AssociateDRTRoleResponse](#AssociateDRTRoleResponse)
  - [CreateProtectionResponse](#CreateProtectionResponse)
  - [CreateSubscriptionResponse](#CreateSubscriptionResponse)
  - [DeleteProtectionResponse](#DeleteProtectionResponse)
  - [DeleteSubscriptionResponse](#DeleteSubscriptionResponse)
  - [DescribeAttackResponse](#DescribeAttackResponse)
  - [DescribeDRTAccessResponse](#DescribeDRTAccessResponse)
  - [DescribeEmergencyContactSettingsResponse](#DescribeEmergencyContactSettingsResponse)
  - [DescribeProtectionResponse](#DescribeProtectionResponse)
  - [DescribeSubscriptionResponse](#DescribeSubscriptionResponse)
  - [DisassociateDRTLogBucketResponse](#DisassociateDRTLogBucketResponse)
  - [DisassociateDRTRoleResponse](#DisassociateDRTRoleResponse)
  - [GetSubscriptionStateResponse](#GetSubscriptionStateResponse)
  - [ListAttacksResponse](#ListAttacksResponse)
  - [ListProtectionsResponse](#ListProtectionsResponse)
  - [UpdateEmergencyContactSettingsResponse](#UpdateEmergencyContactSettingsResponse)
  - [UpdateSubscriptionResponse](#UpdateSubscriptionResponse)

@docs AssociateDRTLogBucketResponse, AssociateDRTRoleResponse, CreateProtectionResponse, CreateSubscriptionResponse, DeleteProtectionResponse, DeleteSubscriptionResponse, DescribeAttackResponse, DescribeDRTAccessResponse, DescribeEmergencyContactSettingsResponse, DescribeProtectionResponse, DescribeSubscriptionResponse, DisassociateDRTLogBucketResponse, DisassociateDRTRoleResponse, GetSubscriptionStateResponse, ListAttacksResponse, ListProtectionsResponse, UpdateEmergencyContactSettingsResponse, UpdateSubscriptionResponse


## Records

  - [AttackDetail](#AttackDetail)
  - [AttackProperty](#AttackProperty)
  - [AttackSummary](#AttackSummary)
  - [AttackVectorDescription](#AttackVectorDescription)
  - [Contributor](#Contributor)
  - [EmergencyContact](#EmergencyContact)
  - [Limit](#Limit)
  - [Mitigation](#Mitigation)
  - [Protection](#Protection)
  - [SubResourceSummary](#SubResourceSummary)
  - [Subscription](#Subscription)
  - [SummarizedAttackVector](#SummarizedAttackVector)
  - [SummarizedCounter](#SummarizedCounter)
  - [TimeRange](#TimeRange)

@docs AttackDetail, AttackProperty, AttackSummary, AttackVectorDescription, Contributor, EmergencyContact, Limit, Mitigation, Protection, SubResourceSummary, Subscription, SummarizedAttackVector, SummarizedCounter, TimeRange


## Unions

  - [AttackLayer](#AttackLayer)
  - [AttackPropertyIdentifier](#AttackPropertyIdentifier)
  - [AutoRenew](#AutoRenew)
  - [SubResourceType](#SubResourceType)
  - [SubscriptionState](#SubscriptionState)
  - [Unit](#Unit)

@docs AttackLayer, AttackPropertyIdentifier, AutoRenew, SubResourceType, SubscriptionState, Unit

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
        "shield"
        "2016-06-02"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWSShield_20160616")



-- OPERATIONS


{-|

<p>Authorizes the DDoS Response team (DRT) to access the specified Amazon S3 bucket containing your AWS WAF logs. You can associate up to 10 Amazon S3 buckets with your subscription.</p> <p>To use the services of the DRT and make an <code>AssociateDRTLogBucket</code> request, you must be subscribed to the <a href="https://aws.amazon.com/premiumsupport/business-support/">Business Support plan</a> or the <a href="https://aws.amazon.com/premiumsupport/enterprise-support/">Enterprise Support plan</a>.</p>

**Required Parameters**

  - `logBucket` **:** `String`

-}
associateDRTLogBucket :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateDRTLogBucketResponse)
associateDRTLogBucket logBucket =
    let
        requestInput =
            AssociateDRTLogBucketRequest
                logBucket
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> associateDRTLogBucketRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AssociateDRTLogBucket"
            (AWS.Core.Decode.ResultDecoder "AssociateDRTLogBucketResponse" associateDRTLogBucketResponseDecoder)
        )


{-|

<p>Authorizes the DDoS Response team (DRT), using the specified role, to access your AWS account to assist with DDoS attack mitigation during potential attacks. This enables the DRT to inspect your AWS WAF configuration and create or update AWS WAF rules and web ACLs.</p> <p>You can associate only one <code>RoleArn</code> with your subscription. If you submit an <code>AssociateDRTRole</code> request for an account that already has an associated role, the new <code>RoleArn</code> will replace the existing <code>RoleArn</code>. </p> <p>Prior to making the <code>AssociateDRTRole</code> request, you must attach the <a href="https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy">AWSShieldDRTAccessPolicy</a> managed policy to the role you will specify in the request. For more information see <a href=" https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html">Attaching and Detaching IAM Policies</a>. The role must also trust the service principal <code> drt.shield.amazonaws.com</code>. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html">IAM JSON Policy Elements: Principal</a>.</p> <p>The DRT will have access only to your AWS WAF and Shield resources. By submitting this request, you authorize the DRT to inspect your AWS WAF and Shield configuration and create and update AWS WAF rules and web ACLs on your behalf. The DRT takes these actions only if explicitly authorized by you.</p> <p>You must have the <code>iam:PassRole</code> permission to make an <code>AssociateDRTRole</code> request. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html">Granting a User Permissions to Pass a Role to an AWS Service</a>. </p> <p>To use the services of the DRT and make an <code>AssociateDRTRole</code> request, you must be subscribed to the <a href="https://aws.amazon.com/premiumsupport/business-support/">Business Support plan</a> or the <a href="https://aws.amazon.com/premiumsupport/enterprise-support/">Enterprise Support plan</a>.</p>

**Required Parameters**

  - `roleArn` **:** `String`

-}
associateDRTRole :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateDRTRoleResponse)
associateDRTRole roleArn =
    let
        requestInput =
            AssociateDRTRoleRequest
                roleArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> associateDRTRoleRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AssociateDRTRole"
            (AWS.Core.Decode.ResultDecoder "AssociateDRTRoleResponse" associateDRTRoleResponseDecoder)
        )


{-|

<p>Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, AWS Global Accelerator accelerator, Elastic IP Address, or an Amazon Route 53 hosted zone.</p> <p>You can add protection to only a single resource with each CreateProtection request. If you want to add protection to multiple resources at once, use the <a href="https://console.aws.amazon.com/waf/">AWS WAF console</a>. For more information see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html">Getting Started with AWS Shield Advanced</a> and <a href="https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html">Add AWS Shield Advanced Protection to more AWS Resources</a>.</p>

**Required Parameters**

  - `name` **:** `String`
  - `resourceArn` **:** `String`

-}
createProtection :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateProtectionResponse)
createProtection name resourceArn =
    let
        requestInput =
            CreateProtectionRequest
                name
                resourceArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createProtectionRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateProtection"
            (AWS.Core.Decode.ResultDecoder "CreateProtectionResponse" createProtectionResponseDecoder)
        )


{-|

<p>Activates AWS Shield Advanced for an account.</p> <p>As part of this request you can specify <code>EmergencySettings</code> that automaticaly grant the DDoS response team (DRT) needed permissions to assist you during a suspected DDoS attack. For more information see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/authorize-DRT.html">Authorize the DDoS Response Team to Create Rules and Web ACLs on Your Behalf</a>.</p> <p>To use the services of the DRT, you must be subscribed to the <a href="https://aws.amazon.com/premiumsupport/business-support/">Business Support plan</a> or the <a href="https://aws.amazon.com/premiumsupport/enterprise-support/">Enterprise Support plan</a>.</p> <p>When you initally create a subscription, your subscription is set to be automatically renewed at the end of the existing subscription period. You can change this by submitting an <code>UpdateSubscription</code> request. </p>

**Required Parameters**

-}
createSubscription : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateSubscriptionResponse)
createSubscription =
    let
        requestInput =
            CreateSubscriptionRequest
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createSubscriptionRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateSubscription"
            (AWS.Core.Decode.ResultDecoder "CreateSubscriptionResponse" createSubscriptionResponseDecoder)
        )


{-|

<p>Deletes an AWS Shield Advanced <a>Protection</a>.</p>

**Required Parameters**

  - `protectionId` **:** `String`

-}
deleteProtection :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteProtectionResponse)
deleteProtection protectionId =
    let
        requestInput =
            DeleteProtectionRequest
                protectionId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteProtectionRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteProtection"
            (AWS.Core.Decode.ResultDecoder "DeleteProtectionResponse" deleteProtectionResponseDecoder)
        )


{-|

<p>Removes AWS Shield Advanced from an account. AWS Shield Advanced requires a 1-year subscription commitment. You cannot delete a subscription prior to the completion of that commitment. </p>

**Required Parameters**

-}
deleteSubscription : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteSubscriptionResponse)
deleteSubscription =
    let
        requestInput =
            DeleteSubscriptionRequest
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteSubscriptionRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteSubscription"
            (AWS.Core.Decode.ResultDecoder "DeleteSubscriptionResponse" deleteSubscriptionResponseDecoder)
        )


{-|

<p>Describes the details of a DDoS attack. </p>

**Required Parameters**

  - `attackId` **:** `String`

-}
describeAttack :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAttackResponse)
describeAttack attackId =
    let
        requestInput =
            DescribeAttackRequest
                attackId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeAttackRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAttack"
            (AWS.Core.Decode.ResultDecoder "DescribeAttackResponse" describeAttackResponseDecoder)
        )


{-|

<p>Returns the current role and list of Amazon S3 log buckets used by the DDoS Response team (DRT) to access your AWS account while assisting with attack mitigation.</p>

**Required Parameters**

-}
describeDRTAccess : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDRTAccessResponse)
describeDRTAccess =
    let
        requestInput =
            DescribeDRTAccessRequest
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeDRTAccessRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeDRTAccess"
            (AWS.Core.Decode.ResultDecoder "DescribeDRTAccessResponse" describeDRTAccessResponseDecoder)
        )


{-|

<p>Lists the email addresses that the DRT can use to contact you during a suspected attack.</p>

**Required Parameters**

-}
describeEmergencyContactSettings : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEmergencyContactSettingsResponse)
describeEmergencyContactSettings =
    let
        requestInput =
            DescribeEmergencyContactSettingsRequest
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeEmergencyContactSettingsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeEmergencyContactSettings"
            (AWS.Core.Decode.ResultDecoder "DescribeEmergencyContactSettingsResponse" describeEmergencyContactSettingsResponseDecoder)
        )


{-|

<p>Lists the details of a <a>Protection</a> object.</p>

**Required Parameters**

-}
describeProtection :
    (DescribeProtectionOptions -> DescribeProtectionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeProtectionResponse)
describeProtection setOptions =
    let
        requestInput =
            DescribeProtectionRequest
                options.protectionId
                options.resourceArn

        options =
            setOptions (DescribeProtectionOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeProtectionRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeProtection"
            (AWS.Core.Decode.ResultDecoder "DescribeProtectionResponse" describeProtectionResponseDecoder)
        )


{-| Options for a describeProtection request
-}
type alias DescribeProtectionOptions =
    { protectionId : Maybe String
    , resourceArn : Maybe String
    }


{-|

<p>Provides details about the AWS Shield Advanced subscription for an account.</p>

**Required Parameters**

-}
describeSubscription : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSubscriptionResponse)
describeSubscription =
    let
        requestInput =
            DescribeSubscriptionRequest
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeSubscriptionRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeSubscription"
            (AWS.Core.Decode.ResultDecoder "DescribeSubscriptionResponse" describeSubscriptionResponseDecoder)
        )


{-|

<p>Removes the DDoS Response team's (DRT) access to the specified Amazon S3 bucket containing your AWS WAF logs.</p> <p>To make a <code>DisassociateDRTLogBucket</code> request, you must be subscribed to the <a href="https://aws.amazon.com/premiumsupport/business-support/">Business Support plan</a> or the <a href="https://aws.amazon.com/premiumsupport/enterprise-support/">Enterprise Support plan</a>. However, if you are not subscribed to one of these support plans, but had been previously and had granted the DRT access to your account, you can submit a <code>DisassociateDRTLogBucket</code> request to remove this access.</p>

**Required Parameters**

  - `logBucket` **:** `String`

-}
disassociateDRTLogBucket :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateDRTLogBucketResponse)
disassociateDRTLogBucket logBucket =
    let
        requestInput =
            DisassociateDRTLogBucketRequest
                logBucket
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> disassociateDRTLogBucketRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DisassociateDRTLogBucket"
            (AWS.Core.Decode.ResultDecoder "DisassociateDRTLogBucketResponse" disassociateDRTLogBucketResponseDecoder)
        )


{-|

<p>Removes the DDoS Response team's (DRT) access to your AWS account.</p> <p>To make a <code>DisassociateDRTRole</code> request, you must be subscribed to the <a href="https://aws.amazon.com/premiumsupport/business-support/">Business Support plan</a> or the <a href="https://aws.amazon.com/premiumsupport/enterprise-support/">Enterprise Support plan</a>. However, if you are not subscribed to one of these support plans, but had been previously and had granted the DRT access to your account, you can submit a <code>DisassociateDRTRole</code> request to remove this access.</p>

**Required Parameters**

-}
disassociateDRTRole : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateDRTRoleResponse)
disassociateDRTRole =
    let
        requestInput =
            DisassociateDRTRoleRequest
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> disassociateDRTRoleRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DisassociateDRTRole"
            (AWS.Core.Decode.ResultDecoder "DisassociateDRTRoleResponse" disassociateDRTRoleResponseDecoder)
        )


{-|

<p>Returns the <code>SubscriptionState</code>, either <code>Active</code> or <code>Inactive</code>.</p>

**Required Parameters**

-}
getSubscriptionState : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSubscriptionStateResponse)
getSubscriptionState =
    let
        requestInput =
            GetSubscriptionStateRequest
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getSubscriptionStateRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetSubscriptionState"
            (AWS.Core.Decode.ResultDecoder "GetSubscriptionStateResponse" getSubscriptionStateResponseDecoder)
        )


{-|

<p>Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.</p>

**Required Parameters**

-}
listAttacks :
    (ListAttacksOptions -> ListAttacksOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAttacksResponse)
listAttacks setOptions =
    let
        requestInput =
            ListAttacksRequest
                options.resourceArns
                options.startTime
                options.endTime
                options.nextToken
                options.maxResults

        options =
            setOptions (ListAttacksOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listAttacksRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListAttacks"
            (AWS.Core.Decode.ResultDecoder "ListAttacksResponse" listAttacksResponseDecoder)
        )


{-| Options for a listAttacks request
-}
type alias ListAttacksOptions =
    { resourceArns : Maybe (List String)
    , startTime : Maybe TimeRange
    , endTime : Maybe TimeRange
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p>Lists all <a>Protection</a> objects for the account.</p>

**Required Parameters**

-}
listProtections :
    (ListProtectionsOptions -> ListProtectionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListProtectionsResponse)
listProtections setOptions =
    let
        requestInput =
            ListProtectionsRequest
                options.nextToken
                options.maxResults

        options =
            setOptions (ListProtectionsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listProtectionsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListProtections"
            (AWS.Core.Decode.ResultDecoder "ListProtectionsResponse" listProtectionsResponseDecoder)
        )


{-| Options for a listProtections request
-}
type alias ListProtectionsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p>Updates the details of the list of email addresses that the DRT can use to contact you during a suspected attack.</p>

**Required Parameters**

-}
updateEmergencyContactSettings :
    (UpdateEmergencyContactSettingsOptions -> UpdateEmergencyContactSettingsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateEmergencyContactSettingsResponse)
updateEmergencyContactSettings setOptions =
    let
        requestInput =
            UpdateEmergencyContactSettingsRequest
                options.emergencyContactList

        options =
            setOptions (UpdateEmergencyContactSettingsOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateEmergencyContactSettingsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateEmergencyContactSettings"
            (AWS.Core.Decode.ResultDecoder "UpdateEmergencyContactSettingsResponse" updateEmergencyContactSettingsResponseDecoder)
        )


{-| Options for a updateEmergencyContactSettings request
-}
type alias UpdateEmergencyContactSettingsOptions =
    { emergencyContactList : Maybe (List EmergencyContact)
    }


{-|

<p>Updates the details of an existing subscription. Only enter values for parameters you want to change. Empty parameters are not updated.</p>

**Required Parameters**

-}
updateSubscription :
    (UpdateSubscriptionOptions -> UpdateSubscriptionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateSubscriptionResponse)
updateSubscription setOptions =
    let
        requestInput =
            UpdateSubscriptionRequest
                options.autoRenew

        options =
            setOptions (UpdateSubscriptionOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateSubscriptionRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateSubscription"
            (AWS.Core.Decode.ResultDecoder "UpdateSubscriptionResponse" updateSubscriptionResponseDecoder)
        )


{-| Options for a updateSubscription request
-}
type alias UpdateSubscriptionOptions =
    { autoRenew : Maybe AutoRenew
    }


{-| Type of HTTP response from associateDRTLogBucket
-}
type alias AssociateDRTLogBucketResponse =
    {}


associateDRTLogBucketResponseDecoder : JD.Decoder AssociateDRTLogBucketResponse
associateDRTLogBucketResponseDecoder =
    JD.succeed AssociateDRTLogBucketResponse


{-| Type of HTTP response from associateDRTRole
-}
type alias AssociateDRTRoleResponse =
    {}


associateDRTRoleResponseDecoder : JD.Decoder AssociateDRTRoleResponse
associateDRTRoleResponseDecoder =
    JD.succeed AssociateDRTRoleResponse


{-|

<p>The details of a DDoS attack.</p>

-}
type alias AttackDetail =
    { attackId : Maybe String
    , resourceArn : Maybe String
    , subResources : Maybe (List SubResourceSummary)
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , attackCounters : Maybe (List SummarizedCounter)
    , attackProperties : Maybe (List AttackProperty)
    , mitigations : Maybe (List Mitigation)
    }


attackDetailDecoder : JD.Decoder AttackDetail
attackDetailDecoder =
    JD.succeed AttackDetail
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttackId", "attackId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceArn", "resourceArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubResources", "subResources" ]
                (JD.list subResourceSummaryDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StartTime", "startTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EndTime", "endTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttackCounters", "attackCounters" ]
                (JD.list summarizedCounterDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttackProperties", "attackProperties" ]
                (JD.list attackPropertyDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Mitigations", "mitigations" ]
                (JD.list mitigationDecoder)
            )


{-| One of

  - `AttackLayer_NETWORK`
  - `AttackLayer_APPLICATION`

-}
type AttackLayer
    = AttackLayer_NETWORK
    | AttackLayer_APPLICATION


attackLayerDecoder : JD.Decoder AttackLayer
attackLayerDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NETWORK" ->
                        JD.succeed AttackLayer_NETWORK

                    "APPLICATION" ->
                        JD.succeed AttackLayer_APPLICATION

                    _ ->
                        JD.fail "bad thing"
            )


attackLayerToString : AttackLayer -> String
attackLayerToString val =
    case val of
        AttackLayer_NETWORK ->
            "NETWORK"

        AttackLayer_APPLICATION ->
            "APPLICATION"


{-|

<p>Details of the described attack.</p>

-}
type alias AttackProperty =
    { attackLayer : Maybe AttackLayer
    , attackPropertyIdentifier : Maybe AttackPropertyIdentifier
    , topContributors : Maybe (List Contributor)
    , unit : Maybe Unit
    , total : Maybe Int
    }


attackPropertyDecoder : JD.Decoder AttackProperty
attackPropertyDecoder =
    JD.succeed AttackProperty
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttackLayer", "attackLayer" ]
                attackLayerDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttackPropertyIdentifier", "attackPropertyIdentifier" ]
                attackPropertyIdentifierDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TopContributors", "topContributors" ]
                (JD.list contributorDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Unit", "unit" ]
                unitDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Total", "total" ]
                JD.int
            )


{-| One of

  - `AttackPropertyIdentifier_DESTINATION_URL`
  - `AttackPropertyIdentifier_REFERRER`
  - `AttackPropertyIdentifier_SOURCE_ASN`
  - `AttackPropertyIdentifier_SOURCE_COUNTRY`
  - `AttackPropertyIdentifier_SOURCE_IP_ADDRESS`
  - `AttackPropertyIdentifier_SOURCE_USER_AGENT`
  - `AttackPropertyIdentifier_WORDPRESS_PINGBACK_REFLECTOR`
  - `AttackPropertyIdentifier_WORDPRESS_PINGBACK_SOURCE`

-}
type AttackPropertyIdentifier
    = AttackPropertyIdentifier_DESTINATION_URL
    | AttackPropertyIdentifier_REFERRER
    | AttackPropertyIdentifier_SOURCE_ASN
    | AttackPropertyIdentifier_SOURCE_COUNTRY
    | AttackPropertyIdentifier_SOURCE_IP_ADDRESS
    | AttackPropertyIdentifier_SOURCE_USER_AGENT
    | AttackPropertyIdentifier_WORDPRESS_PINGBACK_REFLECTOR
    | AttackPropertyIdentifier_WORDPRESS_PINGBACK_SOURCE


attackPropertyIdentifierDecoder : JD.Decoder AttackPropertyIdentifier
attackPropertyIdentifierDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DESTINATION_URL" ->
                        JD.succeed AttackPropertyIdentifier_DESTINATION_URL

                    "REFERRER" ->
                        JD.succeed AttackPropertyIdentifier_REFERRER

                    "SOURCE_ASN" ->
                        JD.succeed AttackPropertyIdentifier_SOURCE_ASN

                    "SOURCE_COUNTRY" ->
                        JD.succeed AttackPropertyIdentifier_SOURCE_COUNTRY

                    "SOURCE_IP_ADDRESS" ->
                        JD.succeed AttackPropertyIdentifier_SOURCE_IP_ADDRESS

                    "SOURCE_USER_AGENT" ->
                        JD.succeed AttackPropertyIdentifier_SOURCE_USER_AGENT

                    "WORDPRESS_PINGBACK_REFLECTOR" ->
                        JD.succeed AttackPropertyIdentifier_WORDPRESS_PINGBACK_REFLECTOR

                    "WORDPRESS_PINGBACK_SOURCE" ->
                        JD.succeed AttackPropertyIdentifier_WORDPRESS_PINGBACK_SOURCE

                    _ ->
                        JD.fail "bad thing"
            )


attackPropertyIdentifierToString : AttackPropertyIdentifier -> String
attackPropertyIdentifierToString val =
    case val of
        AttackPropertyIdentifier_DESTINATION_URL ->
            "DESTINATION_URL"

        AttackPropertyIdentifier_REFERRER ->
            "REFERRER"

        AttackPropertyIdentifier_SOURCE_ASN ->
            "SOURCE_ASN"

        AttackPropertyIdentifier_SOURCE_COUNTRY ->
            "SOURCE_COUNTRY"

        AttackPropertyIdentifier_SOURCE_IP_ADDRESS ->
            "SOURCE_IP_ADDRESS"

        AttackPropertyIdentifier_SOURCE_USER_AGENT ->
            "SOURCE_USER_AGENT"

        AttackPropertyIdentifier_WORDPRESS_PINGBACK_REFLECTOR ->
            "WORDPRESS_PINGBACK_REFLECTOR"

        AttackPropertyIdentifier_WORDPRESS_PINGBACK_SOURCE ->
            "WORDPRESS_PINGBACK_SOURCE"


{-|

<p>Summarizes all DDoS attacks for a specified time period.</p>

-}
type alias AttackSummary =
    { attackId : Maybe String
    , resourceArn : Maybe String
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , attackVectors : Maybe (List AttackVectorDescription)
    }


attackSummaryDecoder : JD.Decoder AttackSummary
attackSummaryDecoder =
    JD.succeed AttackSummary
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttackId", "attackId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceArn", "resourceArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StartTime", "startTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EndTime", "endTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttackVectors", "attackVectors" ]
                (JD.list attackVectorDescriptionDecoder)
            )


{-|

<p>Describes the attack.</p>

-}
type alias AttackVectorDescription =
    { vectorType : String
    }


attackVectorDescriptionDecoder : JD.Decoder AttackVectorDescription
attackVectorDescriptionDecoder =
    JD.succeed AttackVectorDescription
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "VectorType", "vectorType" ]
                JD.string
            )


{-| One of

  - `AutoRenew_ENABLED`
  - `AutoRenew_DISABLED`

-}
type AutoRenew
    = AutoRenew_ENABLED
    | AutoRenew_DISABLED


autoRenewDecoder : JD.Decoder AutoRenew
autoRenewDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed AutoRenew_ENABLED

                    "DISABLED" ->
                        JD.succeed AutoRenew_DISABLED

                    _ ->
                        JD.fail "bad thing"
            )


autoRenewToString : AutoRenew -> String
autoRenewToString val =
    case val of
        AutoRenew_ENABLED ->
            "ENABLED"

        AutoRenew_DISABLED ->
            "DISABLED"


{-|

<p>A contributor to the attack and their contribution.</p>

-}
type alias Contributor =
    { name : Maybe String
    , value : Maybe Int
    }


contributorDecoder : JD.Decoder Contributor
contributorDecoder =
    JD.succeed Contributor
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Value", "value" ]
                JD.int
            )


{-| Type of HTTP response from createProtection
-}
type alias CreateProtectionResponse =
    { protectionId : Maybe String
    }


createProtectionResponseDecoder : JD.Decoder CreateProtectionResponse
createProtectionResponseDecoder =
    JD.succeed CreateProtectionResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProtectionId", "protectionId" ]
                JD.string
            )


{-| Type of HTTP response from createSubscription
-}
type alias CreateSubscriptionResponse =
    {}


createSubscriptionResponseDecoder : JD.Decoder CreateSubscriptionResponse
createSubscriptionResponseDecoder =
    JD.succeed CreateSubscriptionResponse


{-| Type of HTTP response from deleteProtection
-}
type alias DeleteProtectionResponse =
    {}


deleteProtectionResponseDecoder : JD.Decoder DeleteProtectionResponse
deleteProtectionResponseDecoder =
    JD.succeed DeleteProtectionResponse


{-| Type of HTTP response from deleteSubscription
-}
type alias DeleteSubscriptionResponse =
    {}


deleteSubscriptionResponseDecoder : JD.Decoder DeleteSubscriptionResponse
deleteSubscriptionResponseDecoder =
    JD.succeed DeleteSubscriptionResponse


{-| Type of HTTP response from describeAttack
-}
type alias DescribeAttackResponse =
    { attack : Maybe AttackDetail
    }


describeAttackResponseDecoder : JD.Decoder DescribeAttackResponse
describeAttackResponseDecoder =
    JD.succeed DescribeAttackResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Attack", "attack" ]
                attackDetailDecoder
            )


{-| Type of HTTP response from describeDRTAccess
-}
type alias DescribeDRTAccessResponse =
    { roleArn : Maybe String
    , logBucketList : Maybe (List String)
    }


describeDRTAccessResponseDecoder : JD.Decoder DescribeDRTAccessResponse
describeDRTAccessResponseDecoder =
    JD.succeed DescribeDRTAccessResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RoleArn", "roleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LogBucketList", "logBucketList" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from describeEmergencyContactSettings
-}
type alias DescribeEmergencyContactSettingsResponse =
    { emergencyContactList : Maybe (List EmergencyContact)
    }


describeEmergencyContactSettingsResponseDecoder : JD.Decoder DescribeEmergencyContactSettingsResponse
describeEmergencyContactSettingsResponseDecoder =
    JD.succeed DescribeEmergencyContactSettingsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EmergencyContactList", "emergencyContactList" ]
                (JD.list emergencyContactDecoder)
            )


{-| Type of HTTP response from describeProtection
-}
type alias DescribeProtectionResponse =
    { protection : Maybe Protection
    }


describeProtectionResponseDecoder : JD.Decoder DescribeProtectionResponse
describeProtectionResponseDecoder =
    JD.succeed DescribeProtectionResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Protection", "protection" ]
                protectionDecoder
            )


{-| Type of HTTP response from describeSubscription
-}
type alias DescribeSubscriptionResponse =
    { subscription : Maybe Subscription
    }


describeSubscriptionResponseDecoder : JD.Decoder DescribeSubscriptionResponse
describeSubscriptionResponseDecoder =
    JD.succeed DescribeSubscriptionResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Subscription", "subscription" ]
                subscriptionDecoder
            )


{-| Type of HTTP response from disassociateDRTLogBucket
-}
type alias DisassociateDRTLogBucketResponse =
    {}


disassociateDRTLogBucketResponseDecoder : JD.Decoder DisassociateDRTLogBucketResponse
disassociateDRTLogBucketResponseDecoder =
    JD.succeed DisassociateDRTLogBucketResponse


{-| Type of HTTP response from disassociateDRTRole
-}
type alias DisassociateDRTRoleResponse =
    {}


disassociateDRTRoleResponseDecoder : JD.Decoder DisassociateDRTRoleResponse
disassociateDRTRoleResponseDecoder =
    JD.succeed DisassociateDRTRoleResponse


{-|

<p>Contact information that the DRT can use to contact you during a suspected attack.</p>

-}
type alias EmergencyContact =
    { emailAddress : String
    }


emergencyContactDecoder : JD.Decoder EmergencyContact
emergencyContactDecoder =
    JD.succeed EmergencyContact
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "EmailAddress", "emailAddress" ]
                JD.string
            )


{-| Type of HTTP response from getSubscriptionState
-}
type alias GetSubscriptionStateResponse =
    { subscriptionState : SubscriptionState
    }


getSubscriptionStateResponseDecoder : JD.Decoder GetSubscriptionStateResponse
getSubscriptionStateResponseDecoder =
    JD.succeed GetSubscriptionStateResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SubscriptionState", "subscriptionState" ]
                subscriptionStateDecoder
            )


{-|

<p>Specifies how many protections of a given type you can create.</p>

-}
type alias Limit =
    { type_ : Maybe String
    , max : Maybe Int
    }


limitDecoder : JD.Decoder Limit
limitDecoder =
    JD.succeed Limit
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Type", "type" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Max", "max" ]
                JD.int
            )


{-| Type of HTTP response from listAttacks
-}
type alias ListAttacksResponse =
    { attackSummaries : Maybe (List AttackSummary)
    , nextToken : Maybe String
    }


listAttacksResponseDecoder : JD.Decoder ListAttacksResponse
listAttacksResponseDecoder =
    JD.succeed ListAttacksResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttackSummaries", "attackSummaries" ]
                (JD.list attackSummaryDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from listProtections
-}
type alias ListProtectionsResponse =
    { protections : Maybe (List Protection)
    , nextToken : Maybe String
    }


listProtectionsResponseDecoder : JD.Decoder ListProtectionsResponse
listProtectionsResponseDecoder =
    JD.succeed ListProtectionsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Protections", "protections" ]
                (JD.list protectionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-|

<p>The mitigation applied to a DDoS attack.</p>

-}
type alias Mitigation =
    { mitigationName : Maybe String
    }


mitigationDecoder : JD.Decoder Mitigation
mitigationDecoder =
    JD.succeed Mitigation
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MitigationName", "mitigationName" ]
                JD.string
            )


{-|

<p>An object that represents a resource that is under DDoS protection.</p>

-}
type alias Protection =
    { id : Maybe String
    , name : Maybe String
    , resourceArn : Maybe String
    }


protectionDecoder : JD.Decoder Protection
protectionDecoder =
    JD.succeed Protection
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Id", "id" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceArn", "resourceArn" ]
                JD.string
            )


{-|

<p>The attack information for the specified SubResource.</p>

-}
type alias SubResourceSummary =
    { type_ : Maybe SubResourceType
    , id : Maybe String
    , attackVectors : Maybe (List SummarizedAttackVector)
    , counters : Maybe (List SummarizedCounter)
    }


subResourceSummaryDecoder : JD.Decoder SubResourceSummary
subResourceSummaryDecoder =
    JD.succeed SubResourceSummary
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Type", "type" ]
                subResourceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Id", "id" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttackVectors", "attackVectors" ]
                (JD.list summarizedAttackVectorDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Counters", "counters" ]
                (JD.list summarizedCounterDecoder)
            )


{-| One of

  - `SubResourceType_IP`
  - `SubResourceType_URL`

-}
type SubResourceType
    = SubResourceType_IP
    | SubResourceType_URL


subResourceTypeDecoder : JD.Decoder SubResourceType
subResourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IP" ->
                        JD.succeed SubResourceType_IP

                    "URL" ->
                        JD.succeed SubResourceType_URL

                    _ ->
                        JD.fail "bad thing"
            )


subResourceTypeToString : SubResourceType -> String
subResourceTypeToString val =
    case val of
        SubResourceType_IP ->
            "IP"

        SubResourceType_URL ->
            "URL"


{-|

<p>Information about the AWS Shield Advanced subscription for an account.</p>

-}
type alias Subscription =
    { startTime : Maybe Posix
    , endTime : Maybe Posix
    , timeCommitmentInSeconds : Maybe Int
    , autoRenew : Maybe AutoRenew
    , limits : Maybe (List Limit)
    }


subscriptionDecoder : JD.Decoder Subscription
subscriptionDecoder =
    JD.succeed Subscription
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StartTime", "startTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EndTime", "endTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TimeCommitmentInSeconds", "timeCommitmentInSeconds" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoRenew", "autoRenew" ]
                autoRenewDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Limits", "limits" ]
                (JD.list limitDecoder)
            )


{-| One of

  - `SubscriptionState_ACTIVE`
  - `SubscriptionState_INACTIVE`

-}
type SubscriptionState
    = SubscriptionState_ACTIVE
    | SubscriptionState_INACTIVE


subscriptionStateDecoder : JD.Decoder SubscriptionState
subscriptionStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed SubscriptionState_ACTIVE

                    "INACTIVE" ->
                        JD.succeed SubscriptionState_INACTIVE

                    _ ->
                        JD.fail "bad thing"
            )


subscriptionStateToString : SubscriptionState -> String
subscriptionStateToString val =
    case val of
        SubscriptionState_ACTIVE ->
            "ACTIVE"

        SubscriptionState_INACTIVE ->
            "INACTIVE"


{-|

<p>A summary of information about the attack.</p>

-}
type alias SummarizedAttackVector =
    { vectorType : String
    , vectorCounters : Maybe (List SummarizedCounter)
    }


summarizedAttackVectorDecoder : JD.Decoder SummarizedAttackVector
summarizedAttackVectorDecoder =
    JD.succeed SummarizedAttackVector
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "VectorType", "vectorType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VectorCounters", "vectorCounters" ]
                (JD.list summarizedCounterDecoder)
            )


{-|

<p>The counter that describes a DDoS attack.</p>

-}
type alias SummarizedCounter =
    { name : Maybe String
    , max : Maybe Float
    , average : Maybe Float
    , sum : Maybe Float
    , n : Maybe Int
    , unit : Maybe String
    }


summarizedCounterDecoder : JD.Decoder SummarizedCounter
summarizedCounterDecoder =
    JD.succeed SummarizedCounter
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Max", "max" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Average", "average" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Sum", "sum" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "N", "n" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Unit", "unit" ]
                JD.string
            )


{-|

<p>The time range.</p>

-}
type alias TimeRange =
    { fromInclusive : Maybe Posix
    , toExclusive : Maybe Posix
    }


timeRangeDecoder : JD.Decoder TimeRange
timeRangeDecoder =
    JD.succeed TimeRange
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FromInclusive", "fromInclusive" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ToExclusive", "toExclusive" ]
                JDX.datetime
            )


{-| One of

  - `Unit_BITS`
  - `Unit_BYTES`
  - `Unit_PACKETS`
  - `Unit_REQUESTS`

-}
type Unit
    = Unit_BITS
    | Unit_BYTES
    | Unit_PACKETS
    | Unit_REQUESTS


unitDecoder : JD.Decoder Unit
unitDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BITS" ->
                        JD.succeed Unit_BITS

                    "BYTES" ->
                        JD.succeed Unit_BYTES

                    "PACKETS" ->
                        JD.succeed Unit_PACKETS

                    "REQUESTS" ->
                        JD.succeed Unit_REQUESTS

                    _ ->
                        JD.fail "bad thing"
            )


unitToString : Unit -> String
unitToString val =
    case val of
        Unit_BITS ->
            "BITS"

        Unit_BYTES ->
            "BYTES"

        Unit_PACKETS ->
            "PACKETS"

        Unit_REQUESTS ->
            "REQUESTS"


{-| Type of HTTP response from updateEmergencyContactSettings
-}
type alias UpdateEmergencyContactSettingsResponse =
    {}


updateEmergencyContactSettingsResponseDecoder : JD.Decoder UpdateEmergencyContactSettingsResponse
updateEmergencyContactSettingsResponseDecoder =
    JD.succeed UpdateEmergencyContactSettingsResponse


{-| Type of HTTP response from updateSubscription
-}
type alias UpdateSubscriptionResponse =
    {}


updateSubscriptionResponseDecoder : JD.Decoder UpdateSubscriptionResponse
updateSubscriptionResponseDecoder =
    JD.succeed UpdateSubscriptionResponse


{-| undefined
-}
type alias AssociateDRTLogBucketRequest =
    { logBucket : String
    }


{-| undefined
-}
type alias AssociateDRTRoleRequest =
    { roleArn : String
    }


{-| undefined
-}
type alias CreateProtectionRequest =
    { name : String
    , resourceArn : String
    }


{-| undefined
-}
type alias CreateSubscriptionRequest =
    {}


{-| undefined
-}
type alias DeleteProtectionRequest =
    { protectionId : String
    }


{-| undefined
-}
type alias DeleteSubscriptionRequest =
    {}


{-| undefined
-}
type alias DescribeAttackRequest =
    { attackId : String
    }


{-| undefined
-}
type alias DescribeDRTAccessRequest =
    {}


{-| undefined
-}
type alias DescribeEmergencyContactSettingsRequest =
    {}


{-| undefined
-}
type alias DescribeProtectionRequest =
    { protectionId : Maybe String
    , resourceArn : Maybe String
    }


{-| undefined
-}
type alias DescribeSubscriptionRequest =
    {}


{-| undefined
-}
type alias DisassociateDRTLogBucketRequest =
    { logBucket : String
    }


{-| undefined
-}
type alias DisassociateDRTRoleRequest =
    {}


{-| undefined
-}
type alias GetSubscriptionStateRequest =
    {}


{-| undefined
-}
type alias ListAttacksRequest =
    { resourceArns : Maybe (List String)
    , startTime : Maybe TimeRange
    , endTime : Maybe TimeRange
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListProtectionsRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias UpdateEmergencyContactSettingsRequest =
    { emergencyContactList : Maybe (List EmergencyContact)
    }


{-| undefined
-}
type alias UpdateSubscriptionRequest =
    { autoRenew : Maybe AutoRenew
    }


associateDRTLogBucketRequestEncoder : AssociateDRTLogBucketRequest -> JE.Value
associateDRTLogBucketRequestEncoder data =
    []
        |> (::) ( "LogBucket", data.logBucket |> JE.string )
        |> JE.object


associateDRTLogBucketResponseEncoder : AssociateDRTLogBucketResponse -> JE.Value
associateDRTLogBucketResponseEncoder data =
    []
        |> JE.object


associateDRTRoleRequestEncoder : AssociateDRTRoleRequest -> JE.Value
associateDRTRoleRequestEncoder data =
    []
        |> (::) ( "RoleArn", data.roleArn |> JE.string )
        |> JE.object


associateDRTRoleResponseEncoder : AssociateDRTRoleResponse -> JE.Value
associateDRTRoleResponseEncoder data =
    []
        |> JE.object


attackDetailEncoder : AttackDetail -> JE.Value
attackDetailEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AttackId", data.attackId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceArn", data.resourceArn )
        |> AWS.Core.Encode.optionalMember
            (JE.list subResourceSummaryEncoder)
            ( "SubResources", data.subResources )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StartTime", data.startTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "EndTime", data.endTime )
        |> AWS.Core.Encode.optionalMember
            (JE.list summarizedCounterEncoder)
            ( "AttackCounters", data.attackCounters )
        |> AWS.Core.Encode.optionalMember
            (JE.list attackPropertyEncoder)
            ( "AttackProperties", data.attackProperties )
        |> AWS.Core.Encode.optionalMember
            (JE.list mitigationEncoder)
            ( "Mitigations", data.mitigations )
        |> JE.object


attackPropertyEncoder : AttackProperty -> JE.Value
attackPropertyEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (attackLayerToString >> JE.string)
            ( "AttackLayer", data.attackLayer )
        |> AWS.Core.Encode.optionalMember
            (attackPropertyIdentifierToString >> JE.string)
            ( "AttackPropertyIdentifier", data.attackPropertyIdentifier )
        |> AWS.Core.Encode.optionalMember
            (JE.list contributorEncoder)
            ( "TopContributors", data.topContributors )
        |> AWS.Core.Encode.optionalMember
            (unitToString >> JE.string)
            ( "Unit", data.unit )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Total", data.total )
        |> JE.object


attackSummaryEncoder : AttackSummary -> JE.Value
attackSummaryEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AttackId", data.attackId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceArn", data.resourceArn )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StartTime", data.startTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "EndTime", data.endTime )
        |> AWS.Core.Encode.optionalMember
            (JE.list attackVectorDescriptionEncoder)
            ( "AttackVectors", data.attackVectors )
        |> JE.object


attackVectorDescriptionEncoder : AttackVectorDescription -> JE.Value
attackVectorDescriptionEncoder data =
    []
        |> (::) ( "VectorType", data.vectorType |> JE.string )
        |> JE.object


contributorEncoder : Contributor -> JE.Value
contributorEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Value", data.value )
        |> JE.object


createProtectionRequestEncoder : CreateProtectionRequest -> JE.Value
createProtectionRequestEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> (::) ( "ResourceArn", data.resourceArn |> JE.string )
        |> JE.object


createProtectionResponseEncoder : CreateProtectionResponse -> JE.Value
createProtectionResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ProtectionId", data.protectionId )
        |> JE.object


createSubscriptionRequestEncoder : CreateSubscriptionRequest -> JE.Value
createSubscriptionRequestEncoder data =
    []
        |> JE.object


createSubscriptionResponseEncoder : CreateSubscriptionResponse -> JE.Value
createSubscriptionResponseEncoder data =
    []
        |> JE.object


deleteProtectionRequestEncoder : DeleteProtectionRequest -> JE.Value
deleteProtectionRequestEncoder data =
    []
        |> (::) ( "ProtectionId", data.protectionId |> JE.string )
        |> JE.object


deleteProtectionResponseEncoder : DeleteProtectionResponse -> JE.Value
deleteProtectionResponseEncoder data =
    []
        |> JE.object


deleteSubscriptionRequestEncoder : DeleteSubscriptionRequest -> JE.Value
deleteSubscriptionRequestEncoder data =
    []
        |> JE.object


deleteSubscriptionResponseEncoder : DeleteSubscriptionResponse -> JE.Value
deleteSubscriptionResponseEncoder data =
    []
        |> JE.object


describeAttackRequestEncoder : DescribeAttackRequest -> JE.Value
describeAttackRequestEncoder data =
    []
        |> (::) ( "AttackId", data.attackId |> JE.string )
        |> JE.object


describeAttackResponseEncoder : DescribeAttackResponse -> JE.Value
describeAttackResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            attackDetailEncoder
            ( "Attack", data.attack )
        |> JE.object


describeDRTAccessRequestEncoder : DescribeDRTAccessRequest -> JE.Value
describeDRTAccessRequestEncoder data =
    []
        |> JE.object


describeDRTAccessResponseEncoder : DescribeDRTAccessResponse -> JE.Value
describeDRTAccessResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "RoleArn", data.roleArn )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "LogBucketList", data.logBucketList )
        |> JE.object


describeEmergencyContactSettingsRequestEncoder : DescribeEmergencyContactSettingsRequest -> JE.Value
describeEmergencyContactSettingsRequestEncoder data =
    []
        |> JE.object


describeEmergencyContactSettingsResponseEncoder : DescribeEmergencyContactSettingsResponse -> JE.Value
describeEmergencyContactSettingsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list emergencyContactEncoder)
            ( "EmergencyContactList", data.emergencyContactList )
        |> JE.object


describeProtectionRequestEncoder : DescribeProtectionRequest -> JE.Value
describeProtectionRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ProtectionId", data.protectionId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceArn", data.resourceArn )
        |> JE.object


describeProtectionResponseEncoder : DescribeProtectionResponse -> JE.Value
describeProtectionResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            protectionEncoder
            ( "Protection", data.protection )
        |> JE.object


describeSubscriptionRequestEncoder : DescribeSubscriptionRequest -> JE.Value
describeSubscriptionRequestEncoder data =
    []
        |> JE.object


describeSubscriptionResponseEncoder : DescribeSubscriptionResponse -> JE.Value
describeSubscriptionResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            subscriptionEncoder
            ( "Subscription", data.subscription )
        |> JE.object


disassociateDRTLogBucketRequestEncoder : DisassociateDRTLogBucketRequest -> JE.Value
disassociateDRTLogBucketRequestEncoder data =
    []
        |> (::) ( "LogBucket", data.logBucket |> JE.string )
        |> JE.object


disassociateDRTLogBucketResponseEncoder : DisassociateDRTLogBucketResponse -> JE.Value
disassociateDRTLogBucketResponseEncoder data =
    []
        |> JE.object


disassociateDRTRoleRequestEncoder : DisassociateDRTRoleRequest -> JE.Value
disassociateDRTRoleRequestEncoder data =
    []
        |> JE.object


disassociateDRTRoleResponseEncoder : DisassociateDRTRoleResponse -> JE.Value
disassociateDRTRoleResponseEncoder data =
    []
        |> JE.object


emergencyContactEncoder : EmergencyContact -> JE.Value
emergencyContactEncoder data =
    []
        |> (::) ( "EmailAddress", data.emailAddress |> JE.string )
        |> JE.object


getSubscriptionStateRequestEncoder : GetSubscriptionStateRequest -> JE.Value
getSubscriptionStateRequestEncoder data =
    []
        |> JE.object


getSubscriptionStateResponseEncoder : GetSubscriptionStateResponse -> JE.Value
getSubscriptionStateResponseEncoder data =
    []
        |> (::) ( "SubscriptionState", data.subscriptionState |> (subscriptionStateToString >> JE.string) )
        |> JE.object


limitEncoder : Limit -> JE.Value
limitEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Type", data.type_ )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Max", data.max )
        |> JE.object


listAttacksRequestEncoder : ListAttacksRequest -> JE.Value
listAttacksRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ResourceArns", data.resourceArns )
        |> AWS.Core.Encode.optionalMember
            timeRangeEncoder
            ( "StartTime", data.startTime )
        |> AWS.Core.Encode.optionalMember
            timeRangeEncoder
            ( "EndTime", data.endTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> JE.object


listAttacksResponseEncoder : ListAttacksResponse -> JE.Value
listAttacksResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list attackSummaryEncoder)
            ( "AttackSummaries", data.attackSummaries )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listProtectionsRequestEncoder : ListProtectionsRequest -> JE.Value
listProtectionsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> JE.object


listProtectionsResponseEncoder : ListProtectionsResponse -> JE.Value
listProtectionsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list protectionEncoder)
            ( "Protections", data.protections )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


mitigationEncoder : Mitigation -> JE.Value
mitigationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "MitigationName", data.mitigationName )
        |> JE.object


protectionEncoder : Protection -> JE.Value
protectionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Id", data.id )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceArn", data.resourceArn )
        |> JE.object


subResourceSummaryEncoder : SubResourceSummary -> JE.Value
subResourceSummaryEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (subResourceTypeToString >> JE.string)
            ( "Type", data.type_ )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Id", data.id )
        |> AWS.Core.Encode.optionalMember
            (JE.list summarizedAttackVectorEncoder)
            ( "AttackVectors", data.attackVectors )
        |> AWS.Core.Encode.optionalMember
            (JE.list summarizedCounterEncoder)
            ( "Counters", data.counters )
        |> JE.object


subscriptionEncoder : Subscription -> JE.Value
subscriptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StartTime", data.startTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "EndTime", data.endTime )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "TimeCommitmentInSeconds", data.timeCommitmentInSeconds )
        |> AWS.Core.Encode.optionalMember
            (autoRenewToString >> JE.string)
            ( "AutoRenew", data.autoRenew )
        |> AWS.Core.Encode.optionalMember
            (JE.list limitEncoder)
            ( "Limits", data.limits )
        |> JE.object


summarizedAttackVectorEncoder : SummarizedAttackVector -> JE.Value
summarizedAttackVectorEncoder data =
    []
        |> (::) ( "VectorType", data.vectorType |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list summarizedCounterEncoder)
            ( "VectorCounters", data.vectorCounters )
        |> JE.object


summarizedCounterEncoder : SummarizedCounter -> JE.Value
summarizedCounterEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> AWS.Core.Encode.optionalMember
            JE.float
            ( "Max", data.max )
        |> AWS.Core.Encode.optionalMember
            JE.float
            ( "Average", data.average )
        |> AWS.Core.Encode.optionalMember
            JE.float
            ( "Sum", data.sum )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "N", data.n )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Unit", data.unit )
        |> JE.object


timeRangeEncoder : TimeRange -> JE.Value
timeRangeEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "FromInclusive", data.fromInclusive )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ToExclusive", data.toExclusive )
        |> JE.object


updateEmergencyContactSettingsRequestEncoder : UpdateEmergencyContactSettingsRequest -> JE.Value
updateEmergencyContactSettingsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list emergencyContactEncoder)
            ( "EmergencyContactList", data.emergencyContactList )
        |> JE.object


updateEmergencyContactSettingsResponseEncoder : UpdateEmergencyContactSettingsResponse -> JE.Value
updateEmergencyContactSettingsResponseEncoder data =
    []
        |> JE.object


updateSubscriptionRequestEncoder : UpdateSubscriptionRequest -> JE.Value
updateSubscriptionRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (autoRenewToString >> JE.string)
            ( "AutoRenew", data.autoRenew )
        |> JE.object


updateSubscriptionResponseEncoder : UpdateSubscriptionResponse -> JE.Value
updateSubscriptionResponseEncoder data =
    []
        |> JE.object
