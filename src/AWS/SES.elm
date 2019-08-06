module AWS.SES exposing
    ( service
    , cloneReceiptRuleSet, createConfigurationSet, createConfigurationSetEventDestination, createConfigurationSetTrackingOptions, createCustomVerificationEmailTemplate, createReceiptFilter, createReceiptRule, CreateReceiptRuleOptions, createReceiptRuleSet, createTemplate, deleteConfigurationSet, deleteConfigurationSetEventDestination, deleteConfigurationSetTrackingOptions, deleteCustomVerificationEmailTemplate, deleteIdentity, deleteIdentityPolicy, deleteReceiptFilter, deleteReceiptRule, deleteReceiptRuleSet, deleteTemplate, deleteVerifiedEmailAddress, describeActiveReceiptRuleSet, describeConfigurationSet, DescribeConfigurationSetOptions, describeReceiptRule, describeReceiptRuleSet, getAccountSendingEnabled, getCustomVerificationEmailTemplate, getIdentityDkimAttributes, getIdentityMailFromDomainAttributes, getIdentityNotificationAttributes, getIdentityPolicies, getIdentityVerificationAttributes, getSendQuota, getSendStatistics, getTemplate, listConfigurationSets, ListConfigurationSetsOptions, listCustomVerificationEmailTemplates, ListCustomVerificationEmailTemplatesOptions, listIdentities, ListIdentitiesOptions, listIdentityPolicies, listReceiptFilters, listReceiptRuleSets, ListReceiptRuleSetsOptions, listTemplates, ListTemplatesOptions, listVerifiedEmailAddresses, putConfigurationSetDeliveryOptions, PutConfigurationSetDeliveryOptionsOptions, putIdentityPolicy, reorderReceiptRuleSet, sendBounce, SendBounceOptions, sendBulkTemplatedEmail, SendBulkTemplatedEmailOptions, sendCustomVerificationEmail, SendCustomVerificationEmailOptions, sendEmail, SendEmailOptions, sendRawEmail, SendRawEmailOptions, sendTemplatedEmail, SendTemplatedEmailOptions, setActiveReceiptRuleSet, SetActiveReceiptRuleSetOptions, setIdentityDkimEnabled, setIdentityFeedbackForwardingEnabled, setIdentityHeadersInNotificationsEnabled, setIdentityMailFromDomain, SetIdentityMailFromDomainOptions, setIdentityNotificationTopic, SetIdentityNotificationTopicOptions, setReceiptRulePosition, SetReceiptRulePositionOptions, testRenderTemplate, updateAccountSendingEnabled, UpdateAccountSendingEnabledOptions, updateConfigurationSetEventDestination, updateConfigurationSetReputationMetricsEnabled, updateConfigurationSetSendingEnabled, updateConfigurationSetTrackingOptions, updateCustomVerificationEmailTemplate, UpdateCustomVerificationEmailTemplateOptions, updateReceiptRule, updateTemplate, verifyDomainDkim, verifyDomainIdentity, verifyEmailAddress, verifyEmailIdentity
    , CloneReceiptRuleSetResponse, CreateConfigurationSetEventDestinationResponse, CreateConfigurationSetResponse, CreateConfigurationSetTrackingOptionsResponse, CreateReceiptFilterResponse, CreateReceiptRuleResponse, CreateReceiptRuleSetResponse, CreateTemplateResponse, DeleteConfigurationSetEventDestinationResponse, DeleteConfigurationSetResponse, DeleteConfigurationSetTrackingOptionsResponse, DeleteIdentityPolicyResponse, DeleteIdentityResponse, DeleteReceiptFilterResponse, DeleteReceiptRuleResponse, DeleteReceiptRuleSetResponse, DeleteTemplateResponse, DescribeActiveReceiptRuleSetResponse, DescribeConfigurationSetResponse, DescribeReceiptRuleResponse, DescribeReceiptRuleSetResponse, GetAccountSendingEnabledResponse, GetCustomVerificationEmailTemplateResponse, GetIdentityDkimAttributesResponse, GetIdentityMailFromDomainAttributesResponse, GetIdentityNotificationAttributesResponse, GetIdentityPoliciesResponse, GetIdentityVerificationAttributesResponse, GetSendQuotaResponse, GetSendStatisticsResponse, GetTemplateResponse, ListConfigurationSetsResponse, ListCustomVerificationEmailTemplatesResponse, ListIdentitiesResponse, ListIdentityPoliciesResponse, ListReceiptFiltersResponse, ListReceiptRuleSetsResponse, ListTemplatesResponse, ListVerifiedEmailAddressesResponse, PutConfigurationSetDeliveryOptionsResponse, PutIdentityPolicyResponse, ReorderReceiptRuleSetResponse, SendBounceResponse, SendBulkTemplatedEmailResponse, SendCustomVerificationEmailResponse, SendEmailResponse, SendRawEmailResponse, SendTemplatedEmailResponse, SetActiveReceiptRuleSetResponse, SetIdentityDkimEnabledResponse, SetIdentityFeedbackForwardingEnabledResponse, SetIdentityHeadersInNotificationsEnabledResponse, SetIdentityMailFromDomainResponse, SetIdentityNotificationTopicResponse, SetReceiptRulePositionResponse, TestRenderTemplateResponse, UpdateConfigurationSetEventDestinationResponse, UpdateConfigurationSetTrackingOptionsResponse, UpdateReceiptRuleResponse, UpdateTemplateResponse, VerifyDomainDkimResponse, VerifyDomainIdentityResponse, VerifyEmailIdentityResponse
    , AddHeaderAction, Body, BounceAction, BouncedRecipientInfo, BulkEmailDestination, BulkEmailDestinationStatus, CloudWatchDestination, CloudWatchDimensionConfiguration, ConfigurationSet, Content, CustomVerificationEmailTemplate, DeliveryOptions, Destination, EventDestination, ExtensionField, IdentityDkimAttributes, IdentityMailFromDomainAttributes, IdentityNotificationAttributes, IdentityVerificationAttributes, KinesisFirehoseDestination, LambdaAction, Message, MessageDsn, MessageTag, RawMessage, ReceiptAction, ReceiptFilter, ReceiptIpFilter, ReceiptRule, ReceiptRuleSetMetadata, RecipientDsnFields, ReputationOptions, S3Action, SNSAction, SNSDestination, SendDataPoint, StopAction, Template, TemplateMetadata, TrackingOptions, WorkmailAction
    , BehaviorOnMXFailure(..), BounceType(..), BulkEmailStatus(..), ConfigurationSetAttribute(..), CustomMailFromStatus(..), DimensionValueSource(..), DsnAction(..), EventType(..), IdentityType(..), InvocationType(..), NotificationType(..), ReceiptFilterPolicy(..), SNSActionEncoding(..), StopScope(..), TlsPolicy(..), VerificationStatus(..)
    )

{-| <fullname>Amazon Simple Email Service</fullname> <p> This document contains reference information for the <a href="https://aws.amazon.com/ses/">Amazon Simple Email Service</a> (Amazon SES) API, version 2010-12-01. This document is best used in conjunction with the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html">Amazon SES Developer Guide</a>. </p> <note> <p> For a list of Amazon SES endpoints to use in service requests, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html">Regions and Amazon SES</a> in the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html">Amazon SES Developer Guide</a>.</p> </note>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [cloneReceiptRuleSet](#cloneReceiptRuleSet)
  - [createConfigurationSet](#createConfigurationSet)
  - [createConfigurationSetEventDestination](#createConfigurationSetEventDestination)
  - [createConfigurationSetTrackingOptions](#createConfigurationSetTrackingOptions)
  - [createCustomVerificationEmailTemplate](#createCustomVerificationEmailTemplate)
  - [createReceiptFilter](#createReceiptFilter)
  - [createReceiptRule](#createReceiptRule)
  - [CreateReceiptRuleOptions](#CreateReceiptRuleOptions)
  - [createReceiptRuleSet](#createReceiptRuleSet)
  - [createTemplate](#createTemplate)
  - [deleteConfigurationSet](#deleteConfigurationSet)
  - [deleteConfigurationSetEventDestination](#deleteConfigurationSetEventDestination)
  - [deleteConfigurationSetTrackingOptions](#deleteConfigurationSetTrackingOptions)
  - [deleteCustomVerificationEmailTemplate](#deleteCustomVerificationEmailTemplate)
  - [deleteIdentity](#deleteIdentity)
  - [deleteIdentityPolicy](#deleteIdentityPolicy)
  - [deleteReceiptFilter](#deleteReceiptFilter)
  - [deleteReceiptRule](#deleteReceiptRule)
  - [deleteReceiptRuleSet](#deleteReceiptRuleSet)
  - [deleteTemplate](#deleteTemplate)
  - [deleteVerifiedEmailAddress](#deleteVerifiedEmailAddress)
  - [describeActiveReceiptRuleSet](#describeActiveReceiptRuleSet)
  - [describeConfigurationSet](#describeConfigurationSet)
  - [DescribeConfigurationSetOptions](#DescribeConfigurationSetOptions)
  - [describeReceiptRule](#describeReceiptRule)
  - [describeReceiptRuleSet](#describeReceiptRuleSet)
  - [getAccountSendingEnabled](#getAccountSendingEnabled)
  - [getCustomVerificationEmailTemplate](#getCustomVerificationEmailTemplate)
  - [getIdentityDkimAttributes](#getIdentityDkimAttributes)
  - [getIdentityMailFromDomainAttributes](#getIdentityMailFromDomainAttributes)
  - [getIdentityNotificationAttributes](#getIdentityNotificationAttributes)
  - [getIdentityPolicies](#getIdentityPolicies)
  - [getIdentityVerificationAttributes](#getIdentityVerificationAttributes)
  - [getSendQuota](#getSendQuota)
  - [getSendStatistics](#getSendStatistics)
  - [getTemplate](#getTemplate)
  - [listConfigurationSets](#listConfigurationSets)
  - [ListConfigurationSetsOptions](#ListConfigurationSetsOptions)
  - [listCustomVerificationEmailTemplates](#listCustomVerificationEmailTemplates)
  - [ListCustomVerificationEmailTemplatesOptions](#ListCustomVerificationEmailTemplatesOptions)
  - [listIdentities](#listIdentities)
  - [ListIdentitiesOptions](#ListIdentitiesOptions)
  - [listIdentityPolicies](#listIdentityPolicies)
  - [listReceiptFilters](#listReceiptFilters)
  - [listReceiptRuleSets](#listReceiptRuleSets)
  - [ListReceiptRuleSetsOptions](#ListReceiptRuleSetsOptions)
  - [listTemplates](#listTemplates)
  - [ListTemplatesOptions](#ListTemplatesOptions)
  - [listVerifiedEmailAddresses](#listVerifiedEmailAddresses)
  - [putConfigurationSetDeliveryOptions](#putConfigurationSetDeliveryOptions)
  - [PutConfigurationSetDeliveryOptionsOptions](#PutConfigurationSetDeliveryOptionsOptions)
  - [putIdentityPolicy](#putIdentityPolicy)
  - [reorderReceiptRuleSet](#reorderReceiptRuleSet)
  - [sendBounce](#sendBounce)
  - [SendBounceOptions](#SendBounceOptions)
  - [sendBulkTemplatedEmail](#sendBulkTemplatedEmail)
  - [SendBulkTemplatedEmailOptions](#SendBulkTemplatedEmailOptions)
  - [sendCustomVerificationEmail](#sendCustomVerificationEmail)
  - [SendCustomVerificationEmailOptions](#SendCustomVerificationEmailOptions)
  - [sendEmail](#sendEmail)
  - [SendEmailOptions](#SendEmailOptions)
  - [sendRawEmail](#sendRawEmail)
  - [SendRawEmailOptions](#SendRawEmailOptions)
  - [sendTemplatedEmail](#sendTemplatedEmail)
  - [SendTemplatedEmailOptions](#SendTemplatedEmailOptions)
  - [setActiveReceiptRuleSet](#setActiveReceiptRuleSet)
  - [SetActiveReceiptRuleSetOptions](#SetActiveReceiptRuleSetOptions)
  - [setIdentityDkimEnabled](#setIdentityDkimEnabled)
  - [setIdentityFeedbackForwardingEnabled](#setIdentityFeedbackForwardingEnabled)
  - [setIdentityHeadersInNotificationsEnabled](#setIdentityHeadersInNotificationsEnabled)
  - [setIdentityMailFromDomain](#setIdentityMailFromDomain)
  - [SetIdentityMailFromDomainOptions](#SetIdentityMailFromDomainOptions)
  - [setIdentityNotificationTopic](#setIdentityNotificationTopic)
  - [SetIdentityNotificationTopicOptions](#SetIdentityNotificationTopicOptions)
  - [setReceiptRulePosition](#setReceiptRulePosition)
  - [SetReceiptRulePositionOptions](#SetReceiptRulePositionOptions)
  - [testRenderTemplate](#testRenderTemplate)
  - [updateAccountSendingEnabled](#updateAccountSendingEnabled)
  - [UpdateAccountSendingEnabledOptions](#UpdateAccountSendingEnabledOptions)
  - [updateConfigurationSetEventDestination](#updateConfigurationSetEventDestination)
  - [updateConfigurationSetReputationMetricsEnabled](#updateConfigurationSetReputationMetricsEnabled)
  - [updateConfigurationSetSendingEnabled](#updateConfigurationSetSendingEnabled)
  - [updateConfigurationSetTrackingOptions](#updateConfigurationSetTrackingOptions)
  - [updateCustomVerificationEmailTemplate](#updateCustomVerificationEmailTemplate)
  - [UpdateCustomVerificationEmailTemplateOptions](#UpdateCustomVerificationEmailTemplateOptions)
  - [updateReceiptRule](#updateReceiptRule)
  - [updateTemplate](#updateTemplate)
  - [verifyDomainDkim](#verifyDomainDkim)
  - [verifyDomainIdentity](#verifyDomainIdentity)
  - [verifyEmailAddress](#verifyEmailAddress)
  - [verifyEmailIdentity](#verifyEmailIdentity)

@docs cloneReceiptRuleSet, createConfigurationSet, createConfigurationSetEventDestination, createConfigurationSetTrackingOptions, createCustomVerificationEmailTemplate, createReceiptFilter, createReceiptRule, CreateReceiptRuleOptions, createReceiptRuleSet, createTemplate, deleteConfigurationSet, deleteConfigurationSetEventDestination, deleteConfigurationSetTrackingOptions, deleteCustomVerificationEmailTemplate, deleteIdentity, deleteIdentityPolicy, deleteReceiptFilter, deleteReceiptRule, deleteReceiptRuleSet, deleteTemplate, deleteVerifiedEmailAddress, describeActiveReceiptRuleSet, describeConfigurationSet, DescribeConfigurationSetOptions, describeReceiptRule, describeReceiptRuleSet, getAccountSendingEnabled, getCustomVerificationEmailTemplate, getIdentityDkimAttributes, getIdentityMailFromDomainAttributes, getIdentityNotificationAttributes, getIdentityPolicies, getIdentityVerificationAttributes, getSendQuota, getSendStatistics, getTemplate, listConfigurationSets, ListConfigurationSetsOptions, listCustomVerificationEmailTemplates, ListCustomVerificationEmailTemplatesOptions, listIdentities, ListIdentitiesOptions, listIdentityPolicies, listReceiptFilters, listReceiptRuleSets, ListReceiptRuleSetsOptions, listTemplates, ListTemplatesOptions, listVerifiedEmailAddresses, putConfigurationSetDeliveryOptions, PutConfigurationSetDeliveryOptionsOptions, putIdentityPolicy, reorderReceiptRuleSet, sendBounce, SendBounceOptions, sendBulkTemplatedEmail, SendBulkTemplatedEmailOptions, sendCustomVerificationEmail, SendCustomVerificationEmailOptions, sendEmail, SendEmailOptions, sendRawEmail, SendRawEmailOptions, sendTemplatedEmail, SendTemplatedEmailOptions, setActiveReceiptRuleSet, SetActiveReceiptRuleSetOptions, setIdentityDkimEnabled, setIdentityFeedbackForwardingEnabled, setIdentityHeadersInNotificationsEnabled, setIdentityMailFromDomain, SetIdentityMailFromDomainOptions, setIdentityNotificationTopic, SetIdentityNotificationTopicOptions, setReceiptRulePosition, SetReceiptRulePositionOptions, testRenderTemplate, updateAccountSendingEnabled, UpdateAccountSendingEnabledOptions, updateConfigurationSetEventDestination, updateConfigurationSetReputationMetricsEnabled, updateConfigurationSetSendingEnabled, updateConfigurationSetTrackingOptions, updateCustomVerificationEmailTemplate, UpdateCustomVerificationEmailTemplateOptions, updateReceiptRule, updateTemplate, verifyDomainDkim, verifyDomainIdentity, verifyEmailAddress, verifyEmailIdentity


## Responses

  - [CloneReceiptRuleSetResponse](#CloneReceiptRuleSetResponse)
  - [CreateConfigurationSetEventDestinationResponse](#CreateConfigurationSetEventDestinationResponse)
  - [CreateConfigurationSetResponse](#CreateConfigurationSetResponse)
  - [CreateConfigurationSetTrackingOptionsResponse](#CreateConfigurationSetTrackingOptionsResponse)
  - [CreateReceiptFilterResponse](#CreateReceiptFilterResponse)
  - [CreateReceiptRuleResponse](#CreateReceiptRuleResponse)
  - [CreateReceiptRuleSetResponse](#CreateReceiptRuleSetResponse)
  - [CreateTemplateResponse](#CreateTemplateResponse)
  - [DeleteConfigurationSetEventDestinationResponse](#DeleteConfigurationSetEventDestinationResponse)
  - [DeleteConfigurationSetResponse](#DeleteConfigurationSetResponse)
  - [DeleteConfigurationSetTrackingOptionsResponse](#DeleteConfigurationSetTrackingOptionsResponse)
  - [DeleteIdentityPolicyResponse](#DeleteIdentityPolicyResponse)
  - [DeleteIdentityResponse](#DeleteIdentityResponse)
  - [DeleteReceiptFilterResponse](#DeleteReceiptFilterResponse)
  - [DeleteReceiptRuleResponse](#DeleteReceiptRuleResponse)
  - [DeleteReceiptRuleSetResponse](#DeleteReceiptRuleSetResponse)
  - [DeleteTemplateResponse](#DeleteTemplateResponse)
  - [DescribeActiveReceiptRuleSetResponse](#DescribeActiveReceiptRuleSetResponse)
  - [DescribeConfigurationSetResponse](#DescribeConfigurationSetResponse)
  - [DescribeReceiptRuleResponse](#DescribeReceiptRuleResponse)
  - [DescribeReceiptRuleSetResponse](#DescribeReceiptRuleSetResponse)
  - [GetAccountSendingEnabledResponse](#GetAccountSendingEnabledResponse)
  - [GetCustomVerificationEmailTemplateResponse](#GetCustomVerificationEmailTemplateResponse)
  - [GetIdentityDkimAttributesResponse](#GetIdentityDkimAttributesResponse)
  - [GetIdentityMailFromDomainAttributesResponse](#GetIdentityMailFromDomainAttributesResponse)
  - [GetIdentityNotificationAttributesResponse](#GetIdentityNotificationAttributesResponse)
  - [GetIdentityPoliciesResponse](#GetIdentityPoliciesResponse)
  - [GetIdentityVerificationAttributesResponse](#GetIdentityVerificationAttributesResponse)
  - [GetSendQuotaResponse](#GetSendQuotaResponse)
  - [GetSendStatisticsResponse](#GetSendStatisticsResponse)
  - [GetTemplateResponse](#GetTemplateResponse)
  - [ListConfigurationSetsResponse](#ListConfigurationSetsResponse)
  - [ListCustomVerificationEmailTemplatesResponse](#ListCustomVerificationEmailTemplatesResponse)
  - [ListIdentitiesResponse](#ListIdentitiesResponse)
  - [ListIdentityPoliciesResponse](#ListIdentityPoliciesResponse)
  - [ListReceiptFiltersResponse](#ListReceiptFiltersResponse)
  - [ListReceiptRuleSetsResponse](#ListReceiptRuleSetsResponse)
  - [ListTemplatesResponse](#ListTemplatesResponse)
  - [ListVerifiedEmailAddressesResponse](#ListVerifiedEmailAddressesResponse)
  - [PutConfigurationSetDeliveryOptionsResponse](#PutConfigurationSetDeliveryOptionsResponse)
  - [PutIdentityPolicyResponse](#PutIdentityPolicyResponse)
  - [ReorderReceiptRuleSetResponse](#ReorderReceiptRuleSetResponse)
  - [SendBounceResponse](#SendBounceResponse)
  - [SendBulkTemplatedEmailResponse](#SendBulkTemplatedEmailResponse)
  - [SendCustomVerificationEmailResponse](#SendCustomVerificationEmailResponse)
  - [SendEmailResponse](#SendEmailResponse)
  - [SendRawEmailResponse](#SendRawEmailResponse)
  - [SendTemplatedEmailResponse](#SendTemplatedEmailResponse)
  - [SetActiveReceiptRuleSetResponse](#SetActiveReceiptRuleSetResponse)
  - [SetIdentityDkimEnabledResponse](#SetIdentityDkimEnabledResponse)
  - [SetIdentityFeedbackForwardingEnabledResponse](#SetIdentityFeedbackForwardingEnabledResponse)
  - [SetIdentityHeadersInNotificationsEnabledResponse](#SetIdentityHeadersInNotificationsEnabledResponse)
  - [SetIdentityMailFromDomainResponse](#SetIdentityMailFromDomainResponse)
  - [SetIdentityNotificationTopicResponse](#SetIdentityNotificationTopicResponse)
  - [SetReceiptRulePositionResponse](#SetReceiptRulePositionResponse)
  - [TestRenderTemplateResponse](#TestRenderTemplateResponse)
  - [UpdateConfigurationSetEventDestinationResponse](#UpdateConfigurationSetEventDestinationResponse)
  - [UpdateConfigurationSetTrackingOptionsResponse](#UpdateConfigurationSetTrackingOptionsResponse)
  - [UpdateReceiptRuleResponse](#UpdateReceiptRuleResponse)
  - [UpdateTemplateResponse](#UpdateTemplateResponse)
  - [VerifyDomainDkimResponse](#VerifyDomainDkimResponse)
  - [VerifyDomainIdentityResponse](#VerifyDomainIdentityResponse)
  - [VerifyEmailIdentityResponse](#VerifyEmailIdentityResponse)

@docs CloneReceiptRuleSetResponse, CreateConfigurationSetEventDestinationResponse, CreateConfigurationSetResponse, CreateConfigurationSetTrackingOptionsResponse, CreateReceiptFilterResponse, CreateReceiptRuleResponse, CreateReceiptRuleSetResponse, CreateTemplateResponse, DeleteConfigurationSetEventDestinationResponse, DeleteConfigurationSetResponse, DeleteConfigurationSetTrackingOptionsResponse, DeleteIdentityPolicyResponse, DeleteIdentityResponse, DeleteReceiptFilterResponse, DeleteReceiptRuleResponse, DeleteReceiptRuleSetResponse, DeleteTemplateResponse, DescribeActiveReceiptRuleSetResponse, DescribeConfigurationSetResponse, DescribeReceiptRuleResponse, DescribeReceiptRuleSetResponse, GetAccountSendingEnabledResponse, GetCustomVerificationEmailTemplateResponse, GetIdentityDkimAttributesResponse, GetIdentityMailFromDomainAttributesResponse, GetIdentityNotificationAttributesResponse, GetIdentityPoliciesResponse, GetIdentityVerificationAttributesResponse, GetSendQuotaResponse, GetSendStatisticsResponse, GetTemplateResponse, ListConfigurationSetsResponse, ListCustomVerificationEmailTemplatesResponse, ListIdentitiesResponse, ListIdentityPoliciesResponse, ListReceiptFiltersResponse, ListReceiptRuleSetsResponse, ListTemplatesResponse, ListVerifiedEmailAddressesResponse, PutConfigurationSetDeliveryOptionsResponse, PutIdentityPolicyResponse, ReorderReceiptRuleSetResponse, SendBounceResponse, SendBulkTemplatedEmailResponse, SendCustomVerificationEmailResponse, SendEmailResponse, SendRawEmailResponse, SendTemplatedEmailResponse, SetActiveReceiptRuleSetResponse, SetIdentityDkimEnabledResponse, SetIdentityFeedbackForwardingEnabledResponse, SetIdentityHeadersInNotificationsEnabledResponse, SetIdentityMailFromDomainResponse, SetIdentityNotificationTopicResponse, SetReceiptRulePositionResponse, TestRenderTemplateResponse, UpdateConfigurationSetEventDestinationResponse, UpdateConfigurationSetTrackingOptionsResponse, UpdateReceiptRuleResponse, UpdateTemplateResponse, VerifyDomainDkimResponse, VerifyDomainIdentityResponse, VerifyEmailIdentityResponse


## Records

  - [AddHeaderAction](#AddHeaderAction)
  - [Body](#Body)
  - [BounceAction](#BounceAction)
  - [BouncedRecipientInfo](#BouncedRecipientInfo)
  - [BulkEmailDestination](#BulkEmailDestination)
  - [BulkEmailDestinationStatus](#BulkEmailDestinationStatus)
  - [CloudWatchDestination](#CloudWatchDestination)
  - [CloudWatchDimensionConfiguration](#CloudWatchDimensionConfiguration)
  - [ConfigurationSet](#ConfigurationSet)
  - [Content](#Content)
  - [CustomVerificationEmailTemplate](#CustomVerificationEmailTemplate)
  - [DeliveryOptions](#DeliveryOptions)
  - [Destination](#Destination)
  - [EventDestination](#EventDestination)
  - [ExtensionField](#ExtensionField)
  - [IdentityDkimAttributes](#IdentityDkimAttributes)
  - [IdentityMailFromDomainAttributes](#IdentityMailFromDomainAttributes)
  - [IdentityNotificationAttributes](#IdentityNotificationAttributes)
  - [IdentityVerificationAttributes](#IdentityVerificationAttributes)
  - [KinesisFirehoseDestination](#KinesisFirehoseDestination)
  - [LambdaAction](#LambdaAction)
  - [Message](#Message)
  - [MessageDsn](#MessageDsn)
  - [MessageTag](#MessageTag)
  - [RawMessage](#RawMessage)
  - [ReceiptAction](#ReceiptAction)
  - [ReceiptFilter](#ReceiptFilter)
  - [ReceiptIpFilter](#ReceiptIpFilter)
  - [ReceiptRule](#ReceiptRule)
  - [ReceiptRuleSetMetadata](#ReceiptRuleSetMetadata)
  - [RecipientDsnFields](#RecipientDsnFields)
  - [ReputationOptions](#ReputationOptions)
  - [S3Action](#S3Action)
  - [SNSAction](#SNSAction)
  - [SNSDestination](#SNSDestination)
  - [SendDataPoint](#SendDataPoint)
  - [StopAction](#StopAction)
  - [Template](#Template)
  - [TemplateMetadata](#TemplateMetadata)
  - [TrackingOptions](#TrackingOptions)
  - [WorkmailAction](#WorkmailAction)

@docs AddHeaderAction, Body, BounceAction, BouncedRecipientInfo, BulkEmailDestination, BulkEmailDestinationStatus, CloudWatchDestination, CloudWatchDimensionConfiguration, ConfigurationSet, Content, CustomVerificationEmailTemplate, DeliveryOptions, Destination, EventDestination, ExtensionField, IdentityDkimAttributes, IdentityMailFromDomainAttributes, IdentityNotificationAttributes, IdentityVerificationAttributes, KinesisFirehoseDestination, LambdaAction, Message, MessageDsn, MessageTag, RawMessage, ReceiptAction, ReceiptFilter, ReceiptIpFilter, ReceiptRule, ReceiptRuleSetMetadata, RecipientDsnFields, ReputationOptions, S3Action, SNSAction, SNSDestination, SendDataPoint, StopAction, Template, TemplateMetadata, TrackingOptions, WorkmailAction


## Unions

  - [BehaviorOnMXFailure](#BehaviorOnMXFailure)
  - [BounceType](#BounceType)
  - [BulkEmailStatus](#BulkEmailStatus)
  - [ConfigurationSetAttribute](#ConfigurationSetAttribute)
  - [CustomMailFromStatus](#CustomMailFromStatus)
  - [DimensionValueSource](#DimensionValueSource)
  - [DsnAction](#DsnAction)
  - [EventType](#EventType)
  - [IdentityType](#IdentityType)
  - [InvocationType](#InvocationType)
  - [NotificationType](#NotificationType)
  - [ReceiptFilterPolicy](#ReceiptFilterPolicy)
  - [SNSActionEncoding](#SNSActionEncoding)
  - [StopScope](#StopScope)
  - [TlsPolicy](#TlsPolicy)
  - [VerificationStatus](#VerificationStatus)

@docs BehaviorOnMXFailure, BounceType, BulkEmailStatus, ConfigurationSetAttribute, CustomMailFromStatus, DimensionValueSource, DsnAction, EventType, IdentityType, InvocationType, NotificationType, ReceiptFilterPolicy, SNSActionEncoding, StopScope, TlsPolicy, VerificationStatus

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Dict exposing (Dict)
import Iso8601
import Json.Decode as JD
import Json.Decode.Extra as JDX
import Json.Decode.Pipeline as JDP
import Time exposing (Posix)


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "email"
        "2010-12-01"
        AWS.Core.Service.query
        AWS.Core.Service.signV4
        (AWS.Core.Service.setSigningName "ses" >> AWS.Core.Service.setXmlNamespace "http://ses.amazonaws.com/doc/2010-12-01/")



-- OPERATIONS


{-|

<p>Creates a receipt rule set by cloning an existing one. All receipt rules and configurations are copied to the new receipt rule set and are completely independent of the source rule set.</p> <p>For information about setting up rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `ruleSetName` **:** `String`
  - `originalRuleSetName` **:** `String`

-}
cloneReceiptRuleSet :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CloneReceiptRuleSetResponse)
cloneReceiptRuleSet ruleSetName originalRuleSetName =
    let
        requestInput =
            CloneReceiptRuleSetRequest
                ruleSetName
                originalRuleSetName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CloneReceiptRuleSet")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs cloneReceiptRuleSetRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CloneReceiptRuleSet"
            (AWS.Core.Decode.ResultDecoder "CloneReceiptRuleSetResult" cloneReceiptRuleSetResponseDecoder)
        )


{-|

<p>Creates a configuration set.</p> <p>Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `configurationSet` **:** `ConfigurationSet`

-}
createConfigurationSet :
    ConfigurationSet
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateConfigurationSetResponse)
createConfigurationSet configurationSet =
    let
        requestInput =
            CreateConfigurationSetRequest
                configurationSet
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateConfigurationSet")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createConfigurationSetRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateConfigurationSet"
            (AWS.Core.Decode.ResultDecoder "CreateConfigurationSetResult" createConfigurationSetResponseDecoder)
        )


{-|

<p>Creates a configuration set event destination.</p> <note> <p>When you create or update an event destination, you must provide one, and only one, destination. The destination can be CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS).</p> </note> <p>An event destination is the AWS service to which Amazon SES publishes the email sending events associated with a configuration set. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `configurationSetName` **:** `String`
  - `eventDestination` **:** `EventDestination`

-}
createConfigurationSetEventDestination :
    String
    -> EventDestination
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateConfigurationSetEventDestinationResponse)
createConfigurationSetEventDestination configurationSetName eventDestination =
    let
        requestInput =
            CreateConfigurationSetEventDestinationRequest
                configurationSetName
                eventDestination
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateConfigurationSetEventDestination")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createConfigurationSetEventDestinationRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateConfigurationSetEventDestination"
            (AWS.Core.Decode.ResultDecoder "CreateConfigurationSetEventDestinationResult" createConfigurationSetEventDestinationResponseDecoder)
        )


{-|

<p>Creates an association between a configuration set and a custom domain for open and click event tracking. </p> <p>By default, images and links used for tracking open and click events are hosted on domains operated by Amazon SES. You can configure a subdomain of your own to handle these events. For information about using custom domains, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Amazon SES Developer Guide</a>.</p>

**Required Parameters**

  - `configurationSetName` **:** `String`
  - `trackingOptions` **:** `TrackingOptions`

-}
createConfigurationSetTrackingOptions :
    String
    -> TrackingOptions
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateConfigurationSetTrackingOptionsResponse)
createConfigurationSetTrackingOptions configurationSetName trackingOptions =
    let
        requestInput =
            CreateConfigurationSetTrackingOptionsRequest
                configurationSetName
                trackingOptions
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateConfigurationSetTrackingOptions")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createConfigurationSetTrackingOptionsRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateConfigurationSetTrackingOptions"
            (AWS.Core.Decode.ResultDecoder "CreateConfigurationSetTrackingOptionsResult" createConfigurationSetTrackingOptionsResponseDecoder)
        )


{-|

<p>Creates a new custom verification email template.</p> <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `templateName` **:** `String`
  - `fromEmailAddress` **:** `String`
  - `templateSubject` **:** `String`
  - `templateContent` **:** `String`
  - `successRedirectionURL` **:** `String`
  - `failureRedirectionURL` **:** `String`

-}
createCustomVerificationEmailTemplate :
    String
    -> String
    -> String
    -> String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
createCustomVerificationEmailTemplate templateName fromEmailAddress templateSubject templateContent successRedirectionURL failureRedirectionURL =
    let
        requestInput =
            CreateCustomVerificationEmailTemplateRequest
                templateName
                fromEmailAddress
                templateSubject
                templateContent
                successRedirectionURL
                failureRedirectionURL
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateCustomVerificationEmailTemplate")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createCustomVerificationEmailTemplateRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateCustomVerificationEmailTemplate"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Creates a new IP address filter.</p> <p>For information about setting up IP address filters, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `filter` **:** `ReceiptFilter`

-}
createReceiptFilter :
    ReceiptFilter
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateReceiptFilterResponse)
createReceiptFilter filter =
    let
        requestInput =
            CreateReceiptFilterRequest
                filter
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateReceiptFilter")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createReceiptFilterRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateReceiptFilter"
            (AWS.Core.Decode.ResultDecoder "CreateReceiptFilterResult" createReceiptFilterResponseDecoder)
        )


{-|

<p>Creates a receipt rule.</p> <p>For information about setting up receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `ruleSetName` **:** `String`
  - `rule` **:** `ReceiptRule`

-}
createReceiptRule :
    String
    -> ReceiptRule
    -> (CreateReceiptRuleOptions -> CreateReceiptRuleOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateReceiptRuleResponse)
createReceiptRule ruleSetName rule setOptions =
    let
        requestInput =
            CreateReceiptRuleRequest
                ruleSetName
                options.after
                rule

        options =
            setOptions (CreateReceiptRuleOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateReceiptRule")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createReceiptRuleRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateReceiptRule"
            (AWS.Core.Decode.ResultDecoder "CreateReceiptRuleResult" createReceiptRuleResponseDecoder)
        )


{-| Options for a createReceiptRule request
-}
type alias CreateReceiptRuleOptions =
    { after : Maybe String
    }


{-|

<p>Creates an empty receipt rule set.</p> <p>For information about setting up receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `ruleSetName` **:** `String`

-}
createReceiptRuleSet :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateReceiptRuleSetResponse)
createReceiptRuleSet ruleSetName =
    let
        requestInput =
            CreateReceiptRuleSetRequest
                ruleSetName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateReceiptRuleSet")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createReceiptRuleSetRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateReceiptRuleSet"
            (AWS.Core.Decode.ResultDecoder "CreateReceiptRuleSetResult" createReceiptRuleSetResponseDecoder)
        )


{-|

<p>Creates an email template. Email templates enable you to send personalized email to one or more destinations in a single API operation. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `template` **:** `Template`

-}
createTemplate :
    Template
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTemplateResponse)
createTemplate template =
    let
        requestInput =
            CreateTemplateRequest
                template
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateTemplate")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createTemplateRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateTemplate"
            (AWS.Core.Decode.ResultDecoder "CreateTemplateResult" createTemplateResponseDecoder)
        )


{-|

<p>Deletes a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `configurationSetName` **:** `String`

-}
deleteConfigurationSet :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteConfigurationSetResponse)
deleteConfigurationSet configurationSetName =
    let
        requestInput =
            DeleteConfigurationSetRequest
                configurationSetName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteConfigurationSet")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteConfigurationSetRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteConfigurationSet"
            (AWS.Core.Decode.ResultDecoder "DeleteConfigurationSetResult" deleteConfigurationSetResponseDecoder)
        )


{-|

<p>Deletes a configuration set event destination. Configuration set event destinations are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `configurationSetName` **:** `String`
  - `eventDestinationName` **:** `String`

-}
deleteConfigurationSetEventDestination :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteConfigurationSetEventDestinationResponse)
deleteConfigurationSetEventDestination configurationSetName eventDestinationName =
    let
        requestInput =
            DeleteConfigurationSetEventDestinationRequest
                configurationSetName
                eventDestinationName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteConfigurationSetEventDestination")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteConfigurationSetEventDestinationRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteConfigurationSetEventDestination"
            (AWS.Core.Decode.ResultDecoder "DeleteConfigurationSetEventDestinationResult" deleteConfigurationSetEventDestinationResponseDecoder)
        )


{-|

<p>Deletes an association between a configuration set and a custom domain for open and click event tracking.</p> <p>By default, images and links used for tracking open and click events are hosted on domains operated by Amazon SES. You can configure a subdomain of your own to handle these events. For information about using custom domains, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Amazon SES Developer Guide</a>.</p> <note> <p>Deleting this kind of association will result in emails sent using the specified configuration set to capture open and click events using the standard, Amazon SES-operated domains.</p> </note>

**Required Parameters**

  - `configurationSetName` **:** `String`

-}
deleteConfigurationSetTrackingOptions :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteConfigurationSetTrackingOptionsResponse)
deleteConfigurationSetTrackingOptions configurationSetName =
    let
        requestInput =
            DeleteConfigurationSetTrackingOptionsRequest
                configurationSetName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteConfigurationSetTrackingOptions")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteConfigurationSetTrackingOptionsRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteConfigurationSetTrackingOptions"
            (AWS.Core.Decode.ResultDecoder "DeleteConfigurationSetTrackingOptionsResult" deleteConfigurationSetTrackingOptionsResponseDecoder)
        )


{-|

<p>Deletes an existing custom verification email template. </p> <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `templateName` **:** `String`

-}
deleteCustomVerificationEmailTemplate :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteCustomVerificationEmailTemplate templateName =
    let
        requestInput =
            DeleteCustomVerificationEmailTemplateRequest
                templateName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteCustomVerificationEmailTemplate")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteCustomVerificationEmailTemplateRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteCustomVerificationEmailTemplate"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified identity (an email address or a domain) from the list of verified identities.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `identity` **:** `String`

-}
deleteIdentity :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteIdentityResponse)
deleteIdentity identity =
    let
        requestInput =
            DeleteIdentityRequest
                identity
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteIdentity")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteIdentityRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteIdentity"
            (AWS.Core.Decode.ResultDecoder "DeleteIdentityResult" deleteIdentityResponseDecoder)
        )


{-|

<p>Deletes the specified sending authorization policy for the given identity (an email address or a domain). This API returns successfully even if a policy with the specified name does not exist.</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `identity` **:** `String`
  - `policyName` **:** `String`

-}
deleteIdentityPolicy :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteIdentityPolicyResponse)
deleteIdentityPolicy identity policyName =
    let
        requestInput =
            DeleteIdentityPolicyRequest
                identity
                policyName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteIdentityPolicy")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteIdentityPolicyRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteIdentityPolicy"
            (AWS.Core.Decode.ResultDecoder "DeleteIdentityPolicyResult" deleteIdentityPolicyResponseDecoder)
        )


{-|

<p>Deletes the specified IP address filter.</p> <p>For information about managing IP address filters, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `filterName` **:** `String`

-}
deleteReceiptFilter :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteReceiptFilterResponse)
deleteReceiptFilter filterName =
    let
        requestInput =
            DeleteReceiptFilterRequest
                filterName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteReceiptFilter")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteReceiptFilterRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteReceiptFilter"
            (AWS.Core.Decode.ResultDecoder "DeleteReceiptFilterResult" deleteReceiptFilterResponseDecoder)
        )


{-|

<p>Deletes the specified receipt rule.</p> <p>For information about managing receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `ruleSetName` **:** `String`
  - `ruleName` **:** `String`

-}
deleteReceiptRule :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteReceiptRuleResponse)
deleteReceiptRule ruleSetName ruleName =
    let
        requestInput =
            DeleteReceiptRuleRequest
                ruleSetName
                ruleName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteReceiptRule")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteReceiptRuleRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteReceiptRule"
            (AWS.Core.Decode.ResultDecoder "DeleteReceiptRuleResult" deleteReceiptRuleResponseDecoder)
        )


{-|

<p>Deletes the specified receipt rule set and all of the receipt rules it contains.</p> <note> <p>The currently active rule set cannot be deleted.</p> </note> <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `ruleSetName` **:** `String`

-}
deleteReceiptRuleSet :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteReceiptRuleSetResponse)
deleteReceiptRuleSet ruleSetName =
    let
        requestInput =
            DeleteReceiptRuleSetRequest
                ruleSetName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteReceiptRuleSet")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteReceiptRuleSetRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteReceiptRuleSet"
            (AWS.Core.Decode.ResultDecoder "DeleteReceiptRuleSetResult" deleteReceiptRuleSetResponseDecoder)
        )


{-|

<p>Deletes an email template.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `templateName` **:** `String`

-}
deleteTemplate :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTemplateResponse)
deleteTemplate templateName =
    let
        requestInput =
            DeleteTemplateRequest
                templateName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteTemplate")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteTemplateRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteTemplate"
            (AWS.Core.Decode.ResultDecoder "DeleteTemplateResult" deleteTemplateResponseDecoder)
        )


{-|

<p>Deprecated. Use the <code>DeleteIdentity</code> operation to delete email addresses and domains.</p>

**Required Parameters**

  - `emailAddress` **:** `String`

-}
deleteVerifiedEmailAddress :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteVerifiedEmailAddress emailAddress =
    let
        requestInput =
            DeleteVerifiedEmailAddressRequest
                emailAddress
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteVerifiedEmailAddress")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteVerifiedEmailAddressRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteVerifiedEmailAddress"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Returns the metadata and receipt rules for the receipt rule set that is currently active.</p> <p>For information about setting up receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

-}
describeActiveReceiptRuleSet : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeActiveReceiptRuleSetResponse)
describeActiveReceiptRuleSet =
    let
        requestInput =
            DescribeActiveReceiptRuleSetRequest
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeActiveReceiptRuleSet")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeActiveReceiptRuleSetRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeActiveReceiptRuleSet"
            (AWS.Core.Decode.ResultDecoder "DescribeActiveReceiptRuleSetResult" describeActiveReceiptRuleSetResponseDecoder)
        )


{-|

<p>Returns the details of the specified configuration set. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `configurationSetName` **:** `String`

-}
describeConfigurationSet :
    String
    -> (DescribeConfigurationSetOptions -> DescribeConfigurationSetOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeConfigurationSetResponse)
describeConfigurationSet configurationSetName setOptions =
    let
        requestInput =
            DescribeConfigurationSetRequest
                configurationSetName
                options.configurationSetAttributeNames

        options =
            setOptions (DescribeConfigurationSetOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeConfigurationSet")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeConfigurationSetRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeConfigurationSet"
            (AWS.Core.Decode.ResultDecoder "DescribeConfigurationSetResult" describeConfigurationSetResponseDecoder)
        )


{-| Options for a describeConfigurationSet request
-}
type alias DescribeConfigurationSetOptions =
    { configurationSetAttributeNames : Maybe (List ConfigurationSetAttribute)
    }


{-|

<p>Returns the details of the specified receipt rule.</p> <p>For information about setting up receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `ruleSetName` **:** `String`
  - `ruleName` **:** `String`

-}
describeReceiptRule :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeReceiptRuleResponse)
describeReceiptRule ruleSetName ruleName =
    let
        requestInput =
            DescribeReceiptRuleRequest
                ruleSetName
                ruleName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeReceiptRule")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeReceiptRuleRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeReceiptRule"
            (AWS.Core.Decode.ResultDecoder "DescribeReceiptRuleResult" describeReceiptRuleResponseDecoder)
        )


{-|

<p>Returns the details of the specified receipt rule set.</p> <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `ruleSetName` **:** `String`

-}
describeReceiptRuleSet :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeReceiptRuleSetResponse)
describeReceiptRuleSet ruleSetName =
    let
        requestInput =
            DescribeReceiptRuleSetRequest
                ruleSetName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeReceiptRuleSet")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeReceiptRuleSetRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeReceiptRuleSet"
            (AWS.Core.Decode.ResultDecoder "DescribeReceiptRuleSetResult" describeReceiptRuleSetResponseDecoder)
        )


{-|

<p>Returns the email sending status of the Amazon SES account for the current region.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

-}
getAccountSendingEnabled : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAccountSendingEnabledResponse)
getAccountSendingEnabled =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetAccountSendingEnabled")]
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetAccountSendingEnabled"
            (AWS.Core.Decode.ResultDecoder "GetAccountSendingEnabledResult" getAccountSendingEnabledResponseDecoder)
        )


{-|

<p>Returns the custom email verification template for the template name you specify.</p> <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `templateName` **:** `String`

-}
getCustomVerificationEmailTemplate :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCustomVerificationEmailTemplateResponse)
getCustomVerificationEmailTemplate templateName =
    let
        requestInput =
            GetCustomVerificationEmailTemplateRequest
                templateName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetCustomVerificationEmailTemplate")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs getCustomVerificationEmailTemplateRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetCustomVerificationEmailTemplate"
            (AWS.Core.Decode.ResultDecoder "GetCustomVerificationEmailTemplateResult" getCustomVerificationEmailTemplateResponseDecoder)
        )


{-|

<p>Returns the current status of Easy DKIM signing for an entity. For domain name identities, this operation also returns the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES has successfully verified that these tokens have been published.</p> <p>This operation takes a list of identities as input and returns the following information for each:</p> <ul> <li> <p>Whether Easy DKIM signing is enabled or disabled.</p> </li> <li> <p>A set of DKIM tokens that represent the identity. If the identity is an email address, the tokens represent the domain of that address.</p> </li> <li> <p>Whether Amazon SES has successfully verified the DKIM tokens published in the domain's DNS. This information is only returned for domain name identities, not for email addresses.</p> </li> </ul> <p>This operation is throttled at one request per second and can only get DKIM attributes for up to 100 identities at a time.</p> <p>For more information about creating DNS records using DKIM tokens, go to the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html">Amazon SES Developer Guide</a>.</p>

**Required Parameters**

  - `identities` **:** `(List String)`

-}
getIdentityDkimAttributes :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetIdentityDkimAttributesResponse)
getIdentityDkimAttributes identities =
    let
        requestInput =
            GetIdentityDkimAttributesRequest
                identities
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetIdentityDkimAttributes")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs getIdentityDkimAttributesRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetIdentityDkimAttributes"
            (AWS.Core.Decode.ResultDecoder "GetIdentityDkimAttributesResult" getIdentityDkimAttributesResponseDecoder)
        )


{-|

<p>Returns the custom MAIL FROM attributes for a list of identities (email addresses : domains).</p> <p>This operation is throttled at one request per second and can only get custom MAIL FROM attributes for up to 100 identities at a time.</p>

**Required Parameters**

  - `identities` **:** `(List String)`

-}
getIdentityMailFromDomainAttributes :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetIdentityMailFromDomainAttributesResponse)
getIdentityMailFromDomainAttributes identities =
    let
        requestInput =
            GetIdentityMailFromDomainAttributesRequest
                identities
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetIdentityMailFromDomainAttributes")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs getIdentityMailFromDomainAttributesRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetIdentityMailFromDomainAttributes"
            (AWS.Core.Decode.ResultDecoder "GetIdentityMailFromDomainAttributesResult" getIdentityMailFromDomainAttributesResponseDecoder)
        )


{-|

<p>Given a list of verified identities (email addresses and/or domains), returns a structure describing identity notification attributes.</p> <p>This operation is throttled at one request per second and can only get notification attributes for up to 100 identities at a time.</p> <p>For more information about using notifications with Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>

**Required Parameters**

  - `identities` **:** `(List String)`

-}
getIdentityNotificationAttributes :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetIdentityNotificationAttributesResponse)
getIdentityNotificationAttributes identities =
    let
        requestInput =
            GetIdentityNotificationAttributesRequest
                identities
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetIdentityNotificationAttributes")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs getIdentityNotificationAttributesRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetIdentityNotificationAttributes"
            (AWS.Core.Decode.ResultDecoder "GetIdentityNotificationAttributesResult" getIdentityNotificationAttributesResponseDecoder)
        )


{-|

<p>Returns the requested sending authorization policies for the given identity (an email address or a domain). The policies are returned as a map of policy names to policy contents. You can retrieve a maximum of 20 policies at a time.</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `identity` **:** `String`
  - `policyNames` **:** `(List String)`

-}
getIdentityPolicies :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetIdentityPoliciesResponse)
getIdentityPolicies identity policyNames =
    let
        requestInput =
            GetIdentityPoliciesRequest
                identity
                policyNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetIdentityPolicies")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs getIdentityPoliciesRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetIdentityPolicies"
            (AWS.Core.Decode.ResultDecoder "GetIdentityPoliciesResult" getIdentityPoliciesResponseDecoder)
        )


{-|

<p>Given a list of identities (email addresses and/or domains), returns the verification status and (for domain identities) the verification token for each identity.</p> <p>The verification status of an email address is "Pending" until the email address owner clicks the link within the verification email that Amazon SES sent to that address. If the email address owner clicks the link within 24 hours, the verification status of the email address changes to "Success". If the link is not clicked within 24 hours, the verification status changes to "Failed." In that case, if you still want to verify the email address, you must restart the verification process from the beginning.</p> <p>For domain identities, the domain's verification status is "Pending" as Amazon SES searches for the required TXT record in the DNS settings of the domain. When Amazon SES detects the record, the domain's verification status changes to "Success". If Amazon SES is unable to detect the record within 72 hours, the domain's verification status changes to "Failed." In that case, if you still want to verify the domain, you must restart the verification process from the beginning.</p> <p>This operation is throttled at one request per second and can only get verification attributes for up to 100 identities at a time.</p>

**Required Parameters**

  - `identities` **:** `(List String)`

-}
getIdentityVerificationAttributes :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetIdentityVerificationAttributesResponse)
getIdentityVerificationAttributes identities =
    let
        requestInput =
            GetIdentityVerificationAttributesRequest
                identities
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetIdentityVerificationAttributes")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs getIdentityVerificationAttributesRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetIdentityVerificationAttributes"
            (AWS.Core.Decode.ResultDecoder "GetIdentityVerificationAttributesResult" getIdentityVerificationAttributesResponseDecoder)
        )


{-|

<p>Provides the sending limits for the Amazon SES account. </p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

-}
getSendQuota : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSendQuotaResponse)
getSendQuota =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetSendQuota")]
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetSendQuota"
            (AWS.Core.Decode.ResultDecoder "GetSendQuotaResult" getSendQuotaResponseDecoder)
        )


{-|

<p>Provides sending statistics for the current AWS Region. The result is a list of data points, representing the last two weeks of sending activity. Each data point in the list contains statistics for a 15-minute period of time.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

-}
getSendStatistics : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSendStatisticsResponse)
getSendStatistics =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetSendStatistics")]
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetSendStatistics"
            (AWS.Core.Decode.ResultDecoder "GetSendStatisticsResult" getSendStatisticsResponseDecoder)
        )


{-|

<p>Displays the template object (which includes the Subject line, HTML part and text part) for the template you specify.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `templateName` **:** `String`

-}
getTemplate :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTemplateResponse)
getTemplate templateName =
    let
        requestInput =
            GetTemplateRequest
                templateName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetTemplate")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs getTemplateRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetTemplate"
            (AWS.Core.Decode.ResultDecoder "GetTemplateResult" getTemplateResponseDecoder)
        )


{-|

<p>Provides a list of the configuration sets associated with your Amazon SES account in the current AWS Region. For information about using configuration sets, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Monitoring Your Amazon SES Sending Activity</a> in the <i>Amazon SES Developer Guide.</i> </p> <p>You can execute this operation no more than once per second. This operation will return up to 1,000 configuration sets each time it is run. If your Amazon SES account has more than 1,000 configuration sets, this operation will also return a NextToken element. You can then execute the <code>ListConfigurationSets</code> operation again, passing the <code>NextToken</code> parameter and the value of the NextToken element to retrieve additional results.</p>

**Required Parameters**

-}
listConfigurationSets :
    (ListConfigurationSetsOptions -> ListConfigurationSetsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListConfigurationSetsResponse)
listConfigurationSets setOptions =
    let
        requestInput =
            ListConfigurationSetsRequest
                options.nextToken
                options.maxItems

        options =
            setOptions (ListConfigurationSetsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ListConfigurationSets")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs listConfigurationSetsRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListConfigurationSets"
            (AWS.Core.Decode.ResultDecoder "ListConfigurationSetsResult" listConfigurationSetsResponseDecoder)
        )


{-| Options for a listConfigurationSets request
-}
type alias ListConfigurationSetsOptions =
    { nextToken : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the existing custom verification email templates for your account in the current AWS Region.</p> <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

-}
listCustomVerificationEmailTemplates :
    (ListCustomVerificationEmailTemplatesOptions -> ListCustomVerificationEmailTemplatesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListCustomVerificationEmailTemplatesResponse)
listCustomVerificationEmailTemplates setOptions =
    let
        requestInput =
            ListCustomVerificationEmailTemplatesRequest
                options.nextToken
                options.maxResults

        options =
            setOptions (ListCustomVerificationEmailTemplatesOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ListCustomVerificationEmailTemplates")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs listCustomVerificationEmailTemplatesRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListCustomVerificationEmailTemplates"
            (AWS.Core.Decode.ResultDecoder "ListCustomVerificationEmailTemplatesResult" listCustomVerificationEmailTemplatesResponseDecoder)
        )


{-| Options for a listCustomVerificationEmailTemplates request
-}
type alias ListCustomVerificationEmailTemplatesOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p>Returns a list containing all of the identities (email addresses and domains) for your AWS account in the current AWS Region, regardless of verification status.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

-}
listIdentities :
    (ListIdentitiesOptions -> ListIdentitiesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListIdentitiesResponse)
listIdentities setOptions =
    let
        requestInput =
            ListIdentitiesRequest
                options.identityType
                options.nextToken
                options.maxItems

        options =
            setOptions (ListIdentitiesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ListIdentities")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs listIdentitiesRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListIdentities"
            (AWS.Core.Decode.ResultDecoder "ListIdentitiesResult" listIdentitiesResponseDecoder)
        )


{-| Options for a listIdentities request
-}
type alias ListIdentitiesOptions =
    { identityType : Maybe IdentityType
    , nextToken : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Returns a list of sending authorization policies that are attached to the given identity (an email address or a domain). This API returns only a list. If you want the actual policy content, you can use <code>GetIdentityPolicies</code>.</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `identity` **:** `String`

-}
listIdentityPolicies :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListIdentityPoliciesResponse)
listIdentityPolicies identity =
    let
        requestInput =
            ListIdentityPoliciesRequest
                identity
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ListIdentityPolicies")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs listIdentityPoliciesRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListIdentityPolicies"
            (AWS.Core.Decode.ResultDecoder "ListIdentityPoliciesResult" listIdentityPoliciesResponseDecoder)
        )


{-|

<p>Lists the IP address filters associated with your AWS account in the current AWS Region.</p> <p>For information about managing IP address filters, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

-}
listReceiptFilters : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListReceiptFiltersResponse)
listReceiptFilters =
    let
        requestInput =
            ListReceiptFiltersRequest
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ListReceiptFilters")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs listReceiptFiltersRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListReceiptFilters"
            (AWS.Core.Decode.ResultDecoder "ListReceiptFiltersResult" listReceiptFiltersResponseDecoder)
        )


{-|

<p>Lists the receipt rule sets that exist under your AWS account in the current AWS Region. If there are additional receipt rule sets to be retrieved, you will receive a <code>NextToken</code> that you can provide to the next call to <code>ListReceiptRuleSets</code> to retrieve the additional entries.</p> <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

-}
listReceiptRuleSets :
    (ListReceiptRuleSetsOptions -> ListReceiptRuleSetsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListReceiptRuleSetsResponse)
listReceiptRuleSets setOptions =
    let
        requestInput =
            ListReceiptRuleSetsRequest
                options.nextToken

        options =
            setOptions (ListReceiptRuleSetsOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ListReceiptRuleSets")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs listReceiptRuleSetsRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListReceiptRuleSets"
            (AWS.Core.Decode.ResultDecoder "ListReceiptRuleSetsResult" listReceiptRuleSetsResponseDecoder)
        )


{-| Options for a listReceiptRuleSets request
-}
type alias ListReceiptRuleSetsOptions =
    { nextToken : Maybe String
    }


{-|

<p>Lists the email templates present in your Amazon SES account in the current AWS Region.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

-}
listTemplates :
    (ListTemplatesOptions -> ListTemplatesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTemplatesResponse)
listTemplates setOptions =
    let
        requestInput =
            ListTemplatesRequest
                options.nextToken
                options.maxItems

        options =
            setOptions (ListTemplatesOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ListTemplates")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs listTemplatesRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListTemplates"
            (AWS.Core.Decode.ResultDecoder "ListTemplatesResult" listTemplatesResponseDecoder)
        )


{-| Options for a listTemplates request
-}
type alias ListTemplatesOptions =
    { nextToken : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Deprecated. Use the <code>ListIdentities</code> operation to list the email addresses and domains associated with your account.</p>

**Required Parameters**

-}
listVerifiedEmailAddresses : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListVerifiedEmailAddressesResponse)
listVerifiedEmailAddresses =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ListVerifiedEmailAddresses")]
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListVerifiedEmailAddresses"
            (AWS.Core.Decode.ResultDecoder "ListVerifiedEmailAddressesResult" listVerifiedEmailAddressesResponseDecoder)
        )


{-|

<p>Adds or updates the delivery options for a configuration set.</p>

**Required Parameters**

  - `configurationSetName` **:** `String`

-}
putConfigurationSetDeliveryOptions :
    String
    -> (PutConfigurationSetDeliveryOptionsOptions -> PutConfigurationSetDeliveryOptionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutConfigurationSetDeliveryOptionsResponse)
putConfigurationSetDeliveryOptions configurationSetName setOptions =
    let
        requestInput =
            PutConfigurationSetDeliveryOptionsRequest
                configurationSetName
                options.deliveryOptions

        options =
            setOptions (PutConfigurationSetDeliveryOptionsOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "PutConfigurationSetDeliveryOptions")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs putConfigurationSetDeliveryOptionsRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutConfigurationSetDeliveryOptions"
            (AWS.Core.Decode.ResultDecoder "PutConfigurationSetDeliveryOptionsResult" putConfigurationSetDeliveryOptionsResponseDecoder)
        )


{-| Options for a putConfigurationSetDeliveryOptions request
-}
type alias PutConfigurationSetDeliveryOptionsOptions =
    { deliveryOptions : Maybe DeliveryOptions
    }


{-|

<p>Adds or updates a sending authorization policy for the specified identity (an email address or a domain).</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `identity` **:** `String`
  - `policyName` **:** `String`
  - `policy` **:** `String`

-}
putIdentityPolicy :
    String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutIdentityPolicyResponse)
putIdentityPolicy identity policyName policy =
    let
        requestInput =
            PutIdentityPolicyRequest
                identity
                policyName
                policy
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "PutIdentityPolicy")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs putIdentityPolicyRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutIdentityPolicy"
            (AWS.Core.Decode.ResultDecoder "PutIdentityPolicyResult" putIdentityPolicyResponseDecoder)
        )


{-|

<p>Reorders the receipt rules within a receipt rule set.</p> <note> <p>All of the rules in the rule set must be represented in this request. That is, this API will return an error if the reorder request doesn't explicitly position all of the rules.</p> </note> <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `ruleSetName` **:** `String`
  - `ruleNames` **:** `(List String)`

-}
reorderReceiptRuleSet :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReorderReceiptRuleSetResponse)
reorderReceiptRuleSet ruleSetName ruleNames =
    let
        requestInput =
            ReorderReceiptRuleSetRequest
                ruleSetName
                ruleNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ReorderReceiptRuleSet")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs reorderReceiptRuleSetRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ReorderReceiptRuleSet"
            (AWS.Core.Decode.ResultDecoder "ReorderReceiptRuleSetResult" reorderReceiptRuleSetResponseDecoder)
        )


{-|

<p>Generates and sends a bounce message to the sender of an email you received through Amazon SES. You can only use this API on an email up to 24 hours after you receive it.</p> <note> <p>You cannot use this API to send generic bounces for mail that was not received by Amazon SES.</p> </note> <p>For information about receiving email through Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `originalMessageId` **:** `String`
  - `bounceSender` **:** `String`
  - `bouncedRecipientInfoList` **:** `(List BouncedRecipientInfo)`

-}
sendBounce :
    String
    -> String
    -> List BouncedRecipientInfo
    -> (SendBounceOptions -> SendBounceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SendBounceResponse)
sendBounce originalMessageId bounceSender bouncedRecipientInfoList setOptions =
    let
        requestInput =
            SendBounceRequest
                originalMessageId
                bounceSender
                options.explanation
                options.messageDsn
                bouncedRecipientInfoList
                options.bounceSenderArn

        options =
            setOptions (SendBounceOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SendBounce")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs sendBounceRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SendBounce"
            (AWS.Core.Decode.ResultDecoder "SendBounceResult" sendBounceResponseDecoder)
        )


{-| Options for a sendBounce request
-}
type alias SendBounceOptions =
    { explanation : Maybe String
    , messageDsn : Maybe MessageDsn
    , bounceSenderArn : Maybe String
    }


{-|

<p>Composes an email message to multiple destinations. The message body is created using an email template.</p> <p>In order to send email using the <code>SendBulkTemplatedEmail</code> operation, your call to the API must meet the following requirements:</p> <ul> <li> <p>The call must refer to an existing email template. You can create email templates using the <a>CreateTemplate</a> operation.</p> </li> <li> <p>The message must be sent from a verified email address or domain.</p> </li> <li> <p>If your account is still in the Amazon SES sandbox, you may only send to verified addresses or domains, or to email addresses associated with the Amazon SES Mailbox Simulator. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying Email Addresses and Domains</a> in the <i>Amazon SES Developer Guide.</i> </p> </li> <li> <p>The maximum message size is 10 MB.</p> </li> <li> <p>Each <code>Destination</code> parameter must include at least one recipient email address. The recipient address can be a To: address, a CC: address, or a BCC: address. If a recipient email address is invalid (that is, it is not in the format <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the entire message will be rejected, even if the message contains other recipients that are valid.</p> </li> <li> <p>The message may not include more than 50 recipients, across the To:, CC: and BCC: fields. If you need to send an email message to a larger audience, you can divide your recipient list into groups of 50 or fewer, and then call the <code>SendBulkTemplatedEmail</code> operation several times to send the message to each group.</p> </li> <li> <p>The number of destinations you can contact in a single call to the API may be limited by your account's maximum sending rate.</p> </li> </ul>

**Required Parameters**

  - `source` **:** `String`
  - `template` **:** `String`
  - `destinations` **:** `(List BulkEmailDestination)`

-}
sendBulkTemplatedEmail :
    String
    -> String
    -> List BulkEmailDestination
    -> (SendBulkTemplatedEmailOptions -> SendBulkTemplatedEmailOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SendBulkTemplatedEmailResponse)
sendBulkTemplatedEmail source template destinations setOptions =
    let
        requestInput =
            SendBulkTemplatedEmailRequest
                source
                options.sourceArn
                options.replyToAddresses
                options.returnPath
                options.returnPathArn
                options.configurationSetName
                options.defaultTags
                template
                options.templateArn
                options.defaultTemplateData
                destinations

        options =
            setOptions (SendBulkTemplatedEmailOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SendBulkTemplatedEmail")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs sendBulkTemplatedEmailRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SendBulkTemplatedEmail"
            (AWS.Core.Decode.ResultDecoder "SendBulkTemplatedEmailResult" sendBulkTemplatedEmailResponseDecoder)
        )


{-| Options for a sendBulkTemplatedEmail request
-}
type alias SendBulkTemplatedEmailOptions =
    { sourceArn : Maybe String
    , replyToAddresses : Maybe (List String)
    , returnPath : Maybe String
    , returnPathArn : Maybe String
    , configurationSetName : Maybe String
    , defaultTags : Maybe (List MessageTag)
    , templateArn : Maybe String
    , defaultTemplateData : Maybe String
    }


{-|

<p>Adds an email address to the list of identities for your Amazon SES account in the current AWS Region and attempts to verify it. As a result of executing this operation, a customized verification email is sent to the specified address.</p> <p>To use this operation, you must first create a custom verification email template. For more information about creating and using custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `emailAddress` **:** `String`
  - `templateName` **:** `String`

-}
sendCustomVerificationEmail :
    String
    -> String
    -> (SendCustomVerificationEmailOptions -> SendCustomVerificationEmailOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SendCustomVerificationEmailResponse)
sendCustomVerificationEmail emailAddress templateName setOptions =
    let
        requestInput =
            SendCustomVerificationEmailRequest
                emailAddress
                templateName
                options.configurationSetName

        options =
            setOptions (SendCustomVerificationEmailOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SendCustomVerificationEmail")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs sendCustomVerificationEmailRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SendCustomVerificationEmail"
            (AWS.Core.Decode.ResultDecoder "SendCustomVerificationEmailResult" sendCustomVerificationEmailResponseDecoder)
        )


{-| Options for a sendCustomVerificationEmail request
-}
type alias SendCustomVerificationEmailOptions =
    { configurationSetName : Maybe String
    }


{-|

<p>Composes an email message and immediately queues it for sending. In order to send email using the <code>SendEmail</code> operation, your message must meet the following requirements:</p> <ul> <li> <p>The message must be sent from a verified email address or domain. If you attempt to send email using a non-verified address or domain, the operation will result in an "Email address not verified" error. </p> </li> <li> <p>If your account is still in the Amazon SES sandbox, you may only send to verified addresses or domains, or to email addresses associated with the Amazon SES Mailbox Simulator. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying Email Addresses and Domains</a> in the <i>Amazon SES Developer Guide.</i> </p> </li> <li> <p>The maximum message size is 10 MB.</p> </li> <li> <p>The message must include at least one recipient email address. The recipient address can be a To: address, a CC: address, or a BCC: address. If a recipient email address is invalid (that is, it is not in the format <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the entire message will be rejected, even if the message contains other recipients that are valid.</p> </li> <li> <p>The message may not include more than 50 recipients, across the To:, CC: and BCC: fields. If you need to send an email message to a larger audience, you can divide your recipient list into groups of 50 or fewer, and then call the <code>SendEmail</code> operation several times to send the message to each group.</p> </li> </ul> <important> <p>For every message that you send, the total number of recipients (including each recipient in the To:, CC: and BCC: fields) is counted against the maximum number of emails you can send in a 24-hour period (your <i>sending quota</i>). For more information about sending quotas in Amazon SES, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html">Managing Your Amazon SES Sending Limits</a> in the <i>Amazon SES Developer Guide.</i> </p> </important>

**Required Parameters**

  - `source` **:** `String`
  - `destination` **:** `Destination`
  - `message` **:** `Message`

-}
sendEmail :
    String
    -> Destination
    -> Message
    -> (SendEmailOptions -> SendEmailOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SendEmailResponse)
sendEmail source destination message setOptions =
    let
        requestInput =
            SendEmailRequest
                source
                destination
                message
                options.replyToAddresses
                options.returnPath
                options.sourceArn
                options.returnPathArn
                options.tags
                options.configurationSetName

        options =
            setOptions (SendEmailOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SendEmail")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs sendEmailRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SendEmail"
            (AWS.Core.Decode.ResultDecoder "SendEmailResult" sendEmailResponseDecoder)
        )


{-| Options for a sendEmail request
-}
type alias SendEmailOptions =
    { replyToAddresses : Maybe (List String)
    , returnPath : Maybe String
    , sourceArn : Maybe String
    , returnPathArn : Maybe String
    , tags : Maybe (List MessageTag)
    , configurationSetName : Maybe String
    }


{-|

<p>Composes an email message and immediately queues it for sending.</p> <p>This operation is more flexible than the <code>SendEmail</code> API operation. When you use the <code>SendRawEmail</code> operation, you can specify the headers of the message as well as its content. This flexibility is useful, for example, when you want to send a multipart MIME email (such a message that contains both a text and an HTML version). You can also use this operation to send messages that include attachments.</p> <p>The <code>SendRawEmail</code> operation has the following requirements:</p> <ul> <li> <p>You can only send email from <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">verified email addresses or domains</a>. If you try to send email from an address that isn't verified, the operation results in an "Email address not verified" error.</p> </li> <li> <p>If your account is still in the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/request-production-access.html">Amazon SES sandbox</a>, you can only send email to other verified addresses in your account, or to addresses that are associated with the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mailbox-simulator.html">Amazon SES mailbox simulator</a>.</p> </li> <li> <p>The maximum message size, including attachments, is 10 MB.</p> </li> <li> <p>Each message has to include at least one recipient address. A recipient address includes any address on the To:, CC:, or BCC: lines.</p> </li> <li> <p>If you send a single message to more than one recipient address, and one of the recipient addresses isn't in a valid format (that is, it's not in the format <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), Amazon SES rejects the entire message, even if the other addresses are valid.</p> </li> <li> <p>Each message can include up to 50 recipient addresses across the To:, CC:, or BCC: lines. If you need to send a single message to more than 50 recipients, you have to split the list of recipient addresses into groups of less than 50 recipients, and send separate messages to each group.</p> </li> <li> <p>Amazon SES allows you to specify 8-bit Content-Transfer-Encoding for MIME message parts. However, if Amazon SES has to modify the contents of your message (for example, if you use open and click tracking), 8-bit content isn't preserved. For this reason, we highly recommend that you encode all content that isn't 7-bit ASCII. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html#send-email-mime-encoding">MIME Encoding</a> in the <i>Amazon SES Developer Guide</i>.</p> </li> </ul> <p>Additionally, keep the following considerations in mind when using the <code>SendRawEmail</code> operation:</p> <ul> <li> <p>Although you can customize the message headers when using the <code>SendRawEmail</code> operation, Amazon SES will automatically apply its own <code>Message-ID</code> and <code>Date</code> headers; if you passed these headers when creating the message, they will be overwritten by the values that Amazon SES provides.</p> </li> <li> <p>If you are using sending authorization to send on behalf of another user, <code>SendRawEmail</code> enables you to specify the cross-account identity for the email's Source, From, and Return-Path parameters in one of two ways: you can pass optional parameters <code>SourceArn</code>, <code>FromArn</code>, and/or <code>ReturnPathArn</code> to the API, or you can include the following X-headers in the header of your raw email:</p> <ul> <li> <p> <code>X-SES-SOURCE-ARN</code> </p> </li> <li> <p> <code>X-SES-FROM-ARN</code> </p> </li> <li> <p> <code>X-SES-RETURN-PATH-ARN</code> </p> </li> </ul> <important> <p>Do not include these X-headers in the DKIM signature; Amazon SES will remove them before sending the email.</p> </important> <p>For most common sending authorization scenarios, we recommend that you specify the <code>SourceIdentityArn</code> parameter and not the <code>FromIdentityArn</code> or <code>ReturnPathIdentityArn</code> parameters. If you only specify the <code>SourceIdentityArn</code> parameter, Amazon SES will set the From and Return Path addresses to the identity specified in <code>SourceIdentityArn</code>. For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Using Sending Authorization with Amazon SES</a> in the <i>Amazon SES Developer Guide.</i> </p> </li> <li> <p>For every message that you send, the total number of recipients (including each recipient in the To:, CC: and BCC: fields) is counted against the maximum number of emails you can send in a 24-hour period (your <i>sending quota</i>). For more information about sending quotas in Amazon SES, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html">Managing Your Amazon SES Sending Limits</a> in the <i>Amazon SES Developer Guide.</i> </p> </li> </ul>

**Required Parameters**

  - `rawMessage` **:** `RawMessage`

-}
sendRawEmail :
    RawMessage
    -> (SendRawEmailOptions -> SendRawEmailOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SendRawEmailResponse)
sendRawEmail rawMessage setOptions =
    let
        requestInput =
            SendRawEmailRequest
                options.source
                options.destinations
                rawMessage
                options.fromArn
                options.sourceArn
                options.returnPathArn
                options.tags
                options.configurationSetName

        options =
            setOptions (SendRawEmailOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SendRawEmail")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs sendRawEmailRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SendRawEmail"
            (AWS.Core.Decode.ResultDecoder "SendRawEmailResult" sendRawEmailResponseDecoder)
        )


{-| Options for a sendRawEmail request
-}
type alias SendRawEmailOptions =
    { source : Maybe String
    , destinations : Maybe (List String)
    , fromArn : Maybe String
    , sourceArn : Maybe String
    , returnPathArn : Maybe String
    , tags : Maybe (List MessageTag)
    , configurationSetName : Maybe String
    }


{-|

<p>Composes an email message using an email template and immediately queues it for sending.</p> <p>In order to send email using the <code>SendTemplatedEmail</code> operation, your call to the API must meet the following requirements:</p> <ul> <li> <p>The call must refer to an existing email template. You can create email templates using the <a>CreateTemplate</a> operation.</p> </li> <li> <p>The message must be sent from a verified email address or domain.</p> </li> <li> <p>If your account is still in the Amazon SES sandbox, you may only send to verified addresses or domains, or to email addresses associated with the Amazon SES Mailbox Simulator. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying Email Addresses and Domains</a> in the <i>Amazon SES Developer Guide.</i> </p> </li> <li> <p>The maximum message size is 10 MB.</p> </li> <li> <p>Calls to the <code>SendTemplatedEmail</code> operation may only include one <code>Destination</code> parameter. A destination is a set of recipients who will receive the same version of the email. The <code>Destination</code> parameter can include up to 50 recipients, across the To:, CC: and BCC: fields.</p> </li> <li> <p>The <code>Destination</code> parameter must include at least one recipient email address. The recipient address can be a To: address, a CC: address, or a BCC: address. If a recipient email address is invalid (that is, it is not in the format <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the entire message will be rejected, even if the message contains other recipients that are valid.</p> </li> </ul> <important> <p>If your call to the <code>SendTemplatedEmail</code> operation includes all of the required parameters, Amazon SES accepts it and returns a Message ID. However, if Amazon SES can't render the email because the template contains errors, it doesn't send the email. Additionally, because it already accepted the message, Amazon SES doesn't return a message stating that it was unable to send the email.</p> <p>For these reasons, we highly recommend that you set up Amazon SES to send you notifications when Rendering Failure events occur. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Sending Personalized Email Using the Amazon SES API</a> in the <i>Amazon Simple Email Service Developer Guide</i>.</p> </important>

**Required Parameters**

  - `source` **:** `String`
  - `destination` **:** `Destination`
  - `template` **:** `String`
  - `templateData` **:** `String`

-}
sendTemplatedEmail :
    String
    -> Destination
    -> String
    -> String
    -> (SendTemplatedEmailOptions -> SendTemplatedEmailOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SendTemplatedEmailResponse)
sendTemplatedEmail source destination template templateData setOptions =
    let
        requestInput =
            SendTemplatedEmailRequest
                source
                destination
                options.replyToAddresses
                options.returnPath
                options.sourceArn
                options.returnPathArn
                options.tags
                options.configurationSetName
                template
                options.templateArn
                templateData

        options =
            setOptions (SendTemplatedEmailOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SendTemplatedEmail")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs sendTemplatedEmailRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SendTemplatedEmail"
            (AWS.Core.Decode.ResultDecoder "SendTemplatedEmailResult" sendTemplatedEmailResponseDecoder)
        )


{-| Options for a sendTemplatedEmail request
-}
type alias SendTemplatedEmailOptions =
    { replyToAddresses : Maybe (List String)
    , returnPath : Maybe String
    , sourceArn : Maybe String
    , returnPathArn : Maybe String
    , tags : Maybe (List MessageTag)
    , configurationSetName : Maybe String
    , templateArn : Maybe String
    }


{-|

<p>Sets the specified receipt rule set as the active receipt rule set.</p> <note> <p>To disable your email-receiving through Amazon SES completely, you can call this API with RuleSetName set to null.</p> </note> <p>For information about managing receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

-}
setActiveReceiptRuleSet :
    (SetActiveReceiptRuleSetOptions -> SetActiveReceiptRuleSetOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetActiveReceiptRuleSetResponse)
setActiveReceiptRuleSet setOptions =
    let
        requestInput =
            SetActiveReceiptRuleSetRequest
                options.ruleSetName

        options =
            setOptions (SetActiveReceiptRuleSetOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SetActiveReceiptRuleSet")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs setActiveReceiptRuleSetRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SetActiveReceiptRuleSet"
            (AWS.Core.Decode.ResultDecoder "SetActiveReceiptRuleSetResult" setActiveReceiptRuleSetResponseDecoder)
        )


{-| Options for a setActiveReceiptRuleSet request
-}
type alias SetActiveReceiptRuleSetOptions =
    { ruleSetName : Maybe String
    }


{-|

<p>Enables or disables Easy DKIM signing of email sent from an identity:</p> <ul> <li> <p>If Easy DKIM signing is enabled for a domain name identity (such as <code>example.com</code>), then Amazon SES will DKIM-sign all email sent by addresses under that domain name (for example, <code>user@example.com</code>).</p> </li> <li> <p>If Easy DKIM signing is enabled for an email address, then Amazon SES will DKIM-sign all email sent by that email address.</p> </li> </ul> <p>For email addresses (for example, <code>user@example.com</code>), you can only enable Easy DKIM signing if the corresponding domain (in this case, <code>example.com</code>) has been set up for Easy DKIM using the AWS Console or the <code>VerifyDomainDkim</code> operation.</p> <p>You can execute this operation no more than once per second.</p> <p>For more information about Easy DKIM signing, go to the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>

**Required Parameters**

  - `identity` **:** `String`
  - `dkimEnabled` **:** `Bool`

-}
setIdentityDkimEnabled :
    String
    -> Bool
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetIdentityDkimEnabledResponse)
setIdentityDkimEnabled identity dkimEnabled =
    let
        requestInput =
            SetIdentityDkimEnabledRequest
                identity
                dkimEnabled
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SetIdentityDkimEnabled")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs setIdentityDkimEnabledRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SetIdentityDkimEnabled"
            (AWS.Core.Decode.ResultDecoder "SetIdentityDkimEnabledResult" setIdentityDkimEnabledResponseDecoder)
        )


{-|

<p>Given an identity (an email address or a domain), enables or disables whether Amazon SES forwards bounce and complaint notifications as email. Feedback forwarding can only be disabled when Amazon Simple Notification Service (Amazon SNS) topics are specified for both bounces and complaints.</p> <note> <p>Feedback forwarding does not apply to delivery notifications. Delivery notifications are only available through Amazon SNS.</p> </note> <p>You can execute this operation no more than once per second.</p> <p>For more information about using notifications with Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>

**Required Parameters**

  - `identity` **:** `String`
  - `forwardingEnabled` **:** `Bool`

-}
setIdentityFeedbackForwardingEnabled :
    String
    -> Bool
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetIdentityFeedbackForwardingEnabledResponse)
setIdentityFeedbackForwardingEnabled identity forwardingEnabled =
    let
        requestInput =
            SetIdentityFeedbackForwardingEnabledRequest
                identity
                forwardingEnabled
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SetIdentityFeedbackForwardingEnabled")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs setIdentityFeedbackForwardingEnabledRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SetIdentityFeedbackForwardingEnabled"
            (AWS.Core.Decode.ResultDecoder "SetIdentityFeedbackForwardingEnabledResult" setIdentityFeedbackForwardingEnabledResponseDecoder)
        )


{-|

<p>Given an identity (an email address or a domain), sets whether Amazon SES includes the original email headers in the Amazon Simple Notification Service (Amazon SNS) notifications of a specified type.</p> <p>You can execute this operation no more than once per second.</p> <p>For more information about using notifications with Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>

**Required Parameters**

  - `identity` **:** `String`
  - `notificationType` **:** `NotificationType`
  - `enabled` **:** `Bool`

-}
setIdentityHeadersInNotificationsEnabled :
    String
    -> NotificationType
    -> Bool
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetIdentityHeadersInNotificationsEnabledResponse)
setIdentityHeadersInNotificationsEnabled identity notificationType enabled =
    let
        requestInput =
            SetIdentityHeadersInNotificationsEnabledRequest
                identity
                notificationType
                enabled
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SetIdentityHeadersInNotificationsEnabled")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs setIdentityHeadersInNotificationsEnabledRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SetIdentityHeadersInNotificationsEnabled"
            (AWS.Core.Decode.ResultDecoder "SetIdentityHeadersInNotificationsEnabledResult" setIdentityHeadersInNotificationsEnabledResponseDecoder)
        )


{-|

<p>Enables or disables the custom MAIL FROM domain setup for a verified identity (an email address or a domain).</p> <important> <p>To send emails using the specified MAIL FROM domain, you must add an MX record to your MAIL FROM domain's DNS settings. If you want your emails to pass Sender Policy Framework (SPF) checks, you must also add or update an SPF record. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-set.html">Amazon SES Developer Guide</a>.</p> </important> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `identity` **:** `String`

-}
setIdentityMailFromDomain :
    String
    -> (SetIdentityMailFromDomainOptions -> SetIdentityMailFromDomainOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetIdentityMailFromDomainResponse)
setIdentityMailFromDomain identity setOptions =
    let
        requestInput =
            SetIdentityMailFromDomainRequest
                identity
                options.mailFromDomain
                options.behaviorOnMXFailure

        options =
            setOptions (SetIdentityMailFromDomainOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SetIdentityMailFromDomain")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs setIdentityMailFromDomainRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SetIdentityMailFromDomain"
            (AWS.Core.Decode.ResultDecoder "SetIdentityMailFromDomainResult" setIdentityMailFromDomainResponseDecoder)
        )


{-| Options for a setIdentityMailFromDomain request
-}
type alias SetIdentityMailFromDomainOptions =
    { mailFromDomain : Maybe String
    , behaviorOnMXFailure : Maybe BehaviorOnMXFailure
    }


{-|

<p>Sets an Amazon Simple Notification Service (Amazon SNS) topic to use when delivering notifications. When you use this operation, you specify a verified identity, such as an email address or domain. When you send an email that uses the chosen identity in the Source field, Amazon SES sends notifications to the topic you specified. You can send bounce, complaint, or delivery notifications (or any combination of the three) to the Amazon SNS topic that you specify.</p> <p>You can execute this operation no more than once per second.</p> <p>For more information about feedback notification, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>

**Required Parameters**

  - `identity` **:** `String`
  - `notificationType` **:** `NotificationType`

-}
setIdentityNotificationTopic :
    String
    -> NotificationType
    -> (SetIdentityNotificationTopicOptions -> SetIdentityNotificationTopicOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetIdentityNotificationTopicResponse)
setIdentityNotificationTopic identity notificationType setOptions =
    let
        requestInput =
            SetIdentityNotificationTopicRequest
                identity
                notificationType
                options.snsTopic

        options =
            setOptions (SetIdentityNotificationTopicOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SetIdentityNotificationTopic")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs setIdentityNotificationTopicRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SetIdentityNotificationTopic"
            (AWS.Core.Decode.ResultDecoder "SetIdentityNotificationTopicResult" setIdentityNotificationTopicResponseDecoder)
        )


{-| Options for a setIdentityNotificationTopic request
-}
type alias SetIdentityNotificationTopicOptions =
    { snsTopic : Maybe String
    }


{-|

<p>Sets the position of the specified receipt rule in the receipt rule set.</p> <p>For information about managing receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `ruleSetName` **:** `String`
  - `ruleName` **:** `String`

-}
setReceiptRulePosition :
    String
    -> String
    -> (SetReceiptRulePositionOptions -> SetReceiptRulePositionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetReceiptRulePositionResponse)
setReceiptRulePosition ruleSetName ruleName setOptions =
    let
        requestInput =
            SetReceiptRulePositionRequest
                ruleSetName
                ruleName
                options.after

        options =
            setOptions (SetReceiptRulePositionOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SetReceiptRulePosition")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs setReceiptRulePositionRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SetReceiptRulePosition"
            (AWS.Core.Decode.ResultDecoder "SetReceiptRulePositionResult" setReceiptRulePositionResponseDecoder)
        )


{-| Options for a setReceiptRulePosition request
-}
type alias SetReceiptRulePositionOptions =
    { after : Maybe String
    }


{-|

<p>Creates a preview of the MIME content of an email when provided with a template and a set of replacement data.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `templateName` **:** `String`
  - `templateData` **:** `String`

-}
testRenderTemplate :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TestRenderTemplateResponse)
testRenderTemplate templateName templateData =
    let
        requestInput =
            TestRenderTemplateRequest
                templateName
                templateData
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "TestRenderTemplate")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs testRenderTemplateRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "TestRenderTemplate"
            (AWS.Core.Decode.ResultDecoder "TestRenderTemplateResult" testRenderTemplateResponseDecoder)
        )


{-|

<p>Enables or disables email sending across your entire Amazon SES account in the current AWS Region. You can use this operation in conjunction with Amazon CloudWatch alarms to temporarily pause email sending across your Amazon SES account in a given AWS Region when reputation metrics (such as your bounce or complaint rates) reach certain thresholds.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

-}
updateAccountSendingEnabled :
    (UpdateAccountSendingEnabledOptions -> UpdateAccountSendingEnabledOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateAccountSendingEnabled setOptions =
    let
        requestInput =
            UpdateAccountSendingEnabledRequest
                options.enabled

        options =
            setOptions (UpdateAccountSendingEnabledOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "UpdateAccountSendingEnabled")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs updateAccountSendingEnabledRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateAccountSendingEnabled"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a updateAccountSendingEnabled request
-}
type alias UpdateAccountSendingEnabledOptions =
    { enabled : Maybe Bool
    }


{-|

<p>Updates the event destination of a configuration set. Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS). For information about using configuration sets, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Monitoring Your Amazon SES Sending Activity</a> in the <i>Amazon SES Developer Guide.</i> </p> <note> <p>When you create or update an event destination, you must provide one, and only one, destination. The destination can be Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS).</p> </note> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `configurationSetName` **:** `String`
  - `eventDestination` **:** `EventDestination`

-}
updateConfigurationSetEventDestination :
    String
    -> EventDestination
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateConfigurationSetEventDestinationResponse)
updateConfigurationSetEventDestination configurationSetName eventDestination =
    let
        requestInput =
            UpdateConfigurationSetEventDestinationRequest
                configurationSetName
                eventDestination
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "UpdateConfigurationSetEventDestination")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs updateConfigurationSetEventDestinationRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateConfigurationSetEventDestination"
            (AWS.Core.Decode.ResultDecoder "UpdateConfigurationSetEventDestinationResult" updateConfigurationSetEventDestinationResponseDecoder)
        )


{-|

<p>Enables or disables the publishing of reputation metrics for emails sent using a specific configuration set in a given AWS Region. Reputation metrics include bounce and complaint rates. These metrics are published to Amazon CloudWatch. By using CloudWatch, you can create alarms when bounce or complaint rates exceed certain thresholds.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `configurationSetName` **:** `String`
  - `enabled` **:** `Bool`

-}
updateConfigurationSetReputationMetricsEnabled :
    String
    -> Bool
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateConfigurationSetReputationMetricsEnabled configurationSetName enabled =
    let
        requestInput =
            UpdateConfigurationSetReputationMetricsEnabledRequest
                configurationSetName
                enabled
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "UpdateConfigurationSetReputationMetricsEnabled")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs updateConfigurationSetReputationMetricsEnabledRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateConfigurationSetReputationMetricsEnabled"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Enables or disables email sending for messages sent using a specific configuration set in a given AWS Region. You can use this operation in conjunction with Amazon CloudWatch alarms to temporarily pause email sending for a configuration set when the reputation metrics for that configuration set (such as your bounce on complaint rate) exceed certain thresholds.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `configurationSetName` **:** `String`
  - `enabled` **:** `Bool`

-}
updateConfigurationSetSendingEnabled :
    String
    -> Bool
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateConfigurationSetSendingEnabled configurationSetName enabled =
    let
        requestInput =
            UpdateConfigurationSetSendingEnabledRequest
                configurationSetName
                enabled
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "UpdateConfigurationSetSendingEnabled")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs updateConfigurationSetSendingEnabledRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateConfigurationSetSendingEnabled"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Modifies an association between a configuration set and a custom domain for open and click event tracking. </p> <p>By default, images and links used for tracking open and click events are hosted on domains operated by Amazon SES. You can configure a subdomain of your own to handle these events. For information about using custom domains, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Amazon SES Developer Guide</a>.</p>

**Required Parameters**

  - `configurationSetName` **:** `String`
  - `trackingOptions` **:** `TrackingOptions`

-}
updateConfigurationSetTrackingOptions :
    String
    -> TrackingOptions
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateConfigurationSetTrackingOptionsResponse)
updateConfigurationSetTrackingOptions configurationSetName trackingOptions =
    let
        requestInput =
            UpdateConfigurationSetTrackingOptionsRequest
                configurationSetName
                trackingOptions
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "UpdateConfigurationSetTrackingOptions")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs updateConfigurationSetTrackingOptionsRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateConfigurationSetTrackingOptions"
            (AWS.Core.Decode.ResultDecoder "UpdateConfigurationSetTrackingOptionsResult" updateConfigurationSetTrackingOptionsResponseDecoder)
        )


{-|

<p>Updates an existing custom verification email template.</p> <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `templateName` **:** `String`

-}
updateCustomVerificationEmailTemplate :
    String
    -> (UpdateCustomVerificationEmailTemplateOptions -> UpdateCustomVerificationEmailTemplateOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateCustomVerificationEmailTemplate templateName setOptions =
    let
        requestInput =
            UpdateCustomVerificationEmailTemplateRequest
                templateName
                options.fromEmailAddress
                options.templateSubject
                options.templateContent
                options.successRedirectionURL
                options.failureRedirectionURL

        options =
            setOptions (UpdateCustomVerificationEmailTemplateOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "UpdateCustomVerificationEmailTemplate")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs updateCustomVerificationEmailTemplateRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateCustomVerificationEmailTemplate"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a updateCustomVerificationEmailTemplate request
-}
type alias UpdateCustomVerificationEmailTemplateOptions =
    { fromEmailAddress : Maybe String
    , templateSubject : Maybe String
    , templateContent : Maybe String
    , successRedirectionURL : Maybe String
    , failureRedirectionURL : Maybe String
    }


{-|

<p>Updates a receipt rule.</p> <p>For information about managing receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `ruleSetName` **:** `String`
  - `rule` **:** `ReceiptRule`

-}
updateReceiptRule :
    String
    -> ReceiptRule
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateReceiptRuleResponse)
updateReceiptRule ruleSetName rule =
    let
        requestInput =
            UpdateReceiptRuleRequest
                ruleSetName
                rule
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "UpdateReceiptRule")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs updateReceiptRuleRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateReceiptRule"
            (AWS.Core.Decode.ResultDecoder "UpdateReceiptRuleResult" updateReceiptRuleResponseDecoder)
        )


{-|

<p>Updates an email template. Email templates enable you to send personalized email to one or more destinations in a single API operation. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `template` **:** `Template`

-}
updateTemplate :
    Template
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTemplateResponse)
updateTemplate template =
    let
        requestInput =
            UpdateTemplateRequest
                template
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "UpdateTemplate")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs updateTemplateRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateTemplate"
            (AWS.Core.Decode.ResultDecoder "UpdateTemplateResult" updateTemplateResponseDecoder)
        )


{-|

<p>Returns a set of DKIM tokens for a domain identity.</p> <important> <p>When you execute the <code>VerifyDomainDkim</code> operation, the domain that you specify is added to the list of identities that are associated with your account. This is true even if you haven't already associated the domain with your account by using the <code>VerifyDomainIdentity</code> operation. However, you can't send email from the domain until you either successfully <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html">verify it</a> or you successfully <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">set up DKIM for it</a>.</p> </important> <p>You use the tokens that are generated by this operation to create CNAME records. When Amazon SES detects that you've added these records to the DNS configuration for a domain, you can start sending email from that domain. You can start sending email even if you haven't added the TXT record provided by the VerifyDomainIdentity operation to the DNS configuration for your domain. All email that you send from the domain is authenticated using DKIM.</p> <p>To create the CNAME records for DKIM authentication, use the following values:</p> <ul> <li> <p> <b>Name</b>: <i>token</i>._domainkey.<i>example.com</i> </p> </li> <li> <p> <b>Type</b>: CNAME</p> </li> <li> <p> <b>Value</b>: <i>token</i>.dkim.amazonses.com</p> </li> </ul> <p>In the preceding example, replace <i>token</i> with one of the tokens that are generated when you execute this operation. Replace <i>example.com</i> with your domain. Repeat this process for each token that's generated by this operation.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `domain` **:** `String`

-}
verifyDomainDkim :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper VerifyDomainDkimResponse)
verifyDomainDkim domain =
    let
        requestInput =
            VerifyDomainDkimRequest
                domain
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "VerifyDomainDkim")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs verifyDomainDkimRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "VerifyDomainDkim"
            (AWS.Core.Decode.ResultDecoder "VerifyDomainDkimResult" verifyDomainDkimResponseDecoder)
        )


{-|

<p>Adds a domain to the list of identities for your Amazon SES account in the current AWS Region and attempts to verify it. For more information about verifying domains, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying Email Addresses and Domains</a> in the <i>Amazon SES Developer Guide.</i> </p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `domain` **:** `String`

-}
verifyDomainIdentity :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper VerifyDomainIdentityResponse)
verifyDomainIdentity domain =
    let
        requestInput =
            VerifyDomainIdentityRequest
                domain
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "VerifyDomainIdentity")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs verifyDomainIdentityRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "VerifyDomainIdentity"
            (AWS.Core.Decode.ResultDecoder "VerifyDomainIdentityResult" verifyDomainIdentityResponseDecoder)
        )


{-|

<p>Deprecated. Use the <code>VerifyEmailIdentity</code> operation to verify a new email address.</p>

**Required Parameters**

  - `emailAddress` **:** `String`

-}
verifyEmailAddress :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
verifyEmailAddress emailAddress =
    let
        requestInput =
            VerifyEmailAddressRequest
                emailAddress
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "VerifyEmailAddress")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs verifyEmailAddressRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "VerifyEmailAddress"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Adds an email address to the list of identities for your Amazon SES account in the current AWS region and attempts to verify it. As a result of executing this operation, a verification email is sent to the specified address.</p> <p>You can execute this operation no more than once per second.</p>

**Required Parameters**

  - `emailAddress` **:** `String`

-}
verifyEmailIdentity :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper VerifyEmailIdentityResponse)
verifyEmailIdentity emailAddress =
    let
        requestInput =
            VerifyEmailIdentityRequest
                emailAddress
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "VerifyEmailIdentity")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs verifyEmailIdentityRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "VerifyEmailIdentity"
            (AWS.Core.Decode.ResultDecoder "VerifyEmailIdentityResult" verifyEmailIdentityResponseDecoder)
        )


{-|

<p>When included in a receipt rule, this action adds a header to the received email.</p> <p>For information about adding a header using a receipt rule, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-add-header.html">Amazon SES Developer Guide</a>.</p>

-}
type alias AddHeaderAction =
    { headerName : String
    , headerValue : String
    }


addHeaderActionDecoder : JD.Decoder AddHeaderAction
addHeaderActionDecoder =
    JD.succeed AddHeaderAction
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "HeaderName", "headerName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "HeaderValue", "headerValue" ]
                JD.string
            )


addHeaderActionToString :
    AddHeaderAction
    -> String -- List (String, String)
addHeaderActionToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "headerName" "" -- val.headerName
    --     |> Dict.insert
    --         "headerValue" "" -- val.headerValue
    --     |> Dict.toList
    ""


{-| One of

  - `BehaviorOnMXFailure_UseDefaultValue`
  - `BehaviorOnMXFailure_RejectMessage`

-}
type BehaviorOnMXFailure
    = BehaviorOnMXFailure_UseDefaultValue
    | BehaviorOnMXFailure_RejectMessage


behaviorOnMXFailureDecoder : JD.Decoder BehaviorOnMXFailure
behaviorOnMXFailureDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UseDefaultValue" ->
                        JD.succeed BehaviorOnMXFailure_UseDefaultValue

                    "RejectMessage" ->
                        JD.succeed BehaviorOnMXFailure_RejectMessage

                    _ ->
                        JD.fail "bad thing"
            )


behaviorOnMXFailureToString : BehaviorOnMXFailure -> String
behaviorOnMXFailureToString val =
    case val of
        BehaviorOnMXFailure_UseDefaultValue ->
            "UseDefaultValue"

        BehaviorOnMXFailure_RejectMessage ->
            "RejectMessage"


{-|

<p>Represents the body of the message. You can specify text, HTML, or both. If you use both, then the message should display correctly in the widest variety of email clients.</p>

-}
type alias Body =
    { text : Maybe Content
    , html : Maybe Content
    }


bodyDecoder : JD.Decoder Body
bodyDecoder =
    JD.succeed Body
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Text", "text" ]
                contentDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Html", "html" ]
                contentDecoder
            )


bodyToString :
    Body
    -> String -- List (String, String)
bodyToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "text" "" -- val.text
    --     |> Dict.insert
    --         "html" "" -- val.html
    --     |> Dict.toList
    ""


{-|

<p>When included in a receipt rule, this action rejects the received email by returning a bounce response to the sender and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>For information about sending a bounce message in response to a received email, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-bounce.html">Amazon SES Developer Guide</a>.</p>

-}
type alias BounceAction =
    { topicArn : Maybe String
    , smtpReplyCode : String
    , statusCode : Maybe String
    , message : String
    , sender : String
    }


bounceActionDecoder : JD.Decoder BounceAction
bounceActionDecoder =
    JD.succeed BounceAction
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TopicArn", "topicArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SmtpReplyCode", "smtpReplyCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StatusCode", "statusCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Message", "message" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Sender", "sender" ]
                JD.string
            )


bounceActionToString :
    BounceAction
    -> String -- List (String, String)
bounceActionToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "topicArn" "" -- val.topicArn
    --     |> Dict.insert
    --         "smtpReplyCode" "" -- val.smtpReplyCode
    --     |> Dict.insert
    --         "statusCode" "" -- val.statusCode
    --     |> Dict.insert
    --         "message" "" -- val.message
    --     |> Dict.insert
    --         "sender" "" -- val.sender
    --     |> Dict.toList
    ""


{-| One of

  - `BounceType_DoesNotExist`
  - `BounceType_MessageTooLarge`
  - `BounceType_ExceededQuota`
  - `BounceType_ContentRejected`
  - `BounceType_Undefined`
  - `BounceType_TemporaryFailure`

-}
type BounceType
    = BounceType_DoesNotExist
    | BounceType_MessageTooLarge
    | BounceType_ExceededQuota
    | BounceType_ContentRejected
    | BounceType_Undefined
    | BounceType_TemporaryFailure


bounceTypeDecoder : JD.Decoder BounceType
bounceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DoesNotExist" ->
                        JD.succeed BounceType_DoesNotExist

                    "MessageTooLarge" ->
                        JD.succeed BounceType_MessageTooLarge

                    "ExceededQuota" ->
                        JD.succeed BounceType_ExceededQuota

                    "ContentRejected" ->
                        JD.succeed BounceType_ContentRejected

                    "Undefined" ->
                        JD.succeed BounceType_Undefined

                    "TemporaryFailure" ->
                        JD.succeed BounceType_TemporaryFailure

                    _ ->
                        JD.fail "bad thing"
            )


bounceTypeToString : BounceType -> String
bounceTypeToString val =
    case val of
        BounceType_DoesNotExist ->
            "DoesNotExist"

        BounceType_MessageTooLarge ->
            "MessageTooLarge"

        BounceType_ExceededQuota ->
            "ExceededQuota"

        BounceType_ContentRejected ->
            "ContentRejected"

        BounceType_Undefined ->
            "Undefined"

        BounceType_TemporaryFailure ->
            "TemporaryFailure"


{-|

<p>Recipient-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>

-}
type alias BouncedRecipientInfo =
    { recipient : String
    , recipientArn : Maybe String
    , bounceType : Maybe BounceType
    , recipientDsnFields : Maybe RecipientDsnFields
    }


bouncedRecipientInfoDecoder : JD.Decoder BouncedRecipientInfo
bouncedRecipientInfoDecoder =
    JD.succeed BouncedRecipientInfo
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Recipient", "recipient" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RecipientArn", "recipientArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BounceType", "bounceType" ]
                bounceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RecipientDsnFields", "recipientDsnFields" ]
                recipientDsnFieldsDecoder
            )


bouncedRecipientInfoToString :
    BouncedRecipientInfo
    -> String -- List (String, String)
bouncedRecipientInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "recipient" "" -- val.recipient
    --     |> Dict.insert
    --         "recipientArn" "" -- val.recipientArn
    --     |> Dict.insert
    --         "bounceType" "" -- val.bounceType
    --     |> Dict.insert
    --         "recipientDsnFields" "" -- val.recipientDsnFields
    --     |> Dict.toList
    ""


{-|

<p>An array that contains one or more Destinations, as well as the tags and replacement data associated with each of those Destinations.</p>

-}
type alias BulkEmailDestination =
    { destination : Destination
    , replacementTags : Maybe (List MessageTag)
    , replacementTemplateData : Maybe String
    }


bulkEmailDestinationDecoder : JD.Decoder BulkEmailDestination
bulkEmailDestinationDecoder =
    JD.succeed BulkEmailDestination
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Destination", "destination" ]
                destinationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplacementTags", "replacementTags" ]
                (JD.list messageTagDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplacementTemplateData", "replacementTemplateData" ]
                JD.string
            )


bulkEmailDestinationToString :
    BulkEmailDestination
    -> String -- List (String, String)
bulkEmailDestinationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "destination" "" -- val.destination
    --     |> Dict.insert
    --         "replacementTags" "" -- val.replacementTags
    --     |> Dict.insert
    --         "replacementTemplateData" "" -- val.replacementTemplateData
    --     |> Dict.toList
    ""


{-|

<p>An object that contains the response from the <code>SendBulkTemplatedEmail</code> operation.</p>

-}
type alias BulkEmailDestinationStatus =
    { status : Maybe BulkEmailStatus
    , error : Maybe String
    , messageId : Maybe String
    }


bulkEmailDestinationStatusDecoder : JD.Decoder BulkEmailDestinationStatus
bulkEmailDestinationStatusDecoder =
    JD.succeed BulkEmailDestinationStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                bulkEmailStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Error", "error" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MessageId", "messageId" ]
                JD.string
            )


bulkEmailDestinationStatusToString :
    BulkEmailDestinationStatus
    -> String -- List (String, String)
bulkEmailDestinationStatusToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "status" "" -- val.status
    --     |> Dict.insert
    --         "error" "" -- val.error
    --     |> Dict.insert
    --         "messageId" "" -- val.messageId
    --     |> Dict.toList
    ""


{-| One of

  - `BulkEmailStatus_Success`
  - `BulkEmailStatus_MessageRejected`
  - `BulkEmailStatus_MailFromDomainNotVerified`
  - `BulkEmailStatus_ConfigurationSetDoesNotExist`
  - `BulkEmailStatus_TemplateDoesNotExist`
  - `BulkEmailStatus_AccountSuspended`
  - `BulkEmailStatus_AccountThrottled`
  - `BulkEmailStatus_AccountDailyQuotaExceeded`
  - `BulkEmailStatus_InvalidSendingPoolName`
  - `BulkEmailStatus_AccountSendingPaused`
  - `BulkEmailStatus_ConfigurationSetSendingPaused`
  - `BulkEmailStatus_InvalidParameterValue`
  - `BulkEmailStatus_TransientFailure`
  - `BulkEmailStatus_Failed`

-}
type BulkEmailStatus
    = BulkEmailStatus_Success
    | BulkEmailStatus_MessageRejected
    | BulkEmailStatus_MailFromDomainNotVerified
    | BulkEmailStatus_ConfigurationSetDoesNotExist
    | BulkEmailStatus_TemplateDoesNotExist
    | BulkEmailStatus_AccountSuspended
    | BulkEmailStatus_AccountThrottled
    | BulkEmailStatus_AccountDailyQuotaExceeded
    | BulkEmailStatus_InvalidSendingPoolName
    | BulkEmailStatus_AccountSendingPaused
    | BulkEmailStatus_ConfigurationSetSendingPaused
    | BulkEmailStatus_InvalidParameterValue
    | BulkEmailStatus_TransientFailure
    | BulkEmailStatus_Failed


bulkEmailStatusDecoder : JD.Decoder BulkEmailStatus
bulkEmailStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Success" ->
                        JD.succeed BulkEmailStatus_Success

                    "MessageRejected" ->
                        JD.succeed BulkEmailStatus_MessageRejected

                    "MailFromDomainNotVerified" ->
                        JD.succeed BulkEmailStatus_MailFromDomainNotVerified

                    "ConfigurationSetDoesNotExist" ->
                        JD.succeed BulkEmailStatus_ConfigurationSetDoesNotExist

                    "TemplateDoesNotExist" ->
                        JD.succeed BulkEmailStatus_TemplateDoesNotExist

                    "AccountSuspended" ->
                        JD.succeed BulkEmailStatus_AccountSuspended

                    "AccountThrottled" ->
                        JD.succeed BulkEmailStatus_AccountThrottled

                    "AccountDailyQuotaExceeded" ->
                        JD.succeed BulkEmailStatus_AccountDailyQuotaExceeded

                    "InvalidSendingPoolName" ->
                        JD.succeed BulkEmailStatus_InvalidSendingPoolName

                    "AccountSendingPaused" ->
                        JD.succeed BulkEmailStatus_AccountSendingPaused

                    "ConfigurationSetSendingPaused" ->
                        JD.succeed BulkEmailStatus_ConfigurationSetSendingPaused

                    "InvalidParameterValue" ->
                        JD.succeed BulkEmailStatus_InvalidParameterValue

                    "TransientFailure" ->
                        JD.succeed BulkEmailStatus_TransientFailure

                    "Failed" ->
                        JD.succeed BulkEmailStatus_Failed

                    _ ->
                        JD.fail "bad thing"
            )


bulkEmailStatusToString : BulkEmailStatus -> String
bulkEmailStatusToString val =
    case val of
        BulkEmailStatus_Success ->
            "Success"

        BulkEmailStatus_MessageRejected ->
            "MessageRejected"

        BulkEmailStatus_MailFromDomainNotVerified ->
            "MailFromDomainNotVerified"

        BulkEmailStatus_ConfigurationSetDoesNotExist ->
            "ConfigurationSetDoesNotExist"

        BulkEmailStatus_TemplateDoesNotExist ->
            "TemplateDoesNotExist"

        BulkEmailStatus_AccountSuspended ->
            "AccountSuspended"

        BulkEmailStatus_AccountThrottled ->
            "AccountThrottled"

        BulkEmailStatus_AccountDailyQuotaExceeded ->
            "AccountDailyQuotaExceeded"

        BulkEmailStatus_InvalidSendingPoolName ->
            "InvalidSendingPoolName"

        BulkEmailStatus_AccountSendingPaused ->
            "AccountSendingPaused"

        BulkEmailStatus_ConfigurationSetSendingPaused ->
            "ConfigurationSetSendingPaused"

        BulkEmailStatus_InvalidParameterValue ->
            "InvalidParameterValue"

        BulkEmailStatus_TransientFailure ->
            "TransientFailure"

        BulkEmailStatus_Failed ->
            "Failed"


{-| Type of HTTP response from cloneReceiptRuleSet
-}
type alias CloneReceiptRuleSetResponse =
    {}


cloneReceiptRuleSetResponseDecoder : JD.Decoder CloneReceiptRuleSetResponse
cloneReceiptRuleSetResponseDecoder =
    JD.succeed CloneReceiptRuleSetResponse


cloneReceiptRuleSetResponseToString :
    CloneReceiptRuleSetResponse
    -> String -- List (String, String)
cloneReceiptRuleSetResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-|

<p>Contains information associated with an Amazon CloudWatch event destination to which email sending events are published.</p> <p>Event destinations, such as Amazon CloudWatch, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

-}
type alias CloudWatchDestination =
    { dimensionConfigurations : List CloudWatchDimensionConfiguration
    }


cloudWatchDestinationDecoder : JD.Decoder CloudWatchDestination
cloudWatchDestinationDecoder =
    JD.succeed CloudWatchDestination
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DimensionConfigurations", "dimensionConfigurations" ]
                (JD.list cloudWatchDimensionConfigurationDecoder)
            )


cloudWatchDestinationToString :
    CloudWatchDestination
    -> String -- List (String, String)
cloudWatchDestinationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "dimensionConfigurations" "" -- val.dimensionConfigurations
    --     |> Dict.toList
    ""


{-|

<p>Contains the dimension configuration to use when you publish email sending events to Amazon CloudWatch.</p> <p>For information about publishing email sending events to Amazon CloudWatch, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

-}
type alias CloudWatchDimensionConfiguration =
    { dimensionName : String
    , dimensionValueSource : DimensionValueSource
    , defaultDimensionValue : String
    }


cloudWatchDimensionConfigurationDecoder : JD.Decoder CloudWatchDimensionConfiguration
cloudWatchDimensionConfigurationDecoder =
    JD.succeed CloudWatchDimensionConfiguration
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DimensionName", "dimensionName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DimensionValueSource", "dimensionValueSource" ]
                dimensionValueSourceDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DefaultDimensionValue", "defaultDimensionValue" ]
                JD.string
            )


cloudWatchDimensionConfigurationToString :
    CloudWatchDimensionConfiguration
    -> String -- List (String, String)
cloudWatchDimensionConfigurationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "dimensionName" "" -- val.dimensionName
    --     |> Dict.insert
    --         "dimensionValueSource" "" -- val.dimensionValueSource
    --     |> Dict.insert
    --         "defaultDimensionValue" "" -- val.defaultDimensionValue
    --     |> Dict.toList
    ""


{-|

<p>The name of the configuration set.</p> <p>Configuration sets let you create groups of rules that you can apply to the emails you send using Amazon SES. For more information about using configuration sets, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/using-configuration-sets.html">Using Amazon SES Configuration Sets</a> in the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/">Amazon SES Developer Guide</a>.</p>

-}
type alias ConfigurationSet =
    { name : String
    }


configurationSetDecoder : JD.Decoder ConfigurationSet
configurationSetDecoder =
    JD.succeed ConfigurationSet
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )


configurationSetToString :
    ConfigurationSet
    -> String -- List (String, String)
configurationSetToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.toList
    ""


{-| One of

  - `ConfigurationSetAttribute_eventDestinations`
  - `ConfigurationSetAttribute_trackingOptions`
  - `ConfigurationSetAttribute_deliveryOptions`
  - `ConfigurationSetAttribute_reputationOptions`

-}
type ConfigurationSetAttribute
    = ConfigurationSetAttribute_eventDestinations
    | ConfigurationSetAttribute_trackingOptions
    | ConfigurationSetAttribute_deliveryOptions
    | ConfigurationSetAttribute_reputationOptions


configurationSetAttributeDecoder : JD.Decoder ConfigurationSetAttribute
configurationSetAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "eventDestinations" ->
                        JD.succeed ConfigurationSetAttribute_eventDestinations

                    "trackingOptions" ->
                        JD.succeed ConfigurationSetAttribute_trackingOptions

                    "deliveryOptions" ->
                        JD.succeed ConfigurationSetAttribute_deliveryOptions

                    "reputationOptions" ->
                        JD.succeed ConfigurationSetAttribute_reputationOptions

                    _ ->
                        JD.fail "bad thing"
            )


configurationSetAttributeToString : ConfigurationSetAttribute -> String
configurationSetAttributeToString val =
    case val of
        ConfigurationSetAttribute_eventDestinations ->
            "eventDestinations"

        ConfigurationSetAttribute_trackingOptions ->
            "trackingOptions"

        ConfigurationSetAttribute_deliveryOptions ->
            "deliveryOptions"

        ConfigurationSetAttribute_reputationOptions ->
            "reputationOptions"


{-|

<p>Represents textual data, plus an optional character set specification.</p> <p>By default, the text must be 7-bit ASCII, due to the constraints of the SMTP protocol. If the text must contain any other characters, then you must also specify a character set. Examples include UTF-8, ISO-8859-1, and Shift_JIS.</p>

-}
type alias Content =
    { data : String
    , charset : Maybe String
    }


contentDecoder : JD.Decoder Content
contentDecoder =
    JD.succeed Content
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Data", "data" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Charset", "charset" ]
                JD.string
            )


contentToString :
    Content
    -> String -- List (String, String)
contentToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "data" "" -- val.data
    --     |> Dict.insert
    --         "charset" "" -- val.charset
    --     |> Dict.toList
    ""


{-| Type of HTTP response from createConfigurationSetEventDestination
-}
type alias CreateConfigurationSetEventDestinationResponse =
    {}


createConfigurationSetEventDestinationResponseDecoder : JD.Decoder CreateConfigurationSetEventDestinationResponse
createConfigurationSetEventDestinationResponseDecoder =
    JD.succeed CreateConfigurationSetEventDestinationResponse


createConfigurationSetEventDestinationResponseToString :
    CreateConfigurationSetEventDestinationResponse
    -> String -- List (String, String)
createConfigurationSetEventDestinationResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from createConfigurationSet
-}
type alias CreateConfigurationSetResponse =
    {}


createConfigurationSetResponseDecoder : JD.Decoder CreateConfigurationSetResponse
createConfigurationSetResponseDecoder =
    JD.succeed CreateConfigurationSetResponse


createConfigurationSetResponseToString :
    CreateConfigurationSetResponse
    -> String -- List (String, String)
createConfigurationSetResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from createConfigurationSetTrackingOptions
-}
type alias CreateConfigurationSetTrackingOptionsResponse =
    {}


createConfigurationSetTrackingOptionsResponseDecoder : JD.Decoder CreateConfigurationSetTrackingOptionsResponse
createConfigurationSetTrackingOptionsResponseDecoder =
    JD.succeed CreateConfigurationSetTrackingOptionsResponse


createConfigurationSetTrackingOptionsResponseToString :
    CreateConfigurationSetTrackingOptionsResponse
    -> String -- List (String, String)
createConfigurationSetTrackingOptionsResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from createReceiptFilter
-}
type alias CreateReceiptFilterResponse =
    {}


createReceiptFilterResponseDecoder : JD.Decoder CreateReceiptFilterResponse
createReceiptFilterResponseDecoder =
    JD.succeed CreateReceiptFilterResponse


createReceiptFilterResponseToString :
    CreateReceiptFilterResponse
    -> String -- List (String, String)
createReceiptFilterResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from createReceiptRule
-}
type alias CreateReceiptRuleResponse =
    {}


createReceiptRuleResponseDecoder : JD.Decoder CreateReceiptRuleResponse
createReceiptRuleResponseDecoder =
    JD.succeed CreateReceiptRuleResponse


createReceiptRuleResponseToString :
    CreateReceiptRuleResponse
    -> String -- List (String, String)
createReceiptRuleResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from createReceiptRuleSet
-}
type alias CreateReceiptRuleSetResponse =
    {}


createReceiptRuleSetResponseDecoder : JD.Decoder CreateReceiptRuleSetResponse
createReceiptRuleSetResponseDecoder =
    JD.succeed CreateReceiptRuleSetResponse


createReceiptRuleSetResponseToString :
    CreateReceiptRuleSetResponse
    -> String -- List (String, String)
createReceiptRuleSetResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from createTemplate
-}
type alias CreateTemplateResponse =
    {}


createTemplateResponseDecoder : JD.Decoder CreateTemplateResponse
createTemplateResponseDecoder =
    JD.succeed CreateTemplateResponse


createTemplateResponseToString :
    CreateTemplateResponse
    -> String -- List (String, String)
createTemplateResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| One of

  - `CustomMailFromStatus_Pending`
  - `CustomMailFromStatus_Success`
  - `CustomMailFromStatus_Failed`
  - `CustomMailFromStatus_TemporaryFailure`

-}
type CustomMailFromStatus
    = CustomMailFromStatus_Pending
    | CustomMailFromStatus_Success
    | CustomMailFromStatus_Failed
    | CustomMailFromStatus_TemporaryFailure


customMailFromStatusDecoder : JD.Decoder CustomMailFromStatus
customMailFromStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed CustomMailFromStatus_Pending

                    "Success" ->
                        JD.succeed CustomMailFromStatus_Success

                    "Failed" ->
                        JD.succeed CustomMailFromStatus_Failed

                    "TemporaryFailure" ->
                        JD.succeed CustomMailFromStatus_TemporaryFailure

                    _ ->
                        JD.fail "bad thing"
            )


customMailFromStatusToString : CustomMailFromStatus -> String
customMailFromStatusToString val =
    case val of
        CustomMailFromStatus_Pending ->
            "Pending"

        CustomMailFromStatus_Success ->
            "Success"

        CustomMailFromStatus_Failed ->
            "Failed"

        CustomMailFromStatus_TemporaryFailure ->
            "TemporaryFailure"


{-|

<p>Contains information about a custom verification email template.</p>

-}
type alias CustomVerificationEmailTemplate =
    { templateName : Maybe String
    , fromEmailAddress : Maybe String
    , templateSubject : Maybe String
    , successRedirectionURL : Maybe String
    , failureRedirectionURL : Maybe String
    }


customVerificationEmailTemplateDecoder : JD.Decoder CustomVerificationEmailTemplate
customVerificationEmailTemplateDecoder =
    JD.succeed CustomVerificationEmailTemplate
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TemplateName", "templateName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FromEmailAddress", "fromEmailAddress" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TemplateSubject", "templateSubject" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SuccessRedirectionURL", "successRedirectionURL" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FailureRedirectionURL", "failureRedirectionURL" ]
                JD.string
            )


customVerificationEmailTemplateToString :
    CustomVerificationEmailTemplate
    -> String -- List (String, String)
customVerificationEmailTemplateToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "templateName" "" -- val.templateName
    --     |> Dict.insert
    --         "fromEmailAddress" "" -- val.fromEmailAddress
    --     |> Dict.insert
    --         "templateSubject" "" -- val.templateSubject
    --     |> Dict.insert
    --         "successRedirectionURL" "" -- val.successRedirectionURL
    --     |> Dict.insert
    --         "failureRedirectionURL" "" -- val.failureRedirectionURL
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteConfigurationSetEventDestination
-}
type alias DeleteConfigurationSetEventDestinationResponse =
    {}


deleteConfigurationSetEventDestinationResponseDecoder : JD.Decoder DeleteConfigurationSetEventDestinationResponse
deleteConfigurationSetEventDestinationResponseDecoder =
    JD.succeed DeleteConfigurationSetEventDestinationResponse


deleteConfigurationSetEventDestinationResponseToString :
    DeleteConfigurationSetEventDestinationResponse
    -> String -- List (String, String)
deleteConfigurationSetEventDestinationResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteConfigurationSet
-}
type alias DeleteConfigurationSetResponse =
    {}


deleteConfigurationSetResponseDecoder : JD.Decoder DeleteConfigurationSetResponse
deleteConfigurationSetResponseDecoder =
    JD.succeed DeleteConfigurationSetResponse


deleteConfigurationSetResponseToString :
    DeleteConfigurationSetResponse
    -> String -- List (String, String)
deleteConfigurationSetResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteConfigurationSetTrackingOptions
-}
type alias DeleteConfigurationSetTrackingOptionsResponse =
    {}


deleteConfigurationSetTrackingOptionsResponseDecoder : JD.Decoder DeleteConfigurationSetTrackingOptionsResponse
deleteConfigurationSetTrackingOptionsResponseDecoder =
    JD.succeed DeleteConfigurationSetTrackingOptionsResponse


deleteConfigurationSetTrackingOptionsResponseToString :
    DeleteConfigurationSetTrackingOptionsResponse
    -> String -- List (String, String)
deleteConfigurationSetTrackingOptionsResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteIdentityPolicy
-}
type alias DeleteIdentityPolicyResponse =
    {}


deleteIdentityPolicyResponseDecoder : JD.Decoder DeleteIdentityPolicyResponse
deleteIdentityPolicyResponseDecoder =
    JD.succeed DeleteIdentityPolicyResponse


deleteIdentityPolicyResponseToString :
    DeleteIdentityPolicyResponse
    -> String -- List (String, String)
deleteIdentityPolicyResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteIdentity
-}
type alias DeleteIdentityResponse =
    {}


deleteIdentityResponseDecoder : JD.Decoder DeleteIdentityResponse
deleteIdentityResponseDecoder =
    JD.succeed DeleteIdentityResponse


deleteIdentityResponseToString :
    DeleteIdentityResponse
    -> String -- List (String, String)
deleteIdentityResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteReceiptFilter
-}
type alias DeleteReceiptFilterResponse =
    {}


deleteReceiptFilterResponseDecoder : JD.Decoder DeleteReceiptFilterResponse
deleteReceiptFilterResponseDecoder =
    JD.succeed DeleteReceiptFilterResponse


deleteReceiptFilterResponseToString :
    DeleteReceiptFilterResponse
    -> String -- List (String, String)
deleteReceiptFilterResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteReceiptRule
-}
type alias DeleteReceiptRuleResponse =
    {}


deleteReceiptRuleResponseDecoder : JD.Decoder DeleteReceiptRuleResponse
deleteReceiptRuleResponseDecoder =
    JD.succeed DeleteReceiptRuleResponse


deleteReceiptRuleResponseToString :
    DeleteReceiptRuleResponse
    -> String -- List (String, String)
deleteReceiptRuleResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteReceiptRuleSet
-}
type alias DeleteReceiptRuleSetResponse =
    {}


deleteReceiptRuleSetResponseDecoder : JD.Decoder DeleteReceiptRuleSetResponse
deleteReceiptRuleSetResponseDecoder =
    JD.succeed DeleteReceiptRuleSetResponse


deleteReceiptRuleSetResponseToString :
    DeleteReceiptRuleSetResponse
    -> String -- List (String, String)
deleteReceiptRuleSetResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteTemplate
-}
type alias DeleteTemplateResponse =
    {}


deleteTemplateResponseDecoder : JD.Decoder DeleteTemplateResponse
deleteTemplateResponseDecoder =
    JD.succeed DeleteTemplateResponse


deleteTemplateResponseToString :
    DeleteTemplateResponse
    -> String -- List (String, String)
deleteTemplateResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-|

<p>Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS).</p>

-}
type alias DeliveryOptions =
    { tlsPolicy : Maybe TlsPolicy
    }


deliveryOptionsDecoder : JD.Decoder DeliveryOptions
deliveryOptionsDecoder =
    JD.succeed DeliveryOptions
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TlsPolicy", "tlsPolicy" ]
                tlsPolicyDecoder
            )


deliveryOptionsToString :
    DeliveryOptions
    -> String -- List (String, String)
deliveryOptionsToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "tlsPolicy" "" -- val.tlsPolicy
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeActiveReceiptRuleSet
-}
type alias DescribeActiveReceiptRuleSetResponse =
    { metadata : Maybe ReceiptRuleSetMetadata
    , rules : Maybe (List ReceiptRule)
    }


describeActiveReceiptRuleSetResponseDecoder : JD.Decoder DescribeActiveReceiptRuleSetResponse
describeActiveReceiptRuleSetResponseDecoder =
    JD.succeed DescribeActiveReceiptRuleSetResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Metadata", "metadata" ]
                receiptRuleSetMetadataDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Rules", "rules" ]
                (JD.list receiptRuleDecoder)
            )


describeActiveReceiptRuleSetResponseToString :
    DescribeActiveReceiptRuleSetResponse
    -> String -- List (String, String)
describeActiveReceiptRuleSetResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "metadata" "" -- val.metadata
    --     |> Dict.insert
    --         "rules" "" -- val.rules
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeConfigurationSet
-}
type alias DescribeConfigurationSetResponse =
    { configurationSet : Maybe ConfigurationSet
    , eventDestinations : Maybe (List EventDestination)
    , trackingOptions : Maybe TrackingOptions
    , deliveryOptions : Maybe DeliveryOptions
    , reputationOptions : Maybe ReputationOptions
    }


describeConfigurationSetResponseDecoder : JD.Decoder DescribeConfigurationSetResponse
describeConfigurationSetResponseDecoder =
    JD.succeed DescribeConfigurationSetResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigurationSet", "configurationSet" ]
                configurationSetDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventDestinations", "eventDestinations" ]
                (JD.list eventDestinationDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrackingOptions", "trackingOptions" ]
                trackingOptionsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeliveryOptions", "deliveryOptions" ]
                deliveryOptionsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReputationOptions", "reputationOptions" ]
                reputationOptionsDecoder
            )


describeConfigurationSetResponseToString :
    DescribeConfigurationSetResponse
    -> String -- List (String, String)
describeConfigurationSetResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configurationSet" "" -- val.configurationSet
    --     |> Dict.insert
    --         "eventDestinations" "" -- val.eventDestinations
    --     |> Dict.insert
    --         "trackingOptions" "" -- val.trackingOptions
    --     |> Dict.insert
    --         "deliveryOptions" "" -- val.deliveryOptions
    --     |> Dict.insert
    --         "reputationOptions" "" -- val.reputationOptions
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeReceiptRule
-}
type alias DescribeReceiptRuleResponse =
    { rule : Maybe ReceiptRule
    }


describeReceiptRuleResponseDecoder : JD.Decoder DescribeReceiptRuleResponse
describeReceiptRuleResponseDecoder =
    JD.succeed DescribeReceiptRuleResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Rule", "rule" ]
                receiptRuleDecoder
            )


describeReceiptRuleResponseToString :
    DescribeReceiptRuleResponse
    -> String -- List (String, String)
describeReceiptRuleResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "rule" "" -- val.rule
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeReceiptRuleSet
-}
type alias DescribeReceiptRuleSetResponse =
    { metadata : Maybe ReceiptRuleSetMetadata
    , rules : Maybe (List ReceiptRule)
    }


describeReceiptRuleSetResponseDecoder : JD.Decoder DescribeReceiptRuleSetResponse
describeReceiptRuleSetResponseDecoder =
    JD.succeed DescribeReceiptRuleSetResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Metadata", "metadata" ]
                receiptRuleSetMetadataDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Rules", "rules" ]
                (JD.list receiptRuleDecoder)
            )


describeReceiptRuleSetResponseToString :
    DescribeReceiptRuleSetResponse
    -> String -- List (String, String)
describeReceiptRuleSetResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "metadata" "" -- val.metadata
    --     |> Dict.insert
    --         "rules" "" -- val.rules
    --     |> Dict.toList
    ""


{-|

<p>Represents the destination of the message, consisting of To:, CC:, and BCC: fields.</p> <note> <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the <i>local part</i> of a destination email address (the part of the email address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address#Local-part">7-bit ASCII characters</a>. If the <i>domain part</i> of an address (the part after the @ sign) contains non-ASCII characters, they must be encoded using Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>.</p> </note>

-}
type alias Destination =
    { toAddresses : Maybe (List String)
    , ccAddresses : Maybe (List String)
    , bccAddresses : Maybe (List String)
    }


destinationDecoder : JD.Decoder Destination
destinationDecoder =
    JD.succeed Destination
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ToAddresses", "toAddresses" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CcAddresses", "ccAddresses" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BccAddresses", "bccAddresses" ]
                (JD.list JD.string)
            )


destinationToString :
    Destination
    -> String -- List (String, String)
destinationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "toAddresses" "" -- val.toAddresses
    --     |> Dict.insert
    --         "ccAddresses" "" -- val.ccAddresses
    --     |> Dict.insert
    --         "bccAddresses" "" -- val.bccAddresses
    --     |> Dict.toList
    ""


{-| One of

  - `DimensionValueSource_messageTag`
  - `DimensionValueSource_emailHeader`
  - `DimensionValueSource_linkTag`

-}
type DimensionValueSource
    = DimensionValueSource_messageTag
    | DimensionValueSource_emailHeader
    | DimensionValueSource_linkTag


dimensionValueSourceDecoder : JD.Decoder DimensionValueSource
dimensionValueSourceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "messageTag" ->
                        JD.succeed DimensionValueSource_messageTag

                    "emailHeader" ->
                        JD.succeed DimensionValueSource_emailHeader

                    "linkTag" ->
                        JD.succeed DimensionValueSource_linkTag

                    _ ->
                        JD.fail "bad thing"
            )


dimensionValueSourceToString : DimensionValueSource -> String
dimensionValueSourceToString val =
    case val of
        DimensionValueSource_messageTag ->
            "messageTag"

        DimensionValueSource_emailHeader ->
            "emailHeader"

        DimensionValueSource_linkTag ->
            "linkTag"


{-| One of

  - `DsnAction_failed`
  - `DsnAction_delayed`
  - `DsnAction_delivered`
  - `DsnAction_relayed`
  - `DsnAction_expanded`

-}
type DsnAction
    = DsnAction_failed
    | DsnAction_delayed
    | DsnAction_delivered
    | DsnAction_relayed
    | DsnAction_expanded


dsnActionDecoder : JD.Decoder DsnAction
dsnActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "failed" ->
                        JD.succeed DsnAction_failed

                    "delayed" ->
                        JD.succeed DsnAction_delayed

                    "delivered" ->
                        JD.succeed DsnAction_delivered

                    "relayed" ->
                        JD.succeed DsnAction_relayed

                    "expanded" ->
                        JD.succeed DsnAction_expanded

                    _ ->
                        JD.fail "bad thing"
            )


dsnActionToString : DsnAction -> String
dsnActionToString val =
    case val of
        DsnAction_failed ->
            "failed"

        DsnAction_delayed ->
            "delayed"

        DsnAction_delivered ->
            "delivered"

        DsnAction_relayed ->
            "relayed"

        DsnAction_expanded ->
            "expanded"


{-|

<p>Contains information about the event destination that the specified email sending events will be published to.</p> <note> <p>When you create or update an event destination, you must provide one, and only one, destination. The destination can be Amazon CloudWatch, Amazon Kinesis Firehose or Amazon Simple Notification Service (Amazon SNS).</p> </note> <p>Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS). For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

-}
type alias EventDestination =
    { name : String
    , enabled : Maybe Bool
    , matchingEventTypes : List EventType
    , kinesisFirehoseDestination : Maybe KinesisFirehoseDestination
    , cloudWatchDestination : Maybe CloudWatchDestination
    , sNSDestination : Maybe SNSDestination
    }


eventDestinationDecoder : JD.Decoder EventDestination
eventDestinationDecoder =
    JD.succeed EventDestination
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Enabled", "enabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "MatchingEventTypes", "matchingEventTypes" ]
                (JD.list eventTypeDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KinesisFirehoseDestination", "kinesisFirehoseDestination" ]
                kinesisFirehoseDestinationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudWatchDestination", "cloudWatchDestination" ]
                cloudWatchDestinationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SNSDestination", "sNSDestination" ]
                sNSDestinationDecoder
            )


eventDestinationToString :
    EventDestination
    -> String -- List (String, String)
eventDestinationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
    --     |> Dict.insert
    --         "matchingEventTypes" "" -- val.matchingEventTypes
    --     |> Dict.insert
    --         "kinesisFirehoseDestination" "" -- val.kinesisFirehoseDestination
    --     |> Dict.insert
    --         "cloudWatchDestination" "" -- val.cloudWatchDestination
    --     |> Dict.insert
    --         "sNSDestination" "" -- val.sNSDestination
    --     |> Dict.toList
    ""


{-| One of

  - `EventType_send`
  - `EventType_reject`
  - `EventType_bounce`
  - `EventType_complaint`
  - `EventType_delivery`
  - `EventType_open`
  - `EventType_click`
  - `EventType_renderingFailure`

-}
type EventType
    = EventType_send
    | EventType_reject
    | EventType_bounce
    | EventType_complaint
    | EventType_delivery
    | EventType_open
    | EventType_click
    | EventType_renderingFailure


eventTypeDecoder : JD.Decoder EventType
eventTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "send" ->
                        JD.succeed EventType_send

                    "reject" ->
                        JD.succeed EventType_reject

                    "bounce" ->
                        JD.succeed EventType_bounce

                    "complaint" ->
                        JD.succeed EventType_complaint

                    "delivery" ->
                        JD.succeed EventType_delivery

                    "open" ->
                        JD.succeed EventType_open

                    "click" ->
                        JD.succeed EventType_click

                    "renderingFailure" ->
                        JD.succeed EventType_renderingFailure

                    _ ->
                        JD.fail "bad thing"
            )


eventTypeToString : EventType -> String
eventTypeToString val =
    case val of
        EventType_send ->
            "send"

        EventType_reject ->
            "reject"

        EventType_bounce ->
            "bounce"

        EventType_complaint ->
            "complaint"

        EventType_delivery ->
            "delivery"

        EventType_open ->
            "open"

        EventType_click ->
            "click"

        EventType_renderingFailure ->
            "renderingFailure"


{-|

<p>Additional X-headers to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>

-}
type alias ExtensionField =
    { name : String
    , value : String
    }


extensionFieldDecoder : JD.Decoder ExtensionField
extensionFieldDecoder =
    JD.succeed ExtensionField
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Value", "value" ]
                JD.string
            )


extensionFieldToString :
    ExtensionField
    -> String -- List (String, String)
extensionFieldToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.insert
    --         "value" "" -- val.value
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getAccountSendingEnabled
-}
type alias GetAccountSendingEnabledResponse =
    { enabled : Maybe Bool
    }


getAccountSendingEnabledResponseDecoder : JD.Decoder GetAccountSendingEnabledResponse
getAccountSendingEnabledResponseDecoder =
    JD.succeed GetAccountSendingEnabledResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Enabled", "enabled" ]
                JD.bool
            )


getAccountSendingEnabledResponseToString :
    GetAccountSendingEnabledResponse
    -> String -- List (String, String)
getAccountSendingEnabledResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getCustomVerificationEmailTemplate
-}
type alias GetCustomVerificationEmailTemplateResponse =
    { templateName : Maybe String
    , fromEmailAddress : Maybe String
    , templateSubject : Maybe String
    , templateContent : Maybe String
    , successRedirectionURL : Maybe String
    , failureRedirectionURL : Maybe String
    }


getCustomVerificationEmailTemplateResponseDecoder : JD.Decoder GetCustomVerificationEmailTemplateResponse
getCustomVerificationEmailTemplateResponseDecoder =
    JD.succeed GetCustomVerificationEmailTemplateResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TemplateName", "templateName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FromEmailAddress", "fromEmailAddress" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TemplateSubject", "templateSubject" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TemplateContent", "templateContent" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SuccessRedirectionURL", "successRedirectionURL" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FailureRedirectionURL", "failureRedirectionURL" ]
                JD.string
            )


getCustomVerificationEmailTemplateResponseToString :
    GetCustomVerificationEmailTemplateResponse
    -> String -- List (String, String)
getCustomVerificationEmailTemplateResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "templateName" "" -- val.templateName
    --     |> Dict.insert
    --         "fromEmailAddress" "" -- val.fromEmailAddress
    --     |> Dict.insert
    --         "templateSubject" "" -- val.templateSubject
    --     |> Dict.insert
    --         "templateContent" "" -- val.templateContent
    --     |> Dict.insert
    --         "successRedirectionURL" "" -- val.successRedirectionURL
    --     |> Dict.insert
    --         "failureRedirectionURL" "" -- val.failureRedirectionURL
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getIdentityDkimAttributes
-}
type alias GetIdentityDkimAttributesResponse =
    { dkimAttributes : Dict String IdentityDkimAttributes
    }


getIdentityDkimAttributesResponseDecoder : JD.Decoder GetIdentityDkimAttributesResponse
getIdentityDkimAttributesResponseDecoder =
    JD.succeed GetIdentityDkimAttributesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DkimAttributes", "dkimAttributes" ]
                (AWS.Core.Decode.dict identityDkimAttributesDecoder)
            )


getIdentityDkimAttributesResponseToString :
    GetIdentityDkimAttributesResponse
    -> String -- List (String, String)
getIdentityDkimAttributesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "dkimAttributes" "" -- val.dkimAttributes
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getIdentityMailFromDomainAttributes
-}
type alias GetIdentityMailFromDomainAttributesResponse =
    { mailFromDomainAttributes : Dict String IdentityMailFromDomainAttributes
    }


getIdentityMailFromDomainAttributesResponseDecoder : JD.Decoder GetIdentityMailFromDomainAttributesResponse
getIdentityMailFromDomainAttributesResponseDecoder =
    JD.succeed GetIdentityMailFromDomainAttributesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "MailFromDomainAttributes", "mailFromDomainAttributes" ]
                (AWS.Core.Decode.dict identityMailFromDomainAttributesDecoder)
            )


getIdentityMailFromDomainAttributesResponseToString :
    GetIdentityMailFromDomainAttributesResponse
    -> String -- List (String, String)
getIdentityMailFromDomainAttributesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "mailFromDomainAttributes" "" -- val.mailFromDomainAttributes
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getIdentityNotificationAttributes
-}
type alias GetIdentityNotificationAttributesResponse =
    { notificationAttributes : Dict String IdentityNotificationAttributes
    }


getIdentityNotificationAttributesResponseDecoder : JD.Decoder GetIdentityNotificationAttributesResponse
getIdentityNotificationAttributesResponseDecoder =
    JD.succeed GetIdentityNotificationAttributesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "NotificationAttributes", "notificationAttributes" ]
                (AWS.Core.Decode.dict identityNotificationAttributesDecoder)
            )


getIdentityNotificationAttributesResponseToString :
    GetIdentityNotificationAttributesResponse
    -> String -- List (String, String)
getIdentityNotificationAttributesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "notificationAttributes" "" -- val.notificationAttributes
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getIdentityPolicies
-}
type alias GetIdentityPoliciesResponse =
    { policies : Dict String String
    }


getIdentityPoliciesResponseDecoder : JD.Decoder GetIdentityPoliciesResponse
getIdentityPoliciesResponseDecoder =
    JD.succeed GetIdentityPoliciesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Policies", "policies" ]
                (AWS.Core.Decode.dict JD.string)
            )


getIdentityPoliciesResponseToString :
    GetIdentityPoliciesResponse
    -> String -- List (String, String)
getIdentityPoliciesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "policies" "" -- val.policies
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getIdentityVerificationAttributes
-}
type alias GetIdentityVerificationAttributesResponse =
    { verificationAttributes : Dict String IdentityVerificationAttributes
    }


getIdentityVerificationAttributesResponseDecoder : JD.Decoder GetIdentityVerificationAttributesResponse
getIdentityVerificationAttributesResponseDecoder =
    JD.succeed GetIdentityVerificationAttributesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "VerificationAttributes", "verificationAttributes" ]
                (AWS.Core.Decode.dict identityVerificationAttributesDecoder)
            )


getIdentityVerificationAttributesResponseToString :
    GetIdentityVerificationAttributesResponse
    -> String -- List (String, String)
getIdentityVerificationAttributesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "verificationAttributes" "" -- val.verificationAttributes
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getSendQuota
-}
type alias GetSendQuotaResponse =
    { max24HourSend : Maybe Float
    , maxSendRate : Maybe Float
    , sentLast24Hours : Maybe Float
    }


getSendQuotaResponseDecoder : JD.Decoder GetSendQuotaResponse
getSendQuotaResponseDecoder =
    JD.succeed GetSendQuotaResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Max24HourSend", "max24HourSend" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaxSendRate", "maxSendRate" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SentLast24Hours", "sentLast24Hours" ]
                JD.float
            )


getSendQuotaResponseToString :
    GetSendQuotaResponse
    -> String -- List (String, String)
getSendQuotaResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "max24HourSend" "" -- val.max24HourSend
    --     |> Dict.insert
    --         "maxSendRate" "" -- val.maxSendRate
    --     |> Dict.insert
    --         "sentLast24Hours" "" -- val.sentLast24Hours
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getSendStatistics
-}
type alias GetSendStatisticsResponse =
    { sendDataPoints : Maybe (List SendDataPoint)
    }


getSendStatisticsResponseDecoder : JD.Decoder GetSendStatisticsResponse
getSendStatisticsResponseDecoder =
    JD.succeed GetSendStatisticsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SendDataPoints", "sendDataPoints" ]
                (JD.list sendDataPointDecoder)
            )


getSendStatisticsResponseToString :
    GetSendStatisticsResponse
    -> String -- List (String, String)
getSendStatisticsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "sendDataPoints" "" -- val.sendDataPoints
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getTemplate
-}
type alias GetTemplateResponse =
    { template : Maybe Template
    }


getTemplateResponseDecoder : JD.Decoder GetTemplateResponse
getTemplateResponseDecoder =
    JD.succeed GetTemplateResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Template", "template" ]
                templateDecoder
            )


getTemplateResponseToString :
    GetTemplateResponse
    -> String -- List (String, String)
getTemplateResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "template" "" -- val.template
    --     |> Dict.toList
    ""


{-|

<p>Represents the DKIM attributes of a verified email address or a domain.</p>

-}
type alias IdentityDkimAttributes =
    { dkimEnabled : Bool
    , dkimVerificationStatus : VerificationStatus
    , dkimTokens : Maybe (List String)
    }


identityDkimAttributesDecoder : JD.Decoder IdentityDkimAttributes
identityDkimAttributesDecoder =
    JD.succeed IdentityDkimAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DkimEnabled", "dkimEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DkimVerificationStatus", "dkimVerificationStatus" ]
                verificationStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DkimTokens", "dkimTokens" ]
                (JD.list JD.string)
            )


identityDkimAttributesToString :
    IdentityDkimAttributes
    -> String -- List (String, String)
identityDkimAttributesToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "dkimEnabled" "" -- val.dkimEnabled
    --     |> Dict.insert
    --         "dkimVerificationStatus" "" -- val.dkimVerificationStatus
    --     |> Dict.insert
    --         "dkimTokens" "" -- val.dkimTokens
    --     |> Dict.toList
    ""


{-|

<p>Represents the custom MAIL FROM domain attributes of a verified identity (email address or domain).</p>

-}
type alias IdentityMailFromDomainAttributes =
    { mailFromDomain : String
    , mailFromDomainStatus : CustomMailFromStatus
    , behaviorOnMXFailure : BehaviorOnMXFailure
    }


identityMailFromDomainAttributesDecoder : JD.Decoder IdentityMailFromDomainAttributes
identityMailFromDomainAttributesDecoder =
    JD.succeed IdentityMailFromDomainAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "MailFromDomain", "mailFromDomain" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "MailFromDomainStatus", "mailFromDomainStatus" ]
                customMailFromStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "BehaviorOnMXFailure", "behaviorOnMXFailure" ]
                behaviorOnMXFailureDecoder
            )


identityMailFromDomainAttributesToString :
    IdentityMailFromDomainAttributes
    -> String -- List (String, String)
identityMailFromDomainAttributesToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "mailFromDomain" "" -- val.mailFromDomain
    --     |> Dict.insert
    --         "mailFromDomainStatus" "" -- val.mailFromDomainStatus
    --     |> Dict.insert
    --         "behaviorOnMXFailure" "" -- val.behaviorOnMXFailure
    --     |> Dict.toList
    ""


{-|

<p>Represents the notification attributes of an identity, including whether an identity has Amazon Simple Notification Service (Amazon SNS) topics set for bounce, complaint, and/or delivery notifications, and whether feedback forwarding is enabled for bounce and complaint notifications.</p>

-}
type alias IdentityNotificationAttributes =
    { bounceTopic : String
    , complaintTopic : String
    , deliveryTopic : String
    , forwardingEnabled : Bool
    , headersInBounceNotificationsEnabled : Maybe Bool
    , headersInComplaintNotificationsEnabled : Maybe Bool
    , headersInDeliveryNotificationsEnabled : Maybe Bool
    }


identityNotificationAttributesDecoder : JD.Decoder IdentityNotificationAttributes
identityNotificationAttributesDecoder =
    JD.succeed IdentityNotificationAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "BounceTopic", "bounceTopic" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ComplaintTopic", "complaintTopic" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DeliveryTopic", "deliveryTopic" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ForwardingEnabled", "forwardingEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HeadersInBounceNotificationsEnabled", "headersInBounceNotificationsEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HeadersInComplaintNotificationsEnabled", "headersInComplaintNotificationsEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HeadersInDeliveryNotificationsEnabled", "headersInDeliveryNotificationsEnabled" ]
                JD.bool
            )


identityNotificationAttributesToString :
    IdentityNotificationAttributes
    -> String -- List (String, String)
identityNotificationAttributesToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "bounceTopic" "" -- val.bounceTopic
    --     |> Dict.insert
    --         "complaintTopic" "" -- val.complaintTopic
    --     |> Dict.insert
    --         "deliveryTopic" "" -- val.deliveryTopic
    --     |> Dict.insert
    --         "forwardingEnabled" "" -- val.forwardingEnabled
    --     |> Dict.insert
    --         "headersInBounceNotificationsEnabled" "" -- val.headersInBounceNotificationsEnabled
    --     |> Dict.insert
    --         "headersInComplaintNotificationsEnabled" "" -- val.headersInComplaintNotificationsEnabled
    --     |> Dict.insert
    --         "headersInDeliveryNotificationsEnabled" "" -- val.headersInDeliveryNotificationsEnabled
    --     |> Dict.toList
    ""


{-| One of

  - `IdentityType_EmailAddress`
  - `IdentityType_Domain`

-}
type IdentityType
    = IdentityType_EmailAddress
    | IdentityType_Domain


identityTypeDecoder : JD.Decoder IdentityType
identityTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EmailAddress" ->
                        JD.succeed IdentityType_EmailAddress

                    "Domain" ->
                        JD.succeed IdentityType_Domain

                    _ ->
                        JD.fail "bad thing"
            )


identityTypeToString : IdentityType -> String
identityTypeToString val =
    case val of
        IdentityType_EmailAddress ->
            "EmailAddress"

        IdentityType_Domain ->
            "Domain"


{-|

<p>Represents the verification attributes of a single identity.</p>

-}
type alias IdentityVerificationAttributes =
    { verificationStatus : VerificationStatus
    , verificationToken : Maybe String
    }


identityVerificationAttributesDecoder : JD.Decoder IdentityVerificationAttributes
identityVerificationAttributesDecoder =
    JD.succeed IdentityVerificationAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "VerificationStatus", "verificationStatus" ]
                verificationStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VerificationToken", "verificationToken" ]
                JD.string
            )


identityVerificationAttributesToString :
    IdentityVerificationAttributes
    -> String -- List (String, String)
identityVerificationAttributesToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "verificationStatus" "" -- val.verificationStatus
    --     |> Dict.insert
    --         "verificationToken" "" -- val.verificationToken
    --     |> Dict.toList
    ""


{-| One of

  - `InvocationType_Event`
  - `InvocationType_RequestResponse`

-}
type InvocationType
    = InvocationType_Event
    | InvocationType_RequestResponse


invocationTypeDecoder : JD.Decoder InvocationType
invocationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Event" ->
                        JD.succeed InvocationType_Event

                    "RequestResponse" ->
                        JD.succeed InvocationType_RequestResponse

                    _ ->
                        JD.fail "bad thing"
            )


invocationTypeToString : InvocationType -> String
invocationTypeToString val =
    case val of
        InvocationType_Event ->
            "Event"

        InvocationType_RequestResponse ->
            "RequestResponse"


{-|

<p>Contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Firehose event destination.</p> <p>Event destinations, such as Amazon Kinesis Firehose, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

-}
type alias KinesisFirehoseDestination =
    { iAMRoleARN : String
    , deliveryStreamARN : String
    }


kinesisFirehoseDestinationDecoder : JD.Decoder KinesisFirehoseDestination
kinesisFirehoseDestinationDecoder =
    JD.succeed KinesisFirehoseDestination
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "IAMRoleARN", "iAMRoleARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DeliveryStreamARN", "deliveryStreamARN" ]
                JD.string
            )


kinesisFirehoseDestinationToString :
    KinesisFirehoseDestination
    -> String -- List (String, String)
kinesisFirehoseDestinationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "iAMRoleARN" "" -- val.iAMRoleARN
    --     |> Dict.insert
    --         "deliveryStreamARN" "" -- val.deliveryStreamARN
    --     |> Dict.toList
    ""


{-|

<p>When included in a receipt rule, this action calls an AWS Lambda function and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>To enable Amazon SES to call your AWS Lambda function or to publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources. For information about giving permissions, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <p>For information about using AWS Lambda actions in receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-lambda.html">Amazon SES Developer Guide</a>.</p>

-}
type alias LambdaAction =
    { topicArn : Maybe String
    , functionArn : String
    , invocationType : Maybe InvocationType
    }


lambdaActionDecoder : JD.Decoder LambdaAction
lambdaActionDecoder =
    JD.succeed LambdaAction
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TopicArn", "topicArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "FunctionArn", "functionArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InvocationType", "invocationType" ]
                invocationTypeDecoder
            )


lambdaActionToString :
    LambdaAction
    -> String -- List (String, String)
lambdaActionToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "topicArn" "" -- val.topicArn
    --     |> Dict.insert
    --         "functionArn" "" -- val.functionArn
    --     |> Dict.insert
    --         "invocationType" "" -- val.invocationType
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listConfigurationSets
-}
type alias ListConfigurationSetsResponse =
    { configurationSets : Maybe (List ConfigurationSet)
    , nextToken : Maybe String
    }


listConfigurationSetsResponseDecoder : JD.Decoder ListConfigurationSetsResponse
listConfigurationSetsResponseDecoder =
    JD.succeed ListConfigurationSetsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigurationSets", "configurationSets" ]
                (JD.list configurationSetDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


listConfigurationSetsResponseToString :
    ListConfigurationSetsResponse
    -> String -- List (String, String)
listConfigurationSetsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configurationSets" "" -- val.configurationSets
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listCustomVerificationEmailTemplates
-}
type alias ListCustomVerificationEmailTemplatesResponse =
    { customVerificationEmailTemplates : Maybe (List CustomVerificationEmailTemplate)
    , nextToken : Maybe String
    }


listCustomVerificationEmailTemplatesResponseDecoder : JD.Decoder ListCustomVerificationEmailTemplatesResponse
listCustomVerificationEmailTemplatesResponseDecoder =
    JD.succeed ListCustomVerificationEmailTemplatesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CustomVerificationEmailTemplates", "customVerificationEmailTemplates" ]
                (JD.list customVerificationEmailTemplateDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


listCustomVerificationEmailTemplatesResponseToString :
    ListCustomVerificationEmailTemplatesResponse
    -> String -- List (String, String)
listCustomVerificationEmailTemplatesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "customVerificationEmailTemplates" "" -- val.customVerificationEmailTemplates
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listIdentities
-}
type alias ListIdentitiesResponse =
    { identities : List String
    , nextToken : Maybe String
    }


listIdentitiesResponseDecoder : JD.Decoder ListIdentitiesResponse
listIdentitiesResponseDecoder =
    JD.succeed ListIdentitiesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Identities", "identities" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


listIdentitiesResponseToString :
    ListIdentitiesResponse
    -> String -- List (String, String)
listIdentitiesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identities" "" -- val.identities
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listIdentityPolicies
-}
type alias ListIdentityPoliciesResponse =
    { policyNames : List String
    }


listIdentityPoliciesResponseDecoder : JD.Decoder ListIdentityPoliciesResponse
listIdentityPoliciesResponseDecoder =
    JD.succeed ListIdentityPoliciesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PolicyNames", "policyNames" ]
                (JD.list JD.string)
            )


listIdentityPoliciesResponseToString :
    ListIdentityPoliciesResponse
    -> String -- List (String, String)
listIdentityPoliciesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "policyNames" "" -- val.policyNames
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listReceiptFilters
-}
type alias ListReceiptFiltersResponse =
    { filters : Maybe (List ReceiptFilter)
    }


listReceiptFiltersResponseDecoder : JD.Decoder ListReceiptFiltersResponse
listReceiptFiltersResponseDecoder =
    JD.succeed ListReceiptFiltersResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Filters", "filters" ]
                (JD.list receiptFilterDecoder)
            )


listReceiptFiltersResponseToString :
    ListReceiptFiltersResponse
    -> String -- List (String, String)
listReceiptFiltersResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "filters" "" -- val.filters
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listReceiptRuleSets
-}
type alias ListReceiptRuleSetsResponse =
    { ruleSets : Maybe (List ReceiptRuleSetMetadata)
    , nextToken : Maybe String
    }


listReceiptRuleSetsResponseDecoder : JD.Decoder ListReceiptRuleSetsResponse
listReceiptRuleSetsResponseDecoder =
    JD.succeed ListReceiptRuleSetsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RuleSets", "ruleSets" ]
                (JD.list receiptRuleSetMetadataDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


listReceiptRuleSetsResponseToString :
    ListReceiptRuleSetsResponse
    -> String -- List (String, String)
listReceiptRuleSetsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "ruleSets" "" -- val.ruleSets
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listTemplates
-}
type alias ListTemplatesResponse =
    { templatesMetadata : Maybe (List TemplateMetadata)
    , nextToken : Maybe String
    }


listTemplatesResponseDecoder : JD.Decoder ListTemplatesResponse
listTemplatesResponseDecoder =
    JD.succeed ListTemplatesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TemplatesMetadata", "templatesMetadata" ]
                (JD.list templateMetadataDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


listTemplatesResponseToString :
    ListTemplatesResponse
    -> String -- List (String, String)
listTemplatesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "templatesMetadata" "" -- val.templatesMetadata
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listVerifiedEmailAddresses
-}
type alias ListVerifiedEmailAddressesResponse =
    { verifiedEmailAddresses : Maybe (List String)
    }


listVerifiedEmailAddressesResponseDecoder : JD.Decoder ListVerifiedEmailAddressesResponse
listVerifiedEmailAddressesResponseDecoder =
    JD.succeed ListVerifiedEmailAddressesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VerifiedEmailAddresses", "verifiedEmailAddresses" ]
                (JD.list JD.string)
            )


listVerifiedEmailAddressesResponseToString :
    ListVerifiedEmailAddressesResponse
    -> String -- List (String, String)
listVerifiedEmailAddressesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "verifiedEmailAddresses" "" -- val.verifiedEmailAddresses
    --     |> Dict.toList
    ""


{-|

<p>Represents the message to be sent, composed of a subject and a body.</p>

-}
type alias Message =
    { subject : Content
    , body : Body
    }


messageDecoder : JD.Decoder Message
messageDecoder =
    JD.succeed Message
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Subject", "subject" ]
                contentDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Body", "body" ]
                bodyDecoder
            )


messageToString :
    Message
    -> String -- List (String, String)
messageToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "subject" "" -- val.subject
    --     |> Dict.insert
    --         "body" "" -- val.body
    --     |> Dict.toList
    ""


{-|

<p>Message-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>

-}
type alias MessageDsn =
    { reportingMta : String
    , arrivalDate : Maybe Posix
    , extensionFields : Maybe (List ExtensionField)
    }


messageDsnDecoder : JD.Decoder MessageDsn
messageDsnDecoder =
    JD.succeed MessageDsn
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ReportingMta", "reportingMta" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ArrivalDate", "arrivalDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExtensionFields", "extensionFields" ]
                (JD.list extensionFieldDecoder)
            )


messageDsnToString :
    MessageDsn
    -> String -- List (String, String)
messageDsnToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "reportingMta" "" -- val.reportingMta
    --     |> Dict.insert
    --         "arrivalDate" "" -- val.arrivalDate
    --     |> Dict.insert
    --         "extensionFields" "" -- val.extensionFields
    --     |> Dict.toList
    ""


{-|

<p>Contains the name and value of a tag that you can provide to <code>SendEmail</code> or <code>SendRawEmail</code> to apply to an email.</p> <p>Message tags, which you use with configuration sets, enable you to publish email sending events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

-}
type alias MessageTag =
    { name : String
    , value : String
    }


messageTagDecoder : JD.Decoder MessageTag
messageTagDecoder =
    JD.succeed MessageTag
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Value", "value" ]
                JD.string
            )


messageTagToString :
    MessageTag
    -> String -- List (String, String)
messageTagToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.insert
    --         "value" "" -- val.value
    --     |> Dict.toList
    ""


{-| One of

  - `NotificationType_Bounce`
  - `NotificationType_Complaint`
  - `NotificationType_Delivery`

-}
type NotificationType
    = NotificationType_Bounce
    | NotificationType_Complaint
    | NotificationType_Delivery


notificationTypeDecoder : JD.Decoder NotificationType
notificationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Bounce" ->
                        JD.succeed NotificationType_Bounce

                    "Complaint" ->
                        JD.succeed NotificationType_Complaint

                    "Delivery" ->
                        JD.succeed NotificationType_Delivery

                    _ ->
                        JD.fail "bad thing"
            )


notificationTypeToString : NotificationType -> String
notificationTypeToString val =
    case val of
        NotificationType_Bounce ->
            "Bounce"

        NotificationType_Complaint ->
            "Complaint"

        NotificationType_Delivery ->
            "Delivery"


{-| Type of HTTP response from putConfigurationSetDeliveryOptions
-}
type alias PutConfigurationSetDeliveryOptionsResponse =
    {}


putConfigurationSetDeliveryOptionsResponseDecoder : JD.Decoder PutConfigurationSetDeliveryOptionsResponse
putConfigurationSetDeliveryOptionsResponseDecoder =
    JD.succeed PutConfigurationSetDeliveryOptionsResponse


putConfigurationSetDeliveryOptionsResponseToString :
    PutConfigurationSetDeliveryOptionsResponse
    -> String -- List (String, String)
putConfigurationSetDeliveryOptionsResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from putIdentityPolicy
-}
type alias PutIdentityPolicyResponse =
    {}


putIdentityPolicyResponseDecoder : JD.Decoder PutIdentityPolicyResponse
putIdentityPolicyResponseDecoder =
    JD.succeed PutIdentityPolicyResponse


putIdentityPolicyResponseToString :
    PutIdentityPolicyResponse
    -> String -- List (String, String)
putIdentityPolicyResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-|

<p>Represents the raw data of the message.</p>

-}
type alias RawMessage =
    { data : String
    }


rawMessageDecoder : JD.Decoder RawMessage
rawMessageDecoder =
    JD.succeed RawMessage
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Data", "data" ]
                JD.string
            )


rawMessageToString :
    RawMessage
    -> String -- List (String, String)
rawMessageToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "data" "" -- val.data
    --     |> Dict.toList
    ""


{-|

<p>An action that Amazon SES can take when it receives an email on behalf of one or more email addresses or domains that you own. An instance of this data type can represent only one action.</p> <p>For information about setting up receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p>

-}
type alias ReceiptAction =
    { s3Action : Maybe S3Action
    , bounceAction : Maybe BounceAction
    , workmailAction : Maybe WorkmailAction
    , lambdaAction : Maybe LambdaAction
    , stopAction : Maybe StopAction
    , addHeaderAction : Maybe AddHeaderAction
    , sNSAction : Maybe SNSAction
    }


receiptActionDecoder : JD.Decoder ReceiptAction
receiptActionDecoder =
    JD.succeed ReceiptAction
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "S3Action", "s3Action" ]
                s3ActionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BounceAction", "bounceAction" ]
                bounceActionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "WorkmailAction", "workmailAction" ]
                workmailActionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LambdaAction", "lambdaAction" ]
                lambdaActionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StopAction", "stopAction" ]
                stopActionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AddHeaderAction", "addHeaderAction" ]
                addHeaderActionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SNSAction", "sNSAction" ]
                sNSActionDecoder
            )


receiptActionToString :
    ReceiptAction
    -> String -- List (String, String)
receiptActionToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "s3Action" "" -- val.s3Action
    --     |> Dict.insert
    --         "bounceAction" "" -- val.bounceAction
    --     |> Dict.insert
    --         "workmailAction" "" -- val.workmailAction
    --     |> Dict.insert
    --         "lambdaAction" "" -- val.lambdaAction
    --     |> Dict.insert
    --         "stopAction" "" -- val.stopAction
    --     |> Dict.insert
    --         "addHeaderAction" "" -- val.addHeaderAction
    --     |> Dict.insert
    --         "sNSAction" "" -- val.sNSAction
    --     |> Dict.toList
    ""


{-|

<p>A receipt IP address filter enables you to specify whether to accept or reject mail originating from an IP address or range of IP addresses.</p> <p>For information about setting up IP address filters, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p>

-}
type alias ReceiptFilter =
    { name : String
    , ipFilter : ReceiptIpFilter
    }


receiptFilterDecoder : JD.Decoder ReceiptFilter
receiptFilterDecoder =
    JD.succeed ReceiptFilter
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "IpFilter", "ipFilter" ]
                receiptIpFilterDecoder
            )


receiptFilterToString :
    ReceiptFilter
    -> String -- List (String, String)
receiptFilterToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.insert
    --         "ipFilter" "" -- val.ipFilter
    --     |> Dict.toList
    ""


{-| One of

  - `ReceiptFilterPolicy_Block`
  - `ReceiptFilterPolicy_Allow`

-}
type ReceiptFilterPolicy
    = ReceiptFilterPolicy_Block
    | ReceiptFilterPolicy_Allow


receiptFilterPolicyDecoder : JD.Decoder ReceiptFilterPolicy
receiptFilterPolicyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Block" ->
                        JD.succeed ReceiptFilterPolicy_Block

                    "Allow" ->
                        JD.succeed ReceiptFilterPolicy_Allow

                    _ ->
                        JD.fail "bad thing"
            )


receiptFilterPolicyToString : ReceiptFilterPolicy -> String
receiptFilterPolicyToString val =
    case val of
        ReceiptFilterPolicy_Block ->
            "Block"

        ReceiptFilterPolicy_Allow ->
            "Allow"


{-|

<p>A receipt IP address filter enables you to specify whether to accept or reject mail originating from an IP address or range of IP addresses.</p> <p>For information about setting up IP address filters, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p>

-}
type alias ReceiptIpFilter =
    { policy : ReceiptFilterPolicy
    , cidr : String
    }


receiptIpFilterDecoder : JD.Decoder ReceiptIpFilter
receiptIpFilterDecoder =
    JD.succeed ReceiptIpFilter
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Policy", "policy" ]
                receiptFilterPolicyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Cidr", "cidr" ]
                JD.string
            )


receiptIpFilterToString :
    ReceiptIpFilter
    -> String -- List (String, String)
receiptIpFilterToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "policy" "" -- val.policy
    --     |> Dict.insert
    --         "cidr" "" -- val.cidr
    --     |> Dict.toList
    ""


{-|

<p>Receipt rules enable you to specify which actions Amazon SES should take when it receives mail on behalf of one or more email addresses or domains that you own.</p> <p>Each receipt rule defines a set of email addresses or domains that it applies to. If the email addresses or domains match at least one recipient address of the message, Amazon SES executes all of the receipt rule's actions on the message.</p> <p>For information about setting up receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p>

-}
type alias ReceiptRule =
    { name : String
    , enabled : Maybe Bool
    , tlsPolicy : Maybe TlsPolicy
    , recipients : Maybe (List String)
    , actions : Maybe (List ReceiptAction)
    , scanEnabled : Maybe Bool
    }


receiptRuleDecoder : JD.Decoder ReceiptRule
receiptRuleDecoder =
    JD.succeed ReceiptRule
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Enabled", "enabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TlsPolicy", "tlsPolicy" ]
                tlsPolicyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Recipients", "recipients" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Actions", "actions" ]
                (JD.list receiptActionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ScanEnabled", "scanEnabled" ]
                JD.bool
            )


receiptRuleToString :
    ReceiptRule
    -> String -- List (String, String)
receiptRuleToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
    --     |> Dict.insert
    --         "tlsPolicy" "" -- val.tlsPolicy
    --     |> Dict.insert
    --         "recipients" "" -- val.recipients
    --     |> Dict.insert
    --         "actions" "" -- val.actions
    --     |> Dict.insert
    --         "scanEnabled" "" -- val.scanEnabled
    --     |> Dict.toList
    ""


{-|

<p>Information about a receipt rule set.</p> <p>A receipt rule set is a collection of rules that specify what Amazon SES should do with mail it receives on behalf of your account's verified domains.</p> <p>For information about setting up receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES Developer Guide</a>.</p>

-}
type alias ReceiptRuleSetMetadata =
    { name : Maybe String
    , createdTimestamp : Maybe Posix
    }


receiptRuleSetMetadataDecoder : JD.Decoder ReceiptRuleSetMetadata
receiptRuleSetMetadataDecoder =
    JD.succeed ReceiptRuleSetMetadata
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreatedTimestamp", "createdTimestamp" ]
                JDX.datetime
            )


receiptRuleSetMetadataToString :
    ReceiptRuleSetMetadata
    -> String -- List (String, String)
receiptRuleSetMetadataToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.insert
    --         "createdTimestamp" "" -- val.createdTimestamp
    --     |> Dict.toList
    ""


{-|

<p>Recipient-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>

-}
type alias RecipientDsnFields =
    { finalRecipient : Maybe String
    , action : DsnAction
    , remoteMta : Maybe String
    , status : String
    , diagnosticCode : Maybe String
    , lastAttemptDate : Maybe Posix
    , extensionFields : Maybe (List ExtensionField)
    }


recipientDsnFieldsDecoder : JD.Decoder RecipientDsnFields
recipientDsnFieldsDecoder =
    JD.succeed RecipientDsnFields
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FinalRecipient", "finalRecipient" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Action", "action" ]
                dsnActionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RemoteMta", "remoteMta" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DiagnosticCode", "diagnosticCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastAttemptDate", "lastAttemptDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExtensionFields", "extensionFields" ]
                (JD.list extensionFieldDecoder)
            )


recipientDsnFieldsToString :
    RecipientDsnFields
    -> String -- List (String, String)
recipientDsnFieldsToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "finalRecipient" "" -- val.finalRecipient
    --     |> Dict.insert
    --         "action" "" -- val.action
    --     |> Dict.insert
    --         "remoteMta" "" -- val.remoteMta
    --     |> Dict.insert
    --         "status" "" -- val.status
    --     |> Dict.insert
    --         "diagnosticCode" "" -- val.diagnosticCode
    --     |> Dict.insert
    --         "lastAttemptDate" "" -- val.lastAttemptDate
    --     |> Dict.insert
    --         "extensionFields" "" -- val.extensionFields
    --     |> Dict.toList
    ""


{-| Type of HTTP response from reorderReceiptRuleSet
-}
type alias ReorderReceiptRuleSetResponse =
    {}


reorderReceiptRuleSetResponseDecoder : JD.Decoder ReorderReceiptRuleSetResponse
reorderReceiptRuleSetResponseDecoder =
    JD.succeed ReorderReceiptRuleSetResponse


reorderReceiptRuleSetResponseToString :
    ReorderReceiptRuleSetResponse
    -> String -- List (String, String)
reorderReceiptRuleSetResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-|

<p>Contains information about the reputation settings for a configuration set.</p>

-}
type alias ReputationOptions =
    { sendingEnabled : Maybe Bool
    , reputationMetricsEnabled : Maybe Bool
    , lastFreshStart : Maybe Posix
    }


reputationOptionsDecoder : JD.Decoder ReputationOptions
reputationOptionsDecoder =
    JD.succeed ReputationOptions
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SendingEnabled", "sendingEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReputationMetricsEnabled", "reputationMetricsEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastFreshStart", "lastFreshStart" ]
                JDX.datetime
            )


reputationOptionsToString :
    ReputationOptions
    -> String -- List (String, String)
reputationOptionsToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "sendingEnabled" "" -- val.sendingEnabled
    --     |> Dict.insert
    --         "reputationMetricsEnabled" "" -- val.reputationMetricsEnabled
    --     |> Dict.insert
    --         "lastFreshStart" "" -- val.lastFreshStart
    --     |> Dict.toList
    ""


{-|

<p>When included in a receipt rule, this action saves the received message to an Amazon Simple Storage Service (Amazon S3) bucket and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>To enable Amazon SES to write emails to your Amazon S3 bucket, use an AWS KMS key to encrypt your emails, or publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources. For information about giving permissions, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <note> <p>When you save your emails to an Amazon S3 bucket, the maximum email size (including headers) is 30 MB. Emails larger than that will bounce.</p> </note> <p>For information about specifying Amazon S3 actions in receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-s3.html">Amazon SES Developer Guide</a>.</p>

-}
type alias S3Action =
    { topicArn : Maybe String
    , bucketName : String
    , objectKeyPrefix : Maybe String
    , kmsKeyArn : Maybe String
    }


s3ActionDecoder : JD.Decoder S3Action
s3ActionDecoder =
    JD.succeed S3Action
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TopicArn", "topicArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "BucketName", "bucketName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ObjectKeyPrefix", "objectKeyPrefix" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KmsKeyArn", "kmsKeyArn" ]
                JD.string
            )


s3ActionToString :
    S3Action
    -> String -- List (String, String)
s3ActionToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "topicArn" "" -- val.topicArn
    --     |> Dict.insert
    --         "bucketName" "" -- val.bucketName
    --     |> Dict.insert
    --         "objectKeyPrefix" "" -- val.objectKeyPrefix
    --     |> Dict.insert
    --         "kmsKeyArn" "" -- val.kmsKeyArn
    --     |> Dict.toList
    ""


{-|

<p>When included in a receipt rule, this action publishes a notification to Amazon Simple Notification Service (Amazon SNS). This action includes a complete copy of the email content in the Amazon SNS notifications. Amazon SNS notifications for all other actions simply provide information about the email. They do not include the email content itself.</p> <p>If you own the Amazon SNS topic, you don't need to do anything to give Amazon SES permission to publish emails to it. However, if you don't own the Amazon SNS topic, you need to attach a policy to the topic to give Amazon SES permissions to access it. For information about giving permissions, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <important> <p>You can only publish emails that are 150 KB or less (including the header) to Amazon SNS. Larger emails will bounce. If you anticipate emails larger than 150 KB, use the S3 action instead.</p> </important> <p>For information about using a receipt rule to publish an Amazon SNS notification, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-sns.html">Amazon SES Developer Guide</a>.</p>

-}
type alias SNSAction =
    { topicArn : String
    , encoding : Maybe SNSActionEncoding
    }


sNSActionDecoder : JD.Decoder SNSAction
sNSActionDecoder =
    JD.succeed SNSAction
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "TopicArn", "topicArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Encoding", "encoding" ]
                sNSActionEncodingDecoder
            )


sNSActionToString :
    SNSAction
    -> String -- List (String, String)
sNSActionToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "topicArn" "" -- val.topicArn
    --     |> Dict.insert
    --         "encoding" "" -- val.encoding
    --     |> Dict.toList
    ""


{-| One of

  - `SNSActionEncoding_UTF-8`
  - `SNSActionEncoding_Base64`

-}
type SNSActionEncoding
    = SNSActionEncoding_UTF_8
    | SNSActionEncoding_Base64


sNSActionEncodingDecoder : JD.Decoder SNSActionEncoding
sNSActionEncodingDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UTF_8" ->
                        JD.succeed SNSActionEncoding_UTF_8

                    "Base64" ->
                        JD.succeed SNSActionEncoding_Base64

                    _ ->
                        JD.fail "bad thing"
            )


sNSActionEncodingToString : SNSActionEncoding -> String
sNSActionEncodingToString val =
    case val of
        SNSActionEncoding_UTF_8 ->
            "UTF_8"

        SNSActionEncoding_Base64 ->
            "Base64"


{-|

<p>Contains the topic ARN associated with an Amazon Simple Notification Service (Amazon SNS) event destination.</p> <p>Event destinations, such as Amazon SNS, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

-}
type alias SNSDestination =
    { topicARN : String
    }


sNSDestinationDecoder : JD.Decoder SNSDestination
sNSDestinationDecoder =
    JD.succeed SNSDestination
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "TopicARN", "topicARN" ]
                JD.string
            )


sNSDestinationToString :
    SNSDestination
    -> String -- List (String, String)
sNSDestinationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "topicARN" "" -- val.topicARN
    --     |> Dict.toList
    ""


{-| Type of HTTP response from sendBounce
-}
type alias SendBounceResponse =
    { messageId : Maybe String
    }


sendBounceResponseDecoder : JD.Decoder SendBounceResponse
sendBounceResponseDecoder =
    JD.succeed SendBounceResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MessageId", "messageId" ]
                JD.string
            )


sendBounceResponseToString :
    SendBounceResponse
    -> String -- List (String, String)
sendBounceResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "messageId" "" -- val.messageId
    --     |> Dict.toList
    ""


{-| Type of HTTP response from sendBulkTemplatedEmail
-}
type alias SendBulkTemplatedEmailResponse =
    { status : List BulkEmailDestinationStatus
    }


sendBulkTemplatedEmailResponseDecoder : JD.Decoder SendBulkTemplatedEmailResponse
sendBulkTemplatedEmailResponseDecoder =
    JD.succeed SendBulkTemplatedEmailResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Status", "status" ]
                (JD.list bulkEmailDestinationStatusDecoder)
            )


sendBulkTemplatedEmailResponseToString :
    SendBulkTemplatedEmailResponse
    -> String -- List (String, String)
sendBulkTemplatedEmailResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "status" "" -- val.status
    --     |> Dict.toList
    ""


{-| Type of HTTP response from sendCustomVerificationEmail
-}
type alias SendCustomVerificationEmailResponse =
    { messageId : Maybe String
    }


sendCustomVerificationEmailResponseDecoder : JD.Decoder SendCustomVerificationEmailResponse
sendCustomVerificationEmailResponseDecoder =
    JD.succeed SendCustomVerificationEmailResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MessageId", "messageId" ]
                JD.string
            )


sendCustomVerificationEmailResponseToString :
    SendCustomVerificationEmailResponse
    -> String -- List (String, String)
sendCustomVerificationEmailResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "messageId" "" -- val.messageId
    --     |> Dict.toList
    ""


{-|

<p>Represents sending statistics data. Each <code>SendDataPoint</code> contains statistics for a 15-minute period of sending activity. </p>

-}
type alias SendDataPoint =
    { timestamp : Maybe Posix
    , deliveryAttempts : Maybe Int
    , bounces : Maybe Int
    , complaints : Maybe Int
    , rejects : Maybe Int
    }


sendDataPointDecoder : JD.Decoder SendDataPoint
sendDataPointDecoder =
    JD.succeed SendDataPoint
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Timestamp", "timestamp" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeliveryAttempts", "deliveryAttempts" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Bounces", "bounces" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Complaints", "complaints" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Rejects", "rejects" ]
                JD.int
            )


sendDataPointToString :
    SendDataPoint
    -> String -- List (String, String)
sendDataPointToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
    --     |> Dict.insert
    --         "deliveryAttempts" "" -- val.deliveryAttempts
    --     |> Dict.insert
    --         "bounces" "" -- val.bounces
    --     |> Dict.insert
    --         "complaints" "" -- val.complaints
    --     |> Dict.insert
    --         "rejects" "" -- val.rejects
    --     |> Dict.toList
    ""


{-| Type of HTTP response from sendEmail
-}
type alias SendEmailResponse =
    { messageId : String
    }


sendEmailResponseDecoder : JD.Decoder SendEmailResponse
sendEmailResponseDecoder =
    JD.succeed SendEmailResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "MessageId", "messageId" ]
                JD.string
            )


sendEmailResponseToString :
    SendEmailResponse
    -> String -- List (String, String)
sendEmailResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "messageId" "" -- val.messageId
    --     |> Dict.toList
    ""


{-| Type of HTTP response from sendRawEmail
-}
type alias SendRawEmailResponse =
    { messageId : String
    }


sendRawEmailResponseDecoder : JD.Decoder SendRawEmailResponse
sendRawEmailResponseDecoder =
    JD.succeed SendRawEmailResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "MessageId", "messageId" ]
                JD.string
            )


sendRawEmailResponseToString :
    SendRawEmailResponse
    -> String -- List (String, String)
sendRawEmailResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "messageId" "" -- val.messageId
    --     |> Dict.toList
    ""


{-| Type of HTTP response from sendTemplatedEmail
-}
type alias SendTemplatedEmailResponse =
    { messageId : String
    }


sendTemplatedEmailResponseDecoder : JD.Decoder SendTemplatedEmailResponse
sendTemplatedEmailResponseDecoder =
    JD.succeed SendTemplatedEmailResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "MessageId", "messageId" ]
                JD.string
            )


sendTemplatedEmailResponseToString :
    SendTemplatedEmailResponse
    -> String -- List (String, String)
sendTemplatedEmailResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "messageId" "" -- val.messageId
    --     |> Dict.toList
    ""


{-| Type of HTTP response from setActiveReceiptRuleSet
-}
type alias SetActiveReceiptRuleSetResponse =
    {}


setActiveReceiptRuleSetResponseDecoder : JD.Decoder SetActiveReceiptRuleSetResponse
setActiveReceiptRuleSetResponseDecoder =
    JD.succeed SetActiveReceiptRuleSetResponse


setActiveReceiptRuleSetResponseToString :
    SetActiveReceiptRuleSetResponse
    -> String -- List (String, String)
setActiveReceiptRuleSetResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from setIdentityDkimEnabled
-}
type alias SetIdentityDkimEnabledResponse =
    {}


setIdentityDkimEnabledResponseDecoder : JD.Decoder SetIdentityDkimEnabledResponse
setIdentityDkimEnabledResponseDecoder =
    JD.succeed SetIdentityDkimEnabledResponse


setIdentityDkimEnabledResponseToString :
    SetIdentityDkimEnabledResponse
    -> String -- List (String, String)
setIdentityDkimEnabledResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from setIdentityFeedbackForwardingEnabled
-}
type alias SetIdentityFeedbackForwardingEnabledResponse =
    {}


setIdentityFeedbackForwardingEnabledResponseDecoder : JD.Decoder SetIdentityFeedbackForwardingEnabledResponse
setIdentityFeedbackForwardingEnabledResponseDecoder =
    JD.succeed SetIdentityFeedbackForwardingEnabledResponse


setIdentityFeedbackForwardingEnabledResponseToString :
    SetIdentityFeedbackForwardingEnabledResponse
    -> String -- List (String, String)
setIdentityFeedbackForwardingEnabledResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from setIdentityHeadersInNotificationsEnabled
-}
type alias SetIdentityHeadersInNotificationsEnabledResponse =
    {}


setIdentityHeadersInNotificationsEnabledResponseDecoder : JD.Decoder SetIdentityHeadersInNotificationsEnabledResponse
setIdentityHeadersInNotificationsEnabledResponseDecoder =
    JD.succeed SetIdentityHeadersInNotificationsEnabledResponse


setIdentityHeadersInNotificationsEnabledResponseToString :
    SetIdentityHeadersInNotificationsEnabledResponse
    -> String -- List (String, String)
setIdentityHeadersInNotificationsEnabledResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from setIdentityMailFromDomain
-}
type alias SetIdentityMailFromDomainResponse =
    {}


setIdentityMailFromDomainResponseDecoder : JD.Decoder SetIdentityMailFromDomainResponse
setIdentityMailFromDomainResponseDecoder =
    JD.succeed SetIdentityMailFromDomainResponse


setIdentityMailFromDomainResponseToString :
    SetIdentityMailFromDomainResponse
    -> String -- List (String, String)
setIdentityMailFromDomainResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from setIdentityNotificationTopic
-}
type alias SetIdentityNotificationTopicResponse =
    {}


setIdentityNotificationTopicResponseDecoder : JD.Decoder SetIdentityNotificationTopicResponse
setIdentityNotificationTopicResponseDecoder =
    JD.succeed SetIdentityNotificationTopicResponse


setIdentityNotificationTopicResponseToString :
    SetIdentityNotificationTopicResponse
    -> String -- List (String, String)
setIdentityNotificationTopicResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from setReceiptRulePosition
-}
type alias SetReceiptRulePositionResponse =
    {}


setReceiptRulePositionResponseDecoder : JD.Decoder SetReceiptRulePositionResponse
setReceiptRulePositionResponseDecoder =
    JD.succeed SetReceiptRulePositionResponse


setReceiptRulePositionResponseToString :
    SetReceiptRulePositionResponse
    -> String -- List (String, String)
setReceiptRulePositionResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-|

<p>When included in a receipt rule, this action terminates the evaluation of the receipt rule set and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>For information about setting a stop action in a receipt rule, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-stop.html">Amazon SES Developer Guide</a>.</p>

-}
type alias StopAction =
    { scope : StopScope
    , topicArn : Maybe String
    }


stopActionDecoder : JD.Decoder StopAction
stopActionDecoder =
    JD.succeed StopAction
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Scope", "scope" ]
                stopScopeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TopicArn", "topicArn" ]
                JD.string
            )


stopActionToString :
    StopAction
    -> String -- List (String, String)
stopActionToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "scope" "" -- val.scope
    --     |> Dict.insert
    --         "topicArn" "" -- val.topicArn
    --     |> Dict.toList
    ""


{-| One of

  - `StopScope_RuleSet`

-}
type StopScope
    = StopScope_RuleSet


stopScopeDecoder : JD.Decoder StopScope
stopScopeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RuleSet" ->
                        JD.succeed StopScope_RuleSet

                    _ ->
                        JD.fail "bad thing"
            )


stopScopeToString : StopScope -> String
stopScopeToString val =
    case val of
        StopScope_RuleSet ->
            "RuleSet"


{-|

<p>The content of the email, composed of a subject line, an HTML part, and a text-only part.</p>

-}
type alias Template =
    { templateName : String
    , subjectPart : Maybe String
    , textPart : Maybe String
    , htmlPart : Maybe String
    }


templateDecoder : JD.Decoder Template
templateDecoder =
    JD.succeed Template
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "TemplateName", "templateName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubjectPart", "subjectPart" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TextPart", "textPart" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HtmlPart", "htmlPart" ]
                JD.string
            )


templateToString :
    Template
    -> String -- List (String, String)
templateToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "templateName" "" -- val.templateName
    --     |> Dict.insert
    --         "subjectPart" "" -- val.subjectPart
    --     |> Dict.insert
    --         "textPart" "" -- val.textPart
    --     |> Dict.insert
    --         "htmlPart" "" -- val.htmlPart
    --     |> Dict.toList
    ""


{-|

<p>Contains information about an email template.</p>

-}
type alias TemplateMetadata =
    { name : Maybe String
    , createdTimestamp : Maybe Posix
    }


templateMetadataDecoder : JD.Decoder TemplateMetadata
templateMetadataDecoder =
    JD.succeed TemplateMetadata
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreatedTimestamp", "createdTimestamp" ]
                JDX.datetime
            )


templateMetadataToString :
    TemplateMetadata
    -> String -- List (String, String)
templateMetadataToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.insert
    --         "createdTimestamp" "" -- val.createdTimestamp
    --     |> Dict.toList
    ""


{-| Type of HTTP response from testRenderTemplate
-}
type alias TestRenderTemplateResponse =
    { renderedTemplate : Maybe String
    }


testRenderTemplateResponseDecoder : JD.Decoder TestRenderTemplateResponse
testRenderTemplateResponseDecoder =
    JD.succeed TestRenderTemplateResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RenderedTemplate", "renderedTemplate" ]
                JD.string
            )


testRenderTemplateResponseToString :
    TestRenderTemplateResponse
    -> String -- List (String, String)
testRenderTemplateResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "renderedTemplate" "" -- val.renderedTemplate
    --     |> Dict.toList
    ""


{-| One of

  - `TlsPolicy_Require`
  - `TlsPolicy_Optional`

-}
type TlsPolicy
    = TlsPolicy_Require
    | TlsPolicy_Optional


tlsPolicyDecoder : JD.Decoder TlsPolicy
tlsPolicyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Require" ->
                        JD.succeed TlsPolicy_Require

                    "Optional" ->
                        JD.succeed TlsPolicy_Optional

                    _ ->
                        JD.fail "bad thing"
            )


tlsPolicyToString : TlsPolicy -> String
tlsPolicyToString val =
    case val of
        TlsPolicy_Require ->
            "Require"

        TlsPolicy_Optional ->
            "Optional"


{-|

<p>A domain that is used to redirect email recipients to an Amazon SES-operated domain. This domain captures open and click events generated by Amazon SES emails.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Configuring Custom Domains to Handle Open and Click Tracking</a> in the <i>Amazon SES Developer Guide</i>.</p>

-}
type alias TrackingOptions =
    { customRedirectDomain : Maybe String
    }


trackingOptionsDecoder : JD.Decoder TrackingOptions
trackingOptionsDecoder =
    JD.succeed TrackingOptions
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CustomRedirectDomain", "customRedirectDomain" ]
                JD.string
            )


trackingOptionsToString :
    TrackingOptions
    -> String -- List (String, String)
trackingOptionsToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "customRedirectDomain" "" -- val.customRedirectDomain
    --     |> Dict.toList
    ""


{-| Type of HTTP response from updateConfigurationSetEventDestination
-}
type alias UpdateConfigurationSetEventDestinationResponse =
    {}


updateConfigurationSetEventDestinationResponseDecoder : JD.Decoder UpdateConfigurationSetEventDestinationResponse
updateConfigurationSetEventDestinationResponseDecoder =
    JD.succeed UpdateConfigurationSetEventDestinationResponse


updateConfigurationSetEventDestinationResponseToString :
    UpdateConfigurationSetEventDestinationResponse
    -> String -- List (String, String)
updateConfigurationSetEventDestinationResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from updateConfigurationSetTrackingOptions
-}
type alias UpdateConfigurationSetTrackingOptionsResponse =
    {}


updateConfigurationSetTrackingOptionsResponseDecoder : JD.Decoder UpdateConfigurationSetTrackingOptionsResponse
updateConfigurationSetTrackingOptionsResponseDecoder =
    JD.succeed UpdateConfigurationSetTrackingOptionsResponse


updateConfigurationSetTrackingOptionsResponseToString :
    UpdateConfigurationSetTrackingOptionsResponse
    -> String -- List (String, String)
updateConfigurationSetTrackingOptionsResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from updateReceiptRule
-}
type alias UpdateReceiptRuleResponse =
    {}


updateReceiptRuleResponseDecoder : JD.Decoder UpdateReceiptRuleResponse
updateReceiptRuleResponseDecoder =
    JD.succeed UpdateReceiptRuleResponse


updateReceiptRuleResponseToString :
    UpdateReceiptRuleResponse
    -> String -- List (String, String)
updateReceiptRuleResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from updateTemplate
-}
type alias UpdateTemplateResponse =
    {}


updateTemplateResponseDecoder : JD.Decoder UpdateTemplateResponse
updateTemplateResponseDecoder =
    JD.succeed UpdateTemplateResponse


updateTemplateResponseToString :
    UpdateTemplateResponse
    -> String -- List (String, String)
updateTemplateResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| One of

  - `VerificationStatus_Pending`
  - `VerificationStatus_Success`
  - `VerificationStatus_Failed`
  - `VerificationStatus_TemporaryFailure`
  - `VerificationStatus_NotStarted`

-}
type VerificationStatus
    = VerificationStatus_Pending
    | VerificationStatus_Success
    | VerificationStatus_Failed
    | VerificationStatus_TemporaryFailure
    | VerificationStatus_NotStarted


verificationStatusDecoder : JD.Decoder VerificationStatus
verificationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed VerificationStatus_Pending

                    "Success" ->
                        JD.succeed VerificationStatus_Success

                    "Failed" ->
                        JD.succeed VerificationStatus_Failed

                    "TemporaryFailure" ->
                        JD.succeed VerificationStatus_TemporaryFailure

                    "NotStarted" ->
                        JD.succeed VerificationStatus_NotStarted

                    _ ->
                        JD.fail "bad thing"
            )


verificationStatusToString : VerificationStatus -> String
verificationStatusToString val =
    case val of
        VerificationStatus_Pending ->
            "Pending"

        VerificationStatus_Success ->
            "Success"

        VerificationStatus_Failed ->
            "Failed"

        VerificationStatus_TemporaryFailure ->
            "TemporaryFailure"

        VerificationStatus_NotStarted ->
            "NotStarted"


{-| Type of HTTP response from verifyDomainDkim
-}
type alias VerifyDomainDkimResponse =
    { dkimTokens : List String
    }


verifyDomainDkimResponseDecoder : JD.Decoder VerifyDomainDkimResponse
verifyDomainDkimResponseDecoder =
    JD.succeed VerifyDomainDkimResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DkimTokens", "dkimTokens" ]
                (JD.list JD.string)
            )


verifyDomainDkimResponseToString :
    VerifyDomainDkimResponse
    -> String -- List (String, String)
verifyDomainDkimResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "dkimTokens" "" -- val.dkimTokens
    --     |> Dict.toList
    ""


{-| Type of HTTP response from verifyDomainIdentity
-}
type alias VerifyDomainIdentityResponse =
    { verificationToken : String
    }


verifyDomainIdentityResponseDecoder : JD.Decoder VerifyDomainIdentityResponse
verifyDomainIdentityResponseDecoder =
    JD.succeed VerifyDomainIdentityResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "VerificationToken", "verificationToken" ]
                JD.string
            )


verifyDomainIdentityResponseToString :
    VerifyDomainIdentityResponse
    -> String -- List (String, String)
verifyDomainIdentityResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "verificationToken" "" -- val.verificationToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from verifyEmailIdentity
-}
type alias VerifyEmailIdentityResponse =
    {}


verifyEmailIdentityResponseDecoder : JD.Decoder VerifyEmailIdentityResponse
verifyEmailIdentityResponseDecoder =
    JD.succeed VerifyEmailIdentityResponse


verifyEmailIdentityResponseToString :
    VerifyEmailIdentityResponse
    -> String -- List (String, String)
verifyEmailIdentityResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-|

<p>When included in a receipt rule, this action calls Amazon WorkMail and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS). You will typically not use this action directly because Amazon WorkMail adds the rule automatically during its setup procedure.</p> <p>For information using a receipt rule to call Amazon WorkMail, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-workmail.html">Amazon SES Developer Guide</a>.</p>

-}
type alias WorkmailAction =
    { topicArn : Maybe String
    , organizationArn : String
    }


workmailActionDecoder : JD.Decoder WorkmailAction
workmailActionDecoder =
    JD.succeed WorkmailAction
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TopicArn", "topicArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OrganizationArn", "organizationArn" ]
                JD.string
            )


workmailActionToString :
    WorkmailAction
    -> String -- List (String, String)
workmailActionToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "topicArn" "" -- val.topicArn
    --     |> Dict.insert
    --         "organizationArn" "" -- val.organizationArn
    --     |> Dict.toList
    ""


{-|

<p>Represents a request to create a receipt rule set by cloning an existing one. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias CloneReceiptRuleSetRequest =
    { ruleSetName : String
    , originalRuleSetName : String
    }


{-|

<p>Represents a request to create a configuration set event destination. A configuration set event destination, which can be either Amazon CloudWatch or Amazon Kinesis Firehose, describes an AWS service in which Amazon SES publishes the email sending events associated with a configuration set. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

-}
type alias CreateConfigurationSetEventDestinationRequest =
    { configurationSetName : String
    , eventDestination : EventDestination
    }


{-|

<p>Represents a request to create a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

-}
type alias CreateConfigurationSetRequest =
    { configurationSet : ConfigurationSet
    }


{-|

<p>Represents a request to create an open and click tracking option object in a configuration set. </p>

-}
type alias CreateConfigurationSetTrackingOptionsRequest =
    { configurationSetName : String
    , trackingOptions : TrackingOptions
    }


{-|

<p>Represents a request to create a custom verification email template.</p>

-}
type alias CreateCustomVerificationEmailTemplateRequest =
    { templateName : String
    , fromEmailAddress : String
    , templateSubject : String
    , templateContent : String
    , successRedirectionURL : String
    , failureRedirectionURL : String
    }


{-|

<p>Represents a request to create a new IP address filter. You use IP address filters when you receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias CreateReceiptFilterRequest =
    { filter : ReceiptFilter
    }


{-|

<p>Represents a request to create a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias CreateReceiptRuleRequest =
    { ruleSetName : String
    , after : Maybe String
    , rule : ReceiptRule
    }


{-|

<p>Represents a request to create an empty receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias CreateReceiptRuleSetRequest =
    { ruleSetName : String
    }


{-|

<p>Represents a request to create an email template. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>

-}
type alias CreateTemplateRequest =
    { template : Template
    }


{-|

<p>Represents a request to delete a configuration set event destination. Configuration set event destinations are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

-}
type alias DeleteConfigurationSetEventDestinationRequest =
    { configurationSetName : String
    , eventDestinationName : String
    }


{-|

<p>Represents a request to delete a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

-}
type alias DeleteConfigurationSetRequest =
    { configurationSetName : String
    }


{-|

<p>Represents a request to delete open and click tracking options in a configuration set. </p>

-}
type alias DeleteConfigurationSetTrackingOptionsRequest =
    { configurationSetName : String
    }


{-|

<p>Represents a request to delete an existing custom verification email template.</p>

-}
type alias DeleteCustomVerificationEmailTemplateRequest =
    { templateName : String
    }


{-|

<p>Represents a request to delete a sending authorization policy for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>

-}
type alias DeleteIdentityPolicyRequest =
    { identity : String
    , policyName : String
    }


{-|

<p>Represents a request to delete one of your Amazon SES identities (an email address or domain).</p>

-}
type alias DeleteIdentityRequest =
    { identity : String
    }


{-|

<p>Represents a request to delete an IP address filter. You use IP address filters when you receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias DeleteReceiptFilterRequest =
    { filterName : String
    }


{-|

<p>Represents a request to delete a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias DeleteReceiptRuleRequest =
    { ruleSetName : String
    , ruleName : String
    }


{-|

<p>Represents a request to delete a receipt rule set and all of the receipt rules it contains. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias DeleteReceiptRuleSetRequest =
    { ruleSetName : String
    }


{-|

<p>Represents a request to delete an email template. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>

-}
type alias DeleteTemplateRequest =
    { templateName : String
    }


{-|

<p>Represents a request to delete an email address from the list of email addresses you have attempted to verify under your AWS account.</p>

-}
type alias DeleteVerifiedEmailAddressRequest =
    { emailAddress : String
    }


{-|

<p>Represents a request to return the metadata and receipt rules for the receipt rule set that is currently active. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias DescribeActiveReceiptRuleSetRequest =
    {}


{-|

<p>Represents a request to return the details of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

-}
type alias DescribeConfigurationSetRequest =
    { configurationSetName : String
    , configurationSetAttributeNames : Maybe (List ConfigurationSetAttribute)
    }


{-|

<p>Represents a request to return the details of a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias DescribeReceiptRuleRequest =
    { ruleSetName : String
    , ruleName : String
    }


{-|

<p>Represents a request to return the details of a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias DescribeReceiptRuleSetRequest =
    { ruleSetName : String
    }


{-|

<p>Represents a request to retrieve an existing custom verification email template.</p>

-}
type alias GetCustomVerificationEmailTemplateRequest =
    { templateName : String
    }


{-|

<p>Represents a request for the status of Amazon SES Easy DKIM signing for an identity. For domain identities, this request also returns the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES successfully verified that these tokens were published. For more information about Easy DKIM, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>

-}
type alias GetIdentityDkimAttributesRequest =
    { identities : List String
    }


{-|

<p>Represents a request to return the Amazon SES custom MAIL FROM attributes for a list of identities. For information about using a custom MAIL FROM domain, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html">Amazon SES Developer Guide</a>.</p>

-}
type alias GetIdentityMailFromDomainAttributesRequest =
    { identities : List String
    }


{-|

<p>Represents a request to return the notification attributes for a list of identities you verified with Amazon SES. For information about Amazon SES notifications, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>

-}
type alias GetIdentityNotificationAttributesRequest =
    { identities : List String
    }


{-|

<p>Represents a request to return the requested sending authorization policies for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>

-}
type alias GetIdentityPoliciesRequest =
    { identity : String
    , policyNames : List String
    }


{-|

<p>Represents a request to return the Amazon SES verification status of a list of identities. For domain identities, this request also returns the verification token. For information about verifying identities with Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer Guide</a>.</p>

-}
type alias GetIdentityVerificationAttributesRequest =
    { identities : List String
    }


{-| undefined
-}
type alias GetTemplateRequest =
    { templateName : String
    }


{-|

<p>Represents a request to list the configuration sets associated with your AWS account. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

-}
type alias ListConfigurationSetsRequest =
    { nextToken : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Represents a request to list the existing custom verification email templates for your account.</p> <p>For more information about custom verification email templates, see <a href="ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p>

-}
type alias ListCustomVerificationEmailTemplatesRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p>Represents a request to return a list of all identities (email addresses and domains) that you have attempted to verify under your AWS account, regardless of verification status.</p>

-}
type alias ListIdentitiesRequest =
    { identityType : Maybe IdentityType
    , nextToken : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Represents a request to return a list of sending authorization policies that are attached to an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>

-}
type alias ListIdentityPoliciesRequest =
    { identity : String
    }


{-|

<p>Represents a request to list the IP address filters that exist under your AWS account. You use IP address filters when you receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias ListReceiptFiltersRequest =
    {}


{-|

<p>Represents a request to list the receipt rule sets that exist under your AWS account. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias ListReceiptRuleSetsRequest =
    { nextToken : Maybe String
    }


{-| undefined
-}
type alias ListTemplatesRequest =
    { nextToken : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>A request to modify the delivery options for a configuration set.</p>

-}
type alias PutConfigurationSetDeliveryOptionsRequest =
    { configurationSetName : String
    , deliveryOptions : Maybe DeliveryOptions
    }


{-|

<p>Represents a request to add or update a sending authorization policy for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>

-}
type alias PutIdentityPolicyRequest =
    { identity : String
    , policyName : String
    , policy : String
    }


{-|

<p>Represents a request to reorder the receipt rules within a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias ReorderReceiptRuleSetRequest =
    { ruleSetName : String
    , ruleNames : List String
    }


{-|

<p>Represents a request to send a bounce message to the sender of an email you received through Amazon SES.</p>

-}
type alias SendBounceRequest =
    { originalMessageId : String
    , bounceSender : String
    , explanation : Maybe String
    , messageDsn : Maybe MessageDsn
    , bouncedRecipientInfoList : List BouncedRecipientInfo
    , bounceSenderArn : Maybe String
    }


{-|

<p>Represents a request to send a templated email to multiple destinations using Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>

-}
type alias SendBulkTemplatedEmailRequest =
    { source : String
    , sourceArn : Maybe String
    , replyToAddresses : Maybe (List String)
    , returnPath : Maybe String
    , returnPathArn : Maybe String
    , configurationSetName : Maybe String
    , defaultTags : Maybe (List MessageTag)
    , template : String
    , templateArn : Maybe String
    , defaultTemplateData : Maybe String
    , destinations : List BulkEmailDestination
    }


{-|

<p>Represents a request to send a custom verification email to a specified recipient.</p>

-}
type alias SendCustomVerificationEmailRequest =
    { emailAddress : String
    , templateName : String
    , configurationSetName : Maybe String
    }


{-|

<p>Represents a request to send a single formatted email using Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-formatted.html">Amazon SES Developer Guide</a>.</p>

-}
type alias SendEmailRequest =
    { source : String
    , destination : Destination
    , message : Message
    , replyToAddresses : Maybe (List String)
    , returnPath : Maybe String
    , sourceArn : Maybe String
    , returnPathArn : Maybe String
    , tags : Maybe (List MessageTag)
    , configurationSetName : Maybe String
    }


{-|

<p>Represents a request to send a single raw email using Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html">Amazon SES Developer Guide</a>.</p>

-}
type alias SendRawEmailRequest =
    { source : Maybe String
    , destinations : Maybe (List String)
    , rawMessage : RawMessage
    , fromArn : Maybe String
    , sourceArn : Maybe String
    , returnPathArn : Maybe String
    , tags : Maybe (List MessageTag)
    , configurationSetName : Maybe String
    }


{-|

<p>Represents a request to send a templated email using Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>

-}
type alias SendTemplatedEmailRequest =
    { source : String
    , destination : Destination
    , replyToAddresses : Maybe (List String)
    , returnPath : Maybe String
    , sourceArn : Maybe String
    , returnPathArn : Maybe String
    , tags : Maybe (List MessageTag)
    , configurationSetName : Maybe String
    , template : String
    , templateArn : Maybe String
    , templateData : String
    }


{-|

<p>Represents a request to set a receipt rule set as the active receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias SetActiveReceiptRuleSetRequest =
    { ruleSetName : Maybe String
    }


{-|

<p>Represents a request to enable or disable Amazon SES Easy DKIM signing for an identity. For more information about setting up Easy DKIM, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>

-}
type alias SetIdentityDkimEnabledRequest =
    { identity : String
    , dkimEnabled : Bool
    }


{-|

<p>Represents a request to enable or disable whether Amazon SES forwards you bounce and complaint notifications through email. For information about email feedback forwarding, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-email.html">Amazon SES Developer Guide</a>.</p>

-}
type alias SetIdentityFeedbackForwardingEnabledRequest =
    { identity : String
    , forwardingEnabled : Bool
    }


{-|

<p>Represents a request to set whether Amazon SES includes the original email headers in the Amazon SNS notifications of a specified type. For information about notifications, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html">Amazon SES Developer Guide</a>.</p>

-}
type alias SetIdentityHeadersInNotificationsEnabledRequest =
    { identity : String
    , notificationType : NotificationType
    , enabled : Bool
    }


{-|

<p>Represents a request to enable or disable the Amazon SES custom MAIL FROM domain setup for a verified identity. For information about using a custom MAIL FROM domain, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html">Amazon SES Developer Guide</a>.</p>

-}
type alias SetIdentityMailFromDomainRequest =
    { identity : String
    , mailFromDomain : Maybe String
    , behaviorOnMXFailure : Maybe BehaviorOnMXFailure
    }


{-|

<p>Represents a request to specify the Amazon SNS topic to which Amazon SES will publish bounce, complaint, or delivery notifications for emails sent with that identity as the Source. For information about Amazon SES notifications, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html">Amazon SES Developer Guide</a>.</p>

-}
type alias SetIdentityNotificationTopicRequest =
    { identity : String
    , notificationType : NotificationType
    , snsTopic : Maybe String
    }


{-|

<p>Represents a request to set the position of a receipt rule in a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias SetReceiptRulePositionRequest =
    { ruleSetName : String
    , ruleName : String
    , after : Maybe String
    }


{-| undefined
-}
type alias TestRenderTemplateRequest =
    { templateName : String
    , templateData : String
    }


{-|

<p>Represents a request to enable or disable the email sending capabilities for your entire Amazon SES account.</p>

-}
type alias UpdateAccountSendingEnabledRequest =
    { enabled : Maybe Bool
    }


{-|

<p>Represents a request to update the event destination of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>

-}
type alias UpdateConfigurationSetEventDestinationRequest =
    { configurationSetName : String
    , eventDestination : EventDestination
    }


{-|

<p>Represents a request to modify the reputation metric publishing settings for a configuration set.</p>

-}
type alias UpdateConfigurationSetReputationMetricsEnabledRequest =
    { configurationSetName : String
    , enabled : Bool
    }


{-|

<p>Represents a request to enable or disable the email sending capabilities for a specific configuration set.</p>

-}
type alias UpdateConfigurationSetSendingEnabledRequest =
    { configurationSetName : String
    , enabled : Bool
    }


{-|

<p>Represents a request to update the tracking options for a configuration set. </p>

-}
type alias UpdateConfigurationSetTrackingOptionsRequest =
    { configurationSetName : String
    , trackingOptions : TrackingOptions
    }


{-|

<p>Represents a request to update an existing custom verification email template.</p>

-}
type alias UpdateCustomVerificationEmailTemplateRequest =
    { templateName : String
    , fromEmailAddress : Maybe String
    , templateSubject : Maybe String
    , templateContent : Maybe String
    , successRedirectionURL : Maybe String
    , failureRedirectionURL : Maybe String
    }


{-|

<p>Represents a request to update a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>

-}
type alias UpdateReceiptRuleRequest =
    { ruleSetName : String
    , rule : ReceiptRule
    }


{-| undefined
-}
type alias UpdateTemplateRequest =
    { template : Template
    }


{-|

<p>Represents a request to generate the CNAME records needed to set up Easy DKIM with Amazon SES. For more information about setting up Easy DKIM, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>

-}
type alias VerifyDomainDkimRequest =
    { domain : String
    }


{-|

<p>Represents a request to begin Amazon SES domain verification and to generate the TXT records that you must publish to the DNS server of your domain to complete the verification. For information about domain verification, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html">Amazon SES Developer Guide</a>.</p>

-}
type alias VerifyDomainIdentityRequest =
    { domain : String
    }


{-|

<p>Represents a request to begin email address verification with Amazon SES. For information about email address verification, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">Amazon SES Developer Guide</a>.</p>

-}
type alias VerifyEmailAddressRequest =
    { emailAddress : String
    }


{-|

<p>Represents a request to begin email address verification with Amazon SES. For information about email address verification, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">Amazon SES Developer Guide</a>.</p>

-}
type alias VerifyEmailIdentityRequest =
    { emailAddress : String
    }


addHeaderActionEncoder : AddHeaderAction -> List ( String, String )
addHeaderActionEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "HeaderName" data.headerName
        |> AWS.Core.Encode.addOneToQueryArgs identity "HeaderValue" data.headerValue


bodyEncoder : Body -> List ( String, String )
bodyEncoder data =
    []
        |> (case data.text of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs contentEncoder "Text" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.html of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs contentEncoder "Html" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


bounceActionEncoder : BounceAction -> List ( String, String )
bounceActionEncoder data =
    []
        |> (case data.topicArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "SmtpReplyCode" data.smtpReplyCode
        |> (case data.statusCode of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "StatusCode" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "Message" data.message
        |> AWS.Core.Encode.addOneToQueryArgs identity "Sender" data.sender


bouncedRecipientInfoEncoder : BouncedRecipientInfo -> List ( String, String )
bouncedRecipientInfoEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Recipient" data.recipient
        |> (case data.recipientArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "RecipientArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.bounceType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs bounceTypeToString "BounceType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.recipientDsnFields of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs recipientDsnFieldsEncoder "RecipientDsnFields" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


bulkEmailDestinationEncoder : BulkEmailDestination -> List ( String, String )
bulkEmailDestinationEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs destinationEncoder "Destination" data.destination
        |> (case data.replacementTags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs messageTagEncoder "") "ReplacementTags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.replacementTemplateData of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReplacementTemplateData" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


bulkEmailDestinationStatusEncoder : BulkEmailDestinationStatus -> List ( String, String )
bulkEmailDestinationStatusEncoder data =
    []
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs bulkEmailStatusToString "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.error of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Error" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.messageId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MessageId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cloneReceiptRuleSetRequestEncoder : CloneReceiptRuleSetRequest -> List ( String, String )
cloneReceiptRuleSetRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleSetName" data.ruleSetName
        |> AWS.Core.Encode.addOneToQueryArgs identity "OriginalRuleSetName" data.originalRuleSetName


cloneReceiptRuleSetResponseEncoder : CloneReceiptRuleSetResponse -> List ( String, String )
cloneReceiptRuleSetResponseEncoder data =
    []


cloudWatchDestinationEncoder : CloudWatchDestination -> List ( String, String )
cloudWatchDestinationEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs cloudWatchDimensionConfigurationEncoder "") "DimensionConfigurations" data.dimensionConfigurations


cloudWatchDimensionConfigurationEncoder : CloudWatchDimensionConfiguration -> List ( String, String )
cloudWatchDimensionConfigurationEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "DimensionName" data.dimensionName
        |> AWS.Core.Encode.addOneToQueryArgs dimensionValueSourceToString "DimensionValueSource" data.dimensionValueSource
        |> AWS.Core.Encode.addOneToQueryArgs identity "DefaultDimensionValue" data.defaultDimensionValue


configurationSetEncoder : ConfigurationSet -> List ( String, String )
configurationSetEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Name" data.name


contentEncoder : Content -> List ( String, String )
contentEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Data" data.data
        |> (case data.charset of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Charset" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createConfigurationSetEventDestinationRequestEncoder : CreateConfigurationSetEventDestinationRequest -> List ( String, String )
createConfigurationSetEventDestinationRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" data.configurationSetName
        |> AWS.Core.Encode.addRecordToQueryArgs eventDestinationEncoder "EventDestination" data.eventDestination


createConfigurationSetEventDestinationResponseEncoder : CreateConfigurationSetEventDestinationResponse -> List ( String, String )
createConfigurationSetEventDestinationResponseEncoder data =
    []


createConfigurationSetRequestEncoder : CreateConfigurationSetRequest -> List ( String, String )
createConfigurationSetRequestEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs configurationSetEncoder "ConfigurationSet" data.configurationSet


createConfigurationSetResponseEncoder : CreateConfigurationSetResponse -> List ( String, String )
createConfigurationSetResponseEncoder data =
    []


createConfigurationSetTrackingOptionsRequestEncoder : CreateConfigurationSetTrackingOptionsRequest -> List ( String, String )
createConfigurationSetTrackingOptionsRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" data.configurationSetName
        |> AWS.Core.Encode.addRecordToQueryArgs trackingOptionsEncoder "TrackingOptions" data.trackingOptions


createConfigurationSetTrackingOptionsResponseEncoder : CreateConfigurationSetTrackingOptionsResponse -> List ( String, String )
createConfigurationSetTrackingOptionsResponseEncoder data =
    []


createCustomVerificationEmailTemplateRequestEncoder : CreateCustomVerificationEmailTemplateRequest -> List ( String, String )
createCustomVerificationEmailTemplateRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" data.templateName
        |> AWS.Core.Encode.addOneToQueryArgs identity "FromEmailAddress" data.fromEmailAddress
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateSubject" data.templateSubject
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateContent" data.templateContent
        |> AWS.Core.Encode.addOneToQueryArgs identity "SuccessRedirectionURL" data.successRedirectionURL
        |> AWS.Core.Encode.addOneToQueryArgs identity "FailureRedirectionURL" data.failureRedirectionURL


createReceiptFilterRequestEncoder : CreateReceiptFilterRequest -> List ( String, String )
createReceiptFilterRequestEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs receiptFilterEncoder "Filter" data.filter


createReceiptFilterResponseEncoder : CreateReceiptFilterResponse -> List ( String, String )
createReceiptFilterResponseEncoder data =
    []


createReceiptRuleRequestEncoder : CreateReceiptRuleRequest -> List ( String, String )
createReceiptRuleRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleSetName" data.ruleSetName
        |> (case data.after of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "After" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addRecordToQueryArgs receiptRuleEncoder "Rule" data.rule


createReceiptRuleResponseEncoder : CreateReceiptRuleResponse -> List ( String, String )
createReceiptRuleResponseEncoder data =
    []


createReceiptRuleSetRequestEncoder : CreateReceiptRuleSetRequest -> List ( String, String )
createReceiptRuleSetRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleSetName" data.ruleSetName


createReceiptRuleSetResponseEncoder : CreateReceiptRuleSetResponse -> List ( String, String )
createReceiptRuleSetResponseEncoder data =
    []


createTemplateRequestEncoder : CreateTemplateRequest -> List ( String, String )
createTemplateRequestEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs templateEncoder "Template" data.template


createTemplateResponseEncoder : CreateTemplateResponse -> List ( String, String )
createTemplateResponseEncoder data =
    []


customVerificationEmailTemplateEncoder : CustomVerificationEmailTemplate -> List ( String, String )
customVerificationEmailTemplateEncoder data =
    []
        |> (case data.templateName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.fromEmailAddress of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "FromEmailAddress" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.templateSubject of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TemplateSubject" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.successRedirectionURL of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SuccessRedirectionURL" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.failureRedirectionURL of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "FailureRedirectionURL" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deleteConfigurationSetEventDestinationRequestEncoder : DeleteConfigurationSetEventDestinationRequest -> List ( String, String )
deleteConfigurationSetEventDestinationRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" data.configurationSetName
        |> AWS.Core.Encode.addOneToQueryArgs identity "EventDestinationName" data.eventDestinationName


deleteConfigurationSetEventDestinationResponseEncoder : DeleteConfigurationSetEventDestinationResponse -> List ( String, String )
deleteConfigurationSetEventDestinationResponseEncoder data =
    []


deleteConfigurationSetRequestEncoder : DeleteConfigurationSetRequest -> List ( String, String )
deleteConfigurationSetRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" data.configurationSetName


deleteConfigurationSetResponseEncoder : DeleteConfigurationSetResponse -> List ( String, String )
deleteConfigurationSetResponseEncoder data =
    []


deleteConfigurationSetTrackingOptionsRequestEncoder : DeleteConfigurationSetTrackingOptionsRequest -> List ( String, String )
deleteConfigurationSetTrackingOptionsRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" data.configurationSetName


deleteConfigurationSetTrackingOptionsResponseEncoder : DeleteConfigurationSetTrackingOptionsResponse -> List ( String, String )
deleteConfigurationSetTrackingOptionsResponseEncoder data =
    []


deleteCustomVerificationEmailTemplateRequestEncoder : DeleteCustomVerificationEmailTemplateRequest -> List ( String, String )
deleteCustomVerificationEmailTemplateRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" data.templateName


deleteIdentityPolicyRequestEncoder : DeleteIdentityPolicyRequest -> List ( String, String )
deleteIdentityPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Identity" data.identity
        |> AWS.Core.Encode.addOneToQueryArgs identity "PolicyName" data.policyName


deleteIdentityPolicyResponseEncoder : DeleteIdentityPolicyResponse -> List ( String, String )
deleteIdentityPolicyResponseEncoder data =
    []


deleteIdentityRequestEncoder : DeleteIdentityRequest -> List ( String, String )
deleteIdentityRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Identity" data.identity


deleteIdentityResponseEncoder : DeleteIdentityResponse -> List ( String, String )
deleteIdentityResponseEncoder data =
    []


deleteReceiptFilterRequestEncoder : DeleteReceiptFilterRequest -> List ( String, String )
deleteReceiptFilterRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "FilterName" data.filterName


deleteReceiptFilterResponseEncoder : DeleteReceiptFilterResponse -> List ( String, String )
deleteReceiptFilterResponseEncoder data =
    []


deleteReceiptRuleRequestEncoder : DeleteReceiptRuleRequest -> List ( String, String )
deleteReceiptRuleRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleSetName" data.ruleSetName
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleName" data.ruleName


deleteReceiptRuleResponseEncoder : DeleteReceiptRuleResponse -> List ( String, String )
deleteReceiptRuleResponseEncoder data =
    []


deleteReceiptRuleSetRequestEncoder : DeleteReceiptRuleSetRequest -> List ( String, String )
deleteReceiptRuleSetRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleSetName" data.ruleSetName


deleteReceiptRuleSetResponseEncoder : DeleteReceiptRuleSetResponse -> List ( String, String )
deleteReceiptRuleSetResponseEncoder data =
    []


deleteTemplateRequestEncoder : DeleteTemplateRequest -> List ( String, String )
deleteTemplateRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" data.templateName


deleteTemplateResponseEncoder : DeleteTemplateResponse -> List ( String, String )
deleteTemplateResponseEncoder data =
    []


deleteVerifiedEmailAddressRequestEncoder : DeleteVerifiedEmailAddressRequest -> List ( String, String )
deleteVerifiedEmailAddressRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "EmailAddress" data.emailAddress


deliveryOptionsEncoder : DeliveryOptions -> List ( String, String )
deliveryOptionsEncoder data =
    []
        |> (case data.tlsPolicy of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs tlsPolicyToString "TlsPolicy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeActiveReceiptRuleSetRequestEncoder : DescribeActiveReceiptRuleSetRequest -> List ( String, String )
describeActiveReceiptRuleSetRequestEncoder data =
    []


describeActiveReceiptRuleSetResponseEncoder : DescribeActiveReceiptRuleSetResponse -> List ( String, String )
describeActiveReceiptRuleSetResponseEncoder data =
    []
        |> (case data.metadata of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs receiptRuleSetMetadataEncoder "Metadata" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.rules of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs receiptRuleEncoder "") "Rules" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeConfigurationSetRequestEncoder : DescribeConfigurationSetRequest -> List ( String, String )
describeConfigurationSetRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" data.configurationSetName
        |> (case data.configurationSetAttributeNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs configurationSetAttributeToString "") "ConfigurationSetAttributeNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeConfigurationSetResponseEncoder : DescribeConfigurationSetResponse -> List ( String, String )
describeConfigurationSetResponseEncoder data =
    []
        |> (case data.configurationSet of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs configurationSetEncoder "ConfigurationSet" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eventDestinations of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs eventDestinationEncoder "") "EventDestinations" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.trackingOptions of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs trackingOptionsEncoder "TrackingOptions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.deliveryOptions of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs deliveryOptionsEncoder "DeliveryOptions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.reputationOptions of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs reputationOptionsEncoder "ReputationOptions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeReceiptRuleRequestEncoder : DescribeReceiptRuleRequest -> List ( String, String )
describeReceiptRuleRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleSetName" data.ruleSetName
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleName" data.ruleName


describeReceiptRuleResponseEncoder : DescribeReceiptRuleResponse -> List ( String, String )
describeReceiptRuleResponseEncoder data =
    []
        |> (case data.rule of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs receiptRuleEncoder "Rule" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeReceiptRuleSetRequestEncoder : DescribeReceiptRuleSetRequest -> List ( String, String )
describeReceiptRuleSetRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleSetName" data.ruleSetName


describeReceiptRuleSetResponseEncoder : DescribeReceiptRuleSetResponse -> List ( String, String )
describeReceiptRuleSetResponseEncoder data =
    []
        |> (case data.metadata of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs receiptRuleSetMetadataEncoder "Metadata" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.rules of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs receiptRuleEncoder "") "Rules" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


destinationEncoder : Destination -> List ( String, String )
destinationEncoder data =
    []
        |> (case data.toAddresses of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ToAddresses" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.ccAddresses of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "CcAddresses" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.bccAddresses of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "BccAddresses" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


eventDestinationEncoder : EventDestination -> List ( String, String )
eventDestinationEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Name" data.name
        |> (case data.enabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs eventTypeToString "") "MatchingEventTypes" data.matchingEventTypes
        |> (case data.kinesisFirehoseDestination of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs kinesisFirehoseDestinationEncoder "KinesisFirehoseDestination" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cloudWatchDestination of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs cloudWatchDestinationEncoder "CloudWatchDestination" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sNSDestination of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs sNSDestinationEncoder "SNSDestination" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


extensionFieldEncoder : ExtensionField -> List ( String, String )
extensionFieldEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Name" data.name
        |> AWS.Core.Encode.addOneToQueryArgs identity "Value" data.value


getAccountSendingEnabledResponseEncoder : GetAccountSendingEnabledResponse -> List ( String, String )
getAccountSendingEnabledResponseEncoder data =
    []
        |> (case data.enabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getCustomVerificationEmailTemplateRequestEncoder : GetCustomVerificationEmailTemplateRequest -> List ( String, String )
getCustomVerificationEmailTemplateRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" data.templateName


getCustomVerificationEmailTemplateResponseEncoder : GetCustomVerificationEmailTemplateResponse -> List ( String, String )
getCustomVerificationEmailTemplateResponseEncoder data =
    []
        |> (case data.templateName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.fromEmailAddress of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "FromEmailAddress" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.templateSubject of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TemplateSubject" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.templateContent of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TemplateContent" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.successRedirectionURL of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SuccessRedirectionURL" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.failureRedirectionURL of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "FailureRedirectionURL" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getIdentityDkimAttributesRequestEncoder : GetIdentityDkimAttributesRequest -> List ( String, String )
getIdentityDkimAttributesRequestEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Identities" data.identities


getIdentityDkimAttributesResponseEncoder : GetIdentityDkimAttributesResponse -> List ( String, String )
getIdentityDkimAttributesResponseEncoder data =
    []
        |> AWS.Core.Encode.addDictToQueryArgs identityDkimAttributesToString "DkimAttributes" data.dkimAttributes


getIdentityMailFromDomainAttributesRequestEncoder : GetIdentityMailFromDomainAttributesRequest -> List ( String, String )
getIdentityMailFromDomainAttributesRequestEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Identities" data.identities


getIdentityMailFromDomainAttributesResponseEncoder : GetIdentityMailFromDomainAttributesResponse -> List ( String, String )
getIdentityMailFromDomainAttributesResponseEncoder data =
    []
        |> AWS.Core.Encode.addDictToQueryArgs identityMailFromDomainAttributesToString "MailFromDomainAttributes" data.mailFromDomainAttributes


getIdentityNotificationAttributesRequestEncoder : GetIdentityNotificationAttributesRequest -> List ( String, String )
getIdentityNotificationAttributesRequestEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Identities" data.identities


getIdentityNotificationAttributesResponseEncoder : GetIdentityNotificationAttributesResponse -> List ( String, String )
getIdentityNotificationAttributesResponseEncoder data =
    []
        |> AWS.Core.Encode.addDictToQueryArgs identityNotificationAttributesToString "NotificationAttributes" data.notificationAttributes


getIdentityPoliciesRequestEncoder : GetIdentityPoliciesRequest -> List ( String, String )
getIdentityPoliciesRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Identity" data.identity
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PolicyNames" data.policyNames


getIdentityPoliciesResponseEncoder : GetIdentityPoliciesResponse -> List ( String, String )
getIdentityPoliciesResponseEncoder data =
    []
        |> AWS.Core.Encode.addDictToQueryArgs identity "Policies" data.policies


getIdentityVerificationAttributesRequestEncoder : GetIdentityVerificationAttributesRequest -> List ( String, String )
getIdentityVerificationAttributesRequestEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Identities" data.identities


getIdentityVerificationAttributesResponseEncoder : GetIdentityVerificationAttributesResponse -> List ( String, String )
getIdentityVerificationAttributesResponseEncoder data =
    []
        |> AWS.Core.Encode.addDictToQueryArgs identityVerificationAttributesToString "VerificationAttributes" data.verificationAttributes


getSendQuotaResponseEncoder : GetSendQuotaResponse -> List ( String, String )
getSendQuotaResponseEncoder data =
    []
        |> (case data.max24HourSend of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "Max24HourSend" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxSendRate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "MaxSendRate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sentLast24Hours of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "SentLast24Hours" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getSendStatisticsResponseEncoder : GetSendStatisticsResponse -> List ( String, String )
getSendStatisticsResponseEncoder data =
    []
        |> (case data.sendDataPoints of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs sendDataPointEncoder "") "SendDataPoints" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getTemplateRequestEncoder : GetTemplateRequest -> List ( String, String )
getTemplateRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" data.templateName


getTemplateResponseEncoder : GetTemplateResponse -> List ( String, String )
getTemplateResponseEncoder data =
    []
        |> (case data.template of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs templateEncoder "Template" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


identityDkimAttributesEncoder : IdentityDkimAttributes -> List ( String, String )
identityDkimAttributesEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DkimEnabled" data.dkimEnabled
        |> AWS.Core.Encode.addOneToQueryArgs verificationStatusToString "DkimVerificationStatus" data.dkimVerificationStatus
        |> (case data.dkimTokens of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "DkimTokens" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


identityMailFromDomainAttributesEncoder : IdentityMailFromDomainAttributes -> List ( String, String )
identityMailFromDomainAttributesEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "MailFromDomain" data.mailFromDomain
        |> AWS.Core.Encode.addOneToQueryArgs customMailFromStatusToString "MailFromDomainStatus" data.mailFromDomainStatus
        |> AWS.Core.Encode.addOneToQueryArgs behaviorOnMXFailureToString "BehaviorOnMXFailure" data.behaviorOnMXFailure


identityNotificationAttributesEncoder : IdentityNotificationAttributes -> List ( String, String )
identityNotificationAttributesEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "BounceTopic" data.bounceTopic
        |> AWS.Core.Encode.addOneToQueryArgs identity "ComplaintTopic" data.complaintTopic
        |> AWS.Core.Encode.addOneToQueryArgs identity "DeliveryTopic" data.deliveryTopic
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ForwardingEnabled" data.forwardingEnabled
        |> (case data.headersInBounceNotificationsEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "HeadersInBounceNotificationsEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.headersInComplaintNotificationsEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "HeadersInComplaintNotificationsEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.headersInDeliveryNotificationsEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "HeadersInDeliveryNotificationsEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


identityVerificationAttributesEncoder : IdentityVerificationAttributes -> List ( String, String )
identityVerificationAttributesEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs verificationStatusToString "VerificationStatus" data.verificationStatus
        |> (case data.verificationToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "VerificationToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


kinesisFirehoseDestinationEncoder : KinesisFirehoseDestination -> List ( String, String )
kinesisFirehoseDestinationEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "IAMRoleARN" data.iAMRoleARN
        |> AWS.Core.Encode.addOneToQueryArgs identity "DeliveryStreamARN" data.deliveryStreamARN


lambdaActionEncoder : LambdaAction -> List ( String, String )
lambdaActionEncoder data =
    []
        |> (case data.topicArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "FunctionArn" data.functionArn
        |> (case data.invocationType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs invocationTypeToString "InvocationType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listConfigurationSetsRequestEncoder : ListConfigurationSetsRequest -> List ( String, String )
listConfigurationSetsRequestEncoder data =
    []
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listConfigurationSetsResponseEncoder : ListConfigurationSetsResponse -> List ( String, String )
listConfigurationSetsResponseEncoder data =
    []
        |> (case data.configurationSets of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs configurationSetEncoder "") "ConfigurationSets" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listCustomVerificationEmailTemplatesRequestEncoder : ListCustomVerificationEmailTemplatesRequest -> List ( String, String )
listCustomVerificationEmailTemplatesRequestEncoder data =
    []
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxResults of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxResults" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listCustomVerificationEmailTemplatesResponseEncoder : ListCustomVerificationEmailTemplatesResponse -> List ( String, String )
listCustomVerificationEmailTemplatesResponseEncoder data =
    []
        |> (case data.customVerificationEmailTemplates of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs customVerificationEmailTemplateEncoder "") "CustomVerificationEmailTemplates" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listIdentitiesRequestEncoder : ListIdentitiesRequest -> List ( String, String )
listIdentitiesRequestEncoder data =
    []
        |> (case data.identityType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identityTypeToString "IdentityType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listIdentitiesResponseEncoder : ListIdentitiesResponse -> List ( String, String )
listIdentitiesResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Identities" data.identities
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listIdentityPoliciesRequestEncoder : ListIdentityPoliciesRequest -> List ( String, String )
listIdentityPoliciesRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Identity" data.identity


listIdentityPoliciesResponseEncoder : ListIdentityPoliciesResponse -> List ( String, String )
listIdentityPoliciesResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PolicyNames" data.policyNames


listReceiptFiltersRequestEncoder : ListReceiptFiltersRequest -> List ( String, String )
listReceiptFiltersRequestEncoder data =
    []


listReceiptFiltersResponseEncoder : ListReceiptFiltersResponse -> List ( String, String )
listReceiptFiltersResponseEncoder data =
    []
        |> (case data.filters of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs receiptFilterEncoder "") "Filters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listReceiptRuleSetsRequestEncoder : ListReceiptRuleSetsRequest -> List ( String, String )
listReceiptRuleSetsRequestEncoder data =
    []
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listReceiptRuleSetsResponseEncoder : ListReceiptRuleSetsResponse -> List ( String, String )
listReceiptRuleSetsResponseEncoder data =
    []
        |> (case data.ruleSets of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs receiptRuleSetMetadataEncoder "") "RuleSets" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listTemplatesRequestEncoder : ListTemplatesRequest -> List ( String, String )
listTemplatesRequestEncoder data =
    []
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listTemplatesResponseEncoder : ListTemplatesResponse -> List ( String, String )
listTemplatesResponseEncoder data =
    []
        |> (case data.templatesMetadata of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs templateMetadataEncoder "") "TemplatesMetadata" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listVerifiedEmailAddressesResponseEncoder : ListVerifiedEmailAddressesResponse -> List ( String, String )
listVerifiedEmailAddressesResponseEncoder data =
    []
        |> (case data.verifiedEmailAddresses of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VerifiedEmailAddresses" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


messageEncoder : Message -> List ( String, String )
messageEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs contentEncoder "Subject" data.subject
        |> AWS.Core.Encode.addRecordToQueryArgs bodyEncoder "Body" data.body


messageDsnEncoder : MessageDsn -> List ( String, String )
messageDsnEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReportingMta" data.reportingMta
        |> (case data.arrivalDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ArrivalDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.extensionFields of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs extensionFieldEncoder "") "ExtensionFields" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


messageTagEncoder : MessageTag -> List ( String, String )
messageTagEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Name" data.name
        |> AWS.Core.Encode.addOneToQueryArgs identity "Value" data.value


putConfigurationSetDeliveryOptionsRequestEncoder : PutConfigurationSetDeliveryOptionsRequest -> List ( String, String )
putConfigurationSetDeliveryOptionsRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" data.configurationSetName
        |> (case data.deliveryOptions of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs deliveryOptionsEncoder "DeliveryOptions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


putConfigurationSetDeliveryOptionsResponseEncoder : PutConfigurationSetDeliveryOptionsResponse -> List ( String, String )
putConfigurationSetDeliveryOptionsResponseEncoder data =
    []


putIdentityPolicyRequestEncoder : PutIdentityPolicyRequest -> List ( String, String )
putIdentityPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Identity" data.identity
        |> AWS.Core.Encode.addOneToQueryArgs identity "PolicyName" data.policyName
        |> AWS.Core.Encode.addOneToQueryArgs identity "Policy" data.policy


putIdentityPolicyResponseEncoder : PutIdentityPolicyResponse -> List ( String, String )
putIdentityPolicyResponseEncoder data =
    []


rawMessageEncoder : RawMessage -> List ( String, String )
rawMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Data" data.data


receiptActionEncoder : ReceiptAction -> List ( String, String )
receiptActionEncoder data =
    []
        |> (case data.s3Action of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs s3ActionEncoder "S3Action" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.bounceAction of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs bounceActionEncoder "BounceAction" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.workmailAction of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs workmailActionEncoder "WorkmailAction" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.lambdaAction of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs lambdaActionEncoder "LambdaAction" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.stopAction of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs stopActionEncoder "StopAction" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.addHeaderAction of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs addHeaderActionEncoder "AddHeaderAction" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sNSAction of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs sNSActionEncoder "SNSAction" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


receiptFilterEncoder : ReceiptFilter -> List ( String, String )
receiptFilterEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Name" data.name
        |> AWS.Core.Encode.addRecordToQueryArgs receiptIpFilterEncoder "IpFilter" data.ipFilter


receiptIpFilterEncoder : ReceiptIpFilter -> List ( String, String )
receiptIpFilterEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs receiptFilterPolicyToString "Policy" data.policy
        |> AWS.Core.Encode.addOneToQueryArgs identity "Cidr" data.cidr


receiptRuleEncoder : ReceiptRule -> List ( String, String )
receiptRuleEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Name" data.name
        |> (case data.enabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tlsPolicy of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs tlsPolicyToString "TlsPolicy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.recipients of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Recipients" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.actions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs receiptActionEncoder "") "Actions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.scanEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ScanEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


receiptRuleSetMetadataEncoder : ReceiptRuleSetMetadata -> List ( String, String )
receiptRuleSetMetadataEncoder data =
    []
        |> (case data.name of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Name" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.createdTimestamp of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreatedTimestamp" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


recipientDsnFieldsEncoder : RecipientDsnFields -> List ( String, String )
recipientDsnFieldsEncoder data =
    []
        |> (case data.finalRecipient of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "FinalRecipient" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs dsnActionToString "Action" data.action
        |> (case data.remoteMta of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "RemoteMta" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "Status" data.status
        |> (case data.diagnosticCode of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DiagnosticCode" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.lastAttemptDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastAttemptDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.extensionFields of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs extensionFieldEncoder "") "ExtensionFields" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


reorderReceiptRuleSetRequestEncoder : ReorderReceiptRuleSetRequest -> List ( String, String )
reorderReceiptRuleSetRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleSetName" data.ruleSetName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "RuleNames" data.ruleNames


reorderReceiptRuleSetResponseEncoder : ReorderReceiptRuleSetResponse -> List ( String, String )
reorderReceiptRuleSetResponseEncoder data =
    []


reputationOptionsEncoder : ReputationOptions -> List ( String, String )
reputationOptionsEncoder data =
    []
        |> (case data.sendingEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SendingEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.reputationMetricsEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReputationMetricsEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.lastFreshStart of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastFreshStart" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


s3ActionEncoder : S3Action -> List ( String, String )
s3ActionEncoder data =
    []
        |> (case data.topicArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "BucketName" data.bucketName
        |> (case data.objectKeyPrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ObjectKeyPrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.kmsKeyArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


sNSActionEncoder : SNSAction -> List ( String, String )
sNSActionEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" data.topicArn
        |> (case data.encoding of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs sNSActionEncodingToString "Encoding" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


sNSDestinationEncoder : SNSDestination -> List ( String, String )
sNSDestinationEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "TopicARN" data.topicARN


sendBounceRequestEncoder : SendBounceRequest -> List ( String, String )
sendBounceRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "OriginalMessageId" data.originalMessageId
        |> AWS.Core.Encode.addOneToQueryArgs identity "BounceSender" data.bounceSender
        |> (case data.explanation of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Explanation" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.messageDsn of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs messageDsnEncoder "MessageDsn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs bouncedRecipientInfoEncoder "") "BouncedRecipientInfoList" data.bouncedRecipientInfoList
        |> (case data.bounceSenderArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "BounceSenderArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


sendBounceResponseEncoder : SendBounceResponse -> List ( String, String )
sendBounceResponseEncoder data =
    []
        |> (case data.messageId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MessageId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


sendBulkTemplatedEmailRequestEncoder : SendBulkTemplatedEmailRequest -> List ( String, String )
sendBulkTemplatedEmailRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Source" data.source
        |> (case data.sourceArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.replyToAddresses of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ReplyToAddresses" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.returnPath of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReturnPath" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.returnPathArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReturnPathArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.configurationSetName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.defaultTags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs messageTagEncoder "") "DefaultTags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "Template" data.template
        |> (case data.templateArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TemplateArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.defaultTemplateData of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DefaultTemplateData" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs bulkEmailDestinationEncoder "") "Destinations" data.destinations


sendBulkTemplatedEmailResponseEncoder : SendBulkTemplatedEmailResponse -> List ( String, String )
sendBulkTemplatedEmailResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs bulkEmailDestinationStatusEncoder "") "Status" data.status


sendCustomVerificationEmailRequestEncoder : SendCustomVerificationEmailRequest -> List ( String, String )
sendCustomVerificationEmailRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "EmailAddress" data.emailAddress
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" data.templateName
        |> (case data.configurationSetName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


sendCustomVerificationEmailResponseEncoder : SendCustomVerificationEmailResponse -> List ( String, String )
sendCustomVerificationEmailResponseEncoder data =
    []
        |> (case data.messageId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MessageId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


sendDataPointEncoder : SendDataPoint -> List ( String, String )
sendDataPointEncoder data =
    []
        |> (case data.timestamp of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Timestamp" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.deliveryAttempts of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "DeliveryAttempts" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.bounces of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Bounces" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.complaints of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Complaints" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.rejects of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Rejects" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


sendEmailRequestEncoder : SendEmailRequest -> List ( String, String )
sendEmailRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Source" data.source
        |> AWS.Core.Encode.addRecordToQueryArgs destinationEncoder "Destination" data.destination
        |> AWS.Core.Encode.addRecordToQueryArgs messageEncoder "Message" data.message
        |> (case data.replyToAddresses of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ReplyToAddresses" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.returnPath of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReturnPath" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.returnPathArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReturnPathArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs messageTagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.configurationSetName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


sendEmailResponseEncoder : SendEmailResponse -> List ( String, String )
sendEmailResponseEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "MessageId" data.messageId


sendRawEmailRequestEncoder : SendRawEmailRequest -> List ( String, String )
sendRawEmailRequestEncoder data =
    []
        |> (case data.source of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Source" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.destinations of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Destinations" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addRecordToQueryArgs rawMessageEncoder "RawMessage" data.rawMessage
        |> (case data.fromArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "FromArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.returnPathArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReturnPathArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs messageTagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.configurationSetName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


sendRawEmailResponseEncoder : SendRawEmailResponse -> List ( String, String )
sendRawEmailResponseEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "MessageId" data.messageId


sendTemplatedEmailRequestEncoder : SendTemplatedEmailRequest -> List ( String, String )
sendTemplatedEmailRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Source" data.source
        |> AWS.Core.Encode.addRecordToQueryArgs destinationEncoder "Destination" data.destination
        |> (case data.replyToAddresses of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ReplyToAddresses" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.returnPath of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReturnPath" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.returnPathArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReturnPathArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs messageTagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.configurationSetName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "Template" data.template
        |> (case data.templateArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TemplateArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateData" data.templateData


sendTemplatedEmailResponseEncoder : SendTemplatedEmailResponse -> List ( String, String )
sendTemplatedEmailResponseEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "MessageId" data.messageId


setActiveReceiptRuleSetRequestEncoder : SetActiveReceiptRuleSetRequest -> List ( String, String )
setActiveReceiptRuleSetRequestEncoder data =
    []
        |> (case data.ruleSetName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "RuleSetName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


setActiveReceiptRuleSetResponseEncoder : SetActiveReceiptRuleSetResponse -> List ( String, String )
setActiveReceiptRuleSetResponseEncoder data =
    []


setIdentityDkimEnabledRequestEncoder : SetIdentityDkimEnabledRequest -> List ( String, String )
setIdentityDkimEnabledRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Identity" data.identity
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DkimEnabled" data.dkimEnabled


setIdentityDkimEnabledResponseEncoder : SetIdentityDkimEnabledResponse -> List ( String, String )
setIdentityDkimEnabledResponseEncoder data =
    []


setIdentityFeedbackForwardingEnabledRequestEncoder : SetIdentityFeedbackForwardingEnabledRequest -> List ( String, String )
setIdentityFeedbackForwardingEnabledRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Identity" data.identity
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ForwardingEnabled" data.forwardingEnabled


setIdentityFeedbackForwardingEnabledResponseEncoder : SetIdentityFeedbackForwardingEnabledResponse -> List ( String, String )
setIdentityFeedbackForwardingEnabledResponseEncoder data =
    []


setIdentityHeadersInNotificationsEnabledRequestEncoder : SetIdentityHeadersInNotificationsEnabledRequest -> List ( String, String )
setIdentityHeadersInNotificationsEnabledRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Identity" data.identity
        |> AWS.Core.Encode.addOneToQueryArgs notificationTypeToString "NotificationType" data.notificationType
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" data.enabled


setIdentityHeadersInNotificationsEnabledResponseEncoder : SetIdentityHeadersInNotificationsEnabledResponse -> List ( String, String )
setIdentityHeadersInNotificationsEnabledResponseEncoder data =
    []


setIdentityMailFromDomainRequestEncoder : SetIdentityMailFromDomainRequest -> List ( String, String )
setIdentityMailFromDomainRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Identity" data.identity
        |> (case data.mailFromDomain of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MailFromDomain" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.behaviorOnMXFailure of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs behaviorOnMXFailureToString "BehaviorOnMXFailure" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


setIdentityMailFromDomainResponseEncoder : SetIdentityMailFromDomainResponse -> List ( String, String )
setIdentityMailFromDomainResponseEncoder data =
    []


setIdentityNotificationTopicRequestEncoder : SetIdentityNotificationTopicRequest -> List ( String, String )
setIdentityNotificationTopicRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Identity" data.identity
        |> AWS.Core.Encode.addOneToQueryArgs notificationTypeToString "NotificationType" data.notificationType
        |> (case data.snsTopic of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnsTopic" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


setIdentityNotificationTopicResponseEncoder : SetIdentityNotificationTopicResponse -> List ( String, String )
setIdentityNotificationTopicResponseEncoder data =
    []


setReceiptRulePositionRequestEncoder : SetReceiptRulePositionRequest -> List ( String, String )
setReceiptRulePositionRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleSetName" data.ruleSetName
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleName" data.ruleName
        |> (case data.after of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "After" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


setReceiptRulePositionResponseEncoder : SetReceiptRulePositionResponse -> List ( String, String )
setReceiptRulePositionResponseEncoder data =
    []


stopActionEncoder : StopAction -> List ( String, String )
stopActionEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs stopScopeToString "Scope" data.scope
        |> (case data.topicArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


templateEncoder : Template -> List ( String, String )
templateEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" data.templateName
        |> (case data.subjectPart of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SubjectPart" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.textPart of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TextPart" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.htmlPart of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HtmlPart" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


templateMetadataEncoder : TemplateMetadata -> List ( String, String )
templateMetadataEncoder data =
    []
        |> (case data.name of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Name" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.createdTimestamp of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreatedTimestamp" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


testRenderTemplateRequestEncoder : TestRenderTemplateRequest -> List ( String, String )
testRenderTemplateRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" data.templateName
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateData" data.templateData


testRenderTemplateResponseEncoder : TestRenderTemplateResponse -> List ( String, String )
testRenderTemplateResponseEncoder data =
    []
        |> (case data.renderedTemplate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "RenderedTemplate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


trackingOptionsEncoder : TrackingOptions -> List ( String, String )
trackingOptionsEncoder data =
    []
        |> (case data.customRedirectDomain of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CustomRedirectDomain" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


updateAccountSendingEnabledRequestEncoder : UpdateAccountSendingEnabledRequest -> List ( String, String )
updateAccountSendingEnabledRequestEncoder data =
    []
        |> (case data.enabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


updateConfigurationSetEventDestinationRequestEncoder : UpdateConfigurationSetEventDestinationRequest -> List ( String, String )
updateConfigurationSetEventDestinationRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" data.configurationSetName
        |> AWS.Core.Encode.addRecordToQueryArgs eventDestinationEncoder "EventDestination" data.eventDestination


updateConfigurationSetEventDestinationResponseEncoder : UpdateConfigurationSetEventDestinationResponse -> List ( String, String )
updateConfigurationSetEventDestinationResponseEncoder data =
    []


updateConfigurationSetReputationMetricsEnabledRequestEncoder : UpdateConfigurationSetReputationMetricsEnabledRequest -> List ( String, String )
updateConfigurationSetReputationMetricsEnabledRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" data.configurationSetName
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" data.enabled


updateConfigurationSetSendingEnabledRequestEncoder : UpdateConfigurationSetSendingEnabledRequest -> List ( String, String )
updateConfigurationSetSendingEnabledRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" data.configurationSetName
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" data.enabled


updateConfigurationSetTrackingOptionsRequestEncoder : UpdateConfigurationSetTrackingOptionsRequest -> List ( String, String )
updateConfigurationSetTrackingOptionsRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ConfigurationSetName" data.configurationSetName
        |> AWS.Core.Encode.addRecordToQueryArgs trackingOptionsEncoder "TrackingOptions" data.trackingOptions


updateConfigurationSetTrackingOptionsResponseEncoder : UpdateConfigurationSetTrackingOptionsResponse -> List ( String, String )
updateConfigurationSetTrackingOptionsResponseEncoder data =
    []


updateCustomVerificationEmailTemplateRequestEncoder : UpdateCustomVerificationEmailTemplateRequest -> List ( String, String )
updateCustomVerificationEmailTemplateRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" data.templateName
        |> (case data.fromEmailAddress of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "FromEmailAddress" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.templateSubject of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TemplateSubject" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.templateContent of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TemplateContent" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.successRedirectionURL of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SuccessRedirectionURL" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.failureRedirectionURL of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "FailureRedirectionURL" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


updateReceiptRuleRequestEncoder : UpdateReceiptRuleRequest -> List ( String, String )
updateReceiptRuleRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleSetName" data.ruleSetName
        |> AWS.Core.Encode.addRecordToQueryArgs receiptRuleEncoder "Rule" data.rule


updateReceiptRuleResponseEncoder : UpdateReceiptRuleResponse -> List ( String, String )
updateReceiptRuleResponseEncoder data =
    []


updateTemplateRequestEncoder : UpdateTemplateRequest -> List ( String, String )
updateTemplateRequestEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs templateEncoder "Template" data.template


updateTemplateResponseEncoder : UpdateTemplateResponse -> List ( String, String )
updateTemplateResponseEncoder data =
    []


verifyDomainDkimRequestEncoder : VerifyDomainDkimRequest -> List ( String, String )
verifyDomainDkimRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Domain" data.domain


verifyDomainDkimResponseEncoder : VerifyDomainDkimResponse -> List ( String, String )
verifyDomainDkimResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "DkimTokens" data.dkimTokens


verifyDomainIdentityRequestEncoder : VerifyDomainIdentityRequest -> List ( String, String )
verifyDomainIdentityRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Domain" data.domain


verifyDomainIdentityResponseEncoder : VerifyDomainIdentityResponse -> List ( String, String )
verifyDomainIdentityResponseEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "VerificationToken" data.verificationToken


verifyEmailAddressRequestEncoder : VerifyEmailAddressRequest -> List ( String, String )
verifyEmailAddressRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "EmailAddress" data.emailAddress


verifyEmailIdentityRequestEncoder : VerifyEmailIdentityRequest -> List ( String, String )
verifyEmailIdentityRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "EmailAddress" data.emailAddress


verifyEmailIdentityResponseEncoder : VerifyEmailIdentityResponse -> List ( String, String )
verifyEmailIdentityResponseEncoder data =
    []


workmailActionEncoder : WorkmailAction -> List ( String, String )
workmailActionEncoder data =
    []
        |> (case data.topicArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "OrganizationArn" data.organizationArn
