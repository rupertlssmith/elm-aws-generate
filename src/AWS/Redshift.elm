module AWS.Redshift exposing
    ( service
    , acceptReservedNodeExchange, authorizeClusterSecurityGroupIngress, AuthorizeClusterSecurityGroupIngressOptions, authorizeSnapshotAccess, AuthorizeSnapshotAccessOptions, batchDeleteClusterSnapshots, batchModifyClusterSnapshots, BatchModifyClusterSnapshotsOptions, cancelResize, copyClusterSnapshot, CopyClusterSnapshotOptions, createCluster, CreateClusterOptions, createClusterParameterGroup, CreateClusterParameterGroupOptions, createClusterSecurityGroup, CreateClusterSecurityGroupOptions, createClusterSnapshot, CreateClusterSnapshotOptions, createClusterSubnetGroup, CreateClusterSubnetGroupOptions, createEventSubscription, CreateEventSubscriptionOptions, createHsmClientCertificate, CreateHsmClientCertificateOptions, createHsmConfiguration, CreateHsmConfigurationOptions, createSnapshotCopyGrant, CreateSnapshotCopyGrantOptions, createSnapshotSchedule, CreateSnapshotScheduleOptions, createTags, deleteCluster, DeleteClusterOptions, deleteClusterParameterGroup, deleteClusterSecurityGroup, deleteClusterSnapshot, DeleteClusterSnapshotOptions, deleteClusterSubnetGroup, deleteEventSubscription, deleteHsmClientCertificate, deleteHsmConfiguration, deleteSnapshotCopyGrant, deleteSnapshotSchedule, deleteTags, describeAccountAttributes, DescribeAccountAttributesOptions, describeClusterDbRevisions, DescribeClusterDbRevisionsOptions, describeClusterParameterGroups, DescribeClusterParameterGroupsOptions, describeClusterParameters, DescribeClusterParametersOptions, describeClusterSecurityGroups, DescribeClusterSecurityGroupsOptions, describeClusterSnapshots, DescribeClusterSnapshotsOptions, describeClusterSubnetGroups, DescribeClusterSubnetGroupsOptions, describeClusterTracks, DescribeClusterTracksOptions, describeClusterVersions, DescribeClusterVersionsOptions, describeClusters, DescribeClustersOptions, describeDefaultClusterParameters, DescribeDefaultClusterParametersOptions, describeEventCategories, DescribeEventCategoriesOptions, describeEventSubscriptions, DescribeEventSubscriptionsOptions, describeEvents, DescribeEventsOptions, describeHsmClientCertificates, DescribeHsmClientCertificatesOptions, describeHsmConfigurations, DescribeHsmConfigurationsOptions, describeLoggingStatus, describeOrderableClusterOptions, DescribeOrderableClusterOptionsOptions, describeReservedNodeOfferings, DescribeReservedNodeOfferingsOptions, describeReservedNodes, DescribeReservedNodesOptions, describeResize, describeSnapshotCopyGrants, DescribeSnapshotCopyGrantsOptions, describeSnapshotSchedules, DescribeSnapshotSchedulesOptions, describeStorage, describeTableRestoreStatus, DescribeTableRestoreStatusOptions, describeTags, DescribeTagsOptions, disableLogging, disableSnapshotCopy, enableLogging, EnableLoggingOptions, enableSnapshotCopy, EnableSnapshotCopyOptions, getClusterCredentials, GetClusterCredentialsOptions, getReservedNodeExchangeOfferings, GetReservedNodeExchangeOfferingsOptions, modifyCluster, ModifyClusterOptions, modifyClusterDbRevision, modifyClusterIamRoles, ModifyClusterIamRolesOptions, modifyClusterMaintenance, ModifyClusterMaintenanceOptions, modifyClusterParameterGroup, modifyClusterSnapshot, ModifyClusterSnapshotOptions, modifyClusterSnapshotSchedule, ModifyClusterSnapshotScheduleOptions, modifyClusterSubnetGroup, ModifyClusterSubnetGroupOptions, modifyEventSubscription, ModifyEventSubscriptionOptions, modifySnapshotCopyRetentionPeriod, ModifySnapshotCopyRetentionPeriodOptions, modifySnapshotSchedule, purchaseReservedNodeOffering, PurchaseReservedNodeOfferingOptions, rebootCluster, resetClusterParameterGroup, ResetClusterParameterGroupOptions, resizeCluster, ResizeClusterOptions, restoreFromClusterSnapshot, RestoreFromClusterSnapshotOptions, restoreTableFromClusterSnapshot, RestoreTableFromClusterSnapshotOptions, revokeClusterSecurityGroupIngress, RevokeClusterSecurityGroupIngressOptions, revokeSnapshotAccess, RevokeSnapshotAccessOptions, rotateEncryptionKey
    , AcceptReservedNodeExchangeOutputMessage, AccountAttributeList, AuthorizeClusterSecurityGroupIngressResult, AuthorizeSnapshotAccessResult, BatchDeleteClusterSnapshotsResult, BatchModifyClusterSnapshotsOutputMessage, ClusterCredentials, ClusterDbRevisionsMessage, ClusterParameterGroupDetails, ClusterParameterGroupNameMessage, ClusterParameterGroupsMessage, ClusterSecurityGroupMessage, ClusterSubnetGroupMessage, ClusterVersionsMessage, ClustersMessage, CopyClusterSnapshotResult, CreateClusterParameterGroupResult, CreateClusterResult, CreateClusterSecurityGroupResult, CreateClusterSnapshotResult, CreateClusterSubnetGroupResult, CreateEventSubscriptionResult, CreateHsmClientCertificateResult, CreateHsmConfigurationResult, CreateSnapshotCopyGrantResult, CustomerStorageMessage, DeleteClusterResult, DeleteClusterSnapshotResult, DescribeDefaultClusterParametersResult, DescribeSnapshotSchedulesOutputMessage, DisableSnapshotCopyResult, EnableSnapshotCopyResult, EventCategoriesMessage, EventSubscriptionsMessage, EventsMessage, GetReservedNodeExchangeOfferingsOutputMessage, HsmClientCertificateMessage, HsmConfigurationMessage, LoggingStatus, ModifyClusterDbRevisionResult, ModifyClusterIamRolesResult, ModifyClusterMaintenanceResult, ModifyClusterResult, ModifyClusterSnapshotResult, ModifyClusterSubnetGroupResult, ModifyEventSubscriptionResult, ModifySnapshotCopyRetentionPeriodResult, OrderableClusterOptionsMessage, PurchaseReservedNodeOfferingResult, RebootClusterResult, ReservedNodeOfferingsMessage, ReservedNodesMessage, ResizeClusterResult, ResizeProgressMessage, RestoreFromClusterSnapshotResult, RestoreTableFromClusterSnapshotResult, RevokeClusterSecurityGroupIngressResult, RevokeSnapshotAccessResult, RotateEncryptionKeyResult, SnapshotCopyGrantMessage, SnapshotMessage, SnapshotSchedule, TableRestoreStatusMessage, TaggedResourceListMessage, TrackListMessage
    , AccountAttribute, AccountWithRestoreAccess, AttributeValueTarget, AvailabilityZone, Cluster, ClusterAssociatedToSchedule, ClusterDbRevision, ClusterIamRole, ClusterNode, ClusterParameterGroup, ClusterParameterGroupStatus, ClusterParameterStatus, ClusterSecurityGroup, ClusterSecurityGroupMembership, ClusterSnapshotCopyStatus, ClusterSubnetGroup, ClusterVersion, DataTransferProgress, DefaultClusterParameters, DeferredMaintenanceWindow, EC2SecurityGroup, ElasticIpStatus, Endpoint, Event, EventCategoriesMap, EventInfoMap, EventSubscription, HsmClientCertificate, HsmConfiguration, HsmStatus, IPRange, MaintenanceTrack, OrderableClusterOption, Parameter, PendingModifiedValues, RecurringCharge, ReservedNode, ReservedNodeOffering, ResizeInfo, RestoreStatus, RevisionTarget, Snapshot, SnapshotCopyGrant, SnapshotErrorMessage, SnapshotSortingEntity, Subnet, SupportedOperation, SupportedPlatform, TableRestoreStatus, Tag, TaggedResource, UpdateTarget, VpcSecurityGroupMembership
    , ParameterApplyType(..), ReservedNodeOfferingType(..), ScheduleState(..), SnapshotAttributeToSortBy(..), SortByOrder(..), SourceType(..), TableRestoreStatusType(..)
    )

{-| <fullname>Amazon Redshift</fullname> <p> <b>Overview</b> </p> <p>This is an interface reference for Amazon Redshift. It contains documentation for one of the programming or command line interfaces you can use to manage Amazon Redshift clusters. Note that Amazon Redshift is asynchronous, which means that some interfaces may require techniques, such as polling or asynchronous callback handlers, to determine when a command has been applied. In this reference, the parameter descriptions indicate whether a change is applied immediately, on the next instance reboot, or during the next maintenance window. For a summary of the Amazon Redshift cluster management interfaces, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html">Using the Amazon Redshift Management Interfaces</a>.</p> <p>Amazon Redshift manages all the work of setting up, operating, and scaling a data warehouse: provisioning capacity, monitoring and backing up the cluster, and applying patches and upgrades to the Amazon Redshift engine. You can focus on using your data to acquire new insights for your business and customers.</p> <p>If you are a first-time user of Amazon Redshift, we recommend that you begin by reading the <a href="https://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html">Amazon Redshift Getting Started Guide</a>.</p> <p>If you are a database developer, the <a href="https://docs.aws.amazon.com/redshift/latest/dg/welcome.html">Amazon Redshift Database Developer Guide</a> explains how to design, build, query, and maintain the databases that make up your data warehouse. </p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [acceptReservedNodeExchange](#acceptReservedNodeExchange)
  - [authorizeClusterSecurityGroupIngress](#authorizeClusterSecurityGroupIngress)
  - [AuthorizeClusterSecurityGroupIngressOptions](#AuthorizeClusterSecurityGroupIngressOptions)
  - [authorizeSnapshotAccess](#authorizeSnapshotAccess)
  - [AuthorizeSnapshotAccessOptions](#AuthorizeSnapshotAccessOptions)
  - [batchDeleteClusterSnapshots](#batchDeleteClusterSnapshots)
  - [batchModifyClusterSnapshots](#batchModifyClusterSnapshots)
  - [BatchModifyClusterSnapshotsOptions](#BatchModifyClusterSnapshotsOptions)
  - [cancelResize](#cancelResize)
  - [copyClusterSnapshot](#copyClusterSnapshot)
  - [CopyClusterSnapshotOptions](#CopyClusterSnapshotOptions)
  - [createCluster](#createCluster)
  - [CreateClusterOptions](#CreateClusterOptions)
  - [createClusterParameterGroup](#createClusterParameterGroup)
  - [CreateClusterParameterGroupOptions](#CreateClusterParameterGroupOptions)
  - [createClusterSecurityGroup](#createClusterSecurityGroup)
  - [CreateClusterSecurityGroupOptions](#CreateClusterSecurityGroupOptions)
  - [createClusterSnapshot](#createClusterSnapshot)
  - [CreateClusterSnapshotOptions](#CreateClusterSnapshotOptions)
  - [createClusterSubnetGroup](#createClusterSubnetGroup)
  - [CreateClusterSubnetGroupOptions](#CreateClusterSubnetGroupOptions)
  - [createEventSubscription](#createEventSubscription)
  - [CreateEventSubscriptionOptions](#CreateEventSubscriptionOptions)
  - [createHsmClientCertificate](#createHsmClientCertificate)
  - [CreateHsmClientCertificateOptions](#CreateHsmClientCertificateOptions)
  - [createHsmConfiguration](#createHsmConfiguration)
  - [CreateHsmConfigurationOptions](#CreateHsmConfigurationOptions)
  - [createSnapshotCopyGrant](#createSnapshotCopyGrant)
  - [CreateSnapshotCopyGrantOptions](#CreateSnapshotCopyGrantOptions)
  - [createSnapshotSchedule](#createSnapshotSchedule)
  - [CreateSnapshotScheduleOptions](#CreateSnapshotScheduleOptions)
  - [createTags](#createTags)
  - [deleteCluster](#deleteCluster)
  - [DeleteClusterOptions](#DeleteClusterOptions)
  - [deleteClusterParameterGroup](#deleteClusterParameterGroup)
  - [deleteClusterSecurityGroup](#deleteClusterSecurityGroup)
  - [deleteClusterSnapshot](#deleteClusterSnapshot)
  - [DeleteClusterSnapshotOptions](#DeleteClusterSnapshotOptions)
  - [deleteClusterSubnetGroup](#deleteClusterSubnetGroup)
  - [deleteEventSubscription](#deleteEventSubscription)
  - [deleteHsmClientCertificate](#deleteHsmClientCertificate)
  - [deleteHsmConfiguration](#deleteHsmConfiguration)
  - [deleteSnapshotCopyGrant](#deleteSnapshotCopyGrant)
  - [deleteSnapshotSchedule](#deleteSnapshotSchedule)
  - [deleteTags](#deleteTags)
  - [describeAccountAttributes](#describeAccountAttributes)
  - [DescribeAccountAttributesOptions](#DescribeAccountAttributesOptions)
  - [describeClusterDbRevisions](#describeClusterDbRevisions)
  - [DescribeClusterDbRevisionsOptions](#DescribeClusterDbRevisionsOptions)
  - [describeClusterParameterGroups](#describeClusterParameterGroups)
  - [DescribeClusterParameterGroupsOptions](#DescribeClusterParameterGroupsOptions)
  - [describeClusterParameters](#describeClusterParameters)
  - [DescribeClusterParametersOptions](#DescribeClusterParametersOptions)
  - [describeClusterSecurityGroups](#describeClusterSecurityGroups)
  - [DescribeClusterSecurityGroupsOptions](#DescribeClusterSecurityGroupsOptions)
  - [describeClusterSnapshots](#describeClusterSnapshots)
  - [DescribeClusterSnapshotsOptions](#DescribeClusterSnapshotsOptions)
  - [describeClusterSubnetGroups](#describeClusterSubnetGroups)
  - [DescribeClusterSubnetGroupsOptions](#DescribeClusterSubnetGroupsOptions)
  - [describeClusterTracks](#describeClusterTracks)
  - [DescribeClusterTracksOptions](#DescribeClusterTracksOptions)
  - [describeClusterVersions](#describeClusterVersions)
  - [DescribeClusterVersionsOptions](#DescribeClusterVersionsOptions)
  - [describeClusters](#describeClusters)
  - [DescribeClustersOptions](#DescribeClustersOptions)
  - [describeDefaultClusterParameters](#describeDefaultClusterParameters)
  - [DescribeDefaultClusterParametersOptions](#DescribeDefaultClusterParametersOptions)
  - [describeEventCategories](#describeEventCategories)
  - [DescribeEventCategoriesOptions](#DescribeEventCategoriesOptions)
  - [describeEventSubscriptions](#describeEventSubscriptions)
  - [DescribeEventSubscriptionsOptions](#DescribeEventSubscriptionsOptions)
  - [describeEvents](#describeEvents)
  - [DescribeEventsOptions](#DescribeEventsOptions)
  - [describeHsmClientCertificates](#describeHsmClientCertificates)
  - [DescribeHsmClientCertificatesOptions](#DescribeHsmClientCertificatesOptions)
  - [describeHsmConfigurations](#describeHsmConfigurations)
  - [DescribeHsmConfigurationsOptions](#DescribeHsmConfigurationsOptions)
  - [describeLoggingStatus](#describeLoggingStatus)
  - [describeOrderableClusterOptions](#describeOrderableClusterOptions)
  - [DescribeOrderableClusterOptionsOptions](#DescribeOrderableClusterOptionsOptions)
  - [describeReservedNodeOfferings](#describeReservedNodeOfferings)
  - [DescribeReservedNodeOfferingsOptions](#DescribeReservedNodeOfferingsOptions)
  - [describeReservedNodes](#describeReservedNodes)
  - [DescribeReservedNodesOptions](#DescribeReservedNodesOptions)
  - [describeResize](#describeResize)
  - [describeSnapshotCopyGrants](#describeSnapshotCopyGrants)
  - [DescribeSnapshotCopyGrantsOptions](#DescribeSnapshotCopyGrantsOptions)
  - [describeSnapshotSchedules](#describeSnapshotSchedules)
  - [DescribeSnapshotSchedulesOptions](#DescribeSnapshotSchedulesOptions)
  - [describeStorage](#describeStorage)
  - [describeTableRestoreStatus](#describeTableRestoreStatus)
  - [DescribeTableRestoreStatusOptions](#DescribeTableRestoreStatusOptions)
  - [describeTags](#describeTags)
  - [DescribeTagsOptions](#DescribeTagsOptions)
  - [disableLogging](#disableLogging)
  - [disableSnapshotCopy](#disableSnapshotCopy)
  - [enableLogging](#enableLogging)
  - [EnableLoggingOptions](#EnableLoggingOptions)
  - [enableSnapshotCopy](#enableSnapshotCopy)
  - [EnableSnapshotCopyOptions](#EnableSnapshotCopyOptions)
  - [getClusterCredentials](#getClusterCredentials)
  - [GetClusterCredentialsOptions](#GetClusterCredentialsOptions)
  - [getReservedNodeExchangeOfferings](#getReservedNodeExchangeOfferings)
  - [GetReservedNodeExchangeOfferingsOptions](#GetReservedNodeExchangeOfferingsOptions)
  - [modifyCluster](#modifyCluster)
  - [ModifyClusterOptions](#ModifyClusterOptions)
  - [modifyClusterDbRevision](#modifyClusterDbRevision)
  - [modifyClusterIamRoles](#modifyClusterIamRoles)
  - [ModifyClusterIamRolesOptions](#ModifyClusterIamRolesOptions)
  - [modifyClusterMaintenance](#modifyClusterMaintenance)
  - [ModifyClusterMaintenanceOptions](#ModifyClusterMaintenanceOptions)
  - [modifyClusterParameterGroup](#modifyClusterParameterGroup)
  - [modifyClusterSnapshot](#modifyClusterSnapshot)
  - [ModifyClusterSnapshotOptions](#ModifyClusterSnapshotOptions)
  - [modifyClusterSnapshotSchedule](#modifyClusterSnapshotSchedule)
  - [ModifyClusterSnapshotScheduleOptions](#ModifyClusterSnapshotScheduleOptions)
  - [modifyClusterSubnetGroup](#modifyClusterSubnetGroup)
  - [ModifyClusterSubnetGroupOptions](#ModifyClusterSubnetGroupOptions)
  - [modifyEventSubscription](#modifyEventSubscription)
  - [ModifyEventSubscriptionOptions](#ModifyEventSubscriptionOptions)
  - [modifySnapshotCopyRetentionPeriod](#modifySnapshotCopyRetentionPeriod)
  - [ModifySnapshotCopyRetentionPeriodOptions](#ModifySnapshotCopyRetentionPeriodOptions)
  - [modifySnapshotSchedule](#modifySnapshotSchedule)
  - [purchaseReservedNodeOffering](#purchaseReservedNodeOffering)
  - [PurchaseReservedNodeOfferingOptions](#PurchaseReservedNodeOfferingOptions)
  - [rebootCluster](#rebootCluster)
  - [resetClusterParameterGroup](#resetClusterParameterGroup)
  - [ResetClusterParameterGroupOptions](#ResetClusterParameterGroupOptions)
  - [resizeCluster](#resizeCluster)
  - [ResizeClusterOptions](#ResizeClusterOptions)
  - [restoreFromClusterSnapshot](#restoreFromClusterSnapshot)
  - [RestoreFromClusterSnapshotOptions](#RestoreFromClusterSnapshotOptions)
  - [restoreTableFromClusterSnapshot](#restoreTableFromClusterSnapshot)
  - [RestoreTableFromClusterSnapshotOptions](#RestoreTableFromClusterSnapshotOptions)
  - [revokeClusterSecurityGroupIngress](#revokeClusterSecurityGroupIngress)
  - [RevokeClusterSecurityGroupIngressOptions](#RevokeClusterSecurityGroupIngressOptions)
  - [revokeSnapshotAccess](#revokeSnapshotAccess)
  - [RevokeSnapshotAccessOptions](#RevokeSnapshotAccessOptions)
  - [rotateEncryptionKey](#rotateEncryptionKey)

@docs acceptReservedNodeExchange, authorizeClusterSecurityGroupIngress, AuthorizeClusterSecurityGroupIngressOptions, authorizeSnapshotAccess, AuthorizeSnapshotAccessOptions, batchDeleteClusterSnapshots, batchModifyClusterSnapshots, BatchModifyClusterSnapshotsOptions, cancelResize, copyClusterSnapshot, CopyClusterSnapshotOptions, createCluster, CreateClusterOptions, createClusterParameterGroup, CreateClusterParameterGroupOptions, createClusterSecurityGroup, CreateClusterSecurityGroupOptions, createClusterSnapshot, CreateClusterSnapshotOptions, createClusterSubnetGroup, CreateClusterSubnetGroupOptions, createEventSubscription, CreateEventSubscriptionOptions, createHsmClientCertificate, CreateHsmClientCertificateOptions, createHsmConfiguration, CreateHsmConfigurationOptions, createSnapshotCopyGrant, CreateSnapshotCopyGrantOptions, createSnapshotSchedule, CreateSnapshotScheduleOptions, createTags, deleteCluster, DeleteClusterOptions, deleteClusterParameterGroup, deleteClusterSecurityGroup, deleteClusterSnapshot, DeleteClusterSnapshotOptions, deleteClusterSubnetGroup, deleteEventSubscription, deleteHsmClientCertificate, deleteHsmConfiguration, deleteSnapshotCopyGrant, deleteSnapshotSchedule, deleteTags, describeAccountAttributes, DescribeAccountAttributesOptions, describeClusterDbRevisions, DescribeClusterDbRevisionsOptions, describeClusterParameterGroups, DescribeClusterParameterGroupsOptions, describeClusterParameters, DescribeClusterParametersOptions, describeClusterSecurityGroups, DescribeClusterSecurityGroupsOptions, describeClusterSnapshots, DescribeClusterSnapshotsOptions, describeClusterSubnetGroups, DescribeClusterSubnetGroupsOptions, describeClusterTracks, DescribeClusterTracksOptions, describeClusterVersions, DescribeClusterVersionsOptions, describeClusters, DescribeClustersOptions, describeDefaultClusterParameters, DescribeDefaultClusterParametersOptions, describeEventCategories, DescribeEventCategoriesOptions, describeEventSubscriptions, DescribeEventSubscriptionsOptions, describeEvents, DescribeEventsOptions, describeHsmClientCertificates, DescribeHsmClientCertificatesOptions, describeHsmConfigurations, DescribeHsmConfigurationsOptions, describeLoggingStatus, describeOrderableClusterOptions, DescribeOrderableClusterOptionsOptions, describeReservedNodeOfferings, DescribeReservedNodeOfferingsOptions, describeReservedNodes, DescribeReservedNodesOptions, describeResize, describeSnapshotCopyGrants, DescribeSnapshotCopyGrantsOptions, describeSnapshotSchedules, DescribeSnapshotSchedulesOptions, describeStorage, describeTableRestoreStatus, DescribeTableRestoreStatusOptions, describeTags, DescribeTagsOptions, disableLogging, disableSnapshotCopy, enableLogging, EnableLoggingOptions, enableSnapshotCopy, EnableSnapshotCopyOptions, getClusterCredentials, GetClusterCredentialsOptions, getReservedNodeExchangeOfferings, GetReservedNodeExchangeOfferingsOptions, modifyCluster, ModifyClusterOptions, modifyClusterDbRevision, modifyClusterIamRoles, ModifyClusterIamRolesOptions, modifyClusterMaintenance, ModifyClusterMaintenanceOptions, modifyClusterParameterGroup, modifyClusterSnapshot, ModifyClusterSnapshotOptions, modifyClusterSnapshotSchedule, ModifyClusterSnapshotScheduleOptions, modifyClusterSubnetGroup, ModifyClusterSubnetGroupOptions, modifyEventSubscription, ModifyEventSubscriptionOptions, modifySnapshotCopyRetentionPeriod, ModifySnapshotCopyRetentionPeriodOptions, modifySnapshotSchedule, purchaseReservedNodeOffering, PurchaseReservedNodeOfferingOptions, rebootCluster, resetClusterParameterGroup, ResetClusterParameterGroupOptions, resizeCluster, ResizeClusterOptions, restoreFromClusterSnapshot, RestoreFromClusterSnapshotOptions, restoreTableFromClusterSnapshot, RestoreTableFromClusterSnapshotOptions, revokeClusterSecurityGroupIngress, RevokeClusterSecurityGroupIngressOptions, revokeSnapshotAccess, RevokeSnapshotAccessOptions, rotateEncryptionKey


## Responses

  - [AcceptReservedNodeExchangeOutputMessage](#AcceptReservedNodeExchangeOutputMessage)
  - [AccountAttributeList](#AccountAttributeList)
  - [AuthorizeClusterSecurityGroupIngressResult](#AuthorizeClusterSecurityGroupIngressResult)
  - [AuthorizeSnapshotAccessResult](#AuthorizeSnapshotAccessResult)
  - [BatchDeleteClusterSnapshotsResult](#BatchDeleteClusterSnapshotsResult)
  - [BatchModifyClusterSnapshotsOutputMessage](#BatchModifyClusterSnapshotsOutputMessage)
  - [ClusterCredentials](#ClusterCredentials)
  - [ClusterDbRevisionsMessage](#ClusterDbRevisionsMessage)
  - [ClusterParameterGroupDetails](#ClusterParameterGroupDetails)
  - [ClusterParameterGroupNameMessage](#ClusterParameterGroupNameMessage)
  - [ClusterParameterGroupsMessage](#ClusterParameterGroupsMessage)
  - [ClusterSecurityGroupMessage](#ClusterSecurityGroupMessage)
  - [ClusterSubnetGroupMessage](#ClusterSubnetGroupMessage)
  - [ClusterVersionsMessage](#ClusterVersionsMessage)
  - [ClustersMessage](#ClustersMessage)
  - [CopyClusterSnapshotResult](#CopyClusterSnapshotResult)
  - [CreateClusterParameterGroupResult](#CreateClusterParameterGroupResult)
  - [CreateClusterResult](#CreateClusterResult)
  - [CreateClusterSecurityGroupResult](#CreateClusterSecurityGroupResult)
  - [CreateClusterSnapshotResult](#CreateClusterSnapshotResult)
  - [CreateClusterSubnetGroupResult](#CreateClusterSubnetGroupResult)
  - [CreateEventSubscriptionResult](#CreateEventSubscriptionResult)
  - [CreateHsmClientCertificateResult](#CreateHsmClientCertificateResult)
  - [CreateHsmConfigurationResult](#CreateHsmConfigurationResult)
  - [CreateSnapshotCopyGrantResult](#CreateSnapshotCopyGrantResult)
  - [CustomerStorageMessage](#CustomerStorageMessage)
  - [DeleteClusterResult](#DeleteClusterResult)
  - [DeleteClusterSnapshotResult](#DeleteClusterSnapshotResult)
  - [DescribeDefaultClusterParametersResult](#DescribeDefaultClusterParametersResult)
  - [DescribeSnapshotSchedulesOutputMessage](#DescribeSnapshotSchedulesOutputMessage)
  - [DisableSnapshotCopyResult](#DisableSnapshotCopyResult)
  - [EnableSnapshotCopyResult](#EnableSnapshotCopyResult)
  - [EventCategoriesMessage](#EventCategoriesMessage)
  - [EventSubscriptionsMessage](#EventSubscriptionsMessage)
  - [EventsMessage](#EventsMessage)
  - [GetReservedNodeExchangeOfferingsOutputMessage](#GetReservedNodeExchangeOfferingsOutputMessage)
  - [HsmClientCertificateMessage](#HsmClientCertificateMessage)
  - [HsmConfigurationMessage](#HsmConfigurationMessage)
  - [LoggingStatus](#LoggingStatus)
  - [ModifyClusterDbRevisionResult](#ModifyClusterDbRevisionResult)
  - [ModifyClusterIamRolesResult](#ModifyClusterIamRolesResult)
  - [ModifyClusterMaintenanceResult](#ModifyClusterMaintenanceResult)
  - [ModifyClusterResult](#ModifyClusterResult)
  - [ModifyClusterSnapshotResult](#ModifyClusterSnapshotResult)
  - [ModifyClusterSubnetGroupResult](#ModifyClusterSubnetGroupResult)
  - [ModifyEventSubscriptionResult](#ModifyEventSubscriptionResult)
  - [ModifySnapshotCopyRetentionPeriodResult](#ModifySnapshotCopyRetentionPeriodResult)
  - [OrderableClusterOptionsMessage](#OrderableClusterOptionsMessage)
  - [PurchaseReservedNodeOfferingResult](#PurchaseReservedNodeOfferingResult)
  - [RebootClusterResult](#RebootClusterResult)
  - [ReservedNodeOfferingsMessage](#ReservedNodeOfferingsMessage)
  - [ReservedNodesMessage](#ReservedNodesMessage)
  - [ResizeClusterResult](#ResizeClusterResult)
  - [ResizeProgressMessage](#ResizeProgressMessage)
  - [RestoreFromClusterSnapshotResult](#RestoreFromClusterSnapshotResult)
  - [RestoreTableFromClusterSnapshotResult](#RestoreTableFromClusterSnapshotResult)
  - [RevokeClusterSecurityGroupIngressResult](#RevokeClusterSecurityGroupIngressResult)
  - [RevokeSnapshotAccessResult](#RevokeSnapshotAccessResult)
  - [RotateEncryptionKeyResult](#RotateEncryptionKeyResult)
  - [SnapshotCopyGrantMessage](#SnapshotCopyGrantMessage)
  - [SnapshotMessage](#SnapshotMessage)
  - [SnapshotSchedule](#SnapshotSchedule)
  - [TableRestoreStatusMessage](#TableRestoreStatusMessage)
  - [TaggedResourceListMessage](#TaggedResourceListMessage)
  - [TrackListMessage](#TrackListMessage)

@docs AcceptReservedNodeExchangeOutputMessage, AccountAttributeList, AuthorizeClusterSecurityGroupIngressResult, AuthorizeSnapshotAccessResult, BatchDeleteClusterSnapshotsResult, BatchModifyClusterSnapshotsOutputMessage, ClusterCredentials, ClusterDbRevisionsMessage, ClusterParameterGroupDetails, ClusterParameterGroupNameMessage, ClusterParameterGroupsMessage, ClusterSecurityGroupMessage, ClusterSubnetGroupMessage, ClusterVersionsMessage, ClustersMessage, CopyClusterSnapshotResult, CreateClusterParameterGroupResult, CreateClusterResult, CreateClusterSecurityGroupResult, CreateClusterSnapshotResult, CreateClusterSubnetGroupResult, CreateEventSubscriptionResult, CreateHsmClientCertificateResult, CreateHsmConfigurationResult, CreateSnapshotCopyGrantResult, CustomerStorageMessage, DeleteClusterResult, DeleteClusterSnapshotResult, DescribeDefaultClusterParametersResult, DescribeSnapshotSchedulesOutputMessage, DisableSnapshotCopyResult, EnableSnapshotCopyResult, EventCategoriesMessage, EventSubscriptionsMessage, EventsMessage, GetReservedNodeExchangeOfferingsOutputMessage, HsmClientCertificateMessage, HsmConfigurationMessage, LoggingStatus, ModifyClusterDbRevisionResult, ModifyClusterIamRolesResult, ModifyClusterMaintenanceResult, ModifyClusterResult, ModifyClusterSnapshotResult, ModifyClusterSubnetGroupResult, ModifyEventSubscriptionResult, ModifySnapshotCopyRetentionPeriodResult, OrderableClusterOptionsMessage, PurchaseReservedNodeOfferingResult, RebootClusterResult, ReservedNodeOfferingsMessage, ReservedNodesMessage, ResizeClusterResult, ResizeProgressMessage, RestoreFromClusterSnapshotResult, RestoreTableFromClusterSnapshotResult, RevokeClusterSecurityGroupIngressResult, RevokeSnapshotAccessResult, RotateEncryptionKeyResult, SnapshotCopyGrantMessage, SnapshotMessage, SnapshotSchedule, TableRestoreStatusMessage, TaggedResourceListMessage, TrackListMessage


## Records

  - [AccountAttribute](#AccountAttribute)
  - [AccountWithRestoreAccess](#AccountWithRestoreAccess)
  - [AttributeValueTarget](#AttributeValueTarget)
  - [AvailabilityZone](#AvailabilityZone)
  - [Cluster](#Cluster)
  - [ClusterAssociatedToSchedule](#ClusterAssociatedToSchedule)
  - [ClusterDbRevision](#ClusterDbRevision)
  - [ClusterIamRole](#ClusterIamRole)
  - [ClusterNode](#ClusterNode)
  - [ClusterParameterGroup](#ClusterParameterGroup)
  - [ClusterParameterGroupStatus](#ClusterParameterGroupStatus)
  - [ClusterParameterStatus](#ClusterParameterStatus)
  - [ClusterSecurityGroup](#ClusterSecurityGroup)
  - [ClusterSecurityGroupMembership](#ClusterSecurityGroupMembership)
  - [ClusterSnapshotCopyStatus](#ClusterSnapshotCopyStatus)
  - [ClusterSubnetGroup](#ClusterSubnetGroup)
  - [ClusterVersion](#ClusterVersion)
  - [DataTransferProgress](#DataTransferProgress)
  - [DefaultClusterParameters](#DefaultClusterParameters)
  - [DeferredMaintenanceWindow](#DeferredMaintenanceWindow)
  - [EC2SecurityGroup](#EC2SecurityGroup)
  - [ElasticIpStatus](#ElasticIpStatus)
  - [Endpoint](#Endpoint)
  - [Event](#Event)
  - [EventCategoriesMap](#EventCategoriesMap)
  - [EventInfoMap](#EventInfoMap)
  - [EventSubscription](#EventSubscription)
  - [HsmClientCertificate](#HsmClientCertificate)
  - [HsmConfiguration](#HsmConfiguration)
  - [HsmStatus](#HsmStatus)
  - [IPRange](#IPRange)
  - [MaintenanceTrack](#MaintenanceTrack)
  - [OrderableClusterOption](#OrderableClusterOption)
  - [Parameter](#Parameter)
  - [PendingModifiedValues](#PendingModifiedValues)
  - [RecurringCharge](#RecurringCharge)
  - [ReservedNode](#ReservedNode)
  - [ReservedNodeOffering](#ReservedNodeOffering)
  - [ResizeInfo](#ResizeInfo)
  - [RestoreStatus](#RestoreStatus)
  - [RevisionTarget](#RevisionTarget)
  - [Snapshot](#Snapshot)
  - [SnapshotCopyGrant](#SnapshotCopyGrant)
  - [SnapshotErrorMessage](#SnapshotErrorMessage)
  - [SnapshotSortingEntity](#SnapshotSortingEntity)
  - [Subnet](#Subnet)
  - [SupportedOperation](#SupportedOperation)
  - [SupportedPlatform](#SupportedPlatform)
  - [TableRestoreStatus](#TableRestoreStatus)
  - [Tag](#Tag)
  - [TaggedResource](#TaggedResource)
  - [UpdateTarget](#UpdateTarget)
  - [VpcSecurityGroupMembership](#VpcSecurityGroupMembership)

@docs AccountAttribute, AccountWithRestoreAccess, AttributeValueTarget, AvailabilityZone, Cluster, ClusterAssociatedToSchedule, ClusterDbRevision, ClusterIamRole, ClusterNode, ClusterParameterGroup, ClusterParameterGroupStatus, ClusterParameterStatus, ClusterSecurityGroup, ClusterSecurityGroupMembership, ClusterSnapshotCopyStatus, ClusterSubnetGroup, ClusterVersion, DataTransferProgress, DefaultClusterParameters, DeferredMaintenanceWindow, EC2SecurityGroup, ElasticIpStatus, Endpoint, Event, EventCategoriesMap, EventInfoMap, EventSubscription, HsmClientCertificate, HsmConfiguration, HsmStatus, IPRange, MaintenanceTrack, OrderableClusterOption, Parameter, PendingModifiedValues, RecurringCharge, ReservedNode, ReservedNodeOffering, ResizeInfo, RestoreStatus, RevisionTarget, Snapshot, SnapshotCopyGrant, SnapshotErrorMessage, SnapshotSortingEntity, Subnet, SupportedOperation, SupportedPlatform, TableRestoreStatus, Tag, TaggedResource, UpdateTarget, VpcSecurityGroupMembership


## Unions

  - [ParameterApplyType](#ParameterApplyType)
  - [ReservedNodeOfferingType](#ReservedNodeOfferingType)
  - [ScheduleState](#ScheduleState)
  - [SnapshotAttributeToSortBy](#SnapshotAttributeToSortBy)
  - [SortByOrder](#SortByOrder)
  - [SourceType](#SourceType)
  - [TableRestoreStatusType](#TableRestoreStatusType)

@docs ParameterApplyType, ReservedNodeOfferingType, ScheduleState, SnapshotAttributeToSortBy, SortByOrder, SourceType, TableRestoreStatusType

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
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
        "redshift"
        "2012-12-01"
        AWS.Core.Service.query
        AWS.Core.Service.signV4
        (AWS.Core.Service.setXmlNamespace "http://redshift.amazonaws.com/doc/2012-12-01/")



-- OPERATIONS


{-|

<p>Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes to the configuration (term, payment type, or number of nodes) and no additional costs. </p>

**Required Parameters**

  - `reservedNodeId` **:** `String`
  - `targetReservedNodeOfferingId` **:** `String`

-}
acceptReservedNodeExchange :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AcceptReservedNodeExchangeOutputMessage)
acceptReservedNodeExchange reservedNodeId targetReservedNodeOfferingId =
    let
        requestInput =
            AcceptReservedNodeExchangeInputMessage
                reservedNodeId
                targetReservedNodeOfferingId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "AcceptReservedNodeExchange")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs acceptReservedNodeExchangeInputMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "AcceptReservedNodeExchange"
            (AWS.Core.Decode.ResultDecoder "AcceptReservedNodeExchangeResult" acceptReservedNodeExchangeOutputMessageDecoder)
        )


{-|

<p>Adds an inbound (ingress) rule to an Amazon Redshift security group. Depending on whether the application accessing your cluster is running on the Internet or an Amazon EC2 instance, you can authorize inbound access to either a Classless Interdomain Routing (CIDR)/Internet Protocol (IP) range or to an Amazon EC2 security group. You can add as many as 20 ingress rules to an Amazon Redshift security group.</p> <p>If you authorize access to an Amazon EC2 security group, specify <i>EC2SecurityGroupName</i> and <i>EC2SecurityGroupOwnerId</i>. The Amazon EC2 security group and Amazon Redshift cluster must be in the same AWS Region. </p> <p>If you authorize access to a CIDR/IP address range, specify <i>CIDRIP</i>. For an overview of CIDR blocks, see the Wikipedia article on <a href="http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>. </p> <p>You must also associate the security group with a cluster so that clients running on these IP addresses or the EC2 instance are authorized to connect to the cluster. For information about managing security groups, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Working with Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `clusterSecurityGroupName` **:** `String`

-}
authorizeClusterSecurityGroupIngress :
    String
    -> (AuthorizeClusterSecurityGroupIngressOptions -> AuthorizeClusterSecurityGroupIngressOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AuthorizeClusterSecurityGroupIngressResult)
authorizeClusterSecurityGroupIngress clusterSecurityGroupName setOptions =
    let
        requestInput =
            AuthorizeClusterSecurityGroupIngressMessage
                clusterSecurityGroupName
                options.cIDRIP
                options.eC2SecurityGroupName
                options.eC2SecurityGroupOwnerId

        options =
            setOptions (AuthorizeClusterSecurityGroupIngressOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "AuthorizeClusterSecurityGroupIngress")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs authorizeClusterSecurityGroupIngressMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "AuthorizeClusterSecurityGroupIngress"
            (AWS.Core.Decode.ResultDecoder "AuthorizeClusterSecurityGroupIngressResult" authorizeClusterSecurityGroupIngressResultDecoder)
        )


{-| Options for a authorizeClusterSecurityGroupIngress request
-}
type alias AuthorizeClusterSecurityGroupIngressOptions =
    { cIDRIP : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    }


{-|

<p>Authorizes the specified AWS customer account to restore the specified snapshot.</p> <p> For more information about working with snapshots, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `snapshotIdentifier` **:** `String`
  - `accountWithRestoreAccess` **:** `String`

-}
authorizeSnapshotAccess :
    String
    -> String
    -> (AuthorizeSnapshotAccessOptions -> AuthorizeSnapshotAccessOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AuthorizeSnapshotAccessResult)
authorizeSnapshotAccess snapshotIdentifier accountWithRestoreAccess setOptions =
    let
        requestInput =
            AuthorizeSnapshotAccessMessage
                snapshotIdentifier
                options.snapshotClusterIdentifier
                accountWithRestoreAccess

        options =
            setOptions (AuthorizeSnapshotAccessOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "AuthorizeSnapshotAccess")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs authorizeSnapshotAccessMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "AuthorizeSnapshotAccess"
            (AWS.Core.Decode.ResultDecoder "AuthorizeSnapshotAccessResult" authorizeSnapshotAccessResultDecoder)
        )


{-| Options for a authorizeSnapshotAccess request
-}
type alias AuthorizeSnapshotAccessOptions =
    { snapshotClusterIdentifier : Maybe String
    }


{-|

<p>Deletes a set of cluster snapshots.</p>

**Required Parameters**

  - `identifiers` **:** `(List DeleteClusterSnapshotMessage)`

-}
batchDeleteClusterSnapshots :
    List DeleteClusterSnapshotMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchDeleteClusterSnapshotsResult)
batchDeleteClusterSnapshots identifiers =
    let
        requestInput =
            BatchDeleteClusterSnapshotsRequest
                identifiers
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "BatchDeleteClusterSnapshots")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs batchDeleteClusterSnapshotsRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchDeleteClusterSnapshots"
            (AWS.Core.Decode.ResultDecoder "BatchDeleteClusterSnapshotsResult" batchDeleteClusterSnapshotsResultDecoder)
        )


{-|

<p>Modifies the settings for a list of snapshots.</p>

**Required Parameters**

  - `snapshotIdentifierList` **:** `(List String)`

-}
batchModifyClusterSnapshots :
    List String
    -> (BatchModifyClusterSnapshotsOptions -> BatchModifyClusterSnapshotsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchModifyClusterSnapshotsOutputMessage)
batchModifyClusterSnapshots snapshotIdentifierList setOptions =
    let
        requestInput =
            BatchModifyClusterSnapshotsMessage
                snapshotIdentifierList
                options.manualSnapshotRetentionPeriod
                options.force

        options =
            setOptions (BatchModifyClusterSnapshotsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "BatchModifyClusterSnapshots")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs batchModifyClusterSnapshotsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchModifyClusterSnapshots"
            (AWS.Core.Decode.ResultDecoder "BatchModifyClusterSnapshotsResult" batchModifyClusterSnapshotsOutputMessageDecoder)
        )


{-| Options for a batchModifyClusterSnapshots request
-}
type alias BatchModifyClusterSnapshotsOptions =
    { manualSnapshotRetentionPeriod : Maybe Int
    , force : Maybe Bool
    }


{-|

<p>Cancels a resize operation.</p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`

-}
cancelResize :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ResizeProgressMessage)
cancelResize clusterIdentifier =
    let
        requestInput =
            CancelResizeMessage
                clusterIdentifier
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CancelResize")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs cancelResizeMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CancelResize"
            (AWS.Core.Decode.ResultDecoder "CancelResizeResult" resizeProgressMessageDecoder)
        )


{-|

<p>Copies the specified automated cluster snapshot to a new manual cluster snapshot. The source must be an automated snapshot and it must be in the available state.</p> <p>When you delete a cluster, Amazon Redshift deletes any automated snapshots of the cluster. Also, when the retention period of the snapshot expires, Amazon Redshift automatically deletes it. If you want to keep an automated snapshot for a longer period, you can make a manual copy of the snapshot. Manual snapshots are retained until you delete them.</p> <p> For more information about working with snapshots, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `sourceSnapshotIdentifier` **:** `String`
  - `targetSnapshotIdentifier` **:** `String`

-}
copyClusterSnapshot :
    String
    -> String
    -> (CopyClusterSnapshotOptions -> CopyClusterSnapshotOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyClusterSnapshotResult)
copyClusterSnapshot sourceSnapshotIdentifier targetSnapshotIdentifier setOptions =
    let
        requestInput =
            CopyClusterSnapshotMessage
                sourceSnapshotIdentifier
                options.sourceSnapshotClusterIdentifier
                targetSnapshotIdentifier
                options.manualSnapshotRetentionPeriod

        options =
            setOptions (CopyClusterSnapshotOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CopyClusterSnapshot")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs copyClusterSnapshotMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CopyClusterSnapshot"
            (AWS.Core.Decode.ResultDecoder "CopyClusterSnapshotResult" copyClusterSnapshotResultDecoder)
        )


{-| Options for a copyClusterSnapshot request
-}
type alias CopyClusterSnapshotOptions =
    { sourceSnapshotClusterIdentifier : Maybe String
    , manualSnapshotRetentionPeriod : Maybe Int
    }


{-|

<p>Creates a new cluster.</p> <p>To create a cluster in Virtual Private Cloud (VPC), you must provide a cluster subnet group name. The cluster subnet group identifies the subnets of your VPC that Amazon Redshift uses when creating the cluster. For more information about managing clusters, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`
  - `nodeType` **:** `String`
  - `masterUsername` **:** `String`
  - `masterUserPassword` **:** `String`

-}
createCluster :
    String
    -> String
    -> String
    -> String
    -> (CreateClusterOptions -> CreateClusterOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateClusterResult)
createCluster clusterIdentifier nodeType masterUsername masterUserPassword setOptions =
    let
        requestInput =
            CreateClusterMessage
                options.dBName
                clusterIdentifier
                options.clusterType
                nodeType
                masterUsername
                masterUserPassword
                options.clusterSecurityGroups
                options.vpcSecurityGroupIds
                options.clusterSubnetGroupName
                options.availabilityZone
                options.preferredMaintenanceWindow
                options.clusterParameterGroupName
                options.automatedSnapshotRetentionPeriod
                options.manualSnapshotRetentionPeriod
                options.port_
                options.clusterVersion
                options.allowVersionUpgrade
                options.numberOfNodes
                options.publiclyAccessible
                options.encrypted
                options.hsmClientCertificateIdentifier
                options.hsmConfigurationIdentifier
                options.elasticIp
                options.tags
                options.kmsKeyId
                options.enhancedVpcRouting
                options.additionalInfo
                options.iamRoles
                options.maintenanceTrackName
                options.snapshotScheduleIdentifier

        options =
            setOptions (CreateClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateCluster")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createClusterMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateCluster"
            (AWS.Core.Decode.ResultDecoder "CreateClusterResult" createClusterResultDecoder)
        )


{-| Options for a createCluster request
-}
type alias CreateClusterOptions =
    { dBName : Maybe String
    , clusterType : Maybe String
    , clusterSecurityGroups : Maybe (List String)
    , vpcSecurityGroupIds : Maybe (List String)
    , clusterSubnetGroupName : Maybe String
    , availabilityZone : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , clusterParameterGroupName : Maybe String
    , automatedSnapshotRetentionPeriod : Maybe Int
    , manualSnapshotRetentionPeriod : Maybe Int
    , port_ : Maybe Int
    , clusterVersion : Maybe String
    , allowVersionUpgrade : Maybe Bool
    , numberOfNodes : Maybe Int
    , publiclyAccessible : Maybe Bool
    , encrypted : Maybe Bool
    , hsmClientCertificateIdentifier : Maybe String
    , hsmConfigurationIdentifier : Maybe String
    , elasticIp : Maybe String
    , tags : Maybe (List Tag)
    , kmsKeyId : Maybe String
    , enhancedVpcRouting : Maybe Bool
    , additionalInfo : Maybe String
    , iamRoles : Maybe (List String)
    , maintenanceTrackName : Maybe String
    , snapshotScheduleIdentifier : Maybe String
    }


{-|

<p>Creates an Amazon Redshift parameter group.</p> <p>Creating parameter groups is independent of creating clusters. You can associate a cluster with a parameter group when you create the cluster. You can also associate an existing cluster with a parameter group after the cluster is created by using <a>ModifyCluster</a>. </p> <p>Parameters in the parameter group define specific behavior that applies to the databases you create on the cluster. For more information about parameters and parameter groups, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `parameterGroupName` **:** `String`
  - `parameterGroupFamily` **:** `String`
  - `description` **:** `String`

-}
createClusterParameterGroup :
    String
    -> String
    -> String
    -> (CreateClusterParameterGroupOptions -> CreateClusterParameterGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateClusterParameterGroupResult)
createClusterParameterGroup parameterGroupName parameterGroupFamily description setOptions =
    let
        requestInput =
            CreateClusterParameterGroupMessage
                parameterGroupName
                parameterGroupFamily
                description
                options.tags

        options =
            setOptions (CreateClusterParameterGroupOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateClusterParameterGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createClusterParameterGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateClusterParameterGroup"
            (AWS.Core.Decode.ResultDecoder "CreateClusterParameterGroupResult" createClusterParameterGroupResultDecoder)
        )


{-| Options for a createClusterParameterGroup request
-}
type alias CreateClusterParameterGroupOptions =
    { tags : Maybe (List Tag)
    }


{-|

<p>Creates a new Amazon Redshift security group. You use security groups to control access to non-VPC clusters.</p> <p> For information about managing security groups, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `clusterSecurityGroupName` **:** `String`
  - `description` **:** `String`

-}
createClusterSecurityGroup :
    String
    -> String
    -> (CreateClusterSecurityGroupOptions -> CreateClusterSecurityGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateClusterSecurityGroupResult)
createClusterSecurityGroup clusterSecurityGroupName description setOptions =
    let
        requestInput =
            CreateClusterSecurityGroupMessage
                clusterSecurityGroupName
                description
                options.tags

        options =
            setOptions (CreateClusterSecurityGroupOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateClusterSecurityGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createClusterSecurityGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateClusterSecurityGroup"
            (AWS.Core.Decode.ResultDecoder "CreateClusterSecurityGroupResult" createClusterSecurityGroupResultDecoder)
        )


{-| Options for a createClusterSecurityGroup request
-}
type alias CreateClusterSecurityGroupOptions =
    { tags : Maybe (List Tag)
    }


{-|

<p>Creates a manual snapshot of the specified cluster. The cluster must be in the <code>available</code> state. </p> <p> For more information about working with snapshots, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `snapshotIdentifier` **:** `String`
  - `clusterIdentifier` **:** `String`

-}
createClusterSnapshot :
    String
    -> String
    -> (CreateClusterSnapshotOptions -> CreateClusterSnapshotOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateClusterSnapshotResult)
createClusterSnapshot snapshotIdentifier clusterIdentifier setOptions =
    let
        requestInput =
            CreateClusterSnapshotMessage
                snapshotIdentifier
                clusterIdentifier
                options.manualSnapshotRetentionPeriod
                options.tags

        options =
            setOptions (CreateClusterSnapshotOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateClusterSnapshot")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createClusterSnapshotMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateClusterSnapshot"
            (AWS.Core.Decode.ResultDecoder "CreateClusterSnapshotResult" createClusterSnapshotResultDecoder)
        )


{-| Options for a createClusterSnapshot request
-}
type alias CreateClusterSnapshotOptions =
    { manualSnapshotRetentionPeriod : Maybe Int
    , tags : Maybe (List Tag)
    }


{-|

<p>Creates a new Amazon Redshift subnet group. You must provide a list of one or more subnets in your existing Amazon Virtual Private Cloud (Amazon VPC) when creating Amazon Redshift subnet group.</p> <p> For information about subnet groups, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html">Amazon Redshift Cluster Subnet Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `clusterSubnetGroupName` **:** `String`
  - `description` **:** `String`
  - `subnetIds` **:** `(List String)`

-}
createClusterSubnetGroup :
    String
    -> String
    -> List String
    -> (CreateClusterSubnetGroupOptions -> CreateClusterSubnetGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateClusterSubnetGroupResult)
createClusterSubnetGroup clusterSubnetGroupName description subnetIds setOptions =
    let
        requestInput =
            CreateClusterSubnetGroupMessage
                clusterSubnetGroupName
                description
                subnetIds
                options.tags

        options =
            setOptions (CreateClusterSubnetGroupOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateClusterSubnetGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createClusterSubnetGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateClusterSubnetGroup"
            (AWS.Core.Decode.ResultDecoder "CreateClusterSubnetGroupResult" createClusterSubnetGroupResultDecoder)
        )


{-| Options for a createClusterSubnetGroup request
-}
type alias CreateClusterSubnetGroupOptions =
    { tags : Maybe (List Tag)
    }


{-|

<p>Creates an Amazon Redshift event notification subscription. This action requires an ARN (Amazon Resource Name) of an Amazon SNS topic created by either the Amazon Redshift console, the Amazon SNS console, or the Amazon SNS API. To obtain an ARN with Amazon SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console.</p> <p>You can specify the source type, and lists of Amazon Redshift source IDs, event categories, and event severities. Notifications will be sent for all events you want that match those criteria. For example, you can specify source type = cluster, source ID = my-cluster-1 and mycluster2, event categories = Availability, Backup, and severity = ERROR. The subscription will only send notifications for those ERROR events in the Availability and Backup categories for the specified clusters.</p> <p>If you specify both the source type and source IDs, such as source type = cluster and source identifier = my-cluster-1, notifications will be sent for all the cluster events for my-cluster-1. If you specify a source type but do not specify a source identifier, you will receive notice of the events for the objects of that type in your AWS account. If you do not specify either the SourceType nor the SourceIdentifier, you will be notified of events generated from all Amazon Redshift sources belonging to your AWS account. You must specify a source type if you specify a source ID.</p>

**Required Parameters**

  - `subscriptionName` **:** `String`
  - `snsTopicArn` **:** `String`

-}
createEventSubscription :
    String
    -> String
    -> (CreateEventSubscriptionOptions -> CreateEventSubscriptionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateEventSubscriptionResult)
createEventSubscription subscriptionName snsTopicArn setOptions =
    let
        requestInput =
            CreateEventSubscriptionMessage
                subscriptionName
                snsTopicArn
                options.sourceType
                options.sourceIds
                options.eventCategories
                options.severity
                options.enabled
                options.tags

        options =
            setOptions (CreateEventSubscriptionOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateEventSubscription")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createEventSubscriptionMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateEventSubscription"
            (AWS.Core.Decode.ResultDecoder "CreateEventSubscriptionResult" createEventSubscriptionResultDecoder)
        )


{-| Options for a createEventSubscription request
-}
type alias CreateEventSubscriptionOptions =
    { sourceType : Maybe String
    , sourceIds : Maybe (List String)
    , eventCategories : Maybe (List String)
    , severity : Maybe String
    , enabled : Maybe Bool
    , tags : Maybe (List Tag)
    }


{-|

<p>Creates an HSM client certificate that an Amazon Redshift cluster will use to connect to the client's HSM in order to store and retrieve the keys used to encrypt the cluster databases.</p> <p>The command returns a public key, which you must store in the HSM. In addition to creating the HSM certificate, you must create an Amazon Redshift HSM configuration that provides a cluster the information needed to store and use encryption keys in the HSM. For more information, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html">Hardware Security Modules</a> in the Amazon Redshift Cluster Management Guide.</p>

**Required Parameters**

  - `hsmClientCertificateIdentifier` **:** `String`

-}
createHsmClientCertificate :
    String
    -> (CreateHsmClientCertificateOptions -> CreateHsmClientCertificateOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateHsmClientCertificateResult)
createHsmClientCertificate hsmClientCertificateIdentifier setOptions =
    let
        requestInput =
            CreateHsmClientCertificateMessage
                hsmClientCertificateIdentifier
                options.tags

        options =
            setOptions (CreateHsmClientCertificateOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateHsmClientCertificate")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createHsmClientCertificateMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateHsmClientCertificate"
            (AWS.Core.Decode.ResultDecoder "CreateHsmClientCertificateResult" createHsmClientCertificateResultDecoder)
        )


{-| Options for a createHsmClientCertificate request
-}
type alias CreateHsmClientCertificateOptions =
    { tags : Maybe (List Tag)
    }


{-|

<p>Creates an HSM configuration that contains the information required by an Amazon Redshift cluster to store and use database encryption keys in a Hardware Security Module (HSM). After creating the HSM configuration, you can specify it as a parameter when creating a cluster. The cluster will then store its encryption keys in the HSM.</p> <p>In addition to creating an HSM configuration, you must also create an HSM client certificate. For more information, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html">Hardware Security Modules</a> in the Amazon Redshift Cluster Management Guide.</p>

**Required Parameters**

  - `hsmConfigurationIdentifier` **:** `String`
  - `description` **:** `String`
  - `hsmIpAddress` **:** `String`
  - `hsmPartitionName` **:** `String`
  - `hsmPartitionPassword` **:** `String`
  - `hsmServerPublicCertificate` **:** `String`

-}
createHsmConfiguration :
    String
    -> String
    -> String
    -> String
    -> String
    -> String
    -> (CreateHsmConfigurationOptions -> CreateHsmConfigurationOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateHsmConfigurationResult)
createHsmConfiguration hsmConfigurationIdentifier description hsmIpAddress hsmPartitionName hsmPartitionPassword hsmServerPublicCertificate setOptions =
    let
        requestInput =
            CreateHsmConfigurationMessage
                hsmConfigurationIdentifier
                description
                hsmIpAddress
                hsmPartitionName
                hsmPartitionPassword
                hsmServerPublicCertificate
                options.tags

        options =
            setOptions (CreateHsmConfigurationOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateHsmConfiguration")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createHsmConfigurationMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateHsmConfiguration"
            (AWS.Core.Decode.ResultDecoder "CreateHsmConfigurationResult" createHsmConfigurationResultDecoder)
        )


{-| Options for a createHsmConfiguration request
-}
type alias CreateHsmConfigurationOptions =
    { tags : Maybe (List Tag)
    }


{-|

<p>Creates a snapshot copy grant that permits Amazon Redshift to use a customer master key (CMK) from AWS Key Management Service (AWS KMS) to encrypt copied snapshots in a destination region.</p> <p> For more information about managing snapshot copy grants, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html">Amazon Redshift Database Encryption</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>

**Required Parameters**

  - `snapshotCopyGrantName` **:** `String`

-}
createSnapshotCopyGrant :
    String
    -> (CreateSnapshotCopyGrantOptions -> CreateSnapshotCopyGrantOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateSnapshotCopyGrantResult)
createSnapshotCopyGrant snapshotCopyGrantName setOptions =
    let
        requestInput =
            CreateSnapshotCopyGrantMessage
                snapshotCopyGrantName
                options.kmsKeyId
                options.tags

        options =
            setOptions (CreateSnapshotCopyGrantOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateSnapshotCopyGrant")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createSnapshotCopyGrantMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateSnapshotCopyGrant"
            (AWS.Core.Decode.ResultDecoder "CreateSnapshotCopyGrantResult" createSnapshotCopyGrantResultDecoder)
        )


{-| Options for a createSnapshotCopyGrant request
-}
type alias CreateSnapshotCopyGrantOptions =
    { kmsKeyId : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>Creates a new snapshot schedule.</p>

**Required Parameters**

-}
createSnapshotSchedule :
    (CreateSnapshotScheduleOptions -> CreateSnapshotScheduleOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SnapshotSchedule)
createSnapshotSchedule setOptions =
    let
        requestInput =
            CreateSnapshotScheduleMessage
                options.scheduleDefinitions
                options.scheduleIdentifier
                options.scheduleDescription
                options.tags
                options.dryRun
                options.nextInvocations

        options =
            setOptions (CreateSnapshotScheduleOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateSnapshotSchedule")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createSnapshotScheduleMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateSnapshotSchedule"
            (AWS.Core.Decode.ResultDecoder "CreateSnapshotScheduleResult" snapshotScheduleDecoder)
        )


{-| Options for a createSnapshotSchedule request
-}
type alias CreateSnapshotScheduleOptions =
    { scheduleDefinitions : Maybe (List String)
    , scheduleIdentifier : Maybe String
    , scheduleDescription : Maybe String
    , tags : Maybe (List Tag)
    , dryRun : Maybe Bool
    , nextInvocations : Maybe Int
    }


{-|

<p>Adds one or more tags to a specified resource.</p> <p>A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, you will receive an error and the attempt will fail.</p> <p>If you specify a key that already exists for the resource, the value for that key will be updated with the new value.</p>

**Required Parameters**

  - `resourceName` **:** `String`
  - `tags` **:** `(List Tag)`

-}
createTags :
    String
    -> List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
createTags resourceName tags =
    let
        requestInput =
            CreateTagsMessage
                resourceName
                tags
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateTags")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createTagsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateTags"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes a previously provisioned cluster. A successful response from the web service indicates that the request was received correctly. Use <a>DescribeClusters</a> to monitor the status of the deletion. The delete operation cannot be canceled or reverted once submitted. For more information about managing clusters, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>If you want to shut down the cluster and retain it for future use, set <i>SkipFinalClusterSnapshot</i> to <code>false</code> and specify a name for <i>FinalClusterSnapshotIdentifier</i>. You can later restore this snapshot to resume using the cluster. If a final cluster snapshot is requested, the status of the cluster will be "final-snapshot" while the snapshot is being taken, then it's "deleting" once Amazon Redshift begins deleting the cluster. </p> <p> For more information about managing clusters, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`

-}
deleteCluster :
    String
    -> (DeleteClusterOptions -> DeleteClusterOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteClusterResult)
deleteCluster clusterIdentifier setOptions =
    let
        requestInput =
            DeleteClusterMessage
                clusterIdentifier
                options.skipFinalClusterSnapshot
                options.finalClusterSnapshotIdentifier
                options.finalClusterSnapshotRetentionPeriod

        options =
            setOptions (DeleteClusterOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteCluster")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteClusterMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteCluster"
            (AWS.Core.Decode.ResultDecoder "DeleteClusterResult" deleteClusterResultDecoder)
        )


{-| Options for a deleteCluster request
-}
type alias DeleteClusterOptions =
    { skipFinalClusterSnapshot : Maybe Bool
    , finalClusterSnapshotIdentifier : Maybe String
    , finalClusterSnapshotRetentionPeriod : Maybe Int
    }


{-|

<p>Deletes a specified Amazon Redshift parameter group.</p> <note> <p>You cannot delete a parameter group if it is associated with a cluster.</p> </note>

**Required Parameters**

  - `parameterGroupName` **:** `String`

-}
deleteClusterParameterGroup :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteClusterParameterGroup parameterGroupName =
    let
        requestInput =
            DeleteClusterParameterGroupMessage
                parameterGroupName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteClusterParameterGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteClusterParameterGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteClusterParameterGroup"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes an Amazon Redshift security group.</p> <note> <p>You cannot delete a security group that is associated with any clusters. You cannot delete the default security group.</p> </note> <p> For information about managing security groups, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `clusterSecurityGroupName` **:** `String`

-}
deleteClusterSecurityGroup :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteClusterSecurityGroup clusterSecurityGroupName =
    let
        requestInput =
            DeleteClusterSecurityGroupMessage
                clusterSecurityGroupName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteClusterSecurityGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteClusterSecurityGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteClusterSecurityGroup"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified manual snapshot. The snapshot must be in the <code>available</code> state, with no other users authorized to access the snapshot. </p> <p>Unlike automated snapshots, manual snapshots are retained even after you delete your cluster. Amazon Redshift does not delete your manual snapshots. You must delete manual snapshot explicitly to avoid getting charged. If other accounts are authorized to access the snapshot, you must revoke all of the authorizations before you can delete the snapshot.</p>

**Required Parameters**

  - `snapshotIdentifier` **:** `String`

-}
deleteClusterSnapshot :
    String
    -> (DeleteClusterSnapshotOptions -> DeleteClusterSnapshotOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteClusterSnapshotResult)
deleteClusterSnapshot snapshotIdentifier setOptions =
    let
        requestInput =
            DeleteClusterSnapshotMessage
                snapshotIdentifier
                options.snapshotClusterIdentifier

        options =
            setOptions (DeleteClusterSnapshotOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteClusterSnapshot")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteClusterSnapshotMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteClusterSnapshot"
            (AWS.Core.Decode.ResultDecoder "DeleteClusterSnapshotResult" deleteClusterSnapshotResultDecoder)
        )


{-| Options for a deleteClusterSnapshot request
-}
type alias DeleteClusterSnapshotOptions =
    { snapshotClusterIdentifier : Maybe String
    }


{-|

<p>Deletes the specified cluster subnet group.</p>

**Required Parameters**

  - `clusterSubnetGroupName` **:** `String`

-}
deleteClusterSubnetGroup :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteClusterSubnetGroup clusterSubnetGroupName =
    let
        requestInput =
            DeleteClusterSubnetGroupMessage
                clusterSubnetGroupName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteClusterSubnetGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteClusterSubnetGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteClusterSubnetGroup"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes an Amazon Redshift event notification subscription.</p>

**Required Parameters**

  - `subscriptionName` **:** `String`

-}
deleteEventSubscription :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteEventSubscription subscriptionName =
    let
        requestInput =
            DeleteEventSubscriptionMessage
                subscriptionName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteEventSubscription")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteEventSubscriptionMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteEventSubscription"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified HSM client certificate.</p>

**Required Parameters**

  - `hsmClientCertificateIdentifier` **:** `String`

-}
deleteHsmClientCertificate :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteHsmClientCertificate hsmClientCertificateIdentifier =
    let
        requestInput =
            DeleteHsmClientCertificateMessage
                hsmClientCertificateIdentifier
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteHsmClientCertificate")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteHsmClientCertificateMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteHsmClientCertificate"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified Amazon Redshift HSM configuration.</p>

**Required Parameters**

  - `hsmConfigurationIdentifier` **:** `String`

-}
deleteHsmConfiguration :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteHsmConfiguration hsmConfigurationIdentifier =
    let
        requestInput =
            DeleteHsmConfigurationMessage
                hsmConfigurationIdentifier
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteHsmConfiguration")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteHsmConfigurationMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteHsmConfiguration"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified snapshot copy grant.</p>

**Required Parameters**

  - `snapshotCopyGrantName` **:** `String`

-}
deleteSnapshotCopyGrant :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteSnapshotCopyGrant snapshotCopyGrantName =
    let
        requestInput =
            DeleteSnapshotCopyGrantMessage
                snapshotCopyGrantName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteSnapshotCopyGrant")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteSnapshotCopyGrantMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteSnapshotCopyGrant"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes a snapshot schedule.</p>

**Required Parameters**

  - `scheduleIdentifier` **:** `String`

-}
deleteSnapshotSchedule :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteSnapshotSchedule scheduleIdentifier =
    let
        requestInput =
            DeleteSnapshotScheduleMessage
                scheduleIdentifier
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteSnapshotSchedule")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteSnapshotScheduleMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteSnapshotSchedule"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes a tag or tags from a resource. You must provide the ARN of the resource from which you want to delete the tag or tags.</p>

**Required Parameters**

  - `resourceName` **:** `String`
  - `tagKeys` **:** `(List String)`

-}
deleteTags :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteTags resourceName tagKeys =
    let
        requestInput =
            DeleteTagsMessage
                resourceName
                tagKeys
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteTags")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteTagsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteTags"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Returns a list of attributes attached to an account</p>

**Required Parameters**

-}
describeAccountAttributes :
    (DescribeAccountAttributesOptions -> DescribeAccountAttributesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AccountAttributeList)
describeAccountAttributes setOptions =
    let
        requestInput =
            DescribeAccountAttributesMessage
                options.attributeNames

        options =
            setOptions (DescribeAccountAttributesOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeAccountAttributes")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeAccountAttributesMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAccountAttributes"
            (AWS.Core.Decode.ResultDecoder "DescribeAccountAttributesResult" accountAttributeListDecoder)
        )


{-| Options for a describeAccountAttributes request
-}
type alias DescribeAccountAttributesOptions =
    { attributeNames : Maybe (List String)
    }


{-|

<p>Returns an array of <code>ClusterDbRevision</code> objects.</p>

**Required Parameters**

-}
describeClusterDbRevisions :
    (DescribeClusterDbRevisionsOptions -> DescribeClusterDbRevisionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ClusterDbRevisionsMessage)
describeClusterDbRevisions setOptions =
    let
        requestInput =
            DescribeClusterDbRevisionsMessage
                options.clusterIdentifier
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeClusterDbRevisionsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeClusterDbRevisions")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeClusterDbRevisionsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeClusterDbRevisions"
            (AWS.Core.Decode.ResultDecoder "DescribeClusterDbRevisionsResult" clusterDbRevisionsMessageDecoder)
        )


{-| Options for a describeClusterDbRevisions request
-}
type alias DescribeClusterDbRevisionsOptions =
    { clusterIdentifier : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns a list of Amazon Redshift parameter groups, including parameter groups you created and the default parameter group. For each parameter group, the response includes the parameter group name, description, and parameter group family name. You can optionally specify a name to retrieve the description of a specific parameter group.</p> <p> For more information about parameters and parameter groups, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all parameter groups that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all parameter groups that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, parameter groups are returned regardless of whether they have tag keys or values associated with them.</p>

**Required Parameters**

-}
describeClusterParameterGroups :
    (DescribeClusterParameterGroupsOptions -> DescribeClusterParameterGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ClusterParameterGroupsMessage)
describeClusterParameterGroups setOptions =
    let
        requestInput =
            DescribeClusterParameterGroupsMessage
                options.parameterGroupName
                options.maxRecords
                options.marker
                options.tagKeys
                options.tagValues

        options =
            setOptions (DescribeClusterParameterGroupsOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeClusterParameterGroups")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeClusterParameterGroupsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeClusterParameterGroups"
            (AWS.Core.Decode.ResultDecoder "DescribeClusterParameterGroupsResult" clusterParameterGroupsMessageDecoder)
        )


{-| Options for a describeClusterParameterGroups request
-}
type alias DescribeClusterParameterGroupsOptions =
    { parameterGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p>Returns a detailed list of parameters contained within the specified Amazon Redshift parameter group. For each parameter the response includes information such as parameter name, description, data type, value, whether the parameter value is modifiable, and so on.</p> <p>You can specify <i>source</i> filter to retrieve parameters of only specific type. For example, to retrieve parameters that were modified by a user action such as from <a>ModifyClusterParameterGroup</a>, you can specify <i>source</i> equal to <i>user</i>.</p> <p> For more information about parameters and parameter groups, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `parameterGroupName` **:** `String`

-}
describeClusterParameters :
    String
    -> (DescribeClusterParametersOptions -> DescribeClusterParametersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ClusterParameterGroupDetails)
describeClusterParameters parameterGroupName setOptions =
    let
        requestInput =
            DescribeClusterParametersMessage
                parameterGroupName
                options.source
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeClusterParametersOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeClusterParameters")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeClusterParametersMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeClusterParameters"
            (AWS.Core.Decode.ResultDecoder "DescribeClusterParametersResult" clusterParameterGroupDetailsDecoder)
        )


{-| Options for a describeClusterParameters request
-}
type alias DescribeClusterParametersOptions =
    { source : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns information about Amazon Redshift security groups. If the name of a security group is specified, the response will contain only information about only that security group.</p> <p> For information about managing security groups, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all security groups that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all security groups that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, security groups are returned regardless of whether they have tag keys or values associated with them.</p>

**Required Parameters**

-}
describeClusterSecurityGroups :
    (DescribeClusterSecurityGroupsOptions -> DescribeClusterSecurityGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ClusterSecurityGroupMessage)
describeClusterSecurityGroups setOptions =
    let
        requestInput =
            DescribeClusterSecurityGroupsMessage
                options.clusterSecurityGroupName
                options.maxRecords
                options.marker
                options.tagKeys
                options.tagValues

        options =
            setOptions (DescribeClusterSecurityGroupsOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeClusterSecurityGroups")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeClusterSecurityGroupsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeClusterSecurityGroups"
            (AWS.Core.Decode.ResultDecoder "DescribeClusterSecurityGroupsResult" clusterSecurityGroupMessageDecoder)
        )


{-| Options for a describeClusterSecurityGroups request
-}
type alias DescribeClusterSecurityGroupsOptions =
    { clusterSecurityGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p>Returns one or more snapshot objects, which contain metadata about your cluster snapshots. By default, this operation returns information about all snapshots of all clusters that are owned by you AWS customer account. No information is returned for snapshots owned by inactive AWS customer accounts.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all snapshots that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all snapshots that have any combination of those values are returned. Only snapshots that you own are returned in the response; shared snapshots are not returned with the tag key and tag value request parameters.</p> <p>If both tag keys and values are omitted from the request, snapshots are returned regardless of whether they have tag keys or values associated with them.</p>

**Required Parameters**

-}
describeClusterSnapshots :
    (DescribeClusterSnapshotsOptions -> DescribeClusterSnapshotsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SnapshotMessage)
describeClusterSnapshots setOptions =
    let
        requestInput =
            DescribeClusterSnapshotsMessage
                options.clusterIdentifier
                options.snapshotIdentifier
                options.snapshotType
                options.startTime
                options.endTime
                options.maxRecords
                options.marker
                options.ownerAccount
                options.tagKeys
                options.tagValues
                options.clusterExists
                options.sortingEntities

        options =
            setOptions (DescribeClusterSnapshotsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeClusterSnapshots")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeClusterSnapshotsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeClusterSnapshots"
            (AWS.Core.Decode.ResultDecoder "DescribeClusterSnapshotsResult" snapshotMessageDecoder)
        )


{-| Options for a describeClusterSnapshots request
-}
type alias DescribeClusterSnapshotsOptions =
    { clusterIdentifier : Maybe String
    , snapshotIdentifier : Maybe String
    , snapshotType : Maybe String
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , maxRecords : Maybe Int
    , marker : Maybe String
    , ownerAccount : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    , clusterExists : Maybe Bool
    , sortingEntities : Maybe (List SnapshotSortingEntity)
    }


{-|

<p>Returns one or more cluster subnet group objects, which contain metadata about your cluster subnet groups. By default, this operation returns information about all cluster subnet groups that are defined in you AWS account.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all subnet groups that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all subnet groups that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, subnet groups are returned regardless of whether they have tag keys or values associated with them.</p>

**Required Parameters**

-}
describeClusterSubnetGroups :
    (DescribeClusterSubnetGroupsOptions -> DescribeClusterSubnetGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ClusterSubnetGroupMessage)
describeClusterSubnetGroups setOptions =
    let
        requestInput =
            DescribeClusterSubnetGroupsMessage
                options.clusterSubnetGroupName
                options.maxRecords
                options.marker
                options.tagKeys
                options.tagValues

        options =
            setOptions (DescribeClusterSubnetGroupsOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeClusterSubnetGroups")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeClusterSubnetGroupsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeClusterSubnetGroups"
            (AWS.Core.Decode.ResultDecoder "DescribeClusterSubnetGroupsResult" clusterSubnetGroupMessageDecoder)
        )


{-| Options for a describeClusterSubnetGroups request
-}
type alias DescribeClusterSubnetGroupsOptions =
    { clusterSubnetGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p>Returns a list of all the available maintenance tracks.</p>

**Required Parameters**

-}
describeClusterTracks :
    (DescribeClusterTracksOptions -> DescribeClusterTracksOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TrackListMessage)
describeClusterTracks setOptions =
    let
        requestInput =
            DescribeClusterTracksMessage
                options.maintenanceTrackName
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeClusterTracksOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeClusterTracks")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeClusterTracksMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeClusterTracks"
            (AWS.Core.Decode.ResultDecoder "DescribeClusterTracksResult" trackListMessageDecoder)
        )


{-| Options for a describeClusterTracks request
-}
type alias DescribeClusterTracksOptions =
    { maintenanceTrackName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns descriptions of the available Amazon Redshift cluster versions. You can call this operation even before creating any clusters to learn more about the Amazon Redshift versions. For more information about managing clusters, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

-}
describeClusterVersions :
    (DescribeClusterVersionsOptions -> DescribeClusterVersionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ClusterVersionsMessage)
describeClusterVersions setOptions =
    let
        requestInput =
            DescribeClusterVersionsMessage
                options.clusterVersion
                options.clusterParameterGroupFamily
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeClusterVersionsOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeClusterVersions")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeClusterVersionsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeClusterVersions"
            (AWS.Core.Decode.ResultDecoder "DescribeClusterVersionsResult" clusterVersionsMessageDecoder)
        )


{-| Options for a describeClusterVersions request
-}
type alias DescribeClusterVersionsOptions =
    { clusterVersion : Maybe String
    , clusterParameterGroupFamily : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns properties of provisioned clusters including general cluster properties, cluster database properties, maintenance and backup properties, and security and access properties. This operation supports pagination. For more information about managing clusters, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all clusters that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all clusters that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, clusters are returned regardless of whether they have tag keys or values associated with them.</p>

**Required Parameters**

-}
describeClusters :
    (DescribeClustersOptions -> DescribeClustersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ClustersMessage)
describeClusters setOptions =
    let
        requestInput =
            DescribeClustersMessage
                options.clusterIdentifier
                options.maxRecords
                options.marker
                options.tagKeys
                options.tagValues

        options =
            setOptions (DescribeClustersOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeClusters")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeClustersMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeClusters"
            (AWS.Core.Decode.ResultDecoder "DescribeClustersResult" clustersMessageDecoder)
        )


{-| Options for a describeClusters request
-}
type alias DescribeClustersOptions =
    { clusterIdentifier : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p>Returns a list of parameter settings for the specified parameter group family.</p> <p> For more information about parameters and parameter groups, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `parameterGroupFamily` **:** `String`

-}
describeDefaultClusterParameters :
    String
    -> (DescribeDefaultClusterParametersOptions -> DescribeDefaultClusterParametersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDefaultClusterParametersResult)
describeDefaultClusterParameters parameterGroupFamily setOptions =
    let
        requestInput =
            DescribeDefaultClusterParametersMessage
                parameterGroupFamily
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeDefaultClusterParametersOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeDefaultClusterParameters")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeDefaultClusterParametersMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeDefaultClusterParameters"
            (AWS.Core.Decode.ResultDecoder "DescribeDefaultClusterParametersResult" describeDefaultClusterParametersResultDecoder)
        )


{-| Options for a describeDefaultClusterParameters request
-}
type alias DescribeDefaultClusterParametersOptions =
    { maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Displays a list of event categories for all event source types, or for a specified source type. For a list of the event categories and source types, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html">Amazon Redshift Event Notifications</a>.</p>

**Required Parameters**

-}
describeEventCategories :
    (DescribeEventCategoriesOptions -> DescribeEventCategoriesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EventCategoriesMessage)
describeEventCategories setOptions =
    let
        requestInput =
            DescribeEventCategoriesMessage
                options.sourceType

        options =
            setOptions (DescribeEventCategoriesOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeEventCategories")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeEventCategoriesMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeEventCategories"
            (AWS.Core.Decode.ResultDecoder "DescribeEventCategoriesResult" eventCategoriesMessageDecoder)
        )


{-| Options for a describeEventCategories request
-}
type alias DescribeEventCategoriesOptions =
    { sourceType : Maybe String
    }


{-|

<p>Lists descriptions of all the Amazon Redshift event notification subscriptions for a customer account. If you specify a subscription name, lists the description for that subscription.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all event notification subscriptions that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all subscriptions that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, subscriptions are returned regardless of whether they have tag keys or values associated with them.</p>

**Required Parameters**

-}
describeEventSubscriptions :
    (DescribeEventSubscriptionsOptions -> DescribeEventSubscriptionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EventSubscriptionsMessage)
describeEventSubscriptions setOptions =
    let
        requestInput =
            DescribeEventSubscriptionsMessage
                options.subscriptionName
                options.maxRecords
                options.marker
                options.tagKeys
                options.tagValues

        options =
            setOptions (DescribeEventSubscriptionsOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeEventSubscriptions")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeEventSubscriptionsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeEventSubscriptions"
            (AWS.Core.Decode.ResultDecoder "DescribeEventSubscriptionsResult" eventSubscriptionsMessageDecoder)
        )


{-| Options for a describeEventSubscriptions request
-}
type alias DescribeEventSubscriptionsOptions =
    { subscriptionName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p>Returns events related to clusters, security groups, snapshots, and parameter groups for the past 14 days. Events specific to a particular cluster, security group, snapshot or parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.</p>

**Required Parameters**

-}
describeEvents :
    (DescribeEventsOptions -> DescribeEventsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EventsMessage)
describeEvents setOptions =
    let
        requestInput =
            DescribeEventsMessage
                options.sourceIdentifier
                options.sourceType
                options.startTime
                options.endTime
                options.duration
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeEventsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeEvents")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeEventsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeEvents"
            (AWS.Core.Decode.ResultDecoder "DescribeEventsResult" eventsMessageDecoder)
        )


{-| Options for a describeEvents request
-}
type alias DescribeEventsOptions =
    { sourceIdentifier : Maybe String
    , sourceType : Maybe SourceType
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , duration : Maybe Int
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns information about the specified HSM client certificate. If no certificate ID is specified, returns information about all the HSM certificates owned by your AWS customer account.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM client certificates that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all HSM client certificates that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, HSM client certificates are returned regardless of whether they have tag keys or values associated with them.</p>

**Required Parameters**

-}
describeHsmClientCertificates :
    (DescribeHsmClientCertificatesOptions -> DescribeHsmClientCertificatesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper HsmClientCertificateMessage)
describeHsmClientCertificates setOptions =
    let
        requestInput =
            DescribeHsmClientCertificatesMessage
                options.hsmClientCertificateIdentifier
                options.maxRecords
                options.marker
                options.tagKeys
                options.tagValues

        options =
            setOptions (DescribeHsmClientCertificatesOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeHsmClientCertificates")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeHsmClientCertificatesMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeHsmClientCertificates"
            (AWS.Core.Decode.ResultDecoder "DescribeHsmClientCertificatesResult" hsmClientCertificateMessageDecoder)
        )


{-| Options for a describeHsmClientCertificates request
-}
type alias DescribeHsmClientCertificatesOptions =
    { hsmClientCertificateIdentifier : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p>Returns information about the specified Amazon Redshift HSM configuration. If no configuration ID is specified, returns information about all the HSM configurations owned by your AWS customer account.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM connections that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all HSM connections that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, HSM connections are returned regardless of whether they have tag keys or values associated with them.</p>

**Required Parameters**

-}
describeHsmConfigurations :
    (DescribeHsmConfigurationsOptions -> DescribeHsmConfigurationsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper HsmConfigurationMessage)
describeHsmConfigurations setOptions =
    let
        requestInput =
            DescribeHsmConfigurationsMessage
                options.hsmConfigurationIdentifier
                options.maxRecords
                options.marker
                options.tagKeys
                options.tagValues

        options =
            setOptions (DescribeHsmConfigurationsOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeHsmConfigurations")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeHsmConfigurationsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeHsmConfigurations"
            (AWS.Core.Decode.ResultDecoder "DescribeHsmConfigurationsResult" hsmConfigurationMessageDecoder)
        )


{-| Options for a describeHsmConfigurations request
-}
type alias DescribeHsmConfigurationsOptions =
    { hsmConfigurationIdentifier : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p>Describes whether information, such as queries and connection attempts, is being logged for the specified Amazon Redshift cluster.</p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`

-}
describeLoggingStatus :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper LoggingStatus)
describeLoggingStatus clusterIdentifier =
    let
        requestInput =
            DescribeLoggingStatusMessage
                clusterIdentifier
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeLoggingStatus")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeLoggingStatusMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeLoggingStatus"
            (AWS.Core.Decode.ResultDecoder "DescribeLoggingStatusResult" loggingStatusDecoder)
        )


{-|

<p>Returns a list of orderable cluster options. Before you create a new cluster you can use this operation to find what options are available, such as the EC2 Availability Zones (AZ) in the specific AWS Region that you can specify, and the node types you can request. The node types differ by available storage, memory, CPU and price. With the cost involved you might want to obtain a list of cluster options in the specific region and specify values when creating a cluster. For more information about managing clusters, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

-}
describeOrderableClusterOptions :
    (DescribeOrderableClusterOptionsOptions -> DescribeOrderableClusterOptionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper OrderableClusterOptionsMessage)
describeOrderableClusterOptions setOptions =
    let
        requestInput =
            DescribeOrderableClusterOptionsMessage
                options.clusterVersion
                options.nodeType
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeOrderableClusterOptionsOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeOrderableClusterOptions")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeOrderableClusterOptionsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeOrderableClusterOptions"
            (AWS.Core.Decode.ResultDecoder "DescribeOrderableClusterOptionsResult" orderableClusterOptionsMessageDecoder)
        )


{-| Options for a describeOrderableClusterOptions request
-}
type alias DescribeOrderableClusterOptionsOptions =
    { clusterVersion : Maybe String
    , nodeType : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns a list of the available reserved node offerings by Amazon Redshift with their descriptions including the node type, the fixed and recurring costs of reserving the node and duration the node will be reserved for you. These descriptions help you determine which reserve node offering you want to purchase. You then use the unique offering ID in you call to <a>PurchaseReservedNodeOffering</a> to reserve one or more nodes for your Amazon Redshift cluster. </p> <p> For more information about reserved node offerings, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html">Purchasing Reserved Nodes</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

-}
describeReservedNodeOfferings :
    (DescribeReservedNodeOfferingsOptions -> DescribeReservedNodeOfferingsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReservedNodeOfferingsMessage)
describeReservedNodeOfferings setOptions =
    let
        requestInput =
            DescribeReservedNodeOfferingsMessage
                options.reservedNodeOfferingId
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeReservedNodeOfferingsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeReservedNodeOfferings")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeReservedNodeOfferingsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeReservedNodeOfferings"
            (AWS.Core.Decode.ResultDecoder "DescribeReservedNodeOfferingsResult" reservedNodeOfferingsMessageDecoder)
        )


{-| Options for a describeReservedNodeOfferings request
-}
type alias DescribeReservedNodeOfferingsOptions =
    { reservedNodeOfferingId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns the descriptions of the reserved nodes.</p>

**Required Parameters**

-}
describeReservedNodes :
    (DescribeReservedNodesOptions -> DescribeReservedNodesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReservedNodesMessage)
describeReservedNodes setOptions =
    let
        requestInput =
            DescribeReservedNodesMessage
                options.reservedNodeId
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeReservedNodesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeReservedNodes")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeReservedNodesMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeReservedNodes"
            (AWS.Core.Decode.ResultDecoder "DescribeReservedNodesResult" reservedNodesMessageDecoder)
        )


{-| Options for a describeReservedNodes request
-}
type alias DescribeReservedNodesOptions =
    { reservedNodeId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns information about the last resize operation for the specified cluster. If no resize operation has ever been initiated for the specified cluster, a <code>HTTP 404</code> error is returned. If a resize operation was initiated and completed, the status of the resize remains as <code>SUCCEEDED</code> until the next resize. </p> <p>A resize operation can be requested using <a>ModifyCluster</a> and specifying a different number or type of nodes for the cluster. </p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`

-}
describeResize :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ResizeProgressMessage)
describeResize clusterIdentifier =
    let
        requestInput =
            DescribeResizeMessage
                clusterIdentifier
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeResize")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeResizeMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeResize"
            (AWS.Core.Decode.ResultDecoder "DescribeResizeResult" resizeProgressMessageDecoder)
        )


{-|

<p>Returns a list of snapshot copy grants owned by the AWS account in the destination region.</p> <p> For more information about managing snapshot copy grants, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html">Amazon Redshift Database Encryption</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>

**Required Parameters**

-}
describeSnapshotCopyGrants :
    (DescribeSnapshotCopyGrantsOptions -> DescribeSnapshotCopyGrantsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SnapshotCopyGrantMessage)
describeSnapshotCopyGrants setOptions =
    let
        requestInput =
            DescribeSnapshotCopyGrantsMessage
                options.snapshotCopyGrantName
                options.maxRecords
                options.marker
                options.tagKeys
                options.tagValues

        options =
            setOptions (DescribeSnapshotCopyGrantsOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeSnapshotCopyGrants")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeSnapshotCopyGrantsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeSnapshotCopyGrants"
            (AWS.Core.Decode.ResultDecoder "DescribeSnapshotCopyGrantsResult" snapshotCopyGrantMessageDecoder)
        )


{-| Options for a describeSnapshotCopyGrants request
-}
type alias DescribeSnapshotCopyGrantsOptions =
    { snapshotCopyGrantName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p>Returns a list of snapshot schedules. </p>

**Required Parameters**

-}
describeSnapshotSchedules :
    (DescribeSnapshotSchedulesOptions -> DescribeSnapshotSchedulesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSnapshotSchedulesOutputMessage)
describeSnapshotSchedules setOptions =
    let
        requestInput =
            DescribeSnapshotSchedulesMessage
                options.clusterIdentifier
                options.scheduleIdentifier
                options.tagKeys
                options.tagValues
                options.marker
                options.maxRecords

        options =
            setOptions (DescribeSnapshotSchedulesOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeSnapshotSchedules")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeSnapshotSchedulesMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeSnapshotSchedules"
            (AWS.Core.Decode.ResultDecoder "DescribeSnapshotSchedulesResult" describeSnapshotSchedulesOutputMessageDecoder)
        )


{-| Options for a describeSnapshotSchedules request
-}
type alias DescribeSnapshotSchedulesOptions =
    { clusterIdentifier : Maybe String
    , scheduleIdentifier : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    , marker : Maybe String
    , maxRecords : Maybe Int
    }


{-|

<p>Returns the total amount of snapshot usage and provisioned storage for a user in megabytes.</p>

**Required Parameters**

-}
describeStorage : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CustomerStorageMessage)
describeStorage =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeStorage")]
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeStorage"
            (AWS.Core.Decode.ResultDecoder "DescribeStorageResult" customerStorageMessageDecoder)
        )


{-|

<p>Lists the status of one or more table restore requests made using the <a>RestoreTableFromClusterSnapshot</a> API action. If you don't specify a value for the <code>TableRestoreRequestId</code> parameter, then <code>DescribeTableRestoreStatus</code> returns the status of all table restore requests ordered by the date and time of the request in ascending order. Otherwise <code>DescribeTableRestoreStatus</code> returns the status of the table specified by <code>TableRestoreRequestId</code>.</p>

**Required Parameters**

-}
describeTableRestoreStatus :
    (DescribeTableRestoreStatusOptions -> DescribeTableRestoreStatusOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TableRestoreStatusMessage)
describeTableRestoreStatus setOptions =
    let
        requestInput =
            DescribeTableRestoreStatusMessage
                options.clusterIdentifier
                options.tableRestoreRequestId
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeTableRestoreStatusOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeTableRestoreStatus")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeTableRestoreStatusMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeTableRestoreStatus"
            (AWS.Core.Decode.ResultDecoder "DescribeTableRestoreStatusResult" tableRestoreStatusMessageDecoder)
        )


{-| Options for a describeTableRestoreStatus request
-}
type alias DescribeTableRestoreStatusOptions =
    { clusterIdentifier : Maybe String
    , tableRestoreRequestId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns a list of tags. You can return tags from a specific resource by specifying an ARN, or you can return all tags for a given type of resource, such as clusters, snapshots, and so on.</p> <p>The following are limitations for <code>DescribeTags</code>: </p> <ul> <li> <p>You cannot specify an ARN and a resource-type value together in the same request.</p> </li> <li> <p>You cannot use the <code>MaxRecords</code> and <code>Marker</code> parameters together with the ARN parameter.</p> </li> <li> <p>The <code>MaxRecords</code> parameter can be a range from 10 to 50 results to return in a request.</p> </li> </ul> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all resources that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all resources that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, resources are returned regardless of whether they have tag keys or values associated with them.</p>

**Required Parameters**

-}
describeTags :
    (DescribeTagsOptions -> DescribeTagsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TaggedResourceListMessage)
describeTags setOptions =
    let
        requestInput =
            DescribeTagsMessage
                options.resourceName
                options.resourceType
                options.maxRecords
                options.marker
                options.tagKeys
                options.tagValues

        options =
            setOptions (DescribeTagsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeTags")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeTagsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeTags"
            (AWS.Core.Decode.ResultDecoder "DescribeTagsResult" taggedResourceListMessageDecoder)
        )


{-| Options for a describeTags request
-}
type alias DescribeTagsOptions =
    { resourceName : Maybe String
    , resourceType : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p>Stops logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.</p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`

-}
disableLogging :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper LoggingStatus)
disableLogging clusterIdentifier =
    let
        requestInput =
            DisableLoggingMessage
                clusterIdentifier
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DisableLogging")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs disableLoggingMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DisableLogging"
            (AWS.Core.Decode.ResultDecoder "DisableLoggingResult" loggingStatusDecoder)
        )


{-|

<p>Disables the automatic copying of snapshots from one region to another region for a specified cluster.</p> <p>If your cluster and its snapshots are encrypted using a customer master key (CMK) from AWS KMS, use <a>DeleteSnapshotCopyGrant</a> to delete the grant that grants Amazon Redshift permission to the CMK in the destination region. </p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`

-}
disableSnapshotCopy :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisableSnapshotCopyResult)
disableSnapshotCopy clusterIdentifier =
    let
        requestInput =
            DisableSnapshotCopyMessage
                clusterIdentifier
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DisableSnapshotCopy")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs disableSnapshotCopyMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DisableSnapshotCopy"
            (AWS.Core.Decode.ResultDecoder "DisableSnapshotCopyResult" disableSnapshotCopyResultDecoder)
        )


{-|

<p>Starts logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.</p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`
  - `bucketName` **:** `String`

-}
enableLogging :
    String
    -> String
    -> (EnableLoggingOptions -> EnableLoggingOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper LoggingStatus)
enableLogging clusterIdentifier bucketName setOptions =
    let
        requestInput =
            EnableLoggingMessage
                clusterIdentifier
                bucketName
                options.s3KeyPrefix

        options =
            setOptions (EnableLoggingOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "EnableLogging")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs enableLoggingMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "EnableLogging"
            (AWS.Core.Decode.ResultDecoder "EnableLoggingResult" loggingStatusDecoder)
        )


{-| Options for a enableLogging request
-}
type alias EnableLoggingOptions =
    { s3KeyPrefix : Maybe String
    }


{-|

<p>Enables the automatic copy of snapshots from one region to another region for a specified cluster.</p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`
  - `destinationRegion` **:** `String`

-}
enableSnapshotCopy :
    String
    -> String
    -> (EnableSnapshotCopyOptions -> EnableSnapshotCopyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnableSnapshotCopyResult)
enableSnapshotCopy clusterIdentifier destinationRegion setOptions =
    let
        requestInput =
            EnableSnapshotCopyMessage
                clusterIdentifier
                destinationRegion
                options.retentionPeriod
                options.snapshotCopyGrantName
                options.manualSnapshotRetentionPeriod

        options =
            setOptions (EnableSnapshotCopyOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "EnableSnapshotCopy")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs enableSnapshotCopyMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "EnableSnapshotCopy"
            (AWS.Core.Decode.ResultDecoder "EnableSnapshotCopyResult" enableSnapshotCopyResultDecoder)
        )


{-| Options for a enableSnapshotCopy request
-}
type alias EnableSnapshotCopyOptions =
    { retentionPeriod : Maybe Int
    , snapshotCopyGrantName : Maybe String
    , manualSnapshotRetentionPeriod : Maybe Int
    }


{-|

<p>Returns a database user name and temporary password with temporary authorization to log on to an Amazon Redshift database. The action returns the database user name prefixed with <code>IAM:</code> if <code>AutoCreate</code> is <code>False</code> or <code>IAMA:</code> if <code>AutoCreate</code> is <code>True</code>. You can optionally specify one or more database user groups that the user will join at log on. By default, the temporary credentials expire in 900 seconds. You can optionally specify a duration between 900 seconds (15 minutes) and 3600 seconds (60 minutes). For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/generating-user-credentials.html">Using IAM Authentication to Generate Database User Credentials</a> in the Amazon Redshift Cluster Management Guide.</p> <p>The AWS Identity and Access Management (IAM)user or role that executes GetClusterCredentials must have an IAM policy attached that allows access to all necessary actions and resources. For more information about permissions, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html#redshift-policy-resources.getclustercredentials-resources">Resource Policies for GetClusterCredentials</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If the <code>DbGroups</code> parameter is specified, the IAM policy must allow the <code>redshift:JoinGroup</code> action with access to the listed <code>dbgroups</code>. </p> <p>In addition, if the <code>AutoCreate</code> parameter is set to <code>True</code>, then the policy must include the <code>redshift:CreateClusterUser</code> privilege.</p> <p>If the <code>DbName</code> parameter is specified, the IAM policy must allow access to the resource <code>dbname</code> for the specified database name. </p>

**Required Parameters**

  - `dbUser` **:** `String`
  - `clusterIdentifier` **:** `String`

-}
getClusterCredentials :
    String
    -> String
    -> (GetClusterCredentialsOptions -> GetClusterCredentialsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ClusterCredentials)
getClusterCredentials dbUser clusterIdentifier setOptions =
    let
        requestInput =
            GetClusterCredentialsMessage
                dbUser
                options.dbName
                clusterIdentifier
                options.durationSeconds
                options.autoCreate
                options.dbGroups

        options =
            setOptions (GetClusterCredentialsOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetClusterCredentials")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs getClusterCredentialsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetClusterCredentials"
            (AWS.Core.Decode.ResultDecoder "GetClusterCredentialsResult" clusterCredentialsDecoder)
        )


{-| Options for a getClusterCredentials request
-}
type alias GetClusterCredentialsOptions =
    { dbName : Maybe String
    , durationSeconds : Maybe Int
    , autoCreate : Maybe Bool
    , dbGroups : Maybe (List String)
    }


{-|

<p>Returns an array of DC2 ReservedNodeOfferings that matches the payment type, term, and usage price of the given DC1 reserved node.</p>

**Required Parameters**

  - `reservedNodeId` **:** `String`

-}
getReservedNodeExchangeOfferings :
    String
    -> (GetReservedNodeExchangeOfferingsOptions -> GetReservedNodeExchangeOfferingsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetReservedNodeExchangeOfferingsOutputMessage)
getReservedNodeExchangeOfferings reservedNodeId setOptions =
    let
        requestInput =
            GetReservedNodeExchangeOfferingsInputMessage
                reservedNodeId
                options.maxRecords
                options.marker

        options =
            setOptions (GetReservedNodeExchangeOfferingsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetReservedNodeExchangeOfferings")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs getReservedNodeExchangeOfferingsInputMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetReservedNodeExchangeOfferings"
            (AWS.Core.Decode.ResultDecoder "GetReservedNodeExchangeOfferingsResult" getReservedNodeExchangeOfferingsOutputMessageDecoder)
        )


{-| Options for a getReservedNodeExchangeOfferings request
-}
type alias GetReservedNodeExchangeOfferingsOptions =
    { maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Modifies the settings for a cluster. For example, you can add another security or parameter group, update the preferred maintenance window, or change the master user password. Resetting a cluster password or modifying the security groups associated with a cluster do not need a reboot. However, modifying a parameter group requires a reboot for parameters to take effect. For more information about managing clusters, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>You can also change node type and the number of nodes to scale up or down the cluster. When resizing a cluster, you must specify both the number of nodes and the node type even if one of the parameters does not change.</p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`

-}
modifyCluster :
    String
    -> (ModifyClusterOptions -> ModifyClusterOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyClusterResult)
modifyCluster clusterIdentifier setOptions =
    let
        requestInput =
            ModifyClusterMessage
                clusterIdentifier
                options.clusterType
                options.nodeType
                options.numberOfNodes
                options.clusterSecurityGroups
                options.vpcSecurityGroupIds
                options.masterUserPassword
                options.clusterParameterGroupName
                options.automatedSnapshotRetentionPeriod
                options.manualSnapshotRetentionPeriod
                options.preferredMaintenanceWindow
                options.clusterVersion
                options.allowVersionUpgrade
                options.hsmClientCertificateIdentifier
                options.hsmConfigurationIdentifier
                options.newClusterIdentifier
                options.publiclyAccessible
                options.elasticIp
                options.enhancedVpcRouting
                options.maintenanceTrackName
                options.encrypted
                options.kmsKeyId

        options =
            setOptions (ModifyClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifyCluster")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifyClusterMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyCluster"
            (AWS.Core.Decode.ResultDecoder "ModifyClusterResult" modifyClusterResultDecoder)
        )


{-| Options for a modifyCluster request
-}
type alias ModifyClusterOptions =
    { clusterType : Maybe String
    , nodeType : Maybe String
    , numberOfNodes : Maybe Int
    , clusterSecurityGroups : Maybe (List String)
    , vpcSecurityGroupIds : Maybe (List String)
    , masterUserPassword : Maybe String
    , clusterParameterGroupName : Maybe String
    , automatedSnapshotRetentionPeriod : Maybe Int
    , manualSnapshotRetentionPeriod : Maybe Int
    , preferredMaintenanceWindow : Maybe String
    , clusterVersion : Maybe String
    , allowVersionUpgrade : Maybe Bool
    , hsmClientCertificateIdentifier : Maybe String
    , hsmConfigurationIdentifier : Maybe String
    , newClusterIdentifier : Maybe String
    , publiclyAccessible : Maybe Bool
    , elasticIp : Maybe String
    , enhancedVpcRouting : Maybe Bool
    , maintenanceTrackName : Maybe String
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    }


{-|

<p>Modifies the database revision of a cluster. The database revision is a unique revision of the database running in a cluster.</p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`
  - `revisionTarget` **:** `String`

-}
modifyClusterDbRevision :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyClusterDbRevisionResult)
modifyClusterDbRevision clusterIdentifier revisionTarget =
    let
        requestInput =
            ModifyClusterDbRevisionMessage
                clusterIdentifier
                revisionTarget
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifyClusterDbRevision")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifyClusterDbRevisionMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyClusterDbRevision"
            (AWS.Core.Decode.ResultDecoder "ModifyClusterDbRevisionResult" modifyClusterDbRevisionResultDecoder)
        )


{-|

<p>Modifies the list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services.</p> <p>A cluster can have up to 10 IAM roles associated at any time.</p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`

-}
modifyClusterIamRoles :
    String
    -> (ModifyClusterIamRolesOptions -> ModifyClusterIamRolesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyClusterIamRolesResult)
modifyClusterIamRoles clusterIdentifier setOptions =
    let
        requestInput =
            ModifyClusterIamRolesMessage
                clusterIdentifier
                options.addIamRoles
                options.removeIamRoles

        options =
            setOptions (ModifyClusterIamRolesOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifyClusterIamRoles")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifyClusterIamRolesMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyClusterIamRoles"
            (AWS.Core.Decode.ResultDecoder "ModifyClusterIamRolesResult" modifyClusterIamRolesResultDecoder)
        )


{-| Options for a modifyClusterIamRoles request
-}
type alias ModifyClusterIamRolesOptions =
    { addIamRoles : Maybe (List String)
    , removeIamRoles : Maybe (List String)
    }


{-|

<p>Modifies the maintenance settings of a cluster. For example, you can defer a maintenance window. You can also update or cancel a deferment. </p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`

-}
modifyClusterMaintenance :
    String
    -> (ModifyClusterMaintenanceOptions -> ModifyClusterMaintenanceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyClusterMaintenanceResult)
modifyClusterMaintenance clusterIdentifier setOptions =
    let
        requestInput =
            ModifyClusterMaintenanceMessage
                clusterIdentifier
                options.deferMaintenance
                options.deferMaintenanceIdentifier
                options.deferMaintenanceStartTime
                options.deferMaintenanceEndTime
                options.deferMaintenanceDuration

        options =
            setOptions (ModifyClusterMaintenanceOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifyClusterMaintenance")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifyClusterMaintenanceMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyClusterMaintenance"
            (AWS.Core.Decode.ResultDecoder "ModifyClusterMaintenanceResult" modifyClusterMaintenanceResultDecoder)
        )


{-| Options for a modifyClusterMaintenance request
-}
type alias ModifyClusterMaintenanceOptions =
    { deferMaintenance : Maybe Bool
    , deferMaintenanceIdentifier : Maybe String
    , deferMaintenanceStartTime : Maybe Posix
    , deferMaintenanceEndTime : Maybe Posix
    , deferMaintenanceDuration : Maybe Int
    }


{-|

<p>Modifies the parameters of a parameter group.</p> <p> For more information about parameters and parameter groups, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `parameterGroupName` **:** `String`
  - `parameters` **:** `(List Parameter)`

-}
modifyClusterParameterGroup :
    String
    -> List Parameter
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ClusterParameterGroupNameMessage)
modifyClusterParameterGroup parameterGroupName parameters =
    let
        requestInput =
            ModifyClusterParameterGroupMessage
                parameterGroupName
                parameters
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifyClusterParameterGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifyClusterParameterGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyClusterParameterGroup"
            (AWS.Core.Decode.ResultDecoder "ModifyClusterParameterGroupResult" clusterParameterGroupNameMessageDecoder)
        )


{-|

<p>Modifies the settings for a snapshot.</p>

**Required Parameters**

  - `snapshotIdentifier` **:** `String`

-}
modifyClusterSnapshot :
    String
    -> (ModifyClusterSnapshotOptions -> ModifyClusterSnapshotOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyClusterSnapshotResult)
modifyClusterSnapshot snapshotIdentifier setOptions =
    let
        requestInput =
            ModifyClusterSnapshotMessage
                snapshotIdentifier
                options.manualSnapshotRetentionPeriod
                options.force

        options =
            setOptions (ModifyClusterSnapshotOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifyClusterSnapshot")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifyClusterSnapshotMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyClusterSnapshot"
            (AWS.Core.Decode.ResultDecoder "ModifyClusterSnapshotResult" modifyClusterSnapshotResultDecoder)
        )


{-| Options for a modifyClusterSnapshot request
-}
type alias ModifyClusterSnapshotOptions =
    { manualSnapshotRetentionPeriod : Maybe Int
    , force : Maybe Bool
    }


{-|

<p>Modifies a snapshot schedule for a cluster.</p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`

-}
modifyClusterSnapshotSchedule :
    String
    -> (ModifyClusterSnapshotScheduleOptions -> ModifyClusterSnapshotScheduleOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
modifyClusterSnapshotSchedule clusterIdentifier setOptions =
    let
        requestInput =
            ModifyClusterSnapshotScheduleMessage
                clusterIdentifier
                options.scheduleIdentifier
                options.disassociateSchedule

        options =
            setOptions (ModifyClusterSnapshotScheduleOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifyClusterSnapshotSchedule")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifyClusterSnapshotScheduleMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyClusterSnapshotSchedule"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a modifyClusterSnapshotSchedule request
-}
type alias ModifyClusterSnapshotScheduleOptions =
    { scheduleIdentifier : Maybe String
    , disassociateSchedule : Maybe Bool
    }


{-|

<p>Modifies a cluster subnet group to include the specified list of VPC subnets. The operation replaces the existing list of subnets with the new list of subnets.</p>

**Required Parameters**

  - `clusterSubnetGroupName` **:** `String`
  - `subnetIds` **:** `(List String)`

-}
modifyClusterSubnetGroup :
    String
    -> List String
    -> (ModifyClusterSubnetGroupOptions -> ModifyClusterSubnetGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyClusterSubnetGroupResult)
modifyClusterSubnetGroup clusterSubnetGroupName subnetIds setOptions =
    let
        requestInput =
            ModifyClusterSubnetGroupMessage
                clusterSubnetGroupName
                options.description
                subnetIds

        options =
            setOptions (ModifyClusterSubnetGroupOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifyClusterSubnetGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifyClusterSubnetGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyClusterSubnetGroup"
            (AWS.Core.Decode.ResultDecoder "ModifyClusterSubnetGroupResult" modifyClusterSubnetGroupResultDecoder)
        )


{-| Options for a modifyClusterSubnetGroup request
-}
type alias ModifyClusterSubnetGroupOptions =
    { description : Maybe String
    }


{-|

<p>Modifies an existing Amazon Redshift event notification subscription.</p>

**Required Parameters**

  - `subscriptionName` **:** `String`

-}
modifyEventSubscription :
    String
    -> (ModifyEventSubscriptionOptions -> ModifyEventSubscriptionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyEventSubscriptionResult)
modifyEventSubscription subscriptionName setOptions =
    let
        requestInput =
            ModifyEventSubscriptionMessage
                subscriptionName
                options.snsTopicArn
                options.sourceType
                options.sourceIds
                options.eventCategories
                options.severity
                options.enabled

        options =
            setOptions (ModifyEventSubscriptionOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifyEventSubscription")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifyEventSubscriptionMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyEventSubscription"
            (AWS.Core.Decode.ResultDecoder "ModifyEventSubscriptionResult" modifyEventSubscriptionResultDecoder)
        )


{-| Options for a modifyEventSubscription request
-}
type alias ModifyEventSubscriptionOptions =
    { snsTopicArn : Maybe String
    , sourceType : Maybe String
    , sourceIds : Maybe (List String)
    , eventCategories : Maybe (List String)
    , severity : Maybe String
    , enabled : Maybe Bool
    }


{-|

<p>Modifies the number of days to retain snapshots in the destination AWS Region after they are copied from the source AWS Region. By default, this operation only changes the retention period of copied automated snapshots. The retention periods for both new and existing copied automated snapshots are updated with the new retention period. You can set the manual option to change only the retention periods of copied manual snapshots. If you set this option, only newly copied manual snapshots have the new retention period. </p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`
  - `retentionPeriod` **:** `Int`

-}
modifySnapshotCopyRetentionPeriod :
    String
    -> Int
    -> (ModifySnapshotCopyRetentionPeriodOptions -> ModifySnapshotCopyRetentionPeriodOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifySnapshotCopyRetentionPeriodResult)
modifySnapshotCopyRetentionPeriod clusterIdentifier retentionPeriod setOptions =
    let
        requestInput =
            ModifySnapshotCopyRetentionPeriodMessage
                clusterIdentifier
                retentionPeriod
                options.manual

        options =
            setOptions (ModifySnapshotCopyRetentionPeriodOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifySnapshotCopyRetentionPeriod")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifySnapshotCopyRetentionPeriodMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifySnapshotCopyRetentionPeriod"
            (AWS.Core.Decode.ResultDecoder "ModifySnapshotCopyRetentionPeriodResult" modifySnapshotCopyRetentionPeriodResultDecoder)
        )


{-| Options for a modifySnapshotCopyRetentionPeriod request
-}
type alias ModifySnapshotCopyRetentionPeriodOptions =
    { manual : Maybe Bool
    }


{-|

<p>Modifies a snapshot schedule. Any schedule associated with a cluster is modified asynchronously.</p>

**Required Parameters**

  - `scheduleIdentifier` **:** `String`
  - `scheduleDefinitions` **:** `(List String)`

-}
modifySnapshotSchedule :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SnapshotSchedule)
modifySnapshotSchedule scheduleIdentifier scheduleDefinitions =
    let
        requestInput =
            ModifySnapshotScheduleMessage
                scheduleIdentifier
                scheduleDefinitions
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifySnapshotSchedule")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifySnapshotScheduleMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifySnapshotSchedule"
            (AWS.Core.Decode.ResultDecoder "ModifySnapshotScheduleResult" snapshotScheduleDecoder)
        )


{-|

<p>Allows you to purchase reserved nodes. Amazon Redshift offers a predefined set of reserved node offerings. You can purchase one or more of the offerings. You can call the <a>DescribeReservedNodeOfferings</a> API to obtain the available reserved node offerings. You can call this API by providing a specific reserved node offering and the number of nodes you want to reserve. </p> <p> For more information about reserved node offerings, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html">Purchasing Reserved Nodes</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `reservedNodeOfferingId` **:** `String`

-}
purchaseReservedNodeOffering :
    String
    -> (PurchaseReservedNodeOfferingOptions -> PurchaseReservedNodeOfferingOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PurchaseReservedNodeOfferingResult)
purchaseReservedNodeOffering reservedNodeOfferingId setOptions =
    let
        requestInput =
            PurchaseReservedNodeOfferingMessage
                reservedNodeOfferingId
                options.nodeCount

        options =
            setOptions (PurchaseReservedNodeOfferingOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "PurchaseReservedNodeOffering")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs purchaseReservedNodeOfferingMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PurchaseReservedNodeOffering"
            (AWS.Core.Decode.ResultDecoder "PurchaseReservedNodeOfferingResult" purchaseReservedNodeOfferingResultDecoder)
        )


{-| Options for a purchaseReservedNodeOffering request
-}
type alias PurchaseReservedNodeOfferingOptions =
    { nodeCount : Maybe Int
    }


{-|

<p>Reboots a cluster. This action is taken as soon as possible. It results in a momentary outage to the cluster, during which the cluster status is set to <code>rebooting</code>. A cluster event is created when the reboot is completed. Any pending cluster modifications (see <a>ModifyCluster</a>) are applied at this reboot. For more information about managing clusters, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`

-}
rebootCluster :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RebootClusterResult)
rebootCluster clusterIdentifier =
    let
        requestInput =
            RebootClusterMessage
                clusterIdentifier
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "RebootCluster")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs rebootClusterMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "RebootCluster"
            (AWS.Core.Decode.ResultDecoder "RebootClusterResult" rebootClusterResultDecoder)
        )


{-|

<p>Sets one or more parameters of the specified parameter group to their default values and sets the source values of the parameters to "engine-default". To reset the entire parameter group specify the <i>ResetAllParameters</i> parameter. For parameter changes to take effect you must reboot any associated clusters. </p>

**Required Parameters**

  - `parameterGroupName` **:** `String`

-}
resetClusterParameterGroup :
    String
    -> (ResetClusterParameterGroupOptions -> ResetClusterParameterGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ClusterParameterGroupNameMessage)
resetClusterParameterGroup parameterGroupName setOptions =
    let
        requestInput =
            ResetClusterParameterGroupMessage
                parameterGroupName
                options.resetAllParameters
                options.parameters

        options =
            setOptions (ResetClusterParameterGroupOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ResetClusterParameterGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs resetClusterParameterGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ResetClusterParameterGroup"
            (AWS.Core.Decode.ResultDecoder "ResetClusterParameterGroupResult" clusterParameterGroupNameMessageDecoder)
        )


{-| Options for a resetClusterParameterGroup request
-}
type alias ResetClusterParameterGroupOptions =
    { resetAllParameters : Maybe Bool
    , parameters : Maybe (List Parameter)
    }


{-|

<p>Changes the size of the cluster. You can change the cluster's type, or change the number or type of nodes. The default behavior is to use the elastic resize method. With an elastic resize, your cluster is available for read and write operations more quickly than with the classic resize method. </p> <p>Elastic resize operations have the following restrictions:</p> <ul> <li> <p>You can only resize clusters of the following types:</p> <ul> <li> <p>dc2.large</p> </li> <li> <p>dc2.8xlarge</p> </li> <li> <p>ds2.xlarge</p> </li> <li> <p>ds2.8xlarge</p> </li> </ul> </li> <li> <p>The type of nodes that you add must match the node type for the cluster.</p> </li> </ul>

**Required Parameters**

  - `clusterIdentifier` **:** `String`
  - `numberOfNodes` **:** `Int`

-}
resizeCluster :
    String
    -> Int
    -> (ResizeClusterOptions -> ResizeClusterOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ResizeClusterResult)
resizeCluster clusterIdentifier numberOfNodes setOptions =
    let
        requestInput =
            ResizeClusterMessage
                clusterIdentifier
                options.clusterType
                options.nodeType
                numberOfNodes
                options.classic

        options =
            setOptions (ResizeClusterOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ResizeCluster")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs resizeClusterMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ResizeCluster"
            (AWS.Core.Decode.ResultDecoder "ResizeClusterResult" resizeClusterResultDecoder)
        )


{-| Options for a resizeCluster request
-}
type alias ResizeClusterOptions =
    { clusterType : Maybe String
    , nodeType : Maybe String
    , classic : Maybe Bool
    }


{-|

<p>Creates a new cluster from a snapshot. By default, Amazon Redshift creates the resulting cluster with the same configuration as the original cluster from which the snapshot was created, except that the new cluster is created with the default cluster security and parameter groups. After Amazon Redshift creates the cluster, you can use the <a>ModifyCluster</a> API to associate a different security group and different parameter group with the restored cluster. If you are using a DS node type, you can also choose to change to another DS node type of the same size during restore.</p> <p>If you restore a cluster into a VPC, you must provide a cluster subnet group where you want the cluster restored.</p> <p> For more information about working with snapshots, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`
  - `snapshotIdentifier` **:** `String`

-}
restoreFromClusterSnapshot :
    String
    -> String
    -> (RestoreFromClusterSnapshotOptions -> RestoreFromClusterSnapshotOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreFromClusterSnapshotResult)
restoreFromClusterSnapshot clusterIdentifier snapshotIdentifier setOptions =
    let
        requestInput =
            RestoreFromClusterSnapshotMessage
                clusterIdentifier
                snapshotIdentifier
                options.snapshotClusterIdentifier
                options.port_
                options.availabilityZone
                options.allowVersionUpgrade
                options.clusterSubnetGroupName
                options.publiclyAccessible
                options.ownerAccount
                options.hsmClientCertificateIdentifier
                options.hsmConfigurationIdentifier
                options.elasticIp
                options.clusterParameterGroupName
                options.clusterSecurityGroups
                options.vpcSecurityGroupIds
                options.preferredMaintenanceWindow
                options.automatedSnapshotRetentionPeriod
                options.manualSnapshotRetentionPeriod
                options.kmsKeyId
                options.nodeType
                options.enhancedVpcRouting
                options.additionalInfo
                options.iamRoles
                options.maintenanceTrackName
                options.snapshotScheduleIdentifier

        options =
            setOptions (RestoreFromClusterSnapshotOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "RestoreFromClusterSnapshot")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs restoreFromClusterSnapshotMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "RestoreFromClusterSnapshot"
            (AWS.Core.Decode.ResultDecoder "RestoreFromClusterSnapshotResult" restoreFromClusterSnapshotResultDecoder)
        )


{-| Options for a restoreFromClusterSnapshot request
-}
type alias RestoreFromClusterSnapshotOptions =
    { snapshotClusterIdentifier : Maybe String
    , port_ : Maybe Int
    , availabilityZone : Maybe String
    , allowVersionUpgrade : Maybe Bool
    , clusterSubnetGroupName : Maybe String
    , publiclyAccessible : Maybe Bool
    , ownerAccount : Maybe String
    , hsmClientCertificateIdentifier : Maybe String
    , hsmConfigurationIdentifier : Maybe String
    , elasticIp : Maybe String
    , clusterParameterGroupName : Maybe String
    , clusterSecurityGroups : Maybe (List String)
    , vpcSecurityGroupIds : Maybe (List String)
    , preferredMaintenanceWindow : Maybe String
    , automatedSnapshotRetentionPeriod : Maybe Int
    , manualSnapshotRetentionPeriod : Maybe Int
    , kmsKeyId : Maybe String
    , nodeType : Maybe String
    , enhancedVpcRouting : Maybe Bool
    , additionalInfo : Maybe String
    , iamRoles : Maybe (List String)
    , maintenanceTrackName : Maybe String
    , snapshotScheduleIdentifier : Maybe String
    }


{-|

<p>Creates a new table from a table in an Amazon Redshift cluster snapshot. You must create the new table within the Amazon Redshift cluster that the snapshot was taken from.</p> <p>You cannot use <code>RestoreTableFromClusterSnapshot</code> to restore a table with the same name as an existing table in an Amazon Redshift cluster. That is, you cannot overwrite an existing table in a cluster with a restored table. If you want to replace your original table with a new, restored table, then rename or drop your original table before you call <code>RestoreTableFromClusterSnapshot</code>. When you have renamed your original table, then you can pass the original name of the table as the <code>NewTableName</code> parameter value in the call to <code>RestoreTableFromClusterSnapshot</code>. This way, you can replace the original table with the table created from the snapshot.</p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`
  - `snapshotIdentifier` **:** `String`
  - `sourceDatabaseName` **:** `String`
  - `sourceTableName` **:** `String`
  - `newTableName` **:** `String`

-}
restoreTableFromClusterSnapshot :
    String
    -> String
    -> String
    -> String
    -> String
    -> (RestoreTableFromClusterSnapshotOptions -> RestoreTableFromClusterSnapshotOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreTableFromClusterSnapshotResult)
restoreTableFromClusterSnapshot clusterIdentifier snapshotIdentifier sourceDatabaseName sourceTableName newTableName setOptions =
    let
        requestInput =
            RestoreTableFromClusterSnapshotMessage
                clusterIdentifier
                snapshotIdentifier
                sourceDatabaseName
                options.sourceSchemaName
                sourceTableName
                options.targetDatabaseName
                options.targetSchemaName
                newTableName

        options =
            setOptions (RestoreTableFromClusterSnapshotOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "RestoreTableFromClusterSnapshot")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs restoreTableFromClusterSnapshotMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "RestoreTableFromClusterSnapshot"
            (AWS.Core.Decode.ResultDecoder "RestoreTableFromClusterSnapshotResult" restoreTableFromClusterSnapshotResultDecoder)
        )


{-| Options for a restoreTableFromClusterSnapshot request
-}
type alias RestoreTableFromClusterSnapshotOptions =
    { sourceSchemaName : Maybe String
    , targetDatabaseName : Maybe String
    , targetSchemaName : Maybe String
    }


{-|

<p>Revokes an ingress rule in an Amazon Redshift security group for a previously authorized IP range or Amazon EC2 security group. To add an ingress rule, see <a>AuthorizeClusterSecurityGroupIngress</a>. For information about managing security groups, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>

**Required Parameters**

  - `clusterSecurityGroupName` **:** `String`

-}
revokeClusterSecurityGroupIngress :
    String
    -> (RevokeClusterSecurityGroupIngressOptions -> RevokeClusterSecurityGroupIngressOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RevokeClusterSecurityGroupIngressResult)
revokeClusterSecurityGroupIngress clusterSecurityGroupName setOptions =
    let
        requestInput =
            RevokeClusterSecurityGroupIngressMessage
                clusterSecurityGroupName
                options.cIDRIP
                options.eC2SecurityGroupName
                options.eC2SecurityGroupOwnerId

        options =
            setOptions (RevokeClusterSecurityGroupIngressOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "RevokeClusterSecurityGroupIngress")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs revokeClusterSecurityGroupIngressMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "RevokeClusterSecurityGroupIngress"
            (AWS.Core.Decode.ResultDecoder "RevokeClusterSecurityGroupIngressResult" revokeClusterSecurityGroupIngressResultDecoder)
        )


{-| Options for a revokeClusterSecurityGroupIngress request
-}
type alias RevokeClusterSecurityGroupIngressOptions =
    { cIDRIP : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    }


{-|

<p>Removes the ability of the specified AWS customer account to restore the specified snapshot. If the account is currently restoring the snapshot, the restore will run to completion.</p> <p> For more information about working with snapshots, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

**Required Parameters**

  - `snapshotIdentifier` **:** `String`
  - `accountWithRestoreAccess` **:** `String`

-}
revokeSnapshotAccess :
    String
    -> String
    -> (RevokeSnapshotAccessOptions -> RevokeSnapshotAccessOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RevokeSnapshotAccessResult)
revokeSnapshotAccess snapshotIdentifier accountWithRestoreAccess setOptions =
    let
        requestInput =
            RevokeSnapshotAccessMessage
                snapshotIdentifier
                options.snapshotClusterIdentifier
                accountWithRestoreAccess

        options =
            setOptions (RevokeSnapshotAccessOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "RevokeSnapshotAccess")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs revokeSnapshotAccessMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "RevokeSnapshotAccess"
            (AWS.Core.Decode.ResultDecoder "RevokeSnapshotAccessResult" revokeSnapshotAccessResultDecoder)
        )


{-| Options for a revokeSnapshotAccess request
-}
type alias RevokeSnapshotAccessOptions =
    { snapshotClusterIdentifier : Maybe String
    }


{-|

<p>Rotates the encryption keys for a cluster.</p>

**Required Parameters**

  - `clusterIdentifier` **:** `String`

-}
rotateEncryptionKey :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RotateEncryptionKeyResult)
rotateEncryptionKey clusterIdentifier =
    let
        requestInput =
            RotateEncryptionKeyMessage
                clusterIdentifier
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "RotateEncryptionKey")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs rotateEncryptionKeyMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "RotateEncryptionKey"
            (AWS.Core.Decode.ResultDecoder "RotateEncryptionKeyResult" rotateEncryptionKeyResultDecoder)
        )


{-| Type of HTTP response from acceptReservedNodeExchangeOutpu
-}
type alias AcceptReservedNodeExchangeOutputMessage =
    { exchangedReservedNode : Maybe ReservedNode
    }


acceptReservedNodeExchangeOutputMessageDecoder : JD.Decoder AcceptReservedNodeExchangeOutputMessage
acceptReservedNodeExchangeOutputMessageDecoder =
    JD.succeed AcceptReservedNodeExchangeOutputMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExchangedReservedNode", "exchangedReservedNode" ]
                reservedNodeDecoder
            )


{-|

<p>A name value pair that describes an aspect of an account. </p>

-}
type alias AccountAttribute =
    { attributeName : Maybe String
    , attributeValues : Maybe (List AttributeValueTarget)
    }


accountAttributeDecoder : JD.Decoder AccountAttribute
accountAttributeDecoder =
    JD.succeed AccountAttribute
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttributeName", "attributeName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttributeValues", "attributeValues" ]
                (JD.list attributeValueTargetDecoder)
            )


{-| Type of HTTP response from accountAttri
-}
type alias AccountAttributeList =
    { accountAttributes : Maybe (List AccountAttribute)
    }


accountAttributeListDecoder : JD.Decoder AccountAttributeList
accountAttributeListDecoder =
    JD.succeed AccountAttributeList
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountAttributes", "accountAttributes" ]
                (JD.list accountAttributeDecoder)
            )


{-|

<p>Describes an AWS customer account authorized to restore a snapshot.</p>

-}
type alias AccountWithRestoreAccess =
    { accountId : Maybe String
    , accountAlias : Maybe String
    }


accountWithRestoreAccessDecoder : JD.Decoder AccountWithRestoreAccess
accountWithRestoreAccessDecoder =
    JD.succeed AccountWithRestoreAccess
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountId", "accountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountAlias", "accountAlias" ]
                JD.string
            )


{-|

<p>Describes an attribute value.</p>

-}
type alias AttributeValueTarget =
    { attributeValue : Maybe String
    }


attributeValueTargetDecoder : JD.Decoder AttributeValueTarget
attributeValueTargetDecoder =
    JD.succeed AttributeValueTarget
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttributeValue", "attributeValue" ]
                JD.string
            )


{-| Type of HTTP response from authorizeClusterSecurityGroupIngre
-}
type alias AuthorizeClusterSecurityGroupIngressResult =
    { clusterSecurityGroup : Maybe ClusterSecurityGroup
    }


authorizeClusterSecurityGroupIngressResultDecoder : JD.Decoder AuthorizeClusterSecurityGroupIngressResult
authorizeClusterSecurityGroupIngressResultDecoder =
    JD.succeed AuthorizeClusterSecurityGroupIngressResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterSecurityGroup", "clusterSecurityGroup" ]
                clusterSecurityGroupDecoder
            )


{-| Type of HTTP response from authorizeSnapshotAcce
-}
type alias AuthorizeSnapshotAccessResult =
    { snapshot : Maybe Snapshot
    }


authorizeSnapshotAccessResultDecoder : JD.Decoder AuthorizeSnapshotAccessResult
authorizeSnapshotAccessResultDecoder =
    JD.succeed AuthorizeSnapshotAccessResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Snapshot", "snapshot" ]
                snapshotDecoder
            )


{-|

<p>Describes an availability zone.</p>

-}
type alias AvailabilityZone =
    { name : Maybe String
    , supportedPlatforms : Maybe (List SupportedPlatform)
    }


availabilityZoneDecoder : JD.Decoder AvailabilityZone
availabilityZoneDecoder =
    JD.succeed AvailabilityZone
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SupportedPlatforms", "supportedPlatforms" ]
                (JD.list supportedPlatformDecoder)
            )


{-| Type of HTTP response from batchDeleteClusterSnapsho
-}
type alias BatchDeleteClusterSnapshotsResult =
    { resources : Maybe (List String)
    , errors : Maybe (List SnapshotErrorMessage)
    }


batchDeleteClusterSnapshotsResultDecoder : JD.Decoder BatchDeleteClusterSnapshotsResult
batchDeleteClusterSnapshotsResultDecoder =
    JD.succeed BatchDeleteClusterSnapshotsResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Resources", "resources" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Errors", "errors" ]
                (JD.list snapshotErrorMessageDecoder)
            )


{-| Type of HTTP response from batchModifyClusterSnapshotsOutpu
-}
type alias BatchModifyClusterSnapshotsOutputMessage =
    { resources : Maybe (List String)
    , errors : Maybe (List SnapshotErrorMessage)
    }


batchModifyClusterSnapshotsOutputMessageDecoder : JD.Decoder BatchModifyClusterSnapshotsOutputMessage
batchModifyClusterSnapshotsOutputMessageDecoder =
    JD.succeed BatchModifyClusterSnapshotsOutputMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Resources", "resources" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Errors", "errors" ]
                (JD.list snapshotErrorMessageDecoder)
            )


{-|

<p>Describes a cluster.</p>

-}
type alias Cluster =
    { clusterIdentifier : Maybe String
    , nodeType : Maybe String
    , clusterStatus : Maybe String
    , clusterAvailabilityStatus : Maybe String
    , modifyStatus : Maybe String
    , masterUsername : Maybe String
    , dBName : Maybe String
    , endpoint : Maybe Endpoint
    , clusterCreateTime : Maybe Posix
    , automatedSnapshotRetentionPeriod : Maybe Int
    , manualSnapshotRetentionPeriod : Maybe Int
    , clusterSecurityGroups : Maybe (List ClusterSecurityGroupMembership)
    , vpcSecurityGroups : Maybe (List VpcSecurityGroupMembership)
    , clusterParameterGroups : Maybe (List ClusterParameterGroupStatus)
    , clusterSubnetGroupName : Maybe String
    , vpcId : Maybe String
    , availabilityZone : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , pendingModifiedValues : Maybe PendingModifiedValues
    , clusterVersion : Maybe String
    , allowVersionUpgrade : Maybe Bool
    , numberOfNodes : Maybe Int
    , publiclyAccessible : Maybe Bool
    , encrypted : Maybe Bool
    , restoreStatus : Maybe RestoreStatus
    , dataTransferProgress : Maybe DataTransferProgress
    , hsmStatus : Maybe HsmStatus
    , clusterSnapshotCopyStatus : Maybe ClusterSnapshotCopyStatus
    , clusterPublicKey : Maybe String
    , clusterNodes : Maybe (List ClusterNode)
    , elasticIpStatus : Maybe ElasticIpStatus
    , clusterRevisionNumber : Maybe String
    , tags : Maybe (List Tag)
    , kmsKeyId : Maybe String
    , enhancedVpcRouting : Maybe Bool
    , iamRoles : Maybe (List ClusterIamRole)
    , pendingActions : Maybe (List String)
    , maintenanceTrackName : Maybe String
    , elasticResizeNumberOfNodeOptions : Maybe String
    , deferredMaintenanceWindows : Maybe (List DeferredMaintenanceWindow)
    , snapshotScheduleIdentifier : Maybe String
    , snapshotScheduleState : Maybe ScheduleState
    , resizeInfo : Maybe ResizeInfo
    }


clusterDecoder : JD.Decoder Cluster
clusterDecoder =
    JD.succeed Cluster
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterIdentifier", "clusterIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeType", "nodeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterStatus", "clusterStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterAvailabilityStatus", "clusterAvailabilityStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ModifyStatus", "modifyStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MasterUsername", "masterUsername" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DBName", "dBName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Endpoint", "endpoint" ]
                endpointDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterCreateTime", "clusterCreateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutomatedSnapshotRetentionPeriod", "automatedSnapshotRetentionPeriod" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ManualSnapshotRetentionPeriod", "manualSnapshotRetentionPeriod" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterSecurityGroups", "clusterSecurityGroups" ]
                (JD.list clusterSecurityGroupMembershipDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcSecurityGroups", "vpcSecurityGroups" ]
                (JD.list vpcSecurityGroupMembershipDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterParameterGroups", "clusterParameterGroups" ]
                (JD.list clusterParameterGroupStatusDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterSubnetGroupName", "clusterSubnetGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcId", "vpcId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AvailabilityZone", "availabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreferredMaintenanceWindow", "preferredMaintenanceWindow" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PendingModifiedValues", "pendingModifiedValues" ]
                pendingModifiedValuesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterVersion", "clusterVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AllowVersionUpgrade", "allowVersionUpgrade" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NumberOfNodes", "numberOfNodes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PubliclyAccessible", "publiclyAccessible" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Encrypted", "encrypted" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RestoreStatus", "restoreStatus" ]
                restoreStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DataTransferProgress", "dataTransferProgress" ]
                dataTransferProgressDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmStatus", "hsmStatus" ]
                hsmStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterSnapshotCopyStatus", "clusterSnapshotCopyStatus" ]
                clusterSnapshotCopyStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterPublicKey", "clusterPublicKey" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterNodes", "clusterNodes" ]
                (JD.list clusterNodeDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ElasticIpStatus", "elasticIpStatus" ]
                elasticIpStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterRevisionNumber", "clusterRevisionNumber" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KmsKeyId", "kmsKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EnhancedVpcRouting", "enhancedVpcRouting" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IamRoles", "iamRoles" ]
                (JD.list clusterIamRoleDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PendingActions", "pendingActions" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaintenanceTrackName", "maintenanceTrackName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ElasticResizeNumberOfNodeOptions", "elasticResizeNumberOfNodeOptions" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeferredMaintenanceWindows", "deferredMaintenanceWindows" ]
                (JD.list deferredMaintenanceWindowDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotScheduleIdentifier", "snapshotScheduleIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotScheduleState", "snapshotScheduleState" ]
                scheduleStateDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResizeInfo", "resizeInfo" ]
                resizeInfoDecoder
            )


{-|

<p/>

-}
type alias ClusterAssociatedToSchedule =
    { clusterIdentifier : Maybe String
    , scheduleAssociationState : Maybe ScheduleState
    }


clusterAssociatedToScheduleDecoder : JD.Decoder ClusterAssociatedToSchedule
clusterAssociatedToScheduleDecoder =
    JD.succeed ClusterAssociatedToSchedule
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterIdentifier", "clusterIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ScheduleAssociationState", "scheduleAssociationState" ]
                scheduleStateDecoder
            )


{-| Type of HTTP response from clusterCre
-}
type alias ClusterCredentials =
    { dbUser : Maybe String
    , dbPassword : Maybe String
    , expiration : Maybe Posix
    }


clusterCredentialsDecoder : JD.Decoder ClusterCredentials
clusterCredentialsDecoder =
    JD.succeed ClusterCredentials
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DbUser", "dbUser" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DbPassword", "dbPassword" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Expiration", "expiration" ]
                JDX.datetime
            )


{-|

<p>Describes a <code>ClusterDbRevision</code>.</p>

-}
type alias ClusterDbRevision =
    { clusterIdentifier : Maybe String
    , currentDatabaseRevision : Maybe String
    , databaseRevisionReleaseDate : Maybe Posix
    , revisionTargets : Maybe (List RevisionTarget)
    }


clusterDbRevisionDecoder : JD.Decoder ClusterDbRevision
clusterDbRevisionDecoder =
    JD.succeed ClusterDbRevision
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterIdentifier", "clusterIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CurrentDatabaseRevision", "currentDatabaseRevision" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DatabaseRevisionReleaseDate", "databaseRevisionReleaseDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RevisionTargets", "revisionTargets" ]
                (JD.list revisionTargetDecoder)
            )


{-| Type of HTTP response from clusterDbRevision
-}
type alias ClusterDbRevisionsMessage =
    { marker : Maybe String
    , clusterDbRevisions : Maybe (List ClusterDbRevision)
    }


clusterDbRevisionsMessageDecoder : JD.Decoder ClusterDbRevisionsMessage
clusterDbRevisionsMessageDecoder =
    JD.succeed ClusterDbRevisionsMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterDbRevisions", "clusterDbRevisions" ]
                (JD.list clusterDbRevisionDecoder)
            )


{-|

<p>An AWS Identity and Access Management (IAM) role that can be used by the associated Amazon Redshift cluster to access other AWS services.</p>

-}
type alias ClusterIamRole =
    { iamRoleArn : Maybe String
    , applyStatus : Maybe String
    }


clusterIamRoleDecoder : JD.Decoder ClusterIamRole
clusterIamRoleDecoder =
    JD.succeed ClusterIamRole
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IamRoleArn", "iamRoleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ApplyStatus", "applyStatus" ]
                JD.string
            )


{-|

<p>The identifier of a node in a cluster.</p>

-}
type alias ClusterNode =
    { nodeRole : Maybe String
    , privateIPAddress : Maybe String
    , publicIPAddress : Maybe String
    }


clusterNodeDecoder : JD.Decoder ClusterNode
clusterNodeDecoder =
    JD.succeed ClusterNode
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeRole", "nodeRole" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PrivateIPAddress", "privateIPAddress" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PublicIPAddress", "publicIPAddress" ]
                JD.string
            )


{-|

<p>Describes a parameter group.</p>

-}
type alias ClusterParameterGroup =
    { parameterGroupName : Maybe String
    , parameterGroupFamily : Maybe String
    , description : Maybe String
    , tags : Maybe (List Tag)
    }


clusterParameterGroupDecoder : JD.Decoder ClusterParameterGroup
clusterParameterGroupDecoder =
    JD.succeed ClusterParameterGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroupName", "parameterGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroupFamily", "parameterGroupFamily" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-| Type of HTTP response from clusterParameterGrou
-}
type alias ClusterParameterGroupDetails =
    { parameters : Maybe (List Parameter)
    , marker : Maybe String
    }


clusterParameterGroupDetailsDecoder : JD.Decoder ClusterParameterGroupDetails
clusterParameterGroupDetailsDecoder =
    JD.succeed ClusterParameterGroupDetails
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Parameters", "parameters" ]
                (JD.list parameterDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from clusterParameterGroupNam
-}
type alias ClusterParameterGroupNameMessage =
    { parameterGroupName : Maybe String
    , parameterGroupStatus : Maybe String
    }


clusterParameterGroupNameMessageDecoder : JD.Decoder ClusterParameterGroupNameMessage
clusterParameterGroupNameMessageDecoder =
    JD.succeed ClusterParameterGroupNameMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroupName", "parameterGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroupStatus", "parameterGroupStatus" ]
                JD.string
            )


{-|

<p>Describes the status of a parameter group.</p>

-}
type alias ClusterParameterGroupStatus =
    { parameterGroupName : Maybe String
    , parameterApplyStatus : Maybe String
    , clusterParameterStatusList : Maybe (List ClusterParameterStatus)
    }


clusterParameterGroupStatusDecoder : JD.Decoder ClusterParameterGroupStatus
clusterParameterGroupStatusDecoder =
    JD.succeed ClusterParameterGroupStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroupName", "parameterGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterApplyStatus", "parameterApplyStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterParameterStatusList", "clusterParameterStatusList" ]
                (JD.list clusterParameterStatusDecoder)
            )


{-| Type of HTTP response from clusterParameterGroup
-}
type alias ClusterParameterGroupsMessage =
    { marker : Maybe String
    , parameterGroups : Maybe (List ClusterParameterGroup)
    }


clusterParameterGroupsMessageDecoder : JD.Decoder ClusterParameterGroupsMessage
clusterParameterGroupsMessageDecoder =
    JD.succeed ClusterParameterGroupsMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroups", "parameterGroups" ]
                (JD.list clusterParameterGroupDecoder)
            )


{-|

<p>Describes the status of a parameter group.</p>

-}
type alias ClusterParameterStatus =
    { parameterName : Maybe String
    , parameterApplyStatus : Maybe String
    , parameterApplyErrorDescription : Maybe String
    }


clusterParameterStatusDecoder : JD.Decoder ClusterParameterStatus
clusterParameterStatusDecoder =
    JD.succeed ClusterParameterStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterName", "parameterName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterApplyStatus", "parameterApplyStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterApplyErrorDescription", "parameterApplyErrorDescription" ]
                JD.string
            )


{-|

<p>Describes a security group.</p>

-}
type alias ClusterSecurityGroup =
    { clusterSecurityGroupName : Maybe String
    , description : Maybe String
    , eC2SecurityGroups : Maybe (List EC2SecurityGroup)
    , iPRanges : Maybe (List IPRange)
    , tags : Maybe (List Tag)
    }


clusterSecurityGroupDecoder : JD.Decoder ClusterSecurityGroup
clusterSecurityGroupDecoder =
    JD.succeed ClusterSecurityGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterSecurityGroupName", "clusterSecurityGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EC2SecurityGroups", "eC2SecurityGroups" ]
                (JD.list eC2SecurityGroupDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IPRanges", "iPRanges" ]
                (JD.list iPRangeDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-|

<p>Describes a cluster security group.</p>

-}
type alias ClusterSecurityGroupMembership =
    { clusterSecurityGroupName : Maybe String
    , status : Maybe String
    }


clusterSecurityGroupMembershipDecoder : JD.Decoder ClusterSecurityGroupMembership
clusterSecurityGroupMembershipDecoder =
    JD.succeed ClusterSecurityGroupMembership
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterSecurityGroupName", "clusterSecurityGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )


{-| Type of HTTP response from clusterSecurityGrou
-}
type alias ClusterSecurityGroupMessage =
    { marker : Maybe String
    , clusterSecurityGroups : Maybe (List ClusterSecurityGroup)
    }


clusterSecurityGroupMessageDecoder : JD.Decoder ClusterSecurityGroupMessage
clusterSecurityGroupMessageDecoder =
    JD.succeed ClusterSecurityGroupMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterSecurityGroups", "clusterSecurityGroups" ]
                (JD.list clusterSecurityGroupDecoder)
            )


{-|

<p>Returns the destination region and retention period that are configured for cross-region snapshot copy.</p>

-}
type alias ClusterSnapshotCopyStatus =
    { destinationRegion : Maybe String
    , retentionPeriod : Maybe Int
    , manualSnapshotRetentionPeriod : Maybe Int
    , snapshotCopyGrantName : Maybe String
    }


clusterSnapshotCopyStatusDecoder : JD.Decoder ClusterSnapshotCopyStatus
clusterSnapshotCopyStatusDecoder =
    JD.succeed ClusterSnapshotCopyStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DestinationRegion", "destinationRegion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RetentionPeriod", "retentionPeriod" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ManualSnapshotRetentionPeriod", "manualSnapshotRetentionPeriod" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotCopyGrantName", "snapshotCopyGrantName" ]
                JD.string
            )


{-|

<p>Describes a subnet group.</p>

-}
type alias ClusterSubnetGroup =
    { clusterSubnetGroupName : Maybe String
    , description : Maybe String
    , vpcId : Maybe String
    , subnetGroupStatus : Maybe String
    , subnets : Maybe (List Subnet)
    , tags : Maybe (List Tag)
    }


clusterSubnetGroupDecoder : JD.Decoder ClusterSubnetGroup
clusterSubnetGroupDecoder =
    JD.succeed ClusterSubnetGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterSubnetGroupName", "clusterSubnetGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcId", "vpcId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetGroupStatus", "subnetGroupStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Subnets", "subnets" ]
                (JD.list subnetDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-| Type of HTTP response from clusterSubnetGrou
-}
type alias ClusterSubnetGroupMessage =
    { marker : Maybe String
    , clusterSubnetGroups : Maybe (List ClusterSubnetGroup)
    }


clusterSubnetGroupMessageDecoder : JD.Decoder ClusterSubnetGroupMessage
clusterSubnetGroupMessageDecoder =
    JD.succeed ClusterSubnetGroupMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterSubnetGroups", "clusterSubnetGroups" ]
                (JD.list clusterSubnetGroupDecoder)
            )


{-|

<p>Describes a cluster version, including the parameter group family and description of the version.</p>

-}
type alias ClusterVersion =
    { clusterVersion : Maybe String
    , clusterParameterGroupFamily : Maybe String
    , description : Maybe String
    }


clusterVersionDecoder : JD.Decoder ClusterVersion
clusterVersionDecoder =
    JD.succeed ClusterVersion
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterVersion", "clusterVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterParameterGroupFamily", "clusterParameterGroupFamily" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )


{-| Type of HTTP response from clusterVersion
-}
type alias ClusterVersionsMessage =
    { marker : Maybe String
    , clusterVersions : Maybe (List ClusterVersion)
    }


clusterVersionsMessageDecoder : JD.Decoder ClusterVersionsMessage
clusterVersionsMessageDecoder =
    JD.succeed ClusterVersionsMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterVersions", "clusterVersions" ]
                (JD.list clusterVersionDecoder)
            )


{-| Type of HTTP response from cluster
-}
type alias ClustersMessage =
    { marker : Maybe String
    , clusters : Maybe (List Cluster)
    }


clustersMessageDecoder : JD.Decoder ClustersMessage
clustersMessageDecoder =
    JD.succeed ClustersMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Clusters", "clusters" ]
                (JD.list clusterDecoder)
            )


{-| Type of HTTP response from copyClusterSnapsh
-}
type alias CopyClusterSnapshotResult =
    { snapshot : Maybe Snapshot
    }


copyClusterSnapshotResultDecoder : JD.Decoder CopyClusterSnapshotResult
copyClusterSnapshotResultDecoder =
    JD.succeed CopyClusterSnapshotResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Snapshot", "snapshot" ]
                snapshotDecoder
            )


{-| Type of HTTP response from createClusterParameterGro
-}
type alias CreateClusterParameterGroupResult =
    { clusterParameterGroup : Maybe ClusterParameterGroup
    }


createClusterParameterGroupResultDecoder : JD.Decoder CreateClusterParameterGroupResult
createClusterParameterGroupResultDecoder =
    JD.succeed CreateClusterParameterGroupResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterParameterGroup", "clusterParameterGroup" ]
                clusterParameterGroupDecoder
            )


{-| Type of HTTP response from createClust
-}
type alias CreateClusterResult =
    { cluster : Maybe Cluster
    }


createClusterResultDecoder : JD.Decoder CreateClusterResult
createClusterResultDecoder =
    JD.succeed CreateClusterResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-| Type of HTTP response from createClusterSecurityGro
-}
type alias CreateClusterSecurityGroupResult =
    { clusterSecurityGroup : Maybe ClusterSecurityGroup
    }


createClusterSecurityGroupResultDecoder : JD.Decoder CreateClusterSecurityGroupResult
createClusterSecurityGroupResultDecoder =
    JD.succeed CreateClusterSecurityGroupResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterSecurityGroup", "clusterSecurityGroup" ]
                clusterSecurityGroupDecoder
            )


{-| Type of HTTP response from createClusterSnapsh
-}
type alias CreateClusterSnapshotResult =
    { snapshot : Maybe Snapshot
    }


createClusterSnapshotResultDecoder : JD.Decoder CreateClusterSnapshotResult
createClusterSnapshotResultDecoder =
    JD.succeed CreateClusterSnapshotResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Snapshot", "snapshot" ]
                snapshotDecoder
            )


{-| Type of HTTP response from createClusterSubnetGro
-}
type alias CreateClusterSubnetGroupResult =
    { clusterSubnetGroup : Maybe ClusterSubnetGroup
    }


createClusterSubnetGroupResultDecoder : JD.Decoder CreateClusterSubnetGroupResult
createClusterSubnetGroupResultDecoder =
    JD.succeed CreateClusterSubnetGroupResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterSubnetGroup", "clusterSubnetGroup" ]
                clusterSubnetGroupDecoder
            )


{-| Type of HTTP response from createEventSubscripti
-}
type alias CreateEventSubscriptionResult =
    { eventSubscription : Maybe EventSubscription
    }


createEventSubscriptionResultDecoder : JD.Decoder CreateEventSubscriptionResult
createEventSubscriptionResultDecoder =
    JD.succeed CreateEventSubscriptionResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventSubscription", "eventSubscription" ]
                eventSubscriptionDecoder
            )


{-| Type of HTTP response from createHsmClientCertifica
-}
type alias CreateHsmClientCertificateResult =
    { hsmClientCertificate : Maybe HsmClientCertificate
    }


createHsmClientCertificateResultDecoder : JD.Decoder CreateHsmClientCertificateResult
createHsmClientCertificateResultDecoder =
    JD.succeed CreateHsmClientCertificateResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmClientCertificate", "hsmClientCertificate" ]
                hsmClientCertificateDecoder
            )


{-| Type of HTTP response from createHsmConfigurati
-}
type alias CreateHsmConfigurationResult =
    { hsmConfiguration : Maybe HsmConfiguration
    }


createHsmConfigurationResultDecoder : JD.Decoder CreateHsmConfigurationResult
createHsmConfigurationResultDecoder =
    JD.succeed CreateHsmConfigurationResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmConfiguration", "hsmConfiguration" ]
                hsmConfigurationDecoder
            )


{-| Type of HTTP response from createSnapshotCopyGra
-}
type alias CreateSnapshotCopyGrantResult =
    { snapshotCopyGrant : Maybe SnapshotCopyGrant
    }


createSnapshotCopyGrantResultDecoder : JD.Decoder CreateSnapshotCopyGrantResult
createSnapshotCopyGrantResultDecoder =
    JD.succeed CreateSnapshotCopyGrantResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotCopyGrant", "snapshotCopyGrant" ]
                snapshotCopyGrantDecoder
            )


{-| Type of HTTP response from customerStorag
-}
type alias CustomerStorageMessage =
    { totalBackupSizeInMegaBytes : Maybe Float
    , totalProvisionedStorageInMegaBytes : Maybe Float
    }


customerStorageMessageDecoder : JD.Decoder CustomerStorageMessage
customerStorageMessageDecoder =
    JD.succeed CustomerStorageMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TotalBackupSizeInMegaBytes", "totalBackupSizeInMegaBytes" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TotalProvisionedStorageInMegaBytes", "totalProvisionedStorageInMegaBytes" ]
                JD.float
            )


{-|

<p>Describes the status of a cluster while it is in the process of resizing with an incremental resize.</p>

-}
type alias DataTransferProgress =
    { status : Maybe String
    , currentRateInMegaBytesPerSecond : Maybe Float
    , totalDataInMegaBytes : Maybe Int
    , dataTransferredInMegaBytes : Maybe Int
    , estimatedTimeToCompletionInSeconds : Maybe Int
    , elapsedTimeInSeconds : Maybe Int
    }


dataTransferProgressDecoder : JD.Decoder DataTransferProgress
dataTransferProgressDecoder =
    JD.succeed DataTransferProgress
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CurrentRateInMegaBytesPerSecond", "currentRateInMegaBytesPerSecond" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TotalDataInMegaBytes", "totalDataInMegaBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DataTransferredInMegaBytes", "dataTransferredInMegaBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EstimatedTimeToCompletionInSeconds", "estimatedTimeToCompletionInSeconds" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ElapsedTimeInSeconds", "elapsedTimeInSeconds" ]
                JD.int
            )


{-|

<p>Describes the default cluster parameters for a parameter group family.</p>

-}
type alias DefaultClusterParameters =
    { parameterGroupFamily : Maybe String
    , marker : Maybe String
    , parameters : Maybe (List Parameter)
    }


defaultClusterParametersDecoder : JD.Decoder DefaultClusterParameters
defaultClusterParametersDecoder =
    JD.succeed DefaultClusterParameters
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroupFamily", "parameterGroupFamily" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Parameters", "parameters" ]
                (JD.list parameterDecoder)
            )


{-|

<p>Describes a deferred maintenance window</p>

-}
type alias DeferredMaintenanceWindow =
    { deferMaintenanceIdentifier : Maybe String
    , deferMaintenanceStartTime : Maybe Posix
    , deferMaintenanceEndTime : Maybe Posix
    }


deferredMaintenanceWindowDecoder : JD.Decoder DeferredMaintenanceWindow
deferredMaintenanceWindowDecoder =
    JD.succeed DeferredMaintenanceWindow
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeferMaintenanceIdentifier", "deferMaintenanceIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeferMaintenanceStartTime", "deferMaintenanceStartTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeferMaintenanceEndTime", "deferMaintenanceEndTime" ]
                JDX.datetime
            )


{-| Type of HTTP response from deleteClust
-}
type alias DeleteClusterResult =
    { cluster : Maybe Cluster
    }


deleteClusterResultDecoder : JD.Decoder DeleteClusterResult
deleteClusterResultDecoder =
    JD.succeed DeleteClusterResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-| Type of HTTP response from deleteClusterSnapsh
-}
type alias DeleteClusterSnapshotResult =
    { snapshot : Maybe Snapshot
    }


deleteClusterSnapshotResultDecoder : JD.Decoder DeleteClusterSnapshotResult
deleteClusterSnapshotResultDecoder =
    JD.succeed DeleteClusterSnapshotResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Snapshot", "snapshot" ]
                snapshotDecoder
            )


{-| Type of HTTP response from describeDefaultClusterParamete
-}
type alias DescribeDefaultClusterParametersResult =
    { defaultClusterParameters : Maybe DefaultClusterParameters
    }


describeDefaultClusterParametersResultDecoder : JD.Decoder DescribeDefaultClusterParametersResult
describeDefaultClusterParametersResultDecoder =
    JD.succeed DescribeDefaultClusterParametersResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DefaultClusterParameters", "defaultClusterParameters" ]
                defaultClusterParametersDecoder
            )


{-| Type of HTTP response from describeSnapshotSchedulesOutpu
-}
type alias DescribeSnapshotSchedulesOutputMessage =
    { snapshotSchedules : Maybe (List SnapshotSchedule)
    , marker : Maybe String
    }


describeSnapshotSchedulesOutputMessageDecoder : JD.Decoder DescribeSnapshotSchedulesOutputMessage
describeSnapshotSchedulesOutputMessageDecoder =
    JD.succeed DescribeSnapshotSchedulesOutputMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotSchedules", "snapshotSchedules" ]
                (JD.list snapshotScheduleDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from disableSnapshotCo
-}
type alias DisableSnapshotCopyResult =
    { cluster : Maybe Cluster
    }


disableSnapshotCopyResultDecoder : JD.Decoder DisableSnapshotCopyResult
disableSnapshotCopyResultDecoder =
    JD.succeed DisableSnapshotCopyResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-|

<p>Describes an Amazon EC2 security group.</p>

-}
type alias EC2SecurityGroup =
    { status : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    , tags : Maybe (List Tag)
    }


eC2SecurityGroupDecoder : JD.Decoder EC2SecurityGroup
eC2SecurityGroupDecoder =
    JD.succeed EC2SecurityGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EC2SecurityGroupName", "eC2SecurityGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EC2SecurityGroupOwnerId", "eC2SecurityGroupOwnerId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-|

<p>Describes the status of the elastic IP (EIP) address.</p>

-}
type alias ElasticIpStatus =
    { elasticIp : Maybe String
    , status : Maybe String
    }


elasticIpStatusDecoder : JD.Decoder ElasticIpStatus
elasticIpStatusDecoder =
    JD.succeed ElasticIpStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ElasticIp", "elasticIp" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )


{-| Type of HTTP response from enableSnapshotCo
-}
type alias EnableSnapshotCopyResult =
    { cluster : Maybe Cluster
    }


enableSnapshotCopyResultDecoder : JD.Decoder EnableSnapshotCopyResult
enableSnapshotCopyResultDecoder =
    JD.succeed EnableSnapshotCopyResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-|

<p>Describes a connection endpoint.</p>

-}
type alias Endpoint =
    { address : Maybe String
    , port_ : Maybe Int
    }


endpointDecoder : JD.Decoder Endpoint
endpointDecoder =
    JD.succeed Endpoint
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Address", "address" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Port", "port" ]
                JD.int
            )


{-|

<p>Describes an event.</p>

-}
type alias Event =
    { sourceIdentifier : Maybe String
    , sourceType : Maybe SourceType
    , message : Maybe String
    , eventCategories : Maybe (List String)
    , severity : Maybe String
    , date : Maybe Posix
    , eventId : Maybe String
    }


eventDecoder : JD.Decoder Event
eventDecoder =
    JD.succeed Event
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceIdentifier", "sourceIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceType", "sourceType" ]
                sourceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventCategories", "eventCategories" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Severity", "severity" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Date", "date" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventId", "eventId" ]
                JD.string
            )


{-|

<p>Describes event categories.</p>

-}
type alias EventCategoriesMap =
    { sourceType : Maybe String
    , events : Maybe (List EventInfoMap)
    }


eventCategoriesMapDecoder : JD.Decoder EventCategoriesMap
eventCategoriesMapDecoder =
    JD.succeed EventCategoriesMap
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceType", "sourceType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Events", "events" ]
                (JD.list eventInfoMapDecoder)
            )


{-| Type of HTTP response from eventCategorie
-}
type alias EventCategoriesMessage =
    { eventCategoriesMapList : Maybe (List EventCategoriesMap)
    }


eventCategoriesMessageDecoder : JD.Decoder EventCategoriesMessage
eventCategoriesMessageDecoder =
    JD.succeed EventCategoriesMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventCategoriesMapList", "eventCategoriesMapList" ]
                (JD.list eventCategoriesMapDecoder)
            )


{-|

<p>Describes event information.</p>

-}
type alias EventInfoMap =
    { eventId : Maybe String
    , eventCategories : Maybe (List String)
    , eventDescription : Maybe String
    , severity : Maybe String
    }


eventInfoMapDecoder : JD.Decoder EventInfoMap
eventInfoMapDecoder =
    JD.succeed EventInfoMap
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventId", "eventId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventCategories", "eventCategories" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventDescription", "eventDescription" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Severity", "severity" ]
                JD.string
            )


{-|

<p>Describes event subscriptions.</p>

-}
type alias EventSubscription =
    { customerAwsId : Maybe String
    , custSubscriptionId : Maybe String
    , snsTopicArn : Maybe String
    , status : Maybe String
    , subscriptionCreationTime : Maybe Posix
    , sourceType : Maybe String
    , sourceIdsList : Maybe (List String)
    , eventCategoriesList : Maybe (List String)
    , severity : Maybe String
    , enabled : Maybe Bool
    , tags : Maybe (List Tag)
    }


eventSubscriptionDecoder : JD.Decoder EventSubscription
eventSubscriptionDecoder =
    JD.succeed EventSubscription
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CustomerAwsId", "customerAwsId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CustSubscriptionId", "custSubscriptionId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnsTopicArn", "snsTopicArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubscriptionCreationTime", "subscriptionCreationTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceType", "sourceType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceIdsList", "sourceIdsList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventCategoriesList", "eventCategoriesList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Severity", "severity" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Enabled", "enabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-| Type of HTTP response from eventSubscription
-}
type alias EventSubscriptionsMessage =
    { marker : Maybe String
    , eventSubscriptionsList : Maybe (List EventSubscription)
    }


eventSubscriptionsMessageDecoder : JD.Decoder EventSubscriptionsMessage
eventSubscriptionsMessageDecoder =
    JD.succeed EventSubscriptionsMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventSubscriptionsList", "eventSubscriptionsList" ]
                (JD.list eventSubscriptionDecoder)
            )


{-| Type of HTTP response from event
-}
type alias EventsMessage =
    { marker : Maybe String
    , events : Maybe (List Event)
    }


eventsMessageDecoder : JD.Decoder EventsMessage
eventsMessageDecoder =
    JD.succeed EventsMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Events", "events" ]
                (JD.list eventDecoder)
            )


{-| Type of HTTP response from getReservedNodeExchangeOfferingsOutpu
-}
type alias GetReservedNodeExchangeOfferingsOutputMessage =
    { marker : Maybe String
    , reservedNodeOfferings : Maybe (List ReservedNodeOffering)
    }


getReservedNodeExchangeOfferingsOutputMessageDecoder : JD.Decoder GetReservedNodeExchangeOfferingsOutputMessage
getReservedNodeExchangeOfferingsOutputMessageDecoder =
    JD.succeed GetReservedNodeExchangeOfferingsOutputMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedNodeOfferings", "reservedNodeOfferings" ]
                (JD.list reservedNodeOfferingDecoder)
            )


{-|

<p>Returns information about an HSM client certificate. The certificate is stored in a secure Hardware Storage Module (HSM), and used by the Amazon Redshift cluster to encrypt data files.</p>

-}
type alias HsmClientCertificate =
    { hsmClientCertificateIdentifier : Maybe String
    , hsmClientCertificatePublicKey : Maybe String
    , tags : Maybe (List Tag)
    }


hsmClientCertificateDecoder : JD.Decoder HsmClientCertificate
hsmClientCertificateDecoder =
    JD.succeed HsmClientCertificate
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmClientCertificateIdentifier", "hsmClientCertificateIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmClientCertificatePublicKey", "hsmClientCertificatePublicKey" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-| Type of HTTP response from hsmClientCertificat
-}
type alias HsmClientCertificateMessage =
    { marker : Maybe String
    , hsmClientCertificates : Maybe (List HsmClientCertificate)
    }


hsmClientCertificateMessageDecoder : JD.Decoder HsmClientCertificateMessage
hsmClientCertificateMessageDecoder =
    JD.succeed HsmClientCertificateMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmClientCertificates", "hsmClientCertificates" ]
                (JD.list hsmClientCertificateDecoder)
            )


{-|

<p>Returns information about an HSM configuration, which is an object that describes to Amazon Redshift clusters the information they require to connect to an HSM where they can store database encryption keys.</p>

-}
type alias HsmConfiguration =
    { hsmConfigurationIdentifier : Maybe String
    , description : Maybe String
    , hsmIpAddress : Maybe String
    , hsmPartitionName : Maybe String
    , tags : Maybe (List Tag)
    }


hsmConfigurationDecoder : JD.Decoder HsmConfiguration
hsmConfigurationDecoder =
    JD.succeed HsmConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmConfigurationIdentifier", "hsmConfigurationIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmIpAddress", "hsmIpAddress" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmPartitionName", "hsmPartitionName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-| Type of HTTP response from hsmConfiguratio
-}
type alias HsmConfigurationMessage =
    { marker : Maybe String
    , hsmConfigurations : Maybe (List HsmConfiguration)
    }


hsmConfigurationMessageDecoder : JD.Decoder HsmConfigurationMessage
hsmConfigurationMessageDecoder =
    JD.succeed HsmConfigurationMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmConfigurations", "hsmConfigurations" ]
                (JD.list hsmConfigurationDecoder)
            )


{-|

<p>Describes the status of changes to HSM settings.</p>

-}
type alias HsmStatus =
    { hsmClientCertificateIdentifier : Maybe String
    , hsmConfigurationIdentifier : Maybe String
    , status : Maybe String
    }


hsmStatusDecoder : JD.Decoder HsmStatus
hsmStatusDecoder =
    JD.succeed HsmStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmClientCertificateIdentifier", "hsmClientCertificateIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmConfigurationIdentifier", "hsmConfigurationIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )


{-|

<p>Describes an IP range used in a security group.</p>

-}
type alias IPRange =
    { status : Maybe String
    , cIDRIP : Maybe String
    , tags : Maybe (List Tag)
    }


iPRangeDecoder : JD.Decoder IPRange
iPRangeDecoder =
    JD.succeed IPRange
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CIDRIP", "cIDRIP" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-| Type of HTTP response from loggi
-}
type alias LoggingStatus =
    { loggingEnabled : Maybe Bool
    , bucketName : Maybe String
    , s3KeyPrefix : Maybe String
    , lastSuccessfulDeliveryTime : Maybe Posix
    , lastFailureTime : Maybe Posix
    , lastFailureMessage : Maybe String
    }


loggingStatusDecoder : JD.Decoder LoggingStatus
loggingStatusDecoder =
    JD.succeed LoggingStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LoggingEnabled", "loggingEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BucketName", "bucketName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "S3KeyPrefix", "s3KeyPrefix" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastSuccessfulDeliveryTime", "lastSuccessfulDeliveryTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastFailureTime", "lastFailureTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastFailureMessage", "lastFailureMessage" ]
                JD.string
            )


{-|

<p>Defines a maintenance track that determines which Amazon Redshift version to apply during a maintenance window. If the value for <code>MaintenanceTrack</code> is <code>current</code>, the cluster is updated to the most recently certified maintenance release. If the value is <code>trailing</code>, the cluster is updated to the previously certified maintenance release. </p>

-}
type alias MaintenanceTrack =
    { maintenanceTrackName : Maybe String
    , databaseVersion : Maybe String
    , updateTargets : Maybe (List UpdateTarget)
    }


maintenanceTrackDecoder : JD.Decoder MaintenanceTrack
maintenanceTrackDecoder =
    JD.succeed MaintenanceTrack
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaintenanceTrackName", "maintenanceTrackName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DatabaseVersion", "databaseVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UpdateTargets", "updateTargets" ]
                (JD.list updateTargetDecoder)
            )


{-| Type of HTTP response from modifyClusterDbRevisi
-}
type alias ModifyClusterDbRevisionResult =
    { cluster : Maybe Cluster
    }


modifyClusterDbRevisionResultDecoder : JD.Decoder ModifyClusterDbRevisionResult
modifyClusterDbRevisionResultDecoder =
    JD.succeed ModifyClusterDbRevisionResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-| Type of HTTP response from modifyClusterIamRol
-}
type alias ModifyClusterIamRolesResult =
    { cluster : Maybe Cluster
    }


modifyClusterIamRolesResultDecoder : JD.Decoder ModifyClusterIamRolesResult
modifyClusterIamRolesResultDecoder =
    JD.succeed ModifyClusterIamRolesResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-| Type of HTTP response from modifyClusterMaintenan
-}
type alias ModifyClusterMaintenanceResult =
    { cluster : Maybe Cluster
    }


modifyClusterMaintenanceResultDecoder : JD.Decoder ModifyClusterMaintenanceResult
modifyClusterMaintenanceResultDecoder =
    JD.succeed ModifyClusterMaintenanceResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-| Type of HTTP response from modifyClust
-}
type alias ModifyClusterResult =
    { cluster : Maybe Cluster
    }


modifyClusterResultDecoder : JD.Decoder ModifyClusterResult
modifyClusterResultDecoder =
    JD.succeed ModifyClusterResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-| Type of HTTP response from modifyClusterSnapsh
-}
type alias ModifyClusterSnapshotResult =
    { snapshot : Maybe Snapshot
    }


modifyClusterSnapshotResultDecoder : JD.Decoder ModifyClusterSnapshotResult
modifyClusterSnapshotResultDecoder =
    JD.succeed ModifyClusterSnapshotResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Snapshot", "snapshot" ]
                snapshotDecoder
            )


{-| Type of HTTP response from modifyClusterSubnetGro
-}
type alias ModifyClusterSubnetGroupResult =
    { clusterSubnetGroup : Maybe ClusterSubnetGroup
    }


modifyClusterSubnetGroupResultDecoder : JD.Decoder ModifyClusterSubnetGroupResult
modifyClusterSubnetGroupResultDecoder =
    JD.succeed ModifyClusterSubnetGroupResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterSubnetGroup", "clusterSubnetGroup" ]
                clusterSubnetGroupDecoder
            )


{-| Type of HTTP response from modifyEventSubscripti
-}
type alias ModifyEventSubscriptionResult =
    { eventSubscription : Maybe EventSubscription
    }


modifyEventSubscriptionResultDecoder : JD.Decoder ModifyEventSubscriptionResult
modifyEventSubscriptionResultDecoder =
    JD.succeed ModifyEventSubscriptionResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventSubscription", "eventSubscription" ]
                eventSubscriptionDecoder
            )


{-| Type of HTTP response from modifySnapshotCopyRetentionPeri
-}
type alias ModifySnapshotCopyRetentionPeriodResult =
    { cluster : Maybe Cluster
    }


modifySnapshotCopyRetentionPeriodResultDecoder : JD.Decoder ModifySnapshotCopyRetentionPeriodResult
modifySnapshotCopyRetentionPeriodResultDecoder =
    JD.succeed ModifySnapshotCopyRetentionPeriodResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-|

<p>Describes an orderable cluster option.</p>

-}
type alias OrderableClusterOption =
    { clusterVersion : Maybe String
    , clusterType : Maybe String
    , nodeType : Maybe String
    , availabilityZones : Maybe (List AvailabilityZone)
    }


orderableClusterOptionDecoder : JD.Decoder OrderableClusterOption
orderableClusterOptionDecoder =
    JD.succeed OrderableClusterOption
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterVersion", "clusterVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterType", "clusterType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeType", "nodeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AvailabilityZones", "availabilityZones" ]
                (JD.list availabilityZoneDecoder)
            )


{-| Type of HTTP response from orderableClusterOption
-}
type alias OrderableClusterOptionsMessage =
    { orderableClusterOptions : Maybe (List OrderableClusterOption)
    , marker : Maybe String
    }


orderableClusterOptionsMessageDecoder : JD.Decoder OrderableClusterOptionsMessage
orderableClusterOptionsMessageDecoder =
    JD.succeed OrderableClusterOptionsMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OrderableClusterOptions", "orderableClusterOptions" ]
                (JD.list orderableClusterOptionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-|

<p>Describes a parameter in a cluster parameter group.</p>

-}
type alias Parameter =
    { parameterName : Maybe String
    , parameterValue : Maybe String
    , description : Maybe String
    , source : Maybe String
    , dataType : Maybe String
    , allowedValues : Maybe String
    , applyType : Maybe ParameterApplyType
    , isModifiable : Maybe Bool
    , minimumEngineVersion : Maybe String
    }


parameterDecoder : JD.Decoder Parameter
parameterDecoder =
    JD.succeed Parameter
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterName", "parameterName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterValue", "parameterValue" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Source", "source" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DataType", "dataType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AllowedValues", "allowedValues" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ApplyType", "applyType" ]
                parameterApplyTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsModifiable", "isModifiable" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MinimumEngineVersion", "minimumEngineVersion" ]
                JD.string
            )


{-| One of

  - `ParameterApplyType_static`
  - `ParameterApplyType_dynamic`

-}
type ParameterApplyType
    = ParameterApplyType_static
    | ParameterApplyType_dynamic


parameterApplyTypeDecoder : JD.Decoder ParameterApplyType
parameterApplyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "static" ->
                        JD.succeed ParameterApplyType_static

                    "dynamic" ->
                        JD.succeed ParameterApplyType_dynamic

                    _ ->
                        JD.fail "bad thing"
            )


parameterApplyTypeToString : ParameterApplyType -> String
parameterApplyTypeToString val =
    case val of
        ParameterApplyType_static ->
            "static"

        ParameterApplyType_dynamic ->
            "dynamic"


{-|

<p>Describes cluster attributes that are in a pending state. A change to one or more the attributes was requested and is in progress or will be applied.</p>

-}
type alias PendingModifiedValues =
    { masterUserPassword : Maybe String
    , nodeType : Maybe String
    , numberOfNodes : Maybe Int
    , clusterType : Maybe String
    , clusterVersion : Maybe String
    , automatedSnapshotRetentionPeriod : Maybe Int
    , clusterIdentifier : Maybe String
    , publiclyAccessible : Maybe Bool
    , enhancedVpcRouting : Maybe Bool
    , maintenanceTrackName : Maybe String
    , encryptionType : Maybe String
    }


pendingModifiedValuesDecoder : JD.Decoder PendingModifiedValues
pendingModifiedValuesDecoder =
    JD.succeed PendingModifiedValues
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MasterUserPassword", "masterUserPassword" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeType", "nodeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NumberOfNodes", "numberOfNodes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterType", "clusterType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterVersion", "clusterVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutomatedSnapshotRetentionPeriod", "automatedSnapshotRetentionPeriod" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterIdentifier", "clusterIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PubliclyAccessible", "publiclyAccessible" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EnhancedVpcRouting", "enhancedVpcRouting" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaintenanceTrackName", "maintenanceTrackName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EncryptionType", "encryptionType" ]
                JD.string
            )


{-| Type of HTTP response from purchaseReservedNodeOfferi
-}
type alias PurchaseReservedNodeOfferingResult =
    { reservedNode : Maybe ReservedNode
    }


purchaseReservedNodeOfferingResultDecoder : JD.Decoder PurchaseReservedNodeOfferingResult
purchaseReservedNodeOfferingResultDecoder =
    JD.succeed PurchaseReservedNodeOfferingResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedNode", "reservedNode" ]
                reservedNodeDecoder
            )


{-| Type of HTTP response from rebootClust
-}
type alias RebootClusterResult =
    { cluster : Maybe Cluster
    }


rebootClusterResultDecoder : JD.Decoder RebootClusterResult
rebootClusterResultDecoder =
    JD.succeed RebootClusterResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-|

<p>Describes a recurring charge.</p>

-}
type alias RecurringCharge =
    { recurringChargeAmount : Maybe Float
    , recurringChargeFrequency : Maybe String
    }


recurringChargeDecoder : JD.Decoder RecurringCharge
recurringChargeDecoder =
    JD.succeed RecurringCharge
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RecurringChargeAmount", "recurringChargeAmount" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RecurringChargeFrequency", "recurringChargeFrequency" ]
                JD.string
            )


{-|

<p>Describes a reserved node. You can call the <a>DescribeReservedNodeOfferings</a> API to obtain the available reserved node offerings. </p>

-}
type alias ReservedNode =
    { reservedNodeId : Maybe String
    , reservedNodeOfferingId : Maybe String
    , nodeType : Maybe String
    , startTime : Maybe Posix
    , duration : Maybe Int
    , fixedPrice : Maybe Float
    , usagePrice : Maybe Float
    , currencyCode : Maybe String
    , nodeCount : Maybe Int
    , state : Maybe String
    , offeringType : Maybe String
    , recurringCharges : Maybe (List RecurringCharge)
    , reservedNodeOfferingType : Maybe ReservedNodeOfferingType
    }


reservedNodeDecoder : JD.Decoder ReservedNode
reservedNodeDecoder =
    JD.succeed ReservedNode
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedNodeId", "reservedNodeId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedNodeOfferingId", "reservedNodeOfferingId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeType", "nodeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StartTime", "startTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Duration", "duration" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FixedPrice", "fixedPrice" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UsagePrice", "usagePrice" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CurrencyCode", "currencyCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeCount", "nodeCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "State", "state" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OfferingType", "offeringType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RecurringCharges", "recurringCharges" ]
                (JD.list recurringChargeDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedNodeOfferingType", "reservedNodeOfferingType" ]
                reservedNodeOfferingTypeDecoder
            )


{-|

<p>Describes a reserved node offering.</p>

-}
type alias ReservedNodeOffering =
    { reservedNodeOfferingId : Maybe String
    , nodeType : Maybe String
    , duration : Maybe Int
    , fixedPrice : Maybe Float
    , usagePrice : Maybe Float
    , currencyCode : Maybe String
    , offeringType : Maybe String
    , recurringCharges : Maybe (List RecurringCharge)
    , reservedNodeOfferingType : Maybe ReservedNodeOfferingType
    }


reservedNodeOfferingDecoder : JD.Decoder ReservedNodeOffering
reservedNodeOfferingDecoder =
    JD.succeed ReservedNodeOffering
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedNodeOfferingId", "reservedNodeOfferingId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeType", "nodeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Duration", "duration" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FixedPrice", "fixedPrice" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UsagePrice", "usagePrice" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CurrencyCode", "currencyCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OfferingType", "offeringType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RecurringCharges", "recurringCharges" ]
                (JD.list recurringChargeDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedNodeOfferingType", "reservedNodeOfferingType" ]
                reservedNodeOfferingTypeDecoder
            )


{-| One of

  - `ReservedNodeOfferingType_Regular`
  - `ReservedNodeOfferingType_Upgradable`

-}
type ReservedNodeOfferingType
    = ReservedNodeOfferingType_Regular
    | ReservedNodeOfferingType_Upgradable


reservedNodeOfferingTypeDecoder : JD.Decoder ReservedNodeOfferingType
reservedNodeOfferingTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Regular" ->
                        JD.succeed ReservedNodeOfferingType_Regular

                    "Upgradable" ->
                        JD.succeed ReservedNodeOfferingType_Upgradable

                    _ ->
                        JD.fail "bad thing"
            )


reservedNodeOfferingTypeToString : ReservedNodeOfferingType -> String
reservedNodeOfferingTypeToString val =
    case val of
        ReservedNodeOfferingType_Regular ->
            "Regular"

        ReservedNodeOfferingType_Upgradable ->
            "Upgradable"


{-| Type of HTTP response from reservedNodeOffering
-}
type alias ReservedNodeOfferingsMessage =
    { marker : Maybe String
    , reservedNodeOfferings : Maybe (List ReservedNodeOffering)
    }


reservedNodeOfferingsMessageDecoder : JD.Decoder ReservedNodeOfferingsMessage
reservedNodeOfferingsMessageDecoder =
    JD.succeed ReservedNodeOfferingsMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedNodeOfferings", "reservedNodeOfferings" ]
                (JD.list reservedNodeOfferingDecoder)
            )


{-| Type of HTTP response from reservedNode
-}
type alias ReservedNodesMessage =
    { marker : Maybe String
    , reservedNodes : Maybe (List ReservedNode)
    }


reservedNodesMessageDecoder : JD.Decoder ReservedNodesMessage
reservedNodesMessageDecoder =
    JD.succeed ReservedNodesMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedNodes", "reservedNodes" ]
                (JD.list reservedNodeDecoder)
            )


{-| Type of HTTP response from resizeClust
-}
type alias ResizeClusterResult =
    { cluster : Maybe Cluster
    }


resizeClusterResultDecoder : JD.Decoder ResizeClusterResult
resizeClusterResultDecoder =
    JD.succeed ResizeClusterResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-|

<p>Describes a resize operation.</p>

-}
type alias ResizeInfo =
    { resizeType : Maybe String
    , allowCancelResize : Maybe Bool
    }


resizeInfoDecoder : JD.Decoder ResizeInfo
resizeInfoDecoder =
    JD.succeed ResizeInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResizeType", "resizeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AllowCancelResize", "allowCancelResize" ]
                JD.bool
            )


{-| Type of HTTP response from resizeProgres
-}
type alias ResizeProgressMessage =
    { targetNodeType : Maybe String
    , targetNumberOfNodes : Maybe Int
    , targetClusterType : Maybe String
    , status : Maybe String
    , importTablesCompleted : Maybe (List String)
    , importTablesInProgress : Maybe (List String)
    , importTablesNotStarted : Maybe (List String)
    , avgResizeRateInMegaBytesPerSecond : Maybe Float
    , totalResizeDataInMegaBytes : Maybe Int
    , progressInMegaBytes : Maybe Int
    , elapsedTimeInSeconds : Maybe Int
    , estimatedTimeToCompletionInSeconds : Maybe Int
    , resizeType : Maybe String
    , message : Maybe String
    , targetEncryptionType : Maybe String
    , dataTransferProgressPercent : Maybe Float
    }


resizeProgressMessageDecoder : JD.Decoder ResizeProgressMessage
resizeProgressMessageDecoder =
    JD.succeed ResizeProgressMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetNodeType", "targetNodeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetNumberOfNodes", "targetNumberOfNodes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetClusterType", "targetClusterType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ImportTablesCompleted", "importTablesCompleted" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ImportTablesInProgress", "importTablesInProgress" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ImportTablesNotStarted", "importTablesNotStarted" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AvgResizeRateInMegaBytesPerSecond", "avgResizeRateInMegaBytesPerSecond" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TotalResizeDataInMegaBytes", "totalResizeDataInMegaBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProgressInMegaBytes", "progressInMegaBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ElapsedTimeInSeconds", "elapsedTimeInSeconds" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EstimatedTimeToCompletionInSeconds", "estimatedTimeToCompletionInSeconds" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResizeType", "resizeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetEncryptionType", "targetEncryptionType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DataTransferProgressPercent", "dataTransferProgressPercent" ]
                JD.float
            )


{-| Type of HTTP response from restoreFromClusterSnapsh
-}
type alias RestoreFromClusterSnapshotResult =
    { cluster : Maybe Cluster
    }


restoreFromClusterSnapshotResultDecoder : JD.Decoder RestoreFromClusterSnapshotResult
restoreFromClusterSnapshotResultDecoder =
    JD.succeed RestoreFromClusterSnapshotResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-|

<p>Describes the status of a cluster restore action. Returns null if the cluster was not created by restoring a snapshot.</p>

-}
type alias RestoreStatus =
    { status : Maybe String
    , currentRestoreRateInMegaBytesPerSecond : Maybe Float
    , snapshotSizeInMegaBytes : Maybe Int
    , progressInMegaBytes : Maybe Int
    , elapsedTimeInSeconds : Maybe Int
    , estimatedTimeToCompletionInSeconds : Maybe Int
    }


restoreStatusDecoder : JD.Decoder RestoreStatus
restoreStatusDecoder =
    JD.succeed RestoreStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CurrentRestoreRateInMegaBytesPerSecond", "currentRestoreRateInMegaBytesPerSecond" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotSizeInMegaBytes", "snapshotSizeInMegaBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProgressInMegaBytes", "progressInMegaBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ElapsedTimeInSeconds", "elapsedTimeInSeconds" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EstimatedTimeToCompletionInSeconds", "estimatedTimeToCompletionInSeconds" ]
                JD.int
            )


{-| Type of HTTP response from restoreTableFromClusterSnapsh
-}
type alias RestoreTableFromClusterSnapshotResult =
    { tableRestoreStatus : Maybe TableRestoreStatus
    }


restoreTableFromClusterSnapshotResultDecoder : JD.Decoder RestoreTableFromClusterSnapshotResult
restoreTableFromClusterSnapshotResultDecoder =
    JD.succeed RestoreTableFromClusterSnapshotResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TableRestoreStatus", "tableRestoreStatus" ]
                tableRestoreStatusDecoder
            )


{-|

<p>Describes a <code>RevisionTarget</code>.</p>

-}
type alias RevisionTarget =
    { databaseRevision : Maybe String
    , description : Maybe String
    , databaseRevisionReleaseDate : Maybe Posix
    }


revisionTargetDecoder : JD.Decoder RevisionTarget
revisionTargetDecoder =
    JD.succeed RevisionTarget
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DatabaseRevision", "databaseRevision" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DatabaseRevisionReleaseDate", "databaseRevisionReleaseDate" ]
                JDX.datetime
            )


{-| Type of HTTP response from revokeClusterSecurityGroupIngre
-}
type alias RevokeClusterSecurityGroupIngressResult =
    { clusterSecurityGroup : Maybe ClusterSecurityGroup
    }


revokeClusterSecurityGroupIngressResultDecoder : JD.Decoder RevokeClusterSecurityGroupIngressResult
revokeClusterSecurityGroupIngressResultDecoder =
    JD.succeed RevokeClusterSecurityGroupIngressResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterSecurityGroup", "clusterSecurityGroup" ]
                clusterSecurityGroupDecoder
            )


{-| Type of HTTP response from revokeSnapshotAcce
-}
type alias RevokeSnapshotAccessResult =
    { snapshot : Maybe Snapshot
    }


revokeSnapshotAccessResultDecoder : JD.Decoder RevokeSnapshotAccessResult
revokeSnapshotAccessResultDecoder =
    JD.succeed RevokeSnapshotAccessResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Snapshot", "snapshot" ]
                snapshotDecoder
            )


{-| Type of HTTP response from rotateEncryptionK
-}
type alias RotateEncryptionKeyResult =
    { cluster : Maybe Cluster
    }


rotateEncryptionKeyResultDecoder : JD.Decoder RotateEncryptionKeyResult
rotateEncryptionKeyResultDecoder =
    JD.succeed RotateEncryptionKeyResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-| One of

  - `ScheduleState_MODIFYING`
  - `ScheduleState_ACTIVE`
  - `ScheduleState_FAILED`

-}
type ScheduleState
    = ScheduleState_MODIFYING
    | ScheduleState_ACTIVE
    | ScheduleState_FAILED


scheduleStateDecoder : JD.Decoder ScheduleState
scheduleStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "MODIFYING" ->
                        JD.succeed ScheduleState_MODIFYING

                    "ACTIVE" ->
                        JD.succeed ScheduleState_ACTIVE

                    "FAILED" ->
                        JD.succeed ScheduleState_FAILED

                    _ ->
                        JD.fail "bad thing"
            )


scheduleStateToString : ScheduleState -> String
scheduleStateToString val =
    case val of
        ScheduleState_MODIFYING ->
            "MODIFYING"

        ScheduleState_ACTIVE ->
            "ACTIVE"

        ScheduleState_FAILED ->
            "FAILED"


{-|

<p>Describes a snapshot.</p>

-}
type alias Snapshot =
    { snapshotIdentifier : Maybe String
    , clusterIdentifier : Maybe String
    , snapshotCreateTime : Maybe Posix
    , status : Maybe String
    , port_ : Maybe Int
    , availabilityZone : Maybe String
    , clusterCreateTime : Maybe Posix
    , masterUsername : Maybe String
    , clusterVersion : Maybe String
    , snapshotType : Maybe String
    , nodeType : Maybe String
    , numberOfNodes : Maybe Int
    , dBName : Maybe String
    , vpcId : Maybe String
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , encryptedWithHSM : Maybe Bool
    , accountsWithRestoreAccess : Maybe (List AccountWithRestoreAccess)
    , ownerAccount : Maybe String
    , totalBackupSizeInMegaBytes : Maybe Float
    , actualIncrementalBackupSizeInMegaBytes : Maybe Float
    , backupProgressInMegaBytes : Maybe Float
    , currentBackupRateInMegaBytesPerSecond : Maybe Float
    , estimatedSecondsToCompletion : Maybe Int
    , elapsedTimeInSeconds : Maybe Int
    , sourceRegion : Maybe String
    , tags : Maybe (List Tag)
    , restorableNodeTypes : Maybe (List String)
    , enhancedVpcRouting : Maybe Bool
    , maintenanceTrackName : Maybe String
    , manualSnapshotRetentionPeriod : Maybe Int
    , manualSnapshotRemainingDays : Maybe Int
    , snapshotRetentionStartTime : Maybe Posix
    }


snapshotDecoder : JD.Decoder Snapshot
snapshotDecoder =
    JD.succeed Snapshot
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotIdentifier", "snapshotIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterIdentifier", "clusterIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotCreateTime", "snapshotCreateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Port", "port" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AvailabilityZone", "availabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterCreateTime", "clusterCreateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MasterUsername", "masterUsername" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterVersion", "clusterVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotType", "snapshotType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeType", "nodeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NumberOfNodes", "numberOfNodes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DBName", "dBName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcId", "vpcId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Encrypted", "encrypted" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KmsKeyId", "kmsKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EncryptedWithHSM", "encryptedWithHSM" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountsWithRestoreAccess", "accountsWithRestoreAccess" ]
                (JD.list accountWithRestoreAccessDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OwnerAccount", "ownerAccount" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TotalBackupSizeInMegaBytes", "totalBackupSizeInMegaBytes" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ActualIncrementalBackupSizeInMegaBytes", "actualIncrementalBackupSizeInMegaBytes" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BackupProgressInMegaBytes", "backupProgressInMegaBytes" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CurrentBackupRateInMegaBytesPerSecond", "currentBackupRateInMegaBytesPerSecond" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EstimatedSecondsToCompletion", "estimatedSecondsToCompletion" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ElapsedTimeInSeconds", "elapsedTimeInSeconds" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceRegion", "sourceRegion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RestorableNodeTypes", "restorableNodeTypes" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EnhancedVpcRouting", "enhancedVpcRouting" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaintenanceTrackName", "maintenanceTrackName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ManualSnapshotRetentionPeriod", "manualSnapshotRetentionPeriod" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ManualSnapshotRemainingDays", "manualSnapshotRemainingDays" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotRetentionStartTime", "snapshotRetentionStartTime" ]
                JDX.datetime
            )


{-| One of

  - `SnapshotAttributeToSortBy_SOURCE_TYPE`
  - `SnapshotAttributeToSortBy_TOTAL_SIZE`
  - `SnapshotAttributeToSortBy_CREATE_TIME`

-}
type SnapshotAttributeToSortBy
    = SnapshotAttributeToSortBy_SOURCE_TYPE
    | SnapshotAttributeToSortBy_TOTAL_SIZE
    | SnapshotAttributeToSortBy_CREATE_TIME


snapshotAttributeToSortByDecoder : JD.Decoder SnapshotAttributeToSortBy
snapshotAttributeToSortByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SOURCE_TYPE" ->
                        JD.succeed SnapshotAttributeToSortBy_SOURCE_TYPE

                    "TOTAL_SIZE" ->
                        JD.succeed SnapshotAttributeToSortBy_TOTAL_SIZE

                    "CREATE_TIME" ->
                        JD.succeed SnapshotAttributeToSortBy_CREATE_TIME

                    _ ->
                        JD.fail "bad thing"
            )


snapshotAttributeToSortByToString : SnapshotAttributeToSortBy -> String
snapshotAttributeToSortByToString val =
    case val of
        SnapshotAttributeToSortBy_SOURCE_TYPE ->
            "SOURCE_TYPE"

        SnapshotAttributeToSortBy_TOTAL_SIZE ->
            "TOTAL_SIZE"

        SnapshotAttributeToSortBy_CREATE_TIME ->
            "CREATE_TIME"


{-|

<p>The snapshot copy grant that grants Amazon Redshift permission to encrypt copied snapshots with the specified customer master key (CMK) from AWS KMS in the destination region.</p> <p> For more information about managing snapshot copy grants, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html">Amazon Redshift Database Encryption</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>

-}
type alias SnapshotCopyGrant =
    { snapshotCopyGrantName : Maybe String
    , kmsKeyId : Maybe String
    , tags : Maybe (List Tag)
    }


snapshotCopyGrantDecoder : JD.Decoder SnapshotCopyGrant
snapshotCopyGrantDecoder =
    JD.succeed SnapshotCopyGrant
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotCopyGrantName", "snapshotCopyGrantName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KmsKeyId", "kmsKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-| Type of HTTP response from snapshotCopyGran
-}
type alias SnapshotCopyGrantMessage =
    { marker : Maybe String
    , snapshotCopyGrants : Maybe (List SnapshotCopyGrant)
    }


snapshotCopyGrantMessageDecoder : JD.Decoder SnapshotCopyGrantMessage
snapshotCopyGrantMessageDecoder =
    JD.succeed SnapshotCopyGrantMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotCopyGrants", "snapshotCopyGrants" ]
                (JD.list snapshotCopyGrantDecoder)
            )


{-|

<p>Describes the errors returned by a snapshot.</p>

-}
type alias SnapshotErrorMessage =
    { snapshotIdentifier : Maybe String
    , snapshotClusterIdentifier : Maybe String
    , failureCode : Maybe String
    , failureReason : Maybe String
    }


snapshotErrorMessageDecoder : JD.Decoder SnapshotErrorMessage
snapshotErrorMessageDecoder =
    JD.succeed SnapshotErrorMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotIdentifier", "snapshotIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotClusterIdentifier", "snapshotClusterIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FailureCode", "failureCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FailureReason", "failureReason" ]
                JD.string
            )


{-| Type of HTTP response from snapsho
-}
type alias SnapshotMessage =
    { marker : Maybe String
    , snapshots : Maybe (List Snapshot)
    }


snapshotMessageDecoder : JD.Decoder SnapshotMessage
snapshotMessageDecoder =
    JD.succeed SnapshotMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Snapshots", "snapshots" ]
                (JD.list snapshotDecoder)
            )


{-| Type of HTTP response from snapshot
-}
type alias SnapshotSchedule =
    { scheduleDefinitions : Maybe (List String)
    , scheduleIdentifier : Maybe String
    , scheduleDescription : Maybe String
    , tags : Maybe (List Tag)
    , nextInvocations : Maybe (List Posix)
    , associatedClusterCount : Maybe Int
    , associatedClusters : Maybe (List ClusterAssociatedToSchedule)
    }


snapshotScheduleDecoder : JD.Decoder SnapshotSchedule
snapshotScheduleDecoder =
    JD.succeed SnapshotSchedule
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ScheduleDefinitions", "scheduleDefinitions" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ScheduleIdentifier", "scheduleIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ScheduleDescription", "scheduleDescription" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextInvocations", "nextInvocations" ]
                (JD.list JDX.datetime)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AssociatedClusterCount", "associatedClusterCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AssociatedClusters", "associatedClusters" ]
                (JD.list clusterAssociatedToScheduleDecoder)
            )


{-|

<p>Describes a sorting entity</p>

-}
type alias SnapshotSortingEntity =
    { attribute : SnapshotAttributeToSortBy
    , sortOrder : Maybe SortByOrder
    }


snapshotSortingEntityDecoder : JD.Decoder SnapshotSortingEntity
snapshotSortingEntityDecoder =
    JD.succeed SnapshotSortingEntity
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Attribute", "attribute" ]
                snapshotAttributeToSortByDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SortOrder", "sortOrder" ]
                sortByOrderDecoder
            )


{-| One of

  - `SortByOrder_ASC`
  - `SortByOrder_DESC`

-}
type SortByOrder
    = SortByOrder_ASC
    | SortByOrder_DESC


sortByOrderDecoder : JD.Decoder SortByOrder
sortByOrderDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASC" ->
                        JD.succeed SortByOrder_ASC

                    "DESC" ->
                        JD.succeed SortByOrder_DESC

                    _ ->
                        JD.fail "bad thing"
            )


sortByOrderToString : SortByOrder -> String
sortByOrderToString val =
    case val of
        SortByOrder_ASC ->
            "ASC"

        SortByOrder_DESC ->
            "DESC"


{-| One of

  - `SourceType_cluster`
  - `SourceType_cluster-parameter-group`
  - `SourceType_cluster-security-group`
  - `SourceType_cluster-snapshot`

-}
type SourceType
    = SourceType_cluster
    | SourceType_cluster_parameter_group
    | SourceType_cluster_security_group
    | SourceType_cluster_snapshot


sourceTypeDecoder : JD.Decoder SourceType
sourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "cluster" ->
                        JD.succeed SourceType_cluster

                    "cluster_parameter_group" ->
                        JD.succeed SourceType_cluster_parameter_group

                    "cluster_security_group" ->
                        JD.succeed SourceType_cluster_security_group

                    "cluster_snapshot" ->
                        JD.succeed SourceType_cluster_snapshot

                    _ ->
                        JD.fail "bad thing"
            )


sourceTypeToString : SourceType -> String
sourceTypeToString val =
    case val of
        SourceType_cluster ->
            "cluster"

        SourceType_cluster_parameter_group ->
            "cluster_parameter_group"

        SourceType_cluster_security_group ->
            "cluster_security_group"

        SourceType_cluster_snapshot ->
            "cluster_snapshot"


{-|

<p>Describes a subnet.</p>

-}
type alias Subnet =
    { subnetIdentifier : Maybe String
    , subnetAvailabilityZone : Maybe AvailabilityZone
    , subnetStatus : Maybe String
    }


subnetDecoder : JD.Decoder Subnet
subnetDecoder =
    JD.succeed Subnet
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetIdentifier", "subnetIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetAvailabilityZone", "subnetAvailabilityZone" ]
                availabilityZoneDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetStatus", "subnetStatus" ]
                JD.string
            )


{-|

<p>Describes the operations that are allowed on a maintenance track.</p>

-}
type alias SupportedOperation =
    { operationName : Maybe String
    }


supportedOperationDecoder : JD.Decoder SupportedOperation
supportedOperationDecoder =
    JD.succeed SupportedOperation
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OperationName", "operationName" ]
                JD.string
            )


{-|

<p>A list of supported platforms for orderable clusters.</p>

-}
type alias SupportedPlatform =
    { name : Maybe String
    }


supportedPlatformDecoder : JD.Decoder SupportedPlatform
supportedPlatformDecoder =
    JD.succeed SupportedPlatform
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )


{-|

<p>Describes the status of a <a>RestoreTableFromClusterSnapshot</a> operation.</p>

-}
type alias TableRestoreStatus =
    { tableRestoreRequestId : Maybe String
    , status : Maybe TableRestoreStatusType
    , message : Maybe String
    , requestTime : Maybe Posix
    , progressInMegaBytes : Maybe Int
    , totalDataInMegaBytes : Maybe Int
    , clusterIdentifier : Maybe String
    , snapshotIdentifier : Maybe String
    , sourceDatabaseName : Maybe String
    , sourceSchemaName : Maybe String
    , sourceTableName : Maybe String
    , targetDatabaseName : Maybe String
    , targetSchemaName : Maybe String
    , newTableName : Maybe String
    }


tableRestoreStatusDecoder : JD.Decoder TableRestoreStatus
tableRestoreStatusDecoder =
    JD.succeed TableRestoreStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TableRestoreRequestId", "tableRestoreRequestId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                tableRestoreStatusTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RequestTime", "requestTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProgressInMegaBytes", "progressInMegaBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TotalDataInMegaBytes", "totalDataInMegaBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterIdentifier", "clusterIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotIdentifier", "snapshotIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceDatabaseName", "sourceDatabaseName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceSchemaName", "sourceSchemaName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceTableName", "sourceTableName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetDatabaseName", "targetDatabaseName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetSchemaName", "targetSchemaName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NewTableName", "newTableName" ]
                JD.string
            )


{-| Type of HTTP response from tableRestoreStatu
-}
type alias TableRestoreStatusMessage =
    { tableRestoreStatusDetails : Maybe (List TableRestoreStatus)
    , marker : Maybe String
    }


tableRestoreStatusMessageDecoder : JD.Decoder TableRestoreStatusMessage
tableRestoreStatusMessageDecoder =
    JD.succeed TableRestoreStatusMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TableRestoreStatusDetails", "tableRestoreStatusDetails" ]
                (JD.list tableRestoreStatusDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| One of

  - `TableRestoreStatusType_PENDING`
  - `TableRestoreStatusType_IN_PROGRESS`
  - `TableRestoreStatusType_SUCCEEDED`
  - `TableRestoreStatusType_FAILED`
  - `TableRestoreStatusType_CANCELED`

-}
type TableRestoreStatusType
    = TableRestoreStatusType_PENDING
    | TableRestoreStatusType_IN_PROGRESS
    | TableRestoreStatusType_SUCCEEDED
    | TableRestoreStatusType_FAILED
    | TableRestoreStatusType_CANCELED


tableRestoreStatusTypeDecoder : JD.Decoder TableRestoreStatusType
tableRestoreStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed TableRestoreStatusType_PENDING

                    "IN_PROGRESS" ->
                        JD.succeed TableRestoreStatusType_IN_PROGRESS

                    "SUCCEEDED" ->
                        JD.succeed TableRestoreStatusType_SUCCEEDED

                    "FAILED" ->
                        JD.succeed TableRestoreStatusType_FAILED

                    "CANCELED" ->
                        JD.succeed TableRestoreStatusType_CANCELED

                    _ ->
                        JD.fail "bad thing"
            )


tableRestoreStatusTypeToString : TableRestoreStatusType -> String
tableRestoreStatusTypeToString val =
    case val of
        TableRestoreStatusType_PENDING ->
            "PENDING"

        TableRestoreStatusType_IN_PROGRESS ->
            "IN_PROGRESS"

        TableRestoreStatusType_SUCCEEDED ->
            "SUCCEEDED"

        TableRestoreStatusType_FAILED ->
            "FAILED"

        TableRestoreStatusType_CANCELED ->
            "CANCELED"


{-|

<p>A tag consisting of a name/value pair for a resource.</p>

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


{-|

<p>A tag and its associated resource.</p>

-}
type alias TaggedResource =
    { tag : Maybe Tag
    , resourceName : Maybe String
    , resourceType : Maybe String
    }


taggedResourceDecoder : JD.Decoder TaggedResource
taggedResourceDecoder =
    JD.succeed TaggedResource
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tag", "tag" ]
                tagDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceName", "resourceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceType", "resourceType" ]
                JD.string
            )


{-| Type of HTTP response from taggedResourceLis
-}
type alias TaggedResourceListMessage =
    { taggedResources : Maybe (List TaggedResource)
    , marker : Maybe String
    }


taggedResourceListMessageDecoder : JD.Decoder TaggedResourceListMessage
taggedResourceListMessageDecoder =
    JD.succeed TaggedResourceListMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TaggedResources", "taggedResources" ]
                (JD.list taggedResourceDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from trackLis
-}
type alias TrackListMessage =
    { maintenanceTracks : Maybe (List MaintenanceTrack)
    , marker : Maybe String
    }


trackListMessageDecoder : JD.Decoder TrackListMessage
trackListMessageDecoder =
    JD.succeed TrackListMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaintenanceTracks", "maintenanceTracks" ]
                (JD.list maintenanceTrackDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-|

<p>A maintenance track that you can switch the current track to.</p>

-}
type alias UpdateTarget =
    { maintenanceTrackName : Maybe String
    , databaseVersion : Maybe String
    , supportedOperations : Maybe (List SupportedOperation)
    }


updateTargetDecoder : JD.Decoder UpdateTarget
updateTargetDecoder =
    JD.succeed UpdateTarget
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaintenanceTrackName", "maintenanceTrackName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DatabaseVersion", "databaseVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SupportedOperations", "supportedOperations" ]
                (JD.list supportedOperationDecoder)
            )


{-|

<p>Describes the members of a VPC security group.</p>

-}
type alias VpcSecurityGroupMembership =
    { vpcSecurityGroupId : Maybe String
    , status : Maybe String
    }


vpcSecurityGroupMembershipDecoder : JD.Decoder VpcSecurityGroupMembership
vpcSecurityGroupMembershipDecoder =
    JD.succeed VpcSecurityGroupMembership
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcSecurityGroupId", "vpcSecurityGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )


{-| undefined
-}
type alias AcceptReservedNodeExchangeInputMessage =
    { reservedNodeId : String
    , targetReservedNodeOfferingId : String
    }


{-|

<p/>

-}
type alias AuthorizeClusterSecurityGroupIngressMessage =
    { clusterSecurityGroupName : String
    , cIDRIP : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    }


{-|

<p/>

-}
type alias AuthorizeSnapshotAccessMessage =
    { snapshotIdentifier : String
    , snapshotClusterIdentifier : Maybe String
    , accountWithRestoreAccess : String
    }


{-| undefined
-}
type alias BatchDeleteClusterSnapshotsRequest =
    { identifiers : List DeleteClusterSnapshotMessage
    }


{-| undefined
-}
type alias BatchModifyClusterSnapshotsMessage =
    { snapshotIdentifierList : List String
    , manualSnapshotRetentionPeriod : Maybe Int
    , force : Maybe Bool
    }


{-| undefined
-}
type alias CancelResizeMessage =
    { clusterIdentifier : String
    }


{-|

<p/>

-}
type alias CopyClusterSnapshotMessage =
    { sourceSnapshotIdentifier : String
    , sourceSnapshotClusterIdentifier : Maybe String
    , targetSnapshotIdentifier : String
    , manualSnapshotRetentionPeriod : Maybe Int
    }


{-|

<p/>

-}
type alias CreateClusterMessage =
    { dBName : Maybe String
    , clusterIdentifier : String
    , clusterType : Maybe String
    , nodeType : String
    , masterUsername : String
    , masterUserPassword : String
    , clusterSecurityGroups : Maybe (List String)
    , vpcSecurityGroupIds : Maybe (List String)
    , clusterSubnetGroupName : Maybe String
    , availabilityZone : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , clusterParameterGroupName : Maybe String
    , automatedSnapshotRetentionPeriod : Maybe Int
    , manualSnapshotRetentionPeriod : Maybe Int
    , port_ : Maybe Int
    , clusterVersion : Maybe String
    , allowVersionUpgrade : Maybe Bool
    , numberOfNodes : Maybe Int
    , publiclyAccessible : Maybe Bool
    , encrypted : Maybe Bool
    , hsmClientCertificateIdentifier : Maybe String
    , hsmConfigurationIdentifier : Maybe String
    , elasticIp : Maybe String
    , tags : Maybe (List Tag)
    , kmsKeyId : Maybe String
    , enhancedVpcRouting : Maybe Bool
    , additionalInfo : Maybe String
    , iamRoles : Maybe (List String)
    , maintenanceTrackName : Maybe String
    , snapshotScheduleIdentifier : Maybe String
    }


{-|

<p/>

-}
type alias CreateClusterParameterGroupMessage =
    { parameterGroupName : String
    , parameterGroupFamily : String
    , description : String
    , tags : Maybe (List Tag)
    }


{-|

<p/>

-}
type alias CreateClusterSecurityGroupMessage =
    { clusterSecurityGroupName : String
    , description : String
    , tags : Maybe (List Tag)
    }


{-|

<p/>

-}
type alias CreateClusterSnapshotMessage =
    { snapshotIdentifier : String
    , clusterIdentifier : String
    , manualSnapshotRetentionPeriod : Maybe Int
    , tags : Maybe (List Tag)
    }


{-|

<p/>

-}
type alias CreateClusterSubnetGroupMessage =
    { clusterSubnetGroupName : String
    , description : String
    , subnetIds : List String
    , tags : Maybe (List Tag)
    }


{-|

<p/>

-}
type alias CreateEventSubscriptionMessage =
    { subscriptionName : String
    , snsTopicArn : String
    , sourceType : Maybe String
    , sourceIds : Maybe (List String)
    , eventCategories : Maybe (List String)
    , severity : Maybe String
    , enabled : Maybe Bool
    , tags : Maybe (List Tag)
    }


{-|

<p/>

-}
type alias CreateHsmClientCertificateMessage =
    { hsmClientCertificateIdentifier : String
    , tags : Maybe (List Tag)
    }


{-|

<p/>

-}
type alias CreateHsmConfigurationMessage =
    { hsmConfigurationIdentifier : String
    , description : String
    , hsmIpAddress : String
    , hsmPartitionName : String
    , hsmPartitionPassword : String
    , hsmServerPublicCertificate : String
    , tags : Maybe (List Tag)
    }


{-|

<p>The result of the <code>CreateSnapshotCopyGrant</code> action.</p>

-}
type alias CreateSnapshotCopyGrantMessage =
    { snapshotCopyGrantName : String
    , kmsKeyId : Maybe String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateSnapshotScheduleMessage =
    { scheduleDefinitions : Maybe (List String)
    , scheduleIdentifier : Maybe String
    , scheduleDescription : Maybe String
    , tags : Maybe (List Tag)
    , dryRun : Maybe Bool
    , nextInvocations : Maybe Int
    }


{-|

<p>Contains the output from the <code>CreateTags</code> action. </p>

-}
type alias CreateTagsMessage =
    { resourceName : String
    , tags : List Tag
    }


{-|

<p/>

-}
type alias DeleteClusterMessage =
    { clusterIdentifier : String
    , skipFinalClusterSnapshot : Maybe Bool
    , finalClusterSnapshotIdentifier : Maybe String
    , finalClusterSnapshotRetentionPeriod : Maybe Int
    }


{-|

<p/>

-}
type alias DeleteClusterParameterGroupMessage =
    { parameterGroupName : String
    }


{-|

<p/>

-}
type alias DeleteClusterSecurityGroupMessage =
    { clusterSecurityGroupName : String
    }


{-|

<p/>

-}
type alias DeleteClusterSnapshotMessage =
    { snapshotIdentifier : String
    , snapshotClusterIdentifier : Maybe String
    }


{-|

<p/>

-}
type alias DeleteClusterSubnetGroupMessage =
    { clusterSubnetGroupName : String
    }


{-|

<p/>

-}
type alias DeleteEventSubscriptionMessage =
    { subscriptionName : String
    }


{-|

<p/>

-}
type alias DeleteHsmClientCertificateMessage =
    { hsmClientCertificateIdentifier : String
    }


{-|

<p/>

-}
type alias DeleteHsmConfigurationMessage =
    { hsmConfigurationIdentifier : String
    }


{-|

<p>The result of the <code>DeleteSnapshotCopyGrant</code> action.</p>

-}
type alias DeleteSnapshotCopyGrantMessage =
    { snapshotCopyGrantName : String
    }


{-| undefined
-}
type alias DeleteSnapshotScheduleMessage =
    { scheduleIdentifier : String
    }


{-|

<p>Contains the output from the <code>DeleteTags</code> action. </p>

-}
type alias DeleteTagsMessage =
    { resourceName : String
    , tagKeys : List String
    }


{-| undefined
-}
type alias DescribeAccountAttributesMessage =
    { attributeNames : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeClusterDbRevisionsMessage =
    { clusterIdentifier : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeClusterParameterGroupsMessage =
    { parameterGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p/>

-}
type alias DescribeClusterParametersMessage =
    { parameterGroupName : String
    , source : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeClusterSecurityGroupsMessage =
    { clusterSecurityGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p/>

-}
type alias DescribeClusterSnapshotsMessage =
    { clusterIdentifier : Maybe String
    , snapshotIdentifier : Maybe String
    , snapshotType : Maybe String
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , maxRecords : Maybe Int
    , marker : Maybe String
    , ownerAccount : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    , clusterExists : Maybe Bool
    , sortingEntities : Maybe (List SnapshotSortingEntity)
    }


{-|

<p/>

-}
type alias DescribeClusterSubnetGroupsMessage =
    { clusterSubnetGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeClusterTracksMessage =
    { maintenanceTrackName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeClusterVersionsMessage =
    { clusterVersion : Maybe String
    , clusterParameterGroupFamily : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeClustersMessage =
    { clusterIdentifier : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p/>

-}
type alias DescribeDefaultClusterParametersMessage =
    { parameterGroupFamily : String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeEventCategoriesMessage =
    { sourceType : Maybe String
    }


{-|

<p/>

-}
type alias DescribeEventSubscriptionsMessage =
    { subscriptionName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p/>

-}
type alias DescribeEventsMessage =
    { sourceIdentifier : Maybe String
    , sourceType : Maybe SourceType
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , duration : Maybe Int
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeHsmClientCertificatesMessage =
    { hsmClientCertificateIdentifier : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p/>

-}
type alias DescribeHsmConfigurationsMessage =
    { hsmConfigurationIdentifier : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p/>

-}
type alias DescribeLoggingStatusMessage =
    { clusterIdentifier : String
    }


{-|

<p/>

-}
type alias DescribeOrderableClusterOptionsMessage =
    { clusterVersion : Maybe String
    , nodeType : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeReservedNodeOfferingsMessage =
    { reservedNodeOfferingId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeReservedNodesMessage =
    { reservedNodeId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeResizeMessage =
    { clusterIdentifier : String
    }


{-|

<p>The result of the <code>DescribeSnapshotCopyGrants</code> action.</p>

-}
type alias DescribeSnapshotCopyGrantsMessage =
    { snapshotCopyGrantName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeSnapshotSchedulesMessage =
    { clusterIdentifier : Maybe String
    , scheduleIdentifier : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    , marker : Maybe String
    , maxRecords : Maybe Int
    }


{-|

<p/>

-}
type alias DescribeTableRestoreStatusMessage =
    { clusterIdentifier : Maybe String
    , tableRestoreRequestId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeTagsMessage =
    { resourceName : Maybe String
    , resourceType : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }


{-|

<p/>

-}
type alias DisableLoggingMessage =
    { clusterIdentifier : String
    }


{-|

<p/>

-}
type alias DisableSnapshotCopyMessage =
    { clusterIdentifier : String
    }


{-|

<p/>

-}
type alias EnableLoggingMessage =
    { clusterIdentifier : String
    , bucketName : String
    , s3KeyPrefix : Maybe String
    }


{-|

<p/>

-}
type alias EnableSnapshotCopyMessage =
    { clusterIdentifier : String
    , destinationRegion : String
    , retentionPeriod : Maybe Int
    , snapshotCopyGrantName : Maybe String
    , manualSnapshotRetentionPeriod : Maybe Int
    }


{-|

<p>The request parameters to get cluster credentials.</p>

-}
type alias GetClusterCredentialsMessage =
    { dbUser : String
    , dbName : Maybe String
    , clusterIdentifier : String
    , durationSeconds : Maybe Int
    , autoCreate : Maybe Bool
    , dbGroups : Maybe (List String)
    }


{-|

<p/>

-}
type alias GetReservedNodeExchangeOfferingsInputMessage =
    { reservedNodeId : String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias ModifyClusterDbRevisionMessage =
    { clusterIdentifier : String
    , revisionTarget : String
    }


{-|

<p/>

-}
type alias ModifyClusterIamRolesMessage =
    { clusterIdentifier : String
    , addIamRoles : Maybe (List String)
    , removeIamRoles : Maybe (List String)
    }


{-| undefined
-}
type alias ModifyClusterMaintenanceMessage =
    { clusterIdentifier : String
    , deferMaintenance : Maybe Bool
    , deferMaintenanceIdentifier : Maybe String
    , deferMaintenanceStartTime : Maybe Posix
    , deferMaintenanceEndTime : Maybe Posix
    , deferMaintenanceDuration : Maybe Int
    }


{-|

<p/>

-}
type alias ModifyClusterMessage =
    { clusterIdentifier : String
    , clusterType : Maybe String
    , nodeType : Maybe String
    , numberOfNodes : Maybe Int
    , clusterSecurityGroups : Maybe (List String)
    , vpcSecurityGroupIds : Maybe (List String)
    , masterUserPassword : Maybe String
    , clusterParameterGroupName : Maybe String
    , automatedSnapshotRetentionPeriod : Maybe Int
    , manualSnapshotRetentionPeriod : Maybe Int
    , preferredMaintenanceWindow : Maybe String
    , clusterVersion : Maybe String
    , allowVersionUpgrade : Maybe Bool
    , hsmClientCertificateIdentifier : Maybe String
    , hsmConfigurationIdentifier : Maybe String
    , newClusterIdentifier : Maybe String
    , publiclyAccessible : Maybe Bool
    , elasticIp : Maybe String
    , enhancedVpcRouting : Maybe Bool
    , maintenanceTrackName : Maybe String
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    }


{-|

<p/>

-}
type alias ModifyClusterParameterGroupMessage =
    { parameterGroupName : String
    , parameters : List Parameter
    }


{-| undefined
-}
type alias ModifyClusterSnapshotMessage =
    { snapshotIdentifier : String
    , manualSnapshotRetentionPeriod : Maybe Int
    , force : Maybe Bool
    }


{-| undefined
-}
type alias ModifyClusterSnapshotScheduleMessage =
    { clusterIdentifier : String
    , scheduleIdentifier : Maybe String
    , disassociateSchedule : Maybe Bool
    }


{-|

<p/>

-}
type alias ModifyClusterSubnetGroupMessage =
    { clusterSubnetGroupName : String
    , description : Maybe String
    , subnetIds : List String
    }


{-|

<p/>

-}
type alias ModifyEventSubscriptionMessage =
    { subscriptionName : String
    , snsTopicArn : Maybe String
    , sourceType : Maybe String
    , sourceIds : Maybe (List String)
    , eventCategories : Maybe (List String)
    , severity : Maybe String
    , enabled : Maybe Bool
    }


{-|

<p/>

-}
type alias ModifySnapshotCopyRetentionPeriodMessage =
    { clusterIdentifier : String
    , retentionPeriod : Int
    , manual : Maybe Bool
    }


{-| undefined
-}
type alias ModifySnapshotScheduleMessage =
    { scheduleIdentifier : String
    , scheduleDefinitions : List String
    }


{-|

<p/>

-}
type alias PurchaseReservedNodeOfferingMessage =
    { reservedNodeOfferingId : String
    , nodeCount : Maybe Int
    }


{-|

<p/>

-}
type alias RebootClusterMessage =
    { clusterIdentifier : String
    }


{-|

<p/>

-}
type alias ResetClusterParameterGroupMessage =
    { parameterGroupName : String
    , resetAllParameters : Maybe Bool
    , parameters : Maybe (List Parameter)
    }


{-| undefined
-}
type alias ResizeClusterMessage =
    { clusterIdentifier : String
    , clusterType : Maybe String
    , nodeType : Maybe String
    , numberOfNodes : Int
    , classic : Maybe Bool
    }


{-|

<p/>

-}
type alias RestoreFromClusterSnapshotMessage =
    { clusterIdentifier : String
    , snapshotIdentifier : String
    , snapshotClusterIdentifier : Maybe String
    , port_ : Maybe Int
    , availabilityZone : Maybe String
    , allowVersionUpgrade : Maybe Bool
    , clusterSubnetGroupName : Maybe String
    , publiclyAccessible : Maybe Bool
    , ownerAccount : Maybe String
    , hsmClientCertificateIdentifier : Maybe String
    , hsmConfigurationIdentifier : Maybe String
    , elasticIp : Maybe String
    , clusterParameterGroupName : Maybe String
    , clusterSecurityGroups : Maybe (List String)
    , vpcSecurityGroupIds : Maybe (List String)
    , preferredMaintenanceWindow : Maybe String
    , automatedSnapshotRetentionPeriod : Maybe Int
    , manualSnapshotRetentionPeriod : Maybe Int
    , kmsKeyId : Maybe String
    , nodeType : Maybe String
    , enhancedVpcRouting : Maybe Bool
    , additionalInfo : Maybe String
    , iamRoles : Maybe (List String)
    , maintenanceTrackName : Maybe String
    , snapshotScheduleIdentifier : Maybe String
    }


{-|

<p/>

-}
type alias RestoreTableFromClusterSnapshotMessage =
    { clusterIdentifier : String
    , snapshotIdentifier : String
    , sourceDatabaseName : String
    , sourceSchemaName : Maybe String
    , sourceTableName : String
    , targetDatabaseName : Maybe String
    , targetSchemaName : Maybe String
    , newTableName : String
    }


{-|

<p/>

-}
type alias RevokeClusterSecurityGroupIngressMessage =
    { clusterSecurityGroupName : String
    , cIDRIP : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    }


{-|

<p/>

-}
type alias RevokeSnapshotAccessMessage =
    { snapshotIdentifier : String
    , snapshotClusterIdentifier : Maybe String
    , accountWithRestoreAccess : String
    }


{-|

<p/>

-}
type alias RotateEncryptionKeyMessage =
    { clusterIdentifier : String
    }


acceptReservedNodeExchangeInputMessageEncoder : AcceptReservedNodeExchangeInputMessage -> List ( String, String )
acceptReservedNodeExchangeInputMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReservedNodeId" data.reservedNodeId
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetReservedNodeOfferingId" data.targetReservedNodeOfferingId


acceptReservedNodeExchangeOutputMessageEncoder : AcceptReservedNodeExchangeOutputMessage -> List ( String, String )
acceptReservedNodeExchangeOutputMessageEncoder data =
    []
        |> (case data.exchangedReservedNode of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs reservedNodeEncoder "ExchangedReservedNode" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


accountAttributeEncoder : AccountAttribute -> List ( String, String )
accountAttributeEncoder data =
    []
        |> (case data.attributeName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AttributeName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.attributeValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs attributeValueTargetEncoder "") "AttributeValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


accountAttributeListEncoder : AccountAttributeList -> List ( String, String )
accountAttributeListEncoder data =
    []
        |> (case data.accountAttributes of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs accountAttributeEncoder "") "AccountAttributes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


accountWithRestoreAccessEncoder : AccountWithRestoreAccess -> List ( String, String )
accountWithRestoreAccessEncoder data =
    []
        |> (case data.accountId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AccountId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.accountAlias of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AccountAlias" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


attributeValueTargetEncoder : AttributeValueTarget -> List ( String, String )
attributeValueTargetEncoder data =
    []
        |> (case data.attributeValue of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AttributeValue" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


authorizeClusterSecurityGroupIngressMessageEncoder : AuthorizeClusterSecurityGroupIngressMessage -> List ( String, String )
authorizeClusterSecurityGroupIngressMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterSecurityGroupName" data.clusterSecurityGroupName
        |> (case data.cIDRIP of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CIDRIP" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eC2SecurityGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eC2SecurityGroupOwnerId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupOwnerId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


authorizeClusterSecurityGroupIngressResultEncoder : AuthorizeClusterSecurityGroupIngressResult -> List ( String, String )
authorizeClusterSecurityGroupIngressResultEncoder data =
    []
        |> (case data.clusterSecurityGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterSecurityGroupEncoder "ClusterSecurityGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


authorizeSnapshotAccessMessageEncoder : AuthorizeSnapshotAccessMessage -> List ( String, String )
authorizeSnapshotAccessMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "SnapshotIdentifier" data.snapshotIdentifier
        |> (case data.snapshotClusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "AccountWithRestoreAccess" data.accountWithRestoreAccess


authorizeSnapshotAccessResultEncoder : AuthorizeSnapshotAccessResult -> List ( String, String )
authorizeSnapshotAccessResultEncoder data =
    []
        |> (case data.snapshot of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs snapshotEncoder "Snapshot" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


availabilityZoneEncoder : AvailabilityZone -> List ( String, String )
availabilityZoneEncoder data =
    []
        |> (case data.name of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Name" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.supportedPlatforms of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs supportedPlatformEncoder "") "SupportedPlatforms" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


batchDeleteClusterSnapshotsRequestEncoder : BatchDeleteClusterSnapshotsRequest -> List ( String, String )
batchDeleteClusterSnapshotsRequestEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs deleteClusterSnapshotMessageEncoder "") "Identifiers" data.identifiers


batchDeleteClusterSnapshotsResultEncoder : BatchDeleteClusterSnapshotsResult -> List ( String, String )
batchDeleteClusterSnapshotsResultEncoder data =
    []
        |> (case data.resources of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Resources" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.errors of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs snapshotErrorMessageEncoder "") "Errors" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


batchModifyClusterSnapshotsMessageEncoder : BatchModifyClusterSnapshotsMessage -> List ( String, String )
batchModifyClusterSnapshotsMessageEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SnapshotIdentifierList" data.snapshotIdentifierList
        |> (case data.manualSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ManualSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.force of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Force" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


batchModifyClusterSnapshotsOutputMessageEncoder : BatchModifyClusterSnapshotsOutputMessage -> List ( String, String )
batchModifyClusterSnapshotsOutputMessageEncoder data =
    []
        |> (case data.resources of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Resources" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.errors of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs snapshotErrorMessageEncoder "") "Errors" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cancelResizeMessageEncoder : CancelResizeMessage -> List ( String, String )
cancelResizeMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier


clusterEncoder : Cluster -> List ( String, String )
clusterEncoder data =
    []
        |> (case data.clusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterAvailabilityStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterAvailabilityStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.modifyStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ModifyStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.masterUsername of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MasterUsername" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dBName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DBName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.endpoint of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs endpointEncoder "Endpoint" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterCreateTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ClusterCreateTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.automatedSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "AutomatedSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.manualSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ManualSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterSecurityGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs clusterSecurityGroupMembershipEncoder "") "ClusterSecurityGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.vpcSecurityGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs vpcSecurityGroupMembershipEncoder "") "VpcSecurityGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterParameterGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs clusterParameterGroupStatusEncoder "") "ClusterParameterGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterSubnetGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterSubnetGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.vpcId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "VpcId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.availabilityZone of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AvailabilityZone" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredMaintenanceWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.pendingModifiedValues of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs pendingModifiedValuesEncoder "PendingModifiedValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterVersion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.allowVersionUpgrade of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AllowVersionUpgrade" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.numberOfNodes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumberOfNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.publiclyAccessible of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PubliclyAccessible" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.encrypted of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Encrypted" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.restoreStatus of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs restoreStatusEncoder "RestoreStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dataTransferProgress of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs dataTransferProgressEncoder "DataTransferProgress" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hsmStatus of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs hsmStatusEncoder "HsmStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterSnapshotCopyStatus of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterSnapshotCopyStatusEncoder "ClusterSnapshotCopyStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterPublicKey of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterPublicKey" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterNodes of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs clusterNodeEncoder "") "ClusterNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.elasticIpStatus of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs elasticIpStatusEncoder "ElasticIpStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterRevisionNumber of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterRevisionNumber" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.kmsKeyId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.enhancedVpcRouting of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnhancedVpcRouting" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.iamRoles of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs clusterIamRoleEncoder "") "IamRoles" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.pendingActions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PendingActions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maintenanceTrackName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MaintenanceTrackName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.elasticResizeNumberOfNodeOptions of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ElasticResizeNumberOfNodeOptions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.deferredMaintenanceWindows of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs deferredMaintenanceWindowEncoder "") "DeferredMaintenanceWindows" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotScheduleIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotScheduleIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotScheduleState of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs scheduleStateToString "SnapshotScheduleState" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resizeInfo of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs resizeInfoEncoder "ResizeInfo" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterAssociatedToScheduleEncoder : ClusterAssociatedToSchedule -> List ( String, String )
clusterAssociatedToScheduleEncoder data =
    []
        |> (case data.clusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.scheduleAssociationState of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs scheduleStateToString "ScheduleAssociationState" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterCredentialsEncoder : ClusterCredentials -> List ( String, String )
clusterCredentialsEncoder data =
    []
        |> (case data.dbUser of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DbUser" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dbPassword of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DbPassword" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.expiration of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Expiration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterDbRevisionEncoder : ClusterDbRevision -> List ( String, String )
clusterDbRevisionEncoder data =
    []
        |> (case data.clusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.currentDatabaseRevision of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CurrentDatabaseRevision" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.databaseRevisionReleaseDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DatabaseRevisionReleaseDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.revisionTargets of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs revisionTargetEncoder "") "RevisionTargets" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterDbRevisionsMessageEncoder : ClusterDbRevisionsMessage -> List ( String, String )
clusterDbRevisionsMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterDbRevisions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs clusterDbRevisionEncoder "") "ClusterDbRevisions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterIamRoleEncoder : ClusterIamRole -> List ( String, String )
clusterIamRoleEncoder data =
    []
        |> (case data.iamRoleArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "IamRoleArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.applyStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ApplyStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterNodeEncoder : ClusterNode -> List ( String, String )
clusterNodeEncoder data =
    []
        |> (case data.nodeRole of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeRole" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.privateIPAddress of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PrivateIPAddress" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.publicIPAddress of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PublicIPAddress" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterParameterGroupEncoder : ClusterParameterGroup -> List ( String, String )
clusterParameterGroupEncoder data =
    []
        |> (case data.parameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.parameterGroupFamily of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupFamily" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterParameterGroupDetailsEncoder : ClusterParameterGroupDetails -> List ( String, String )
clusterParameterGroupDetailsEncoder data =
    []
        |> (case data.parameters of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterParameterGroupNameMessageEncoder : ClusterParameterGroupNameMessage -> List ( String, String )
clusterParameterGroupNameMessageEncoder data =
    []
        |> (case data.parameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.parameterGroupStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterParameterGroupStatusEncoder : ClusterParameterGroupStatus -> List ( String, String )
clusterParameterGroupStatusEncoder data =
    []
        |> (case data.parameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.parameterApplyStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterApplyStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterParameterStatusList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs clusterParameterStatusEncoder "") "ClusterParameterStatusList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterParameterGroupsMessageEncoder : ClusterParameterGroupsMessage -> List ( String, String )
clusterParameterGroupsMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.parameterGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs clusterParameterGroupEncoder "") "ParameterGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterParameterStatusEncoder : ClusterParameterStatus -> List ( String, String )
clusterParameterStatusEncoder data =
    []
        |> (case data.parameterName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.parameterApplyStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterApplyStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.parameterApplyErrorDescription of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterApplyErrorDescription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterSecurityGroupEncoder : ClusterSecurityGroup -> List ( String, String )
clusterSecurityGroupEncoder data =
    []
        |> (case data.clusterSecurityGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterSecurityGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eC2SecurityGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs eC2SecurityGroupEncoder "") "EC2SecurityGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.iPRanges of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs iPRangeEncoder "") "IPRanges" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterSecurityGroupMembershipEncoder : ClusterSecurityGroupMembership -> List ( String, String )
clusterSecurityGroupMembershipEncoder data =
    []
        |> (case data.clusterSecurityGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterSecurityGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterSecurityGroupMessageEncoder : ClusterSecurityGroupMessage -> List ( String, String )
clusterSecurityGroupMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterSecurityGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs clusterSecurityGroupEncoder "") "ClusterSecurityGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterSnapshotCopyStatusEncoder : ClusterSnapshotCopyStatus -> List ( String, String )
clusterSnapshotCopyStatusEncoder data =
    []
        |> (case data.destinationRegion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DestinationRegion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.retentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "RetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.manualSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ManualSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotCopyGrantName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotCopyGrantName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterSubnetGroupEncoder : ClusterSubnetGroup -> List ( String, String )
clusterSubnetGroupEncoder data =
    []
        |> (case data.clusterSubnetGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterSubnetGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.vpcId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "VpcId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.subnetGroupStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SubnetGroupStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.subnets of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs subnetEncoder "") "Subnets" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterSubnetGroupMessageEncoder : ClusterSubnetGroupMessage -> List ( String, String )
clusterSubnetGroupMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterSubnetGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs clusterSubnetGroupEncoder "") "ClusterSubnetGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterVersionEncoder : ClusterVersion -> List ( String, String )
clusterVersionEncoder data =
    []
        |> (case data.clusterVersion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterParameterGroupFamily of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterParameterGroupFamily" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clusterVersionsMessageEncoder : ClusterVersionsMessage -> List ( String, String )
clusterVersionsMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterVersions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs clusterVersionEncoder "") "ClusterVersions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


clustersMessageEncoder : ClustersMessage -> List ( String, String )
clustersMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusters of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs clusterEncoder "") "Clusters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


copyClusterSnapshotMessageEncoder : CopyClusterSnapshotMessage -> List ( String, String )
copyClusterSnapshotMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceSnapshotIdentifier" data.sourceSnapshotIdentifier
        |> (case data.sourceSnapshotClusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceSnapshotClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetSnapshotIdentifier" data.targetSnapshotIdentifier
        |> (case data.manualSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ManualSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


copyClusterSnapshotResultEncoder : CopyClusterSnapshotResult -> List ( String, String )
copyClusterSnapshotResultEncoder data =
    []
        |> (case data.snapshot of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs snapshotEncoder "Snapshot" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createClusterMessageEncoder : CreateClusterMessage -> List ( String, String )
createClusterMessageEncoder data =
    []
        |> (case data.dBName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DBName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> (case data.clusterType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "NodeType" data.nodeType
        |> AWS.Core.Encode.addOneToQueryArgs identity "MasterUsername" data.masterUsername
        |> AWS.Core.Encode.addOneToQueryArgs identity "MasterUserPassword" data.masterUserPassword
        |> (case data.clusterSecurityGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ClusterSecurityGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.vpcSecurityGroupIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterSubnetGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterSubnetGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.availabilityZone of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AvailabilityZone" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredMaintenanceWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterParameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.automatedSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "AutomatedSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.manualSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ManualSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.port_ of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterVersion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.allowVersionUpgrade of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AllowVersionUpgrade" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.numberOfNodes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumberOfNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.publiclyAccessible of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PubliclyAccessible" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.encrypted of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Encrypted" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hsmClientCertificateIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmClientCertificateIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hsmConfigurationIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmConfigurationIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.elasticIp of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ElasticIp" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.kmsKeyId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.enhancedVpcRouting of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnhancedVpcRouting" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.additionalInfo of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AdditionalInfo" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.iamRoles of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "IamRoles" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maintenanceTrackName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MaintenanceTrackName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotScheduleIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotScheduleIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createClusterParameterGroupMessageEncoder : CreateClusterParameterGroupMessage -> List ( String, String )
createClusterParameterGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupName" data.parameterGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupFamily" data.parameterGroupFamily
        |> AWS.Core.Encode.addOneToQueryArgs identity "Description" data.description
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createClusterParameterGroupResultEncoder : CreateClusterParameterGroupResult -> List ( String, String )
createClusterParameterGroupResultEncoder data =
    []
        |> (case data.clusterParameterGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterParameterGroupEncoder "ClusterParameterGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createClusterResultEncoder : CreateClusterResult -> List ( String, String )
createClusterResultEncoder data =
    []
        |> (case data.cluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterEncoder "Cluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createClusterSecurityGroupMessageEncoder : CreateClusterSecurityGroupMessage -> List ( String, String )
createClusterSecurityGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterSecurityGroupName" data.clusterSecurityGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "Description" data.description
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createClusterSecurityGroupResultEncoder : CreateClusterSecurityGroupResult -> List ( String, String )
createClusterSecurityGroupResultEncoder data =
    []
        |> (case data.clusterSecurityGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterSecurityGroupEncoder "ClusterSecurityGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createClusterSnapshotMessageEncoder : CreateClusterSnapshotMessage -> List ( String, String )
createClusterSnapshotMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "SnapshotIdentifier" data.snapshotIdentifier
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> (case data.manualSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ManualSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createClusterSnapshotResultEncoder : CreateClusterSnapshotResult -> List ( String, String )
createClusterSnapshotResultEncoder data =
    []
        |> (case data.snapshot of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs snapshotEncoder "Snapshot" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createClusterSubnetGroupMessageEncoder : CreateClusterSubnetGroupMessage -> List ( String, String )
createClusterSubnetGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterSubnetGroupName" data.clusterSubnetGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "Description" data.description
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SubnetIds" data.subnetIds
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createClusterSubnetGroupResultEncoder : CreateClusterSubnetGroupResult -> List ( String, String )
createClusterSubnetGroupResultEncoder data =
    []
        |> (case data.clusterSubnetGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterSubnetGroupEncoder "ClusterSubnetGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createEventSubscriptionMessageEncoder : CreateEventSubscriptionMessage -> List ( String, String )
createEventSubscriptionMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionName" data.subscriptionName
        |> AWS.Core.Encode.addOneToQueryArgs identity "SnsTopicArn" data.snsTopicArn
        |> (case data.sourceType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SourceIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eventCategories of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EventCategories" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.severity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Severity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.enabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createEventSubscriptionResultEncoder : CreateEventSubscriptionResult -> List ( String, String )
createEventSubscriptionResultEncoder data =
    []
        |> (case data.eventSubscription of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs eventSubscriptionEncoder "EventSubscription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createHsmClientCertificateMessageEncoder : CreateHsmClientCertificateMessage -> List ( String, String )
createHsmClientCertificateMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "HsmClientCertificateIdentifier" data.hsmClientCertificateIdentifier
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createHsmClientCertificateResultEncoder : CreateHsmClientCertificateResult -> List ( String, String )
createHsmClientCertificateResultEncoder data =
    []
        |> (case data.hsmClientCertificate of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs hsmClientCertificateEncoder "HsmClientCertificate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createHsmConfigurationMessageEncoder : CreateHsmConfigurationMessage -> List ( String, String )
createHsmConfigurationMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "HsmConfigurationIdentifier" data.hsmConfigurationIdentifier
        |> AWS.Core.Encode.addOneToQueryArgs identity "Description" data.description
        |> AWS.Core.Encode.addOneToQueryArgs identity "HsmIpAddress" data.hsmIpAddress
        |> AWS.Core.Encode.addOneToQueryArgs identity "HsmPartitionName" data.hsmPartitionName
        |> AWS.Core.Encode.addOneToQueryArgs identity "HsmPartitionPassword" data.hsmPartitionPassword
        |> AWS.Core.Encode.addOneToQueryArgs identity "HsmServerPublicCertificate" data.hsmServerPublicCertificate
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createHsmConfigurationResultEncoder : CreateHsmConfigurationResult -> List ( String, String )
createHsmConfigurationResultEncoder data =
    []
        |> (case data.hsmConfiguration of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs hsmConfigurationEncoder "HsmConfiguration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createSnapshotCopyGrantMessageEncoder : CreateSnapshotCopyGrantMessage -> List ( String, String )
createSnapshotCopyGrantMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "SnapshotCopyGrantName" data.snapshotCopyGrantName
        |> (case data.kmsKeyId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createSnapshotCopyGrantResultEncoder : CreateSnapshotCopyGrantResult -> List ( String, String )
createSnapshotCopyGrantResultEncoder data =
    []
        |> (case data.snapshotCopyGrant of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs snapshotCopyGrantEncoder "SnapshotCopyGrant" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createSnapshotScheduleMessageEncoder : CreateSnapshotScheduleMessage -> List ( String, String )
createSnapshotScheduleMessageEncoder data =
    []
        |> (case data.scheduleDefinitions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ScheduleDefinitions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.scheduleIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ScheduleIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.scheduleDescription of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ScheduleDescription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dryRun of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DryRun" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextInvocations of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NextInvocations" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createTagsMessageEncoder : CreateTagsMessage -> List ( String, String )
createTagsMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceName" data.resourceName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" data.tags


customerStorageMessageEncoder : CustomerStorageMessage -> List ( String, String )
customerStorageMessageEncoder data =
    []
        |> (case data.totalBackupSizeInMegaBytes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "TotalBackupSizeInMegaBytes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.totalProvisionedStorageInMegaBytes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "TotalProvisionedStorageInMegaBytes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


dataTransferProgressEncoder : DataTransferProgress -> List ( String, String )
dataTransferProgressEncoder data =
    []
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.currentRateInMegaBytesPerSecond of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "CurrentRateInMegaBytesPerSecond" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.totalDataInMegaBytes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "TotalDataInMegaBytes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dataTransferredInMegaBytes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "DataTransferredInMegaBytes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.estimatedTimeToCompletionInSeconds of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "EstimatedTimeToCompletionInSeconds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.elapsedTimeInSeconds of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ElapsedTimeInSeconds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


defaultClusterParametersEncoder : DefaultClusterParameters -> List ( String, String )
defaultClusterParametersEncoder data =
    []
        |> (case data.parameterGroupFamily of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupFamily" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.parameters of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deferredMaintenanceWindowEncoder : DeferredMaintenanceWindow -> List ( String, String )
deferredMaintenanceWindowEncoder data =
    []
        |> (case data.deferMaintenanceIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DeferMaintenanceIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.deferMaintenanceStartTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DeferMaintenanceStartTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.deferMaintenanceEndTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DeferMaintenanceEndTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deleteClusterMessageEncoder : DeleteClusterMessage -> List ( String, String )
deleteClusterMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> (case data.skipFinalClusterSnapshot of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SkipFinalClusterSnapshot" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.finalClusterSnapshotIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "FinalClusterSnapshotIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.finalClusterSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "FinalClusterSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deleteClusterParameterGroupMessageEncoder : DeleteClusterParameterGroupMessage -> List ( String, String )
deleteClusterParameterGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupName" data.parameterGroupName


deleteClusterResultEncoder : DeleteClusterResult -> List ( String, String )
deleteClusterResultEncoder data =
    []
        |> (case data.cluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterEncoder "Cluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deleteClusterSecurityGroupMessageEncoder : DeleteClusterSecurityGroupMessage -> List ( String, String )
deleteClusterSecurityGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterSecurityGroupName" data.clusterSecurityGroupName


deleteClusterSnapshotMessageEncoder : DeleteClusterSnapshotMessage -> List ( String, String )
deleteClusterSnapshotMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "SnapshotIdentifier" data.snapshotIdentifier
        |> (case data.snapshotClusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deleteClusterSnapshotResultEncoder : DeleteClusterSnapshotResult -> List ( String, String )
deleteClusterSnapshotResultEncoder data =
    []
        |> (case data.snapshot of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs snapshotEncoder "Snapshot" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deleteClusterSubnetGroupMessageEncoder : DeleteClusterSubnetGroupMessage -> List ( String, String )
deleteClusterSubnetGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterSubnetGroupName" data.clusterSubnetGroupName


deleteEventSubscriptionMessageEncoder : DeleteEventSubscriptionMessage -> List ( String, String )
deleteEventSubscriptionMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionName" data.subscriptionName


deleteHsmClientCertificateMessageEncoder : DeleteHsmClientCertificateMessage -> List ( String, String )
deleteHsmClientCertificateMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "HsmClientCertificateIdentifier" data.hsmClientCertificateIdentifier


deleteHsmConfigurationMessageEncoder : DeleteHsmConfigurationMessage -> List ( String, String )
deleteHsmConfigurationMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "HsmConfigurationIdentifier" data.hsmConfigurationIdentifier


deleteSnapshotCopyGrantMessageEncoder : DeleteSnapshotCopyGrantMessage -> List ( String, String )
deleteSnapshotCopyGrantMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "SnapshotCopyGrantName" data.snapshotCopyGrantName


deleteSnapshotScheduleMessageEncoder : DeleteSnapshotScheduleMessage -> List ( String, String )
deleteSnapshotScheduleMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ScheduleIdentifier" data.scheduleIdentifier


deleteTagsMessageEncoder : DeleteTagsMessage -> List ( String, String )
deleteTagsMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceName" data.resourceName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" data.tagKeys


describeAccountAttributesMessageEncoder : DescribeAccountAttributesMessage -> List ( String, String )
describeAccountAttributesMessageEncoder data =
    []
        |> (case data.attributeNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AttributeNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeClusterDbRevisionsMessageEncoder : DescribeClusterDbRevisionsMessage -> List ( String, String )
describeClusterDbRevisionsMessageEncoder data =
    []
        |> (case data.clusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeClusterParameterGroupsMessageEncoder : DescribeClusterParameterGroupsMessage -> List ( String, String )
describeClusterParameterGroupsMessageEncoder data =
    []
        |> (case data.parameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagKeys of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeClusterParametersMessageEncoder : DescribeClusterParametersMessage -> List ( String, String )
describeClusterParametersMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupName" data.parameterGroupName
        |> (case data.source of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Source" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeClusterSecurityGroupsMessageEncoder : DescribeClusterSecurityGroupsMessage -> List ( String, String )
describeClusterSecurityGroupsMessageEncoder data =
    []
        |> (case data.clusterSecurityGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterSecurityGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagKeys of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeClusterSnapshotsMessageEncoder : DescribeClusterSnapshotsMessage -> List ( String, String )
describeClusterSnapshotsMessageEncoder data =
    []
        |> (case data.clusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.startTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "StartTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.endTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EndTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.ownerAccount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "OwnerAccount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagKeys of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterExists of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ClusterExists" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sortingEntities of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs snapshotSortingEntityEncoder "") "SortingEntities" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeClusterSubnetGroupsMessageEncoder : DescribeClusterSubnetGroupsMessage -> List ( String, String )
describeClusterSubnetGroupsMessageEncoder data =
    []
        |> (case data.clusterSubnetGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterSubnetGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagKeys of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeClusterTracksMessageEncoder : DescribeClusterTracksMessage -> List ( String, String )
describeClusterTracksMessageEncoder data =
    []
        |> (case data.maintenanceTrackName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MaintenanceTrackName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeClusterVersionsMessageEncoder : DescribeClusterVersionsMessage -> List ( String, String )
describeClusterVersionsMessageEncoder data =
    []
        |> (case data.clusterVersion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterParameterGroupFamily of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterParameterGroupFamily" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeClustersMessageEncoder : DescribeClustersMessage -> List ( String, String )
describeClustersMessageEncoder data =
    []
        |> (case data.clusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagKeys of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeDefaultClusterParametersMessageEncoder : DescribeDefaultClusterParametersMessage -> List ( String, String )
describeDefaultClusterParametersMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupFamily" data.parameterGroupFamily
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeDefaultClusterParametersResultEncoder : DescribeDefaultClusterParametersResult -> List ( String, String )
describeDefaultClusterParametersResultEncoder data =
    []
        |> (case data.defaultClusterParameters of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs defaultClusterParametersEncoder "DefaultClusterParameters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeEventCategoriesMessageEncoder : DescribeEventCategoriesMessage -> List ( String, String )
describeEventCategoriesMessageEncoder data =
    []
        |> (case data.sourceType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeEventSubscriptionsMessageEncoder : DescribeEventSubscriptionsMessage -> List ( String, String )
describeEventSubscriptionsMessageEncoder data =
    []
        |> (case data.subscriptionName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagKeys of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeEventsMessageEncoder : DescribeEventsMessage -> List ( String, String )
describeEventsMessageEncoder data =
    []
        |> (case data.sourceIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs sourceTypeToString "SourceType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.startTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "StartTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.endTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EndTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.duration of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Duration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeHsmClientCertificatesMessageEncoder : DescribeHsmClientCertificatesMessage -> List ( String, String )
describeHsmClientCertificatesMessageEncoder data =
    []
        |> (case data.hsmClientCertificateIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmClientCertificateIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagKeys of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeHsmConfigurationsMessageEncoder : DescribeHsmConfigurationsMessage -> List ( String, String )
describeHsmConfigurationsMessageEncoder data =
    []
        |> (case data.hsmConfigurationIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmConfigurationIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagKeys of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeLoggingStatusMessageEncoder : DescribeLoggingStatusMessage -> List ( String, String )
describeLoggingStatusMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier


describeOrderableClusterOptionsMessageEncoder : DescribeOrderableClusterOptionsMessage -> List ( String, String )
describeOrderableClusterOptionsMessageEncoder data =
    []
        |> (case data.clusterVersion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeReservedNodeOfferingsMessageEncoder : DescribeReservedNodeOfferingsMessage -> List ( String, String )
describeReservedNodeOfferingsMessageEncoder data =
    []
        |> (case data.reservedNodeOfferingId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReservedNodeOfferingId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeReservedNodesMessageEncoder : DescribeReservedNodesMessage -> List ( String, String )
describeReservedNodesMessageEncoder data =
    []
        |> (case data.reservedNodeId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReservedNodeId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeResizeMessageEncoder : DescribeResizeMessage -> List ( String, String )
describeResizeMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier


describeSnapshotCopyGrantsMessageEncoder : DescribeSnapshotCopyGrantsMessage -> List ( String, String )
describeSnapshotCopyGrantsMessageEncoder data =
    []
        |> (case data.snapshotCopyGrantName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotCopyGrantName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagKeys of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeSnapshotSchedulesMessageEncoder : DescribeSnapshotSchedulesMessage -> List ( String, String )
describeSnapshotSchedulesMessageEncoder data =
    []
        |> (case data.clusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.scheduleIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ScheduleIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagKeys of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeSnapshotSchedulesOutputMessageEncoder : DescribeSnapshotSchedulesOutputMessage -> List ( String, String )
describeSnapshotSchedulesOutputMessageEncoder data =
    []
        |> (case data.snapshotSchedules of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs snapshotScheduleEncoder "") "SnapshotSchedules" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeTableRestoreStatusMessageEncoder : DescribeTableRestoreStatusMessage -> List ( String, String )
describeTableRestoreStatusMessageEncoder data =
    []
        |> (case data.clusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tableRestoreRequestId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TableRestoreRequestId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeTagsMessageEncoder : DescribeTagsMessage -> List ( String, String )
describeTagsMessageEncoder data =
    []
        |> (case data.resourceName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ResourceName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resourceType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ResourceType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagKeys of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tagValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


disableLoggingMessageEncoder : DisableLoggingMessage -> List ( String, String )
disableLoggingMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier


disableSnapshotCopyMessageEncoder : DisableSnapshotCopyMessage -> List ( String, String )
disableSnapshotCopyMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier


disableSnapshotCopyResultEncoder : DisableSnapshotCopyResult -> List ( String, String )
disableSnapshotCopyResultEncoder data =
    []
        |> (case data.cluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterEncoder "Cluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


eC2SecurityGroupEncoder : EC2SecurityGroup -> List ( String, String )
eC2SecurityGroupEncoder data =
    []
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eC2SecurityGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eC2SecurityGroupOwnerId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupOwnerId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


elasticIpStatusEncoder : ElasticIpStatus -> List ( String, String )
elasticIpStatusEncoder data =
    []
        |> (case data.elasticIp of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ElasticIp" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


enableLoggingMessageEncoder : EnableLoggingMessage -> List ( String, String )
enableLoggingMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> AWS.Core.Encode.addOneToQueryArgs identity "BucketName" data.bucketName
        |> (case data.s3KeyPrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "S3KeyPrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


enableSnapshotCopyMessageEncoder : EnableSnapshotCopyMessage -> List ( String, String )
enableSnapshotCopyMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> AWS.Core.Encode.addOneToQueryArgs identity "DestinationRegion" data.destinationRegion
        |> (case data.retentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "RetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotCopyGrantName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotCopyGrantName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.manualSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ManualSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


enableSnapshotCopyResultEncoder : EnableSnapshotCopyResult -> List ( String, String )
enableSnapshotCopyResultEncoder data =
    []
        |> (case data.cluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterEncoder "Cluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


endpointEncoder : Endpoint -> List ( String, String )
endpointEncoder data =
    []
        |> (case data.address of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Address" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.port_ of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


eventEncoder : Event -> List ( String, String )
eventEncoder data =
    []
        |> (case data.sourceIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs sourceTypeToString "SourceType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.message of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Message" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eventCategories of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EventCategories" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.severity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Severity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.date of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Date" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eventId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EventId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


eventCategoriesMapEncoder : EventCategoriesMap -> List ( String, String )
eventCategoriesMapEncoder data =
    []
        |> (case data.sourceType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.events of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs eventInfoMapEncoder "") "Events" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


eventCategoriesMessageEncoder : EventCategoriesMessage -> List ( String, String )
eventCategoriesMessageEncoder data =
    []
        |> (case data.eventCategoriesMapList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs eventCategoriesMapEncoder "") "EventCategoriesMapList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


eventInfoMapEncoder : EventInfoMap -> List ( String, String )
eventInfoMapEncoder data =
    []
        |> (case data.eventId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EventId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eventCategories of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EventCategories" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eventDescription of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EventDescription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.severity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Severity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


eventSubscriptionEncoder : EventSubscription -> List ( String, String )
eventSubscriptionEncoder data =
    []
        |> (case data.customerAwsId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CustomerAwsId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.custSubscriptionId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CustSubscriptionId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snsTopicArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnsTopicArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.subscriptionCreationTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "SubscriptionCreationTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceIdsList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SourceIdsList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eventCategoriesList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EventCategoriesList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.severity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Severity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.enabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


eventSubscriptionsMessageEncoder : EventSubscriptionsMessage -> List ( String, String )
eventSubscriptionsMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eventSubscriptionsList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs eventSubscriptionEncoder "") "EventSubscriptionsList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


eventsMessageEncoder : EventsMessage -> List ( String, String )
eventsMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.events of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs eventEncoder "") "Events" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getClusterCredentialsMessageEncoder : GetClusterCredentialsMessage -> List ( String, String )
getClusterCredentialsMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "DbUser" data.dbUser
        |> (case data.dbName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DbName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> (case data.durationSeconds of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "DurationSeconds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.autoCreate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoCreate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dbGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "DbGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getReservedNodeExchangeOfferingsInputMessageEncoder : GetReservedNodeExchangeOfferingsInputMessage -> List ( String, String )
getReservedNodeExchangeOfferingsInputMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReservedNodeId" data.reservedNodeId
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getReservedNodeExchangeOfferingsOutputMessageEncoder : GetReservedNodeExchangeOfferingsOutputMessage -> List ( String, String )
getReservedNodeExchangeOfferingsOutputMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.reservedNodeOfferings of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs reservedNodeOfferingEncoder "") "ReservedNodeOfferings" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


hsmClientCertificateEncoder : HsmClientCertificate -> List ( String, String )
hsmClientCertificateEncoder data =
    []
        |> (case data.hsmClientCertificateIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmClientCertificateIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hsmClientCertificatePublicKey of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmClientCertificatePublicKey" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


hsmClientCertificateMessageEncoder : HsmClientCertificateMessage -> List ( String, String )
hsmClientCertificateMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hsmClientCertificates of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs hsmClientCertificateEncoder "") "HsmClientCertificates" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


hsmConfigurationEncoder : HsmConfiguration -> List ( String, String )
hsmConfigurationEncoder data =
    []
        |> (case data.hsmConfigurationIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmConfigurationIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hsmIpAddress of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmIpAddress" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hsmPartitionName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmPartitionName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


hsmConfigurationMessageEncoder : HsmConfigurationMessage -> List ( String, String )
hsmConfigurationMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hsmConfigurations of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs hsmConfigurationEncoder "") "HsmConfigurations" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


hsmStatusEncoder : HsmStatus -> List ( String, String )
hsmStatusEncoder data =
    []
        |> (case data.hsmClientCertificateIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmClientCertificateIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hsmConfigurationIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmConfigurationIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


iPRangeEncoder : IPRange -> List ( String, String )
iPRangeEncoder data =
    []
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cIDRIP of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CIDRIP" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


loggingStatusEncoder : LoggingStatus -> List ( String, String )
loggingStatusEncoder data =
    []
        |> (case data.loggingEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "LoggingEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.bucketName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "BucketName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.s3KeyPrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "S3KeyPrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.lastSuccessfulDeliveryTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastSuccessfulDeliveryTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.lastFailureTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastFailureTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.lastFailureMessage of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LastFailureMessage" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


maintenanceTrackEncoder : MaintenanceTrack -> List ( String, String )
maintenanceTrackEncoder data =
    []
        |> (case data.maintenanceTrackName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MaintenanceTrackName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.databaseVersion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DatabaseVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.updateTargets of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs updateTargetEncoder "") "UpdateTargets" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyClusterDbRevisionMessageEncoder : ModifyClusterDbRevisionMessage -> List ( String, String )
modifyClusterDbRevisionMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> AWS.Core.Encode.addOneToQueryArgs identity "RevisionTarget" data.revisionTarget


modifyClusterDbRevisionResultEncoder : ModifyClusterDbRevisionResult -> List ( String, String )
modifyClusterDbRevisionResultEncoder data =
    []
        |> (case data.cluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterEncoder "Cluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyClusterIamRolesMessageEncoder : ModifyClusterIamRolesMessage -> List ( String, String )
modifyClusterIamRolesMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> (case data.addIamRoles of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AddIamRoles" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.removeIamRoles of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "RemoveIamRoles" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyClusterIamRolesResultEncoder : ModifyClusterIamRolesResult -> List ( String, String )
modifyClusterIamRolesResultEncoder data =
    []
        |> (case data.cluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterEncoder "Cluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyClusterMaintenanceMessageEncoder : ModifyClusterMaintenanceMessage -> List ( String, String )
modifyClusterMaintenanceMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> (case data.deferMaintenance of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeferMaintenance" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.deferMaintenanceIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DeferMaintenanceIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.deferMaintenanceStartTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DeferMaintenanceStartTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.deferMaintenanceEndTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DeferMaintenanceEndTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.deferMaintenanceDuration of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "DeferMaintenanceDuration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyClusterMaintenanceResultEncoder : ModifyClusterMaintenanceResult -> List ( String, String )
modifyClusterMaintenanceResultEncoder data =
    []
        |> (case data.cluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterEncoder "Cluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyClusterMessageEncoder : ModifyClusterMessage -> List ( String, String )
modifyClusterMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> (case data.clusterType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.numberOfNodes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumberOfNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterSecurityGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ClusterSecurityGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.vpcSecurityGroupIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.masterUserPassword of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MasterUserPassword" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterParameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.automatedSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "AutomatedSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.manualSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ManualSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredMaintenanceWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterVersion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.allowVersionUpgrade of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AllowVersionUpgrade" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hsmClientCertificateIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmClientCertificateIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hsmConfigurationIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmConfigurationIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.newClusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NewClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.publiclyAccessible of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PubliclyAccessible" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.elasticIp of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ElasticIp" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.enhancedVpcRouting of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnhancedVpcRouting" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maintenanceTrackName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MaintenanceTrackName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.encrypted of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Encrypted" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.kmsKeyId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyClusterParameterGroupMessageEncoder : ModifyClusterParameterGroupMessage -> List ( String, String )
modifyClusterParameterGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupName" data.parameterGroupName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" data.parameters


modifyClusterResultEncoder : ModifyClusterResult -> List ( String, String )
modifyClusterResultEncoder data =
    []
        |> (case data.cluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterEncoder "Cluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyClusterSnapshotMessageEncoder : ModifyClusterSnapshotMessage -> List ( String, String )
modifyClusterSnapshotMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "SnapshotIdentifier" data.snapshotIdentifier
        |> (case data.manualSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ManualSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.force of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Force" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyClusterSnapshotResultEncoder : ModifyClusterSnapshotResult -> List ( String, String )
modifyClusterSnapshotResultEncoder data =
    []
        |> (case data.snapshot of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs snapshotEncoder "Snapshot" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyClusterSnapshotScheduleMessageEncoder : ModifyClusterSnapshotScheduleMessage -> List ( String, String )
modifyClusterSnapshotScheduleMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> (case data.scheduleIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ScheduleIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.disassociateSchedule of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DisassociateSchedule" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyClusterSubnetGroupMessageEncoder : ModifyClusterSubnetGroupMessage -> List ( String, String )
modifyClusterSubnetGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterSubnetGroupName" data.clusterSubnetGroupName
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SubnetIds" data.subnetIds


modifyClusterSubnetGroupResultEncoder : ModifyClusterSubnetGroupResult -> List ( String, String )
modifyClusterSubnetGroupResultEncoder data =
    []
        |> (case data.clusterSubnetGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterSubnetGroupEncoder "ClusterSubnetGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyEventSubscriptionMessageEncoder : ModifyEventSubscriptionMessage -> List ( String, String )
modifyEventSubscriptionMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionName" data.subscriptionName
        |> (case data.snsTopicArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnsTopicArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SourceIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eventCategories of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EventCategories" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.severity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Severity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.enabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyEventSubscriptionResultEncoder : ModifyEventSubscriptionResult -> List ( String, String )
modifyEventSubscriptionResultEncoder data =
    []
        |> (case data.eventSubscription of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs eventSubscriptionEncoder "EventSubscription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifySnapshotCopyRetentionPeriodMessageEncoder : ModifySnapshotCopyRetentionPeriodMessage -> List ( String, String )
modifySnapshotCopyRetentionPeriodMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "RetentionPeriod" data.retentionPeriod
        |> (case data.manual of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Manual" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifySnapshotCopyRetentionPeriodResultEncoder : ModifySnapshotCopyRetentionPeriodResult -> List ( String, String )
modifySnapshotCopyRetentionPeriodResultEncoder data =
    []
        |> (case data.cluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterEncoder "Cluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifySnapshotScheduleMessageEncoder : ModifySnapshotScheduleMessage -> List ( String, String )
modifySnapshotScheduleMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ScheduleIdentifier" data.scheduleIdentifier
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ScheduleDefinitions" data.scheduleDefinitions


orderableClusterOptionEncoder : OrderableClusterOption -> List ( String, String )
orderableClusterOptionEncoder data =
    []
        |> (case data.clusterVersion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.availabilityZones of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs availabilityZoneEncoder "") "AvailabilityZones" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


orderableClusterOptionsMessageEncoder : OrderableClusterOptionsMessage -> List ( String, String )
orderableClusterOptionsMessageEncoder data =
    []
        |> (case data.orderableClusterOptions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs orderableClusterOptionEncoder "") "OrderableClusterOptions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


parameterEncoder : Parameter -> List ( String, String )
parameterEncoder data =
    []
        |> (case data.parameterName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.parameterValue of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterValue" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.source of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Source" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dataType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DataType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.allowedValues of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AllowedValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.applyType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs parameterApplyTypeToString "ApplyType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.isModifiable of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsModifiable" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.minimumEngineVersion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MinimumEngineVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


pendingModifiedValuesEncoder : PendingModifiedValues -> List ( String, String )
pendingModifiedValuesEncoder data =
    []
        |> (case data.masterUserPassword of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MasterUserPassword" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.numberOfNodes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumberOfNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterVersion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.automatedSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "AutomatedSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.publiclyAccessible of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PubliclyAccessible" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.enhancedVpcRouting of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnhancedVpcRouting" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maintenanceTrackName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MaintenanceTrackName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.encryptionType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EncryptionType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


purchaseReservedNodeOfferingMessageEncoder : PurchaseReservedNodeOfferingMessage -> List ( String, String )
purchaseReservedNodeOfferingMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReservedNodeOfferingId" data.reservedNodeOfferingId
        |> (case data.nodeCount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NodeCount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


purchaseReservedNodeOfferingResultEncoder : PurchaseReservedNodeOfferingResult -> List ( String, String )
purchaseReservedNodeOfferingResultEncoder data =
    []
        |> (case data.reservedNode of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs reservedNodeEncoder "ReservedNode" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


rebootClusterMessageEncoder : RebootClusterMessage -> List ( String, String )
rebootClusterMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier


rebootClusterResultEncoder : RebootClusterResult -> List ( String, String )
rebootClusterResultEncoder data =
    []
        |> (case data.cluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterEncoder "Cluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


recurringChargeEncoder : RecurringCharge -> List ( String, String )
recurringChargeEncoder data =
    []
        |> (case data.recurringChargeAmount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "RecurringChargeAmount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.recurringChargeFrequency of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "RecurringChargeFrequency" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


reservedNodeEncoder : ReservedNode -> List ( String, String )
reservedNodeEncoder data =
    []
        |> (case data.reservedNodeId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReservedNodeId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.reservedNodeOfferingId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReservedNodeOfferingId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.startTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "StartTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.duration of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Duration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.fixedPrice of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "FixedPrice" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.usagePrice of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "UsagePrice" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.currencyCode of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CurrencyCode" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeCount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NodeCount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.state of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "State" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.offeringType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "OfferingType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.recurringCharges of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs recurringChargeEncoder "") "RecurringCharges" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.reservedNodeOfferingType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs reservedNodeOfferingTypeToString "ReservedNodeOfferingType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


reservedNodeOfferingEncoder : ReservedNodeOffering -> List ( String, String )
reservedNodeOfferingEncoder data =
    []
        |> (case data.reservedNodeOfferingId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReservedNodeOfferingId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.duration of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Duration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.fixedPrice of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "FixedPrice" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.usagePrice of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "UsagePrice" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.currencyCode of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CurrencyCode" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.offeringType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "OfferingType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.recurringCharges of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs recurringChargeEncoder "") "RecurringCharges" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.reservedNodeOfferingType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs reservedNodeOfferingTypeToString "ReservedNodeOfferingType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


reservedNodeOfferingsMessageEncoder : ReservedNodeOfferingsMessage -> List ( String, String )
reservedNodeOfferingsMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.reservedNodeOfferings of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs reservedNodeOfferingEncoder "") "ReservedNodeOfferings" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


reservedNodesMessageEncoder : ReservedNodesMessage -> List ( String, String )
reservedNodesMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.reservedNodes of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs reservedNodeEncoder "") "ReservedNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


resetClusterParameterGroupMessageEncoder : ResetClusterParameterGroupMessage -> List ( String, String )
resetClusterParameterGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupName" data.parameterGroupName
        |> (case data.resetAllParameters of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ResetAllParameters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.parameters of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


resizeClusterMessageEncoder : ResizeClusterMessage -> List ( String, String )
resizeClusterMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> (case data.clusterType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumberOfNodes" data.numberOfNodes
        |> (case data.classic of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Classic" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


resizeClusterResultEncoder : ResizeClusterResult -> List ( String, String )
resizeClusterResultEncoder data =
    []
        |> (case data.cluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterEncoder "Cluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


resizeInfoEncoder : ResizeInfo -> List ( String, String )
resizeInfoEncoder data =
    []
        |> (case data.resizeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ResizeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.allowCancelResize of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AllowCancelResize" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


resizeProgressMessageEncoder : ResizeProgressMessage -> List ( String, String )
resizeProgressMessageEncoder data =
    []
        |> (case data.targetNodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TargetNodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.targetNumberOfNodes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "TargetNumberOfNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.targetClusterType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TargetClusterType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.importTablesCompleted of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ImportTablesCompleted" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.importTablesInProgress of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ImportTablesInProgress" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.importTablesNotStarted of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ImportTablesNotStarted" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.avgResizeRateInMegaBytesPerSecond of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "AvgResizeRateInMegaBytesPerSecond" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.totalResizeDataInMegaBytes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "TotalResizeDataInMegaBytes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.progressInMegaBytes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ProgressInMegaBytes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.elapsedTimeInSeconds of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ElapsedTimeInSeconds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.estimatedTimeToCompletionInSeconds of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "EstimatedTimeToCompletionInSeconds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resizeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ResizeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.message of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Message" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.targetEncryptionType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TargetEncryptionType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dataTransferProgressPercent of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "DataTransferProgressPercent" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


restoreFromClusterSnapshotMessageEncoder : RestoreFromClusterSnapshotMessage -> List ( String, String )
restoreFromClusterSnapshotMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> AWS.Core.Encode.addOneToQueryArgs identity "SnapshotIdentifier" data.snapshotIdentifier
        |> (case data.snapshotClusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.port_ of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.availabilityZone of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AvailabilityZone" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.allowVersionUpgrade of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AllowVersionUpgrade" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterSubnetGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterSubnetGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.publiclyAccessible of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PubliclyAccessible" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.ownerAccount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "OwnerAccount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hsmClientCertificateIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmClientCertificateIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hsmConfigurationIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HsmConfigurationIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.elasticIp of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ElasticIp" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterParameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterSecurityGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ClusterSecurityGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.vpcSecurityGroupIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredMaintenanceWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.automatedSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "AutomatedSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.manualSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ManualSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.kmsKeyId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.enhancedVpcRouting of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnhancedVpcRouting" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.additionalInfo of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AdditionalInfo" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.iamRoles of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "IamRoles" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maintenanceTrackName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MaintenanceTrackName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotScheduleIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotScheduleIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


restoreFromClusterSnapshotResultEncoder : RestoreFromClusterSnapshotResult -> List ( String, String )
restoreFromClusterSnapshotResultEncoder data =
    []
        |> (case data.cluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterEncoder "Cluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


restoreStatusEncoder : RestoreStatus -> List ( String, String )
restoreStatusEncoder data =
    []
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.currentRestoreRateInMegaBytesPerSecond of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "CurrentRestoreRateInMegaBytesPerSecond" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotSizeInMegaBytes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "SnapshotSizeInMegaBytes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.progressInMegaBytes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ProgressInMegaBytes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.elapsedTimeInSeconds of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ElapsedTimeInSeconds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.estimatedTimeToCompletionInSeconds of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "EstimatedTimeToCompletionInSeconds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


restoreTableFromClusterSnapshotMessageEncoder : RestoreTableFromClusterSnapshotMessage -> List ( String, String )
restoreTableFromClusterSnapshotMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier
        |> AWS.Core.Encode.addOneToQueryArgs identity "SnapshotIdentifier" data.snapshotIdentifier
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceDatabaseName" data.sourceDatabaseName
        |> (case data.sourceSchemaName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceSchemaName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceTableName" data.sourceTableName
        |> (case data.targetDatabaseName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TargetDatabaseName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.targetSchemaName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TargetSchemaName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "NewTableName" data.newTableName


restoreTableFromClusterSnapshotResultEncoder : RestoreTableFromClusterSnapshotResult -> List ( String, String )
restoreTableFromClusterSnapshotResultEncoder data =
    []
        |> (case data.tableRestoreStatus of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs tableRestoreStatusEncoder "TableRestoreStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


revisionTargetEncoder : RevisionTarget -> List ( String, String )
revisionTargetEncoder data =
    []
        |> (case data.databaseRevision of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DatabaseRevision" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.databaseRevisionReleaseDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DatabaseRevisionReleaseDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


revokeClusterSecurityGroupIngressMessageEncoder : RevokeClusterSecurityGroupIngressMessage -> List ( String, String )
revokeClusterSecurityGroupIngressMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterSecurityGroupName" data.clusterSecurityGroupName
        |> (case data.cIDRIP of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CIDRIP" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eC2SecurityGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.eC2SecurityGroupOwnerId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupOwnerId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


revokeClusterSecurityGroupIngressResultEncoder : RevokeClusterSecurityGroupIngressResult -> List ( String, String )
revokeClusterSecurityGroupIngressResultEncoder data =
    []
        |> (case data.clusterSecurityGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterSecurityGroupEncoder "ClusterSecurityGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


revokeSnapshotAccessMessageEncoder : RevokeSnapshotAccessMessage -> List ( String, String )
revokeSnapshotAccessMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "SnapshotIdentifier" data.snapshotIdentifier
        |> (case data.snapshotClusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "AccountWithRestoreAccess" data.accountWithRestoreAccess


revokeSnapshotAccessResultEncoder : RevokeSnapshotAccessResult -> List ( String, String )
revokeSnapshotAccessResultEncoder data =
    []
        |> (case data.snapshot of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs snapshotEncoder "Snapshot" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


rotateEncryptionKeyMessageEncoder : RotateEncryptionKeyMessage -> List ( String, String )
rotateEncryptionKeyMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" data.clusterIdentifier


rotateEncryptionKeyResultEncoder : RotateEncryptionKeyResult -> List ( String, String )
rotateEncryptionKeyResultEncoder data =
    []
        |> (case data.cluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs clusterEncoder "Cluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


snapshotEncoder : Snapshot -> List ( String, String )
snapshotEncoder data =
    []
        |> (case data.snapshotIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotCreateTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "SnapshotCreateTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.port_ of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.availabilityZone of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AvailabilityZone" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterCreateTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ClusterCreateTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.masterUsername of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MasterUsername" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterVersion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.numberOfNodes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumberOfNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dBName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DBName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.vpcId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "VpcId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.encrypted of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Encrypted" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.kmsKeyId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.encryptedWithHSM of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EncryptedWithHSM" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.accountsWithRestoreAccess of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs accountWithRestoreAccessEncoder "") "AccountsWithRestoreAccess" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.ownerAccount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "OwnerAccount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.totalBackupSizeInMegaBytes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "TotalBackupSizeInMegaBytes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.actualIncrementalBackupSizeInMegaBytes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "ActualIncrementalBackupSizeInMegaBytes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.backupProgressInMegaBytes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "BackupProgressInMegaBytes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.currentBackupRateInMegaBytesPerSecond of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "CurrentBackupRateInMegaBytesPerSecond" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.estimatedSecondsToCompletion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "EstimatedSecondsToCompletion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.elapsedTimeInSeconds of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ElapsedTimeInSeconds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceRegion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceRegion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.restorableNodeTypes of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "RestorableNodeTypes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.enhancedVpcRouting of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnhancedVpcRouting" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maintenanceTrackName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MaintenanceTrackName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.manualSnapshotRetentionPeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ManualSnapshotRetentionPeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.manualSnapshotRemainingDays of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ManualSnapshotRemainingDays" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotRetentionStartTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "SnapshotRetentionStartTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


snapshotCopyGrantEncoder : SnapshotCopyGrant -> List ( String, String )
snapshotCopyGrantEncoder data =
    []
        |> (case data.snapshotCopyGrantName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotCopyGrantName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.kmsKeyId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


snapshotCopyGrantMessageEncoder : SnapshotCopyGrantMessage -> List ( String, String )
snapshotCopyGrantMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotCopyGrants of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs snapshotCopyGrantEncoder "") "SnapshotCopyGrants" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


snapshotErrorMessageEncoder : SnapshotErrorMessage -> List ( String, String )
snapshotErrorMessageEncoder data =
    []
        |> (case data.snapshotIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotClusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.failureCode of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "FailureCode" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.failureReason of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "FailureReason" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


snapshotMessageEncoder : SnapshotMessage -> List ( String, String )
snapshotMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshots of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs snapshotEncoder "") "Snapshots" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


snapshotScheduleEncoder : SnapshotSchedule -> List ( String, String )
snapshotScheduleEncoder data =
    []
        |> (case data.scheduleDefinitions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ScheduleDefinitions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.scheduleIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ScheduleIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.scheduleDescription of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ScheduleDescription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextInvocations of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "") "NextInvocations" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.associatedClusterCount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "AssociatedClusterCount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.associatedClusters of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs clusterAssociatedToScheduleEncoder "") "AssociatedClusters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


snapshotSortingEntityEncoder : SnapshotSortingEntity -> List ( String, String )
snapshotSortingEntityEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs snapshotAttributeToSortByToString "Attribute" data.attribute
        |> (case data.sortOrder of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs sortByOrderToString "SortOrder" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


subnetEncoder : Subnet -> List ( String, String )
subnetEncoder data =
    []
        |> (case data.subnetIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SubnetIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.subnetAvailabilityZone of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs availabilityZoneEncoder "SubnetAvailabilityZone" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.subnetStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SubnetStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


supportedOperationEncoder : SupportedOperation -> List ( String, String )
supportedOperationEncoder data =
    []
        |> (case data.operationName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "OperationName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


supportedPlatformEncoder : SupportedPlatform -> List ( String, String )
supportedPlatformEncoder data =
    []
        |> (case data.name of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Name" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


tableRestoreStatusEncoder : TableRestoreStatus -> List ( String, String )
tableRestoreStatusEncoder data =
    []
        |> (case data.tableRestoreRequestId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TableRestoreRequestId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs tableRestoreStatusTypeToString "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.message of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Message" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.requestTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "RequestTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.progressInMegaBytes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ProgressInMegaBytes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.totalDataInMegaBytes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "TotalDataInMegaBytes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClusterIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceDatabaseName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceDatabaseName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceSchemaName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceSchemaName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceTableName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceTableName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.targetDatabaseName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TargetDatabaseName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.targetSchemaName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TargetSchemaName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.newTableName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NewTableName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


tableRestoreStatusMessageEncoder : TableRestoreStatusMessage -> List ( String, String )
tableRestoreStatusMessageEncoder data =
    []
        |> (case data.tableRestoreStatusDetails of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tableRestoreStatusEncoder "") "TableRestoreStatusDetails" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


tagEncoder : Tag -> List ( String, String )
tagEncoder data =
    []
        |> (case data.key of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Key" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.value of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Value" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


taggedResourceEncoder : TaggedResource -> List ( String, String )
taggedResourceEncoder data =
    []
        |> (case data.tag of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs tagEncoder "Tag" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resourceName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ResourceName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resourceType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ResourceType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


taggedResourceListMessageEncoder : TaggedResourceListMessage -> List ( String, String )
taggedResourceListMessageEncoder data =
    []
        |> (case data.taggedResources of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs taggedResourceEncoder "") "TaggedResources" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


trackListMessageEncoder : TrackListMessage -> List ( String, String )
trackListMessageEncoder data =
    []
        |> (case data.maintenanceTracks of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs maintenanceTrackEncoder "") "MaintenanceTracks" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


updateTargetEncoder : UpdateTarget -> List ( String, String )
updateTargetEncoder data =
    []
        |> (case data.maintenanceTrackName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MaintenanceTrackName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.databaseVersion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DatabaseVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.supportedOperations of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs supportedOperationEncoder "") "SupportedOperations" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


vpcSecurityGroupMembershipEncoder : VpcSecurityGroupMembership -> List ( String, String )
vpcSecurityGroupMembershipEncoder data =
    []
        |> (case data.vpcSecurityGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "VpcSecurityGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
