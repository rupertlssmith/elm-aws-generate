module AWS.ElastiCache exposing
    ( service
    , addTagsToResource, authorizeCacheSecurityGroupIngress, batchApplyUpdateAction, batchStopUpdateAction, copySnapshot, CopySnapshotOptions, createCacheCluster, CreateCacheClusterOptions, createCacheParameterGroup, createCacheSecurityGroup, createCacheSubnetGroup, createReplicationGroup, CreateReplicationGroupOptions, createSnapshot, CreateSnapshotOptions, decreaseReplicaCount, DecreaseReplicaCountOptions, deleteCacheCluster, DeleteCacheClusterOptions, deleteCacheParameterGroup, deleteCacheSecurityGroup, deleteCacheSubnetGroup, deleteReplicationGroup, DeleteReplicationGroupOptions, deleteSnapshot, describeCacheClusters, DescribeCacheClustersOptions, describeCacheEngineVersions, DescribeCacheEngineVersionsOptions, describeCacheParameterGroups, DescribeCacheParameterGroupsOptions, describeCacheParameters, DescribeCacheParametersOptions, describeCacheSecurityGroups, DescribeCacheSecurityGroupsOptions, describeCacheSubnetGroups, DescribeCacheSubnetGroupsOptions, describeEngineDefaultParameters, DescribeEngineDefaultParametersOptions, describeEvents, DescribeEventsOptions, describeReplicationGroups, DescribeReplicationGroupsOptions, describeReservedCacheNodes, DescribeReservedCacheNodesOptions, describeReservedCacheNodesOfferings, DescribeReservedCacheNodesOfferingsOptions, describeServiceUpdates, DescribeServiceUpdatesOptions, describeSnapshots, DescribeSnapshotsOptions, describeUpdateActions, DescribeUpdateActionsOptions, increaseReplicaCount, IncreaseReplicaCountOptions, listAllowedNodeTypeModifications, ListAllowedNodeTypeModificationsOptions, listTagsForResource, modifyCacheCluster, ModifyCacheClusterOptions, modifyCacheParameterGroup, modifyCacheSubnetGroup, ModifyCacheSubnetGroupOptions, modifyReplicationGroup, ModifyReplicationGroupOptions, modifyReplicationGroupShardConfiguration, ModifyReplicationGroupShardConfigurationOptions, purchaseReservedCacheNodesOffering, PurchaseReservedCacheNodesOfferingOptions, rebootCacheCluster, removeTagsFromResource, resetCacheParameterGroup, ResetCacheParameterGroupOptions, revokeCacheSecurityGroupIngress, testFailover
    , AllowedNodeTypeModificationsMessage, AuthorizeCacheSecurityGroupIngressResult, CacheClusterMessage, CacheEngineVersionMessage, CacheParameterGroupDetails, CacheParameterGroupNameMessage, CacheParameterGroupsMessage, CacheSecurityGroupMessage, CacheSubnetGroupMessage, CopySnapshotResult, CreateCacheClusterResult, CreateCacheParameterGroupResult, CreateCacheSecurityGroupResult, CreateCacheSubnetGroupResult, CreateReplicationGroupResult, CreateSnapshotResult, DecreaseReplicaCountResult, DeleteCacheClusterResult, DeleteReplicationGroupResult, DeleteSnapshotResult, DescribeEngineDefaultParametersResult, DescribeSnapshotsListMessage, EventsMessage, IncreaseReplicaCountResult, ModifyCacheClusterResult, ModifyCacheSubnetGroupResult, ModifyReplicationGroupResult, ModifyReplicationGroupShardConfigurationResult, PurchaseReservedCacheNodesOfferingResult, RebootCacheClusterResult, ReplicationGroupMessage, ReservedCacheNodeMessage, ReservedCacheNodesOfferingMessage, RevokeCacheSecurityGroupIngressResult, ServiceUpdatesMessage, TagListMessage, TestFailoverResult, UpdateActionResultsMessage, UpdateActionsMessage
    , AvailabilityZone, CacheCluster, CacheEngineVersion, CacheNode, CacheNodeTypeSpecificParameter, CacheNodeTypeSpecificValue, CacheParameterGroup, CacheParameterGroupStatus, CacheSecurityGroup, CacheSecurityGroupMembership, CacheSubnetGroup, ConfigureShard, EC2SecurityGroup, Endpoint, EngineDefaults, Event, NodeGroup, NodeGroupConfiguration, NodeGroupMember, NodeGroupMemberUpdateStatus, NodeGroupUpdateStatus, NodeSnapshot, NotificationConfiguration, Parameter, ParameterNameValue, PendingModifiedValues, ProcessedUpdateAction, RecurringCharge, ReplicationGroup, ReplicationGroupPendingModifiedValues, ReservedCacheNode, ReservedCacheNodesOffering, ReshardingConfiguration, ReshardingStatus, SecurityGroupMembership, ServiceUpdate, SlotMigration, Snapshot, Subnet, Tag, TimeRangeFilter, UnprocessedUpdateAction, UpdateAction
    , AZMode(..), AutomaticFailoverStatus(..), ChangeType(..), NodeUpdateInitiatedBy(..), NodeUpdateStatus(..), PendingAutomaticFailoverStatus(..), ServiceUpdateSeverity(..), ServiceUpdateStatus(..), ServiceUpdateType(..), SlaMet(..), SourceType(..), UpdateActionStatus(..)
    )

{-| <fullname>Amazon ElastiCache</fullname> <p>Amazon ElastiCache is a web service that makes it easier to set up, operate, and scale a distributed cache in the cloud.</p> <p>With ElastiCache, customers get all of the benefits of a high-performance, in-memory cache with less of the administrative burden involved in launching and managing a distributed cache. The service makes setup, scaling, and cluster failure handling much simpler than in a self-managed cache deployment.</p> <p>In addition, through integration with Amazon CloudWatch, customers get enhanced visibility into the key performance statistics associated with their cache and can receive alarms if a part of their cache runs hot.</p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [addTagsToResource](#addTagsToResource)
  - [authorizeCacheSecurityGroupIngress](#authorizeCacheSecurityGroupIngress)
  - [batchApplyUpdateAction](#batchApplyUpdateAction)
  - [batchStopUpdateAction](#batchStopUpdateAction)
  - [copySnapshot](#copySnapshot)
  - [CopySnapshotOptions](#CopySnapshotOptions)
  - [createCacheCluster](#createCacheCluster)
  - [CreateCacheClusterOptions](#CreateCacheClusterOptions)
  - [createCacheParameterGroup](#createCacheParameterGroup)
  - [createCacheSecurityGroup](#createCacheSecurityGroup)
  - [createCacheSubnetGroup](#createCacheSubnetGroup)
  - [createReplicationGroup](#createReplicationGroup)
  - [CreateReplicationGroupOptions](#CreateReplicationGroupOptions)
  - [createSnapshot](#createSnapshot)
  - [CreateSnapshotOptions](#CreateSnapshotOptions)
  - [decreaseReplicaCount](#decreaseReplicaCount)
  - [DecreaseReplicaCountOptions](#DecreaseReplicaCountOptions)
  - [deleteCacheCluster](#deleteCacheCluster)
  - [DeleteCacheClusterOptions](#DeleteCacheClusterOptions)
  - [deleteCacheParameterGroup](#deleteCacheParameterGroup)
  - [deleteCacheSecurityGroup](#deleteCacheSecurityGroup)
  - [deleteCacheSubnetGroup](#deleteCacheSubnetGroup)
  - [deleteReplicationGroup](#deleteReplicationGroup)
  - [DeleteReplicationGroupOptions](#DeleteReplicationGroupOptions)
  - [deleteSnapshot](#deleteSnapshot)
  - [describeCacheClusters](#describeCacheClusters)
  - [DescribeCacheClustersOptions](#DescribeCacheClustersOptions)
  - [describeCacheEngineVersions](#describeCacheEngineVersions)
  - [DescribeCacheEngineVersionsOptions](#DescribeCacheEngineVersionsOptions)
  - [describeCacheParameterGroups](#describeCacheParameterGroups)
  - [DescribeCacheParameterGroupsOptions](#DescribeCacheParameterGroupsOptions)
  - [describeCacheParameters](#describeCacheParameters)
  - [DescribeCacheParametersOptions](#DescribeCacheParametersOptions)
  - [describeCacheSecurityGroups](#describeCacheSecurityGroups)
  - [DescribeCacheSecurityGroupsOptions](#DescribeCacheSecurityGroupsOptions)
  - [describeCacheSubnetGroups](#describeCacheSubnetGroups)
  - [DescribeCacheSubnetGroupsOptions](#DescribeCacheSubnetGroupsOptions)
  - [describeEngineDefaultParameters](#describeEngineDefaultParameters)
  - [DescribeEngineDefaultParametersOptions](#DescribeEngineDefaultParametersOptions)
  - [describeEvents](#describeEvents)
  - [DescribeEventsOptions](#DescribeEventsOptions)
  - [describeReplicationGroups](#describeReplicationGroups)
  - [DescribeReplicationGroupsOptions](#DescribeReplicationGroupsOptions)
  - [describeReservedCacheNodes](#describeReservedCacheNodes)
  - [DescribeReservedCacheNodesOptions](#DescribeReservedCacheNodesOptions)
  - [describeReservedCacheNodesOfferings](#describeReservedCacheNodesOfferings)
  - [DescribeReservedCacheNodesOfferingsOptions](#DescribeReservedCacheNodesOfferingsOptions)
  - [describeServiceUpdates](#describeServiceUpdates)
  - [DescribeServiceUpdatesOptions](#DescribeServiceUpdatesOptions)
  - [describeSnapshots](#describeSnapshots)
  - [DescribeSnapshotsOptions](#DescribeSnapshotsOptions)
  - [describeUpdateActions](#describeUpdateActions)
  - [DescribeUpdateActionsOptions](#DescribeUpdateActionsOptions)
  - [increaseReplicaCount](#increaseReplicaCount)
  - [IncreaseReplicaCountOptions](#IncreaseReplicaCountOptions)
  - [listAllowedNodeTypeModifications](#listAllowedNodeTypeModifications)
  - [ListAllowedNodeTypeModificationsOptions](#ListAllowedNodeTypeModificationsOptions)
  - [listTagsForResource](#listTagsForResource)
  - [modifyCacheCluster](#modifyCacheCluster)
  - [ModifyCacheClusterOptions](#ModifyCacheClusterOptions)
  - [modifyCacheParameterGroup](#modifyCacheParameterGroup)
  - [modifyCacheSubnetGroup](#modifyCacheSubnetGroup)
  - [ModifyCacheSubnetGroupOptions](#ModifyCacheSubnetGroupOptions)
  - [modifyReplicationGroup](#modifyReplicationGroup)
  - [ModifyReplicationGroupOptions](#ModifyReplicationGroupOptions)
  - [modifyReplicationGroupShardConfiguration](#modifyReplicationGroupShardConfiguration)
  - [ModifyReplicationGroupShardConfigurationOptions](#ModifyReplicationGroupShardConfigurationOptions)
  - [purchaseReservedCacheNodesOffering](#purchaseReservedCacheNodesOffering)
  - [PurchaseReservedCacheNodesOfferingOptions](#PurchaseReservedCacheNodesOfferingOptions)
  - [rebootCacheCluster](#rebootCacheCluster)
  - [removeTagsFromResource](#removeTagsFromResource)
  - [resetCacheParameterGroup](#resetCacheParameterGroup)
  - [ResetCacheParameterGroupOptions](#ResetCacheParameterGroupOptions)
  - [revokeCacheSecurityGroupIngress](#revokeCacheSecurityGroupIngress)
  - [testFailover](#testFailover)

@docs addTagsToResource, authorizeCacheSecurityGroupIngress, batchApplyUpdateAction, batchStopUpdateAction, copySnapshot, CopySnapshotOptions, createCacheCluster, CreateCacheClusterOptions, createCacheParameterGroup, createCacheSecurityGroup, createCacheSubnetGroup, createReplicationGroup, CreateReplicationGroupOptions, createSnapshot, CreateSnapshotOptions, decreaseReplicaCount, DecreaseReplicaCountOptions, deleteCacheCluster, DeleteCacheClusterOptions, deleteCacheParameterGroup, deleteCacheSecurityGroup, deleteCacheSubnetGroup, deleteReplicationGroup, DeleteReplicationGroupOptions, deleteSnapshot, describeCacheClusters, DescribeCacheClustersOptions, describeCacheEngineVersions, DescribeCacheEngineVersionsOptions, describeCacheParameterGroups, DescribeCacheParameterGroupsOptions, describeCacheParameters, DescribeCacheParametersOptions, describeCacheSecurityGroups, DescribeCacheSecurityGroupsOptions, describeCacheSubnetGroups, DescribeCacheSubnetGroupsOptions, describeEngineDefaultParameters, DescribeEngineDefaultParametersOptions, describeEvents, DescribeEventsOptions, describeReplicationGroups, DescribeReplicationGroupsOptions, describeReservedCacheNodes, DescribeReservedCacheNodesOptions, describeReservedCacheNodesOfferings, DescribeReservedCacheNodesOfferingsOptions, describeServiceUpdates, DescribeServiceUpdatesOptions, describeSnapshots, DescribeSnapshotsOptions, describeUpdateActions, DescribeUpdateActionsOptions, increaseReplicaCount, IncreaseReplicaCountOptions, listAllowedNodeTypeModifications, ListAllowedNodeTypeModificationsOptions, listTagsForResource, modifyCacheCluster, ModifyCacheClusterOptions, modifyCacheParameterGroup, modifyCacheSubnetGroup, ModifyCacheSubnetGroupOptions, modifyReplicationGroup, ModifyReplicationGroupOptions, modifyReplicationGroupShardConfiguration, ModifyReplicationGroupShardConfigurationOptions, purchaseReservedCacheNodesOffering, PurchaseReservedCacheNodesOfferingOptions, rebootCacheCluster, removeTagsFromResource, resetCacheParameterGroup, ResetCacheParameterGroupOptions, revokeCacheSecurityGroupIngress, testFailover


## Responses

  - [AllowedNodeTypeModificationsMessage](#AllowedNodeTypeModificationsMessage)
  - [AuthorizeCacheSecurityGroupIngressResult](#AuthorizeCacheSecurityGroupIngressResult)
  - [CacheClusterMessage](#CacheClusterMessage)
  - [CacheEngineVersionMessage](#CacheEngineVersionMessage)
  - [CacheParameterGroupDetails](#CacheParameterGroupDetails)
  - [CacheParameterGroupNameMessage](#CacheParameterGroupNameMessage)
  - [CacheParameterGroupsMessage](#CacheParameterGroupsMessage)
  - [CacheSecurityGroupMessage](#CacheSecurityGroupMessage)
  - [CacheSubnetGroupMessage](#CacheSubnetGroupMessage)
  - [CopySnapshotResult](#CopySnapshotResult)
  - [CreateCacheClusterResult](#CreateCacheClusterResult)
  - [CreateCacheParameterGroupResult](#CreateCacheParameterGroupResult)
  - [CreateCacheSecurityGroupResult](#CreateCacheSecurityGroupResult)
  - [CreateCacheSubnetGroupResult](#CreateCacheSubnetGroupResult)
  - [CreateReplicationGroupResult](#CreateReplicationGroupResult)
  - [CreateSnapshotResult](#CreateSnapshotResult)
  - [DecreaseReplicaCountResult](#DecreaseReplicaCountResult)
  - [DeleteCacheClusterResult](#DeleteCacheClusterResult)
  - [DeleteReplicationGroupResult](#DeleteReplicationGroupResult)
  - [DeleteSnapshotResult](#DeleteSnapshotResult)
  - [DescribeEngineDefaultParametersResult](#DescribeEngineDefaultParametersResult)
  - [DescribeSnapshotsListMessage](#DescribeSnapshotsListMessage)
  - [EventsMessage](#EventsMessage)
  - [IncreaseReplicaCountResult](#IncreaseReplicaCountResult)
  - [ModifyCacheClusterResult](#ModifyCacheClusterResult)
  - [ModifyCacheSubnetGroupResult](#ModifyCacheSubnetGroupResult)
  - [ModifyReplicationGroupResult](#ModifyReplicationGroupResult)
  - [ModifyReplicationGroupShardConfigurationResult](#ModifyReplicationGroupShardConfigurationResult)
  - [PurchaseReservedCacheNodesOfferingResult](#PurchaseReservedCacheNodesOfferingResult)
  - [RebootCacheClusterResult](#RebootCacheClusterResult)
  - [ReplicationGroupMessage](#ReplicationGroupMessage)
  - [ReservedCacheNodeMessage](#ReservedCacheNodeMessage)
  - [ReservedCacheNodesOfferingMessage](#ReservedCacheNodesOfferingMessage)
  - [RevokeCacheSecurityGroupIngressResult](#RevokeCacheSecurityGroupIngressResult)
  - [ServiceUpdatesMessage](#ServiceUpdatesMessage)
  - [TagListMessage](#TagListMessage)
  - [TestFailoverResult](#TestFailoverResult)
  - [UpdateActionResultsMessage](#UpdateActionResultsMessage)
  - [UpdateActionsMessage](#UpdateActionsMessage)

@docs AllowedNodeTypeModificationsMessage, AuthorizeCacheSecurityGroupIngressResult, CacheClusterMessage, CacheEngineVersionMessage, CacheParameterGroupDetails, CacheParameterGroupNameMessage, CacheParameterGroupsMessage, CacheSecurityGroupMessage, CacheSubnetGroupMessage, CopySnapshotResult, CreateCacheClusterResult, CreateCacheParameterGroupResult, CreateCacheSecurityGroupResult, CreateCacheSubnetGroupResult, CreateReplicationGroupResult, CreateSnapshotResult, DecreaseReplicaCountResult, DeleteCacheClusterResult, DeleteReplicationGroupResult, DeleteSnapshotResult, DescribeEngineDefaultParametersResult, DescribeSnapshotsListMessage, EventsMessage, IncreaseReplicaCountResult, ModifyCacheClusterResult, ModifyCacheSubnetGroupResult, ModifyReplicationGroupResult, ModifyReplicationGroupShardConfigurationResult, PurchaseReservedCacheNodesOfferingResult, RebootCacheClusterResult, ReplicationGroupMessage, ReservedCacheNodeMessage, ReservedCacheNodesOfferingMessage, RevokeCacheSecurityGroupIngressResult, ServiceUpdatesMessage, TagListMessage, TestFailoverResult, UpdateActionResultsMessage, UpdateActionsMessage


## Records

  - [AvailabilityZone](#AvailabilityZone)
  - [CacheCluster](#CacheCluster)
  - [CacheEngineVersion](#CacheEngineVersion)
  - [CacheNode](#CacheNode)
  - [CacheNodeTypeSpecificParameter](#CacheNodeTypeSpecificParameter)
  - [CacheNodeTypeSpecificValue](#CacheNodeTypeSpecificValue)
  - [CacheParameterGroup](#CacheParameterGroup)
  - [CacheParameterGroupStatus](#CacheParameterGroupStatus)
  - [CacheSecurityGroup](#CacheSecurityGroup)
  - [CacheSecurityGroupMembership](#CacheSecurityGroupMembership)
  - [CacheSubnetGroup](#CacheSubnetGroup)
  - [ConfigureShard](#ConfigureShard)
  - [EC2SecurityGroup](#EC2SecurityGroup)
  - [Endpoint](#Endpoint)
  - [EngineDefaults](#EngineDefaults)
  - [Event](#Event)
  - [NodeGroup](#NodeGroup)
  - [NodeGroupConfiguration](#NodeGroupConfiguration)
  - [NodeGroupMember](#NodeGroupMember)
  - [NodeGroupMemberUpdateStatus](#NodeGroupMemberUpdateStatus)
  - [NodeGroupUpdateStatus](#NodeGroupUpdateStatus)
  - [NodeSnapshot](#NodeSnapshot)
  - [NotificationConfiguration](#NotificationConfiguration)
  - [Parameter](#Parameter)
  - [ParameterNameValue](#ParameterNameValue)
  - [PendingModifiedValues](#PendingModifiedValues)
  - [ProcessedUpdateAction](#ProcessedUpdateAction)
  - [RecurringCharge](#RecurringCharge)
  - [ReplicationGroup](#ReplicationGroup)
  - [ReplicationGroupPendingModifiedValues](#ReplicationGroupPendingModifiedValues)
  - [ReservedCacheNode](#ReservedCacheNode)
  - [ReservedCacheNodesOffering](#ReservedCacheNodesOffering)
  - [ReshardingConfiguration](#ReshardingConfiguration)
  - [ReshardingStatus](#ReshardingStatus)
  - [SecurityGroupMembership](#SecurityGroupMembership)
  - [ServiceUpdate](#ServiceUpdate)
  - [SlotMigration](#SlotMigration)
  - [Snapshot](#Snapshot)
  - [Subnet](#Subnet)
  - [Tag](#Tag)
  - [TimeRangeFilter](#TimeRangeFilter)
  - [UnprocessedUpdateAction](#UnprocessedUpdateAction)
  - [UpdateAction](#UpdateAction)

@docs AvailabilityZone, CacheCluster, CacheEngineVersion, CacheNode, CacheNodeTypeSpecificParameter, CacheNodeTypeSpecificValue, CacheParameterGroup, CacheParameterGroupStatus, CacheSecurityGroup, CacheSecurityGroupMembership, CacheSubnetGroup, ConfigureShard, EC2SecurityGroup, Endpoint, EngineDefaults, Event, NodeGroup, NodeGroupConfiguration, NodeGroupMember, NodeGroupMemberUpdateStatus, NodeGroupUpdateStatus, NodeSnapshot, NotificationConfiguration, Parameter, ParameterNameValue, PendingModifiedValues, ProcessedUpdateAction, RecurringCharge, ReplicationGroup, ReplicationGroupPendingModifiedValues, ReservedCacheNode, ReservedCacheNodesOffering, ReshardingConfiguration, ReshardingStatus, SecurityGroupMembership, ServiceUpdate, SlotMigration, Snapshot, Subnet, Tag, TimeRangeFilter, UnprocessedUpdateAction, UpdateAction


## Unions

  - [AZMode](#AZMode)
  - [AutomaticFailoverStatus](#AutomaticFailoverStatus)
  - [ChangeType](#ChangeType)
  - [NodeUpdateInitiatedBy](#NodeUpdateInitiatedBy)
  - [NodeUpdateStatus](#NodeUpdateStatus)
  - [PendingAutomaticFailoverStatus](#PendingAutomaticFailoverStatus)
  - [ServiceUpdateSeverity](#ServiceUpdateSeverity)
  - [ServiceUpdateStatus](#ServiceUpdateStatus)
  - [ServiceUpdateType](#ServiceUpdateType)
  - [SlaMet](#SlaMet)
  - [SourceType](#SourceType)
  - [UpdateActionStatus](#UpdateActionStatus)

@docs AZMode, AutomaticFailoverStatus, ChangeType, NodeUpdateInitiatedBy, NodeUpdateStatus, PendingAutomaticFailoverStatus, ServiceUpdateSeverity, ServiceUpdateStatus, ServiceUpdateType, SlaMet, SourceType, UpdateActionStatus

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
        "elasticache"
        "2015-02-02"
        AWS.Core.Service.query
        AWS.Core.Service.signV4
        (AWS.Core.Service.setXmlNamespace "http://elasticache.amazonaws.com/doc/2015-02-02/")



-- OPERATIONS


{-|

<p>Adds up to 50 cost allocation tags to the named resource. A cost allocation tag is a key-value pair where the key and value are case-sensitive. You can use cost allocation tags to categorize and track your AWS costs.</p> <p> When you apply tags to your ElastiCache resources, AWS generates a cost allocation report as a comma-separated value (CSV) file with your usage and costs aggregated by your tags. You can apply tags that represent business categories (such as cost centers, application names, or owners) to organize your costs across multiple services. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Tagging.html">Using Cost Allocation Tags in Amazon ElastiCache</a> in the <i>ElastiCache User Guide</i>.</p>

**Required Parameters**

  - `resourceName` **:** `String`
  - `tags` **:** `(List Tag)`

-}
addTagsToResource :
    String
    -> List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagListMessage)
addTagsToResource resourceName tags =
    let
        requestInput =
            AddTagsToResourceMessage
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
            (AWS.Core.Decode.ResultDecoder "AddTagsToResourceResult" tagListMessageDecoder)
        )


{-|

<p>Allows network ingress to a cache security group. Applications using ElastiCache must be running on Amazon EC2, and Amazon EC2 security groups are used as the authorization mechanism.</p> <note> <p>You cannot authorize ingress from an Amazon EC2 security group in one region to an ElastiCache cluster in another region.</p> </note>

**Required Parameters**

  - `cacheSecurityGroupName` **:** `String`
  - `eC2SecurityGroupName` **:** `String`
  - `eC2SecurityGroupOwnerId` **:** `String`

-}
authorizeCacheSecurityGroupIngress :
    String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AuthorizeCacheSecurityGroupIngressResult)
authorizeCacheSecurityGroupIngress cacheSecurityGroupName eC2SecurityGroupName eC2SecurityGroupOwnerId =
    let
        requestInput =
            AuthorizeCacheSecurityGroupIngressMessage
                cacheSecurityGroupName
                eC2SecurityGroupName
                eC2SecurityGroupOwnerId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "AuthorizeCacheSecurityGroupIngress")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs authorizeCacheSecurityGroupIngressMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "AuthorizeCacheSecurityGroupIngress"
            (AWS.Core.Decode.ResultDecoder "AuthorizeCacheSecurityGroupIngressResult" authorizeCacheSecurityGroupIngressResultDecoder)
        )


{-|

<p>Apply the service update. For more information on service updates and applying them, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/applying-updates.html">Applying Service Updates</a>.</p>

**Required Parameters**

  - `replicationGroupIds` **:** `(List String)`
  - `serviceUpdateName` **:** `String`

-}
batchApplyUpdateAction :
    List String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateActionResultsMessage)
batchApplyUpdateAction replicationGroupIds serviceUpdateName =
    let
        requestInput =
            BatchApplyUpdateActionMessage
                replicationGroupIds
                serviceUpdateName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "BatchApplyUpdateAction")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs batchApplyUpdateActionMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchApplyUpdateAction"
            (AWS.Core.Decode.ResultDecoder "BatchApplyUpdateActionResult" updateActionResultsMessageDecoder)
        )


{-|

<p>Stop the service update. For more information on service updates and stopping them, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/stopping-self-service-updates.html">Stopping Service Updates</a>.</p>

**Required Parameters**

  - `replicationGroupIds` **:** `(List String)`
  - `serviceUpdateName` **:** `String`

-}
batchStopUpdateAction :
    List String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateActionResultsMessage)
batchStopUpdateAction replicationGroupIds serviceUpdateName =
    let
        requestInput =
            BatchStopUpdateActionMessage
                replicationGroupIds
                serviceUpdateName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "BatchStopUpdateAction")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs batchStopUpdateActionMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchStopUpdateAction"
            (AWS.Core.Decode.ResultDecoder "BatchStopUpdateActionResult" updateActionResultsMessageDecoder)
        )


{-|

<p>Makes a copy of an existing snapshot.</p> <note> <p>This operation is valid for Redis only.</p> </note> <important> <p>Users or groups that have permissions to use the <code>CopySnapshot</code> operation can create their own Amazon S3 buckets and copy snapshots to it. To control access to your snapshots, use an IAM policy to control who has the ability to use the <code>CopySnapshot</code> operation. For more information about using IAM to control the use of ElastiCache operations, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html">Exporting Snapshots</a> and <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.html">Authentication &amp; Access Control</a>.</p> </important> <p>You could receive the following error messages.</p> <p class="title"> <b>Error Messages</b> </p> <ul> <li> <p> <b>Error Message:</b> The S3 bucket %s is outside of the region.</p> <p> <b>Solution:</b> Create an Amazon S3 bucket in the same region as your snapshot. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket">Step 1: Create an Amazon S3 Bucket</a> in the ElastiCache User Guide.</p> </li> <li> <p> <b>Error Message:</b> The S3 bucket %s does not exist.</p> <p> <b>Solution:</b> Create an Amazon S3 bucket in the same region as your snapshot. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket">Step 1: Create an Amazon S3 Bucket</a> in the ElastiCache User Guide.</p> </li> <li> <p> <b>Error Message:</b> The S3 bucket %s is not owned by the authenticated user.</p> <p> <b>Solution:</b> Create an Amazon S3 bucket in the same region as your snapshot. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket">Step 1: Create an Amazon S3 Bucket</a> in the ElastiCache User Guide.</p> </li> <li> <p> <b>Error Message:</b> The authenticated user does not have sufficient permissions to perform the desired activity.</p> <p> <b>Solution:</b> Contact your system administrator to get the needed permissions.</p> </li> <li> <p> <b>Error Message:</b> The S3 bucket %s already contains an object with key %s.</p> <p> <b>Solution:</b> Give the <code>TargetSnapshotName</code> a new and unique value. If exporting a snapshot, you could alternatively create a new Amazon S3 bucket and use this same value for <code>TargetSnapshotName</code>.</p> </li> <li> <p> <b>Error Message: </b> ElastiCache has not been granted READ permissions %s on the S3 Bucket.</p> <p> <b>Solution:</b> Add List and Read permissions on the bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the ElastiCache User Guide.</p> </li> <li> <p> <b>Error Message: </b> ElastiCache has not been granted WRITE permissions %s on the S3 Bucket.</p> <p> <b>Solution:</b> Add Upload/Delete permissions on the bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the ElastiCache User Guide.</p> </li> <li> <p> <b>Error Message: </b> ElastiCache has not been granted READ_ACP permissions %s on the S3 Bucket.</p> <p> <b>Solution:</b> Add View Permissions on the bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the ElastiCache User Guide.</p> </li> </ul>

**Required Parameters**

  - `sourceSnapshotName` **:** `String`
  - `targetSnapshotName` **:** `String`

-}
copySnapshot :
    String
    -> String
    -> (CopySnapshotOptions -> CopySnapshotOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopySnapshotResult)
copySnapshot sourceSnapshotName targetSnapshotName setOptions =
    let
        requestInput =
            CopySnapshotMessage
                sourceSnapshotName
                targetSnapshotName
                options.targetBucket

        options =
            setOptions (CopySnapshotOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CopySnapshot")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs copySnapshotMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CopySnapshot"
            (AWS.Core.Decode.ResultDecoder "CopySnapshotResult" copySnapshotResultDecoder)
        )


{-| Options for a copySnapshot request
-}
type alias CopySnapshotOptions =
    { targetBucket : Maybe String
    }


{-|

<p>Creates a cluster. All nodes in the cluster run the same protocol-compliant cache engine software, either Memcached or Redis.</p> <p>This operation is not supported for Redis (cluster mode enabled) clusters.</p>

**Required Parameters**

  - `cacheClusterId` **:** `String`

-}
createCacheCluster :
    String
    -> (CreateCacheClusterOptions -> CreateCacheClusterOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateCacheClusterResult)
createCacheCluster cacheClusterId setOptions =
    let
        requestInput =
            CreateCacheClusterMessage
                cacheClusterId
                options.replicationGroupId
                options.aZMode
                options.preferredAvailabilityZone
                options.preferredAvailabilityZones
                options.numCacheNodes
                options.cacheNodeType
                options.engine
                options.engineVersion
                options.cacheParameterGroupName
                options.cacheSubnetGroupName
                options.cacheSecurityGroupNames
                options.securityGroupIds
                options.tags
                options.snapshotArns
                options.snapshotName
                options.preferredMaintenanceWindow
                options.port_
                options.notificationTopicArn
                options.autoMinorVersionUpgrade
                options.snapshotRetentionLimit
                options.snapshotWindow
                options.authToken

        options =
            setOptions (CreateCacheClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateCacheCluster")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createCacheClusterMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateCacheCluster"
            (AWS.Core.Decode.ResultDecoder "CreateCacheClusterResult" createCacheClusterResultDecoder)
        )


{-| Options for a createCacheCluster request
-}
type alias CreateCacheClusterOptions =
    { replicationGroupId : Maybe String
    , aZMode : Maybe AZMode
    , preferredAvailabilityZone : Maybe String
    , preferredAvailabilityZones : Maybe (List String)
    , numCacheNodes : Maybe Int
    , cacheNodeType : Maybe String
    , engine : Maybe String
    , engineVersion : Maybe String
    , cacheParameterGroupName : Maybe String
    , cacheSubnetGroupName : Maybe String
    , cacheSecurityGroupNames : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    , tags : Maybe (List Tag)
    , snapshotArns : Maybe (List String)
    , snapshotName : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , port_ : Maybe Int
    , notificationTopicArn : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , authToken : Maybe String
    }


{-|

<p>Creates a new Amazon ElastiCache cache parameter group. An ElastiCache cache parameter group is a collection of parameters and their values that are applied to all of the nodes in any cluster or replication group using the CacheParameterGroup.</p> <p>A newly created CacheParameterGroup is an exact duplicate of the default parameter group for the CacheParameterGroupFamily. To customize the newly created CacheParameterGroup you can change the values of specific parameters. For more information, see:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheParameterGroup.html">ModifyCacheParameterGroup</a> in the ElastiCache API Reference.</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.html">Parameters and Parameter Groups</a> in the ElastiCache User Guide.</p> </li> </ul>

**Required Parameters**

  - `cacheParameterGroupName` **:** `String`
  - `cacheParameterGroupFamily` **:** `String`
  - `description` **:** `String`

-}
createCacheParameterGroup :
    String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateCacheParameterGroupResult)
createCacheParameterGroup cacheParameterGroupName cacheParameterGroupFamily description =
    let
        requestInput =
            CreateCacheParameterGroupMessage
                cacheParameterGroupName
                cacheParameterGroupFamily
                description
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateCacheParameterGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createCacheParameterGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateCacheParameterGroup"
            (AWS.Core.Decode.ResultDecoder "CreateCacheParameterGroupResult" createCacheParameterGroupResultDecoder)
        )


{-|

<p>Creates a new cache security group. Use a cache security group to control access to one or more clusters.</p> <p>Cache security groups are only used when you are creating a cluster outside of an Amazon Virtual Private Cloud (Amazon VPC). If you are creating a cluster inside of a VPC, use a cache subnet group instead. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html">CreateCacheSubnetGroup</a>.</p>

**Required Parameters**

  - `cacheSecurityGroupName` **:** `String`
  - `description` **:** `String`

-}
createCacheSecurityGroup :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateCacheSecurityGroupResult)
createCacheSecurityGroup cacheSecurityGroupName description =
    let
        requestInput =
            CreateCacheSecurityGroupMessage
                cacheSecurityGroupName
                description
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateCacheSecurityGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createCacheSecurityGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateCacheSecurityGroup"
            (AWS.Core.Decode.ResultDecoder "CreateCacheSecurityGroupResult" createCacheSecurityGroupResultDecoder)
        )


{-|

<p>Creates a new cache subnet group.</p> <p>Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).</p>

**Required Parameters**

  - `cacheSubnetGroupName` **:** `String`
  - `cacheSubnetGroupDescription` **:** `String`
  - `subnetIds` **:** `(List String)`

-}
createCacheSubnetGroup :
    String
    -> String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateCacheSubnetGroupResult)
createCacheSubnetGroup cacheSubnetGroupName cacheSubnetGroupDescription subnetIds =
    let
        requestInput =
            CreateCacheSubnetGroupMessage
                cacheSubnetGroupName
                cacheSubnetGroupDescription
                subnetIds
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateCacheSubnetGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createCacheSubnetGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateCacheSubnetGroup"
            (AWS.Core.Decode.ResultDecoder "CreateCacheSubnetGroupResult" createCacheSubnetGroupResultDecoder)
        )


{-|

<p>Creates a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group.</p> <p>A Redis (cluster mode disabled) replication group is a collection of clusters, where one of the clusters is a read/write primary and the others are read-only replicas. Writes to the primary are asynchronously propagated to the replicas.</p> <p>A Redis (cluster mode enabled) replication group is a collection of 1 to 90 node groups (shards). Each node group (shard) has one read/write primary node and up to 5 read-only replica nodes. Writes to the primary are asynchronously propagated to the replicas. Redis (cluster mode enabled) replication groups partition the data across node groups (shards).</p> <p>When a Redis (cluster mode disabled) replication group has been successfully created, you can add one or more read replicas to it, up to a total of 5 read replicas. You cannot alter a Redis (cluster mode enabled) replication group after it has been created. However, if you need to increase or decrease the number of node groups (console: shards), you can avail yourself of ElastiCache for Redis' enhanced backup and restore. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-restoring.html">Restoring From a Backup with Cluster Resizing</a> in the <i>ElastiCache User Guide</i>.</p> <note> <p>This operation is valid for Redis only.</p> </note>

**Required Parameters**

  - `replicationGroupId` **:** `String`
  - `replicationGroupDescription` **:** `String`

-}
createReplicationGroup :
    String
    -> String
    -> (CreateReplicationGroupOptions -> CreateReplicationGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateReplicationGroupResult)
createReplicationGroup replicationGroupId replicationGroupDescription setOptions =
    let
        requestInput =
            CreateReplicationGroupMessage
                replicationGroupId
                replicationGroupDescription
                options.primaryClusterId
                options.automaticFailoverEnabled
                options.numCacheClusters
                options.preferredCacheClusterAZs
                options.numNodeGroups
                options.replicasPerNodeGroup
                options.nodeGroupConfiguration
                options.cacheNodeType
                options.engine
                options.engineVersion
                options.cacheParameterGroupName
                options.cacheSubnetGroupName
                options.cacheSecurityGroupNames
                options.securityGroupIds
                options.tags
                options.snapshotArns
                options.snapshotName
                options.preferredMaintenanceWindow
                options.port_
                options.notificationTopicArn
                options.autoMinorVersionUpgrade
                options.snapshotRetentionLimit
                options.snapshotWindow
                options.authToken
                options.transitEncryptionEnabled
                options.atRestEncryptionEnabled

        options =
            setOptions (CreateReplicationGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateReplicationGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createReplicationGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateReplicationGroup"
            (AWS.Core.Decode.ResultDecoder "CreateReplicationGroupResult" createReplicationGroupResultDecoder)
        )


{-| Options for a createReplicationGroup request
-}
type alias CreateReplicationGroupOptions =
    { primaryClusterId : Maybe String
    , automaticFailoverEnabled : Maybe Bool
    , numCacheClusters : Maybe Int
    , preferredCacheClusterAZs : Maybe (List String)
    , numNodeGroups : Maybe Int
    , replicasPerNodeGroup : Maybe Int
    , nodeGroupConfiguration : Maybe (List NodeGroupConfiguration)
    , cacheNodeType : Maybe String
    , engine : Maybe String
    , engineVersion : Maybe String
    , cacheParameterGroupName : Maybe String
    , cacheSubnetGroupName : Maybe String
    , cacheSecurityGroupNames : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    , tags : Maybe (List Tag)
    , snapshotArns : Maybe (List String)
    , snapshotName : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , port_ : Maybe Int
    , notificationTopicArn : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , authToken : Maybe String
    , transitEncryptionEnabled : Maybe Bool
    , atRestEncryptionEnabled : Maybe Bool
    }


{-|

<p>Creates a copy of an entire cluster or replication group at a specific moment in time.</p> <note> <p>This operation is valid for Redis only.</p> </note>

**Required Parameters**

  - `snapshotName` **:** `String`

-}
createSnapshot :
    String
    -> (CreateSnapshotOptions -> CreateSnapshotOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateSnapshotResult)
createSnapshot snapshotName setOptions =
    let
        requestInput =
            CreateSnapshotMessage
                options.replicationGroupId
                options.cacheClusterId
                snapshotName

        options =
            setOptions (CreateSnapshotOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateSnapshot")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createSnapshotMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateSnapshot"
            (AWS.Core.Decode.ResultDecoder "CreateSnapshotResult" createSnapshotResultDecoder)
        )


{-| Options for a createSnapshot request
-}
type alias CreateSnapshotOptions =
    { replicationGroupId : Maybe String
    , cacheClusterId : Maybe String
    }


{-|

<p>Dynamically decreases the number of replics in a Redis (cluster mode disabled) replication group or the number of replica nodes in one or more node groups (shards) of a Redis (cluster mode enabled) replication group. This operation is performed with no cluster down time.</p>

**Required Parameters**

  - `replicationGroupId` **:** `String`
  - `applyImmediately` **:** `Bool`

-}
decreaseReplicaCount :
    String
    -> Bool
    -> (DecreaseReplicaCountOptions -> DecreaseReplicaCountOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DecreaseReplicaCountResult)
decreaseReplicaCount replicationGroupId applyImmediately setOptions =
    let
        requestInput =
            DecreaseReplicaCountMessage
                replicationGroupId
                options.newReplicaCount
                options.replicaConfiguration
                options.replicasToRemove
                applyImmediately

        options =
            setOptions (DecreaseReplicaCountOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DecreaseReplicaCount")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs decreaseReplicaCountMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DecreaseReplicaCount"
            (AWS.Core.Decode.ResultDecoder "DecreaseReplicaCountResult" decreaseReplicaCountResultDecoder)
        )


{-| Options for a decreaseReplicaCount request
-}
type alias DecreaseReplicaCountOptions =
    { newReplicaCount : Maybe Int
    , replicaConfiguration : Maybe (List ConfigureShard)
    , replicasToRemove : Maybe (List String)
    }


{-|

<p>Deletes a previously provisioned cluster. <code>DeleteCacheCluster</code> deletes all associated cache nodes, node endpoints and the cluster itself. When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the cluster; you cannot cancel or revert this operation.</p> <p>This operation is not valid for:</p> <ul> <li> <p>Redis (cluster mode enabled) clusters</p> </li> <li> <p>A cluster that is the last read replica of a replication group</p> </li> <li> <p>A node group (shard) that has Multi-AZ mode enabled</p> </li> <li> <p>A cluster from a Redis (cluster mode enabled) replication group</p> </li> <li> <p>A cluster that is not in the <code>available</code> state</p> </li> </ul>

**Required Parameters**

  - `cacheClusterId` **:** `String`

-}
deleteCacheCluster :
    String
    -> (DeleteCacheClusterOptions -> DeleteCacheClusterOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteCacheClusterResult)
deleteCacheCluster cacheClusterId setOptions =
    let
        requestInput =
            DeleteCacheClusterMessage
                cacheClusterId
                options.finalSnapshotIdentifier

        options =
            setOptions (DeleteCacheClusterOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteCacheCluster")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteCacheClusterMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteCacheCluster"
            (AWS.Core.Decode.ResultDecoder "DeleteCacheClusterResult" deleteCacheClusterResultDecoder)
        )


{-| Options for a deleteCacheCluster request
-}
type alias DeleteCacheClusterOptions =
    { finalSnapshotIdentifier : Maybe String
    }


{-|

<p>Deletes the specified cache parameter group. You cannot delete a cache parameter group if it is associated with any cache clusters.</p>

**Required Parameters**

  - `cacheParameterGroupName` **:** `String`

-}
deleteCacheParameterGroup :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteCacheParameterGroup cacheParameterGroupName =
    let
        requestInput =
            DeleteCacheParameterGroupMessage
                cacheParameterGroupName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteCacheParameterGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteCacheParameterGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteCacheParameterGroup"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes a cache security group.</p> <note> <p>You cannot delete a cache security group if it is associated with any clusters.</p> </note>

**Required Parameters**

  - `cacheSecurityGroupName` **:** `String`

-}
deleteCacheSecurityGroup :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteCacheSecurityGroup cacheSecurityGroupName =
    let
        requestInput =
            DeleteCacheSecurityGroupMessage
                cacheSecurityGroupName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteCacheSecurityGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteCacheSecurityGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteCacheSecurityGroup"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes a cache subnet group.</p> <note> <p>You cannot delete a cache subnet group if it is associated with any clusters.</p> </note>

**Required Parameters**

  - `cacheSubnetGroupName` **:** `String`

-}
deleteCacheSubnetGroup :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteCacheSubnetGroup cacheSubnetGroupName =
    let
        requestInput =
            DeleteCacheSubnetGroupMessage
                cacheSubnetGroupName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteCacheSubnetGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteCacheSubnetGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteCacheSubnetGroup"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes an existing replication group. By default, this operation deletes the entire replication group, including the primary/primaries and all of the read replicas. If the replication group has only one primary, you can optionally delete only the read replicas, while retaining the primary by setting <code>RetainPrimaryCluster=true</code>.</p> <p>When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the selected resources; you cannot cancel or revert this operation.</p> <note> <p>This operation is valid for Redis only.</p> </note>

**Required Parameters**

  - `replicationGroupId` **:** `String`

-}
deleteReplicationGroup :
    String
    -> (DeleteReplicationGroupOptions -> DeleteReplicationGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteReplicationGroupResult)
deleteReplicationGroup replicationGroupId setOptions =
    let
        requestInput =
            DeleteReplicationGroupMessage
                replicationGroupId
                options.retainPrimaryCluster
                options.finalSnapshotIdentifier

        options =
            setOptions (DeleteReplicationGroupOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteReplicationGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteReplicationGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteReplicationGroup"
            (AWS.Core.Decode.ResultDecoder "DeleteReplicationGroupResult" deleteReplicationGroupResultDecoder)
        )


{-| Options for a deleteReplicationGroup request
-}
type alias DeleteReplicationGroupOptions =
    { retainPrimaryCluster : Maybe Bool
    , finalSnapshotIdentifier : Maybe String
    }


{-|

<p>Deletes an existing snapshot. When you receive a successful response from this operation, ElastiCache immediately begins deleting the snapshot; you cannot cancel or revert this operation.</p> <note> <p>This operation is valid for Redis only.</p> </note>

**Required Parameters**

  - `snapshotName` **:** `String`

-}
deleteSnapshot :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteSnapshotResult)
deleteSnapshot snapshotName =
    let
        requestInput =
            DeleteSnapshotMessage
                snapshotName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteSnapshot")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteSnapshotMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteSnapshot"
            (AWS.Core.Decode.ResultDecoder "DeleteSnapshotResult" deleteSnapshotResultDecoder)
        )


{-|

<p>Returns information about all provisioned clusters if no cluster identifier is specified, or about a specific cache cluster if a cluster identifier is supplied.</p> <p>By default, abbreviated information about the clusters is returned. You can use the optional <i>ShowCacheNodeInfo</i> flag to retrieve detailed information about the cache nodes associated with the clusters. These details include the DNS address and port for the cache node endpoint.</p> <p>If the cluster is in the <i>creating</i> state, only cluster-level information is displayed until all of the nodes are successfully provisioned.</p> <p>If the cluster is in the <i>deleting</i> state, only cluster-level information is displayed.</p> <p>If cache nodes are currently being added to the cluster, node endpoint information and creation time for the additional nodes are not displayed until they are completely provisioned. When the cluster state is <i>available</i>, the cluster is ready for use.</p> <p>If cache nodes are currently being removed from the cluster, no endpoint information for the removed nodes is displayed.</p>

**Required Parameters**

-}
describeCacheClusters :
    (DescribeCacheClustersOptions -> DescribeCacheClustersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CacheClusterMessage)
describeCacheClusters setOptions =
    let
        requestInput =
            DescribeCacheClustersMessage
                options.cacheClusterId
                options.maxRecords
                options.marker
                options.showCacheNodeInfo
                options.showCacheClustersNotInReplicationGroups

        options =
            setOptions (DescribeCacheClustersOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeCacheClusters")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeCacheClustersMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeCacheClusters"
            (AWS.Core.Decode.ResultDecoder "DescribeCacheClustersResult" cacheClusterMessageDecoder)
        )


{-| Options for a describeCacheClusters request
-}
type alias DescribeCacheClustersOptions =
    { cacheClusterId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , showCacheNodeInfo : Maybe Bool
    , showCacheClustersNotInReplicationGroups : Maybe Bool
    }


{-|

<p>Returns a list of the available cache engines and their versions.</p>

**Required Parameters**

-}
describeCacheEngineVersions :
    (DescribeCacheEngineVersionsOptions -> DescribeCacheEngineVersionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CacheEngineVersionMessage)
describeCacheEngineVersions setOptions =
    let
        requestInput =
            DescribeCacheEngineVersionsMessage
                options.engine
                options.engineVersion
                options.cacheParameterGroupFamily
                options.maxRecords
                options.marker
                options.defaultOnly

        options =
            setOptions (DescribeCacheEngineVersionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeCacheEngineVersions")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeCacheEngineVersionsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeCacheEngineVersions"
            (AWS.Core.Decode.ResultDecoder "DescribeCacheEngineVersionsResult" cacheEngineVersionMessageDecoder)
        )


{-| Options for a describeCacheEngineVersions request
-}
type alias DescribeCacheEngineVersionsOptions =
    { engine : Maybe String
    , engineVersion : Maybe String
    , cacheParameterGroupFamily : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , defaultOnly : Maybe Bool
    }


{-|

<p>Returns a list of cache parameter group descriptions. If a cache parameter group name is specified, the list contains only the descriptions for that group.</p>

**Required Parameters**

-}
describeCacheParameterGroups :
    (DescribeCacheParameterGroupsOptions -> DescribeCacheParameterGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CacheParameterGroupsMessage)
describeCacheParameterGroups setOptions =
    let
        requestInput =
            DescribeCacheParameterGroupsMessage
                options.cacheParameterGroupName
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeCacheParameterGroupsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeCacheParameterGroups")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeCacheParameterGroupsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeCacheParameterGroups"
            (AWS.Core.Decode.ResultDecoder "DescribeCacheParameterGroupsResult" cacheParameterGroupsMessageDecoder)
        )


{-| Options for a describeCacheParameterGroups request
-}
type alias DescribeCacheParameterGroupsOptions =
    { cacheParameterGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns the detailed parameter list for a particular cache parameter group.</p>

**Required Parameters**

  - `cacheParameterGroupName` **:** `String`

-}
describeCacheParameters :
    String
    -> (DescribeCacheParametersOptions -> DescribeCacheParametersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CacheParameterGroupDetails)
describeCacheParameters cacheParameterGroupName setOptions =
    let
        requestInput =
            DescribeCacheParametersMessage
                cacheParameterGroupName
                options.source
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeCacheParametersOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeCacheParameters")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeCacheParametersMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeCacheParameters"
            (AWS.Core.Decode.ResultDecoder "DescribeCacheParametersResult" cacheParameterGroupDetailsDecoder)
        )


{-| Options for a describeCacheParameters request
-}
type alias DescribeCacheParametersOptions =
    { source : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns a list of cache security group descriptions. If a cache security group name is specified, the list contains only the description of that group. This applicable only when you have ElastiCache in Classic setup </p>

**Required Parameters**

-}
describeCacheSecurityGroups :
    (DescribeCacheSecurityGroupsOptions -> DescribeCacheSecurityGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CacheSecurityGroupMessage)
describeCacheSecurityGroups setOptions =
    let
        requestInput =
            DescribeCacheSecurityGroupsMessage
                options.cacheSecurityGroupName
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeCacheSecurityGroupsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeCacheSecurityGroups")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeCacheSecurityGroupsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeCacheSecurityGroups"
            (AWS.Core.Decode.ResultDecoder "DescribeCacheSecurityGroupsResult" cacheSecurityGroupMessageDecoder)
        )


{-| Options for a describeCacheSecurityGroups request
-}
type alias DescribeCacheSecurityGroupsOptions =
    { cacheSecurityGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns a list of cache subnet group descriptions. If a subnet group name is specified, the list contains only the description of that group. This is applicable only when you have ElastiCache in VPC setup. All ElastiCache clusters now launch in VPC by default. </p>

**Required Parameters**

-}
describeCacheSubnetGroups :
    (DescribeCacheSubnetGroupsOptions -> DescribeCacheSubnetGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CacheSubnetGroupMessage)
describeCacheSubnetGroups setOptions =
    let
        requestInput =
            DescribeCacheSubnetGroupsMessage
                options.cacheSubnetGroupName
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeCacheSubnetGroupsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeCacheSubnetGroups")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeCacheSubnetGroupsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeCacheSubnetGroups"
            (AWS.Core.Decode.ResultDecoder "DescribeCacheSubnetGroupsResult" cacheSubnetGroupMessageDecoder)
        )


{-| Options for a describeCacheSubnetGroups request
-}
type alias DescribeCacheSubnetGroupsOptions =
    { cacheSubnetGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns the default engine and system parameter information for the specified cache engine.</p>

**Required Parameters**

  - `cacheParameterGroupFamily` **:** `String`

-}
describeEngineDefaultParameters :
    String
    -> (DescribeEngineDefaultParametersOptions -> DescribeEngineDefaultParametersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEngineDefaultParametersResult)
describeEngineDefaultParameters cacheParameterGroupFamily setOptions =
    let
        requestInput =
            DescribeEngineDefaultParametersMessage
                cacheParameterGroupFamily
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeEngineDefaultParametersOptions Nothing Nothing)
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
    { maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns events related to clusters, cache security groups, and cache parameter groups. You can obtain events specific to a particular cluster, cache security group, or cache parameter group by providing the name as a parameter.</p> <p>By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.</p>

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

<p>Returns information about a particular replication group. If no identifier is specified, <code>DescribeReplicationGroups</code> returns information about all replication groups.</p> <note> <p>This operation is valid for Redis only.</p> </note>

**Required Parameters**

-}
describeReplicationGroups :
    (DescribeReplicationGroupsOptions -> DescribeReplicationGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReplicationGroupMessage)
describeReplicationGroups setOptions =
    let
        requestInput =
            DescribeReplicationGroupsMessage
                options.replicationGroupId
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeReplicationGroupsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeReplicationGroups")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeReplicationGroupsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeReplicationGroups"
            (AWS.Core.Decode.ResultDecoder "DescribeReplicationGroupsResult" replicationGroupMessageDecoder)
        )


{-| Options for a describeReplicationGroups request
-}
type alias DescribeReplicationGroupsOptions =
    { replicationGroupId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns information about reserved cache nodes for this account, or about a specified reserved cache node.</p>

**Required Parameters**

-}
describeReservedCacheNodes :
    (DescribeReservedCacheNodesOptions -> DescribeReservedCacheNodesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReservedCacheNodeMessage)
describeReservedCacheNodes setOptions =
    let
        requestInput =
            DescribeReservedCacheNodesMessage
                options.reservedCacheNodeId
                options.reservedCacheNodesOfferingId
                options.cacheNodeType
                options.duration
                options.productDescription
                options.offeringType
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeReservedCacheNodesOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeReservedCacheNodes")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeReservedCacheNodesMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeReservedCacheNodes"
            (AWS.Core.Decode.ResultDecoder "DescribeReservedCacheNodesResult" reservedCacheNodeMessageDecoder)
        )


{-| Options for a describeReservedCacheNodes request
-}
type alias DescribeReservedCacheNodesOptions =
    { reservedCacheNodeId : Maybe String
    , reservedCacheNodesOfferingId : Maybe String
    , cacheNodeType : Maybe String
    , duration : Maybe String
    , productDescription : Maybe String
    , offeringType : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Lists available reserved cache node offerings.</p>

**Required Parameters**

-}
describeReservedCacheNodesOfferings :
    (DescribeReservedCacheNodesOfferingsOptions -> DescribeReservedCacheNodesOfferingsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReservedCacheNodesOfferingMessage)
describeReservedCacheNodesOfferings setOptions =
    let
        requestInput =
            DescribeReservedCacheNodesOfferingsMessage
                options.reservedCacheNodesOfferingId
                options.cacheNodeType
                options.duration
                options.productDescription
                options.offeringType
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeReservedCacheNodesOfferingsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeReservedCacheNodesOfferings")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeReservedCacheNodesOfferingsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeReservedCacheNodesOfferings"
            (AWS.Core.Decode.ResultDecoder "DescribeReservedCacheNodesOfferingsResult" reservedCacheNodesOfferingMessageDecoder)
        )


{-| Options for a describeReservedCacheNodesOfferings request
-}
type alias DescribeReservedCacheNodesOfferingsOptions =
    { reservedCacheNodesOfferingId : Maybe String
    , cacheNodeType : Maybe String
    , duration : Maybe String
    , productDescription : Maybe String
    , offeringType : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns details of the service updates</p>

**Required Parameters**

-}
describeServiceUpdates :
    (DescribeServiceUpdatesOptions -> DescribeServiceUpdatesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ServiceUpdatesMessage)
describeServiceUpdates setOptions =
    let
        requestInput =
            DescribeServiceUpdatesMessage
                options.serviceUpdateName
                options.serviceUpdateStatus
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeServiceUpdatesOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeServiceUpdates")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeServiceUpdatesMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeServiceUpdates"
            (AWS.Core.Decode.ResultDecoder "DescribeServiceUpdatesResult" serviceUpdatesMessageDecoder)
        )


{-| Options for a describeServiceUpdates request
-}
type alias DescribeServiceUpdatesOptions =
    { serviceUpdateName : Maybe String
    , serviceUpdateStatus : Maybe (List ServiceUpdateStatus)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns information about cluster or replication group snapshots. By default, <code>DescribeSnapshots</code> lists all of your snapshots; it can optionally describe a single snapshot, or just the snapshots associated with a particular cache cluster.</p> <note> <p>This operation is valid for Redis only.</p> </note>

**Required Parameters**

-}
describeSnapshots :
    (DescribeSnapshotsOptions -> DescribeSnapshotsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSnapshotsListMessage)
describeSnapshots setOptions =
    let
        requestInput =
            DescribeSnapshotsMessage
                options.replicationGroupId
                options.cacheClusterId
                options.snapshotName
                options.snapshotSource
                options.marker
                options.maxRecords
                options.showNodeGroupConfig

        options =
            setOptions (DescribeSnapshotsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeSnapshots")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeSnapshotsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeSnapshots"
            (AWS.Core.Decode.ResultDecoder "DescribeSnapshotsResult" describeSnapshotsListMessageDecoder)
        )


{-| Options for a describeSnapshots request
-}
type alias DescribeSnapshotsOptions =
    { replicationGroupId : Maybe String
    , cacheClusterId : Maybe String
    , snapshotName : Maybe String
    , snapshotSource : Maybe String
    , marker : Maybe String
    , maxRecords : Maybe Int
    , showNodeGroupConfig : Maybe Bool
    }


{-|

<p>Returns details of the update actions </p>

**Required Parameters**

-}
describeUpdateActions :
    (DescribeUpdateActionsOptions -> DescribeUpdateActionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateActionsMessage)
describeUpdateActions setOptions =
    let
        requestInput =
            DescribeUpdateActionsMessage
                options.serviceUpdateName
                options.replicationGroupIds
                options.serviceUpdateStatus
                options.serviceUpdateTimeRange
                options.updateActionStatus
                options.showNodeLevelUpdateStatus
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeUpdateActionsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeUpdateActions")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeUpdateActionsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeUpdateActions"
            (AWS.Core.Decode.ResultDecoder "DescribeUpdateActionsResult" updateActionsMessageDecoder)
        )


{-| Options for a describeUpdateActions request
-}
type alias DescribeUpdateActionsOptions =
    { serviceUpdateName : Maybe String
    , replicationGroupIds : Maybe (List String)
    , serviceUpdateStatus : Maybe (List ServiceUpdateStatus)
    , serviceUpdateTimeRange : Maybe TimeRangeFilter
    , updateActionStatus : Maybe (List UpdateActionStatus)
    , showNodeLevelUpdateStatus : Maybe Bool
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Dynamically increases the number of replics in a Redis (cluster mode disabled) replication group or the number of replica nodes in one or more node groups (shards) of a Redis (cluster mode enabled) replication group. This operation is performed with no cluster down time.</p>

**Required Parameters**

  - `replicationGroupId` **:** `String`
  - `applyImmediately` **:** `Bool`

-}
increaseReplicaCount :
    String
    -> Bool
    -> (IncreaseReplicaCountOptions -> IncreaseReplicaCountOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper IncreaseReplicaCountResult)
increaseReplicaCount replicationGroupId applyImmediately setOptions =
    let
        requestInput =
            IncreaseReplicaCountMessage
                replicationGroupId
                options.newReplicaCount
                options.replicaConfiguration
                applyImmediately

        options =
            setOptions (IncreaseReplicaCountOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "IncreaseReplicaCount")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs increaseReplicaCountMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "IncreaseReplicaCount"
            (AWS.Core.Decode.ResultDecoder "IncreaseReplicaCountResult" increaseReplicaCountResultDecoder)
        )


{-| Options for a increaseReplicaCount request
-}
type alias IncreaseReplicaCountOptions =
    { newReplicaCount : Maybe Int
    , replicaConfiguration : Maybe (List ConfigureShard)
    }


{-|

<p>Lists all available node types that you can scale your Redis cluster's or replication group's current node type up to.</p> <p>When you use the <code>ModifyCacheCluster</code> or <code>ModifyReplicationGroup</code> operations to scale up your cluster or replication group, the value of the <code>CacheNodeType</code> parameter must be one of the node types returned by this operation.</p>

**Required Parameters**

-}
listAllowedNodeTypeModifications :
    (ListAllowedNodeTypeModificationsOptions -> ListAllowedNodeTypeModificationsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AllowedNodeTypeModificationsMessage)
listAllowedNodeTypeModifications setOptions =
    let
        requestInput =
            ListAllowedNodeTypeModificationsMessage
                options.cacheClusterId
                options.replicationGroupId

        options =
            setOptions (ListAllowedNodeTypeModificationsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ListAllowedNodeTypeModifications")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs listAllowedNodeTypeModificationsMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListAllowedNodeTypeModifications"
            (AWS.Core.Decode.ResultDecoder "ListAllowedNodeTypeModificationsResult" allowedNodeTypeModificationsMessageDecoder)
        )


{-| Options for a listAllowedNodeTypeModifications request
-}
type alias ListAllowedNodeTypeModificationsOptions =
    { cacheClusterId : Maybe String
    , replicationGroupId : Maybe String
    }


{-|

<p>Lists all cost allocation tags currently on the named resource. A <code>cost allocation tag</code> is a key-value pair where the key is case-sensitive and the value is optional. You can use cost allocation tags to categorize and track your AWS costs.</p> <p>If the cluster is not in the <i>available</i> state, <code>ListTagsForResource</code> returns an error.</p> <p>You can have a maximum of 50 cost allocation tags on an ElastiCache resource. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Tagging.html">Monitoring Costs with Tags</a>.</p>

**Required Parameters**

  - `resourceName` **:** `String`

-}
listTagsForResource :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagListMessage)
listTagsForResource resourceName =
    let
        requestInput =
            ListTagsForResourceMessage
                resourceName
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


{-|

<p>Modifies the settings for a cluster. You can use this operation to change one or more cluster configuration parameters by specifying the parameters and the new values.</p>

**Required Parameters**

  - `cacheClusterId` **:** `String`

-}
modifyCacheCluster :
    String
    -> (ModifyCacheClusterOptions -> ModifyCacheClusterOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyCacheClusterResult)
modifyCacheCluster cacheClusterId setOptions =
    let
        requestInput =
            ModifyCacheClusterMessage
                cacheClusterId
                options.numCacheNodes
                options.cacheNodeIdsToRemove
                options.aZMode
                options.newAvailabilityZones
                options.cacheSecurityGroupNames
                options.securityGroupIds
                options.preferredMaintenanceWindow
                options.notificationTopicArn
                options.cacheParameterGroupName
                options.notificationTopicStatus
                options.applyImmediately
                options.engineVersion
                options.autoMinorVersionUpgrade
                options.snapshotRetentionLimit
                options.snapshotWindow
                options.cacheNodeType

        options =
            setOptions (ModifyCacheClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifyCacheCluster")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifyCacheClusterMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyCacheCluster"
            (AWS.Core.Decode.ResultDecoder "ModifyCacheClusterResult" modifyCacheClusterResultDecoder)
        )


{-| Options for a modifyCacheCluster request
-}
type alias ModifyCacheClusterOptions =
    { numCacheNodes : Maybe Int
    , cacheNodeIdsToRemove : Maybe (List String)
    , aZMode : Maybe AZMode
    , newAvailabilityZones : Maybe (List String)
    , cacheSecurityGroupNames : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    , preferredMaintenanceWindow : Maybe String
    , notificationTopicArn : Maybe String
    , cacheParameterGroupName : Maybe String
    , notificationTopicStatus : Maybe String
    , applyImmediately : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , cacheNodeType : Maybe String
    }


{-|

<p>Modifies the parameters of a cache parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.</p>

**Required Parameters**

  - `cacheParameterGroupName` **:** `String`
  - `parameterNameValues` **:** `(List ParameterNameValue)`

-}
modifyCacheParameterGroup :
    String
    -> List ParameterNameValue
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CacheParameterGroupNameMessage)
modifyCacheParameterGroup cacheParameterGroupName parameterNameValues =
    let
        requestInput =
            ModifyCacheParameterGroupMessage
                cacheParameterGroupName
                parameterNameValues
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifyCacheParameterGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifyCacheParameterGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyCacheParameterGroup"
            (AWS.Core.Decode.ResultDecoder "ModifyCacheParameterGroupResult" cacheParameterGroupNameMessageDecoder)
        )


{-|

<p>Modifies an existing cache subnet group.</p>

**Required Parameters**

  - `cacheSubnetGroupName` **:** `String`

-}
modifyCacheSubnetGroup :
    String
    -> (ModifyCacheSubnetGroupOptions -> ModifyCacheSubnetGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyCacheSubnetGroupResult)
modifyCacheSubnetGroup cacheSubnetGroupName setOptions =
    let
        requestInput =
            ModifyCacheSubnetGroupMessage
                cacheSubnetGroupName
                options.cacheSubnetGroupDescription
                options.subnetIds

        options =
            setOptions (ModifyCacheSubnetGroupOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifyCacheSubnetGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifyCacheSubnetGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyCacheSubnetGroup"
            (AWS.Core.Decode.ResultDecoder "ModifyCacheSubnetGroupResult" modifyCacheSubnetGroupResultDecoder)
        )


{-| Options for a modifyCacheSubnetGroup request
-}
type alias ModifyCacheSubnetGroupOptions =
    { cacheSubnetGroupDescription : Maybe String
    , subnetIds : Maybe (List String)
    }


{-|

<p>Modifies the settings for a replication group.</p> <p>For Redis (cluster mode enabled) clusters, this operation cannot be used to change a cluster's node type or engine version. For more information, see:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/scaling-redis-cluster-mode-enabled.html">Scaling for Amazon ElastiCache for Redis (cluster mode enabled)</a> in the ElastiCache User Guide</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyReplicationGroupShardConfiguration.html">ModifyReplicationGroupShardConfiguration</a> in the ElastiCache API Reference</p> </li> </ul> <note> <p>This operation is valid for Redis only.</p> </note>

**Required Parameters**

  - `replicationGroupId` **:** `String`

-}
modifyReplicationGroup :
    String
    -> (ModifyReplicationGroupOptions -> ModifyReplicationGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyReplicationGroupResult)
modifyReplicationGroup replicationGroupId setOptions =
    let
        requestInput =
            ModifyReplicationGroupMessage
                replicationGroupId
                options.replicationGroupDescription
                options.primaryClusterId
                options.snapshottingClusterId
                options.automaticFailoverEnabled
                options.cacheSecurityGroupNames
                options.securityGroupIds
                options.preferredMaintenanceWindow
                options.notificationTopicArn
                options.cacheParameterGroupName
                options.notificationTopicStatus
                options.applyImmediately
                options.engineVersion
                options.autoMinorVersionUpgrade
                options.snapshotRetentionLimit
                options.snapshotWindow
                options.cacheNodeType
                options.nodeGroupId

        options =
            setOptions (ModifyReplicationGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifyReplicationGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifyReplicationGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyReplicationGroup"
            (AWS.Core.Decode.ResultDecoder "ModifyReplicationGroupResult" modifyReplicationGroupResultDecoder)
        )


{-| Options for a modifyReplicationGroup request
-}
type alias ModifyReplicationGroupOptions =
    { replicationGroupDescription : Maybe String
    , primaryClusterId : Maybe String
    , snapshottingClusterId : Maybe String
    , automaticFailoverEnabled : Maybe Bool
    , cacheSecurityGroupNames : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    , preferredMaintenanceWindow : Maybe String
    , notificationTopicArn : Maybe String
    , cacheParameterGroupName : Maybe String
    , notificationTopicStatus : Maybe String
    , applyImmediately : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , cacheNodeType : Maybe String
    , nodeGroupId : Maybe String
    }


{-|

<p>Modifies a replication group's shards (node groups) by allowing you to add shards, remove shards, or rebalance the keyspaces among exisiting shards.</p>

**Required Parameters**

  - `replicationGroupId` **:** `String`
  - `nodeGroupCount` **:** `Int`
  - `applyImmediately` **:** `Bool`

-}
modifyReplicationGroupShardConfiguration :
    String
    -> Int
    -> Bool
    -> (ModifyReplicationGroupShardConfigurationOptions -> ModifyReplicationGroupShardConfigurationOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyReplicationGroupShardConfigurationResult)
modifyReplicationGroupShardConfiguration replicationGroupId nodeGroupCount applyImmediately setOptions =
    let
        requestInput =
            ModifyReplicationGroupShardConfigurationMessage
                replicationGroupId
                nodeGroupCount
                applyImmediately
                options.reshardingConfiguration
                options.nodeGroupsToRemove
                options.nodeGroupsToRetain

        options =
            setOptions (ModifyReplicationGroupShardConfigurationOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ModifyReplicationGroupShardConfiguration")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs modifyReplicationGroupShardConfigurationMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyReplicationGroupShardConfiguration"
            (AWS.Core.Decode.ResultDecoder "ModifyReplicationGroupShardConfigurationResult" modifyReplicationGroupShardConfigurationResultDecoder)
        )


{-| Options for a modifyReplicationGroupShardConfiguration request
-}
type alias ModifyReplicationGroupShardConfigurationOptions =
    { reshardingConfiguration : Maybe (List ReshardingConfiguration)
    , nodeGroupsToRemove : Maybe (List String)
    , nodeGroupsToRetain : Maybe (List String)
    }


{-|

<p>Allows you to purchase a reserved cache node offering.</p>

**Required Parameters**

  - `reservedCacheNodesOfferingId` **:** `String`

-}
purchaseReservedCacheNodesOffering :
    String
    -> (PurchaseReservedCacheNodesOfferingOptions -> PurchaseReservedCacheNodesOfferingOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PurchaseReservedCacheNodesOfferingResult)
purchaseReservedCacheNodesOffering reservedCacheNodesOfferingId setOptions =
    let
        requestInput =
            PurchaseReservedCacheNodesOfferingMessage
                reservedCacheNodesOfferingId
                options.reservedCacheNodeId
                options.cacheNodeCount

        options =
            setOptions (PurchaseReservedCacheNodesOfferingOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "PurchaseReservedCacheNodesOffering")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs purchaseReservedCacheNodesOfferingMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PurchaseReservedCacheNodesOffering"
            (AWS.Core.Decode.ResultDecoder "PurchaseReservedCacheNodesOfferingResult" purchaseReservedCacheNodesOfferingResultDecoder)
        )


{-| Options for a purchaseReservedCacheNodesOffering request
-}
type alias PurchaseReservedCacheNodesOfferingOptions =
    { reservedCacheNodeId : Maybe String
    , cacheNodeCount : Maybe Int
    }


{-|

<p>Reboots some, or all, of the cache nodes within a provisioned cluster. This operation applies any modified cache parameter groups to the cluster. The reboot operation takes place as soon as possible, and results in a momentary outage to the cluster. During the reboot, the cluster status is set to REBOOTING.</p> <p>The reboot causes the contents of the cache (for each cache node being rebooted) to be lost.</p> <p>When the reboot is complete, a cluster event is created.</p> <p>Rebooting a cluster is currently supported on Memcached and Redis (cluster mode disabled) clusters. Rebooting is not supported on Redis (cluster mode enabled) clusters.</p> <p>If you make changes to parameters that require a Redis (cluster mode enabled) cluster reboot for the changes to be applied, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html">Rebooting a Cluster</a> for an alternate process.</p>

**Required Parameters**

  - `cacheClusterId` **:** `String`
  - `cacheNodeIdsToReboot` **:** `(List String)`

-}
rebootCacheCluster :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RebootCacheClusterResult)
rebootCacheCluster cacheClusterId cacheNodeIdsToReboot =
    let
        requestInput =
            RebootCacheClusterMessage
                cacheClusterId
                cacheNodeIdsToReboot
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "RebootCacheCluster")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs rebootCacheClusterMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "RebootCacheCluster"
            (AWS.Core.Decode.ResultDecoder "RebootCacheClusterResult" rebootCacheClusterResultDecoder)
        )


{-|

<p>Removes the tags identified by the <code>TagKeys</code> list from the named resource.</p>

**Required Parameters**

  - `resourceName` **:** `String`
  - `tagKeys` **:** `(List String)`

-}
removeTagsFromResource :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagListMessage)
removeTagsFromResource resourceName tagKeys =
    let
        requestInput =
            RemoveTagsFromResourceMessage
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
            (AWS.Core.Decode.ResultDecoder "RemoveTagsFromResourceResult" tagListMessageDecoder)
        )


{-|

<p>Modifies the parameters of a cache parameter group to the engine or system default value. You can reset specific parameters by submitting a list of parameter names. To reset the entire cache parameter group, specify the <code>ResetAllParameters</code> and <code>CacheParameterGroupName</code> parameters.</p>

**Required Parameters**

  - `cacheParameterGroupName` **:** `String`

-}
resetCacheParameterGroup :
    String
    -> (ResetCacheParameterGroupOptions -> ResetCacheParameterGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CacheParameterGroupNameMessage)
resetCacheParameterGroup cacheParameterGroupName setOptions =
    let
        requestInput =
            ResetCacheParameterGroupMessage
                cacheParameterGroupName
                options.resetAllParameters
                options.parameterNameValues

        options =
            setOptions (ResetCacheParameterGroupOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ResetCacheParameterGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs resetCacheParameterGroupMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ResetCacheParameterGroup"
            (AWS.Core.Decode.ResultDecoder "ResetCacheParameterGroupResult" cacheParameterGroupNameMessageDecoder)
        )


{-| Options for a resetCacheParameterGroup request
-}
type alias ResetCacheParameterGroupOptions =
    { resetAllParameters : Maybe Bool
    , parameterNameValues : Maybe (List ParameterNameValue)
    }


{-|

<p>Revokes ingress from a cache security group. Use this operation to disallow access from an Amazon EC2 security group that had been previously authorized.</p>

**Required Parameters**

  - `cacheSecurityGroupName` **:** `String`
  - `eC2SecurityGroupName` **:** `String`
  - `eC2SecurityGroupOwnerId` **:** `String`

-}
revokeCacheSecurityGroupIngress :
    String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RevokeCacheSecurityGroupIngressResult)
revokeCacheSecurityGroupIngress cacheSecurityGroupName eC2SecurityGroupName eC2SecurityGroupOwnerId =
    let
        requestInput =
            RevokeCacheSecurityGroupIngressMessage
                cacheSecurityGroupName
                eC2SecurityGroupName
                eC2SecurityGroupOwnerId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "RevokeCacheSecurityGroupIngress")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs revokeCacheSecurityGroupIngressMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "RevokeCacheSecurityGroupIngress"
            (AWS.Core.Decode.ResultDecoder "RevokeCacheSecurityGroupIngressResult" revokeCacheSecurityGroupIngressResultDecoder)
        )


{-|

<p>Represents the input of a <code>TestFailover</code> operation which test automatic failover on a specified node group (called shard in the console) in a replication group (called cluster in the console).</p> <p class="title"> <b>Note the following</b> </p> <ul> <li> <p>A customer can use this operation to test automatic failover on up to 5 shards (called node groups in the ElastiCache API and AWS CLI) in any rolling 24-hour period.</p> </li> <li> <p>If calling this operation on shards in different clusters (called replication groups in the API and CLI), the calls can be made concurrently.</p> <p> </p> </li> <li> <p>If calling this operation multiple times on different shards in the same Redis (cluster mode enabled) replication group, the first node replacement must complete before a subsequent call can be made.</p> </li> <li> <p>To determine whether the node replacement is complete you can check Events using the Amazon ElastiCache console, the AWS CLI, or the ElastiCache API. Look for the following automatic failover related events, listed here in order of occurrance:</p> <ol> <li> <p>Replication group message: <code>Test Failover API called for node group &lt;node-group-id&gt;</code> </p> </li> <li> <p>Cache cluster message: <code>Failover from master node &lt;primary-node-id&gt; to replica node &lt;node-id&gt; completed</code> </p> </li> <li> <p>Replication group message: <code>Failover from master node &lt;primary-node-id&gt; to replica node &lt;node-id&gt; completed</code> </p> </li> <li> <p>Cache cluster message: <code>Recovering cache nodes &lt;node-id&gt;</code> </p> </li> <li> <p>Cache cluster message: <code>Finished recovery for cache nodes &lt;node-id&gt;</code> </p> </li> </ol> <p>For more information see:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ECEvents.Viewing.html">Viewing ElastiCache Events</a> in the <i>ElastiCache User Guide</i> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_DescribeEvents.html">DescribeEvents</a> in the ElastiCache API Reference</p> </li> </ul> </li> </ul> <p>Also see, <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html#auto-failover-test">Testing Multi-AZ with Automatic Failover</a> in the <i>ElastiCache User Guide</i>.</p>

**Required Parameters**

  - `replicationGroupId` **:** `String`
  - `nodeGroupId` **:** `String`

-}
testFailover :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TestFailoverResult)
testFailover replicationGroupId nodeGroupId =
    let
        requestInput =
            TestFailoverMessage
                replicationGroupId
                nodeGroupId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "TestFailover")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs testFailoverMessageEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "TestFailover"
            (AWS.Core.Decode.ResultDecoder "TestFailoverResult" testFailoverResultDecoder)
        )


{-| One of

  - `AZMode_single-az`
  - `AZMode_cross-az`

-}
type AZMode
    = AZMode_single_az
    | AZMode_cross_az


aZModeDecoder : JD.Decoder AZMode
aZModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "single_az" ->
                        JD.succeed AZMode_single_az

                    "cross_az" ->
                        JD.succeed AZMode_cross_az

                    _ ->
                        JD.fail "bad thing"
            )


aZModeToString : AZMode -> String
aZModeToString val =
    case val of
        AZMode_single_az ->
            "single_az"

        AZMode_cross_az ->
            "cross_az"


{-| Type of HTTP response from allowedNodeTypeModification
-}
type alias AllowedNodeTypeModificationsMessage =
    { scaleUpModifications : Maybe (List String)
    }


allowedNodeTypeModificationsMessageDecoder : JD.Decoder AllowedNodeTypeModificationsMessage
allowedNodeTypeModificationsMessageDecoder =
    JD.succeed AllowedNodeTypeModificationsMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ScaleUpModifications", "scaleUpModifications" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from authorizeCacheSecurityGroupIngre
-}
type alias AuthorizeCacheSecurityGroupIngressResult =
    { cacheSecurityGroup : Maybe CacheSecurityGroup
    }


authorizeCacheSecurityGroupIngressResultDecoder : JD.Decoder AuthorizeCacheSecurityGroupIngressResult
authorizeCacheSecurityGroupIngressResultDecoder =
    JD.succeed AuthorizeCacheSecurityGroupIngressResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSecurityGroup", "cacheSecurityGroup" ]
                cacheSecurityGroupDecoder
            )


{-| One of

  - `AutomaticFailoverStatus_enabled`
  - `AutomaticFailoverStatus_disabled`
  - `AutomaticFailoverStatus_enabling`
  - `AutomaticFailoverStatus_disabling`

-}
type AutomaticFailoverStatus
    = AutomaticFailoverStatus_enabled
    | AutomaticFailoverStatus_disabled
    | AutomaticFailoverStatus_enabling
    | AutomaticFailoverStatus_disabling


automaticFailoverStatusDecoder : JD.Decoder AutomaticFailoverStatus
automaticFailoverStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "enabled" ->
                        JD.succeed AutomaticFailoverStatus_enabled

                    "disabled" ->
                        JD.succeed AutomaticFailoverStatus_disabled

                    "enabling" ->
                        JD.succeed AutomaticFailoverStatus_enabling

                    "disabling" ->
                        JD.succeed AutomaticFailoverStatus_disabling

                    _ ->
                        JD.fail "bad thing"
            )


automaticFailoverStatusToString : AutomaticFailoverStatus -> String
automaticFailoverStatusToString val =
    case val of
        AutomaticFailoverStatus_enabled ->
            "enabled"

        AutomaticFailoverStatus_disabled ->
            "disabled"

        AutomaticFailoverStatus_enabling ->
            "enabling"

        AutomaticFailoverStatus_disabling ->
            "disabling"


{-|

<p>Describes an Availability Zone in which the cluster is launched.</p>

-}
type alias AvailabilityZone =
    { name : Maybe String
    }


availabilityZoneDecoder : JD.Decoder AvailabilityZone
availabilityZoneDecoder =
    JD.succeed AvailabilityZone
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )


{-|

<p>Contains all of the attributes of a specific cluster.</p>

-}
type alias CacheCluster =
    { cacheClusterId : Maybe String
    , configurationEndpoint : Maybe Endpoint
    , clientDownloadLandingPage : Maybe String
    , cacheNodeType : Maybe String
    , engine : Maybe String
    , engineVersion : Maybe String
    , cacheClusterStatus : Maybe String
    , numCacheNodes : Maybe Int
    , preferredAvailabilityZone : Maybe String
    , cacheClusterCreateTime : Maybe Posix
    , preferredMaintenanceWindow : Maybe String
    , pendingModifiedValues : Maybe PendingModifiedValues
    , notificationConfiguration : Maybe NotificationConfiguration
    , cacheSecurityGroups : Maybe (List CacheSecurityGroupMembership)
    , cacheParameterGroup : Maybe CacheParameterGroupStatus
    , cacheSubnetGroupName : Maybe String
    , cacheNodes : Maybe (List CacheNode)
    , autoMinorVersionUpgrade : Maybe Bool
    , securityGroups : Maybe (List SecurityGroupMembership)
    , replicationGroupId : Maybe String
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , authTokenEnabled : Maybe Bool
    , transitEncryptionEnabled : Maybe Bool
    , atRestEncryptionEnabled : Maybe Bool
    }


cacheClusterDecoder : JD.Decoder CacheCluster
cacheClusterDecoder =
    JD.succeed CacheCluster
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheClusterId", "cacheClusterId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigurationEndpoint", "configurationEndpoint" ]
                endpointDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClientDownloadLandingPage", "clientDownloadLandingPage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeType", "cacheNodeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Engine", "engine" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineVersion", "engineVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheClusterStatus", "cacheClusterStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NumCacheNodes", "numCacheNodes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreferredAvailabilityZone", "preferredAvailabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheClusterCreateTime", "cacheClusterCreateTime" ]
                JDX.datetime
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
                [ "NotificationConfiguration", "notificationConfiguration" ]
                notificationConfigurationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSecurityGroups", "cacheSecurityGroups" ]
                (JD.list cacheSecurityGroupMembershipDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheParameterGroup", "cacheParameterGroup" ]
                cacheParameterGroupStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSubnetGroupName", "cacheSubnetGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodes", "cacheNodes" ]
                (JD.list cacheNodeDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoMinorVersionUpgrade", "autoMinorVersionUpgrade" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SecurityGroups", "securityGroups" ]
                (JD.list securityGroupMembershipDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroupId", "replicationGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotRetentionLimit", "snapshotRetentionLimit" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotWindow", "snapshotWindow" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AuthTokenEnabled", "authTokenEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TransitEncryptionEnabled", "transitEncryptionEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AtRestEncryptionEnabled", "atRestEncryptionEnabled" ]
                JD.bool
            )


{-| Type of HTTP response from cacheCluste
-}
type alias CacheClusterMessage =
    { marker : Maybe String
    , cacheClusters : Maybe (List CacheCluster)
    }


cacheClusterMessageDecoder : JD.Decoder CacheClusterMessage
cacheClusterMessageDecoder =
    JD.succeed CacheClusterMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheClusters", "cacheClusters" ]
                (JD.list cacheClusterDecoder)
            )


{-|

<p>Provides all of the details about a particular cache engine version.</p>

-}
type alias CacheEngineVersion =
    { engine : Maybe String
    , engineVersion : Maybe String
    , cacheParameterGroupFamily : Maybe String
    , cacheEngineDescription : Maybe String
    , cacheEngineVersionDescription : Maybe String
    }


cacheEngineVersionDecoder : JD.Decoder CacheEngineVersion
cacheEngineVersionDecoder =
    JD.succeed CacheEngineVersion
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Engine", "engine" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineVersion", "engineVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheParameterGroupFamily", "cacheParameterGroupFamily" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheEngineDescription", "cacheEngineDescription" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheEngineVersionDescription", "cacheEngineVersionDescription" ]
                JD.string
            )


{-| Type of HTTP response from cacheEngineVersio
-}
type alias CacheEngineVersionMessage =
    { marker : Maybe String
    , cacheEngineVersions : Maybe (List CacheEngineVersion)
    }


cacheEngineVersionMessageDecoder : JD.Decoder CacheEngineVersionMessage
cacheEngineVersionMessageDecoder =
    JD.succeed CacheEngineVersionMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheEngineVersions", "cacheEngineVersions" ]
                (JD.list cacheEngineVersionDecoder)
            )


{-|

<p>Represents an individual cache node within a cluster. Each cache node runs its own instance of the cluster's protocol-compliant caching software - either Memcached or Redis.</p> <p>The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.</p> <ul> <li> <p>General purpose:</p> <ul> <li> <p>Current generation: </p> <p> <b>M5 node types:</b> <code>cache.m5.large</code>, <code>cache.m5.xlarge</code>, <code>cache.m5.2xlarge</code>, <code>cache.m5.4xlarge</code>, <code>cache.m5.12xlarge</code>, <code>cache.m5.24xlarge</code> </p> <p> <b>M4 node types:</b> <code>cache.m4.large</code>, <code>cache.m4.xlarge</code>, <code>cache.m4.2xlarge</code>, <code>cache.m4.4xlarge</code>, <code>cache.m4.10xlarge</code> </p> <p> <b>T2 node types:</b> <code>cache.t2.micro</code>, <code>cache.t2.small</code>, <code>cache.t2.medium</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>T1 node types:</b> <code>cache.t1.micro</code> </p> <p> <b>M1 node types:</b> <code>cache.m1.small</code>, <code>cache.m1.medium</code>, <code>cache.m1.large</code>, <code>cache.m1.xlarge</code> </p> <p> <b>M3 node types:</b> <code>cache.m3.medium</code>, <code>cache.m3.large</code>, <code>cache.m3.xlarge</code>, <code>cache.m3.2xlarge</code> </p> </li> </ul> </li> <li> <p>Compute optimized:</p> <ul> <li> <p>Previous generation: (not recommended)</p> <p> <b>C1 node types:</b> <code>cache.c1.xlarge</code> </p> </li> </ul> </li> <li> <p>Memory optimized:</p> <ul> <li> <p>Current generation: </p> <p> <b>R5 node types:</b> <code>cache.r5.large</code>, <code>cache.r5.xlarge</code>, <code>cache.r5.2xlarge</code>, <code>cache.r5.4xlarge</code>, <code>cache.r5.12xlarge</code>, <code>cache.r5.24xlarge</code> </p> <p> <b>R4 node types:</b> <code>cache.r4.large</code>, <code>cache.r4.xlarge</code>, <code>cache.r4.2xlarge</code>, <code>cache.r4.4xlarge</code>, <code>cache.r4.8xlarge</code>, <code>cache.r4.16xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>M2 node types:</b> <code>cache.m2.xlarge</code>, <code>cache.m2.2xlarge</code>, <code>cache.m2.4xlarge</code> </p> <p> <b>R3 node types:</b> <code>cache.r3.large</code>, <code>cache.r3.xlarge</code>, <code>cache.r3.2xlarge</code>, <code>cache.r3.4xlarge</code>, <code>cache.r3.8xlarge</code> </p> </li> </ul> </li> </ul> <p> <b>Additional node type info</b> </p> <ul> <li> <p>All current generation instance types are created in Amazon VPC by default.</p> </li> <li> <p>Redis append-only files (AOF) are not supported for T1 or T2 instances.</p> </li> <li> <p>Redis Multi-AZ with automatic failover is not supported on T1 instances.</p> </li> <li> <p>Redis configuration variables <code>appendonly</code> and <code>appendfsync</code> are not supported on Redis version 2.8.22 and later.</p> </li> </ul>

-}
type alias CacheNode =
    { cacheNodeId : Maybe String
    , cacheNodeStatus : Maybe String
    , cacheNodeCreateTime : Maybe Posix
    , endpoint : Maybe Endpoint
    , parameterGroupStatus : Maybe String
    , sourceCacheNodeId : Maybe String
    , customerAvailabilityZone : Maybe String
    }


cacheNodeDecoder : JD.Decoder CacheNode
cacheNodeDecoder =
    JD.succeed CacheNode
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeId", "cacheNodeId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeStatus", "cacheNodeStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeCreateTime", "cacheNodeCreateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Endpoint", "endpoint" ]
                endpointDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroupStatus", "parameterGroupStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceCacheNodeId", "sourceCacheNodeId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CustomerAvailabilityZone", "customerAvailabilityZone" ]
                JD.string
            )


{-|

<p>A parameter that has a different value for each cache node type it is applied to. For example, in a Redis cluster, a <code>cache.m1.large</code> cache node type would have a larger <code>maxmemory</code> value than a <code>cache.m1.small</code> type.</p>

-}
type alias CacheNodeTypeSpecificParameter =
    { parameterName : Maybe String
    , description : Maybe String
    , source : Maybe String
    , dataType : Maybe String
    , allowedValues : Maybe String
    , isModifiable : Maybe Bool
    , minimumEngineVersion : Maybe String
    , cacheNodeTypeSpecificValues : Maybe (List CacheNodeTypeSpecificValue)
    , changeType : Maybe ChangeType
    }


cacheNodeTypeSpecificParameterDecoder : JD.Decoder CacheNodeTypeSpecificParameter
cacheNodeTypeSpecificParameterDecoder =
    JD.succeed CacheNodeTypeSpecificParameter
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterName", "parameterName" ]
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
                [ "IsModifiable", "isModifiable" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MinimumEngineVersion", "minimumEngineVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeTypeSpecificValues", "cacheNodeTypeSpecificValues" ]
                (JD.list cacheNodeTypeSpecificValueDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ChangeType", "changeType" ]
                changeTypeDecoder
            )


{-|

<p>A value that applies only to a certain cache node type.</p>

-}
type alias CacheNodeTypeSpecificValue =
    { cacheNodeType : Maybe String
    , value : Maybe String
    }


cacheNodeTypeSpecificValueDecoder : JD.Decoder CacheNodeTypeSpecificValue
cacheNodeTypeSpecificValueDecoder =
    JD.succeed CacheNodeTypeSpecificValue
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeType", "cacheNodeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Value", "value" ]
                JD.string
            )


{-|

<p>Represents the output of a <code>CreateCacheParameterGroup</code> operation.</p>

-}
type alias CacheParameterGroup =
    { cacheParameterGroupName : Maybe String
    , cacheParameterGroupFamily : Maybe String
    , description : Maybe String
    }


cacheParameterGroupDecoder : JD.Decoder CacheParameterGroup
cacheParameterGroupDecoder =
    JD.succeed CacheParameterGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheParameterGroupName", "cacheParameterGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheParameterGroupFamily", "cacheParameterGroupFamily" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )


{-| Type of HTTP response from cacheParameterGrou
-}
type alias CacheParameterGroupDetails =
    { marker : Maybe String
    , parameters : Maybe (List Parameter)
    , cacheNodeTypeSpecificParameters : Maybe (List CacheNodeTypeSpecificParameter)
    }


cacheParameterGroupDetailsDecoder : JD.Decoder CacheParameterGroupDetails
cacheParameterGroupDetailsDecoder =
    JD.succeed CacheParameterGroupDetails
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
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeTypeSpecificParameters", "cacheNodeTypeSpecificParameters" ]
                (JD.list cacheNodeTypeSpecificParameterDecoder)
            )


{-| Type of HTTP response from cacheParameterGroupNam
-}
type alias CacheParameterGroupNameMessage =
    { cacheParameterGroupName : Maybe String
    }


cacheParameterGroupNameMessageDecoder : JD.Decoder CacheParameterGroupNameMessage
cacheParameterGroupNameMessageDecoder =
    JD.succeed CacheParameterGroupNameMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheParameterGroupName", "cacheParameterGroupName" ]
                JD.string
            )


{-|

<p>Status of the cache parameter group.</p>

-}
type alias CacheParameterGroupStatus =
    { cacheParameterGroupName : Maybe String
    , parameterApplyStatus : Maybe String
    , cacheNodeIdsToReboot : Maybe (List String)
    }


cacheParameterGroupStatusDecoder : JD.Decoder CacheParameterGroupStatus
cacheParameterGroupStatusDecoder =
    JD.succeed CacheParameterGroupStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheParameterGroupName", "cacheParameterGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterApplyStatus", "parameterApplyStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeIdsToReboot", "cacheNodeIdsToReboot" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from cacheParameterGroup
-}
type alias CacheParameterGroupsMessage =
    { marker : Maybe String
    , cacheParameterGroups : Maybe (List CacheParameterGroup)
    }


cacheParameterGroupsMessageDecoder : JD.Decoder CacheParameterGroupsMessage
cacheParameterGroupsMessageDecoder =
    JD.succeed CacheParameterGroupsMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheParameterGroups", "cacheParameterGroups" ]
                (JD.list cacheParameterGroupDecoder)
            )


{-|

<p>Represents the output of one of the following operations:</p> <ul> <li> <p> <code>AuthorizeCacheSecurityGroupIngress</code> </p> </li> <li> <p> <code>CreateCacheSecurityGroup</code> </p> </li> <li> <p> <code>RevokeCacheSecurityGroupIngress</code> </p> </li> </ul>

-}
type alias CacheSecurityGroup =
    { ownerId : Maybe String
    , cacheSecurityGroupName : Maybe String
    , description : Maybe String
    , eC2SecurityGroups : Maybe (List EC2SecurityGroup)
    }


cacheSecurityGroupDecoder : JD.Decoder CacheSecurityGroup
cacheSecurityGroupDecoder =
    JD.succeed CacheSecurityGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OwnerId", "ownerId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSecurityGroupName", "cacheSecurityGroupName" ]
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


{-|

<p>Represents a cluster's status within a particular cache security group.</p>

-}
type alias CacheSecurityGroupMembership =
    { cacheSecurityGroupName : Maybe String
    , status : Maybe String
    }


cacheSecurityGroupMembershipDecoder : JD.Decoder CacheSecurityGroupMembership
cacheSecurityGroupMembershipDecoder =
    JD.succeed CacheSecurityGroupMembership
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSecurityGroupName", "cacheSecurityGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )


{-| Type of HTTP response from cacheSecurityGrou
-}
type alias CacheSecurityGroupMessage =
    { marker : Maybe String
    , cacheSecurityGroups : Maybe (List CacheSecurityGroup)
    }


cacheSecurityGroupMessageDecoder : JD.Decoder CacheSecurityGroupMessage
cacheSecurityGroupMessageDecoder =
    JD.succeed CacheSecurityGroupMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSecurityGroups", "cacheSecurityGroups" ]
                (JD.list cacheSecurityGroupDecoder)
            )


{-|

<p>Represents the output of one of the following operations:</p> <ul> <li> <p> <code>CreateCacheSubnetGroup</code> </p> </li> <li> <p> <code>ModifyCacheSubnetGroup</code> </p> </li> </ul>

-}
type alias CacheSubnetGroup =
    { cacheSubnetGroupName : Maybe String
    , cacheSubnetGroupDescription : Maybe String
    , vpcId : Maybe String
    , subnets : Maybe (List Subnet)
    }


cacheSubnetGroupDecoder : JD.Decoder CacheSubnetGroup
cacheSubnetGroupDecoder =
    JD.succeed CacheSubnetGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSubnetGroupName", "cacheSubnetGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSubnetGroupDescription", "cacheSubnetGroupDescription" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcId", "vpcId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Subnets", "subnets" ]
                (JD.list subnetDecoder)
            )


{-| Type of HTTP response from cacheSubnetGrou
-}
type alias CacheSubnetGroupMessage =
    { marker : Maybe String
    , cacheSubnetGroups : Maybe (List CacheSubnetGroup)
    }


cacheSubnetGroupMessageDecoder : JD.Decoder CacheSubnetGroupMessage
cacheSubnetGroupMessageDecoder =
    JD.succeed CacheSubnetGroupMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSubnetGroups", "cacheSubnetGroups" ]
                (JD.list cacheSubnetGroupDecoder)
            )


{-| One of

  - `ChangeType_immediate`
  - `ChangeType_requires-reboot`

-}
type ChangeType
    = ChangeType_immediate
    | ChangeType_requires_reboot


changeTypeDecoder : JD.Decoder ChangeType
changeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "immediate" ->
                        JD.succeed ChangeType_immediate

                    "requires_reboot" ->
                        JD.succeed ChangeType_requires_reboot

                    _ ->
                        JD.fail "bad thing"
            )


changeTypeToString : ChangeType -> String
changeTypeToString val =
    case val of
        ChangeType_immediate ->
            "immediate"

        ChangeType_requires_reboot ->
            "requires_reboot"


{-|

<p>Node group (shard) configuration options when adding or removing replicas. Each node group (shard) configuration has the following members: NodeGroupId, NewReplicaCount, and PreferredAvailabilityZones. </p>

-}
type alias ConfigureShard =
    { nodeGroupId : String
    , newReplicaCount : Int
    , preferredAvailabilityZones : Maybe (List String)
    }


configureShardDecoder : JD.Decoder ConfigureShard
configureShardDecoder =
    JD.succeed ConfigureShard
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "NodeGroupId", "nodeGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "NewReplicaCount", "newReplicaCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreferredAvailabilityZones", "preferredAvailabilityZones" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from copySnapsh
-}
type alias CopySnapshotResult =
    { snapshot : Maybe Snapshot
    }


copySnapshotResultDecoder : JD.Decoder CopySnapshotResult
copySnapshotResultDecoder =
    JD.succeed CopySnapshotResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Snapshot", "snapshot" ]
                snapshotDecoder
            )


{-| Type of HTTP response from createCacheClust
-}
type alias CreateCacheClusterResult =
    { cacheCluster : Maybe CacheCluster
    }


createCacheClusterResultDecoder : JD.Decoder CreateCacheClusterResult
createCacheClusterResultDecoder =
    JD.succeed CreateCacheClusterResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheCluster", "cacheCluster" ]
                cacheClusterDecoder
            )


{-| Type of HTTP response from createCacheParameterGro
-}
type alias CreateCacheParameterGroupResult =
    { cacheParameterGroup : Maybe CacheParameterGroup
    }


createCacheParameterGroupResultDecoder : JD.Decoder CreateCacheParameterGroupResult
createCacheParameterGroupResultDecoder =
    JD.succeed CreateCacheParameterGroupResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheParameterGroup", "cacheParameterGroup" ]
                cacheParameterGroupDecoder
            )


{-| Type of HTTP response from createCacheSecurityGro
-}
type alias CreateCacheSecurityGroupResult =
    { cacheSecurityGroup : Maybe CacheSecurityGroup
    }


createCacheSecurityGroupResultDecoder : JD.Decoder CreateCacheSecurityGroupResult
createCacheSecurityGroupResultDecoder =
    JD.succeed CreateCacheSecurityGroupResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSecurityGroup", "cacheSecurityGroup" ]
                cacheSecurityGroupDecoder
            )


{-| Type of HTTP response from createCacheSubnetGro
-}
type alias CreateCacheSubnetGroupResult =
    { cacheSubnetGroup : Maybe CacheSubnetGroup
    }


createCacheSubnetGroupResultDecoder : JD.Decoder CreateCacheSubnetGroupResult
createCacheSubnetGroupResultDecoder =
    JD.succeed CreateCacheSubnetGroupResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSubnetGroup", "cacheSubnetGroup" ]
                cacheSubnetGroupDecoder
            )


{-| Type of HTTP response from createReplicationGro
-}
type alias CreateReplicationGroupResult =
    { replicationGroup : Maybe ReplicationGroup
    }


createReplicationGroupResultDecoder : JD.Decoder CreateReplicationGroupResult
createReplicationGroupResultDecoder =
    JD.succeed CreateReplicationGroupResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroup", "replicationGroup" ]
                replicationGroupDecoder
            )


{-| Type of HTTP response from createSnapsh
-}
type alias CreateSnapshotResult =
    { snapshot : Maybe Snapshot
    }


createSnapshotResultDecoder : JD.Decoder CreateSnapshotResult
createSnapshotResultDecoder =
    JD.succeed CreateSnapshotResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Snapshot", "snapshot" ]
                snapshotDecoder
            )


{-| Type of HTTP response from decreaseReplicaCou
-}
type alias DecreaseReplicaCountResult =
    { replicationGroup : Maybe ReplicationGroup
    }


decreaseReplicaCountResultDecoder : JD.Decoder DecreaseReplicaCountResult
decreaseReplicaCountResultDecoder =
    JD.succeed DecreaseReplicaCountResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroup", "replicationGroup" ]
                replicationGroupDecoder
            )


{-| Type of HTTP response from deleteCacheClust
-}
type alias DeleteCacheClusterResult =
    { cacheCluster : Maybe CacheCluster
    }


deleteCacheClusterResultDecoder : JD.Decoder DeleteCacheClusterResult
deleteCacheClusterResultDecoder =
    JD.succeed DeleteCacheClusterResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheCluster", "cacheCluster" ]
                cacheClusterDecoder
            )


{-| Type of HTTP response from deleteReplicationGro
-}
type alias DeleteReplicationGroupResult =
    { replicationGroup : Maybe ReplicationGroup
    }


deleteReplicationGroupResultDecoder : JD.Decoder DeleteReplicationGroupResult
deleteReplicationGroupResultDecoder =
    JD.succeed DeleteReplicationGroupResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroup", "replicationGroup" ]
                replicationGroupDecoder
            )


{-| Type of HTTP response from deleteSnapsh
-}
type alias DeleteSnapshotResult =
    { snapshot : Maybe Snapshot
    }


deleteSnapshotResultDecoder : JD.Decoder DeleteSnapshotResult
deleteSnapshotResultDecoder =
    JD.succeed DeleteSnapshotResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Snapshot", "snapshot" ]
                snapshotDecoder
            )


{-| Type of HTTP response from describeEngineDefaultParamete
-}
type alias DescribeEngineDefaultParametersResult =
    { engineDefaults : Maybe EngineDefaults
    }


describeEngineDefaultParametersResultDecoder : JD.Decoder DescribeEngineDefaultParametersResult
describeEngineDefaultParametersResultDecoder =
    JD.succeed DescribeEngineDefaultParametersResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineDefaults", "engineDefaults" ]
                engineDefaultsDecoder
            )


{-| Type of HTTP response from describeSnapshotsLis
-}
type alias DescribeSnapshotsListMessage =
    { marker : Maybe String
    , snapshots : Maybe (List Snapshot)
    }


describeSnapshotsListMessageDecoder : JD.Decoder DescribeSnapshotsListMessage
describeSnapshotsListMessageDecoder =
    JD.succeed DescribeSnapshotsListMessage
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


{-|

<p>Provides ownership and status information for an Amazon EC2 security group.</p>

-}
type alias EC2SecurityGroup =
    { status : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
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


{-|

<p>Represents the information required for client programs to connect to a cache node.</p>

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

<p>Represents the output of a <code>DescribeEngineDefaultParameters</code> operation.</p>

-}
type alias EngineDefaults =
    { cacheParameterGroupFamily : Maybe String
    , marker : Maybe String
    , parameters : Maybe (List Parameter)
    , cacheNodeTypeSpecificParameters : Maybe (List CacheNodeTypeSpecificParameter)
    }


engineDefaultsDecoder : JD.Decoder EngineDefaults
engineDefaultsDecoder =
    JD.succeed EngineDefaults
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheParameterGroupFamily", "cacheParameterGroupFamily" ]
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
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeTypeSpecificParameters", "cacheNodeTypeSpecificParameters" ]
                (JD.list cacheNodeTypeSpecificParameterDecoder)
            )


{-|

<p>Represents a single occurrence of something interesting within the system. Some examples of events are creating a cluster, adding or removing a cache node, or rebooting a node.</p>

-}
type alias Event =
    { sourceIdentifier : Maybe String
    , sourceType : Maybe SourceType
    , message : Maybe String
    , date : Maybe Posix
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
                [ "Date", "date" ]
                JDX.datetime
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


{-| Type of HTTP response from increaseReplicaCou
-}
type alias IncreaseReplicaCountResult =
    { replicationGroup : Maybe ReplicationGroup
    }


increaseReplicaCountResultDecoder : JD.Decoder IncreaseReplicaCountResult
increaseReplicaCountResultDecoder =
    JD.succeed IncreaseReplicaCountResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroup", "replicationGroup" ]
                replicationGroupDecoder
            )


{-| Type of HTTP response from modifyCacheClust
-}
type alias ModifyCacheClusterResult =
    { cacheCluster : Maybe CacheCluster
    }


modifyCacheClusterResultDecoder : JD.Decoder ModifyCacheClusterResult
modifyCacheClusterResultDecoder =
    JD.succeed ModifyCacheClusterResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheCluster", "cacheCluster" ]
                cacheClusterDecoder
            )


{-| Type of HTTP response from modifyCacheSubnetGro
-}
type alias ModifyCacheSubnetGroupResult =
    { cacheSubnetGroup : Maybe CacheSubnetGroup
    }


modifyCacheSubnetGroupResultDecoder : JD.Decoder ModifyCacheSubnetGroupResult
modifyCacheSubnetGroupResultDecoder =
    JD.succeed ModifyCacheSubnetGroupResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSubnetGroup", "cacheSubnetGroup" ]
                cacheSubnetGroupDecoder
            )


{-| Type of HTTP response from modifyReplicationGro
-}
type alias ModifyReplicationGroupResult =
    { replicationGroup : Maybe ReplicationGroup
    }


modifyReplicationGroupResultDecoder : JD.Decoder ModifyReplicationGroupResult
modifyReplicationGroupResultDecoder =
    JD.succeed ModifyReplicationGroupResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroup", "replicationGroup" ]
                replicationGroupDecoder
            )


{-| Type of HTTP response from modifyReplicationGroupShardConfigurati
-}
type alias ModifyReplicationGroupShardConfigurationResult =
    { replicationGroup : Maybe ReplicationGroup
    }


modifyReplicationGroupShardConfigurationResultDecoder : JD.Decoder ModifyReplicationGroupShardConfigurationResult
modifyReplicationGroupShardConfigurationResultDecoder =
    JD.succeed ModifyReplicationGroupShardConfigurationResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroup", "replicationGroup" ]
                replicationGroupDecoder
            )


{-|

<p>Represents a collection of cache nodes in a replication group. One node in the node group is the read/write primary node. All the other nodes are read-only Replica nodes.</p>

-}
type alias NodeGroup =
    { nodeGroupId : Maybe String
    , status : Maybe String
    , primaryEndpoint : Maybe Endpoint
    , readerEndpoint : Maybe Endpoint
    , slots : Maybe String
    , nodeGroupMembers : Maybe (List NodeGroupMember)
    }


nodeGroupDecoder : JD.Decoder NodeGroup
nodeGroupDecoder =
    JD.succeed NodeGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeGroupId", "nodeGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PrimaryEndpoint", "primaryEndpoint" ]
                endpointDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReaderEndpoint", "readerEndpoint" ]
                endpointDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Slots", "slots" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeGroupMembers", "nodeGroupMembers" ]
                (JD.list nodeGroupMemberDecoder)
            )


{-|

<p>Node group (shard) configuration options. Each node group (shard) configuration has the following: <code>Slots</code>, <code>PrimaryAvailabilityZone</code>, <code>ReplicaAvailabilityZones</code>, <code>ReplicaCount</code>.</p>

-}
type alias NodeGroupConfiguration =
    { nodeGroupId : Maybe String
    , slots : Maybe String
    , replicaCount : Maybe Int
    , primaryAvailabilityZone : Maybe String
    , replicaAvailabilityZones : Maybe (List String)
    }


nodeGroupConfigurationDecoder : JD.Decoder NodeGroupConfiguration
nodeGroupConfigurationDecoder =
    JD.succeed NodeGroupConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeGroupId", "nodeGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Slots", "slots" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicaCount", "replicaCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PrimaryAvailabilityZone", "primaryAvailabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicaAvailabilityZones", "replicaAvailabilityZones" ]
                (JD.list JD.string)
            )


{-|

<p>Represents a single node within a node group (shard).</p>

-}
type alias NodeGroupMember =
    { cacheClusterId : Maybe String
    , cacheNodeId : Maybe String
    , readEndpoint : Maybe Endpoint
    , preferredAvailabilityZone : Maybe String
    , currentRole : Maybe String
    }


nodeGroupMemberDecoder : JD.Decoder NodeGroupMember
nodeGroupMemberDecoder =
    JD.succeed NodeGroupMember
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheClusterId", "cacheClusterId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeId", "cacheNodeId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReadEndpoint", "readEndpoint" ]
                endpointDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreferredAvailabilityZone", "preferredAvailabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CurrentRole", "currentRole" ]
                JD.string
            )


{-|

<p>The status of the service update on the node group member </p>

-}
type alias NodeGroupMemberUpdateStatus =
    { cacheClusterId : Maybe String
    , cacheNodeId : Maybe String
    , nodeUpdateStatus : Maybe NodeUpdateStatus
    , nodeDeletionDate : Maybe Posix
    , nodeUpdateStartDate : Maybe Posix
    , nodeUpdateEndDate : Maybe Posix
    , nodeUpdateInitiatedBy : Maybe NodeUpdateInitiatedBy
    , nodeUpdateInitiatedDate : Maybe Posix
    , nodeUpdateStatusModifiedDate : Maybe Posix
    }


nodeGroupMemberUpdateStatusDecoder : JD.Decoder NodeGroupMemberUpdateStatus
nodeGroupMemberUpdateStatusDecoder =
    JD.succeed NodeGroupMemberUpdateStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheClusterId", "cacheClusterId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeId", "cacheNodeId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeUpdateStatus", "nodeUpdateStatus" ]
                nodeUpdateStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeDeletionDate", "nodeDeletionDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeUpdateStartDate", "nodeUpdateStartDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeUpdateEndDate", "nodeUpdateEndDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeUpdateInitiatedBy", "nodeUpdateInitiatedBy" ]
                nodeUpdateInitiatedByDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeUpdateInitiatedDate", "nodeUpdateInitiatedDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeUpdateStatusModifiedDate", "nodeUpdateStatusModifiedDate" ]
                JDX.datetime
            )


{-|

<p>The status of the service update on the node group </p>

-}
type alias NodeGroupUpdateStatus =
    { nodeGroupId : Maybe String
    , nodeGroupMemberUpdateStatus : Maybe (List NodeGroupMemberUpdateStatus)
    }


nodeGroupUpdateStatusDecoder : JD.Decoder NodeGroupUpdateStatus
nodeGroupUpdateStatusDecoder =
    JD.succeed NodeGroupUpdateStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeGroupId", "nodeGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeGroupMemberUpdateStatus", "nodeGroupMemberUpdateStatus" ]
                (JD.list nodeGroupMemberUpdateStatusDecoder)
            )


{-|

<p>Represents an individual cache node in a snapshot of a cluster.</p>

-}
type alias NodeSnapshot =
    { cacheClusterId : Maybe String
    , nodeGroupId : Maybe String
    , cacheNodeId : Maybe String
    , nodeGroupConfiguration : Maybe NodeGroupConfiguration
    , cacheSize : Maybe String
    , cacheNodeCreateTime : Maybe Posix
    , snapshotCreateTime : Maybe Posix
    }


nodeSnapshotDecoder : JD.Decoder NodeSnapshot
nodeSnapshotDecoder =
    JD.succeed NodeSnapshot
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheClusterId", "cacheClusterId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeGroupId", "nodeGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeId", "cacheNodeId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeGroupConfiguration", "nodeGroupConfiguration" ]
                nodeGroupConfigurationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSize", "cacheSize" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeCreateTime", "cacheNodeCreateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotCreateTime", "snapshotCreateTime" ]
                JDX.datetime
            )


{-| One of

  - `NodeUpdateInitiatedBy_system`
  - `NodeUpdateInitiatedBy_customer`

-}
type NodeUpdateInitiatedBy
    = NodeUpdateInitiatedBy_system
    | NodeUpdateInitiatedBy_customer


nodeUpdateInitiatedByDecoder : JD.Decoder NodeUpdateInitiatedBy
nodeUpdateInitiatedByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "system" ->
                        JD.succeed NodeUpdateInitiatedBy_system

                    "customer" ->
                        JD.succeed NodeUpdateInitiatedBy_customer

                    _ ->
                        JD.fail "bad thing"
            )


nodeUpdateInitiatedByToString : NodeUpdateInitiatedBy -> String
nodeUpdateInitiatedByToString val =
    case val of
        NodeUpdateInitiatedBy_system ->
            "system"

        NodeUpdateInitiatedBy_customer ->
            "customer"


{-| One of

  - `NodeUpdateStatus_not-applied`
  - `NodeUpdateStatus_waiting-to-start`
  - `NodeUpdateStatus_in-progress`
  - `NodeUpdateStatus_stopping`
  - `NodeUpdateStatus_stopped`
  - `NodeUpdateStatus_complete`

-}
type NodeUpdateStatus
    = NodeUpdateStatus_not_applied
    | NodeUpdateStatus_waiting_to_start
    | NodeUpdateStatus_in_progress
    | NodeUpdateStatus_stopping
    | NodeUpdateStatus_stopped
    | NodeUpdateStatus_complete


nodeUpdateStatusDecoder : JD.Decoder NodeUpdateStatus
nodeUpdateStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "not_applied" ->
                        JD.succeed NodeUpdateStatus_not_applied

                    "waiting_to_start" ->
                        JD.succeed NodeUpdateStatus_waiting_to_start

                    "in_progress" ->
                        JD.succeed NodeUpdateStatus_in_progress

                    "stopping" ->
                        JD.succeed NodeUpdateStatus_stopping

                    "stopped" ->
                        JD.succeed NodeUpdateStatus_stopped

                    "complete" ->
                        JD.succeed NodeUpdateStatus_complete

                    _ ->
                        JD.fail "bad thing"
            )


nodeUpdateStatusToString : NodeUpdateStatus -> String
nodeUpdateStatusToString val =
    case val of
        NodeUpdateStatus_not_applied ->
            "not_applied"

        NodeUpdateStatus_waiting_to_start ->
            "waiting_to_start"

        NodeUpdateStatus_in_progress ->
            "in_progress"

        NodeUpdateStatus_stopping ->
            "stopping"

        NodeUpdateStatus_stopped ->
            "stopped"

        NodeUpdateStatus_complete ->
            "complete"


{-|

<p>Describes a notification topic and its status. Notification topics are used for publishing ElastiCache events to subscribers using Amazon Simple Notification Service (SNS).</p>

-}
type alias NotificationConfiguration =
    { topicArn : Maybe String
    , topicStatus : Maybe String
    }


notificationConfigurationDecoder : JD.Decoder NotificationConfiguration
notificationConfigurationDecoder =
    JD.succeed NotificationConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TopicArn", "topicArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TopicStatus", "topicStatus" ]
                JD.string
            )


{-|

<p>Describes an individual setting that controls some aspect of ElastiCache behavior.</p>

-}
type alias Parameter =
    { parameterName : Maybe String
    , parameterValue : Maybe String
    , description : Maybe String
    , source : Maybe String
    , dataType : Maybe String
    , allowedValues : Maybe String
    , isModifiable : Maybe Bool
    , minimumEngineVersion : Maybe String
    , changeType : Maybe ChangeType
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
                [ "IsModifiable", "isModifiable" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MinimumEngineVersion", "minimumEngineVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ChangeType", "changeType" ]
                changeTypeDecoder
            )


{-|

<p>Describes a name-value pair that is used to update the value of a parameter.</p>

-}
type alias ParameterNameValue =
    { parameterName : Maybe String
    , parameterValue : Maybe String
    }


parameterNameValueDecoder : JD.Decoder ParameterNameValue
parameterNameValueDecoder =
    JD.succeed ParameterNameValue
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


{-| One of

  - `PendingAutomaticFailoverStatus_enabled`
  - `PendingAutomaticFailoverStatus_disabled`

-}
type PendingAutomaticFailoverStatus
    = PendingAutomaticFailoverStatus_enabled
    | PendingAutomaticFailoverStatus_disabled


pendingAutomaticFailoverStatusDecoder : JD.Decoder PendingAutomaticFailoverStatus
pendingAutomaticFailoverStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "enabled" ->
                        JD.succeed PendingAutomaticFailoverStatus_enabled

                    "disabled" ->
                        JD.succeed PendingAutomaticFailoverStatus_disabled

                    _ ->
                        JD.fail "bad thing"
            )


pendingAutomaticFailoverStatusToString : PendingAutomaticFailoverStatus -> String
pendingAutomaticFailoverStatusToString val =
    case val of
        PendingAutomaticFailoverStatus_enabled ->
            "enabled"

        PendingAutomaticFailoverStatus_disabled ->
            "disabled"


{-|

<p>A group of settings that are applied to the cluster in the future, or that are currently being applied.</p>

-}
type alias PendingModifiedValues =
    { numCacheNodes : Maybe Int
    , cacheNodeIdsToRemove : Maybe (List String)
    , engineVersion : Maybe String
    , cacheNodeType : Maybe String
    }


pendingModifiedValuesDecoder : JD.Decoder PendingModifiedValues
pendingModifiedValuesDecoder =
    JD.succeed PendingModifiedValues
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NumCacheNodes", "numCacheNodes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeIdsToRemove", "cacheNodeIdsToRemove" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineVersion", "engineVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeType", "cacheNodeType" ]
                JD.string
            )


{-|

<p>Update action that has been processed for the corresponding apply/stop request</p>

-}
type alias ProcessedUpdateAction =
    { replicationGroupId : Maybe String
    , serviceUpdateName : Maybe String
    , updateActionStatus : Maybe UpdateActionStatus
    }


processedUpdateActionDecoder : JD.Decoder ProcessedUpdateAction
processedUpdateActionDecoder =
    JD.succeed ProcessedUpdateAction
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroupId", "replicationGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateName", "serviceUpdateName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UpdateActionStatus", "updateActionStatus" ]
                updateActionStatusDecoder
            )


{-| Type of HTTP response from purchaseReservedCacheNodesOfferi
-}
type alias PurchaseReservedCacheNodesOfferingResult =
    { reservedCacheNode : Maybe ReservedCacheNode
    }


purchaseReservedCacheNodesOfferingResultDecoder : JD.Decoder PurchaseReservedCacheNodesOfferingResult
purchaseReservedCacheNodesOfferingResultDecoder =
    JD.succeed PurchaseReservedCacheNodesOfferingResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedCacheNode", "reservedCacheNode" ]
                reservedCacheNodeDecoder
            )


{-| Type of HTTP response from rebootCacheClust
-}
type alias RebootCacheClusterResult =
    { cacheCluster : Maybe CacheCluster
    }


rebootCacheClusterResultDecoder : JD.Decoder RebootCacheClusterResult
rebootCacheClusterResultDecoder =
    JD.succeed RebootCacheClusterResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheCluster", "cacheCluster" ]
                cacheClusterDecoder
            )


{-|

<p>Contains the specific price and frequency of a recurring charges for a reserved cache node, or for a reserved cache node offering.</p>

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

<p>Contains all of the attributes of a specific Redis replication group.</p>

-}
type alias ReplicationGroup =
    { replicationGroupId : Maybe String
    , description : Maybe String
    , status : Maybe String
    , pendingModifiedValues : Maybe ReplicationGroupPendingModifiedValues
    , memberClusters : Maybe (List String)
    , nodeGroups : Maybe (List NodeGroup)
    , snapshottingClusterId : Maybe String
    , automaticFailover : Maybe AutomaticFailoverStatus
    , configurationEndpoint : Maybe Endpoint
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , clusterEnabled : Maybe Bool
    , cacheNodeType : Maybe String
    , authTokenEnabled : Maybe Bool
    , transitEncryptionEnabled : Maybe Bool
    , atRestEncryptionEnabled : Maybe Bool
    }


replicationGroupDecoder : JD.Decoder ReplicationGroup
replicationGroupDecoder =
    JD.succeed ReplicationGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroupId", "replicationGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PendingModifiedValues", "pendingModifiedValues" ]
                replicationGroupPendingModifiedValuesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MemberClusters", "memberClusters" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeGroups", "nodeGroups" ]
                (JD.list nodeGroupDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshottingClusterId", "snapshottingClusterId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutomaticFailover", "automaticFailover" ]
                automaticFailoverStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConfigurationEndpoint", "configurationEndpoint" ]
                endpointDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotRetentionLimit", "snapshotRetentionLimit" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotWindow", "snapshotWindow" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterEnabled", "clusterEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeType", "cacheNodeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AuthTokenEnabled", "authTokenEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TransitEncryptionEnabled", "transitEncryptionEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AtRestEncryptionEnabled", "atRestEncryptionEnabled" ]
                JD.bool
            )


{-| Type of HTTP response from replicationGrou
-}
type alias ReplicationGroupMessage =
    { marker : Maybe String
    , replicationGroups : Maybe (List ReplicationGroup)
    }


replicationGroupMessageDecoder : JD.Decoder ReplicationGroupMessage
replicationGroupMessageDecoder =
    JD.succeed ReplicationGroupMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroups", "replicationGroups" ]
                (JD.list replicationGroupDecoder)
            )


{-|

<p>The settings to be applied to the Redis replication group, either immediately or during the next maintenance window.</p>

-}
type alias ReplicationGroupPendingModifiedValues =
    { primaryClusterId : Maybe String
    , automaticFailoverStatus : Maybe PendingAutomaticFailoverStatus
    , resharding : Maybe ReshardingStatus
    }


replicationGroupPendingModifiedValuesDecoder : JD.Decoder ReplicationGroupPendingModifiedValues
replicationGroupPendingModifiedValuesDecoder =
    JD.succeed ReplicationGroupPendingModifiedValues
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PrimaryClusterId", "primaryClusterId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutomaticFailoverStatus", "automaticFailoverStatus" ]
                pendingAutomaticFailoverStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Resharding", "resharding" ]
                reshardingStatusDecoder
            )


{-|

<p>Represents the output of a <code>PurchaseReservedCacheNodesOffering</code> operation.</p>

-}
type alias ReservedCacheNode =
    { reservedCacheNodeId : Maybe String
    , reservedCacheNodesOfferingId : Maybe String
    , cacheNodeType : Maybe String
    , startTime : Maybe Posix
    , duration : Maybe Int
    , fixedPrice : Maybe Float
    , usagePrice : Maybe Float
    , cacheNodeCount : Maybe Int
    , productDescription : Maybe String
    , offeringType : Maybe String
    , state : Maybe String
    , recurringCharges : Maybe (List RecurringCharge)
    , reservationARN : Maybe String
    }


reservedCacheNodeDecoder : JD.Decoder ReservedCacheNode
reservedCacheNodeDecoder =
    JD.succeed ReservedCacheNode
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedCacheNodeId", "reservedCacheNodeId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedCacheNodesOfferingId", "reservedCacheNodesOfferingId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeType", "cacheNodeType" ]
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
                [ "CacheNodeCount", "cacheNodeCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProductDescription", "productDescription" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OfferingType", "offeringType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "State", "state" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RecurringCharges", "recurringCharges" ]
                (JD.list recurringChargeDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservationARN", "reservationARN" ]
                JD.string
            )


{-| Type of HTTP response from reservedCacheNod
-}
type alias ReservedCacheNodeMessage =
    { marker : Maybe String
    , reservedCacheNodes : Maybe (List ReservedCacheNode)
    }


reservedCacheNodeMessageDecoder : JD.Decoder ReservedCacheNodeMessage
reservedCacheNodeMessageDecoder =
    JD.succeed ReservedCacheNodeMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedCacheNodes", "reservedCacheNodes" ]
                (JD.list reservedCacheNodeDecoder)
            )


{-|

<p>Describes all of the attributes of a reserved cache node offering.</p>

-}
type alias ReservedCacheNodesOffering =
    { reservedCacheNodesOfferingId : Maybe String
    , cacheNodeType : Maybe String
    , duration : Maybe Int
    , fixedPrice : Maybe Float
    , usagePrice : Maybe Float
    , productDescription : Maybe String
    , offeringType : Maybe String
    , recurringCharges : Maybe (List RecurringCharge)
    }


reservedCacheNodesOfferingDecoder : JD.Decoder ReservedCacheNodesOffering
reservedCacheNodesOfferingDecoder =
    JD.succeed ReservedCacheNodesOffering
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedCacheNodesOfferingId", "reservedCacheNodesOfferingId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeType", "cacheNodeType" ]
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
                [ "ProductDescription", "productDescription" ]
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


{-| Type of HTTP response from reservedCacheNodesOfferin
-}
type alias ReservedCacheNodesOfferingMessage =
    { marker : Maybe String
    , reservedCacheNodesOfferings : Maybe (List ReservedCacheNodesOffering)
    }


reservedCacheNodesOfferingMessageDecoder : JD.Decoder ReservedCacheNodesOfferingMessage
reservedCacheNodesOfferingMessageDecoder =
    JD.succeed ReservedCacheNodesOfferingMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReservedCacheNodesOfferings", "reservedCacheNodesOfferings" ]
                (JD.list reservedCacheNodesOfferingDecoder)
            )


{-|

<p>A list of <code>PreferredAvailabilityZones</code> objects that specifies the configuration of a node group in the resharded cluster.</p>

-}
type alias ReshardingConfiguration =
    { nodeGroupId : Maybe String
    , preferredAvailabilityZones : Maybe (List String)
    }


reshardingConfigurationDecoder : JD.Decoder ReshardingConfiguration
reshardingConfigurationDecoder =
    JD.succeed ReshardingConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeGroupId", "nodeGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreferredAvailabilityZones", "preferredAvailabilityZones" ]
                (JD.list JD.string)
            )


{-|

<p>The status of an online resharding operation.</p>

-}
type alias ReshardingStatus =
    { slotMigration : Maybe SlotMigration
    }


reshardingStatusDecoder : JD.Decoder ReshardingStatus
reshardingStatusDecoder =
    JD.succeed ReshardingStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SlotMigration", "slotMigration" ]
                slotMigrationDecoder
            )


{-| Type of HTTP response from revokeCacheSecurityGroupIngre
-}
type alias RevokeCacheSecurityGroupIngressResult =
    { cacheSecurityGroup : Maybe CacheSecurityGroup
    }


revokeCacheSecurityGroupIngressResultDecoder : JD.Decoder RevokeCacheSecurityGroupIngressResult
revokeCacheSecurityGroupIngressResultDecoder =
    JD.succeed RevokeCacheSecurityGroupIngressResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSecurityGroup", "cacheSecurityGroup" ]
                cacheSecurityGroupDecoder
            )


{-|

<p>Represents a single cache security group and its status.</p>

-}
type alias SecurityGroupMembership =
    { securityGroupId : Maybe String
    , status : Maybe String
    }


securityGroupMembershipDecoder : JD.Decoder SecurityGroupMembership
securityGroupMembershipDecoder =
    JD.succeed SecurityGroupMembership
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SecurityGroupId", "securityGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )


{-|

<p>An update that you can apply to your Redis clusters.</p>

-}
type alias ServiceUpdate =
    { serviceUpdateName : Maybe String
    , serviceUpdateReleaseDate : Maybe Posix
    , serviceUpdateEndDate : Maybe Posix
    , serviceUpdateSeverity : Maybe ServiceUpdateSeverity
    , serviceUpdateRecommendedApplyByDate : Maybe Posix
    , serviceUpdateStatus : Maybe ServiceUpdateStatus
    , serviceUpdateDescription : Maybe String
    , serviceUpdateType : Maybe ServiceUpdateType
    , engine : Maybe String
    , engineVersion : Maybe String
    , autoUpdateAfterRecommendedApplyByDate : Maybe Bool
    , estimatedUpdateTime : Maybe String
    }


serviceUpdateDecoder : JD.Decoder ServiceUpdate
serviceUpdateDecoder =
    JD.succeed ServiceUpdate
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateName", "serviceUpdateName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateReleaseDate", "serviceUpdateReleaseDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateEndDate", "serviceUpdateEndDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateSeverity", "serviceUpdateSeverity" ]
                serviceUpdateSeverityDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateRecommendedApplyByDate", "serviceUpdateRecommendedApplyByDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateStatus", "serviceUpdateStatus" ]
                serviceUpdateStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateDescription", "serviceUpdateDescription" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateType", "serviceUpdateType" ]
                serviceUpdateTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Engine", "engine" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineVersion", "engineVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoUpdateAfterRecommendedApplyByDate", "autoUpdateAfterRecommendedApplyByDate" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EstimatedUpdateTime", "estimatedUpdateTime" ]
                JD.string
            )


{-| One of

  - `ServiceUpdateSeverity_critical`
  - `ServiceUpdateSeverity_important`
  - `ServiceUpdateSeverity_medium`
  - `ServiceUpdateSeverity_low`

-}
type ServiceUpdateSeverity
    = ServiceUpdateSeverity_critical
    | ServiceUpdateSeverity_important
    | ServiceUpdateSeverity_medium
    | ServiceUpdateSeverity_low


serviceUpdateSeverityDecoder : JD.Decoder ServiceUpdateSeverity
serviceUpdateSeverityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "critical" ->
                        JD.succeed ServiceUpdateSeverity_critical

                    "important" ->
                        JD.succeed ServiceUpdateSeverity_important

                    "medium" ->
                        JD.succeed ServiceUpdateSeverity_medium

                    "low" ->
                        JD.succeed ServiceUpdateSeverity_low

                    _ ->
                        JD.fail "bad thing"
            )


serviceUpdateSeverityToString : ServiceUpdateSeverity -> String
serviceUpdateSeverityToString val =
    case val of
        ServiceUpdateSeverity_critical ->
            "critical"

        ServiceUpdateSeverity_important ->
            "important"

        ServiceUpdateSeverity_medium ->
            "medium"

        ServiceUpdateSeverity_low ->
            "low"


{-| One of

  - `ServiceUpdateStatus_available`
  - `ServiceUpdateStatus_cancelled`
  - `ServiceUpdateStatus_expired`

-}
type ServiceUpdateStatus
    = ServiceUpdateStatus_available
    | ServiceUpdateStatus_cancelled
    | ServiceUpdateStatus_expired


serviceUpdateStatusDecoder : JD.Decoder ServiceUpdateStatus
serviceUpdateStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "available" ->
                        JD.succeed ServiceUpdateStatus_available

                    "cancelled" ->
                        JD.succeed ServiceUpdateStatus_cancelled

                    "expired" ->
                        JD.succeed ServiceUpdateStatus_expired

                    _ ->
                        JD.fail "bad thing"
            )


serviceUpdateStatusToString : ServiceUpdateStatus -> String
serviceUpdateStatusToString val =
    case val of
        ServiceUpdateStatus_available ->
            "available"

        ServiceUpdateStatus_cancelled ->
            "cancelled"

        ServiceUpdateStatus_expired ->
            "expired"


{-| One of

  - `ServiceUpdateType_security-update`

-}
type ServiceUpdateType
    = ServiceUpdateType_security_update


serviceUpdateTypeDecoder : JD.Decoder ServiceUpdateType
serviceUpdateTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "security_update" ->
                        JD.succeed ServiceUpdateType_security_update

                    _ ->
                        JD.fail "bad thing"
            )


serviceUpdateTypeToString : ServiceUpdateType -> String
serviceUpdateTypeToString val =
    case val of
        ServiceUpdateType_security_update ->
            "security_update"


{-| Type of HTTP response from serviceUpdate
-}
type alias ServiceUpdatesMessage =
    { marker : Maybe String
    , serviceUpdates : Maybe (List ServiceUpdate)
    }


serviceUpdatesMessageDecoder : JD.Decoder ServiceUpdatesMessage
serviceUpdatesMessageDecoder =
    JD.succeed ServiceUpdatesMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdates", "serviceUpdates" ]
                (JD.list serviceUpdateDecoder)
            )


{-| One of

  - `SlaMet_yes`
  - `SlaMet_no`
  - `SlaMet_n/a`

-}
type SlaMet
    = SlaMet_yes
    | SlaMet_no
    | SlaMet_n_a


slaMetDecoder : JD.Decoder SlaMet
slaMetDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "yes" ->
                        JD.succeed SlaMet_yes

                    "no" ->
                        JD.succeed SlaMet_no

                    "n_a" ->
                        JD.succeed SlaMet_n_a

                    _ ->
                        JD.fail "bad thing"
            )


slaMetToString : SlaMet -> String
slaMetToString val =
    case val of
        SlaMet_yes ->
            "yes"

        SlaMet_no ->
            "no"

        SlaMet_n_a ->
            "n_a"


{-|

<p>Represents the progress of an online resharding operation.</p>

-}
type alias SlotMigration =
    { progressPercentage : Maybe Float
    }


slotMigrationDecoder : JD.Decoder SlotMigration
slotMigrationDecoder =
    JD.succeed SlotMigration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProgressPercentage", "progressPercentage" ]
                JD.float
            )


{-|

<p>Represents a copy of an entire Redis cluster as of the time when the snapshot was taken.</p>

-}
type alias Snapshot =
    { snapshotName : Maybe String
    , replicationGroupId : Maybe String
    , replicationGroupDescription : Maybe String
    , cacheClusterId : Maybe String
    , snapshotStatus : Maybe String
    , snapshotSource : Maybe String
    , cacheNodeType : Maybe String
    , engine : Maybe String
    , engineVersion : Maybe String
    , numCacheNodes : Maybe Int
    , preferredAvailabilityZone : Maybe String
    , cacheClusterCreateTime : Maybe Posix
    , preferredMaintenanceWindow : Maybe String
    , topicArn : Maybe String
    , port_ : Maybe Int
    , cacheParameterGroupName : Maybe String
    , cacheSubnetGroupName : Maybe String
    , vpcId : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , numNodeGroups : Maybe Int
    , automaticFailover : Maybe AutomaticFailoverStatus
    , nodeSnapshots : Maybe (List NodeSnapshot)
    }


snapshotDecoder : JD.Decoder Snapshot
snapshotDecoder =
    JD.succeed Snapshot
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotName", "snapshotName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroupId", "replicationGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroupDescription", "replicationGroupDescription" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheClusterId", "cacheClusterId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotStatus", "snapshotStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotSource", "snapshotSource" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheNodeType", "cacheNodeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Engine", "engine" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineVersion", "engineVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NumCacheNodes", "numCacheNodes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreferredAvailabilityZone", "preferredAvailabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheClusterCreateTime", "cacheClusterCreateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreferredMaintenanceWindow", "preferredMaintenanceWindow" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TopicArn", "topicArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Port", "port" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheParameterGroupName", "cacheParameterGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheSubnetGroupName", "cacheSubnetGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcId", "vpcId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoMinorVersionUpgrade", "autoMinorVersionUpgrade" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotRetentionLimit", "snapshotRetentionLimit" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotWindow", "snapshotWindow" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NumNodeGroups", "numNodeGroups" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutomaticFailover", "automaticFailover" ]
                automaticFailoverStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeSnapshots", "nodeSnapshots" ]
                (JD.list nodeSnapshotDecoder)
            )


{-| One of

  - `SourceType_cache-cluster`
  - `SourceType_cache-parameter-group`
  - `SourceType_cache-security-group`
  - `SourceType_cache-subnet-group`
  - `SourceType_replication-group`

-}
type SourceType
    = SourceType_cache_cluster
    | SourceType_cache_parameter_group
    | SourceType_cache_security_group
    | SourceType_cache_subnet_group
    | SourceType_replication_group


sourceTypeDecoder : JD.Decoder SourceType
sourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "cache_cluster" ->
                        JD.succeed SourceType_cache_cluster

                    "cache_parameter_group" ->
                        JD.succeed SourceType_cache_parameter_group

                    "cache_security_group" ->
                        JD.succeed SourceType_cache_security_group

                    "cache_subnet_group" ->
                        JD.succeed SourceType_cache_subnet_group

                    "replication_group" ->
                        JD.succeed SourceType_replication_group

                    _ ->
                        JD.fail "bad thing"
            )


sourceTypeToString : SourceType -> String
sourceTypeToString val =
    case val of
        SourceType_cache_cluster ->
            "cache_cluster"

        SourceType_cache_parameter_group ->
            "cache_parameter_group"

        SourceType_cache_security_group ->
            "cache_security_group"

        SourceType_cache_subnet_group ->
            "cache_subnet_group"

        SourceType_replication_group ->
            "replication_group"


{-|

<p>Represents the subnet associated with a cluster. This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with ElastiCache.</p>

-}
type alias Subnet =
    { subnetIdentifier : Maybe String
    , subnetAvailabilityZone : Maybe AvailabilityZone
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


{-|

<p>A cost allocation Tag that can be added to an ElastiCache cluster or replication group. Tags are composed of a Key/Value pair. A tag with a null Value is permitted.</p>

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


{-| Type of HTTP response from tagLis
-}
type alias TagListMessage =
    { tagList : Maybe (List Tag)
    }


tagListMessageDecoder : JD.Decoder TagListMessage
tagListMessageDecoder =
    JD.succeed TagListMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TagList", "tagList" ]
                (JD.list tagDecoder)
            )


{-| Type of HTTP response from testFailov
-}
type alias TestFailoverResult =
    { replicationGroup : Maybe ReplicationGroup
    }


testFailoverResultDecoder : JD.Decoder TestFailoverResult
testFailoverResultDecoder =
    JD.succeed TestFailoverResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroup", "replicationGroup" ]
                replicationGroupDecoder
            )


{-|

<p>Filters update actions from the service updates that are in available status during the time range.</p>

-}
type alias TimeRangeFilter =
    { startTime : Maybe Posix
    , endTime : Maybe Posix
    }


timeRangeFilterDecoder : JD.Decoder TimeRangeFilter
timeRangeFilterDecoder =
    JD.succeed TimeRangeFilter
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


{-|

<p>Update action that has failed to be processed for the corresponding apply/stop request</p>

-}
type alias UnprocessedUpdateAction =
    { replicationGroupId : Maybe String
    , serviceUpdateName : Maybe String
    , errorType : Maybe String
    , errorMessage : Maybe String
    }


unprocessedUpdateActionDecoder : JD.Decoder UnprocessedUpdateAction
unprocessedUpdateActionDecoder =
    JD.succeed UnprocessedUpdateAction
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroupId", "replicationGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateName", "serviceUpdateName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorType", "errorType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorMessage", "errorMessage" ]
                JD.string
            )


{-|

<p>The status of the service update for a specific replication group</p>

-}
type alias UpdateAction =
    { replicationGroupId : Maybe String
    , serviceUpdateName : Maybe String
    , serviceUpdateReleaseDate : Maybe Posix
    , serviceUpdateSeverity : Maybe ServiceUpdateSeverity
    , serviceUpdateStatus : Maybe ServiceUpdateStatus
    , serviceUpdateRecommendedApplyByDate : Maybe Posix
    , serviceUpdateType : Maybe ServiceUpdateType
    , updateActionAvailableDate : Maybe Posix
    , updateActionStatus : Maybe UpdateActionStatus
    , nodesUpdated : Maybe String
    , updateActionStatusModifiedDate : Maybe Posix
    , slaMet : Maybe SlaMet
    , nodeGroupUpdateStatus : Maybe (List NodeGroupUpdateStatus)
    , estimatedUpdateTime : Maybe String
    }


updateActionDecoder : JD.Decoder UpdateAction
updateActionDecoder =
    JD.succeed UpdateAction
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationGroupId", "replicationGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateName", "serviceUpdateName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateReleaseDate", "serviceUpdateReleaseDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateSeverity", "serviceUpdateSeverity" ]
                serviceUpdateSeverityDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateStatus", "serviceUpdateStatus" ]
                serviceUpdateStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateRecommendedApplyByDate", "serviceUpdateRecommendedApplyByDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceUpdateType", "serviceUpdateType" ]
                serviceUpdateTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UpdateActionAvailableDate", "updateActionAvailableDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UpdateActionStatus", "updateActionStatus" ]
                updateActionStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodesUpdated", "nodesUpdated" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UpdateActionStatusModifiedDate", "updateActionStatusModifiedDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SlaMet", "slaMet" ]
                slaMetDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeGroupUpdateStatus", "nodeGroupUpdateStatus" ]
                (JD.list nodeGroupUpdateStatusDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EstimatedUpdateTime", "estimatedUpdateTime" ]
                JD.string
            )


{-| Type of HTTP response from updateActionResult
-}
type alias UpdateActionResultsMessage =
    { processedUpdateActions : Maybe (List ProcessedUpdateAction)
    , unprocessedUpdateActions : Maybe (List UnprocessedUpdateAction)
    }


updateActionResultsMessageDecoder : JD.Decoder UpdateActionResultsMessage
updateActionResultsMessageDecoder =
    JD.succeed UpdateActionResultsMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProcessedUpdateActions", "processedUpdateActions" ]
                (JD.list processedUpdateActionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UnprocessedUpdateActions", "unprocessedUpdateActions" ]
                (JD.list unprocessedUpdateActionDecoder)
            )


{-| One of

  - `UpdateActionStatus_not-applied`
  - `UpdateActionStatus_waiting-to-start`
  - `UpdateActionStatus_in-progress`
  - `UpdateActionStatus_stopping`
  - `UpdateActionStatus_stopped`
  - `UpdateActionStatus_complete`

-}
type UpdateActionStatus
    = UpdateActionStatus_not_applied
    | UpdateActionStatus_waiting_to_start
    | UpdateActionStatus_in_progress
    | UpdateActionStatus_stopping
    | UpdateActionStatus_stopped
    | UpdateActionStatus_complete


updateActionStatusDecoder : JD.Decoder UpdateActionStatus
updateActionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "not_applied" ->
                        JD.succeed UpdateActionStatus_not_applied

                    "waiting_to_start" ->
                        JD.succeed UpdateActionStatus_waiting_to_start

                    "in_progress" ->
                        JD.succeed UpdateActionStatus_in_progress

                    "stopping" ->
                        JD.succeed UpdateActionStatus_stopping

                    "stopped" ->
                        JD.succeed UpdateActionStatus_stopped

                    "complete" ->
                        JD.succeed UpdateActionStatus_complete

                    _ ->
                        JD.fail "bad thing"
            )


updateActionStatusToString : UpdateActionStatus -> String
updateActionStatusToString val =
    case val of
        UpdateActionStatus_not_applied ->
            "not_applied"

        UpdateActionStatus_waiting_to_start ->
            "waiting_to_start"

        UpdateActionStatus_in_progress ->
            "in_progress"

        UpdateActionStatus_stopping ->
            "stopping"

        UpdateActionStatus_stopped ->
            "stopped"

        UpdateActionStatus_complete ->
            "complete"


{-| Type of HTTP response from updateAction
-}
type alias UpdateActionsMessage =
    { marker : Maybe String
    , updateActions : Maybe (List UpdateAction)
    }


updateActionsMessageDecoder : JD.Decoder UpdateActionsMessage
updateActionsMessageDecoder =
    JD.succeed UpdateActionsMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UpdateActions", "updateActions" ]
                (JD.list updateActionDecoder)
            )


{-|

<p>Represents the input of an AddTagsToResource operation.</p>

-}
type alias AddTagsToResourceMessage =
    { resourceName : String
    , tags : List Tag
    }


{-|

<p>Represents the input of an AuthorizeCacheSecurityGroupIngress operation.</p>

-}
type alias AuthorizeCacheSecurityGroupIngressMessage =
    { cacheSecurityGroupName : String
    , eC2SecurityGroupName : String
    , eC2SecurityGroupOwnerId : String
    }


{-| undefined
-}
type alias BatchApplyUpdateActionMessage =
    { replicationGroupIds : List String
    , serviceUpdateName : String
    }


{-| undefined
-}
type alias BatchStopUpdateActionMessage =
    { replicationGroupIds : List String
    , serviceUpdateName : String
    }


{-|

<p>Represents the input of a <code>CopySnapshotMessage</code> operation.</p>

-}
type alias CopySnapshotMessage =
    { sourceSnapshotName : String
    , targetSnapshotName : String
    , targetBucket : Maybe String
    }


{-|

<p>Represents the input of a CreateCacheCluster operation.</p>

-}
type alias CreateCacheClusterMessage =
    { cacheClusterId : String
    , replicationGroupId : Maybe String
    , aZMode : Maybe AZMode
    , preferredAvailabilityZone : Maybe String
    , preferredAvailabilityZones : Maybe (List String)
    , numCacheNodes : Maybe Int
    , cacheNodeType : Maybe String
    , engine : Maybe String
    , engineVersion : Maybe String
    , cacheParameterGroupName : Maybe String
    , cacheSubnetGroupName : Maybe String
    , cacheSecurityGroupNames : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    , tags : Maybe (List Tag)
    , snapshotArns : Maybe (List String)
    , snapshotName : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , port_ : Maybe Int
    , notificationTopicArn : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , authToken : Maybe String
    }


{-|

<p>Represents the input of a <code>CreateCacheParameterGroup</code> operation.</p>

-}
type alias CreateCacheParameterGroupMessage =
    { cacheParameterGroupName : String
    , cacheParameterGroupFamily : String
    , description : String
    }


{-|

<p>Represents the input of a <code>CreateCacheSecurityGroup</code> operation.</p>

-}
type alias CreateCacheSecurityGroupMessage =
    { cacheSecurityGroupName : String
    , description : String
    }


{-|

<p>Represents the input of a <code>CreateCacheSubnetGroup</code> operation.</p>

-}
type alias CreateCacheSubnetGroupMessage =
    { cacheSubnetGroupName : String
    , cacheSubnetGroupDescription : String
    , subnetIds : List String
    }


{-|

<p>Represents the input of a <code>CreateReplicationGroup</code> operation.</p>

-}
type alias CreateReplicationGroupMessage =
    { replicationGroupId : String
    , replicationGroupDescription : String
    , primaryClusterId : Maybe String
    , automaticFailoverEnabled : Maybe Bool
    , numCacheClusters : Maybe Int
    , preferredCacheClusterAZs : Maybe (List String)
    , numNodeGroups : Maybe Int
    , replicasPerNodeGroup : Maybe Int
    , nodeGroupConfiguration : Maybe (List NodeGroupConfiguration)
    , cacheNodeType : Maybe String
    , engine : Maybe String
    , engineVersion : Maybe String
    , cacheParameterGroupName : Maybe String
    , cacheSubnetGroupName : Maybe String
    , cacheSecurityGroupNames : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    , tags : Maybe (List Tag)
    , snapshotArns : Maybe (List String)
    , snapshotName : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , port_ : Maybe Int
    , notificationTopicArn : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , authToken : Maybe String
    , transitEncryptionEnabled : Maybe Bool
    , atRestEncryptionEnabled : Maybe Bool
    }


{-|

<p>Represents the input of a <code>CreateSnapshot</code> operation.</p>

-}
type alias CreateSnapshotMessage =
    { replicationGroupId : Maybe String
    , cacheClusterId : Maybe String
    , snapshotName : String
    }


{-| undefined
-}
type alias DecreaseReplicaCountMessage =
    { replicationGroupId : String
    , newReplicaCount : Maybe Int
    , replicaConfiguration : Maybe (List ConfigureShard)
    , replicasToRemove : Maybe (List String)
    , applyImmediately : Bool
    }


{-|

<p>Represents the input of a <code>DeleteCacheCluster</code> operation.</p>

-}
type alias DeleteCacheClusterMessage =
    { cacheClusterId : String
    , finalSnapshotIdentifier : Maybe String
    }


{-|

<p>Represents the input of a <code>DeleteCacheParameterGroup</code> operation.</p>

-}
type alias DeleteCacheParameterGroupMessage =
    { cacheParameterGroupName : String
    }


{-|

<p>Represents the input of a <code>DeleteCacheSecurityGroup</code> operation.</p>

-}
type alias DeleteCacheSecurityGroupMessage =
    { cacheSecurityGroupName : String
    }


{-|

<p>Represents the input of a <code>DeleteCacheSubnetGroup</code> operation.</p>

-}
type alias DeleteCacheSubnetGroupMessage =
    { cacheSubnetGroupName : String
    }


{-|

<p>Represents the input of a <code>DeleteReplicationGroup</code> operation.</p>

-}
type alias DeleteReplicationGroupMessage =
    { replicationGroupId : String
    , retainPrimaryCluster : Maybe Bool
    , finalSnapshotIdentifier : Maybe String
    }


{-|

<p>Represents the input of a <code>DeleteSnapshot</code> operation.</p>

-}
type alias DeleteSnapshotMessage =
    { snapshotName : String
    }


{-|

<p>Represents the input of a <code>DescribeCacheClusters</code> operation.</p>

-}
type alias DescribeCacheClustersMessage =
    { cacheClusterId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , showCacheNodeInfo : Maybe Bool
    , showCacheClustersNotInReplicationGroups : Maybe Bool
    }


{-|

<p>Represents the input of a <code>DescribeCacheEngineVersions</code> operation.</p>

-}
type alias DescribeCacheEngineVersionsMessage =
    { engine : Maybe String
    , engineVersion : Maybe String
    , cacheParameterGroupFamily : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , defaultOnly : Maybe Bool
    }


{-|

<p>Represents the input of a <code>DescribeCacheParameterGroups</code> operation.</p>

-}
type alias DescribeCacheParameterGroupsMessage =
    { cacheParameterGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Represents the input of a <code>DescribeCacheParameters</code> operation.</p>

-}
type alias DescribeCacheParametersMessage =
    { cacheParameterGroupName : String
    , source : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Represents the input of a <code>DescribeCacheSecurityGroups</code> operation.</p>

-}
type alias DescribeCacheSecurityGroupsMessage =
    { cacheSecurityGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Represents the input of a <code>DescribeCacheSubnetGroups</code> operation.</p>

-}
type alias DescribeCacheSubnetGroupsMessage =
    { cacheSubnetGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Represents the input of a <code>DescribeEngineDefaultParameters</code> operation.</p>

-}
type alias DescribeEngineDefaultParametersMessage =
    { cacheParameterGroupFamily : String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Represents the input of a <code>DescribeEvents</code> operation.</p>

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

<p>Represents the input of a <code>DescribeReplicationGroups</code> operation.</p>

-}
type alias DescribeReplicationGroupsMessage =
    { replicationGroupId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Represents the input of a <code>DescribeReservedCacheNodes</code> operation.</p>

-}
type alias DescribeReservedCacheNodesMessage =
    { reservedCacheNodeId : Maybe String
    , reservedCacheNodesOfferingId : Maybe String
    , cacheNodeType : Maybe String
    , duration : Maybe String
    , productDescription : Maybe String
    , offeringType : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Represents the input of a <code>DescribeReservedCacheNodesOfferings</code> operation.</p>

-}
type alias DescribeReservedCacheNodesOfferingsMessage =
    { reservedCacheNodesOfferingId : Maybe String
    , cacheNodeType : Maybe String
    , duration : Maybe String
    , productDescription : Maybe String
    , offeringType : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias DescribeServiceUpdatesMessage =
    { serviceUpdateName : Maybe String
    , serviceUpdateStatus : Maybe (List ServiceUpdateStatus)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Represents the input of a <code>DescribeSnapshotsMessage</code> operation.</p>

-}
type alias DescribeSnapshotsMessage =
    { replicationGroupId : Maybe String
    , cacheClusterId : Maybe String
    , snapshotName : Maybe String
    , snapshotSource : Maybe String
    , marker : Maybe String
    , maxRecords : Maybe Int
    , showNodeGroupConfig : Maybe Bool
    }


{-| undefined
-}
type alias DescribeUpdateActionsMessage =
    { serviceUpdateName : Maybe String
    , replicationGroupIds : Maybe (List String)
    , serviceUpdateStatus : Maybe (List ServiceUpdateStatus)
    , serviceUpdateTimeRange : Maybe TimeRangeFilter
    , updateActionStatus : Maybe (List UpdateActionStatus)
    , showNodeLevelUpdateStatus : Maybe Bool
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias IncreaseReplicaCountMessage =
    { replicationGroupId : String
    , newReplicaCount : Maybe Int
    , replicaConfiguration : Maybe (List ConfigureShard)
    , applyImmediately : Bool
    }


{-|

<p>The input parameters for the <code>ListAllowedNodeTypeModifications</code> operation.</p>

-}
type alias ListAllowedNodeTypeModificationsMessage =
    { cacheClusterId : Maybe String
    , replicationGroupId : Maybe String
    }


{-|

<p>The input parameters for the <code>ListTagsForResource</code> operation.</p>

-}
type alias ListTagsForResourceMessage =
    { resourceName : String
    }


{-|

<p>Represents the input of a <code>ModifyCacheCluster</code> operation.</p>

-}
type alias ModifyCacheClusterMessage =
    { cacheClusterId : String
    , numCacheNodes : Maybe Int
    , cacheNodeIdsToRemove : Maybe (List String)
    , aZMode : Maybe AZMode
    , newAvailabilityZones : Maybe (List String)
    , cacheSecurityGroupNames : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    , preferredMaintenanceWindow : Maybe String
    , notificationTopicArn : Maybe String
    , cacheParameterGroupName : Maybe String
    , notificationTopicStatus : Maybe String
    , applyImmediately : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , cacheNodeType : Maybe String
    }


{-|

<p>Represents the input of a <code>ModifyCacheParameterGroup</code> operation.</p>

-}
type alias ModifyCacheParameterGroupMessage =
    { cacheParameterGroupName : String
    , parameterNameValues : List ParameterNameValue
    }


{-|

<p>Represents the input of a <code>ModifyCacheSubnetGroup</code> operation.</p>

-}
type alias ModifyCacheSubnetGroupMessage =
    { cacheSubnetGroupName : String
    , cacheSubnetGroupDescription : Maybe String
    , subnetIds : Maybe (List String)
    }


{-|

<p>Represents the input of a <code>ModifyReplicationGroups</code> operation.</p>

-}
type alias ModifyReplicationGroupMessage =
    { replicationGroupId : String
    , replicationGroupDescription : Maybe String
    , primaryClusterId : Maybe String
    , snapshottingClusterId : Maybe String
    , automaticFailoverEnabled : Maybe Bool
    , cacheSecurityGroupNames : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    , preferredMaintenanceWindow : Maybe String
    , notificationTopicArn : Maybe String
    , cacheParameterGroupName : Maybe String
    , notificationTopicStatus : Maybe String
    , applyImmediately : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , cacheNodeType : Maybe String
    , nodeGroupId : Maybe String
    }


{-|

<p>Represents the input for a <code>ModifyReplicationGroupShardConfiguration</code> operation.</p>

-}
type alias ModifyReplicationGroupShardConfigurationMessage =
    { replicationGroupId : String
    , nodeGroupCount : Int
    , applyImmediately : Bool
    , reshardingConfiguration : Maybe (List ReshardingConfiguration)
    , nodeGroupsToRemove : Maybe (List String)
    , nodeGroupsToRetain : Maybe (List String)
    }


{-|

<p>Represents the input of a <code>PurchaseReservedCacheNodesOffering</code> operation.</p>

-}
type alias PurchaseReservedCacheNodesOfferingMessage =
    { reservedCacheNodesOfferingId : String
    , reservedCacheNodeId : Maybe String
    , cacheNodeCount : Maybe Int
    }


{-|

<p>Represents the input of a <code>RebootCacheCluster</code> operation.</p>

-}
type alias RebootCacheClusterMessage =
    { cacheClusterId : String
    , cacheNodeIdsToReboot : List String
    }


{-|

<p>Represents the input of a <code>RemoveTagsFromResource</code> operation.</p>

-}
type alias RemoveTagsFromResourceMessage =
    { resourceName : String
    , tagKeys : List String
    }


{-|

<p>Represents the input of a <code>ResetCacheParameterGroup</code> operation.</p>

-}
type alias ResetCacheParameterGroupMessage =
    { cacheParameterGroupName : String
    , resetAllParameters : Maybe Bool
    , parameterNameValues : Maybe (List ParameterNameValue)
    }


{-|

<p>Represents the input of a <code>RevokeCacheSecurityGroupIngress</code> operation.</p>

-}
type alias RevokeCacheSecurityGroupIngressMessage =
    { cacheSecurityGroupName : String
    , eC2SecurityGroupName : String
    , eC2SecurityGroupOwnerId : String
    }


{-| undefined
-}
type alias TestFailoverMessage =
    { replicationGroupId : String
    , nodeGroupId : String
    }


addTagsToResourceMessageEncoder : AddTagsToResourceMessage -> List ( String, String )
addTagsToResourceMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceName" data.resourceName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" data.tags


allowedNodeTypeModificationsMessageEncoder : AllowedNodeTypeModificationsMessage -> List ( String, String )
allowedNodeTypeModificationsMessageEncoder data =
    []
        |> (case data.scaleUpModifications of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ScaleUpModifications" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


authorizeCacheSecurityGroupIngressMessageEncoder : AuthorizeCacheSecurityGroupIngressMessage -> List ( String, String )
authorizeCacheSecurityGroupIngressMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheSecurityGroupName" data.cacheSecurityGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupName" data.eC2SecurityGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupOwnerId" data.eC2SecurityGroupOwnerId


authorizeCacheSecurityGroupIngressResultEncoder : AuthorizeCacheSecurityGroupIngressResult -> List ( String, String )
authorizeCacheSecurityGroupIngressResultEncoder data =
    []
        |> (case data.cacheSecurityGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs cacheSecurityGroupEncoder "CacheSecurityGroup" value

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


batchApplyUpdateActionMessageEncoder : BatchApplyUpdateActionMessage -> List ( String, String )
batchApplyUpdateActionMessageEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ReplicationGroupIds" data.replicationGroupIds
        |> AWS.Core.Encode.addOneToQueryArgs identity "ServiceUpdateName" data.serviceUpdateName


batchStopUpdateActionMessageEncoder : BatchStopUpdateActionMessage -> List ( String, String )
batchStopUpdateActionMessageEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ReplicationGroupIds" data.replicationGroupIds
        |> AWS.Core.Encode.addOneToQueryArgs identity "ServiceUpdateName" data.serviceUpdateName


cacheClusterEncoder : CacheCluster -> List ( String, String )
cacheClusterEncoder data =
    []
        |> (case data.cacheClusterId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheClusterId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.configurationEndpoint of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs endpointEncoder "ConfigurationEndpoint" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clientDownloadLandingPage of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClientDownloadLandingPage" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeType" value

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
        |> (case data.cacheClusterStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheClusterStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.numCacheNodes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumCacheNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredAvailabilityZone of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PreferredAvailabilityZone" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheClusterCreateTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CacheClusterCreateTime" value

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
        |> (case data.notificationConfiguration of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs notificationConfigurationEncoder "NotificationConfiguration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheSecurityGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs cacheSecurityGroupMembershipEncoder "") "CacheSecurityGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheParameterGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs cacheParameterGroupStatusEncoder "CacheParameterGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheSubnetGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheSubnetGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodes of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs cacheNodeEncoder "") "CacheNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.autoMinorVersionUpgrade of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoMinorVersionUpgrade" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.securityGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs securityGroupMembershipEncoder "") "SecurityGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.replicationGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotRetentionLimit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "SnapshotRetentionLimit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.authTokenEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AuthTokenEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.transitEncryptionEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "TransitEncryptionEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.atRestEncryptionEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AtRestEncryptionEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheClusterMessageEncoder : CacheClusterMessage -> List ( String, String )
cacheClusterMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheClusters of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs cacheClusterEncoder "") "CacheClusters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheEngineVersionEncoder : CacheEngineVersion -> List ( String, String )
cacheEngineVersionEncoder data =
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
        |> (case data.cacheParameterGroupFamily of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupFamily" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheEngineDescription of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheEngineDescription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheEngineVersionDescription of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheEngineVersionDescription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheEngineVersionMessageEncoder : CacheEngineVersionMessage -> List ( String, String )
cacheEngineVersionMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheEngineVersions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs cacheEngineVersionEncoder "") "CacheEngineVersions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheNodeEncoder : CacheNode -> List ( String, String )
cacheNodeEncoder data =
    []
        |> (case data.cacheNodeId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeCreateTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CacheNodeCreateTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.endpoint of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs endpointEncoder "Endpoint" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.parameterGroupStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterGroupStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourceCacheNodeId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SourceCacheNodeId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.customerAvailabilityZone of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CustomerAvailabilityZone" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheNodeTypeSpecificParameterEncoder : CacheNodeTypeSpecificParameter -> List ( String, String )
cacheNodeTypeSpecificParameterEncoder data =
    []
        |> (case data.parameterName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterName" value

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
        |> (case data.cacheNodeTypeSpecificValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs cacheNodeTypeSpecificValueEncoder "") "CacheNodeTypeSpecificValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.changeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs changeTypeToString "ChangeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheNodeTypeSpecificValueEncoder : CacheNodeTypeSpecificValue -> List ( String, String )
cacheNodeTypeSpecificValueEncoder data =
    []
        |> (case data.cacheNodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.value of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Value" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheParameterGroupEncoder : CacheParameterGroup -> List ( String, String )
cacheParameterGroupEncoder data =
    []
        |> (case data.cacheParameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheParameterGroupFamily of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupFamily" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheParameterGroupDetailsEncoder : CacheParameterGroupDetails -> List ( String, String )
cacheParameterGroupDetailsEncoder data =
    []
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
        |> (case data.cacheNodeTypeSpecificParameters of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs cacheNodeTypeSpecificParameterEncoder "") "CacheNodeTypeSpecificParameters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheParameterGroupNameMessageEncoder : CacheParameterGroupNameMessage -> List ( String, String )
cacheParameterGroupNameMessageEncoder data =
    []
        |> (case data.cacheParameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheParameterGroupStatusEncoder : CacheParameterGroupStatus -> List ( String, String )
cacheParameterGroupStatusEncoder data =
    []
        |> (case data.cacheParameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.parameterApplyStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ParameterApplyStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeIdsToReboot of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "CacheNodeIdsToReboot" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheParameterGroupsMessageEncoder : CacheParameterGroupsMessage -> List ( String, String )
cacheParameterGroupsMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheParameterGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs cacheParameterGroupEncoder "") "CacheParameterGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheSecurityGroupEncoder : CacheSecurityGroup -> List ( String, String )
cacheSecurityGroupEncoder data =
    []
        |> (case data.ownerId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "OwnerId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheSecurityGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheSecurityGroupName" value

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


cacheSecurityGroupMembershipEncoder : CacheSecurityGroupMembership -> List ( String, String )
cacheSecurityGroupMembershipEncoder data =
    []
        |> (case data.cacheSecurityGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheSecurityGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheSecurityGroupMessageEncoder : CacheSecurityGroupMessage -> List ( String, String )
cacheSecurityGroupMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheSecurityGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs cacheSecurityGroupEncoder "") "CacheSecurityGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheSubnetGroupEncoder : CacheSubnetGroup -> List ( String, String )
cacheSubnetGroupEncoder data =
    []
        |> (case data.cacheSubnetGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheSubnetGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheSubnetGroupDescription of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheSubnetGroupDescription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.vpcId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "VpcId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.subnets of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs subnetEncoder "") "Subnets" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


cacheSubnetGroupMessageEncoder : CacheSubnetGroupMessage -> List ( String, String )
cacheSubnetGroupMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheSubnetGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs cacheSubnetGroupEncoder "") "CacheSubnetGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


configureShardEncoder : ConfigureShard -> List ( String, String )
configureShardEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "NodeGroupId" data.nodeGroupId
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "NewReplicaCount" data.newReplicaCount
        |> (case data.preferredAvailabilityZones of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PreferredAvailabilityZones" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


copySnapshotMessageEncoder : CopySnapshotMessage -> List ( String, String )
copySnapshotMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceSnapshotName" data.sourceSnapshotName
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetSnapshotName" data.targetSnapshotName
        |> (case data.targetBucket of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TargetBucket" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


copySnapshotResultEncoder : CopySnapshotResult -> List ( String, String )
copySnapshotResultEncoder data =
    []
        |> (case data.snapshot of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs snapshotEncoder "Snapshot" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createCacheClusterMessageEncoder : CreateCacheClusterMessage -> List ( String, String )
createCacheClusterMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheClusterId" data.cacheClusterId
        |> (case data.replicationGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.aZMode of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs aZModeToString "AZMode" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredAvailabilityZone of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PreferredAvailabilityZone" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredAvailabilityZones of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PreferredAvailabilityZones" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.numCacheNodes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumCacheNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeType" value

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
        |> (case data.cacheParameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheSubnetGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheSubnetGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheSecurityGroupNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "CacheSecurityGroupNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.securityGroupIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SecurityGroupIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotArns of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SnapshotArns" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredMaintenanceWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.port_ of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.notificationTopicArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NotificationTopicArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.autoMinorVersionUpgrade of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoMinorVersionUpgrade" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotRetentionLimit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "SnapshotRetentionLimit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.authToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AuthToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createCacheClusterResultEncoder : CreateCacheClusterResult -> List ( String, String )
createCacheClusterResultEncoder data =
    []
        |> (case data.cacheCluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs cacheClusterEncoder "CacheCluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createCacheParameterGroupMessageEncoder : CreateCacheParameterGroupMessage -> List ( String, String )
createCacheParameterGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupName" data.cacheParameterGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupFamily" data.cacheParameterGroupFamily
        |> AWS.Core.Encode.addOneToQueryArgs identity "Description" data.description


createCacheParameterGroupResultEncoder : CreateCacheParameterGroupResult -> List ( String, String )
createCacheParameterGroupResultEncoder data =
    []
        |> (case data.cacheParameterGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs cacheParameterGroupEncoder "CacheParameterGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createCacheSecurityGroupMessageEncoder : CreateCacheSecurityGroupMessage -> List ( String, String )
createCacheSecurityGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheSecurityGroupName" data.cacheSecurityGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "Description" data.description


createCacheSecurityGroupResultEncoder : CreateCacheSecurityGroupResult -> List ( String, String )
createCacheSecurityGroupResultEncoder data =
    []
        |> (case data.cacheSecurityGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs cacheSecurityGroupEncoder "CacheSecurityGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createCacheSubnetGroupMessageEncoder : CreateCacheSubnetGroupMessage -> List ( String, String )
createCacheSubnetGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheSubnetGroupName" data.cacheSubnetGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheSubnetGroupDescription" data.cacheSubnetGroupDescription
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SubnetIds" data.subnetIds


createCacheSubnetGroupResultEncoder : CreateCacheSubnetGroupResult -> List ( String, String )
createCacheSubnetGroupResultEncoder data =
    []
        |> (case data.cacheSubnetGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs cacheSubnetGroupEncoder "CacheSubnetGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createReplicationGroupMessageEncoder : CreateReplicationGroupMessage -> List ( String, String )
createReplicationGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" data.replicationGroupId
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupDescription" data.replicationGroupDescription
        |> (case data.primaryClusterId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PrimaryClusterId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.automaticFailoverEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutomaticFailoverEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.numCacheClusters of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumCacheClusters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredCacheClusterAZs of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PreferredCacheClusterAZs" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.numNodeGroups of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumNodeGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.replicasPerNodeGroup of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ReplicasPerNodeGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeGroupConfiguration of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs nodeGroupConfigurationEncoder "") "NodeGroupConfiguration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeType" value

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
        |> (case data.cacheParameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheSubnetGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheSubnetGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheSecurityGroupNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "CacheSecurityGroupNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.securityGroupIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SecurityGroupIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotArns of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SnapshotArns" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredMaintenanceWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.port_ of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.notificationTopicArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NotificationTopicArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.autoMinorVersionUpgrade of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoMinorVersionUpgrade" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotRetentionLimit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "SnapshotRetentionLimit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.authToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AuthToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.transitEncryptionEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "TransitEncryptionEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.atRestEncryptionEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AtRestEncryptionEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createReplicationGroupResultEncoder : CreateReplicationGroupResult -> List ( String, String )
createReplicationGroupResultEncoder data =
    []
        |> (case data.replicationGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs replicationGroupEncoder "ReplicationGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createSnapshotMessageEncoder : CreateSnapshotMessage -> List ( String, String )
createSnapshotMessageEncoder data =
    []
        |> (case data.replicationGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheClusterId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheClusterId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "SnapshotName" data.snapshotName


createSnapshotResultEncoder : CreateSnapshotResult -> List ( String, String )
createSnapshotResultEncoder data =
    []
        |> (case data.snapshot of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs snapshotEncoder "Snapshot" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


decreaseReplicaCountMessageEncoder : DecreaseReplicaCountMessage -> List ( String, String )
decreaseReplicaCountMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" data.replicationGroupId
        |> (case data.newReplicaCount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NewReplicaCount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.replicaConfiguration of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs configureShardEncoder "") "ReplicaConfiguration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.replicasToRemove of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ReplicasToRemove" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ApplyImmediately" data.applyImmediately


decreaseReplicaCountResultEncoder : DecreaseReplicaCountResult -> List ( String, String )
decreaseReplicaCountResultEncoder data =
    []
        |> (case data.replicationGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs replicationGroupEncoder "ReplicationGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deleteCacheClusterMessageEncoder : DeleteCacheClusterMessage -> List ( String, String )
deleteCacheClusterMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheClusterId" data.cacheClusterId
        |> (case data.finalSnapshotIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "FinalSnapshotIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deleteCacheClusterResultEncoder : DeleteCacheClusterResult -> List ( String, String )
deleteCacheClusterResultEncoder data =
    []
        |> (case data.cacheCluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs cacheClusterEncoder "CacheCluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deleteCacheParameterGroupMessageEncoder : DeleteCacheParameterGroupMessage -> List ( String, String )
deleteCacheParameterGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupName" data.cacheParameterGroupName


deleteCacheSecurityGroupMessageEncoder : DeleteCacheSecurityGroupMessage -> List ( String, String )
deleteCacheSecurityGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheSecurityGroupName" data.cacheSecurityGroupName


deleteCacheSubnetGroupMessageEncoder : DeleteCacheSubnetGroupMessage -> List ( String, String )
deleteCacheSubnetGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheSubnetGroupName" data.cacheSubnetGroupName


deleteReplicationGroupMessageEncoder : DeleteReplicationGroupMessage -> List ( String, String )
deleteReplicationGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" data.replicationGroupId
        |> (case data.retainPrimaryCluster of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "RetainPrimaryCluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.finalSnapshotIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "FinalSnapshotIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deleteReplicationGroupResultEncoder : DeleteReplicationGroupResult -> List ( String, String )
deleteReplicationGroupResultEncoder data =
    []
        |> (case data.replicationGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs replicationGroupEncoder "ReplicationGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deleteSnapshotMessageEncoder : DeleteSnapshotMessage -> List ( String, String )
deleteSnapshotMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "SnapshotName" data.snapshotName


deleteSnapshotResultEncoder : DeleteSnapshotResult -> List ( String, String )
deleteSnapshotResultEncoder data =
    []
        |> (case data.snapshot of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs snapshotEncoder "Snapshot" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeCacheClustersMessageEncoder : DescribeCacheClustersMessage -> List ( String, String )
describeCacheClustersMessageEncoder data =
    []
        |> (case data.cacheClusterId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheClusterId" value

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
        |> (case data.showCacheNodeInfo of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ShowCacheNodeInfo" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.showCacheClustersNotInReplicationGroups of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ShowCacheClustersNotInReplicationGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeCacheEngineVersionsMessageEncoder : DescribeCacheEngineVersionsMessage -> List ( String, String )
describeCacheEngineVersionsMessageEncoder data =
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
        |> (case data.cacheParameterGroupFamily of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupFamily" value

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


describeCacheParameterGroupsMessageEncoder : DescribeCacheParameterGroupsMessage -> List ( String, String )
describeCacheParameterGroupsMessageEncoder data =
    []
        |> (case data.cacheParameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupName" value

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


describeCacheParametersMessageEncoder : DescribeCacheParametersMessage -> List ( String, String )
describeCacheParametersMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupName" data.cacheParameterGroupName
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


describeCacheSecurityGroupsMessageEncoder : DescribeCacheSecurityGroupsMessage -> List ( String, String )
describeCacheSecurityGroupsMessageEncoder data =
    []
        |> (case data.cacheSecurityGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheSecurityGroupName" value

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


describeCacheSubnetGroupsMessageEncoder : DescribeCacheSubnetGroupsMessage -> List ( String, String )
describeCacheSubnetGroupsMessageEncoder data =
    []
        |> (case data.cacheSubnetGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheSubnetGroupName" value

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


describeEngineDefaultParametersMessageEncoder : DescribeEngineDefaultParametersMessage -> List ( String, String )
describeEngineDefaultParametersMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupFamily" data.cacheParameterGroupFamily
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


describeEngineDefaultParametersResultEncoder : DescribeEngineDefaultParametersResult -> List ( String, String )
describeEngineDefaultParametersResultEncoder data =
    []
        |> (case data.engineDefaults of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs engineDefaultsEncoder "EngineDefaults" value

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


describeReplicationGroupsMessageEncoder : DescribeReplicationGroupsMessage -> List ( String, String )
describeReplicationGroupsMessageEncoder data =
    []
        |> (case data.replicationGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" value

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


describeReservedCacheNodesMessageEncoder : DescribeReservedCacheNodesMessage -> List ( String, String )
describeReservedCacheNodesMessageEncoder data =
    []
        |> (case data.reservedCacheNodeId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReservedCacheNodeId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.reservedCacheNodesOfferingId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReservedCacheNodesOfferingId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeType" value

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


describeReservedCacheNodesOfferingsMessageEncoder : DescribeReservedCacheNodesOfferingsMessage -> List ( String, String )
describeReservedCacheNodesOfferingsMessageEncoder data =
    []
        |> (case data.reservedCacheNodesOfferingId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReservedCacheNodesOfferingId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeType" value

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


describeServiceUpdatesMessageEncoder : DescribeServiceUpdatesMessage -> List ( String, String )
describeServiceUpdatesMessageEncoder data =
    []
        |> (case data.serviceUpdateName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ServiceUpdateName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateStatus of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs serviceUpdateStatusToString "") "ServiceUpdateStatus" value

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


describeSnapshotsListMessageEncoder : DescribeSnapshotsListMessage -> List ( String, String )
describeSnapshotsListMessageEncoder data =
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


describeSnapshotsMessageEncoder : DescribeSnapshotsMessage -> List ( String, String )
describeSnapshotsMessageEncoder data =
    []
        |> (case data.replicationGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheClusterId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheClusterId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotSource of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotSource" value

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
        |> (case data.showNodeGroupConfig of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ShowNodeGroupConfig" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeUpdateActionsMessageEncoder : DescribeUpdateActionsMessage -> List ( String, String )
describeUpdateActionsMessageEncoder data =
    []
        |> (case data.serviceUpdateName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ServiceUpdateName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.replicationGroupIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ReplicationGroupIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateStatus of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs serviceUpdateStatusToString "") "ServiceUpdateStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateTimeRange of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs timeRangeFilterEncoder "ServiceUpdateTimeRange" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.updateActionStatus of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs updateActionStatusToString "") "UpdateActionStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.showNodeLevelUpdateStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ShowNodeLevelUpdateStatus" value

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


engineDefaultsEncoder : EngineDefaults -> List ( String, String )
engineDefaultsEncoder data =
    []
        |> (case data.cacheParameterGroupFamily of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupFamily" value

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
        |> (case data.cacheNodeTypeSpecificParameters of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs cacheNodeTypeSpecificParameterEncoder "") "CacheNodeTypeSpecificParameters" value

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
        |> (case data.date of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Date" value

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


increaseReplicaCountMessageEncoder : IncreaseReplicaCountMessage -> List ( String, String )
increaseReplicaCountMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" data.replicationGroupId
        |> (case data.newReplicaCount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NewReplicaCount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.replicaConfiguration of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs configureShardEncoder "") "ReplicaConfiguration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ApplyImmediately" data.applyImmediately


increaseReplicaCountResultEncoder : IncreaseReplicaCountResult -> List ( String, String )
increaseReplicaCountResultEncoder data =
    []
        |> (case data.replicationGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs replicationGroupEncoder "ReplicationGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listAllowedNodeTypeModificationsMessageEncoder : ListAllowedNodeTypeModificationsMessage -> List ( String, String )
listAllowedNodeTypeModificationsMessageEncoder data =
    []
        |> (case data.cacheClusterId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheClusterId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.replicationGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listTagsForResourceMessageEncoder : ListTagsForResourceMessage -> List ( String, String )
listTagsForResourceMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceName" data.resourceName


modifyCacheClusterMessageEncoder : ModifyCacheClusterMessage -> List ( String, String )
modifyCacheClusterMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheClusterId" data.cacheClusterId
        |> (case data.numCacheNodes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumCacheNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeIdsToRemove of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "CacheNodeIdsToRemove" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.aZMode of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs aZModeToString "AZMode" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.newAvailabilityZones of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "NewAvailabilityZones" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheSecurityGroupNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "CacheSecurityGroupNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.securityGroupIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SecurityGroupIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredMaintenanceWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.notificationTopicArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NotificationTopicArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheParameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.notificationTopicStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NotificationTopicStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.applyImmediately of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ApplyImmediately" value

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
        |> (case data.snapshotRetentionLimit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "SnapshotRetentionLimit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyCacheClusterResultEncoder : ModifyCacheClusterResult -> List ( String, String )
modifyCacheClusterResultEncoder data =
    []
        |> (case data.cacheCluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs cacheClusterEncoder "CacheCluster" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyCacheParameterGroupMessageEncoder : ModifyCacheParameterGroupMessage -> List ( String, String )
modifyCacheParameterGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupName" data.cacheParameterGroupName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterNameValueEncoder "") "ParameterNameValues" data.parameterNameValues


modifyCacheSubnetGroupMessageEncoder : ModifyCacheSubnetGroupMessage -> List ( String, String )
modifyCacheSubnetGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheSubnetGroupName" data.cacheSubnetGroupName
        |> (case data.cacheSubnetGroupDescription of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheSubnetGroupDescription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.subnetIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SubnetIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyCacheSubnetGroupResultEncoder : ModifyCacheSubnetGroupResult -> List ( String, String )
modifyCacheSubnetGroupResultEncoder data =
    []
        |> (case data.cacheSubnetGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs cacheSubnetGroupEncoder "CacheSubnetGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyReplicationGroupMessageEncoder : ModifyReplicationGroupMessage -> List ( String, String )
modifyReplicationGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" data.replicationGroupId
        |> (case data.replicationGroupDescription of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupDescription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.primaryClusterId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PrimaryClusterId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshottingClusterId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshottingClusterId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.automaticFailoverEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutomaticFailoverEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheSecurityGroupNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "CacheSecurityGroupNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.securityGroupIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SecurityGroupIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredMaintenanceWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.notificationTopicArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NotificationTopicArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheParameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.notificationTopicStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NotificationTopicStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.applyImmediately of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ApplyImmediately" value

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
        |> (case data.snapshotRetentionLimit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "SnapshotRetentionLimit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyReplicationGroupResultEncoder : ModifyReplicationGroupResult -> List ( String, String )
modifyReplicationGroupResultEncoder data =
    []
        |> (case data.replicationGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs replicationGroupEncoder "ReplicationGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyReplicationGroupShardConfigurationMessageEncoder : ModifyReplicationGroupShardConfigurationMessage -> List ( String, String )
modifyReplicationGroupShardConfigurationMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" data.replicationGroupId
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "NodeGroupCount" data.nodeGroupCount
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ApplyImmediately" data.applyImmediately
        |> (case data.reshardingConfiguration of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs reshardingConfigurationEncoder "") "ReshardingConfiguration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeGroupsToRemove of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "NodeGroupsToRemove" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeGroupsToRetain of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "NodeGroupsToRetain" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


modifyReplicationGroupShardConfigurationResultEncoder : ModifyReplicationGroupShardConfigurationResult -> List ( String, String )
modifyReplicationGroupShardConfigurationResultEncoder data =
    []
        |> (case data.replicationGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs replicationGroupEncoder "ReplicationGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


nodeGroupEncoder : NodeGroup -> List ( String, String )
nodeGroupEncoder data =
    []
        |> (case data.nodeGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.primaryEndpoint of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs endpointEncoder "PrimaryEndpoint" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.readerEndpoint of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs endpointEncoder "ReaderEndpoint" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.slots of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Slots" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeGroupMembers of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs nodeGroupMemberEncoder "") "NodeGroupMembers" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


nodeGroupConfigurationEncoder : NodeGroupConfiguration -> List ( String, String )
nodeGroupConfigurationEncoder data =
    []
        |> (case data.nodeGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.slots of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Slots" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.replicaCount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ReplicaCount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.primaryAvailabilityZone of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PrimaryAvailabilityZone" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.replicaAvailabilityZones of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ReplicaAvailabilityZones" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


nodeGroupMemberEncoder : NodeGroupMember -> List ( String, String )
nodeGroupMemberEncoder data =
    []
        |> (case data.cacheClusterId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheClusterId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.readEndpoint of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs endpointEncoder "ReadEndpoint" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredAvailabilityZone of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PreferredAvailabilityZone" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.currentRole of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CurrentRole" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


nodeGroupMemberUpdateStatusEncoder : NodeGroupMemberUpdateStatus -> List ( String, String )
nodeGroupMemberUpdateStatusEncoder data =
    []
        |> (case data.cacheClusterId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheClusterId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeUpdateStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs nodeUpdateStatusToString "NodeUpdateStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeDeletionDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "NodeDeletionDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeUpdateStartDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "NodeUpdateStartDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeUpdateEndDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "NodeUpdateEndDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeUpdateInitiatedBy of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs nodeUpdateInitiatedByToString "NodeUpdateInitiatedBy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeUpdateInitiatedDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "NodeUpdateInitiatedDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeUpdateStatusModifiedDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "NodeUpdateStatusModifiedDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


nodeGroupUpdateStatusEncoder : NodeGroupUpdateStatus -> List ( String, String )
nodeGroupUpdateStatusEncoder data =
    []
        |> (case data.nodeGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeGroupMemberUpdateStatus of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs nodeGroupMemberUpdateStatusEncoder "") "NodeGroupMemberUpdateStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


nodeSnapshotEncoder : NodeSnapshot -> List ( String, String )
nodeSnapshotEncoder data =
    []
        |> (case data.cacheClusterId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheClusterId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeGroupConfiguration of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs nodeGroupConfigurationEncoder "NodeGroupConfiguration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheSize of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheSize" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeCreateTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CacheNodeCreateTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotCreateTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "SnapshotCreateTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


notificationConfigurationEncoder : NotificationConfiguration -> List ( String, String )
notificationConfigurationEncoder data =
    []
        |> (case data.topicArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.topicStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TopicStatus" value

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
        |> (case data.changeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs changeTypeToString "ChangeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


parameterNameValueEncoder : ParameterNameValue -> List ( String, String )
parameterNameValueEncoder data =
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


pendingModifiedValuesEncoder : PendingModifiedValues -> List ( String, String )
pendingModifiedValuesEncoder data =
    []
        |> (case data.numCacheNodes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumCacheNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeIdsToRemove of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "CacheNodeIdsToRemove" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.engineVersion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EngineVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


processedUpdateActionEncoder : ProcessedUpdateAction -> List ( String, String )
processedUpdateActionEncoder data =
    []
        |> (case data.replicationGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ServiceUpdateName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.updateActionStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs updateActionStatusToString "UpdateActionStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


purchaseReservedCacheNodesOfferingMessageEncoder : PurchaseReservedCacheNodesOfferingMessage -> List ( String, String )
purchaseReservedCacheNodesOfferingMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReservedCacheNodesOfferingId" data.reservedCacheNodesOfferingId
        |> (case data.reservedCacheNodeId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReservedCacheNodeId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeCount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "CacheNodeCount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


purchaseReservedCacheNodesOfferingResultEncoder : PurchaseReservedCacheNodesOfferingResult -> List ( String, String )
purchaseReservedCacheNodesOfferingResultEncoder data =
    []
        |> (case data.reservedCacheNode of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs reservedCacheNodeEncoder "ReservedCacheNode" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


rebootCacheClusterMessageEncoder : RebootCacheClusterMessage -> List ( String, String )
rebootCacheClusterMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheClusterId" data.cacheClusterId
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "CacheNodeIdsToReboot" data.cacheNodeIdsToReboot


rebootCacheClusterResultEncoder : RebootCacheClusterResult -> List ( String, String )
rebootCacheClusterResultEncoder data =
    []
        |> (case data.cacheCluster of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs cacheClusterEncoder "CacheCluster" value

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


removeTagsFromResourceMessageEncoder : RemoveTagsFromResourceMessage -> List ( String, String )
removeTagsFromResourceMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceName" data.resourceName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" data.tagKeys


replicationGroupEncoder : ReplicationGroup -> List ( String, String )
replicationGroupEncoder data =
    []
        |> (case data.replicationGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.pendingModifiedValues of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs replicationGroupPendingModifiedValuesEncoder "PendingModifiedValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.memberClusters of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "MemberClusters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs nodeGroupEncoder "") "NodeGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshottingClusterId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshottingClusterId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.automaticFailover of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs automaticFailoverStatusToString "AutomaticFailover" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.configurationEndpoint of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs endpointEncoder "ConfigurationEndpoint" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotRetentionLimit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "SnapshotRetentionLimit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clusterEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ClusterEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.authTokenEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AuthTokenEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.transitEncryptionEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "TransitEncryptionEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.atRestEncryptionEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AtRestEncryptionEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


replicationGroupMessageEncoder : ReplicationGroupMessage -> List ( String, String )
replicationGroupMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.replicationGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs replicationGroupEncoder "") "ReplicationGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


replicationGroupPendingModifiedValuesEncoder : ReplicationGroupPendingModifiedValues -> List ( String, String )
replicationGroupPendingModifiedValuesEncoder data =
    []
        |> (case data.primaryClusterId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PrimaryClusterId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.automaticFailoverStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs pendingAutomaticFailoverStatusToString "AutomaticFailoverStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resharding of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs reshardingStatusEncoder "Resharding" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


reservedCacheNodeEncoder : ReservedCacheNode -> List ( String, String )
reservedCacheNodeEncoder data =
    []
        |> (case data.reservedCacheNodeId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReservedCacheNodeId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.reservedCacheNodesOfferingId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReservedCacheNodesOfferingId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeType" value

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
        |> (case data.cacheNodeCount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "CacheNodeCount" value

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
        |> (case data.reservationARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReservationARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


reservedCacheNodeMessageEncoder : ReservedCacheNodeMessage -> List ( String, String )
reservedCacheNodeMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.reservedCacheNodes of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs reservedCacheNodeEncoder "") "ReservedCacheNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


reservedCacheNodesOfferingEncoder : ReservedCacheNodesOffering -> List ( String, String )
reservedCacheNodesOfferingEncoder data =
    []
        |> (case data.reservedCacheNodesOfferingId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReservedCacheNodesOfferingId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeType" value

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
        |> (case data.recurringCharges of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs recurringChargeEncoder "") "RecurringCharges" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


reservedCacheNodesOfferingMessageEncoder : ReservedCacheNodesOfferingMessage -> List ( String, String )
reservedCacheNodesOfferingMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.reservedCacheNodesOfferings of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs reservedCacheNodesOfferingEncoder "") "ReservedCacheNodesOfferings" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


resetCacheParameterGroupMessageEncoder : ResetCacheParameterGroupMessage -> List ( String, String )
resetCacheParameterGroupMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupName" data.cacheParameterGroupName
        |> (case data.resetAllParameters of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ResetAllParameters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.parameterNameValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterNameValueEncoder "") "ParameterNameValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


reshardingConfigurationEncoder : ReshardingConfiguration -> List ( String, String )
reshardingConfigurationEncoder data =
    []
        |> (case data.nodeGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodeGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredAvailabilityZones of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PreferredAvailabilityZones" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


reshardingStatusEncoder : ReshardingStatus -> List ( String, String )
reshardingStatusEncoder data =
    []
        |> (case data.slotMigration of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs slotMigrationEncoder "SlotMigration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


revokeCacheSecurityGroupIngressMessageEncoder : RevokeCacheSecurityGroupIngressMessage -> List ( String, String )
revokeCacheSecurityGroupIngressMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "CacheSecurityGroupName" data.cacheSecurityGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupName" data.eC2SecurityGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "EC2SecurityGroupOwnerId" data.eC2SecurityGroupOwnerId


revokeCacheSecurityGroupIngressResultEncoder : RevokeCacheSecurityGroupIngressResult -> List ( String, String )
revokeCacheSecurityGroupIngressResultEncoder data =
    []
        |> (case data.cacheSecurityGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs cacheSecurityGroupEncoder "CacheSecurityGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


securityGroupMembershipEncoder : SecurityGroupMembership -> List ( String, String )
securityGroupMembershipEncoder data =
    []
        |> (case data.securityGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SecurityGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


serviceUpdateEncoder : ServiceUpdate -> List ( String, String )
serviceUpdateEncoder data =
    []
        |> (case data.serviceUpdateName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ServiceUpdateName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateReleaseDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ServiceUpdateReleaseDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateEndDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ServiceUpdateEndDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateSeverity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs serviceUpdateSeverityToString "ServiceUpdateSeverity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateRecommendedApplyByDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ServiceUpdateRecommendedApplyByDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs serviceUpdateStatusToString "ServiceUpdateStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateDescription of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ServiceUpdateDescription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs serviceUpdateTypeToString "ServiceUpdateType" value

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
        |> (case data.autoUpdateAfterRecommendedApplyByDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoUpdateAfterRecommendedApplyByDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.estimatedUpdateTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EstimatedUpdateTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


serviceUpdatesMessageEncoder : ServiceUpdatesMessage -> List ( String, String )
serviceUpdatesMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdates of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs serviceUpdateEncoder "") "ServiceUpdates" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


slotMigrationEncoder : SlotMigration -> List ( String, String )
slotMigrationEncoder data =
    []
        |> (case data.progressPercentage of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "ProgressPercentage" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


snapshotEncoder : Snapshot -> List ( String, String )
snapshotEncoder data =
    []
        |> (case data.snapshotName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.replicationGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.replicationGroupDescription of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupDescription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheClusterId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheClusterId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotSource of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotSource" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheNodeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheNodeType" value

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
        |> (case data.numCacheNodes of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumCacheNodes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredAvailabilityZone of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PreferredAvailabilityZone" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheClusterCreateTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CacheClusterCreateTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.preferredMaintenanceWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PreferredMaintenanceWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.topicArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TopicArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.port_ of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheParameterGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheParameterGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cacheSubnetGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "CacheSubnetGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.vpcId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "VpcId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.autoMinorVersionUpgrade of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoMinorVersionUpgrade" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotRetentionLimit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "SnapshotRetentionLimit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.snapshotWindow of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotWindow" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.numNodeGroups of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumNodeGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.automaticFailover of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs automaticFailoverStatusToString "AutomaticFailover" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeSnapshots of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs nodeSnapshotEncoder "") "NodeSnapshots" value

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


tagListMessageEncoder : TagListMessage -> List ( String, String )
tagListMessageEncoder data =
    []
        |> (case data.tagList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "TagList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


testFailoverMessageEncoder : TestFailoverMessage -> List ( String, String )
testFailoverMessageEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" data.replicationGroupId
        |> AWS.Core.Encode.addOneToQueryArgs identity "NodeGroupId" data.nodeGroupId


testFailoverResultEncoder : TestFailoverResult -> List ( String, String )
testFailoverResultEncoder data =
    []
        |> (case data.replicationGroup of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs replicationGroupEncoder "ReplicationGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


timeRangeFilterEncoder : TimeRangeFilter -> List ( String, String )
timeRangeFilterEncoder data =
    []
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


unprocessedUpdateActionEncoder : UnprocessedUpdateAction -> List ( String, String )
unprocessedUpdateActionEncoder data =
    []
        |> (case data.replicationGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ServiceUpdateName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.errorType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ErrorType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.errorMessage of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ErrorMessage" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


updateActionEncoder : UpdateAction -> List ( String, String )
updateActionEncoder data =
    []
        |> (case data.replicationGroupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ReplicationGroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ServiceUpdateName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateReleaseDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ServiceUpdateReleaseDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateSeverity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs serviceUpdateSeverityToString "ServiceUpdateSeverity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs serviceUpdateStatusToString "ServiceUpdateStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateRecommendedApplyByDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ServiceUpdateRecommendedApplyByDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceUpdateType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs serviceUpdateTypeToString "ServiceUpdateType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.updateActionAvailableDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "UpdateActionAvailableDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.updateActionStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs updateActionStatusToString "UpdateActionStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodesUpdated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NodesUpdated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.updateActionStatusModifiedDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "UpdateActionStatusModifiedDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.slaMet of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs slaMetToString "SlaMet" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nodeGroupUpdateStatus of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs nodeGroupUpdateStatusEncoder "") "NodeGroupUpdateStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.estimatedUpdateTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EstimatedUpdateTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


updateActionResultsMessageEncoder : UpdateActionResultsMessage -> List ( String, String )
updateActionResultsMessageEncoder data =
    []
        |> (case data.processedUpdateActions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs processedUpdateActionEncoder "") "ProcessedUpdateActions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.unprocessedUpdateActions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs unprocessedUpdateActionEncoder "") "UnprocessedUpdateActions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


updateActionsMessageEncoder : UpdateActionsMessage -> List ( String, String )
updateActionsMessageEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.updateActions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs updateActionEncoder "") "UpdateActions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
