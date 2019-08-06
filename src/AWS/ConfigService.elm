module AWS.ConfigService exposing
    ( service
    , batchGetAggregateResourceConfig, batchGetResourceConfig, deleteAggregationAuthorization, deleteConfigRule, deleteConfigurationAggregator, deleteConfigurationRecorder, deleteDeliveryChannel, deleteEvaluationResults, deleteOrganizationConfigRule, deletePendingAggregationRequest, deleteRemediationConfiguration, DeleteRemediationConfigurationOptions, deleteRetentionConfiguration, deliverConfigSnapshot, describeAggregateComplianceByConfigRules, DescribeAggregateComplianceByConfigRulesOptions, describeAggregationAuthorizations, DescribeAggregationAuthorizationsOptions, describeComplianceByConfigRule, DescribeComplianceByConfigRuleOptions, describeComplianceByResource, DescribeComplianceByResourceOptions, describeConfigRuleEvaluationStatus, DescribeConfigRuleEvaluationStatusOptions, describeConfigRules, DescribeConfigRulesOptions, describeConfigurationAggregatorSourcesStatus, DescribeConfigurationAggregatorSourcesStatusOptions, describeConfigurationAggregators, DescribeConfigurationAggregatorsOptions, describeConfigurationRecorderStatus, DescribeConfigurationRecorderStatusOptions, describeConfigurationRecorders, DescribeConfigurationRecordersOptions, describeDeliveryChannelStatus, DescribeDeliveryChannelStatusOptions, describeDeliveryChannels, DescribeDeliveryChannelsOptions, describeOrganizationConfigRuleStatuses, DescribeOrganizationConfigRuleStatusesOptions, describeOrganizationConfigRules, DescribeOrganizationConfigRulesOptions, describePendingAggregationRequests, DescribePendingAggregationRequestsOptions, describeRemediationConfigurations, describeRemediationExecutionStatus, DescribeRemediationExecutionStatusOptions, describeRetentionConfigurations, DescribeRetentionConfigurationsOptions, getAggregateComplianceDetailsByConfigRule, GetAggregateComplianceDetailsByConfigRuleOptions, getAggregateConfigRuleComplianceSummary, GetAggregateConfigRuleComplianceSummaryOptions, getAggregateDiscoveredResourceCounts, GetAggregateDiscoveredResourceCountsOptions, getAggregateResourceConfig, getComplianceDetailsByConfigRule, GetComplianceDetailsByConfigRuleOptions, getComplianceDetailsByResource, GetComplianceDetailsByResourceOptions, getComplianceSummaryByConfigRule, getComplianceSummaryByResourceType, GetComplianceSummaryByResourceTypeOptions, getDiscoveredResourceCounts, GetDiscoveredResourceCountsOptions, getOrganizationConfigRuleDetailedStatus, GetOrganizationConfigRuleDetailedStatusOptions, getResourceConfigHistory, GetResourceConfigHistoryOptions, listAggregateDiscoveredResources, ListAggregateDiscoveredResourcesOptions, listDiscoveredResources, ListDiscoveredResourcesOptions, listTagsForResource, ListTagsForResourceOptions, putAggregationAuthorization, PutAggregationAuthorizationOptions, putConfigRule, PutConfigRuleOptions, putConfigurationAggregator, PutConfigurationAggregatorOptions, putConfigurationRecorder, putDeliveryChannel, putEvaluations, PutEvaluationsOptions, putOrganizationConfigRule, PutOrganizationConfigRuleOptions, putRemediationConfigurations, putRetentionConfiguration, selectResourceConfig, SelectResourceConfigOptions, startConfigRulesEvaluation, StartConfigRulesEvaluationOptions, startConfigurationRecorder, startRemediationExecution, stopConfigurationRecorder, tagResource, untagResource
    , BatchGetAggregateResourceConfigResponse, BatchGetResourceConfigResponse, DeleteEvaluationResultsResponse, DeleteRemediationConfigurationResponse, DeliverConfigSnapshotResponse, DescribeAggregateComplianceByConfigRulesResponse, DescribeAggregationAuthorizationsResponse, DescribeComplianceByConfigRuleResponse, DescribeComplianceByResourceResponse, DescribeConfigRuleEvaluationStatusResponse, DescribeConfigRulesResponse, DescribeConfigurationAggregatorSourcesStatusResponse, DescribeConfigurationAggregatorsResponse, DescribeConfigurationRecorderStatusResponse, DescribeConfigurationRecordersResponse, DescribeDeliveryChannelStatusResponse, DescribeDeliveryChannelsResponse, DescribeOrganizationConfigRuleStatusesResponse, DescribeOrganizationConfigRulesResponse, DescribePendingAggregationRequestsResponse, DescribeRemediationConfigurationsResponse, DescribeRemediationExecutionStatusResponse, DescribeRetentionConfigurationsResponse, GetAggregateComplianceDetailsByConfigRuleResponse, GetAggregateConfigRuleComplianceSummaryResponse, GetAggregateDiscoveredResourceCountsResponse, GetAggregateResourceConfigResponse, GetComplianceDetailsByConfigRuleResponse, GetComplianceDetailsByResourceResponse, GetComplianceSummaryByConfigRuleResponse, GetComplianceSummaryByResourceTypeResponse, GetDiscoveredResourceCountsResponse, GetOrganizationConfigRuleDetailedStatusResponse, GetResourceConfigHistoryResponse, ListAggregateDiscoveredResourcesResponse, ListDiscoveredResourcesResponse, ListTagsForResourceResponse, PutAggregationAuthorizationResponse, PutConfigurationAggregatorResponse, PutEvaluationsResponse, PutOrganizationConfigRuleResponse, PutRemediationConfigurationsResponse, PutRetentionConfigurationResponse, SelectResourceConfigResponse, StartConfigRulesEvaluationResponse, StartRemediationExecutionResponse
    , AccountAggregationSource, AggregateComplianceByConfigRule, AggregateComplianceCount, AggregateEvaluationResult, AggregateResourceIdentifier, AggregatedSourceStatus, AggregationAuthorization, BaseConfigurationItem, Compliance, ComplianceByConfigRule, ComplianceByResource, ComplianceContributorCount, ComplianceSummary, ComplianceSummaryByResourceType, ConfigExportDeliveryInfo, ConfigRule, ConfigRuleComplianceFilters, ConfigRuleComplianceSummaryFilters, ConfigRuleEvaluationStatus, ConfigSnapshotDeliveryProperties, ConfigStreamDeliveryInfo, ConfigurationAggregator, ConfigurationItem, ConfigurationRecorder, ConfigurationRecorderStatus, DeliveryChannel, DeliveryChannelStatus, Evaluation, EvaluationResult, EvaluationResultIdentifier, EvaluationResultQualifier, FailedRemediationBatch, FieldInfo, GroupedResourceCount, MemberAccountStatus, OrganizationAggregationSource, OrganizationConfigRule, OrganizationConfigRuleStatus, OrganizationCustomRuleMetadata, OrganizationManagedRuleMetadata, PendingAggregationRequest, QueryInfo, RecordingGroup, Relationship, RemediationConfiguration, RemediationExecutionStatus, RemediationExecutionStep, RemediationParameterValue, ResourceCount, ResourceCountFilters, ResourceFilters, ResourceIdentifier, ResourceKey, ResourceValue, RetentionConfiguration, Scope, Source, SourceDetail, StaticValue, StatusDetailFilters, Tag
    , AggregatedSourceStatusType(..), AggregatedSourceType(..), ChronologicalOrder(..), ComplianceType(..), ConfigRuleComplianceSummaryGroupKey(..), ConfigRuleState(..), ConfigurationItemStatus(..), DeliveryStatus(..), EventSource(..), MaximumExecutionFrequency(..), MemberAccountRuleStatus(..), MessageType(..), OrganizationConfigRuleTriggerType(..), OrganizationRuleStatus(..), Owner(..), RecorderStatus(..), RemediationExecutionState(..), RemediationExecutionStepState(..), RemediationTargetType(..), ResourceCountGroupKey(..), ResourceType(..), ResourceValueType(..)
    )

{-| <fullname>AWS Config</fullname> <p>AWS Config provides a way to keep track of the configurations of all the AWS resources associated with your AWS account. You can use AWS Config to get the current and historical configurations of each AWS resource and also to get information about the relationship between the resources. An AWS resource can be an Amazon Compute Cloud (Amazon EC2) instance, an Elastic Block Store (EBS) volume, an elastic network Interface (ENI), or a security group. For a complete list of resources currently supported by AWS Config, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported AWS Resources</a>.</p> <p>You can access and manage AWS Config through the AWS Management Console, the AWS Command Line Interface (AWS CLI), the AWS Config API, or the AWS SDKs for AWS Config. This reference guide contains documentation for the AWS Config API and the AWS CLI commands that you can use to manage AWS Config. The AWS Config API uses the Signature Version 4 protocol for signing requests. For more information about how to sign a request with this protocol, see <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a>. For detailed information about AWS Config features and their associated actions or commands, as well as how to work with AWS Management Console, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html">What Is AWS Config</a> in the <i>AWS Config Developer Guide</i>.</p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [batchGetAggregateResourceConfig](#batchGetAggregateResourceConfig)
  - [batchGetResourceConfig](#batchGetResourceConfig)
  - [deleteAggregationAuthorization](#deleteAggregationAuthorization)
  - [deleteConfigRule](#deleteConfigRule)
  - [deleteConfigurationAggregator](#deleteConfigurationAggregator)
  - [deleteConfigurationRecorder](#deleteConfigurationRecorder)
  - [deleteDeliveryChannel](#deleteDeliveryChannel)
  - [deleteEvaluationResults](#deleteEvaluationResults)
  - [deleteOrganizationConfigRule](#deleteOrganizationConfigRule)
  - [deletePendingAggregationRequest](#deletePendingAggregationRequest)
  - [deleteRemediationConfiguration](#deleteRemediationConfiguration)
  - [DeleteRemediationConfigurationOptions](#DeleteRemediationConfigurationOptions)
  - [deleteRetentionConfiguration](#deleteRetentionConfiguration)
  - [deliverConfigSnapshot](#deliverConfigSnapshot)
  - [describeAggregateComplianceByConfigRules](#describeAggregateComplianceByConfigRules)
  - [DescribeAggregateComplianceByConfigRulesOptions](#DescribeAggregateComplianceByConfigRulesOptions)
  - [describeAggregationAuthorizations](#describeAggregationAuthorizations)
  - [DescribeAggregationAuthorizationsOptions](#DescribeAggregationAuthorizationsOptions)
  - [describeComplianceByConfigRule](#describeComplianceByConfigRule)
  - [DescribeComplianceByConfigRuleOptions](#DescribeComplianceByConfigRuleOptions)
  - [describeComplianceByResource](#describeComplianceByResource)
  - [DescribeComplianceByResourceOptions](#DescribeComplianceByResourceOptions)
  - [describeConfigRuleEvaluationStatus](#describeConfigRuleEvaluationStatus)
  - [DescribeConfigRuleEvaluationStatusOptions](#DescribeConfigRuleEvaluationStatusOptions)
  - [describeConfigRules](#describeConfigRules)
  - [DescribeConfigRulesOptions](#DescribeConfigRulesOptions)
  - [describeConfigurationAggregatorSourcesStatus](#describeConfigurationAggregatorSourcesStatus)
  - [DescribeConfigurationAggregatorSourcesStatusOptions](#DescribeConfigurationAggregatorSourcesStatusOptions)
  - [describeConfigurationAggregators](#describeConfigurationAggregators)
  - [DescribeConfigurationAggregatorsOptions](#DescribeConfigurationAggregatorsOptions)
  - [describeConfigurationRecorderStatus](#describeConfigurationRecorderStatus)
  - [DescribeConfigurationRecorderStatusOptions](#DescribeConfigurationRecorderStatusOptions)
  - [describeConfigurationRecorders](#describeConfigurationRecorders)
  - [DescribeConfigurationRecordersOptions](#DescribeConfigurationRecordersOptions)
  - [describeDeliveryChannelStatus](#describeDeliveryChannelStatus)
  - [DescribeDeliveryChannelStatusOptions](#DescribeDeliveryChannelStatusOptions)
  - [describeDeliveryChannels](#describeDeliveryChannels)
  - [DescribeDeliveryChannelsOptions](#DescribeDeliveryChannelsOptions)
  - [describeOrganizationConfigRuleStatuses](#describeOrganizationConfigRuleStatuses)
  - [DescribeOrganizationConfigRuleStatusesOptions](#DescribeOrganizationConfigRuleStatusesOptions)
  - [describeOrganizationConfigRules](#describeOrganizationConfigRules)
  - [DescribeOrganizationConfigRulesOptions](#DescribeOrganizationConfigRulesOptions)
  - [describePendingAggregationRequests](#describePendingAggregationRequests)
  - [DescribePendingAggregationRequestsOptions](#DescribePendingAggregationRequestsOptions)
  - [describeRemediationConfigurations](#describeRemediationConfigurations)
  - [describeRemediationExecutionStatus](#describeRemediationExecutionStatus)
  - [DescribeRemediationExecutionStatusOptions](#DescribeRemediationExecutionStatusOptions)
  - [describeRetentionConfigurations](#describeRetentionConfigurations)
  - [DescribeRetentionConfigurationsOptions](#DescribeRetentionConfigurationsOptions)
  - [getAggregateComplianceDetailsByConfigRule](#getAggregateComplianceDetailsByConfigRule)
  - [GetAggregateComplianceDetailsByConfigRuleOptions](#GetAggregateComplianceDetailsByConfigRuleOptions)
  - [getAggregateConfigRuleComplianceSummary](#getAggregateConfigRuleComplianceSummary)
  - [GetAggregateConfigRuleComplianceSummaryOptions](#GetAggregateConfigRuleComplianceSummaryOptions)
  - [getAggregateDiscoveredResourceCounts](#getAggregateDiscoveredResourceCounts)
  - [GetAggregateDiscoveredResourceCountsOptions](#GetAggregateDiscoveredResourceCountsOptions)
  - [getAggregateResourceConfig](#getAggregateResourceConfig)
  - [getComplianceDetailsByConfigRule](#getComplianceDetailsByConfigRule)
  - [GetComplianceDetailsByConfigRuleOptions](#GetComplianceDetailsByConfigRuleOptions)
  - [getComplianceDetailsByResource](#getComplianceDetailsByResource)
  - [GetComplianceDetailsByResourceOptions](#GetComplianceDetailsByResourceOptions)
  - [getComplianceSummaryByConfigRule](#getComplianceSummaryByConfigRule)
  - [getComplianceSummaryByResourceType](#getComplianceSummaryByResourceType)
  - [GetComplianceSummaryByResourceTypeOptions](#GetComplianceSummaryByResourceTypeOptions)
  - [getDiscoveredResourceCounts](#getDiscoveredResourceCounts)
  - [GetDiscoveredResourceCountsOptions](#GetDiscoveredResourceCountsOptions)
  - [getOrganizationConfigRuleDetailedStatus](#getOrganizationConfigRuleDetailedStatus)
  - [GetOrganizationConfigRuleDetailedStatusOptions](#GetOrganizationConfigRuleDetailedStatusOptions)
  - [getResourceConfigHistory](#getResourceConfigHistory)
  - [GetResourceConfigHistoryOptions](#GetResourceConfigHistoryOptions)
  - [listAggregateDiscoveredResources](#listAggregateDiscoveredResources)
  - [ListAggregateDiscoveredResourcesOptions](#ListAggregateDiscoveredResourcesOptions)
  - [listDiscoveredResources](#listDiscoveredResources)
  - [ListDiscoveredResourcesOptions](#ListDiscoveredResourcesOptions)
  - [listTagsForResource](#listTagsForResource)
  - [ListTagsForResourceOptions](#ListTagsForResourceOptions)
  - [putAggregationAuthorization](#putAggregationAuthorization)
  - [PutAggregationAuthorizationOptions](#PutAggregationAuthorizationOptions)
  - [putConfigRule](#putConfigRule)
  - [PutConfigRuleOptions](#PutConfigRuleOptions)
  - [putConfigurationAggregator](#putConfigurationAggregator)
  - [PutConfigurationAggregatorOptions](#PutConfigurationAggregatorOptions)
  - [putConfigurationRecorder](#putConfigurationRecorder)
  - [putDeliveryChannel](#putDeliveryChannel)
  - [putEvaluations](#putEvaluations)
  - [PutEvaluationsOptions](#PutEvaluationsOptions)
  - [putOrganizationConfigRule](#putOrganizationConfigRule)
  - [PutOrganizationConfigRuleOptions](#PutOrganizationConfigRuleOptions)
  - [putRemediationConfigurations](#putRemediationConfigurations)
  - [putRetentionConfiguration](#putRetentionConfiguration)
  - [selectResourceConfig](#selectResourceConfig)
  - [SelectResourceConfigOptions](#SelectResourceConfigOptions)
  - [startConfigRulesEvaluation](#startConfigRulesEvaluation)
  - [StartConfigRulesEvaluationOptions](#StartConfigRulesEvaluationOptions)
  - [startConfigurationRecorder](#startConfigurationRecorder)
  - [startRemediationExecution](#startRemediationExecution)
  - [stopConfigurationRecorder](#stopConfigurationRecorder)
  - [tagResource](#tagResource)
  - [untagResource](#untagResource)

@docs batchGetAggregateResourceConfig, batchGetResourceConfig, deleteAggregationAuthorization, deleteConfigRule, deleteConfigurationAggregator, deleteConfigurationRecorder, deleteDeliveryChannel, deleteEvaluationResults, deleteOrganizationConfigRule, deletePendingAggregationRequest, deleteRemediationConfiguration, DeleteRemediationConfigurationOptions, deleteRetentionConfiguration, deliverConfigSnapshot, describeAggregateComplianceByConfigRules, DescribeAggregateComplianceByConfigRulesOptions, describeAggregationAuthorizations, DescribeAggregationAuthorizationsOptions, describeComplianceByConfigRule, DescribeComplianceByConfigRuleOptions, describeComplianceByResource, DescribeComplianceByResourceOptions, describeConfigRuleEvaluationStatus, DescribeConfigRuleEvaluationStatusOptions, describeConfigRules, DescribeConfigRulesOptions, describeConfigurationAggregatorSourcesStatus, DescribeConfigurationAggregatorSourcesStatusOptions, describeConfigurationAggregators, DescribeConfigurationAggregatorsOptions, describeConfigurationRecorderStatus, DescribeConfigurationRecorderStatusOptions, describeConfigurationRecorders, DescribeConfigurationRecordersOptions, describeDeliveryChannelStatus, DescribeDeliveryChannelStatusOptions, describeDeliveryChannels, DescribeDeliveryChannelsOptions, describeOrganizationConfigRuleStatuses, DescribeOrganizationConfigRuleStatusesOptions, describeOrganizationConfigRules, DescribeOrganizationConfigRulesOptions, describePendingAggregationRequests, DescribePendingAggregationRequestsOptions, describeRemediationConfigurations, describeRemediationExecutionStatus, DescribeRemediationExecutionStatusOptions, describeRetentionConfigurations, DescribeRetentionConfigurationsOptions, getAggregateComplianceDetailsByConfigRule, GetAggregateComplianceDetailsByConfigRuleOptions, getAggregateConfigRuleComplianceSummary, GetAggregateConfigRuleComplianceSummaryOptions, getAggregateDiscoveredResourceCounts, GetAggregateDiscoveredResourceCountsOptions, getAggregateResourceConfig, getComplianceDetailsByConfigRule, GetComplianceDetailsByConfigRuleOptions, getComplianceDetailsByResource, GetComplianceDetailsByResourceOptions, getComplianceSummaryByConfigRule, getComplianceSummaryByResourceType, GetComplianceSummaryByResourceTypeOptions, getDiscoveredResourceCounts, GetDiscoveredResourceCountsOptions, getOrganizationConfigRuleDetailedStatus, GetOrganizationConfigRuleDetailedStatusOptions, getResourceConfigHistory, GetResourceConfigHistoryOptions, listAggregateDiscoveredResources, ListAggregateDiscoveredResourcesOptions, listDiscoveredResources, ListDiscoveredResourcesOptions, listTagsForResource, ListTagsForResourceOptions, putAggregationAuthorization, PutAggregationAuthorizationOptions, putConfigRule, PutConfigRuleOptions, putConfigurationAggregator, PutConfigurationAggregatorOptions, putConfigurationRecorder, putDeliveryChannel, putEvaluations, PutEvaluationsOptions, putOrganizationConfigRule, PutOrganizationConfigRuleOptions, putRemediationConfigurations, putRetentionConfiguration, selectResourceConfig, SelectResourceConfigOptions, startConfigRulesEvaluation, StartConfigRulesEvaluationOptions, startConfigurationRecorder, startRemediationExecution, stopConfigurationRecorder, tagResource, untagResource


## Responses

  - [BatchGetAggregateResourceConfigResponse](#BatchGetAggregateResourceConfigResponse)
  - [BatchGetResourceConfigResponse](#BatchGetResourceConfigResponse)
  - [DeleteEvaluationResultsResponse](#DeleteEvaluationResultsResponse)
  - [DeleteRemediationConfigurationResponse](#DeleteRemediationConfigurationResponse)
  - [DeliverConfigSnapshotResponse](#DeliverConfigSnapshotResponse)
  - [DescribeAggregateComplianceByConfigRulesResponse](#DescribeAggregateComplianceByConfigRulesResponse)
  - [DescribeAggregationAuthorizationsResponse](#DescribeAggregationAuthorizationsResponse)
  - [DescribeComplianceByConfigRuleResponse](#DescribeComplianceByConfigRuleResponse)
  - [DescribeComplianceByResourceResponse](#DescribeComplianceByResourceResponse)
  - [DescribeConfigRuleEvaluationStatusResponse](#DescribeConfigRuleEvaluationStatusResponse)
  - [DescribeConfigRulesResponse](#DescribeConfigRulesResponse)
  - [DescribeConfigurationAggregatorSourcesStatusResponse](#DescribeConfigurationAggregatorSourcesStatusResponse)
  - [DescribeConfigurationAggregatorsResponse](#DescribeConfigurationAggregatorsResponse)
  - [DescribeConfigurationRecorderStatusResponse](#DescribeConfigurationRecorderStatusResponse)
  - [DescribeConfigurationRecordersResponse](#DescribeConfigurationRecordersResponse)
  - [DescribeDeliveryChannelStatusResponse](#DescribeDeliveryChannelStatusResponse)
  - [DescribeDeliveryChannelsResponse](#DescribeDeliveryChannelsResponse)
  - [DescribeOrganizationConfigRuleStatusesResponse](#DescribeOrganizationConfigRuleStatusesResponse)
  - [DescribeOrganizationConfigRulesResponse](#DescribeOrganizationConfigRulesResponse)
  - [DescribePendingAggregationRequestsResponse](#DescribePendingAggregationRequestsResponse)
  - [DescribeRemediationConfigurationsResponse](#DescribeRemediationConfigurationsResponse)
  - [DescribeRemediationExecutionStatusResponse](#DescribeRemediationExecutionStatusResponse)
  - [DescribeRetentionConfigurationsResponse](#DescribeRetentionConfigurationsResponse)
  - [GetAggregateComplianceDetailsByConfigRuleResponse](#GetAggregateComplianceDetailsByConfigRuleResponse)
  - [GetAggregateConfigRuleComplianceSummaryResponse](#GetAggregateConfigRuleComplianceSummaryResponse)
  - [GetAggregateDiscoveredResourceCountsResponse](#GetAggregateDiscoveredResourceCountsResponse)
  - [GetAggregateResourceConfigResponse](#GetAggregateResourceConfigResponse)
  - [GetComplianceDetailsByConfigRuleResponse](#GetComplianceDetailsByConfigRuleResponse)
  - [GetComplianceDetailsByResourceResponse](#GetComplianceDetailsByResourceResponse)
  - [GetComplianceSummaryByConfigRuleResponse](#GetComplianceSummaryByConfigRuleResponse)
  - [GetComplianceSummaryByResourceTypeResponse](#GetComplianceSummaryByResourceTypeResponse)
  - [GetDiscoveredResourceCountsResponse](#GetDiscoveredResourceCountsResponse)
  - [GetOrganizationConfigRuleDetailedStatusResponse](#GetOrganizationConfigRuleDetailedStatusResponse)
  - [GetResourceConfigHistoryResponse](#GetResourceConfigHistoryResponse)
  - [ListAggregateDiscoveredResourcesResponse](#ListAggregateDiscoveredResourcesResponse)
  - [ListDiscoveredResourcesResponse](#ListDiscoveredResourcesResponse)
  - [ListTagsForResourceResponse](#ListTagsForResourceResponse)
  - [PutAggregationAuthorizationResponse](#PutAggregationAuthorizationResponse)
  - [PutConfigurationAggregatorResponse](#PutConfigurationAggregatorResponse)
  - [PutEvaluationsResponse](#PutEvaluationsResponse)
  - [PutOrganizationConfigRuleResponse](#PutOrganizationConfigRuleResponse)
  - [PutRemediationConfigurationsResponse](#PutRemediationConfigurationsResponse)
  - [PutRetentionConfigurationResponse](#PutRetentionConfigurationResponse)
  - [SelectResourceConfigResponse](#SelectResourceConfigResponse)
  - [StartConfigRulesEvaluationResponse](#StartConfigRulesEvaluationResponse)
  - [StartRemediationExecutionResponse](#StartRemediationExecutionResponse)

@docs BatchGetAggregateResourceConfigResponse, BatchGetResourceConfigResponse, DeleteEvaluationResultsResponse, DeleteRemediationConfigurationResponse, DeliverConfigSnapshotResponse, DescribeAggregateComplianceByConfigRulesResponse, DescribeAggregationAuthorizationsResponse, DescribeComplianceByConfigRuleResponse, DescribeComplianceByResourceResponse, DescribeConfigRuleEvaluationStatusResponse, DescribeConfigRulesResponse, DescribeConfigurationAggregatorSourcesStatusResponse, DescribeConfigurationAggregatorsResponse, DescribeConfigurationRecorderStatusResponse, DescribeConfigurationRecordersResponse, DescribeDeliveryChannelStatusResponse, DescribeDeliveryChannelsResponse, DescribeOrganizationConfigRuleStatusesResponse, DescribeOrganizationConfigRulesResponse, DescribePendingAggregationRequestsResponse, DescribeRemediationConfigurationsResponse, DescribeRemediationExecutionStatusResponse, DescribeRetentionConfigurationsResponse, GetAggregateComplianceDetailsByConfigRuleResponse, GetAggregateConfigRuleComplianceSummaryResponse, GetAggregateDiscoveredResourceCountsResponse, GetAggregateResourceConfigResponse, GetComplianceDetailsByConfigRuleResponse, GetComplianceDetailsByResourceResponse, GetComplianceSummaryByConfigRuleResponse, GetComplianceSummaryByResourceTypeResponse, GetDiscoveredResourceCountsResponse, GetOrganizationConfigRuleDetailedStatusResponse, GetResourceConfigHistoryResponse, ListAggregateDiscoveredResourcesResponse, ListDiscoveredResourcesResponse, ListTagsForResourceResponse, PutAggregationAuthorizationResponse, PutConfigurationAggregatorResponse, PutEvaluationsResponse, PutOrganizationConfigRuleResponse, PutRemediationConfigurationsResponse, PutRetentionConfigurationResponse, SelectResourceConfigResponse, StartConfigRulesEvaluationResponse, StartRemediationExecutionResponse


## Records

  - [AccountAggregationSource](#AccountAggregationSource)
  - [AggregateComplianceByConfigRule](#AggregateComplianceByConfigRule)
  - [AggregateComplianceCount](#AggregateComplianceCount)
  - [AggregateEvaluationResult](#AggregateEvaluationResult)
  - [AggregateResourceIdentifier](#AggregateResourceIdentifier)
  - [AggregatedSourceStatus](#AggregatedSourceStatus)
  - [AggregationAuthorization](#AggregationAuthorization)
  - [BaseConfigurationItem](#BaseConfigurationItem)
  - [Compliance](#Compliance)
  - [ComplianceByConfigRule](#ComplianceByConfigRule)
  - [ComplianceByResource](#ComplianceByResource)
  - [ComplianceContributorCount](#ComplianceContributorCount)
  - [ComplianceSummary](#ComplianceSummary)
  - [ComplianceSummaryByResourceType](#ComplianceSummaryByResourceType)
  - [ConfigExportDeliveryInfo](#ConfigExportDeliveryInfo)
  - [ConfigRule](#ConfigRule)
  - [ConfigRuleComplianceFilters](#ConfigRuleComplianceFilters)
  - [ConfigRuleComplianceSummaryFilters](#ConfigRuleComplianceSummaryFilters)
  - [ConfigRuleEvaluationStatus](#ConfigRuleEvaluationStatus)
  - [ConfigSnapshotDeliveryProperties](#ConfigSnapshotDeliveryProperties)
  - [ConfigStreamDeliveryInfo](#ConfigStreamDeliveryInfo)
  - [ConfigurationAggregator](#ConfigurationAggregator)
  - [ConfigurationItem](#ConfigurationItem)
  - [ConfigurationRecorder](#ConfigurationRecorder)
  - [ConfigurationRecorderStatus](#ConfigurationRecorderStatus)
  - [DeliveryChannel](#DeliveryChannel)
  - [DeliveryChannelStatus](#DeliveryChannelStatus)
  - [Evaluation](#Evaluation)
  - [EvaluationResult](#EvaluationResult)
  - [EvaluationResultIdentifier](#EvaluationResultIdentifier)
  - [EvaluationResultQualifier](#EvaluationResultQualifier)
  - [FailedRemediationBatch](#FailedRemediationBatch)
  - [FieldInfo](#FieldInfo)
  - [GroupedResourceCount](#GroupedResourceCount)
  - [MemberAccountStatus](#MemberAccountStatus)
  - [OrganizationAggregationSource](#OrganizationAggregationSource)
  - [OrganizationConfigRule](#OrganizationConfigRule)
  - [OrganizationConfigRuleStatus](#OrganizationConfigRuleStatus)
  - [OrganizationCustomRuleMetadata](#OrganizationCustomRuleMetadata)
  - [OrganizationManagedRuleMetadata](#OrganizationManagedRuleMetadata)
  - [PendingAggregationRequest](#PendingAggregationRequest)
  - [QueryInfo](#QueryInfo)
  - [RecordingGroup](#RecordingGroup)
  - [Relationship](#Relationship)
  - [RemediationConfiguration](#RemediationConfiguration)
  - [RemediationExecutionStatus](#RemediationExecutionStatus)
  - [RemediationExecutionStep](#RemediationExecutionStep)
  - [RemediationParameterValue](#RemediationParameterValue)
  - [ResourceCount](#ResourceCount)
  - [ResourceCountFilters](#ResourceCountFilters)
  - [ResourceFilters](#ResourceFilters)
  - [ResourceIdentifier](#ResourceIdentifier)
  - [ResourceKey](#ResourceKey)
  - [ResourceValue](#ResourceValue)
  - [RetentionConfiguration](#RetentionConfiguration)
  - [Scope](#Scope)
  - [Source](#Source)
  - [SourceDetail](#SourceDetail)
  - [StaticValue](#StaticValue)
  - [StatusDetailFilters](#StatusDetailFilters)
  - [Tag](#Tag)

@docs AccountAggregationSource, AggregateComplianceByConfigRule, AggregateComplianceCount, AggregateEvaluationResult, AggregateResourceIdentifier, AggregatedSourceStatus, AggregationAuthorization, BaseConfigurationItem, Compliance, ComplianceByConfigRule, ComplianceByResource, ComplianceContributorCount, ComplianceSummary, ComplianceSummaryByResourceType, ConfigExportDeliveryInfo, ConfigRule, ConfigRuleComplianceFilters, ConfigRuleComplianceSummaryFilters, ConfigRuleEvaluationStatus, ConfigSnapshotDeliveryProperties, ConfigStreamDeliveryInfo, ConfigurationAggregator, ConfigurationItem, ConfigurationRecorder, ConfigurationRecorderStatus, DeliveryChannel, DeliveryChannelStatus, Evaluation, EvaluationResult, EvaluationResultIdentifier, EvaluationResultQualifier, FailedRemediationBatch, FieldInfo, GroupedResourceCount, MemberAccountStatus, OrganizationAggregationSource, OrganizationConfigRule, OrganizationConfigRuleStatus, OrganizationCustomRuleMetadata, OrganizationManagedRuleMetadata, PendingAggregationRequest, QueryInfo, RecordingGroup, Relationship, RemediationConfiguration, RemediationExecutionStatus, RemediationExecutionStep, RemediationParameterValue, ResourceCount, ResourceCountFilters, ResourceFilters, ResourceIdentifier, ResourceKey, ResourceValue, RetentionConfiguration, Scope, Source, SourceDetail, StaticValue, StatusDetailFilters, Tag


## Unions

  - [AggregatedSourceStatusType](#AggregatedSourceStatusType)
  - [AggregatedSourceType](#AggregatedSourceType)
  - [ChronologicalOrder](#ChronologicalOrder)
  - [ComplianceType](#ComplianceType)
  - [ConfigRuleComplianceSummaryGroupKey](#ConfigRuleComplianceSummaryGroupKey)
  - [ConfigRuleState](#ConfigRuleState)
  - [ConfigurationItemStatus](#ConfigurationItemStatus)
  - [DeliveryStatus](#DeliveryStatus)
  - [EventSource](#EventSource)
  - [MaximumExecutionFrequency](#MaximumExecutionFrequency)
  - [MemberAccountRuleStatus](#MemberAccountRuleStatus)
  - [MessageType](#MessageType)
  - [OrganizationConfigRuleTriggerType](#OrganizationConfigRuleTriggerType)
  - [OrganizationRuleStatus](#OrganizationRuleStatus)
  - [Owner](#Owner)
  - [RecorderStatus](#RecorderStatus)
  - [RemediationExecutionState](#RemediationExecutionState)
  - [RemediationExecutionStepState](#RemediationExecutionStepState)
  - [RemediationTargetType](#RemediationTargetType)
  - [ResourceCountGroupKey](#ResourceCountGroupKey)
  - [ResourceType](#ResourceType)
  - [ResourceValueType](#ResourceValueType)

@docs AggregatedSourceStatusType, AggregatedSourceType, ChronologicalOrder, ComplianceType, ConfigRuleComplianceSummaryGroupKey, ConfigRuleState, ConfigurationItemStatus, DeliveryStatus, EventSource, MaximumExecutionFrequency, MemberAccountRuleStatus, MessageType, OrganizationConfigRuleTriggerType, OrganizationRuleStatus, Owner, RecorderStatus, RemediationExecutionState, RemediationExecutionStepState, RemediationTargetType, ResourceCountGroupKey, ResourceType, ResourceValueType

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
import Json.Encode as JE
import Time exposing (Posix)


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "config"
        "2014-11-12"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "StarlingDoveService")



-- OPERATIONS


{-|

<p>Returns the current configuration items for resources that are present in your AWS Config aggregator. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty <code>unprocessedResourceIdentifiers</code> list. </p> <note> <ul> <li> <p>The API does not return results for deleted resources.</p> </li> <li> <p> The API does not return tags and relationships.</p> </li> </ul> </note>

**Required Parameters**

  - `configurationAggregatorName` **:** `String`
  - `resourceIdentifiers` **:** `(List AggregateResourceIdentifier)`

-}
batchGetAggregateResourceConfig :
    String
    -> List AggregateResourceIdentifier
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetAggregateResourceConfigResponse)
batchGetAggregateResourceConfig configurationAggregatorName resourceIdentifiers =
    let
        requestInput =
            BatchGetAggregateResourceConfigRequest
                configurationAggregatorName
                resourceIdentifiers
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> batchGetAggregateResourceConfigRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchGetAggregateResourceConfig"
            (AWS.Core.Decode.ResultDecoder "BatchGetAggregateResourceConfigResponse" batchGetAggregateResourceConfigResponseDecoder)
        )


{-|

<p>Returns the current configuration for one or more requested resources. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty unprocessedResourceKeys list. </p> <note> <ul> <li> <p>The API does not return results for deleted resources.</p> </li> <li> <p> The API does not return any tags for the requested resources. This information is filtered out of the supplementaryConfiguration section of the API response.</p> </li> </ul> </note>

**Required Parameters**

  - `resourceKeys` **:** `(List ResourceKey)`

-}
batchGetResourceConfig :
    List ResourceKey
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetResourceConfigResponse)
batchGetResourceConfig resourceKeys =
    let
        requestInput =
            BatchGetResourceConfigRequest
                resourceKeys
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> batchGetResourceConfigRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchGetResourceConfig"
            (AWS.Core.Decode.ResultDecoder "BatchGetResourceConfigResponse" batchGetResourceConfigResponseDecoder)
        )


{-|

<p>Deletes the authorization granted to the specified configuration aggregator account in a specified region.</p>

**Required Parameters**

  - `authorizedAccountId` **:** `String`
  - `authorizedAwsRegion` **:** `String`

-}
deleteAggregationAuthorization :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteAggregationAuthorization authorizedAccountId authorizedAwsRegion =
    let
        requestInput =
            DeleteAggregationAuthorizationRequest
                authorizedAccountId
                authorizedAwsRegion
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteAggregationAuthorizationRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteAggregationAuthorization"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified AWS Config rule and all of its evaluation results.</p> <p>AWS Config sets the state of a rule to <code>DELETING</code> until the deletion is complete. You cannot update a rule while it is in this state. If you make a <code>PutConfigRule</code> or <code>DeleteConfigRule</code> request for the rule, you will receive a <code>ResourceInUseException</code>.</p> <p>You can check the state of a rule by using the <code>DescribeConfigRules</code> request.</p>

**Required Parameters**

  - `configRuleName` **:** `String`

-}
deleteConfigRule :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteConfigRule configRuleName =
    let
        requestInput =
            DeleteConfigRuleRequest
                configRuleName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteConfigRuleRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteConfigRule"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified configuration aggregator and the aggregated data associated with the aggregator.</p>

**Required Parameters**

  - `configurationAggregatorName` **:** `String`

-}
deleteConfigurationAggregator :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteConfigurationAggregator configurationAggregatorName =
    let
        requestInput =
            DeleteConfigurationAggregatorRequest
                configurationAggregatorName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteConfigurationAggregatorRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteConfigurationAggregator"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the configuration recorder.</p> <p>After the configuration recorder is deleted, AWS Config will not record resource configuration changes until you create a new configuration recorder.</p> <p>This action does not delete the configuration information that was previously recorded. You will be able to access the previously recorded information by using the <code>GetResourceConfigHistory</code> action, but you will not be able to access this information in the AWS Config console until you create a new configuration recorder.</p>

**Required Parameters**

  - `configurationRecorderName` **:** `String`

-}
deleteConfigurationRecorder :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteConfigurationRecorder configurationRecorderName =
    let
        requestInput =
            DeleteConfigurationRecorderRequest
                configurationRecorderName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteConfigurationRecorderRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteConfigurationRecorder"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the delivery channel.</p> <p>Before you can delete the delivery channel, you must stop the configuration recorder by using the <a>StopConfigurationRecorder</a> action.</p>

**Required Parameters**

  - `deliveryChannelName` **:** `String`

-}
deleteDeliveryChannel :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteDeliveryChannel deliveryChannelName =
    let
        requestInput =
            DeleteDeliveryChannelRequest
                deliveryChannelName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteDeliveryChannelRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteDeliveryChannel"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the evaluation results for the specified AWS Config rule. You can specify one AWS Config rule per request. After you delete the evaluation results, you can call the <a>StartConfigRulesEvaluation</a> API to start evaluating your AWS resources against the rule.</p>

**Required Parameters**

  - `configRuleName` **:** `String`

-}
deleteEvaluationResults :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteEvaluationResultsResponse)
deleteEvaluationResults configRuleName =
    let
        requestInput =
            DeleteEvaluationResultsRequest
                configRuleName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteEvaluationResultsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteEvaluationResults"
            (AWS.Core.Decode.ResultDecoder "DeleteEvaluationResultsResponse" deleteEvaluationResultsResponseDecoder)
        )


{-| undefined

**Required Parameters**

  - `organizationConfigRuleName` **:** `String`

-}
deleteOrganizationConfigRule :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteOrganizationConfigRule organizationConfigRuleName =
    let
        requestInput =
            DeleteOrganizationConfigRuleRequest
                organizationConfigRuleName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteOrganizationConfigRuleRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteOrganizationConfigRule"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes pending authorization requests for a specified aggregator account in a specified region.</p>

**Required Parameters**

  - `requesterAccountId` **:** `String`
  - `requesterAwsRegion` **:** `String`

-}
deletePendingAggregationRequest :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deletePendingAggregationRequest requesterAccountId requesterAwsRegion =
    let
        requestInput =
            DeletePendingAggregationRequestRequest
                requesterAccountId
                requesterAwsRegion
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deletePendingAggregationRequestRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeletePendingAggregationRequest"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the remediation configuration.</p>

**Required Parameters**

  - `configRuleName` **:** `String`

-}
deleteRemediationConfiguration :
    String
    -> (DeleteRemediationConfigurationOptions -> DeleteRemediationConfigurationOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRemediationConfigurationResponse)
deleteRemediationConfiguration configRuleName setOptions =
    let
        requestInput =
            DeleteRemediationConfigurationRequest
                configRuleName
                options.resourceType

        options =
            setOptions (DeleteRemediationConfigurationOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteRemediationConfigurationRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteRemediationConfiguration"
            (AWS.Core.Decode.ResultDecoder "DeleteRemediationConfigurationResponse" deleteRemediationConfigurationResponseDecoder)
        )


{-| Options for a deleteRemediationConfiguration request
-}
type alias DeleteRemediationConfigurationOptions =
    { resourceType : Maybe String
    }


{-|

<p>Deletes the retention configuration.</p>

**Required Parameters**

  - `retentionConfigurationName` **:** `String`

-}
deleteRetentionConfiguration :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteRetentionConfiguration retentionConfigurationName =
    let
        requestInput =
            DeleteRetentionConfigurationRequest
                retentionConfigurationName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteRetentionConfigurationRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteRetentionConfiguration"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel. After the delivery has started, AWS Config sends the following notifications using an Amazon SNS topic that you have specified.</p> <ul> <li> <p>Notification of the start of the delivery.</p> </li> <li> <p>Notification of the completion of the delivery, if the delivery was successfully completed.</p> </li> <li> <p>Notification of delivery failure, if the delivery failed.</p> </li> </ul>

**Required Parameters**

  - `deliveryChannelName` **:** `String`

-}
deliverConfigSnapshot :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeliverConfigSnapshotResponse)
deliverConfigSnapshot deliveryChannelName =
    let
        requestInput =
            DeliverConfigSnapshotRequest
                deliveryChannelName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deliverConfigSnapshotRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeliverConfigSnapshot"
            (AWS.Core.Decode.ResultDecoder "DeliverConfigSnapshotResponse" deliverConfigSnapshotResponseDecoder)
        )


{-|

<p>Returns a list of compliant and noncompliant rules with the number of resources for compliant and noncompliant rules. </p> <note> <p>The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.</p> </note>

**Required Parameters**

  - `configurationAggregatorName` **:** `String`

-}
describeAggregateComplianceByConfigRules :
    String
    -> (DescribeAggregateComplianceByConfigRulesOptions -> DescribeAggregateComplianceByConfigRulesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAggregateComplianceByConfigRulesResponse)
describeAggregateComplianceByConfigRules configurationAggregatorName setOptions =
    let
        requestInput =
            DescribeAggregateComplianceByConfigRulesRequest
                configurationAggregatorName
                options.filters
                options.limit
                options.nextToken

        options =
            setOptions (DescribeAggregateComplianceByConfigRulesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeAggregateComplianceByConfigRulesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAggregateComplianceByConfigRules"
            (AWS.Core.Decode.ResultDecoder "DescribeAggregateComplianceByConfigRulesResponse" describeAggregateComplianceByConfigRulesResponseDecoder)
        )


{-| Options for a describeAggregateComplianceByConfigRules request
-}
type alias DescribeAggregateComplianceByConfigRulesOptions =
    { filters : Maybe ConfigRuleComplianceFilters
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns a list of authorizations granted to various aggregator accounts and regions.</p>

**Required Parameters**

-}
describeAggregationAuthorizations :
    (DescribeAggregationAuthorizationsOptions -> DescribeAggregationAuthorizationsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAggregationAuthorizationsResponse)
describeAggregationAuthorizations setOptions =
    let
        requestInput =
            DescribeAggregationAuthorizationsRequest
                options.limit
                options.nextToken

        options =
            setOptions (DescribeAggregationAuthorizationsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeAggregationAuthorizationsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAggregationAuthorizations"
            (AWS.Core.Decode.ResultDecoder "DescribeAggregationAuthorizationsResponse" describeAggregationAuthorizationsResponseDecoder)
        )


{-| Options for a describeAggregationAuthorizations request
-}
type alias DescribeAggregationAuthorizationsOptions =
    { limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Indicates whether the specified AWS Config rules are compliant. If a rule is noncompliant, this action returns the number of AWS resources that do not comply with the rule.</p> <p>A rule is compliant if all of the evaluated resources comply with it. It is noncompliant if any of these resources do not comply.</p> <p>If AWS Config has no current evaluation results for the rule, it returns <code>INSUFFICIENT_DATA</code>. This result might indicate one of the following conditions:</p> <ul> <li> <p>AWS Config has never invoked an evaluation for the rule. To check whether it has, use the <code>DescribeConfigRuleEvaluationStatus</code> action to get the <code>LastSuccessfulInvocationTime</code> and <code>LastFailedInvocationTime</code>.</p> </li> <li> <p>The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role you assigned to your configuration recorder includes the <code>config:PutEvaluations</code> permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the <code>config:PutEvaluations</code> permission.</p> </li> <li> <p>The rule's AWS Lambda function has returned <code>NOT_APPLICABLE</code> for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.</p> </li> </ul>

**Required Parameters**

-}
describeComplianceByConfigRule :
    (DescribeComplianceByConfigRuleOptions -> DescribeComplianceByConfigRuleOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeComplianceByConfigRuleResponse)
describeComplianceByConfigRule setOptions =
    let
        requestInput =
            DescribeComplianceByConfigRuleRequest
                options.configRuleNames
                options.complianceTypes
                options.nextToken

        options =
            setOptions (DescribeComplianceByConfigRuleOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeComplianceByConfigRuleRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeComplianceByConfigRule"
            (AWS.Core.Decode.ResultDecoder "DescribeComplianceByConfigRuleResponse" describeComplianceByConfigRuleResponseDecoder)
        )


{-| Options for a describeComplianceByConfigRule request
-}
type alias DescribeComplianceByConfigRuleOptions =
    { configRuleNames : Maybe (List String)
    , complianceTypes : Maybe (List ComplianceType)
    , nextToken : Maybe String
    }


{-|

<p>Indicates whether the specified AWS resources are compliant. If a resource is noncompliant, this action returns the number of AWS Config rules that the resource does not comply with.</p> <p>A resource is compliant if it complies with all the AWS Config rules that evaluate it. It is noncompliant if it does not comply with one or more of these rules.</p> <p>If AWS Config has no current evaluation results for the resource, it returns <code>INSUFFICIENT_DATA</code>. This result might indicate one of the following conditions about the rules that evaluate the resource:</p> <ul> <li> <p>AWS Config has never invoked an evaluation for the rule. To check whether it has, use the <code>DescribeConfigRuleEvaluationStatus</code> action to get the <code>LastSuccessfulInvocationTime</code> and <code>LastFailedInvocationTime</code>.</p> </li> <li> <p>The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role that you assigned to your configuration recorder includes the <code>config:PutEvaluations</code> permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the <code>config:PutEvaluations</code> permission.</p> </li> <li> <p>The rule's AWS Lambda function has returned <code>NOT_APPLICABLE</code> for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.</p> </li> </ul>

**Required Parameters**

-}
describeComplianceByResource :
    (DescribeComplianceByResourceOptions -> DescribeComplianceByResourceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeComplianceByResourceResponse)
describeComplianceByResource setOptions =
    let
        requestInput =
            DescribeComplianceByResourceRequest
                options.resourceType
                options.resourceId
                options.complianceTypes
                options.limit
                options.nextToken

        options =
            setOptions (DescribeComplianceByResourceOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeComplianceByResourceRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeComplianceByResource"
            (AWS.Core.Decode.ResultDecoder "DescribeComplianceByResourceResponse" describeComplianceByResourceResponseDecoder)
        )


{-| Options for a describeComplianceByResource request
-}
type alias DescribeComplianceByResourceOptions =
    { resourceType : Maybe String
    , resourceId : Maybe String
    , complianceTypes : Maybe (List ComplianceType)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns status information for each of your AWS managed Config rules. The status includes information such as the last time AWS Config invoked the rule, the last time AWS Config failed to invoke the rule, and the related error for the last failure.</p>

**Required Parameters**

-}
describeConfigRuleEvaluationStatus :
    (DescribeConfigRuleEvaluationStatusOptions -> DescribeConfigRuleEvaluationStatusOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeConfigRuleEvaluationStatusResponse)
describeConfigRuleEvaluationStatus setOptions =
    let
        requestInput =
            DescribeConfigRuleEvaluationStatusRequest
                options.configRuleNames
                options.nextToken
                options.limit

        options =
            setOptions (DescribeConfigRuleEvaluationStatusOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeConfigRuleEvaluationStatusRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeConfigRuleEvaluationStatus"
            (AWS.Core.Decode.ResultDecoder "DescribeConfigRuleEvaluationStatusResponse" describeConfigRuleEvaluationStatusResponseDecoder)
        )


{-| Options for a describeConfigRuleEvaluationStatus request
-}
type alias DescribeConfigRuleEvaluationStatusOptions =
    { configRuleNames : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Returns details about your AWS Config rules.</p>

**Required Parameters**

-}
describeConfigRules :
    (DescribeConfigRulesOptions -> DescribeConfigRulesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeConfigRulesResponse)
describeConfigRules setOptions =
    let
        requestInput =
            DescribeConfigRulesRequest
                options.configRuleNames
                options.nextToken

        options =
            setOptions (DescribeConfigRulesOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeConfigRulesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeConfigRules"
            (AWS.Core.Decode.ResultDecoder "DescribeConfigRulesResponse" describeConfigRulesResponseDecoder)
        )


{-| Options for a describeConfigRules request
-}
type alias DescribeConfigRulesOptions =
    { configRuleNames : Maybe (List String)
    , nextToken : Maybe String
    }


{-|

<p>Returns status information for sources within an aggregator. The status includes information about the last time AWS Config verified authorization between the source account and an aggregator account. In case of a failure, the status contains the related error code or message. </p>

**Required Parameters**

  - `configurationAggregatorName` **:** `String`

-}
describeConfigurationAggregatorSourcesStatus :
    String
    -> (DescribeConfigurationAggregatorSourcesStatusOptions -> DescribeConfigurationAggregatorSourcesStatusOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeConfigurationAggregatorSourcesStatusResponse)
describeConfigurationAggregatorSourcesStatus configurationAggregatorName setOptions =
    let
        requestInput =
            DescribeConfigurationAggregatorSourcesStatusRequest
                configurationAggregatorName
                options.updateStatus
                options.nextToken
                options.limit

        options =
            setOptions (DescribeConfigurationAggregatorSourcesStatusOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeConfigurationAggregatorSourcesStatusRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeConfigurationAggregatorSourcesStatus"
            (AWS.Core.Decode.ResultDecoder "DescribeConfigurationAggregatorSourcesStatusResponse" describeConfigurationAggregatorSourcesStatusResponseDecoder)
        )


{-| Options for a describeConfigurationAggregatorSourcesStatus request
-}
type alias DescribeConfigurationAggregatorSourcesStatusOptions =
    { updateStatus : Maybe (List AggregatedSourceStatusType)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Returns the details of one or more configuration aggregators. If the configuration aggregator is not specified, this action returns the details for all the configuration aggregators associated with the account. </p>

**Required Parameters**

-}
describeConfigurationAggregators :
    (DescribeConfigurationAggregatorsOptions -> DescribeConfigurationAggregatorsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeConfigurationAggregatorsResponse)
describeConfigurationAggregators setOptions =
    let
        requestInput =
            DescribeConfigurationAggregatorsRequest
                options.configurationAggregatorNames
                options.nextToken
                options.limit

        options =
            setOptions (DescribeConfigurationAggregatorsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeConfigurationAggregatorsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeConfigurationAggregators"
            (AWS.Core.Decode.ResultDecoder "DescribeConfigurationAggregatorsResponse" describeConfigurationAggregatorsResponseDecoder)
        )


{-| Options for a describeConfigurationAggregators request
-}
type alias DescribeConfigurationAggregatorsOptions =
    { configurationAggregatorNames : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Returns the current status of the specified configuration recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorders associated with the account.</p> <note> <p>Currently, you can specify only one configuration recorder per region in your account.</p> </note>

**Required Parameters**

-}
describeConfigurationRecorderStatus :
    (DescribeConfigurationRecorderStatusOptions -> DescribeConfigurationRecorderStatusOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeConfigurationRecorderStatusResponse)
describeConfigurationRecorderStatus setOptions =
    let
        requestInput =
            DescribeConfigurationRecorderStatusRequest
                options.configurationRecorderNames

        options =
            setOptions (DescribeConfigurationRecorderStatusOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeConfigurationRecorderStatusRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeConfigurationRecorderStatus"
            (AWS.Core.Decode.ResultDecoder "DescribeConfigurationRecorderStatusResponse" describeConfigurationRecorderStatusResponseDecoder)
        )


{-| Options for a describeConfigurationRecorderStatus request
-}
type alias DescribeConfigurationRecorderStatusOptions =
    { configurationRecorderNames : Maybe (List String)
    }


{-|

<p>Returns the details for the specified configuration recorders. If the configuration recorder is not specified, this action returns the details for all configuration recorders associated with the account.</p> <note> <p>Currently, you can specify only one configuration recorder per region in your account.</p> </note>

**Required Parameters**

-}
describeConfigurationRecorders :
    (DescribeConfigurationRecordersOptions -> DescribeConfigurationRecordersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeConfigurationRecordersResponse)
describeConfigurationRecorders setOptions =
    let
        requestInput =
            DescribeConfigurationRecordersRequest
                options.configurationRecorderNames

        options =
            setOptions (DescribeConfigurationRecordersOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeConfigurationRecordersRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeConfigurationRecorders"
            (AWS.Core.Decode.ResultDecoder "DescribeConfigurationRecordersResponse" describeConfigurationRecordersResponseDecoder)
        )


{-| Options for a describeConfigurationRecorders request
-}
type alias DescribeConfigurationRecordersOptions =
    { configurationRecorderNames : Maybe (List String)
    }


{-|

<p>Returns the current status of the specified delivery channel. If a delivery channel is not specified, this action returns the current status of all delivery channels associated with the account.</p> <note> <p>Currently, you can specify only one delivery channel per region in your account.</p> </note>

**Required Parameters**

-}
describeDeliveryChannelStatus :
    (DescribeDeliveryChannelStatusOptions -> DescribeDeliveryChannelStatusOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDeliveryChannelStatusResponse)
describeDeliveryChannelStatus setOptions =
    let
        requestInput =
            DescribeDeliveryChannelStatusRequest
                options.deliveryChannelNames

        options =
            setOptions (DescribeDeliveryChannelStatusOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeDeliveryChannelStatusRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeDeliveryChannelStatus"
            (AWS.Core.Decode.ResultDecoder "DescribeDeliveryChannelStatusResponse" describeDeliveryChannelStatusResponseDecoder)
        )


{-| Options for a describeDeliveryChannelStatus request
-}
type alias DescribeDeliveryChannelStatusOptions =
    { deliveryChannelNames : Maybe (List String)
    }


{-|

<p>Returns details about the specified delivery channel. If a delivery channel is not specified, this action returns the details of all delivery channels associated with the account.</p> <note> <p>Currently, you can specify only one delivery channel per region in your account.</p> </note>

**Required Parameters**

-}
describeDeliveryChannels :
    (DescribeDeliveryChannelsOptions -> DescribeDeliveryChannelsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDeliveryChannelsResponse)
describeDeliveryChannels setOptions =
    let
        requestInput =
            DescribeDeliveryChannelsRequest
                options.deliveryChannelNames

        options =
            setOptions (DescribeDeliveryChannelsOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeDeliveryChannelsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeDeliveryChannels"
            (AWS.Core.Decode.ResultDecoder "DescribeDeliveryChannelsResponse" describeDeliveryChannelsResponseDecoder)
        )


{-| Options for a describeDeliveryChannels request
-}
type alias DescribeDeliveryChannelsOptions =
    { deliveryChannelNames : Maybe (List String)
    }


{-| undefined

**Required Parameters**

-}
describeOrganizationConfigRuleStatuses :
    (DescribeOrganizationConfigRuleStatusesOptions -> DescribeOrganizationConfigRuleStatusesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeOrganizationConfigRuleStatusesResponse)
describeOrganizationConfigRuleStatuses setOptions =
    let
        requestInput =
            DescribeOrganizationConfigRuleStatusesRequest
                options.organizationConfigRuleNames
                options.limit
                options.nextToken

        options =
            setOptions (DescribeOrganizationConfigRuleStatusesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeOrganizationConfigRuleStatusesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeOrganizationConfigRuleStatuses"
            (AWS.Core.Decode.ResultDecoder "DescribeOrganizationConfigRuleStatusesResponse" describeOrganizationConfigRuleStatusesResponseDecoder)
        )


{-| Options for a describeOrganizationConfigRuleStatuses request
-}
type alias DescribeOrganizationConfigRuleStatusesOptions =
    { organizationConfigRuleNames : Maybe (List String)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined

**Required Parameters**

-}
describeOrganizationConfigRules :
    (DescribeOrganizationConfigRulesOptions -> DescribeOrganizationConfigRulesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeOrganizationConfigRulesResponse)
describeOrganizationConfigRules setOptions =
    let
        requestInput =
            DescribeOrganizationConfigRulesRequest
                options.organizationConfigRuleNames
                options.limit
                options.nextToken

        options =
            setOptions (DescribeOrganizationConfigRulesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeOrganizationConfigRulesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeOrganizationConfigRules"
            (AWS.Core.Decode.ResultDecoder "DescribeOrganizationConfigRulesResponse" describeOrganizationConfigRulesResponseDecoder)
        )


{-| Options for a describeOrganizationConfigRules request
-}
type alias DescribeOrganizationConfigRulesOptions =
    { organizationConfigRuleNames : Maybe (List String)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns a list of all pending aggregation requests.</p>

**Required Parameters**

-}
describePendingAggregationRequests :
    (DescribePendingAggregationRequestsOptions -> DescribePendingAggregationRequestsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribePendingAggregationRequestsResponse)
describePendingAggregationRequests setOptions =
    let
        requestInput =
            DescribePendingAggregationRequestsRequest
                options.limit
                options.nextToken

        options =
            setOptions (DescribePendingAggregationRequestsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describePendingAggregationRequestsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribePendingAggregationRequests"
            (AWS.Core.Decode.ResultDecoder "DescribePendingAggregationRequestsResponse" describePendingAggregationRequestsResponseDecoder)
        )


{-| Options for a describePendingAggregationRequests request
-}
type alias DescribePendingAggregationRequestsOptions =
    { limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns the details of one or more remediation configurations.</p>

**Required Parameters**

  - `configRuleNames` **:** `(List String)`

-}
describeRemediationConfigurations :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeRemediationConfigurationsResponse)
describeRemediationConfigurations configRuleNames =
    let
        requestInput =
            DescribeRemediationConfigurationsRequest
                configRuleNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeRemediationConfigurationsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeRemediationConfigurations"
            (AWS.Core.Decode.ResultDecoder "DescribeRemediationConfigurationsResponse" describeRemediationConfigurationsResponseDecoder)
        )


{-|

<p>Provides a detailed view of a Remediation Execution for a set of resources including state, timestamps for when steps for the remediation execution occur, and any error messages for steps that have failed. When you specify the limit and the next token, you receive a paginated response.</p>

**Required Parameters**

  - `configRuleName` **:** `String`

-}
describeRemediationExecutionStatus :
    String
    -> (DescribeRemediationExecutionStatusOptions -> DescribeRemediationExecutionStatusOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeRemediationExecutionStatusResponse)
describeRemediationExecutionStatus configRuleName setOptions =
    let
        requestInput =
            DescribeRemediationExecutionStatusRequest
                configRuleName
                options.resourceKeys
                options.limit
                options.nextToken

        options =
            setOptions (DescribeRemediationExecutionStatusOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeRemediationExecutionStatusRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeRemediationExecutionStatus"
            (AWS.Core.Decode.ResultDecoder "DescribeRemediationExecutionStatusResponse" describeRemediationExecutionStatusResponseDecoder)
        )


{-| Options for a describeRemediationExecutionStatus request
-}
type alias DescribeRemediationExecutionStatusOptions =
    { resourceKeys : Maybe (List ResourceKey)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns the details of one or more retention configurations. If the retention configuration name is not specified, this action returns the details for all the retention configurations for that account.</p> <note> <p>Currently, AWS Config supports only one retention configuration per region in your account.</p> </note>

**Required Parameters**

-}
describeRetentionConfigurations :
    (DescribeRetentionConfigurationsOptions -> DescribeRetentionConfigurationsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeRetentionConfigurationsResponse)
describeRetentionConfigurations setOptions =
    let
        requestInput =
            DescribeRetentionConfigurationsRequest
                options.retentionConfigurationNames
                options.nextToken

        options =
            setOptions (DescribeRetentionConfigurationsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeRetentionConfigurationsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeRetentionConfigurations"
            (AWS.Core.Decode.ResultDecoder "DescribeRetentionConfigurationsResponse" describeRetentionConfigurationsResponseDecoder)
        )


{-| Options for a describeRetentionConfigurations request
-}
type alias DescribeRetentionConfigurationsOptions =
    { retentionConfigurationNames : Maybe (List String)
    , nextToken : Maybe String
    }


{-|

<p>Returns the evaluation results for the specified AWS Config rule for a specific resource in a rule. The results indicate which AWS resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule. </p> <note> <p>The results can return an empty result page. But if you have a nextToken, the results are displayed on the next page.</p> </note>

**Required Parameters**

  - `configurationAggregatorName` **:** `String`
  - `configRuleName` **:** `String`
  - `accountId` **:** `String`
  - `awsRegion` **:** `String`

-}
getAggregateComplianceDetailsByConfigRule :
    String
    -> String
    -> String
    -> String
    -> (GetAggregateComplianceDetailsByConfigRuleOptions -> GetAggregateComplianceDetailsByConfigRuleOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAggregateComplianceDetailsByConfigRuleResponse)
getAggregateComplianceDetailsByConfigRule configurationAggregatorName configRuleName accountId awsRegion setOptions =
    let
        requestInput =
            GetAggregateComplianceDetailsByConfigRuleRequest
                configurationAggregatorName
                configRuleName
                accountId
                awsRegion
                options.complianceType
                options.limit
                options.nextToken

        options =
            setOptions (GetAggregateComplianceDetailsByConfigRuleOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getAggregateComplianceDetailsByConfigRuleRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetAggregateComplianceDetailsByConfigRule"
            (AWS.Core.Decode.ResultDecoder "GetAggregateComplianceDetailsByConfigRuleResponse" getAggregateComplianceDetailsByConfigRuleResponseDecoder)
        )


{-| Options for a getAggregateComplianceDetailsByConfigRule request
-}
type alias GetAggregateComplianceDetailsByConfigRuleOptions =
    { complianceType : Maybe ComplianceType
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.</p> <note> <p>The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.</p> </note>

**Required Parameters**

  - `configurationAggregatorName` **:** `String`

-}
getAggregateConfigRuleComplianceSummary :
    String
    -> (GetAggregateConfigRuleComplianceSummaryOptions -> GetAggregateConfigRuleComplianceSummaryOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAggregateConfigRuleComplianceSummaryResponse)
getAggregateConfigRuleComplianceSummary configurationAggregatorName setOptions =
    let
        requestInput =
            GetAggregateConfigRuleComplianceSummaryRequest
                configurationAggregatorName
                options.filters
                options.groupByKey
                options.limit
                options.nextToken

        options =
            setOptions (GetAggregateConfigRuleComplianceSummaryOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getAggregateConfigRuleComplianceSummaryRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetAggregateConfigRuleComplianceSummary"
            (AWS.Core.Decode.ResultDecoder "GetAggregateConfigRuleComplianceSummaryResponse" getAggregateConfigRuleComplianceSummaryResponseDecoder)
        )


{-| Options for a getAggregateConfigRuleComplianceSummary request
-}
type alias GetAggregateConfigRuleComplianceSummaryOptions =
    { filters : Maybe ConfigRuleComplianceSummaryFilters
    , groupByKey : Maybe ConfigRuleComplianceSummaryGroupKey
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns the resource counts across accounts and regions that are present in your AWS Config aggregator. You can request the resource counts by providing filters and GroupByKey.</p> <p>For example, if the input contains accountID 12345678910 and region us-east-1 in filters, the API returns the count of resources in account ID 12345678910 and region us-east-1. If the input contains ACCOUNT_ID as a GroupByKey, the API returns resource counts for all source accounts that are present in your aggregator.</p>

**Required Parameters**

  - `configurationAggregatorName` **:** `String`

-}
getAggregateDiscoveredResourceCounts :
    String
    -> (GetAggregateDiscoveredResourceCountsOptions -> GetAggregateDiscoveredResourceCountsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAggregateDiscoveredResourceCountsResponse)
getAggregateDiscoveredResourceCounts configurationAggregatorName setOptions =
    let
        requestInput =
            GetAggregateDiscoveredResourceCountsRequest
                configurationAggregatorName
                options.filters
                options.groupByKey
                options.limit
                options.nextToken

        options =
            setOptions (GetAggregateDiscoveredResourceCountsOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getAggregateDiscoveredResourceCountsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetAggregateDiscoveredResourceCounts"
            (AWS.Core.Decode.ResultDecoder "GetAggregateDiscoveredResourceCountsResponse" getAggregateDiscoveredResourceCountsResponseDecoder)
        )


{-| Options for a getAggregateDiscoveredResourceCounts request
-}
type alias GetAggregateDiscoveredResourceCountsOptions =
    { filters : Maybe ResourceCountFilters
    , groupByKey : Maybe ResourceCountGroupKey
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns configuration item that is aggregated for your specific resource in a specific source account and region.</p>

**Required Parameters**

  - `configurationAggregatorName` **:** `String`
  - `resourceIdentifier` **:** `AggregateResourceIdentifier`

-}
getAggregateResourceConfig :
    String
    -> AggregateResourceIdentifier
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAggregateResourceConfigResponse)
getAggregateResourceConfig configurationAggregatorName resourceIdentifier =
    let
        requestInput =
            GetAggregateResourceConfigRequest
                configurationAggregatorName
                resourceIdentifier
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getAggregateResourceConfigRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetAggregateResourceConfig"
            (AWS.Core.Decode.ResultDecoder "GetAggregateResourceConfigResponse" getAggregateResourceConfigResponseDecoder)
        )


{-|

<p>Returns the evaluation results for the specified AWS Config rule. The results indicate which AWS resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.</p>

**Required Parameters**

  - `configRuleName` **:** `String`

-}
getComplianceDetailsByConfigRule :
    String
    -> (GetComplianceDetailsByConfigRuleOptions -> GetComplianceDetailsByConfigRuleOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetComplianceDetailsByConfigRuleResponse)
getComplianceDetailsByConfigRule configRuleName setOptions =
    let
        requestInput =
            GetComplianceDetailsByConfigRuleRequest
                configRuleName
                options.complianceTypes
                options.limit
                options.nextToken

        options =
            setOptions (GetComplianceDetailsByConfigRuleOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getComplianceDetailsByConfigRuleRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetComplianceDetailsByConfigRule"
            (AWS.Core.Decode.ResultDecoder "GetComplianceDetailsByConfigRuleResponse" getComplianceDetailsByConfigRuleResponseDecoder)
        )


{-| Options for a getComplianceDetailsByConfigRule request
-}
type alias GetComplianceDetailsByConfigRuleOptions =
    { complianceTypes : Maybe (List ComplianceType)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns the evaluation results for the specified AWS resource. The results indicate which AWS Config rules were used to evaluate the resource, when each rule was last used, and whether the resource complies with each rule.</p>

**Required Parameters**

  - `resourceType` **:** `String`
  - `resourceId` **:** `String`

-}
getComplianceDetailsByResource :
    String
    -> String
    -> (GetComplianceDetailsByResourceOptions -> GetComplianceDetailsByResourceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetComplianceDetailsByResourceResponse)
getComplianceDetailsByResource resourceType resourceId setOptions =
    let
        requestInput =
            GetComplianceDetailsByResourceRequest
                resourceType
                resourceId
                options.complianceTypes
                options.nextToken

        options =
            setOptions (GetComplianceDetailsByResourceOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getComplianceDetailsByResourceRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetComplianceDetailsByResource"
            (AWS.Core.Decode.ResultDecoder "GetComplianceDetailsByResourceResponse" getComplianceDetailsByResourceResponseDecoder)
        )


{-| Options for a getComplianceDetailsByResource request
-}
type alias GetComplianceDetailsByResourceOptions =
    { complianceTypes : Maybe (List ComplianceType)
    , nextToken : Maybe String
    }


{-|

<p>Returns the number of AWS Config rules that are compliant and noncompliant, up to a maximum of 25 for each.</p>

**Required Parameters**

-}
getComplianceSummaryByConfigRule : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetComplianceSummaryByConfigRuleResponse)
getComplianceSummaryByConfigRule =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetComplianceSummaryByConfigRule"
            (AWS.Core.Decode.ResultDecoder "GetComplianceSummaryByConfigRuleResponse" getComplianceSummaryByConfigRuleResponseDecoder)
        )


{-|

<p>Returns the number of resources that are compliant and the number that are noncompliant. You can specify one or more resource types to get these numbers for each resource type. The maximum number returned is 100.</p>

**Required Parameters**

-}
getComplianceSummaryByResourceType :
    (GetComplianceSummaryByResourceTypeOptions -> GetComplianceSummaryByResourceTypeOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetComplianceSummaryByResourceTypeResponse)
getComplianceSummaryByResourceType setOptions =
    let
        requestInput =
            GetComplianceSummaryByResourceTypeRequest
                options.resourceTypes

        options =
            setOptions (GetComplianceSummaryByResourceTypeOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getComplianceSummaryByResourceTypeRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetComplianceSummaryByResourceType"
            (AWS.Core.Decode.ResultDecoder "GetComplianceSummaryByResourceTypeResponse" getComplianceSummaryByResourceTypeResponseDecoder)
        )


{-| Options for a getComplianceSummaryByResourceType request
-}
type alias GetComplianceSummaryByResourceTypeOptions =
    { resourceTypes : Maybe (List String)
    }


{-|

<p>Returns the resource types, the number of each resource type, and the total number of resources that AWS Config is recording in this region for your AWS account. </p> <p class="title"> <b>Example</b> </p> <ol> <li> <p>AWS Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets.</p> </li> <li> <p>You make a call to the <code>GetDiscoveredResourceCounts</code> action and specify that you want all resource types. </p> </li> <li> <p>AWS Config returns the following:</p> <ul> <li> <p>The resource types (EC2 instances, IAM users, and S3 buckets).</p> </li> <li> <p>The number of each resource type (25, 20, and 15).</p> </li> <li> <p>The total number of all resources (60).</p> </li> </ul> </li> </ol> <p>The response is paginated. By default, AWS Config lists 100 <a>ResourceCount</a> objects on each page. You can customize this number with the <code>limit</code> parameter. The response includes a <code>nextToken</code> string. To get the next page of results, run the request again and specify the string for the <code>nextToken</code> parameter.</p> <note> <p>If you make a call to the <a>GetDiscoveredResourceCounts</a> action, you might not immediately receive resource counts in the following situations:</p> <ul> <li> <p>You are a new AWS Config customer.</p> </li> <li> <p>You just enabled resource recording.</p> </li> </ul> <p>It might take a few minutes for AWS Config to record and count your resources. Wait a few minutes and then retry the <a>GetDiscoveredResourceCounts</a> action. </p> </note>

**Required Parameters**

-}
getDiscoveredResourceCounts :
    (GetDiscoveredResourceCountsOptions -> GetDiscoveredResourceCountsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDiscoveredResourceCountsResponse)
getDiscoveredResourceCounts setOptions =
    let
        requestInput =
            GetDiscoveredResourceCountsRequest
                options.resourceTypes
                options.limit
                options.nextToken

        options =
            setOptions (GetDiscoveredResourceCountsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getDiscoveredResourceCountsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetDiscoveredResourceCounts"
            (AWS.Core.Decode.ResultDecoder "GetDiscoveredResourceCountsResponse" getDiscoveredResourceCountsResponseDecoder)
        )


{-| Options for a getDiscoveredResourceCounts request
-}
type alias GetDiscoveredResourceCountsOptions =
    { resourceTypes : Maybe (List String)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined

**Required Parameters**

  - `organizationConfigRuleName` **:** `String`

-}
getOrganizationConfigRuleDetailedStatus :
    String
    -> (GetOrganizationConfigRuleDetailedStatusOptions -> GetOrganizationConfigRuleDetailedStatusOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetOrganizationConfigRuleDetailedStatusResponse)
getOrganizationConfigRuleDetailedStatus organizationConfigRuleName setOptions =
    let
        requestInput =
            GetOrganizationConfigRuleDetailedStatusRequest
                organizationConfigRuleName
                options.filters
                options.limit
                options.nextToken

        options =
            setOptions (GetOrganizationConfigRuleDetailedStatusOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getOrganizationConfigRuleDetailedStatusRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetOrganizationConfigRuleDetailedStatus"
            (AWS.Core.Decode.ResultDecoder "GetOrganizationConfigRuleDetailedStatusResponse" getOrganizationConfigRuleDetailedStatusResponseDecoder)
        )


{-| Options for a getOrganizationConfigRuleDetailedStatus request
-}
type alias GetOrganizationConfigRuleDetailedStatusOptions =
    { filters : Maybe StatusDetailFilters
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns a list of configuration items for the specified resource. The list contains details about each state of the resource during the specified time interval. If you specified a retention period to retain your <code>ConfigurationItems</code> between a minimum of 30 days and a maximum of 7 years (2557 days), AWS Config returns the <code>ConfigurationItems</code> for the specified retention period. </p> <p>The response is paginated. By default, AWS Config returns a limit of 10 configuration items per page. You can customize this number with the <code>limit</code> parameter. The response includes a <code>nextToken</code> string. To get the next page of results, run the request again and specify the string for the <code>nextToken</code> parameter.</p> <note> <p>Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified <code>limit</code>. In such cases, you can make another call, using the <code>nextToken</code>.</p> </note>

**Required Parameters**

  - `resourceType` **:** `ResourceType`
  - `resourceId` **:** `String`

-}
getResourceConfigHistory :
    ResourceType
    -> String
    -> (GetResourceConfigHistoryOptions -> GetResourceConfigHistoryOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetResourceConfigHistoryResponse)
getResourceConfigHistory resourceType resourceId setOptions =
    let
        requestInput =
            GetResourceConfigHistoryRequest
                resourceType
                resourceId
                options.laterTime
                options.earlierTime
                options.chronologicalOrder
                options.limit
                options.nextToken

        options =
            setOptions (GetResourceConfigHistoryOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getResourceConfigHistoryRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetResourceConfigHistory"
            (AWS.Core.Decode.ResultDecoder "GetResourceConfigHistoryResponse" getResourceConfigHistoryResponseDecoder)
        )


{-| Options for a getResourceConfigHistory request
-}
type alias GetResourceConfigHistoryOptions =
    { laterTime : Maybe Posix
    , earlierTime : Maybe Posix
    , chronologicalOrder : Maybe ChronologicalOrder
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Accepts a resource type and returns a list of resource identifiers that are aggregated for a specific resource type across accounts and regions. A resource identifier includes the resource type, ID, (if available) the custom resource name, source account, and source region. You can narrow the results to include only resources that have specific resource IDs, or a resource name, or source account ID, or source region.</p> <p>For example, if the input consists of accountID 12345678910 and the region is us-east-1 for resource type <code>AWS::EC2::Instance</code> then the API returns all the EC2 instance identifiers of accountID 12345678910 and region us-east-1.</p>

**Required Parameters**

  - `configurationAggregatorName` **:** `String`
  - `resourceType` **:** `ResourceType`

-}
listAggregateDiscoveredResources :
    String
    -> ResourceType
    -> (ListAggregateDiscoveredResourcesOptions -> ListAggregateDiscoveredResourcesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAggregateDiscoveredResourcesResponse)
listAggregateDiscoveredResources configurationAggregatorName resourceType setOptions =
    let
        requestInput =
            ListAggregateDiscoveredResourcesRequest
                configurationAggregatorName
                resourceType
                options.filters
                options.limit
                options.nextToken

        options =
            setOptions (ListAggregateDiscoveredResourcesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listAggregateDiscoveredResourcesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListAggregateDiscoveredResources"
            (AWS.Core.Decode.ResultDecoder "ListAggregateDiscoveredResourcesResponse" listAggregateDiscoveredResourcesResponseDecoder)
        )


{-| Options for a listAggregateDiscoveredResources request
-}
type alias ListAggregateDiscoveredResourcesOptions =
    { filters : Maybe ResourceFilters
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Accepts a resource type and returns a list of resource identifiers for the resources of that type. A resource identifier includes the resource type, ID, and (if available) the custom resource name. The results consist of resources that AWS Config has discovered, including those that AWS Config is not currently recording. You can narrow the results to include only resources that have specific resource IDs or a resource name.</p> <note> <p>You can specify either resource IDs or a resource name, but not both, in the same request.</p> </note> <p>The response is paginated. By default, AWS Config lists 100 resource identifiers on each page. You can customize this number with the <code>limit</code> parameter. The response includes a <code>nextToken</code> string. To get the next page of results, run the request again and specify the string for the <code>nextToken</code> parameter.</p>

**Required Parameters**

  - `resourceType` **:** `ResourceType`

-}
listDiscoveredResources :
    ResourceType
    -> (ListDiscoveredResourcesOptions -> ListDiscoveredResourcesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDiscoveredResourcesResponse)
listDiscoveredResources resourceType setOptions =
    let
        requestInput =
            ListDiscoveredResourcesRequest
                resourceType
                options.resourceIds
                options.resourceName
                options.limit
                options.includeDeletedResources
                options.nextToken

        options =
            setOptions (ListDiscoveredResourcesOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listDiscoveredResourcesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListDiscoveredResources"
            (AWS.Core.Decode.ResultDecoder "ListDiscoveredResourcesResponse" listDiscoveredResourcesResponseDecoder)
        )


{-| Options for a listDiscoveredResources request
-}
type alias ListDiscoveredResourcesOptions =
    { resourceIds : Maybe (List String)
    , resourceName : Maybe String
    , limit : Maybe Int
    , includeDeletedResources : Maybe Bool
    , nextToken : Maybe String
    }


{-|

<p>List the tags for AWS Config resource.</p>

**Required Parameters**

  - `resourceArn` **:** `String`

-}
listTagsForResource :
    String
    -> (ListTagsForResourceOptions -> ListTagsForResourceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceResponse)
listTagsForResource resourceArn setOptions =
    let
        requestInput =
            ListTagsForResourceRequest
                resourceArn
                options.limit
                options.nextToken

        options =
            setOptions (ListTagsForResourceOptions Nothing Nothing)
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


{-| Options for a listTagsForResource request
-}
type alias ListTagsForResourceOptions =
    { limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Authorizes the aggregator account and region to collect data from the source account and region. </p>

**Required Parameters**

  - `authorizedAccountId` **:** `String`
  - `authorizedAwsRegion` **:** `String`

-}
putAggregationAuthorization :
    String
    -> String
    -> (PutAggregationAuthorizationOptions -> PutAggregationAuthorizationOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutAggregationAuthorizationResponse)
putAggregationAuthorization authorizedAccountId authorizedAwsRegion setOptions =
    let
        requestInput =
            PutAggregationAuthorizationRequest
                authorizedAccountId
                authorizedAwsRegion
                options.tags

        options =
            setOptions (PutAggregationAuthorizationOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> putAggregationAuthorizationRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "PutAggregationAuthorization"
            (AWS.Core.Decode.ResultDecoder "PutAggregationAuthorizationResponse" putAggregationAuthorizationResponseDecoder)
        )


{-| Options for a putAggregationAuthorization request
-}
type alias PutAggregationAuthorizationOptions =
    { tags : Maybe (List Tag)
    }


{-|

<p>Adds or updates an AWS Config rule for evaluating whether your AWS resources comply with your desired configurations.</p> <p>You can use this action for custom AWS Config rules and AWS managed Config rules. A custom AWS Config rule is a rule that you develop and maintain. An AWS managed Config rule is a customizable, predefined rule that AWS Config provides.</p> <p>If you are adding a new custom AWS Config rule, you must first create the AWS Lambda function that the rule invokes to evaluate your resources. When you use the <code>PutConfigRule</code> action to add the rule to AWS Config, you must specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the function. Specify the ARN for the <code>SourceIdentifier</code> key. This key is part of the <code>Source</code> object, which is part of the <code>ConfigRule</code> object. </p> <p>If you are adding an AWS managed Config rule, specify the rule's identifier for the <code>SourceIdentifier</code> key. To reference AWS managed Config rule identifiers, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html">About AWS Managed Config Rules</a>.</p> <p>For any new rule that you add, specify the <code>ConfigRuleName</code> in the <code>ConfigRule</code> object. Do not specify the <code>ConfigRuleArn</code> or the <code>ConfigRuleId</code>. These values are generated by AWS Config for new rules.</p> <p>If you are updating a rule that you added previously, you can specify the rule by <code>ConfigRuleName</code>, <code>ConfigRuleId</code>, or <code>ConfigRuleArn</code> in the <code>ConfigRule</code> data type that you use in this request.</p> <p>The maximum number of rules that AWS Config supports is 150.</p> <p>For information about requesting a rule limit increase, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config">AWS Config Limits</a> in the <i>AWS General Reference Guide</i>.</p> <p>For more information about developing and using AWS Config rules, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html">Evaluating AWS Resource Configurations with AWS Config</a> in the <i>AWS Config Developer Guide</i>.</p>

**Required Parameters**

  - `configRule` **:** `ConfigRule`

-}
putConfigRule :
    ConfigRule
    -> (PutConfigRuleOptions -> PutConfigRuleOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putConfigRule configRule setOptions =
    let
        requestInput =
            PutConfigRuleRequest
                configRule
                options.tags

        options =
            setOptions (PutConfigRuleOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> putConfigRuleRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "PutConfigRule"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a putConfigRule request
-}
type alias PutConfigRuleOptions =
    { tags : Maybe (List Tag)
    }


{-|

<p>Creates and updates the configuration aggregator with the selected source accounts and regions. The source account can be individual account(s) or an organization.</p> <note> <p>AWS Config should be enabled in source accounts and regions you want to aggregate.</p> <p>If your source type is an organization, you must be signed in to the master account and all features must be enabled in your organization. AWS Config calls <code>EnableAwsServiceAccess</code> API to enable integration between AWS Config and AWS Organizations. </p> </note>

**Required Parameters**

  - `configurationAggregatorName` **:** `String`

-}
putConfigurationAggregator :
    String
    -> (PutConfigurationAggregatorOptions -> PutConfigurationAggregatorOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutConfigurationAggregatorResponse)
putConfigurationAggregator configurationAggregatorName setOptions =
    let
        requestInput =
            PutConfigurationAggregatorRequest
                configurationAggregatorName
                options.accountAggregationSources
                options.organizationAggregationSource
                options.tags

        options =
            setOptions (PutConfigurationAggregatorOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> putConfigurationAggregatorRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "PutConfigurationAggregator"
            (AWS.Core.Decode.ResultDecoder "PutConfigurationAggregatorResponse" putConfigurationAggregatorResponseDecoder)
        )


{-| Options for a putConfigurationAggregator request
-}
type alias PutConfigurationAggregatorOptions =
    { accountAggregationSources : Maybe (List AccountAggregationSource)
    , organizationAggregationSource : Maybe OrganizationAggregationSource
    , tags : Maybe (List Tag)
    }


{-|

<p>Creates a new configuration recorder to record the selected resource configurations.</p> <p>You can use this action to change the role <code>roleARN</code> or the <code>recordingGroup</code> of an existing recorder. To change the role, call the action on the existing configuration recorder and specify a role.</p> <note> <p>Currently, you can specify only one configuration recorder per region in your account.</p> <p>If <code>ConfigurationRecorder</code> does not have the <b>recordingGroup</b> parameter specified, the default is to record all supported resource types.</p> </note>

**Required Parameters**

  - `configurationRecorder` **:** `ConfigurationRecorder`

-}
putConfigurationRecorder :
    ConfigurationRecorder
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putConfigurationRecorder configurationRecorder =
    let
        requestInput =
            PutConfigurationRecorderRequest
                configurationRecorder
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> putConfigurationRecorderRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "PutConfigurationRecorder"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic.</p> <p>Before you can create a delivery channel, you must create a configuration recorder.</p> <p>You can use this action to change the Amazon S3 bucket or an Amazon SNS topic of the existing delivery channel. To change the Amazon S3 bucket or an Amazon SNS topic, call this action and specify the changed values for the S3 bucket and the SNS topic. If you specify a different value for either the S3 bucket or the SNS topic, this action will keep the existing value for the parameter that is not changed.</p> <note> <p>You can have only one delivery channel per region in your account.</p> </note>

**Required Parameters**

  - `deliveryChannel` **:** `DeliveryChannel`

-}
putDeliveryChannel :
    DeliveryChannel
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putDeliveryChannel deliveryChannel =
    let
        requestInput =
            PutDeliveryChannelRequest
                deliveryChannel
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> putDeliveryChannelRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "PutDeliveryChannel"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Used by an AWS Lambda function to deliver evaluation results to AWS Config. This action is required in every AWS Lambda function that is invoked by an AWS Config rule.</p>

**Required Parameters**

  - `resultToken` **:** `String`

-}
putEvaluations :
    String
    -> (PutEvaluationsOptions -> PutEvaluationsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutEvaluationsResponse)
putEvaluations resultToken setOptions =
    let
        requestInput =
            PutEvaluationsRequest
                options.evaluations
                resultToken
                options.testMode

        options =
            setOptions (PutEvaluationsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> putEvaluationsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "PutEvaluations"
            (AWS.Core.Decode.ResultDecoder "PutEvaluationsResponse" putEvaluationsResponseDecoder)
        )


{-| Options for a putEvaluations request
-}
type alias PutEvaluationsOptions =
    { evaluations : Maybe (List Evaluation)
    , testMode : Maybe Bool
    }


{-| undefined

**Required Parameters**

  - `organizationConfigRuleName` **:** `String`

-}
putOrganizationConfigRule :
    String
    -> (PutOrganizationConfigRuleOptions -> PutOrganizationConfigRuleOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutOrganizationConfigRuleResponse)
putOrganizationConfigRule organizationConfigRuleName setOptions =
    let
        requestInput =
            PutOrganizationConfigRuleRequest
                organizationConfigRuleName
                options.organizationManagedRuleMetadata
                options.organizationCustomRuleMetadata
                options.excludedAccounts

        options =
            setOptions (PutOrganizationConfigRuleOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> putOrganizationConfigRuleRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "PutOrganizationConfigRule"
            (AWS.Core.Decode.ResultDecoder "PutOrganizationConfigRuleResponse" putOrganizationConfigRuleResponseDecoder)
        )


{-| Options for a putOrganizationConfigRule request
-}
type alias PutOrganizationConfigRuleOptions =
    { organizationManagedRuleMetadata : Maybe OrganizationManagedRuleMetadata
    , organizationCustomRuleMetadata : Maybe OrganizationCustomRuleMetadata
    , excludedAccounts : Maybe (List String)
    }


{-|

<p>Adds or updates the remediation configuration with a specific AWS Config rule with the selected target or action. The API creates the <code>RemediationConfiguration</code> object for the AWS Config rule. The AWS Config rule must already exist for you to add a remediation configuration. The target (SSM document) must exist and have permissions to use the target. </p>

**Required Parameters**

  - `remediationConfigurations` **:** `(List RemediationConfiguration)`

-}
putRemediationConfigurations :
    List RemediationConfiguration
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutRemediationConfigurationsResponse)
putRemediationConfigurations remediationConfigurations =
    let
        requestInput =
            PutRemediationConfigurationsRequest
                remediationConfigurations
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> putRemediationConfigurationsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "PutRemediationConfigurations"
            (AWS.Core.Decode.ResultDecoder "PutRemediationConfigurationsResponse" putRemediationConfigurationsResponseDecoder)
        )


{-|

<p>Creates and updates the retention configuration with details about retention period (number of days) that AWS Config stores your historical information. The API creates the <code>RetentionConfiguration</code> object and names the object as <b>default</b>. When you have a <code>RetentionConfiguration</code> object named <b>default</b>, calling the API modifies the default object. </p> <note> <p>Currently, AWS Config supports only one retention configuration per region in your account.</p> </note>

**Required Parameters**

  - `retentionPeriodInDays` **:** `Int`

-}
putRetentionConfiguration :
    Int
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutRetentionConfigurationResponse)
putRetentionConfiguration retentionPeriodInDays =
    let
        requestInput =
            PutRetentionConfigurationRequest
                retentionPeriodInDays
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> putRetentionConfigurationRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "PutRetentionConfiguration"
            (AWS.Core.Decode.ResultDecoder "PutRetentionConfigurationResponse" putRetentionConfigurationResponseDecoder)
        )


{-|

<p>Accepts a structured query language (SQL) <code>SELECT</code> command, performs the corresponding search, and returns resource configurations matching the properties.</p> <p>For more information about query components, see the <a href="https://docs.aws.amazon.com/config/latest/developerguide/query-components.html"> <b>Query Components</b> </a> section in the AWS Config Developer Guide.</p>

**Required Parameters**

  - `expression` **:** `String`

-}
selectResourceConfig :
    String
    -> (SelectResourceConfigOptions -> SelectResourceConfigOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SelectResourceConfigResponse)
selectResourceConfig expression setOptions =
    let
        requestInput =
            SelectResourceConfigRequest
                expression
                options.limit
                options.nextToken

        options =
            setOptions (SelectResourceConfigOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> selectResourceConfigRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "SelectResourceConfig"
            (AWS.Core.Decode.ResultDecoder "SelectResourceConfigResponse" selectResourceConfigResponseDecoder)
        )


{-| Options for a selectResourceConfig request
-}
type alias SelectResourceConfigOptions =
    { limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Runs an on-demand evaluation for the specified AWS Config rules against the last known configuration state of the resources. Use <code>StartConfigRulesEvaluation</code> when you want to test that a rule you updated is working as expected. <code>StartConfigRulesEvaluation</code> does not re-record the latest configuration state for your resources. It re-runs an evaluation against the last known state of your resources. </p> <p>You can specify up to 25 AWS Config rules per request. </p> <p>An existing <code>StartConfigRulesEvaluation</code> call for the specified rules must complete before you can call the API again. If you chose to have AWS Config stream to an Amazon SNS topic, you will receive a <code>ConfigRuleEvaluationStarted</code> notification when the evaluation starts.</p> <note> <p>You don't need to call the <code>StartConfigRulesEvaluation</code> API to run an evaluation for a new rule. When you create a rule, AWS Config evaluates your resources against the rule automatically. </p> </note> <p>The <code>StartConfigRulesEvaluation</code> API is useful if you want to run on-demand evaluations, such as the following example:</p> <ol> <li> <p>You have a custom rule that evaluates your IAM resources every 24 hours.</p> </li> <li> <p>You update your Lambda function to add additional conditions to your rule.</p> </li> <li> <p>Instead of waiting for the next periodic evaluation, you call the <code>StartConfigRulesEvaluation</code> API.</p> </li> <li> <p>AWS Config invokes your Lambda function and evaluates your IAM resources.</p> </li> <li> <p>Your custom rule will still run periodic evaluations every 24 hours.</p> </li> </ol>

**Required Parameters**

-}
startConfigRulesEvaluation :
    (StartConfigRulesEvaluationOptions -> StartConfigRulesEvaluationOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartConfigRulesEvaluationResponse)
startConfigRulesEvaluation setOptions =
    let
        requestInput =
            StartConfigRulesEvaluationRequest
                options.configRuleNames

        options =
            setOptions (StartConfigRulesEvaluationOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> startConfigRulesEvaluationRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StartConfigRulesEvaluation"
            (AWS.Core.Decode.ResultDecoder "StartConfigRulesEvaluationResponse" startConfigRulesEvaluationResponseDecoder)
        )


{-| Options for a startConfigRulesEvaluation request
-}
type alias StartConfigRulesEvaluationOptions =
    { configRuleNames : Maybe (List String)
    }


{-|

<p>Starts recording configurations of the AWS resources you have selected to record in your AWS account.</p> <p>You must have created at least one delivery channel to successfully start the configuration recorder.</p>

**Required Parameters**

  - `configurationRecorderName` **:** `String`

-}
startConfigurationRecorder :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
startConfigurationRecorder configurationRecorderName =
    let
        requestInput =
            StartConfigurationRecorderRequest
                configurationRecorderName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> startConfigurationRecorderRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StartConfigurationRecorder"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Runs an on-demand remediation for the specified AWS Config rules against the last known remediation configuration. It runs an execution against the current state of your resources. Remediation execution is asynchronous.</p> <p>You can specify up to 100 resource keys per request. An existing StartRemediationExecution call for the specified resource keys must complete before you can call the API again.</p>

**Required Parameters**

  - `configRuleName` **:** `String`
  - `resourceKeys` **:** `(List ResourceKey)`

-}
startRemediationExecution :
    String
    -> List ResourceKey
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartRemediationExecutionResponse)
startRemediationExecution configRuleName resourceKeys =
    let
        requestInput =
            StartRemediationExecutionRequest
                configRuleName
                resourceKeys
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> startRemediationExecutionRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StartRemediationExecution"
            (AWS.Core.Decode.ResultDecoder "StartRemediationExecutionResponse" startRemediationExecutionResponseDecoder)
        )


{-|

<p>Stops recording configurations of the AWS resources you have selected to record in your AWS account.</p>

**Required Parameters**

  - `configurationRecorderName` **:** `String`

-}
stopConfigurationRecorder :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
stopConfigurationRecorder configurationRecorderName =
    let
        requestInput =
            StopConfigurationRecorderRequest
                configurationRecorderName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> stopConfigurationRecorderRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StopConfigurationRecorder"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.</p>

**Required Parameters**

  - `resourceArn` **:** `String`
  - `tags` **:** `(List Tag)`

-}
tagResource :
    String
    -> List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
tagResource resourceArn tags =
    let
        requestInput =
            TagResourceRequest
                resourceArn
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
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes specified tags from a resource.</p>

**Required Parameters**

  - `resourceArn` **:** `String`
  - `tagKeys` **:** `(List String)`

-}
untagResource :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
untagResource resourceArn tagKeys =
    let
        requestInput =
            UntagResourceRequest
                resourceArn
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
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>A collection of accounts and regions.</p>

-}
type alias AccountAggregationSource =
    { accountIds : List String
    , allAwsRegions : Maybe Bool
    , awsRegions : Maybe (List String)
    }


accountAggregationSourceDecoder : JD.Decoder AccountAggregationSource
accountAggregationSourceDecoder =
    JD.succeed AccountAggregationSource
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AccountIds", "accountIds" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AllAwsRegions", "allAwsRegions" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AwsRegions", "awsRegions" ]
                (JD.list JD.string)
            )


accountAggregationSourceToString :
    AccountAggregationSource
    -> String -- List (String, String)
accountAggregationSourceToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "accountIds" "" -- val.accountIds
    --     |> Dict.insert
    --         "allAwsRegions" "" -- val.allAwsRegions
    --     |> Dict.insert
    --         "awsRegions" "" -- val.awsRegions
    --     |> Dict.toList
    ""


{-|

<p>Indicates whether an AWS Config rule is compliant based on account ID, region, compliance, and rule name.</p> <p>A rule is compliant if all of the resources that the rule evaluated comply with it. It is noncompliant if any of these resources do not comply.</p>

-}
type alias AggregateComplianceByConfigRule =
    { configRuleName : Maybe String
    , compliance : Maybe Compliance
    , accountId : Maybe String
    , awsRegion : Maybe String
    }


aggregateComplianceByConfigRuleDecoder : JD.Decoder AggregateComplianceByConfigRule
aggregateComplianceByConfigRuleDecoder =
    JD.succeed AggregateComplianceByConfigRule
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRuleName", "configRuleName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Compliance", "compliance" ]
                complianceDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountId", "accountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AwsRegion", "awsRegion" ]
                JD.string
            )


aggregateComplianceByConfigRuleToString :
    AggregateComplianceByConfigRule
    -> String -- List (String, String)
aggregateComplianceByConfigRuleToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configRuleName" "" -- val.configRuleName
    --     |> Dict.insert
    --         "compliance" "" -- val.compliance
    --     |> Dict.insert
    --         "accountId" "" -- val.accountId
    --     |> Dict.insert
    --         "awsRegion" "" -- val.awsRegion
    --     |> Dict.toList
    ""


{-|

<p>Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.</p>

-}
type alias AggregateComplianceCount =
    { groupName : Maybe String
    , complianceSummary : Maybe ComplianceSummary
    }


aggregateComplianceCountDecoder : JD.Decoder AggregateComplianceCount
aggregateComplianceCountDecoder =
    JD.succeed AggregateComplianceCount
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GroupName", "groupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComplianceSummary", "complianceSummary" ]
                complianceSummaryDecoder
            )


aggregateComplianceCountToString :
    AggregateComplianceCount
    -> String -- List (String, String)
aggregateComplianceCountToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "groupName" "" -- val.groupName
    --     |> Dict.insert
    --         "complianceSummary" "" -- val.complianceSummary
    --     |> Dict.toList
    ""


{-|

<p>The details of an AWS Config evaluation for an account ID and region in an aggregator. Provides the AWS resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information. </p>

-}
type alias AggregateEvaluationResult =
    { evaluationResultIdentifier : Maybe EvaluationResultIdentifier
    , complianceType : Maybe ComplianceType
    , resultRecordedTime : Maybe Posix
    , configRuleInvokedTime : Maybe Posix
    , annotation : Maybe String
    , accountId : Maybe String
    , awsRegion : Maybe String
    }


aggregateEvaluationResultDecoder : JD.Decoder AggregateEvaluationResult
aggregateEvaluationResultDecoder =
    JD.succeed AggregateEvaluationResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EvaluationResultIdentifier", "evaluationResultIdentifier" ]
                evaluationResultIdentifierDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComplianceType", "complianceType" ]
                complianceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResultRecordedTime", "resultRecordedTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRuleInvokedTime", "configRuleInvokedTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Annotation", "annotation" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountId", "accountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AwsRegion", "awsRegion" ]
                JD.string
            )


aggregateEvaluationResultToString :
    AggregateEvaluationResult
    -> String -- List (String, String)
aggregateEvaluationResultToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "evaluationResultIdentifier" "" -- val.evaluationResultIdentifier
    --     |> Dict.insert
    --         "complianceType" "" -- val.complianceType
    --     |> Dict.insert
    --         "resultRecordedTime" "" -- val.resultRecordedTime
    --     |> Dict.insert
    --         "configRuleInvokedTime" "" -- val.configRuleInvokedTime
    --     |> Dict.insert
    --         "annotation" "" -- val.annotation
    --     |> Dict.insert
    --         "accountId" "" -- val.accountId
    --     |> Dict.insert
    --         "awsRegion" "" -- val.awsRegion
    --     |> Dict.toList
    ""


{-|

<p>The details that identify a resource that is collected by AWS Config aggregator, including the resource type, ID, (if available) the custom resource name, the source account, and source region.</p>

-}
type alias AggregateResourceIdentifier =
    { sourceAccountId : String
    , sourceRegion : String
    , resourceId : String
    , resourceType : ResourceType
    , resourceName : Maybe String
    }


aggregateResourceIdentifierDecoder : JD.Decoder AggregateResourceIdentifier
aggregateResourceIdentifierDecoder =
    JD.succeed AggregateResourceIdentifier
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SourceAccountId", "sourceAccountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SourceRegion", "sourceRegion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ResourceId", "resourceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ResourceType", "resourceType" ]
                resourceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceName", "resourceName" ]
                JD.string
            )


aggregateResourceIdentifierToString :
    AggregateResourceIdentifier
    -> String -- List (String, String)
aggregateResourceIdentifierToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "sourceAccountId" "" -- val.sourceAccountId
    --     |> Dict.insert
    --         "sourceRegion" "" -- val.sourceRegion
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
    --     |> Dict.insert
    --         "resourceName" "" -- val.resourceName
    --     |> Dict.toList
    ""


{-|

<p>The current sync status between the source and the aggregator account.</p>

-}
type alias AggregatedSourceStatus =
    { sourceId : Maybe String
    , sourceType : Maybe AggregatedSourceType
    , awsRegion : Maybe String
    , lastUpdateStatus : Maybe AggregatedSourceStatusType
    , lastUpdateTime : Maybe Posix
    , lastErrorCode : Maybe String
    , lastErrorMessage : Maybe String
    }


aggregatedSourceStatusDecoder : JD.Decoder AggregatedSourceStatus
aggregatedSourceStatusDecoder =
    JD.succeed AggregatedSourceStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceId", "sourceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceType", "sourceType" ]
                aggregatedSourceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AwsRegion", "awsRegion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastUpdateStatus", "lastUpdateStatus" ]
                aggregatedSourceStatusTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastUpdateTime", "lastUpdateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastErrorCode", "lastErrorCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastErrorMessage", "lastErrorMessage" ]
                JD.string
            )


aggregatedSourceStatusToString :
    AggregatedSourceStatus
    -> String -- List (String, String)
aggregatedSourceStatusToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "sourceId" "" -- val.sourceId
    --     |> Dict.insert
    --         "sourceType" "" -- val.sourceType
    --     |> Dict.insert
    --         "awsRegion" "" -- val.awsRegion
    --     |> Dict.insert
    --         "lastUpdateStatus" "" -- val.lastUpdateStatus
    --     |> Dict.insert
    --         "lastUpdateTime" "" -- val.lastUpdateTime
    --     |> Dict.insert
    --         "lastErrorCode" "" -- val.lastErrorCode
    --     |> Dict.insert
    --         "lastErrorMessage" "" -- val.lastErrorMessage
    --     |> Dict.toList
    ""


{-| One of

  - `AggregatedSourceStatusType_FAILED`
  - `AggregatedSourceStatusType_SUCCEEDED`
  - `AggregatedSourceStatusType_OUTDATED`

-}
type AggregatedSourceStatusType
    = AggregatedSourceStatusType_FAILED
    | AggregatedSourceStatusType_SUCCEEDED
    | AggregatedSourceStatusType_OUTDATED


aggregatedSourceStatusTypeDecoder : JD.Decoder AggregatedSourceStatusType
aggregatedSourceStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FAILED" ->
                        JD.succeed AggregatedSourceStatusType_FAILED

                    "SUCCEEDED" ->
                        JD.succeed AggregatedSourceStatusType_SUCCEEDED

                    "OUTDATED" ->
                        JD.succeed AggregatedSourceStatusType_OUTDATED

                    _ ->
                        JD.fail "bad thing"
            )


aggregatedSourceStatusTypeToString : AggregatedSourceStatusType -> String
aggregatedSourceStatusTypeToString val =
    case val of
        AggregatedSourceStatusType_FAILED ->
            "FAILED"

        AggregatedSourceStatusType_SUCCEEDED ->
            "SUCCEEDED"

        AggregatedSourceStatusType_OUTDATED ->
            "OUTDATED"


{-| One of

  - `AggregatedSourceType_ACCOUNT`
  - `AggregatedSourceType_ORGANIZATION`

-}
type AggregatedSourceType
    = AggregatedSourceType_ACCOUNT
    | AggregatedSourceType_ORGANIZATION


aggregatedSourceTypeDecoder : JD.Decoder AggregatedSourceType
aggregatedSourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACCOUNT" ->
                        JD.succeed AggregatedSourceType_ACCOUNT

                    "ORGANIZATION" ->
                        JD.succeed AggregatedSourceType_ORGANIZATION

                    _ ->
                        JD.fail "bad thing"
            )


aggregatedSourceTypeToString : AggregatedSourceType -> String
aggregatedSourceTypeToString val =
    case val of
        AggregatedSourceType_ACCOUNT ->
            "ACCOUNT"

        AggregatedSourceType_ORGANIZATION ->
            "ORGANIZATION"


{-|

<p>An object that represents the authorizations granted to aggregator accounts and regions.</p>

-}
type alias AggregationAuthorization =
    { aggregationAuthorizationArn : Maybe String
    , authorizedAccountId : Maybe String
    , authorizedAwsRegion : Maybe String
    , creationTime : Maybe Posix
    }


aggregationAuthorizationDecoder : JD.Decoder AggregationAuthorization
aggregationAuthorizationDecoder =
    JD.succeed AggregationAuthorization
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AggregationAuthorizationArn", "aggregationAuthorizationArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AuthorizedAccountId", "authorizedAccountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AuthorizedAwsRegion", "authorizedAwsRegion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreationTime", "creationTime" ]
                JDX.datetime
            )


aggregationAuthorizationToString :
    AggregationAuthorization
    -> String -- List (String, String)
aggregationAuthorizationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "aggregationAuthorizationArn" "" -- val.aggregationAuthorizationArn
    --     |> Dict.insert
    --         "authorizedAccountId" "" -- val.authorizedAccountId
    --     |> Dict.insert
    --         "authorizedAwsRegion" "" -- val.authorizedAwsRegion
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
    --     |> Dict.toList
    ""


{-|

<p>The detailed configuration of a specified resource.</p>

-}
type alias BaseConfigurationItem =
    { version : Maybe String
    , accountId : Maybe String
    , configurationItemCaptureTime : Maybe Posix
    , configurationItemStatus : Maybe ConfigurationItemStatus
    , configurationStateId : Maybe String
    , arn : Maybe String
    , resourceType : Maybe ResourceType
    , resourceId : Maybe String
    , resourceName : Maybe String
    , awsRegion : Maybe String
    , availabilityZone : Maybe String
    , resourceCreationTime : Maybe Posix
    , configuration : Maybe String
    , supplementaryConfiguration : Maybe (Dict String String)
    }


baseConfigurationItemDecoder : JD.Decoder BaseConfigurationItem
baseConfigurationItemDecoder =
    JD.succeed BaseConfigurationItem
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "version", "Version" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "accountId", "AccountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configurationItemCaptureTime", "ConfigurationItemCaptureTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configurationItemStatus", "ConfigurationItemStatus" ]
                configurationItemStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configurationStateId", "ConfigurationStateId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "arn", "Arn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceType", "ResourceType" ]
                resourceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceId", "ResourceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceName", "ResourceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "awsRegion", "AwsRegion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "availabilityZone", "AvailabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceCreationTime", "ResourceCreationTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configuration", "Configuration" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "supplementaryConfiguration", "SupplementaryConfiguration" ]
                (AWS.Core.Decode.dict JD.string)
            )


baseConfigurationItemToString :
    BaseConfigurationItem
    -> String -- List (String, String)
baseConfigurationItemToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "version" "" -- val.version
    --     |> Dict.insert
    --         "accountId" "" -- val.accountId
    --     |> Dict.insert
    --         "configurationItemCaptureTime" "" -- val.configurationItemCaptureTime
    --     |> Dict.insert
    --         "configurationItemStatus" "" -- val.configurationItemStatus
    --     |> Dict.insert
    --         "configurationStateId" "" -- val.configurationStateId
    --     |> Dict.insert
    --         "arn" "" -- val.arn
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
    --     |> Dict.insert
    --         "resourceName" "" -- val.resourceName
    --     |> Dict.insert
    --         "awsRegion" "" -- val.awsRegion
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
    --     |> Dict.insert
    --         "resourceCreationTime" "" -- val.resourceCreationTime
    --     |> Dict.insert
    --         "configuration" "" -- val.configuration
    --     |> Dict.insert
    --         "supplementaryConfiguration" "" -- val.supplementaryConfiguration
    --     |> Dict.toList
    ""


{-| Type of HTTP response from batchGetAggregateResourceConfig
-}
type alias BatchGetAggregateResourceConfigResponse =
    { baseConfigurationItems : Maybe (List BaseConfigurationItem)
    , unprocessedResourceIdentifiers : Maybe (List AggregateResourceIdentifier)
    }


batchGetAggregateResourceConfigResponseDecoder : JD.Decoder BatchGetAggregateResourceConfigResponse
batchGetAggregateResourceConfigResponseDecoder =
    JD.succeed BatchGetAggregateResourceConfigResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BaseConfigurationItems", "baseConfigurationItems" ]
                (JD.list baseConfigurationItemDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UnprocessedResourceIdentifiers", "unprocessedResourceIdentifiers" ]
                (JD.list aggregateResourceIdentifierDecoder)
            )


batchGetAggregateResourceConfigResponseToString :
    BatchGetAggregateResourceConfigResponse
    -> String -- List (String, String)
batchGetAggregateResourceConfigResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "baseConfigurationItems" "" -- val.baseConfigurationItems
    --     |> Dict.insert
    --         "unprocessedResourceIdentifiers" "" -- val.unprocessedResourceIdentifiers
    --     |> Dict.toList
    ""


{-| Type of HTTP response from batchGetResourceConfig
-}
type alias BatchGetResourceConfigResponse =
    { baseConfigurationItems : Maybe (List BaseConfigurationItem)
    , unprocessedResourceKeys : Maybe (List ResourceKey)
    }


batchGetResourceConfigResponseDecoder : JD.Decoder BatchGetResourceConfigResponse
batchGetResourceConfigResponseDecoder =
    JD.succeed BatchGetResourceConfigResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "baseConfigurationItems", "BaseConfigurationItems" ]
                (JD.list baseConfigurationItemDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "unprocessedResourceKeys", "UnprocessedResourceKeys" ]
                (JD.list resourceKeyDecoder)
            )


batchGetResourceConfigResponseToString :
    BatchGetResourceConfigResponse
    -> String -- List (String, String)
batchGetResourceConfigResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "baseConfigurationItems" "" -- val.baseConfigurationItems
    --     |> Dict.insert
    --         "unprocessedResourceKeys" "" -- val.unprocessedResourceKeys
    --     |> Dict.toList
    ""


{-| One of

  - `ChronologicalOrder_Reverse`
  - `ChronologicalOrder_Forward`

-}
type ChronologicalOrder
    = ChronologicalOrder_Reverse
    | ChronologicalOrder_Forward


chronologicalOrderDecoder : JD.Decoder ChronologicalOrder
chronologicalOrderDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Reverse" ->
                        JD.succeed ChronologicalOrder_Reverse

                    "Forward" ->
                        JD.succeed ChronologicalOrder_Forward

                    _ ->
                        JD.fail "bad thing"
            )


chronologicalOrderToString : ChronologicalOrder -> String
chronologicalOrderToString val =
    case val of
        ChronologicalOrder_Reverse ->
            "Reverse"

        ChronologicalOrder_Forward ->
            "Forward"


{-|

<p>Indicates whether an AWS resource or AWS Config rule is compliant and provides the number of contributors that affect the compliance.</p>

-}
type alias Compliance =
    { complianceType : Maybe ComplianceType
    , complianceContributorCount : Maybe ComplianceContributorCount
    }


complianceDecoder : JD.Decoder Compliance
complianceDecoder =
    JD.succeed Compliance
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComplianceType", "complianceType" ]
                complianceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComplianceContributorCount", "complianceContributorCount" ]
                complianceContributorCountDecoder
            )


complianceToString :
    Compliance
    -> String -- List (String, String)
complianceToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "complianceType" "" -- val.complianceType
    --     |> Dict.insert
    --         "complianceContributorCount" "" -- val.complianceContributorCount
    --     |> Dict.toList
    ""


{-|

<p>Indicates whether an AWS Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it. A rule is noncompliant if any of these resources do not comply.</p>

-}
type alias ComplianceByConfigRule =
    { configRuleName : Maybe String
    , compliance : Maybe Compliance
    }


complianceByConfigRuleDecoder : JD.Decoder ComplianceByConfigRule
complianceByConfigRuleDecoder =
    JD.succeed ComplianceByConfigRule
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRuleName", "configRuleName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Compliance", "compliance" ]
                complianceDecoder
            )


complianceByConfigRuleToString :
    ComplianceByConfigRule
    -> String -- List (String, String)
complianceByConfigRuleToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configRuleName" "" -- val.configRuleName
    --     |> Dict.insert
    --         "compliance" "" -- val.compliance
    --     |> Dict.toList
    ""


{-|

<p>Indicates whether an AWS resource that is evaluated according to one or more AWS Config rules is compliant. A resource is compliant if it complies with all of the rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules.</p>

-}
type alias ComplianceByResource =
    { resourceType : Maybe String
    , resourceId : Maybe String
    , compliance : Maybe Compliance
    }


complianceByResourceDecoder : JD.Decoder ComplianceByResource
complianceByResourceDecoder =
    JD.succeed ComplianceByResource
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceType", "resourceType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceId", "resourceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Compliance", "compliance" ]
                complianceDecoder
            )


complianceByResourceToString :
    ComplianceByResource
    -> String -- List (String, String)
complianceByResourceToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
    --     |> Dict.insert
    --         "compliance" "" -- val.compliance
    --     |> Dict.toList
    ""


{-|

<p>The number of AWS resources or AWS Config rules responsible for the current compliance of the item, up to a maximum number.</p>

-}
type alias ComplianceContributorCount =
    { cappedCount : Maybe Int
    , capExceeded : Maybe Bool
    }


complianceContributorCountDecoder : JD.Decoder ComplianceContributorCount
complianceContributorCountDecoder =
    JD.succeed ComplianceContributorCount
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CappedCount", "cappedCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CapExceeded", "capExceeded" ]
                JD.bool
            )


complianceContributorCountToString :
    ComplianceContributorCount
    -> String -- List (String, String)
complianceContributorCountToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "cappedCount" "" -- val.cappedCount
    --     |> Dict.insert
    --         "capExceeded" "" -- val.capExceeded
    --     |> Dict.toList
    ""


{-|

<p>The number of AWS Config rules or AWS resources that are compliant and noncompliant.</p>

-}
type alias ComplianceSummary =
    { compliantResourceCount : Maybe ComplianceContributorCount
    , nonCompliantResourceCount : Maybe ComplianceContributorCount
    , complianceSummaryTimestamp : Maybe Posix
    }


complianceSummaryDecoder : JD.Decoder ComplianceSummary
complianceSummaryDecoder =
    JD.succeed ComplianceSummary
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CompliantResourceCount", "compliantResourceCount" ]
                complianceContributorCountDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NonCompliantResourceCount", "nonCompliantResourceCount" ]
                complianceContributorCountDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComplianceSummaryTimestamp", "complianceSummaryTimestamp" ]
                JDX.datetime
            )


complianceSummaryToString :
    ComplianceSummary
    -> String -- List (String, String)
complianceSummaryToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "compliantResourceCount" "" -- val.compliantResourceCount
    --     |> Dict.insert
    --         "nonCompliantResourceCount" "" -- val.nonCompliantResourceCount
    --     |> Dict.insert
    --         "complianceSummaryTimestamp" "" -- val.complianceSummaryTimestamp
    --     |> Dict.toList
    ""


{-|

<p>The number of AWS resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each.</p>

-}
type alias ComplianceSummaryByResourceType =
    { resourceType : Maybe String
    , complianceSummary : Maybe ComplianceSummary
    }


complianceSummaryByResourceTypeDecoder : JD.Decoder ComplianceSummaryByResourceType
complianceSummaryByResourceTypeDecoder =
    JD.succeed ComplianceSummaryByResourceType
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceType", "resourceType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComplianceSummary", "complianceSummary" ]
                complianceSummaryDecoder
            )


complianceSummaryByResourceTypeToString :
    ComplianceSummaryByResourceType
    -> String -- List (String, String)
complianceSummaryByResourceTypeToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
    --     |> Dict.insert
    --         "complianceSummary" "" -- val.complianceSummary
    --     |> Dict.toList
    ""


{-| One of

  - `ComplianceType_COMPLIANT`
  - `ComplianceType_NON_COMPLIANT`
  - `ComplianceType_NOT_APPLICABLE`
  - `ComplianceType_INSUFFICIENT_DATA`

-}
type ComplianceType
    = ComplianceType_COMPLIANT
    | ComplianceType_NON_COMPLIANT
    | ComplianceType_NOT_APPLICABLE
    | ComplianceType_INSUFFICIENT_DATA


complianceTypeDecoder : JD.Decoder ComplianceType
complianceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "COMPLIANT" ->
                        JD.succeed ComplianceType_COMPLIANT

                    "NON_COMPLIANT" ->
                        JD.succeed ComplianceType_NON_COMPLIANT

                    "NOT_APPLICABLE" ->
                        JD.succeed ComplianceType_NOT_APPLICABLE

                    "INSUFFICIENT_DATA" ->
                        JD.succeed ComplianceType_INSUFFICIENT_DATA

                    _ ->
                        JD.fail "bad thing"
            )


complianceTypeToString : ComplianceType -> String
complianceTypeToString val =
    case val of
        ComplianceType_COMPLIANT ->
            "COMPLIANT"

        ComplianceType_NON_COMPLIANT ->
            "NON_COMPLIANT"

        ComplianceType_NOT_APPLICABLE ->
            "NOT_APPLICABLE"

        ComplianceType_INSUFFICIENT_DATA ->
            "INSUFFICIENT_DATA"


{-|

<p>Provides status of the delivery of the snapshot or the configuration history to the specified Amazon S3 bucket. Also provides the status of notifications about the Amazon S3 delivery to the specified Amazon SNS topic.</p>

-}
type alias ConfigExportDeliveryInfo =
    { lastStatus : Maybe DeliveryStatus
    , lastErrorCode : Maybe String
    , lastErrorMessage : Maybe String
    , lastAttemptTime : Maybe Posix
    , lastSuccessfulTime : Maybe Posix
    , nextDeliveryTime : Maybe Posix
    }


configExportDeliveryInfoDecoder : JD.Decoder ConfigExportDeliveryInfo
configExportDeliveryInfoDecoder =
    JD.succeed ConfigExportDeliveryInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastStatus", "LastStatus" ]
                deliveryStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastErrorCode", "LastErrorCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastErrorMessage", "LastErrorMessage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastAttemptTime", "LastAttemptTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastSuccessfulTime", "LastSuccessfulTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextDeliveryTime", "NextDeliveryTime" ]
                JDX.datetime
            )


configExportDeliveryInfoToString :
    ConfigExportDeliveryInfo
    -> String -- List (String, String)
configExportDeliveryInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "lastStatus" "" -- val.lastStatus
    --     |> Dict.insert
    --         "lastErrorCode" "" -- val.lastErrorCode
    --     |> Dict.insert
    --         "lastErrorMessage" "" -- val.lastErrorMessage
    --     |> Dict.insert
    --         "lastAttemptTime" "" -- val.lastAttemptTime
    --     |> Dict.insert
    --         "lastSuccessfulTime" "" -- val.lastSuccessfulTime
    --     |> Dict.insert
    --         "nextDeliveryTime" "" -- val.nextDeliveryTime
    --     |> Dict.toList
    ""


{-|

<p>An AWS Config rule represents an AWS Lambda function that you create for a custom rule or a predefined function for an AWS managed rule. The function evaluates configuration items to assess whether your AWS resources comply with your desired configurations. This function can run when AWS Config detects a configuration change to an AWS resource and at a periodic frequency that you choose (for example, every 24 hours).</p> <note> <p>You can use the AWS CLI and AWS SDKs if you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p> </note> <p>For more information about developing and using AWS Config rules, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html">Evaluating AWS Resource Configurations with AWS Config</a> in the <i>AWS Config Developer Guide</i>.</p>

-}
type alias ConfigRule =
    { configRuleName : Maybe String
    , configRuleArn : Maybe String
    , configRuleId : Maybe String
    , description : Maybe String
    , scope : Maybe Scope
    , source : Source
    , inputParameters : Maybe String
    , maximumExecutionFrequency : Maybe MaximumExecutionFrequency
    , configRuleState : Maybe ConfigRuleState
    , createdBy : Maybe String
    }


configRuleDecoder : JD.Decoder ConfigRule
configRuleDecoder =
    JD.succeed ConfigRule
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRuleName", "configRuleName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRuleArn", "configRuleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRuleId", "configRuleId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Scope", "scope" ]
                scopeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Source", "source" ]
                sourceDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InputParameters", "inputParameters" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaximumExecutionFrequency", "maximumExecutionFrequency" ]
                maximumExecutionFrequencyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRuleState", "configRuleState" ]
                configRuleStateDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreatedBy", "createdBy" ]
                JD.string
            )


configRuleToString :
    ConfigRule
    -> String -- List (String, String)
configRuleToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configRuleName" "" -- val.configRuleName
    --     |> Dict.insert
    --         "configRuleArn" "" -- val.configRuleArn
    --     |> Dict.insert
    --         "configRuleId" "" -- val.configRuleId
    --     |> Dict.insert
    --         "description" "" -- val.description
    --     |> Dict.insert
    --         "scope" "" -- val.scope
    --     |> Dict.insert
    --         "source" "" -- val.source
    --     |> Dict.insert
    --         "inputParameters" "" -- val.inputParameters
    --     |> Dict.insert
    --         "maximumExecutionFrequency" "" -- val.maximumExecutionFrequency
    --     |> Dict.insert
    --         "configRuleState" "" -- val.configRuleState
    --     |> Dict.insert
    --         "createdBy" "" -- val.createdBy
    --     |> Dict.toList
    ""


{-|

<p>Filters the compliance results based on account ID, region, compliance type, and rule name.</p>

-}
type alias ConfigRuleComplianceFilters =
    { configRuleName : Maybe String
    , complianceType : Maybe ComplianceType
    , accountId : Maybe String
    , awsRegion : Maybe String
    }


configRuleComplianceFiltersDecoder : JD.Decoder ConfigRuleComplianceFilters
configRuleComplianceFiltersDecoder =
    JD.succeed ConfigRuleComplianceFilters
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRuleName", "configRuleName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComplianceType", "complianceType" ]
                complianceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountId", "accountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AwsRegion", "awsRegion" ]
                JD.string
            )


configRuleComplianceFiltersToString :
    ConfigRuleComplianceFilters
    -> String -- List (String, String)
configRuleComplianceFiltersToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configRuleName" "" -- val.configRuleName
    --     |> Dict.insert
    --         "complianceType" "" -- val.complianceType
    --     |> Dict.insert
    --         "accountId" "" -- val.accountId
    --     |> Dict.insert
    --         "awsRegion" "" -- val.awsRegion
    --     |> Dict.toList
    ""


{-|

<p>Filters the results based on the account IDs and regions.</p>

-}
type alias ConfigRuleComplianceSummaryFilters =
    { accountId : Maybe String
    , awsRegion : Maybe String
    }


configRuleComplianceSummaryFiltersDecoder : JD.Decoder ConfigRuleComplianceSummaryFilters
configRuleComplianceSummaryFiltersDecoder =
    JD.succeed ConfigRuleComplianceSummaryFilters
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountId", "accountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AwsRegion", "awsRegion" ]
                JD.string
            )


configRuleComplianceSummaryFiltersToString :
    ConfigRuleComplianceSummaryFilters
    -> String -- List (String, String)
configRuleComplianceSummaryFiltersToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "accountId" "" -- val.accountId
    --     |> Dict.insert
    --         "awsRegion" "" -- val.awsRegion
    --     |> Dict.toList
    ""


{-| One of

  - `ConfigRuleComplianceSummaryGroupKey_ACCOUNT_ID`
  - `ConfigRuleComplianceSummaryGroupKey_AWS_REGION`

-}
type ConfigRuleComplianceSummaryGroupKey
    = ConfigRuleComplianceSummaryGroupKey_ACCOUNT_ID
    | ConfigRuleComplianceSummaryGroupKey_AWS_REGION


configRuleComplianceSummaryGroupKeyDecoder : JD.Decoder ConfigRuleComplianceSummaryGroupKey
configRuleComplianceSummaryGroupKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACCOUNT_ID" ->
                        JD.succeed ConfigRuleComplianceSummaryGroupKey_ACCOUNT_ID

                    "AWS_REGION" ->
                        JD.succeed ConfigRuleComplianceSummaryGroupKey_AWS_REGION

                    _ ->
                        JD.fail "bad thing"
            )


configRuleComplianceSummaryGroupKeyToString : ConfigRuleComplianceSummaryGroupKey -> String
configRuleComplianceSummaryGroupKeyToString val =
    case val of
        ConfigRuleComplianceSummaryGroupKey_ACCOUNT_ID ->
            "ACCOUNT_ID"

        ConfigRuleComplianceSummaryGroupKey_AWS_REGION ->
            "AWS_REGION"


{-|

<p>Status information for your AWS managed Config rules. The status includes information such as the last time the rule ran, the last time it failed, and the related error for the last failure.</p> <p>This action does not return status information about custom AWS Config rules.</p>

-}
type alias ConfigRuleEvaluationStatus =
    { configRuleName : Maybe String
    , configRuleArn : Maybe String
    , configRuleId : Maybe String
    , lastSuccessfulInvocationTime : Maybe Posix
    , lastFailedInvocationTime : Maybe Posix
    , lastSuccessfulEvaluationTime : Maybe Posix
    , lastFailedEvaluationTime : Maybe Posix
    , firstActivatedTime : Maybe Posix
    , lastErrorCode : Maybe String
    , lastErrorMessage : Maybe String
    , firstEvaluationStarted : Maybe Bool
    }


configRuleEvaluationStatusDecoder : JD.Decoder ConfigRuleEvaluationStatus
configRuleEvaluationStatusDecoder =
    JD.succeed ConfigRuleEvaluationStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRuleName", "configRuleName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRuleArn", "configRuleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRuleId", "configRuleId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastSuccessfulInvocationTime", "lastSuccessfulInvocationTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastFailedInvocationTime", "lastFailedInvocationTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastSuccessfulEvaluationTime", "lastSuccessfulEvaluationTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastFailedEvaluationTime", "lastFailedEvaluationTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FirstActivatedTime", "firstActivatedTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastErrorCode", "lastErrorCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastErrorMessage", "lastErrorMessage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FirstEvaluationStarted", "firstEvaluationStarted" ]
                JD.bool
            )


configRuleEvaluationStatusToString :
    ConfigRuleEvaluationStatus
    -> String -- List (String, String)
configRuleEvaluationStatusToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configRuleName" "" -- val.configRuleName
    --     |> Dict.insert
    --         "configRuleArn" "" -- val.configRuleArn
    --     |> Dict.insert
    --         "configRuleId" "" -- val.configRuleId
    --     |> Dict.insert
    --         "lastSuccessfulInvocationTime" "" -- val.lastSuccessfulInvocationTime
    --     |> Dict.insert
    --         "lastFailedInvocationTime" "" -- val.lastFailedInvocationTime
    --     |> Dict.insert
    --         "lastSuccessfulEvaluationTime" "" -- val.lastSuccessfulEvaluationTime
    --     |> Dict.insert
    --         "lastFailedEvaluationTime" "" -- val.lastFailedEvaluationTime
    --     |> Dict.insert
    --         "firstActivatedTime" "" -- val.firstActivatedTime
    --     |> Dict.insert
    --         "lastErrorCode" "" -- val.lastErrorCode
    --     |> Dict.insert
    --         "lastErrorMessage" "" -- val.lastErrorMessage
    --     |> Dict.insert
    --         "firstEvaluationStarted" "" -- val.firstEvaluationStarted
    --     |> Dict.toList
    ""


{-| One of

  - `ConfigRuleState_ACTIVE`
  - `ConfigRuleState_DELETING`
  - `ConfigRuleState_DELETING_RESULTS`
  - `ConfigRuleState_EVALUATING`

-}
type ConfigRuleState
    = ConfigRuleState_ACTIVE
    | ConfigRuleState_DELETING
    | ConfigRuleState_DELETING_RESULTS
    | ConfigRuleState_EVALUATING


configRuleStateDecoder : JD.Decoder ConfigRuleState
configRuleStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed ConfigRuleState_ACTIVE

                    "DELETING" ->
                        JD.succeed ConfigRuleState_DELETING

                    "DELETING_RESULTS" ->
                        JD.succeed ConfigRuleState_DELETING_RESULTS

                    "EVALUATING" ->
                        JD.succeed ConfigRuleState_EVALUATING

                    _ ->
                        JD.fail "bad thing"
            )


configRuleStateToString : ConfigRuleState -> String
configRuleStateToString val =
    case val of
        ConfigRuleState_ACTIVE ->
            "ACTIVE"

        ConfigRuleState_DELETING ->
            "DELETING"

        ConfigRuleState_DELETING_RESULTS ->
            "DELETING_RESULTS"

        ConfigRuleState_EVALUATING ->
            "EVALUATING"


{-|

<p>Provides options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket in your delivery channel.</p> <p>The frequency for a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot is set by one of two values, depending on which is less frequent:</p> <ul> <li> <p>The value for the <code>deliveryFrequency</code> parameter within the delivery channel configuration, which sets how often AWS Config delivers configuration snapshots. This value also sets how often AWS Config invokes evaluations for AWS Config rules.</p> </li> <li> <p>The value for the <code>MaximumExecutionFrequency</code> parameter, which sets the maximum frequency with which AWS Config invokes evaluations for the rule. For more information, see <a>ConfigRule</a>.</p> </li> </ul> <p>If the <code>deliveryFrequency</code> value is less frequent than the <code>MaximumExecutionFrequency</code> value for a rule, AWS Config invokes the rule only as often as the <code>deliveryFrequency</code> value.</p> <ol> <li> <p>For example, you want your rule to run evaluations when AWS Config delivers the configuration snapshot.</p> </li> <li> <p>You specify the <code>MaximumExecutionFrequency</code> value for <code>Six_Hours</code>. </p> </li> <li> <p>You then specify the delivery channel <code>deliveryFrequency</code> value for <code>TwentyFour_Hours</code>.</p> </li> <li> <p>Because the value for <code>deliveryFrequency</code> is less frequent than <code>MaximumExecutionFrequency</code>, AWS Config invokes evaluations for the rule every 24 hours. </p> </li> </ol> <p>You should set the <code>MaximumExecutionFrequency</code> value to be at least as frequent as the <code>deliveryFrequency</code> value. You can view the <code>deliveryFrequency</code> value by using the <code>DescribeDeliveryChannnels</code> action.</p> <p>To update the <code>deliveryFrequency</code> with which AWS Config delivers your configuration snapshots, use the <code>PutDeliveryChannel</code> action.</p>

-}
type alias ConfigSnapshotDeliveryProperties =
    { deliveryFrequency : Maybe MaximumExecutionFrequency
    }


configSnapshotDeliveryPropertiesDecoder : JD.Decoder ConfigSnapshotDeliveryProperties
configSnapshotDeliveryPropertiesDecoder =
    JD.succeed ConfigSnapshotDeliveryProperties
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deliveryFrequency", "DeliveryFrequency" ]
                maximumExecutionFrequencyDecoder
            )


configSnapshotDeliveryPropertiesToString :
    ConfigSnapshotDeliveryProperties
    -> String -- List (String, String)
configSnapshotDeliveryPropertiesToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deliveryFrequency" "" -- val.deliveryFrequency
    --     |> Dict.toList
    ""


{-|

<p>A list that contains the status of the delivery of the configuration stream notification to the Amazon SNS topic.</p>

-}
type alias ConfigStreamDeliveryInfo =
    { lastStatus : Maybe DeliveryStatus
    , lastErrorCode : Maybe String
    , lastErrorMessage : Maybe String
    , lastStatusChangeTime : Maybe Posix
    }


configStreamDeliveryInfoDecoder : JD.Decoder ConfigStreamDeliveryInfo
configStreamDeliveryInfoDecoder =
    JD.succeed ConfigStreamDeliveryInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastStatus", "LastStatus" ]
                deliveryStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastErrorCode", "LastErrorCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastErrorMessage", "LastErrorMessage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastStatusChangeTime", "LastStatusChangeTime" ]
                JDX.datetime
            )


configStreamDeliveryInfoToString :
    ConfigStreamDeliveryInfo
    -> String -- List (String, String)
configStreamDeliveryInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "lastStatus" "" -- val.lastStatus
    --     |> Dict.insert
    --         "lastErrorCode" "" -- val.lastErrorCode
    --     |> Dict.insert
    --         "lastErrorMessage" "" -- val.lastErrorMessage
    --     |> Dict.insert
    --         "lastStatusChangeTime" "" -- val.lastStatusChangeTime
    --     |> Dict.toList
    ""


{-|

<p>The details about the configuration aggregator, including information about source accounts, regions, and metadata of the aggregator. </p>

-}
type alias ConfigurationAggregator =
    { configurationAggregatorName : Maybe String
    , configurationAggregatorArn : Maybe String
    , accountAggregationSources : Maybe (List AccountAggregationSource)
    , organizationAggregationSource : Maybe OrganizationAggregationSource
    , creationTime : Maybe Posix
    , lastUpdatedTime : Maybe Posix
    }


configurationAggregatorDecoder : JD.Decoder ConfigurationAggregator
configurationAggregatorDecoder =
    JD.succeed ConfigurationAggregator
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigurationAggregatorName", "configurationAggregatorName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigurationAggregatorArn", "configurationAggregatorArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountAggregationSources", "accountAggregationSources" ]
                (JD.list accountAggregationSourceDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OrganizationAggregationSource", "organizationAggregationSource" ]
                organizationAggregationSourceDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreationTime", "creationTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastUpdatedTime", "lastUpdatedTime" ]
                JDX.datetime
            )


configurationAggregatorToString :
    ConfigurationAggregator
    -> String -- List (String, String)
configurationAggregatorToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configurationAggregatorName" "" -- val.configurationAggregatorName
    --     |> Dict.insert
    --         "configurationAggregatorArn" "" -- val.configurationAggregatorArn
    --     |> Dict.insert
    --         "accountAggregationSources" "" -- val.accountAggregationSources
    --     |> Dict.insert
    --         "organizationAggregationSource" "" -- val.organizationAggregationSource
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
    --     |> Dict.insert
    --         "lastUpdatedTime" "" -- val.lastUpdatedTime
    --     |> Dict.toList
    ""


{-|

<p>A list that contains detailed configurations of a specified resource.</p>

-}
type alias ConfigurationItem =
    { version : Maybe String
    , accountId : Maybe String
    , configurationItemCaptureTime : Maybe Posix
    , configurationItemStatus : Maybe ConfigurationItemStatus
    , configurationStateId : Maybe String
    , configurationItemMD5Hash : Maybe String
    , arn : Maybe String
    , resourceType : Maybe ResourceType
    , resourceId : Maybe String
    , resourceName : Maybe String
    , awsRegion : Maybe String
    , availabilityZone : Maybe String
    , resourceCreationTime : Maybe Posix
    , tags : Maybe (Dict String String)
    , relatedEvents : Maybe (List String)
    , relationships : Maybe (List Relationship)
    , configuration : Maybe String
    , supplementaryConfiguration : Maybe (Dict String String)
    }


configurationItemDecoder : JD.Decoder ConfigurationItem
configurationItemDecoder =
    JD.succeed ConfigurationItem
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "version", "Version" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "accountId", "AccountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configurationItemCaptureTime", "ConfigurationItemCaptureTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configurationItemStatus", "ConfigurationItemStatus" ]
                configurationItemStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configurationStateId", "ConfigurationStateId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configurationItemMD5Hash", "ConfigurationItemMD5Hash" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "arn", "Arn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceType", "ResourceType" ]
                resourceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceId", "ResourceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceName", "ResourceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "awsRegion", "AwsRegion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "availabilityZone", "AvailabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceCreationTime", "ResourceCreationTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "tags", "Tags" ]
                (AWS.Core.Decode.dict JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "relatedEvents", "RelatedEvents" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "relationships", "Relationships" ]
                (JD.list relationshipDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configuration", "Configuration" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "supplementaryConfiguration", "SupplementaryConfiguration" ]
                (AWS.Core.Decode.dict JD.string)
            )


configurationItemToString :
    ConfigurationItem
    -> String -- List (String, String)
configurationItemToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "version" "" -- val.version
    --     |> Dict.insert
    --         "accountId" "" -- val.accountId
    --     |> Dict.insert
    --         "configurationItemCaptureTime" "" -- val.configurationItemCaptureTime
    --     |> Dict.insert
    --         "configurationItemStatus" "" -- val.configurationItemStatus
    --     |> Dict.insert
    --         "configurationStateId" "" -- val.configurationStateId
    --     |> Dict.insert
    --         "configurationItemMD5Hash" "" -- val.configurationItemMD5Hash
    --     |> Dict.insert
    --         "arn" "" -- val.arn
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
    --     |> Dict.insert
    --         "resourceName" "" -- val.resourceName
    --     |> Dict.insert
    --         "awsRegion" "" -- val.awsRegion
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
    --     |> Dict.insert
    --         "resourceCreationTime" "" -- val.resourceCreationTime
    --     |> Dict.insert
    --         "tags" "" -- val.tags
    --     |> Dict.insert
    --         "relatedEvents" "" -- val.relatedEvents
    --     |> Dict.insert
    --         "relationships" "" -- val.relationships
    --     |> Dict.insert
    --         "configuration" "" -- val.configuration
    --     |> Dict.insert
    --         "supplementaryConfiguration" "" -- val.supplementaryConfiguration
    --     |> Dict.toList
    ""


{-| One of

  - `ConfigurationItemStatus_OK`
  - `ConfigurationItemStatus_ResourceDiscovered`
  - `ConfigurationItemStatus_ResourceNotRecorded`
  - `ConfigurationItemStatus_ResourceDeleted`
  - `ConfigurationItemStatus_ResourceDeletedNotRecorded`

-}
type ConfigurationItemStatus
    = ConfigurationItemStatus_OK
    | ConfigurationItemStatus_ResourceDiscovered
    | ConfigurationItemStatus_ResourceNotRecorded
    | ConfigurationItemStatus_ResourceDeleted
    | ConfigurationItemStatus_ResourceDeletedNotRecorded


configurationItemStatusDecoder : JD.Decoder ConfigurationItemStatus
configurationItemStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OK" ->
                        JD.succeed ConfigurationItemStatus_OK

                    "ResourceDiscovered" ->
                        JD.succeed ConfigurationItemStatus_ResourceDiscovered

                    "ResourceNotRecorded" ->
                        JD.succeed ConfigurationItemStatus_ResourceNotRecorded

                    "ResourceDeleted" ->
                        JD.succeed ConfigurationItemStatus_ResourceDeleted

                    "ResourceDeletedNotRecorded" ->
                        JD.succeed ConfigurationItemStatus_ResourceDeletedNotRecorded

                    _ ->
                        JD.fail "bad thing"
            )


configurationItemStatusToString : ConfigurationItemStatus -> String
configurationItemStatusToString val =
    case val of
        ConfigurationItemStatus_OK ->
            "OK"

        ConfigurationItemStatus_ResourceDiscovered ->
            "ResourceDiscovered"

        ConfigurationItemStatus_ResourceNotRecorded ->
            "ResourceNotRecorded"

        ConfigurationItemStatus_ResourceDeleted ->
            "ResourceDeleted"

        ConfigurationItemStatus_ResourceDeletedNotRecorded ->
            "ResourceDeletedNotRecorded"


{-|

<p>An object that represents the recording of configuration changes of an AWS resource.</p>

-}
type alias ConfigurationRecorder =
    { name : Maybe String
    , roleARN : Maybe String
    , recordingGroup : Maybe RecordingGroup
    }


configurationRecorderDecoder : JD.Decoder ConfigurationRecorder
configurationRecorderDecoder =
    JD.succeed ConfigurationRecorder
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "name", "Name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "roleARN", "RoleARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "recordingGroup", "RecordingGroup" ]
                recordingGroupDecoder
            )


configurationRecorderToString :
    ConfigurationRecorder
    -> String -- List (String, String)
configurationRecorderToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
    --     |> Dict.insert
    --         "recordingGroup" "" -- val.recordingGroup
    --     |> Dict.toList
    ""


{-|

<p>The current status of the configuration recorder.</p>

-}
type alias ConfigurationRecorderStatus =
    { name : Maybe String
    , lastStartTime : Maybe Posix
    , lastStopTime : Maybe Posix
    , recording : Maybe Bool
    , lastStatus : Maybe RecorderStatus
    , lastErrorCode : Maybe String
    , lastErrorMessage : Maybe String
    , lastStatusChangeTime : Maybe Posix
    }


configurationRecorderStatusDecoder : JD.Decoder ConfigurationRecorderStatus
configurationRecorderStatusDecoder =
    JD.succeed ConfigurationRecorderStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "name", "Name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastStartTime", "LastStartTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastStopTime", "LastStopTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "recording", "Recording" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastStatus", "LastStatus" ]
                recorderStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastErrorCode", "LastErrorCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastErrorMessage", "LastErrorMessage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastStatusChangeTime", "LastStatusChangeTime" ]
                JDX.datetime
            )


configurationRecorderStatusToString :
    ConfigurationRecorderStatus
    -> String -- List (String, String)
configurationRecorderStatusToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.insert
    --         "lastStartTime" "" -- val.lastStartTime
    --     |> Dict.insert
    --         "lastStopTime" "" -- val.lastStopTime
    --     |> Dict.insert
    --         "recording" "" -- val.recording
    --     |> Dict.insert
    --         "lastStatus" "" -- val.lastStatus
    --     |> Dict.insert
    --         "lastErrorCode" "" -- val.lastErrorCode
    --     |> Dict.insert
    --         "lastErrorMessage" "" -- val.lastErrorMessage
    --     |> Dict.insert
    --         "lastStatusChangeTime" "" -- val.lastStatusChangeTime
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteEvaluationResults
-}
type alias DeleteEvaluationResultsResponse =
    {}


deleteEvaluationResultsResponseDecoder : JD.Decoder DeleteEvaluationResultsResponse
deleteEvaluationResultsResponseDecoder =
    JD.succeed DeleteEvaluationResultsResponse


deleteEvaluationResultsResponseToString :
    DeleteEvaluationResultsResponse
    -> String -- List (String, String)
deleteEvaluationResultsResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteRemediationConfiguration
-}
type alias DeleteRemediationConfigurationResponse =
    {}


deleteRemediationConfigurationResponseDecoder : JD.Decoder DeleteRemediationConfigurationResponse
deleteRemediationConfigurationResponseDecoder =
    JD.succeed DeleteRemediationConfigurationResponse


deleteRemediationConfigurationResponseToString :
    DeleteRemediationConfigurationResponse
    -> String -- List (String, String)
deleteRemediationConfigurationResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deliverConfigSnapshot
-}
type alias DeliverConfigSnapshotResponse =
    { configSnapshotId : Maybe String
    }


deliverConfigSnapshotResponseDecoder : JD.Decoder DeliverConfigSnapshotResponse
deliverConfigSnapshotResponseDecoder =
    JD.succeed DeliverConfigSnapshotResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configSnapshotId", "ConfigSnapshotId" ]
                JD.string
            )


deliverConfigSnapshotResponseToString :
    DeliverConfigSnapshotResponse
    -> String -- List (String, String)
deliverConfigSnapshotResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configSnapshotId" "" -- val.configSnapshotId
    --     |> Dict.toList
    ""


{-|

<p>The channel through which AWS Config delivers notifications and updated configuration states.</p>

-}
type alias DeliveryChannel =
    { name : Maybe String
    , s3BucketName : Maybe String
    , s3KeyPrefix : Maybe String
    , snsTopicARN : Maybe String
    , configSnapshotDeliveryProperties : Maybe ConfigSnapshotDeliveryProperties
    }


deliveryChannelDecoder : JD.Decoder DeliveryChannel
deliveryChannelDecoder =
    JD.succeed DeliveryChannel
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "name", "Name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "s3BucketName", "S3BucketName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "s3KeyPrefix", "S3KeyPrefix" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "snsTopicARN", "SnsTopicARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configSnapshotDeliveryProperties", "ConfigSnapshotDeliveryProperties" ]
                configSnapshotDeliveryPropertiesDecoder
            )


deliveryChannelToString :
    DeliveryChannel
    -> String -- List (String, String)
deliveryChannelToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.insert
    --         "s3BucketName" "" -- val.s3BucketName
    --     |> Dict.insert
    --         "s3KeyPrefix" "" -- val.s3KeyPrefix
    --     |> Dict.insert
    --         "snsTopicARN" "" -- val.snsTopicARN
    --     |> Dict.insert
    --         "configSnapshotDeliveryProperties" "" -- val.configSnapshotDeliveryProperties
    --     |> Dict.toList
    ""


{-|

<p>The status of a specified delivery channel.</p> <p>Valid values: <code>Success</code> | <code>Failure</code> </p>

-}
type alias DeliveryChannelStatus =
    { name : Maybe String
    , configSnapshotDeliveryInfo : Maybe ConfigExportDeliveryInfo
    , configHistoryDeliveryInfo : Maybe ConfigExportDeliveryInfo
    , configStreamDeliveryInfo : Maybe ConfigStreamDeliveryInfo
    }


deliveryChannelStatusDecoder : JD.Decoder DeliveryChannelStatus
deliveryChannelStatusDecoder =
    JD.succeed DeliveryChannelStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "name", "Name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configSnapshotDeliveryInfo", "ConfigSnapshotDeliveryInfo" ]
                configExportDeliveryInfoDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configHistoryDeliveryInfo", "ConfigHistoryDeliveryInfo" ]
                configExportDeliveryInfoDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configStreamDeliveryInfo", "ConfigStreamDeliveryInfo" ]
                configStreamDeliveryInfoDecoder
            )


deliveryChannelStatusToString :
    DeliveryChannelStatus
    -> String -- List (String, String)
deliveryChannelStatusToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.insert
    --         "configSnapshotDeliveryInfo" "" -- val.configSnapshotDeliveryInfo
    --     |> Dict.insert
    --         "configHistoryDeliveryInfo" "" -- val.configHistoryDeliveryInfo
    --     |> Dict.insert
    --         "configStreamDeliveryInfo" "" -- val.configStreamDeliveryInfo
    --     |> Dict.toList
    ""


{-| One of

  - `DeliveryStatus_Success`
  - `DeliveryStatus_Failure`
  - `DeliveryStatus_Not_Applicable`

-}
type DeliveryStatus
    = DeliveryStatus_Success
    | DeliveryStatus_Failure
    | DeliveryStatus_Not_Applicable


deliveryStatusDecoder : JD.Decoder DeliveryStatus
deliveryStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Success" ->
                        JD.succeed DeliveryStatus_Success

                    "Failure" ->
                        JD.succeed DeliveryStatus_Failure

                    "Not_Applicable" ->
                        JD.succeed DeliveryStatus_Not_Applicable

                    _ ->
                        JD.fail "bad thing"
            )


deliveryStatusToString : DeliveryStatus -> String
deliveryStatusToString val =
    case val of
        DeliveryStatus_Success ->
            "Success"

        DeliveryStatus_Failure ->
            "Failure"

        DeliveryStatus_Not_Applicable ->
            "Not_Applicable"


{-| Type of HTTP response from describeAggregateComplianceByConfigRules
-}
type alias DescribeAggregateComplianceByConfigRulesResponse =
    { aggregateComplianceByConfigRules : Maybe (List AggregateComplianceByConfigRule)
    , nextToken : Maybe String
    }


describeAggregateComplianceByConfigRulesResponseDecoder : JD.Decoder DescribeAggregateComplianceByConfigRulesResponse
describeAggregateComplianceByConfigRulesResponseDecoder =
    JD.succeed DescribeAggregateComplianceByConfigRulesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AggregateComplianceByConfigRules", "aggregateComplianceByConfigRules" ]
                (JD.list aggregateComplianceByConfigRuleDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describeAggregateComplianceByConfigRulesResponseToString :
    DescribeAggregateComplianceByConfigRulesResponse
    -> String -- List (String, String)
describeAggregateComplianceByConfigRulesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "aggregateComplianceByConfigRules" "" -- val.aggregateComplianceByConfigRules
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeAggregationAuthorizations
-}
type alias DescribeAggregationAuthorizationsResponse =
    { aggregationAuthorizations : Maybe (List AggregationAuthorization)
    , nextToken : Maybe String
    }


describeAggregationAuthorizationsResponseDecoder : JD.Decoder DescribeAggregationAuthorizationsResponse
describeAggregationAuthorizationsResponseDecoder =
    JD.succeed DescribeAggregationAuthorizationsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AggregationAuthorizations", "aggregationAuthorizations" ]
                (JD.list aggregationAuthorizationDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describeAggregationAuthorizationsResponseToString :
    DescribeAggregationAuthorizationsResponse
    -> String -- List (String, String)
describeAggregationAuthorizationsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "aggregationAuthorizations" "" -- val.aggregationAuthorizations
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeComplianceByConfigRule
-}
type alias DescribeComplianceByConfigRuleResponse =
    { complianceByConfigRules : Maybe (List ComplianceByConfigRule)
    , nextToken : Maybe String
    }


describeComplianceByConfigRuleResponseDecoder : JD.Decoder DescribeComplianceByConfigRuleResponse
describeComplianceByConfigRuleResponseDecoder =
    JD.succeed DescribeComplianceByConfigRuleResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComplianceByConfigRules", "complianceByConfigRules" ]
                (JD.list complianceByConfigRuleDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describeComplianceByConfigRuleResponseToString :
    DescribeComplianceByConfigRuleResponse
    -> String -- List (String, String)
describeComplianceByConfigRuleResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "complianceByConfigRules" "" -- val.complianceByConfigRules
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeComplianceByResource
-}
type alias DescribeComplianceByResourceResponse =
    { complianceByResources : Maybe (List ComplianceByResource)
    , nextToken : Maybe String
    }


describeComplianceByResourceResponseDecoder : JD.Decoder DescribeComplianceByResourceResponse
describeComplianceByResourceResponseDecoder =
    JD.succeed DescribeComplianceByResourceResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComplianceByResources", "complianceByResources" ]
                (JD.list complianceByResourceDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describeComplianceByResourceResponseToString :
    DescribeComplianceByResourceResponse
    -> String -- List (String, String)
describeComplianceByResourceResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "complianceByResources" "" -- val.complianceByResources
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeConfigRuleEvaluationStatus
-}
type alias DescribeConfigRuleEvaluationStatusResponse =
    { configRulesEvaluationStatus : Maybe (List ConfigRuleEvaluationStatus)
    , nextToken : Maybe String
    }


describeConfigRuleEvaluationStatusResponseDecoder : JD.Decoder DescribeConfigRuleEvaluationStatusResponse
describeConfigRuleEvaluationStatusResponseDecoder =
    JD.succeed DescribeConfigRuleEvaluationStatusResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRulesEvaluationStatus", "configRulesEvaluationStatus" ]
                (JD.list configRuleEvaluationStatusDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describeConfigRuleEvaluationStatusResponseToString :
    DescribeConfigRuleEvaluationStatusResponse
    -> String -- List (String, String)
describeConfigRuleEvaluationStatusResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configRulesEvaluationStatus" "" -- val.configRulesEvaluationStatus
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeConfigRules
-}
type alias DescribeConfigRulesResponse =
    { configRules : Maybe (List ConfigRule)
    , nextToken : Maybe String
    }


describeConfigRulesResponseDecoder : JD.Decoder DescribeConfigRulesResponse
describeConfigRulesResponseDecoder =
    JD.succeed DescribeConfigRulesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRules", "configRules" ]
                (JD.list configRuleDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describeConfigRulesResponseToString :
    DescribeConfigRulesResponse
    -> String -- List (String, String)
describeConfigRulesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configRules" "" -- val.configRules
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeConfigurationAggregatorSourcesStatus
-}
type alias DescribeConfigurationAggregatorSourcesStatusResponse =
    { aggregatedSourceStatusList : Maybe (List AggregatedSourceStatus)
    , nextToken : Maybe String
    }


describeConfigurationAggregatorSourcesStatusResponseDecoder : JD.Decoder DescribeConfigurationAggregatorSourcesStatusResponse
describeConfigurationAggregatorSourcesStatusResponseDecoder =
    JD.succeed DescribeConfigurationAggregatorSourcesStatusResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AggregatedSourceStatusList", "aggregatedSourceStatusList" ]
                (JD.list aggregatedSourceStatusDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describeConfigurationAggregatorSourcesStatusResponseToString :
    DescribeConfigurationAggregatorSourcesStatusResponse
    -> String -- List (String, String)
describeConfigurationAggregatorSourcesStatusResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "aggregatedSourceStatusList" "" -- val.aggregatedSourceStatusList
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeConfigurationAggregators
-}
type alias DescribeConfigurationAggregatorsResponse =
    { configurationAggregators : Maybe (List ConfigurationAggregator)
    , nextToken : Maybe String
    }


describeConfigurationAggregatorsResponseDecoder : JD.Decoder DescribeConfigurationAggregatorsResponse
describeConfigurationAggregatorsResponseDecoder =
    JD.succeed DescribeConfigurationAggregatorsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigurationAggregators", "configurationAggregators" ]
                (JD.list configurationAggregatorDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describeConfigurationAggregatorsResponseToString :
    DescribeConfigurationAggregatorsResponse
    -> String -- List (String, String)
describeConfigurationAggregatorsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configurationAggregators" "" -- val.configurationAggregators
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeConfigurationRecorderStatus
-}
type alias DescribeConfigurationRecorderStatusResponse =
    { configurationRecordersStatus : Maybe (List ConfigurationRecorderStatus)
    }


describeConfigurationRecorderStatusResponseDecoder : JD.Decoder DescribeConfigurationRecorderStatusResponse
describeConfigurationRecorderStatusResponseDecoder =
    JD.succeed DescribeConfigurationRecorderStatusResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigurationRecordersStatus", "configurationRecordersStatus" ]
                (JD.list configurationRecorderStatusDecoder)
            )


describeConfigurationRecorderStatusResponseToString :
    DescribeConfigurationRecorderStatusResponse
    -> String -- List (String, String)
describeConfigurationRecorderStatusResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configurationRecordersStatus" "" -- val.configurationRecordersStatus
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeConfigurationRecorders
-}
type alias DescribeConfigurationRecordersResponse =
    { configurationRecorders : Maybe (List ConfigurationRecorder)
    }


describeConfigurationRecordersResponseDecoder : JD.Decoder DescribeConfigurationRecordersResponse
describeConfigurationRecordersResponseDecoder =
    JD.succeed DescribeConfigurationRecordersResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigurationRecorders", "configurationRecorders" ]
                (JD.list configurationRecorderDecoder)
            )


describeConfigurationRecordersResponseToString :
    DescribeConfigurationRecordersResponse
    -> String -- List (String, String)
describeConfigurationRecordersResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configurationRecorders" "" -- val.configurationRecorders
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeDeliveryChannelStatus
-}
type alias DescribeDeliveryChannelStatusResponse =
    { deliveryChannelsStatus : Maybe (List DeliveryChannelStatus)
    }


describeDeliveryChannelStatusResponseDecoder : JD.Decoder DescribeDeliveryChannelStatusResponse
describeDeliveryChannelStatusResponseDecoder =
    JD.succeed DescribeDeliveryChannelStatusResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeliveryChannelsStatus", "deliveryChannelsStatus" ]
                (JD.list deliveryChannelStatusDecoder)
            )


describeDeliveryChannelStatusResponseToString :
    DescribeDeliveryChannelStatusResponse
    -> String -- List (String, String)
describeDeliveryChannelStatusResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deliveryChannelsStatus" "" -- val.deliveryChannelsStatus
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeDeliveryChannels
-}
type alias DescribeDeliveryChannelsResponse =
    { deliveryChannels : Maybe (List DeliveryChannel)
    }


describeDeliveryChannelsResponseDecoder : JD.Decoder DescribeDeliveryChannelsResponse
describeDeliveryChannelsResponseDecoder =
    JD.succeed DescribeDeliveryChannelsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeliveryChannels", "deliveryChannels" ]
                (JD.list deliveryChannelDecoder)
            )


describeDeliveryChannelsResponseToString :
    DescribeDeliveryChannelsResponse
    -> String -- List (String, String)
describeDeliveryChannelsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deliveryChannels" "" -- val.deliveryChannels
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeOrganizationConfigRuleStatuses
-}
type alias DescribeOrganizationConfigRuleStatusesResponse =
    { organizationConfigRuleStatuses : Maybe (List OrganizationConfigRuleStatus)
    , nextToken : Maybe String
    }


describeOrganizationConfigRuleStatusesResponseDecoder : JD.Decoder DescribeOrganizationConfigRuleStatusesResponse
describeOrganizationConfigRuleStatusesResponseDecoder =
    JD.succeed DescribeOrganizationConfigRuleStatusesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OrganizationConfigRuleStatuses", "organizationConfigRuleStatuses" ]
                (JD.list organizationConfigRuleStatusDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describeOrganizationConfigRuleStatusesResponseToString :
    DescribeOrganizationConfigRuleStatusesResponse
    -> String -- List (String, String)
describeOrganizationConfigRuleStatusesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "organizationConfigRuleStatuses" "" -- val.organizationConfigRuleStatuses
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeOrganizationConfigRules
-}
type alias DescribeOrganizationConfigRulesResponse =
    { organizationConfigRules : Maybe (List OrganizationConfigRule)
    , nextToken : Maybe String
    }


describeOrganizationConfigRulesResponseDecoder : JD.Decoder DescribeOrganizationConfigRulesResponse
describeOrganizationConfigRulesResponseDecoder =
    JD.succeed DescribeOrganizationConfigRulesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OrganizationConfigRules", "organizationConfigRules" ]
                (JD.list organizationConfigRuleDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describeOrganizationConfigRulesResponseToString :
    DescribeOrganizationConfigRulesResponse
    -> String -- List (String, String)
describeOrganizationConfigRulesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "organizationConfigRules" "" -- val.organizationConfigRules
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describePendingAggregationRequests
-}
type alias DescribePendingAggregationRequestsResponse =
    { pendingAggregationRequests : Maybe (List PendingAggregationRequest)
    , nextToken : Maybe String
    }


describePendingAggregationRequestsResponseDecoder : JD.Decoder DescribePendingAggregationRequestsResponse
describePendingAggregationRequestsResponseDecoder =
    JD.succeed DescribePendingAggregationRequestsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PendingAggregationRequests", "pendingAggregationRequests" ]
                (JD.list pendingAggregationRequestDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describePendingAggregationRequestsResponseToString :
    DescribePendingAggregationRequestsResponse
    -> String -- List (String, String)
describePendingAggregationRequestsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "pendingAggregationRequests" "" -- val.pendingAggregationRequests
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeRemediationConfigurations
-}
type alias DescribeRemediationConfigurationsResponse =
    { remediationConfigurations : Maybe (List RemediationConfiguration)
    }


describeRemediationConfigurationsResponseDecoder : JD.Decoder DescribeRemediationConfigurationsResponse
describeRemediationConfigurationsResponseDecoder =
    JD.succeed DescribeRemediationConfigurationsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RemediationConfigurations", "remediationConfigurations" ]
                (JD.list remediationConfigurationDecoder)
            )


describeRemediationConfigurationsResponseToString :
    DescribeRemediationConfigurationsResponse
    -> String -- List (String, String)
describeRemediationConfigurationsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "remediationConfigurations" "" -- val.remediationConfigurations
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeRemediationExecutionStatus
-}
type alias DescribeRemediationExecutionStatusResponse =
    { remediationExecutionStatuses : Maybe (List RemediationExecutionStatus)
    , nextToken : Maybe String
    }


describeRemediationExecutionStatusResponseDecoder : JD.Decoder DescribeRemediationExecutionStatusResponse
describeRemediationExecutionStatusResponseDecoder =
    JD.succeed DescribeRemediationExecutionStatusResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RemediationExecutionStatuses", "remediationExecutionStatuses" ]
                (JD.list remediationExecutionStatusDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describeRemediationExecutionStatusResponseToString :
    DescribeRemediationExecutionStatusResponse
    -> String -- List (String, String)
describeRemediationExecutionStatusResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "remediationExecutionStatuses" "" -- val.remediationExecutionStatuses
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeRetentionConfigurations
-}
type alias DescribeRetentionConfigurationsResponse =
    { retentionConfigurations : Maybe (List RetentionConfiguration)
    , nextToken : Maybe String
    }


describeRetentionConfigurationsResponseDecoder : JD.Decoder DescribeRetentionConfigurationsResponse
describeRetentionConfigurationsResponseDecoder =
    JD.succeed DescribeRetentionConfigurationsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RetentionConfigurations", "retentionConfigurations" ]
                (JD.list retentionConfigurationDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describeRetentionConfigurationsResponseToString :
    DescribeRetentionConfigurationsResponse
    -> String -- List (String, String)
describeRetentionConfigurationsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "retentionConfigurations" "" -- val.retentionConfigurations
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-|

<p>Identifies an AWS resource and indicates whether it complies with the AWS Config rule that it was evaluated against.</p>

-}
type alias Evaluation =
    { complianceResourceType : String
    , complianceResourceId : String
    , complianceType : ComplianceType
    , annotation : Maybe String
    , orderingTimestamp : Posix
    }


evaluationDecoder : JD.Decoder Evaluation
evaluationDecoder =
    JD.succeed Evaluation
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ComplianceResourceType", "complianceResourceType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ComplianceResourceId", "complianceResourceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ComplianceType", "complianceType" ]
                complianceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Annotation", "annotation" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OrderingTimestamp", "orderingTimestamp" ]
                JDX.datetime
            )


evaluationToString :
    Evaluation
    -> String -- List (String, String)
evaluationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "complianceResourceType" "" -- val.complianceResourceType
    --     |> Dict.insert
    --         "complianceResourceId" "" -- val.complianceResourceId
    --     |> Dict.insert
    --         "complianceType" "" -- val.complianceType
    --     |> Dict.insert
    --         "annotation" "" -- val.annotation
    --     |> Dict.insert
    --         "orderingTimestamp" "" -- val.orderingTimestamp
    --     |> Dict.toList
    ""


{-|

<p>The details of an AWS Config evaluation. Provides the AWS resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.</p>

-}
type alias EvaluationResult =
    { evaluationResultIdentifier : Maybe EvaluationResultIdentifier
    , complianceType : Maybe ComplianceType
    , resultRecordedTime : Maybe Posix
    , configRuleInvokedTime : Maybe Posix
    , annotation : Maybe String
    , resultToken : Maybe String
    }


evaluationResultDecoder : JD.Decoder EvaluationResult
evaluationResultDecoder =
    JD.succeed EvaluationResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EvaluationResultIdentifier", "evaluationResultIdentifier" ]
                evaluationResultIdentifierDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComplianceType", "complianceType" ]
                complianceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResultRecordedTime", "resultRecordedTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRuleInvokedTime", "configRuleInvokedTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Annotation", "annotation" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResultToken", "resultToken" ]
                JD.string
            )


evaluationResultToString :
    EvaluationResult
    -> String -- List (String, String)
evaluationResultToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "evaluationResultIdentifier" "" -- val.evaluationResultIdentifier
    --     |> Dict.insert
    --         "complianceType" "" -- val.complianceType
    --     |> Dict.insert
    --         "resultRecordedTime" "" -- val.resultRecordedTime
    --     |> Dict.insert
    --         "configRuleInvokedTime" "" -- val.configRuleInvokedTime
    --     |> Dict.insert
    --         "annotation" "" -- val.annotation
    --     |> Dict.insert
    --         "resultToken" "" -- val.resultToken
    --     |> Dict.toList
    ""


{-|

<p>Uniquely identifies an evaluation result.</p>

-}
type alias EvaluationResultIdentifier =
    { evaluationResultQualifier : Maybe EvaluationResultQualifier
    , orderingTimestamp : Maybe Posix
    }


evaluationResultIdentifierDecoder : JD.Decoder EvaluationResultIdentifier
evaluationResultIdentifierDecoder =
    JD.succeed EvaluationResultIdentifier
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EvaluationResultQualifier", "evaluationResultQualifier" ]
                evaluationResultQualifierDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OrderingTimestamp", "orderingTimestamp" ]
                JDX.datetime
            )


evaluationResultIdentifierToString :
    EvaluationResultIdentifier
    -> String -- List (String, String)
evaluationResultIdentifierToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "evaluationResultQualifier" "" -- val.evaluationResultQualifier
    --     |> Dict.insert
    --         "orderingTimestamp" "" -- val.orderingTimestamp
    --     |> Dict.toList
    ""


{-|

<p>Identifies an AWS Config rule that evaluated an AWS resource, and provides the type and ID of the resource that the rule evaluated.</p>

-}
type alias EvaluationResultQualifier =
    { configRuleName : Maybe String
    , resourceType : Maybe String
    , resourceId : Maybe String
    }


evaluationResultQualifierDecoder : JD.Decoder EvaluationResultQualifier
evaluationResultQualifierDecoder =
    JD.succeed EvaluationResultQualifier
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigRuleName", "configRuleName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceType", "resourceType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceId", "resourceId" ]
                JD.string
            )


evaluationResultQualifierToString :
    EvaluationResultQualifier
    -> String -- List (String, String)
evaluationResultQualifierToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configRuleName" "" -- val.configRuleName
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
    --     |> Dict.toList
    ""


{-| One of

  - `EventSource_aws.config`

-}
type EventSource
    = EventSource_aws_config


eventSourceDecoder : JD.Decoder EventSource
eventSourceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "aws_config" ->
                        JD.succeed EventSource_aws_config

                    _ ->
                        JD.fail "bad thing"
            )


eventSourceToString : EventSource -> String
eventSourceToString val =
    case val of
        EventSource_aws_config ->
            "aws_config"


{-|

<p>List of each of the failed remediations with specific reasons.</p>

-}
type alias FailedRemediationBatch =
    { failureMessage : Maybe String
    , failedItems : Maybe (List RemediationConfiguration)
    }


failedRemediationBatchDecoder : JD.Decoder FailedRemediationBatch
failedRemediationBatchDecoder =
    JD.succeed FailedRemediationBatch
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FailureMessage", "failureMessage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FailedItems", "failedItems" ]
                (JD.list remediationConfigurationDecoder)
            )


failedRemediationBatchToString :
    FailedRemediationBatch
    -> String -- List (String, String)
failedRemediationBatchToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "failureMessage" "" -- val.failureMessage
    --     |> Dict.insert
    --         "failedItems" "" -- val.failedItems
    --     |> Dict.toList
    ""


{-|

<p>Details about the fields such as name of the field.</p>

-}
type alias FieldInfo =
    { name : Maybe String
    }


fieldInfoDecoder : JD.Decoder FieldInfo
fieldInfoDecoder =
    JD.succeed FieldInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )


fieldInfoToString :
    FieldInfo
    -> String -- List (String, String)
fieldInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getAggregateComplianceDetailsByConfigRule
-}
type alias GetAggregateComplianceDetailsByConfigRuleResponse =
    { aggregateEvaluationResults : Maybe (List AggregateEvaluationResult)
    , nextToken : Maybe String
    }


getAggregateComplianceDetailsByConfigRuleResponseDecoder : JD.Decoder GetAggregateComplianceDetailsByConfigRuleResponse
getAggregateComplianceDetailsByConfigRuleResponseDecoder =
    JD.succeed GetAggregateComplianceDetailsByConfigRuleResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AggregateEvaluationResults", "aggregateEvaluationResults" ]
                (JD.list aggregateEvaluationResultDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


getAggregateComplianceDetailsByConfigRuleResponseToString :
    GetAggregateComplianceDetailsByConfigRuleResponse
    -> String -- List (String, String)
getAggregateComplianceDetailsByConfigRuleResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "aggregateEvaluationResults" "" -- val.aggregateEvaluationResults
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getAggregateConfigRuleComplianceSummary
-}
type alias GetAggregateConfigRuleComplianceSummaryResponse =
    { groupByKey : Maybe String
    , aggregateComplianceCounts : Maybe (List AggregateComplianceCount)
    , nextToken : Maybe String
    }


getAggregateConfigRuleComplianceSummaryResponseDecoder : JD.Decoder GetAggregateConfigRuleComplianceSummaryResponse
getAggregateConfigRuleComplianceSummaryResponseDecoder =
    JD.succeed GetAggregateConfigRuleComplianceSummaryResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GroupByKey", "groupByKey" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AggregateComplianceCounts", "aggregateComplianceCounts" ]
                (JD.list aggregateComplianceCountDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


getAggregateConfigRuleComplianceSummaryResponseToString :
    GetAggregateConfigRuleComplianceSummaryResponse
    -> String -- List (String, String)
getAggregateConfigRuleComplianceSummaryResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "groupByKey" "" -- val.groupByKey
    --     |> Dict.insert
    --         "aggregateComplianceCounts" "" -- val.aggregateComplianceCounts
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getAggregateDiscoveredResourceCounts
-}
type alias GetAggregateDiscoveredResourceCountsResponse =
    { totalDiscoveredResources : Int
    , groupByKey : Maybe String
    , groupedResourceCounts : Maybe (List GroupedResourceCount)
    , nextToken : Maybe String
    }


getAggregateDiscoveredResourceCountsResponseDecoder : JD.Decoder GetAggregateDiscoveredResourceCountsResponse
getAggregateDiscoveredResourceCountsResponseDecoder =
    JD.succeed GetAggregateDiscoveredResourceCountsResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "TotalDiscoveredResources", "totalDiscoveredResources" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GroupByKey", "groupByKey" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GroupedResourceCounts", "groupedResourceCounts" ]
                (JD.list groupedResourceCountDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


getAggregateDiscoveredResourceCountsResponseToString :
    GetAggregateDiscoveredResourceCountsResponse
    -> String -- List (String, String)
getAggregateDiscoveredResourceCountsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "totalDiscoveredResources" "" -- val.totalDiscoveredResources
    --     |> Dict.insert
    --         "groupByKey" "" -- val.groupByKey
    --     |> Dict.insert
    --         "groupedResourceCounts" "" -- val.groupedResourceCounts
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getAggregateResourceConfig
-}
type alias GetAggregateResourceConfigResponse =
    { configurationItem : Maybe ConfigurationItem
    }


getAggregateResourceConfigResponseDecoder : JD.Decoder GetAggregateResourceConfigResponse
getAggregateResourceConfigResponseDecoder =
    JD.succeed GetAggregateResourceConfigResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigurationItem", "configurationItem" ]
                configurationItemDecoder
            )


getAggregateResourceConfigResponseToString :
    GetAggregateResourceConfigResponse
    -> String -- List (String, String)
getAggregateResourceConfigResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configurationItem" "" -- val.configurationItem
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getComplianceDetailsByConfigRule
-}
type alias GetComplianceDetailsByConfigRuleResponse =
    { evaluationResults : Maybe (List EvaluationResult)
    , nextToken : Maybe String
    }


getComplianceDetailsByConfigRuleResponseDecoder : JD.Decoder GetComplianceDetailsByConfigRuleResponse
getComplianceDetailsByConfigRuleResponseDecoder =
    JD.succeed GetComplianceDetailsByConfigRuleResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EvaluationResults", "evaluationResults" ]
                (JD.list evaluationResultDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


getComplianceDetailsByConfigRuleResponseToString :
    GetComplianceDetailsByConfigRuleResponse
    -> String -- List (String, String)
getComplianceDetailsByConfigRuleResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "evaluationResults" "" -- val.evaluationResults
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getComplianceDetailsByResource
-}
type alias GetComplianceDetailsByResourceResponse =
    { evaluationResults : Maybe (List EvaluationResult)
    , nextToken : Maybe String
    }


getComplianceDetailsByResourceResponseDecoder : JD.Decoder GetComplianceDetailsByResourceResponse
getComplianceDetailsByResourceResponseDecoder =
    JD.succeed GetComplianceDetailsByResourceResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EvaluationResults", "evaluationResults" ]
                (JD.list evaluationResultDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


getComplianceDetailsByResourceResponseToString :
    GetComplianceDetailsByResourceResponse
    -> String -- List (String, String)
getComplianceDetailsByResourceResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "evaluationResults" "" -- val.evaluationResults
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getComplianceSummaryByConfigRule
-}
type alias GetComplianceSummaryByConfigRuleResponse =
    { complianceSummary : Maybe ComplianceSummary
    }


getComplianceSummaryByConfigRuleResponseDecoder : JD.Decoder GetComplianceSummaryByConfigRuleResponse
getComplianceSummaryByConfigRuleResponseDecoder =
    JD.succeed GetComplianceSummaryByConfigRuleResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComplianceSummary", "complianceSummary" ]
                complianceSummaryDecoder
            )


getComplianceSummaryByConfigRuleResponseToString :
    GetComplianceSummaryByConfigRuleResponse
    -> String -- List (String, String)
getComplianceSummaryByConfigRuleResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "complianceSummary" "" -- val.complianceSummary
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getComplianceSummaryByResourceType
-}
type alias GetComplianceSummaryByResourceTypeResponse =
    { complianceSummariesByResourceType : Maybe (List ComplianceSummaryByResourceType)
    }


getComplianceSummaryByResourceTypeResponseDecoder : JD.Decoder GetComplianceSummaryByResourceTypeResponse
getComplianceSummaryByResourceTypeResponseDecoder =
    JD.succeed GetComplianceSummaryByResourceTypeResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComplianceSummariesByResourceType", "complianceSummariesByResourceType" ]
                (JD.list complianceSummaryByResourceTypeDecoder)
            )


getComplianceSummaryByResourceTypeResponseToString :
    GetComplianceSummaryByResourceTypeResponse
    -> String -- List (String, String)
getComplianceSummaryByResourceTypeResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "complianceSummariesByResourceType" "" -- val.complianceSummariesByResourceType
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getDiscoveredResourceCounts
-}
type alias GetDiscoveredResourceCountsResponse =
    { totalDiscoveredResources : Maybe Int
    , resourceCounts : Maybe (List ResourceCount)
    , nextToken : Maybe String
    }


getDiscoveredResourceCountsResponseDecoder : JD.Decoder GetDiscoveredResourceCountsResponse
getDiscoveredResourceCountsResponseDecoder =
    JD.succeed GetDiscoveredResourceCountsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "totalDiscoveredResources", "TotalDiscoveredResources" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceCounts", "ResourceCounts" ]
                (JD.list resourceCountDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextToken", "NextToken" ]
                JD.string
            )


getDiscoveredResourceCountsResponseToString :
    GetDiscoveredResourceCountsResponse
    -> String -- List (String, String)
getDiscoveredResourceCountsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "totalDiscoveredResources" "" -- val.totalDiscoveredResources
    --     |> Dict.insert
    --         "resourceCounts" "" -- val.resourceCounts
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getOrganizationConfigRuleDetailedStatus
-}
type alias GetOrganizationConfigRuleDetailedStatusResponse =
    { organizationConfigRuleDetailedStatus : Maybe (List MemberAccountStatus)
    , nextToken : Maybe String
    }


getOrganizationConfigRuleDetailedStatusResponseDecoder : JD.Decoder GetOrganizationConfigRuleDetailedStatusResponse
getOrganizationConfigRuleDetailedStatusResponseDecoder =
    JD.succeed GetOrganizationConfigRuleDetailedStatusResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OrganizationConfigRuleDetailedStatus", "organizationConfigRuleDetailedStatus" ]
                (JD.list memberAccountStatusDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


getOrganizationConfigRuleDetailedStatusResponseToString :
    GetOrganizationConfigRuleDetailedStatusResponse
    -> String -- List (String, String)
getOrganizationConfigRuleDetailedStatusResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "organizationConfigRuleDetailedStatus" "" -- val.organizationConfigRuleDetailedStatus
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getResourceConfigHistory
-}
type alias GetResourceConfigHistoryResponse =
    { configurationItems : Maybe (List ConfigurationItem)
    , nextToken : Maybe String
    }


getResourceConfigHistoryResponseDecoder : JD.Decoder GetResourceConfigHistoryResponse
getResourceConfigHistoryResponseDecoder =
    JD.succeed GetResourceConfigHistoryResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "configurationItems", "ConfigurationItems" ]
                (JD.list configurationItemDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextToken", "NextToken" ]
                JD.string
            )


getResourceConfigHistoryResponseToString :
    GetResourceConfigHistoryResponse
    -> String -- List (String, String)
getResourceConfigHistoryResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configurationItems" "" -- val.configurationItems
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-|

<p>The count of resources that are grouped by the group name.</p>

-}
type alias GroupedResourceCount =
    { groupName : String
    , resourceCount : Int
    }


groupedResourceCountDecoder : JD.Decoder GroupedResourceCount
groupedResourceCountDecoder =
    JD.succeed GroupedResourceCount
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "GroupName", "groupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ResourceCount", "resourceCount" ]
                JD.int
            )


groupedResourceCountToString :
    GroupedResourceCount
    -> String -- List (String, String)
groupedResourceCountToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "groupName" "" -- val.groupName
    --     |> Dict.insert
    --         "resourceCount" "" -- val.resourceCount
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listAggregateDiscoveredResources
-}
type alias ListAggregateDiscoveredResourcesResponse =
    { resourceIdentifiers : Maybe (List AggregateResourceIdentifier)
    , nextToken : Maybe String
    }


listAggregateDiscoveredResourcesResponseDecoder : JD.Decoder ListAggregateDiscoveredResourcesResponse
listAggregateDiscoveredResourcesResponseDecoder =
    JD.succeed ListAggregateDiscoveredResourcesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceIdentifiers", "resourceIdentifiers" ]
                (JD.list aggregateResourceIdentifierDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


listAggregateDiscoveredResourcesResponseToString :
    ListAggregateDiscoveredResourcesResponse
    -> String -- List (String, String)
listAggregateDiscoveredResourcesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "resourceIdentifiers" "" -- val.resourceIdentifiers
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listDiscoveredResources
-}
type alias ListDiscoveredResourcesResponse =
    { resourceIdentifiers : Maybe (List ResourceIdentifier)
    , nextToken : Maybe String
    }


listDiscoveredResourcesResponseDecoder : JD.Decoder ListDiscoveredResourcesResponse
listDiscoveredResourcesResponseDecoder =
    JD.succeed ListDiscoveredResourcesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceIdentifiers", "ResourceIdentifiers" ]
                (JD.list resourceIdentifierDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextToken", "NextToken" ]
                JD.string
            )


listDiscoveredResourcesResponseToString :
    ListDiscoveredResourcesResponse
    -> String -- List (String, String)
listDiscoveredResourcesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "resourceIdentifiers" "" -- val.resourceIdentifiers
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { tags : Maybe (List Tag)
    , nextToken : Maybe String
    }


listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JD.succeed ListTagsForResourceResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


listTagsForResourceResponseToString :
    ListTagsForResourceResponse
    -> String -- List (String, String)
listTagsForResourceResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "tags" "" -- val.tags
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| One of

  - `MaximumExecutionFrequency_One_Hour`
  - `MaximumExecutionFrequency_Three_Hours`
  - `MaximumExecutionFrequency_Six_Hours`
  - `MaximumExecutionFrequency_Twelve_Hours`
  - `MaximumExecutionFrequency_TwentyFour_Hours`

-}
type MaximumExecutionFrequency
    = MaximumExecutionFrequency_One_Hour
    | MaximumExecutionFrequency_Three_Hours
    | MaximumExecutionFrequency_Six_Hours
    | MaximumExecutionFrequency_Twelve_Hours
    | MaximumExecutionFrequency_TwentyFour_Hours


maximumExecutionFrequencyDecoder : JD.Decoder MaximumExecutionFrequency
maximumExecutionFrequencyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "One_Hour" ->
                        JD.succeed MaximumExecutionFrequency_One_Hour

                    "Three_Hours" ->
                        JD.succeed MaximumExecutionFrequency_Three_Hours

                    "Six_Hours" ->
                        JD.succeed MaximumExecutionFrequency_Six_Hours

                    "Twelve_Hours" ->
                        JD.succeed MaximumExecutionFrequency_Twelve_Hours

                    "TwentyFour_Hours" ->
                        JD.succeed MaximumExecutionFrequency_TwentyFour_Hours

                    _ ->
                        JD.fail "bad thing"
            )


maximumExecutionFrequencyToString : MaximumExecutionFrequency -> String
maximumExecutionFrequencyToString val =
    case val of
        MaximumExecutionFrequency_One_Hour ->
            "One_Hour"

        MaximumExecutionFrequency_Three_Hours ->
            "Three_Hours"

        MaximumExecutionFrequency_Six_Hours ->
            "Six_Hours"

        MaximumExecutionFrequency_Twelve_Hours ->
            "Twelve_Hours"

        MaximumExecutionFrequency_TwentyFour_Hours ->
            "TwentyFour_Hours"


{-| One of

  - `MemberAccountRuleStatus_CREATE_SUCCESSFUL`
  - `MemberAccountRuleStatus_CREATE_IN_PROGRESS`
  - `MemberAccountRuleStatus_CREATE_FAILED`
  - `MemberAccountRuleStatus_UPDATE_SUCCESSFUL`
  - `MemberAccountRuleStatus_UPDATE_FAILED`
  - `MemberAccountRuleStatus_UPDATE_IN_PROGRESS`
  - `MemberAccountRuleStatus_DELETE_SUCCESSFUL`
  - `MemberAccountRuleStatus_DELETE_FAILED`
  - `MemberAccountRuleStatus_DELETE_IN_PROGRESS`

-}
type MemberAccountRuleStatus
    = MemberAccountRuleStatus_CREATE_SUCCESSFUL
    | MemberAccountRuleStatus_CREATE_IN_PROGRESS
    | MemberAccountRuleStatus_CREATE_FAILED
    | MemberAccountRuleStatus_UPDATE_SUCCESSFUL
    | MemberAccountRuleStatus_UPDATE_FAILED
    | MemberAccountRuleStatus_UPDATE_IN_PROGRESS
    | MemberAccountRuleStatus_DELETE_SUCCESSFUL
    | MemberAccountRuleStatus_DELETE_FAILED
    | MemberAccountRuleStatus_DELETE_IN_PROGRESS


memberAccountRuleStatusDecoder : JD.Decoder MemberAccountRuleStatus
memberAccountRuleStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_SUCCESSFUL" ->
                        JD.succeed MemberAccountRuleStatus_CREATE_SUCCESSFUL

                    "CREATE_IN_PROGRESS" ->
                        JD.succeed MemberAccountRuleStatus_CREATE_IN_PROGRESS

                    "CREATE_FAILED" ->
                        JD.succeed MemberAccountRuleStatus_CREATE_FAILED

                    "UPDATE_SUCCESSFUL" ->
                        JD.succeed MemberAccountRuleStatus_UPDATE_SUCCESSFUL

                    "UPDATE_FAILED" ->
                        JD.succeed MemberAccountRuleStatus_UPDATE_FAILED

                    "UPDATE_IN_PROGRESS" ->
                        JD.succeed MemberAccountRuleStatus_UPDATE_IN_PROGRESS

                    "DELETE_SUCCESSFUL" ->
                        JD.succeed MemberAccountRuleStatus_DELETE_SUCCESSFUL

                    "DELETE_FAILED" ->
                        JD.succeed MemberAccountRuleStatus_DELETE_FAILED

                    "DELETE_IN_PROGRESS" ->
                        JD.succeed MemberAccountRuleStatus_DELETE_IN_PROGRESS

                    _ ->
                        JD.fail "bad thing"
            )


memberAccountRuleStatusToString : MemberAccountRuleStatus -> String
memberAccountRuleStatusToString val =
    case val of
        MemberAccountRuleStatus_CREATE_SUCCESSFUL ->
            "CREATE_SUCCESSFUL"

        MemberAccountRuleStatus_CREATE_IN_PROGRESS ->
            "CREATE_IN_PROGRESS"

        MemberAccountRuleStatus_CREATE_FAILED ->
            "CREATE_FAILED"

        MemberAccountRuleStatus_UPDATE_SUCCESSFUL ->
            "UPDATE_SUCCESSFUL"

        MemberAccountRuleStatus_UPDATE_FAILED ->
            "UPDATE_FAILED"

        MemberAccountRuleStatus_UPDATE_IN_PROGRESS ->
            "UPDATE_IN_PROGRESS"

        MemberAccountRuleStatus_DELETE_SUCCESSFUL ->
            "DELETE_SUCCESSFUL"

        MemberAccountRuleStatus_DELETE_FAILED ->
            "DELETE_FAILED"

        MemberAccountRuleStatus_DELETE_IN_PROGRESS ->
            "DELETE_IN_PROGRESS"


{-| undefined
-}
type alias MemberAccountStatus =
    { accountId : String
    , configRuleName : String
    , memberAccountRuleStatus : MemberAccountRuleStatus
    , errorCode : Maybe String
    , errorMessage : Maybe String
    , lastUpdateTime : Maybe Posix
    }


memberAccountStatusDecoder : JD.Decoder MemberAccountStatus
memberAccountStatusDecoder =
    JD.succeed MemberAccountStatus
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AccountId", "accountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ConfigRuleName", "configRuleName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "MemberAccountRuleStatus", "memberAccountRuleStatus" ]
                memberAccountRuleStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorCode", "errorCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorMessage", "errorMessage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastUpdateTime", "lastUpdateTime" ]
                JDX.datetime
            )


memberAccountStatusToString :
    MemberAccountStatus
    -> String -- List (String, String)
memberAccountStatusToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "accountId" "" -- val.accountId
    --     |> Dict.insert
    --         "configRuleName" "" -- val.configRuleName
    --     |> Dict.insert
    --         "memberAccountRuleStatus" "" -- val.memberAccountRuleStatus
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
    --     |> Dict.insert
    --         "lastUpdateTime" "" -- val.lastUpdateTime
    --     |> Dict.toList
    ""


{-| One of

  - `MessageType_ConfigurationItemChangeNotification`
  - `MessageType_ConfigurationSnapshotDeliveryCompleted`
  - `MessageType_ScheduledNotification`
  - `MessageType_OversizedConfigurationItemChangeNotification`

-}
type MessageType
    = MessageType_ConfigurationItemChangeNotification
    | MessageType_ConfigurationSnapshotDeliveryCompleted
    | MessageType_ScheduledNotification
    | MessageType_OversizedConfigurationItemChangeNotification


messageTypeDecoder : JD.Decoder MessageType
messageTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ConfigurationItemChangeNotification" ->
                        JD.succeed MessageType_ConfigurationItemChangeNotification

                    "ConfigurationSnapshotDeliveryCompleted" ->
                        JD.succeed MessageType_ConfigurationSnapshotDeliveryCompleted

                    "ScheduledNotification" ->
                        JD.succeed MessageType_ScheduledNotification

                    "OversizedConfigurationItemChangeNotification" ->
                        JD.succeed MessageType_OversizedConfigurationItemChangeNotification

                    _ ->
                        JD.fail "bad thing"
            )


messageTypeToString : MessageType -> String
messageTypeToString val =
    case val of
        MessageType_ConfigurationItemChangeNotification ->
            "ConfigurationItemChangeNotification"

        MessageType_ConfigurationSnapshotDeliveryCompleted ->
            "ConfigurationSnapshotDeliveryCompleted"

        MessageType_ScheduledNotification ->
            "ScheduledNotification"

        MessageType_OversizedConfigurationItemChangeNotification ->
            "OversizedConfigurationItemChangeNotification"


{-|

<p>This object contains regions to set up the aggregator and an IAM role to retrieve organization details.</p>

-}
type alias OrganizationAggregationSource =
    { roleArn : String
    , awsRegions : Maybe (List String)
    , allAwsRegions : Maybe Bool
    }


organizationAggregationSourceDecoder : JD.Decoder OrganizationAggregationSource
organizationAggregationSourceDecoder =
    JD.succeed OrganizationAggregationSource
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "RoleArn", "roleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AwsRegions", "awsRegions" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AllAwsRegions", "allAwsRegions" ]
                JD.bool
            )


organizationAggregationSourceToString :
    OrganizationAggregationSource
    -> String -- List (String, String)
organizationAggregationSourceToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
    --     |> Dict.insert
    --         "awsRegions" "" -- val.awsRegions
    --     |> Dict.insert
    --         "allAwsRegions" "" -- val.allAwsRegions
    --     |> Dict.toList
    ""


{-| undefined
-}
type alias OrganizationConfigRule =
    { organizationConfigRuleName : String
    , organizationConfigRuleArn : String
    , organizationManagedRuleMetadata : Maybe OrganizationManagedRuleMetadata
    , organizationCustomRuleMetadata : Maybe OrganizationCustomRuleMetadata
    , excludedAccounts : Maybe (List String)
    , lastUpdateTime : Maybe Posix
    }


organizationConfigRuleDecoder : JD.Decoder OrganizationConfigRule
organizationConfigRuleDecoder =
    JD.succeed OrganizationConfigRule
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OrganizationConfigRuleName", "organizationConfigRuleName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OrganizationConfigRuleArn", "organizationConfigRuleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OrganizationManagedRuleMetadata", "organizationManagedRuleMetadata" ]
                organizationManagedRuleMetadataDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OrganizationCustomRuleMetadata", "organizationCustomRuleMetadata" ]
                organizationCustomRuleMetadataDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExcludedAccounts", "excludedAccounts" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastUpdateTime", "lastUpdateTime" ]
                JDX.datetime
            )


organizationConfigRuleToString :
    OrganizationConfigRule
    -> String -- List (String, String)
organizationConfigRuleToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "organizationConfigRuleName" "" -- val.organizationConfigRuleName
    --     |> Dict.insert
    --         "organizationConfigRuleArn" "" -- val.organizationConfigRuleArn
    --     |> Dict.insert
    --         "organizationManagedRuleMetadata" "" -- val.organizationManagedRuleMetadata
    --     |> Dict.insert
    --         "organizationCustomRuleMetadata" "" -- val.organizationCustomRuleMetadata
    --     |> Dict.insert
    --         "excludedAccounts" "" -- val.excludedAccounts
    --     |> Dict.insert
    --         "lastUpdateTime" "" -- val.lastUpdateTime
    --     |> Dict.toList
    ""


{-| undefined
-}
type alias OrganizationConfigRuleStatus =
    { organizationConfigRuleName : String
    , organizationRuleStatus : OrganizationRuleStatus
    , errorCode : Maybe String
    , errorMessage : Maybe String
    , lastUpdateTime : Maybe Posix
    }


organizationConfigRuleStatusDecoder : JD.Decoder OrganizationConfigRuleStatus
organizationConfigRuleStatusDecoder =
    JD.succeed OrganizationConfigRuleStatus
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OrganizationConfigRuleName", "organizationConfigRuleName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OrganizationRuleStatus", "organizationRuleStatus" ]
                organizationRuleStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorCode", "errorCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorMessage", "errorMessage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastUpdateTime", "lastUpdateTime" ]
                JDX.datetime
            )


organizationConfigRuleStatusToString :
    OrganizationConfigRuleStatus
    -> String -- List (String, String)
organizationConfigRuleStatusToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "organizationConfigRuleName" "" -- val.organizationConfigRuleName
    --     |> Dict.insert
    --         "organizationRuleStatus" "" -- val.organizationRuleStatus
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
    --     |> Dict.insert
    --         "lastUpdateTime" "" -- val.lastUpdateTime
    --     |> Dict.toList
    ""


{-| One of

  - `OrganizationConfigRuleTriggerType_ConfigurationItemChangeNotification`
  - `OrganizationConfigRuleTriggerType_OversizedConfigurationItemChangeNotification`
  - `OrganizationConfigRuleTriggerType_ScheduledNotification`

-}
type OrganizationConfigRuleTriggerType
    = OrganizationConfigRuleTriggerType_ConfigurationItemChangeNotification
    | OrganizationConfigRuleTriggerType_OversizedConfigurationItemChangeNotification
    | OrganizationConfigRuleTriggerType_ScheduledNotification


organizationConfigRuleTriggerTypeDecoder : JD.Decoder OrganizationConfigRuleTriggerType
organizationConfigRuleTriggerTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ConfigurationItemChangeNotification" ->
                        JD.succeed OrganizationConfigRuleTriggerType_ConfigurationItemChangeNotification

                    "OversizedConfigurationItemChangeNotification" ->
                        JD.succeed OrganizationConfigRuleTriggerType_OversizedConfigurationItemChangeNotification

                    "ScheduledNotification" ->
                        JD.succeed OrganizationConfigRuleTriggerType_ScheduledNotification

                    _ ->
                        JD.fail "bad thing"
            )


organizationConfigRuleTriggerTypeToString : OrganizationConfigRuleTriggerType -> String
organizationConfigRuleTriggerTypeToString val =
    case val of
        OrganizationConfigRuleTriggerType_ConfigurationItemChangeNotification ->
            "ConfigurationItemChangeNotification"

        OrganizationConfigRuleTriggerType_OversizedConfigurationItemChangeNotification ->
            "OversizedConfigurationItemChangeNotification"

        OrganizationConfigRuleTriggerType_ScheduledNotification ->
            "ScheduledNotification"


{-| undefined
-}
type alias OrganizationCustomRuleMetadata =
    { description : Maybe String
    , lambdaFunctionArn : String
    , organizationConfigRuleTriggerTypes : List OrganizationConfigRuleTriggerType
    , inputParameters : Maybe String
    , maximumExecutionFrequency : Maybe MaximumExecutionFrequency
    , resourceTypesScope : Maybe (List String)
    , resourceIdScope : Maybe String
    , tagKeyScope : Maybe String
    , tagValueScope : Maybe String
    }


organizationCustomRuleMetadataDecoder : JD.Decoder OrganizationCustomRuleMetadata
organizationCustomRuleMetadataDecoder =
    JD.succeed OrganizationCustomRuleMetadata
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "LambdaFunctionArn", "lambdaFunctionArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OrganizationConfigRuleTriggerTypes", "organizationConfigRuleTriggerTypes" ]
                (JD.list organizationConfigRuleTriggerTypeDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InputParameters", "inputParameters" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaximumExecutionFrequency", "maximumExecutionFrequency" ]
                maximumExecutionFrequencyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceTypesScope", "resourceTypesScope" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceIdScope", "resourceIdScope" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TagKeyScope", "tagKeyScope" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TagValueScope", "tagValueScope" ]
                JD.string
            )


organizationCustomRuleMetadataToString :
    OrganizationCustomRuleMetadata
    -> String -- List (String, String)
organizationCustomRuleMetadataToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "description" "" -- val.description
    --     |> Dict.insert
    --         "lambdaFunctionArn" "" -- val.lambdaFunctionArn
    --     |> Dict.insert
    --         "organizationConfigRuleTriggerTypes" "" -- val.organizationConfigRuleTriggerTypes
    --     |> Dict.insert
    --         "inputParameters" "" -- val.inputParameters
    --     |> Dict.insert
    --         "maximumExecutionFrequency" "" -- val.maximumExecutionFrequency
    --     |> Dict.insert
    --         "resourceTypesScope" "" -- val.resourceTypesScope
    --     |> Dict.insert
    --         "resourceIdScope" "" -- val.resourceIdScope
    --     |> Dict.insert
    --         "tagKeyScope" "" -- val.tagKeyScope
    --     |> Dict.insert
    --         "tagValueScope" "" -- val.tagValueScope
    --     |> Dict.toList
    ""


{-| undefined
-}
type alias OrganizationManagedRuleMetadata =
    { description : Maybe String
    , ruleIdentifier : String
    , inputParameters : Maybe String
    , maximumExecutionFrequency : Maybe MaximumExecutionFrequency
    , resourceTypesScope : Maybe (List String)
    , resourceIdScope : Maybe String
    , tagKeyScope : Maybe String
    , tagValueScope : Maybe String
    }


organizationManagedRuleMetadataDecoder : JD.Decoder OrganizationManagedRuleMetadata
organizationManagedRuleMetadataDecoder =
    JD.succeed OrganizationManagedRuleMetadata
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "RuleIdentifier", "ruleIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InputParameters", "inputParameters" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaximumExecutionFrequency", "maximumExecutionFrequency" ]
                maximumExecutionFrequencyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceTypesScope", "resourceTypesScope" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceIdScope", "resourceIdScope" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TagKeyScope", "tagKeyScope" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TagValueScope", "tagValueScope" ]
                JD.string
            )


organizationManagedRuleMetadataToString :
    OrganizationManagedRuleMetadata
    -> String -- List (String, String)
organizationManagedRuleMetadataToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "description" "" -- val.description
    --     |> Dict.insert
    --         "ruleIdentifier" "" -- val.ruleIdentifier
    --     |> Dict.insert
    --         "inputParameters" "" -- val.inputParameters
    --     |> Dict.insert
    --         "maximumExecutionFrequency" "" -- val.maximumExecutionFrequency
    --     |> Dict.insert
    --         "resourceTypesScope" "" -- val.resourceTypesScope
    --     |> Dict.insert
    --         "resourceIdScope" "" -- val.resourceIdScope
    --     |> Dict.insert
    --         "tagKeyScope" "" -- val.tagKeyScope
    --     |> Dict.insert
    --         "tagValueScope" "" -- val.tagValueScope
    --     |> Dict.toList
    ""


{-| One of

  - `OrganizationRuleStatus_CREATE_SUCCESSFUL`
  - `OrganizationRuleStatus_CREATE_IN_PROGRESS`
  - `OrganizationRuleStatus_CREATE_FAILED`
  - `OrganizationRuleStatus_UPDATE_SUCCESSFUL`
  - `OrganizationRuleStatus_UPDATE_FAILED`
  - `OrganizationRuleStatus_UPDATE_IN_PROGRESS`
  - `OrganizationRuleStatus_DELETE_SUCCESSFUL`
  - `OrganizationRuleStatus_DELETE_FAILED`
  - `OrganizationRuleStatus_DELETE_IN_PROGRESS`

-}
type OrganizationRuleStatus
    = OrganizationRuleStatus_CREATE_SUCCESSFUL
    | OrganizationRuleStatus_CREATE_IN_PROGRESS
    | OrganizationRuleStatus_CREATE_FAILED
    | OrganizationRuleStatus_UPDATE_SUCCESSFUL
    | OrganizationRuleStatus_UPDATE_FAILED
    | OrganizationRuleStatus_UPDATE_IN_PROGRESS
    | OrganizationRuleStatus_DELETE_SUCCESSFUL
    | OrganizationRuleStatus_DELETE_FAILED
    | OrganizationRuleStatus_DELETE_IN_PROGRESS


organizationRuleStatusDecoder : JD.Decoder OrganizationRuleStatus
organizationRuleStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_SUCCESSFUL" ->
                        JD.succeed OrganizationRuleStatus_CREATE_SUCCESSFUL

                    "CREATE_IN_PROGRESS" ->
                        JD.succeed OrganizationRuleStatus_CREATE_IN_PROGRESS

                    "CREATE_FAILED" ->
                        JD.succeed OrganizationRuleStatus_CREATE_FAILED

                    "UPDATE_SUCCESSFUL" ->
                        JD.succeed OrganizationRuleStatus_UPDATE_SUCCESSFUL

                    "UPDATE_FAILED" ->
                        JD.succeed OrganizationRuleStatus_UPDATE_FAILED

                    "UPDATE_IN_PROGRESS" ->
                        JD.succeed OrganizationRuleStatus_UPDATE_IN_PROGRESS

                    "DELETE_SUCCESSFUL" ->
                        JD.succeed OrganizationRuleStatus_DELETE_SUCCESSFUL

                    "DELETE_FAILED" ->
                        JD.succeed OrganizationRuleStatus_DELETE_FAILED

                    "DELETE_IN_PROGRESS" ->
                        JD.succeed OrganizationRuleStatus_DELETE_IN_PROGRESS

                    _ ->
                        JD.fail "bad thing"
            )


organizationRuleStatusToString : OrganizationRuleStatus -> String
organizationRuleStatusToString val =
    case val of
        OrganizationRuleStatus_CREATE_SUCCESSFUL ->
            "CREATE_SUCCESSFUL"

        OrganizationRuleStatus_CREATE_IN_PROGRESS ->
            "CREATE_IN_PROGRESS"

        OrganizationRuleStatus_CREATE_FAILED ->
            "CREATE_FAILED"

        OrganizationRuleStatus_UPDATE_SUCCESSFUL ->
            "UPDATE_SUCCESSFUL"

        OrganizationRuleStatus_UPDATE_FAILED ->
            "UPDATE_FAILED"

        OrganizationRuleStatus_UPDATE_IN_PROGRESS ->
            "UPDATE_IN_PROGRESS"

        OrganizationRuleStatus_DELETE_SUCCESSFUL ->
            "DELETE_SUCCESSFUL"

        OrganizationRuleStatus_DELETE_FAILED ->
            "DELETE_FAILED"

        OrganizationRuleStatus_DELETE_IN_PROGRESS ->
            "DELETE_IN_PROGRESS"


{-| One of

  - `Owner_CUSTOM_LAMBDA`
  - `Owner_AWS`

-}
type Owner
    = Owner_CUSTOM_LAMBDA
    | Owner_AWS


ownerDecoder : JD.Decoder Owner
ownerDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CUSTOM_LAMBDA" ->
                        JD.succeed Owner_CUSTOM_LAMBDA

                    "AWS" ->
                        JD.succeed Owner_AWS

                    _ ->
                        JD.fail "bad thing"
            )


ownerToString : Owner -> String
ownerToString val =
    case val of
        Owner_CUSTOM_LAMBDA ->
            "CUSTOM_LAMBDA"

        Owner_AWS ->
            "AWS"


{-|

<p>An object that represents the account ID and region of an aggregator account that is requesting authorization but is not yet authorized.</p>

-}
type alias PendingAggregationRequest =
    { requesterAccountId : Maybe String
    , requesterAwsRegion : Maybe String
    }


pendingAggregationRequestDecoder : JD.Decoder PendingAggregationRequest
pendingAggregationRequestDecoder =
    JD.succeed PendingAggregationRequest
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RequesterAccountId", "requesterAccountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RequesterAwsRegion", "requesterAwsRegion" ]
                JD.string
            )


pendingAggregationRequestToString :
    PendingAggregationRequest
    -> String -- List (String, String)
pendingAggregationRequestToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "requesterAccountId" "" -- val.requesterAccountId
    --     |> Dict.insert
    --         "requesterAwsRegion" "" -- val.requesterAwsRegion
    --     |> Dict.toList
    ""


{-| Type of HTTP response from putAggregationAuthorization
-}
type alias PutAggregationAuthorizationResponse =
    { aggregationAuthorization : Maybe AggregationAuthorization
    }


putAggregationAuthorizationResponseDecoder : JD.Decoder PutAggregationAuthorizationResponse
putAggregationAuthorizationResponseDecoder =
    JD.succeed PutAggregationAuthorizationResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AggregationAuthorization", "aggregationAuthorization" ]
                aggregationAuthorizationDecoder
            )


putAggregationAuthorizationResponseToString :
    PutAggregationAuthorizationResponse
    -> String -- List (String, String)
putAggregationAuthorizationResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "aggregationAuthorization" "" -- val.aggregationAuthorization
    --     |> Dict.toList
    ""


{-| Type of HTTP response from putConfigurationAggregator
-}
type alias PutConfigurationAggregatorResponse =
    { configurationAggregator : Maybe ConfigurationAggregator
    }


putConfigurationAggregatorResponseDecoder : JD.Decoder PutConfigurationAggregatorResponse
putConfigurationAggregatorResponseDecoder =
    JD.succeed PutConfigurationAggregatorResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigurationAggregator", "configurationAggregator" ]
                configurationAggregatorDecoder
            )


putConfigurationAggregatorResponseToString :
    PutConfigurationAggregatorResponse
    -> String -- List (String, String)
putConfigurationAggregatorResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configurationAggregator" "" -- val.configurationAggregator
    --     |> Dict.toList
    ""


{-| Type of HTTP response from putEvaluations
-}
type alias PutEvaluationsResponse =
    { failedEvaluations : Maybe (List Evaluation)
    }


putEvaluationsResponseDecoder : JD.Decoder PutEvaluationsResponse
putEvaluationsResponseDecoder =
    JD.succeed PutEvaluationsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FailedEvaluations", "failedEvaluations" ]
                (JD.list evaluationDecoder)
            )


putEvaluationsResponseToString :
    PutEvaluationsResponse
    -> String -- List (String, String)
putEvaluationsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "failedEvaluations" "" -- val.failedEvaluations
    --     |> Dict.toList
    ""


{-| Type of HTTP response from putOrganizationConfigRule
-}
type alias PutOrganizationConfigRuleResponse =
    { organizationConfigRuleArn : Maybe String
    }


putOrganizationConfigRuleResponseDecoder : JD.Decoder PutOrganizationConfigRuleResponse
putOrganizationConfigRuleResponseDecoder =
    JD.succeed PutOrganizationConfigRuleResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OrganizationConfigRuleArn", "organizationConfigRuleArn" ]
                JD.string
            )


putOrganizationConfigRuleResponseToString :
    PutOrganizationConfigRuleResponse
    -> String -- List (String, String)
putOrganizationConfigRuleResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "organizationConfigRuleArn" "" -- val.organizationConfigRuleArn
    --     |> Dict.toList
    ""


{-| Type of HTTP response from putRemediationConfigurations
-}
type alias PutRemediationConfigurationsResponse =
    { failedBatches : Maybe (List FailedRemediationBatch)
    }


putRemediationConfigurationsResponseDecoder : JD.Decoder PutRemediationConfigurationsResponse
putRemediationConfigurationsResponseDecoder =
    JD.succeed PutRemediationConfigurationsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FailedBatches", "failedBatches" ]
                (JD.list failedRemediationBatchDecoder)
            )


putRemediationConfigurationsResponseToString :
    PutRemediationConfigurationsResponse
    -> String -- List (String, String)
putRemediationConfigurationsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "failedBatches" "" -- val.failedBatches
    --     |> Dict.toList
    ""


{-| Type of HTTP response from putRetentionConfiguration
-}
type alias PutRetentionConfigurationResponse =
    { retentionConfiguration : Maybe RetentionConfiguration
    }


putRetentionConfigurationResponseDecoder : JD.Decoder PutRetentionConfigurationResponse
putRetentionConfigurationResponseDecoder =
    JD.succeed PutRetentionConfigurationResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RetentionConfiguration", "retentionConfiguration" ]
                retentionConfigurationDecoder
            )


putRetentionConfigurationResponseToString :
    PutRetentionConfigurationResponse
    -> String -- List (String, String)
putRetentionConfigurationResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "retentionConfiguration" "" -- val.retentionConfiguration
    --     |> Dict.toList
    ""


{-|

<p>Details about the query.</p>

-}
type alias QueryInfo =
    { selectFields : Maybe (List FieldInfo)
    }


queryInfoDecoder : JD.Decoder QueryInfo
queryInfoDecoder =
    JD.succeed QueryInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SelectFields", "selectFields" ]
                (JD.list fieldInfoDecoder)
            )


queryInfoToString :
    QueryInfo
    -> String -- List (String, String)
queryInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "selectFields" "" -- val.selectFields
    --     |> Dict.toList
    ""


{-| One of

  - `RecorderStatus_Pending`
  - `RecorderStatus_Success`
  - `RecorderStatus_Failure`

-}
type RecorderStatus
    = RecorderStatus_Pending
    | RecorderStatus_Success
    | RecorderStatus_Failure


recorderStatusDecoder : JD.Decoder RecorderStatus
recorderStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed RecorderStatus_Pending

                    "Success" ->
                        JD.succeed RecorderStatus_Success

                    "Failure" ->
                        JD.succeed RecorderStatus_Failure

                    _ ->
                        JD.fail "bad thing"
            )


recorderStatusToString : RecorderStatus -> String
recorderStatusToString val =
    case val of
        RecorderStatus_Pending ->
            "Pending"

        RecorderStatus_Success ->
            "Success"

        RecorderStatus_Failure ->
            "Failure"


{-|

<p>Specifies the types of AWS resource for which AWS Config records configuration changes.</p> <p>In the recording group, you specify whether all supported types or specific types of resources are recorded.</p> <p>By default, AWS Config records configuration changes for all supported types of regional resources that AWS Config discovers in the region in which it is running. Regional resources are tied to a region and can be used only in that region. Examples of regional resources are EC2 instances and EBS volumes.</p> <p>You can also have AWS Config record configuration changes for supported types of global resources (for example, IAM resources). Global resources are not tied to an individual region and can be used in all regions.</p> <important> <p>The configuration details for any global resource are the same in all regions. If you customize AWS Config in multiple regions to record global resources, it will create multiple configuration items each time a global resource changes: one configuration item for each region. These configuration items will contain identical data. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources, unless you want the configuration items to be available in multiple regions.</p> </important> <p>If you don't want AWS Config to record all resources, you can specify which types of resources it will record with the <code>resourceTypes</code> parameter.</p> <p>For a list of supported resource types, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported Resource Types</a>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html">Selecting Which Resources AWS Config Records</a>.</p>

-}
type alias RecordingGroup =
    { allSupported : Maybe Bool
    , includeGlobalResourceTypes : Maybe Bool
    , resourceTypes : Maybe (List ResourceType)
    }


recordingGroupDecoder : JD.Decoder RecordingGroup
recordingGroupDecoder =
    JD.succeed RecordingGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "allSupported", "AllSupported" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "includeGlobalResourceTypes", "IncludeGlobalResourceTypes" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceTypes", "ResourceTypes" ]
                (JD.list resourceTypeDecoder)
            )


recordingGroupToString :
    RecordingGroup
    -> String -- List (String, String)
recordingGroupToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "allSupported" "" -- val.allSupported
    --     |> Dict.insert
    --         "includeGlobalResourceTypes" "" -- val.includeGlobalResourceTypes
    --     |> Dict.insert
    --         "resourceTypes" "" -- val.resourceTypes
    --     |> Dict.toList
    ""


{-|

<p>The relationship of the related resource to the main resource.</p>

-}
type alias Relationship =
    { resourceType : Maybe ResourceType
    , resourceId : Maybe String
    , resourceName : Maybe String
    , relationshipName : Maybe String
    }


relationshipDecoder : JD.Decoder Relationship
relationshipDecoder =
    JD.succeed Relationship
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceType", "ResourceType" ]
                resourceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceId", "ResourceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceName", "ResourceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "relationshipName", "RelationshipName" ]
                JD.string
            )


relationshipToString :
    Relationship
    -> String -- List (String, String)
relationshipToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
    --     |> Dict.insert
    --         "resourceName" "" -- val.resourceName
    --     |> Dict.insert
    --         "relationshipName" "" -- val.relationshipName
    --     |> Dict.toList
    ""


{-|

<p>An object that represents the details about the remediation configuration that includes the remediation action, parameters, and data to execute the action.</p>

-}
type alias RemediationConfiguration =
    { configRuleName : String
    , targetType : RemediationTargetType
    , targetId : String
    , targetVersion : Maybe String
    , parameters : Maybe (Dict String RemediationParameterValue)
    , resourceType : Maybe String
    }


remediationConfigurationDecoder : JD.Decoder RemediationConfiguration
remediationConfigurationDecoder =
    JD.succeed RemediationConfiguration
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ConfigRuleName", "configRuleName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "TargetType", "targetType" ]
                remediationTargetTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "TargetId", "targetId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetVersion", "targetVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Parameters", "parameters" ]
                (AWS.Core.Decode.dict remediationParameterValueDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceType", "resourceType" ]
                JD.string
            )


remediationConfigurationToString :
    RemediationConfiguration
    -> String -- List (String, String)
remediationConfigurationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "configRuleName" "" -- val.configRuleName
    --     |> Dict.insert
    --         "targetType" "" -- val.targetType
    --     |> Dict.insert
    --         "targetId" "" -- val.targetId
    --     |> Dict.insert
    --         "targetVersion" "" -- val.targetVersion
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
    --     |> Dict.toList
    ""


{-| One of

  - `RemediationExecutionState_QUEUED`
  - `RemediationExecutionState_IN_PROGRESS`
  - `RemediationExecutionState_SUCCEEDED`
  - `RemediationExecutionState_FAILED`

-}
type RemediationExecutionState
    = RemediationExecutionState_QUEUED
    | RemediationExecutionState_IN_PROGRESS
    | RemediationExecutionState_SUCCEEDED
    | RemediationExecutionState_FAILED


remediationExecutionStateDecoder : JD.Decoder RemediationExecutionState
remediationExecutionStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "QUEUED" ->
                        JD.succeed RemediationExecutionState_QUEUED

                    "IN_PROGRESS" ->
                        JD.succeed RemediationExecutionState_IN_PROGRESS

                    "SUCCEEDED" ->
                        JD.succeed RemediationExecutionState_SUCCEEDED

                    "FAILED" ->
                        JD.succeed RemediationExecutionState_FAILED

                    _ ->
                        JD.fail "bad thing"
            )


remediationExecutionStateToString : RemediationExecutionState -> String
remediationExecutionStateToString val =
    case val of
        RemediationExecutionState_QUEUED ->
            "QUEUED"

        RemediationExecutionState_IN_PROGRESS ->
            "IN_PROGRESS"

        RemediationExecutionState_SUCCEEDED ->
            "SUCCEEDED"

        RemediationExecutionState_FAILED ->
            "FAILED"


{-|

<p>Provides details of the current status of the invoked remediation action for that resource.</p>

-}
type alias RemediationExecutionStatus =
    { resourceKey : Maybe ResourceKey
    , state : Maybe RemediationExecutionState
    , stepDetails : Maybe (List RemediationExecutionStep)
    , invocationTime : Maybe Posix
    , lastUpdatedTime : Maybe Posix
    }


remediationExecutionStatusDecoder : JD.Decoder RemediationExecutionStatus
remediationExecutionStatusDecoder =
    JD.succeed RemediationExecutionStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceKey", "resourceKey" ]
                resourceKeyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "State", "state" ]
                remediationExecutionStateDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StepDetails", "stepDetails" ]
                (JD.list remediationExecutionStepDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InvocationTime", "invocationTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastUpdatedTime", "lastUpdatedTime" ]
                JDX.datetime
            )


remediationExecutionStatusToString :
    RemediationExecutionStatus
    -> String -- List (String, String)
remediationExecutionStatusToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "resourceKey" "" -- val.resourceKey
    --     |> Dict.insert
    --         "state" "" -- val.state
    --     |> Dict.insert
    --         "stepDetails" "" -- val.stepDetails
    --     |> Dict.insert
    --         "invocationTime" "" -- val.invocationTime
    --     |> Dict.insert
    --         "lastUpdatedTime" "" -- val.lastUpdatedTime
    --     |> Dict.toList
    ""


{-|

<p>Name of the step from the SSM document.</p>

-}
type alias RemediationExecutionStep =
    { name : Maybe String
    , state : Maybe RemediationExecutionStepState
    , errorMessage : Maybe String
    , startTime : Maybe Posix
    , stopTime : Maybe Posix
    }


remediationExecutionStepDecoder : JD.Decoder RemediationExecutionStep
remediationExecutionStepDecoder =
    JD.succeed RemediationExecutionStep
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "State", "state" ]
                remediationExecutionStepStateDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorMessage", "errorMessage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StartTime", "startTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StopTime", "stopTime" ]
                JDX.datetime
            )


remediationExecutionStepToString :
    RemediationExecutionStep
    -> String -- List (String, String)
remediationExecutionStepToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.insert
    --         "state" "" -- val.state
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
    --     |> Dict.insert
    --         "stopTime" "" -- val.stopTime
    --     |> Dict.toList
    ""


{-| One of

  - `RemediationExecutionStepState_SUCCEEDED`
  - `RemediationExecutionStepState_PENDING`
  - `RemediationExecutionStepState_FAILED`

-}
type RemediationExecutionStepState
    = RemediationExecutionStepState_SUCCEEDED
    | RemediationExecutionStepState_PENDING
    | RemediationExecutionStepState_FAILED


remediationExecutionStepStateDecoder : JD.Decoder RemediationExecutionStepState
remediationExecutionStepStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCEEDED" ->
                        JD.succeed RemediationExecutionStepState_SUCCEEDED

                    "PENDING" ->
                        JD.succeed RemediationExecutionStepState_PENDING

                    "FAILED" ->
                        JD.succeed RemediationExecutionStepState_FAILED

                    _ ->
                        JD.fail "bad thing"
            )


remediationExecutionStepStateToString : RemediationExecutionStepState -> String
remediationExecutionStepStateToString val =
    case val of
        RemediationExecutionStepState_SUCCEEDED ->
            "SUCCEEDED"

        RemediationExecutionStepState_PENDING ->
            "PENDING"

        RemediationExecutionStepState_FAILED ->
            "FAILED"


{-|

<p>The value is either a dynamic (resource) value or a static value. You must select either a dynamic value or a static value.</p>

-}
type alias RemediationParameterValue =
    { resourceValue : Maybe ResourceValue
    , staticValue : Maybe StaticValue
    }


remediationParameterValueDecoder : JD.Decoder RemediationParameterValue
remediationParameterValueDecoder =
    JD.succeed RemediationParameterValue
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceValue", "resourceValue" ]
                resourceValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StaticValue", "staticValue" ]
                staticValueDecoder
            )


remediationParameterValueToString :
    RemediationParameterValue
    -> String -- List (String, String)
remediationParameterValueToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "resourceValue" "" -- val.resourceValue
    --     |> Dict.insert
    --         "staticValue" "" -- val.staticValue
    --     |> Dict.toList
    ""


{-| One of

  - `RemediationTargetType_SSM_DOCUMENT`

-}
type RemediationTargetType
    = RemediationTargetType_SSM_DOCUMENT


remediationTargetTypeDecoder : JD.Decoder RemediationTargetType
remediationTargetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SSM_DOCUMENT" ->
                        JD.succeed RemediationTargetType_SSM_DOCUMENT

                    _ ->
                        JD.fail "bad thing"
            )


remediationTargetTypeToString : RemediationTargetType -> String
remediationTargetTypeToString val =
    case val of
        RemediationTargetType_SSM_DOCUMENT ->
            "SSM_DOCUMENT"


{-|

<p>An object that contains the resource type and the number of resources.</p>

-}
type alias ResourceCount =
    { resourceType : Maybe ResourceType
    , count : Maybe Int
    }


resourceCountDecoder : JD.Decoder ResourceCount
resourceCountDecoder =
    JD.succeed ResourceCount
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceType", "ResourceType" ]
                resourceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "count", "Count" ]
                JD.int
            )


resourceCountToString :
    ResourceCount
    -> String -- List (String, String)
resourceCountToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
    --     |> Dict.insert
    --         "count" "" -- val.count
    --     |> Dict.toList
    ""


{-|

<p>Filters the resource count based on account ID, region, and resource type.</p>

-}
type alias ResourceCountFilters =
    { resourceType : Maybe ResourceType
    , accountId : Maybe String
    , region : Maybe String
    }


resourceCountFiltersDecoder : JD.Decoder ResourceCountFilters
resourceCountFiltersDecoder =
    JD.succeed ResourceCountFilters
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceType", "resourceType" ]
                resourceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountId", "accountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Region", "region" ]
                JD.string
            )


resourceCountFiltersToString :
    ResourceCountFilters
    -> String -- List (String, String)
resourceCountFiltersToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
    --     |> Dict.insert
    --         "accountId" "" -- val.accountId
    --     |> Dict.insert
    --         "region" "" -- val.region
    --     |> Dict.toList
    ""


{-| One of

  - `ResourceCountGroupKey_RESOURCE_TYPE`
  - `ResourceCountGroupKey_ACCOUNT_ID`
  - `ResourceCountGroupKey_AWS_REGION`

-}
type ResourceCountGroupKey
    = ResourceCountGroupKey_RESOURCE_TYPE
    | ResourceCountGroupKey_ACCOUNT_ID
    | ResourceCountGroupKey_AWS_REGION


resourceCountGroupKeyDecoder : JD.Decoder ResourceCountGroupKey
resourceCountGroupKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RESOURCE_TYPE" ->
                        JD.succeed ResourceCountGroupKey_RESOURCE_TYPE

                    "ACCOUNT_ID" ->
                        JD.succeed ResourceCountGroupKey_ACCOUNT_ID

                    "AWS_REGION" ->
                        JD.succeed ResourceCountGroupKey_AWS_REGION

                    _ ->
                        JD.fail "bad thing"
            )


resourceCountGroupKeyToString : ResourceCountGroupKey -> String
resourceCountGroupKeyToString val =
    case val of
        ResourceCountGroupKey_RESOURCE_TYPE ->
            "RESOURCE_TYPE"

        ResourceCountGroupKey_ACCOUNT_ID ->
            "ACCOUNT_ID"

        ResourceCountGroupKey_AWS_REGION ->
            "AWS_REGION"


{-|

<p>Filters the results by resource account ID, region, resource ID, and resource name.</p>

-}
type alias ResourceFilters =
    { accountId : Maybe String
    , resourceId : Maybe String
    , resourceName : Maybe String
    , region : Maybe String
    }


resourceFiltersDecoder : JD.Decoder ResourceFilters
resourceFiltersDecoder =
    JD.succeed ResourceFilters
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountId", "accountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceId", "resourceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceName", "resourceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Region", "region" ]
                JD.string
            )


resourceFiltersToString :
    ResourceFilters
    -> String -- List (String, String)
resourceFiltersToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "accountId" "" -- val.accountId
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
    --     |> Dict.insert
    --         "resourceName" "" -- val.resourceName
    --     |> Dict.insert
    --         "region" "" -- val.region
    --     |> Dict.toList
    ""


{-|

<p>The details that identify a resource that is discovered by AWS Config, including the resource type, ID, and (if available) the custom resource name.</p>

-}
type alias ResourceIdentifier =
    { resourceType : Maybe ResourceType
    , resourceId : Maybe String
    , resourceName : Maybe String
    , resourceDeletionTime : Maybe Posix
    }


resourceIdentifierDecoder : JD.Decoder ResourceIdentifier
resourceIdentifierDecoder =
    JD.succeed ResourceIdentifier
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceType", "ResourceType" ]
                resourceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceId", "ResourceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceName", "ResourceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "resourceDeletionTime", "ResourceDeletionTime" ]
                JDX.datetime
            )


resourceIdentifierToString :
    ResourceIdentifier
    -> String -- List (String, String)
resourceIdentifierToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
    --     |> Dict.insert
    --         "resourceName" "" -- val.resourceName
    --     |> Dict.insert
    --         "resourceDeletionTime" "" -- val.resourceDeletionTime
    --     |> Dict.toList
    ""


{-|

<p>The details that identify a resource within AWS Config, including the resource type and resource ID.</p>

-}
type alias ResourceKey =
    { resourceType : ResourceType
    , resourceId : String
    }


resourceKeyDecoder : JD.Decoder ResourceKey
resourceKeyDecoder =
    JD.succeed ResourceKey
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "resourceType", "ResourceType" ]
                resourceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "resourceId", "ResourceId" ]
                JD.string
            )


resourceKeyToString :
    ResourceKey
    -> String -- List (String, String)
resourceKeyToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
    --     |> Dict.toList
    ""


{-| One of

  - `ResourceType_AWS::EC2::CustomerGateway`
  - `ResourceType_AWS::EC2::EIP`
  - `ResourceType_AWS::EC2::Host`
  - `ResourceType_AWS::EC2::Instance`
  - `ResourceType_AWS::EC2::InternetGateway`
  - `ResourceType_AWS::EC2::NetworkAcl`
  - `ResourceType_AWS::EC2::NetworkInterface`
  - `ResourceType_AWS::EC2::RouteTable`
  - `ResourceType_AWS::EC2::SecurityGroup`
  - `ResourceType_AWS::EC2::Subnet`
  - `ResourceType_AWS::CloudTrail::Trail`
  - `ResourceType_AWS::EC2::Volume`
  - `ResourceType_AWS::EC2::VPC`
  - `ResourceType_AWS::EC2::VPNConnection`
  - `ResourceType_AWS::EC2::VPNGateway`
  - `ResourceType_AWS::IAM::Group`
  - `ResourceType_AWS::IAM::Policy`
  - `ResourceType_AWS::IAM::Role`
  - `ResourceType_AWS::IAM::User`
  - `ResourceType_AWS::ACM::Certificate`
  - `ResourceType_AWS::RDS::DBInstance`
  - `ResourceType_AWS::RDS::DBSubnetGroup`
  - `ResourceType_AWS::RDS::DBSecurityGroup`
  - `ResourceType_AWS::RDS::DBSnapshot`
  - `ResourceType_AWS::RDS::EventSubscription`
  - `ResourceType_AWS::ElasticLoadBalancingV2::LoadBalancer`
  - `ResourceType_AWS::S3::Bucket`
  - `ResourceType_AWS::SSM::ManagedInstanceInventory`
  - `ResourceType_AWS::Redshift::Cluster`
  - `ResourceType_AWS::Redshift::ClusterSnapshot`
  - `ResourceType_AWS::Redshift::ClusterParameterGroup`
  - `ResourceType_AWS::Redshift::ClusterSecurityGroup`
  - `ResourceType_AWS::Redshift::ClusterSubnetGroup`
  - `ResourceType_AWS::Redshift::EventSubscription`
  - `ResourceType_AWS::CloudWatch::Alarm`
  - `ResourceType_AWS::CloudFormation::Stack`
  - `ResourceType_AWS::DynamoDB::Table`
  - `ResourceType_AWS::AutoScaling::AutoScalingGroup`
  - `ResourceType_AWS::AutoScaling::LaunchConfiguration`
  - `ResourceType_AWS::AutoScaling::ScalingPolicy`
  - `ResourceType_AWS::AutoScaling::ScheduledAction`
  - `ResourceType_AWS::CodeBuild::Project`
  - `ResourceType_AWS::WAF::RateBasedRule`
  - `ResourceType_AWS::WAF::Rule`
  - `ResourceType_AWS::WAF::WebACL`
  - `ResourceType_AWS::WAFRegional::RateBasedRule`
  - `ResourceType_AWS::WAFRegional::Rule`
  - `ResourceType_AWS::WAFRegional::WebACL`
  - `ResourceType_AWS::CloudFront::Distribution`
  - `ResourceType_AWS::CloudFront::StreamingDistribution`
  - `ResourceType_AWS::WAF::RuleGroup`
  - `ResourceType_AWS::WAFRegional::RuleGroup`
  - `ResourceType_AWS::Lambda::Function`
  - `ResourceType_AWS::ElasticBeanstalk::Application`
  - `ResourceType_AWS::ElasticBeanstalk::ApplicationVersion`
  - `ResourceType_AWS::ElasticBeanstalk::Environment`
  - `ResourceType_AWS::ElasticLoadBalancing::LoadBalancer`
  - `ResourceType_AWS::XRay::EncryptionConfig`
  - `ResourceType_AWS::SSM::AssociationCompliance`
  - `ResourceType_AWS::SSM::PatchCompliance`
  - `ResourceType_AWS::Shield::Protection`
  - `ResourceType_AWS::ShieldRegional::Protection`
  - `ResourceType_AWS::Config::ResourceCompliance`
  - `ResourceType_AWS::CodePipeline::Pipeline`

-}
type ResourceType
    = ResourceType_AWS_EC2_CustomerGateway
    | ResourceType_AWS_EC2_EIP
    | ResourceType_AWS_EC2_Host
    | ResourceType_AWS_EC2_Instance
    | ResourceType_AWS_EC2_InternetGateway
    | ResourceType_AWS_EC2_NetworkAcl
    | ResourceType_AWS_EC2_NetworkInterface
    | ResourceType_AWS_EC2_RouteTable
    | ResourceType_AWS_EC2_SecurityGroup
    | ResourceType_AWS_EC2_Subnet
    | ResourceType_AWS_CloudTrail_Trail
    | ResourceType_AWS_EC2_Volume
    | ResourceType_AWS_EC2_VPC
    | ResourceType_AWS_EC2_VPNConnection
    | ResourceType_AWS_EC2_VPNGateway
    | ResourceType_AWS_IAM_Group
    | ResourceType_AWS_IAM_Policy
    | ResourceType_AWS_IAM_Role
    | ResourceType_AWS_IAM_User
    | ResourceType_AWS_ACM_Certificate
    | ResourceType_AWS_RDS_DBInstance
    | ResourceType_AWS_RDS_DBSubnetGroup
    | ResourceType_AWS_RDS_DBSecurityGroup
    | ResourceType_AWS_RDS_DBSnapshot
    | ResourceType_AWS_RDS_EventSubscription
    | ResourceType_AWS_ElasticLoadBalancingV2_LoadBalancer
    | ResourceType_AWS_S3_Bucket
    | ResourceType_AWS_SSM_ManagedInstanceInventory
    | ResourceType_AWS_Redshift_Cluster
    | ResourceType_AWS_Redshift_ClusterSnapshot
    | ResourceType_AWS_Redshift_ClusterParameterGroup
    | ResourceType_AWS_Redshift_ClusterSecurityGroup
    | ResourceType_AWS_Redshift_ClusterSubnetGroup
    | ResourceType_AWS_Redshift_EventSubscription
    | ResourceType_AWS_CloudWatch_Alarm
    | ResourceType_AWS_CloudFormation_Stack
    | ResourceType_AWS_DynamoDB_Table
    | ResourceType_AWS_AutoScaling_AutoScalingGroup
    | ResourceType_AWS_AutoScaling_LaunchConfiguration
    | ResourceType_AWS_AutoScaling_ScalingPolicy
    | ResourceType_AWS_AutoScaling_ScheduledAction
    | ResourceType_AWS_CodeBuild_Project
    | ResourceType_AWS_WAF_RateBasedRule
    | ResourceType_AWS_WAF_Rule
    | ResourceType_AWS_WAF_WebACL
    | ResourceType_AWS_WAFRegional_RateBasedRule
    | ResourceType_AWS_WAFRegional_Rule
    | ResourceType_AWS_WAFRegional_WebACL
    | ResourceType_AWS_CloudFront_Distribution
    | ResourceType_AWS_CloudFront_StreamingDistribution
    | ResourceType_AWS_WAF_RuleGroup
    | ResourceType_AWS_WAFRegional_RuleGroup
    | ResourceType_AWS_Lambda_Function
    | ResourceType_AWS_ElasticBeanstalk_Application
    | ResourceType_AWS_ElasticBeanstalk_ApplicationVersion
    | ResourceType_AWS_ElasticBeanstalk_Environment
    | ResourceType_AWS_ElasticLoadBalancing_LoadBalancer
    | ResourceType_AWS_XRay_EncryptionConfig
    | ResourceType_AWS_SSM_AssociationCompliance
    | ResourceType_AWS_SSM_PatchCompliance
    | ResourceType_AWS_Shield_Protection
    | ResourceType_AWS_ShieldRegional_Protection
    | ResourceType_AWS_Config_ResourceCompliance
    | ResourceType_AWS_CodePipeline_Pipeline


resourceTypeDecoder : JD.Decoder ResourceType
resourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AWS_EC2_CustomerGateway" ->
                        JD.succeed ResourceType_AWS_EC2_CustomerGateway

                    "AWS_EC2_EIP" ->
                        JD.succeed ResourceType_AWS_EC2_EIP

                    "AWS_EC2_Host" ->
                        JD.succeed ResourceType_AWS_EC2_Host

                    "AWS_EC2_Instance" ->
                        JD.succeed ResourceType_AWS_EC2_Instance

                    "AWS_EC2_InternetGateway" ->
                        JD.succeed ResourceType_AWS_EC2_InternetGateway

                    "AWS_EC2_NetworkAcl" ->
                        JD.succeed ResourceType_AWS_EC2_NetworkAcl

                    "AWS_EC2_NetworkInterface" ->
                        JD.succeed ResourceType_AWS_EC2_NetworkInterface

                    "AWS_EC2_RouteTable" ->
                        JD.succeed ResourceType_AWS_EC2_RouteTable

                    "AWS_EC2_SecurityGroup" ->
                        JD.succeed ResourceType_AWS_EC2_SecurityGroup

                    "AWS_EC2_Subnet" ->
                        JD.succeed ResourceType_AWS_EC2_Subnet

                    "AWS_CloudTrail_Trail" ->
                        JD.succeed ResourceType_AWS_CloudTrail_Trail

                    "AWS_EC2_Volume" ->
                        JD.succeed ResourceType_AWS_EC2_Volume

                    "AWS_EC2_VPC" ->
                        JD.succeed ResourceType_AWS_EC2_VPC

                    "AWS_EC2_VPNConnection" ->
                        JD.succeed ResourceType_AWS_EC2_VPNConnection

                    "AWS_EC2_VPNGateway" ->
                        JD.succeed ResourceType_AWS_EC2_VPNGateway

                    "AWS_IAM_Group" ->
                        JD.succeed ResourceType_AWS_IAM_Group

                    "AWS_IAM_Policy" ->
                        JD.succeed ResourceType_AWS_IAM_Policy

                    "AWS_IAM_Role" ->
                        JD.succeed ResourceType_AWS_IAM_Role

                    "AWS_IAM_User" ->
                        JD.succeed ResourceType_AWS_IAM_User

                    "AWS_ACM_Certificate" ->
                        JD.succeed ResourceType_AWS_ACM_Certificate

                    "AWS_RDS_DBInstance" ->
                        JD.succeed ResourceType_AWS_RDS_DBInstance

                    "AWS_RDS_DBSubnetGroup" ->
                        JD.succeed ResourceType_AWS_RDS_DBSubnetGroup

                    "AWS_RDS_DBSecurityGroup" ->
                        JD.succeed ResourceType_AWS_RDS_DBSecurityGroup

                    "AWS_RDS_DBSnapshot" ->
                        JD.succeed ResourceType_AWS_RDS_DBSnapshot

                    "AWS_RDS_EventSubscription" ->
                        JD.succeed ResourceType_AWS_RDS_EventSubscription

                    "AWS_ElasticLoadBalancingV2_LoadBalancer" ->
                        JD.succeed ResourceType_AWS_ElasticLoadBalancingV2_LoadBalancer

                    "AWS_S3_Bucket" ->
                        JD.succeed ResourceType_AWS_S3_Bucket

                    "AWS_SSM_ManagedInstanceInventory" ->
                        JD.succeed ResourceType_AWS_SSM_ManagedInstanceInventory

                    "AWS_Redshift_Cluster" ->
                        JD.succeed ResourceType_AWS_Redshift_Cluster

                    "AWS_Redshift_ClusterSnapshot" ->
                        JD.succeed ResourceType_AWS_Redshift_ClusterSnapshot

                    "AWS_Redshift_ClusterParameterGroup" ->
                        JD.succeed ResourceType_AWS_Redshift_ClusterParameterGroup

                    "AWS_Redshift_ClusterSecurityGroup" ->
                        JD.succeed ResourceType_AWS_Redshift_ClusterSecurityGroup

                    "AWS_Redshift_ClusterSubnetGroup" ->
                        JD.succeed ResourceType_AWS_Redshift_ClusterSubnetGroup

                    "AWS_Redshift_EventSubscription" ->
                        JD.succeed ResourceType_AWS_Redshift_EventSubscription

                    "AWS_CloudWatch_Alarm" ->
                        JD.succeed ResourceType_AWS_CloudWatch_Alarm

                    "AWS_CloudFormation_Stack" ->
                        JD.succeed ResourceType_AWS_CloudFormation_Stack

                    "AWS_DynamoDB_Table" ->
                        JD.succeed ResourceType_AWS_DynamoDB_Table

                    "AWS_AutoScaling_AutoScalingGroup" ->
                        JD.succeed ResourceType_AWS_AutoScaling_AutoScalingGroup

                    "AWS_AutoScaling_LaunchConfiguration" ->
                        JD.succeed ResourceType_AWS_AutoScaling_LaunchConfiguration

                    "AWS_AutoScaling_ScalingPolicy" ->
                        JD.succeed ResourceType_AWS_AutoScaling_ScalingPolicy

                    "AWS_AutoScaling_ScheduledAction" ->
                        JD.succeed ResourceType_AWS_AutoScaling_ScheduledAction

                    "AWS_CodeBuild_Project" ->
                        JD.succeed ResourceType_AWS_CodeBuild_Project

                    "AWS_WAF_RateBasedRule" ->
                        JD.succeed ResourceType_AWS_WAF_RateBasedRule

                    "AWS_WAF_Rule" ->
                        JD.succeed ResourceType_AWS_WAF_Rule

                    "AWS_WAF_WebACL" ->
                        JD.succeed ResourceType_AWS_WAF_WebACL

                    "AWS_WAFRegional_RateBasedRule" ->
                        JD.succeed ResourceType_AWS_WAFRegional_RateBasedRule

                    "AWS_WAFRegional_Rule" ->
                        JD.succeed ResourceType_AWS_WAFRegional_Rule

                    "AWS_WAFRegional_WebACL" ->
                        JD.succeed ResourceType_AWS_WAFRegional_WebACL

                    "AWS_CloudFront_Distribution" ->
                        JD.succeed ResourceType_AWS_CloudFront_Distribution

                    "AWS_CloudFront_StreamingDistribution" ->
                        JD.succeed ResourceType_AWS_CloudFront_StreamingDistribution

                    "AWS_WAF_RuleGroup" ->
                        JD.succeed ResourceType_AWS_WAF_RuleGroup

                    "AWS_WAFRegional_RuleGroup" ->
                        JD.succeed ResourceType_AWS_WAFRegional_RuleGroup

                    "AWS_Lambda_Function" ->
                        JD.succeed ResourceType_AWS_Lambda_Function

                    "AWS_ElasticBeanstalk_Application" ->
                        JD.succeed ResourceType_AWS_ElasticBeanstalk_Application

                    "AWS_ElasticBeanstalk_ApplicationVersion" ->
                        JD.succeed ResourceType_AWS_ElasticBeanstalk_ApplicationVersion

                    "AWS_ElasticBeanstalk_Environment" ->
                        JD.succeed ResourceType_AWS_ElasticBeanstalk_Environment

                    "AWS_ElasticLoadBalancing_LoadBalancer" ->
                        JD.succeed ResourceType_AWS_ElasticLoadBalancing_LoadBalancer

                    "AWS_XRay_EncryptionConfig" ->
                        JD.succeed ResourceType_AWS_XRay_EncryptionConfig

                    "AWS_SSM_AssociationCompliance" ->
                        JD.succeed ResourceType_AWS_SSM_AssociationCompliance

                    "AWS_SSM_PatchCompliance" ->
                        JD.succeed ResourceType_AWS_SSM_PatchCompliance

                    "AWS_Shield_Protection" ->
                        JD.succeed ResourceType_AWS_Shield_Protection

                    "AWS_ShieldRegional_Protection" ->
                        JD.succeed ResourceType_AWS_ShieldRegional_Protection

                    "AWS_Config_ResourceCompliance" ->
                        JD.succeed ResourceType_AWS_Config_ResourceCompliance

                    "AWS_CodePipeline_Pipeline" ->
                        JD.succeed ResourceType_AWS_CodePipeline_Pipeline

                    _ ->
                        JD.fail "bad thing"
            )


resourceTypeToString : ResourceType -> String
resourceTypeToString val =
    case val of
        ResourceType_AWS_EC2_CustomerGateway ->
            "AWS_EC2_CustomerGateway"

        ResourceType_AWS_EC2_EIP ->
            "AWS_EC2_EIP"

        ResourceType_AWS_EC2_Host ->
            "AWS_EC2_Host"

        ResourceType_AWS_EC2_Instance ->
            "AWS_EC2_Instance"

        ResourceType_AWS_EC2_InternetGateway ->
            "AWS_EC2_InternetGateway"

        ResourceType_AWS_EC2_NetworkAcl ->
            "AWS_EC2_NetworkAcl"

        ResourceType_AWS_EC2_NetworkInterface ->
            "AWS_EC2_NetworkInterface"

        ResourceType_AWS_EC2_RouteTable ->
            "AWS_EC2_RouteTable"

        ResourceType_AWS_EC2_SecurityGroup ->
            "AWS_EC2_SecurityGroup"

        ResourceType_AWS_EC2_Subnet ->
            "AWS_EC2_Subnet"

        ResourceType_AWS_CloudTrail_Trail ->
            "AWS_CloudTrail_Trail"

        ResourceType_AWS_EC2_Volume ->
            "AWS_EC2_Volume"

        ResourceType_AWS_EC2_VPC ->
            "AWS_EC2_VPC"

        ResourceType_AWS_EC2_VPNConnection ->
            "AWS_EC2_VPNConnection"

        ResourceType_AWS_EC2_VPNGateway ->
            "AWS_EC2_VPNGateway"

        ResourceType_AWS_IAM_Group ->
            "AWS_IAM_Group"

        ResourceType_AWS_IAM_Policy ->
            "AWS_IAM_Policy"

        ResourceType_AWS_IAM_Role ->
            "AWS_IAM_Role"

        ResourceType_AWS_IAM_User ->
            "AWS_IAM_User"

        ResourceType_AWS_ACM_Certificate ->
            "AWS_ACM_Certificate"

        ResourceType_AWS_RDS_DBInstance ->
            "AWS_RDS_DBInstance"

        ResourceType_AWS_RDS_DBSubnetGroup ->
            "AWS_RDS_DBSubnetGroup"

        ResourceType_AWS_RDS_DBSecurityGroup ->
            "AWS_RDS_DBSecurityGroup"

        ResourceType_AWS_RDS_DBSnapshot ->
            "AWS_RDS_DBSnapshot"

        ResourceType_AWS_RDS_EventSubscription ->
            "AWS_RDS_EventSubscription"

        ResourceType_AWS_ElasticLoadBalancingV2_LoadBalancer ->
            "AWS_ElasticLoadBalancingV2_LoadBalancer"

        ResourceType_AWS_S3_Bucket ->
            "AWS_S3_Bucket"

        ResourceType_AWS_SSM_ManagedInstanceInventory ->
            "AWS_SSM_ManagedInstanceInventory"

        ResourceType_AWS_Redshift_Cluster ->
            "AWS_Redshift_Cluster"

        ResourceType_AWS_Redshift_ClusterSnapshot ->
            "AWS_Redshift_ClusterSnapshot"

        ResourceType_AWS_Redshift_ClusterParameterGroup ->
            "AWS_Redshift_ClusterParameterGroup"

        ResourceType_AWS_Redshift_ClusterSecurityGroup ->
            "AWS_Redshift_ClusterSecurityGroup"

        ResourceType_AWS_Redshift_ClusterSubnetGroup ->
            "AWS_Redshift_ClusterSubnetGroup"

        ResourceType_AWS_Redshift_EventSubscription ->
            "AWS_Redshift_EventSubscription"

        ResourceType_AWS_CloudWatch_Alarm ->
            "AWS_CloudWatch_Alarm"

        ResourceType_AWS_CloudFormation_Stack ->
            "AWS_CloudFormation_Stack"

        ResourceType_AWS_DynamoDB_Table ->
            "AWS_DynamoDB_Table"

        ResourceType_AWS_AutoScaling_AutoScalingGroup ->
            "AWS_AutoScaling_AutoScalingGroup"

        ResourceType_AWS_AutoScaling_LaunchConfiguration ->
            "AWS_AutoScaling_LaunchConfiguration"

        ResourceType_AWS_AutoScaling_ScalingPolicy ->
            "AWS_AutoScaling_ScalingPolicy"

        ResourceType_AWS_AutoScaling_ScheduledAction ->
            "AWS_AutoScaling_ScheduledAction"

        ResourceType_AWS_CodeBuild_Project ->
            "AWS_CodeBuild_Project"

        ResourceType_AWS_WAF_RateBasedRule ->
            "AWS_WAF_RateBasedRule"

        ResourceType_AWS_WAF_Rule ->
            "AWS_WAF_Rule"

        ResourceType_AWS_WAF_WebACL ->
            "AWS_WAF_WebACL"

        ResourceType_AWS_WAFRegional_RateBasedRule ->
            "AWS_WAFRegional_RateBasedRule"

        ResourceType_AWS_WAFRegional_Rule ->
            "AWS_WAFRegional_Rule"

        ResourceType_AWS_WAFRegional_WebACL ->
            "AWS_WAFRegional_WebACL"

        ResourceType_AWS_CloudFront_Distribution ->
            "AWS_CloudFront_Distribution"

        ResourceType_AWS_CloudFront_StreamingDistribution ->
            "AWS_CloudFront_StreamingDistribution"

        ResourceType_AWS_WAF_RuleGroup ->
            "AWS_WAF_RuleGroup"

        ResourceType_AWS_WAFRegional_RuleGroup ->
            "AWS_WAFRegional_RuleGroup"

        ResourceType_AWS_Lambda_Function ->
            "AWS_Lambda_Function"

        ResourceType_AWS_ElasticBeanstalk_Application ->
            "AWS_ElasticBeanstalk_Application"

        ResourceType_AWS_ElasticBeanstalk_ApplicationVersion ->
            "AWS_ElasticBeanstalk_ApplicationVersion"

        ResourceType_AWS_ElasticBeanstalk_Environment ->
            "AWS_ElasticBeanstalk_Environment"

        ResourceType_AWS_ElasticLoadBalancing_LoadBalancer ->
            "AWS_ElasticLoadBalancing_LoadBalancer"

        ResourceType_AWS_XRay_EncryptionConfig ->
            "AWS_XRay_EncryptionConfig"

        ResourceType_AWS_SSM_AssociationCompliance ->
            "AWS_SSM_AssociationCompliance"

        ResourceType_AWS_SSM_PatchCompliance ->
            "AWS_SSM_PatchCompliance"

        ResourceType_AWS_Shield_Protection ->
            "AWS_Shield_Protection"

        ResourceType_AWS_ShieldRegional_Protection ->
            "AWS_ShieldRegional_Protection"

        ResourceType_AWS_Config_ResourceCompliance ->
            "AWS_Config_ResourceCompliance"

        ResourceType_AWS_CodePipeline_Pipeline ->
            "AWS_CodePipeline_Pipeline"


{-|

<p>The dynamic value of the resource.</p>

-}
type alias ResourceValue =
    { value : Maybe ResourceValueType
    }


resourceValueDecoder : JD.Decoder ResourceValue
resourceValueDecoder =
    JD.succeed ResourceValue
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Value", "value" ]
                resourceValueTypeDecoder
            )


resourceValueToString :
    ResourceValue
    -> String -- List (String, String)
resourceValueToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "value" "" -- val.value
    --     |> Dict.toList
    ""


{-| One of

  - `ResourceValueType_RESOURCE_ID`

-}
type ResourceValueType
    = ResourceValueType_RESOURCE_ID


resourceValueTypeDecoder : JD.Decoder ResourceValueType
resourceValueTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RESOURCE_ID" ->
                        JD.succeed ResourceValueType_RESOURCE_ID

                    _ ->
                        JD.fail "bad thing"
            )


resourceValueTypeToString : ResourceValueType -> String
resourceValueTypeToString val =
    case val of
        ResourceValueType_RESOURCE_ID ->
            "RESOURCE_ID"


{-|

<p>An object with the name of the retention configuration and the retention period in days. The object stores the configuration for data retention in AWS Config.</p>

-}
type alias RetentionConfiguration =
    { name : String
    , retentionPeriodInDays : Int
    }


retentionConfigurationDecoder : JD.Decoder RetentionConfiguration
retentionConfigurationDecoder =
    JD.succeed RetentionConfiguration
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "RetentionPeriodInDays", "retentionPeriodInDays" ]
                JD.int
            )


retentionConfigurationToString :
    RetentionConfiguration
    -> String -- List (String, String)
retentionConfigurationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.insert
    --         "retentionPeriodInDays" "" -- val.retentionPeriodInDays
    --     |> Dict.toList
    ""


{-|

<p>Defines which resources trigger an evaluation for an AWS Config rule. The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID. Specify a scope to constrain which resources trigger an evaluation for a rule. Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.</p>

-}
type alias Scope =
    { complianceResourceTypes : Maybe (List String)
    , tagKey : Maybe String
    , tagValue : Maybe String
    , complianceResourceId : Maybe String
    }


scopeDecoder : JD.Decoder Scope
scopeDecoder =
    JD.succeed Scope
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComplianceResourceTypes", "complianceResourceTypes" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TagKey", "tagKey" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TagValue", "tagValue" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComplianceResourceId", "complianceResourceId" ]
                JD.string
            )


scopeToString :
    Scope
    -> String -- List (String, String)
scopeToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "complianceResourceTypes" "" -- val.complianceResourceTypes
    --     |> Dict.insert
    --         "tagKey" "" -- val.tagKey
    --     |> Dict.insert
    --         "tagValue" "" -- val.tagValue
    --     |> Dict.insert
    --         "complianceResourceId" "" -- val.complianceResourceId
    --     |> Dict.toList
    ""


{-| Type of HTTP response from selectResourceConfig
-}
type alias SelectResourceConfigResponse =
    { results : Maybe (List String)
    , queryInfo : Maybe QueryInfo
    , nextToken : Maybe String
    }


selectResourceConfigResponseDecoder : JD.Decoder SelectResourceConfigResponse
selectResourceConfigResponseDecoder =
    JD.succeed SelectResourceConfigResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Results", "results" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "QueryInfo", "queryInfo" ]
                queryInfoDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


selectResourceConfigResponseToString :
    SelectResourceConfigResponse
    -> String -- List (String, String)
selectResourceConfigResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "results" "" -- val.results
    --     |> Dict.insert
    --         "queryInfo" "" -- val.queryInfo
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-|

<p>Provides the AWS Config rule owner (AWS or customer), the rule identifier, and the events that trigger the evaluation of your AWS resources.</p>

-}
type alias Source =
    { owner : Owner
    , sourceIdentifier : String
    , sourceDetails : Maybe (List SourceDetail)
    }


sourceDecoder : JD.Decoder Source
sourceDecoder =
    JD.succeed Source
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Owner", "owner" ]
                ownerDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SourceIdentifier", "sourceIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceDetails", "sourceDetails" ]
                (JD.list sourceDetailDecoder)
            )


sourceToString :
    Source
    -> String -- List (String, String)
sourceToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "owner" "" -- val.owner
    --     |> Dict.insert
    --         "sourceIdentifier" "" -- val.sourceIdentifier
    --     |> Dict.insert
    --         "sourceDetails" "" -- val.sourceDetails
    --     |> Dict.toList
    ""


{-|

<p>Provides the source and the message types that trigger AWS Config to evaluate your AWS resources against a rule. It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic. You can specify the parameter values for <code>SourceDetail</code> only for custom rules. </p>

-}
type alias SourceDetail =
    { eventSource : Maybe EventSource
    , messageType : Maybe MessageType
    , maximumExecutionFrequency : Maybe MaximumExecutionFrequency
    }


sourceDetailDecoder : JD.Decoder SourceDetail
sourceDetailDecoder =
    JD.succeed SourceDetail
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventSource", "eventSource" ]
                eventSourceDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MessageType", "messageType" ]
                messageTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaximumExecutionFrequency", "maximumExecutionFrequency" ]
                maximumExecutionFrequencyDecoder
            )


sourceDetailToString :
    SourceDetail
    -> String -- List (String, String)
sourceDetailToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "eventSource" "" -- val.eventSource
    --     |> Dict.insert
    --         "messageType" "" -- val.messageType
    --     |> Dict.insert
    --         "maximumExecutionFrequency" "" -- val.maximumExecutionFrequency
    --     |> Dict.toList
    ""


{-| Type of HTTP response from startConfigRulesEvaluation
-}
type alias StartConfigRulesEvaluationResponse =
    {}


startConfigRulesEvaluationResponseDecoder : JD.Decoder StartConfigRulesEvaluationResponse
startConfigRulesEvaluationResponseDecoder =
    JD.succeed StartConfigRulesEvaluationResponse


startConfigRulesEvaluationResponseToString :
    StartConfigRulesEvaluationResponse
    -> String -- List (String, String)
startConfigRulesEvaluationResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from startRemediationExecution
-}
type alias StartRemediationExecutionResponse =
    { failureMessage : Maybe String
    , failedItems : Maybe (List ResourceKey)
    }


startRemediationExecutionResponseDecoder : JD.Decoder StartRemediationExecutionResponse
startRemediationExecutionResponseDecoder =
    JD.succeed StartRemediationExecutionResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FailureMessage", "failureMessage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FailedItems", "failedItems" ]
                (JD.list resourceKeyDecoder)
            )


startRemediationExecutionResponseToString :
    StartRemediationExecutionResponse
    -> String -- List (String, String)
startRemediationExecutionResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "failureMessage" "" -- val.failureMessage
    --     |> Dict.insert
    --         "failedItems" "" -- val.failedItems
    --     |> Dict.toList
    ""


{-|

<p>The static value of the resource.</p>

-}
type alias StaticValue =
    { values : Maybe (List String)
    }


staticValueDecoder : JD.Decoder StaticValue
staticValueDecoder =
    JD.succeed StaticValue
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Values", "values" ]
                (JD.list JD.string)
            )


staticValueToString :
    StaticValue
    -> String -- List (String, String)
staticValueToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "values" "" -- val.values
    --     |> Dict.toList
    ""


{-| undefined
-}
type alias StatusDetailFilters =
    { accountId : Maybe String
    , memberAccountRuleStatus : Maybe MemberAccountRuleStatus
    }


statusDetailFiltersDecoder : JD.Decoder StatusDetailFilters
statusDetailFiltersDecoder =
    JD.succeed StatusDetailFilters
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountId", "accountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MemberAccountRuleStatus", "memberAccountRuleStatus" ]
                memberAccountRuleStatusDecoder
            )


statusDetailFiltersToString :
    StatusDetailFilters
    -> String -- List (String, String)
statusDetailFiltersToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "accountId" "" -- val.accountId
    --     |> Dict.insert
    --         "memberAccountRuleStatus" "" -- val.memberAccountRuleStatus
    --     |> Dict.toList
    ""


{-|

<p>The tags for the resource. The metadata that you apply to a resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>

-}
type alias Tag =
    { key : Maybe String
    , value : Maybe String
    }


tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Key", "key" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Value", "value" ]
                JD.string
            )


tagToString :
    Tag
    -> String -- List (String, String)
tagToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "key" "" -- val.key
    --     |> Dict.insert
    --         "value" "" -- val.value
    --     |> Dict.toList
    ""


{-| undefined
-}
type alias BatchGetAggregateResourceConfigRequest =
    { configurationAggregatorName : String
    , resourceIdentifiers : List AggregateResourceIdentifier
    }


{-| undefined
-}
type alias BatchGetResourceConfigRequest =
    { resourceKeys : List ResourceKey
    }


{-| undefined
-}
type alias DeleteAggregationAuthorizationRequest =
    { authorizedAccountId : String
    , authorizedAwsRegion : String
    }


{-|

<p/>

-}
type alias DeleteConfigRuleRequest =
    { configRuleName : String
    }


{-| undefined
-}
type alias DeleteConfigurationAggregatorRequest =
    { configurationAggregatorName : String
    }


{-|

<p>The request object for the <code>DeleteConfigurationRecorder</code> action.</p>

-}
type alias DeleteConfigurationRecorderRequest =
    { configurationRecorderName : String
    }


{-|

<p>The input for the <a>DeleteDeliveryChannel</a> action. The action accepts the following data, in JSON format. </p>

-}
type alias DeleteDeliveryChannelRequest =
    { deliveryChannelName : String
    }


{-|

<p/>

-}
type alias DeleteEvaluationResultsRequest =
    { configRuleName : String
    }


{-| undefined
-}
type alias DeleteOrganizationConfigRuleRequest =
    { organizationConfigRuleName : String
    }


{-| undefined
-}
type alias DeletePendingAggregationRequestRequest =
    { requesterAccountId : String
    , requesterAwsRegion : String
    }


{-| undefined
-}
type alias DeleteRemediationConfigurationRequest =
    { configRuleName : String
    , resourceType : Maybe String
    }


{-| undefined
-}
type alias DeleteRetentionConfigurationRequest =
    { retentionConfigurationName : String
    }


{-|

<p>The input for the <a>DeliverConfigSnapshot</a> action.</p>

-}
type alias DeliverConfigSnapshotRequest =
    { deliveryChannelName : String
    }


{-| undefined
-}
type alias DescribeAggregateComplianceByConfigRulesRequest =
    { configurationAggregatorName : String
    , filters : Maybe ConfigRuleComplianceFilters
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeAggregationAuthorizationsRequest =
    { limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p/>

-}
type alias DescribeComplianceByConfigRuleRequest =
    { configRuleNames : Maybe (List String)
    , complianceTypes : Maybe (List ComplianceType)
    , nextToken : Maybe String
    }


{-|

<p/>

-}
type alias DescribeComplianceByResourceRequest =
    { resourceType : Maybe String
    , resourceId : Maybe String
    , complianceTypes : Maybe (List ComplianceType)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p/>

-}
type alias DescribeConfigRuleEvaluationStatusRequest =
    { configRuleNames : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p/>

-}
type alias DescribeConfigRulesRequest =
    { configRuleNames : Maybe (List String)
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeConfigurationAggregatorSourcesStatusRequest =
    { configurationAggregatorName : String
    , updateStatus : Maybe (List AggregatedSourceStatusType)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias DescribeConfigurationAggregatorsRequest =
    { configurationAggregatorNames : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>The input for the <a>DescribeConfigurationRecorderStatus</a> action.</p>

-}
type alias DescribeConfigurationRecorderStatusRequest =
    { configurationRecorderNames : Maybe (List String)
    }


{-|

<p>The input for the <a>DescribeConfigurationRecorders</a> action.</p>

-}
type alias DescribeConfigurationRecordersRequest =
    { configurationRecorderNames : Maybe (List String)
    }


{-|

<p>The input for the <a>DeliveryChannelStatus</a> action.</p>

-}
type alias DescribeDeliveryChannelStatusRequest =
    { deliveryChannelNames : Maybe (List String)
    }


{-|

<p>The input for the <a>DescribeDeliveryChannels</a> action.</p>

-}
type alias DescribeDeliveryChannelsRequest =
    { deliveryChannelNames : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeOrganizationConfigRuleStatusesRequest =
    { organizationConfigRuleNames : Maybe (List String)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeOrganizationConfigRulesRequest =
    { organizationConfigRuleNames : Maybe (List String)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribePendingAggregationRequestsRequest =
    { limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeRemediationConfigurationsRequest =
    { configRuleNames : List String
    }


{-| undefined
-}
type alias DescribeRemediationExecutionStatusRequest =
    { configRuleName : String
    , resourceKeys : Maybe (List ResourceKey)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeRetentionConfigurationsRequest =
    { retentionConfigurationNames : Maybe (List String)
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias GetAggregateComplianceDetailsByConfigRuleRequest =
    { configurationAggregatorName : String
    , configRuleName : String
    , accountId : String
    , awsRegion : String
    , complianceType : Maybe ComplianceType
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias GetAggregateConfigRuleComplianceSummaryRequest =
    { configurationAggregatorName : String
    , filters : Maybe ConfigRuleComplianceSummaryFilters
    , groupByKey : Maybe ConfigRuleComplianceSummaryGroupKey
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias GetAggregateDiscoveredResourceCountsRequest =
    { configurationAggregatorName : String
    , filters : Maybe ResourceCountFilters
    , groupByKey : Maybe ResourceCountGroupKey
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias GetAggregateResourceConfigRequest =
    { configurationAggregatorName : String
    , resourceIdentifier : AggregateResourceIdentifier
    }


{-|

<p/>

-}
type alias GetComplianceDetailsByConfigRuleRequest =
    { configRuleName : String
    , complianceTypes : Maybe (List ComplianceType)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p/>

-}
type alias GetComplianceDetailsByResourceRequest =
    { resourceType : String
    , resourceId : String
    , complianceTypes : Maybe (List ComplianceType)
    , nextToken : Maybe String
    }


{-|

<p/>

-}
type alias GetComplianceSummaryByResourceTypeRequest =
    { resourceTypes : Maybe (List String)
    }


{-| undefined
-}
type alias GetDiscoveredResourceCountsRequest =
    { resourceTypes : Maybe (List String)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias GetOrganizationConfigRuleDetailedStatusRequest =
    { organizationConfigRuleName : String
    , filters : Maybe StatusDetailFilters
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>The input for the <a>GetResourceConfigHistory</a> action.</p>

-}
type alias GetResourceConfigHistoryRequest =
    { resourceType : ResourceType
    , resourceId : String
    , laterTime : Maybe Posix
    , earlierTime : Maybe Posix
    , chronologicalOrder : Maybe ChronologicalOrder
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListAggregateDiscoveredResourcesRequest =
    { configurationAggregatorName : String
    , resourceType : ResourceType
    , filters : Maybe ResourceFilters
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p/>

-}
type alias ListDiscoveredResourcesRequest =
    { resourceType : ResourceType
    , resourceIds : Maybe (List String)
    , resourceName : Maybe String
    , limit : Maybe Int
    , includeDeletedResources : Maybe Bool
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListTagsForResourceRequest =
    { resourceArn : String
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias PutAggregationAuthorizationRequest =
    { authorizedAccountId : String
    , authorizedAwsRegion : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias PutConfigRuleRequest =
    { configRule : ConfigRule
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias PutConfigurationAggregatorRequest =
    { configurationAggregatorName : String
    , accountAggregationSources : Maybe (List AccountAggregationSource)
    , organizationAggregationSource : Maybe OrganizationAggregationSource
    , tags : Maybe (List Tag)
    }


{-|

<p>The input for the <a>PutConfigurationRecorder</a> action.</p>

-}
type alias PutConfigurationRecorderRequest =
    { configurationRecorder : ConfigurationRecorder
    }


{-|

<p>The input for the <a>PutDeliveryChannel</a> action.</p>

-}
type alias PutDeliveryChannelRequest =
    { deliveryChannel : DeliveryChannel
    }


{-|

<p/>

-}
type alias PutEvaluationsRequest =
    { evaluations : Maybe (List Evaluation)
    , resultToken : String
    , testMode : Maybe Bool
    }


{-| undefined
-}
type alias PutOrganizationConfigRuleRequest =
    { organizationConfigRuleName : String
    , organizationManagedRuleMetadata : Maybe OrganizationManagedRuleMetadata
    , organizationCustomRuleMetadata : Maybe OrganizationCustomRuleMetadata
    , excludedAccounts : Maybe (List String)
    }


{-| undefined
-}
type alias PutRemediationConfigurationsRequest =
    { remediationConfigurations : List RemediationConfiguration
    }


{-| undefined
-}
type alias PutRetentionConfigurationRequest =
    { retentionPeriodInDays : Int
    }


{-| undefined
-}
type alias SelectResourceConfigRequest =
    { expression : String
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p/>

-}
type alias StartConfigRulesEvaluationRequest =
    { configRuleNames : Maybe (List String)
    }


{-|

<p>The input for the <a>StartConfigurationRecorder</a> action.</p>

-}
type alias StartConfigurationRecorderRequest =
    { configurationRecorderName : String
    }


{-| undefined
-}
type alias StartRemediationExecutionRequest =
    { configRuleName : String
    , resourceKeys : List ResourceKey
    }


{-|

<p>The input for the <a>StopConfigurationRecorder</a> action.</p>

-}
type alias StopConfigurationRecorderRequest =
    { configurationRecorderName : String
    }


{-| undefined
-}
type alias TagResourceRequest =
    { resourceArn : String
    , tags : List Tag
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { resourceArn : String
    , tagKeys : List String
    }


accountAggregationSourceEncoder : AccountAggregationSource -> JE.Value
accountAggregationSourceEncoder data =
    []
        |> (::) ( "AccountIds", data.accountIds |> JE.list JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AllAwsRegions", data.allAwsRegions )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "AwsRegions", data.awsRegions )
        |> JE.object


aggregateComplianceByConfigRuleEncoder : AggregateComplianceByConfigRule -> JE.Value
aggregateComplianceByConfigRuleEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ConfigRuleName", data.configRuleName )
        |> AWS.Core.Encode.optionalMember
            complianceEncoder
            ( "Compliance", data.compliance )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AccountId", data.accountId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AwsRegion", data.awsRegion )
        |> JE.object


aggregateComplianceCountEncoder : AggregateComplianceCount -> JE.Value
aggregateComplianceCountEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GroupName", data.groupName )
        |> AWS.Core.Encode.optionalMember
            complianceSummaryEncoder
            ( "ComplianceSummary", data.complianceSummary )
        |> JE.object


aggregateEvaluationResultEncoder : AggregateEvaluationResult -> JE.Value
aggregateEvaluationResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            evaluationResultIdentifierEncoder
            ( "EvaluationResultIdentifier", data.evaluationResultIdentifier )
        |> AWS.Core.Encode.optionalMember
            (complianceTypeToString >> JE.string)
            ( "ComplianceType", data.complianceType )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ResultRecordedTime", data.resultRecordedTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ConfigRuleInvokedTime", data.configRuleInvokedTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Annotation", data.annotation )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AccountId", data.accountId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AwsRegion", data.awsRegion )
        |> JE.object


aggregateResourceIdentifierEncoder : AggregateResourceIdentifier -> JE.Value
aggregateResourceIdentifierEncoder data =
    []
        |> (::) ( "SourceAccountId", data.sourceAccountId |> JE.string )
        |> (::) ( "SourceRegion", data.sourceRegion |> JE.string )
        |> (::) ( "ResourceId", data.resourceId |> JE.string )
        |> (::) ( "ResourceType", data.resourceType |> (resourceTypeToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceName", data.resourceName )
        |> JE.object


aggregatedSourceStatusEncoder : AggregatedSourceStatus -> JE.Value
aggregatedSourceStatusEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceId", data.sourceId )
        |> AWS.Core.Encode.optionalMember
            (aggregatedSourceTypeToString >> JE.string)
            ( "SourceType", data.sourceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AwsRegion", data.awsRegion )
        |> AWS.Core.Encode.optionalMember
            (aggregatedSourceStatusTypeToString >> JE.string)
            ( "LastUpdateStatus", data.lastUpdateStatus )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastUpdateTime", data.lastUpdateTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LastErrorCode", data.lastErrorCode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LastErrorMessage", data.lastErrorMessage )
        |> JE.object


aggregationAuthorizationEncoder : AggregationAuthorization -> JE.Value
aggregationAuthorizationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AggregationAuthorizationArn", data.aggregationAuthorizationArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AuthorizedAccountId", data.authorizedAccountId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AuthorizedAwsRegion", data.authorizedAwsRegion )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreationTime", data.creationTime )
        |> JE.object


baseConfigurationItemEncoder : BaseConfigurationItem -> JE.Value
baseConfigurationItemEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "version", data.version )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "accountId", data.accountId )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "configurationItemCaptureTime", data.configurationItemCaptureTime )
        |> AWS.Core.Encode.optionalMember
            (configurationItemStatusToString >> JE.string)
            ( "configurationItemStatus", data.configurationItemStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "configurationStateId", data.configurationStateId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "arn", data.arn )
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ( "resourceType", data.resourceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "resourceId", data.resourceId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "resourceName", data.resourceName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "awsRegion", data.awsRegion )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "availabilityZone", data.availabilityZone )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "resourceCreationTime", data.resourceCreationTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "configuration", data.configuration )
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity JE.string)
            ( "supplementaryConfiguration", data.supplementaryConfiguration )
        |> JE.object


batchGetAggregateResourceConfigRequestEncoder : BatchGetAggregateResourceConfigRequest -> JE.Value
batchGetAggregateResourceConfigRequestEncoder data =
    []
        |> (::) ( "ConfigurationAggregatorName", data.configurationAggregatorName |> JE.string )
        |> (::) ( "ResourceIdentifiers", data.resourceIdentifiers |> JE.list aggregateResourceIdentifierEncoder )
        |> JE.object


batchGetAggregateResourceConfigResponseEncoder : BatchGetAggregateResourceConfigResponse -> JE.Value
batchGetAggregateResourceConfigResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list baseConfigurationItemEncoder)
            ( "BaseConfigurationItems", data.baseConfigurationItems )
        |> AWS.Core.Encode.optionalMember
            (JE.list aggregateResourceIdentifierEncoder)
            ( "UnprocessedResourceIdentifiers", data.unprocessedResourceIdentifiers )
        |> JE.object


batchGetResourceConfigRequestEncoder : BatchGetResourceConfigRequest -> JE.Value
batchGetResourceConfigRequestEncoder data =
    []
        |> (::) ( "resourceKeys", data.resourceKeys |> JE.list resourceKeyEncoder )
        |> JE.object


batchGetResourceConfigResponseEncoder : BatchGetResourceConfigResponse -> JE.Value
batchGetResourceConfigResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list baseConfigurationItemEncoder)
            ( "baseConfigurationItems", data.baseConfigurationItems )
        |> AWS.Core.Encode.optionalMember
            (JE.list resourceKeyEncoder)
            ( "unprocessedResourceKeys", data.unprocessedResourceKeys )
        |> JE.object


complianceEncoder : Compliance -> JE.Value
complianceEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (complianceTypeToString >> JE.string)
            ( "ComplianceType", data.complianceType )
        |> AWS.Core.Encode.optionalMember
            complianceContributorCountEncoder
            ( "ComplianceContributorCount", data.complianceContributorCount )
        |> JE.object


complianceByConfigRuleEncoder : ComplianceByConfigRule -> JE.Value
complianceByConfigRuleEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ConfigRuleName", data.configRuleName )
        |> AWS.Core.Encode.optionalMember
            complianceEncoder
            ( "Compliance", data.compliance )
        |> JE.object


complianceByResourceEncoder : ComplianceByResource -> JE.Value
complianceByResourceEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceType", data.resourceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceId", data.resourceId )
        |> AWS.Core.Encode.optionalMember
            complianceEncoder
            ( "Compliance", data.compliance )
        |> JE.object


complianceContributorCountEncoder : ComplianceContributorCount -> JE.Value
complianceContributorCountEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "CappedCount", data.cappedCount )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "CapExceeded", data.capExceeded )
        |> JE.object


complianceSummaryEncoder : ComplianceSummary -> JE.Value
complianceSummaryEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            complianceContributorCountEncoder
            ( "CompliantResourceCount", data.compliantResourceCount )
        |> AWS.Core.Encode.optionalMember
            complianceContributorCountEncoder
            ( "NonCompliantResourceCount", data.nonCompliantResourceCount )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ComplianceSummaryTimestamp", data.complianceSummaryTimestamp )
        |> JE.object


complianceSummaryByResourceTypeEncoder : ComplianceSummaryByResourceType -> JE.Value
complianceSummaryByResourceTypeEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceType", data.resourceType )
        |> AWS.Core.Encode.optionalMember
            complianceSummaryEncoder
            ( "ComplianceSummary", data.complianceSummary )
        |> JE.object


configExportDeliveryInfoEncoder : ConfigExportDeliveryInfo -> JE.Value
configExportDeliveryInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (deliveryStatusToString >> JE.string)
            ( "lastStatus", data.lastStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lastErrorCode", data.lastErrorCode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lastErrorMessage", data.lastErrorMessage )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "lastAttemptTime", data.lastAttemptTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "lastSuccessfulTime", data.lastSuccessfulTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "nextDeliveryTime", data.nextDeliveryTime )
        |> JE.object


configRuleEncoder : ConfigRule -> JE.Value
configRuleEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ConfigRuleName", data.configRuleName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ConfigRuleArn", data.configRuleArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ConfigRuleId", data.configRuleId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            scopeEncoder
            ( "Scope", data.scope )
        |> (::) ( "Source", data.source |> sourceEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "InputParameters", data.inputParameters )
        |> AWS.Core.Encode.optionalMember
            (maximumExecutionFrequencyToString >> JE.string)
            ( "MaximumExecutionFrequency", data.maximumExecutionFrequency )
        |> AWS.Core.Encode.optionalMember
            (configRuleStateToString >> JE.string)
            ( "ConfigRuleState", data.configRuleState )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CreatedBy", data.createdBy )
        |> JE.object


configRuleComplianceFiltersEncoder : ConfigRuleComplianceFilters -> JE.Value
configRuleComplianceFiltersEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ConfigRuleName", data.configRuleName )
        |> AWS.Core.Encode.optionalMember
            (complianceTypeToString >> JE.string)
            ( "ComplianceType", data.complianceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AccountId", data.accountId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AwsRegion", data.awsRegion )
        |> JE.object


configRuleComplianceSummaryFiltersEncoder : ConfigRuleComplianceSummaryFilters -> JE.Value
configRuleComplianceSummaryFiltersEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AccountId", data.accountId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AwsRegion", data.awsRegion )
        |> JE.object


configRuleEvaluationStatusEncoder : ConfigRuleEvaluationStatus -> JE.Value
configRuleEvaluationStatusEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ConfigRuleName", data.configRuleName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ConfigRuleArn", data.configRuleArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ConfigRuleId", data.configRuleId )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastSuccessfulInvocationTime", data.lastSuccessfulInvocationTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastFailedInvocationTime", data.lastFailedInvocationTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastSuccessfulEvaluationTime", data.lastSuccessfulEvaluationTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastFailedEvaluationTime", data.lastFailedEvaluationTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "FirstActivatedTime", data.firstActivatedTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LastErrorCode", data.lastErrorCode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LastErrorMessage", data.lastErrorMessage )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "FirstEvaluationStarted", data.firstEvaluationStarted )
        |> JE.object


configSnapshotDeliveryPropertiesEncoder : ConfigSnapshotDeliveryProperties -> JE.Value
configSnapshotDeliveryPropertiesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (maximumExecutionFrequencyToString >> JE.string)
            ( "deliveryFrequency", data.deliveryFrequency )
        |> JE.object


configStreamDeliveryInfoEncoder : ConfigStreamDeliveryInfo -> JE.Value
configStreamDeliveryInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (deliveryStatusToString >> JE.string)
            ( "lastStatus", data.lastStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lastErrorCode", data.lastErrorCode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lastErrorMessage", data.lastErrorMessage )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "lastStatusChangeTime", data.lastStatusChangeTime )
        |> JE.object


configurationAggregatorEncoder : ConfigurationAggregator -> JE.Value
configurationAggregatorEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ConfigurationAggregatorName", data.configurationAggregatorName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ConfigurationAggregatorArn", data.configurationAggregatorArn )
        |> AWS.Core.Encode.optionalMember
            (JE.list accountAggregationSourceEncoder)
            ( "AccountAggregationSources", data.accountAggregationSources )
        |> AWS.Core.Encode.optionalMember
            organizationAggregationSourceEncoder
            ( "OrganizationAggregationSource", data.organizationAggregationSource )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreationTime", data.creationTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastUpdatedTime", data.lastUpdatedTime )
        |> JE.object


configurationItemEncoder : ConfigurationItem -> JE.Value
configurationItemEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "version", data.version )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "accountId", data.accountId )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "configurationItemCaptureTime", data.configurationItemCaptureTime )
        |> AWS.Core.Encode.optionalMember
            (configurationItemStatusToString >> JE.string)
            ( "configurationItemStatus", data.configurationItemStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "configurationStateId", data.configurationStateId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "configurationItemMD5Hash", data.configurationItemMD5Hash )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "arn", data.arn )
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ( "resourceType", data.resourceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "resourceId", data.resourceId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "resourceName", data.resourceName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "awsRegion", data.awsRegion )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "availabilityZone", data.availabilityZone )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "resourceCreationTime", data.resourceCreationTime )
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity JE.string)
            ( "tags", data.tags )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "relatedEvents", data.relatedEvents )
        |> AWS.Core.Encode.optionalMember
            (JE.list relationshipEncoder)
            ( "relationships", data.relationships )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "configuration", data.configuration )
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity JE.string)
            ( "supplementaryConfiguration", data.supplementaryConfiguration )
        |> JE.object


configurationRecorderEncoder : ConfigurationRecorder -> JE.Value
configurationRecorderEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "name", data.name )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "roleARN", data.roleARN )
        |> AWS.Core.Encode.optionalMember
            recordingGroupEncoder
            ( "recordingGroup", data.recordingGroup )
        |> JE.object


configurationRecorderStatusEncoder : ConfigurationRecorderStatus -> JE.Value
configurationRecorderStatusEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "name", data.name )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "lastStartTime", data.lastStartTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "lastStopTime", data.lastStopTime )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "recording", data.recording )
        |> AWS.Core.Encode.optionalMember
            (recorderStatusToString >> JE.string)
            ( "lastStatus", data.lastStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lastErrorCode", data.lastErrorCode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lastErrorMessage", data.lastErrorMessage )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "lastStatusChangeTime", data.lastStatusChangeTime )
        |> JE.object


deleteAggregationAuthorizationRequestEncoder : DeleteAggregationAuthorizationRequest -> JE.Value
deleteAggregationAuthorizationRequestEncoder data =
    []
        |> (::) ( "AuthorizedAccountId", data.authorizedAccountId |> JE.string )
        |> (::) ( "AuthorizedAwsRegion", data.authorizedAwsRegion |> JE.string )
        |> JE.object


deleteConfigRuleRequestEncoder : DeleteConfigRuleRequest -> JE.Value
deleteConfigRuleRequestEncoder data =
    []
        |> (::) ( "ConfigRuleName", data.configRuleName |> JE.string )
        |> JE.object


deleteConfigurationAggregatorRequestEncoder : DeleteConfigurationAggregatorRequest -> JE.Value
deleteConfigurationAggregatorRequestEncoder data =
    []
        |> (::) ( "ConfigurationAggregatorName", data.configurationAggregatorName |> JE.string )
        |> JE.object


deleteConfigurationRecorderRequestEncoder : DeleteConfigurationRecorderRequest -> JE.Value
deleteConfigurationRecorderRequestEncoder data =
    []
        |> (::) ( "ConfigurationRecorderName", data.configurationRecorderName |> JE.string )
        |> JE.object


deleteDeliveryChannelRequestEncoder : DeleteDeliveryChannelRequest -> JE.Value
deleteDeliveryChannelRequestEncoder data =
    []
        |> (::) ( "DeliveryChannelName", data.deliveryChannelName |> JE.string )
        |> JE.object


deleteEvaluationResultsRequestEncoder : DeleteEvaluationResultsRequest -> JE.Value
deleteEvaluationResultsRequestEncoder data =
    []
        |> (::) ( "ConfigRuleName", data.configRuleName |> JE.string )
        |> JE.object


deleteEvaluationResultsResponseEncoder : DeleteEvaluationResultsResponse -> JE.Value
deleteEvaluationResultsResponseEncoder data =
    []
        |> JE.object


deleteOrganizationConfigRuleRequestEncoder : DeleteOrganizationConfigRuleRequest -> JE.Value
deleteOrganizationConfigRuleRequestEncoder data =
    []
        |> (::) ( "OrganizationConfigRuleName", data.organizationConfigRuleName |> JE.string )
        |> JE.object


deletePendingAggregationRequestRequestEncoder : DeletePendingAggregationRequestRequest -> JE.Value
deletePendingAggregationRequestRequestEncoder data =
    []
        |> (::) ( "RequesterAccountId", data.requesterAccountId |> JE.string )
        |> (::) ( "RequesterAwsRegion", data.requesterAwsRegion |> JE.string )
        |> JE.object


deleteRemediationConfigurationRequestEncoder : DeleteRemediationConfigurationRequest -> JE.Value
deleteRemediationConfigurationRequestEncoder data =
    []
        |> (::) ( "ConfigRuleName", data.configRuleName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceType", data.resourceType )
        |> JE.object


deleteRemediationConfigurationResponseEncoder : DeleteRemediationConfigurationResponse -> JE.Value
deleteRemediationConfigurationResponseEncoder data =
    []
        |> JE.object


deleteRetentionConfigurationRequestEncoder : DeleteRetentionConfigurationRequest -> JE.Value
deleteRetentionConfigurationRequestEncoder data =
    []
        |> (::) ( "RetentionConfigurationName", data.retentionConfigurationName |> JE.string )
        |> JE.object


deliverConfigSnapshotRequestEncoder : DeliverConfigSnapshotRequest -> JE.Value
deliverConfigSnapshotRequestEncoder data =
    []
        |> (::) ( "deliveryChannelName", data.deliveryChannelName |> JE.string )
        |> JE.object


deliverConfigSnapshotResponseEncoder : DeliverConfigSnapshotResponse -> JE.Value
deliverConfigSnapshotResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "configSnapshotId", data.configSnapshotId )
        |> JE.object


deliveryChannelEncoder : DeliveryChannel -> JE.Value
deliveryChannelEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "name", data.name )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "s3BucketName", data.s3BucketName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "s3KeyPrefix", data.s3KeyPrefix )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "snsTopicARN", data.snsTopicARN )
        |> AWS.Core.Encode.optionalMember
            configSnapshotDeliveryPropertiesEncoder
            ( "configSnapshotDeliveryProperties", data.configSnapshotDeliveryProperties )
        |> JE.object


deliveryChannelStatusEncoder : DeliveryChannelStatus -> JE.Value
deliveryChannelStatusEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "name", data.name )
        |> AWS.Core.Encode.optionalMember
            configExportDeliveryInfoEncoder
            ( "configSnapshotDeliveryInfo", data.configSnapshotDeliveryInfo )
        |> AWS.Core.Encode.optionalMember
            configExportDeliveryInfoEncoder
            ( "configHistoryDeliveryInfo", data.configHistoryDeliveryInfo )
        |> AWS.Core.Encode.optionalMember
            configStreamDeliveryInfoEncoder
            ( "configStreamDeliveryInfo", data.configStreamDeliveryInfo )
        |> JE.object


describeAggregateComplianceByConfigRulesRequestEncoder : DescribeAggregateComplianceByConfigRulesRequest -> JE.Value
describeAggregateComplianceByConfigRulesRequestEncoder data =
    []
        |> (::) ( "ConfigurationAggregatorName", data.configurationAggregatorName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            configRuleComplianceFiltersEncoder
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeAggregateComplianceByConfigRulesResponseEncoder : DescribeAggregateComplianceByConfigRulesResponse -> JE.Value
describeAggregateComplianceByConfigRulesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list aggregateComplianceByConfigRuleEncoder)
            ( "AggregateComplianceByConfigRules", data.aggregateComplianceByConfigRules )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeAggregationAuthorizationsRequestEncoder : DescribeAggregationAuthorizationsRequest -> JE.Value
describeAggregationAuthorizationsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeAggregationAuthorizationsResponseEncoder : DescribeAggregationAuthorizationsResponse -> JE.Value
describeAggregationAuthorizationsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list aggregationAuthorizationEncoder)
            ( "AggregationAuthorizations", data.aggregationAuthorizations )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeComplianceByConfigRuleRequestEncoder : DescribeComplianceByConfigRuleRequest -> JE.Value
describeComplianceByConfigRuleRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ConfigRuleNames", data.configRuleNames )
        |> AWS.Core.Encode.optionalMember
            (JE.list (complianceTypeToString >> JE.string))
            ( "ComplianceTypes", data.complianceTypes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeComplianceByConfigRuleResponseEncoder : DescribeComplianceByConfigRuleResponse -> JE.Value
describeComplianceByConfigRuleResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list complianceByConfigRuleEncoder)
            ( "ComplianceByConfigRules", data.complianceByConfigRules )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeComplianceByResourceRequestEncoder : DescribeComplianceByResourceRequest -> JE.Value
describeComplianceByResourceRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceType", data.resourceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceId", data.resourceId )
        |> AWS.Core.Encode.optionalMember
            (JE.list (complianceTypeToString >> JE.string))
            ( "ComplianceTypes", data.complianceTypes )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeComplianceByResourceResponseEncoder : DescribeComplianceByResourceResponse -> JE.Value
describeComplianceByResourceResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list complianceByResourceEncoder)
            ( "ComplianceByResources", data.complianceByResources )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeConfigRuleEvaluationStatusRequestEncoder : DescribeConfigRuleEvaluationStatusRequest -> JE.Value
describeConfigRuleEvaluationStatusRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ConfigRuleNames", data.configRuleNames )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


describeConfigRuleEvaluationStatusResponseEncoder : DescribeConfigRuleEvaluationStatusResponse -> JE.Value
describeConfigRuleEvaluationStatusResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list configRuleEvaluationStatusEncoder)
            ( "ConfigRulesEvaluationStatus", data.configRulesEvaluationStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeConfigRulesRequestEncoder : DescribeConfigRulesRequest -> JE.Value
describeConfigRulesRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ConfigRuleNames", data.configRuleNames )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeConfigRulesResponseEncoder : DescribeConfigRulesResponse -> JE.Value
describeConfigRulesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list configRuleEncoder)
            ( "ConfigRules", data.configRules )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeConfigurationAggregatorSourcesStatusRequestEncoder : DescribeConfigurationAggregatorSourcesStatusRequest -> JE.Value
describeConfigurationAggregatorSourcesStatusRequestEncoder data =
    []
        |> (::) ( "ConfigurationAggregatorName", data.configurationAggregatorName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list (aggregatedSourceStatusTypeToString >> JE.string))
            ( "UpdateStatus", data.updateStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


describeConfigurationAggregatorSourcesStatusResponseEncoder : DescribeConfigurationAggregatorSourcesStatusResponse -> JE.Value
describeConfigurationAggregatorSourcesStatusResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list aggregatedSourceStatusEncoder)
            ( "AggregatedSourceStatusList", data.aggregatedSourceStatusList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeConfigurationAggregatorsRequestEncoder : DescribeConfigurationAggregatorsRequest -> JE.Value
describeConfigurationAggregatorsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ConfigurationAggregatorNames", data.configurationAggregatorNames )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


describeConfigurationAggregatorsResponseEncoder : DescribeConfigurationAggregatorsResponse -> JE.Value
describeConfigurationAggregatorsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list configurationAggregatorEncoder)
            ( "ConfigurationAggregators", data.configurationAggregators )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeConfigurationRecorderStatusRequestEncoder : DescribeConfigurationRecorderStatusRequest -> JE.Value
describeConfigurationRecorderStatusRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ConfigurationRecorderNames", data.configurationRecorderNames )
        |> JE.object


describeConfigurationRecorderStatusResponseEncoder : DescribeConfigurationRecorderStatusResponse -> JE.Value
describeConfigurationRecorderStatusResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list configurationRecorderStatusEncoder)
            ( "ConfigurationRecordersStatus", data.configurationRecordersStatus )
        |> JE.object


describeConfigurationRecordersRequestEncoder : DescribeConfigurationRecordersRequest -> JE.Value
describeConfigurationRecordersRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ConfigurationRecorderNames", data.configurationRecorderNames )
        |> JE.object


describeConfigurationRecordersResponseEncoder : DescribeConfigurationRecordersResponse -> JE.Value
describeConfigurationRecordersResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list configurationRecorderEncoder)
            ( "ConfigurationRecorders", data.configurationRecorders )
        |> JE.object


describeDeliveryChannelStatusRequestEncoder : DescribeDeliveryChannelStatusRequest -> JE.Value
describeDeliveryChannelStatusRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "DeliveryChannelNames", data.deliveryChannelNames )
        |> JE.object


describeDeliveryChannelStatusResponseEncoder : DescribeDeliveryChannelStatusResponse -> JE.Value
describeDeliveryChannelStatusResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list deliveryChannelStatusEncoder)
            ( "DeliveryChannelsStatus", data.deliveryChannelsStatus )
        |> JE.object


describeDeliveryChannelsRequestEncoder : DescribeDeliveryChannelsRequest -> JE.Value
describeDeliveryChannelsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "DeliveryChannelNames", data.deliveryChannelNames )
        |> JE.object


describeDeliveryChannelsResponseEncoder : DescribeDeliveryChannelsResponse -> JE.Value
describeDeliveryChannelsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list deliveryChannelEncoder)
            ( "DeliveryChannels", data.deliveryChannels )
        |> JE.object


describeOrganizationConfigRuleStatusesRequestEncoder : DescribeOrganizationConfigRuleStatusesRequest -> JE.Value
describeOrganizationConfigRuleStatusesRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "OrganizationConfigRuleNames", data.organizationConfigRuleNames )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeOrganizationConfigRuleStatusesResponseEncoder : DescribeOrganizationConfigRuleStatusesResponse -> JE.Value
describeOrganizationConfigRuleStatusesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list organizationConfigRuleStatusEncoder)
            ( "OrganizationConfigRuleStatuses", data.organizationConfigRuleStatuses )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeOrganizationConfigRulesRequestEncoder : DescribeOrganizationConfigRulesRequest -> JE.Value
describeOrganizationConfigRulesRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "OrganizationConfigRuleNames", data.organizationConfigRuleNames )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeOrganizationConfigRulesResponseEncoder : DescribeOrganizationConfigRulesResponse -> JE.Value
describeOrganizationConfigRulesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list organizationConfigRuleEncoder)
            ( "OrganizationConfigRules", data.organizationConfigRules )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describePendingAggregationRequestsRequestEncoder : DescribePendingAggregationRequestsRequest -> JE.Value
describePendingAggregationRequestsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describePendingAggregationRequestsResponseEncoder : DescribePendingAggregationRequestsResponse -> JE.Value
describePendingAggregationRequestsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list pendingAggregationRequestEncoder)
            ( "PendingAggregationRequests", data.pendingAggregationRequests )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeRemediationConfigurationsRequestEncoder : DescribeRemediationConfigurationsRequest -> JE.Value
describeRemediationConfigurationsRequestEncoder data =
    []
        |> (::) ( "ConfigRuleNames", data.configRuleNames |> JE.list JE.string )
        |> JE.object


describeRemediationConfigurationsResponseEncoder : DescribeRemediationConfigurationsResponse -> JE.Value
describeRemediationConfigurationsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list remediationConfigurationEncoder)
            ( "RemediationConfigurations", data.remediationConfigurations )
        |> JE.object


describeRemediationExecutionStatusRequestEncoder : DescribeRemediationExecutionStatusRequest -> JE.Value
describeRemediationExecutionStatusRequestEncoder data =
    []
        |> (::) ( "ConfigRuleName", data.configRuleName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list resourceKeyEncoder)
            ( "ResourceKeys", data.resourceKeys )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeRemediationExecutionStatusResponseEncoder : DescribeRemediationExecutionStatusResponse -> JE.Value
describeRemediationExecutionStatusResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list remediationExecutionStatusEncoder)
            ( "RemediationExecutionStatuses", data.remediationExecutionStatuses )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeRetentionConfigurationsRequestEncoder : DescribeRetentionConfigurationsRequest -> JE.Value
describeRetentionConfigurationsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "RetentionConfigurationNames", data.retentionConfigurationNames )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeRetentionConfigurationsResponseEncoder : DescribeRetentionConfigurationsResponse -> JE.Value
describeRetentionConfigurationsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list retentionConfigurationEncoder)
            ( "RetentionConfigurations", data.retentionConfigurations )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


evaluationEncoder : Evaluation -> JE.Value
evaluationEncoder data =
    []
        |> (::) ( "ComplianceResourceType", data.complianceResourceType |> JE.string )
        |> (::) ( "ComplianceResourceId", data.complianceResourceId |> JE.string )
        |> (::) ( "ComplianceType", data.complianceType |> (complianceTypeToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Annotation", data.annotation )
        |> (::) ( "OrderingTimestamp", data.orderingTimestamp |> (Iso8601.fromTime >> JE.string) )
        |> JE.object


evaluationResultEncoder : EvaluationResult -> JE.Value
evaluationResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            evaluationResultIdentifierEncoder
            ( "EvaluationResultIdentifier", data.evaluationResultIdentifier )
        |> AWS.Core.Encode.optionalMember
            (complianceTypeToString >> JE.string)
            ( "ComplianceType", data.complianceType )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ResultRecordedTime", data.resultRecordedTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ConfigRuleInvokedTime", data.configRuleInvokedTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Annotation", data.annotation )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResultToken", data.resultToken )
        |> JE.object


evaluationResultIdentifierEncoder : EvaluationResultIdentifier -> JE.Value
evaluationResultIdentifierEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            evaluationResultQualifierEncoder
            ( "EvaluationResultQualifier", data.evaluationResultQualifier )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "OrderingTimestamp", data.orderingTimestamp )
        |> JE.object


evaluationResultQualifierEncoder : EvaluationResultQualifier -> JE.Value
evaluationResultQualifierEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ConfigRuleName", data.configRuleName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceType", data.resourceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceId", data.resourceId )
        |> JE.object


failedRemediationBatchEncoder : FailedRemediationBatch -> JE.Value
failedRemediationBatchEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FailureMessage", data.failureMessage )
        |> AWS.Core.Encode.optionalMember
            (JE.list remediationConfigurationEncoder)
            ( "FailedItems", data.failedItems )
        |> JE.object


fieldInfoEncoder : FieldInfo -> JE.Value
fieldInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> JE.object


getAggregateComplianceDetailsByConfigRuleRequestEncoder : GetAggregateComplianceDetailsByConfigRuleRequest -> JE.Value
getAggregateComplianceDetailsByConfigRuleRequestEncoder data =
    []
        |> (::) ( "ConfigurationAggregatorName", data.configurationAggregatorName |> JE.string )
        |> (::) ( "ConfigRuleName", data.configRuleName |> JE.string )
        |> (::) ( "AccountId", data.accountId |> JE.string )
        |> (::) ( "AwsRegion", data.awsRegion |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (complianceTypeToString >> JE.string)
            ( "ComplianceType", data.complianceType )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


getAggregateComplianceDetailsByConfigRuleResponseEncoder : GetAggregateComplianceDetailsByConfigRuleResponse -> JE.Value
getAggregateComplianceDetailsByConfigRuleResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list aggregateEvaluationResultEncoder)
            ( "AggregateEvaluationResults", data.aggregateEvaluationResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


getAggregateConfigRuleComplianceSummaryRequestEncoder : GetAggregateConfigRuleComplianceSummaryRequest -> JE.Value
getAggregateConfigRuleComplianceSummaryRequestEncoder data =
    []
        |> (::) ( "ConfigurationAggregatorName", data.configurationAggregatorName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            configRuleComplianceSummaryFiltersEncoder
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            (configRuleComplianceSummaryGroupKeyToString >> JE.string)
            ( "GroupByKey", data.groupByKey )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


getAggregateConfigRuleComplianceSummaryResponseEncoder : GetAggregateConfigRuleComplianceSummaryResponse -> JE.Value
getAggregateConfigRuleComplianceSummaryResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GroupByKey", data.groupByKey )
        |> AWS.Core.Encode.optionalMember
            (JE.list aggregateComplianceCountEncoder)
            ( "AggregateComplianceCounts", data.aggregateComplianceCounts )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


getAggregateDiscoveredResourceCountsRequestEncoder : GetAggregateDiscoveredResourceCountsRequest -> JE.Value
getAggregateDiscoveredResourceCountsRequestEncoder data =
    []
        |> (::) ( "ConfigurationAggregatorName", data.configurationAggregatorName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            resourceCountFiltersEncoder
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            (resourceCountGroupKeyToString >> JE.string)
            ( "GroupByKey", data.groupByKey )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


getAggregateDiscoveredResourceCountsResponseEncoder : GetAggregateDiscoveredResourceCountsResponse -> JE.Value
getAggregateDiscoveredResourceCountsResponseEncoder data =
    []
        |> (::) ( "TotalDiscoveredResources", data.totalDiscoveredResources |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GroupByKey", data.groupByKey )
        |> AWS.Core.Encode.optionalMember
            (JE.list groupedResourceCountEncoder)
            ( "GroupedResourceCounts", data.groupedResourceCounts )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


getAggregateResourceConfigRequestEncoder : GetAggregateResourceConfigRequest -> JE.Value
getAggregateResourceConfigRequestEncoder data =
    []
        |> (::) ( "ConfigurationAggregatorName", data.configurationAggregatorName |> JE.string )
        |> (::) ( "ResourceIdentifier", data.resourceIdentifier |> aggregateResourceIdentifierEncoder )
        |> JE.object


getAggregateResourceConfigResponseEncoder : GetAggregateResourceConfigResponse -> JE.Value
getAggregateResourceConfigResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            configurationItemEncoder
            ( "ConfigurationItem", data.configurationItem )
        |> JE.object


getComplianceDetailsByConfigRuleRequestEncoder : GetComplianceDetailsByConfigRuleRequest -> JE.Value
getComplianceDetailsByConfigRuleRequestEncoder data =
    []
        |> (::) ( "ConfigRuleName", data.configRuleName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list (complianceTypeToString >> JE.string))
            ( "ComplianceTypes", data.complianceTypes )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


getComplianceDetailsByConfigRuleResponseEncoder : GetComplianceDetailsByConfigRuleResponse -> JE.Value
getComplianceDetailsByConfigRuleResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list evaluationResultEncoder)
            ( "EvaluationResults", data.evaluationResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


getComplianceDetailsByResourceRequestEncoder : GetComplianceDetailsByResourceRequest -> JE.Value
getComplianceDetailsByResourceRequestEncoder data =
    []
        |> (::) ( "ResourceType", data.resourceType |> JE.string )
        |> (::) ( "ResourceId", data.resourceId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list (complianceTypeToString >> JE.string))
            ( "ComplianceTypes", data.complianceTypes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


getComplianceDetailsByResourceResponseEncoder : GetComplianceDetailsByResourceResponse -> JE.Value
getComplianceDetailsByResourceResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list evaluationResultEncoder)
            ( "EvaluationResults", data.evaluationResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


getComplianceSummaryByConfigRuleResponseEncoder : GetComplianceSummaryByConfigRuleResponse -> JE.Value
getComplianceSummaryByConfigRuleResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            complianceSummaryEncoder
            ( "ComplianceSummary", data.complianceSummary )
        |> JE.object


getComplianceSummaryByResourceTypeRequestEncoder : GetComplianceSummaryByResourceTypeRequest -> JE.Value
getComplianceSummaryByResourceTypeRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ResourceTypes", data.resourceTypes )
        |> JE.object


getComplianceSummaryByResourceTypeResponseEncoder : GetComplianceSummaryByResourceTypeResponse -> JE.Value
getComplianceSummaryByResourceTypeResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list complianceSummaryByResourceTypeEncoder)
            ( "ComplianceSummariesByResourceType", data.complianceSummariesByResourceType )
        |> JE.object


getDiscoveredResourceCountsRequestEncoder : GetDiscoveredResourceCountsRequest -> JE.Value
getDiscoveredResourceCountsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "resourceTypes", data.resourceTypes )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


getDiscoveredResourceCountsResponseEncoder : GetDiscoveredResourceCountsResponse -> JE.Value
getDiscoveredResourceCountsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "totalDiscoveredResources", data.totalDiscoveredResources )
        |> AWS.Core.Encode.optionalMember
            (JE.list resourceCountEncoder)
            ( "resourceCounts", data.resourceCounts )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


getOrganizationConfigRuleDetailedStatusRequestEncoder : GetOrganizationConfigRuleDetailedStatusRequest -> JE.Value
getOrganizationConfigRuleDetailedStatusRequestEncoder data =
    []
        |> (::) ( "OrganizationConfigRuleName", data.organizationConfigRuleName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            statusDetailFiltersEncoder
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


getOrganizationConfigRuleDetailedStatusResponseEncoder : GetOrganizationConfigRuleDetailedStatusResponse -> JE.Value
getOrganizationConfigRuleDetailedStatusResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list memberAccountStatusEncoder)
            ( "OrganizationConfigRuleDetailedStatus", data.organizationConfigRuleDetailedStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


getResourceConfigHistoryRequestEncoder : GetResourceConfigHistoryRequest -> JE.Value
getResourceConfigHistoryRequestEncoder data =
    []
        |> (::) ( "resourceType", data.resourceType |> (resourceTypeToString >> JE.string) )
        |> (::) ( "resourceId", data.resourceId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "laterTime", data.laterTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "earlierTime", data.earlierTime )
        |> AWS.Core.Encode.optionalMember
            (chronologicalOrderToString >> JE.string)
            ( "chronologicalOrder", data.chronologicalOrder )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


getResourceConfigHistoryResponseEncoder : GetResourceConfigHistoryResponse -> JE.Value
getResourceConfigHistoryResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list configurationItemEncoder)
            ( "configurationItems", data.configurationItems )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


groupedResourceCountEncoder : GroupedResourceCount -> JE.Value
groupedResourceCountEncoder data =
    []
        |> (::) ( "GroupName", data.groupName |> JE.string )
        |> (::) ( "ResourceCount", data.resourceCount |> JE.int )
        |> JE.object


listAggregateDiscoveredResourcesRequestEncoder : ListAggregateDiscoveredResourcesRequest -> JE.Value
listAggregateDiscoveredResourcesRequestEncoder data =
    []
        |> (::) ( "ConfigurationAggregatorName", data.configurationAggregatorName |> JE.string )
        |> (::) ( "ResourceType", data.resourceType |> (resourceTypeToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            resourceFiltersEncoder
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listAggregateDiscoveredResourcesResponseEncoder : ListAggregateDiscoveredResourcesResponse -> JE.Value
listAggregateDiscoveredResourcesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list aggregateResourceIdentifierEncoder)
            ( "ResourceIdentifiers", data.resourceIdentifiers )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listDiscoveredResourcesRequestEncoder : ListDiscoveredResourcesRequest -> JE.Value
listDiscoveredResourcesRequestEncoder data =
    []
        |> (::) ( "resourceType", data.resourceType |> (resourceTypeToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "resourceIds", data.resourceIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "resourceName", data.resourceName )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "includeDeletedResources", data.includeDeletedResources )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listDiscoveredResourcesResponseEncoder : ListDiscoveredResourcesResponse -> JE.Value
listDiscoveredResourcesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list resourceIdentifierEncoder)
            ( "resourceIdentifiers", data.resourceIdentifiers )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listTagsForResourceRequestEncoder : ListTagsForResourceRequest -> JE.Value
listTagsForResourceRequestEncoder data =
    []
        |> (::) ( "ResourceArn", data.resourceArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listTagsForResourceResponseEncoder : ListTagsForResourceResponse -> JE.Value
listTagsForResourceResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


memberAccountStatusEncoder : MemberAccountStatus -> JE.Value
memberAccountStatusEncoder data =
    []
        |> (::) ( "AccountId", data.accountId |> JE.string )
        |> (::) ( "ConfigRuleName", data.configRuleName |> JE.string )
        |> (::) ( "MemberAccountRuleStatus", data.memberAccountRuleStatus |> (memberAccountRuleStatusToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ErrorCode", data.errorCode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ErrorMessage", data.errorMessage )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastUpdateTime", data.lastUpdateTime )
        |> JE.object


organizationAggregationSourceEncoder : OrganizationAggregationSource -> JE.Value
organizationAggregationSourceEncoder data =
    []
        |> (::) ( "RoleArn", data.roleArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "AwsRegions", data.awsRegions )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AllAwsRegions", data.allAwsRegions )
        |> JE.object


organizationConfigRuleEncoder : OrganizationConfigRule -> JE.Value
organizationConfigRuleEncoder data =
    []
        |> (::) ( "OrganizationConfigRuleName", data.organizationConfigRuleName |> JE.string )
        |> (::) ( "OrganizationConfigRuleArn", data.organizationConfigRuleArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            organizationManagedRuleMetadataEncoder
            ( "OrganizationManagedRuleMetadata", data.organizationManagedRuleMetadata )
        |> AWS.Core.Encode.optionalMember
            organizationCustomRuleMetadataEncoder
            ( "OrganizationCustomRuleMetadata", data.organizationCustomRuleMetadata )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ExcludedAccounts", data.excludedAccounts )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastUpdateTime", data.lastUpdateTime )
        |> JE.object


organizationConfigRuleStatusEncoder : OrganizationConfigRuleStatus -> JE.Value
organizationConfigRuleStatusEncoder data =
    []
        |> (::) ( "OrganizationConfigRuleName", data.organizationConfigRuleName |> JE.string )
        |> (::) ( "OrganizationRuleStatus", data.organizationRuleStatus |> (organizationRuleStatusToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ErrorCode", data.errorCode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ErrorMessage", data.errorMessage )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastUpdateTime", data.lastUpdateTime )
        |> JE.object


organizationCustomRuleMetadataEncoder : OrganizationCustomRuleMetadata -> JE.Value
organizationCustomRuleMetadataEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> (::) ( "LambdaFunctionArn", data.lambdaFunctionArn |> JE.string )
        |> (::) ( "OrganizationConfigRuleTriggerTypes", data.organizationConfigRuleTriggerTypes |> JE.list (organizationConfigRuleTriggerTypeToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "InputParameters", data.inputParameters )
        |> AWS.Core.Encode.optionalMember
            (maximumExecutionFrequencyToString >> JE.string)
            ( "MaximumExecutionFrequency", data.maximumExecutionFrequency )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ResourceTypesScope", data.resourceTypesScope )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceIdScope", data.resourceIdScope )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TagKeyScope", data.tagKeyScope )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TagValueScope", data.tagValueScope )
        |> JE.object


organizationManagedRuleMetadataEncoder : OrganizationManagedRuleMetadata -> JE.Value
organizationManagedRuleMetadataEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> (::) ( "RuleIdentifier", data.ruleIdentifier |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "InputParameters", data.inputParameters )
        |> AWS.Core.Encode.optionalMember
            (maximumExecutionFrequencyToString >> JE.string)
            ( "MaximumExecutionFrequency", data.maximumExecutionFrequency )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ResourceTypesScope", data.resourceTypesScope )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceIdScope", data.resourceIdScope )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TagKeyScope", data.tagKeyScope )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TagValueScope", data.tagValueScope )
        |> JE.object


pendingAggregationRequestEncoder : PendingAggregationRequest -> JE.Value
pendingAggregationRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "RequesterAccountId", data.requesterAccountId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "RequesterAwsRegion", data.requesterAwsRegion )
        |> JE.object


putAggregationAuthorizationRequestEncoder : PutAggregationAuthorizationRequest -> JE.Value
putAggregationAuthorizationRequestEncoder data =
    []
        |> (::) ( "AuthorizedAccountId", data.authorizedAccountId |> JE.string )
        |> (::) ( "AuthorizedAwsRegion", data.authorizedAwsRegion |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


putAggregationAuthorizationResponseEncoder : PutAggregationAuthorizationResponse -> JE.Value
putAggregationAuthorizationResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            aggregationAuthorizationEncoder
            ( "AggregationAuthorization", data.aggregationAuthorization )
        |> JE.object


putConfigRuleRequestEncoder : PutConfigRuleRequest -> JE.Value
putConfigRuleRequestEncoder data =
    []
        |> (::) ( "ConfigRule", data.configRule |> configRuleEncoder )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


putConfigurationAggregatorRequestEncoder : PutConfigurationAggregatorRequest -> JE.Value
putConfigurationAggregatorRequestEncoder data =
    []
        |> (::) ( "ConfigurationAggregatorName", data.configurationAggregatorName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list accountAggregationSourceEncoder)
            ( "AccountAggregationSources", data.accountAggregationSources )
        |> AWS.Core.Encode.optionalMember
            organizationAggregationSourceEncoder
            ( "OrganizationAggregationSource", data.organizationAggregationSource )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


putConfigurationAggregatorResponseEncoder : PutConfigurationAggregatorResponse -> JE.Value
putConfigurationAggregatorResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            configurationAggregatorEncoder
            ( "ConfigurationAggregator", data.configurationAggregator )
        |> JE.object


putConfigurationRecorderRequestEncoder : PutConfigurationRecorderRequest -> JE.Value
putConfigurationRecorderRequestEncoder data =
    []
        |> (::) ( "ConfigurationRecorder", data.configurationRecorder |> configurationRecorderEncoder )
        |> JE.object


putDeliveryChannelRequestEncoder : PutDeliveryChannelRequest -> JE.Value
putDeliveryChannelRequestEncoder data =
    []
        |> (::) ( "DeliveryChannel", data.deliveryChannel |> deliveryChannelEncoder )
        |> JE.object


putEvaluationsRequestEncoder : PutEvaluationsRequest -> JE.Value
putEvaluationsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list evaluationEncoder)
            ( "Evaluations", data.evaluations )
        |> (::) ( "ResultToken", data.resultToken |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "TestMode", data.testMode )
        |> JE.object


putEvaluationsResponseEncoder : PutEvaluationsResponse -> JE.Value
putEvaluationsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list evaluationEncoder)
            ( "FailedEvaluations", data.failedEvaluations )
        |> JE.object


putOrganizationConfigRuleRequestEncoder : PutOrganizationConfigRuleRequest -> JE.Value
putOrganizationConfigRuleRequestEncoder data =
    []
        |> (::) ( "OrganizationConfigRuleName", data.organizationConfigRuleName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            organizationManagedRuleMetadataEncoder
            ( "OrganizationManagedRuleMetadata", data.organizationManagedRuleMetadata )
        |> AWS.Core.Encode.optionalMember
            organizationCustomRuleMetadataEncoder
            ( "OrganizationCustomRuleMetadata", data.organizationCustomRuleMetadata )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ExcludedAccounts", data.excludedAccounts )
        |> JE.object


putOrganizationConfigRuleResponseEncoder : PutOrganizationConfigRuleResponse -> JE.Value
putOrganizationConfigRuleResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "OrganizationConfigRuleArn", data.organizationConfigRuleArn )
        |> JE.object


putRemediationConfigurationsRequestEncoder : PutRemediationConfigurationsRequest -> JE.Value
putRemediationConfigurationsRequestEncoder data =
    []
        |> (::) ( "RemediationConfigurations", data.remediationConfigurations |> JE.list remediationConfigurationEncoder )
        |> JE.object


putRemediationConfigurationsResponseEncoder : PutRemediationConfigurationsResponse -> JE.Value
putRemediationConfigurationsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list failedRemediationBatchEncoder)
            ( "FailedBatches", data.failedBatches )
        |> JE.object


putRetentionConfigurationRequestEncoder : PutRetentionConfigurationRequest -> JE.Value
putRetentionConfigurationRequestEncoder data =
    []
        |> (::) ( "RetentionPeriodInDays", data.retentionPeriodInDays |> JE.int )
        |> JE.object


putRetentionConfigurationResponseEncoder : PutRetentionConfigurationResponse -> JE.Value
putRetentionConfigurationResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            retentionConfigurationEncoder
            ( "RetentionConfiguration", data.retentionConfiguration )
        |> JE.object


queryInfoEncoder : QueryInfo -> JE.Value
queryInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list fieldInfoEncoder)
            ( "SelectFields", data.selectFields )
        |> JE.object


recordingGroupEncoder : RecordingGroup -> JE.Value
recordingGroupEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "allSupported", data.allSupported )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "includeGlobalResourceTypes", data.includeGlobalResourceTypes )
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourceTypeToString >> JE.string))
            ( "resourceTypes", data.resourceTypes )
        |> JE.object


relationshipEncoder : Relationship -> JE.Value
relationshipEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ( "resourceType", data.resourceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "resourceId", data.resourceId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "resourceName", data.resourceName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "relationshipName", data.relationshipName )
        |> JE.object


remediationConfigurationEncoder : RemediationConfiguration -> JE.Value
remediationConfigurationEncoder data =
    []
        |> (::) ( "ConfigRuleName", data.configRuleName |> JE.string )
        |> (::) ( "TargetType", data.targetType |> (remediationTargetTypeToString >> JE.string) )
        |> (::) ( "TargetId", data.targetId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TargetVersion", data.targetVersion )
        |> AWS.Core.Encode.optionalMember
            remediationParameterValueEncoder
            ( "Parameters", data.parameters )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceType", data.resourceType )
        |> JE.object


remediationExecutionStatusEncoder : RemediationExecutionStatus -> JE.Value
remediationExecutionStatusEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            resourceKeyEncoder
            ( "ResourceKey", data.resourceKey )
        |> AWS.Core.Encode.optionalMember
            (remediationExecutionStateToString >> JE.string)
            ( "State", data.state )
        |> AWS.Core.Encode.optionalMember
            (JE.list remediationExecutionStepEncoder)
            ( "StepDetails", data.stepDetails )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "InvocationTime", data.invocationTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastUpdatedTime", data.lastUpdatedTime )
        |> JE.object


remediationExecutionStepEncoder : RemediationExecutionStep -> JE.Value
remediationExecutionStepEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> AWS.Core.Encode.optionalMember
            (remediationExecutionStepStateToString >> JE.string)
            ( "State", data.state )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ErrorMessage", data.errorMessage )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StartTime", data.startTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StopTime", data.stopTime )
        |> JE.object


remediationParameterValueEncoder : RemediationParameterValue -> JE.Value
remediationParameterValueEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            resourceValueEncoder
            ( "ResourceValue", data.resourceValue )
        |> AWS.Core.Encode.optionalMember
            staticValueEncoder
            ( "StaticValue", data.staticValue )
        |> JE.object


resourceCountEncoder : ResourceCount -> JE.Value
resourceCountEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ( "resourceType", data.resourceType )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "count", data.count )
        |> JE.object


resourceCountFiltersEncoder : ResourceCountFilters -> JE.Value
resourceCountFiltersEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ( "ResourceType", data.resourceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AccountId", data.accountId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Region", data.region )
        |> JE.object


resourceFiltersEncoder : ResourceFilters -> JE.Value
resourceFiltersEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AccountId", data.accountId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceId", data.resourceId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceName", data.resourceName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Region", data.region )
        |> JE.object


resourceIdentifierEncoder : ResourceIdentifier -> JE.Value
resourceIdentifierEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ( "resourceType", data.resourceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "resourceId", data.resourceId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "resourceName", data.resourceName )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "resourceDeletionTime", data.resourceDeletionTime )
        |> JE.object


resourceKeyEncoder : ResourceKey -> JE.Value
resourceKeyEncoder data =
    []
        |> (::) ( "resourceType", data.resourceType |> (resourceTypeToString >> JE.string) )
        |> (::) ( "resourceId", data.resourceId |> JE.string )
        |> JE.object


resourceValueEncoder : ResourceValue -> JE.Value
resourceValueEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (resourceValueTypeToString >> JE.string)
            ( "Value", data.value )
        |> JE.object


retentionConfigurationEncoder : RetentionConfiguration -> JE.Value
retentionConfigurationEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> (::) ( "RetentionPeriodInDays", data.retentionPeriodInDays |> JE.int )
        |> JE.object


scopeEncoder : Scope -> JE.Value
scopeEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ComplianceResourceTypes", data.complianceResourceTypes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TagKey", data.tagKey )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TagValue", data.tagValue )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ComplianceResourceId", data.complianceResourceId )
        |> JE.object


selectResourceConfigRequestEncoder : SelectResourceConfigRequest -> JE.Value
selectResourceConfigRequestEncoder data =
    []
        |> (::) ( "Expression", data.expression |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


selectResourceConfigResponseEncoder : SelectResourceConfigResponse -> JE.Value
selectResourceConfigResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "Results", data.results )
        |> AWS.Core.Encode.optionalMember
            queryInfoEncoder
            ( "QueryInfo", data.queryInfo )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


sourceEncoder : Source -> JE.Value
sourceEncoder data =
    []
        |> (::) ( "Owner", data.owner |> (ownerToString >> JE.string) )
        |> (::) ( "SourceIdentifier", data.sourceIdentifier |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list sourceDetailEncoder)
            ( "SourceDetails", data.sourceDetails )
        |> JE.object


sourceDetailEncoder : SourceDetail -> JE.Value
sourceDetailEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (eventSourceToString >> JE.string)
            ( "EventSource", data.eventSource )
        |> AWS.Core.Encode.optionalMember
            (messageTypeToString >> JE.string)
            ( "MessageType", data.messageType )
        |> AWS.Core.Encode.optionalMember
            (maximumExecutionFrequencyToString >> JE.string)
            ( "MaximumExecutionFrequency", data.maximumExecutionFrequency )
        |> JE.object


startConfigRulesEvaluationRequestEncoder : StartConfigRulesEvaluationRequest -> JE.Value
startConfigRulesEvaluationRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ConfigRuleNames", data.configRuleNames )
        |> JE.object


startConfigRulesEvaluationResponseEncoder : StartConfigRulesEvaluationResponse -> JE.Value
startConfigRulesEvaluationResponseEncoder data =
    []
        |> JE.object


startConfigurationRecorderRequestEncoder : StartConfigurationRecorderRequest -> JE.Value
startConfigurationRecorderRequestEncoder data =
    []
        |> (::) ( "ConfigurationRecorderName", data.configurationRecorderName |> JE.string )
        |> JE.object


startRemediationExecutionRequestEncoder : StartRemediationExecutionRequest -> JE.Value
startRemediationExecutionRequestEncoder data =
    []
        |> (::) ( "ConfigRuleName", data.configRuleName |> JE.string )
        |> (::) ( "ResourceKeys", data.resourceKeys |> JE.list resourceKeyEncoder )
        |> JE.object


startRemediationExecutionResponseEncoder : StartRemediationExecutionResponse -> JE.Value
startRemediationExecutionResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FailureMessage", data.failureMessage )
        |> AWS.Core.Encode.optionalMember
            (JE.list resourceKeyEncoder)
            ( "FailedItems", data.failedItems )
        |> JE.object


staticValueEncoder : StaticValue -> JE.Value
staticValueEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "Values", data.values )
        |> JE.object


statusDetailFiltersEncoder : StatusDetailFilters -> JE.Value
statusDetailFiltersEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AccountId", data.accountId )
        |> AWS.Core.Encode.optionalMember
            (memberAccountRuleStatusToString >> JE.string)
            ( "MemberAccountRuleStatus", data.memberAccountRuleStatus )
        |> JE.object


stopConfigurationRecorderRequestEncoder : StopConfigurationRecorderRequest -> JE.Value
stopConfigurationRecorderRequestEncoder data =
    []
        |> (::) ( "ConfigurationRecorderName", data.configurationRecorderName |> JE.string )
        |> JE.object


tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Key", data.key )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Value", data.value )
        |> JE.object


tagResourceRequestEncoder : TagResourceRequest -> JE.Value
tagResourceRequestEncoder data =
    []
        |> (::) ( "ResourceArn", data.resourceArn |> JE.string )
        |> (::) ( "Tags", data.tags |> JE.list tagEncoder )
        |> JE.object


untagResourceRequestEncoder : UntagResourceRequest -> JE.Value
untagResourceRequestEncoder data =
    []
        |> (::) ( "ResourceArn", data.resourceArn |> JE.string )
        |> (::) ( "TagKeys", data.tagKeys |> JE.list JE.string )
        |> JE.object
