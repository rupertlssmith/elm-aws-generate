module AWS.RDS
    exposing
        ( service
        , addRoleToDBCluster
        , AddRoleToDBClusterOptions
        , addRoleToDBInstance
        , addSourceIdentifierToSubscription
        , addTagsToResource
        , applyPendingMaintenanceAction
        , authorizeDBSecurityGroupIngress
        , AuthorizeDBSecurityGroupIngressOptions
        , backtrackDBCluster
        , BacktrackDBClusterOptions
        , copyDBClusterParameterGroup
        , CopyDBClusterParameterGroupOptions
        , copyDBClusterSnapshot
        , CopyDBClusterSnapshotOptions
        , copyDBParameterGroup
        , CopyDBParameterGroupOptions
        , copyDBSnapshot
        , CopyDBSnapshotOptions
        , copyOptionGroup
        , CopyOptionGroupOptions
        , createDBCluster
        , CreateDBClusterOptions
        , createDBClusterEndpoint
        , CreateDBClusterEndpointOptions
        , createDBClusterParameterGroup
        , CreateDBClusterParameterGroupOptions
        , createDBClusterSnapshot
        , CreateDBClusterSnapshotOptions
        , createDBInstance
        , CreateDBInstanceOptions
        , createDBInstanceReadReplica
        , CreateDBInstanceReadReplicaOptions
        , createDBParameterGroup
        , CreateDBParameterGroupOptions
        , createDBSecurityGroup
        , CreateDBSecurityGroupOptions
        , createDBSnapshot
        , CreateDBSnapshotOptions
        , createDBSubnetGroup
        , CreateDBSubnetGroupOptions
        , createEventSubscription
        , CreateEventSubscriptionOptions
        , createGlobalCluster
        , CreateGlobalClusterOptions
        , createOptionGroup
        , CreateOptionGroupOptions
        , deleteDBCluster
        , DeleteDBClusterOptions
        , deleteDBClusterEndpoint
        , deleteDBClusterParameterGroup
        , deleteDBClusterSnapshot
        , deleteDBInstance
        , DeleteDBInstanceOptions
        , deleteDBInstanceAutomatedBackup
        , deleteDBParameterGroup
        , deleteDBSecurityGroup
        , deleteDBSnapshot
        , deleteDBSubnetGroup
        , deleteEventSubscription
        , deleteGlobalCluster
        , deleteOptionGroup
        , describeAccountAttributes
        , describeCertificates
        , DescribeCertificatesOptions
        , describeDBClusterBacktracks
        , DescribeDBClusterBacktracksOptions
        , describeDBClusterEndpoints
        , DescribeDBClusterEndpointsOptions
        , describeDBClusterParameterGroups
        , DescribeDBClusterParameterGroupsOptions
        , describeDBClusterParameters
        , DescribeDBClusterParametersOptions
        , describeDBClusterSnapshotAttributes
        , describeDBClusterSnapshots
        , DescribeDBClusterSnapshotsOptions
        , describeDBClusters
        , DescribeDBClustersOptions
        , describeDBEngineVersions
        , DescribeDBEngineVersionsOptions
        , describeDBInstanceAutomatedBackups
        , DescribeDBInstanceAutomatedBackupsOptions
        , describeDBInstances
        , DescribeDBInstancesOptions
        , describeDBLogFiles
        , DescribeDBLogFilesOptions
        , describeDBParameterGroups
        , DescribeDBParameterGroupsOptions
        , describeDBParameters
        , DescribeDBParametersOptions
        , describeDBSecurityGroups
        , DescribeDBSecurityGroupsOptions
        , describeDBSnapshotAttributes
        , describeDBSnapshots
        , DescribeDBSnapshotsOptions
        , describeDBSubnetGroups
        , DescribeDBSubnetGroupsOptions
        , describeEngineDefaultClusterParameters
        , DescribeEngineDefaultClusterParametersOptions
        , describeEngineDefaultParameters
        , DescribeEngineDefaultParametersOptions
        , describeEventCategories
        , DescribeEventCategoriesOptions
        , describeEventSubscriptions
        , DescribeEventSubscriptionsOptions
        , describeEvents
        , DescribeEventsOptions
        , describeGlobalClusters
        , DescribeGlobalClustersOptions
        , describeOptionGroupOptions
        , DescribeOptionGroupOptionsOptions
        , describeOptionGroups
        , DescribeOptionGroupsOptions
        , describeOrderableDBInstanceOptions
        , DescribeOrderableDBInstanceOptionsOptions
        , describePendingMaintenanceActions
        , DescribePendingMaintenanceActionsOptions
        , describeReservedDBInstances
        , DescribeReservedDBInstancesOptions
        , describeReservedDBInstancesOfferings
        , DescribeReservedDBInstancesOfferingsOptions
        , describeSourceRegions
        , DescribeSourceRegionsOptions
        , describeValidDBInstanceModifications
        , downloadDBLogFilePortion
        , DownloadDBLogFilePortionOptions
        , failoverDBCluster
        , FailoverDBClusterOptions
        , listTagsForResource
        , ListTagsForResourceOptions
        , modifyCurrentDBClusterCapacity
        , ModifyCurrentDBClusterCapacityOptions
        , modifyDBCluster
        , ModifyDBClusterOptions
        , modifyDBClusterEndpoint
        , ModifyDBClusterEndpointOptions
        , modifyDBClusterParameterGroup
        , modifyDBClusterSnapshotAttribute
        , ModifyDBClusterSnapshotAttributeOptions
        , modifyDBInstance
        , ModifyDBInstanceOptions
        , modifyDBParameterGroup
        , modifyDBSnapshot
        , ModifyDBSnapshotOptions
        , modifyDBSnapshotAttribute
        , ModifyDBSnapshotAttributeOptions
        , modifyDBSubnetGroup
        , ModifyDBSubnetGroupOptions
        , modifyEventSubscription
        , ModifyEventSubscriptionOptions
        , modifyGlobalCluster
        , ModifyGlobalClusterOptions
        , modifyOptionGroup
        , ModifyOptionGroupOptions
        , promoteReadReplica
        , PromoteReadReplicaOptions
        , promoteReadReplicaDBCluster
        , purchaseReservedDBInstancesOffering
        , PurchaseReservedDBInstancesOfferingOptions
        , rebootDBInstance
        , RebootDBInstanceOptions
        , removeFromGlobalCluster
        , RemoveFromGlobalClusterOptions
        , removeRoleFromDBCluster
        , RemoveRoleFromDBClusterOptions
        , removeRoleFromDBInstance
        , removeSourceIdentifierFromSubscription
        , removeTagsFromResource
        , resetDBClusterParameterGroup
        , ResetDBClusterParameterGroupOptions
        , resetDBParameterGroup
        , ResetDBParameterGroupOptions
        , restoreDBClusterFromS3
        , RestoreDBClusterFromS3Options
        , restoreDBClusterFromSnapshot
        , RestoreDBClusterFromSnapshotOptions
        , restoreDBClusterToPointInTime
        , RestoreDBClusterToPointInTimeOptions
        , restoreDBInstanceFromDBSnapshot
        , RestoreDBInstanceFromDBSnapshotOptions
        , restoreDBInstanceFromS3
        , RestoreDBInstanceFromS3Options
        , restoreDBInstanceToPointInTime
        , RestoreDBInstanceToPointInTimeOptions
        , revokeDBSecurityGroupIngress
        , RevokeDBSecurityGroupIngressOptions
        , startActivityStream
        , StartActivityStreamOptions
        , startDBCluster
        , startDBInstance
        , stopActivityStream
        , StopActivityStreamOptions
        , stopDBCluster
        , stopDBInstance
        , StopDBInstanceOptions
        , AccountAttributesMessage
        , AccountQuota
        , ActivityStreamMode(..)
        , ActivityStreamStatus(..)
        , AddSourceIdentifierToSubscriptionResult
        , ApplyMethod(..)
        , ApplyPendingMaintenanceActionResult
        , AuthorizeDBSecurityGroupIngressResult
        , AvailabilityZone
        , AvailableProcessorFeature
        , Certificate
        , CertificateMessage
        , CharacterSet
        , CloudwatchLogsExportConfiguration
        , CopyDBClusterParameterGroupResult
        , CopyDBClusterSnapshotResult
        , CopyDBParameterGroupResult
        , CopyDBSnapshotResult
        , CopyOptionGroupResult
        , CreateDBClusterParameterGroupResult
        , CreateDBClusterResult
        , CreateDBClusterSnapshotResult
        , CreateDBInstanceReadReplicaResult
        , CreateDBInstanceResult
        , CreateDBParameterGroupResult
        , CreateDBSecurityGroupResult
        , CreateDBSnapshotResult
        , CreateDBSubnetGroupResult
        , CreateEventSubscriptionResult
        , CreateGlobalClusterResult
        , CreateOptionGroupResult
        , DBCluster
        , DBClusterBacktrack
        , DBClusterBacktrackMessage
        , DBClusterCapacityInfo
        , DBClusterEndpoint
        , DBClusterEndpointMessage
        , DBClusterMember
        , DBClusterMessage
        , DBClusterOptionGroupStatus
        , DBClusterParameterGroup
        , DBClusterParameterGroupDetails
        , DBClusterParameterGroupNameMessage
        , DBClusterParameterGroupsMessage
        , DBClusterRole
        , DBClusterSnapshot
        , DBClusterSnapshotAttribute
        , DBClusterSnapshotAttributesResult
        , DBClusterSnapshotMessage
        , DBEngineVersion
        , DBEngineVersionMessage
        , DBInstance
        , DBInstanceAutomatedBackup
        , DBInstanceAutomatedBackupMessage
        , DBInstanceMessage
        , DBInstanceRole
        , DBInstanceStatusInfo
        , DBParameterGroup
        , DBParameterGroupDetails
        , DBParameterGroupNameMessage
        , DBParameterGroupStatus
        , DBParameterGroupsMessage
        , DBSecurityGroup
        , DBSecurityGroupMembership
        , DBSecurityGroupMessage
        , DBSnapshot
        , DBSnapshotAttribute
        , DBSnapshotAttributesResult
        , DBSnapshotMessage
        , DBSubnetGroup
        , DBSubnetGroupMessage
        , DeleteDBClusterResult
        , DeleteDBClusterSnapshotResult
        , DeleteDBInstanceAutomatedBackupResult
        , DeleteDBInstanceResult
        , DeleteDBSnapshotResult
        , DeleteEventSubscriptionResult
        , DeleteGlobalClusterResult
        , DescribeDBClusterSnapshotAttributesResult
        , DescribeDBLogFilesDetails
        , DescribeDBLogFilesResponse
        , DescribeDBSnapshotAttributesResult
        , DescribeEngineDefaultClusterParametersResult
        , DescribeEngineDefaultParametersResult
        , DescribeValidDBInstanceModificationsResult
        , DomainMembership
        , DoubleRange
        , DownloadDBLogFilePortionDetails
        , EC2SecurityGroup
        , Endpoint
        , EngineDefaults
        , Event
        , EventCategoriesMap
        , EventCategoriesMessage
        , EventSubscription
        , EventSubscriptionsMessage
        , EventsMessage
        , FailoverDBClusterResult
        , Filter
        , GlobalCluster
        , GlobalClusterMember
        , GlobalClustersMessage
        , IPRange
        , MinimumEngineVersionPerAllowedValue
        , ModifyDBClusterResult
        , ModifyDBClusterSnapshotAttributeResult
        , ModifyDBInstanceResult
        , ModifyDBSnapshotAttributeResult
        , ModifyDBSnapshotResult
        , ModifyDBSubnetGroupResult
        , ModifyEventSubscriptionResult
        , ModifyGlobalClusterResult
        , ModifyOptionGroupResult
        , Option
        , OptionConfiguration
        , OptionGroup
        , OptionGroupMembership
        , OptionGroupOption
        , OptionGroupOptionSetting
        , OptionGroupOptionsMessage
        , OptionGroups
        , OptionSetting
        , OptionVersion
        , OrderableDBInstanceOption
        , OrderableDBInstanceOptionsMessage
        , Parameter
        , PendingCloudwatchLogsExports
        , PendingMaintenanceAction
        , PendingMaintenanceActionsMessage
        , PendingModifiedValues
        , ProcessorFeature
        , PromoteReadReplicaDBClusterResult
        , PromoteReadReplicaResult
        , PurchaseReservedDBInstancesOfferingResult
        , Range
        , RebootDBInstanceResult
        , RecurringCharge
        , RemoveFromGlobalClusterResult
        , RemoveSourceIdentifierFromSubscriptionResult
        , ReservedDBInstance
        , ReservedDBInstanceMessage
        , ReservedDBInstancesOffering
        , ReservedDBInstancesOfferingMessage
        , ResourcePendingMaintenanceActions
        , RestoreDBClusterFromS3Result
        , RestoreDBClusterFromSnapshotResult
        , RestoreDBClusterToPointInTimeResult
        , RestoreDBInstanceFromDBSnapshotResult
        , RestoreDBInstanceFromS3Result
        , RestoreDBInstanceToPointInTimeResult
        , RestoreWindow
        , RevokeDBSecurityGroupIngressResult
        , ScalingConfiguration
        , ScalingConfigurationInfo
        , SourceRegion
        , SourceRegionMessage
        , SourceType(..)
        , StartActivityStreamResponse
        , StartDBClusterResult
        , StartDBInstanceResult
        , StopActivityStreamResponse
        , StopDBClusterResult
        , StopDBInstanceResult
        , Subnet
        , Tag
        , TagListMessage
        , Timezone
        , UpgradeTarget
        , ValidDBInstanceModificationsMessage
        , ValidStorageOptions
        , VpcSecurityGroupMembership
        )

{-| <fullname>Amazon Relational Database Service</fullname> <p> </p> <p>Amazon Relational Database Service (Amazon RDS) is a web service that makes it easier to set up, operate, and scale a relational database in the cloud. It provides cost-efficient, resizable capacity for an industry-standard relational database and manages common database administration tasks, freeing up developers to focus on what makes their applications and businesses unique.</p> <p>Amazon RDS gives you access to the capabilities of a MySQL, MariaDB, PostgreSQL, Microsoft SQL Server, Oracle, or Amazon Aurora database server. These capabilities mean that the code, applications, and tools you already use today with your existing databases work with Amazon RDS without modification. Amazon RDS automatically backs up your database and maintains the database software that powers your DB instance. Amazon RDS is flexible: you can scale your DB instance's compute resources and storage capacity to meet your application's demand. As with all Amazon Web Services, there are no up-front investments, and you pay only for the resources you use.</p> <p>This interface reference for Amazon RDS contains documentation for a programming or command line interface you can use to manage Amazon RDS. Note that Amazon RDS is asynchronous, which means that some interfaces might require techniques such as polling or callback functions to determine when a command has been applied. In this reference, the parameter descriptions indicate whether a command is applied immediately, on the next instance reboot, or during the maintenance window. The reference structure is as follows, and we list following some related topics from the user guide.</p> <p> <b>Amazon RDS API Reference</b> </p> <ul> <li> <p>For the alphabetical list of API actions, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html">API Actions</a>.</p> </li> <li> <p>For the alphabetical list of data types, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html">Data Types</a>.</p> </li> <li> <p>For a list of common query parameters, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html">Common Parameters</a>.</p> </li> <li> <p>For descriptions of the error codes, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html">Common Errors</a>.</p> </li> </ul> <p> <b>Amazon RDS User Guide</b> </p> <ul> <li> <p>For a summary of the Amazon RDS interfaces, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces">Available RDS Interfaces</a>.</p> </li> <li> <p>For more information about how to use the Query API, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html">Using the Query API</a>.</p> </li> </ul>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [addRoleToDBCluster](#addRoleToDBCluster)
* [AddRoleToDBClusterOptions](#AddRoleToDBClusterOptions)
* [addRoleToDBInstance](#addRoleToDBInstance)
* [addSourceIdentifierToSubscription](#addSourceIdentifierToSubscription)
* [addTagsToResource](#addTagsToResource)
* [applyPendingMaintenanceAction](#applyPendingMaintenanceAction)
* [authorizeDBSecurityGroupIngress](#authorizeDBSecurityGroupIngress)
* [AuthorizeDBSecurityGroupIngressOptions](#AuthorizeDBSecurityGroupIngressOptions)
* [backtrackDBCluster](#backtrackDBCluster)
* [BacktrackDBClusterOptions](#BacktrackDBClusterOptions)
* [copyDBClusterParameterGroup](#copyDBClusterParameterGroup)
* [CopyDBClusterParameterGroupOptions](#CopyDBClusterParameterGroupOptions)
* [copyDBClusterSnapshot](#copyDBClusterSnapshot)
* [CopyDBClusterSnapshotOptions](#CopyDBClusterSnapshotOptions)
* [copyDBParameterGroup](#copyDBParameterGroup)
* [CopyDBParameterGroupOptions](#CopyDBParameterGroupOptions)
* [copyDBSnapshot](#copyDBSnapshot)
* [CopyDBSnapshotOptions](#CopyDBSnapshotOptions)
* [copyOptionGroup](#copyOptionGroup)
* [CopyOptionGroupOptions](#CopyOptionGroupOptions)
* [createDBCluster](#createDBCluster)
* [CreateDBClusterOptions](#CreateDBClusterOptions)
* [createDBClusterEndpoint](#createDBClusterEndpoint)
* [CreateDBClusterEndpointOptions](#CreateDBClusterEndpointOptions)
* [createDBClusterParameterGroup](#createDBClusterParameterGroup)
* [CreateDBClusterParameterGroupOptions](#CreateDBClusterParameterGroupOptions)
* [createDBClusterSnapshot](#createDBClusterSnapshot)
* [CreateDBClusterSnapshotOptions](#CreateDBClusterSnapshotOptions)
* [createDBInstance](#createDBInstance)
* [CreateDBInstanceOptions](#CreateDBInstanceOptions)
* [createDBInstanceReadReplica](#createDBInstanceReadReplica)
* [CreateDBInstanceReadReplicaOptions](#CreateDBInstanceReadReplicaOptions)
* [createDBParameterGroup](#createDBParameterGroup)
* [CreateDBParameterGroupOptions](#CreateDBParameterGroupOptions)
* [createDBSecurityGroup](#createDBSecurityGroup)
* [CreateDBSecurityGroupOptions](#CreateDBSecurityGroupOptions)
* [createDBSnapshot](#createDBSnapshot)
* [CreateDBSnapshotOptions](#CreateDBSnapshotOptions)
* [createDBSubnetGroup](#createDBSubnetGroup)
* [CreateDBSubnetGroupOptions](#CreateDBSubnetGroupOptions)
* [createEventSubscription](#createEventSubscription)
* [CreateEventSubscriptionOptions](#CreateEventSubscriptionOptions)
* [createGlobalCluster](#createGlobalCluster)
* [CreateGlobalClusterOptions](#CreateGlobalClusterOptions)
* [createOptionGroup](#createOptionGroup)
* [CreateOptionGroupOptions](#CreateOptionGroupOptions)
* [deleteDBCluster](#deleteDBCluster)
* [DeleteDBClusterOptions](#DeleteDBClusterOptions)
* [deleteDBClusterEndpoint](#deleteDBClusterEndpoint)
* [deleteDBClusterParameterGroup](#deleteDBClusterParameterGroup)
* [deleteDBClusterSnapshot](#deleteDBClusterSnapshot)
* [deleteDBInstance](#deleteDBInstance)
* [DeleteDBInstanceOptions](#DeleteDBInstanceOptions)
* [deleteDBInstanceAutomatedBackup](#deleteDBInstanceAutomatedBackup)
* [deleteDBParameterGroup](#deleteDBParameterGroup)
* [deleteDBSecurityGroup](#deleteDBSecurityGroup)
* [deleteDBSnapshot](#deleteDBSnapshot)
* [deleteDBSubnetGroup](#deleteDBSubnetGroup)
* [deleteEventSubscription](#deleteEventSubscription)
* [deleteGlobalCluster](#deleteGlobalCluster)
* [deleteOptionGroup](#deleteOptionGroup)
* [describeAccountAttributes](#describeAccountAttributes)
* [describeCertificates](#describeCertificates)
* [DescribeCertificatesOptions](#DescribeCertificatesOptions)
* [describeDBClusterBacktracks](#describeDBClusterBacktracks)
* [DescribeDBClusterBacktracksOptions](#DescribeDBClusterBacktracksOptions)
* [describeDBClusterEndpoints](#describeDBClusterEndpoints)
* [DescribeDBClusterEndpointsOptions](#DescribeDBClusterEndpointsOptions)
* [describeDBClusterParameterGroups](#describeDBClusterParameterGroups)
* [DescribeDBClusterParameterGroupsOptions](#DescribeDBClusterParameterGroupsOptions)
* [describeDBClusterParameters](#describeDBClusterParameters)
* [DescribeDBClusterParametersOptions](#DescribeDBClusterParametersOptions)
* [describeDBClusterSnapshotAttributes](#describeDBClusterSnapshotAttributes)
* [describeDBClusterSnapshots](#describeDBClusterSnapshots)
* [DescribeDBClusterSnapshotsOptions](#DescribeDBClusterSnapshotsOptions)
* [describeDBClusters](#describeDBClusters)
* [DescribeDBClustersOptions](#DescribeDBClustersOptions)
* [describeDBEngineVersions](#describeDBEngineVersions)
* [DescribeDBEngineVersionsOptions](#DescribeDBEngineVersionsOptions)
* [describeDBInstanceAutomatedBackups](#describeDBInstanceAutomatedBackups)
* [DescribeDBInstanceAutomatedBackupsOptions](#DescribeDBInstanceAutomatedBackupsOptions)
* [describeDBInstances](#describeDBInstances)
* [DescribeDBInstancesOptions](#DescribeDBInstancesOptions)
* [describeDBLogFiles](#describeDBLogFiles)
* [DescribeDBLogFilesOptions](#DescribeDBLogFilesOptions)
* [describeDBParameterGroups](#describeDBParameterGroups)
* [DescribeDBParameterGroupsOptions](#DescribeDBParameterGroupsOptions)
* [describeDBParameters](#describeDBParameters)
* [DescribeDBParametersOptions](#DescribeDBParametersOptions)
* [describeDBSecurityGroups](#describeDBSecurityGroups)
* [DescribeDBSecurityGroupsOptions](#DescribeDBSecurityGroupsOptions)
* [describeDBSnapshotAttributes](#describeDBSnapshotAttributes)
* [describeDBSnapshots](#describeDBSnapshots)
* [DescribeDBSnapshotsOptions](#DescribeDBSnapshotsOptions)
* [describeDBSubnetGroups](#describeDBSubnetGroups)
* [DescribeDBSubnetGroupsOptions](#DescribeDBSubnetGroupsOptions)
* [describeEngineDefaultClusterParameters](#describeEngineDefaultClusterParameters)
* [DescribeEngineDefaultClusterParametersOptions](#DescribeEngineDefaultClusterParametersOptions)
* [describeEngineDefaultParameters](#describeEngineDefaultParameters)
* [DescribeEngineDefaultParametersOptions](#DescribeEngineDefaultParametersOptions)
* [describeEventCategories](#describeEventCategories)
* [DescribeEventCategoriesOptions](#DescribeEventCategoriesOptions)
* [describeEventSubscriptions](#describeEventSubscriptions)
* [DescribeEventSubscriptionsOptions](#DescribeEventSubscriptionsOptions)
* [describeEvents](#describeEvents)
* [DescribeEventsOptions](#DescribeEventsOptions)
* [describeGlobalClusters](#describeGlobalClusters)
* [DescribeGlobalClustersOptions](#DescribeGlobalClustersOptions)
* [describeOptionGroupOptions](#describeOptionGroupOptions)
* [DescribeOptionGroupOptionsOptions](#DescribeOptionGroupOptionsOptions)
* [describeOptionGroups](#describeOptionGroups)
* [DescribeOptionGroupsOptions](#DescribeOptionGroupsOptions)
* [describeOrderableDBInstanceOptions](#describeOrderableDBInstanceOptions)
* [DescribeOrderableDBInstanceOptionsOptions](#DescribeOrderableDBInstanceOptionsOptions)
* [describePendingMaintenanceActions](#describePendingMaintenanceActions)
* [DescribePendingMaintenanceActionsOptions](#DescribePendingMaintenanceActionsOptions)
* [describeReservedDBInstances](#describeReservedDBInstances)
* [DescribeReservedDBInstancesOptions](#DescribeReservedDBInstancesOptions)
* [describeReservedDBInstancesOfferings](#describeReservedDBInstancesOfferings)
* [DescribeReservedDBInstancesOfferingsOptions](#DescribeReservedDBInstancesOfferingsOptions)
* [describeSourceRegions](#describeSourceRegions)
* [DescribeSourceRegionsOptions](#DescribeSourceRegionsOptions)
* [describeValidDBInstanceModifications](#describeValidDBInstanceModifications)
* [downloadDBLogFilePortion](#downloadDBLogFilePortion)
* [DownloadDBLogFilePortionOptions](#DownloadDBLogFilePortionOptions)
* [failoverDBCluster](#failoverDBCluster)
* [FailoverDBClusterOptions](#FailoverDBClusterOptions)
* [listTagsForResource](#listTagsForResource)
* [ListTagsForResourceOptions](#ListTagsForResourceOptions)
* [modifyCurrentDBClusterCapacity](#modifyCurrentDBClusterCapacity)
* [ModifyCurrentDBClusterCapacityOptions](#ModifyCurrentDBClusterCapacityOptions)
* [modifyDBCluster](#modifyDBCluster)
* [ModifyDBClusterOptions](#ModifyDBClusterOptions)
* [modifyDBClusterEndpoint](#modifyDBClusterEndpoint)
* [ModifyDBClusterEndpointOptions](#ModifyDBClusterEndpointOptions)
* [modifyDBClusterParameterGroup](#modifyDBClusterParameterGroup)
* [modifyDBClusterSnapshotAttribute](#modifyDBClusterSnapshotAttribute)
* [ModifyDBClusterSnapshotAttributeOptions](#ModifyDBClusterSnapshotAttributeOptions)
* [modifyDBInstance](#modifyDBInstance)
* [ModifyDBInstanceOptions](#ModifyDBInstanceOptions)
* [modifyDBParameterGroup](#modifyDBParameterGroup)
* [modifyDBSnapshot](#modifyDBSnapshot)
* [ModifyDBSnapshotOptions](#ModifyDBSnapshotOptions)
* [modifyDBSnapshotAttribute](#modifyDBSnapshotAttribute)
* [ModifyDBSnapshotAttributeOptions](#ModifyDBSnapshotAttributeOptions)
* [modifyDBSubnetGroup](#modifyDBSubnetGroup)
* [ModifyDBSubnetGroupOptions](#ModifyDBSubnetGroupOptions)
* [modifyEventSubscription](#modifyEventSubscription)
* [ModifyEventSubscriptionOptions](#ModifyEventSubscriptionOptions)
* [modifyGlobalCluster](#modifyGlobalCluster)
* [ModifyGlobalClusterOptions](#ModifyGlobalClusterOptions)
* [modifyOptionGroup](#modifyOptionGroup)
* [ModifyOptionGroupOptions](#ModifyOptionGroupOptions)
* [promoteReadReplica](#promoteReadReplica)
* [PromoteReadReplicaOptions](#PromoteReadReplicaOptions)
* [promoteReadReplicaDBCluster](#promoteReadReplicaDBCluster)
* [purchaseReservedDBInstancesOffering](#purchaseReservedDBInstancesOffering)
* [PurchaseReservedDBInstancesOfferingOptions](#PurchaseReservedDBInstancesOfferingOptions)
* [rebootDBInstance](#rebootDBInstance)
* [RebootDBInstanceOptions](#RebootDBInstanceOptions)
* [removeFromGlobalCluster](#removeFromGlobalCluster)
* [RemoveFromGlobalClusterOptions](#RemoveFromGlobalClusterOptions)
* [removeRoleFromDBCluster](#removeRoleFromDBCluster)
* [RemoveRoleFromDBClusterOptions](#RemoveRoleFromDBClusterOptions)
* [removeRoleFromDBInstance](#removeRoleFromDBInstance)
* [removeSourceIdentifierFromSubscription](#removeSourceIdentifierFromSubscription)
* [removeTagsFromResource](#removeTagsFromResource)
* [resetDBClusterParameterGroup](#resetDBClusterParameterGroup)
* [ResetDBClusterParameterGroupOptions](#ResetDBClusterParameterGroupOptions)
* [resetDBParameterGroup](#resetDBParameterGroup)
* [ResetDBParameterGroupOptions](#ResetDBParameterGroupOptions)
* [restoreDBClusterFromS3](#restoreDBClusterFromS3)
* [RestoreDBClusterFromS3Options](#RestoreDBClusterFromS3Options)
* [restoreDBClusterFromSnapshot](#restoreDBClusterFromSnapshot)
* [RestoreDBClusterFromSnapshotOptions](#RestoreDBClusterFromSnapshotOptions)
* [restoreDBClusterToPointInTime](#restoreDBClusterToPointInTime)
* [RestoreDBClusterToPointInTimeOptions](#RestoreDBClusterToPointInTimeOptions)
* [restoreDBInstanceFromDBSnapshot](#restoreDBInstanceFromDBSnapshot)
* [RestoreDBInstanceFromDBSnapshotOptions](#RestoreDBInstanceFromDBSnapshotOptions)
* [restoreDBInstanceFromS3](#restoreDBInstanceFromS3)
* [RestoreDBInstanceFromS3Options](#RestoreDBInstanceFromS3Options)
* [restoreDBInstanceToPointInTime](#restoreDBInstanceToPointInTime)
* [RestoreDBInstanceToPointInTimeOptions](#RestoreDBInstanceToPointInTimeOptions)
* [revokeDBSecurityGroupIngress](#revokeDBSecurityGroupIngress)
* [RevokeDBSecurityGroupIngressOptions](#RevokeDBSecurityGroupIngressOptions)
* [startActivityStream](#startActivityStream)
* [StartActivityStreamOptions](#StartActivityStreamOptions)
* [startDBCluster](#startDBCluster)
* [startDBInstance](#startDBInstance)
* [stopActivityStream](#stopActivityStream)
* [StopActivityStreamOptions](#StopActivityStreamOptions)
* [stopDBCluster](#stopDBCluster)
* [stopDBInstance](#stopDBInstance)
* [StopDBInstanceOptions](#StopDBInstanceOptions)


@docs addRoleToDBCluster,AddRoleToDBClusterOptions,addRoleToDBInstance,addSourceIdentifierToSubscription,addTagsToResource,applyPendingMaintenanceAction,authorizeDBSecurityGroupIngress,AuthorizeDBSecurityGroupIngressOptions,backtrackDBCluster,BacktrackDBClusterOptions,copyDBClusterParameterGroup,CopyDBClusterParameterGroupOptions,copyDBClusterSnapshot,CopyDBClusterSnapshotOptions,copyDBParameterGroup,CopyDBParameterGroupOptions,copyDBSnapshot,CopyDBSnapshotOptions,copyOptionGroup,CopyOptionGroupOptions,createDBCluster,CreateDBClusterOptions,createDBClusterEndpoint,CreateDBClusterEndpointOptions,createDBClusterParameterGroup,CreateDBClusterParameterGroupOptions,createDBClusterSnapshot,CreateDBClusterSnapshotOptions,createDBInstance,CreateDBInstanceOptions,createDBInstanceReadReplica,CreateDBInstanceReadReplicaOptions,createDBParameterGroup,CreateDBParameterGroupOptions,createDBSecurityGroup,CreateDBSecurityGroupOptions,createDBSnapshot,CreateDBSnapshotOptions,createDBSubnetGroup,CreateDBSubnetGroupOptions,createEventSubscription,CreateEventSubscriptionOptions,createGlobalCluster,CreateGlobalClusterOptions,createOptionGroup,CreateOptionGroupOptions,deleteDBCluster,DeleteDBClusterOptions,deleteDBClusterEndpoint,deleteDBClusterParameterGroup,deleteDBClusterSnapshot,deleteDBInstance,DeleteDBInstanceOptions,deleteDBInstanceAutomatedBackup,deleteDBParameterGroup,deleteDBSecurityGroup,deleteDBSnapshot,deleteDBSubnetGroup,deleteEventSubscription,deleteGlobalCluster,deleteOptionGroup,describeAccountAttributes,describeCertificates,DescribeCertificatesOptions,describeDBClusterBacktracks,DescribeDBClusterBacktracksOptions,describeDBClusterEndpoints,DescribeDBClusterEndpointsOptions,describeDBClusterParameterGroups,DescribeDBClusterParameterGroupsOptions,describeDBClusterParameters,DescribeDBClusterParametersOptions,describeDBClusterSnapshotAttributes,describeDBClusterSnapshots,DescribeDBClusterSnapshotsOptions,describeDBClusters,DescribeDBClustersOptions,describeDBEngineVersions,DescribeDBEngineVersionsOptions,describeDBInstanceAutomatedBackups,DescribeDBInstanceAutomatedBackupsOptions,describeDBInstances,DescribeDBInstancesOptions,describeDBLogFiles,DescribeDBLogFilesOptions,describeDBParameterGroups,DescribeDBParameterGroupsOptions,describeDBParameters,DescribeDBParametersOptions,describeDBSecurityGroups,DescribeDBSecurityGroupsOptions,describeDBSnapshotAttributes,describeDBSnapshots,DescribeDBSnapshotsOptions,describeDBSubnetGroups,DescribeDBSubnetGroupsOptions,describeEngineDefaultClusterParameters,DescribeEngineDefaultClusterParametersOptions,describeEngineDefaultParameters,DescribeEngineDefaultParametersOptions,describeEventCategories,DescribeEventCategoriesOptions,describeEventSubscriptions,DescribeEventSubscriptionsOptions,describeEvents,DescribeEventsOptions,describeGlobalClusters,DescribeGlobalClustersOptions,describeOptionGroupOptions,DescribeOptionGroupOptionsOptions,describeOptionGroups,DescribeOptionGroupsOptions,describeOrderableDBInstanceOptions,DescribeOrderableDBInstanceOptionsOptions,describePendingMaintenanceActions,DescribePendingMaintenanceActionsOptions,describeReservedDBInstances,DescribeReservedDBInstancesOptions,describeReservedDBInstancesOfferings,DescribeReservedDBInstancesOfferingsOptions,describeSourceRegions,DescribeSourceRegionsOptions,describeValidDBInstanceModifications,downloadDBLogFilePortion,DownloadDBLogFilePortionOptions,failoverDBCluster,FailoverDBClusterOptions,listTagsForResource,ListTagsForResourceOptions,modifyCurrentDBClusterCapacity,ModifyCurrentDBClusterCapacityOptions,modifyDBCluster,ModifyDBClusterOptions,modifyDBClusterEndpoint,ModifyDBClusterEndpointOptions,modifyDBClusterParameterGroup,modifyDBClusterSnapshotAttribute,ModifyDBClusterSnapshotAttributeOptions,modifyDBInstance,ModifyDBInstanceOptions,modifyDBParameterGroup,modifyDBSnapshot,ModifyDBSnapshotOptions,modifyDBSnapshotAttribute,ModifyDBSnapshotAttributeOptions,modifyDBSubnetGroup,ModifyDBSubnetGroupOptions,modifyEventSubscription,ModifyEventSubscriptionOptions,modifyGlobalCluster,ModifyGlobalClusterOptions,modifyOptionGroup,ModifyOptionGroupOptions,promoteReadReplica,PromoteReadReplicaOptions,promoteReadReplicaDBCluster,purchaseReservedDBInstancesOffering,PurchaseReservedDBInstancesOfferingOptions,rebootDBInstance,RebootDBInstanceOptions,removeFromGlobalCluster,RemoveFromGlobalClusterOptions,removeRoleFromDBCluster,RemoveRoleFromDBClusterOptions,removeRoleFromDBInstance,removeSourceIdentifierFromSubscription,removeTagsFromResource,resetDBClusterParameterGroup,ResetDBClusterParameterGroupOptions,resetDBParameterGroup,ResetDBParameterGroupOptions,restoreDBClusterFromS3,RestoreDBClusterFromS3Options,restoreDBClusterFromSnapshot,RestoreDBClusterFromSnapshotOptions,restoreDBClusterToPointInTime,RestoreDBClusterToPointInTimeOptions,restoreDBInstanceFromDBSnapshot,RestoreDBInstanceFromDBSnapshotOptions,restoreDBInstanceFromS3,RestoreDBInstanceFromS3Options,restoreDBInstanceToPointInTime,RestoreDBInstanceToPointInTimeOptions,revokeDBSecurityGroupIngress,RevokeDBSecurityGroupIngressOptions,startActivityStream,StartActivityStreamOptions,startDBCluster,startDBInstance,stopActivityStream,StopActivityStreamOptions,stopDBCluster,stopDBInstance,StopDBInstanceOptions

## Responses

* [AccountAttributesMessage](#AccountAttributesMessage)
* [AddSourceIdentifierToSubscriptionResult](#AddSourceIdentifierToSubscriptionResult)
* [ApplyPendingMaintenanceActionResult](#ApplyPendingMaintenanceActionResult)
* [AuthorizeDBSecurityGroupIngressResult](#AuthorizeDBSecurityGroupIngressResult)
* [CertificateMessage](#CertificateMessage)
* [CopyDBClusterParameterGroupResult](#CopyDBClusterParameterGroupResult)
* [CopyDBClusterSnapshotResult](#CopyDBClusterSnapshotResult)
* [CopyDBParameterGroupResult](#CopyDBParameterGroupResult)
* [CopyDBSnapshotResult](#CopyDBSnapshotResult)
* [CopyOptionGroupResult](#CopyOptionGroupResult)
* [CreateDBClusterParameterGroupResult](#CreateDBClusterParameterGroupResult)
* [CreateDBClusterResult](#CreateDBClusterResult)
* [CreateDBClusterSnapshotResult](#CreateDBClusterSnapshotResult)
* [CreateDBInstanceReadReplicaResult](#CreateDBInstanceReadReplicaResult)
* [CreateDBInstanceResult](#CreateDBInstanceResult)
* [CreateDBParameterGroupResult](#CreateDBParameterGroupResult)
* [CreateDBSecurityGroupResult](#CreateDBSecurityGroupResult)
* [CreateDBSnapshotResult](#CreateDBSnapshotResult)
* [CreateDBSubnetGroupResult](#CreateDBSubnetGroupResult)
* [CreateEventSubscriptionResult](#CreateEventSubscriptionResult)
* [CreateGlobalClusterResult](#CreateGlobalClusterResult)
* [CreateOptionGroupResult](#CreateOptionGroupResult)
* [DBClusterBacktrack](#DBClusterBacktrack)
* [DBClusterBacktrackMessage](#DBClusterBacktrackMessage)
* [DBClusterCapacityInfo](#DBClusterCapacityInfo)
* [DBClusterEndpoint](#DBClusterEndpoint)
* [DBClusterEndpointMessage](#DBClusterEndpointMessage)
* [DBClusterMessage](#DBClusterMessage)
* [DBClusterParameterGroupDetails](#DBClusterParameterGroupDetails)
* [DBClusterParameterGroupNameMessage](#DBClusterParameterGroupNameMessage)
* [DBClusterParameterGroupsMessage](#DBClusterParameterGroupsMessage)
* [DBClusterSnapshotMessage](#DBClusterSnapshotMessage)
* [DBEngineVersionMessage](#DBEngineVersionMessage)
* [DBInstanceAutomatedBackupMessage](#DBInstanceAutomatedBackupMessage)
* [DBInstanceMessage](#DBInstanceMessage)
* [DBParameterGroupDetails](#DBParameterGroupDetails)
* [DBParameterGroupNameMessage](#DBParameterGroupNameMessage)
* [DBParameterGroupsMessage](#DBParameterGroupsMessage)
* [DBSecurityGroupMessage](#DBSecurityGroupMessage)
* [DBSnapshotMessage](#DBSnapshotMessage)
* [DBSubnetGroupMessage](#DBSubnetGroupMessage)
* [DeleteDBClusterResult](#DeleteDBClusterResult)
* [DeleteDBClusterSnapshotResult](#DeleteDBClusterSnapshotResult)
* [DeleteDBInstanceAutomatedBackupResult](#DeleteDBInstanceAutomatedBackupResult)
* [DeleteDBInstanceResult](#DeleteDBInstanceResult)
* [DeleteDBSnapshotResult](#DeleteDBSnapshotResult)
* [DeleteEventSubscriptionResult](#DeleteEventSubscriptionResult)
* [DeleteGlobalClusterResult](#DeleteGlobalClusterResult)
* [DescribeDBClusterSnapshotAttributesResult](#DescribeDBClusterSnapshotAttributesResult)
* [DescribeDBLogFilesResponse](#DescribeDBLogFilesResponse)
* [DescribeDBSnapshotAttributesResult](#DescribeDBSnapshotAttributesResult)
* [DescribeEngineDefaultClusterParametersResult](#DescribeEngineDefaultClusterParametersResult)
* [DescribeEngineDefaultParametersResult](#DescribeEngineDefaultParametersResult)
* [DescribeValidDBInstanceModificationsResult](#DescribeValidDBInstanceModificationsResult)
* [DownloadDBLogFilePortionDetails](#DownloadDBLogFilePortionDetails)
* [EventCategoriesMessage](#EventCategoriesMessage)
* [EventSubscriptionsMessage](#EventSubscriptionsMessage)
* [EventsMessage](#EventsMessage)
* [FailoverDBClusterResult](#FailoverDBClusterResult)
* [GlobalClustersMessage](#GlobalClustersMessage)
* [ModifyDBClusterResult](#ModifyDBClusterResult)
* [ModifyDBClusterSnapshotAttributeResult](#ModifyDBClusterSnapshotAttributeResult)
* [ModifyDBInstanceResult](#ModifyDBInstanceResult)
* [ModifyDBSnapshotAttributeResult](#ModifyDBSnapshotAttributeResult)
* [ModifyDBSnapshotResult](#ModifyDBSnapshotResult)
* [ModifyDBSubnetGroupResult](#ModifyDBSubnetGroupResult)
* [ModifyEventSubscriptionResult](#ModifyEventSubscriptionResult)
* [ModifyGlobalClusterResult](#ModifyGlobalClusterResult)
* [ModifyOptionGroupResult](#ModifyOptionGroupResult)
* [OptionGroupOptionsMessage](#OptionGroupOptionsMessage)
* [OptionGroups](#OptionGroups)
* [OrderableDBInstanceOptionsMessage](#OrderableDBInstanceOptionsMessage)
* [PendingMaintenanceActionsMessage](#PendingMaintenanceActionsMessage)
* [PromoteReadReplicaDBClusterResult](#PromoteReadReplicaDBClusterResult)
* [PromoteReadReplicaResult](#PromoteReadReplicaResult)
* [PurchaseReservedDBInstancesOfferingResult](#PurchaseReservedDBInstancesOfferingResult)
* [RebootDBInstanceResult](#RebootDBInstanceResult)
* [RemoveFromGlobalClusterResult](#RemoveFromGlobalClusterResult)
* [RemoveSourceIdentifierFromSubscriptionResult](#RemoveSourceIdentifierFromSubscriptionResult)
* [ReservedDBInstanceMessage](#ReservedDBInstanceMessage)
* [ReservedDBInstancesOfferingMessage](#ReservedDBInstancesOfferingMessage)
* [RestoreDBClusterFromS3Result](#RestoreDBClusterFromS3Result)
* [RestoreDBClusterFromSnapshotResult](#RestoreDBClusterFromSnapshotResult)
* [RestoreDBClusterToPointInTimeResult](#RestoreDBClusterToPointInTimeResult)
* [RestoreDBInstanceFromDBSnapshotResult](#RestoreDBInstanceFromDBSnapshotResult)
* [RestoreDBInstanceFromS3Result](#RestoreDBInstanceFromS3Result)
* [RestoreDBInstanceToPointInTimeResult](#RestoreDBInstanceToPointInTimeResult)
* [RevokeDBSecurityGroupIngressResult](#RevokeDBSecurityGroupIngressResult)
* [SourceRegionMessage](#SourceRegionMessage)
* [StartActivityStreamResponse](#StartActivityStreamResponse)
* [StartDBClusterResult](#StartDBClusterResult)
* [StartDBInstanceResult](#StartDBInstanceResult)
* [StopActivityStreamResponse](#StopActivityStreamResponse)
* [StopDBClusterResult](#StopDBClusterResult)
* [StopDBInstanceResult](#StopDBInstanceResult)
* [TagListMessage](#TagListMessage)


@docs AccountAttributesMessage,AddSourceIdentifierToSubscriptionResult,ApplyPendingMaintenanceActionResult,AuthorizeDBSecurityGroupIngressResult,CertificateMessage,CopyDBClusterParameterGroupResult,CopyDBClusterSnapshotResult,CopyDBParameterGroupResult,CopyDBSnapshotResult,CopyOptionGroupResult,CreateDBClusterParameterGroupResult,CreateDBClusterResult,CreateDBClusterSnapshotResult,CreateDBInstanceReadReplicaResult,CreateDBInstanceResult,CreateDBParameterGroupResult,CreateDBSecurityGroupResult,CreateDBSnapshotResult,CreateDBSubnetGroupResult,CreateEventSubscriptionResult,CreateGlobalClusterResult,CreateOptionGroupResult,DBClusterBacktrack,DBClusterBacktrackMessage,DBClusterCapacityInfo,DBClusterEndpoint,DBClusterEndpointMessage,DBClusterMessage,DBClusterParameterGroupDetails,DBClusterParameterGroupNameMessage,DBClusterParameterGroupsMessage,DBClusterSnapshotMessage,DBEngineVersionMessage,DBInstanceAutomatedBackupMessage,DBInstanceMessage,DBParameterGroupDetails,DBParameterGroupNameMessage,DBParameterGroupsMessage,DBSecurityGroupMessage,DBSnapshotMessage,DBSubnetGroupMessage,DeleteDBClusterResult,DeleteDBClusterSnapshotResult,DeleteDBInstanceAutomatedBackupResult,DeleteDBInstanceResult,DeleteDBSnapshotResult,DeleteEventSubscriptionResult,DeleteGlobalClusterResult,DescribeDBClusterSnapshotAttributesResult,DescribeDBLogFilesResponse,DescribeDBSnapshotAttributesResult,DescribeEngineDefaultClusterParametersResult,DescribeEngineDefaultParametersResult,DescribeValidDBInstanceModificationsResult,DownloadDBLogFilePortionDetails,EventCategoriesMessage,EventSubscriptionsMessage,EventsMessage,FailoverDBClusterResult,GlobalClustersMessage,ModifyDBClusterResult,ModifyDBClusterSnapshotAttributeResult,ModifyDBInstanceResult,ModifyDBSnapshotAttributeResult,ModifyDBSnapshotResult,ModifyDBSubnetGroupResult,ModifyEventSubscriptionResult,ModifyGlobalClusterResult,ModifyOptionGroupResult,OptionGroupOptionsMessage,OptionGroups,OrderableDBInstanceOptionsMessage,PendingMaintenanceActionsMessage,PromoteReadReplicaDBClusterResult,PromoteReadReplicaResult,PurchaseReservedDBInstancesOfferingResult,RebootDBInstanceResult,RemoveFromGlobalClusterResult,RemoveSourceIdentifierFromSubscriptionResult,ReservedDBInstanceMessage,ReservedDBInstancesOfferingMessage,RestoreDBClusterFromS3Result,RestoreDBClusterFromSnapshotResult,RestoreDBClusterToPointInTimeResult,RestoreDBInstanceFromDBSnapshotResult,RestoreDBInstanceFromS3Result,RestoreDBInstanceToPointInTimeResult,RevokeDBSecurityGroupIngressResult,SourceRegionMessage,StartActivityStreamResponse,StartDBClusterResult,StartDBInstanceResult,StopActivityStreamResponse,StopDBClusterResult,StopDBInstanceResult,TagListMessage

## Records

* [AccountQuota](#AccountQuota)
* [AvailabilityZone](#AvailabilityZone)
* [AvailableProcessorFeature](#AvailableProcessorFeature)
* [Certificate](#Certificate)
* [CharacterSet](#CharacterSet)
* [CloudwatchLogsExportConfiguration](#CloudwatchLogsExportConfiguration)
* [DBCluster](#DBCluster)
* [DBClusterMember](#DBClusterMember)
* [DBClusterOptionGroupStatus](#DBClusterOptionGroupStatus)
* [DBClusterParameterGroup](#DBClusterParameterGroup)
* [DBClusterRole](#DBClusterRole)
* [DBClusterSnapshot](#DBClusterSnapshot)
* [DBClusterSnapshotAttribute](#DBClusterSnapshotAttribute)
* [DBClusterSnapshotAttributesResult](#DBClusterSnapshotAttributesResult)
* [DBEngineVersion](#DBEngineVersion)
* [DBInstance](#DBInstance)
* [DBInstanceAutomatedBackup](#DBInstanceAutomatedBackup)
* [DBInstanceRole](#DBInstanceRole)
* [DBInstanceStatusInfo](#DBInstanceStatusInfo)
* [DBParameterGroup](#DBParameterGroup)
* [DBParameterGroupStatus](#DBParameterGroupStatus)
* [DBSecurityGroup](#DBSecurityGroup)
* [DBSecurityGroupMembership](#DBSecurityGroupMembership)
* [DBSnapshot](#DBSnapshot)
* [DBSnapshotAttribute](#DBSnapshotAttribute)
* [DBSnapshotAttributesResult](#DBSnapshotAttributesResult)
* [DBSubnetGroup](#DBSubnetGroup)
* [DescribeDBLogFilesDetails](#DescribeDBLogFilesDetails)
* [DomainMembership](#DomainMembership)
* [DoubleRange](#DoubleRange)
* [EC2SecurityGroup](#EC2SecurityGroup)
* [Endpoint](#Endpoint)
* [EngineDefaults](#EngineDefaults)
* [Event](#Event)
* [EventCategoriesMap](#EventCategoriesMap)
* [EventSubscription](#EventSubscription)
* [Filter](#Filter)
* [GlobalCluster](#GlobalCluster)
* [GlobalClusterMember](#GlobalClusterMember)
* [IPRange](#IPRange)
* [MinimumEngineVersionPerAllowedValue](#MinimumEngineVersionPerAllowedValue)
* [Option](#Option)
* [OptionConfiguration](#OptionConfiguration)
* [OptionGroup](#OptionGroup)
* [OptionGroupMembership](#OptionGroupMembership)
* [OptionGroupOption](#OptionGroupOption)
* [OptionGroupOptionSetting](#OptionGroupOptionSetting)
* [OptionSetting](#OptionSetting)
* [OptionVersion](#OptionVersion)
* [OrderableDBInstanceOption](#OrderableDBInstanceOption)
* [Parameter](#Parameter)
* [PendingCloudwatchLogsExports](#PendingCloudwatchLogsExports)
* [PendingMaintenanceAction](#PendingMaintenanceAction)
* [PendingModifiedValues](#PendingModifiedValues)
* [ProcessorFeature](#ProcessorFeature)
* [Range](#Range)
* [RecurringCharge](#RecurringCharge)
* [ReservedDBInstance](#ReservedDBInstance)
* [ReservedDBInstancesOffering](#ReservedDBInstancesOffering)
* [ResourcePendingMaintenanceActions](#ResourcePendingMaintenanceActions)
* [RestoreWindow](#RestoreWindow)
* [ScalingConfiguration](#ScalingConfiguration)
* [ScalingConfigurationInfo](#ScalingConfigurationInfo)
* [SourceRegion](#SourceRegion)
* [Subnet](#Subnet)
* [Tag](#Tag)
* [Timezone](#Timezone)
* [UpgradeTarget](#UpgradeTarget)
* [ValidDBInstanceModificationsMessage](#ValidDBInstanceModificationsMessage)
* [ValidStorageOptions](#ValidStorageOptions)
* [VpcSecurityGroupMembership](#VpcSecurityGroupMembership)


@docs AccountQuota,AvailabilityZone,AvailableProcessorFeature,Certificate,CharacterSet,CloudwatchLogsExportConfiguration,DBCluster,DBClusterMember,DBClusterOptionGroupStatus,DBClusterParameterGroup,DBClusterRole,DBClusterSnapshot,DBClusterSnapshotAttribute,DBClusterSnapshotAttributesResult,DBEngineVersion,DBInstance,DBInstanceAutomatedBackup,DBInstanceRole,DBInstanceStatusInfo,DBParameterGroup,DBParameterGroupStatus,DBSecurityGroup,DBSecurityGroupMembership,DBSnapshot,DBSnapshotAttribute,DBSnapshotAttributesResult,DBSubnetGroup,DescribeDBLogFilesDetails,DomainMembership,DoubleRange,EC2SecurityGroup,Endpoint,EngineDefaults,Event,EventCategoriesMap,EventSubscription,Filter,GlobalCluster,GlobalClusterMember,IPRange,MinimumEngineVersionPerAllowedValue,Option,OptionConfiguration,OptionGroup,OptionGroupMembership,OptionGroupOption,OptionGroupOptionSetting,OptionSetting,OptionVersion,OrderableDBInstanceOption,Parameter,PendingCloudwatchLogsExports,PendingMaintenanceAction,PendingModifiedValues,ProcessorFeature,Range,RecurringCharge,ReservedDBInstance,ReservedDBInstancesOffering,ResourcePendingMaintenanceActions,RestoreWindow,ScalingConfiguration,ScalingConfigurationInfo,SourceRegion,Subnet,Tag,Timezone,UpgradeTarget,ValidDBInstanceModificationsMessage,ValidStorageOptions,VpcSecurityGroupMembership

## Unions

* [ActivityStreamMode](#ActivityStreamMode)
* [ActivityStreamStatus](#ActivityStreamStatus)
* [ApplyMethod](#ApplyMethod)
* [SourceType](#SourceType)


@docs ActivityStreamMode,ActivityStreamStatus,ApplyMethod,SourceType

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Json.Decode as JD
import Json.Decode.Pipeline as JDP

import Time exposing (Posix)
import Iso8601
import Json.Decode.Extra as JDX


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "rds"
        "2014-10-31"
        AWS.Core.Service.query
        AWS.Core.Service.signV4
        (AWS.Core.Service.setXmlNamespace "http://rds.amazonaws.com/doc/2014-10-31/")



-- OPERATIONS

{-| <p>Associates an Identity and Access Management (IAM) role from an Amazon Aurora DB cluster. For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html">Authorizing Amazon Aurora MySQL to Access Other AWS Services on Your Behalf</a> in the <i>Amazon Aurora User Guide</i>.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`
* `roleArn` __:__ `String`


-}

addRoleToDBCluster :
  
    String ->
  
    String ->
  
  
    ( AddRoleToDBClusterOptions -> AddRoleToDBClusterOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

addRoleToDBCluster dBClusterIdentifier roleArn setOptions =
    
    let
        requestInput = AddRoleToDBClusterMessage
            
            dBClusterIdentifier
            
            roleArn
            
            options.featureName
            
        
        options = setOptions (AddRoleToDBClusterOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "AddRoleToDBCluster")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs addRoleToDBClusterMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddRoleToDBCluster"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a addRoleToDBCluster request
-}
type alias AddRoleToDBClusterOptions =
    {
    featureName : Maybe String
    }



{-| <p>Associates an AWS Identity and Access Management (IAM) role with a DB instance.</p> <note> <p>To add a role to a DB instance, the status of the DB instance must be <code>available</code>.</p> </note>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`
* `roleArn` __:__ `String`
* `featureName` __:__ `String`


-}

addRoleToDBInstance :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

addRoleToDBInstance dBInstanceIdentifier roleArn featureName =
    
    let
        requestInput = AddRoleToDBInstanceMessage
            
            dBInstanceIdentifier
            
            roleArn
            
            featureName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "AddRoleToDBInstance")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs addRoleToDBInstanceMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddRoleToDBInstance"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Adds a source identifier to an existing RDS event notification subscription.</p>

__Required Parameters__

* `subscriptionName` __:__ `String`
* `sourceIdentifier` __:__ `String`


-}

addSourceIdentifierToSubscription :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddSourceIdentifierToSubscriptionResult)

addSourceIdentifierToSubscription subscriptionName sourceIdentifier =
    
    let
        requestInput = AddSourceIdentifierToSubscriptionMessage
            
            subscriptionName
            
            sourceIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "AddSourceIdentifierToSubscription")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs addSourceIdentifierToSubscriptionMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddSourceIdentifierToSubscription"
                
                (AWS.Core.Decode.ResultDecoder "AddSourceIdentifierToSubscriptionResult" addSourceIdentifierToSubscriptionResultDecoder)
                
            )





{-| <p>Adds metadata tags to an Amazon RDS resource. These tags can also be used with cost allocation reporting to track cost associated with Amazon RDS resources, or used in a Condition statement in an IAM policy for Amazon RDS.</p> <p>For an overview on tagging Amazon RDS resources, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html">Tagging Amazon RDS Resources</a>.</p>

__Required Parameters__

* `resourceName` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

addTagsToResource :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

addTagsToResource resourceName tags =
    
    let
        requestInput = AddTagsToResourceMessage
            
            resourceName
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "AddTagsToResource")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs addTagsToResourceMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddTagsToResource"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Applies a pending maintenance action to a resource (for example, to a DB instance).</p>

__Required Parameters__

* `resourceIdentifier` __:__ `String`
* `applyAction` __:__ `String`
* `optInType` __:__ `String`


-}

applyPendingMaintenanceAction :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ApplyPendingMaintenanceActionResult)

applyPendingMaintenanceAction resourceIdentifier applyAction optInType =
    
    let
        requestInput = ApplyPendingMaintenanceActionMessage
            
            resourceIdentifier
            
            applyAction
            
            optInType
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ApplyPendingMaintenanceAction")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs applyPendingMaintenanceActionMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ApplyPendingMaintenanceAction"
                
                (AWS.Core.Decode.ResultDecoder "ApplyPendingMaintenanceActionResult" applyPendingMaintenanceActionResultDecoder)
                
            )





{-| <p>Enables ingress to a DBSecurityGroup using one of two forms of authorization. First, EC2 or VPC security groups can be added to the DBSecurityGroup if the application using the database is running on EC2 or VPC instances. Second, IP ranges are available if the application accessing your database is running on the Internet. Required parameters for this API are one of CIDR range, EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or EC2SecurityGroupId for non-VPC).</p> <note> <p>You can't authorize ingress from an EC2 security group in one AWS Region to an Amazon RDS DB instance in another. You can't authorize ingress from a VPC security group in one VPC to an Amazon RDS DB instance in another.</p> </note> <p>For an overview of CIDR ranges, go to the <a href="http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Wikipedia Tutorial</a>. </p>

__Required Parameters__

* `dBSecurityGroupName` __:__ `String`


-}

authorizeDBSecurityGroupIngress :
  
    String ->
  
  
    ( AuthorizeDBSecurityGroupIngressOptions -> AuthorizeDBSecurityGroupIngressOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AuthorizeDBSecurityGroupIngressResult)

authorizeDBSecurityGroupIngress dBSecurityGroupName setOptions =
    
    let
        requestInput = AuthorizeDBSecurityGroupIngressMessage
            
            dBSecurityGroupName
            
            options.cIDRIP
            
            options.eC2SecurityGroupName
            
            options.eC2SecurityGroupId
            
            options.eC2SecurityGroupOwnerId
            
        
        options = setOptions (AuthorizeDBSecurityGroupIngressOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "AuthorizeDBSecurityGroupIngress")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs authorizeDBSecurityGroupIngressMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AuthorizeDBSecurityGroupIngress"
                
                (AWS.Core.Decode.ResultDecoder "AuthorizeDBSecurityGroupIngressResult" authorizeDBSecurityGroupIngressResultDecoder)
                
            )



{-| Options for a authorizeDBSecurityGroupIngress request
-}
type alias AuthorizeDBSecurityGroupIngressOptions =
    {
    cIDRIP : Maybe String,eC2SecurityGroupName : Maybe String,eC2SecurityGroupId : Maybe String,eC2SecurityGroupOwnerId : Maybe String
    }



{-| <p>Backtracks a DB cluster to a specific time, without creating a new DB cluster.</p> <p>For more information on backtracking, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Managing.Backtrack.html"> Backtracking an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`
* `backtrackTo` __:__ `Posix`


-}

backtrackDBCluster :
  
    String ->
  
    Posix ->
  
  
    ( BacktrackDBClusterOptions -> BacktrackDBClusterOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBClusterBacktrack)

backtrackDBCluster dBClusterIdentifier backtrackTo setOptions =
    
    let
        requestInput = BacktrackDBClusterMessage
            
            dBClusterIdentifier
            
            backtrackTo
            
            options.force
            
            options.useEarliestTimeOnPointInTimeUnavailable
            
        
        options = setOptions (BacktrackDBClusterOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "BacktrackDBCluster")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs backtrackDBClusterMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BacktrackDBCluster"
                
                (AWS.Core.Decode.ResultDecoder "BacktrackDBClusterResult" dBClusterBacktrackDecoder)
                
            )



{-| Options for a backtrackDBCluster request
-}
type alias BacktrackDBClusterOptions =
    {
    force : Maybe Bool,useEarliestTimeOnPointInTimeUnavailable : Maybe Bool
    }



{-| <p>Copies the specified DB cluster parameter group.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `sourceDBClusterParameterGroupIdentifier` __:__ `String`
* `targetDBClusterParameterGroupIdentifier` __:__ `String`
* `targetDBClusterParameterGroupDescription` __:__ `String`


-}

copyDBClusterParameterGroup :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CopyDBClusterParameterGroupOptions -> CopyDBClusterParameterGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyDBClusterParameterGroupResult)

copyDBClusterParameterGroup sourceDBClusterParameterGroupIdentifier targetDBClusterParameterGroupIdentifier targetDBClusterParameterGroupDescription setOptions =
    
    let
        requestInput = CopyDBClusterParameterGroupMessage
            
            sourceDBClusterParameterGroupIdentifier
            
            targetDBClusterParameterGroupIdentifier
            
            targetDBClusterParameterGroupDescription
            
            options.tags
            
        
        options = setOptions (CopyDBClusterParameterGroupOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CopyDBClusterParameterGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs copyDBClusterParameterGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CopyDBClusterParameterGroup"
                
                (AWS.Core.Decode.ResultDecoder "CopyDBClusterParameterGroupResult" copyDBClusterParameterGroupResultDecoder)
                
            )



{-| Options for a copyDBClusterParameterGroup request
-}
type alias CopyDBClusterParameterGroupOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Copies a snapshot of a DB cluster.</p> <p>To copy a DB cluster snapshot from a shared manual DB cluster snapshot, <code>SourceDBClusterSnapshotIdentifier</code> must be the Amazon Resource Name (ARN) of the shared DB cluster snapshot.</p> <p>You can copy an encrypted DB cluster snapshot from another AWS Region. In that case, the AWS Region where you call the <code>CopyDBClusterSnapshot</code> action is the destination AWS Region for the encrypted DB cluster snapshot to be copied to. To copy an encrypted DB cluster snapshot from another AWS Region, you must provide the following values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The AWS Key Management System (AWS KMS) key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region.</p> </li> <li> <p> <code>PreSignedUrl</code> - A URL that contains a Signature Version 4 signed request for the <code>CopyDBClusterSnapshot</code> action to be called in the source AWS Region where the DB cluster snapshot is copied from. The pre-signed URL must be a valid request for the <code>CopyDBClusterSnapshot</code> API action that can be executed in the source AWS Region that contains the encrypted DB cluster snapshot to be copied.</p> <p>The pre-signed URL request must contain the following parameter values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. This is the same identifier for both the <code>CopyDBClusterSnapshot</code> action that is called in the destination AWS Region, and the action contained in the pre-signed URL.</p> </li> <li> <p> <code>DestinationRegion</code> - The name of the AWS Region that the DB cluster snapshot will be created in.</p> </li> <li> <p> <code>SourceDBClusterSnapshotIdentifier</code> - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster snapshot from the us-west-2 AWS Region, then your <code>SourceDBClusterSnapshotIdentifier</code> looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html"> Signature Version 4 Signing Process</a>.</p> </li> <li> <p> <code>TargetDBClusterSnapshotIdentifier</code> - The identifier for the new copy of the DB cluster snapshot in the destination AWS Region.</p> </li> <li> <p> <code>SourceDBClusterSnapshotIdentifier</code> - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the ARN format for the source AWS Region and is the same value as the <code>SourceDBClusterSnapshotIdentifier</code> in the pre-signed URL. </p> </li> </ul> <p>To cancel the copy operation once it is in progress, delete the target DB cluster snapshot identified by <code>TargetDBClusterSnapshotIdentifier</code> while that DB cluster snapshot is in "copying" status.</p> <p>For more information on copying encrypted DB cluster snapshots from one AWS Region to another, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html"> Copying a Snapshot</a> in the <i>Amazon Aurora User Guide.</i> </p> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `sourceDBClusterSnapshotIdentifier` __:__ `String`
* `targetDBClusterSnapshotIdentifier` __:__ `String`


-}

copyDBClusterSnapshot :
  
    String ->
  
    String ->
  
  
    ( CopyDBClusterSnapshotOptions -> CopyDBClusterSnapshotOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyDBClusterSnapshotResult)

copyDBClusterSnapshot sourceDBClusterSnapshotIdentifier targetDBClusterSnapshotIdentifier setOptions =
    
    let
        requestInput = CopyDBClusterSnapshotMessage
            
            sourceDBClusterSnapshotIdentifier
            
            targetDBClusterSnapshotIdentifier
            
            options.kmsKeyId
            
            options.preSignedUrl
            
            options.copyTags
            
            options.tags
            
            options.sourceRegion
            
        
        options = setOptions (CopyDBClusterSnapshotOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CopyDBClusterSnapshot")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs copyDBClusterSnapshotMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CopyDBClusterSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "CopyDBClusterSnapshotResult" copyDBClusterSnapshotResultDecoder)
                
            )



{-| Options for a copyDBClusterSnapshot request
-}
type alias CopyDBClusterSnapshotOptions =
    {
    kmsKeyId : Maybe String,preSignedUrl : Maybe String,copyTags : Maybe Bool,tags : Maybe (List Tag),sourceRegion : Maybe String
    }



{-| <p>Copies the specified DB parameter group.</p>

__Required Parameters__

* `sourceDBParameterGroupIdentifier` __:__ `String`
* `targetDBParameterGroupIdentifier` __:__ `String`
* `targetDBParameterGroupDescription` __:__ `String`


-}

copyDBParameterGroup :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CopyDBParameterGroupOptions -> CopyDBParameterGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyDBParameterGroupResult)

copyDBParameterGroup sourceDBParameterGroupIdentifier targetDBParameterGroupIdentifier targetDBParameterGroupDescription setOptions =
    
    let
        requestInput = CopyDBParameterGroupMessage
            
            sourceDBParameterGroupIdentifier
            
            targetDBParameterGroupIdentifier
            
            targetDBParameterGroupDescription
            
            options.tags
            
        
        options = setOptions (CopyDBParameterGroupOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CopyDBParameterGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs copyDBParameterGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CopyDBParameterGroup"
                
                (AWS.Core.Decode.ResultDecoder "CopyDBParameterGroupResult" copyDBParameterGroupResultDecoder)
                
            )



{-| Options for a copyDBParameterGroup request
-}
type alias CopyDBParameterGroupOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Copies the specified DB snapshot. The source DB snapshot must be in the "available" state.</p> <p>You can copy a snapshot from one AWS Region to another. In that case, the AWS Region where you call the <code>CopyDBSnapshot</code> action is the destination AWS Region for the DB snapshot copy. </p> <p>For more information about copying snapshots, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopyDBSnapshot.html">Copying a DB Snapshot</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `sourceDBSnapshotIdentifier` __:__ `String`
* `targetDBSnapshotIdentifier` __:__ `String`


-}

copyDBSnapshot :
  
    String ->
  
    String ->
  
  
    ( CopyDBSnapshotOptions -> CopyDBSnapshotOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyDBSnapshotResult)

copyDBSnapshot sourceDBSnapshotIdentifier targetDBSnapshotIdentifier setOptions =
    
    let
        requestInput = CopyDBSnapshotMessage
            
            sourceDBSnapshotIdentifier
            
            targetDBSnapshotIdentifier
            
            options.kmsKeyId
            
            options.tags
            
            options.copyTags
            
            options.preSignedUrl
            
            options.optionGroupName
            
            options.sourceRegion
            
        
        options = setOptions (CopyDBSnapshotOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CopyDBSnapshot")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs copyDBSnapshotMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CopyDBSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "CopyDBSnapshotResult" copyDBSnapshotResultDecoder)
                
            )



{-| Options for a copyDBSnapshot request
-}
type alias CopyDBSnapshotOptions =
    {
    kmsKeyId : Maybe String,tags : Maybe (List Tag),copyTags : Maybe Bool,preSignedUrl : Maybe String,optionGroupName : Maybe String,sourceRegion : Maybe String
    }



{-| <p>Copies the specified option group.</p>

__Required Parameters__

* `sourceOptionGroupIdentifier` __:__ `String`
* `targetOptionGroupIdentifier` __:__ `String`
* `targetOptionGroupDescription` __:__ `String`


-}

copyOptionGroup :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CopyOptionGroupOptions -> CopyOptionGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyOptionGroupResult)

copyOptionGroup sourceOptionGroupIdentifier targetOptionGroupIdentifier targetOptionGroupDescription setOptions =
    
    let
        requestInput = CopyOptionGroupMessage
            
            sourceOptionGroupIdentifier
            
            targetOptionGroupIdentifier
            
            targetOptionGroupDescription
            
            options.tags
            
        
        options = setOptions (CopyOptionGroupOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CopyOptionGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs copyOptionGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CopyOptionGroup"
                
                (AWS.Core.Decode.ResultDecoder "CopyOptionGroupResult" copyOptionGroupResultDecoder)
                
            )



{-| Options for a copyOptionGroup request
-}
type alias CopyOptionGroupOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates a new Amazon Aurora DB cluster.</p> <p>You can use the <code>ReplicationSourceIdentifier</code> parameter to create the DB cluster as a Read Replica of another DB cluster or Amazon RDS MySQL DB instance. For cross-region replication where the DB cluster identified by <code>ReplicationSourceIdentifier</code> is encrypted, you must also specify the <code>PreSignedUrl</code> parameter.</p> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`
* `engine` __:__ `String`


-}

createDBCluster :
  
    String ->
  
    String ->
  
  
    ( CreateDBClusterOptions -> CreateDBClusterOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDBClusterResult)

createDBCluster dBClusterIdentifier engine setOptions =
    
    let
        requestInput = CreateDBClusterMessage
            
            options.availabilityZones
            
            options.backupRetentionPeriod
            
            options.characterSetName
            
            options.databaseName
            
            dBClusterIdentifier
            
            options.dBClusterParameterGroupName
            
            options.vpcSecurityGroupIds
            
            options.dBSubnetGroupName
            
            engine
            
            options.engineVersion
            
            options.port_
            
            options.masterUsername
            
            options.masterUserPassword
            
            options.optionGroupName
            
            options.preferredBackupWindow
            
            options.preferredMaintenanceWindow
            
            options.replicationSourceIdentifier
            
            options.tags
            
            options.storageEncrypted
            
            options.kmsKeyId
            
            options.preSignedUrl
            
            options.enableIAMDatabaseAuthentication
            
            options.backtrackWindow
            
            options.enableCloudwatchLogsExports
            
            options.engineMode
            
            options.scalingConfiguration
            
            options.deletionProtection
            
            options.globalClusterIdentifier
            
            options.copyTagsToSnapshot
            
            options.sourceRegion
            
        
        options = setOptions (CreateDBClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateDBCluster")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createDBClusterMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDBCluster"
                
                (AWS.Core.Decode.ResultDecoder "CreateDBClusterResult" createDBClusterResultDecoder)
                
            )



{-| Options for a createDBCluster request
-}
type alias CreateDBClusterOptions =
    {
    availabilityZones : Maybe (List String),backupRetentionPeriod : Maybe Int,characterSetName : Maybe String,databaseName : Maybe String,dBClusterParameterGroupName : Maybe String,vpcSecurityGroupIds : Maybe (List String),dBSubnetGroupName : Maybe String,engineVersion : Maybe String,port_ : Maybe Int,masterUsername : Maybe String,masterUserPassword : Maybe String,optionGroupName : Maybe String,preferredBackupWindow : Maybe String,preferredMaintenanceWindow : Maybe String,replicationSourceIdentifier : Maybe String,tags : Maybe (List Tag),storageEncrypted : Maybe Bool,kmsKeyId : Maybe String,preSignedUrl : Maybe String,enableIAMDatabaseAuthentication : Maybe Bool,backtrackWindow : Maybe Int,enableCloudwatchLogsExports : Maybe (List String),engineMode : Maybe String,scalingConfiguration : Maybe ScalingConfiguration,deletionProtection : Maybe Bool,globalClusterIdentifier : Maybe String,copyTagsToSnapshot : Maybe Bool,sourceRegion : Maybe String
    }



{-| <p>Creates a new custom endpoint and associates it with an Amazon Aurora DB cluster.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`
* `dBClusterEndpointIdentifier` __:__ `String`
* `endpointType` __:__ `String`


-}

createDBClusterEndpoint :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateDBClusterEndpointOptions -> CreateDBClusterEndpointOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBClusterEndpoint)

createDBClusterEndpoint dBClusterIdentifier dBClusterEndpointIdentifier endpointType setOptions =
    
    let
        requestInput = CreateDBClusterEndpointMessage
            
            dBClusterIdentifier
            
            dBClusterEndpointIdentifier
            
            endpointType
            
            options.staticMembers
            
            options.excludedMembers
            
        
        options = setOptions (CreateDBClusterEndpointOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateDBClusterEndpoint")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createDBClusterEndpointMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDBClusterEndpoint"
                
                (AWS.Core.Decode.ResultDecoder "CreateDBClusterEndpointResult" dBClusterEndpointDecoder)
                
            )



{-| Options for a createDBClusterEndpoint request
-}
type alias CreateDBClusterEndpointOptions =
    {
    staticMembers : Maybe (List String),excludedMembers : Maybe (List String)
    }



{-| <p>Creates a new DB cluster parameter group.</p> <p>Parameters in a DB cluster parameter group apply to all of the instances in a DB cluster.</p> <p> A DB cluster parameter group is initially created with the default parameters for the database engine used by instances in the DB cluster. To provide custom values for any of the parameters, you must modify the group after creating it using <code>ModifyDBClusterParameterGroup</code>. Once you've created a DB cluster parameter group, you need to associate it with your DB cluster using <code>ModifyDBCluster</code>. When you associate a new DB cluster parameter group with a running DB cluster, you need to reboot the DB instances in the DB cluster without failover for the new DB cluster parameter group and associated settings to take effect. </p> <important> <p>After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon RDS to fully complete the create action before the DB cluster parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the <code>character_set_database</code> parameter. You can use the <i>Parameter Groups</i> option of the <a href="https://console.aws.amazon.com/rds/">Amazon RDS console</a> or the <code>DescribeDBClusterParameters</code> action to verify that your DB cluster parameter group has been created or modified.</p> </important> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterParameterGroupName` __:__ `String`
* `dBParameterGroupFamily` __:__ `String`
* `description` __:__ `String`


-}

createDBClusterParameterGroup :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateDBClusterParameterGroupOptions -> CreateDBClusterParameterGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDBClusterParameterGroupResult)

createDBClusterParameterGroup dBClusterParameterGroupName dBParameterGroupFamily description setOptions =
    
    let
        requestInput = CreateDBClusterParameterGroupMessage
            
            dBClusterParameterGroupName
            
            dBParameterGroupFamily
            
            description
            
            options.tags
            
        
        options = setOptions (CreateDBClusterParameterGroupOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateDBClusterParameterGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createDBClusterParameterGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDBClusterParameterGroup"
                
                (AWS.Core.Decode.ResultDecoder "CreateDBClusterParameterGroupResult" createDBClusterParameterGroupResultDecoder)
                
            )



{-| Options for a createDBClusterParameterGroup request
-}
type alias CreateDBClusterParameterGroupOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates a snapshot of a DB cluster. For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterSnapshotIdentifier` __:__ `String`
* `dBClusterIdentifier` __:__ `String`


-}

createDBClusterSnapshot :
  
    String ->
  
    String ->
  
  
    ( CreateDBClusterSnapshotOptions -> CreateDBClusterSnapshotOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDBClusterSnapshotResult)

createDBClusterSnapshot dBClusterSnapshotIdentifier dBClusterIdentifier setOptions =
    
    let
        requestInput = CreateDBClusterSnapshotMessage
            
            dBClusterSnapshotIdentifier
            
            dBClusterIdentifier
            
            options.tags
            
        
        options = setOptions (CreateDBClusterSnapshotOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateDBClusterSnapshot")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createDBClusterSnapshotMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDBClusterSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "CreateDBClusterSnapshotResult" createDBClusterSnapshotResultDecoder)
                
            )



{-| Options for a createDBClusterSnapshot request
-}
type alias CreateDBClusterSnapshotOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates a new DB instance.</p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`
* `dBInstanceClass` __:__ `String`
* `engine` __:__ `String`


-}

createDBInstance :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateDBInstanceOptions -> CreateDBInstanceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDBInstanceResult)

createDBInstance dBInstanceIdentifier dBInstanceClass engine setOptions =
    
    let
        requestInput = CreateDBInstanceMessage
            
            options.dBName
            
            dBInstanceIdentifier
            
            options.allocatedStorage
            
            dBInstanceClass
            
            engine
            
            options.masterUsername
            
            options.masterUserPassword
            
            options.dBSecurityGroups
            
            options.vpcSecurityGroupIds
            
            options.availabilityZone
            
            options.dBSubnetGroupName
            
            options.preferredMaintenanceWindow
            
            options.dBParameterGroupName
            
            options.backupRetentionPeriod
            
            options.preferredBackupWindow
            
            options.port_
            
            options.multiAZ
            
            options.engineVersion
            
            options.autoMinorVersionUpgrade
            
            options.licenseModel
            
            options.iops
            
            options.optionGroupName
            
            options.characterSetName
            
            options.publiclyAccessible
            
            options.tags
            
            options.dBClusterIdentifier
            
            options.storageType
            
            options.tdeCredentialArn
            
            options.tdeCredentialPassword
            
            options.storageEncrypted
            
            options.kmsKeyId
            
            options.domain
            
            options.copyTagsToSnapshot
            
            options.monitoringInterval
            
            options.monitoringRoleArn
            
            options.domainIAMRoleName
            
            options.promotionTier
            
            options.timezone
            
            options.enableIAMDatabaseAuthentication
            
            options.enablePerformanceInsights
            
            options.performanceInsightsKMSKeyId
            
            options.performanceInsightsRetentionPeriod
            
            options.enableCloudwatchLogsExports
            
            options.processorFeatures
            
            options.deletionProtection
            
            options.maxAllocatedStorage
            
        
        options = setOptions (CreateDBInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateDBInstance")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createDBInstanceMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDBInstance"
                
                (AWS.Core.Decode.ResultDecoder "CreateDBInstanceResult" createDBInstanceResultDecoder)
                
            )



{-| Options for a createDBInstance request
-}
type alias CreateDBInstanceOptions =
    {
    dBName : Maybe String,allocatedStorage : Maybe Int,masterUsername : Maybe String,masterUserPassword : Maybe String,dBSecurityGroups : Maybe (List String),vpcSecurityGroupIds : Maybe (List String),availabilityZone : Maybe String,dBSubnetGroupName : Maybe String,preferredMaintenanceWindow : Maybe String,dBParameterGroupName : Maybe String,backupRetentionPeriod : Maybe Int,preferredBackupWindow : Maybe String,port_ : Maybe Int,multiAZ : Maybe Bool,engineVersion : Maybe String,autoMinorVersionUpgrade : Maybe Bool,licenseModel : Maybe String,iops : Maybe Int,optionGroupName : Maybe String,characterSetName : Maybe String,publiclyAccessible : Maybe Bool,tags : Maybe (List Tag),dBClusterIdentifier : Maybe String,storageType : Maybe String,tdeCredentialArn : Maybe String,tdeCredentialPassword : Maybe String,storageEncrypted : Maybe Bool,kmsKeyId : Maybe String,domain : Maybe String,copyTagsToSnapshot : Maybe Bool,monitoringInterval : Maybe Int,monitoringRoleArn : Maybe String,domainIAMRoleName : Maybe String,promotionTier : Maybe Int,timezone : Maybe String,enableIAMDatabaseAuthentication : Maybe Bool,enablePerformanceInsights : Maybe Bool,performanceInsightsKMSKeyId : Maybe String,performanceInsightsRetentionPeriod : Maybe Int,enableCloudwatchLogsExports : Maybe (List String),processorFeatures : Maybe (List ProcessorFeature),deletionProtection : Maybe Bool,maxAllocatedStorage : Maybe Int
    }



{-| <p>Creates a new DB instance that acts as a Read Replica for an existing source DB instance. You can create a Read Replica for a DB instance running MySQL, MariaDB, Oracle, or PostgreSQL. For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html">Working with Read Replicas</a> in the <i>Amazon RDS User Guide</i>. </p> <p>Amazon Aurora doesn't support this action. You must call the <code>CreateDBInstance</code> action to create a DB instance for an Aurora DB cluster. </p> <p>All Read Replica DB instances are created with backups disabled. All other DB instance attributes (including DB security groups and DB parameter groups) are inherited from the source DB instance, except as specified following. </p> <important> <p>Your source DB instance must have backup retention enabled. </p> </important>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`
* `sourceDBInstanceIdentifier` __:__ `String`


-}

createDBInstanceReadReplica :
  
    String ->
  
    String ->
  
  
    ( CreateDBInstanceReadReplicaOptions -> CreateDBInstanceReadReplicaOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDBInstanceReadReplicaResult)

createDBInstanceReadReplica dBInstanceIdentifier sourceDBInstanceIdentifier setOptions =
    
    let
        requestInput = CreateDBInstanceReadReplicaMessage
            
            dBInstanceIdentifier
            
            sourceDBInstanceIdentifier
            
            options.dBInstanceClass
            
            options.availabilityZone
            
            options.port_
            
            options.multiAZ
            
            options.autoMinorVersionUpgrade
            
            options.iops
            
            options.optionGroupName
            
            options.publiclyAccessible
            
            options.tags
            
            options.dBSubnetGroupName
            
            options.vpcSecurityGroupIds
            
            options.storageType
            
            options.copyTagsToSnapshot
            
            options.monitoringInterval
            
            options.monitoringRoleArn
            
            options.kmsKeyId
            
            options.preSignedUrl
            
            options.enableIAMDatabaseAuthentication
            
            options.enablePerformanceInsights
            
            options.performanceInsightsKMSKeyId
            
            options.performanceInsightsRetentionPeriod
            
            options.enableCloudwatchLogsExports
            
            options.processorFeatures
            
            options.useDefaultProcessorFeatures
            
            options.deletionProtection
            
            options.sourceRegion
            
        
        options = setOptions (CreateDBInstanceReadReplicaOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateDBInstanceReadReplica")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createDBInstanceReadReplicaMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDBInstanceReadReplica"
                
                (AWS.Core.Decode.ResultDecoder "CreateDBInstanceReadReplicaResult" createDBInstanceReadReplicaResultDecoder)
                
            )



{-| Options for a createDBInstanceReadReplica request
-}
type alias CreateDBInstanceReadReplicaOptions =
    {
    dBInstanceClass : Maybe String,availabilityZone : Maybe String,port_ : Maybe Int,multiAZ : Maybe Bool,autoMinorVersionUpgrade : Maybe Bool,iops : Maybe Int,optionGroupName : Maybe String,publiclyAccessible : Maybe Bool,tags : Maybe (List Tag),dBSubnetGroupName : Maybe String,vpcSecurityGroupIds : Maybe (List String),storageType : Maybe String,copyTagsToSnapshot : Maybe Bool,monitoringInterval : Maybe Int,monitoringRoleArn : Maybe String,kmsKeyId : Maybe String,preSignedUrl : Maybe String,enableIAMDatabaseAuthentication : Maybe Bool,enablePerformanceInsights : Maybe Bool,performanceInsightsKMSKeyId : Maybe String,performanceInsightsRetentionPeriod : Maybe Int,enableCloudwatchLogsExports : Maybe (List String),processorFeatures : Maybe (List ProcessorFeature),useDefaultProcessorFeatures : Maybe Bool,deletionProtection : Maybe Bool,sourceRegion : Maybe String
    }



{-| <p>Creates a new DB parameter group.</p> <p> A DB parameter group is initially created with the default parameters for the database engine used by the DB instance. To provide custom values for any of the parameters, you must modify the group after creating it using <i>ModifyDBParameterGroup</i>. Once you've created a DB parameter group, you need to associate it with your DB instance using <i>ModifyDBInstance</i>. When you associate a new DB parameter group with a running DB instance, you need to reboot the DB instance without failover for the new DB parameter group and associated settings to take effect. </p> <important> <p>After you create a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon RDS to fully complete the create action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the <code>character_set_database</code> parameter. You can use the <i>Parameter Groups</i> option of the <a href="https://console.aws.amazon.com/rds/">Amazon RDS console</a> or the <i>DescribeDBParameters</i> command to verify that your DB parameter group has been created or modified.</p> </important>

__Required Parameters__

* `dBParameterGroupName` __:__ `String`
* `dBParameterGroupFamily` __:__ `String`
* `description` __:__ `String`


-}

createDBParameterGroup :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateDBParameterGroupOptions -> CreateDBParameterGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDBParameterGroupResult)

createDBParameterGroup dBParameterGroupName dBParameterGroupFamily description setOptions =
    
    let
        requestInput = CreateDBParameterGroupMessage
            
            dBParameterGroupName
            
            dBParameterGroupFamily
            
            description
            
            options.tags
            
        
        options = setOptions (CreateDBParameterGroupOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateDBParameterGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createDBParameterGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDBParameterGroup"
                
                (AWS.Core.Decode.ResultDecoder "CreateDBParameterGroupResult" createDBParameterGroupResultDecoder)
                
            )



{-| Options for a createDBParameterGroup request
-}
type alias CreateDBParameterGroupOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates a new DB security group. DB security groups control access to a DB instance.</p> <note> <p>A DB security group controls access to EC2-Classic DB instances that are not in a VPC.</p> </note>

__Required Parameters__

* `dBSecurityGroupName` __:__ `String`
* `dBSecurityGroupDescription` __:__ `String`


-}

createDBSecurityGroup :
  
    String ->
  
    String ->
  
  
    ( CreateDBSecurityGroupOptions -> CreateDBSecurityGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDBSecurityGroupResult)

createDBSecurityGroup dBSecurityGroupName dBSecurityGroupDescription setOptions =
    
    let
        requestInput = CreateDBSecurityGroupMessage
            
            dBSecurityGroupName
            
            dBSecurityGroupDescription
            
            options.tags
            
        
        options = setOptions (CreateDBSecurityGroupOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateDBSecurityGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createDBSecurityGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDBSecurityGroup"
                
                (AWS.Core.Decode.ResultDecoder "CreateDBSecurityGroupResult" createDBSecurityGroupResultDecoder)
                
            )



{-| Options for a createDBSecurityGroup request
-}
type alias CreateDBSecurityGroupOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates a DBSnapshot. The source DBInstance must be in "available" state.</p>

__Required Parameters__

* `dBSnapshotIdentifier` __:__ `String`
* `dBInstanceIdentifier` __:__ `String`


-}

createDBSnapshot :
  
    String ->
  
    String ->
  
  
    ( CreateDBSnapshotOptions -> CreateDBSnapshotOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDBSnapshotResult)

createDBSnapshot dBSnapshotIdentifier dBInstanceIdentifier setOptions =
    
    let
        requestInput = CreateDBSnapshotMessage
            
            dBSnapshotIdentifier
            
            dBInstanceIdentifier
            
            options.tags
            
        
        options = setOptions (CreateDBSnapshotOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateDBSnapshot")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createDBSnapshotMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDBSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "CreateDBSnapshotResult" createDBSnapshotResultDecoder)
                
            )



{-| Options for a createDBSnapshot request
-}
type alias CreateDBSnapshotOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates a new DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.</p>

__Required Parameters__

* `dBSubnetGroupName` __:__ `String`
* `dBSubnetGroupDescription` __:__ `String`
* `subnetIds` __:__ `(List String)`


-}

createDBSubnetGroup :
  
    String ->
  
    String ->
  
    (List String) ->
  
  
    ( CreateDBSubnetGroupOptions -> CreateDBSubnetGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDBSubnetGroupResult)

createDBSubnetGroup dBSubnetGroupName dBSubnetGroupDescription subnetIds setOptions =
    
    let
        requestInput = CreateDBSubnetGroupMessage
            
            dBSubnetGroupName
            
            dBSubnetGroupDescription
            
            subnetIds
            
            options.tags
            
        
        options = setOptions (CreateDBSubnetGroupOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateDBSubnetGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createDBSubnetGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDBSubnetGroup"
                
                (AWS.Core.Decode.ResultDecoder "CreateDBSubnetGroupResult" createDBSubnetGroupResultDecoder)
                
            )



{-| Options for a createDBSubnetGroup request
-}
type alias CreateDBSubnetGroupOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates an RDS event notification subscription. This action requires a topic ARN (Amazon Resource Name) created by either the RDS console, the SNS console, or the SNS API. To obtain an ARN with SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console.</p> <p>You can specify the type of source (SourceType) you want to be notified of, provide a list of RDS sources (SourceIds) that triggers the events, and provide a list of event categories (EventCategories) for events you want to be notified of. For example, you can specify SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and EventCategories = Availability, Backup.</p> <p>If you specify both the SourceType and SourceIds, such as SourceType = db-instance and SourceIdentifier = myDBInstance1, you are notified of all the db-instance events for the specified source. If you specify a SourceType but do not specify a SourceIdentifier, you receive notice of the events for that source type for all your RDS sources. If you do not specify either the SourceType nor the SourceIdentifier, you are notified of events generated from all RDS sources belonging to your customer account.</p>

__Required Parameters__

* `subscriptionName` __:__ `String`
* `snsTopicArn` __:__ `String`


-}

createEventSubscription :
  
    String ->
  
    String ->
  
  
    ( CreateEventSubscriptionOptions -> CreateEventSubscriptionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateEventSubscriptionResult)

createEventSubscription subscriptionName snsTopicArn setOptions =
    
    let
        requestInput = CreateEventSubscriptionMessage
            
            subscriptionName
            
            snsTopicArn
            
            options.sourceType
            
            options.eventCategories
            
            options.sourceIds
            
            options.enabled
            
            options.tags
            
        
        options = setOptions (CreateEventSubscriptionOptions Nothing Nothing Nothing Nothing Nothing)
        
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
    {
    sourceType : Maybe String,eventCategories : Maybe (List String),sourceIds : Maybe (List String),enabled : Maybe Bool,tags : Maybe (List Tag)
    }



{-| <p> </p> <p> Creates an Aurora global database spread across multiple regions. The global database contains a single primary cluster with read-write capability, and a read-only secondary cluster that receives data from the primary cluster through high-speed replication performed by the Aurora storage subsystem. </p> <p> You can create a global database that is initially empty, and then add a primary cluster and a secondary cluster to it. Or you can specify an existing Aurora cluster during the create operation, and this cluster becomes the primary cluster of the global database. </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__



-}

createGlobalCluster :
  
  
    ( CreateGlobalClusterOptions -> CreateGlobalClusterOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateGlobalClusterResult)

createGlobalCluster setOptions =
    
    let
        requestInput = CreateGlobalClusterMessage
            
            options.globalClusterIdentifier
            
            options.sourceDBClusterIdentifier
            
            options.engine
            
            options.engineVersion
            
            options.deletionProtection
            
            options.databaseName
            
            options.storageEncrypted
            
        
        options = setOptions (CreateGlobalClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateGlobalCluster")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createGlobalClusterMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateGlobalCluster"
                
                (AWS.Core.Decode.ResultDecoder "CreateGlobalClusterResult" createGlobalClusterResultDecoder)
                
            )



{-| Options for a createGlobalCluster request
-}
type alias CreateGlobalClusterOptions =
    {
    globalClusterIdentifier : Maybe String,sourceDBClusterIdentifier : Maybe String,engine : Maybe String,engineVersion : Maybe String,deletionProtection : Maybe Bool,databaseName : Maybe String,storageEncrypted : Maybe Bool
    }



{-| <p>Creates a new option group. You can create up to 20 option groups.</p>

__Required Parameters__

* `optionGroupName` __:__ `String`
* `engineName` __:__ `String`
* `majorEngineVersion` __:__ `String`
* `optionGroupDescription` __:__ `String`


-}

createOptionGroup :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateOptionGroupOptions -> CreateOptionGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateOptionGroupResult)

createOptionGroup optionGroupName engineName majorEngineVersion optionGroupDescription setOptions =
    
    let
        requestInput = CreateOptionGroupMessage
            
            optionGroupName
            
            engineName
            
            majorEngineVersion
            
            optionGroupDescription
            
            options.tags
            
        
        options = setOptions (CreateOptionGroupOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateOptionGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createOptionGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateOptionGroup"
                
                (AWS.Core.Decode.ResultDecoder "CreateOptionGroupResult" createOptionGroupResultDecoder)
                
            )



{-| Options for a createOptionGroup request
-}
type alias CreateOptionGroupOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>The DeleteDBCluster action deletes a previously provisioned DB cluster. When you delete a DB cluster, all automated backups for that DB cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified DB cluster are not deleted.</p> <p/> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`


-}

deleteDBCluster :
  
    String ->
  
  
    ( DeleteDBClusterOptions -> DeleteDBClusterOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDBClusterResult)

deleteDBCluster dBClusterIdentifier setOptions =
    
    let
        requestInput = DeleteDBClusterMessage
            
            dBClusterIdentifier
            
            options.skipFinalSnapshot
            
            options.finalDBSnapshotIdentifier
            
        
        options = setOptions (DeleteDBClusterOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteDBCluster")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteDBClusterMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDBCluster"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDBClusterResult" deleteDBClusterResultDecoder)
                
            )



{-| Options for a deleteDBCluster request
-}
type alias DeleteDBClusterOptions =
    {
    skipFinalSnapshot : Maybe Bool,finalDBSnapshotIdentifier : Maybe String
    }



{-| <p>Deletes a custom endpoint and removes it from an Amazon Aurora DB cluster.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterEndpointIdentifier` __:__ `String`


-}

deleteDBClusterEndpoint :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBClusterEndpoint)

deleteDBClusterEndpoint dBClusterEndpointIdentifier =
    
    let
        requestInput = DeleteDBClusterEndpointMessage
            
            dBClusterEndpointIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteDBClusterEndpoint")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteDBClusterEndpointMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDBClusterEndpoint"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDBClusterEndpointResult" dBClusterEndpointDecoder)
                
            )





{-| <p>Deletes a specified DB cluster parameter group. The DB cluster parameter group to be deleted can't be associated with any DB clusters.</p> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterParameterGroupName` __:__ `String`


-}

deleteDBClusterParameterGroup :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteDBClusterParameterGroup dBClusterParameterGroupName =
    
    let
        requestInput = DeleteDBClusterParameterGroupMessage
            
            dBClusterParameterGroupName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteDBClusterParameterGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteDBClusterParameterGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDBClusterParameterGroup"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a DB cluster snapshot. If the snapshot is being copied, the copy operation is terminated.</p> <note> <p>The DB cluster snapshot must be in the <code>available</code> state to be deleted.</p> </note> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterSnapshotIdentifier` __:__ `String`


-}

deleteDBClusterSnapshot :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDBClusterSnapshotResult)

deleteDBClusterSnapshot dBClusterSnapshotIdentifier =
    
    let
        requestInput = DeleteDBClusterSnapshotMessage
            
            dBClusterSnapshotIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteDBClusterSnapshot")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteDBClusterSnapshotMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDBClusterSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDBClusterSnapshotResult" deleteDBClusterSnapshotResultDecoder)
                
            )





{-| <p>The DeleteDBInstance action deletes a previously provisioned DB instance. When you delete a DB instance, all automated backups for that instance are deleted and can't be recovered. Manual DB snapshots of the DB instance to be deleted by <code>DeleteDBInstance</code> are not deleted.</p> <p> If you request a final DB snapshot the status of the Amazon RDS DB instance is <code>deleting</code> until the DB snapshot is created. The API action <code>DescribeDBInstance</code> is used to monitor the status of this operation. The action can't be canceled or reverted once submitted. </p> <p>Note that when a DB instance is in a failure state and has a status of <code>failed</code>, <code>incompatible-restore</code>, or <code>incompatible-network</code>, you can only delete it when you skip creation of the final snapshot with the <code>SkipFinalSnapshot</code> parameter.</p> <p>If the specified DB instance is part of an Amazon Aurora DB cluster, you can't delete the DB instance if both of the following conditions are true:</p> <ul> <li> <p>The DB cluster is a Read Replica of another Amazon Aurora DB cluster.</p> </li> <li> <p>The DB instance is the only instance in the DB cluster.</p> </li> </ul> <p>To delete a DB instance in this case, first call the <code>PromoteReadReplicaDBCluster</code> API action to promote the DB cluster so it's no longer a Read Replica. After the promotion completes, then call the <code>DeleteDBInstance</code> API action to delete the final instance in the DB cluster.</p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`


-}

deleteDBInstance :
  
    String ->
  
  
    ( DeleteDBInstanceOptions -> DeleteDBInstanceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDBInstanceResult)

deleteDBInstance dBInstanceIdentifier setOptions =
    
    let
        requestInput = DeleteDBInstanceMessage
            
            dBInstanceIdentifier
            
            options.skipFinalSnapshot
            
            options.finalDBSnapshotIdentifier
            
            options.deleteAutomatedBackups
            
        
        options = setOptions (DeleteDBInstanceOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteDBInstance")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteDBInstanceMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDBInstance"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDBInstanceResult" deleteDBInstanceResultDecoder)
                
            )



{-| Options for a deleteDBInstance request
-}
type alias DeleteDBInstanceOptions =
    {
    skipFinalSnapshot : Maybe Bool,finalDBSnapshotIdentifier : Maybe String,deleteAutomatedBackups : Maybe Bool
    }



{-| <p>Deletes automated backups based on the source instance's <code>DbiResourceId</code> value or the restorable instance's resource ID.</p>

__Required Parameters__

* `dbiResourceId` __:__ `String`


-}

deleteDBInstanceAutomatedBackup :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDBInstanceAutomatedBackupResult)

deleteDBInstanceAutomatedBackup dbiResourceId =
    
    let
        requestInput = DeleteDBInstanceAutomatedBackupMessage
            
            dbiResourceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteDBInstanceAutomatedBackup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteDBInstanceAutomatedBackupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDBInstanceAutomatedBackup"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDBInstanceAutomatedBackupResult" deleteDBInstanceAutomatedBackupResultDecoder)
                
            )





{-| <p>Deletes a specified DB parameter group. The DB parameter group to be deleted can't be associated with any DB instances.</p>

__Required Parameters__

* `dBParameterGroupName` __:__ `String`


-}

deleteDBParameterGroup :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteDBParameterGroup dBParameterGroupName =
    
    let
        requestInput = DeleteDBParameterGroupMessage
            
            dBParameterGroupName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteDBParameterGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteDBParameterGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDBParameterGroup"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a DB security group.</p> <note> <p>The specified DB security group must not be associated with any DB instances.</p> </note>

__Required Parameters__

* `dBSecurityGroupName` __:__ `String`


-}

deleteDBSecurityGroup :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteDBSecurityGroup dBSecurityGroupName =
    
    let
        requestInput = DeleteDBSecurityGroupMessage
            
            dBSecurityGroupName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteDBSecurityGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteDBSecurityGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDBSecurityGroup"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a DB snapshot. If the snapshot is being copied, the copy operation is terminated.</p> <note> <p>The DB snapshot must be in the <code>available</code> state to be deleted.</p> </note>

__Required Parameters__

* `dBSnapshotIdentifier` __:__ `String`


-}

deleteDBSnapshot :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDBSnapshotResult)

deleteDBSnapshot dBSnapshotIdentifier =
    
    let
        requestInput = DeleteDBSnapshotMessage
            
            dBSnapshotIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteDBSnapshot")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteDBSnapshotMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDBSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDBSnapshotResult" deleteDBSnapshotResultDecoder)
                
            )





{-| <p>Deletes a DB subnet group.</p> <note> <p>The specified database subnet group must not be associated with any DB instances.</p> </note>

__Required Parameters__

* `dBSubnetGroupName` __:__ `String`


-}

deleteDBSubnetGroup :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteDBSubnetGroup dBSubnetGroupName =
    
    let
        requestInput = DeleteDBSubnetGroupMessage
            
            dBSubnetGroupName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteDBSubnetGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteDBSubnetGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDBSubnetGroup"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes an RDS event notification subscription.</p>

__Required Parameters__

* `subscriptionName` __:__ `String`


-}

deleteEventSubscription :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteEventSubscriptionResult)

deleteEventSubscription subscriptionName =
    
    let
        requestInput = DeleteEventSubscriptionMessage
            
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
                
                (AWS.Core.Decode.ResultDecoder "DeleteEventSubscriptionResult" deleteEventSubscriptionResultDecoder)
                
            )





{-| <p> Deletes a global database cluster. The primary and secondary clusters must already be detached or destroyed first. </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `globalClusterIdentifier` __:__ `String`


-}

deleteGlobalCluster :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteGlobalClusterResult)

deleteGlobalCluster globalClusterIdentifier =
    
    let
        requestInput = DeleteGlobalClusterMessage
            
            globalClusterIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteGlobalCluster")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteGlobalClusterMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteGlobalCluster"
                
                (AWS.Core.Decode.ResultDecoder "DeleteGlobalClusterResult" deleteGlobalClusterResultDecoder)
                
            )





{-| <p>Deletes an existing option group.</p>

__Required Parameters__

* `optionGroupName` __:__ `String`


-}

deleteOptionGroup :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteOptionGroup optionGroupName =
    
    let
        requestInput = DeleteOptionGroupMessage
            
            optionGroupName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteOptionGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteOptionGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteOptionGroup"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Lists all of the attributes for a customer account. The attributes include Amazon RDS quotas for the account, such as the number of DB instances allowed. The description for a quota includes the quota name, current usage toward that quota, and the quota's maximum value.</p> <p>This command doesn't take any parameters.</p>

__Required Parameters__



-}

describeAccountAttributes :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AccountAttributesMessage)

describeAccountAttributes =
    
    let
        requestInput = DescribeAccountAttributesMessage
            
        
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
                
                (AWS.Core.Decode.ResultDecoder "DescribeAccountAttributesResult" accountAttributesMessageDecoder)
                
            )





{-| <p>Lists the set of CA certificates provided by Amazon RDS for this AWS account.</p>

__Required Parameters__



-}

describeCertificates :
  
  
    ( DescribeCertificatesOptions -> DescribeCertificatesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CertificateMessage)

describeCertificates setOptions =
    
    let
        requestInput = DescribeCertificatesMessage
            
            options.certificateIdentifier
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeCertificatesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeCertificates")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeCertificatesMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeCertificates"
                
                (AWS.Core.Decode.ResultDecoder "DescribeCertificatesResult" certificateMessageDecoder)
                
            )



{-| Options for a describeCertificates request
-}
type alias DescribeCertificatesOptions =
    {
    certificateIdentifier : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Returns information about backtracks for a DB cluster.</p> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`


-}

describeDBClusterBacktracks :
  
    String ->
  
  
    ( DescribeDBClusterBacktracksOptions -> DescribeDBClusterBacktracksOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBClusterBacktrackMessage)

describeDBClusterBacktracks dBClusterIdentifier setOptions =
    
    let
        requestInput = DescribeDBClusterBacktracksMessage
            
            dBClusterIdentifier
            
            options.backtrackIdentifier
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeDBClusterBacktracksOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBClusterBacktracks")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBClusterBacktracksMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBClusterBacktracks"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBClusterBacktracksResult" dBClusterBacktrackMessageDecoder)
                
            )



{-| Options for a describeDBClusterBacktracks request
-}
type alias DescribeDBClusterBacktracksOptions =
    {
    backtrackIdentifier : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Returns information about endpoints for an Amazon Aurora DB cluster.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__



-}

describeDBClusterEndpoints :
  
  
    ( DescribeDBClusterEndpointsOptions -> DescribeDBClusterEndpointsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBClusterEndpointMessage)

describeDBClusterEndpoints setOptions =
    
    let
        requestInput = DescribeDBClusterEndpointsMessage
            
            options.dBClusterIdentifier
            
            options.dBClusterEndpointIdentifier
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeDBClusterEndpointsOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBClusterEndpoints")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBClusterEndpointsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBClusterEndpoints"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBClusterEndpointsResult" dBClusterEndpointMessageDecoder)
                
            )



{-| Options for a describeDBClusterEndpoints request
-}
type alias DescribeDBClusterEndpointsOptions =
    {
    dBClusterIdentifier : Maybe String,dBClusterEndpointIdentifier : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p> Returns a list of <code>DBClusterParameterGroup</code> descriptions. If a <code>DBClusterParameterGroupName</code> parameter is specified, the list will contain only the description of the specified DB cluster parameter group. </p> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__



-}

describeDBClusterParameterGroups :
  
  
    ( DescribeDBClusterParameterGroupsOptions -> DescribeDBClusterParameterGroupsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBClusterParameterGroupsMessage)

describeDBClusterParameterGroups setOptions =
    
    let
        requestInput = DescribeDBClusterParameterGroupsMessage
            
            options.dBClusterParameterGroupName
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeDBClusterParameterGroupsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBClusterParameterGroups")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBClusterParameterGroupsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBClusterParameterGroups"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBClusterParameterGroupsResult" dBClusterParameterGroupsMessageDecoder)
                
            )



{-| Options for a describeDBClusterParameterGroups request
-}
type alias DescribeDBClusterParameterGroupsOptions =
    {
    dBClusterParameterGroupName : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Returns the detailed parameter list for a particular DB cluster parameter group.</p> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterParameterGroupName` __:__ `String`


-}

describeDBClusterParameters :
  
    String ->
  
  
    ( DescribeDBClusterParametersOptions -> DescribeDBClusterParametersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBClusterParameterGroupDetails)

describeDBClusterParameters dBClusterParameterGroupName setOptions =
    
    let
        requestInput = DescribeDBClusterParametersMessage
            
            dBClusterParameterGroupName
            
            options.source
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeDBClusterParametersOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBClusterParameters")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBClusterParametersMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBClusterParameters"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBClusterParametersResult" dBClusterParameterGroupDetailsDecoder)
                
            )



{-| Options for a describeDBClusterParameters request
-}
type alias DescribeDBClusterParametersOptions =
    {
    source : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot.</p> <p>When sharing snapshots with other AWS accounts, <code>DescribeDBClusterSnapshotAttributes</code> returns the <code>restore</code> attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If <code>all</code> is included in the list of values for the <code>restore</code> attribute, then the manual DB cluster snapshot is public and can be copied or restored by all AWS accounts.</p> <p>To add or remove access for an AWS account to copy or restore a manual DB cluster snapshot, or to make the manual DB cluster snapshot public or private, use the <code>ModifyDBClusterSnapshotAttribute</code> API action.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterSnapshotIdentifier` __:__ `String`


-}

describeDBClusterSnapshotAttributes :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDBClusterSnapshotAttributesResult)

describeDBClusterSnapshotAttributes dBClusterSnapshotIdentifier =
    
    let
        requestInput = DescribeDBClusterSnapshotAttributesMessage
            
            dBClusterSnapshotIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBClusterSnapshotAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBClusterSnapshotAttributesMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBClusterSnapshotAttributes"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBClusterSnapshotAttributesResult" describeDBClusterSnapshotAttributesResultDecoder)
                
            )





{-| <p>Returns information about DB cluster snapshots. This API action supports pagination.</p> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__



-}

describeDBClusterSnapshots :
  
  
    ( DescribeDBClusterSnapshotsOptions -> DescribeDBClusterSnapshotsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBClusterSnapshotMessage)

describeDBClusterSnapshots setOptions =
    
    let
        requestInput = DescribeDBClusterSnapshotsMessage
            
            options.dBClusterIdentifier
            
            options.dBClusterSnapshotIdentifier
            
            options.snapshotType
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
            options.includeShared
            
            options.includePublic
            
        
        options = setOptions (DescribeDBClusterSnapshotsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBClusterSnapshots")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBClusterSnapshotsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBClusterSnapshots"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBClusterSnapshotsResult" dBClusterSnapshotMessageDecoder)
                
            )



{-| Options for a describeDBClusterSnapshots request
-}
type alias DescribeDBClusterSnapshotsOptions =
    {
    dBClusterIdentifier : Maybe String,dBClusterSnapshotIdentifier : Maybe String,snapshotType : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String,includeShared : Maybe Bool,includePublic : Maybe Bool
    }



{-| <p>Returns information about provisioned Aurora DB clusters. This API supports pagination.</p> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__



-}

describeDBClusters :
  
  
    ( DescribeDBClustersOptions -> DescribeDBClustersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBClusterMessage)

describeDBClusters setOptions =
    
    let
        requestInput = DescribeDBClustersMessage
            
            options.dBClusterIdentifier
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
            options.includeShared
            
        
        options = setOptions (DescribeDBClustersOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBClusters")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBClustersMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBClusters"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBClustersResult" dBClusterMessageDecoder)
                
            )



{-| Options for a describeDBClusters request
-}
type alias DescribeDBClustersOptions =
    {
    dBClusterIdentifier : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String,includeShared : Maybe Bool
    }



{-| <p>Returns a list of the available DB engines.</p>

__Required Parameters__



-}

describeDBEngineVersions :
  
  
    ( DescribeDBEngineVersionsOptions -> DescribeDBEngineVersionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBEngineVersionMessage)

describeDBEngineVersions setOptions =
    
    let
        requestInput = DescribeDBEngineVersionsMessage
            
            options.engine
            
            options.engineVersion
            
            options.dBParameterGroupFamily
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
            options.defaultOnly
            
            options.listSupportedCharacterSets
            
            options.listSupportedTimezones
            
            options.includeAll
            
        
        options = setOptions (DescribeDBEngineVersionsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBEngineVersions")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBEngineVersionsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBEngineVersions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBEngineVersionsResult" dBEngineVersionMessageDecoder)
                
            )



{-| Options for a describeDBEngineVersions request
-}
type alias DescribeDBEngineVersionsOptions =
    {
    engine : Maybe String,engineVersion : Maybe String,dBParameterGroupFamily : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String,defaultOnly : Maybe Bool,listSupportedCharacterSets : Maybe Bool,listSupportedTimezones : Maybe Bool,includeAll : Maybe Bool
    }



{-| <p>Displays backups for both current and deleted instances. For example, use this operation to find details about automated backups for previously deleted instances. Current instances with retention periods greater than zero (0) are returned for both the <code>DescribeDBInstanceAutomatedBackups</code> and <code>DescribeDBInstances</code> operations.</p> <p>All parameters are optional.</p>

__Required Parameters__



-}

describeDBInstanceAutomatedBackups :
  
  
    ( DescribeDBInstanceAutomatedBackupsOptions -> DescribeDBInstanceAutomatedBackupsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBInstanceAutomatedBackupMessage)

describeDBInstanceAutomatedBackups setOptions =
    
    let
        requestInput = DescribeDBInstanceAutomatedBackupsMessage
            
            options.dbiResourceId
            
            options.dBInstanceIdentifier
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeDBInstanceAutomatedBackupsOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBInstanceAutomatedBackups")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBInstanceAutomatedBackupsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBInstanceAutomatedBackups"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBInstanceAutomatedBackupsResult" dBInstanceAutomatedBackupMessageDecoder)
                
            )



{-| Options for a describeDBInstanceAutomatedBackups request
-}
type alias DescribeDBInstanceAutomatedBackupsOptions =
    {
    dbiResourceId : Maybe String,dBInstanceIdentifier : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Returns information about provisioned RDS instances. This API supports pagination.</p>

__Required Parameters__



-}

describeDBInstances :
  
  
    ( DescribeDBInstancesOptions -> DescribeDBInstancesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBInstanceMessage)

describeDBInstances setOptions =
    
    let
        requestInput = DescribeDBInstancesMessage
            
            options.dBInstanceIdentifier
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeDBInstancesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBInstances")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBInstancesMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBInstances"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBInstancesResult" dBInstanceMessageDecoder)
                
            )



{-| Options for a describeDBInstances request
-}
type alias DescribeDBInstancesOptions =
    {
    dBInstanceIdentifier : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Returns a list of DB log files for the DB instance.</p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`


-}

describeDBLogFiles :
  
    String ->
  
  
    ( DescribeDBLogFilesOptions -> DescribeDBLogFilesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDBLogFilesResponse)

describeDBLogFiles dBInstanceIdentifier setOptions =
    
    let
        requestInput = DescribeDBLogFilesMessage
            
            dBInstanceIdentifier
            
            options.filenameContains
            
            options.fileLastWritten
            
            options.fileSize
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeDBLogFilesOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBLogFiles")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBLogFilesMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBLogFiles"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBLogFilesResult" describeDBLogFilesResponseDecoder)
                
            )



{-| Options for a describeDBLogFiles request
-}
type alias DescribeDBLogFilesOptions =
    {
    filenameContains : Maybe String,fileLastWritten : Maybe Int,fileSize : Maybe Int,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p> Returns a list of <code>DBParameterGroup</code> descriptions. If a <code>DBParameterGroupName</code> is specified, the list will contain only the description of the specified DB parameter group. </p>

__Required Parameters__



-}

describeDBParameterGroups :
  
  
    ( DescribeDBParameterGroupsOptions -> DescribeDBParameterGroupsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBParameterGroupsMessage)

describeDBParameterGroups setOptions =
    
    let
        requestInput = DescribeDBParameterGroupsMessage
            
            options.dBParameterGroupName
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeDBParameterGroupsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBParameterGroups")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBParameterGroupsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBParameterGroups"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBParameterGroupsResult" dBParameterGroupsMessageDecoder)
                
            )



{-| Options for a describeDBParameterGroups request
-}
type alias DescribeDBParameterGroupsOptions =
    {
    dBParameterGroupName : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Returns the detailed parameter list for a particular DB parameter group.</p>

__Required Parameters__

* `dBParameterGroupName` __:__ `String`


-}

describeDBParameters :
  
    String ->
  
  
    ( DescribeDBParametersOptions -> DescribeDBParametersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBParameterGroupDetails)

describeDBParameters dBParameterGroupName setOptions =
    
    let
        requestInput = DescribeDBParametersMessage
            
            dBParameterGroupName
            
            options.source
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeDBParametersOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBParameters")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBParametersMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBParameters"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBParametersResult" dBParameterGroupDetailsDecoder)
                
            )



{-| Options for a describeDBParameters request
-}
type alias DescribeDBParametersOptions =
    {
    source : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p> Returns a list of <code>DBSecurityGroup</code> descriptions. If a <code>DBSecurityGroupName</code> is specified, the list will contain only the descriptions of the specified DB security group. </p>

__Required Parameters__



-}

describeDBSecurityGroups :
  
  
    ( DescribeDBSecurityGroupsOptions -> DescribeDBSecurityGroupsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBSecurityGroupMessage)

describeDBSecurityGroups setOptions =
    
    let
        requestInput = DescribeDBSecurityGroupsMessage
            
            options.dBSecurityGroupName
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeDBSecurityGroupsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBSecurityGroups")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBSecurityGroupsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBSecurityGroups"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBSecurityGroupsResult" dBSecurityGroupMessageDecoder)
                
            )



{-| Options for a describeDBSecurityGroups request
-}
type alias DescribeDBSecurityGroupsOptions =
    {
    dBSecurityGroupName : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Returns a list of DB snapshot attribute names and values for a manual DB snapshot.</p> <p>When sharing snapshots with other AWS accounts, <code>DescribeDBSnapshotAttributes</code> returns the <code>restore</code> attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual DB snapshot. If <code>all</code> is included in the list of values for the <code>restore</code> attribute, then the manual DB snapshot is public and can be copied or restored by all AWS accounts.</p> <p>To add or remove access for an AWS account to copy or restore a manual DB snapshot, or to make the manual DB snapshot public or private, use the <code>ModifyDBSnapshotAttribute</code> API action.</p>

__Required Parameters__

* `dBSnapshotIdentifier` __:__ `String`


-}

describeDBSnapshotAttributes :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDBSnapshotAttributesResult)

describeDBSnapshotAttributes dBSnapshotIdentifier =
    
    let
        requestInput = DescribeDBSnapshotAttributesMessage
            
            dBSnapshotIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBSnapshotAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBSnapshotAttributesMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBSnapshotAttributes"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBSnapshotAttributesResult" describeDBSnapshotAttributesResultDecoder)
                
            )





{-| <p>Returns information about DB snapshots. This API action supports pagination.</p>

__Required Parameters__



-}

describeDBSnapshots :
  
  
    ( DescribeDBSnapshotsOptions -> DescribeDBSnapshotsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBSnapshotMessage)

describeDBSnapshots setOptions =
    
    let
        requestInput = DescribeDBSnapshotsMessage
            
            options.dBInstanceIdentifier
            
            options.dBSnapshotIdentifier
            
            options.snapshotType
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
            options.includeShared
            
            options.includePublic
            
            options.dbiResourceId
            
        
        options = setOptions (DescribeDBSnapshotsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBSnapshots")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBSnapshotsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBSnapshots"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBSnapshotsResult" dBSnapshotMessageDecoder)
                
            )



{-| Options for a describeDBSnapshots request
-}
type alias DescribeDBSnapshotsOptions =
    {
    dBInstanceIdentifier : Maybe String,dBSnapshotIdentifier : Maybe String,snapshotType : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String,includeShared : Maybe Bool,includePublic : Maybe Bool,dbiResourceId : Maybe String
    }



{-| <p>Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup.</p> <p>For an overview of CIDR ranges, go to the <a href="http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Wikipedia Tutorial</a>. </p>

__Required Parameters__



-}

describeDBSubnetGroups :
  
  
    ( DescribeDBSubnetGroupsOptions -> DescribeDBSubnetGroupsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBSubnetGroupMessage)

describeDBSubnetGroups setOptions =
    
    let
        requestInput = DescribeDBSubnetGroupsMessage
            
            options.dBSubnetGroupName
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeDBSubnetGroupsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDBSubnetGroups")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDBSubnetGroupsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDBSubnetGroups"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDBSubnetGroupsResult" dBSubnetGroupMessageDecoder)
                
            )



{-| Options for a describeDBSubnetGroups request
-}
type alias DescribeDBSubnetGroupsOptions =
    {
    dBSubnetGroupName : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Returns the default engine and system parameter information for the cluster database engine.</p> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p>

__Required Parameters__

* `dBParameterGroupFamily` __:__ `String`


-}

describeEngineDefaultClusterParameters :
  
    String ->
  
  
    ( DescribeEngineDefaultClusterParametersOptions -> DescribeEngineDefaultClusterParametersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEngineDefaultClusterParametersResult)

describeEngineDefaultClusterParameters dBParameterGroupFamily setOptions =
    
    let
        requestInput = DescribeEngineDefaultClusterParametersMessage
            
            dBParameterGroupFamily
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeEngineDefaultClusterParametersOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeEngineDefaultClusterParameters")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeEngineDefaultClusterParametersMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEngineDefaultClusterParameters"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEngineDefaultClusterParametersResult" describeEngineDefaultClusterParametersResultDecoder)
                
            )



{-| Options for a describeEngineDefaultClusterParameters request
-}
type alias DescribeEngineDefaultClusterParametersOptions =
    {
    filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Returns the default engine and system parameter information for the specified database engine.</p>

__Required Parameters__

* `dBParameterGroupFamily` __:__ `String`


-}

describeEngineDefaultParameters :
  
    String ->
  
  
    ( DescribeEngineDefaultParametersOptions -> DescribeEngineDefaultParametersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEngineDefaultParametersResult)

describeEngineDefaultParameters dBParameterGroupFamily setOptions =
    
    let
        requestInput = DescribeEngineDefaultParametersMessage
            
            dBParameterGroupFamily
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeEngineDefaultParametersOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeEngineDefaultParameters")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeEngineDefaultParametersMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEngineDefaultParameters"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEngineDefaultParametersResult" describeEngineDefaultParametersResultDecoder)
                
            )



{-| Options for a describeEngineDefaultParameters request
-}
type alias DescribeEngineDefaultParametersOptions =
    {
    filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Displays a list of categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html"> Events</a> topic in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__



-}

describeEventCategories :
  
  
    ( DescribeEventCategoriesOptions -> DescribeEventCategoriesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EventCategoriesMessage)

describeEventCategories setOptions =
    
    let
        requestInput = DescribeEventCategoriesMessage
            
            options.sourceType
            
            options.filters
            
        
        options = setOptions (DescribeEventCategoriesOptions Nothing Nothing)
        
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
    {
    sourceType : Maybe String,filters : Maybe (List Filter)
    }



{-| <p>Lists all the subscription descriptions for a customer account. The description for a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status.</p> <p>If you specify a SubscriptionName, lists the description for that subscription.</p>

__Required Parameters__



-}

describeEventSubscriptions :
  
  
    ( DescribeEventSubscriptionsOptions -> DescribeEventSubscriptionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EventSubscriptionsMessage)

describeEventSubscriptions setOptions =
    
    let
        requestInput = DescribeEventSubscriptionsMessage
            
            options.subscriptionName
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeEventSubscriptionsOptions Nothing Nothing Nothing Nothing)
        
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
    {
    subscriptionName : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days. Events specific to a particular DB instance, DB security group, database snapshot, or DB parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.</p>

__Required Parameters__



-}

describeEvents :
  
  
    ( DescribeEventsOptions -> DescribeEventsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EventsMessage)

describeEvents setOptions =
    
    let
        requestInput = DescribeEventsMessage
            
            options.sourceIdentifier
            
            options.sourceType
            
            options.startTime
            
            options.endTime
            
            options.duration
            
            options.eventCategories
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeEventsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
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
    {
    sourceIdentifier : Maybe String,sourceType : Maybe SourceType,startTime : Maybe Posix,endTime : Maybe Posix,duration : Maybe Int,eventCategories : Maybe (List String),filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p> Returns information about Aurora global database clusters. This API supports pagination. </p> <p> For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__



-}

describeGlobalClusters :
  
  
    ( DescribeGlobalClustersOptions -> DescribeGlobalClustersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GlobalClustersMessage)

describeGlobalClusters setOptions =
    
    let
        requestInput = DescribeGlobalClustersMessage
            
            options.globalClusterIdentifier
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeGlobalClustersOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeGlobalClusters")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeGlobalClustersMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeGlobalClusters"
                
                (AWS.Core.Decode.ResultDecoder "DescribeGlobalClustersResult" globalClustersMessageDecoder)
                
            )



{-| Options for a describeGlobalClusters request
-}
type alias DescribeGlobalClustersOptions =
    {
    globalClusterIdentifier : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Describes all available options.</p>

__Required Parameters__

* `engineName` __:__ `String`


-}

describeOptionGroupOptions :
  
    String ->
  
  
    ( DescribeOptionGroupOptionsOptions -> DescribeOptionGroupOptionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper OptionGroupOptionsMessage)

describeOptionGroupOptions engineName setOptions =
    
    let
        requestInput = DescribeOptionGroupOptionsMessage
            
            engineName
            
            options.majorEngineVersion
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeOptionGroupOptionsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeOptionGroupOptions")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeOptionGroupOptionsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeOptionGroupOptions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeOptionGroupOptionsResult" optionGroupOptionsMessageDecoder)
                
            )



{-| Options for a describeOptionGroupOptions request
-}
type alias DescribeOptionGroupOptionsOptions =
    {
    majorEngineVersion : Maybe String,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Describes the available option groups.</p>

__Required Parameters__



-}

describeOptionGroups :
  
  
    ( DescribeOptionGroupsOptions -> DescribeOptionGroupsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper OptionGroups)

describeOptionGroups setOptions =
    
    let
        requestInput = DescribeOptionGroupsMessage
            
            options.optionGroupName
            
            options.filters
            
            options.marker
            
            options.maxRecords
            
            options.engineName
            
            options.majorEngineVersion
            
        
        options = setOptions (DescribeOptionGroupsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeOptionGroups")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeOptionGroupsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeOptionGroups"
                
                (AWS.Core.Decode.ResultDecoder "DescribeOptionGroupsResult" optionGroupsDecoder)
                
            )



{-| Options for a describeOptionGroups request
-}
type alias DescribeOptionGroupsOptions =
    {
    optionGroupName : Maybe String,filters : Maybe (List Filter),marker : Maybe String,maxRecords : Maybe Int,engineName : Maybe String,majorEngineVersion : Maybe String
    }



{-| <p>Returns a list of orderable DB instance options for the specified engine.</p>

__Required Parameters__

* `engine` __:__ `String`


-}

describeOrderableDBInstanceOptions :
  
    String ->
  
  
    ( DescribeOrderableDBInstanceOptionsOptions -> DescribeOrderableDBInstanceOptionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper OrderableDBInstanceOptionsMessage)

describeOrderableDBInstanceOptions engine setOptions =
    
    let
        requestInput = DescribeOrderableDBInstanceOptionsMessage
            
            engine
            
            options.engineVersion
            
            options.dBInstanceClass
            
            options.licenseModel
            
            options.vpc
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeOrderableDBInstanceOptionsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeOrderableDBInstanceOptions")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeOrderableDBInstanceOptionsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeOrderableDBInstanceOptions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeOrderableDBInstanceOptionsResult" orderableDBInstanceOptionsMessageDecoder)
                
            )



{-| Options for a describeOrderableDBInstanceOptions request
-}
type alias DescribeOrderableDBInstanceOptionsOptions =
    {
    engineVersion : Maybe String,dBInstanceClass : Maybe String,licenseModel : Maybe String,vpc : Maybe Bool,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Returns a list of resources (for example, DB instances) that have at least one pending maintenance action.</p>

__Required Parameters__



-}

describePendingMaintenanceActions :
  
  
    ( DescribePendingMaintenanceActionsOptions -> DescribePendingMaintenanceActionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PendingMaintenanceActionsMessage)

describePendingMaintenanceActions setOptions =
    
    let
        requestInput = DescribePendingMaintenanceActionsMessage
            
            options.resourceIdentifier
            
            options.filters
            
            options.marker
            
            options.maxRecords
            
        
        options = setOptions (DescribePendingMaintenanceActionsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribePendingMaintenanceActions")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describePendingMaintenanceActionsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribePendingMaintenanceActions"
                
                (AWS.Core.Decode.ResultDecoder "DescribePendingMaintenanceActionsResult" pendingMaintenanceActionsMessageDecoder)
                
            )



{-| Options for a describePendingMaintenanceActions request
-}
type alias DescribePendingMaintenanceActionsOptions =
    {
    resourceIdentifier : Maybe String,filters : Maybe (List Filter),marker : Maybe String,maxRecords : Maybe Int
    }



{-| <p>Returns information about reserved DB instances for this account, or about a specified reserved DB instance.</p>

__Required Parameters__



-}

describeReservedDBInstances :
  
  
    ( DescribeReservedDBInstancesOptions -> DescribeReservedDBInstancesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReservedDBInstanceMessage)

describeReservedDBInstances setOptions =
    
    let
        requestInput = DescribeReservedDBInstancesMessage
            
            options.reservedDBInstanceId
            
            options.reservedDBInstancesOfferingId
            
            options.dBInstanceClass
            
            options.duration
            
            options.productDescription
            
            options.offeringType
            
            options.multiAZ
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeReservedDBInstancesOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeReservedDBInstances")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeReservedDBInstancesMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeReservedDBInstances"
                
                (AWS.Core.Decode.ResultDecoder "DescribeReservedDBInstancesResult" reservedDBInstanceMessageDecoder)
                
            )



{-| Options for a describeReservedDBInstances request
-}
type alias DescribeReservedDBInstancesOptions =
    {
    reservedDBInstanceId : Maybe String,reservedDBInstancesOfferingId : Maybe String,dBInstanceClass : Maybe String,duration : Maybe String,productDescription : Maybe String,offeringType : Maybe String,multiAZ : Maybe Bool,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Lists available reserved DB instance offerings.</p>

__Required Parameters__



-}

describeReservedDBInstancesOfferings :
  
  
    ( DescribeReservedDBInstancesOfferingsOptions -> DescribeReservedDBInstancesOfferingsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReservedDBInstancesOfferingMessage)

describeReservedDBInstancesOfferings setOptions =
    
    let
        requestInput = DescribeReservedDBInstancesOfferingsMessage
            
            options.reservedDBInstancesOfferingId
            
            options.dBInstanceClass
            
            options.duration
            
            options.productDescription
            
            options.offeringType
            
            options.multiAZ
            
            options.filters
            
            options.maxRecords
            
            options.marker
            
        
        options = setOptions (DescribeReservedDBInstancesOfferingsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeReservedDBInstancesOfferings")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeReservedDBInstancesOfferingsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeReservedDBInstancesOfferings"
                
                (AWS.Core.Decode.ResultDecoder "DescribeReservedDBInstancesOfferingsResult" reservedDBInstancesOfferingMessageDecoder)
                
            )



{-| Options for a describeReservedDBInstancesOfferings request
-}
type alias DescribeReservedDBInstancesOfferingsOptions =
    {
    reservedDBInstancesOfferingId : Maybe String,dBInstanceClass : Maybe String,duration : Maybe String,productDescription : Maybe String,offeringType : Maybe String,multiAZ : Maybe Bool,filters : Maybe (List Filter),maxRecords : Maybe Int,marker : Maybe String
    }



{-| <p>Returns a list of the source AWS Regions where the current AWS Region can create a Read Replica or copy a DB snapshot from. This API action supports pagination.</p>

__Required Parameters__



-}

describeSourceRegions :
  
  
    ( DescribeSourceRegionsOptions -> DescribeSourceRegionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SourceRegionMessage)

describeSourceRegions setOptions =
    
    let
        requestInput = DescribeSourceRegionsMessage
            
            options.regionName
            
            options.maxRecords
            
            options.marker
            
            options.filters
            
        
        options = setOptions (DescribeSourceRegionsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeSourceRegions")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeSourceRegionsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeSourceRegions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeSourceRegionsResult" sourceRegionMessageDecoder)
                
            )



{-| Options for a describeSourceRegions request
-}
type alias DescribeSourceRegionsOptions =
    {
    regionName : Maybe String,maxRecords : Maybe Int,marker : Maybe String,filters : Maybe (List Filter)
    }



{-| <p>You can call <code>DescribeValidDBInstanceModifications</code> to learn what modifications you can make to your DB instance. You can use this information when you call <code>ModifyDBInstance</code>. </p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`


-}

describeValidDBInstanceModifications :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeValidDBInstanceModificationsResult)

describeValidDBInstanceModifications dBInstanceIdentifier =
    
    let
        requestInput = DescribeValidDBInstanceModificationsMessage
            
            dBInstanceIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeValidDBInstanceModifications")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeValidDBInstanceModificationsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeValidDBInstanceModifications"
                
                (AWS.Core.Decode.ResultDecoder "DescribeValidDBInstanceModificationsResult" describeValidDBInstanceModificationsResultDecoder)
                
            )





{-| <p>Downloads all or a portion of the specified log file, up to 1 MB in size.</p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`
* `logFileName` __:__ `String`


-}

downloadDBLogFilePortion :
  
    String ->
  
    String ->
  
  
    ( DownloadDBLogFilePortionOptions -> DownloadDBLogFilePortionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DownloadDBLogFilePortionDetails)

downloadDBLogFilePortion dBInstanceIdentifier logFileName setOptions =
    
    let
        requestInput = DownloadDBLogFilePortionMessage
            
            dBInstanceIdentifier
            
            logFileName
            
            options.marker
            
            options.numberOfLines
            
        
        options = setOptions (DownloadDBLogFilePortionOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DownloadDBLogFilePortion")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs downloadDBLogFilePortionMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DownloadDBLogFilePortion"
                
                (AWS.Core.Decode.ResultDecoder "DownloadDBLogFilePortionResult" downloadDBLogFilePortionDetailsDecoder)
                
            )



{-| Options for a downloadDBLogFilePortion request
-}
type alias DownloadDBLogFilePortionOptions =
    {
    marker : Maybe String,numberOfLines : Maybe Int
    }



{-| <p>Forces a failover for a DB cluster.</p> <p>A failover for a DB cluster promotes one of the Aurora Replicas (read-only instances) in the DB cluster to be the primary instance (the cluster writer).</p> <p>Amazon Aurora will automatically fail over to an Aurora Replica, if one exists, when the primary instance fails. You can force a failover when you want to simulate a failure of a primary instance for testing. Because each instance in a DB cluster has its own endpoint address, you will need to clean up and re-establish any existing connections that use those endpoint addresses when the failover is complete.</p> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`


-}

failoverDBCluster :
  
    String ->
  
  
    ( FailoverDBClusterOptions -> FailoverDBClusterOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper FailoverDBClusterResult)

failoverDBCluster dBClusterIdentifier setOptions =
    
    let
        requestInput = FailoverDBClusterMessage
            
            dBClusterIdentifier
            
            options.targetDBInstanceIdentifier
            
        
        options = setOptions (FailoverDBClusterOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "FailoverDBCluster")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs failoverDBClusterMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "FailoverDBCluster"
                
                (AWS.Core.Decode.ResultDecoder "FailoverDBClusterResult" failoverDBClusterResultDecoder)
                
            )



{-| Options for a failoverDBCluster request
-}
type alias FailoverDBClusterOptions =
    {
    targetDBInstanceIdentifier : Maybe String
    }



{-| <p>Lists all tags on an Amazon RDS resource.</p> <p>For an overview on tagging an Amazon RDS resource, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide</i>.</p>

__Required Parameters__

* `resourceName` __:__ `String`


-}

listTagsForResource :
  
    String ->
  
  
    ( ListTagsForResourceOptions -> ListTagsForResourceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagListMessage)

listTagsForResource resourceName setOptions =
    
    let
        requestInput = ListTagsForResourceMessage
            
            resourceName
            
            options.filters
            
        
        options = setOptions (ListTagsForResourceOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListTagsForResource")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listTagsForResourceMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForResource"
                
                (AWS.Core.Decode.ResultDecoder "ListTagsForResourceResult" tagListMessageDecoder)
                
            )



{-| Options for a listTagsForResource request
-}
type alias ListTagsForResourceOptions =
    {
    filters : Maybe (List Filter)
    }



{-| <p>Set the capacity of an Aurora Serverless DB cluster to a specific value.</p> <p>Aurora Serverless scales seamlessly based on the workload on the DB cluster. In some cases, the capacity might not scale fast enough to meet a sudden change in workload, such as a large number of new transactions. Call <code>ModifyCurrentDBClusterCapacity</code> to set the capacity explicitly.</p> <p>After this call sets the DB cluster capacity, Aurora Serverless can automatically scale the DB cluster based on the cooldown period for scaling up and the cooldown period for scaling down.</p> <p>For more information about Aurora Serverless, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html">Using Amazon Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p> <important> <p>If you call <code>ModifyCurrentDBClusterCapacity</code> with the default <code>TimeoutAction</code>, connections that prevent Aurora Serverless from finding a scaling point might be dropped. For more information about scaling points, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html#aurora-serverless.how-it-works.auto-scaling"> Autoscaling for Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p> </important> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`


-}

modifyCurrentDBClusterCapacity :
  
    String ->
  
  
    ( ModifyCurrentDBClusterCapacityOptions -> ModifyCurrentDBClusterCapacityOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBClusterCapacityInfo)

modifyCurrentDBClusterCapacity dBClusterIdentifier setOptions =
    
    let
        requestInput = ModifyCurrentDBClusterCapacityMessage
            
            dBClusterIdentifier
            
            options.capacity
            
            options.secondsBeforeTimeout
            
            options.timeoutAction
            
        
        options = setOptions (ModifyCurrentDBClusterCapacityOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyCurrentDBClusterCapacity")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyCurrentDBClusterCapacityMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyCurrentDBClusterCapacity"
                
                (AWS.Core.Decode.ResultDecoder "ModifyCurrentDBClusterCapacityResult" dBClusterCapacityInfoDecoder)
                
            )



{-| Options for a modifyCurrentDBClusterCapacity request
-}
type alias ModifyCurrentDBClusterCapacityOptions =
    {
    capacity : Maybe Int,secondsBeforeTimeout : Maybe Int,timeoutAction : Maybe String
    }



{-| <p>Modify a setting for an Amazon Aurora DB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`


-}

modifyDBCluster :
  
    String ->
  
  
    ( ModifyDBClusterOptions -> ModifyDBClusterOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyDBClusterResult)

modifyDBCluster dBClusterIdentifier setOptions =
    
    let
        requestInput = ModifyDBClusterMessage
            
            dBClusterIdentifier
            
            options.newDBClusterIdentifier
            
            options.applyImmediately
            
            options.backupRetentionPeriod
            
            options.dBClusterParameterGroupName
            
            options.vpcSecurityGroupIds
            
            options.port_
            
            options.masterUserPassword
            
            options.optionGroupName
            
            options.preferredBackupWindow
            
            options.preferredMaintenanceWindow
            
            options.enableIAMDatabaseAuthentication
            
            options.backtrackWindow
            
            options.cloudwatchLogsExportConfiguration
            
            options.engineVersion
            
            options.allowMajorVersionUpgrade
            
            options.dBInstanceParameterGroupName
            
            options.scalingConfiguration
            
            options.deletionProtection
            
            options.enableHttpEndpoint
            
            options.copyTagsToSnapshot
            
        
        options = setOptions (ModifyDBClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyDBCluster")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyDBClusterMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyDBCluster"
                
                (AWS.Core.Decode.ResultDecoder "ModifyDBClusterResult" modifyDBClusterResultDecoder)
                
            )



{-| Options for a modifyDBCluster request
-}
type alias ModifyDBClusterOptions =
    {
    newDBClusterIdentifier : Maybe String,applyImmediately : Maybe Bool,backupRetentionPeriod : Maybe Int,dBClusterParameterGroupName : Maybe String,vpcSecurityGroupIds : Maybe (List String),port_ : Maybe Int,masterUserPassword : Maybe String,optionGroupName : Maybe String,preferredBackupWindow : Maybe String,preferredMaintenanceWindow : Maybe String,enableIAMDatabaseAuthentication : Maybe Bool,backtrackWindow : Maybe Int,cloudwatchLogsExportConfiguration : Maybe CloudwatchLogsExportConfiguration,engineVersion : Maybe String,allowMajorVersionUpgrade : Maybe Bool,dBInstanceParameterGroupName : Maybe String,scalingConfiguration : Maybe ScalingConfiguration,deletionProtection : Maybe Bool,enableHttpEndpoint : Maybe Bool,copyTagsToSnapshot : Maybe Bool
    }



{-| <p>Modifies the properties of an endpoint in an Amazon Aurora DB cluster.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterEndpointIdentifier` __:__ `String`


-}

modifyDBClusterEndpoint :
  
    String ->
  
  
    ( ModifyDBClusterEndpointOptions -> ModifyDBClusterEndpointOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBClusterEndpoint)

modifyDBClusterEndpoint dBClusterEndpointIdentifier setOptions =
    
    let
        requestInput = ModifyDBClusterEndpointMessage
            
            dBClusterEndpointIdentifier
            
            options.endpointType
            
            options.staticMembers
            
            options.excludedMembers
            
        
        options = setOptions (ModifyDBClusterEndpointOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyDBClusterEndpoint")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyDBClusterEndpointMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyDBClusterEndpoint"
                
                (AWS.Core.Decode.ResultDecoder "ModifyDBClusterEndpointResult" dBClusterEndpointDecoder)
                
            )



{-| Options for a modifyDBClusterEndpoint request
-}
type alias ModifyDBClusterEndpointOptions =
    {
    endpointType : Maybe String,staticMembers : Maybe (List String),excludedMembers : Maybe (List String)
    }



{-| <p> Modifies the parameters of a DB cluster parameter group. To modify more than one parameter, submit a list of the following: <code>ParameterName</code>, <code>ParameterValue</code>, and <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single request. </p> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB cluster associated with the parameter group before the change can take effect.</p> </note> <important> <p>After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon RDS to fully complete the create action before the parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the <code>character_set_database</code> parameter. You can use the <i>Parameter Groups</i> option of the <a href="https://console.aws.amazon.com/rds/">Amazon RDS console</a> or the <code>DescribeDBClusterParameters</code> action to verify that your DB cluster parameter group has been created or modified.</p> </important> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterParameterGroupName` __:__ `String`
* `parameters` __:__ `(List Parameter)`


-}

modifyDBClusterParameterGroup :
  
    String ->
  
    (List Parameter) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBClusterParameterGroupNameMessage)

modifyDBClusterParameterGroup dBClusterParameterGroupName parameters =
    
    let
        requestInput = ModifyDBClusterParameterGroupMessage
            
            dBClusterParameterGroupName
            
            parameters
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyDBClusterParameterGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyDBClusterParameterGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyDBClusterParameterGroup"
                
                (AWS.Core.Decode.ResultDecoder "ModifyDBClusterParameterGroupResult" dBClusterParameterGroupNameMessageDecoder)
                
            )





{-| <p>Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot.</p> <p>To share a manual DB cluster snapshot with other AWS accounts, specify <code>restore</code> as the <code>AttributeName</code> and use the <code>ValuesToAdd</code> parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual DB cluster snapshot. Use the value <code>all</code> to make the manual DB cluster snapshot public, which means that it can be copied or restored by all AWS accounts. Do not add the <code>all</code> value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts. If a manual DB cluster snapshot is encrypted, it can be shared, but only by specifying a list of authorized AWS account IDs for the <code>ValuesToAdd</code> parameter. You can't use <code>all</code> as a value for that parameter in this case.</p> <p>To view which AWS accounts have access to copy or restore a manual DB cluster snapshot, or whether a manual DB cluster snapshot public or private, use the <code>DescribeDBClusterSnapshotAttributes</code> API action.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterSnapshotIdentifier` __:__ `String`
* `attributeName` __:__ `String`


-}

modifyDBClusterSnapshotAttribute :
  
    String ->
  
    String ->
  
  
    ( ModifyDBClusterSnapshotAttributeOptions -> ModifyDBClusterSnapshotAttributeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyDBClusterSnapshotAttributeResult)

modifyDBClusterSnapshotAttribute dBClusterSnapshotIdentifier attributeName setOptions =
    
    let
        requestInput = ModifyDBClusterSnapshotAttributeMessage
            
            dBClusterSnapshotIdentifier
            
            attributeName
            
            options.valuesToAdd
            
            options.valuesToRemove
            
        
        options = setOptions (ModifyDBClusterSnapshotAttributeOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyDBClusterSnapshotAttribute")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyDBClusterSnapshotAttributeMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyDBClusterSnapshotAttribute"
                
                (AWS.Core.Decode.ResultDecoder "ModifyDBClusterSnapshotAttributeResult" modifyDBClusterSnapshotAttributeResultDecoder)
                
            )



{-| Options for a modifyDBClusterSnapshotAttribute request
-}
type alias ModifyDBClusterSnapshotAttributeOptions =
    {
    valuesToAdd : Maybe (List String),valuesToRemove : Maybe (List String)
    }



{-| <p>Modifies settings for a DB instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. To learn what modifications you can make to your DB instance, call <code>DescribeValidDBInstanceModifications</code> before you call <code>ModifyDBInstance</code>. </p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`


-}

modifyDBInstance :
  
    String ->
  
  
    ( ModifyDBInstanceOptions -> ModifyDBInstanceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyDBInstanceResult)

modifyDBInstance dBInstanceIdentifier setOptions =
    
    let
        requestInput = ModifyDBInstanceMessage
            
            dBInstanceIdentifier
            
            options.allocatedStorage
            
            options.dBInstanceClass
            
            options.dBSubnetGroupName
            
            options.dBSecurityGroups
            
            options.vpcSecurityGroupIds
            
            options.applyImmediately
            
            options.masterUserPassword
            
            options.dBParameterGroupName
            
            options.backupRetentionPeriod
            
            options.preferredBackupWindow
            
            options.preferredMaintenanceWindow
            
            options.multiAZ
            
            options.engineVersion
            
            options.allowMajorVersionUpgrade
            
            options.autoMinorVersionUpgrade
            
            options.licenseModel
            
            options.iops
            
            options.optionGroupName
            
            options.newDBInstanceIdentifier
            
            options.storageType
            
            options.tdeCredentialArn
            
            options.tdeCredentialPassword
            
            options.cACertificateIdentifier
            
            options.domain
            
            options.copyTagsToSnapshot
            
            options.monitoringInterval
            
            options.dBPortNumber
            
            options.publiclyAccessible
            
            options.monitoringRoleArn
            
            options.domainIAMRoleName
            
            options.promotionTier
            
            options.enableIAMDatabaseAuthentication
            
            options.enablePerformanceInsights
            
            options.performanceInsightsKMSKeyId
            
            options.performanceInsightsRetentionPeriod
            
            options.cloudwatchLogsExportConfiguration
            
            options.processorFeatures
            
            options.useDefaultProcessorFeatures
            
            options.deletionProtection
            
            options.maxAllocatedStorage
            
        
        options = setOptions (ModifyDBInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyDBInstance")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyDBInstanceMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyDBInstance"
                
                (AWS.Core.Decode.ResultDecoder "ModifyDBInstanceResult" modifyDBInstanceResultDecoder)
                
            )



{-| Options for a modifyDBInstance request
-}
type alias ModifyDBInstanceOptions =
    {
    allocatedStorage : Maybe Int,dBInstanceClass : Maybe String,dBSubnetGroupName : Maybe String,dBSecurityGroups : Maybe (List String),vpcSecurityGroupIds : Maybe (List String),applyImmediately : Maybe Bool,masterUserPassword : Maybe String,dBParameterGroupName : Maybe String,backupRetentionPeriod : Maybe Int,preferredBackupWindow : Maybe String,preferredMaintenanceWindow : Maybe String,multiAZ : Maybe Bool,engineVersion : Maybe String,allowMajorVersionUpgrade : Maybe Bool,autoMinorVersionUpgrade : Maybe Bool,licenseModel : Maybe String,iops : Maybe Int,optionGroupName : Maybe String,newDBInstanceIdentifier : Maybe String,storageType : Maybe String,tdeCredentialArn : Maybe String,tdeCredentialPassword : Maybe String,cACertificateIdentifier : Maybe String,domain : Maybe String,copyTagsToSnapshot : Maybe Bool,monitoringInterval : Maybe Int,dBPortNumber : Maybe Int,publiclyAccessible : Maybe Bool,monitoringRoleArn : Maybe String,domainIAMRoleName : Maybe String,promotionTier : Maybe Int,enableIAMDatabaseAuthentication : Maybe Bool,enablePerformanceInsights : Maybe Bool,performanceInsightsKMSKeyId : Maybe String,performanceInsightsRetentionPeriod : Maybe Int,cloudwatchLogsExportConfiguration : Maybe CloudwatchLogsExportConfiguration,processorFeatures : Maybe (List ProcessorFeature),useDefaultProcessorFeatures : Maybe Bool,deletionProtection : Maybe Bool,maxAllocatedStorage : Maybe Int
    }



{-| <p> Modifies the parameters of a DB parameter group. To modify more than one parameter, submit a list of the following: <code>ParameterName</code>, <code>ParameterValue</code>, and <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single request. </p> <note> <p>Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB instance associated with the parameter group before the change can take effect.</p> </note> <important> <p>After you modify a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon RDS to fully complete the modify action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the <code>character_set_database</code> parameter. You can use the <i>Parameter Groups</i> option of the <a href="https://console.aws.amazon.com/rds/">Amazon RDS console</a> or the <i>DescribeDBParameters</i> command to verify that your DB parameter group has been created or modified.</p> </important>

__Required Parameters__

* `dBParameterGroupName` __:__ `String`
* `parameters` __:__ `(List Parameter)`


-}

modifyDBParameterGroup :
  
    String ->
  
    (List Parameter) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBParameterGroupNameMessage)

modifyDBParameterGroup dBParameterGroupName parameters =
    
    let
        requestInput = ModifyDBParameterGroupMessage
            
            dBParameterGroupName
            
            parameters
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyDBParameterGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyDBParameterGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyDBParameterGroup"
                
                (AWS.Core.Decode.ResultDecoder "ModifyDBParameterGroupResult" dBParameterGroupNameMessageDecoder)
                
            )





{-| <p>Updates a manual DB snapshot, which can be encrypted or not encrypted, with a new engine version. </p> <p>Amazon RDS supports upgrading DB snapshots for MySQL and Oracle. </p>

__Required Parameters__

* `dBSnapshotIdentifier` __:__ `String`


-}

modifyDBSnapshot :
  
    String ->
  
  
    ( ModifyDBSnapshotOptions -> ModifyDBSnapshotOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyDBSnapshotResult)

modifyDBSnapshot dBSnapshotIdentifier setOptions =
    
    let
        requestInput = ModifyDBSnapshotMessage
            
            dBSnapshotIdentifier
            
            options.engineVersion
            
            options.optionGroupName
            
        
        options = setOptions (ModifyDBSnapshotOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyDBSnapshot")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyDBSnapshotMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyDBSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "ModifyDBSnapshotResult" modifyDBSnapshotResultDecoder)
                
            )



{-| Options for a modifyDBSnapshot request
-}
type alias ModifyDBSnapshotOptions =
    {
    engineVersion : Maybe String,optionGroupName : Maybe String
    }



{-| <p>Adds an attribute and values to, or removes an attribute and values from, a manual DB snapshot.</p> <p>To share a manual DB snapshot with other AWS accounts, specify <code>restore</code> as the <code>AttributeName</code> and use the <code>ValuesToAdd</code> parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual DB snapshot. Uses the value <code>all</code> to make the manual DB snapshot public, which means it can be copied or restored by all AWS accounts. Do not add the <code>all</code> value for any manual DB snapshots that contain private information that you don't want available to all AWS accounts. If the manual DB snapshot is encrypted, it can be shared, but only by specifying a list of authorized AWS account IDs for the <code>ValuesToAdd</code> parameter. You can't use <code>all</code> as a value for that parameter in this case.</p> <p>To view which AWS accounts have access to copy or restore a manual DB snapshot, or whether a manual DB snapshot public or private, use the <code>DescribeDBSnapshotAttributes</code> API action.</p>

__Required Parameters__

* `dBSnapshotIdentifier` __:__ `String`
* `attributeName` __:__ `String`


-}

modifyDBSnapshotAttribute :
  
    String ->
  
    String ->
  
  
    ( ModifyDBSnapshotAttributeOptions -> ModifyDBSnapshotAttributeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyDBSnapshotAttributeResult)

modifyDBSnapshotAttribute dBSnapshotIdentifier attributeName setOptions =
    
    let
        requestInput = ModifyDBSnapshotAttributeMessage
            
            dBSnapshotIdentifier
            
            attributeName
            
            options.valuesToAdd
            
            options.valuesToRemove
            
        
        options = setOptions (ModifyDBSnapshotAttributeOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyDBSnapshotAttribute")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyDBSnapshotAttributeMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyDBSnapshotAttribute"
                
                (AWS.Core.Decode.ResultDecoder "ModifyDBSnapshotAttributeResult" modifyDBSnapshotAttributeResultDecoder)
                
            )



{-| Options for a modifyDBSnapshotAttribute request
-}
type alias ModifyDBSnapshotAttributeOptions =
    {
    valuesToAdd : Maybe (List String),valuesToRemove : Maybe (List String)
    }



{-| <p>Modifies an existing DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.</p>

__Required Parameters__

* `dBSubnetGroupName` __:__ `String`
* `subnetIds` __:__ `(List String)`


-}

modifyDBSubnetGroup :
  
    String ->
  
    (List String) ->
  
  
    ( ModifyDBSubnetGroupOptions -> ModifyDBSubnetGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyDBSubnetGroupResult)

modifyDBSubnetGroup dBSubnetGroupName subnetIds setOptions =
    
    let
        requestInput = ModifyDBSubnetGroupMessage
            
            dBSubnetGroupName
            
            options.dBSubnetGroupDescription
            
            subnetIds
            
        
        options = setOptions (ModifyDBSubnetGroupOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyDBSubnetGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyDBSubnetGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyDBSubnetGroup"
                
                (AWS.Core.Decode.ResultDecoder "ModifyDBSubnetGroupResult" modifyDBSubnetGroupResultDecoder)
                
            )



{-| Options for a modifyDBSubnetGroup request
-}
type alias ModifyDBSubnetGroupOptions =
    {
    dBSubnetGroupDescription : Maybe String
    }



{-| <p>Modifies an existing RDS event notification subscription. Note that you can't modify the source identifiers using this call; to change source identifiers for a subscription, use the <code>AddSourceIdentifierToSubscription</code> and <code>RemoveSourceIdentifierFromSubscription</code> calls.</p> <p>You can see a list of the event categories for a given SourceType in the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html">Events</a> topic in the <i>Amazon RDS User Guide</i> or by using the <b>DescribeEventCategories</b> action.</p>

__Required Parameters__

* `subscriptionName` __:__ `String`


-}

modifyEventSubscription :
  
    String ->
  
  
    ( ModifyEventSubscriptionOptions -> ModifyEventSubscriptionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyEventSubscriptionResult)

modifyEventSubscription subscriptionName setOptions =
    
    let
        requestInput = ModifyEventSubscriptionMessage
            
            subscriptionName
            
            options.snsTopicArn
            
            options.sourceType
            
            options.eventCategories
            
            options.enabled
            
        
        options = setOptions (ModifyEventSubscriptionOptions Nothing Nothing Nothing Nothing)
        
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
    {
    snsTopicArn : Maybe String,sourceType : Maybe String,eventCategories : Maybe (List String),enabled : Maybe Bool
    }



{-| <p> Modify a setting for an Amazon Aurora global cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__



-}

modifyGlobalCluster :
  
  
    ( ModifyGlobalClusterOptions -> ModifyGlobalClusterOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyGlobalClusterResult)

modifyGlobalCluster setOptions =
    
    let
        requestInput = ModifyGlobalClusterMessage
            
            options.globalClusterIdentifier
            
            options.newGlobalClusterIdentifier
            
            options.deletionProtection
            
        
        options = setOptions (ModifyGlobalClusterOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyGlobalCluster")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyGlobalClusterMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyGlobalCluster"
                
                (AWS.Core.Decode.ResultDecoder "ModifyGlobalClusterResult" modifyGlobalClusterResultDecoder)
                
            )



{-| Options for a modifyGlobalCluster request
-}
type alias ModifyGlobalClusterOptions =
    {
    globalClusterIdentifier : Maybe String,newGlobalClusterIdentifier : Maybe String,deletionProtection : Maybe Bool
    }



{-| <p>Modifies an existing option group.</p>

__Required Parameters__

* `optionGroupName` __:__ `String`


-}

modifyOptionGroup :
  
    String ->
  
  
    ( ModifyOptionGroupOptions -> ModifyOptionGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyOptionGroupResult)

modifyOptionGroup optionGroupName setOptions =
    
    let
        requestInput = ModifyOptionGroupMessage
            
            optionGroupName
            
            options.optionsToInclude
            
            options.optionsToRemove
            
            options.applyImmediately
            
        
        options = setOptions (ModifyOptionGroupOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyOptionGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyOptionGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyOptionGroup"
                
                (AWS.Core.Decode.ResultDecoder "ModifyOptionGroupResult" modifyOptionGroupResultDecoder)
                
            )



{-| Options for a modifyOptionGroup request
-}
type alias ModifyOptionGroupOptions =
    {
    optionsToInclude : Maybe (List OptionConfiguration),optionsToRemove : Maybe (List String),applyImmediately : Maybe Bool
    }



{-| <p>Promotes a Read Replica DB instance to a standalone DB instance.</p> <note> <ul> <li> <p>Backup duration is a function of the amount of changes to the database since the previous backup. If you plan to promote a Read Replica to a standalone instance, we recommend that you enable backups and complete at least one backup prior to promotion. In addition, a Read Replica cannot be promoted to a standalone instance when it is in the <code>backing-up</code> status. If you have enabled backups on your Read Replica, configure the automated backup window so that daily backups do not interfere with Read Replica promotion.</p> </li> <li> <p>This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.</p> </li> </ul> </note>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`


-}

promoteReadReplica :
  
    String ->
  
  
    ( PromoteReadReplicaOptions -> PromoteReadReplicaOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PromoteReadReplicaResult)

promoteReadReplica dBInstanceIdentifier setOptions =
    
    let
        requestInput = PromoteReadReplicaMessage
            
            dBInstanceIdentifier
            
            options.backupRetentionPeriod
            
            options.preferredBackupWindow
            
        
        options = setOptions (PromoteReadReplicaOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "PromoteReadReplica")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs promoteReadReplicaMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PromoteReadReplica"
                
                (AWS.Core.Decode.ResultDecoder "PromoteReadReplicaResult" promoteReadReplicaResultDecoder)
                
            )



{-| Options for a promoteReadReplica request
-}
type alias PromoteReadReplicaOptions =
    {
    backupRetentionPeriod : Maybe Int,preferredBackupWindow : Maybe String
    }



{-| <p>Promotes a Read Replica DB cluster to a standalone DB cluster.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`


-}

promoteReadReplicaDBCluster :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PromoteReadReplicaDBClusterResult)

promoteReadReplicaDBCluster dBClusterIdentifier =
    
    let
        requestInput = PromoteReadReplicaDBClusterMessage
            
            dBClusterIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "PromoteReadReplicaDBCluster")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs promoteReadReplicaDBClusterMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PromoteReadReplicaDBCluster"
                
                (AWS.Core.Decode.ResultDecoder "PromoteReadReplicaDBClusterResult" promoteReadReplicaDBClusterResultDecoder)
                
            )





{-| <p>Purchases a reserved DB instance offering.</p>

__Required Parameters__

* `reservedDBInstancesOfferingId` __:__ `String`


-}

purchaseReservedDBInstancesOffering :
  
    String ->
  
  
    ( PurchaseReservedDBInstancesOfferingOptions -> PurchaseReservedDBInstancesOfferingOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PurchaseReservedDBInstancesOfferingResult)

purchaseReservedDBInstancesOffering reservedDBInstancesOfferingId setOptions =
    
    let
        requestInput = PurchaseReservedDBInstancesOfferingMessage
            
            reservedDBInstancesOfferingId
            
            options.reservedDBInstanceId
            
            options.dBInstanceCount
            
            options.tags
            
        
        options = setOptions (PurchaseReservedDBInstancesOfferingOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "PurchaseReservedDBInstancesOffering")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs purchaseReservedDBInstancesOfferingMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PurchaseReservedDBInstancesOffering"
                
                (AWS.Core.Decode.ResultDecoder "PurchaseReservedDBInstancesOfferingResult" purchaseReservedDBInstancesOfferingResultDecoder)
                
            )



{-| Options for a purchaseReservedDBInstancesOffering request
-}
type alias PurchaseReservedDBInstancesOfferingOptions =
    {
    reservedDBInstanceId : Maybe String,dBInstanceCount : Maybe Int,tags : Maybe (List Tag)
    }



{-| <p>You might need to reboot your DB instance, usually for maintenance reasons. For example, if you make certain modifications, or if you change the DB parameter group associated with the DB instance, you must reboot the instance for the changes to take effect. </p> <p>Rebooting a DB instance restarts the database engine service. Rebooting a DB instance results in a momentary outage, during which the DB instance status is set to rebooting. </p> <p>For more information about rebooting, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_RebootInstance.html">Rebooting a DB Instance</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`


-}

rebootDBInstance :
  
    String ->
  
  
    ( RebootDBInstanceOptions -> RebootDBInstanceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RebootDBInstanceResult)

rebootDBInstance dBInstanceIdentifier setOptions =
    
    let
        requestInput = RebootDBInstanceMessage
            
            dBInstanceIdentifier
            
            options.forceFailover
            
        
        options = setOptions (RebootDBInstanceOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RebootDBInstance")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs rebootDBInstanceMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RebootDBInstance"
                
                (AWS.Core.Decode.ResultDecoder "RebootDBInstanceResult" rebootDBInstanceResultDecoder)
                
            )



{-| Options for a rebootDBInstance request
-}
type alias RebootDBInstanceOptions =
    {
    forceFailover : Maybe Bool
    }



{-| <p> Detaches an Aurora secondary cluster from an Aurora global database cluster. The cluster becomes a standalone cluster with read-write capability instead of being read-only and receiving data from a primary cluster in a different region. </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__



-}

removeFromGlobalCluster :
  
  
    ( RemoveFromGlobalClusterOptions -> RemoveFromGlobalClusterOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveFromGlobalClusterResult)

removeFromGlobalCluster setOptions =
    
    let
        requestInput = RemoveFromGlobalClusterMessage
            
            options.globalClusterIdentifier
            
            options.dbClusterIdentifier
            
        
        options = setOptions (RemoveFromGlobalClusterOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RemoveFromGlobalCluster")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs removeFromGlobalClusterMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemoveFromGlobalCluster"
                
                (AWS.Core.Decode.ResultDecoder "RemoveFromGlobalClusterResult" removeFromGlobalClusterResultDecoder)
                
            )



{-| Options for a removeFromGlobalCluster request
-}
type alias RemoveFromGlobalClusterOptions =
    {
    globalClusterIdentifier : Maybe String,dbClusterIdentifier : Maybe String
    }



{-| <p>Disassociates an AWS Identity and Access Management (IAM) role from an Amazon Aurora DB cluster. For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html">Authorizing Amazon Aurora MySQL to Access Other AWS Services on Your Behalf </a> in the <i>Amazon Aurora User Guide</i>.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`
* `roleArn` __:__ `String`


-}

removeRoleFromDBCluster :
  
    String ->
  
    String ->
  
  
    ( RemoveRoleFromDBClusterOptions -> RemoveRoleFromDBClusterOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

removeRoleFromDBCluster dBClusterIdentifier roleArn setOptions =
    
    let
        requestInput = RemoveRoleFromDBClusterMessage
            
            dBClusterIdentifier
            
            roleArn
            
            options.featureName
            
        
        options = setOptions (RemoveRoleFromDBClusterOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RemoveRoleFromDBCluster")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs removeRoleFromDBClusterMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemoveRoleFromDBCluster"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a removeRoleFromDBCluster request
-}
type alias RemoveRoleFromDBClusterOptions =
    {
    featureName : Maybe String
    }



{-| <p>Disassociates an AWS Identity and Access Management (IAM) role from a DB instance.</p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`
* `roleArn` __:__ `String`
* `featureName` __:__ `String`


-}

removeRoleFromDBInstance :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

removeRoleFromDBInstance dBInstanceIdentifier roleArn featureName =
    
    let
        requestInput = RemoveRoleFromDBInstanceMessage
            
            dBInstanceIdentifier
            
            roleArn
            
            featureName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RemoveRoleFromDBInstance")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs removeRoleFromDBInstanceMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemoveRoleFromDBInstance"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Removes a source identifier from an existing RDS event notification subscription.</p>

__Required Parameters__

* `subscriptionName` __:__ `String`
* `sourceIdentifier` __:__ `String`


-}

removeSourceIdentifierFromSubscription :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveSourceIdentifierFromSubscriptionResult)

removeSourceIdentifierFromSubscription subscriptionName sourceIdentifier =
    
    let
        requestInput = RemoveSourceIdentifierFromSubscriptionMessage
            
            subscriptionName
            
            sourceIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RemoveSourceIdentifierFromSubscription")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs removeSourceIdentifierFromSubscriptionMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemoveSourceIdentifierFromSubscription"
                
                (AWS.Core.Decode.ResultDecoder "RemoveSourceIdentifierFromSubscriptionResult" removeSourceIdentifierFromSubscriptionResultDecoder)
                
            )





{-| <p>Removes metadata tags from an Amazon RDS resource.</p> <p>For an overview on tagging an Amazon RDS resource, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `resourceName` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

removeTagsFromResource :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

removeTagsFromResource resourceName tagKeys =
    
    let
        requestInput = RemoveTagsFromResourceMessage
            
            resourceName
            
            tagKeys
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RemoveTagsFromResource")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs removeTagsFromResourceMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemoveTagsFromResource"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p> Modifies the parameters of a DB cluster parameter group to the default value. To reset specific parameters submit a list of the following: <code>ParameterName</code> and <code>ApplyMethod</code>. To reset the entire DB cluster parameter group, specify the <code>DBClusterParameterGroupName</code> and <code>ResetAllParameters</code> parameters. </p> <p> When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to <code>pending-reboot</code> to take effect on the next DB instance restart or <code>RebootDBInstance</code> request. You must call <code>RebootDBInstance</code> for every DB instance in your DB cluster that you want the updated static parameter to apply to.</p> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterParameterGroupName` __:__ `String`


-}

resetDBClusterParameterGroup :
  
    String ->
  
  
    ( ResetDBClusterParameterGroupOptions -> ResetDBClusterParameterGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBClusterParameterGroupNameMessage)

resetDBClusterParameterGroup dBClusterParameterGroupName setOptions =
    
    let
        requestInput = ResetDBClusterParameterGroupMessage
            
            dBClusterParameterGroupName
            
            options.resetAllParameters
            
            options.parameters
            
        
        options = setOptions (ResetDBClusterParameterGroupOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ResetDBClusterParameterGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs resetDBClusterParameterGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ResetDBClusterParameterGroup"
                
                (AWS.Core.Decode.ResultDecoder "ResetDBClusterParameterGroupResult" dBClusterParameterGroupNameMessageDecoder)
                
            )



{-| Options for a resetDBClusterParameterGroup request
-}
type alias ResetDBClusterParameterGroupOptions =
    {
    resetAllParameters : Maybe Bool,parameters : Maybe (List Parameter)
    }



{-| <p>Modifies the parameters of a DB parameter group to the engine/system default value. To reset specific parameters, provide a list of the following: <code>ParameterName</code> and <code>ApplyMethod</code>. To reset the entire DB parameter group, specify the <code>DBParameterGroup</code> name and <code>ResetAllParameters</code> parameters. When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to <code>pending-reboot</code> to take effect on the next DB instance restart or <code>RebootDBInstance</code> request. </p>

__Required Parameters__

* `dBParameterGroupName` __:__ `String`


-}

resetDBParameterGroup :
  
    String ->
  
  
    ( ResetDBParameterGroupOptions -> ResetDBParameterGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DBParameterGroupNameMessage)

resetDBParameterGroup dBParameterGroupName setOptions =
    
    let
        requestInput = ResetDBParameterGroupMessage
            
            dBParameterGroupName
            
            options.resetAllParameters
            
            options.parameters
            
        
        options = setOptions (ResetDBParameterGroupOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ResetDBParameterGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs resetDBParameterGroupMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ResetDBParameterGroup"
                
                (AWS.Core.Decode.ResultDecoder "ResetDBParameterGroupResult" dBParameterGroupNameMessageDecoder)
                
            )



{-| Options for a resetDBParameterGroup request
-}
type alias ResetDBParameterGroupOptions =
    {
    resetAllParameters : Maybe Bool,parameters : Maybe (List Parameter)
    }



{-| <p>Creates an Amazon Aurora DB cluster from data stored in an Amazon S3 bucket. Amazon RDS must be authorized to access the Amazon S3 bucket and the data must be created using the Percona XtraBackup utility as described in <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Migrating.html"> Migrating Data to an Amazon Aurora MySQL DB Cluster</a> in the <i>Amazon Aurora User Guide</i>.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`
* `engine` __:__ `String`
* `masterUsername` __:__ `String`
* `masterUserPassword` __:__ `String`
* `sourceEngine` __:__ `String`
* `sourceEngineVersion` __:__ `String`
* `s3BucketName` __:__ `String`
* `s3IngestionRoleArn` __:__ `String`


-}

restoreDBClusterFromS3 :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( RestoreDBClusterFromS3Options -> RestoreDBClusterFromS3Options ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreDBClusterFromS3Result)

restoreDBClusterFromS3 dBClusterIdentifier engine masterUsername masterUserPassword sourceEngine sourceEngineVersion s3BucketName s3IngestionRoleArn setOptions =
    
    let
        requestInput = RestoreDBClusterFromS3Message
            
            options.availabilityZones
            
            options.backupRetentionPeriod
            
            options.characterSetName
            
            options.databaseName
            
            dBClusterIdentifier
            
            options.dBClusterParameterGroupName
            
            options.vpcSecurityGroupIds
            
            options.dBSubnetGroupName
            
            engine
            
            options.engineVersion
            
            options.port_
            
            masterUsername
            
            masterUserPassword
            
            options.optionGroupName
            
            options.preferredBackupWindow
            
            options.preferredMaintenanceWindow
            
            options.tags
            
            options.storageEncrypted
            
            options.kmsKeyId
            
            options.enableIAMDatabaseAuthentication
            
            sourceEngine
            
            sourceEngineVersion
            
            s3BucketName
            
            options.s3Prefix
            
            s3IngestionRoleArn
            
            options.backtrackWindow
            
            options.enableCloudwatchLogsExports
            
            options.deletionProtection
            
            options.copyTagsToSnapshot
            
        
        options = setOptions (RestoreDBClusterFromS3Options Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RestoreDBClusterFromS3")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs restoreDBClusterFromS3MessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RestoreDBClusterFromS3"
                
                (AWS.Core.Decode.ResultDecoder "RestoreDBClusterFromS3Result" restoreDBClusterFromS3ResultDecoder)
                
            )



{-| Options for a restoreDBClusterFromS3 request
-}
type alias RestoreDBClusterFromS3Options =
    {
    availabilityZones : Maybe (List String),backupRetentionPeriod : Maybe Int,characterSetName : Maybe String,databaseName : Maybe String,dBClusterParameterGroupName : Maybe String,vpcSecurityGroupIds : Maybe (List String),dBSubnetGroupName : Maybe String,engineVersion : Maybe String,port_ : Maybe Int,optionGroupName : Maybe String,preferredBackupWindow : Maybe String,preferredMaintenanceWindow : Maybe String,tags : Maybe (List Tag),storageEncrypted : Maybe Bool,kmsKeyId : Maybe String,enableIAMDatabaseAuthentication : Maybe Bool,s3Prefix : Maybe String,backtrackWindow : Maybe Int,enableCloudwatchLogsExports : Maybe (List String),deletionProtection : Maybe Bool,copyTagsToSnapshot : Maybe Bool
    }



{-| <p>Creates a new DB cluster from a DB snapshot or DB cluster snapshot.</p> <p>If a DB snapshot is specified, the target DB cluster is created from the source DB snapshot with a default configuration and default security group.</p> <p>If a DB cluster snapshot is specified, the target DB cluster is created from the source DB cluster restore point with the same configuration as the original source DB cluster, except that the new DB cluster is created with the default security group.</p> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`
* `snapshotIdentifier` __:__ `String`
* `engine` __:__ `String`


-}

restoreDBClusterFromSnapshot :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( RestoreDBClusterFromSnapshotOptions -> RestoreDBClusterFromSnapshotOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreDBClusterFromSnapshotResult)

restoreDBClusterFromSnapshot dBClusterIdentifier snapshotIdentifier engine setOptions =
    
    let
        requestInput = RestoreDBClusterFromSnapshotMessage
            
            options.availabilityZones
            
            dBClusterIdentifier
            
            snapshotIdentifier
            
            engine
            
            options.engineVersion
            
            options.port_
            
            options.dBSubnetGroupName
            
            options.databaseName
            
            options.optionGroupName
            
            options.vpcSecurityGroupIds
            
            options.tags
            
            options.kmsKeyId
            
            options.enableIAMDatabaseAuthentication
            
            options.backtrackWindow
            
            options.enableCloudwatchLogsExports
            
            options.engineMode
            
            options.scalingConfiguration
            
            options.dBClusterParameterGroupName
            
            options.deletionProtection
            
            options.copyTagsToSnapshot
            
        
        options = setOptions (RestoreDBClusterFromSnapshotOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RestoreDBClusterFromSnapshot")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs restoreDBClusterFromSnapshotMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RestoreDBClusterFromSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "RestoreDBClusterFromSnapshotResult" restoreDBClusterFromSnapshotResultDecoder)
                
            )



{-| Options for a restoreDBClusterFromSnapshot request
-}
type alias RestoreDBClusterFromSnapshotOptions =
    {
    availabilityZones : Maybe (List String),engineVersion : Maybe String,port_ : Maybe Int,dBSubnetGroupName : Maybe String,databaseName : Maybe String,optionGroupName : Maybe String,vpcSecurityGroupIds : Maybe (List String),tags : Maybe (List Tag),kmsKeyId : Maybe String,enableIAMDatabaseAuthentication : Maybe Bool,backtrackWindow : Maybe Int,enableCloudwatchLogsExports : Maybe (List String),engineMode : Maybe String,scalingConfiguration : Maybe ScalingConfiguration,dBClusterParameterGroupName : Maybe String,deletionProtection : Maybe Bool,copyTagsToSnapshot : Maybe Bool
    }



{-| <p>Restores a DB cluster to an arbitrary point in time. Users can restore to any point in time before <code>LatestRestorableTime</code> for up to <code>BackupRetentionPeriod</code> days. The target DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group. </p> <note> <p>This action only restores the DB cluster, not the DB instances for that DB cluster. You must invoke the <code>CreateDBInstance</code> action to create DB instances for the restored DB cluster, specifying the identifier of the restored DB cluster in <code>DBClusterIdentifier</code>. You can create DB instances only after the <code>RestoreDBClusterToPointInTime</code> action has completed and the DB cluster is available.</p> </note> <p>For more information on Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`
* `sourceDBClusterIdentifier` __:__ `String`


-}

restoreDBClusterToPointInTime :
  
    String ->
  
    String ->
  
  
    ( RestoreDBClusterToPointInTimeOptions -> RestoreDBClusterToPointInTimeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreDBClusterToPointInTimeResult)

restoreDBClusterToPointInTime dBClusterIdentifier sourceDBClusterIdentifier setOptions =
    
    let
        requestInput = RestoreDBClusterToPointInTimeMessage
            
            dBClusterIdentifier
            
            options.restoreType
            
            sourceDBClusterIdentifier
            
            options.restoreToTime
            
            options.useLatestRestorableTime
            
            options.port_
            
            options.dBSubnetGroupName
            
            options.optionGroupName
            
            options.vpcSecurityGroupIds
            
            options.tags
            
            options.kmsKeyId
            
            options.enableIAMDatabaseAuthentication
            
            options.backtrackWindow
            
            options.enableCloudwatchLogsExports
            
            options.dBClusterParameterGroupName
            
            options.deletionProtection
            
            options.copyTagsToSnapshot
            
        
        options = setOptions (RestoreDBClusterToPointInTimeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RestoreDBClusterToPointInTime")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs restoreDBClusterToPointInTimeMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RestoreDBClusterToPointInTime"
                
                (AWS.Core.Decode.ResultDecoder "RestoreDBClusterToPointInTimeResult" restoreDBClusterToPointInTimeResultDecoder)
                
            )



{-| Options for a restoreDBClusterToPointInTime request
-}
type alias RestoreDBClusterToPointInTimeOptions =
    {
    restoreType : Maybe String,restoreToTime : Maybe Posix,useLatestRestorableTime : Maybe Bool,port_ : Maybe Int,dBSubnetGroupName : Maybe String,optionGroupName : Maybe String,vpcSecurityGroupIds : Maybe (List String),tags : Maybe (List Tag),kmsKeyId : Maybe String,enableIAMDatabaseAuthentication : Maybe Bool,backtrackWindow : Maybe Int,enableCloudwatchLogsExports : Maybe (List String),dBClusterParameterGroupName : Maybe String,deletionProtection : Maybe Bool,copyTagsToSnapshot : Maybe Bool
    }



{-| <p>Creates a new DB instance from a DB snapshot. The target database is created from the source database restore point with the most of original configuration with the default security group and the default DB parameter group. By default, the new DB instance is created as a single-AZ deployment except when the instance is a SQL Server instance that has an option group that is associated with mirroring; in this case, the instance becomes a mirrored AZ deployment and not a single-AZ deployment.</p> <p>If your intent is to replace your original DB instance with the new, restored DB instance, then rename your original DB instance before you call the RestoreDBInstanceFromDBSnapshot action. RDS doesn't allow two DB instances with the same name. Once you have renamed your original DB instance with a different identifier, then you can pass the original name of the DB instance as the DBInstanceIdentifier in the call to the RestoreDBInstanceFromDBSnapshot action. The result is that you will replace the original DB instance with the DB instance created from the snapshot.</p> <p>If you are restoring from a shared manual DB snapshot, the <code>DBSnapshotIdentifier</code> must be the ARN of the shared DB snapshot.</p> <note> <p>This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora, use <code>RestoreDBClusterFromSnapshot</code>.</p> </note>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`
* `dBSnapshotIdentifier` __:__ `String`


-}

restoreDBInstanceFromDBSnapshot :
  
    String ->
  
    String ->
  
  
    ( RestoreDBInstanceFromDBSnapshotOptions -> RestoreDBInstanceFromDBSnapshotOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreDBInstanceFromDBSnapshotResult)

restoreDBInstanceFromDBSnapshot dBInstanceIdentifier dBSnapshotIdentifier setOptions =
    
    let
        requestInput = RestoreDBInstanceFromDBSnapshotMessage
            
            dBInstanceIdentifier
            
            dBSnapshotIdentifier
            
            options.dBInstanceClass
            
            options.port_
            
            options.availabilityZone
            
            options.dBSubnetGroupName
            
            options.multiAZ
            
            options.publiclyAccessible
            
            options.autoMinorVersionUpgrade
            
            options.licenseModel
            
            options.dBName
            
            options.engine
            
            options.iops
            
            options.optionGroupName
            
            options.tags
            
            options.storageType
            
            options.tdeCredentialArn
            
            options.tdeCredentialPassword
            
            options.vpcSecurityGroupIds
            
            options.domain
            
            options.copyTagsToSnapshot
            
            options.domainIAMRoleName
            
            options.enableIAMDatabaseAuthentication
            
            options.enableCloudwatchLogsExports
            
            options.processorFeatures
            
            options.useDefaultProcessorFeatures
            
            options.dBParameterGroupName
            
            options.deletionProtection
            
        
        options = setOptions (RestoreDBInstanceFromDBSnapshotOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RestoreDBInstanceFromDBSnapshot")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs restoreDBInstanceFromDBSnapshotMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RestoreDBInstanceFromDBSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "RestoreDBInstanceFromDBSnapshotResult" restoreDBInstanceFromDBSnapshotResultDecoder)
                
            )



{-| Options for a restoreDBInstanceFromDBSnapshot request
-}
type alias RestoreDBInstanceFromDBSnapshotOptions =
    {
    dBInstanceClass : Maybe String,port_ : Maybe Int,availabilityZone : Maybe String,dBSubnetGroupName : Maybe String,multiAZ : Maybe Bool,publiclyAccessible : Maybe Bool,autoMinorVersionUpgrade : Maybe Bool,licenseModel : Maybe String,dBName : Maybe String,engine : Maybe String,iops : Maybe Int,optionGroupName : Maybe String,tags : Maybe (List Tag),storageType : Maybe String,tdeCredentialArn : Maybe String,tdeCredentialPassword : Maybe String,vpcSecurityGroupIds : Maybe (List String),domain : Maybe String,copyTagsToSnapshot : Maybe Bool,domainIAMRoleName : Maybe String,enableIAMDatabaseAuthentication : Maybe Bool,enableCloudwatchLogsExports : Maybe (List String),processorFeatures : Maybe (List ProcessorFeature),useDefaultProcessorFeatures : Maybe Bool,dBParameterGroupName : Maybe String,deletionProtection : Maybe Bool
    }



{-| <p>Amazon Relational Database Service (Amazon RDS) supports importing MySQL databases by using backup files. You can create a backup of your on-premises database, store it on Amazon Simple Storage Service (Amazon S3), and then restore the backup file onto a new Amazon RDS DB instance running MySQL. For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html">Importing Data into an Amazon RDS MySQL DB Instance</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`
* `dBInstanceClass` __:__ `String`
* `engine` __:__ `String`
* `sourceEngine` __:__ `String`
* `sourceEngineVersion` __:__ `String`
* `s3BucketName` __:__ `String`
* `s3IngestionRoleArn` __:__ `String`


-}

restoreDBInstanceFromS3 :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( RestoreDBInstanceFromS3Options -> RestoreDBInstanceFromS3Options ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreDBInstanceFromS3Result)

restoreDBInstanceFromS3 dBInstanceIdentifier dBInstanceClass engine sourceEngine sourceEngineVersion s3BucketName s3IngestionRoleArn setOptions =
    
    let
        requestInput = RestoreDBInstanceFromS3Message
            
            options.dBName
            
            dBInstanceIdentifier
            
            options.allocatedStorage
            
            dBInstanceClass
            
            engine
            
            options.masterUsername
            
            options.masterUserPassword
            
            options.dBSecurityGroups
            
            options.vpcSecurityGroupIds
            
            options.availabilityZone
            
            options.dBSubnetGroupName
            
            options.preferredMaintenanceWindow
            
            options.dBParameterGroupName
            
            options.backupRetentionPeriod
            
            options.preferredBackupWindow
            
            options.port_
            
            options.multiAZ
            
            options.engineVersion
            
            options.autoMinorVersionUpgrade
            
            options.licenseModel
            
            options.iops
            
            options.optionGroupName
            
            options.publiclyAccessible
            
            options.tags
            
            options.storageType
            
            options.storageEncrypted
            
            options.kmsKeyId
            
            options.copyTagsToSnapshot
            
            options.monitoringInterval
            
            options.monitoringRoleArn
            
            options.enableIAMDatabaseAuthentication
            
            sourceEngine
            
            sourceEngineVersion
            
            s3BucketName
            
            options.s3Prefix
            
            s3IngestionRoleArn
            
            options.enablePerformanceInsights
            
            options.performanceInsightsKMSKeyId
            
            options.performanceInsightsRetentionPeriod
            
            options.enableCloudwatchLogsExports
            
            options.processorFeatures
            
            options.useDefaultProcessorFeatures
            
            options.deletionProtection
            
        
        options = setOptions (RestoreDBInstanceFromS3Options Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RestoreDBInstanceFromS3")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs restoreDBInstanceFromS3MessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RestoreDBInstanceFromS3"
                
                (AWS.Core.Decode.ResultDecoder "RestoreDBInstanceFromS3Result" restoreDBInstanceFromS3ResultDecoder)
                
            )



{-| Options for a restoreDBInstanceFromS3 request
-}
type alias RestoreDBInstanceFromS3Options =
    {
    dBName : Maybe String,allocatedStorage : Maybe Int,masterUsername : Maybe String,masterUserPassword : Maybe String,dBSecurityGroups : Maybe (List String),vpcSecurityGroupIds : Maybe (List String),availabilityZone : Maybe String,dBSubnetGroupName : Maybe String,preferredMaintenanceWindow : Maybe String,dBParameterGroupName : Maybe String,backupRetentionPeriod : Maybe Int,preferredBackupWindow : Maybe String,port_ : Maybe Int,multiAZ : Maybe Bool,engineVersion : Maybe String,autoMinorVersionUpgrade : Maybe Bool,licenseModel : Maybe String,iops : Maybe Int,optionGroupName : Maybe String,publiclyAccessible : Maybe Bool,tags : Maybe (List Tag),storageType : Maybe String,storageEncrypted : Maybe Bool,kmsKeyId : Maybe String,copyTagsToSnapshot : Maybe Bool,monitoringInterval : Maybe Int,monitoringRoleArn : Maybe String,enableIAMDatabaseAuthentication : Maybe Bool,s3Prefix : Maybe String,enablePerformanceInsights : Maybe Bool,performanceInsightsKMSKeyId : Maybe String,performanceInsightsRetentionPeriod : Maybe Int,enableCloudwatchLogsExports : Maybe (List String),processorFeatures : Maybe (List ProcessorFeature),useDefaultProcessorFeatures : Maybe Bool,deletionProtection : Maybe Bool
    }



{-| <p>Restores a DB instance to an arbitrary point in time. You can restore to any point in time before the time identified by the LatestRestorableTime property. You can restore to a point up to the number of days specified by the BackupRetentionPeriod property.</p> <p>The target database is created with most of the original configuration, but in a system-selected Availability Zone, with the default security group, the default subnet group, and the default DB parameter group. By default, the new DB instance is created as a single-AZ deployment except when the instance is a SQL Server instance that has an option group that is associated with mirroring; in this case, the instance becomes a mirrored deployment and not a single-AZ deployment.</p> <note> <p>This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora, use <code>RestoreDBClusterToPointInTime</code>.</p> </note>

__Required Parameters__

* `targetDBInstanceIdentifier` __:__ `String`


-}

restoreDBInstanceToPointInTime :
  
    String ->
  
  
    ( RestoreDBInstanceToPointInTimeOptions -> RestoreDBInstanceToPointInTimeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreDBInstanceToPointInTimeResult)

restoreDBInstanceToPointInTime targetDBInstanceIdentifier setOptions =
    
    let
        requestInput = RestoreDBInstanceToPointInTimeMessage
            
            options.sourceDBInstanceIdentifier
            
            targetDBInstanceIdentifier
            
            options.restoreTime
            
            options.useLatestRestorableTime
            
            options.dBInstanceClass
            
            options.port_
            
            options.availabilityZone
            
            options.dBSubnetGroupName
            
            options.multiAZ
            
            options.publiclyAccessible
            
            options.autoMinorVersionUpgrade
            
            options.licenseModel
            
            options.dBName
            
            options.engine
            
            options.iops
            
            options.optionGroupName
            
            options.copyTagsToSnapshot
            
            options.tags
            
            options.storageType
            
            options.tdeCredentialArn
            
            options.tdeCredentialPassword
            
            options.vpcSecurityGroupIds
            
            options.domain
            
            options.domainIAMRoleName
            
            options.enableIAMDatabaseAuthentication
            
            options.enableCloudwatchLogsExports
            
            options.processorFeatures
            
            options.useDefaultProcessorFeatures
            
            options.dBParameterGroupName
            
            options.deletionProtection
            
            options.sourceDbiResourceId
            
        
        options = setOptions (RestoreDBInstanceToPointInTimeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RestoreDBInstanceToPointInTime")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs restoreDBInstanceToPointInTimeMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RestoreDBInstanceToPointInTime"
                
                (AWS.Core.Decode.ResultDecoder "RestoreDBInstanceToPointInTimeResult" restoreDBInstanceToPointInTimeResultDecoder)
                
            )



{-| Options for a restoreDBInstanceToPointInTime request
-}
type alias RestoreDBInstanceToPointInTimeOptions =
    {
    sourceDBInstanceIdentifier : Maybe String,restoreTime : Maybe Posix,useLatestRestorableTime : Maybe Bool,dBInstanceClass : Maybe String,port_ : Maybe Int,availabilityZone : Maybe String,dBSubnetGroupName : Maybe String,multiAZ : Maybe Bool,publiclyAccessible : Maybe Bool,autoMinorVersionUpgrade : Maybe Bool,licenseModel : Maybe String,dBName : Maybe String,engine : Maybe String,iops : Maybe Int,optionGroupName : Maybe String,copyTagsToSnapshot : Maybe Bool,tags : Maybe (List Tag),storageType : Maybe String,tdeCredentialArn : Maybe String,tdeCredentialPassword : Maybe String,vpcSecurityGroupIds : Maybe (List String),domain : Maybe String,domainIAMRoleName : Maybe String,enableIAMDatabaseAuthentication : Maybe Bool,enableCloudwatchLogsExports : Maybe (List String),processorFeatures : Maybe (List ProcessorFeature),useDefaultProcessorFeatures : Maybe Bool,dBParameterGroupName : Maybe String,deletionProtection : Maybe Bool,sourceDbiResourceId : Maybe String
    }



{-| <p>Revokes ingress from a DBSecurityGroup for previously authorized IP ranges or EC2 or VPC Security Groups. Required parameters for this API are one of CIDRIP, EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or EC2SecurityGroupId).</p>

__Required Parameters__

* `dBSecurityGroupName` __:__ `String`


-}

revokeDBSecurityGroupIngress :
  
    String ->
  
  
    ( RevokeDBSecurityGroupIngressOptions -> RevokeDBSecurityGroupIngressOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RevokeDBSecurityGroupIngressResult)

revokeDBSecurityGroupIngress dBSecurityGroupName setOptions =
    
    let
        requestInput = RevokeDBSecurityGroupIngressMessage
            
            dBSecurityGroupName
            
            options.cIDRIP
            
            options.eC2SecurityGroupName
            
            options.eC2SecurityGroupId
            
            options.eC2SecurityGroupOwnerId
            
        
        options = setOptions (RevokeDBSecurityGroupIngressOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RevokeDBSecurityGroupIngress")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs revokeDBSecurityGroupIngressMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RevokeDBSecurityGroupIngress"
                
                (AWS.Core.Decode.ResultDecoder "RevokeDBSecurityGroupIngressResult" revokeDBSecurityGroupIngressResultDecoder)
                
            )



{-| Options for a revokeDBSecurityGroupIngress request
-}
type alias RevokeDBSecurityGroupIngressOptions =
    {
    cIDRIP : Maybe String,eC2SecurityGroupName : Maybe String,eC2SecurityGroupId : Maybe String,eC2SecurityGroupOwnerId : Maybe String
    }



{-| <p>Starts a database activity stream to monitor activity on the database. For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html">Database Activity Streams</a> in the <i>Amazon Aurora User Guide</i>.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `mode` __:__ `ActivityStreamMode`
* `kmsKeyId` __:__ `String`


-}

startActivityStream :
  
    String ->
  
    ActivityStreamMode ->
  
    String ->
  
  
    ( StartActivityStreamOptions -> StartActivityStreamOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartActivityStreamResponse)

startActivityStream resourceArn mode kmsKeyId setOptions =
    
    let
        requestInput = StartActivityStreamRequest
            
            resourceArn
            
            mode
            
            kmsKeyId
            
            options.applyImmediately
            
        
        options = setOptions (StartActivityStreamOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "StartActivityStream")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs startActivityStreamRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartActivityStream"
                
                (AWS.Core.Decode.ResultDecoder "StartActivityStreamResult" startActivityStreamResponseDecoder)
                
            )



{-| Options for a startActivityStream request
-}
type alias StartActivityStreamOptions =
    {
    applyImmediately : Maybe Bool
    }



{-| <p>Starts an Amazon Aurora DB cluster that was stopped using the AWS console, the stop-db-cluster AWS CLI command, or the StopDBCluster action.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html"> Stopping and Starting an Aurora Cluster</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`


-}

startDBCluster :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartDBClusterResult)

startDBCluster dBClusterIdentifier =
    
    let
        requestInput = StartDBClusterMessage
            
            dBClusterIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "StartDBCluster")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs startDBClusterMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartDBCluster"
                
                (AWS.Core.Decode.ResultDecoder "StartDBClusterResult" startDBClusterResultDecoder)
                
            )





{-| <p> Starts an Amazon RDS DB instance that was stopped using the AWS console, the stop-db-instance AWS CLI command, or the StopDBInstance action. </p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StartInstance.html"> Starting an Amazon RDS DB instance That Was Previously Stopped</a> in the <i>Amazon RDS User Guide.</i> </p> <note> <p> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora DB clusters, use <code>StartDBCluster</code> instead. </p> </note>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`


-}

startDBInstance :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartDBInstanceResult)

startDBInstance dBInstanceIdentifier =
    
    let
        requestInput = StartDBInstanceMessage
            
            dBInstanceIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "StartDBInstance")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs startDBInstanceMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartDBInstance"
                
                (AWS.Core.Decode.ResultDecoder "StartDBInstanceResult" startDBInstanceResultDecoder)
                
            )





{-| <p>Stops a database activity stream that was started using the AWS console, the <code>start-activity-stream</code> AWS CLI command, or the <code>StartActivityStream</code> action.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html">Database Activity Streams</a> in the <i>Amazon Aurora User Guide</i>.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

stopActivityStream :
  
    String ->
  
  
    ( StopActivityStreamOptions -> StopActivityStreamOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopActivityStreamResponse)

stopActivityStream resourceArn setOptions =
    
    let
        requestInput = StopActivityStreamRequest
            
            resourceArn
            
            options.applyImmediately
            
        
        options = setOptions (StopActivityStreamOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "StopActivityStream")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs stopActivityStreamRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopActivityStream"
                
                (AWS.Core.Decode.ResultDecoder "StopActivityStreamResult" stopActivityStreamResponseDecoder)
                
            )



{-| Options for a stopActivityStream request
-}
type alias StopActivityStreamOptions =
    {
    applyImmediately : Maybe Bool
    }



{-| <p> Stops an Amazon Aurora DB cluster. When you stop a DB cluster, Aurora retains the DB cluster's metadata, including its endpoints and DB parameter groups. Aurora also retains the transaction logs so you can do a point-in-time restore if necessary. </p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html"> Stopping and Starting an Aurora Cluster</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`


-}

stopDBCluster :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopDBClusterResult)

stopDBCluster dBClusterIdentifier =
    
    let
        requestInput = StopDBClusterMessage
            
            dBClusterIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "StopDBCluster")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs stopDBClusterMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopDBCluster"
                
                (AWS.Core.Decode.ResultDecoder "StopDBClusterResult" stopDBClusterResultDecoder)
                
            )





{-| <p> Stops an Amazon RDS DB instance. When you stop a DB instance, Amazon RDS retains the DB instance's metadata, including its endpoint, DB parameter group, and option group membership. Amazon RDS also retains the transaction logs so you can do a point-in-time restore if necessary. </p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StopInstance.html"> Stopping an Amazon RDS DB Instance Temporarily</a> in the <i>Amazon RDS User Guide.</i> </p> <note> <p> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora clusters, use <code>StopDBCluster</code> instead. </p> </note>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`


-}

stopDBInstance :
  
    String ->
  
  
    ( StopDBInstanceOptions -> StopDBInstanceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopDBInstanceResult)

stopDBInstance dBInstanceIdentifier setOptions =
    
    let
        requestInput = StopDBInstanceMessage
            
            dBInstanceIdentifier
            
            options.dBSnapshotIdentifier
            
        
        options = setOptions (StopDBInstanceOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "StopDBInstance")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs stopDBInstanceMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopDBInstance"
                
                (AWS.Core.Decode.ResultDecoder "StopDBInstanceResult" stopDBInstanceResultDecoder)
                
            )



{-| Options for a stopDBInstance request
-}
type alias StopDBInstanceOptions =
    {
    dBSnapshotIdentifier : Maybe String
    }




{-| Type of HTTP response from accountAttribute
-}
type alias AccountAttributesMessage =
    { accountQuotas : Maybe (List AccountQuota)
    }



accountAttributesMessageDecoder : JD.Decoder AccountAttributesMessage
accountAttributesMessageDecoder =
    JD.succeed AccountAttributesMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AccountQuotas", "accountQuotas"]
            (JD.list accountQuotaDecoder)
        )
        




accountAttributesMessageToString : AccountAttributesMessage -> String -- List (String, String)
accountAttributesMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accountQuotas" "" -- val.accountQuotas
        
    --     |> Dict.toList
    ""



{-| <p>Describes a quota for an AWS account.</p> <p>The following are account quotas:</p> <ul> <li> <p> <code>AllocatedStorage</code> - The total allocated storage per account, in GiB. The used value is the total allocated storage in the account, in GiB.</p> </li> <li> <p> <code>AuthorizationsPerDBSecurityGroup</code> - The number of ingress rules per DB security group. The used value is the highest number of ingress rules in a DB security group in the account. Other DB security groups in the account might have a lower number of ingress rules.</p> </li> <li> <p> <code>CustomEndpointsPerDBCluster</code> - The number of custom endpoints per DB cluster. The used value is the highest number of custom endpoints in a DB clusters in the account. Other DB clusters in the account might have a lower number of custom endpoints.</p> </li> <li> <p> <code>DBClusterParameterGroups</code> - The number of DB cluster parameter groups per account, excluding default parameter groups. The used value is the count of nondefault DB cluster parameter groups in the account.</p> </li> <li> <p> <code>DBClusterRoles</code> - The number of associated AWS Identity and Access Management (IAM) roles per DB cluster. The used value is the highest number of associated IAM roles for a DB cluster in the account. Other DB clusters in the account might have a lower number of associated IAM roles.</p> </li> <li> <p> <code>DBClusters</code> - The number of DB clusters per account. The used value is the count of DB clusters in the account.</p> </li> <li> <p> <code>DBInstanceRoles</code> - The number of associated IAM roles per DB instance. The used value is the highest number of associated IAM roles for a DB instance in the account. Other DB instances in the account might have a lower number of associated IAM roles.</p> </li> <li> <p> <code>DBInstances</code> - The number of DB instances per account. The used value is the count of the DB instances in the account.</p> </li> <li> <p> <code>DBParameterGroups</code> - The number of DB parameter groups per account, excluding default parameter groups. The used value is the count of nondefault DB parameter groups in the account.</p> </li> <li> <p> <code>DBSecurityGroups</code> - The number of DB security groups (not VPC security groups) per account, excluding the default security group. The used value is the count of nondefault DB security groups in the account.</p> </li> <li> <p> <code>DBSubnetGroups</code> - The number of DB subnet groups per account. The used value is the count of the DB subnet groups in the account.</p> </li> <li> <p> <code>EventSubscriptions</code> - The number of event subscriptions per account. The used value is the count of the event subscriptions in the account.</p> </li> <li> <p> <code>ManualSnapshots</code> - The number of manual DB snapshots per account. The used value is the count of the manual DB snapshots in the account.</p> </li> <li> <p> <code>OptionGroups</code> - The number of DB option groups per account, excluding default option groups. The used value is the count of nondefault DB option groups in the account.</p> </li> <li> <p> <code>ReadReplicasPerMaster</code> - The number of Read Replicas per DB instance. The used value is the highest number of Read Replicas for a DB instance in the account. Other DB instances in the account might have a lower number of Read Replicas.</p> </li> <li> <p> <code>ReservedDBInstances</code> - The number of reserved DB instances per account. The used value is the count of the active reserved DB instances in the account.</p> </li> <li> <p> <code>SubnetsPerDBSubnetGroup</code> - The number of subnets per DB subnet group. The used value is highest number of subnets for a DB subnet group in the account. Other DB subnet groups in the account might have a lower number of subnets.</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html">Limits</a> in the <i>Amazon RDS User Guide</i> and <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_Limits.html">Limits</a> in the <i>Amazon Aurora User Guide</i>.</p>
-}
type alias AccountQuota =
    { accountQuotaName : Maybe String
    , used : Maybe Int
    , max : Maybe Int
    }



accountQuotaDecoder : JD.Decoder AccountQuota
accountQuotaDecoder =
    JD.succeed AccountQuota
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AccountQuotaName", "accountQuotaName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Used", "used"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Max", "max"]
            JD.int
        )
        




accountQuotaToString : AccountQuota -> String -- List (String, String)
accountQuotaToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accountQuotaName" "" -- val.accountQuotaName
        
    --     |> Dict.insert
    --         "used" "" -- val.used
        
    --     |> Dict.insert
    --         "max" "" -- val.max
        
    --     |> Dict.toList
    ""



{-| One of

* `ActivityStreamMode_sync`
* `ActivityStreamMode_async`

-}
type ActivityStreamMode
    = ActivityStreamMode_sync
    | ActivityStreamMode_async



activityStreamModeDecoder : JD.Decoder ActivityStreamMode
activityStreamModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "sync" ->
                        JD.succeed ActivityStreamMode_sync

                    "async" ->
                        JD.succeed ActivityStreamMode_async


                    _ ->
                        JD.fail "bad thing"
            )




activityStreamModeToString : ActivityStreamMode -> String
activityStreamModeToString val =
    case val of
        ActivityStreamMode_sync ->
            "sync"

        ActivityStreamMode_async ->
            "async"




{-| One of

* `ActivityStreamStatus_stopped`
* `ActivityStreamStatus_starting`
* `ActivityStreamStatus_started`
* `ActivityStreamStatus_stopping`

-}
type ActivityStreamStatus
    = ActivityStreamStatus_stopped
    | ActivityStreamStatus_starting
    | ActivityStreamStatus_started
    | ActivityStreamStatus_stopping



activityStreamStatusDecoder : JD.Decoder ActivityStreamStatus
activityStreamStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "stopped" ->
                        JD.succeed ActivityStreamStatus_stopped

                    "starting" ->
                        JD.succeed ActivityStreamStatus_starting

                    "started" ->
                        JD.succeed ActivityStreamStatus_started

                    "stopping" ->
                        JD.succeed ActivityStreamStatus_stopping


                    _ ->
                        JD.fail "bad thing"
            )




activityStreamStatusToString : ActivityStreamStatus -> String
activityStreamStatusToString val =
    case val of
        ActivityStreamStatus_stopped ->
            "stopped"

        ActivityStreamStatus_starting ->
            "starting"

        ActivityStreamStatus_started ->
            "started"

        ActivityStreamStatus_stopping ->
            "stopping"




{-| Type of HTTP response from addSourceIdentifierToSubscripti
-}
type alias AddSourceIdentifierToSubscriptionResult =
    { eventSubscription : Maybe EventSubscription
    }



addSourceIdentifierToSubscriptionResultDecoder : JD.Decoder AddSourceIdentifierToSubscriptionResult
addSourceIdentifierToSubscriptionResultDecoder =
    JD.succeed AddSourceIdentifierToSubscriptionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventSubscription", "eventSubscription"]
            eventSubscriptionDecoder
        )
        




addSourceIdentifierToSubscriptionResultToString : AddSourceIdentifierToSubscriptionResult -> String -- List (String, String)
addSourceIdentifierToSubscriptionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventSubscription" "" -- val.eventSubscription
        
    --     |> Dict.toList
    ""



{-| One of

* `ApplyMethod_immediate`
* `ApplyMethod_pending-reboot`

-}
type ApplyMethod
    = ApplyMethod_immediate
    | ApplyMethod_pending_reboot



applyMethodDecoder : JD.Decoder ApplyMethod
applyMethodDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "immediate" ->
                        JD.succeed ApplyMethod_immediate

                    "pending_reboot" ->
                        JD.succeed ApplyMethod_pending_reboot


                    _ ->
                        JD.fail "bad thing"
            )




applyMethodToString : ApplyMethod -> String
applyMethodToString val =
    case val of
        ApplyMethod_immediate ->
            "immediate"

        ApplyMethod_pending_reboot ->
            "pending_reboot"




{-| Type of HTTP response from applyPendingMaintenanceActi
-}
type alias ApplyPendingMaintenanceActionResult =
    { resourcePendingMaintenanceActions : Maybe ResourcePendingMaintenanceActions
    }



applyPendingMaintenanceActionResultDecoder : JD.Decoder ApplyPendingMaintenanceActionResult
applyPendingMaintenanceActionResultDecoder =
    JD.succeed ApplyPendingMaintenanceActionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourcePendingMaintenanceActions", "resourcePendingMaintenanceActions"]
            resourcePendingMaintenanceActionsDecoder
        )
        




applyPendingMaintenanceActionResultToString : ApplyPendingMaintenanceActionResult -> String -- List (String, String)
applyPendingMaintenanceActionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourcePendingMaintenanceActions" "" -- val.resourcePendingMaintenanceActions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from authorizeDBSecurityGroupIngre
-}
type alias AuthorizeDBSecurityGroupIngressResult =
    { dBSecurityGroup : Maybe DBSecurityGroup
    }



authorizeDBSecurityGroupIngressResultDecoder : JD.Decoder AuthorizeDBSecurityGroupIngressResult
authorizeDBSecurityGroupIngressResultDecoder =
    JD.succeed AuthorizeDBSecurityGroupIngressResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSecurityGroup", "dBSecurityGroup"]
            dBSecurityGroupDecoder
        )
        




authorizeDBSecurityGroupIngressResultToString : AuthorizeDBSecurityGroupIngressResult -> String -- List (String, String)
authorizeDBSecurityGroupIngressResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSecurityGroup" "" -- val.dBSecurityGroup
        
    --     |> Dict.toList
    ""



{-| <p>Contains Availability Zone information.</p> <p> This data type is used as an element in the <code>OrderableDBInstanceOption</code> data type.</p>
-}
type alias AvailabilityZone =
    { name : Maybe String
    }



availabilityZoneDecoder : JD.Decoder AvailabilityZone
availabilityZoneDecoder =
    JD.succeed AvailabilityZone
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




availabilityZoneToString : AvailabilityZone -> String -- List (String, String)
availabilityZoneToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Contains the available processor feature information for the DB instance class of a DB instance.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#USER_ConfigureProcessor">Configuring the Processor of the DB Instance Class</a> in the <i>Amazon RDS User Guide. </i> </p>
-}
type alias AvailableProcessorFeature =
    { name : Maybe String
    , defaultValue : Maybe String
    , allowedValues : Maybe String
    }



availableProcessorFeatureDecoder : JD.Decoder AvailableProcessorFeature
availableProcessorFeatureDecoder =
    JD.succeed AvailableProcessorFeature
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowedValues", "allowedValues"]
            JD.string
        )
        




availableProcessorFeatureToString : AvailableProcessorFeature -> String -- List (String, String)
availableProcessorFeatureToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "allowedValues" "" -- val.allowedValues
        
    --     |> Dict.toList
    ""



{-| <p>A CA certificate for an AWS account.</p>
-}
type alias Certificate =
    { certificateIdentifier : Maybe String
    , certificateType : Maybe String
    , thumbprint : Maybe String
    , validFrom : Maybe Posix
    , validTill : Maybe Posix
    , certificateArn : Maybe String
    }



certificateDecoder : JD.Decoder Certificate
certificateDecoder =
    JD.succeed Certificate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CertificateIdentifier", "certificateIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CertificateType", "certificateType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Thumbprint", "thumbprint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ValidFrom", "validFrom"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ValidTill", "validTill"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CertificateArn", "certificateArn"]
            JD.string
        )
        




certificateToString : Certificate -> String -- List (String, String)
certificateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificateIdentifier" "" -- val.certificateIdentifier
        
    --     |> Dict.insert
    --         "certificateType" "" -- val.certificateType
        
    --     |> Dict.insert
    --         "thumbprint" "" -- val.thumbprint
        
    --     |> Dict.insert
    --         "validFrom" "" -- val.validFrom
        
    --     |> Dict.insert
    --         "validTill" "" -- val.validTill
        
    --     |> Dict.insert
    --         "certificateArn" "" -- val.certificateArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from certificat
-}
type alias CertificateMessage =
    { certificates : Maybe (List Certificate)
    , marker : Maybe String
    }



certificateMessageDecoder : JD.Decoder CertificateMessage
certificateMessageDecoder =
    JD.succeed CertificateMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Certificates", "certificates"]
            (JD.list certificateDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        




certificateMessageToString : CertificateMessage -> String -- List (String, String)
certificateMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificates" "" -- val.certificates
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.toList
    ""



{-| <p> This data type is used as a response element in the action <code>DescribeDBEngineVersions</code>. </p>
-}
type alias CharacterSet =
    { characterSetName : Maybe String
    , characterSetDescription : Maybe String
    }



characterSetDecoder : JD.Decoder CharacterSet
characterSetDecoder =
    JD.succeed CharacterSet
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CharacterSetName", "characterSetName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CharacterSetDescription", "characterSetDescription"]
            JD.string
        )
        




characterSetToString : CharacterSet -> String -- List (String, String)
characterSetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "characterSetName" "" -- val.characterSetName
        
    --     |> Dict.insert
    --         "characterSetDescription" "" -- val.characterSetDescription
        
    --     |> Dict.toList
    ""



{-| <p>The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB instance or DB cluster.</p> <p>The <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays determine which logs will be exported (or not exported) to CloudWatch Logs. The values within these arrays depend on the DB engine being used. For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs </a> in the <i>Amazon RDS User Guide</i>.</p>
-}
type alias CloudwatchLogsExportConfiguration =
    { enableLogTypes : Maybe (List String)
    , disableLogTypes : Maybe (List String)
    }



cloudwatchLogsExportConfigurationDecoder : JD.Decoder CloudwatchLogsExportConfiguration
cloudwatchLogsExportConfigurationDecoder =
    JD.succeed CloudwatchLogsExportConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnableLogTypes", "enableLogTypes"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DisableLogTypes", "disableLogTypes"]
            (JD.list JD.string)
        )
        




cloudwatchLogsExportConfigurationToString : CloudwatchLogsExportConfiguration -> String -- List (String, String)
cloudwatchLogsExportConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enableLogTypes" "" -- val.enableLogTypes
        
    --     |> Dict.insert
    --         "disableLogTypes" "" -- val.disableLogTypes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from copyDBClusterParameterGro
-}
type alias CopyDBClusterParameterGroupResult =
    { dBClusterParameterGroup : Maybe DBClusterParameterGroup
    }



copyDBClusterParameterGroupResultDecoder : JD.Decoder CopyDBClusterParameterGroupResult
copyDBClusterParameterGroupResultDecoder =
    JD.succeed CopyDBClusterParameterGroupResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterParameterGroup", "dBClusterParameterGroup"]
            dBClusterParameterGroupDecoder
        )
        




copyDBClusterParameterGroupResultToString : CopyDBClusterParameterGroupResult -> String -- List (String, String)
copyDBClusterParameterGroupResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterParameterGroup" "" -- val.dBClusterParameterGroup
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from copyDBClusterSnapsh
-}
type alias CopyDBClusterSnapshotResult =
    { dBClusterSnapshot : Maybe DBClusterSnapshot
    }



copyDBClusterSnapshotResultDecoder : JD.Decoder CopyDBClusterSnapshotResult
copyDBClusterSnapshotResultDecoder =
    JD.succeed CopyDBClusterSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterSnapshot", "dBClusterSnapshot"]
            dBClusterSnapshotDecoder
        )
        




copyDBClusterSnapshotResultToString : CopyDBClusterSnapshotResult -> String -- List (String, String)
copyDBClusterSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterSnapshot" "" -- val.dBClusterSnapshot
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from copyDBParameterGro
-}
type alias CopyDBParameterGroupResult =
    { dBParameterGroup : Maybe DBParameterGroup
    }



copyDBParameterGroupResultDecoder : JD.Decoder CopyDBParameterGroupResult
copyDBParameterGroupResultDecoder =
    JD.succeed CopyDBParameterGroupResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBParameterGroup", "dBParameterGroup"]
            dBParameterGroupDecoder
        )
        




copyDBParameterGroupResultToString : CopyDBParameterGroupResult -> String -- List (String, String)
copyDBParameterGroupResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBParameterGroup" "" -- val.dBParameterGroup
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from copyDBSnapsh
-}
type alias CopyDBSnapshotResult =
    { dBSnapshot : Maybe DBSnapshot
    }



copyDBSnapshotResultDecoder : JD.Decoder CopyDBSnapshotResult
copyDBSnapshotResultDecoder =
    JD.succeed CopyDBSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSnapshot", "dBSnapshot"]
            dBSnapshotDecoder
        )
        




copyDBSnapshotResultToString : CopyDBSnapshotResult -> String -- List (String, String)
copyDBSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSnapshot" "" -- val.dBSnapshot
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from copyOptionGro
-}
type alias CopyOptionGroupResult =
    { optionGroup : Maybe OptionGroup
    }



copyOptionGroupResultDecoder : JD.Decoder CopyOptionGroupResult
copyOptionGroupResultDecoder =
    JD.succeed CopyOptionGroupResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionGroup", "optionGroup"]
            optionGroupDecoder
        )
        




copyOptionGroupResultToString : CopyOptionGroupResult -> String -- List (String, String)
copyOptionGroupResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "optionGroup" "" -- val.optionGroup
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDBClusterParameterGro
-}
type alias CreateDBClusterParameterGroupResult =
    { dBClusterParameterGroup : Maybe DBClusterParameterGroup
    }



createDBClusterParameterGroupResultDecoder : JD.Decoder CreateDBClusterParameterGroupResult
createDBClusterParameterGroupResultDecoder =
    JD.succeed CreateDBClusterParameterGroupResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterParameterGroup", "dBClusterParameterGroup"]
            dBClusterParameterGroupDecoder
        )
        




createDBClusterParameterGroupResultToString : CreateDBClusterParameterGroupResult -> String -- List (String, String)
createDBClusterParameterGroupResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterParameterGroup" "" -- val.dBClusterParameterGroup
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDBClust
-}
type alias CreateDBClusterResult =
    { dBCluster : Maybe DBCluster
    }



createDBClusterResultDecoder : JD.Decoder CreateDBClusterResult
createDBClusterResultDecoder =
    JD.succeed CreateDBClusterResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBCluster", "dBCluster"]
            dBClusterDecoder
        )
        




createDBClusterResultToString : CreateDBClusterResult -> String -- List (String, String)
createDBClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBCluster" "" -- val.dBCluster
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDBClusterSnapsh
-}
type alias CreateDBClusterSnapshotResult =
    { dBClusterSnapshot : Maybe DBClusterSnapshot
    }



createDBClusterSnapshotResultDecoder : JD.Decoder CreateDBClusterSnapshotResult
createDBClusterSnapshotResultDecoder =
    JD.succeed CreateDBClusterSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterSnapshot", "dBClusterSnapshot"]
            dBClusterSnapshotDecoder
        )
        




createDBClusterSnapshotResultToString : CreateDBClusterSnapshotResult -> String -- List (String, String)
createDBClusterSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterSnapshot" "" -- val.dBClusterSnapshot
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDBInstanceReadRepli
-}
type alias CreateDBInstanceReadReplicaResult =
    { dBInstance : Maybe DBInstance
    }



createDBInstanceReadReplicaResultDecoder : JD.Decoder CreateDBInstanceReadReplicaResult
createDBInstanceReadReplicaResultDecoder =
    JD.succeed CreateDBInstanceReadReplicaResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstance", "dBInstance"]
            dBInstanceDecoder
        )
        




createDBInstanceReadReplicaResultToString : CreateDBInstanceReadReplicaResult -> String -- List (String, String)
createDBInstanceReadReplicaResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstance" "" -- val.dBInstance
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDBInstan
-}
type alias CreateDBInstanceResult =
    { dBInstance : Maybe DBInstance
    }



createDBInstanceResultDecoder : JD.Decoder CreateDBInstanceResult
createDBInstanceResultDecoder =
    JD.succeed CreateDBInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstance", "dBInstance"]
            dBInstanceDecoder
        )
        




createDBInstanceResultToString : CreateDBInstanceResult -> String -- List (String, String)
createDBInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstance" "" -- val.dBInstance
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDBParameterGro
-}
type alias CreateDBParameterGroupResult =
    { dBParameterGroup : Maybe DBParameterGroup
    }



createDBParameterGroupResultDecoder : JD.Decoder CreateDBParameterGroupResult
createDBParameterGroupResultDecoder =
    JD.succeed CreateDBParameterGroupResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBParameterGroup", "dBParameterGroup"]
            dBParameterGroupDecoder
        )
        




createDBParameterGroupResultToString : CreateDBParameterGroupResult -> String -- List (String, String)
createDBParameterGroupResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBParameterGroup" "" -- val.dBParameterGroup
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDBSecurityGro
-}
type alias CreateDBSecurityGroupResult =
    { dBSecurityGroup : Maybe DBSecurityGroup
    }



createDBSecurityGroupResultDecoder : JD.Decoder CreateDBSecurityGroupResult
createDBSecurityGroupResultDecoder =
    JD.succeed CreateDBSecurityGroupResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSecurityGroup", "dBSecurityGroup"]
            dBSecurityGroupDecoder
        )
        




createDBSecurityGroupResultToString : CreateDBSecurityGroupResult -> String -- List (String, String)
createDBSecurityGroupResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSecurityGroup" "" -- val.dBSecurityGroup
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDBSnapsh
-}
type alias CreateDBSnapshotResult =
    { dBSnapshot : Maybe DBSnapshot
    }



createDBSnapshotResultDecoder : JD.Decoder CreateDBSnapshotResult
createDBSnapshotResultDecoder =
    JD.succeed CreateDBSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSnapshot", "dBSnapshot"]
            dBSnapshotDecoder
        )
        




createDBSnapshotResultToString : CreateDBSnapshotResult -> String -- List (String, String)
createDBSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSnapshot" "" -- val.dBSnapshot
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDBSubnetGro
-}
type alias CreateDBSubnetGroupResult =
    { dBSubnetGroup : Maybe DBSubnetGroup
    }



createDBSubnetGroupResultDecoder : JD.Decoder CreateDBSubnetGroupResult
createDBSubnetGroupResultDecoder =
    JD.succeed CreateDBSubnetGroupResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSubnetGroup", "dBSubnetGroup"]
            dBSubnetGroupDecoder
        )
        




createDBSubnetGroupResultToString : CreateDBSubnetGroupResult -> String -- List (String, String)
createDBSubnetGroupResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSubnetGroup" "" -- val.dBSubnetGroup
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createEventSubscripti
-}
type alias CreateEventSubscriptionResult =
    { eventSubscription : Maybe EventSubscription
    }



createEventSubscriptionResultDecoder : JD.Decoder CreateEventSubscriptionResult
createEventSubscriptionResultDecoder =
    JD.succeed CreateEventSubscriptionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventSubscription", "eventSubscription"]
            eventSubscriptionDecoder
        )
        




createEventSubscriptionResultToString : CreateEventSubscriptionResult -> String -- List (String, String)
createEventSubscriptionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventSubscription" "" -- val.eventSubscription
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createGlobalClust
-}
type alias CreateGlobalClusterResult =
    { globalCluster : Maybe GlobalCluster
    }



createGlobalClusterResultDecoder : JD.Decoder CreateGlobalClusterResult
createGlobalClusterResultDecoder =
    JD.succeed CreateGlobalClusterResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GlobalCluster", "globalCluster"]
            globalClusterDecoder
        )
        




createGlobalClusterResultToString : CreateGlobalClusterResult -> String -- List (String, String)
createGlobalClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "globalCluster" "" -- val.globalCluster
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createOptionGro
-}
type alias CreateOptionGroupResult =
    { optionGroup : Maybe OptionGroup
    }



createOptionGroupResultDecoder : JD.Decoder CreateOptionGroupResult
createOptionGroupResultDecoder =
    JD.succeed CreateOptionGroupResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionGroup", "optionGroup"]
            optionGroupDecoder
        )
        




createOptionGroupResultToString : CreateOptionGroupResult -> String -- List (String, String)
createOptionGroupResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "optionGroup" "" -- val.optionGroup
        
    --     |> Dict.toList
    ""



{-| <p>Contains the details of an Amazon Aurora DB cluster. </p> <p>This data type is used as a response element in the <code>DescribeDBClusters</code>, <code>StopDBCluster</code>, and <code>StartDBCluster</code> actions. </p>
-}
type alias DBCluster =
    { allocatedStorage : Maybe Int
    , availabilityZones : Maybe (List String)
    , backupRetentionPeriod : Maybe Int
    , characterSetName : Maybe String
    , databaseName : Maybe String
    , dBClusterIdentifier : Maybe String
    , dBClusterParameterGroup : Maybe String
    , dBSubnetGroup : Maybe String
    , status : Maybe String
    , percentProgress : Maybe String
    , earliestRestorableTime : Maybe Posix
    , endpoint : Maybe String
    , readerEndpoint : Maybe String
    , customEndpoints : Maybe (List String)
    , multiAZ : Maybe Bool
    , engine : Maybe String
    , engineVersion : Maybe String
    , latestRestorableTime : Maybe Posix
    , port_ : Maybe Int
    , masterUsername : Maybe String
    , dBClusterOptionGroupMemberships : Maybe (List DBClusterOptionGroupStatus)
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , replicationSourceIdentifier : Maybe String
    , readReplicaIdentifiers : Maybe (List String)
    , dBClusterMembers : Maybe (List DBClusterMember)
    , vpcSecurityGroups : Maybe (List VpcSecurityGroupMembership)
    , hostedZoneId : Maybe String
    , storageEncrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , dbClusterResourceId : Maybe String
    , dBClusterArn : Maybe String
    , associatedRoles : Maybe (List DBClusterRole)
    , iAMDatabaseAuthenticationEnabled : Maybe Bool
    , cloneGroupId : Maybe String
    , clusterCreateTime : Maybe Posix
    , earliestBacktrackTime : Maybe Posix
    , backtrackWindow : Maybe Int
    , backtrackConsumedChangeRecords : Maybe Int
    , enabledCloudwatchLogsExports : Maybe (List String)
    , capacity : Maybe Int
    , engineMode : Maybe String
    , scalingConfigurationInfo : Maybe ScalingConfigurationInfo
    , deletionProtection : Maybe Bool
    , httpEndpointEnabled : Maybe Bool
    , activityStreamMode : Maybe ActivityStreamMode
    , activityStreamStatus : Maybe ActivityStreamStatus
    , activityStreamKmsKeyId : Maybe String
    , activityStreamKinesisStreamName : Maybe String
    , copyTagsToSnapshot : Maybe Bool
    , crossAccountClone : Maybe Bool
    }



dBClusterDecoder : JD.Decoder DBCluster
dBClusterDecoder =
    JD.succeed DBCluster
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllocatedStorage", "allocatedStorage"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZones", "availabilityZones"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BackupRetentionPeriod", "backupRetentionPeriod"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CharacterSetName", "characterSetName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DatabaseName", "databaseName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterIdentifier", "dBClusterIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterParameterGroup", "dBClusterParameterGroup"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSubnetGroup", "dBSubnetGroup"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PercentProgress", "percentProgress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EarliestRestorableTime", "earliestRestorableTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Endpoint", "endpoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReaderEndpoint", "readerEndpoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomEndpoints", "customEndpoints"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MultiAZ", "multiAZ"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Engine", "engine"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineVersion", "engineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LatestRestorableTime", "latestRestorableTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MasterUsername", "masterUsername"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterOptionGroupMemberships", "dBClusterOptionGroupMemberships"]
            (JD.list dBClusterOptionGroupStatusDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreferredBackupWindow", "preferredBackupWindow"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreferredMaintenanceWindow", "preferredMaintenanceWindow"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReplicationSourceIdentifier", "replicationSourceIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReadReplicaIdentifiers", "readReplicaIdentifiers"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterMembers", "dBClusterMembers"]
            (JD.list dBClusterMemberDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcSecurityGroups", "vpcSecurityGroups"]
            (JD.list vpcSecurityGroupMembershipDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HostedZoneId", "hostedZoneId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageEncrypted", "storageEncrypted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KmsKeyId", "kmsKeyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DbClusterResourceId", "dbClusterResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterArn", "dBClusterArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AssociatedRoles", "associatedRoles"]
            (JD.list dBClusterRoleDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IAMDatabaseAuthenticationEnabled", "iAMDatabaseAuthenticationEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloneGroupId", "cloneGroupId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClusterCreateTime", "clusterCreateTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EarliestBacktrackTime", "earliestBacktrackTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BacktrackWindow", "backtrackWindow"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BacktrackConsumedChangeRecords", "backtrackConsumedChangeRecords"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnabledCloudwatchLogsExports", "enabledCloudwatchLogsExports"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Capacity", "capacity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineMode", "engineMode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScalingConfigurationInfo", "scalingConfigurationInfo"]
            scalingConfigurationInfoDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeletionProtection", "deletionProtection"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HttpEndpointEnabled", "httpEndpointEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActivityStreamMode", "activityStreamMode"]
            activityStreamModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActivityStreamStatus", "activityStreamStatus"]
            activityStreamStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActivityStreamKmsKeyId", "activityStreamKmsKeyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActivityStreamKinesisStreamName", "activityStreamKinesisStreamName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CopyTagsToSnapshot", "copyTagsToSnapshot"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CrossAccountClone", "crossAccountClone"]
            JD.bool
        )
        




dBClusterToString : DBCluster -> String -- List (String, String)
dBClusterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "allocatedStorage" "" -- val.allocatedStorage
        
    --     |> Dict.insert
    --         "availabilityZones" "" -- val.availabilityZones
        
    --     |> Dict.insert
    --         "backupRetentionPeriod" "" -- val.backupRetentionPeriod
        
    --     |> Dict.insert
    --         "characterSetName" "" -- val.characterSetName
        
    --     |> Dict.insert
    --         "databaseName" "" -- val.databaseName
        
    --     |> Dict.insert
    --         "dBClusterIdentifier" "" -- val.dBClusterIdentifier
        
    --     |> Dict.insert
    --         "dBClusterParameterGroup" "" -- val.dBClusterParameterGroup
        
    --     |> Dict.insert
    --         "dBSubnetGroup" "" -- val.dBSubnetGroup
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "percentProgress" "" -- val.percentProgress
        
    --     |> Dict.insert
    --         "earliestRestorableTime" "" -- val.earliestRestorableTime
        
    --     |> Dict.insert
    --         "endpoint" "" -- val.endpoint
        
    --     |> Dict.insert
    --         "readerEndpoint" "" -- val.readerEndpoint
        
    --     |> Dict.insert
    --         "customEndpoints" "" -- val.customEndpoints
        
    --     |> Dict.insert
    --         "multiAZ" "" -- val.multiAZ
        
    --     |> Dict.insert
    --         "engine" "" -- val.engine
        
    --     |> Dict.insert
    --         "engineVersion" "" -- val.engineVersion
        
    --     |> Dict.insert
    --         "latestRestorableTime" "" -- val.latestRestorableTime
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "masterUsername" "" -- val.masterUsername
        
    --     |> Dict.insert
    --         "dBClusterOptionGroupMemberships" "" -- val.dBClusterOptionGroupMemberships
        
    --     |> Dict.insert
    --         "preferredBackupWindow" "" -- val.preferredBackupWindow
        
    --     |> Dict.insert
    --         "preferredMaintenanceWindow" "" -- val.preferredMaintenanceWindow
        
    --     |> Dict.insert
    --         "replicationSourceIdentifier" "" -- val.replicationSourceIdentifier
        
    --     |> Dict.insert
    --         "readReplicaIdentifiers" "" -- val.readReplicaIdentifiers
        
    --     |> Dict.insert
    --         "dBClusterMembers" "" -- val.dBClusterMembers
        
    --     |> Dict.insert
    --         "vpcSecurityGroups" "" -- val.vpcSecurityGroups
        
    --     |> Dict.insert
    --         "hostedZoneId" "" -- val.hostedZoneId
        
    --     |> Dict.insert
    --         "storageEncrypted" "" -- val.storageEncrypted
        
    --     |> Dict.insert
    --         "kmsKeyId" "" -- val.kmsKeyId
        
    --     |> Dict.insert
    --         "dbClusterResourceId" "" -- val.dbClusterResourceId
        
    --     |> Dict.insert
    --         "dBClusterArn" "" -- val.dBClusterArn
        
    --     |> Dict.insert
    --         "associatedRoles" "" -- val.associatedRoles
        
    --     |> Dict.insert
    --         "iAMDatabaseAuthenticationEnabled" "" -- val.iAMDatabaseAuthenticationEnabled
        
    --     |> Dict.insert
    --         "cloneGroupId" "" -- val.cloneGroupId
        
    --     |> Dict.insert
    --         "clusterCreateTime" "" -- val.clusterCreateTime
        
    --     |> Dict.insert
    --         "earliestBacktrackTime" "" -- val.earliestBacktrackTime
        
    --     |> Dict.insert
    --         "backtrackWindow" "" -- val.backtrackWindow
        
    --     |> Dict.insert
    --         "backtrackConsumedChangeRecords" "" -- val.backtrackConsumedChangeRecords
        
    --     |> Dict.insert
    --         "enabledCloudwatchLogsExports" "" -- val.enabledCloudwatchLogsExports
        
    --     |> Dict.insert
    --         "capacity" "" -- val.capacity
        
    --     |> Dict.insert
    --         "engineMode" "" -- val.engineMode
        
    --     |> Dict.insert
    --         "scalingConfigurationInfo" "" -- val.scalingConfigurationInfo
        
    --     |> Dict.insert
    --         "deletionProtection" "" -- val.deletionProtection
        
    --     |> Dict.insert
    --         "httpEndpointEnabled" "" -- val.httpEndpointEnabled
        
    --     |> Dict.insert
    --         "activityStreamMode" "" -- val.activityStreamMode
        
    --     |> Dict.insert
    --         "activityStreamStatus" "" -- val.activityStreamStatus
        
    --     |> Dict.insert
    --         "activityStreamKmsKeyId" "" -- val.activityStreamKmsKeyId
        
    --     |> Dict.insert
    --         "activityStreamKinesisStreamName" "" -- val.activityStreamKinesisStreamName
        
    --     |> Dict.insert
    --         "copyTagsToSnapshot" "" -- val.copyTagsToSnapshot
        
    --     |> Dict.insert
    --         "crossAccountClone" "" -- val.crossAccountClone
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBClusterB
-}
type alias DBClusterBacktrack =
    { dBClusterIdentifier : Maybe String
    , backtrackIdentifier : Maybe String
    , backtrackTo : Maybe Posix
    , backtrackedFrom : Maybe Posix
    , backtrackRequestCreationTime : Maybe Posix
    , status : Maybe String
    }



dBClusterBacktrackDecoder : JD.Decoder DBClusterBacktrack
dBClusterBacktrackDecoder =
    JD.succeed DBClusterBacktrack
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterIdentifier", "dBClusterIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BacktrackIdentifier", "backtrackIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BacktrackTo", "backtrackTo"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BacktrackedFrom", "backtrackedFrom"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BacktrackRequestCreationTime", "backtrackRequestCreationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        




dBClusterBacktrackToString : DBClusterBacktrack -> String -- List (String, String)
dBClusterBacktrackToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterIdentifier" "" -- val.dBClusterIdentifier
        
    --     |> Dict.insert
    --         "backtrackIdentifier" "" -- val.backtrackIdentifier
        
    --     |> Dict.insert
    --         "backtrackTo" "" -- val.backtrackTo
        
    --     |> Dict.insert
    --         "backtrackedFrom" "" -- val.backtrackedFrom
        
    --     |> Dict.insert
    --         "backtrackRequestCreationTime" "" -- val.backtrackRequestCreationTime
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBClusterBacktrac
-}
type alias DBClusterBacktrackMessage =
    { marker : Maybe String
    , dBClusterBacktracks : Maybe (List DBClusterBacktrack)
    }



dBClusterBacktrackMessageDecoder : JD.Decoder DBClusterBacktrackMessage
dBClusterBacktrackMessageDecoder =
    JD.succeed DBClusterBacktrackMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterBacktracks", "dBClusterBacktracks"]
            (JD.list dBClusterBacktrackDecoder)
        )
        




dBClusterBacktrackMessageToString : DBClusterBacktrackMessage -> String -- List (String, String)
dBClusterBacktrackMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "dBClusterBacktracks" "" -- val.dBClusterBacktracks
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBClusterCapa
-}
type alias DBClusterCapacityInfo =
    { dBClusterIdentifier : Maybe String
    , pendingCapacity : Maybe Int
    , currentCapacity : Maybe Int
    , secondsBeforeTimeout : Maybe Int
    , timeoutAction : Maybe String
    }



dBClusterCapacityInfoDecoder : JD.Decoder DBClusterCapacityInfo
dBClusterCapacityInfoDecoder =
    JD.succeed DBClusterCapacityInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterIdentifier", "dBClusterIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PendingCapacity", "pendingCapacity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CurrentCapacity", "currentCapacity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecondsBeforeTimeout", "secondsBeforeTimeout"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimeoutAction", "timeoutAction"]
            JD.string
        )
        




dBClusterCapacityInfoToString : DBClusterCapacityInfo -> String -- List (String, String)
dBClusterCapacityInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterIdentifier" "" -- val.dBClusterIdentifier
        
    --     |> Dict.insert
    --         "pendingCapacity" "" -- val.pendingCapacity
        
    --     |> Dict.insert
    --         "currentCapacity" "" -- val.currentCapacity
        
    --     |> Dict.insert
    --         "secondsBeforeTimeout" "" -- val.secondsBeforeTimeout
        
    --     |> Dict.insert
    --         "timeoutAction" "" -- val.timeoutAction
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBCluster
-}
type alias DBClusterEndpoint =
    { dBClusterEndpointIdentifier : Maybe String
    , dBClusterIdentifier : Maybe String
    , dBClusterEndpointResourceIdentifier : Maybe String
    , endpoint : Maybe String
    , status : Maybe String
    , endpointType : Maybe String
    , customEndpointType : Maybe String
    , staticMembers : Maybe (List String)
    , excludedMembers : Maybe (List String)
    , dBClusterEndpointArn : Maybe String
    }



dBClusterEndpointDecoder : JD.Decoder DBClusterEndpoint
dBClusterEndpointDecoder =
    JD.succeed DBClusterEndpoint
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterEndpointIdentifier", "dBClusterEndpointIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterIdentifier", "dBClusterIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterEndpointResourceIdentifier", "dBClusterEndpointResourceIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Endpoint", "endpoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndpointType", "endpointType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomEndpointType", "customEndpointType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StaticMembers", "staticMembers"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExcludedMembers", "excludedMembers"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterEndpointArn", "dBClusterEndpointArn"]
            JD.string
        )
        




dBClusterEndpointToString : DBClusterEndpoint -> String -- List (String, String)
dBClusterEndpointToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterEndpointIdentifier" "" -- val.dBClusterEndpointIdentifier
        
    --     |> Dict.insert
    --         "dBClusterIdentifier" "" -- val.dBClusterIdentifier
        
    --     |> Dict.insert
    --         "dBClusterEndpointResourceIdentifier" "" -- val.dBClusterEndpointResourceIdentifier
        
    --     |> Dict.insert
    --         "endpoint" "" -- val.endpoint
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "endpointType" "" -- val.endpointType
        
    --     |> Dict.insert
    --         "customEndpointType" "" -- val.customEndpointType
        
    --     |> Dict.insert
    --         "staticMembers" "" -- val.staticMembers
        
    --     |> Dict.insert
    --         "excludedMembers" "" -- val.excludedMembers
        
    --     |> Dict.insert
    --         "dBClusterEndpointArn" "" -- val.dBClusterEndpointArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBClusterEndpoin
-}
type alias DBClusterEndpointMessage =
    { marker : Maybe String
    , dBClusterEndpoints : Maybe (List DBClusterEndpoint)
    }



dBClusterEndpointMessageDecoder : JD.Decoder DBClusterEndpointMessage
dBClusterEndpointMessageDecoder =
    JD.succeed DBClusterEndpointMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterEndpoints", "dBClusterEndpoints"]
            (JD.list dBClusterEndpointDecoder)
        )
        




dBClusterEndpointMessageToString : DBClusterEndpointMessage -> String -- List (String, String)
dBClusterEndpointMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "dBClusterEndpoints" "" -- val.dBClusterEndpoints
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about an instance that is part of a DB cluster.</p>
-}
type alias DBClusterMember =
    { dBInstanceIdentifier : Maybe String
    , isClusterWriter : Maybe Bool
    , dBClusterParameterGroupStatus : Maybe String
    , promotionTier : Maybe Int
    }



dBClusterMemberDecoder : JD.Decoder DBClusterMember
dBClusterMemberDecoder =
    JD.succeed DBClusterMember
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceIdentifier", "dBInstanceIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsClusterWriter", "isClusterWriter"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterParameterGroupStatus", "dBClusterParameterGroupStatus"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PromotionTier", "promotionTier"]
            JD.int
        )
        




dBClusterMemberToString : DBClusterMember -> String -- List (String, String)
dBClusterMemberToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstanceIdentifier" "" -- val.dBInstanceIdentifier
        
    --     |> Dict.insert
    --         "isClusterWriter" "" -- val.isClusterWriter
        
    --     |> Dict.insert
    --         "dBClusterParameterGroupStatus" "" -- val.dBClusterParameterGroupStatus
        
    --     |> Dict.insert
    --         "promotionTier" "" -- val.promotionTier
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBCluste
-}
type alias DBClusterMessage =
    { marker : Maybe String
    , dBClusters : Maybe (List DBCluster)
    }



dBClusterMessageDecoder : JD.Decoder DBClusterMessage
dBClusterMessageDecoder =
    JD.succeed DBClusterMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusters", "dBClusters"]
            (JD.list dBClusterDecoder)
        )
        




dBClusterMessageToString : DBClusterMessage -> String -- List (String, String)
dBClusterMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "dBClusters" "" -- val.dBClusters
        
    --     |> Dict.toList
    ""



{-| <p>Contains status information for a DB cluster option group.</p>
-}
type alias DBClusterOptionGroupStatus =
    { dBClusterOptionGroupName : Maybe String
    , status : Maybe String
    }



dBClusterOptionGroupStatusDecoder : JD.Decoder DBClusterOptionGroupStatus
dBClusterOptionGroupStatusDecoder =
    JD.succeed DBClusterOptionGroupStatus
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterOptionGroupName", "dBClusterOptionGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        




dBClusterOptionGroupStatusToString : DBClusterOptionGroupStatus -> String -- List (String, String)
dBClusterOptionGroupStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterOptionGroupName" "" -- val.dBClusterOptionGroupName
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| <p>Contains the details of an Amazon RDS DB cluster parameter group. </p> <p>This data type is used as a response element in the <code>DescribeDBClusterParameterGroups</code> action. </p>
-}
type alias DBClusterParameterGroup =
    { dBClusterParameterGroupName : Maybe String
    , dBParameterGroupFamily : Maybe String
    , description : Maybe String
    , dBClusterParameterGroupArn : Maybe String
    }



dBClusterParameterGroupDecoder : JD.Decoder DBClusterParameterGroup
dBClusterParameterGroupDecoder =
    JD.succeed DBClusterParameterGroup
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterParameterGroupName", "dBClusterParameterGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBParameterGroupFamily", "dBParameterGroupFamily"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterParameterGroupArn", "dBClusterParameterGroupArn"]
            JD.string
        )
        




dBClusterParameterGroupToString : DBClusterParameterGroup -> String -- List (String, String)
dBClusterParameterGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterParameterGroupName" "" -- val.dBClusterParameterGroupName
        
    --     |> Dict.insert
    --         "dBParameterGroupFamily" "" -- val.dBParameterGroupFamily
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "dBClusterParameterGroupArn" "" -- val.dBClusterParameterGroupArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBClusterParameterGrou
-}
type alias DBClusterParameterGroupDetails =
    { parameters : Maybe (List Parameter)
    , marker : Maybe String
    }



dBClusterParameterGroupDetailsDecoder : JD.Decoder DBClusterParameterGroupDetails
dBClusterParameterGroupDetailsDecoder =
    JD.succeed DBClusterParameterGroupDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (JD.list parameterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        




dBClusterParameterGroupDetailsToString : DBClusterParameterGroupDetails -> String -- List (String, String)
dBClusterParameterGroupDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBClusterParameterGroupNam
-}
type alias DBClusterParameterGroupNameMessage =
    { dBClusterParameterGroupName : Maybe String
    }



dBClusterParameterGroupNameMessageDecoder : JD.Decoder DBClusterParameterGroupNameMessage
dBClusterParameterGroupNameMessageDecoder =
    JD.succeed DBClusterParameterGroupNameMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterParameterGroupName", "dBClusterParameterGroupName"]
            JD.string
        )
        




dBClusterParameterGroupNameMessageToString : DBClusterParameterGroupNameMessage -> String -- List (String, String)
dBClusterParameterGroupNameMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterParameterGroupName" "" -- val.dBClusterParameterGroupName
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBClusterParameterGroup
-}
type alias DBClusterParameterGroupsMessage =
    { marker : Maybe String
    , dBClusterParameterGroups : Maybe (List DBClusterParameterGroup)
    }



dBClusterParameterGroupsMessageDecoder : JD.Decoder DBClusterParameterGroupsMessage
dBClusterParameterGroupsMessageDecoder =
    JD.succeed DBClusterParameterGroupsMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterParameterGroups", "dBClusterParameterGroups"]
            (JD.list dBClusterParameterGroupDecoder)
        )
        




dBClusterParameterGroupsMessageToString : DBClusterParameterGroupsMessage -> String -- List (String, String)
dBClusterParameterGroupsMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "dBClusterParameterGroups" "" -- val.dBClusterParameterGroups
        
    --     |> Dict.toList
    ""



{-| <p>Describes an AWS Identity and Access Management (IAM) role that is associated with a DB cluster.</p>
-}
type alias DBClusterRole =
    { roleArn : Maybe String
    , status : Maybe String
    , featureName : Maybe String
    }



dBClusterRoleDecoder : JD.Decoder DBClusterRole
dBClusterRoleDecoder =
    JD.succeed DBClusterRole
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleArn", "roleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FeatureName", "featureName"]
            JD.string
        )
        




dBClusterRoleToString : DBClusterRole -> String -- List (String, String)
dBClusterRoleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "featureName" "" -- val.featureName
        
    --     |> Dict.toList
    ""



{-| <p>Contains the details for an Amazon RDS DB cluster snapshot </p> <p>This data type is used as a response element in the <code>DescribeDBClusterSnapshots</code> action. </p>
-}
type alias DBClusterSnapshot =
    { availabilityZones : Maybe (List String)
    , dBClusterSnapshotIdentifier : Maybe String
    , dBClusterIdentifier : Maybe String
    , snapshotCreateTime : Maybe Posix
    , engine : Maybe String
    , allocatedStorage : Maybe Int
    , status : Maybe String
    , port_ : Maybe Int
    , vpcId : Maybe String
    , clusterCreateTime : Maybe Posix
    , masterUsername : Maybe String
    , engineVersion : Maybe String
    , licenseModel : Maybe String
    , snapshotType : Maybe String
    , percentProgress : Maybe Int
    , storageEncrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , dBClusterSnapshotArn : Maybe String
    , sourceDBClusterSnapshotArn : Maybe String
    , iAMDatabaseAuthenticationEnabled : Maybe Bool
    }



dBClusterSnapshotDecoder : JD.Decoder DBClusterSnapshot
dBClusterSnapshotDecoder =
    JD.succeed DBClusterSnapshot
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZones", "availabilityZones"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterSnapshotIdentifier", "dBClusterSnapshotIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterIdentifier", "dBClusterIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SnapshotCreateTime", "snapshotCreateTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Engine", "engine"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllocatedStorage", "allocatedStorage"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcId", "vpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClusterCreateTime", "clusterCreateTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MasterUsername", "masterUsername"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineVersion", "engineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LicenseModel", "licenseModel"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SnapshotType", "snapshotType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PercentProgress", "percentProgress"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageEncrypted", "storageEncrypted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KmsKeyId", "kmsKeyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterSnapshotArn", "dBClusterSnapshotArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceDBClusterSnapshotArn", "sourceDBClusterSnapshotArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IAMDatabaseAuthenticationEnabled", "iAMDatabaseAuthenticationEnabled"]
            JD.bool
        )
        




dBClusterSnapshotToString : DBClusterSnapshot -> String -- List (String, String)
dBClusterSnapshotToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "availabilityZones" "" -- val.availabilityZones
        
    --     |> Dict.insert
    --         "dBClusterSnapshotIdentifier" "" -- val.dBClusterSnapshotIdentifier
        
    --     |> Dict.insert
    --         "dBClusterIdentifier" "" -- val.dBClusterIdentifier
        
    --     |> Dict.insert
    --         "snapshotCreateTime" "" -- val.snapshotCreateTime
        
    --     |> Dict.insert
    --         "engine" "" -- val.engine
        
    --     |> Dict.insert
    --         "allocatedStorage" "" -- val.allocatedStorage
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "clusterCreateTime" "" -- val.clusterCreateTime
        
    --     |> Dict.insert
    --         "masterUsername" "" -- val.masterUsername
        
    --     |> Dict.insert
    --         "engineVersion" "" -- val.engineVersion
        
    --     |> Dict.insert
    --         "licenseModel" "" -- val.licenseModel
        
    --     |> Dict.insert
    --         "snapshotType" "" -- val.snapshotType
        
    --     |> Dict.insert
    --         "percentProgress" "" -- val.percentProgress
        
    --     |> Dict.insert
    --         "storageEncrypted" "" -- val.storageEncrypted
        
    --     |> Dict.insert
    --         "kmsKeyId" "" -- val.kmsKeyId
        
    --     |> Dict.insert
    --         "dBClusterSnapshotArn" "" -- val.dBClusterSnapshotArn
        
    --     |> Dict.insert
    --         "sourceDBClusterSnapshotArn" "" -- val.sourceDBClusterSnapshotArn
        
    --     |> Dict.insert
    --         "iAMDatabaseAuthenticationEnabled" "" -- val.iAMDatabaseAuthenticationEnabled
        
    --     |> Dict.toList
    ""



{-| <p>Contains the name and values of a manual DB cluster snapshot attribute.</p> <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts to restore a manual DB cluster snapshot. For more information, see the <code>ModifyDBClusterSnapshotAttribute</code> API action.</p>
-}
type alias DBClusterSnapshotAttribute =
    { attributeName : Maybe String
    , attributeValues : Maybe (List String)
    }



dBClusterSnapshotAttributeDecoder : JD.Decoder DBClusterSnapshotAttribute
dBClusterSnapshotAttributeDecoder =
    JD.succeed DBClusterSnapshotAttribute
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AttributeName", "attributeName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AttributeValues", "attributeValues"]
            (JD.list JD.string)
        )
        




dBClusterSnapshotAttributeToString : DBClusterSnapshotAttribute -> String -- List (String, String)
dBClusterSnapshotAttributeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributeName" "" -- val.attributeName
        
    --     |> Dict.insert
    --         "attributeValues" "" -- val.attributeValues
        
    --     |> Dict.toList
    ""



{-| <p>Contains the results of a successful call to the <code>DescribeDBClusterSnapshotAttributes</code> API action.</p> <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts to copy or restore a manual DB cluster snapshot. For more information, see the <code>ModifyDBClusterSnapshotAttribute</code> API action.</p>
-}
type alias DBClusterSnapshotAttributesResult =
    { dBClusterSnapshotIdentifier : Maybe String
    , dBClusterSnapshotAttributes : Maybe (List DBClusterSnapshotAttribute)
    }



dBClusterSnapshotAttributesResultDecoder : JD.Decoder DBClusterSnapshotAttributesResult
dBClusterSnapshotAttributesResultDecoder =
    JD.succeed DBClusterSnapshotAttributesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterSnapshotIdentifier", "dBClusterSnapshotIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterSnapshotAttributes", "dBClusterSnapshotAttributes"]
            (JD.list dBClusterSnapshotAttributeDecoder)
        )
        




dBClusterSnapshotAttributesResultToString : DBClusterSnapshotAttributesResult -> String -- List (String, String)
dBClusterSnapshotAttributesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterSnapshotIdentifier" "" -- val.dBClusterSnapshotIdentifier
        
    --     |> Dict.insert
    --         "dBClusterSnapshotAttributes" "" -- val.dBClusterSnapshotAttributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBClusterSnapsho
-}
type alias DBClusterSnapshotMessage =
    { marker : Maybe String
    , dBClusterSnapshots : Maybe (List DBClusterSnapshot)
    }



dBClusterSnapshotMessageDecoder : JD.Decoder DBClusterSnapshotMessage
dBClusterSnapshotMessageDecoder =
    JD.succeed DBClusterSnapshotMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterSnapshots", "dBClusterSnapshots"]
            (JD.list dBClusterSnapshotDecoder)
        )
        




dBClusterSnapshotMessageToString : DBClusterSnapshotMessage -> String -- List (String, String)
dBClusterSnapshotMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "dBClusterSnapshots" "" -- val.dBClusterSnapshots
        
    --     |> Dict.toList
    ""



{-| <p> This data type is used as a response element in the action <code>DescribeDBEngineVersions</code>. </p>
-}
type alias DBEngineVersion =
    { engine : Maybe String
    , engineVersion : Maybe String
    , dBParameterGroupFamily : Maybe String
    , dBEngineDescription : Maybe String
    , dBEngineVersionDescription : Maybe String
    , defaultCharacterSet : Maybe CharacterSet
    , supportedCharacterSets : Maybe (List CharacterSet)
    , validUpgradeTarget : Maybe (List UpgradeTarget)
    , supportedTimezones : Maybe (List Timezone)
    , exportableLogTypes : Maybe (List String)
    , supportsLogExportsToCloudwatchLogs : Maybe Bool
    , supportsReadReplica : Maybe Bool
    , supportedEngineModes : Maybe (List String)
    , supportedFeatureNames : Maybe (List String)
    , status : Maybe String
    }



dBEngineVersionDecoder : JD.Decoder DBEngineVersion
dBEngineVersionDecoder =
    JD.succeed DBEngineVersion
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Engine", "engine"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineVersion", "engineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBParameterGroupFamily", "dBParameterGroupFamily"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBEngineDescription", "dBEngineDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBEngineVersionDescription", "dBEngineVersionDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultCharacterSet", "defaultCharacterSet"]
            characterSetDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportedCharacterSets", "supportedCharacterSets"]
            (JD.list characterSetDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ValidUpgradeTarget", "validUpgradeTarget"]
            (JD.list upgradeTargetDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportedTimezones", "supportedTimezones"]
            (JD.list timezoneDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExportableLogTypes", "exportableLogTypes"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportsLogExportsToCloudwatchLogs", "supportsLogExportsToCloudwatchLogs"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportsReadReplica", "supportsReadReplica"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportedEngineModes", "supportedEngineModes"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportedFeatureNames", "supportedFeatureNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        




dBEngineVersionToString : DBEngineVersion -> String -- List (String, String)
dBEngineVersionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "engine" "" -- val.engine
        
    --     |> Dict.insert
    --         "engineVersion" "" -- val.engineVersion
        
    --     |> Dict.insert
    --         "dBParameterGroupFamily" "" -- val.dBParameterGroupFamily
        
    --     |> Dict.insert
    --         "dBEngineDescription" "" -- val.dBEngineDescription
        
    --     |> Dict.insert
    --         "dBEngineVersionDescription" "" -- val.dBEngineVersionDescription
        
    --     |> Dict.insert
    --         "defaultCharacterSet" "" -- val.defaultCharacterSet
        
    --     |> Dict.insert
    --         "supportedCharacterSets" "" -- val.supportedCharacterSets
        
    --     |> Dict.insert
    --         "validUpgradeTarget" "" -- val.validUpgradeTarget
        
    --     |> Dict.insert
    --         "supportedTimezones" "" -- val.supportedTimezones
        
    --     |> Dict.insert
    --         "exportableLogTypes" "" -- val.exportableLogTypes
        
    --     |> Dict.insert
    --         "supportsLogExportsToCloudwatchLogs" "" -- val.supportsLogExportsToCloudwatchLogs
        
    --     |> Dict.insert
    --         "supportsReadReplica" "" -- val.supportsReadReplica
        
    --     |> Dict.insert
    --         "supportedEngineModes" "" -- val.supportedEngineModes
        
    --     |> Dict.insert
    --         "supportedFeatureNames" "" -- val.supportedFeatureNames
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBEngineVersio
-}
type alias DBEngineVersionMessage =
    { marker : Maybe String
    , dBEngineVersions : Maybe (List DBEngineVersion)
    }



dBEngineVersionMessageDecoder : JD.Decoder DBEngineVersionMessage
dBEngineVersionMessageDecoder =
    JD.succeed DBEngineVersionMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBEngineVersions", "dBEngineVersions"]
            (JD.list dBEngineVersionDecoder)
        )
        




dBEngineVersionMessageToString : DBEngineVersionMessage -> String -- List (String, String)
dBEngineVersionMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "dBEngineVersions" "" -- val.dBEngineVersions
        
    --     |> Dict.toList
    ""



{-| <p>Contains the details of an Amazon RDS DB instance. </p> <p>This data type is used as a response element in the <code>DescribeDBInstances</code> action. </p>
-}
type alias DBInstance =
    { dBInstanceIdentifier : Maybe String
    , dBInstanceClass : Maybe String
    , engine : Maybe String
    , dBInstanceStatus : Maybe String
    , masterUsername : Maybe String
    , dBName : Maybe String
    , endpoint : Maybe Endpoint
    , allocatedStorage : Maybe Int
    , instanceCreateTime : Maybe Posix
    , preferredBackupWindow : Maybe String
    , backupRetentionPeriod : Maybe Int
    , dBSecurityGroups : Maybe (List DBSecurityGroupMembership)
    , vpcSecurityGroups : Maybe (List VpcSecurityGroupMembership)
    , dBParameterGroups : Maybe (List DBParameterGroupStatus)
    , availabilityZone : Maybe String
    , dBSubnetGroup : Maybe DBSubnetGroup
    , preferredMaintenanceWindow : Maybe String
    , pendingModifiedValues : Maybe PendingModifiedValues
    , latestRestorableTime : Maybe Posix
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , readReplicaSourceDBInstanceIdentifier : Maybe String
    , readReplicaDBInstanceIdentifiers : Maybe (List String)
    , readReplicaDBClusterIdentifiers : Maybe (List String)
    , licenseModel : Maybe String
    , iops : Maybe Int
    , optionGroupMemberships : Maybe (List OptionGroupMembership)
    , characterSetName : Maybe String
    , secondaryAvailabilityZone : Maybe String
    , publiclyAccessible : Maybe Bool
    , statusInfos : Maybe (List DBInstanceStatusInfo)
    , storageType : Maybe String
    , tdeCredentialArn : Maybe String
    , dbInstancePort : Maybe Int
    , dBClusterIdentifier : Maybe String
    , storageEncrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , dbiResourceId : Maybe String
    , cACertificateIdentifier : Maybe String
    , domainMemberships : Maybe (List DomainMembership)
    , copyTagsToSnapshot : Maybe Bool
    , monitoringInterval : Maybe Int
    , enhancedMonitoringResourceArn : Maybe String
    , monitoringRoleArn : Maybe String
    , promotionTier : Maybe Int
    , dBInstanceArn : Maybe String
    , timezone : Maybe String
    , iAMDatabaseAuthenticationEnabled : Maybe Bool
    , performanceInsightsEnabled : Maybe Bool
    , performanceInsightsKMSKeyId : Maybe String
    , performanceInsightsRetentionPeriod : Maybe Int
    , enabledCloudwatchLogsExports : Maybe (List String)
    , processorFeatures : Maybe (List ProcessorFeature)
    , deletionProtection : Maybe Bool
    , associatedRoles : Maybe (List DBInstanceRole)
    , listenerEndpoint : Maybe Endpoint
    , maxAllocatedStorage : Maybe Int
    }



dBInstanceDecoder : JD.Decoder DBInstance
dBInstanceDecoder =
    JD.succeed DBInstance
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceIdentifier", "dBInstanceIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceClass", "dBInstanceClass"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Engine", "engine"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceStatus", "dBInstanceStatus"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MasterUsername", "masterUsername"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBName", "dBName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Endpoint", "endpoint"]
            endpointDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllocatedStorage", "allocatedStorage"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceCreateTime", "instanceCreateTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreferredBackupWindow", "preferredBackupWindow"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BackupRetentionPeriod", "backupRetentionPeriod"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSecurityGroups", "dBSecurityGroups"]
            (JD.list dBSecurityGroupMembershipDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcSecurityGroups", "vpcSecurityGroups"]
            (JD.list vpcSecurityGroupMembershipDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBParameterGroups", "dBParameterGroups"]
            (JD.list dBParameterGroupStatusDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZone", "availabilityZone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSubnetGroup", "dBSubnetGroup"]
            dBSubnetGroupDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreferredMaintenanceWindow", "preferredMaintenanceWindow"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PendingModifiedValues", "pendingModifiedValues"]
            pendingModifiedValuesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LatestRestorableTime", "latestRestorableTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MultiAZ", "multiAZ"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineVersion", "engineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoMinorVersionUpgrade", "autoMinorVersionUpgrade"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReadReplicaSourceDBInstanceIdentifier", "readReplicaSourceDBInstanceIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReadReplicaDBInstanceIdentifiers", "readReplicaDBInstanceIdentifiers"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReadReplicaDBClusterIdentifiers", "readReplicaDBClusterIdentifiers"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LicenseModel", "licenseModel"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Iops", "iops"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionGroupMemberships", "optionGroupMemberships"]
            (JD.list optionGroupMembershipDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CharacterSetName", "characterSetName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecondaryAvailabilityZone", "secondaryAvailabilityZone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PubliclyAccessible", "publiclyAccessible"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusInfos", "statusInfos"]
            (JD.list dBInstanceStatusInfoDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageType", "storageType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TdeCredentialArn", "tdeCredentialArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DbInstancePort", "dbInstancePort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterIdentifier", "dBClusterIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageEncrypted", "storageEncrypted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KmsKeyId", "kmsKeyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DbiResourceId", "dbiResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CACertificateIdentifier", "cACertificateIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DomainMemberships", "domainMemberships"]
            (JD.list domainMembershipDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CopyTagsToSnapshot", "copyTagsToSnapshot"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MonitoringInterval", "monitoringInterval"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnhancedMonitoringResourceArn", "enhancedMonitoringResourceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MonitoringRoleArn", "monitoringRoleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PromotionTier", "promotionTier"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceArn", "dBInstanceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timezone", "timezone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IAMDatabaseAuthenticationEnabled", "iAMDatabaseAuthenticationEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PerformanceInsightsEnabled", "performanceInsightsEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PerformanceInsightsKMSKeyId", "performanceInsightsKMSKeyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PerformanceInsightsRetentionPeriod", "performanceInsightsRetentionPeriod"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnabledCloudwatchLogsExports", "enabledCloudwatchLogsExports"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessorFeatures", "processorFeatures"]
            (JD.list processorFeatureDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeletionProtection", "deletionProtection"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AssociatedRoles", "associatedRoles"]
            (JD.list dBInstanceRoleDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ListenerEndpoint", "listenerEndpoint"]
            endpointDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxAllocatedStorage", "maxAllocatedStorage"]
            JD.int
        )
        




dBInstanceToString : DBInstance -> String -- List (String, String)
dBInstanceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstanceIdentifier" "" -- val.dBInstanceIdentifier
        
    --     |> Dict.insert
    --         "dBInstanceClass" "" -- val.dBInstanceClass
        
    --     |> Dict.insert
    --         "engine" "" -- val.engine
        
    --     |> Dict.insert
    --         "dBInstanceStatus" "" -- val.dBInstanceStatus
        
    --     |> Dict.insert
    --         "masterUsername" "" -- val.masterUsername
        
    --     |> Dict.insert
    --         "dBName" "" -- val.dBName
        
    --     |> Dict.insert
    --         "endpoint" "" -- val.endpoint
        
    --     |> Dict.insert
    --         "allocatedStorage" "" -- val.allocatedStorage
        
    --     |> Dict.insert
    --         "instanceCreateTime" "" -- val.instanceCreateTime
        
    --     |> Dict.insert
    --         "preferredBackupWindow" "" -- val.preferredBackupWindow
        
    --     |> Dict.insert
    --         "backupRetentionPeriod" "" -- val.backupRetentionPeriod
        
    --     |> Dict.insert
    --         "dBSecurityGroups" "" -- val.dBSecurityGroups
        
    --     |> Dict.insert
    --         "vpcSecurityGroups" "" -- val.vpcSecurityGroups
        
    --     |> Dict.insert
    --         "dBParameterGroups" "" -- val.dBParameterGroups
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.insert
    --         "dBSubnetGroup" "" -- val.dBSubnetGroup
        
    --     |> Dict.insert
    --         "preferredMaintenanceWindow" "" -- val.preferredMaintenanceWindow
        
    --     |> Dict.insert
    --         "pendingModifiedValues" "" -- val.pendingModifiedValues
        
    --     |> Dict.insert
    --         "latestRestorableTime" "" -- val.latestRestorableTime
        
    --     |> Dict.insert
    --         "multiAZ" "" -- val.multiAZ
        
    --     |> Dict.insert
    --         "engineVersion" "" -- val.engineVersion
        
    --     |> Dict.insert
    --         "autoMinorVersionUpgrade" "" -- val.autoMinorVersionUpgrade
        
    --     |> Dict.insert
    --         "readReplicaSourceDBInstanceIdentifier" "" -- val.readReplicaSourceDBInstanceIdentifier
        
    --     |> Dict.insert
    --         "readReplicaDBInstanceIdentifiers" "" -- val.readReplicaDBInstanceIdentifiers
        
    --     |> Dict.insert
    --         "readReplicaDBClusterIdentifiers" "" -- val.readReplicaDBClusterIdentifiers
        
    --     |> Dict.insert
    --         "licenseModel" "" -- val.licenseModel
        
    --     |> Dict.insert
    --         "iops" "" -- val.iops
        
    --     |> Dict.insert
    --         "optionGroupMemberships" "" -- val.optionGroupMemberships
        
    --     |> Dict.insert
    --         "characterSetName" "" -- val.characterSetName
        
    --     |> Dict.insert
    --         "secondaryAvailabilityZone" "" -- val.secondaryAvailabilityZone
        
    --     |> Dict.insert
    --         "publiclyAccessible" "" -- val.publiclyAccessible
        
    --     |> Dict.insert
    --         "statusInfos" "" -- val.statusInfos
        
    --     |> Dict.insert
    --         "storageType" "" -- val.storageType
        
    --     |> Dict.insert
    --         "tdeCredentialArn" "" -- val.tdeCredentialArn
        
    --     |> Dict.insert
    --         "dbInstancePort" "" -- val.dbInstancePort
        
    --     |> Dict.insert
    --         "dBClusterIdentifier" "" -- val.dBClusterIdentifier
        
    --     |> Dict.insert
    --         "storageEncrypted" "" -- val.storageEncrypted
        
    --     |> Dict.insert
    --         "kmsKeyId" "" -- val.kmsKeyId
        
    --     |> Dict.insert
    --         "dbiResourceId" "" -- val.dbiResourceId
        
    --     |> Dict.insert
    --         "cACertificateIdentifier" "" -- val.cACertificateIdentifier
        
    --     |> Dict.insert
    --         "domainMemberships" "" -- val.domainMemberships
        
    --     |> Dict.insert
    --         "copyTagsToSnapshot" "" -- val.copyTagsToSnapshot
        
    --     |> Dict.insert
    --         "monitoringInterval" "" -- val.monitoringInterval
        
    --     |> Dict.insert
    --         "enhancedMonitoringResourceArn" "" -- val.enhancedMonitoringResourceArn
        
    --     |> Dict.insert
    --         "monitoringRoleArn" "" -- val.monitoringRoleArn
        
    --     |> Dict.insert
    --         "promotionTier" "" -- val.promotionTier
        
    --     |> Dict.insert
    --         "dBInstanceArn" "" -- val.dBInstanceArn
        
    --     |> Dict.insert
    --         "timezone" "" -- val.timezone
        
    --     |> Dict.insert
    --         "iAMDatabaseAuthenticationEnabled" "" -- val.iAMDatabaseAuthenticationEnabled
        
    --     |> Dict.insert
    --         "performanceInsightsEnabled" "" -- val.performanceInsightsEnabled
        
    --     |> Dict.insert
    --         "performanceInsightsKMSKeyId" "" -- val.performanceInsightsKMSKeyId
        
    --     |> Dict.insert
    --         "performanceInsightsRetentionPeriod" "" -- val.performanceInsightsRetentionPeriod
        
    --     |> Dict.insert
    --         "enabledCloudwatchLogsExports" "" -- val.enabledCloudwatchLogsExports
        
    --     |> Dict.insert
    --         "processorFeatures" "" -- val.processorFeatures
        
    --     |> Dict.insert
    --         "deletionProtection" "" -- val.deletionProtection
        
    --     |> Dict.insert
    --         "associatedRoles" "" -- val.associatedRoles
        
    --     |> Dict.insert
    --         "listenerEndpoint" "" -- val.listenerEndpoint
        
    --     |> Dict.insert
    --         "maxAllocatedStorage" "" -- val.maxAllocatedStorage
        
    --     |> Dict.toList
    ""



{-| <p>An automated backup of a DB instance. It it consists of system backups, transaction logs, and the database instance properties that existed at the time you deleted the source instance. </p>
-}
type alias DBInstanceAutomatedBackup =
    { dBInstanceArn : Maybe String
    , dbiResourceId : Maybe String
    , region : Maybe String
    , dBInstanceIdentifier : Maybe String
    , restoreWindow : Maybe RestoreWindow
    , allocatedStorage : Maybe Int
    , status : Maybe String
    , port_ : Maybe Int
    , availabilityZone : Maybe String
    , vpcId : Maybe String
    , instanceCreateTime : Maybe Posix
    , masterUsername : Maybe String
    , engine : Maybe String
    , engineVersion : Maybe String
    , licenseModel : Maybe String
    , iops : Maybe Int
    , optionGroupName : Maybe String
    , tdeCredentialArn : Maybe String
    , encrypted : Maybe Bool
    , storageType : Maybe String
    , kmsKeyId : Maybe String
    , timezone : Maybe String
    , iAMDatabaseAuthenticationEnabled : Maybe Bool
    }



dBInstanceAutomatedBackupDecoder : JD.Decoder DBInstanceAutomatedBackup
dBInstanceAutomatedBackupDecoder =
    JD.succeed DBInstanceAutomatedBackup
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceArn", "dBInstanceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DbiResourceId", "dbiResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Region", "region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceIdentifier", "dBInstanceIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RestoreWindow", "restoreWindow"]
            restoreWindowDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllocatedStorage", "allocatedStorage"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZone", "availabilityZone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcId", "vpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceCreateTime", "instanceCreateTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MasterUsername", "masterUsername"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Engine", "engine"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineVersion", "engineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LicenseModel", "licenseModel"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Iops", "iops"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionGroupName", "optionGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TdeCredentialArn", "tdeCredentialArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Encrypted", "encrypted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageType", "storageType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KmsKeyId", "kmsKeyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timezone", "timezone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IAMDatabaseAuthenticationEnabled", "iAMDatabaseAuthenticationEnabled"]
            JD.bool
        )
        




dBInstanceAutomatedBackupToString : DBInstanceAutomatedBackup -> String -- List (String, String)
dBInstanceAutomatedBackupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstanceArn" "" -- val.dBInstanceArn
        
    --     |> Dict.insert
    --         "dbiResourceId" "" -- val.dbiResourceId
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "dBInstanceIdentifier" "" -- val.dBInstanceIdentifier
        
    --     |> Dict.insert
    --         "restoreWindow" "" -- val.restoreWindow
        
    --     |> Dict.insert
    --         "allocatedStorage" "" -- val.allocatedStorage
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "instanceCreateTime" "" -- val.instanceCreateTime
        
    --     |> Dict.insert
    --         "masterUsername" "" -- val.masterUsername
        
    --     |> Dict.insert
    --         "engine" "" -- val.engine
        
    --     |> Dict.insert
    --         "engineVersion" "" -- val.engineVersion
        
    --     |> Dict.insert
    --         "licenseModel" "" -- val.licenseModel
        
    --     |> Dict.insert
    --         "iops" "" -- val.iops
        
    --     |> Dict.insert
    --         "optionGroupName" "" -- val.optionGroupName
        
    --     |> Dict.insert
    --         "tdeCredentialArn" "" -- val.tdeCredentialArn
        
    --     |> Dict.insert
    --         "encrypted" "" -- val.encrypted
        
    --     |> Dict.insert
    --         "storageType" "" -- val.storageType
        
    --     |> Dict.insert
    --         "kmsKeyId" "" -- val.kmsKeyId
        
    --     |> Dict.insert
    --         "timezone" "" -- val.timezone
        
    --     |> Dict.insert
    --         "iAMDatabaseAuthenticationEnabled" "" -- val.iAMDatabaseAuthenticationEnabled
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBInstanceAutomatedBacku
-}
type alias DBInstanceAutomatedBackupMessage =
    { marker : Maybe String
    , dBInstanceAutomatedBackups : Maybe (List DBInstanceAutomatedBackup)
    }



dBInstanceAutomatedBackupMessageDecoder : JD.Decoder DBInstanceAutomatedBackupMessage
dBInstanceAutomatedBackupMessageDecoder =
    JD.succeed DBInstanceAutomatedBackupMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceAutomatedBackups", "dBInstanceAutomatedBackups"]
            (JD.list dBInstanceAutomatedBackupDecoder)
        )
        




dBInstanceAutomatedBackupMessageToString : DBInstanceAutomatedBackupMessage -> String -- List (String, String)
dBInstanceAutomatedBackupMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "dBInstanceAutomatedBackups" "" -- val.dBInstanceAutomatedBackups
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBInstanc
-}
type alias DBInstanceMessage =
    { marker : Maybe String
    , dBInstances : Maybe (List DBInstance)
    }



dBInstanceMessageDecoder : JD.Decoder DBInstanceMessage
dBInstanceMessageDecoder =
    JD.succeed DBInstanceMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstances", "dBInstances"]
            (JD.list dBInstanceDecoder)
        )
        




dBInstanceMessageToString : DBInstanceMessage -> String -- List (String, String)
dBInstanceMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "dBInstances" "" -- val.dBInstances
        
    --     |> Dict.toList
    ""



{-| <p>Describes an AWS Identity and Access Management (IAM) role that is associated with a DB instance.</p>
-}
type alias DBInstanceRole =
    { roleArn : Maybe String
    , featureName : Maybe String
    , status : Maybe String
    }



dBInstanceRoleDecoder : JD.Decoder DBInstanceRole
dBInstanceRoleDecoder =
    JD.succeed DBInstanceRole
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleArn", "roleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FeatureName", "featureName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        




dBInstanceRoleToString : DBInstanceRole -> String -- List (String, String)
dBInstanceRoleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "featureName" "" -- val.featureName
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| <p>Provides a list of status information for a DB instance.</p>
-}
type alias DBInstanceStatusInfo =
    { statusType : Maybe String
    , normal : Maybe Bool
    , status : Maybe String
    , message : Maybe String
    }



dBInstanceStatusInfoDecoder : JD.Decoder DBInstanceStatusInfo
dBInstanceStatusInfoDecoder =
    JD.succeed DBInstanceStatusInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusType", "statusType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Normal", "normal"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        




dBInstanceStatusInfoToString : DBInstanceStatusInfo -> String -- List (String, String)
dBInstanceStatusInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "statusType" "" -- val.statusType
        
    --     |> Dict.insert
    --         "normal" "" -- val.normal
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>Contains the details of an Amazon RDS DB parameter group. </p> <p>This data type is used as a response element in the <code>DescribeDBParameterGroups</code> action. </p>
-}
type alias DBParameterGroup =
    { dBParameterGroupName : Maybe String
    , dBParameterGroupFamily : Maybe String
    , description : Maybe String
    , dBParameterGroupArn : Maybe String
    }



dBParameterGroupDecoder : JD.Decoder DBParameterGroup
dBParameterGroupDecoder =
    JD.succeed DBParameterGroup
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBParameterGroupName", "dBParameterGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBParameterGroupFamily", "dBParameterGroupFamily"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBParameterGroupArn", "dBParameterGroupArn"]
            JD.string
        )
        




dBParameterGroupToString : DBParameterGroup -> String -- List (String, String)
dBParameterGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBParameterGroupName" "" -- val.dBParameterGroupName
        
    --     |> Dict.insert
    --         "dBParameterGroupFamily" "" -- val.dBParameterGroupFamily
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "dBParameterGroupArn" "" -- val.dBParameterGroupArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBParameterGrou
-}
type alias DBParameterGroupDetails =
    { parameters : Maybe (List Parameter)
    , marker : Maybe String
    }



dBParameterGroupDetailsDecoder : JD.Decoder DBParameterGroupDetails
dBParameterGroupDetailsDecoder =
    JD.succeed DBParameterGroupDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (JD.list parameterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        




dBParameterGroupDetailsToString : DBParameterGroupDetails -> String -- List (String, String)
dBParameterGroupDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBParameterGroupNam
-}
type alias DBParameterGroupNameMessage =
    { dBParameterGroupName : Maybe String
    }



dBParameterGroupNameMessageDecoder : JD.Decoder DBParameterGroupNameMessage
dBParameterGroupNameMessageDecoder =
    JD.succeed DBParameterGroupNameMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBParameterGroupName", "dBParameterGroupName"]
            JD.string
        )
        




dBParameterGroupNameMessageToString : DBParameterGroupNameMessage -> String -- List (String, String)
dBParameterGroupNameMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBParameterGroupName" "" -- val.dBParameterGroupName
        
    --     |> Dict.toList
    ""



{-| <p>The status of the DB parameter group.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <code>CreateDBInstance</code> </p> </li> <li> <p> <code>CreateDBInstanceReadReplica</code> </p> </li> <li> <p> <code>DeleteDBInstance</code> </p> </li> <li> <p> <code>ModifyDBInstance</code> </p> </li> <li> <p> <code>RebootDBInstance</code> </p> </li> <li> <p> <code>RestoreDBInstanceFromDBSnapshot</code> </p> </li> </ul>
-}
type alias DBParameterGroupStatus =
    { dBParameterGroupName : Maybe String
    , parameterApplyStatus : Maybe String
    }



dBParameterGroupStatusDecoder : JD.Decoder DBParameterGroupStatus
dBParameterGroupStatusDecoder =
    JD.succeed DBParameterGroupStatus
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBParameterGroupName", "dBParameterGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParameterApplyStatus", "parameterApplyStatus"]
            JD.string
        )
        




dBParameterGroupStatusToString : DBParameterGroupStatus -> String -- List (String, String)
dBParameterGroupStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBParameterGroupName" "" -- val.dBParameterGroupName
        
    --     |> Dict.insert
    --         "parameterApplyStatus" "" -- val.parameterApplyStatus
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBParameterGroup
-}
type alias DBParameterGroupsMessage =
    { marker : Maybe String
    , dBParameterGroups : Maybe (List DBParameterGroup)
    }



dBParameterGroupsMessageDecoder : JD.Decoder DBParameterGroupsMessage
dBParameterGroupsMessageDecoder =
    JD.succeed DBParameterGroupsMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBParameterGroups", "dBParameterGroups"]
            (JD.list dBParameterGroupDecoder)
        )
        




dBParameterGroupsMessageToString : DBParameterGroupsMessage -> String -- List (String, String)
dBParameterGroupsMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "dBParameterGroups" "" -- val.dBParameterGroups
        
    --     |> Dict.toList
    ""



{-| <p>Contains the details for an Amazon RDS DB security group. </p> <p>This data type is used as a response element in the <code>DescribeDBSecurityGroups</code> action. </p>
-}
type alias DBSecurityGroup =
    { ownerId : Maybe String
    , dBSecurityGroupName : Maybe String
    , dBSecurityGroupDescription : Maybe String
    , vpcId : Maybe String
    , eC2SecurityGroups : Maybe (List EC2SecurityGroup)
    , iPRanges : Maybe (List IPRange)
    , dBSecurityGroupArn : Maybe String
    }



dBSecurityGroupDecoder : JD.Decoder DBSecurityGroup
dBSecurityGroupDecoder =
    JD.succeed DBSecurityGroup
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OwnerId", "ownerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSecurityGroupName", "dBSecurityGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSecurityGroupDescription", "dBSecurityGroupDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcId", "vpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EC2SecurityGroups", "eC2SecurityGroups"]
            (JD.list eC2SecurityGroupDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IPRanges", "iPRanges"]
            (JD.list iPRangeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSecurityGroupArn", "dBSecurityGroupArn"]
            JD.string
        )
        




dBSecurityGroupToString : DBSecurityGroup -> String -- List (String, String)
dBSecurityGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ownerId" "" -- val.ownerId
        
    --     |> Dict.insert
    --         "dBSecurityGroupName" "" -- val.dBSecurityGroupName
        
    --     |> Dict.insert
    --         "dBSecurityGroupDescription" "" -- val.dBSecurityGroupDescription
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "eC2SecurityGroups" "" -- val.eC2SecurityGroups
        
    --     |> Dict.insert
    --         "iPRanges" "" -- val.iPRanges
        
    --     |> Dict.insert
    --         "dBSecurityGroupArn" "" -- val.dBSecurityGroupArn
        
    --     |> Dict.toList
    ""



{-| <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <code>ModifyDBInstance</code> </p> </li> <li> <p> <code>RebootDBInstance</code> </p> </li> <li> <p> <code>RestoreDBInstanceFromDBSnapshot</code> </p> </li> <li> <p> <code>RestoreDBInstanceToPointInTime</code> </p> </li> </ul>
-}
type alias DBSecurityGroupMembership =
    { dBSecurityGroupName : Maybe String
    , status : Maybe String
    }



dBSecurityGroupMembershipDecoder : JD.Decoder DBSecurityGroupMembership
dBSecurityGroupMembershipDecoder =
    JD.succeed DBSecurityGroupMembership
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSecurityGroupName", "dBSecurityGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        




dBSecurityGroupMembershipToString : DBSecurityGroupMembership -> String -- List (String, String)
dBSecurityGroupMembershipToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSecurityGroupName" "" -- val.dBSecurityGroupName
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBSecurityGrou
-}
type alias DBSecurityGroupMessage =
    { marker : Maybe String
    , dBSecurityGroups : Maybe (List DBSecurityGroup)
    }



dBSecurityGroupMessageDecoder : JD.Decoder DBSecurityGroupMessage
dBSecurityGroupMessageDecoder =
    JD.succeed DBSecurityGroupMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSecurityGroups", "dBSecurityGroups"]
            (JD.list dBSecurityGroupDecoder)
        )
        




dBSecurityGroupMessageToString : DBSecurityGroupMessage -> String -- List (String, String)
dBSecurityGroupMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "dBSecurityGroups" "" -- val.dBSecurityGroups
        
    --     |> Dict.toList
    ""



{-| <p>Contains the details of an Amazon RDS DB snapshot. </p> <p>This data type is used as a response element in the <code>DescribeDBSnapshots</code> action. </p>
-}
type alias DBSnapshot =
    { dBSnapshotIdentifier : Maybe String
    , dBInstanceIdentifier : Maybe String
    , snapshotCreateTime : Maybe Posix
    , engine : Maybe String
    , allocatedStorage : Maybe Int
    , status : Maybe String
    , port_ : Maybe Int
    , availabilityZone : Maybe String
    , vpcId : Maybe String
    , instanceCreateTime : Maybe Posix
    , masterUsername : Maybe String
    , engineVersion : Maybe String
    , licenseModel : Maybe String
    , snapshotType : Maybe String
    , iops : Maybe Int
    , optionGroupName : Maybe String
    , percentProgress : Maybe Int
    , sourceRegion : Maybe String
    , sourceDBSnapshotIdentifier : Maybe String
    , storageType : Maybe String
    , tdeCredentialArn : Maybe String
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , dBSnapshotArn : Maybe String
    , timezone : Maybe String
    , iAMDatabaseAuthenticationEnabled : Maybe Bool
    , processorFeatures : Maybe (List ProcessorFeature)
    , dbiResourceId : Maybe String
    }



dBSnapshotDecoder : JD.Decoder DBSnapshot
dBSnapshotDecoder =
    JD.succeed DBSnapshot
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSnapshotIdentifier", "dBSnapshotIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceIdentifier", "dBInstanceIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SnapshotCreateTime", "snapshotCreateTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Engine", "engine"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllocatedStorage", "allocatedStorage"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZone", "availabilityZone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcId", "vpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceCreateTime", "instanceCreateTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MasterUsername", "masterUsername"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineVersion", "engineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LicenseModel", "licenseModel"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SnapshotType", "snapshotType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Iops", "iops"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionGroupName", "optionGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PercentProgress", "percentProgress"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceRegion", "sourceRegion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceDBSnapshotIdentifier", "sourceDBSnapshotIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageType", "storageType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TdeCredentialArn", "tdeCredentialArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Encrypted", "encrypted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KmsKeyId", "kmsKeyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSnapshotArn", "dBSnapshotArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timezone", "timezone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IAMDatabaseAuthenticationEnabled", "iAMDatabaseAuthenticationEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessorFeatures", "processorFeatures"]
            (JD.list processorFeatureDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DbiResourceId", "dbiResourceId"]
            JD.string
        )
        




dBSnapshotToString : DBSnapshot -> String -- List (String, String)
dBSnapshotToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSnapshotIdentifier" "" -- val.dBSnapshotIdentifier
        
    --     |> Dict.insert
    --         "dBInstanceIdentifier" "" -- val.dBInstanceIdentifier
        
    --     |> Dict.insert
    --         "snapshotCreateTime" "" -- val.snapshotCreateTime
        
    --     |> Dict.insert
    --         "engine" "" -- val.engine
        
    --     |> Dict.insert
    --         "allocatedStorage" "" -- val.allocatedStorage
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "instanceCreateTime" "" -- val.instanceCreateTime
        
    --     |> Dict.insert
    --         "masterUsername" "" -- val.masterUsername
        
    --     |> Dict.insert
    --         "engineVersion" "" -- val.engineVersion
        
    --     |> Dict.insert
    --         "licenseModel" "" -- val.licenseModel
        
    --     |> Dict.insert
    --         "snapshotType" "" -- val.snapshotType
        
    --     |> Dict.insert
    --         "iops" "" -- val.iops
        
    --     |> Dict.insert
    --         "optionGroupName" "" -- val.optionGroupName
        
    --     |> Dict.insert
    --         "percentProgress" "" -- val.percentProgress
        
    --     |> Dict.insert
    --         "sourceRegion" "" -- val.sourceRegion
        
    --     |> Dict.insert
    --         "sourceDBSnapshotIdentifier" "" -- val.sourceDBSnapshotIdentifier
        
    --     |> Dict.insert
    --         "storageType" "" -- val.storageType
        
    --     |> Dict.insert
    --         "tdeCredentialArn" "" -- val.tdeCredentialArn
        
    --     |> Dict.insert
    --         "encrypted" "" -- val.encrypted
        
    --     |> Dict.insert
    --         "kmsKeyId" "" -- val.kmsKeyId
        
    --     |> Dict.insert
    --         "dBSnapshotArn" "" -- val.dBSnapshotArn
        
    --     |> Dict.insert
    --         "timezone" "" -- val.timezone
        
    --     |> Dict.insert
    --         "iAMDatabaseAuthenticationEnabled" "" -- val.iAMDatabaseAuthenticationEnabled
        
    --     |> Dict.insert
    --         "processorFeatures" "" -- val.processorFeatures
        
    --     |> Dict.insert
    --         "dbiResourceId" "" -- val.dbiResourceId
        
    --     |> Dict.toList
    ""



{-| <p>Contains the name and values of a manual DB snapshot attribute</p> <p>Manual DB snapshot attributes are used to authorize other AWS accounts to restore a manual DB snapshot. For more information, see the <code>ModifyDBSnapshotAttribute</code> API.</p>
-}
type alias DBSnapshotAttribute =
    { attributeName : Maybe String
    , attributeValues : Maybe (List String)
    }



dBSnapshotAttributeDecoder : JD.Decoder DBSnapshotAttribute
dBSnapshotAttributeDecoder =
    JD.succeed DBSnapshotAttribute
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AttributeName", "attributeName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AttributeValues", "attributeValues"]
            (JD.list JD.string)
        )
        




dBSnapshotAttributeToString : DBSnapshotAttribute -> String -- List (String, String)
dBSnapshotAttributeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributeName" "" -- val.attributeName
        
    --     |> Dict.insert
    --         "attributeValues" "" -- val.attributeValues
        
    --     |> Dict.toList
    ""



{-| <p>Contains the results of a successful call to the <code>DescribeDBSnapshotAttributes</code> API action.</p> <p>Manual DB snapshot attributes are used to authorize other AWS accounts to copy or restore a manual DB snapshot. For more information, see the <code>ModifyDBSnapshotAttribute</code> API action.</p>
-}
type alias DBSnapshotAttributesResult =
    { dBSnapshotIdentifier : Maybe String
    , dBSnapshotAttributes : Maybe (List DBSnapshotAttribute)
    }



dBSnapshotAttributesResultDecoder : JD.Decoder DBSnapshotAttributesResult
dBSnapshotAttributesResultDecoder =
    JD.succeed DBSnapshotAttributesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSnapshotIdentifier", "dBSnapshotIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSnapshotAttributes", "dBSnapshotAttributes"]
            (JD.list dBSnapshotAttributeDecoder)
        )
        




dBSnapshotAttributesResultToString : DBSnapshotAttributesResult -> String -- List (String, String)
dBSnapshotAttributesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSnapshotIdentifier" "" -- val.dBSnapshotIdentifier
        
    --     |> Dict.insert
    --         "dBSnapshotAttributes" "" -- val.dBSnapshotAttributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBSnapsho
-}
type alias DBSnapshotMessage =
    { marker : Maybe String
    , dBSnapshots : Maybe (List DBSnapshot)
    }



dBSnapshotMessageDecoder : JD.Decoder DBSnapshotMessage
dBSnapshotMessageDecoder =
    JD.succeed DBSnapshotMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSnapshots", "dBSnapshots"]
            (JD.list dBSnapshotDecoder)
        )
        




dBSnapshotMessageToString : DBSnapshotMessage -> String -- List (String, String)
dBSnapshotMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "dBSnapshots" "" -- val.dBSnapshots
        
    --     |> Dict.toList
    ""



{-| <p>Contains the details of an Amazon RDS DB subnet group. </p> <p>This data type is used as a response element in the <code>DescribeDBSubnetGroups</code> action. </p>
-}
type alias DBSubnetGroup =
    { dBSubnetGroupName : Maybe String
    , dBSubnetGroupDescription : Maybe String
    , vpcId : Maybe String
    , subnetGroupStatus : Maybe String
    , subnets : Maybe (List Subnet)
    , dBSubnetGroupArn : Maybe String
    }



dBSubnetGroupDecoder : JD.Decoder DBSubnetGroup
dBSubnetGroupDecoder =
    JD.succeed DBSubnetGroup
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSubnetGroupName", "dBSubnetGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSubnetGroupDescription", "dBSubnetGroupDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcId", "vpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetGroupStatus", "subnetGroupStatus"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Subnets", "subnets"]
            (JD.list subnetDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSubnetGroupArn", "dBSubnetGroupArn"]
            JD.string
        )
        




dBSubnetGroupToString : DBSubnetGroup -> String -- List (String, String)
dBSubnetGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSubnetGroupName" "" -- val.dBSubnetGroupName
        
    --     |> Dict.insert
    --         "dBSubnetGroupDescription" "" -- val.dBSubnetGroupDescription
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "subnetGroupStatus" "" -- val.subnetGroupStatus
        
    --     |> Dict.insert
    --         "subnets" "" -- val.subnets
        
    --     |> Dict.insert
    --         "dBSubnetGroupArn" "" -- val.dBSubnetGroupArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from dBSubnetGrou
-}
type alias DBSubnetGroupMessage =
    { marker : Maybe String
    , dBSubnetGroups : Maybe (List DBSubnetGroup)
    }



dBSubnetGroupMessageDecoder : JD.Decoder DBSubnetGroupMessage
dBSubnetGroupMessageDecoder =
    JD.succeed DBSubnetGroupMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSubnetGroups", "dBSubnetGroups"]
            (JD.list dBSubnetGroupDecoder)
        )
        




dBSubnetGroupMessageToString : DBSubnetGroupMessage -> String -- List (String, String)
dBSubnetGroupMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "dBSubnetGroups" "" -- val.dBSubnetGroups
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDBClust
-}
type alias DeleteDBClusterResult =
    { dBCluster : Maybe DBCluster
    }



deleteDBClusterResultDecoder : JD.Decoder DeleteDBClusterResult
deleteDBClusterResultDecoder =
    JD.succeed DeleteDBClusterResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBCluster", "dBCluster"]
            dBClusterDecoder
        )
        




deleteDBClusterResultToString : DeleteDBClusterResult -> String -- List (String, String)
deleteDBClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBCluster" "" -- val.dBCluster
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDBClusterSnapsh
-}
type alias DeleteDBClusterSnapshotResult =
    { dBClusterSnapshot : Maybe DBClusterSnapshot
    }



deleteDBClusterSnapshotResultDecoder : JD.Decoder DeleteDBClusterSnapshotResult
deleteDBClusterSnapshotResultDecoder =
    JD.succeed DeleteDBClusterSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterSnapshot", "dBClusterSnapshot"]
            dBClusterSnapshotDecoder
        )
        




deleteDBClusterSnapshotResultToString : DeleteDBClusterSnapshotResult -> String -- List (String, String)
deleteDBClusterSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterSnapshot" "" -- val.dBClusterSnapshot
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDBInstanceAutomatedBack
-}
type alias DeleteDBInstanceAutomatedBackupResult =
    { dBInstanceAutomatedBackup : Maybe DBInstanceAutomatedBackup
    }



deleteDBInstanceAutomatedBackupResultDecoder : JD.Decoder DeleteDBInstanceAutomatedBackupResult
deleteDBInstanceAutomatedBackupResultDecoder =
    JD.succeed DeleteDBInstanceAutomatedBackupResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceAutomatedBackup", "dBInstanceAutomatedBackup"]
            dBInstanceAutomatedBackupDecoder
        )
        




deleteDBInstanceAutomatedBackupResultToString : DeleteDBInstanceAutomatedBackupResult -> String -- List (String, String)
deleteDBInstanceAutomatedBackupResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstanceAutomatedBackup" "" -- val.dBInstanceAutomatedBackup
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDBInstan
-}
type alias DeleteDBInstanceResult =
    { dBInstance : Maybe DBInstance
    }



deleteDBInstanceResultDecoder : JD.Decoder DeleteDBInstanceResult
deleteDBInstanceResultDecoder =
    JD.succeed DeleteDBInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstance", "dBInstance"]
            dBInstanceDecoder
        )
        




deleteDBInstanceResultToString : DeleteDBInstanceResult -> String -- List (String, String)
deleteDBInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstance" "" -- val.dBInstance
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDBSnapsh
-}
type alias DeleteDBSnapshotResult =
    { dBSnapshot : Maybe DBSnapshot
    }



deleteDBSnapshotResultDecoder : JD.Decoder DeleteDBSnapshotResult
deleteDBSnapshotResultDecoder =
    JD.succeed DeleteDBSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSnapshot", "dBSnapshot"]
            dBSnapshotDecoder
        )
        




deleteDBSnapshotResultToString : DeleteDBSnapshotResult -> String -- List (String, String)
deleteDBSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSnapshot" "" -- val.dBSnapshot
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteEventSubscripti
-}
type alias DeleteEventSubscriptionResult =
    { eventSubscription : Maybe EventSubscription
    }



deleteEventSubscriptionResultDecoder : JD.Decoder DeleteEventSubscriptionResult
deleteEventSubscriptionResultDecoder =
    JD.succeed DeleteEventSubscriptionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventSubscription", "eventSubscription"]
            eventSubscriptionDecoder
        )
        




deleteEventSubscriptionResultToString : DeleteEventSubscriptionResult -> String -- List (String, String)
deleteEventSubscriptionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventSubscription" "" -- val.eventSubscription
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteGlobalClust
-}
type alias DeleteGlobalClusterResult =
    { globalCluster : Maybe GlobalCluster
    }



deleteGlobalClusterResultDecoder : JD.Decoder DeleteGlobalClusterResult
deleteGlobalClusterResultDecoder =
    JD.succeed DeleteGlobalClusterResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GlobalCluster", "globalCluster"]
            globalClusterDecoder
        )
        




deleteGlobalClusterResultToString : DeleteGlobalClusterResult -> String -- List (String, String)
deleteGlobalClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "globalCluster" "" -- val.globalCluster
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeDBClusterSnapshotAttribut
-}
type alias DescribeDBClusterSnapshotAttributesResult =
    { dBClusterSnapshotAttributesResult : Maybe DBClusterSnapshotAttributesResult
    }



describeDBClusterSnapshotAttributesResultDecoder : JD.Decoder DescribeDBClusterSnapshotAttributesResult
describeDBClusterSnapshotAttributesResultDecoder =
    JD.succeed DescribeDBClusterSnapshotAttributesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterSnapshotAttributesResult", "dBClusterSnapshotAttributesResult"]
            dBClusterSnapshotAttributesResultDecoder
        )
        




describeDBClusterSnapshotAttributesResultToString : DescribeDBClusterSnapshotAttributesResult -> String -- List (String, String)
describeDBClusterSnapshotAttributesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterSnapshotAttributesResult" "" -- val.dBClusterSnapshotAttributesResult
        
    --     |> Dict.toList
    ""



{-| <p>This data type is used as a response element to <code>DescribeDBLogFiles</code>.</p>
-}
type alias DescribeDBLogFilesDetails =
    { logFileName : Maybe String
    , lastWritten : Maybe Int
    , size : Maybe Int
    }



describeDBLogFilesDetailsDecoder : JD.Decoder DescribeDBLogFilesDetails
describeDBLogFilesDetailsDecoder =
    JD.succeed DescribeDBLogFilesDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogFileName", "logFileName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastWritten", "lastWritten"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Size", "size"]
            JD.int
        )
        




describeDBLogFilesDetailsToString : DescribeDBLogFilesDetails -> String -- List (String, String)
describeDBLogFilesDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logFileName" "" -- val.logFileName
        
    --     |> Dict.insert
    --         "lastWritten" "" -- val.lastWritten
        
    --     |> Dict.insert
    --         "size" "" -- val.size
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeDBLogFiles
-}
type alias DescribeDBLogFilesResponse =
    { describeDBLogFiles : Maybe (List DescribeDBLogFilesDetails)
    , marker : Maybe String
    }



describeDBLogFilesResponseDecoder : JD.Decoder DescribeDBLogFilesResponse
describeDBLogFilesResponseDecoder =
    JD.succeed DescribeDBLogFilesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DescribeDBLogFiles", "describeDBLogFiles"]
            (JD.list describeDBLogFilesDetailsDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        




describeDBLogFilesResponseToString : DescribeDBLogFilesResponse -> String -- List (String, String)
describeDBLogFilesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "describeDBLogFiles" "" -- val.describeDBLogFiles
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeDBSnapshotAttribut
-}
type alias DescribeDBSnapshotAttributesResult =
    { dBSnapshotAttributesResult : Maybe DBSnapshotAttributesResult
    }



describeDBSnapshotAttributesResultDecoder : JD.Decoder DescribeDBSnapshotAttributesResult
describeDBSnapshotAttributesResultDecoder =
    JD.succeed DescribeDBSnapshotAttributesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSnapshotAttributesResult", "dBSnapshotAttributesResult"]
            dBSnapshotAttributesResultDecoder
        )
        




describeDBSnapshotAttributesResultToString : DescribeDBSnapshotAttributesResult -> String -- List (String, String)
describeDBSnapshotAttributesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSnapshotAttributesResult" "" -- val.dBSnapshotAttributesResult
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEngineDefaultClusterParamete
-}
type alias DescribeEngineDefaultClusterParametersResult =
    { engineDefaults : Maybe EngineDefaults
    }



describeEngineDefaultClusterParametersResultDecoder : JD.Decoder DescribeEngineDefaultClusterParametersResult
describeEngineDefaultClusterParametersResultDecoder =
    JD.succeed DescribeEngineDefaultClusterParametersResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineDefaults", "engineDefaults"]
            engineDefaultsDecoder
        )
        




describeEngineDefaultClusterParametersResultToString : DescribeEngineDefaultClusterParametersResult -> String -- List (String, String)
describeEngineDefaultClusterParametersResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "engineDefaults" "" -- val.engineDefaults
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEngineDefaultParamete
-}
type alias DescribeEngineDefaultParametersResult =
    { engineDefaults : Maybe EngineDefaults
    }



describeEngineDefaultParametersResultDecoder : JD.Decoder DescribeEngineDefaultParametersResult
describeEngineDefaultParametersResultDecoder =
    JD.succeed DescribeEngineDefaultParametersResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineDefaults", "engineDefaults"]
            engineDefaultsDecoder
        )
        




describeEngineDefaultParametersResultToString : DescribeEngineDefaultParametersResult -> String -- List (String, String)
describeEngineDefaultParametersResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "engineDefaults" "" -- val.engineDefaults
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeValidDBInstanceModificatio
-}
type alias DescribeValidDBInstanceModificationsResult =
    { validDBInstanceModificationsMessage : Maybe ValidDBInstanceModificationsMessage
    }



describeValidDBInstanceModificationsResultDecoder : JD.Decoder DescribeValidDBInstanceModificationsResult
describeValidDBInstanceModificationsResultDecoder =
    JD.succeed DescribeValidDBInstanceModificationsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ValidDBInstanceModificationsMessage", "validDBInstanceModificationsMessage"]
            validDBInstanceModificationsMessageDecoder
        )
        




describeValidDBInstanceModificationsResultToString : DescribeValidDBInstanceModificationsResult -> String -- List (String, String)
describeValidDBInstanceModificationsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "validDBInstanceModificationsMessage" "" -- val.validDBInstanceModificationsMessage
        
    --     |> Dict.toList
    ""



{-| <p>An Active Directory Domain membership record associated with the DB instance.</p>
-}
type alias DomainMembership =
    { domain : Maybe String
    , status : Maybe String
    , fQDN : Maybe String
    , iAMRoleName : Maybe String
    }



domainMembershipDecoder : JD.Decoder DomainMembership
domainMembershipDecoder =
    JD.succeed DomainMembership
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Domain", "domain"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FQDN", "fQDN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IAMRoleName", "iAMRoleName"]
            JD.string
        )
        




domainMembershipToString : DomainMembership -> String -- List (String, String)
domainMembershipToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "domain" "" -- val.domain
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "fQDN" "" -- val.fQDN
        
    --     |> Dict.insert
    --         "iAMRoleName" "" -- val.iAMRoleName
        
    --     |> Dict.toList
    ""



{-| <p>A range of double values.</p>
-}
type alias DoubleRange =
    { from : Maybe Float
    , to : Maybe Float
    }



doubleRangeDecoder : JD.Decoder DoubleRange
doubleRangeDecoder =
    JD.succeed DoubleRange
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["From", "from"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["To", "to"]
            JD.float
        )
        




doubleRangeToString : DoubleRange -> String -- List (String, String)
doubleRangeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "from" "" -- val.from
        
    --     |> Dict.insert
    --         "to" "" -- val.to
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from downloadDBLogFilePortio
-}
type alias DownloadDBLogFilePortionDetails =
    { logFileData : Maybe String
    , marker : Maybe String
    , additionalDataPending : Maybe Bool
    }



downloadDBLogFilePortionDetailsDecoder : JD.Decoder DownloadDBLogFilePortionDetails
downloadDBLogFilePortionDetailsDecoder =
    JD.succeed DownloadDBLogFilePortionDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogFileData", "logFileData"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AdditionalDataPending", "additionalDataPending"]
            JD.bool
        )
        




downloadDBLogFilePortionDetailsToString : DownloadDBLogFilePortionDetails -> String -- List (String, String)
downloadDBLogFilePortionDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logFileData" "" -- val.logFileData
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "additionalDataPending" "" -- val.additionalDataPending
        
    --     |> Dict.toList
    ""



{-| <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <code>AuthorizeDBSecurityGroupIngress</code> </p> </li> <li> <p> <code>DescribeDBSecurityGroups</code> </p> </li> <li> <p> <code>RevokeDBSecurityGroupIngress</code> </p> </li> </ul>
-}
type alias EC2SecurityGroup =
    { status : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupId : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    }



eC2SecurityGroupDecoder : JD.Decoder EC2SecurityGroup
eC2SecurityGroupDecoder =
    JD.succeed EC2SecurityGroup
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EC2SecurityGroupName", "eC2SecurityGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EC2SecurityGroupId", "eC2SecurityGroupId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EC2SecurityGroupOwnerId", "eC2SecurityGroupOwnerId"]
            JD.string
        )
        




eC2SecurityGroupToString : EC2SecurityGroup -> String -- List (String, String)
eC2SecurityGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "eC2SecurityGroupName" "" -- val.eC2SecurityGroupName
        
    --     |> Dict.insert
    --         "eC2SecurityGroupId" "" -- val.eC2SecurityGroupId
        
    --     |> Dict.insert
    --         "eC2SecurityGroupOwnerId" "" -- val.eC2SecurityGroupOwnerId
        
    --     |> Dict.toList
    ""



{-| <p>This data type represents the information you need to connect to an Amazon RDS DB instance. This data type is used as a response element in the following actions:</p> <ul> <li> <p> <code>CreateDBInstance</code> </p> </li> <li> <p> <code>DescribeDBInstances</code> </p> </li> <li> <p> <code>DeleteDBInstance</code> </p> </li> </ul> <p>For the data structure that represents Amazon Aurora DB cluster endpoints, see <code>DBClusterEndpoint</code>.</p>
-}
type alias Endpoint =
    { address : Maybe String
    , port_ : Maybe Int
    , hostedZoneId : Maybe String
    }



endpointDecoder : JD.Decoder Endpoint
endpointDecoder =
    JD.succeed Endpoint
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Address", "address"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HostedZoneId", "hostedZoneId"]
            JD.string
        )
        




endpointToString : Endpoint -> String -- List (String, String)
endpointToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "address" "" -- val.address
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "hostedZoneId" "" -- val.hostedZoneId
        
    --     |> Dict.toList
    ""



{-| <p> Contains the result of a successful invocation of the <code>DescribeEngineDefaultParameters</code> action. </p>
-}
type alias EngineDefaults =
    { dBParameterGroupFamily : Maybe String
    , marker : Maybe String
    , parameters : Maybe (List Parameter)
    }



engineDefaultsDecoder : JD.Decoder EngineDefaults
engineDefaultsDecoder =
    JD.succeed EngineDefaults
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBParameterGroupFamily", "dBParameterGroupFamily"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (JD.list parameterDecoder)
        )
        




engineDefaultsToString : EngineDefaults -> String -- List (String, String)
engineDefaultsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBParameterGroupFamily" "" -- val.dBParameterGroupFamily
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.toList
    ""



{-| <p> This data type is used as a response element in the <code>DescribeEvents</code> action. </p>
-}
type alias Event =
    { sourceIdentifier : Maybe String
    , sourceType : Maybe SourceType
    , message : Maybe String
    , eventCategories : Maybe (List String)
    , date : Maybe Posix
    , sourceArn : Maybe String
    }



eventDecoder : JD.Decoder Event
eventDecoder =
    JD.succeed Event
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceIdentifier", "sourceIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceType", "sourceType"]
            sourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventCategories", "eventCategories"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Date", "date"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceArn", "sourceArn"]
            JD.string
        )
        




eventToString : Event -> String -- List (String, String)
eventToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sourceIdentifier" "" -- val.sourceIdentifier
        
    --     |> Dict.insert
    --         "sourceType" "" -- val.sourceType
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "eventCategories" "" -- val.eventCategories
        
    --     |> Dict.insert
    --         "date" "" -- val.date
        
    --     |> Dict.insert
    --         "sourceArn" "" -- val.sourceArn
        
    --     |> Dict.toList
    ""



{-| <p>Contains the results of a successful invocation of the <code>DescribeEventCategories</code> action.</p>
-}
type alias EventCategoriesMap =
    { sourceType : Maybe String
    , eventCategories : Maybe (List String)
    }



eventCategoriesMapDecoder : JD.Decoder EventCategoriesMap
eventCategoriesMapDecoder =
    JD.succeed EventCategoriesMap
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceType", "sourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventCategories", "eventCategories"]
            (JD.list JD.string)
        )
        




eventCategoriesMapToString : EventCategoriesMap -> String -- List (String, String)
eventCategoriesMapToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sourceType" "" -- val.sourceType
        
    --     |> Dict.insert
    --         "eventCategories" "" -- val.eventCategories
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from eventCategorie
-}
type alias EventCategoriesMessage =
    { eventCategoriesMapList : Maybe (List EventCategoriesMap)
    }



eventCategoriesMessageDecoder : JD.Decoder EventCategoriesMessage
eventCategoriesMessageDecoder =
    JD.succeed EventCategoriesMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventCategoriesMapList", "eventCategoriesMapList"]
            (JD.list eventCategoriesMapDecoder)
        )
        




eventCategoriesMessageToString : EventCategoriesMessage -> String -- List (String, String)
eventCategoriesMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventCategoriesMapList" "" -- val.eventCategoriesMapList
        
    --     |> Dict.toList
    ""



{-| <p>Contains the results of a successful invocation of the <code>DescribeEventSubscriptions</code> action.</p>
-}
type alias EventSubscription =
    { customerAwsId : Maybe String
    , custSubscriptionId : Maybe String
    , snsTopicArn : Maybe String
    , status : Maybe String
    , subscriptionCreationTime : Maybe String
    , sourceType : Maybe String
    , sourceIdsList : Maybe (List String)
    , eventCategoriesList : Maybe (List String)
    , enabled : Maybe Bool
    , eventSubscriptionArn : Maybe String
    }



eventSubscriptionDecoder : JD.Decoder EventSubscription
eventSubscriptionDecoder =
    JD.succeed EventSubscription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomerAwsId", "customerAwsId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustSubscriptionId", "custSubscriptionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SnsTopicArn", "snsTopicArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubscriptionCreationTime", "subscriptionCreationTime"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceType", "sourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceIdsList", "sourceIdsList"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventCategoriesList", "eventCategoriesList"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventSubscriptionArn", "eventSubscriptionArn"]
            JD.string
        )
        




eventSubscriptionToString : EventSubscription -> String -- List (String, String)
eventSubscriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "customerAwsId" "" -- val.customerAwsId
        
    --     |> Dict.insert
    --         "custSubscriptionId" "" -- val.custSubscriptionId
        
    --     |> Dict.insert
    --         "snsTopicArn" "" -- val.snsTopicArn
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "subscriptionCreationTime" "" -- val.subscriptionCreationTime
        
    --     |> Dict.insert
    --         "sourceType" "" -- val.sourceType
        
    --     |> Dict.insert
    --         "sourceIdsList" "" -- val.sourceIdsList
        
    --     |> Dict.insert
    --         "eventCategoriesList" "" -- val.eventCategoriesList
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "eventSubscriptionArn" "" -- val.eventSubscriptionArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from eventSubscription
-}
type alias EventSubscriptionsMessage =
    { marker : Maybe String
    , eventSubscriptionsList : Maybe (List EventSubscription)
    }



eventSubscriptionsMessageDecoder : JD.Decoder EventSubscriptionsMessage
eventSubscriptionsMessageDecoder =
    JD.succeed EventSubscriptionsMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventSubscriptionsList", "eventSubscriptionsList"]
            (JD.list eventSubscriptionDecoder)
        )
        




eventSubscriptionsMessageToString : EventSubscriptionsMessage -> String -- List (String, String)
eventSubscriptionsMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "eventSubscriptionsList" "" -- val.eventSubscriptionsList
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from event
-}
type alias EventsMessage =
    { marker : Maybe String
    , events : Maybe (List Event)
    }



eventsMessageDecoder : JD.Decoder EventsMessage
eventsMessageDecoder =
    JD.succeed EventsMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Events", "events"]
            (JD.list eventDecoder)
        )
        




eventsMessageToString : EventsMessage -> String -- List (String, String)
eventsMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "events" "" -- val.events
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from failoverDBClust
-}
type alias FailoverDBClusterResult =
    { dBCluster : Maybe DBCluster
    }



failoverDBClusterResultDecoder : JD.Decoder FailoverDBClusterResult
failoverDBClusterResultDecoder =
    JD.succeed FailoverDBClusterResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBCluster", "dBCluster"]
            dBClusterDecoder
        )
        




failoverDBClusterResultToString : FailoverDBClusterResult -> String -- List (String, String)
failoverDBClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBCluster" "" -- val.dBCluster
        
    --     |> Dict.toList
    ""



{-| <p>A filter name and value pair that is used to return a more specific list of results from a describe operation. Filters can be used to match a set of resources by specific criteria, such as IDs. The filters supported by a describe operation are documented with the describe operation.</p> <note> <p>Currently, wildcards are not supported in filters.</p> </note> <p>The following actions can be filtered:</p> <ul> <li> <p> <code>DescribeDBClusterBacktracks</code> </p> </li> <li> <p> <code>DescribeDBClusterEndpoints</code> </p> </li> <li> <p> <code>DescribeDBClusters</code> </p> </li> <li> <p> <code>DescribeDBInstances</code> </p> </li> <li> <p> <code>DescribePendingMaintenanceActions</code> </p> </li> </ul>
-}
type alias Filter =
    { name : String
    , values : (List String)
    }



filterDecoder : JD.Decoder Filter
filterDecoder =
    JD.succeed Filter
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Values", "values"]
            (JD.list JD.string)
        )
        




filterToString : Filter -> String -- List (String, String)
filterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| <p>A data type representing an Aurora global database.</p>
-}
type alias GlobalCluster =
    { globalClusterIdentifier : Maybe String
    , globalClusterResourceId : Maybe String
    , globalClusterArn : Maybe String
    , status : Maybe String
    , engine : Maybe String
    , engineVersion : Maybe String
    , databaseName : Maybe String
    , storageEncrypted : Maybe Bool
    , deletionProtection : Maybe Bool
    , globalClusterMembers : Maybe (List GlobalClusterMember)
    }



globalClusterDecoder : JD.Decoder GlobalCluster
globalClusterDecoder =
    JD.succeed GlobalCluster
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GlobalClusterIdentifier", "globalClusterIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GlobalClusterResourceId", "globalClusterResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GlobalClusterArn", "globalClusterArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Engine", "engine"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineVersion", "engineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DatabaseName", "databaseName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageEncrypted", "storageEncrypted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeletionProtection", "deletionProtection"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GlobalClusterMembers", "globalClusterMembers"]
            (JD.list globalClusterMemberDecoder)
        )
        




globalClusterToString : GlobalCluster -> String -- List (String, String)
globalClusterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "globalClusterIdentifier" "" -- val.globalClusterIdentifier
        
    --     |> Dict.insert
    --         "globalClusterResourceId" "" -- val.globalClusterResourceId
        
    --     |> Dict.insert
    --         "globalClusterArn" "" -- val.globalClusterArn
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "engine" "" -- val.engine
        
    --     |> Dict.insert
    --         "engineVersion" "" -- val.engineVersion
        
    --     |> Dict.insert
    --         "databaseName" "" -- val.databaseName
        
    --     |> Dict.insert
    --         "storageEncrypted" "" -- val.storageEncrypted
        
    --     |> Dict.insert
    --         "deletionProtection" "" -- val.deletionProtection
        
    --     |> Dict.insert
    --         "globalClusterMembers" "" -- val.globalClusterMembers
        
    --     |> Dict.toList
    ""



{-| <p> A data structure with information about any primary and secondary clusters associated with an Aurora global database. </p>
-}
type alias GlobalClusterMember =
    { dBClusterArn : Maybe String
    , readers : Maybe (List String)
    , isWriter : Maybe Bool
    }



globalClusterMemberDecoder : JD.Decoder GlobalClusterMember
globalClusterMemberDecoder =
    JD.succeed GlobalClusterMember
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterArn", "dBClusterArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Readers", "readers"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsWriter", "isWriter"]
            JD.bool
        )
        




globalClusterMemberToString : GlobalClusterMember -> String -- List (String, String)
globalClusterMemberToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterArn" "" -- val.dBClusterArn
        
    --     |> Dict.insert
    --         "readers" "" -- val.readers
        
    --     |> Dict.insert
    --         "isWriter" "" -- val.isWriter
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from globalCluster
-}
type alias GlobalClustersMessage =
    { marker : Maybe String
    , globalClusters : Maybe (List GlobalCluster)
    }



globalClustersMessageDecoder : JD.Decoder GlobalClustersMessage
globalClustersMessageDecoder =
    JD.succeed GlobalClustersMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GlobalClusters", "globalClusters"]
            (JD.list globalClusterDecoder)
        )
        




globalClustersMessageToString : GlobalClustersMessage -> String -- List (String, String)
globalClustersMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "globalClusters" "" -- val.globalClusters
        
    --     |> Dict.toList
    ""



{-| <p> This data type is used as a response element in the <code>DescribeDBSecurityGroups</code> action. </p>
-}
type alias IPRange =
    { status : Maybe String
    , cIDRIP : Maybe String
    }



iPRangeDecoder : JD.Decoder IPRange
iPRangeDecoder =
    JD.succeed IPRange
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CIDRIP", "cIDRIP"]
            JD.string
        )
        




iPRangeToString : IPRange -> String -- List (String, String)
iPRangeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "cIDRIP" "" -- val.cIDRIP
        
    --     |> Dict.toList
    ""



{-| <p>The minimum DB engine version required for each corresponding allowed value for an option setting.</p>
-}
type alias MinimumEngineVersionPerAllowedValue =
    { allowedValue : Maybe String
    , minimumEngineVersion : Maybe String
    }



minimumEngineVersionPerAllowedValueDecoder : JD.Decoder MinimumEngineVersionPerAllowedValue
minimumEngineVersionPerAllowedValueDecoder =
    JD.succeed MinimumEngineVersionPerAllowedValue
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowedValue", "allowedValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinimumEngineVersion", "minimumEngineVersion"]
            JD.string
        )
        




minimumEngineVersionPerAllowedValueToString : MinimumEngineVersionPerAllowedValue -> String -- List (String, String)
minimumEngineVersionPerAllowedValueToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "allowedValue" "" -- val.allowedValue
        
    --     |> Dict.insert
    --         "minimumEngineVersion" "" -- val.minimumEngineVersion
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyDBClust
-}
type alias ModifyDBClusterResult =
    { dBCluster : Maybe DBCluster
    }



modifyDBClusterResultDecoder : JD.Decoder ModifyDBClusterResult
modifyDBClusterResultDecoder =
    JD.succeed ModifyDBClusterResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBCluster", "dBCluster"]
            dBClusterDecoder
        )
        




modifyDBClusterResultToString : ModifyDBClusterResult -> String -- List (String, String)
modifyDBClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBCluster" "" -- val.dBCluster
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyDBClusterSnapshotAttribu
-}
type alias ModifyDBClusterSnapshotAttributeResult =
    { dBClusterSnapshotAttributesResult : Maybe DBClusterSnapshotAttributesResult
    }



modifyDBClusterSnapshotAttributeResultDecoder : JD.Decoder ModifyDBClusterSnapshotAttributeResult
modifyDBClusterSnapshotAttributeResultDecoder =
    JD.succeed ModifyDBClusterSnapshotAttributeResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBClusterSnapshotAttributesResult", "dBClusterSnapshotAttributesResult"]
            dBClusterSnapshotAttributesResultDecoder
        )
        




modifyDBClusterSnapshotAttributeResultToString : ModifyDBClusterSnapshotAttributeResult -> String -- List (String, String)
modifyDBClusterSnapshotAttributeResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBClusterSnapshotAttributesResult" "" -- val.dBClusterSnapshotAttributesResult
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyDBInstan
-}
type alias ModifyDBInstanceResult =
    { dBInstance : Maybe DBInstance
    }



modifyDBInstanceResultDecoder : JD.Decoder ModifyDBInstanceResult
modifyDBInstanceResultDecoder =
    JD.succeed ModifyDBInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstance", "dBInstance"]
            dBInstanceDecoder
        )
        




modifyDBInstanceResultToString : ModifyDBInstanceResult -> String -- List (String, String)
modifyDBInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstance" "" -- val.dBInstance
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyDBSnapshotAttribu
-}
type alias ModifyDBSnapshotAttributeResult =
    { dBSnapshotAttributesResult : Maybe DBSnapshotAttributesResult
    }



modifyDBSnapshotAttributeResultDecoder : JD.Decoder ModifyDBSnapshotAttributeResult
modifyDBSnapshotAttributeResultDecoder =
    JD.succeed ModifyDBSnapshotAttributeResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSnapshotAttributesResult", "dBSnapshotAttributesResult"]
            dBSnapshotAttributesResultDecoder
        )
        




modifyDBSnapshotAttributeResultToString : ModifyDBSnapshotAttributeResult -> String -- List (String, String)
modifyDBSnapshotAttributeResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSnapshotAttributesResult" "" -- val.dBSnapshotAttributesResult
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyDBSnapsh
-}
type alias ModifyDBSnapshotResult =
    { dBSnapshot : Maybe DBSnapshot
    }



modifyDBSnapshotResultDecoder : JD.Decoder ModifyDBSnapshotResult
modifyDBSnapshotResultDecoder =
    JD.succeed ModifyDBSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSnapshot", "dBSnapshot"]
            dBSnapshotDecoder
        )
        




modifyDBSnapshotResultToString : ModifyDBSnapshotResult -> String -- List (String, String)
modifyDBSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSnapshot" "" -- val.dBSnapshot
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyDBSubnetGro
-}
type alias ModifyDBSubnetGroupResult =
    { dBSubnetGroup : Maybe DBSubnetGroup
    }



modifyDBSubnetGroupResultDecoder : JD.Decoder ModifyDBSubnetGroupResult
modifyDBSubnetGroupResultDecoder =
    JD.succeed ModifyDBSubnetGroupResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSubnetGroup", "dBSubnetGroup"]
            dBSubnetGroupDecoder
        )
        




modifyDBSubnetGroupResultToString : ModifyDBSubnetGroupResult -> String -- List (String, String)
modifyDBSubnetGroupResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSubnetGroup" "" -- val.dBSubnetGroup
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyEventSubscripti
-}
type alias ModifyEventSubscriptionResult =
    { eventSubscription : Maybe EventSubscription
    }



modifyEventSubscriptionResultDecoder : JD.Decoder ModifyEventSubscriptionResult
modifyEventSubscriptionResultDecoder =
    JD.succeed ModifyEventSubscriptionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventSubscription", "eventSubscription"]
            eventSubscriptionDecoder
        )
        




modifyEventSubscriptionResultToString : ModifyEventSubscriptionResult -> String -- List (String, String)
modifyEventSubscriptionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventSubscription" "" -- val.eventSubscription
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyGlobalClust
-}
type alias ModifyGlobalClusterResult =
    { globalCluster : Maybe GlobalCluster
    }



modifyGlobalClusterResultDecoder : JD.Decoder ModifyGlobalClusterResult
modifyGlobalClusterResultDecoder =
    JD.succeed ModifyGlobalClusterResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GlobalCluster", "globalCluster"]
            globalClusterDecoder
        )
        




modifyGlobalClusterResultToString : ModifyGlobalClusterResult -> String -- List (String, String)
modifyGlobalClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "globalCluster" "" -- val.globalCluster
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyOptionGro
-}
type alias ModifyOptionGroupResult =
    { optionGroup : Maybe OptionGroup
    }



modifyOptionGroupResultDecoder : JD.Decoder ModifyOptionGroupResult
modifyOptionGroupResultDecoder =
    JD.succeed ModifyOptionGroupResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionGroup", "optionGroup"]
            optionGroupDecoder
        )
        




modifyOptionGroupResultToString : ModifyOptionGroupResult -> String -- List (String, String)
modifyOptionGroupResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "optionGroup" "" -- val.optionGroup
        
    --     |> Dict.toList
    ""



{-| <p>Option details.</p>
-}
type alias Option =
    { optionName : Maybe String
    , optionDescription : Maybe String
    , persistent : Maybe Bool
    , permanent : Maybe Bool
    , port_ : Maybe Int
    , optionVersion : Maybe String
    , optionSettings : Maybe (List OptionSetting)
    , dBSecurityGroupMemberships : Maybe (List DBSecurityGroupMembership)
    , vpcSecurityGroupMemberships : Maybe (List VpcSecurityGroupMembership)
    }



optionDecoder : JD.Decoder Option
optionDecoder =
    JD.succeed Option
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionName", "optionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionDescription", "optionDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Persistent", "persistent"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Permanent", "permanent"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionVersion", "optionVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionSettings", "optionSettings"]
            (JD.list optionSettingDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSecurityGroupMemberships", "dBSecurityGroupMemberships"]
            (JD.list dBSecurityGroupMembershipDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcSecurityGroupMemberships", "vpcSecurityGroupMemberships"]
            (JD.list vpcSecurityGroupMembershipDecoder)
        )
        




optionToString : Option -> String -- List (String, String)
optionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "optionName" "" -- val.optionName
        
    --     |> Dict.insert
    --         "optionDescription" "" -- val.optionDescription
        
    --     |> Dict.insert
    --         "persistent" "" -- val.persistent
        
    --     |> Dict.insert
    --         "permanent" "" -- val.permanent
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "optionVersion" "" -- val.optionVersion
        
    --     |> Dict.insert
    --         "optionSettings" "" -- val.optionSettings
        
    --     |> Dict.insert
    --         "dBSecurityGroupMemberships" "" -- val.dBSecurityGroupMemberships
        
    --     |> Dict.insert
    --         "vpcSecurityGroupMemberships" "" -- val.vpcSecurityGroupMemberships
        
    --     |> Dict.toList
    ""



{-| <p>A list of all available options</p>
-}
type alias OptionConfiguration =
    { optionName : String
    , port_ : Maybe Int
    , optionVersion : Maybe String
    , dBSecurityGroupMemberships : Maybe (List String)
    , vpcSecurityGroupMemberships : Maybe (List String)
    , optionSettings : Maybe (List OptionSetting)
    }



optionConfigurationDecoder : JD.Decoder OptionConfiguration
optionConfigurationDecoder =
    JD.succeed OptionConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["OptionName", "optionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionVersion", "optionVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSecurityGroupMemberships", "dBSecurityGroupMemberships"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcSecurityGroupMemberships", "vpcSecurityGroupMemberships"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionSettings", "optionSettings"]
            (JD.list optionSettingDecoder)
        )
        




optionConfigurationToString : OptionConfiguration -> String -- List (String, String)
optionConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "optionName" "" -- val.optionName
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "optionVersion" "" -- val.optionVersion
        
    --     |> Dict.insert
    --         "dBSecurityGroupMemberships" "" -- val.dBSecurityGroupMemberships
        
    --     |> Dict.insert
    --         "vpcSecurityGroupMemberships" "" -- val.vpcSecurityGroupMemberships
        
    --     |> Dict.insert
    --         "optionSettings" "" -- val.optionSettings
        
    --     |> Dict.toList
    ""



{-| <p/>
-}
type alias OptionGroup =
    { optionGroupName : Maybe String
    , optionGroupDescription : Maybe String
    , engineName : Maybe String
    , majorEngineVersion : Maybe String
    , options : Maybe (List Option)
    , allowsVpcAndNonVpcInstanceMemberships : Maybe Bool
    , vpcId : Maybe String
    , optionGroupArn : Maybe String
    }



optionGroupDecoder : JD.Decoder OptionGroup
optionGroupDecoder =
    JD.succeed OptionGroup
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionGroupName", "optionGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionGroupDescription", "optionGroupDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineName", "engineName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MajorEngineVersion", "majorEngineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Options", "options"]
            (JD.list optionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowsVpcAndNonVpcInstanceMemberships", "allowsVpcAndNonVpcInstanceMemberships"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcId", "vpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionGroupArn", "optionGroupArn"]
            JD.string
        )
        




optionGroupToString : OptionGroup -> String -- List (String, String)
optionGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "optionGroupName" "" -- val.optionGroupName
        
    --     |> Dict.insert
    --         "optionGroupDescription" "" -- val.optionGroupDescription
        
    --     |> Dict.insert
    --         "engineName" "" -- val.engineName
        
    --     |> Dict.insert
    --         "majorEngineVersion" "" -- val.majorEngineVersion
        
    --     |> Dict.insert
    --         "options" "" -- val.options
        
    --     |> Dict.insert
    --         "allowsVpcAndNonVpcInstanceMemberships" "" -- val.allowsVpcAndNonVpcInstanceMemberships
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "optionGroupArn" "" -- val.optionGroupArn
        
    --     |> Dict.toList
    ""



{-| <p>Provides information on the option groups the DB instance is a member of.</p>
-}
type alias OptionGroupMembership =
    { optionGroupName : Maybe String
    , status : Maybe String
    }



optionGroupMembershipDecoder : JD.Decoder OptionGroupMembership
optionGroupMembershipDecoder =
    JD.succeed OptionGroupMembership
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionGroupName", "optionGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        




optionGroupMembershipToString : OptionGroupMembership -> String -- List (String, String)
optionGroupMembershipToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "optionGroupName" "" -- val.optionGroupName
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| <p>Available option.</p>
-}
type alias OptionGroupOption =
    { name : Maybe String
    , description : Maybe String
    , engineName : Maybe String
    , majorEngineVersion : Maybe String
    , minimumRequiredMinorEngineVersion : Maybe String
    , portRequired : Maybe Bool
    , defaultPort : Maybe Int
    , optionsDependedOn : Maybe (List String)
    , optionsConflictsWith : Maybe (List String)
    , persistent : Maybe Bool
    , permanent : Maybe Bool
    , requiresAutoMinorEngineVersionUpgrade : Maybe Bool
    , vpcOnly : Maybe Bool
    , supportsOptionVersionDowngrade : Maybe Bool
    , optionGroupOptionSettings : Maybe (List OptionGroupOptionSetting)
    , optionGroupOptionVersions : Maybe (List OptionVersion)
    }



optionGroupOptionDecoder : JD.Decoder OptionGroupOption
optionGroupOptionDecoder =
    JD.succeed OptionGroupOption
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineName", "engineName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MajorEngineVersion", "majorEngineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinimumRequiredMinorEngineVersion", "minimumRequiredMinorEngineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PortRequired", "portRequired"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultPort", "defaultPort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionsDependedOn", "optionsDependedOn"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionsConflictsWith", "optionsConflictsWith"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Persistent", "persistent"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Permanent", "permanent"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RequiresAutoMinorEngineVersionUpgrade", "requiresAutoMinorEngineVersionUpgrade"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcOnly", "vpcOnly"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportsOptionVersionDowngrade", "supportsOptionVersionDowngrade"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionGroupOptionSettings", "optionGroupOptionSettings"]
            (JD.list optionGroupOptionSettingDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionGroupOptionVersions", "optionGroupOptionVersions"]
            (JD.list optionVersionDecoder)
        )
        




optionGroupOptionToString : OptionGroupOption -> String -- List (String, String)
optionGroupOptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "engineName" "" -- val.engineName
        
    --     |> Dict.insert
    --         "majorEngineVersion" "" -- val.majorEngineVersion
        
    --     |> Dict.insert
    --         "minimumRequiredMinorEngineVersion" "" -- val.minimumRequiredMinorEngineVersion
        
    --     |> Dict.insert
    --         "portRequired" "" -- val.portRequired
        
    --     |> Dict.insert
    --         "defaultPort" "" -- val.defaultPort
        
    --     |> Dict.insert
    --         "optionsDependedOn" "" -- val.optionsDependedOn
        
    --     |> Dict.insert
    --         "optionsConflictsWith" "" -- val.optionsConflictsWith
        
    --     |> Dict.insert
    --         "persistent" "" -- val.persistent
        
    --     |> Dict.insert
    --         "permanent" "" -- val.permanent
        
    --     |> Dict.insert
    --         "requiresAutoMinorEngineVersionUpgrade" "" -- val.requiresAutoMinorEngineVersionUpgrade
        
    --     |> Dict.insert
    --         "vpcOnly" "" -- val.vpcOnly
        
    --     |> Dict.insert
    --         "supportsOptionVersionDowngrade" "" -- val.supportsOptionVersionDowngrade
        
    --     |> Dict.insert
    --         "optionGroupOptionSettings" "" -- val.optionGroupOptionSettings
        
    --     |> Dict.insert
    --         "optionGroupOptionVersions" "" -- val.optionGroupOptionVersions
        
    --     |> Dict.toList
    ""



{-| <p>Option group option settings are used to display settings available for each option with their default values and other information. These values are used with the DescribeOptionGroupOptions action.</p>
-}
type alias OptionGroupOptionSetting =
    { settingName : Maybe String
    , settingDescription : Maybe String
    , defaultValue : Maybe String
    , applyType : Maybe String
    , allowedValues : Maybe String
    , isModifiable : Maybe Bool
    , isRequired : Maybe Bool
    , minimumEngineVersionPerAllowedValue : Maybe (List MinimumEngineVersionPerAllowedValue)
    }



optionGroupOptionSettingDecoder : JD.Decoder OptionGroupOptionSetting
optionGroupOptionSettingDecoder =
    JD.succeed OptionGroupOptionSetting
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SettingName", "settingName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SettingDescription", "settingDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplyType", "applyType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowedValues", "allowedValues"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsModifiable", "isModifiable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsRequired", "isRequired"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinimumEngineVersionPerAllowedValue", "minimumEngineVersionPerAllowedValue"]
            (JD.list minimumEngineVersionPerAllowedValueDecoder)
        )
        




optionGroupOptionSettingToString : OptionGroupOptionSetting -> String -- List (String, String)
optionGroupOptionSettingToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "settingName" "" -- val.settingName
        
    --     |> Dict.insert
    --         "settingDescription" "" -- val.settingDescription
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "applyType" "" -- val.applyType
        
    --     |> Dict.insert
    --         "allowedValues" "" -- val.allowedValues
        
    --     |> Dict.insert
    --         "isModifiable" "" -- val.isModifiable
        
    --     |> Dict.insert
    --         "isRequired" "" -- val.isRequired
        
    --     |> Dict.insert
    --         "minimumEngineVersionPerAllowedValue" "" -- val.minimumEngineVersionPerAllowedValue
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from optionGroupOption
-}
type alias OptionGroupOptionsMessage =
    { optionGroupOptions : Maybe (List OptionGroupOption)
    , marker : Maybe String
    }



optionGroupOptionsMessageDecoder : JD.Decoder OptionGroupOptionsMessage
optionGroupOptionsMessageDecoder =
    JD.succeed OptionGroupOptionsMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionGroupOptions", "optionGroupOptions"]
            (JD.list optionGroupOptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        




optionGroupOptionsMessageToString : OptionGroupOptionsMessage -> String -- List (String, String)
optionGroupOptionsMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "optionGroupOptions" "" -- val.optionGroupOptions
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from opti
-}
type alias OptionGroups =
    { optionGroupsList : Maybe (List OptionGroup)
    , marker : Maybe String
    }



optionGroupsDecoder : JD.Decoder OptionGroups
optionGroupsDecoder =
    JD.succeed OptionGroups
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionGroupsList", "optionGroupsList"]
            (JD.list optionGroupDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        




optionGroupsToString : OptionGroups -> String -- List (String, String)
optionGroupsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "optionGroupsList" "" -- val.optionGroupsList
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.toList
    ""



{-| <p>Option settings are the actual settings being applied or configured for that option. It is used when you modify an option group or describe option groups. For example, the NATIVE_NETWORK_ENCRYPTION option has a setting called SQLNET.ENCRYPTION_SERVER that can have several different values.</p>
-}
type alias OptionSetting =
    { name : Maybe String
    , value : Maybe String
    , defaultValue : Maybe String
    , description : Maybe String
    , applyType : Maybe String
    , dataType : Maybe String
    , allowedValues : Maybe String
    , isModifiable : Maybe Bool
    , isCollection : Maybe Bool
    }



optionSettingDecoder : JD.Decoder OptionSetting
optionSettingDecoder =
    JD.succeed OptionSetting
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplyType", "applyType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataType", "dataType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowedValues", "allowedValues"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsModifiable", "isModifiable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsCollection", "isCollection"]
            JD.bool
        )
        




optionSettingToString : OptionSetting -> String -- List (String, String)
optionSettingToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "applyType" "" -- val.applyType
        
    --     |> Dict.insert
    --         "dataType" "" -- val.dataType
        
    --     |> Dict.insert
    --         "allowedValues" "" -- val.allowedValues
        
    --     |> Dict.insert
    --         "isModifiable" "" -- val.isModifiable
        
    --     |> Dict.insert
    --         "isCollection" "" -- val.isCollection
        
    --     |> Dict.toList
    ""



{-| <p>The version for an option. Option group option versions are returned by the <code>DescribeOptionGroupOptions</code> action.</p>
-}
type alias OptionVersion =
    { version : Maybe String
    , isDefault : Maybe Bool
    }



optionVersionDecoder : JD.Decoder OptionVersion
optionVersionDecoder =
    JD.succeed OptionVersion
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsDefault", "isDefault"]
            JD.bool
        )
        




optionVersionToString : OptionVersion -> String -- List (String, String)
optionVersionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "isDefault" "" -- val.isDefault
        
    --     |> Dict.toList
    ""



{-| <p>Contains a list of available options for a DB instance.</p> <p> This data type is used as a response element in the <code>DescribeOrderableDBInstanceOptions</code> action. </p>
-}
type alias OrderableDBInstanceOption =
    { engine : Maybe String
    , engineVersion : Maybe String
    , dBInstanceClass : Maybe String
    , licenseModel : Maybe String
    , availabilityZones : Maybe (List AvailabilityZone)
    , multiAZCapable : Maybe Bool
    , readReplicaCapable : Maybe Bool
    , vpc : Maybe Bool
    , supportsStorageEncryption : Maybe Bool
    , storageType : Maybe String
    , supportsIops : Maybe Bool
    , supportsEnhancedMonitoring : Maybe Bool
    , supportsIAMDatabaseAuthentication : Maybe Bool
    , supportsPerformanceInsights : Maybe Bool
    , minStorageSize : Maybe Int
    , maxStorageSize : Maybe Int
    , minIopsPerDbInstance : Maybe Int
    , maxIopsPerDbInstance : Maybe Int
    , minIopsPerGib : Maybe Float
    , maxIopsPerGib : Maybe Float
    , availableProcessorFeatures : Maybe (List AvailableProcessorFeature)
    , supportedEngineModes : Maybe (List String)
    , supportsStorageAutoscaling : Maybe Bool
    }



orderableDBInstanceOptionDecoder : JD.Decoder OrderableDBInstanceOption
orderableDBInstanceOptionDecoder =
    JD.succeed OrderableDBInstanceOption
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Engine", "engine"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineVersion", "engineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceClass", "dBInstanceClass"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LicenseModel", "licenseModel"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZones", "availabilityZones"]
            (JD.list availabilityZoneDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MultiAZCapable", "multiAZCapable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReadReplicaCapable", "readReplicaCapable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Vpc", "vpc"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportsStorageEncryption", "supportsStorageEncryption"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageType", "storageType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportsIops", "supportsIops"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportsEnhancedMonitoring", "supportsEnhancedMonitoring"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportsIAMDatabaseAuthentication", "supportsIAMDatabaseAuthentication"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportsPerformanceInsights", "supportsPerformanceInsights"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinStorageSize", "minStorageSize"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxStorageSize", "maxStorageSize"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinIopsPerDbInstance", "minIopsPerDbInstance"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxIopsPerDbInstance", "maxIopsPerDbInstance"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinIopsPerGib", "minIopsPerGib"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxIopsPerGib", "maxIopsPerGib"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailableProcessorFeatures", "availableProcessorFeatures"]
            (JD.list availableProcessorFeatureDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportedEngineModes", "supportedEngineModes"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportsStorageAutoscaling", "supportsStorageAutoscaling"]
            JD.bool
        )
        




orderableDBInstanceOptionToString : OrderableDBInstanceOption -> String -- List (String, String)
orderableDBInstanceOptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "engine" "" -- val.engine
        
    --     |> Dict.insert
    --         "engineVersion" "" -- val.engineVersion
        
    --     |> Dict.insert
    --         "dBInstanceClass" "" -- val.dBInstanceClass
        
    --     |> Dict.insert
    --         "licenseModel" "" -- val.licenseModel
        
    --     |> Dict.insert
    --         "availabilityZones" "" -- val.availabilityZones
        
    --     |> Dict.insert
    --         "multiAZCapable" "" -- val.multiAZCapable
        
    --     |> Dict.insert
    --         "readReplicaCapable" "" -- val.readReplicaCapable
        
    --     |> Dict.insert
    --         "vpc" "" -- val.vpc
        
    --     |> Dict.insert
    --         "supportsStorageEncryption" "" -- val.supportsStorageEncryption
        
    --     |> Dict.insert
    --         "storageType" "" -- val.storageType
        
    --     |> Dict.insert
    --         "supportsIops" "" -- val.supportsIops
        
    --     |> Dict.insert
    --         "supportsEnhancedMonitoring" "" -- val.supportsEnhancedMonitoring
        
    --     |> Dict.insert
    --         "supportsIAMDatabaseAuthentication" "" -- val.supportsIAMDatabaseAuthentication
        
    --     |> Dict.insert
    --         "supportsPerformanceInsights" "" -- val.supportsPerformanceInsights
        
    --     |> Dict.insert
    --         "minStorageSize" "" -- val.minStorageSize
        
    --     |> Dict.insert
    --         "maxStorageSize" "" -- val.maxStorageSize
        
    --     |> Dict.insert
    --         "minIopsPerDbInstance" "" -- val.minIopsPerDbInstance
        
    --     |> Dict.insert
    --         "maxIopsPerDbInstance" "" -- val.maxIopsPerDbInstance
        
    --     |> Dict.insert
    --         "minIopsPerGib" "" -- val.minIopsPerGib
        
    --     |> Dict.insert
    --         "maxIopsPerGib" "" -- val.maxIopsPerGib
        
    --     |> Dict.insert
    --         "availableProcessorFeatures" "" -- val.availableProcessorFeatures
        
    --     |> Dict.insert
    --         "supportedEngineModes" "" -- val.supportedEngineModes
        
    --     |> Dict.insert
    --         "supportsStorageAutoscaling" "" -- val.supportsStorageAutoscaling
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from orderableDBInstanceOption
-}
type alias OrderableDBInstanceOptionsMessage =
    { orderableDBInstanceOptions : Maybe (List OrderableDBInstanceOption)
    , marker : Maybe String
    }



orderableDBInstanceOptionsMessageDecoder : JD.Decoder OrderableDBInstanceOptionsMessage
orderableDBInstanceOptionsMessageDecoder =
    JD.succeed OrderableDBInstanceOptionsMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OrderableDBInstanceOptions", "orderableDBInstanceOptions"]
            (JD.list orderableDBInstanceOptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        




orderableDBInstanceOptionsMessageToString : OrderableDBInstanceOptionsMessage -> String -- List (String, String)
orderableDBInstanceOptionsMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "orderableDBInstanceOptions" "" -- val.orderableDBInstanceOptions
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.toList
    ""



{-| <p> This data type is used as a request parameter in the <code>ModifyDBParameterGroup</code> and <code>ResetDBParameterGroup</code> actions. </p> <p>This data type is used as a response element in the <code>DescribeEngineDefaultParameters</code> and <code>DescribeDBParameters</code> actions.</p>
-}
type alias Parameter =
    { parameterName : Maybe String
    , parameterValue : Maybe String
    , description : Maybe String
    , source : Maybe String
    , applyType : Maybe String
    , dataType : Maybe String
    , allowedValues : Maybe String
    , isModifiable : Maybe Bool
    , minimumEngineVersion : Maybe String
    , applyMethod : Maybe ApplyMethod
    , supportedEngineModes : Maybe (List String)
    }



parameterDecoder : JD.Decoder Parameter
parameterDecoder =
    JD.succeed Parameter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParameterName", "parameterName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParameterValue", "parameterValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Source", "source"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplyType", "applyType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataType", "dataType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowedValues", "allowedValues"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsModifiable", "isModifiable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinimumEngineVersion", "minimumEngineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplyMethod", "applyMethod"]
            applyMethodDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportedEngineModes", "supportedEngineModes"]
            (JD.list JD.string)
        )
        




parameterToString : Parameter -> String -- List (String, String)
parameterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "parameterName" "" -- val.parameterName
        
    --     |> Dict.insert
    --         "parameterValue" "" -- val.parameterValue
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "applyType" "" -- val.applyType
        
    --     |> Dict.insert
    --         "dataType" "" -- val.dataType
        
    --     |> Dict.insert
    --         "allowedValues" "" -- val.allowedValues
        
    --     |> Dict.insert
    --         "isModifiable" "" -- val.isModifiable
        
    --     |> Dict.insert
    --         "minimumEngineVersion" "" -- val.minimumEngineVersion
        
    --     |> Dict.insert
    --         "applyMethod" "" -- val.applyMethod
        
    --     |> Dict.insert
    --         "supportedEngineModes" "" -- val.supportedEngineModes
        
    --     |> Dict.toList
    ""



{-| <p>A list of the log types whose configuration is still pending. In other words, these log types are in the process of being activated or deactivated.</p>
-}
type alias PendingCloudwatchLogsExports =
    { logTypesToEnable : Maybe (List String)
    , logTypesToDisable : Maybe (List String)
    }



pendingCloudwatchLogsExportsDecoder : JD.Decoder PendingCloudwatchLogsExports
pendingCloudwatchLogsExportsDecoder =
    JD.succeed PendingCloudwatchLogsExports
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogTypesToEnable", "logTypesToEnable"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogTypesToDisable", "logTypesToDisable"]
            (JD.list JD.string)
        )
        




pendingCloudwatchLogsExportsToString : PendingCloudwatchLogsExports -> String -- List (String, String)
pendingCloudwatchLogsExportsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logTypesToEnable" "" -- val.logTypesToEnable
        
    --     |> Dict.insert
    --         "logTypesToDisable" "" -- val.logTypesToDisable
        
    --     |> Dict.toList
    ""



{-| <p>Provides information about a pending maintenance action for a resource.</p>
-}
type alias PendingMaintenanceAction =
    { action : Maybe String
    , autoAppliedAfterDate : Maybe Posix
    , forcedApplyDate : Maybe Posix
    , optInStatus : Maybe String
    , currentApplyDate : Maybe Posix
    , description : Maybe String
    }



pendingMaintenanceActionDecoder : JD.Decoder PendingMaintenanceAction
pendingMaintenanceActionDecoder =
    JD.succeed PendingMaintenanceAction
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Action", "action"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoAppliedAfterDate", "autoAppliedAfterDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ForcedApplyDate", "forcedApplyDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptInStatus", "optInStatus"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CurrentApplyDate", "currentApplyDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        




pendingMaintenanceActionToString : PendingMaintenanceAction -> String -- List (String, String)
pendingMaintenanceActionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "autoAppliedAfterDate" "" -- val.autoAppliedAfterDate
        
    --     |> Dict.insert
    --         "forcedApplyDate" "" -- val.forcedApplyDate
        
    --     |> Dict.insert
    --         "optInStatus" "" -- val.optInStatus
        
    --     |> Dict.insert
    --         "currentApplyDate" "" -- val.currentApplyDate
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from pendingMaintenanceAction
-}
type alias PendingMaintenanceActionsMessage =
    { pendingMaintenanceActions : Maybe (List ResourcePendingMaintenanceActions)
    , marker : Maybe String
    }



pendingMaintenanceActionsMessageDecoder : JD.Decoder PendingMaintenanceActionsMessage
pendingMaintenanceActionsMessageDecoder =
    JD.succeed PendingMaintenanceActionsMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PendingMaintenanceActions", "pendingMaintenanceActions"]
            (JD.list resourcePendingMaintenanceActionsDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        




pendingMaintenanceActionsMessageToString : PendingMaintenanceActionsMessage -> String -- List (String, String)
pendingMaintenanceActionsMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pendingMaintenanceActions" "" -- val.pendingMaintenanceActions
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.toList
    ""



{-| <p> This data type is used as a response element in the <code>ModifyDBInstance</code> action. </p>
-}
type alias PendingModifiedValues =
    { dBInstanceClass : Maybe String
    , allocatedStorage : Maybe Int
    , masterUserPassword : Maybe String
    , port_ : Maybe Int
    , backupRetentionPeriod : Maybe Int
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , licenseModel : Maybe String
    , iops : Maybe Int
    , dBInstanceIdentifier : Maybe String
    , storageType : Maybe String
    , cACertificateIdentifier : Maybe String
    , dBSubnetGroupName : Maybe String
    , pendingCloudwatchLogsExports : Maybe PendingCloudwatchLogsExports
    , processorFeatures : Maybe (List ProcessorFeature)
    }



pendingModifiedValuesDecoder : JD.Decoder PendingModifiedValues
pendingModifiedValuesDecoder =
    JD.succeed PendingModifiedValues
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceClass", "dBInstanceClass"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllocatedStorage", "allocatedStorage"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MasterUserPassword", "masterUserPassword"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BackupRetentionPeriod", "backupRetentionPeriod"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MultiAZ", "multiAZ"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineVersion", "engineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LicenseModel", "licenseModel"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Iops", "iops"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceIdentifier", "dBInstanceIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageType", "storageType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CACertificateIdentifier", "cACertificateIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSubnetGroupName", "dBSubnetGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PendingCloudwatchLogsExports", "pendingCloudwatchLogsExports"]
            pendingCloudwatchLogsExportsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessorFeatures", "processorFeatures"]
            (JD.list processorFeatureDecoder)
        )
        




pendingModifiedValuesToString : PendingModifiedValues -> String -- List (String, String)
pendingModifiedValuesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstanceClass" "" -- val.dBInstanceClass
        
    --     |> Dict.insert
    --         "allocatedStorage" "" -- val.allocatedStorage
        
    --     |> Dict.insert
    --         "masterUserPassword" "" -- val.masterUserPassword
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "backupRetentionPeriod" "" -- val.backupRetentionPeriod
        
    --     |> Dict.insert
    --         "multiAZ" "" -- val.multiAZ
        
    --     |> Dict.insert
    --         "engineVersion" "" -- val.engineVersion
        
    --     |> Dict.insert
    --         "licenseModel" "" -- val.licenseModel
        
    --     |> Dict.insert
    --         "iops" "" -- val.iops
        
    --     |> Dict.insert
    --         "dBInstanceIdentifier" "" -- val.dBInstanceIdentifier
        
    --     |> Dict.insert
    --         "storageType" "" -- val.storageType
        
    --     |> Dict.insert
    --         "cACertificateIdentifier" "" -- val.cACertificateIdentifier
        
    --     |> Dict.insert
    --         "dBSubnetGroupName" "" -- val.dBSubnetGroupName
        
    --     |> Dict.insert
    --         "pendingCloudwatchLogsExports" "" -- val.pendingCloudwatchLogsExports
        
    --     |> Dict.insert
    --         "processorFeatures" "" -- val.processorFeatures
        
    --     |> Dict.toList
    ""



{-| <p>Contains the processor features of a DB instance class.</p> <p>To specify the number of CPU cores, use the <code>coreCount</code> feature name for the <code>Name</code> parameter. To specify the number of threads per core, use the <code>threadsPerCore</code> feature name for the <code>Name</code> parameter.</p> <p>You can set the processor features of the DB instance class for a DB instance when you call one of the following actions:</p> <ul> <li> <p> <code>CreateDBInstance</code> </p> </li> <li> <p> <code>ModifyDBInstance</code> </p> </li> <li> <p> <code>RestoreDBInstanceFromDBSnapshot</code> </p> </li> <li> <p> <code>RestoreDBInstanceFromS3</code> </p> </li> <li> <p> <code>RestoreDBInstanceToPointInTime</code> </p> </li> </ul> <p>You can view the valid processor values for a particular instance class by calling the <code>DescribeOrderableDBInstanceOptions</code> action and specifying the instance class for the <code>DBInstanceClass</code> parameter.</p> <p>In addition, you can use the following actions for DB instance class processor information:</p> <ul> <li> <p> <code>DescribeDBInstances</code> </p> </li> <li> <p> <code>DescribeDBSnapshots</code> </p> </li> <li> <p> <code>DescribeValidDBInstanceModifications</code> </p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#USER_ConfigureProcessor">Configuring the Processor of the DB Instance Class</a> in the <i>Amazon RDS User Guide. </i> </p>
-}
type alias ProcessorFeature =
    { name : Maybe String
    , value : Maybe String
    }



processorFeatureDecoder : JD.Decoder ProcessorFeature
processorFeatureDecoder =
    JD.succeed ProcessorFeature
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




processorFeatureToString : ProcessorFeature -> String -- List (String, String)
processorFeatureToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from promoteReadReplicaDBClust
-}
type alias PromoteReadReplicaDBClusterResult =
    { dBCluster : Maybe DBCluster
    }



promoteReadReplicaDBClusterResultDecoder : JD.Decoder PromoteReadReplicaDBClusterResult
promoteReadReplicaDBClusterResultDecoder =
    JD.succeed PromoteReadReplicaDBClusterResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBCluster", "dBCluster"]
            dBClusterDecoder
        )
        




promoteReadReplicaDBClusterResultToString : PromoteReadReplicaDBClusterResult -> String -- List (String, String)
promoteReadReplicaDBClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBCluster" "" -- val.dBCluster
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from promoteReadRepli
-}
type alias PromoteReadReplicaResult =
    { dBInstance : Maybe DBInstance
    }



promoteReadReplicaResultDecoder : JD.Decoder PromoteReadReplicaResult
promoteReadReplicaResultDecoder =
    JD.succeed PromoteReadReplicaResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstance", "dBInstance"]
            dBInstanceDecoder
        )
        




promoteReadReplicaResultToString : PromoteReadReplicaResult -> String -- List (String, String)
promoteReadReplicaResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstance" "" -- val.dBInstance
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from purchaseReservedDBInstancesOfferi
-}
type alias PurchaseReservedDBInstancesOfferingResult =
    { reservedDBInstance : Maybe ReservedDBInstance
    }



purchaseReservedDBInstancesOfferingResultDecoder : JD.Decoder PurchaseReservedDBInstancesOfferingResult
purchaseReservedDBInstancesOfferingResultDecoder =
    JD.succeed PurchaseReservedDBInstancesOfferingResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReservedDBInstance", "reservedDBInstance"]
            reservedDBInstanceDecoder
        )
        




purchaseReservedDBInstancesOfferingResultToString : PurchaseReservedDBInstancesOfferingResult -> String -- List (String, String)
purchaseReservedDBInstancesOfferingResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "reservedDBInstance" "" -- val.reservedDBInstance
        
    --     |> Dict.toList
    ""



{-| <p>A range of integer values.</p>
-}
type alias Range =
    { from : Maybe Int
    , to : Maybe Int
    , step : Maybe Int
    }



rangeDecoder : JD.Decoder Range
rangeDecoder =
    JD.succeed Range
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["From", "from"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["To", "to"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Step", "step"]
            JD.int
        )
        




rangeToString : Range -> String -- List (String, String)
rangeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "from" "" -- val.from
        
    --     |> Dict.insert
    --         "to" "" -- val.to
        
    --     |> Dict.insert
    --         "step" "" -- val.step
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from rebootDBInstan
-}
type alias RebootDBInstanceResult =
    { dBInstance : Maybe DBInstance
    }



rebootDBInstanceResultDecoder : JD.Decoder RebootDBInstanceResult
rebootDBInstanceResultDecoder =
    JD.succeed RebootDBInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstance", "dBInstance"]
            dBInstanceDecoder
        )
        




rebootDBInstanceResultToString : RebootDBInstanceResult -> String -- List (String, String)
rebootDBInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstance" "" -- val.dBInstance
        
    --     |> Dict.toList
    ""



{-| <p> This data type is used as a response element in the <code>DescribeReservedDBInstances</code> and <code>DescribeReservedDBInstancesOfferings</code> actions. </p>
-}
type alias RecurringCharge =
    { recurringChargeAmount : Maybe Float
    , recurringChargeFrequency : Maybe String
    }



recurringChargeDecoder : JD.Decoder RecurringCharge
recurringChargeDecoder =
    JD.succeed RecurringCharge
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecurringChargeAmount", "recurringChargeAmount"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecurringChargeFrequency", "recurringChargeFrequency"]
            JD.string
        )
        




recurringChargeToString : RecurringCharge -> String -- List (String, String)
recurringChargeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recurringChargeAmount" "" -- val.recurringChargeAmount
        
    --     |> Dict.insert
    --         "recurringChargeFrequency" "" -- val.recurringChargeFrequency
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from removeFromGlobalClust
-}
type alias RemoveFromGlobalClusterResult =
    { globalCluster : Maybe GlobalCluster
    }



removeFromGlobalClusterResultDecoder : JD.Decoder RemoveFromGlobalClusterResult
removeFromGlobalClusterResultDecoder =
    JD.succeed RemoveFromGlobalClusterResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GlobalCluster", "globalCluster"]
            globalClusterDecoder
        )
        




removeFromGlobalClusterResultToString : RemoveFromGlobalClusterResult -> String -- List (String, String)
removeFromGlobalClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "globalCluster" "" -- val.globalCluster
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from removeSourceIdentifierFromSubscripti
-}
type alias RemoveSourceIdentifierFromSubscriptionResult =
    { eventSubscription : Maybe EventSubscription
    }



removeSourceIdentifierFromSubscriptionResultDecoder : JD.Decoder RemoveSourceIdentifierFromSubscriptionResult
removeSourceIdentifierFromSubscriptionResultDecoder =
    JD.succeed RemoveSourceIdentifierFromSubscriptionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventSubscription", "eventSubscription"]
            eventSubscriptionDecoder
        )
        




removeSourceIdentifierFromSubscriptionResultToString : RemoveSourceIdentifierFromSubscriptionResult -> String -- List (String, String)
removeSourceIdentifierFromSubscriptionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventSubscription" "" -- val.eventSubscription
        
    --     |> Dict.toList
    ""



{-| <p> This data type is used as a response element in the <code>DescribeReservedDBInstances</code> and <code>PurchaseReservedDBInstancesOffering</code> actions. </p>
-}
type alias ReservedDBInstance =
    { reservedDBInstanceId : Maybe String
    , reservedDBInstancesOfferingId : Maybe String
    , dBInstanceClass : Maybe String
    , startTime : Maybe Posix
    , duration : Maybe Int
    , fixedPrice : Maybe Float
    , usagePrice : Maybe Float
    , currencyCode : Maybe String
    , dBInstanceCount : Maybe Int
    , productDescription : Maybe String
    , offeringType : Maybe String
    , multiAZ : Maybe Bool
    , state : Maybe String
    , recurringCharges : Maybe (List RecurringCharge)
    , reservedDBInstanceArn : Maybe String
    }



reservedDBInstanceDecoder : JD.Decoder ReservedDBInstance
reservedDBInstanceDecoder =
    JD.succeed ReservedDBInstance
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReservedDBInstanceId", "reservedDBInstanceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReservedDBInstancesOfferingId", "reservedDBInstancesOfferingId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceClass", "dBInstanceClass"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartTime", "startTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Duration", "duration"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FixedPrice", "fixedPrice"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UsagePrice", "usagePrice"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CurrencyCode", "currencyCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceCount", "dBInstanceCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductDescription", "productDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OfferingType", "offeringType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MultiAZ", "multiAZ"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecurringCharges", "recurringCharges"]
            (JD.list recurringChargeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReservedDBInstanceArn", "reservedDBInstanceArn"]
            JD.string
        )
        




reservedDBInstanceToString : ReservedDBInstance -> String -- List (String, String)
reservedDBInstanceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "reservedDBInstanceId" "" -- val.reservedDBInstanceId
        
    --     |> Dict.insert
    --         "reservedDBInstancesOfferingId" "" -- val.reservedDBInstancesOfferingId
        
    --     |> Dict.insert
    --         "dBInstanceClass" "" -- val.dBInstanceClass
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "duration" "" -- val.duration
        
    --     |> Dict.insert
    --         "fixedPrice" "" -- val.fixedPrice
        
    --     |> Dict.insert
    --         "usagePrice" "" -- val.usagePrice
        
    --     |> Dict.insert
    --         "currencyCode" "" -- val.currencyCode
        
    --     |> Dict.insert
    --         "dBInstanceCount" "" -- val.dBInstanceCount
        
    --     |> Dict.insert
    --         "productDescription" "" -- val.productDescription
        
    --     |> Dict.insert
    --         "offeringType" "" -- val.offeringType
        
    --     |> Dict.insert
    --         "multiAZ" "" -- val.multiAZ
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "recurringCharges" "" -- val.recurringCharges
        
    --     |> Dict.insert
    --         "reservedDBInstanceArn" "" -- val.reservedDBInstanceArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from reservedDBInstanc
-}
type alias ReservedDBInstanceMessage =
    { marker : Maybe String
    , reservedDBInstances : Maybe (List ReservedDBInstance)
    }



reservedDBInstanceMessageDecoder : JD.Decoder ReservedDBInstanceMessage
reservedDBInstanceMessageDecoder =
    JD.succeed ReservedDBInstanceMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReservedDBInstances", "reservedDBInstances"]
            (JD.list reservedDBInstanceDecoder)
        )
        




reservedDBInstanceMessageToString : ReservedDBInstanceMessage -> String -- List (String, String)
reservedDBInstanceMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "reservedDBInstances" "" -- val.reservedDBInstances
        
    --     |> Dict.toList
    ""



{-| <p> This data type is used as a response element in the <code>DescribeReservedDBInstancesOfferings</code> action. </p>
-}
type alias ReservedDBInstancesOffering =
    { reservedDBInstancesOfferingId : Maybe String
    , dBInstanceClass : Maybe String
    , duration : Maybe Int
    , fixedPrice : Maybe Float
    , usagePrice : Maybe Float
    , currencyCode : Maybe String
    , productDescription : Maybe String
    , offeringType : Maybe String
    , multiAZ : Maybe Bool
    , recurringCharges : Maybe (List RecurringCharge)
    }



reservedDBInstancesOfferingDecoder : JD.Decoder ReservedDBInstancesOffering
reservedDBInstancesOfferingDecoder =
    JD.succeed ReservedDBInstancesOffering
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReservedDBInstancesOfferingId", "reservedDBInstancesOfferingId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstanceClass", "dBInstanceClass"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Duration", "duration"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FixedPrice", "fixedPrice"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UsagePrice", "usagePrice"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CurrencyCode", "currencyCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductDescription", "productDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OfferingType", "offeringType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MultiAZ", "multiAZ"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecurringCharges", "recurringCharges"]
            (JD.list recurringChargeDecoder)
        )
        




reservedDBInstancesOfferingToString : ReservedDBInstancesOffering -> String -- List (String, String)
reservedDBInstancesOfferingToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "reservedDBInstancesOfferingId" "" -- val.reservedDBInstancesOfferingId
        
    --     |> Dict.insert
    --         "dBInstanceClass" "" -- val.dBInstanceClass
        
    --     |> Dict.insert
    --         "duration" "" -- val.duration
        
    --     |> Dict.insert
    --         "fixedPrice" "" -- val.fixedPrice
        
    --     |> Dict.insert
    --         "usagePrice" "" -- val.usagePrice
        
    --     |> Dict.insert
    --         "currencyCode" "" -- val.currencyCode
        
    --     |> Dict.insert
    --         "productDescription" "" -- val.productDescription
        
    --     |> Dict.insert
    --         "offeringType" "" -- val.offeringType
        
    --     |> Dict.insert
    --         "multiAZ" "" -- val.multiAZ
        
    --     |> Dict.insert
    --         "recurringCharges" "" -- val.recurringCharges
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from reservedDBInstancesOfferin
-}
type alias ReservedDBInstancesOfferingMessage =
    { marker : Maybe String
    , reservedDBInstancesOfferings : Maybe (List ReservedDBInstancesOffering)
    }



reservedDBInstancesOfferingMessageDecoder : JD.Decoder ReservedDBInstancesOfferingMessage
reservedDBInstancesOfferingMessageDecoder =
    JD.succeed ReservedDBInstancesOfferingMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReservedDBInstancesOfferings", "reservedDBInstancesOfferings"]
            (JD.list reservedDBInstancesOfferingDecoder)
        )
        




reservedDBInstancesOfferingMessageToString : ReservedDBInstancesOfferingMessage -> String -- List (String, String)
reservedDBInstancesOfferingMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "reservedDBInstancesOfferings" "" -- val.reservedDBInstancesOfferings
        
    --     |> Dict.toList
    ""



{-| <p>Describes the pending maintenance actions for a resource.</p>
-}
type alias ResourcePendingMaintenanceActions =
    { resourceIdentifier : Maybe String
    , pendingMaintenanceActionDetails : Maybe (List PendingMaintenanceAction)
    }



resourcePendingMaintenanceActionsDecoder : JD.Decoder ResourcePendingMaintenanceActions
resourcePendingMaintenanceActionsDecoder =
    JD.succeed ResourcePendingMaintenanceActions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceIdentifier", "resourceIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PendingMaintenanceActionDetails", "pendingMaintenanceActionDetails"]
            (JD.list pendingMaintenanceActionDecoder)
        )
        




resourcePendingMaintenanceActionsToString : ResourcePendingMaintenanceActions -> String -- List (String, String)
resourcePendingMaintenanceActionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceIdentifier" "" -- val.resourceIdentifier
        
    --     |> Dict.insert
    --         "pendingMaintenanceActionDetails" "" -- val.pendingMaintenanceActionDetails
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from restoreDBClusterFrom
-}
type alias RestoreDBClusterFromS3Result =
    { dBCluster : Maybe DBCluster
    }



restoreDBClusterFromS3ResultDecoder : JD.Decoder RestoreDBClusterFromS3Result
restoreDBClusterFromS3ResultDecoder =
    JD.succeed RestoreDBClusterFromS3Result
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBCluster", "dBCluster"]
            dBClusterDecoder
        )
        




restoreDBClusterFromS3ResultToString : RestoreDBClusterFromS3Result -> String -- List (String, String)
restoreDBClusterFromS3ResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBCluster" "" -- val.dBCluster
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from restoreDBClusterFromSnapsh
-}
type alias RestoreDBClusterFromSnapshotResult =
    { dBCluster : Maybe DBCluster
    }



restoreDBClusterFromSnapshotResultDecoder : JD.Decoder RestoreDBClusterFromSnapshotResult
restoreDBClusterFromSnapshotResultDecoder =
    JD.succeed RestoreDBClusterFromSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBCluster", "dBCluster"]
            dBClusterDecoder
        )
        




restoreDBClusterFromSnapshotResultToString : RestoreDBClusterFromSnapshotResult -> String -- List (String, String)
restoreDBClusterFromSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBCluster" "" -- val.dBCluster
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from restoreDBClusterToPointInTi
-}
type alias RestoreDBClusterToPointInTimeResult =
    { dBCluster : Maybe DBCluster
    }



restoreDBClusterToPointInTimeResultDecoder : JD.Decoder RestoreDBClusterToPointInTimeResult
restoreDBClusterToPointInTimeResultDecoder =
    JD.succeed RestoreDBClusterToPointInTimeResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBCluster", "dBCluster"]
            dBClusterDecoder
        )
        




restoreDBClusterToPointInTimeResultToString : RestoreDBClusterToPointInTimeResult -> String -- List (String, String)
restoreDBClusterToPointInTimeResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBCluster" "" -- val.dBCluster
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from restoreDBInstanceFromDBSnapsh
-}
type alias RestoreDBInstanceFromDBSnapshotResult =
    { dBInstance : Maybe DBInstance
    }



restoreDBInstanceFromDBSnapshotResultDecoder : JD.Decoder RestoreDBInstanceFromDBSnapshotResult
restoreDBInstanceFromDBSnapshotResultDecoder =
    JD.succeed RestoreDBInstanceFromDBSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstance", "dBInstance"]
            dBInstanceDecoder
        )
        




restoreDBInstanceFromDBSnapshotResultToString : RestoreDBInstanceFromDBSnapshotResult -> String -- List (String, String)
restoreDBInstanceFromDBSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstance" "" -- val.dBInstance
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from restoreDBInstanceFrom
-}
type alias RestoreDBInstanceFromS3Result =
    { dBInstance : Maybe DBInstance
    }



restoreDBInstanceFromS3ResultDecoder : JD.Decoder RestoreDBInstanceFromS3Result
restoreDBInstanceFromS3ResultDecoder =
    JD.succeed RestoreDBInstanceFromS3Result
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstance", "dBInstance"]
            dBInstanceDecoder
        )
        




restoreDBInstanceFromS3ResultToString : RestoreDBInstanceFromS3Result -> String -- List (String, String)
restoreDBInstanceFromS3ResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstance" "" -- val.dBInstance
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from restoreDBInstanceToPointInTi
-}
type alias RestoreDBInstanceToPointInTimeResult =
    { dBInstance : Maybe DBInstance
    }



restoreDBInstanceToPointInTimeResultDecoder : JD.Decoder RestoreDBInstanceToPointInTimeResult
restoreDBInstanceToPointInTimeResultDecoder =
    JD.succeed RestoreDBInstanceToPointInTimeResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstance", "dBInstance"]
            dBInstanceDecoder
        )
        




restoreDBInstanceToPointInTimeResultToString : RestoreDBInstanceToPointInTimeResult -> String -- List (String, String)
restoreDBInstanceToPointInTimeResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstance" "" -- val.dBInstance
        
    --     |> Dict.toList
    ""



{-| <p>Earliest and latest time an instance can be restored to:</p>
-}
type alias RestoreWindow =
    { earliestTime : Maybe Posix
    , latestTime : Maybe Posix
    }



restoreWindowDecoder : JD.Decoder RestoreWindow
restoreWindowDecoder =
    JD.succeed RestoreWindow
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EarliestTime", "earliestTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LatestTime", "latestTime"]
            JDX.datetime
        )
        




restoreWindowToString : RestoreWindow -> String -- List (String, String)
restoreWindowToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "earliestTime" "" -- val.earliestTime
        
    --     |> Dict.insert
    --         "latestTime" "" -- val.latestTime
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from revokeDBSecurityGroupIngre
-}
type alias RevokeDBSecurityGroupIngressResult =
    { dBSecurityGroup : Maybe DBSecurityGroup
    }



revokeDBSecurityGroupIngressResultDecoder : JD.Decoder RevokeDBSecurityGroupIngressResult
revokeDBSecurityGroupIngressResultDecoder =
    JD.succeed RevokeDBSecurityGroupIngressResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBSecurityGroup", "dBSecurityGroup"]
            dBSecurityGroupDecoder
        )
        




revokeDBSecurityGroupIngressResultToString : RevokeDBSecurityGroupIngressResult -> String -- List (String, String)
revokeDBSecurityGroupIngressResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBSecurityGroup" "" -- val.dBSecurityGroup
        
    --     |> Dict.toList
    ""



{-| <p>Contains the scaling configuration of an Aurora Serverless DB cluster.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html">Using Amazon Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p>
-}
type alias ScalingConfiguration =
    { minCapacity : Maybe Int
    , maxCapacity : Maybe Int
    , autoPause : Maybe Bool
    , secondsUntilAutoPause : Maybe Int
    , timeoutAction : Maybe String
    }



scalingConfigurationDecoder : JD.Decoder ScalingConfiguration
scalingConfigurationDecoder =
    JD.succeed ScalingConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinCapacity", "minCapacity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxCapacity", "maxCapacity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoPause", "autoPause"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecondsUntilAutoPause", "secondsUntilAutoPause"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimeoutAction", "timeoutAction"]
            JD.string
        )
        




scalingConfigurationToString : ScalingConfiguration -> String -- List (String, String)
scalingConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "minCapacity" "" -- val.minCapacity
        
    --     |> Dict.insert
    --         "maxCapacity" "" -- val.maxCapacity
        
    --     |> Dict.insert
    --         "autoPause" "" -- val.autoPause
        
    --     |> Dict.insert
    --         "secondsUntilAutoPause" "" -- val.secondsUntilAutoPause
        
    --     |> Dict.insert
    --         "timeoutAction" "" -- val.timeoutAction
        
    --     |> Dict.toList
    ""



{-| <p>Shows the scaling configuration for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html">Using Amazon Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p>
-}
type alias ScalingConfigurationInfo =
    { minCapacity : Maybe Int
    , maxCapacity : Maybe Int
    , autoPause : Maybe Bool
    , secondsUntilAutoPause : Maybe Int
    , timeoutAction : Maybe String
    }



scalingConfigurationInfoDecoder : JD.Decoder ScalingConfigurationInfo
scalingConfigurationInfoDecoder =
    JD.succeed ScalingConfigurationInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinCapacity", "minCapacity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxCapacity", "maxCapacity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoPause", "autoPause"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecondsUntilAutoPause", "secondsUntilAutoPause"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimeoutAction", "timeoutAction"]
            JD.string
        )
        




scalingConfigurationInfoToString : ScalingConfigurationInfo -> String -- List (String, String)
scalingConfigurationInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "minCapacity" "" -- val.minCapacity
        
    --     |> Dict.insert
    --         "maxCapacity" "" -- val.maxCapacity
        
    --     |> Dict.insert
    --         "autoPause" "" -- val.autoPause
        
    --     |> Dict.insert
    --         "secondsUntilAutoPause" "" -- val.secondsUntilAutoPause
        
    --     |> Dict.insert
    --         "timeoutAction" "" -- val.timeoutAction
        
    --     |> Dict.toList
    ""



{-| <p>Contains an AWS Region name as the result of a successful call to the <code>DescribeSourceRegions</code> action.</p>
-}
type alias SourceRegion =
    { regionName : Maybe String
    , endpoint : Maybe String
    , status : Maybe String
    }



sourceRegionDecoder : JD.Decoder SourceRegion
sourceRegionDecoder =
    JD.succeed SourceRegion
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RegionName", "regionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Endpoint", "endpoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        




sourceRegionToString : SourceRegion -> String -- List (String, String)
sourceRegionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "regionName" "" -- val.regionName
        
    --     |> Dict.insert
    --         "endpoint" "" -- val.endpoint
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from sourceRegio
-}
type alias SourceRegionMessage =
    { marker : Maybe String
    , sourceRegions : Maybe (List SourceRegion)
    }



sourceRegionMessageDecoder : JD.Decoder SourceRegionMessage
sourceRegionMessageDecoder =
    JD.succeed SourceRegionMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Marker", "marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceRegions", "sourceRegions"]
            (JD.list sourceRegionDecoder)
        )
        




sourceRegionMessageToString : SourceRegionMessage -> String -- List (String, String)
sourceRegionMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "sourceRegions" "" -- val.sourceRegions
        
    --     |> Dict.toList
    ""



{-| One of

* `SourceType_db-instance`
* `SourceType_db-parameter-group`
* `SourceType_db-security-group`
* `SourceType_db-snapshot`
* `SourceType_db-cluster`
* `SourceType_db-cluster-snapshot`

-}
type SourceType
    = SourceType_db_instance
    | SourceType_db_parameter_group
    | SourceType_db_security_group
    | SourceType_db_snapshot
    | SourceType_db_cluster
    | SourceType_db_cluster_snapshot



sourceTypeDecoder : JD.Decoder SourceType
sourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "db_instance" ->
                        JD.succeed SourceType_db_instance

                    "db_parameter_group" ->
                        JD.succeed SourceType_db_parameter_group

                    "db_security_group" ->
                        JD.succeed SourceType_db_security_group

                    "db_snapshot" ->
                        JD.succeed SourceType_db_snapshot

                    "db_cluster" ->
                        JD.succeed SourceType_db_cluster

                    "db_cluster_snapshot" ->
                        JD.succeed SourceType_db_cluster_snapshot


                    _ ->
                        JD.fail "bad thing"
            )




sourceTypeToString : SourceType -> String
sourceTypeToString val =
    case val of
        SourceType_db_instance ->
            "db_instance"

        SourceType_db_parameter_group ->
            "db_parameter_group"

        SourceType_db_security_group ->
            "db_security_group"

        SourceType_db_snapshot ->
            "db_snapshot"

        SourceType_db_cluster ->
            "db_cluster"

        SourceType_db_cluster_snapshot ->
            "db_cluster_snapshot"




{-| Type of HTTP response from startActivityStream
-}
type alias StartActivityStreamResponse =
    { kmsKeyId : Maybe String
    , kinesisStreamName : Maybe String
    , status : Maybe ActivityStreamStatus
    , mode : Maybe ActivityStreamMode
    , applyImmediately : Maybe Bool
    }



startActivityStreamResponseDecoder : JD.Decoder StartActivityStreamResponse
startActivityStreamResponseDecoder =
    JD.succeed StartActivityStreamResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KmsKeyId", "kmsKeyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisStreamName", "kinesisStreamName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            activityStreamStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Mode", "mode"]
            activityStreamModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplyImmediately", "applyImmediately"]
            JD.bool
        )
        




startActivityStreamResponseToString : StartActivityStreamResponse -> String -- List (String, String)
startActivityStreamResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "kmsKeyId" "" -- val.kmsKeyId
        
    --     |> Dict.insert
    --         "kinesisStreamName" "" -- val.kinesisStreamName
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "mode" "" -- val.mode
        
    --     |> Dict.insert
    --         "applyImmediately" "" -- val.applyImmediately
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startDBClust
-}
type alias StartDBClusterResult =
    { dBCluster : Maybe DBCluster
    }



startDBClusterResultDecoder : JD.Decoder StartDBClusterResult
startDBClusterResultDecoder =
    JD.succeed StartDBClusterResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBCluster", "dBCluster"]
            dBClusterDecoder
        )
        




startDBClusterResultToString : StartDBClusterResult -> String -- List (String, String)
startDBClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBCluster" "" -- val.dBCluster
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startDBInstan
-}
type alias StartDBInstanceResult =
    { dBInstance : Maybe DBInstance
    }



startDBInstanceResultDecoder : JD.Decoder StartDBInstanceResult
startDBInstanceResultDecoder =
    JD.succeed StartDBInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstance", "dBInstance"]
            dBInstanceDecoder
        )
        




startDBInstanceResultToString : StartDBInstanceResult -> String -- List (String, String)
startDBInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstance" "" -- val.dBInstance
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopActivityStream
-}
type alias StopActivityStreamResponse =
    { kmsKeyId : Maybe String
    , kinesisStreamName : Maybe String
    , status : Maybe ActivityStreamStatus
    }



stopActivityStreamResponseDecoder : JD.Decoder StopActivityStreamResponse
stopActivityStreamResponseDecoder =
    JD.succeed StopActivityStreamResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KmsKeyId", "kmsKeyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisStreamName", "kinesisStreamName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            activityStreamStatusDecoder
        )
        




stopActivityStreamResponseToString : StopActivityStreamResponse -> String -- List (String, String)
stopActivityStreamResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "kmsKeyId" "" -- val.kmsKeyId
        
    --     |> Dict.insert
    --         "kinesisStreamName" "" -- val.kinesisStreamName
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopDBClust
-}
type alias StopDBClusterResult =
    { dBCluster : Maybe DBCluster
    }



stopDBClusterResultDecoder : JD.Decoder StopDBClusterResult
stopDBClusterResultDecoder =
    JD.succeed StopDBClusterResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBCluster", "dBCluster"]
            dBClusterDecoder
        )
        




stopDBClusterResultToString : StopDBClusterResult -> String -- List (String, String)
stopDBClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBCluster" "" -- val.dBCluster
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopDBInstan
-}
type alias StopDBInstanceResult =
    { dBInstance : Maybe DBInstance
    }



stopDBInstanceResultDecoder : JD.Decoder StopDBInstanceResult
stopDBInstanceResultDecoder =
    JD.succeed StopDBInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DBInstance", "dBInstance"]
            dBInstanceDecoder
        )
        




stopDBInstanceResultToString : StopDBInstanceResult -> String -- List (String, String)
stopDBInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dBInstance" "" -- val.dBInstance
        
    --     |> Dict.toList
    ""



{-| <p> This data type is used as a response element in the <code>DescribeDBSubnetGroups</code> action. </p>
-}
type alias Subnet =
    { subnetIdentifier : Maybe String
    , subnetAvailabilityZone : Maybe AvailabilityZone
    , subnetStatus : Maybe String
    }



subnetDecoder : JD.Decoder Subnet
subnetDecoder =
    JD.succeed Subnet
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetIdentifier", "subnetIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetAvailabilityZone", "subnetAvailabilityZone"]
            availabilityZoneDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetStatus", "subnetStatus"]
            JD.string
        )
        




subnetToString : Subnet -> String -- List (String, String)
subnetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subnetIdentifier" "" -- val.subnetIdentifier
        
    --     |> Dict.insert
    --         "subnetAvailabilityZone" "" -- val.subnetAvailabilityZone
        
    --     |> Dict.insert
    --         "subnetStatus" "" -- val.subnetStatus
        
    --     |> Dict.toList
    ""



{-| <p>Metadata assigned to an Amazon RDS resource consisting of a key-value pair.</p>
-}
type alias Tag =
    { key : Maybe String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.optional
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



{-| Type of HTTP response from tagLis
-}
type alias TagListMessage =
    { tagList : Maybe (List Tag)
    }



tagListMessageDecoder : JD.Decoder TagListMessage
tagListMessageDecoder =
    JD.succeed TagListMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TagList", "tagList"]
            (JD.list tagDecoder)
        )
        




tagListMessageToString : TagListMessage -> String -- List (String, String)
tagListMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tagList" "" -- val.tagList
        
    --     |> Dict.toList
    ""



{-| <p>A time zone associated with a <code>DBInstance</code> or a <code>DBSnapshot</code>. This data type is an element in the response to the <code>DescribeDBInstances</code>, the <code>DescribeDBSnapshots</code>, and the <code>DescribeDBEngineVersions</code> actions. </p>
-}
type alias Timezone =
    { timezoneName : Maybe String
    }



timezoneDecoder : JD.Decoder Timezone
timezoneDecoder =
    JD.succeed Timezone
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimezoneName", "timezoneName"]
            JD.string
        )
        




timezoneToString : Timezone -> String -- List (String, String)
timezoneToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "timezoneName" "" -- val.timezoneName
        
    --     |> Dict.toList
    ""



{-| <p>The version of the database engine that a DB instance can be upgraded to.</p>
-}
type alias UpgradeTarget =
    { engine : Maybe String
    , engineVersion : Maybe String
    , description : Maybe String
    , autoUpgrade : Maybe Bool
    , isMajorVersionUpgrade : Maybe Bool
    }



upgradeTargetDecoder : JD.Decoder UpgradeTarget
upgradeTargetDecoder =
    JD.succeed UpgradeTarget
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Engine", "engine"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EngineVersion", "engineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoUpgrade", "autoUpgrade"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsMajorVersionUpgrade", "isMajorVersionUpgrade"]
            JD.bool
        )
        




upgradeTargetToString : UpgradeTarget -> String -- List (String, String)
upgradeTargetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "engine" "" -- val.engine
        
    --     |> Dict.insert
    --         "engineVersion" "" -- val.engineVersion
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "autoUpgrade" "" -- val.autoUpgrade
        
    --     |> Dict.insert
    --         "isMajorVersionUpgrade" "" -- val.isMajorVersionUpgrade
        
    --     |> Dict.toList
    ""



{-| <p>Information about valid modifications that you can make to your DB instance. Contains the result of a successful call to the <code>DescribeValidDBInstanceModifications</code> action. You can use this information when you call <code>ModifyDBInstance</code>. </p>
-}
type alias ValidDBInstanceModificationsMessage =
    { storage : Maybe (List ValidStorageOptions)
    , validProcessorFeatures : Maybe (List AvailableProcessorFeature)
    }



validDBInstanceModificationsMessageDecoder : JD.Decoder ValidDBInstanceModificationsMessage
validDBInstanceModificationsMessageDecoder =
    JD.succeed ValidDBInstanceModificationsMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Storage", "storage"]
            (JD.list validStorageOptionsDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ValidProcessorFeatures", "validProcessorFeatures"]
            (JD.list availableProcessorFeatureDecoder)
        )
        




validDBInstanceModificationsMessageToString : ValidDBInstanceModificationsMessage -> String -- List (String, String)
validDBInstanceModificationsMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "storage" "" -- val.storage
        
    --     |> Dict.insert
    --         "validProcessorFeatures" "" -- val.validProcessorFeatures
        
    --     |> Dict.toList
    ""



{-| <p>Information about valid modifications that you can make to your DB instance. Contains the result of a successful call to the <code>DescribeValidDBInstanceModifications</code> action. </p>
-}
type alias ValidStorageOptions =
    { storageType : Maybe String
    , storageSize : Maybe (List Range)
    , provisionedIops : Maybe (List Range)
    , iopsToStorageRatio : Maybe (List DoubleRange)
    , supportsStorageAutoscaling : Maybe Bool
    }



validStorageOptionsDecoder : JD.Decoder ValidStorageOptions
validStorageOptionsDecoder =
    JD.succeed ValidStorageOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageType", "storageType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageSize", "storageSize"]
            (JD.list rangeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionedIops", "provisionedIops"]
            (JD.list rangeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IopsToStorageRatio", "iopsToStorageRatio"]
            (JD.list doubleRangeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportsStorageAutoscaling", "supportsStorageAutoscaling"]
            JD.bool
        )
        




validStorageOptionsToString : ValidStorageOptions -> String -- List (String, String)
validStorageOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "storageType" "" -- val.storageType
        
    --     |> Dict.insert
    --         "storageSize" "" -- val.storageSize
        
    --     |> Dict.insert
    --         "provisionedIops" "" -- val.provisionedIops
        
    --     |> Dict.insert
    --         "iopsToStorageRatio" "" -- val.iopsToStorageRatio
        
    --     |> Dict.insert
    --         "supportsStorageAutoscaling" "" -- val.supportsStorageAutoscaling
        
    --     |> Dict.toList
    ""



{-| <p>This data type is used as a response element for queries on VPC security group membership.</p>
-}
type alias VpcSecurityGroupMembership =
    { vpcSecurityGroupId : Maybe String
    , status : Maybe String
    }



vpcSecurityGroupMembershipDecoder : JD.Decoder VpcSecurityGroupMembership
vpcSecurityGroupMembershipDecoder =
    JD.succeed VpcSecurityGroupMembership
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcSecurityGroupId", "vpcSecurityGroupId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        




vpcSecurityGroupMembershipToString : VpcSecurityGroupMembership -> String -- List (String, String)
vpcSecurityGroupMembershipToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "vpcSecurityGroupId" "" -- val.vpcSecurityGroupId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias AddRoleToDBClusterMessage =
    { dBClusterIdentifier : String
    , roleArn : String
    , featureName : Maybe String
    }


{-| undefined
-}
type alias AddRoleToDBInstanceMessage =
    { dBInstanceIdentifier : String
    , roleArn : String
    , featureName : String
    }


{-| <p/>
-}
type alias AddSourceIdentifierToSubscriptionMessage =
    { subscriptionName : String
    , sourceIdentifier : String
    }


{-| <p/>
-}
type alias AddTagsToResourceMessage =
    { resourceName : String
    , tags : (List Tag)
    }


{-| <p/>
-}
type alias ApplyPendingMaintenanceActionMessage =
    { resourceIdentifier : String
    , applyAction : String
    , optInType : String
    }


{-| <p/>
-}
type alias AuthorizeDBSecurityGroupIngressMessage =
    { dBSecurityGroupName : String
    , cIDRIP : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupId : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    }


{-| <p/>
-}
type alias BacktrackDBClusterMessage =
    { dBClusterIdentifier : String
    , backtrackTo : Posix
    , force : Maybe Bool
    , useEarliestTimeOnPointInTimeUnavailable : Maybe Bool
    }


{-| undefined
-}
type alias CopyDBClusterParameterGroupMessage =
    { sourceDBClusterParameterGroupIdentifier : String
    , targetDBClusterParameterGroupIdentifier : String
    , targetDBClusterParameterGroupDescription : String
    , tags : Maybe (List Tag)
    }


{-| <p/>
-}
type alias CopyDBClusterSnapshotMessage =
    { sourceDBClusterSnapshotIdentifier : String
    , targetDBClusterSnapshotIdentifier : String
    , kmsKeyId : Maybe String
    , preSignedUrl : Maybe String
    , copyTags : Maybe Bool
    , tags : Maybe (List Tag)
    , sourceRegion : Maybe String
    }


{-| <p/>
-}
type alias CopyDBParameterGroupMessage =
    { sourceDBParameterGroupIdentifier : String
    , targetDBParameterGroupIdentifier : String
    , targetDBParameterGroupDescription : String
    , tags : Maybe (List Tag)
    }


{-| <p/>
-}
type alias CopyDBSnapshotMessage =
    { sourceDBSnapshotIdentifier : String
    , targetDBSnapshotIdentifier : String
    , kmsKeyId : Maybe String
    , tags : Maybe (List Tag)
    , copyTags : Maybe Bool
    , preSignedUrl : Maybe String
    , optionGroupName : Maybe String
    , sourceRegion : Maybe String
    }


{-| <p/>
-}
type alias CopyOptionGroupMessage =
    { sourceOptionGroupIdentifier : String
    , targetOptionGroupIdentifier : String
    , targetOptionGroupDescription : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateDBClusterEndpointMessage =
    { dBClusterIdentifier : String
    , dBClusterEndpointIdentifier : String
    , endpointType : String
    , staticMembers : Maybe (List String)
    , excludedMembers : Maybe (List String)
    }


{-| <p/>
-}
type alias CreateDBClusterMessage =
    { availabilityZones : Maybe (List String)
    , backupRetentionPeriod : Maybe Int
    , characterSetName : Maybe String
    , databaseName : Maybe String
    , dBClusterIdentifier : String
    , dBClusterParameterGroupName : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , dBSubnetGroupName : Maybe String
    , engine : String
    , engineVersion : Maybe String
    , port_ : Maybe Int
    , masterUsername : Maybe String
    , masterUserPassword : Maybe String
    , optionGroupName : Maybe String
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , replicationSourceIdentifier : Maybe String
    , tags : Maybe (List Tag)
    , storageEncrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , preSignedUrl : Maybe String
    , enableIAMDatabaseAuthentication : Maybe Bool
    , backtrackWindow : Maybe Int
    , enableCloudwatchLogsExports : Maybe (List String)
    , engineMode : Maybe String
    , scalingConfiguration : Maybe ScalingConfiguration
    , deletionProtection : Maybe Bool
    , globalClusterIdentifier : Maybe String
    , copyTagsToSnapshot : Maybe Bool
    , sourceRegion : Maybe String
    }


{-| <p/>
-}
type alias CreateDBClusterParameterGroupMessage =
    { dBClusterParameterGroupName : String
    , dBParameterGroupFamily : String
    , description : String
    , tags : Maybe (List Tag)
    }


{-| <p/>
-}
type alias CreateDBClusterSnapshotMessage =
    { dBClusterSnapshotIdentifier : String
    , dBClusterIdentifier : String
    , tags : Maybe (List Tag)
    }


{-| <p/>
-}
type alias CreateDBInstanceMessage =
    { dBName : Maybe String
    , dBInstanceIdentifier : String
    , allocatedStorage : Maybe Int
    , dBInstanceClass : String
    , engine : String
    , masterUsername : Maybe String
    , masterUserPassword : Maybe String
    , dBSecurityGroups : Maybe (List String)
    , vpcSecurityGroupIds : Maybe (List String)
    , availabilityZone : Maybe String
    , dBSubnetGroupName : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , dBParameterGroupName : Maybe String
    , backupRetentionPeriod : Maybe Int
    , preferredBackupWindow : Maybe String
    , port_ : Maybe Int
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , licenseModel : Maybe String
    , iops : Maybe Int
    , optionGroupName : Maybe String
    , characterSetName : Maybe String
    , publiclyAccessible : Maybe Bool
    , tags : Maybe (List Tag)
    , dBClusterIdentifier : Maybe String
    , storageType : Maybe String
    , tdeCredentialArn : Maybe String
    , tdeCredentialPassword : Maybe String
    , storageEncrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , domain : Maybe String
    , copyTagsToSnapshot : Maybe Bool
    , monitoringInterval : Maybe Int
    , monitoringRoleArn : Maybe String
    , domainIAMRoleName : Maybe String
    , promotionTier : Maybe Int
    , timezone : Maybe String
    , enableIAMDatabaseAuthentication : Maybe Bool
    , enablePerformanceInsights : Maybe Bool
    , performanceInsightsKMSKeyId : Maybe String
    , performanceInsightsRetentionPeriod : Maybe Int
    , enableCloudwatchLogsExports : Maybe (List String)
    , processorFeatures : Maybe (List ProcessorFeature)
    , deletionProtection : Maybe Bool
    , maxAllocatedStorage : Maybe Int
    }


{-| undefined
-}
type alias CreateDBInstanceReadReplicaMessage =
    { dBInstanceIdentifier : String
    , sourceDBInstanceIdentifier : String
    , dBInstanceClass : Maybe String
    , availabilityZone : Maybe String
    , port_ : Maybe Int
    , multiAZ : Maybe Bool
    , autoMinorVersionUpgrade : Maybe Bool
    , iops : Maybe Int
    , optionGroupName : Maybe String
    , publiclyAccessible : Maybe Bool
    , tags : Maybe (List Tag)
    , dBSubnetGroupName : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , storageType : Maybe String
    , copyTagsToSnapshot : Maybe Bool
    , monitoringInterval : Maybe Int
    , monitoringRoleArn : Maybe String
    , kmsKeyId : Maybe String
    , preSignedUrl : Maybe String
    , enableIAMDatabaseAuthentication : Maybe Bool
    , enablePerformanceInsights : Maybe Bool
    , performanceInsightsKMSKeyId : Maybe String
    , performanceInsightsRetentionPeriod : Maybe Int
    , enableCloudwatchLogsExports : Maybe (List String)
    , processorFeatures : Maybe (List ProcessorFeature)
    , useDefaultProcessorFeatures : Maybe Bool
    , deletionProtection : Maybe Bool
    , sourceRegion : Maybe String
    }


{-| <p/>
-}
type alias CreateDBParameterGroupMessage =
    { dBParameterGroupName : String
    , dBParameterGroupFamily : String
    , description : String
    , tags : Maybe (List Tag)
    }


{-| <p/>
-}
type alias CreateDBSecurityGroupMessage =
    { dBSecurityGroupName : String
    , dBSecurityGroupDescription : String
    , tags : Maybe (List Tag)
    }


{-| <p/>
-}
type alias CreateDBSnapshotMessage =
    { dBSnapshotIdentifier : String
    , dBInstanceIdentifier : String
    , tags : Maybe (List Tag)
    }


{-| <p/>
-}
type alias CreateDBSubnetGroupMessage =
    { dBSubnetGroupName : String
    , dBSubnetGroupDescription : String
    , subnetIds : (List String)
    , tags : Maybe (List Tag)
    }


{-| <p/>
-}
type alias CreateEventSubscriptionMessage =
    { subscriptionName : String
    , snsTopicArn : String
    , sourceType : Maybe String
    , eventCategories : Maybe (List String)
    , sourceIds : Maybe (List String)
    , enabled : Maybe Bool
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateGlobalClusterMessage =
    { globalClusterIdentifier : Maybe String
    , sourceDBClusterIdentifier : Maybe String
    , engine : Maybe String
    , engineVersion : Maybe String
    , deletionProtection : Maybe Bool
    , databaseName : Maybe String
    , storageEncrypted : Maybe Bool
    }


{-| <p/>
-}
type alias CreateOptionGroupMessage =
    { optionGroupName : String
    , engineName : String
    , majorEngineVersion : String
    , optionGroupDescription : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias DeleteDBClusterEndpointMessage =
    { dBClusterEndpointIdentifier : String
    }


{-| <p/>
-}
type alias DeleteDBClusterMessage =
    { dBClusterIdentifier : String
    , skipFinalSnapshot : Maybe Bool
    , finalDBSnapshotIdentifier : Maybe String
    }


{-| <p/>
-}
type alias DeleteDBClusterParameterGroupMessage =
    { dBClusterParameterGroupName : String
    }


{-| <p/>
-}
type alias DeleteDBClusterSnapshotMessage =
    { dBClusterSnapshotIdentifier : String
    }


{-| <p>Parameter input for the <code>DeleteDBInstanceAutomatedBackup</code> operation. </p>
-}
type alias DeleteDBInstanceAutomatedBackupMessage =
    { dbiResourceId : String
    }


{-| <p/>
-}
type alias DeleteDBInstanceMessage =
    { dBInstanceIdentifier : String
    , skipFinalSnapshot : Maybe Bool
    , finalDBSnapshotIdentifier : Maybe String
    , deleteAutomatedBackups : Maybe Bool
    }


{-| <p/>
-}
type alias DeleteDBParameterGroupMessage =
    { dBParameterGroupName : String
    }


{-| <p/>
-}
type alias DeleteDBSecurityGroupMessage =
    { dBSecurityGroupName : String
    }


{-| <p/>
-}
type alias DeleteDBSnapshotMessage =
    { dBSnapshotIdentifier : String
    }


{-| <p/>
-}
type alias DeleteDBSubnetGroupMessage =
    { dBSubnetGroupName : String
    }


{-| <p/>
-}
type alias DeleteEventSubscriptionMessage =
    { subscriptionName : String
    }


{-| undefined
-}
type alias DeleteGlobalClusterMessage =
    { globalClusterIdentifier : String
    }


{-| <p/>
-}
type alias DeleteOptionGroupMessage =
    { optionGroupName : String
    }


{-| <p/>
-}
type alias DescribeAccountAttributesMessage =
    { 
    }


{-| <p/>
-}
type alias DescribeCertificatesMessage =
    { certificateIdentifier : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeDBClusterBacktracksMessage =
    { dBClusterIdentifier : String
    , backtrackIdentifier : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias DescribeDBClusterEndpointsMessage =
    { dBClusterIdentifier : Maybe String
    , dBClusterEndpointIdentifier : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeDBClusterParameterGroupsMessage =
    { dBClusterParameterGroupName : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeDBClusterParametersMessage =
    { dBClusterParameterGroupName : String
    , source : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeDBClusterSnapshotAttributesMessage =
    { dBClusterSnapshotIdentifier : String
    }


{-| <p/>
-}
type alias DescribeDBClusterSnapshotsMessage =
    { dBClusterIdentifier : Maybe String
    , dBClusterSnapshotIdentifier : Maybe String
    , snapshotType : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    , includeShared : Maybe Bool
    , includePublic : Maybe Bool
    }


{-| <p/>
-}
type alias DescribeDBClustersMessage =
    { dBClusterIdentifier : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    , includeShared : Maybe Bool
    }


{-| undefined
-}
type alias DescribeDBEngineVersionsMessage =
    { engine : Maybe String
    , engineVersion : Maybe String
    , dBParameterGroupFamily : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    , defaultOnly : Maybe Bool
    , listSupportedCharacterSets : Maybe Bool
    , listSupportedTimezones : Maybe Bool
    , includeAll : Maybe Bool
    }


{-| <p>Parameter input for DescribeDBInstanceAutomatedBackups. </p>
-}
type alias DescribeDBInstanceAutomatedBackupsMessage =
    { dbiResourceId : Maybe String
    , dBInstanceIdentifier : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeDBInstancesMessage =
    { dBInstanceIdentifier : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeDBLogFilesMessage =
    { dBInstanceIdentifier : String
    , filenameContains : Maybe String
    , fileLastWritten : Maybe Int
    , fileSize : Maybe Int
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeDBParameterGroupsMessage =
    { dBParameterGroupName : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias DescribeDBParametersMessage =
    { dBParameterGroupName : String
    , source : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeDBSecurityGroupsMessage =
    { dBSecurityGroupName : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeDBSnapshotAttributesMessage =
    { dBSnapshotIdentifier : String
    }


{-| <p/>
-}
type alias DescribeDBSnapshotsMessage =
    { dBInstanceIdentifier : Maybe String
    , dBSnapshotIdentifier : Maybe String
    , snapshotType : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    , includeShared : Maybe Bool
    , includePublic : Maybe Bool
    , dbiResourceId : Maybe String
    }


{-| <p/>
-}
type alias DescribeDBSubnetGroupsMessage =
    { dBSubnetGroupName : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeEngineDefaultClusterParametersMessage =
    { dBParameterGroupFamily : String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeEngineDefaultParametersMessage =
    { dBParameterGroupFamily : String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeEventCategoriesMessage =
    { sourceType : Maybe String
    , filters : Maybe (List Filter)
    }


{-| <p/>
-}
type alias DescribeEventSubscriptionsMessage =
    { subscriptionName : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeEventsMessage =
    { sourceIdentifier : Maybe String
    , sourceType : Maybe SourceType
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , duration : Maybe Int
    , eventCategories : Maybe (List String)
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias DescribeGlobalClustersMessage =
    { globalClusterIdentifier : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeOptionGroupOptionsMessage =
    { engineName : String
    , majorEngineVersion : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeOptionGroupsMessage =
    { optionGroupName : Maybe String
    , filters : Maybe (List Filter)
    , marker : Maybe String
    , maxRecords : Maybe Int
    , engineName : Maybe String
    , majorEngineVersion : Maybe String
    }


{-| <p/>
-}
type alias DescribeOrderableDBInstanceOptionsMessage =
    { engine : String
    , engineVersion : Maybe String
    , dBInstanceClass : Maybe String
    , licenseModel : Maybe String
    , vpc : Maybe Bool
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribePendingMaintenanceActionsMessage =
    { resourceIdentifier : Maybe String
    , filters : Maybe (List Filter)
    , marker : Maybe String
    , maxRecords : Maybe Int
    }


{-| <p/>
-}
type alias DescribeReservedDBInstancesMessage =
    { reservedDBInstanceId : Maybe String
    , reservedDBInstancesOfferingId : Maybe String
    , dBInstanceClass : Maybe String
    , duration : Maybe String
    , productDescription : Maybe String
    , offeringType : Maybe String
    , multiAZ : Maybe Bool
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeReservedDBInstancesOfferingsMessage =
    { reservedDBInstancesOfferingId : Maybe String
    , dBInstanceClass : Maybe String
    , duration : Maybe String
    , productDescription : Maybe String
    , offeringType : Maybe String
    , multiAZ : Maybe Bool
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| <p/>
-}
type alias DescribeSourceRegionsMessage =
    { regionName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , filters : Maybe (List Filter)
    }


{-| <p/>
-}
type alias DescribeValidDBInstanceModificationsMessage =
    { dBInstanceIdentifier : String
    }


{-| <p/>
-}
type alias DownloadDBLogFilePortionMessage =
    { dBInstanceIdentifier : String
    , logFileName : String
    , marker : Maybe String
    , numberOfLines : Maybe Int
    }


{-| <p/>
-}
type alias FailoverDBClusterMessage =
    { dBClusterIdentifier : String
    , targetDBInstanceIdentifier : Maybe String
    }


{-| <p/>
-}
type alias ListTagsForResourceMessage =
    { resourceName : String
    , filters : Maybe (List Filter)
    }


{-| undefined
-}
type alias ModifyCurrentDBClusterCapacityMessage =
    { dBClusterIdentifier : String
    , capacity : Maybe Int
    , secondsBeforeTimeout : Maybe Int
    , timeoutAction : Maybe String
    }


{-| undefined
-}
type alias ModifyDBClusterEndpointMessage =
    { dBClusterEndpointIdentifier : String
    , endpointType : Maybe String
    , staticMembers : Maybe (List String)
    , excludedMembers : Maybe (List String)
    }


{-| <p/>
-}
type alias ModifyDBClusterMessage =
    { dBClusterIdentifier : String
    , newDBClusterIdentifier : Maybe String
    , applyImmediately : Maybe Bool
    , backupRetentionPeriod : Maybe Int
    , dBClusterParameterGroupName : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , port_ : Maybe Int
    , masterUserPassword : Maybe String
    , optionGroupName : Maybe String
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , enableIAMDatabaseAuthentication : Maybe Bool
    , backtrackWindow : Maybe Int
    , cloudwatchLogsExportConfiguration : Maybe CloudwatchLogsExportConfiguration
    , engineVersion : Maybe String
    , allowMajorVersionUpgrade : Maybe Bool
    , dBInstanceParameterGroupName : Maybe String
    , scalingConfiguration : Maybe ScalingConfiguration
    , deletionProtection : Maybe Bool
    , enableHttpEndpoint : Maybe Bool
    , copyTagsToSnapshot : Maybe Bool
    }


{-| <p/>
-}
type alias ModifyDBClusterParameterGroupMessage =
    { dBClusterParameterGroupName : String
    , parameters : (List Parameter)
    }


{-| <p/>
-}
type alias ModifyDBClusterSnapshotAttributeMessage =
    { dBClusterSnapshotIdentifier : String
    , attributeName : String
    , valuesToAdd : Maybe (List String)
    , valuesToRemove : Maybe (List String)
    }


{-| <p/>
-}
type alias ModifyDBInstanceMessage =
    { dBInstanceIdentifier : String
    , allocatedStorage : Maybe Int
    , dBInstanceClass : Maybe String
    , dBSubnetGroupName : Maybe String
    , dBSecurityGroups : Maybe (List String)
    , vpcSecurityGroupIds : Maybe (List String)
    , applyImmediately : Maybe Bool
    , masterUserPassword : Maybe String
    , dBParameterGroupName : Maybe String
    , backupRetentionPeriod : Maybe Int
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , allowMajorVersionUpgrade : Maybe Bool
    , autoMinorVersionUpgrade : Maybe Bool
    , licenseModel : Maybe String
    , iops : Maybe Int
    , optionGroupName : Maybe String
    , newDBInstanceIdentifier : Maybe String
    , storageType : Maybe String
    , tdeCredentialArn : Maybe String
    , tdeCredentialPassword : Maybe String
    , cACertificateIdentifier : Maybe String
    , domain : Maybe String
    , copyTagsToSnapshot : Maybe Bool
    , monitoringInterval : Maybe Int
    , dBPortNumber : Maybe Int
    , publiclyAccessible : Maybe Bool
    , monitoringRoleArn : Maybe String
    , domainIAMRoleName : Maybe String
    , promotionTier : Maybe Int
    , enableIAMDatabaseAuthentication : Maybe Bool
    , enablePerformanceInsights : Maybe Bool
    , performanceInsightsKMSKeyId : Maybe String
    , performanceInsightsRetentionPeriod : Maybe Int
    , cloudwatchLogsExportConfiguration : Maybe CloudwatchLogsExportConfiguration
    , processorFeatures : Maybe (List ProcessorFeature)
    , useDefaultProcessorFeatures : Maybe Bool
    , deletionProtection : Maybe Bool
    , maxAllocatedStorage : Maybe Int
    }


{-| <p/>
-}
type alias ModifyDBParameterGroupMessage =
    { dBParameterGroupName : String
    , parameters : (List Parameter)
    }


{-| <p/>
-}
type alias ModifyDBSnapshotAttributeMessage =
    { dBSnapshotIdentifier : String
    , attributeName : String
    , valuesToAdd : Maybe (List String)
    , valuesToRemove : Maybe (List String)
    }


{-| undefined
-}
type alias ModifyDBSnapshotMessage =
    { dBSnapshotIdentifier : String
    , engineVersion : Maybe String
    , optionGroupName : Maybe String
    }


{-| <p/>
-}
type alias ModifyDBSubnetGroupMessage =
    { dBSubnetGroupName : String
    , dBSubnetGroupDescription : Maybe String
    , subnetIds : (List String)
    }


{-| <p/>
-}
type alias ModifyEventSubscriptionMessage =
    { subscriptionName : String
    , snsTopicArn : Maybe String
    , sourceType : Maybe String
    , eventCategories : Maybe (List String)
    , enabled : Maybe Bool
    }


{-| undefined
-}
type alias ModifyGlobalClusterMessage =
    { globalClusterIdentifier : Maybe String
    , newGlobalClusterIdentifier : Maybe String
    , deletionProtection : Maybe Bool
    }


{-| <p/>
-}
type alias ModifyOptionGroupMessage =
    { optionGroupName : String
    , optionsToInclude : Maybe (List OptionConfiguration)
    , optionsToRemove : Maybe (List String)
    , applyImmediately : Maybe Bool
    }


{-| <p/>
-}
type alias PromoteReadReplicaDBClusterMessage =
    { dBClusterIdentifier : String
    }


{-| <p/>
-}
type alias PromoteReadReplicaMessage =
    { dBInstanceIdentifier : String
    , backupRetentionPeriod : Maybe Int
    , preferredBackupWindow : Maybe String
    }


{-| <p/>
-}
type alias PurchaseReservedDBInstancesOfferingMessage =
    { reservedDBInstancesOfferingId : String
    , reservedDBInstanceId : Maybe String
    , dBInstanceCount : Maybe Int
    , tags : Maybe (List Tag)
    }


{-| <p/>
-}
type alias RebootDBInstanceMessage =
    { dBInstanceIdentifier : String
    , forceFailover : Maybe Bool
    }


{-| undefined
-}
type alias RemoveFromGlobalClusterMessage =
    { globalClusterIdentifier : Maybe String
    , dbClusterIdentifier : Maybe String
    }


{-| undefined
-}
type alias RemoveRoleFromDBClusterMessage =
    { dBClusterIdentifier : String
    , roleArn : String
    , featureName : Maybe String
    }


{-| undefined
-}
type alias RemoveRoleFromDBInstanceMessage =
    { dBInstanceIdentifier : String
    , roleArn : String
    , featureName : String
    }


{-| <p/>
-}
type alias RemoveSourceIdentifierFromSubscriptionMessage =
    { subscriptionName : String
    , sourceIdentifier : String
    }


{-| <p/>
-}
type alias RemoveTagsFromResourceMessage =
    { resourceName : String
    , tagKeys : (List String)
    }


{-| <p/>
-}
type alias ResetDBClusterParameterGroupMessage =
    { dBClusterParameterGroupName : String
    , resetAllParameters : Maybe Bool
    , parameters : Maybe (List Parameter)
    }


{-| <p/>
-}
type alias ResetDBParameterGroupMessage =
    { dBParameterGroupName : String
    , resetAllParameters : Maybe Bool
    , parameters : Maybe (List Parameter)
    }


{-| undefined
-}
type alias RestoreDBClusterFromS3Message =
    { availabilityZones : Maybe (List String)
    , backupRetentionPeriod : Maybe Int
    , characterSetName : Maybe String
    , databaseName : Maybe String
    , dBClusterIdentifier : String
    , dBClusterParameterGroupName : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , dBSubnetGroupName : Maybe String
    , engine : String
    , engineVersion : Maybe String
    , port_ : Maybe Int
    , masterUsername : String
    , masterUserPassword : String
    , optionGroupName : Maybe String
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , tags : Maybe (List Tag)
    , storageEncrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , enableIAMDatabaseAuthentication : Maybe Bool
    , sourceEngine : String
    , sourceEngineVersion : String
    , s3BucketName : String
    , s3Prefix : Maybe String
    , s3IngestionRoleArn : String
    , backtrackWindow : Maybe Int
    , enableCloudwatchLogsExports : Maybe (List String)
    , deletionProtection : Maybe Bool
    , copyTagsToSnapshot : Maybe Bool
    }


{-| <p/>
-}
type alias RestoreDBClusterFromSnapshotMessage =
    { availabilityZones : Maybe (List String)
    , dBClusterIdentifier : String
    , snapshotIdentifier : String
    , engine : String
    , engineVersion : Maybe String
    , port_ : Maybe Int
    , dBSubnetGroupName : Maybe String
    , databaseName : Maybe String
    , optionGroupName : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , tags : Maybe (List Tag)
    , kmsKeyId : Maybe String
    , enableIAMDatabaseAuthentication : Maybe Bool
    , backtrackWindow : Maybe Int
    , enableCloudwatchLogsExports : Maybe (List String)
    , engineMode : Maybe String
    , scalingConfiguration : Maybe ScalingConfiguration
    , dBClusterParameterGroupName : Maybe String
    , deletionProtection : Maybe Bool
    , copyTagsToSnapshot : Maybe Bool
    }


{-| <p/>
-}
type alias RestoreDBClusterToPointInTimeMessage =
    { dBClusterIdentifier : String
    , restoreType : Maybe String
    , sourceDBClusterIdentifier : String
    , restoreToTime : Maybe Posix
    , useLatestRestorableTime : Maybe Bool
    , port_ : Maybe Int
    , dBSubnetGroupName : Maybe String
    , optionGroupName : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , tags : Maybe (List Tag)
    , kmsKeyId : Maybe String
    , enableIAMDatabaseAuthentication : Maybe Bool
    , backtrackWindow : Maybe Int
    , enableCloudwatchLogsExports : Maybe (List String)
    , dBClusterParameterGroupName : Maybe String
    , deletionProtection : Maybe Bool
    , copyTagsToSnapshot : Maybe Bool
    }


{-| <p/>
-}
type alias RestoreDBInstanceFromDBSnapshotMessage =
    { dBInstanceIdentifier : String
    , dBSnapshotIdentifier : String
    , dBInstanceClass : Maybe String
    , port_ : Maybe Int
    , availabilityZone : Maybe String
    , dBSubnetGroupName : Maybe String
    , multiAZ : Maybe Bool
    , publiclyAccessible : Maybe Bool
    , autoMinorVersionUpgrade : Maybe Bool
    , licenseModel : Maybe String
    , dBName : Maybe String
    , engine : Maybe String
    , iops : Maybe Int
    , optionGroupName : Maybe String
    , tags : Maybe (List Tag)
    , storageType : Maybe String
    , tdeCredentialArn : Maybe String
    , tdeCredentialPassword : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , domain : Maybe String
    , copyTagsToSnapshot : Maybe Bool
    , domainIAMRoleName : Maybe String
    , enableIAMDatabaseAuthentication : Maybe Bool
    , enableCloudwatchLogsExports : Maybe (List String)
    , processorFeatures : Maybe (List ProcessorFeature)
    , useDefaultProcessorFeatures : Maybe Bool
    , dBParameterGroupName : Maybe String
    , deletionProtection : Maybe Bool
    }


{-| undefined
-}
type alias RestoreDBInstanceFromS3Message =
    { dBName : Maybe String
    , dBInstanceIdentifier : String
    , allocatedStorage : Maybe Int
    , dBInstanceClass : String
    , engine : String
    , masterUsername : Maybe String
    , masterUserPassword : Maybe String
    , dBSecurityGroups : Maybe (List String)
    , vpcSecurityGroupIds : Maybe (List String)
    , availabilityZone : Maybe String
    , dBSubnetGroupName : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , dBParameterGroupName : Maybe String
    , backupRetentionPeriod : Maybe Int
    , preferredBackupWindow : Maybe String
    , port_ : Maybe Int
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , licenseModel : Maybe String
    , iops : Maybe Int
    , optionGroupName : Maybe String
    , publiclyAccessible : Maybe Bool
    , tags : Maybe (List Tag)
    , storageType : Maybe String
    , storageEncrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , copyTagsToSnapshot : Maybe Bool
    , monitoringInterval : Maybe Int
    , monitoringRoleArn : Maybe String
    , enableIAMDatabaseAuthentication : Maybe Bool
    , sourceEngine : String
    , sourceEngineVersion : String
    , s3BucketName : String
    , s3Prefix : Maybe String
    , s3IngestionRoleArn : String
    , enablePerformanceInsights : Maybe Bool
    , performanceInsightsKMSKeyId : Maybe String
    , performanceInsightsRetentionPeriod : Maybe Int
    , enableCloudwatchLogsExports : Maybe (List String)
    , processorFeatures : Maybe (List ProcessorFeature)
    , useDefaultProcessorFeatures : Maybe Bool
    , deletionProtection : Maybe Bool
    }


{-| <p/>
-}
type alias RestoreDBInstanceToPointInTimeMessage =
    { sourceDBInstanceIdentifier : Maybe String
    , targetDBInstanceIdentifier : String
    , restoreTime : Maybe Posix
    , useLatestRestorableTime : Maybe Bool
    , dBInstanceClass : Maybe String
    , port_ : Maybe Int
    , availabilityZone : Maybe String
    , dBSubnetGroupName : Maybe String
    , multiAZ : Maybe Bool
    , publiclyAccessible : Maybe Bool
    , autoMinorVersionUpgrade : Maybe Bool
    , licenseModel : Maybe String
    , dBName : Maybe String
    , engine : Maybe String
    , iops : Maybe Int
    , optionGroupName : Maybe String
    , copyTagsToSnapshot : Maybe Bool
    , tags : Maybe (List Tag)
    , storageType : Maybe String
    , tdeCredentialArn : Maybe String
    , tdeCredentialPassword : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , domain : Maybe String
    , domainIAMRoleName : Maybe String
    , enableIAMDatabaseAuthentication : Maybe Bool
    , enableCloudwatchLogsExports : Maybe (List String)
    , processorFeatures : Maybe (List ProcessorFeature)
    , useDefaultProcessorFeatures : Maybe Bool
    , dBParameterGroupName : Maybe String
    , deletionProtection : Maybe Bool
    , sourceDbiResourceId : Maybe String
    }


{-| <p/>
-}
type alias RevokeDBSecurityGroupIngressMessage =
    { dBSecurityGroupName : String
    , cIDRIP : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupId : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    }


{-| undefined
-}
type alias StartActivityStreamRequest =
    { resourceArn : String
    , mode : ActivityStreamMode
    , kmsKeyId : String
    , applyImmediately : Maybe Bool
    }


{-| undefined
-}
type alias StartDBClusterMessage =
    { dBClusterIdentifier : String
    }


{-| undefined
-}
type alias StartDBInstanceMessage =
    { dBInstanceIdentifier : String
    }


{-| undefined
-}
type alias StopActivityStreamRequest =
    { resourceArn : String
    , applyImmediately : Maybe Bool
    }


{-| undefined
-}
type alias StopDBClusterMessage =
    { dBClusterIdentifier : String
    }


{-| undefined
-}
type alias StopDBInstanceMessage =
    { dBInstanceIdentifier : String
    , dBSnapshotIdentifier : Maybe String
    }








accountAttributesMessageEncoder : AccountAttributesMessage -> List (String, String)
accountAttributesMessageEncoder data =
    []
        
        
        |> (case data.accountQuotas of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs accountQuotaEncoder "") "AccountQuotas" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






accountQuotaEncoder : AccountQuota -> List (String, String)
accountQuotaEncoder data =
    []
        
        
        |> (case data.accountQuotaName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AccountQuotaName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.used of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Used" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.max of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Max" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        














addRoleToDBClusterMessageEncoder : AddRoleToDBClusterMessage -> List (String, String)
addRoleToDBClusterMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "RoleArn" data.roleArn
        
        
        
        |> (case data.featureName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "FeatureName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






addRoleToDBInstanceMessageEncoder : AddRoleToDBInstanceMessage -> List (String, String)
addRoleToDBInstanceMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "RoleArn" data.roleArn
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "FeatureName" data.featureName
        
        






addSourceIdentifierToSubscriptionMessageEncoder : AddSourceIdentifierToSubscriptionMessage -> List (String, String)
addSourceIdentifierToSubscriptionMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionName" data.subscriptionName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceIdentifier" data.sourceIdentifier
        
        






addSourceIdentifierToSubscriptionResultEncoder : AddSourceIdentifierToSubscriptionResult -> List (String, String)
addSourceIdentifierToSubscriptionResultEncoder data =
    []
        
        
        |> (case data.eventSubscription of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs eventSubscriptionEncoder "EventSubscription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






addTagsToResourceMessageEncoder : AddTagsToResourceMessage -> List (String, String)
addTagsToResourceMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceName" data.resourceName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" data.tags
        
        










applyPendingMaintenanceActionMessageEncoder : ApplyPendingMaintenanceActionMessage -> List (String, String)
applyPendingMaintenanceActionMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceIdentifier" data.resourceIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplyAction" data.applyAction
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "OptInType" data.optInType
        
        






applyPendingMaintenanceActionResultEncoder : ApplyPendingMaintenanceActionResult -> List (String, String)
applyPendingMaintenanceActionResultEncoder data =
    []
        
        
        |> (case data.resourcePendingMaintenanceActions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs resourcePendingMaintenanceActionsEncoder "ResourcePendingMaintenanceActions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






authorizeDBSecurityGroupIngressMessageEncoder : AuthorizeDBSecurityGroupIngressMessage -> List (String, String)
authorizeDBSecurityGroupIngressMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSecurityGroupName" data.dBSecurityGroupName
        
        
        
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
        
        
        
        |> (case data.eC2SecurityGroupId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.eC2SecurityGroupOwnerId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupOwnerId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






authorizeDBSecurityGroupIngressResultEncoder : AuthorizeDBSecurityGroupIngressResult -> List (String, String)
authorizeDBSecurityGroupIngressResultEncoder data =
    []
        
        
        |> (case data.dBSecurityGroup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBSecurityGroupEncoder "DBSecurityGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






availabilityZoneEncoder : AvailabilityZone -> List (String, String)
availabilityZoneEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






availableProcessorFeatureEncoder : AvailableProcessorFeature -> List (String, String)
availableProcessorFeatureEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.allowedValues of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AllowedValues" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






backtrackDBClusterMessageEncoder : BacktrackDBClusterMessage -> List (String, String)
backtrackDBClusterMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "BacktrackTo" data.backtrackTo
        
        
        
        |> (case data.force of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Force" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.useEarliestTimeOnPointInTimeUnavailable of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "UseEarliestTimeOnPointInTimeUnavailable" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






certificateEncoder : Certificate -> List (String, String)
certificateEncoder data =
    []
        
        
        |> (case data.certificateIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CertificateIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.certificateType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CertificateType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.thumbprint of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Thumbprint" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.validFrom of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ValidFrom" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.validTill of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ValidTill" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.certificateArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CertificateArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






certificateMessageEncoder : CertificateMessage -> List (String, String)
certificateMessageEncoder data =
    []
        
        
        |> (case data.certificates of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs certificateEncoder "") "Certificates" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






characterSetEncoder : CharacterSet -> List (String, String)
characterSetEncoder data =
    []
        
        
        |> (case data.characterSetName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CharacterSetName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.characterSetDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CharacterSetDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






cloudwatchLogsExportConfigurationEncoder : CloudwatchLogsExportConfiguration -> List (String, String)
cloudwatchLogsExportConfigurationEncoder data =
    []
        
        
        |> (case data.enableLogTypes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EnableLogTypes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.disableLogTypes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "DisableLogTypes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






copyDBClusterParameterGroupMessageEncoder : CopyDBClusterParameterGroupMessage -> List (String, String)
copyDBClusterParameterGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceDBClusterParameterGroupIdentifier" data.sourceDBClusterParameterGroupIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetDBClusterParameterGroupIdentifier" data.targetDBClusterParameterGroupIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetDBClusterParameterGroupDescription" data.targetDBClusterParameterGroupDescription
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






copyDBClusterParameterGroupResultEncoder : CopyDBClusterParameterGroupResult -> List (String, String)
copyDBClusterParameterGroupResultEncoder data =
    []
        
        
        |> (case data.dBClusterParameterGroup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterParameterGroupEncoder "DBClusterParameterGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






copyDBClusterSnapshotMessageEncoder : CopyDBClusterSnapshotMessage -> List (String, String)
copyDBClusterSnapshotMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceDBClusterSnapshotIdentifier" data.sourceDBClusterSnapshotIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetDBClusterSnapshotIdentifier" data.targetDBClusterSnapshotIdentifier
        
        
        
        |> (case data.kmsKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preSignedUrl of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreSignedUrl" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.copyTags of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceRegion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceRegion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






copyDBClusterSnapshotResultEncoder : CopyDBClusterSnapshotResult -> List (String, String)
copyDBClusterSnapshotResultEncoder data =
    []
        
        
        |> (case data.dBClusterSnapshot of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterSnapshotEncoder "DBClusterSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






copyDBParameterGroupMessageEncoder : CopyDBParameterGroupMessage -> List (String, String)
copyDBParameterGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceDBParameterGroupIdentifier" data.sourceDBParameterGroupIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetDBParameterGroupIdentifier" data.targetDBParameterGroupIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetDBParameterGroupDescription" data.targetDBParameterGroupDescription
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






copyDBParameterGroupResultEncoder : CopyDBParameterGroupResult -> List (String, String)
copyDBParameterGroupResultEncoder data =
    []
        
        
        |> (case data.dBParameterGroup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBParameterGroupEncoder "DBParameterGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






copyDBSnapshotMessageEncoder : CopyDBSnapshotMessage -> List (String, String)
copyDBSnapshotMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceDBSnapshotIdentifier" data.sourceDBSnapshotIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetDBSnapshotIdentifier" data.targetDBSnapshotIdentifier
        
        
        
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
        
        
        
        |> (case data.copyTags of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preSignedUrl of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreSignedUrl" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceRegion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceRegion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






copyDBSnapshotResultEncoder : CopyDBSnapshotResult -> List (String, String)
copyDBSnapshotResultEncoder data =
    []
        
        
        |> (case data.dBSnapshot of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBSnapshotEncoder "DBSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






copyOptionGroupMessageEncoder : CopyOptionGroupMessage -> List (String, String)
copyOptionGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceOptionGroupIdentifier" data.sourceOptionGroupIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetOptionGroupIdentifier" data.targetOptionGroupIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetOptionGroupDescription" data.targetOptionGroupDescription
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






copyOptionGroupResultEncoder : CopyOptionGroupResult -> List (String, String)
copyOptionGroupResultEncoder data =
    []
        
        
        |> (case data.optionGroup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs optionGroupEncoder "OptionGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBClusterEndpointMessageEncoder : CreateDBClusterEndpointMessage -> List (String, String)
createDBClusterEndpointMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterEndpointIdentifier" data.dBClusterEndpointIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "EndpointType" data.endpointType
        
        
        
        |> (case data.staticMembers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "StaticMembers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.excludedMembers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ExcludedMembers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBClusterMessageEncoder : CreateDBClusterMessage -> List (String, String)
createDBClusterMessageEncoder data =
    []
        
        
        |> (case data.availabilityZones of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AvailabilityZones" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backupRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BackupRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.characterSetName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CharacterSetName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.databaseName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DatabaseName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        
        
        |> (case data.dBClusterParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroupIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupIds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSubnetGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Engine" data.engine
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.masterUsername of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MasterUsername" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.masterUserPassword of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MasterUserPassword" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredBackupWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredBackupWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredMaintenanceWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.replicationSourceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReplicationSourceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageEncrypted of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "StorageEncrypted" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.kmsKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preSignedUrl of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreSignedUrl" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableIAMDatabaseAuthentication of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableIAMDatabaseAuthentication" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backtrackWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BacktrackWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableCloudwatchLogsExports of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EnableCloudwatchLogsExports" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineMode of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineMode" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.scalingConfiguration of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs scalingConfigurationEncoder "ScalingConfiguration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.globalClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "GlobalClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.copyTagsToSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTagsToSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceRegion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceRegion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBClusterParameterGroupMessageEncoder : CreateDBClusterParameterGroupMessage -> List (String, String)
createDBClusterParameterGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupName" data.dBClusterParameterGroupName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupFamily" data.dBParameterGroupFamily
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Description" data.description
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBClusterParameterGroupResultEncoder : CreateDBClusterParameterGroupResult -> List (String, String)
createDBClusterParameterGroupResultEncoder data =
    []
        
        
        |> (case data.dBClusterParameterGroup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterParameterGroupEncoder "DBClusterParameterGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBClusterResultEncoder : CreateDBClusterResult -> List (String, String)
createDBClusterResultEncoder data =
    []
        
        
        |> (case data.dBCluster of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterEncoder "DBCluster" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBClusterSnapshotMessageEncoder : CreateDBClusterSnapshotMessage -> List (String, String)
createDBClusterSnapshotMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterSnapshotIdentifier" data.dBClusterSnapshotIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBClusterSnapshotResultEncoder : CreateDBClusterSnapshotResult -> List (String, String)
createDBClusterSnapshotResultEncoder data =
    []
        
        
        |> (case data.dBClusterSnapshot of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterSnapshotEncoder "DBClusterSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBInstanceMessageEncoder : CreateDBInstanceMessage -> List (String, String)
createDBInstanceMessageEncoder data =
    []
        
        
        |> (case data.dBName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        
        
        |> (case data.allocatedStorage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "AllocatedStorage" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceClass" data.dBInstanceClass
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Engine" data.engine
        
        
        
        |> (case data.masterUsername of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MasterUsername" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.masterUserPassword of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MasterUserPassword" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSecurityGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "DBSecurityGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroupIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupIds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.availabilityZone of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AvailabilityZone" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSubnetGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredMaintenanceWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backupRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BackupRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredBackupWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredBackupWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.multiAZ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.autoMinorVersionUpgrade of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoMinorVersionUpgrade" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.licenseModel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LicenseModel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iops of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Iops" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.characterSetName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CharacterSetName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.publiclyAccessible of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PubliclyAccessible" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StorageType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tdeCredentialArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TdeCredentialArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tdeCredentialPassword of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TdeCredentialPassword" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageEncrypted of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "StorageEncrypted" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.kmsKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.domain of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Domain" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.copyTagsToSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTagsToSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.monitoringInterval of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MonitoringInterval" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.monitoringRoleArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MonitoringRoleArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.domainIAMRoleName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DomainIAMRoleName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.promotionTier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PromotionTier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.timezone of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Timezone" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableIAMDatabaseAuthentication of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableIAMDatabaseAuthentication" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enablePerformanceInsights of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnablePerformanceInsights" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.performanceInsightsKMSKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PerformanceInsightsKMSKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.performanceInsightsRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PerformanceInsightsRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableCloudwatchLogsExports of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EnableCloudwatchLogsExports" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.processorFeatures of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs processorFeatureEncoder "") "ProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxAllocatedStorage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxAllocatedStorage" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBInstanceReadReplicaMessageEncoder : CreateDBInstanceReadReplicaMessage -> List (String, String)
createDBInstanceReadReplicaMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceDBInstanceIdentifier" data.sourceDBInstanceIdentifier
        
        
        
        |> (case data.dBInstanceClass of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceClass" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.availabilityZone of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AvailabilityZone" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.multiAZ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.autoMinorVersionUpgrade of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoMinorVersionUpgrade" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iops of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Iops" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.publiclyAccessible of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PubliclyAccessible" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSubnetGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroupIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupIds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StorageType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.copyTagsToSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTagsToSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.monitoringInterval of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MonitoringInterval" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.monitoringRoleArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MonitoringRoleArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.kmsKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preSignedUrl of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreSignedUrl" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableIAMDatabaseAuthentication of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableIAMDatabaseAuthentication" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enablePerformanceInsights of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnablePerformanceInsights" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.performanceInsightsKMSKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PerformanceInsightsKMSKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.performanceInsightsRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PerformanceInsightsRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableCloudwatchLogsExports of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EnableCloudwatchLogsExports" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.processorFeatures of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs processorFeatureEncoder "") "ProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.useDefaultProcessorFeatures of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "UseDefaultProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceRegion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceRegion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBInstanceReadReplicaResultEncoder : CreateDBInstanceReadReplicaResult -> List (String, String)
createDBInstanceReadReplicaResultEncoder data =
    []
        
        
        |> (case data.dBInstance of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBInstanceEncoder "DBInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBInstanceResultEncoder : CreateDBInstanceResult -> List (String, String)
createDBInstanceResultEncoder data =
    []
        
        
        |> (case data.dBInstance of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBInstanceEncoder "DBInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBParameterGroupMessageEncoder : CreateDBParameterGroupMessage -> List (String, String)
createDBParameterGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupName" data.dBParameterGroupName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupFamily" data.dBParameterGroupFamily
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Description" data.description
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBParameterGroupResultEncoder : CreateDBParameterGroupResult -> List (String, String)
createDBParameterGroupResultEncoder data =
    []
        
        
        |> (case data.dBParameterGroup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBParameterGroupEncoder "DBParameterGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBSecurityGroupMessageEncoder : CreateDBSecurityGroupMessage -> List (String, String)
createDBSecurityGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSecurityGroupName" data.dBSecurityGroupName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSecurityGroupDescription" data.dBSecurityGroupDescription
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBSecurityGroupResultEncoder : CreateDBSecurityGroupResult -> List (String, String)
createDBSecurityGroupResultEncoder data =
    []
        
        
        |> (case data.dBSecurityGroup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBSecurityGroupEncoder "DBSecurityGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBSnapshotMessageEncoder : CreateDBSnapshotMessage -> List (String, String)
createDBSnapshotMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSnapshotIdentifier" data.dBSnapshotIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBSnapshotResultEncoder : CreateDBSnapshotResult -> List (String, String)
createDBSnapshotResultEncoder data =
    []
        
        
        |> (case data.dBSnapshot of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBSnapshotEncoder "DBSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBSubnetGroupMessageEncoder : CreateDBSubnetGroupMessage -> List (String, String)
createDBSubnetGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" data.dBSubnetGroupName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupDescription" data.dBSubnetGroupDescription
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SubnetIds" data.subnetIds
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDBSubnetGroupResultEncoder : CreateDBSubnetGroupResult -> List (String, String)
createDBSubnetGroupResultEncoder data =
    []
        
        
        |> (case data.dBSubnetGroup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBSubnetGroupEncoder "DBSubnetGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createEventSubscriptionMessageEncoder : CreateEventSubscriptionMessage -> List (String, String)
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
        
        
        
        |> (case data.eventCategories of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EventCategories" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SourceIds" value
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
        
        






createEventSubscriptionResultEncoder : CreateEventSubscriptionResult -> List (String, String)
createEventSubscriptionResultEncoder data =
    []
        
        
        |> (case data.eventSubscription of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs eventSubscriptionEncoder "EventSubscription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createGlobalClusterMessageEncoder : CreateGlobalClusterMessage -> List (String, String)
createGlobalClusterMessageEncoder data =
    []
        
        
        |> (case data.globalClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "GlobalClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceDBClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceDBClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engine of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Engine" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.databaseName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DatabaseName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageEncrypted of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "StorageEncrypted" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createGlobalClusterResultEncoder : CreateGlobalClusterResult -> List (String, String)
createGlobalClusterResultEncoder data =
    []
        
        
        |> (case data.globalCluster of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs globalClusterEncoder "GlobalCluster" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createOptionGroupMessageEncoder : CreateOptionGroupMessage -> List (String, String)
createOptionGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" data.optionGroupName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "EngineName" data.engineName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "MajorEngineVersion" data.majorEngineVersion
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupDescription" data.optionGroupDescription
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createOptionGroupResultEncoder : CreateOptionGroupResult -> List (String, String)
createOptionGroupResultEncoder data =
    []
        
        
        |> (case data.optionGroup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs optionGroupEncoder "OptionGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterEncoder : DBCluster -> List (String, String)
dBClusterEncoder data =
    []
        
        
        |> (case data.allocatedStorage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "AllocatedStorage" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.availabilityZones of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AvailabilityZones" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backupRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BackupRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.characterSetName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CharacterSetName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.databaseName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DatabaseName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterParameterGroup of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSubnetGroup of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.percentProgress of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PercentProgress" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.earliestRestorableTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EarliestRestorableTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.endpoint of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Endpoint" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.readerEndpoint of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReaderEndpoint" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.customEndpoints of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "CustomEndpoints" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.multiAZ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engine of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Engine" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.latestRestorableTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LatestRestorableTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.masterUsername of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MasterUsername" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterOptionGroupMemberships of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBClusterOptionGroupStatusEncoder "") "DBClusterOptionGroupMemberships" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredBackupWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredBackupWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredMaintenanceWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.replicationSourceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReplicationSourceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.readReplicaIdentifiers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ReadReplicaIdentifiers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterMembers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBClusterMemberEncoder "") "DBClusterMembers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs vpcSecurityGroupMembershipEncoder "") "VpcSecurityGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.hostedZoneId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "HostedZoneId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageEncrypted of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "StorageEncrypted" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.kmsKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dbClusterResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DbClusterResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.associatedRoles of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBClusterRoleEncoder "") "AssociatedRoles" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iAMDatabaseAuthenticationEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IAMDatabaseAuthenticationEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.cloneGroupId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CloneGroupId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.clusterCreateTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ClusterCreateTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.earliestBacktrackTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EarliestBacktrackTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backtrackWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BacktrackWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backtrackConsumedChangeRecords of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BacktrackConsumedChangeRecords" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enabledCloudwatchLogsExports of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EnabledCloudwatchLogsExports" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.capacity of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Capacity" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineMode of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineMode" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.scalingConfigurationInfo of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs scalingConfigurationInfoEncoder "ScalingConfigurationInfo" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.httpEndpointEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "HttpEndpointEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.activityStreamMode of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs activityStreamModeToString "ActivityStreamMode" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.activityStreamStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs activityStreamStatusToString "ActivityStreamStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.activityStreamKmsKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ActivityStreamKmsKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.activityStreamKinesisStreamName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ActivityStreamKinesisStreamName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.copyTagsToSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTagsToSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.crossAccountClone of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CrossAccountClone" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterBacktrackEncoder : DBClusterBacktrack -> List (String, String)
dBClusterBacktrackEncoder data =
    []
        
        
        |> (case data.dBClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backtrackIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "BacktrackIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backtrackTo of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "BacktrackTo" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backtrackedFrom of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "BacktrackedFrom" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backtrackRequestCreationTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "BacktrackRequestCreationTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterBacktrackMessageEncoder : DBClusterBacktrackMessage -> List (String, String)
dBClusterBacktrackMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterBacktracks of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBClusterBacktrackEncoder "") "DBClusterBacktracks" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterCapacityInfoEncoder : DBClusterCapacityInfo -> List (String, String)
dBClusterCapacityInfoEncoder data =
    []
        
        
        |> (case data.dBClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.pendingCapacity of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PendingCapacity" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.currentCapacity of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "CurrentCapacity" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.secondsBeforeTimeout of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "SecondsBeforeTimeout" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.timeoutAction of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TimeoutAction" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterEndpointEncoder : DBClusterEndpoint -> List (String, String)
dBClusterEndpointEncoder data =
    []
        
        
        |> (case data.dBClusterEndpointIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterEndpointIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterEndpointResourceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterEndpointResourceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.endpoint of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Endpoint" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.endpointType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EndpointType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.customEndpointType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CustomEndpointType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.staticMembers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "StaticMembers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.excludedMembers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ExcludedMembers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterEndpointArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterEndpointArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterEndpointMessageEncoder : DBClusterEndpointMessage -> List (String, String)
dBClusterEndpointMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterEndpoints of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBClusterEndpointEncoder "") "DBClusterEndpoints" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterMemberEncoder : DBClusterMember -> List (String, String)
dBClusterMemberEncoder data =
    []
        
        
        |> (case data.dBInstanceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.isClusterWriter of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsClusterWriter" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterParameterGroupStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.promotionTier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PromotionTier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterMessageEncoder : DBClusterMessage -> List (String, String)
dBClusterMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBClusterEncoder "") "DBClusters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterOptionGroupStatusEncoder : DBClusterOptionGroupStatus -> List (String, String)
dBClusterOptionGroupStatusEncoder data =
    []
        
        
        |> (case data.dBClusterOptionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterOptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterParameterGroupEncoder : DBClusterParameterGroup -> List (String, String)
dBClusterParameterGroupEncoder data =
    []
        
        
        |> (case data.dBClusterParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBParameterGroupFamily of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupFamily" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterParameterGroupArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterParameterGroupDetailsEncoder : DBClusterParameterGroupDetails -> List (String, String)
dBClusterParameterGroupDetailsEncoder data =
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
        
        






dBClusterParameterGroupNameMessageEncoder : DBClusterParameterGroupNameMessage -> List (String, String)
dBClusterParameterGroupNameMessageEncoder data =
    []
        
        
        |> (case data.dBClusterParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterParameterGroupsMessageEncoder : DBClusterParameterGroupsMessage -> List (String, String)
dBClusterParameterGroupsMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterParameterGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBClusterParameterGroupEncoder "") "DBClusterParameterGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterRoleEncoder : DBClusterRole -> List (String, String)
dBClusterRoleEncoder data =
    []
        
        
        |> (case data.roleArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RoleArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.featureName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "FeatureName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterSnapshotEncoder : DBClusterSnapshot -> List (String, String)
dBClusterSnapshotEncoder data =
    []
        
        
        |> (case data.availabilityZones of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AvailabilityZones" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterSnapshotIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterSnapshotIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.snapshotCreateTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "SnapshotCreateTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engine of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Engine" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.allocatedStorage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "AllocatedStorage" value
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
        
        
        
        |> (case data.vpcId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VpcId" value
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
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.licenseModel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LicenseModel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.snapshotType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SnapshotType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.percentProgress of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PercentProgress" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageEncrypted of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "StorageEncrypted" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.kmsKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterSnapshotArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterSnapshotArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceDBClusterSnapshotArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceDBClusterSnapshotArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iAMDatabaseAuthenticationEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IAMDatabaseAuthenticationEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterSnapshotAttributeEncoder : DBClusterSnapshotAttribute -> List (String, String)
dBClusterSnapshotAttributeEncoder data =
    []
        
        
        |> (case data.attributeName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AttributeName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.attributeValues of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AttributeValues" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterSnapshotAttributesResultEncoder : DBClusterSnapshotAttributesResult -> List (String, String)
dBClusterSnapshotAttributesResultEncoder data =
    []
        
        
        |> (case data.dBClusterSnapshotIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterSnapshotIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterSnapshotAttributes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBClusterSnapshotAttributeEncoder "") "DBClusterSnapshotAttributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBClusterSnapshotMessageEncoder : DBClusterSnapshotMessage -> List (String, String)
dBClusterSnapshotMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterSnapshots of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBClusterSnapshotEncoder "") "DBClusterSnapshots" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBEngineVersionEncoder : DBEngineVersion -> List (String, String)
dBEngineVersionEncoder data =
    []
        
        
        |> (case data.engine of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Engine" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBParameterGroupFamily of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupFamily" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBEngineDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBEngineDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBEngineVersionDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBEngineVersionDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.defaultCharacterSet of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs characterSetEncoder "DefaultCharacterSet" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportedCharacterSets of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs characterSetEncoder "") "SupportedCharacterSets" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.validUpgradeTarget of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs upgradeTargetEncoder "") "ValidUpgradeTarget" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportedTimezones of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs timezoneEncoder "") "SupportedTimezones" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.exportableLogTypes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ExportableLogTypes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportsLogExportsToCloudwatchLogs of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SupportsLogExportsToCloudwatchLogs" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportsReadReplica of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SupportsReadReplica" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportedEngineModes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SupportedEngineModes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportedFeatureNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SupportedFeatureNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBEngineVersionMessageEncoder : DBEngineVersionMessage -> List (String, String)
dBEngineVersionMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBEngineVersions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBEngineVersionEncoder "") "DBEngineVersions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBInstanceEncoder : DBInstance -> List (String, String)
dBInstanceEncoder data =
    []
        
        
        |> (case data.dBInstanceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceClass of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceClass" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engine of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Engine" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceStatus" value
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
        
        
        
        |> (case data.allocatedStorage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "AllocatedStorage" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.instanceCreateTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "InstanceCreateTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredBackupWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredBackupWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backupRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BackupRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSecurityGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBSecurityGroupMembershipEncoder "") "DBSecurityGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs vpcSecurityGroupMembershipEncoder "") "VpcSecurityGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBParameterGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBParameterGroupStatusEncoder "") "DBParameterGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.availabilityZone of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AvailabilityZone" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSubnetGroup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBSubnetGroupEncoder "DBSubnetGroup" value
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
        
        
        
        |> (case data.latestRestorableTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LatestRestorableTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.multiAZ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.autoMinorVersionUpgrade of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoMinorVersionUpgrade" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.readReplicaSourceDBInstanceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReadReplicaSourceDBInstanceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.readReplicaDBInstanceIdentifiers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ReadReplicaDBInstanceIdentifiers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.readReplicaDBClusterIdentifiers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ReadReplicaDBClusterIdentifiers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.licenseModel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LicenseModel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iops of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Iops" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupMemberships of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs optionGroupMembershipEncoder "") "OptionGroupMemberships" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.characterSetName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CharacterSetName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.secondaryAvailabilityZone of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SecondaryAvailabilityZone" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.publiclyAccessible of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PubliclyAccessible" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.statusInfos of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBInstanceStatusInfoEncoder "") "StatusInfos" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StorageType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tdeCredentialArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TdeCredentialArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dbInstancePort of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "DbInstancePort" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageEncrypted of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "StorageEncrypted" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.kmsKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dbiResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DbiResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.cACertificateIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CACertificateIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.domainMemberships of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs domainMembershipEncoder "") "DomainMemberships" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.copyTagsToSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTagsToSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.monitoringInterval of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MonitoringInterval" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enhancedMonitoringResourceArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnhancedMonitoringResourceArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.monitoringRoleArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MonitoringRoleArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.promotionTier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PromotionTier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.timezone of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Timezone" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iAMDatabaseAuthenticationEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IAMDatabaseAuthenticationEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.performanceInsightsEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PerformanceInsightsEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.performanceInsightsKMSKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PerformanceInsightsKMSKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.performanceInsightsRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PerformanceInsightsRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enabledCloudwatchLogsExports of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EnabledCloudwatchLogsExports" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.processorFeatures of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs processorFeatureEncoder "") "ProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.associatedRoles of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBInstanceRoleEncoder "") "AssociatedRoles" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.listenerEndpoint of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs endpointEncoder "ListenerEndpoint" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxAllocatedStorage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxAllocatedStorage" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBInstanceAutomatedBackupEncoder : DBInstanceAutomatedBackup -> List (String, String)
dBInstanceAutomatedBackupEncoder data =
    []
        
        
        |> (case data.dBInstanceArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dbiResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DbiResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.region of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Region" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.restoreWindow of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs restoreWindowEncoder "RestoreWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.allocatedStorage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "AllocatedStorage" value
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
        
        
        
        |> (case data.vpcId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VpcId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.instanceCreateTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "InstanceCreateTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.masterUsername of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MasterUsername" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engine of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Engine" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.licenseModel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LicenseModel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iops of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Iops" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tdeCredentialArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TdeCredentialArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.encrypted of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Encrypted" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StorageType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.kmsKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.timezone of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Timezone" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iAMDatabaseAuthenticationEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IAMDatabaseAuthenticationEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBInstanceAutomatedBackupMessageEncoder : DBInstanceAutomatedBackupMessage -> List (String, String)
dBInstanceAutomatedBackupMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceAutomatedBackups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBInstanceAutomatedBackupEncoder "") "DBInstanceAutomatedBackups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBInstanceMessageEncoder : DBInstanceMessage -> List (String, String)
dBInstanceMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstances of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBInstanceEncoder "") "DBInstances" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBInstanceRoleEncoder : DBInstanceRole -> List (String, String)
dBInstanceRoleEncoder data =
    []
        
        
        |> (case data.roleArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RoleArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.featureName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "FeatureName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBInstanceStatusInfoEncoder : DBInstanceStatusInfo -> List (String, String)
dBInstanceStatusInfoEncoder data =
    []
        
        
        |> (case data.statusType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StatusType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.normal of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Normal" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.message of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Message" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBParameterGroupEncoder : DBParameterGroup -> List (String, String)
dBParameterGroupEncoder data =
    []
        
        
        |> (case data.dBParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBParameterGroupFamily of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupFamily" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBParameterGroupArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBParameterGroupDetailsEncoder : DBParameterGroupDetails -> List (String, String)
dBParameterGroupDetailsEncoder data =
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
        
        






dBParameterGroupNameMessageEncoder : DBParameterGroupNameMessage -> List (String, String)
dBParameterGroupNameMessageEncoder data =
    []
        
        
        |> (case data.dBParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBParameterGroupStatusEncoder : DBParameterGroupStatus -> List (String, String)
dBParameterGroupStatusEncoder data =
    []
        
        
        |> (case data.dBParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parameterApplyStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ParameterApplyStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBParameterGroupsMessageEncoder : DBParameterGroupsMessage -> List (String, String)
dBParameterGroupsMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBParameterGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBParameterGroupEncoder "") "DBParameterGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBSecurityGroupEncoder : DBSecurityGroup -> List (String, String)
dBSecurityGroupEncoder data =
    []
        
        
        |> (case data.ownerId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OwnerId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSecurityGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSecurityGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSecurityGroupDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSecurityGroupDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VpcId" value
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
        
        
        
        |> (case data.dBSecurityGroupArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSecurityGroupArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBSecurityGroupMembershipEncoder : DBSecurityGroupMembership -> List (String, String)
dBSecurityGroupMembershipEncoder data =
    []
        
        
        |> (case data.dBSecurityGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSecurityGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBSecurityGroupMessageEncoder : DBSecurityGroupMessage -> List (String, String)
dBSecurityGroupMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSecurityGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBSecurityGroupEncoder "") "DBSecurityGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBSnapshotEncoder : DBSnapshot -> List (String, String)
dBSnapshotEncoder data =
    []
        
        
        |> (case data.dBSnapshotIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSnapshotIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.snapshotCreateTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "SnapshotCreateTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engine of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Engine" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.allocatedStorage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "AllocatedStorage" value
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
        
        
        
        |> (case data.vpcId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VpcId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.instanceCreateTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "InstanceCreateTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.masterUsername of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MasterUsername" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.licenseModel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LicenseModel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.snapshotType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SnapshotType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iops of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Iops" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.percentProgress of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PercentProgress" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceRegion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceRegion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceDBSnapshotIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceDBSnapshotIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StorageType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tdeCredentialArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TdeCredentialArn" value
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
        
        
        
        |> (case data.dBSnapshotArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSnapshotArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.timezone of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Timezone" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iAMDatabaseAuthenticationEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IAMDatabaseAuthenticationEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.processorFeatures of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs processorFeatureEncoder "") "ProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dbiResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DbiResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBSnapshotAttributeEncoder : DBSnapshotAttribute -> List (String, String)
dBSnapshotAttributeEncoder data =
    []
        
        
        |> (case data.attributeName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AttributeName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.attributeValues of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AttributeValues" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBSnapshotAttributesResultEncoder : DBSnapshotAttributesResult -> List (String, String)
dBSnapshotAttributesResultEncoder data =
    []
        
        
        |> (case data.dBSnapshotIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSnapshotIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSnapshotAttributes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBSnapshotAttributeEncoder "") "DBSnapshotAttributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBSnapshotMessageEncoder : DBSnapshotMessage -> List (String, String)
dBSnapshotMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSnapshots of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBSnapshotEncoder "") "DBSnapshots" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBSubnetGroupEncoder : DBSubnetGroup -> List (String, String)
dBSubnetGroupEncoder data =
    []
        
        
        |> (case data.dBSubnetGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSubnetGroupDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupDescription" value
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
        
        
        
        |> (case data.dBSubnetGroupArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dBSubnetGroupMessageEncoder : DBSubnetGroupMessage -> List (String, String)
dBSubnetGroupMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSubnetGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBSubnetGroupEncoder "") "DBSubnetGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteDBClusterEndpointMessageEncoder : DeleteDBClusterEndpointMessage -> List (String, String)
deleteDBClusterEndpointMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterEndpointIdentifier" data.dBClusterEndpointIdentifier
        
        






deleteDBClusterMessageEncoder : DeleteDBClusterMessage -> List (String, String)
deleteDBClusterMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        
        
        |> (case data.skipFinalSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SkipFinalSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.finalDBSnapshotIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "FinalDBSnapshotIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteDBClusterParameterGroupMessageEncoder : DeleteDBClusterParameterGroupMessage -> List (String, String)
deleteDBClusterParameterGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupName" data.dBClusterParameterGroupName
        
        






deleteDBClusterResultEncoder : DeleteDBClusterResult -> List (String, String)
deleteDBClusterResultEncoder data =
    []
        
        
        |> (case data.dBCluster of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterEncoder "DBCluster" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteDBClusterSnapshotMessageEncoder : DeleteDBClusterSnapshotMessage -> List (String, String)
deleteDBClusterSnapshotMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterSnapshotIdentifier" data.dBClusterSnapshotIdentifier
        
        






deleteDBClusterSnapshotResultEncoder : DeleteDBClusterSnapshotResult -> List (String, String)
deleteDBClusterSnapshotResultEncoder data =
    []
        
        
        |> (case data.dBClusterSnapshot of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterSnapshotEncoder "DBClusterSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteDBInstanceAutomatedBackupMessageEncoder : DeleteDBInstanceAutomatedBackupMessage -> List (String, String)
deleteDBInstanceAutomatedBackupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DbiResourceId" data.dbiResourceId
        
        






deleteDBInstanceAutomatedBackupResultEncoder : DeleteDBInstanceAutomatedBackupResult -> List (String, String)
deleteDBInstanceAutomatedBackupResultEncoder data =
    []
        
        
        |> (case data.dBInstanceAutomatedBackup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBInstanceAutomatedBackupEncoder "DBInstanceAutomatedBackup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteDBInstanceMessageEncoder : DeleteDBInstanceMessage -> List (String, String)
deleteDBInstanceMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        
        
        |> (case data.skipFinalSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SkipFinalSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.finalDBSnapshotIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "FinalDBSnapshotIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deleteAutomatedBackups of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeleteAutomatedBackups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteDBInstanceResultEncoder : DeleteDBInstanceResult -> List (String, String)
deleteDBInstanceResultEncoder data =
    []
        
        
        |> (case data.dBInstance of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBInstanceEncoder "DBInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteDBParameterGroupMessageEncoder : DeleteDBParameterGroupMessage -> List (String, String)
deleteDBParameterGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupName" data.dBParameterGroupName
        
        






deleteDBSecurityGroupMessageEncoder : DeleteDBSecurityGroupMessage -> List (String, String)
deleteDBSecurityGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSecurityGroupName" data.dBSecurityGroupName
        
        






deleteDBSnapshotMessageEncoder : DeleteDBSnapshotMessage -> List (String, String)
deleteDBSnapshotMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSnapshotIdentifier" data.dBSnapshotIdentifier
        
        






deleteDBSnapshotResultEncoder : DeleteDBSnapshotResult -> List (String, String)
deleteDBSnapshotResultEncoder data =
    []
        
        
        |> (case data.dBSnapshot of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBSnapshotEncoder "DBSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteDBSubnetGroupMessageEncoder : DeleteDBSubnetGroupMessage -> List (String, String)
deleteDBSubnetGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" data.dBSubnetGroupName
        
        






deleteEventSubscriptionMessageEncoder : DeleteEventSubscriptionMessage -> List (String, String)
deleteEventSubscriptionMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionName" data.subscriptionName
        
        






deleteEventSubscriptionResultEncoder : DeleteEventSubscriptionResult -> List (String, String)
deleteEventSubscriptionResultEncoder data =
    []
        
        
        |> (case data.eventSubscription of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs eventSubscriptionEncoder "EventSubscription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteGlobalClusterMessageEncoder : DeleteGlobalClusterMessage -> List (String, String)
deleteGlobalClusterMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "GlobalClusterIdentifier" data.globalClusterIdentifier
        
        






deleteGlobalClusterResultEncoder : DeleteGlobalClusterResult -> List (String, String)
deleteGlobalClusterResultEncoder data =
    []
        
        
        |> (case data.globalCluster of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs globalClusterEncoder "GlobalCluster" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteOptionGroupMessageEncoder : DeleteOptionGroupMessage -> List (String, String)
deleteOptionGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" data.optionGroupName
        
        






describeAccountAttributesMessageEncoder : DescribeAccountAttributesMessage -> List (String, String)
describeAccountAttributesMessageEncoder data =
    []
        






describeCertificatesMessageEncoder : DescribeCertificatesMessage -> List (String, String)
describeCertificatesMessageEncoder data =
    []
        
        
        |> (case data.certificateIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CertificateIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeDBClusterBacktracksMessageEncoder : DescribeDBClusterBacktracksMessage -> List (String, String)
describeDBClusterBacktracksMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        
        
        |> (case data.backtrackIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "BacktrackIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeDBClusterEndpointsMessageEncoder : DescribeDBClusterEndpointsMessage -> List (String, String)
describeDBClusterEndpointsMessageEncoder data =
    []
        
        
        |> (case data.dBClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterEndpointIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterEndpointIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeDBClusterParameterGroupsMessageEncoder : DescribeDBClusterParameterGroupsMessage -> List (String, String)
describeDBClusterParameterGroupsMessageEncoder data =
    []
        
        
        |> (case data.dBClusterParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeDBClusterParametersMessageEncoder : DescribeDBClusterParametersMessage -> List (String, String)
describeDBClusterParametersMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupName" data.dBClusterParameterGroupName
        
        
        
        |> (case data.source of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Source" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeDBClusterSnapshotAttributesMessageEncoder : DescribeDBClusterSnapshotAttributesMessage -> List (String, String)
describeDBClusterSnapshotAttributesMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterSnapshotIdentifier" data.dBClusterSnapshotIdentifier
        
        






describeDBClusterSnapshotAttributesResultEncoder : DescribeDBClusterSnapshotAttributesResult -> List (String, String)
describeDBClusterSnapshotAttributesResultEncoder data =
    []
        
        
        |> (case data.dBClusterSnapshotAttributesResult of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterSnapshotAttributesResultEncoder "DBClusterSnapshotAttributesResult" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeDBClusterSnapshotsMessageEncoder : DescribeDBClusterSnapshotsMessage -> List (String, String)
describeDBClusterSnapshotsMessageEncoder data =
    []
        
        
        |> (case data.dBClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterSnapshotIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterSnapshotIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.snapshotType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SnapshotType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        
        
        |> (case data.includeShared of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IncludeShared" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.includePublic of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IncludePublic" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeDBClustersMessageEncoder : DescribeDBClustersMessage -> List (String, String)
describeDBClustersMessageEncoder data =
    []
        
        
        |> (case data.dBClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        
        
        |> (case data.includeShared of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IncludeShared" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeDBEngineVersionsMessageEncoder : DescribeDBEngineVersionsMessage -> List (String, String)
describeDBEngineVersionsMessageEncoder data =
    []
        
        
        |> (case data.engine of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Engine" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBParameterGroupFamily of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupFamily" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        
        
        |> (case data.defaultOnly of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DefaultOnly" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.listSupportedCharacterSets of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ListSupportedCharacterSets" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.listSupportedTimezones of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ListSupportedTimezones" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.includeAll of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IncludeAll" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeDBInstanceAutomatedBackupsMessageEncoder : DescribeDBInstanceAutomatedBackupsMessage -> List (String, String)
describeDBInstanceAutomatedBackupsMessageEncoder data =
    []
        
        
        |> (case data.dbiResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DbiResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeDBInstancesMessageEncoder : DescribeDBInstancesMessage -> List (String, String)
describeDBInstancesMessageEncoder data =
    []
        
        
        |> (case data.dBInstanceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeDBLogFilesDetailsEncoder : DescribeDBLogFilesDetails -> List (String, String)
describeDBLogFilesDetailsEncoder data =
    []
        
        
        |> (case data.logFileName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LogFileName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.lastWritten of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "LastWritten" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.size of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Size" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeDBLogFilesMessageEncoder : DescribeDBLogFilesMessage -> List (String, String)
describeDBLogFilesMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        
        
        |> (case data.filenameContains of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "FilenameContains" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.fileLastWritten of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "FileLastWritten" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.fileSize of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "FileSize" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeDBLogFilesResponseEncoder : DescribeDBLogFilesResponse -> List (String, String)
describeDBLogFilesResponseEncoder data =
    []
        
        
        |> (case data.describeDBLogFiles of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs describeDBLogFilesDetailsEncoder "") "DescribeDBLogFiles" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeDBParameterGroupsMessageEncoder : DescribeDBParameterGroupsMessage -> List (String, String)
describeDBParameterGroupsMessageEncoder data =
    []
        
        
        |> (case data.dBParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeDBParametersMessageEncoder : DescribeDBParametersMessage -> List (String, String)
describeDBParametersMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupName" data.dBParameterGroupName
        
        
        
        |> (case data.source of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Source" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeDBSecurityGroupsMessageEncoder : DescribeDBSecurityGroupsMessage -> List (String, String)
describeDBSecurityGroupsMessageEncoder data =
    []
        
        
        |> (case data.dBSecurityGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSecurityGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeDBSnapshotAttributesMessageEncoder : DescribeDBSnapshotAttributesMessage -> List (String, String)
describeDBSnapshotAttributesMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSnapshotIdentifier" data.dBSnapshotIdentifier
        
        






describeDBSnapshotAttributesResultEncoder : DescribeDBSnapshotAttributesResult -> List (String, String)
describeDBSnapshotAttributesResultEncoder data =
    []
        
        
        |> (case data.dBSnapshotAttributesResult of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBSnapshotAttributesResultEncoder "DBSnapshotAttributesResult" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeDBSnapshotsMessageEncoder : DescribeDBSnapshotsMessage -> List (String, String)
describeDBSnapshotsMessageEncoder data =
    []
        
        
        |> (case data.dBInstanceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSnapshotIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSnapshotIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.snapshotType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SnapshotType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        
        
        |> (case data.includeShared of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IncludeShared" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.includePublic of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IncludePublic" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dbiResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DbiResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeDBSubnetGroupsMessageEncoder : DescribeDBSubnetGroupsMessage -> List (String, String)
describeDBSubnetGroupsMessageEncoder data =
    []
        
        
        |> (case data.dBSubnetGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeEngineDefaultClusterParametersMessageEncoder : DescribeEngineDefaultClusterParametersMessage -> List (String, String)
describeEngineDefaultClusterParametersMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupFamily" data.dBParameterGroupFamily
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeEngineDefaultClusterParametersResultEncoder : DescribeEngineDefaultClusterParametersResult -> List (String, String)
describeEngineDefaultClusterParametersResultEncoder data =
    []
        
        
        |> (case data.engineDefaults of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs engineDefaultsEncoder "EngineDefaults" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeEngineDefaultParametersMessageEncoder : DescribeEngineDefaultParametersMessage -> List (String, String)
describeEngineDefaultParametersMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupFamily" data.dBParameterGroupFamily
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeEngineDefaultParametersResultEncoder : DescribeEngineDefaultParametersResult -> List (String, String)
describeEngineDefaultParametersResultEncoder data =
    []
        
        
        |> (case data.engineDefaults of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs engineDefaultsEncoder "EngineDefaults" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeEventCategoriesMessageEncoder : DescribeEventCategoriesMessage -> List (String, String)
describeEventCategoriesMessageEncoder data =
    []
        
        
        |> (case data.sourceType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeEventSubscriptionsMessageEncoder : DescribeEventSubscriptionsMessage -> List (String, String)
describeEventSubscriptionsMessageEncoder data =
    []
        
        
        |> (case data.subscriptionName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeEventsMessageEncoder : DescribeEventsMessage -> List (String, String)
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
        
        
        
        |> (case data.eventCategories of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EventCategories" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeGlobalClustersMessageEncoder : DescribeGlobalClustersMessage -> List (String, String)
describeGlobalClustersMessageEncoder data =
    []
        
        
        |> (case data.globalClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "GlobalClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeOptionGroupOptionsMessageEncoder : DescribeOptionGroupOptionsMessage -> List (String, String)
describeOptionGroupOptionsMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "EngineName" data.engineName
        
        
        
        |> (case data.majorEngineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MajorEngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeOptionGroupsMessageEncoder : DescribeOptionGroupsMessage -> List (String, String)
describeOptionGroupsMessageEncoder data =
    []
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        
        
        |> (case data.engineName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.majorEngineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MajorEngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeOrderableDBInstanceOptionsMessageEncoder : DescribeOrderableDBInstanceOptionsMessage -> List (String, String)
describeOrderableDBInstanceOptionsMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Engine" data.engine
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceClass of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceClass" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.licenseModel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LicenseModel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpc of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Vpc" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describePendingMaintenanceActionsMessageEncoder : DescribePendingMaintenanceActionsMessage -> List (String, String)
describePendingMaintenanceActionsMessageEncoder data =
    []
        
        
        |> (case data.resourceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ResourceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeReservedDBInstancesMessageEncoder : DescribeReservedDBInstancesMessage -> List (String, String)
describeReservedDBInstancesMessageEncoder data =
    []
        
        
        |> (case data.reservedDBInstanceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReservedDBInstanceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.reservedDBInstancesOfferingId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReservedDBInstancesOfferingId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceClass of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceClass" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.duration of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Duration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.productDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ProductDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.offeringType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OfferingType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.multiAZ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeReservedDBInstancesOfferingsMessageEncoder : DescribeReservedDBInstancesOfferingsMessage -> List (String, String)
describeReservedDBInstancesOfferingsMessageEncoder data =
    []
        
        
        |> (case data.reservedDBInstancesOfferingId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReservedDBInstancesOfferingId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceClass of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceClass" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.duration of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Duration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.productDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ProductDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.offeringType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OfferingType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.multiAZ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
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
        
        






describeSourceRegionsMessageEncoder : DescribeSourceRegionsMessage -> List (String, String)
describeSourceRegionsMessageEncoder data =
    []
        
        
        |> (case data.regionName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RegionName" value
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
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeValidDBInstanceModificationsMessageEncoder : DescribeValidDBInstanceModificationsMessage -> List (String, String)
describeValidDBInstanceModificationsMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        






describeValidDBInstanceModificationsResultEncoder : DescribeValidDBInstanceModificationsResult -> List (String, String)
describeValidDBInstanceModificationsResultEncoder data =
    []
        
        
        |> (case data.validDBInstanceModificationsMessage of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs validDBInstanceModificationsMessageEncoder "ValidDBInstanceModificationsMessage" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






domainMembershipEncoder : DomainMembership -> List (String, String)
domainMembershipEncoder data =
    []
        
        
        |> (case data.domain of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Domain" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.fQDN of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "FQDN" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iAMRoleName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "IAMRoleName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






doubleRangeEncoder : DoubleRange -> List (String, String)
doubleRangeEncoder data =
    []
        
        
        |> (case data.from of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "From" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.to of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "To" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






downloadDBLogFilePortionDetailsEncoder : DownloadDBLogFilePortionDetails -> List (String, String)
downloadDBLogFilePortionDetailsEncoder data =
    []
        
        
        |> (case data.logFileData of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LogFileData" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.additionalDataPending of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AdditionalDataPending" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






downloadDBLogFilePortionMessageEncoder : DownloadDBLogFilePortionMessage -> List (String, String)
downloadDBLogFilePortionMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LogFileName" data.logFileName
        
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.numberOfLines of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumberOfLines" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






eC2SecurityGroupEncoder : EC2SecurityGroup -> List (String, String)
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
        
        
        
        |> (case data.eC2SecurityGroupId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.eC2SecurityGroupOwnerId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupOwnerId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






endpointEncoder : Endpoint -> List (String, String)
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
        
        
        
        |> (case data.hostedZoneId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "HostedZoneId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






engineDefaultsEncoder : EngineDefaults -> List (String, String)
engineDefaultsEncoder data =
    []
        
        
        |> (case data.dBParameterGroupFamily of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupFamily" value
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
        
        






eventEncoder : Event -> List (String, String)
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
        
        
        
        |> (case data.date of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Date" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






eventCategoriesMapEncoder : EventCategoriesMap -> List (String, String)
eventCategoriesMapEncoder data =
    []
        
        
        |> (case data.sourceType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.eventCategories of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EventCategories" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






eventCategoriesMessageEncoder : EventCategoriesMessage -> List (String, String)
eventCategoriesMessageEncoder data =
    []
        
        
        |> (case data.eventCategoriesMapList of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs eventCategoriesMapEncoder "") "EventCategoriesMapList" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






eventSubscriptionEncoder : EventSubscription -> List (String, String)
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
                AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionCreationTime" value
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
        
        
        
        |> (case data.enabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.eventSubscriptionArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EventSubscriptionArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






eventSubscriptionsMessageEncoder : EventSubscriptionsMessage -> List (String, String)
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
        
        






eventsMessageEncoder : EventsMessage -> List (String, String)
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
        
        






failoverDBClusterMessageEncoder : FailoverDBClusterMessage -> List (String, String)
failoverDBClusterMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        
        
        |> (case data.targetDBInstanceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TargetDBInstanceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






failoverDBClusterResultEncoder : FailoverDBClusterResult -> List (String, String)
failoverDBClusterResultEncoder data =
    []
        
        
        |> (case data.dBCluster of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterEncoder "DBCluster" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






filterEncoder : Filter -> List (String, String)
filterEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Name" data.name
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Values" data.values
        
        






globalClusterEncoder : GlobalCluster -> List (String, String)
globalClusterEncoder data =
    []
        
        
        |> (case data.globalClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "GlobalClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.globalClusterResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "GlobalClusterResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.globalClusterArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "GlobalClusterArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engine of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Engine" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.databaseName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DatabaseName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageEncrypted of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "StorageEncrypted" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.globalClusterMembers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs globalClusterMemberEncoder "") "GlobalClusterMembers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






globalClusterMemberEncoder : GlobalClusterMember -> List (String, String)
globalClusterMemberEncoder data =
    []
        
        
        |> (case data.dBClusterArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.readers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Readers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.isWriter of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsWriter" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






globalClustersMessageEncoder : GlobalClustersMessage -> List (String, String)
globalClustersMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.globalClusters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs globalClusterEncoder "") "GlobalClusters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






iPRangeEncoder : IPRange -> List (String, String)
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
        
        






listTagsForResourceMessageEncoder : ListTagsForResourceMessage -> List (String, String)
listTagsForResourceMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceName" data.resourceName
        
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






minimumEngineVersionPerAllowedValueEncoder : MinimumEngineVersionPerAllowedValue -> List (String, String)
minimumEngineVersionPerAllowedValueEncoder data =
    []
        
        
        |> (case data.allowedValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AllowedValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.minimumEngineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MinimumEngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyCurrentDBClusterCapacityMessageEncoder : ModifyCurrentDBClusterCapacityMessage -> List (String, String)
modifyCurrentDBClusterCapacityMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        
        
        |> (case data.capacity of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Capacity" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.secondsBeforeTimeout of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "SecondsBeforeTimeout" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.timeoutAction of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TimeoutAction" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyDBClusterEndpointMessageEncoder : ModifyDBClusterEndpointMessage -> List (String, String)
modifyDBClusterEndpointMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterEndpointIdentifier" data.dBClusterEndpointIdentifier
        
        
        
        |> (case data.endpointType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EndpointType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.staticMembers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "StaticMembers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.excludedMembers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ExcludedMembers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyDBClusterMessageEncoder : ModifyDBClusterMessage -> List (String, String)
modifyDBClusterMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        
        
        |> (case data.newDBClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NewDBClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.applyImmediately of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ApplyImmediately" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backupRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BackupRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroupIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupIds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.masterUserPassword of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MasterUserPassword" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredBackupWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredBackupWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredMaintenanceWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableIAMDatabaseAuthentication of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableIAMDatabaseAuthentication" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backtrackWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BacktrackWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.cloudwatchLogsExportConfiguration of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs cloudwatchLogsExportConfigurationEncoder "CloudwatchLogsExportConfiguration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.allowMajorVersionUpgrade of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AllowMajorVersionUpgrade" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.scalingConfiguration of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs scalingConfigurationEncoder "ScalingConfiguration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableHttpEndpoint of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableHttpEndpoint" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.copyTagsToSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTagsToSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyDBClusterParameterGroupMessageEncoder : ModifyDBClusterParameterGroupMessage -> List (String, String)
modifyDBClusterParameterGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupName" data.dBClusterParameterGroupName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" data.parameters
        
        






modifyDBClusterResultEncoder : ModifyDBClusterResult -> List (String, String)
modifyDBClusterResultEncoder data =
    []
        
        
        |> (case data.dBCluster of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterEncoder "DBCluster" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyDBClusterSnapshotAttributeMessageEncoder : ModifyDBClusterSnapshotAttributeMessage -> List (String, String)
modifyDBClusterSnapshotAttributeMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterSnapshotIdentifier" data.dBClusterSnapshotIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "AttributeName" data.attributeName
        
        
        
        |> (case data.valuesToAdd of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ValuesToAdd" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.valuesToRemove of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ValuesToRemove" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyDBClusterSnapshotAttributeResultEncoder : ModifyDBClusterSnapshotAttributeResult -> List (String, String)
modifyDBClusterSnapshotAttributeResultEncoder data =
    []
        
        
        |> (case data.dBClusterSnapshotAttributesResult of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterSnapshotAttributesResultEncoder "DBClusterSnapshotAttributesResult" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyDBInstanceMessageEncoder : ModifyDBInstanceMessage -> List (String, String)
modifyDBInstanceMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        
        
        |> (case data.allocatedStorage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "AllocatedStorage" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceClass of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceClass" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSubnetGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSecurityGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "DBSecurityGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroupIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupIds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.applyImmediately of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ApplyImmediately" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.masterUserPassword of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MasterUserPassword" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backupRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BackupRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredBackupWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredBackupWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredMaintenanceWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.multiAZ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.allowMajorVersionUpgrade of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AllowMajorVersionUpgrade" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.autoMinorVersionUpgrade of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoMinorVersionUpgrade" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.licenseModel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LicenseModel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iops of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Iops" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.newDBInstanceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NewDBInstanceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StorageType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tdeCredentialArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TdeCredentialArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tdeCredentialPassword of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TdeCredentialPassword" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.cACertificateIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CACertificateIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.domain of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Domain" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.copyTagsToSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTagsToSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.monitoringInterval of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MonitoringInterval" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBPortNumber of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "DBPortNumber" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.publiclyAccessible of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PubliclyAccessible" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.monitoringRoleArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MonitoringRoleArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.domainIAMRoleName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DomainIAMRoleName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.promotionTier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PromotionTier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableIAMDatabaseAuthentication of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableIAMDatabaseAuthentication" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enablePerformanceInsights of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnablePerformanceInsights" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.performanceInsightsKMSKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PerformanceInsightsKMSKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.performanceInsightsRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PerformanceInsightsRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.cloudwatchLogsExportConfiguration of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs cloudwatchLogsExportConfigurationEncoder "CloudwatchLogsExportConfiguration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.processorFeatures of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs processorFeatureEncoder "") "ProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.useDefaultProcessorFeatures of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "UseDefaultProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxAllocatedStorage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxAllocatedStorage" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyDBInstanceResultEncoder : ModifyDBInstanceResult -> List (String, String)
modifyDBInstanceResultEncoder data =
    []
        
        
        |> (case data.dBInstance of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBInstanceEncoder "DBInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyDBParameterGroupMessageEncoder : ModifyDBParameterGroupMessage -> List (String, String)
modifyDBParameterGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupName" data.dBParameterGroupName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" data.parameters
        
        






modifyDBSnapshotAttributeMessageEncoder : ModifyDBSnapshotAttributeMessage -> List (String, String)
modifyDBSnapshotAttributeMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSnapshotIdentifier" data.dBSnapshotIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "AttributeName" data.attributeName
        
        
        
        |> (case data.valuesToAdd of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ValuesToAdd" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.valuesToRemove of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ValuesToRemove" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyDBSnapshotAttributeResultEncoder : ModifyDBSnapshotAttributeResult -> List (String, String)
modifyDBSnapshotAttributeResultEncoder data =
    []
        
        
        |> (case data.dBSnapshotAttributesResult of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBSnapshotAttributesResultEncoder "DBSnapshotAttributesResult" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyDBSnapshotMessageEncoder : ModifyDBSnapshotMessage -> List (String, String)
modifyDBSnapshotMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSnapshotIdentifier" data.dBSnapshotIdentifier
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyDBSnapshotResultEncoder : ModifyDBSnapshotResult -> List (String, String)
modifyDBSnapshotResultEncoder data =
    []
        
        
        |> (case data.dBSnapshot of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBSnapshotEncoder "DBSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyDBSubnetGroupMessageEncoder : ModifyDBSubnetGroupMessage -> List (String, String)
modifyDBSubnetGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" data.dBSubnetGroupName
        
        
        
        |> (case data.dBSubnetGroupDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SubnetIds" data.subnetIds
        
        






modifyDBSubnetGroupResultEncoder : ModifyDBSubnetGroupResult -> List (String, String)
modifyDBSubnetGroupResultEncoder data =
    []
        
        
        |> (case data.dBSubnetGroup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBSubnetGroupEncoder "DBSubnetGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyEventSubscriptionMessageEncoder : ModifyEventSubscriptionMessage -> List (String, String)
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
        
        
        
        |> (case data.eventCategories of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EventCategories" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyEventSubscriptionResultEncoder : ModifyEventSubscriptionResult -> List (String, String)
modifyEventSubscriptionResultEncoder data =
    []
        
        
        |> (case data.eventSubscription of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs eventSubscriptionEncoder "EventSubscription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyGlobalClusterMessageEncoder : ModifyGlobalClusterMessage -> List (String, String)
modifyGlobalClusterMessageEncoder data =
    []
        
        
        |> (case data.globalClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "GlobalClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.newGlobalClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NewGlobalClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyGlobalClusterResultEncoder : ModifyGlobalClusterResult -> List (String, String)
modifyGlobalClusterResultEncoder data =
    []
        
        
        |> (case data.globalCluster of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs globalClusterEncoder "GlobalCluster" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyOptionGroupMessageEncoder : ModifyOptionGroupMessage -> List (String, String)
modifyOptionGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" data.optionGroupName
        
        
        
        |> (case data.optionsToInclude of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs optionConfigurationEncoder "") "OptionsToInclude" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionsToRemove of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "OptionsToRemove" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.applyImmediately of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ApplyImmediately" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyOptionGroupResultEncoder : ModifyOptionGroupResult -> List (String, String)
modifyOptionGroupResultEncoder data =
    []
        
        
        |> (case data.optionGroup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs optionGroupEncoder "OptionGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






optionEncoder : Option -> List (String, String)
optionEncoder data =
    []
        
        
        |> (case data.optionName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.persistent of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Persistent" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.permanent of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Permanent" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionSettings of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs optionSettingEncoder "") "OptionSettings" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSecurityGroupMemberships of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dBSecurityGroupMembershipEncoder "") "DBSecurityGroupMemberships" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroupMemberships of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs vpcSecurityGroupMembershipEncoder "") "VpcSecurityGroupMemberships" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






optionConfigurationEncoder : OptionConfiguration -> List (String, String)
optionConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "OptionName" data.optionName
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSecurityGroupMemberships of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "DBSecurityGroupMemberships" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroupMemberships of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupMemberships" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionSettings of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs optionSettingEncoder "") "OptionSettings" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






optionGroupEncoder : OptionGroup -> List (String, String)
optionGroupEncoder data =
    []
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.majorEngineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MajorEngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.options of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs optionEncoder "") "Options" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.allowsVpcAndNonVpcInstanceMemberships of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AllowsVpcAndNonVpcInstanceMemberships" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VpcId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






optionGroupMembershipEncoder : OptionGroupMembership -> List (String, String)
optionGroupMembershipEncoder data =
    []
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






optionGroupOptionEncoder : OptionGroupOption -> List (String, String)
optionGroupOptionEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.majorEngineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MajorEngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.minimumRequiredMinorEngineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MinimumRequiredMinorEngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.portRequired of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PortRequired" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.defaultPort of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "DefaultPort" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionsDependedOn of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "OptionsDependedOn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionsConflictsWith of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "OptionsConflictsWith" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.persistent of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Persistent" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.permanent of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Permanent" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.requiresAutoMinorEngineVersionUpgrade of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "RequiresAutoMinorEngineVersionUpgrade" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcOnly of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "VpcOnly" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportsOptionVersionDowngrade of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SupportsOptionVersionDowngrade" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupOptionSettings of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs optionGroupOptionSettingEncoder "") "OptionGroupOptionSettings" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupOptionVersions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs optionVersionEncoder "") "OptionGroupOptionVersions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






optionGroupOptionSettingEncoder : OptionGroupOptionSetting -> List (String, String)
optionGroupOptionSettingEncoder data =
    []
        
        
        |> (case data.settingName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SettingName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.settingDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SettingDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.applyType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplyType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.allowedValues of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AllowedValues" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.isModifiable of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsModifiable" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.isRequired of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsRequired" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.minimumEngineVersionPerAllowedValue of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs minimumEngineVersionPerAllowedValueEncoder "") "MinimumEngineVersionPerAllowedValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






optionGroupOptionsMessageEncoder : OptionGroupOptionsMessage -> List (String, String)
optionGroupOptionsMessageEncoder data =
    []
        
        
        |> (case data.optionGroupOptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs optionGroupOptionEncoder "") "OptionGroupOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






optionGroupsEncoder : OptionGroups -> List (String, String)
optionGroupsEncoder data =
    []
        
        
        |> (case data.optionGroupsList of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs optionGroupEncoder "") "OptionGroupsList" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






optionSettingEncoder : OptionSetting -> List (String, String)
optionSettingEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.value of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Value" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.applyType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplyType" value
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
        
        
        
        |> (case data.isModifiable of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsModifiable" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.isCollection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsCollection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






optionVersionEncoder : OptionVersion -> List (String, String)
optionVersionEncoder data =
    []
        
        
        |> (case data.version of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Version" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.isDefault of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsDefault" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






orderableDBInstanceOptionEncoder : OrderableDBInstanceOption -> List (String, String)
orderableDBInstanceOptionEncoder data =
    []
        
        
        |> (case data.engine of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Engine" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceClass of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceClass" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.licenseModel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LicenseModel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.availabilityZones of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs availabilityZoneEncoder "") "AvailabilityZones" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.multiAZCapable of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZCapable" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.readReplicaCapable of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReadReplicaCapable" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpc of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Vpc" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportsStorageEncryption of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SupportsStorageEncryption" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StorageType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportsIops of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SupportsIops" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportsEnhancedMonitoring of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SupportsEnhancedMonitoring" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportsIAMDatabaseAuthentication of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SupportsIAMDatabaseAuthentication" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportsPerformanceInsights of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SupportsPerformanceInsights" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.minStorageSize of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinStorageSize" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxStorageSize of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxStorageSize" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.minIopsPerDbInstance of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinIopsPerDbInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxIopsPerDbInstance of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxIopsPerDbInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.minIopsPerGib of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "MinIopsPerGib" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxIopsPerGib of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "MaxIopsPerGib" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.availableProcessorFeatures of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs availableProcessorFeatureEncoder "") "AvailableProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportedEngineModes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SupportedEngineModes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportsStorageAutoscaling of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SupportsStorageAutoscaling" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






orderableDBInstanceOptionsMessageEncoder : OrderableDBInstanceOptionsMessage -> List (String, String)
orderableDBInstanceOptionsMessageEncoder data =
    []
        
        
        |> (case data.orderableDBInstanceOptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs orderableDBInstanceOptionEncoder "") "OrderableDBInstanceOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






parameterEncoder : Parameter -> List (String, String)
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
        
        
        
        |> (case data.applyType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplyType" value
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
        
        
        
        |> (case data.applyMethod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs applyMethodToString "ApplyMethod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportedEngineModes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SupportedEngineModes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






pendingCloudwatchLogsExportsEncoder : PendingCloudwatchLogsExports -> List (String, String)
pendingCloudwatchLogsExportsEncoder data =
    []
        
        
        |> (case data.logTypesToEnable of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LogTypesToEnable" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.logTypesToDisable of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LogTypesToDisable" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






pendingMaintenanceActionEncoder : PendingMaintenanceAction -> List (String, String)
pendingMaintenanceActionEncoder data =
    []
        
        
        |> (case data.action of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Action" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.autoAppliedAfterDate of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "AutoAppliedAfterDate" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.forcedApplyDate of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ForcedApplyDate" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optInStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptInStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.currentApplyDate of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CurrentApplyDate" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






pendingMaintenanceActionsMessageEncoder : PendingMaintenanceActionsMessage -> List (String, String)
pendingMaintenanceActionsMessageEncoder data =
    []
        
        
        |> (case data.pendingMaintenanceActions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs resourcePendingMaintenanceActionsEncoder "") "PendingMaintenanceActions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






pendingModifiedValuesEncoder : PendingModifiedValues -> List (String, String)
pendingModifiedValuesEncoder data =
    []
        
        
        |> (case data.dBInstanceClass of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceClass" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.allocatedStorage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "AllocatedStorage" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.masterUserPassword of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MasterUserPassword" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backupRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BackupRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.multiAZ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.licenseModel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LicenseModel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iops of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Iops" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StorageType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.cACertificateIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CACertificateIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSubnetGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.pendingCloudwatchLogsExports of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs pendingCloudwatchLogsExportsEncoder "PendingCloudwatchLogsExports" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.processorFeatures of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs processorFeatureEncoder "") "ProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






processorFeatureEncoder : ProcessorFeature -> List (String, String)
processorFeatureEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.value of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Value" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






promoteReadReplicaDBClusterMessageEncoder : PromoteReadReplicaDBClusterMessage -> List (String, String)
promoteReadReplicaDBClusterMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        






promoteReadReplicaDBClusterResultEncoder : PromoteReadReplicaDBClusterResult -> List (String, String)
promoteReadReplicaDBClusterResultEncoder data =
    []
        
        
        |> (case data.dBCluster of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterEncoder "DBCluster" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






promoteReadReplicaMessageEncoder : PromoteReadReplicaMessage -> List (String, String)
promoteReadReplicaMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        
        
        |> (case data.backupRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BackupRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredBackupWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredBackupWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






promoteReadReplicaResultEncoder : PromoteReadReplicaResult -> List (String, String)
promoteReadReplicaResultEncoder data =
    []
        
        
        |> (case data.dBInstance of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBInstanceEncoder "DBInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






purchaseReservedDBInstancesOfferingMessageEncoder : PurchaseReservedDBInstancesOfferingMessage -> List (String, String)
purchaseReservedDBInstancesOfferingMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReservedDBInstancesOfferingId" data.reservedDBInstancesOfferingId
        
        
        
        |> (case data.reservedDBInstanceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReservedDBInstanceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "DBInstanceCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






purchaseReservedDBInstancesOfferingResultEncoder : PurchaseReservedDBInstancesOfferingResult -> List (String, String)
purchaseReservedDBInstancesOfferingResultEncoder data =
    []
        
        
        |> (case data.reservedDBInstance of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs reservedDBInstanceEncoder "ReservedDBInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






rangeEncoder : Range -> List (String, String)
rangeEncoder data =
    []
        
        
        |> (case data.from of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "From" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.to of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "To" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.step of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Step" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






rebootDBInstanceMessageEncoder : RebootDBInstanceMessage -> List (String, String)
rebootDBInstanceMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        
        
        |> (case data.forceFailover of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ForceFailover" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






rebootDBInstanceResultEncoder : RebootDBInstanceResult -> List (String, String)
rebootDBInstanceResultEncoder data =
    []
        
        
        |> (case data.dBInstance of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBInstanceEncoder "DBInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






recurringChargeEncoder : RecurringCharge -> List (String, String)
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
        
        






removeFromGlobalClusterMessageEncoder : RemoveFromGlobalClusterMessage -> List (String, String)
removeFromGlobalClusterMessageEncoder data =
    []
        
        
        |> (case data.globalClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "GlobalClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dbClusterIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DbClusterIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






removeFromGlobalClusterResultEncoder : RemoveFromGlobalClusterResult -> List (String, String)
removeFromGlobalClusterResultEncoder data =
    []
        
        
        |> (case data.globalCluster of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs globalClusterEncoder "GlobalCluster" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






removeRoleFromDBClusterMessageEncoder : RemoveRoleFromDBClusterMessage -> List (String, String)
removeRoleFromDBClusterMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "RoleArn" data.roleArn
        
        
        
        |> (case data.featureName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "FeatureName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






removeRoleFromDBInstanceMessageEncoder : RemoveRoleFromDBInstanceMessage -> List (String, String)
removeRoleFromDBInstanceMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "RoleArn" data.roleArn
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "FeatureName" data.featureName
        
        






removeSourceIdentifierFromSubscriptionMessageEncoder : RemoveSourceIdentifierFromSubscriptionMessage -> List (String, String)
removeSourceIdentifierFromSubscriptionMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SubscriptionName" data.subscriptionName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceIdentifier" data.sourceIdentifier
        
        






removeSourceIdentifierFromSubscriptionResultEncoder : RemoveSourceIdentifierFromSubscriptionResult -> List (String, String)
removeSourceIdentifierFromSubscriptionResultEncoder data =
    []
        
        
        |> (case data.eventSubscription of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs eventSubscriptionEncoder "EventSubscription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






removeTagsFromResourceMessageEncoder : RemoveTagsFromResourceMessage -> List (String, String)
removeTagsFromResourceMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceName" data.resourceName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" data.tagKeys
        
        






reservedDBInstanceEncoder : ReservedDBInstance -> List (String, String)
reservedDBInstanceEncoder data =
    []
        
        
        |> (case data.reservedDBInstanceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReservedDBInstanceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.reservedDBInstancesOfferingId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReservedDBInstancesOfferingId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceClass of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceClass" value
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
        
        
        
        |> (case data.dBInstanceCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "DBInstanceCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.productDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ProductDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.offeringType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OfferingType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.multiAZ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.state of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "State" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.recurringCharges of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs recurringChargeEncoder "") "RecurringCharges" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.reservedDBInstanceArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReservedDBInstanceArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






reservedDBInstanceMessageEncoder : ReservedDBInstanceMessage -> List (String, String)
reservedDBInstanceMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.reservedDBInstances of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs reservedDBInstanceEncoder "") "ReservedDBInstances" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






reservedDBInstancesOfferingEncoder : ReservedDBInstancesOffering -> List (String, String)
reservedDBInstancesOfferingEncoder data =
    []
        
        
        |> (case data.reservedDBInstancesOfferingId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReservedDBInstancesOfferingId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceClass of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceClass" value
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
        
        
        
        |> (case data.productDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ProductDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.offeringType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OfferingType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.multiAZ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.recurringCharges of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs recurringChargeEncoder "") "RecurringCharges" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






reservedDBInstancesOfferingMessageEncoder : ReservedDBInstancesOfferingMessage -> List (String, String)
reservedDBInstancesOfferingMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.reservedDBInstancesOfferings of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs reservedDBInstancesOfferingEncoder "") "ReservedDBInstancesOfferings" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






resetDBClusterParameterGroupMessageEncoder : ResetDBClusterParameterGroupMessage -> List (String, String)
resetDBClusterParameterGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupName" data.dBClusterParameterGroupName
        
        
        
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
        
        






resetDBParameterGroupMessageEncoder : ResetDBParameterGroupMessage -> List (String, String)
resetDBParameterGroupMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupName" data.dBParameterGroupName
        
        
        
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
        
        






resourcePendingMaintenanceActionsEncoder : ResourcePendingMaintenanceActions -> List (String, String)
resourcePendingMaintenanceActionsEncoder data =
    []
        
        
        |> (case data.resourceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ResourceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.pendingMaintenanceActionDetails of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs pendingMaintenanceActionEncoder "") "PendingMaintenanceActionDetails" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






restoreDBClusterFromS3MessageEncoder : RestoreDBClusterFromS3Message -> List (String, String)
restoreDBClusterFromS3MessageEncoder data =
    []
        
        
        |> (case data.availabilityZones of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AvailabilityZones" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backupRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BackupRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.characterSetName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CharacterSetName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.databaseName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DatabaseName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        
        
        |> (case data.dBClusterParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroupIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupIds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSubnetGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Engine" data.engine
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "MasterUsername" data.masterUsername
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "MasterUserPassword" data.masterUserPassword
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredBackupWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredBackupWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredMaintenanceWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageEncrypted of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "StorageEncrypted" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.kmsKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableIAMDatabaseAuthentication of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableIAMDatabaseAuthentication" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceEngine" data.sourceEngine
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceEngineVersion" data.sourceEngineVersion
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "S3BucketName" data.s3BucketName
        
        
        
        |> (case data.s3Prefix of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "S3Prefix" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "S3IngestionRoleArn" data.s3IngestionRoleArn
        
        
        
        |> (case data.backtrackWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BacktrackWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableCloudwatchLogsExports of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EnableCloudwatchLogsExports" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.copyTagsToSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTagsToSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






restoreDBClusterFromS3ResultEncoder : RestoreDBClusterFromS3Result -> List (String, String)
restoreDBClusterFromS3ResultEncoder data =
    []
        
        
        |> (case data.dBCluster of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterEncoder "DBCluster" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






restoreDBClusterFromSnapshotMessageEncoder : RestoreDBClusterFromSnapshotMessage -> List (String, String)
restoreDBClusterFromSnapshotMessageEncoder data =
    []
        
        
        |> (case data.availabilityZones of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AvailabilityZones" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SnapshotIdentifier" data.snapshotIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Engine" data.engine
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSubnetGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.databaseName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DatabaseName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroupIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupIds" value
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
        
        
        
        |> (case data.enableIAMDatabaseAuthentication of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableIAMDatabaseAuthentication" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backtrackWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BacktrackWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableCloudwatchLogsExports of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EnableCloudwatchLogsExports" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineMode of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineMode" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.scalingConfiguration of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs scalingConfigurationEncoder "ScalingConfiguration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.copyTagsToSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTagsToSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






restoreDBClusterFromSnapshotResultEncoder : RestoreDBClusterFromSnapshotResult -> List (String, String)
restoreDBClusterFromSnapshotResultEncoder data =
    []
        
        
        |> (case data.dBCluster of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterEncoder "DBCluster" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






restoreDBClusterToPointInTimeMessageEncoder : RestoreDBClusterToPointInTimeMessage -> List (String, String)
restoreDBClusterToPointInTimeMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        
        
        |> (case data.restoreType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RestoreType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceDBClusterIdentifier" data.sourceDBClusterIdentifier
        
        
        
        |> (case data.restoreToTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "RestoreToTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.useLatestRestorableTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "UseLatestRestorableTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSubnetGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroupIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupIds" value
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
        
        
        
        |> (case data.enableIAMDatabaseAuthentication of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableIAMDatabaseAuthentication" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backtrackWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BacktrackWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableCloudwatchLogsExports of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EnableCloudwatchLogsExports" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBClusterParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBClusterParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.copyTagsToSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTagsToSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






restoreDBClusterToPointInTimeResultEncoder : RestoreDBClusterToPointInTimeResult -> List (String, String)
restoreDBClusterToPointInTimeResultEncoder data =
    []
        
        
        |> (case data.dBCluster of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterEncoder "DBCluster" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






restoreDBInstanceFromDBSnapshotMessageEncoder : RestoreDBInstanceFromDBSnapshotMessage -> List (String, String)
restoreDBInstanceFromDBSnapshotMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSnapshotIdentifier" data.dBSnapshotIdentifier
        
        
        
        |> (case data.dBInstanceClass of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceClass" value
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
        
        
        
        |> (case data.dBSubnetGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.multiAZ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.publiclyAccessible of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PubliclyAccessible" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.autoMinorVersionUpgrade of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoMinorVersionUpgrade" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.licenseModel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LicenseModel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engine of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Engine" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iops of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Iops" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StorageType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tdeCredentialArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TdeCredentialArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tdeCredentialPassword of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TdeCredentialPassword" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroupIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupIds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.domain of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Domain" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.copyTagsToSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTagsToSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.domainIAMRoleName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DomainIAMRoleName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableIAMDatabaseAuthentication of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableIAMDatabaseAuthentication" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableCloudwatchLogsExports of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EnableCloudwatchLogsExports" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.processorFeatures of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs processorFeatureEncoder "") "ProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.useDefaultProcessorFeatures of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "UseDefaultProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






restoreDBInstanceFromDBSnapshotResultEncoder : RestoreDBInstanceFromDBSnapshotResult -> List (String, String)
restoreDBInstanceFromDBSnapshotResultEncoder data =
    []
        
        
        |> (case data.dBInstance of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBInstanceEncoder "DBInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






restoreDBInstanceFromS3MessageEncoder : RestoreDBInstanceFromS3Message -> List (String, String)
restoreDBInstanceFromS3MessageEncoder data =
    []
        
        
        |> (case data.dBName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        
        
        |> (case data.allocatedStorage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "AllocatedStorage" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceClass" data.dBInstanceClass
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Engine" data.engine
        
        
        
        |> (case data.masterUsername of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MasterUsername" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.masterUserPassword of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MasterUserPassword" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSecurityGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "DBSecurityGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroupIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupIds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.availabilityZone of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AvailabilityZone" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBSubnetGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredMaintenanceWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backupRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "BackupRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.preferredBackupWindow of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PreferredBackupWindow" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.multiAZ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.autoMinorVersionUpgrade of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoMinorVersionUpgrade" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.licenseModel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LicenseModel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iops of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Iops" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.publiclyAccessible of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PubliclyAccessible" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StorageType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageEncrypted of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "StorageEncrypted" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.kmsKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.copyTagsToSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTagsToSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.monitoringInterval of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MonitoringInterval" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.monitoringRoleArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MonitoringRoleArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableIAMDatabaseAuthentication of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableIAMDatabaseAuthentication" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceEngine" data.sourceEngine
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceEngineVersion" data.sourceEngineVersion
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "S3BucketName" data.s3BucketName
        
        
        
        |> (case data.s3Prefix of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "S3Prefix" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "S3IngestionRoleArn" data.s3IngestionRoleArn
        
        
        
        |> (case data.enablePerformanceInsights of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnablePerformanceInsights" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.performanceInsightsKMSKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PerformanceInsightsKMSKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.performanceInsightsRetentionPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PerformanceInsightsRetentionPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableCloudwatchLogsExports of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EnableCloudwatchLogsExports" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.processorFeatures of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs processorFeatureEncoder "") "ProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.useDefaultProcessorFeatures of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "UseDefaultProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






restoreDBInstanceFromS3ResultEncoder : RestoreDBInstanceFromS3Result -> List (String, String)
restoreDBInstanceFromS3ResultEncoder data =
    []
        
        
        |> (case data.dBInstance of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBInstanceEncoder "DBInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






restoreDBInstanceToPointInTimeMessageEncoder : RestoreDBInstanceToPointInTimeMessage -> List (String, String)
restoreDBInstanceToPointInTimeMessageEncoder data =
    []
        
        
        |> (case data.sourceDBInstanceIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceDBInstanceIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetDBInstanceIdentifier" data.targetDBInstanceIdentifier
        
        
        
        |> (case data.restoreTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "RestoreTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.useLatestRestorableTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "UseLatestRestorableTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBInstanceClass of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceClass" value
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
        
        
        
        |> (case data.dBSubnetGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSubnetGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.multiAZ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.publiclyAccessible of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PubliclyAccessible" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.autoMinorVersionUpgrade of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoMinorVersionUpgrade" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.licenseModel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LicenseModel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engine of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Engine" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iops of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Iops" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.copyTagsToSnapshot of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "CopyTagsToSnapshot" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StorageType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tdeCredentialArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TdeCredentialArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tdeCredentialPassword of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TdeCredentialPassword" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcSecurityGroupIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VpcSecurityGroupIds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.domain of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Domain" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.domainIAMRoleName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DomainIAMRoleName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableIAMDatabaseAuthentication of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableIAMDatabaseAuthentication" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableCloudwatchLogsExports of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EnableCloudwatchLogsExports" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.processorFeatures of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs processorFeatureEncoder "") "ProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.useDefaultProcessorFeatures of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "UseDefaultProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dBParameterGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBParameterGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeletionProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceDbiResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceDbiResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






restoreDBInstanceToPointInTimeResultEncoder : RestoreDBInstanceToPointInTimeResult -> List (String, String)
restoreDBInstanceToPointInTimeResultEncoder data =
    []
        
        
        |> (case data.dBInstance of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBInstanceEncoder "DBInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






restoreWindowEncoder : RestoreWindow -> List (String, String)
restoreWindowEncoder data =
    []
        
        
        |> (case data.earliestTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EarliestTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.latestTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LatestTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






revokeDBSecurityGroupIngressMessageEncoder : RevokeDBSecurityGroupIngressMessage -> List (String, String)
revokeDBSecurityGroupIngressMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBSecurityGroupName" data.dBSecurityGroupName
        
        
        
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
        
        
        
        |> (case data.eC2SecurityGroupId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.eC2SecurityGroupOwnerId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupOwnerId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






revokeDBSecurityGroupIngressResultEncoder : RevokeDBSecurityGroupIngressResult -> List (String, String)
revokeDBSecurityGroupIngressResultEncoder data =
    []
        
        
        |> (case data.dBSecurityGroup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBSecurityGroupEncoder "DBSecurityGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






scalingConfigurationEncoder : ScalingConfiguration -> List (String, String)
scalingConfigurationEncoder data =
    []
        
        
        |> (case data.minCapacity of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinCapacity" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxCapacity of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxCapacity" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.autoPause of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoPause" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.secondsUntilAutoPause of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "SecondsUntilAutoPause" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.timeoutAction of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TimeoutAction" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






scalingConfigurationInfoEncoder : ScalingConfigurationInfo -> List (String, String)
scalingConfigurationInfoEncoder data =
    []
        
        
        |> (case data.minCapacity of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinCapacity" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxCapacity of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxCapacity" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.autoPause of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoPause" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.secondsUntilAutoPause of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "SecondsUntilAutoPause" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.timeoutAction of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TimeoutAction" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






sourceRegionEncoder : SourceRegion -> List (String, String)
sourceRegionEncoder data =
    []
        
        
        |> (case data.regionName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RegionName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.endpoint of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Endpoint" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






sourceRegionMessageEncoder : SourceRegionMessage -> List (String, String)
sourceRegionMessageEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceRegions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs sourceRegionEncoder "") "SourceRegions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










startActivityStreamRequestEncoder : StartActivityStreamRequest -> List (String, String)
startActivityStreamRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceArn" data.resourceArn
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs activityStreamModeToString "Mode" data.mode
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" data.kmsKeyId
        
        
        
        |> (case data.applyImmediately of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ApplyImmediately" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






startActivityStreamResponseEncoder : StartActivityStreamResponse -> List (String, String)
startActivityStreamResponseEncoder data =
    []
        
        
        |> (case data.kmsKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.kinesisStreamName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "KinesisStreamName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs activityStreamStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.mode of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs activityStreamModeToString "Mode" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.applyImmediately of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ApplyImmediately" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






startDBClusterMessageEncoder : StartDBClusterMessage -> List (String, String)
startDBClusterMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        






startDBClusterResultEncoder : StartDBClusterResult -> List (String, String)
startDBClusterResultEncoder data =
    []
        
        
        |> (case data.dBCluster of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterEncoder "DBCluster" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






startDBInstanceMessageEncoder : StartDBInstanceMessage -> List (String, String)
startDBInstanceMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        






startDBInstanceResultEncoder : StartDBInstanceResult -> List (String, String)
startDBInstanceResultEncoder data =
    []
        
        
        |> (case data.dBInstance of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBInstanceEncoder "DBInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






stopActivityStreamRequestEncoder : StopActivityStreamRequest -> List (String, String)
stopActivityStreamRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceArn" data.resourceArn
        
        
        
        |> (case data.applyImmediately of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ApplyImmediately" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






stopActivityStreamResponseEncoder : StopActivityStreamResponse -> List (String, String)
stopActivityStreamResponseEncoder data =
    []
        
        
        |> (case data.kmsKeyId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "KmsKeyId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.kinesisStreamName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "KinesisStreamName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs activityStreamStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






stopDBClusterMessageEncoder : StopDBClusterMessage -> List (String, String)
stopDBClusterMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBClusterIdentifier" data.dBClusterIdentifier
        
        






stopDBClusterResultEncoder : StopDBClusterResult -> List (String, String)
stopDBClusterResultEncoder data =
    []
        
        
        |> (case data.dBCluster of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBClusterEncoder "DBCluster" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






stopDBInstanceMessageEncoder : StopDBInstanceMessage -> List (String, String)
stopDBInstanceMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DBInstanceIdentifier" data.dBInstanceIdentifier
        
        
        
        |> (case data.dBSnapshotIdentifier of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DBSnapshotIdentifier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






stopDBInstanceResultEncoder : StopDBInstanceResult -> List (String, String)
stopDBInstanceResultEncoder data =
    []
        
        
        |> (case data.dBInstance of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dBInstanceEncoder "DBInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






subnetEncoder : Subnet -> List (String, String)
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
        
        






tagEncoder : Tag -> List (String, String)
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
        
        






tagListMessageEncoder : TagListMessage -> List (String, String)
tagListMessageEncoder data =
    []
        
        
        |> (case data.tagList of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "TagList" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






timezoneEncoder : Timezone -> List (String, String)
timezoneEncoder data =
    []
        
        
        |> (case data.timezoneName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TimezoneName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






upgradeTargetEncoder : UpgradeTarget -> List (String, String)
upgradeTargetEncoder data =
    []
        
        
        |> (case data.engine of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Engine" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.engineVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.autoUpgrade of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoUpgrade" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.isMajorVersionUpgrade of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsMajorVersionUpgrade" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






validDBInstanceModificationsMessageEncoder : ValidDBInstanceModificationsMessage -> List (String, String)
validDBInstanceModificationsMessageEncoder data =
    []
        
        
        |> (case data.storage of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs validStorageOptionsEncoder "") "Storage" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.validProcessorFeatures of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs availableProcessorFeatureEncoder "") "ValidProcessorFeatures" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






validStorageOptionsEncoder : ValidStorageOptions -> List (String, String)
validStorageOptionsEncoder data =
    []
        
        
        |> (case data.storageType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StorageType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.storageSize of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs rangeEncoder "") "StorageSize" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.provisionedIops of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs rangeEncoder "") "ProvisionedIops" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iopsToStorageRatio of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs doubleRangeEncoder "") "IopsToStorageRatio" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportsStorageAutoscaling of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SupportsStorageAutoscaling" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






vpcSecurityGroupMembershipEncoder : VpcSecurityGroupMembership -> List (String, String)
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
        
        



