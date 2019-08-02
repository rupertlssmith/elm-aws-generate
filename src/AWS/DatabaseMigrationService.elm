module AWS.DatabaseMigrationService exposing
    ( service
    , addTagsToResource, applyPendingMaintenanceAction, createEndpoint, CreateEndpointOptions, createEventSubscription, CreateEventSubscriptionOptions, createReplicationInstance, CreateReplicationInstanceOptions, createReplicationSubnetGroup, CreateReplicationSubnetGroupOptions, createReplicationTask, CreateReplicationTaskOptions, deleteCertificate, deleteEndpoint, deleteEventSubscription, deleteReplicationInstance, deleteReplicationSubnetGroup, deleteReplicationTask, describeAccountAttributes, describeCertificates, DescribeCertificatesOptions, describeConnections, DescribeConnectionsOptions, describeEndpointTypes, DescribeEndpointTypesOptions, describeEndpoints, DescribeEndpointsOptions, describeEventCategories, DescribeEventCategoriesOptions, describeEventSubscriptions, DescribeEventSubscriptionsOptions, describeEvents, DescribeEventsOptions, describeOrderableReplicationInstances, DescribeOrderableReplicationInstancesOptions, describePendingMaintenanceActions, DescribePendingMaintenanceActionsOptions, describeRefreshSchemasStatus, describeReplicationInstanceTaskLogs, DescribeReplicationInstanceTaskLogsOptions, describeReplicationInstances, DescribeReplicationInstancesOptions, describeReplicationSubnetGroups, DescribeReplicationSubnetGroupsOptions, describeReplicationTaskAssessmentResults, DescribeReplicationTaskAssessmentResultsOptions, describeReplicationTasks, DescribeReplicationTasksOptions, describeSchemas, DescribeSchemasOptions, describeTableStatistics, DescribeTableStatisticsOptions, importCertificate, ImportCertificateOptions, listTagsForResource, modifyEndpoint, ModifyEndpointOptions, modifyEventSubscription, ModifyEventSubscriptionOptions, modifyReplicationInstance, ModifyReplicationInstanceOptions, modifyReplicationSubnetGroup, ModifyReplicationSubnetGroupOptions, modifyReplicationTask, ModifyReplicationTaskOptions, rebootReplicationInstance, RebootReplicationInstanceOptions, refreshSchemas, reloadTables, ReloadTablesOptions, removeTagsFromResource, startReplicationTask, StartReplicationTaskOptions, startReplicationTaskAssessment, stopReplicationTask, testConnection
    , AddTagsToResourceResponse, ApplyPendingMaintenanceActionResponse, CreateEndpointResponse, CreateEventSubscriptionResponse, CreateReplicationInstanceResponse, CreateReplicationSubnetGroupResponse, CreateReplicationTaskResponse, DeleteCertificateResponse, DeleteEndpointResponse, DeleteEventSubscriptionResponse, DeleteReplicationInstanceResponse, DeleteReplicationSubnetGroupResponse, DeleteReplicationTaskResponse, DescribeAccountAttributesResponse, DescribeCertificatesResponse, DescribeConnectionsResponse, DescribeEndpointTypesResponse, DescribeEndpointsResponse, DescribeEventCategoriesResponse, DescribeEventSubscriptionsResponse, DescribeEventsResponse, DescribeOrderableReplicationInstancesResponse, DescribePendingMaintenanceActionsResponse, DescribeRefreshSchemasStatusResponse, DescribeReplicationInstanceTaskLogsResponse, DescribeReplicationInstancesResponse, DescribeReplicationSubnetGroupsResponse, DescribeReplicationTaskAssessmentResultsResponse, DescribeReplicationTasksResponse, DescribeSchemasResponse, DescribeTableStatisticsResponse, ImportCertificateResponse, ListTagsForResourceResponse, ModifyEndpointResponse, ModifyEventSubscriptionResponse, ModifyReplicationInstanceResponse, ModifyReplicationSubnetGroupResponse, ModifyReplicationTaskResponse, RebootReplicationInstanceResponse, RefreshSchemasResponse, ReloadTablesResponse, RemoveTagsFromResourceResponse, StartReplicationTaskAssessmentResponse, StartReplicationTaskResponse, StopReplicationTaskResponse, TestConnectionResponse
    , AccountQuota, AvailabilityZone, Certificate, Connection, DmsTransferSettings, DynamoDbSettings, ElasticsearchSettings, Endpoint, Event, EventCategoryGroup, EventSubscription, Filter, KinesisSettings, MongoDbSettings, OrderableReplicationInstance, PendingMaintenanceAction, RedshiftSettings, RefreshSchemasStatus, ReplicationInstance, ReplicationInstanceTaskLog, ReplicationPendingModifiedValues, ReplicationSubnetGroup, ReplicationTask, ReplicationTaskAssessmentResult, ReplicationTaskStats, ResourcePendingMaintenanceActions, S3Settings, Subnet, SupportedEndpointType, TableStatistics, TableToReload, Tag, VpcSecurityGroupMembership
    , AuthMechanismValue(..), AuthTypeValue(..), CompressionTypeValue(..), DataFormatValue(..), DmsSslModeValue(..), EncodingTypeValue(..), EncryptionModeValue(..), MessageFormatValue(..), MigrationTypeValue(..), NestingLevelValue(..), ParquetVersionValue(..), RefreshSchemasStatusTypeValue(..), ReleaseStatusValues(..), ReloadOptionValue(..), ReplicationEndpointTypeValue(..), SourceType(..), StartReplicationTaskTypeValue(..)
    )

{-| <fullname>AWS Database Migration Service</fullname> <p>AWS Database Migration Service (AWS DMS) can migrate your data to and from the most widely used commercial and open-source databases such as Oracle, PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon Aurora, MySQL, and SAP Adaptive Server Enterprise (ASE). The service supports homogeneous migrations such as Oracle to Oracle, as well as heterogeneous migrations between different database platforms, such as Oracle to MySQL or SQL Server to PostgreSQL.</p> <p>For more information about AWS DMS, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/Welcome.html">What Is AWS Database Migration Service?</a> in the <i>AWS Database Migration User Guide.</i> </p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [addTagsToResource](#addTagsToResource)
  - [applyPendingMaintenanceAction](#applyPendingMaintenanceAction)
  - [createEndpoint](#createEndpoint)
  - [CreateEndpointOptions](#CreateEndpointOptions)
  - [createEventSubscription](#createEventSubscription)
  - [CreateEventSubscriptionOptions](#CreateEventSubscriptionOptions)
  - [createReplicationInstance](#createReplicationInstance)
  - [CreateReplicationInstanceOptions](#CreateReplicationInstanceOptions)
  - [createReplicationSubnetGroup](#createReplicationSubnetGroup)
  - [CreateReplicationSubnetGroupOptions](#CreateReplicationSubnetGroupOptions)
  - [createReplicationTask](#createReplicationTask)
  - [CreateReplicationTaskOptions](#CreateReplicationTaskOptions)
  - [deleteCertificate](#deleteCertificate)
  - [deleteEndpoint](#deleteEndpoint)
  - [deleteEventSubscription](#deleteEventSubscription)
  - [deleteReplicationInstance](#deleteReplicationInstance)
  - [deleteReplicationSubnetGroup](#deleteReplicationSubnetGroup)
  - [deleteReplicationTask](#deleteReplicationTask)
  - [describeAccountAttributes](#describeAccountAttributes)
  - [describeCertificates](#describeCertificates)
  - [DescribeCertificatesOptions](#DescribeCertificatesOptions)
  - [describeConnections](#describeConnections)
  - [DescribeConnectionsOptions](#DescribeConnectionsOptions)
  - [describeEndpointTypes](#describeEndpointTypes)
  - [DescribeEndpointTypesOptions](#DescribeEndpointTypesOptions)
  - [describeEndpoints](#describeEndpoints)
  - [DescribeEndpointsOptions](#DescribeEndpointsOptions)
  - [describeEventCategories](#describeEventCategories)
  - [DescribeEventCategoriesOptions](#DescribeEventCategoriesOptions)
  - [describeEventSubscriptions](#describeEventSubscriptions)
  - [DescribeEventSubscriptionsOptions](#DescribeEventSubscriptionsOptions)
  - [describeEvents](#describeEvents)
  - [DescribeEventsOptions](#DescribeEventsOptions)
  - [describeOrderableReplicationInstances](#describeOrderableReplicationInstances)
  - [DescribeOrderableReplicationInstancesOptions](#DescribeOrderableReplicationInstancesOptions)
  - [describePendingMaintenanceActions](#describePendingMaintenanceActions)
  - [DescribePendingMaintenanceActionsOptions](#DescribePendingMaintenanceActionsOptions)
  - [describeRefreshSchemasStatus](#describeRefreshSchemasStatus)
  - [describeReplicationInstanceTaskLogs](#describeReplicationInstanceTaskLogs)
  - [DescribeReplicationInstanceTaskLogsOptions](#DescribeReplicationInstanceTaskLogsOptions)
  - [describeReplicationInstances](#describeReplicationInstances)
  - [DescribeReplicationInstancesOptions](#DescribeReplicationInstancesOptions)
  - [describeReplicationSubnetGroups](#describeReplicationSubnetGroups)
  - [DescribeReplicationSubnetGroupsOptions](#DescribeReplicationSubnetGroupsOptions)
  - [describeReplicationTaskAssessmentResults](#describeReplicationTaskAssessmentResults)
  - [DescribeReplicationTaskAssessmentResultsOptions](#DescribeReplicationTaskAssessmentResultsOptions)
  - [describeReplicationTasks](#describeReplicationTasks)
  - [DescribeReplicationTasksOptions](#DescribeReplicationTasksOptions)
  - [describeSchemas](#describeSchemas)
  - [DescribeSchemasOptions](#DescribeSchemasOptions)
  - [describeTableStatistics](#describeTableStatistics)
  - [DescribeTableStatisticsOptions](#DescribeTableStatisticsOptions)
  - [importCertificate](#importCertificate)
  - [ImportCertificateOptions](#ImportCertificateOptions)
  - [listTagsForResource](#listTagsForResource)
  - [modifyEndpoint](#modifyEndpoint)
  - [ModifyEndpointOptions](#ModifyEndpointOptions)
  - [modifyEventSubscription](#modifyEventSubscription)
  - [ModifyEventSubscriptionOptions](#ModifyEventSubscriptionOptions)
  - [modifyReplicationInstance](#modifyReplicationInstance)
  - [ModifyReplicationInstanceOptions](#ModifyReplicationInstanceOptions)
  - [modifyReplicationSubnetGroup](#modifyReplicationSubnetGroup)
  - [ModifyReplicationSubnetGroupOptions](#ModifyReplicationSubnetGroupOptions)
  - [modifyReplicationTask](#modifyReplicationTask)
  - [ModifyReplicationTaskOptions](#ModifyReplicationTaskOptions)
  - [rebootReplicationInstance](#rebootReplicationInstance)
  - [RebootReplicationInstanceOptions](#RebootReplicationInstanceOptions)
  - [refreshSchemas](#refreshSchemas)
  - [reloadTables](#reloadTables)
  - [ReloadTablesOptions](#ReloadTablesOptions)
  - [removeTagsFromResource](#removeTagsFromResource)
  - [startReplicationTask](#startReplicationTask)
  - [StartReplicationTaskOptions](#StartReplicationTaskOptions)
  - [startReplicationTaskAssessment](#startReplicationTaskAssessment)
  - [stopReplicationTask](#stopReplicationTask)
  - [testConnection](#testConnection)

@docs addTagsToResource, applyPendingMaintenanceAction, createEndpoint, CreateEndpointOptions, createEventSubscription, CreateEventSubscriptionOptions, createReplicationInstance, CreateReplicationInstanceOptions, createReplicationSubnetGroup, CreateReplicationSubnetGroupOptions, createReplicationTask, CreateReplicationTaskOptions, deleteCertificate, deleteEndpoint, deleteEventSubscription, deleteReplicationInstance, deleteReplicationSubnetGroup, deleteReplicationTask, describeAccountAttributes, describeCertificates, DescribeCertificatesOptions, describeConnections, DescribeConnectionsOptions, describeEndpointTypes, DescribeEndpointTypesOptions, describeEndpoints, DescribeEndpointsOptions, describeEventCategories, DescribeEventCategoriesOptions, describeEventSubscriptions, DescribeEventSubscriptionsOptions, describeEvents, DescribeEventsOptions, describeOrderableReplicationInstances, DescribeOrderableReplicationInstancesOptions, describePendingMaintenanceActions, DescribePendingMaintenanceActionsOptions, describeRefreshSchemasStatus, describeReplicationInstanceTaskLogs, DescribeReplicationInstanceTaskLogsOptions, describeReplicationInstances, DescribeReplicationInstancesOptions, describeReplicationSubnetGroups, DescribeReplicationSubnetGroupsOptions, describeReplicationTaskAssessmentResults, DescribeReplicationTaskAssessmentResultsOptions, describeReplicationTasks, DescribeReplicationTasksOptions, describeSchemas, DescribeSchemasOptions, describeTableStatistics, DescribeTableStatisticsOptions, importCertificate, ImportCertificateOptions, listTagsForResource, modifyEndpoint, ModifyEndpointOptions, modifyEventSubscription, ModifyEventSubscriptionOptions, modifyReplicationInstance, ModifyReplicationInstanceOptions, modifyReplicationSubnetGroup, ModifyReplicationSubnetGroupOptions, modifyReplicationTask, ModifyReplicationTaskOptions, rebootReplicationInstance, RebootReplicationInstanceOptions, refreshSchemas, reloadTables, ReloadTablesOptions, removeTagsFromResource, startReplicationTask, StartReplicationTaskOptions, startReplicationTaskAssessment, stopReplicationTask, testConnection


## Responses

  - [AddTagsToResourceResponse](#AddTagsToResourceResponse)
  - [ApplyPendingMaintenanceActionResponse](#ApplyPendingMaintenanceActionResponse)
  - [CreateEndpointResponse](#CreateEndpointResponse)
  - [CreateEventSubscriptionResponse](#CreateEventSubscriptionResponse)
  - [CreateReplicationInstanceResponse](#CreateReplicationInstanceResponse)
  - [CreateReplicationSubnetGroupResponse](#CreateReplicationSubnetGroupResponse)
  - [CreateReplicationTaskResponse](#CreateReplicationTaskResponse)
  - [DeleteCertificateResponse](#DeleteCertificateResponse)
  - [DeleteEndpointResponse](#DeleteEndpointResponse)
  - [DeleteEventSubscriptionResponse](#DeleteEventSubscriptionResponse)
  - [DeleteReplicationInstanceResponse](#DeleteReplicationInstanceResponse)
  - [DeleteReplicationSubnetGroupResponse](#DeleteReplicationSubnetGroupResponse)
  - [DeleteReplicationTaskResponse](#DeleteReplicationTaskResponse)
  - [DescribeAccountAttributesResponse](#DescribeAccountAttributesResponse)
  - [DescribeCertificatesResponse](#DescribeCertificatesResponse)
  - [DescribeConnectionsResponse](#DescribeConnectionsResponse)
  - [DescribeEndpointTypesResponse](#DescribeEndpointTypesResponse)
  - [DescribeEndpointsResponse](#DescribeEndpointsResponse)
  - [DescribeEventCategoriesResponse](#DescribeEventCategoriesResponse)
  - [DescribeEventSubscriptionsResponse](#DescribeEventSubscriptionsResponse)
  - [DescribeEventsResponse](#DescribeEventsResponse)
  - [DescribeOrderableReplicationInstancesResponse](#DescribeOrderableReplicationInstancesResponse)
  - [DescribePendingMaintenanceActionsResponse](#DescribePendingMaintenanceActionsResponse)
  - [DescribeRefreshSchemasStatusResponse](#DescribeRefreshSchemasStatusResponse)
  - [DescribeReplicationInstanceTaskLogsResponse](#DescribeReplicationInstanceTaskLogsResponse)
  - [DescribeReplicationInstancesResponse](#DescribeReplicationInstancesResponse)
  - [DescribeReplicationSubnetGroupsResponse](#DescribeReplicationSubnetGroupsResponse)
  - [DescribeReplicationTaskAssessmentResultsResponse](#DescribeReplicationTaskAssessmentResultsResponse)
  - [DescribeReplicationTasksResponse](#DescribeReplicationTasksResponse)
  - [DescribeSchemasResponse](#DescribeSchemasResponse)
  - [DescribeTableStatisticsResponse](#DescribeTableStatisticsResponse)
  - [ImportCertificateResponse](#ImportCertificateResponse)
  - [ListTagsForResourceResponse](#ListTagsForResourceResponse)
  - [ModifyEndpointResponse](#ModifyEndpointResponse)
  - [ModifyEventSubscriptionResponse](#ModifyEventSubscriptionResponse)
  - [ModifyReplicationInstanceResponse](#ModifyReplicationInstanceResponse)
  - [ModifyReplicationSubnetGroupResponse](#ModifyReplicationSubnetGroupResponse)
  - [ModifyReplicationTaskResponse](#ModifyReplicationTaskResponse)
  - [RebootReplicationInstanceResponse](#RebootReplicationInstanceResponse)
  - [RefreshSchemasResponse](#RefreshSchemasResponse)
  - [ReloadTablesResponse](#ReloadTablesResponse)
  - [RemoveTagsFromResourceResponse](#RemoveTagsFromResourceResponse)
  - [StartReplicationTaskAssessmentResponse](#StartReplicationTaskAssessmentResponse)
  - [StartReplicationTaskResponse](#StartReplicationTaskResponse)
  - [StopReplicationTaskResponse](#StopReplicationTaskResponse)
  - [TestConnectionResponse](#TestConnectionResponse)

@docs AddTagsToResourceResponse, ApplyPendingMaintenanceActionResponse, CreateEndpointResponse, CreateEventSubscriptionResponse, CreateReplicationInstanceResponse, CreateReplicationSubnetGroupResponse, CreateReplicationTaskResponse, DeleteCertificateResponse, DeleteEndpointResponse, DeleteEventSubscriptionResponse, DeleteReplicationInstanceResponse, DeleteReplicationSubnetGroupResponse, DeleteReplicationTaskResponse, DescribeAccountAttributesResponse, DescribeCertificatesResponse, DescribeConnectionsResponse, DescribeEndpointTypesResponse, DescribeEndpointsResponse, DescribeEventCategoriesResponse, DescribeEventSubscriptionsResponse, DescribeEventsResponse, DescribeOrderableReplicationInstancesResponse, DescribePendingMaintenanceActionsResponse, DescribeRefreshSchemasStatusResponse, DescribeReplicationInstanceTaskLogsResponse, DescribeReplicationInstancesResponse, DescribeReplicationSubnetGroupsResponse, DescribeReplicationTaskAssessmentResultsResponse, DescribeReplicationTasksResponse, DescribeSchemasResponse, DescribeTableStatisticsResponse, ImportCertificateResponse, ListTagsForResourceResponse, ModifyEndpointResponse, ModifyEventSubscriptionResponse, ModifyReplicationInstanceResponse, ModifyReplicationSubnetGroupResponse, ModifyReplicationTaskResponse, RebootReplicationInstanceResponse, RefreshSchemasResponse, ReloadTablesResponse, RemoveTagsFromResourceResponse, StartReplicationTaskAssessmentResponse, StartReplicationTaskResponse, StopReplicationTaskResponse, TestConnectionResponse


## Records

  - [AccountQuota](#AccountQuota)
  - [AvailabilityZone](#AvailabilityZone)
  - [Certificate](#Certificate)
  - [Connection](#Connection)
  - [DmsTransferSettings](#DmsTransferSettings)
  - [DynamoDbSettings](#DynamoDbSettings)
  - [ElasticsearchSettings](#ElasticsearchSettings)
  - [Endpoint](#Endpoint)
  - [Event](#Event)
  - [EventCategoryGroup](#EventCategoryGroup)
  - [EventSubscription](#EventSubscription)
  - [Filter](#Filter)
  - [KinesisSettings](#KinesisSettings)
  - [MongoDbSettings](#MongoDbSettings)
  - [OrderableReplicationInstance](#OrderableReplicationInstance)
  - [PendingMaintenanceAction](#PendingMaintenanceAction)
  - [RedshiftSettings](#RedshiftSettings)
  - [RefreshSchemasStatus](#RefreshSchemasStatus)
  - [ReplicationInstance](#ReplicationInstance)
  - [ReplicationInstanceTaskLog](#ReplicationInstanceTaskLog)
  - [ReplicationPendingModifiedValues](#ReplicationPendingModifiedValues)
  - [ReplicationSubnetGroup](#ReplicationSubnetGroup)
  - [ReplicationTask](#ReplicationTask)
  - [ReplicationTaskAssessmentResult](#ReplicationTaskAssessmentResult)
  - [ReplicationTaskStats](#ReplicationTaskStats)
  - [ResourcePendingMaintenanceActions](#ResourcePendingMaintenanceActions)
  - [S3Settings](#S3Settings)
  - [Subnet](#Subnet)
  - [SupportedEndpointType](#SupportedEndpointType)
  - [TableStatistics](#TableStatistics)
  - [TableToReload](#TableToReload)
  - [Tag](#Tag)
  - [VpcSecurityGroupMembership](#VpcSecurityGroupMembership)

@docs AccountQuota, AvailabilityZone, Certificate, Connection, DmsTransferSettings, DynamoDbSettings, ElasticsearchSettings, Endpoint, Event, EventCategoryGroup, EventSubscription, Filter, KinesisSettings, MongoDbSettings, OrderableReplicationInstance, PendingMaintenanceAction, RedshiftSettings, RefreshSchemasStatus, ReplicationInstance, ReplicationInstanceTaskLog, ReplicationPendingModifiedValues, ReplicationSubnetGroup, ReplicationTask, ReplicationTaskAssessmentResult, ReplicationTaskStats, ResourcePendingMaintenanceActions, S3Settings, Subnet, SupportedEndpointType, TableStatistics, TableToReload, Tag, VpcSecurityGroupMembership


## Unions

  - [AuthMechanismValue](#AuthMechanismValue)
  - [AuthTypeValue](#AuthTypeValue)
  - [CompressionTypeValue](#CompressionTypeValue)
  - [DataFormatValue](#DataFormatValue)
  - [DmsSslModeValue](#DmsSslModeValue)
  - [EncodingTypeValue](#EncodingTypeValue)
  - [EncryptionModeValue](#EncryptionModeValue)
  - [MessageFormatValue](#MessageFormatValue)
  - [MigrationTypeValue](#MigrationTypeValue)
  - [NestingLevelValue](#NestingLevelValue)
  - [ParquetVersionValue](#ParquetVersionValue)
  - [RefreshSchemasStatusTypeValue](#RefreshSchemasStatusTypeValue)
  - [ReleaseStatusValues](#ReleaseStatusValues)
  - [ReloadOptionValue](#ReloadOptionValue)
  - [ReplicationEndpointTypeValue](#ReplicationEndpointTypeValue)
  - [SourceType](#SourceType)
  - [StartReplicationTaskTypeValue](#StartReplicationTaskTypeValue)

@docs AuthMechanismValue, AuthTypeValue, CompressionTypeValue, DataFormatValue, DmsSslModeValue, EncodingTypeValue, EncryptionModeValue, MessageFormatValue, MigrationTypeValue, NestingLevelValue, ParquetVersionValue, RefreshSchemasStatusTypeValue, ReleaseStatusValues, ReloadOptionValue, ReplicationEndpointTypeValue, SourceType, StartReplicationTaskTypeValue

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
        "dms"
        "2016-01-01"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AmazonDMSv20160101")



-- OPERATIONS


{-|

<p>Adds metadata tags to an AWS DMS resource, including replication instance, endpoint, security group, and migration task. These tags can also be used with cost allocation reporting to track cost associated with DMS resources, or used in a Condition statement in an IAM policy for DMS.</p>

**Required Parameters**

  - `resourceArn` **:** `String`
  - `tags` **:** `(List Tag)`

-}
addTagsToResource :
    String
    -> List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddTagsToResourceResponse)
addTagsToResource resourceArn tags =
    let
        requestInput =
            AddTagsToResourceMessage
                resourceArn
                tags
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> addTagsToResourceMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AddTagsToResource"
            (AWS.Core.Decode.ResultDecoder "AddTagsToResourceResponse" addTagsToResourceResponseDecoder)
        )


{-|

<p>Applies a pending maintenance action to a resource (for example, to a replication instance).</p>

**Required Parameters**

  - `replicationInstanceArn` **:** `String`
  - `applyAction` **:** `String`
  - `optInType` **:** `String`

-}
applyPendingMaintenanceAction :
    String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ApplyPendingMaintenanceActionResponse)
applyPendingMaintenanceAction replicationInstanceArn applyAction optInType =
    let
        requestInput =
            ApplyPendingMaintenanceActionMessage
                replicationInstanceArn
                applyAction
                optInType
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> applyPendingMaintenanceActionMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ApplyPendingMaintenanceAction"
            (AWS.Core.Decode.ResultDecoder "ApplyPendingMaintenanceActionResponse" applyPendingMaintenanceActionResponseDecoder)
        )


{-|

<p>Creates an endpoint using the provided settings.</p>

**Required Parameters**

  - `endpointIdentifier` **:** `String`
  - `endpointType` **:** `ReplicationEndpointTypeValue`
  - `engineName` **:** `String`

-}
createEndpoint :
    String
    -> ReplicationEndpointTypeValue
    -> String
    -> (CreateEndpointOptions -> CreateEndpointOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateEndpointResponse)
createEndpoint endpointIdentifier endpointType engineName setOptions =
    let
        requestInput =
            CreateEndpointMessage
                endpointIdentifier
                endpointType
                engineName
                options.username
                options.password
                options.serverName
                options.port_
                options.databaseName
                options.extraConnectionAttributes
                options.kmsKeyId
                options.tags
                options.certificateArn
                options.sslMode
                options.serviceAccessRoleArn
                options.externalTableDefinition
                options.dynamoDbSettings
                options.s3Settings
                options.dmsTransferSettings
                options.mongoDbSettings
                options.kinesisSettings
                options.elasticsearchSettings
                options.redshiftSettings

        options =
            setOptions (CreateEndpointOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createEndpointMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateEndpoint"
            (AWS.Core.Decode.ResultDecoder "CreateEndpointResponse" createEndpointResponseDecoder)
        )


{-| Options for a createEndpoint request
-}
type alias CreateEndpointOptions =
    { username : Maybe String
    , password : Maybe String
    , serverName : Maybe String
    , port_ : Maybe Int
    , databaseName : Maybe String
    , extraConnectionAttributes : Maybe String
    , kmsKeyId : Maybe String
    , tags : Maybe (List Tag)
    , certificateArn : Maybe String
    , sslMode : Maybe DmsSslModeValue
    , serviceAccessRoleArn : Maybe String
    , externalTableDefinition : Maybe String
    , dynamoDbSettings : Maybe DynamoDbSettings
    , s3Settings : Maybe S3Settings
    , dmsTransferSettings : Maybe DmsTransferSettings
    , mongoDbSettings : Maybe MongoDbSettings
    , kinesisSettings : Maybe KinesisSettings
    , elasticsearchSettings : Maybe ElasticsearchSettings
    , redshiftSettings : Maybe RedshiftSettings
    }


{-|

<p> Creates an AWS DMS event notification subscription. </p> <p>You can specify the type of source (<code>SourceType</code>) you want to be notified of, provide a list of AWS DMS source IDs (<code>SourceIds</code>) that triggers the events, and provide a list of event categories (<code>EventCategories</code>) for events you want to be notified of. If you specify both the <code>SourceType</code> and <code>SourceIds</code>, such as <code>SourceType = replication-instance</code> and <code>SourceIdentifier = my-replinstance</code>, you will be notified of all the replication instance events for the specified source. If you specify a <code>SourceType</code> but don't specify a <code>SourceIdentifier</code>, you receive notice of the events for that source type for all your AWS DMS sources. If you don't specify either <code>SourceType</code> nor <code>SourceIdentifier</code>, you will be notified of events generated from all AWS DMS sources belonging to your customer account.</p> <p>For more information about AWS DMS events, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html">Working with Events and Notifications</a> in the <i>AWS Database Migration Service User Guide.</i> </p>

**Required Parameters**

  - `subscriptionName` **:** `String`
  - `snsTopicArn` **:** `String`

-}
createEventSubscription :
    String
    -> String
    -> (CreateEventSubscriptionOptions -> CreateEventSubscriptionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateEventSubscriptionResponse)
createEventSubscription subscriptionName snsTopicArn setOptions =
    let
        requestInput =
            CreateEventSubscriptionMessage
                subscriptionName
                snsTopicArn
                options.sourceType
                options.eventCategories
                options.sourceIds
                options.enabled
                options.tags

        options =
            setOptions (CreateEventSubscriptionOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createEventSubscriptionMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateEventSubscription"
            (AWS.Core.Decode.ResultDecoder "CreateEventSubscriptionResponse" createEventSubscriptionResponseDecoder)
        )


{-| Options for a createEventSubscription request
-}
type alias CreateEventSubscriptionOptions =
    { sourceType : Maybe String
    , eventCategories : Maybe (List String)
    , sourceIds : Maybe (List String)
    , enabled : Maybe Bool
    , tags : Maybe (List Tag)
    }


{-|

<p>Creates the replication instance using the specified parameters.</p>

**Required Parameters**

  - `replicationInstanceIdentifier` **:** `String`
  - `replicationInstanceClass` **:** `String`

-}
createReplicationInstance :
    String
    -> String
    -> (CreateReplicationInstanceOptions -> CreateReplicationInstanceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateReplicationInstanceResponse)
createReplicationInstance replicationInstanceIdentifier replicationInstanceClass setOptions =
    let
        requestInput =
            CreateReplicationInstanceMessage
                replicationInstanceIdentifier
                options.allocatedStorage
                replicationInstanceClass
                options.vpcSecurityGroupIds
                options.availabilityZone
                options.replicationSubnetGroupIdentifier
                options.preferredMaintenanceWindow
                options.multiAZ
                options.engineVersion
                options.autoMinorVersionUpgrade
                options.tags
                options.kmsKeyId
                options.publiclyAccessible
                options.dnsNameServers

        options =
            setOptions (CreateReplicationInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createReplicationInstanceMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateReplicationInstance"
            (AWS.Core.Decode.ResultDecoder "CreateReplicationInstanceResponse" createReplicationInstanceResponseDecoder)
        )


{-| Options for a createReplicationInstance request
-}
type alias CreateReplicationInstanceOptions =
    { allocatedStorage : Maybe Int
    , vpcSecurityGroupIds : Maybe (List String)
    , availabilityZone : Maybe String
    , replicationSubnetGroupIdentifier : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , tags : Maybe (List Tag)
    , kmsKeyId : Maybe String
    , publiclyAccessible : Maybe Bool
    , dnsNameServers : Maybe String
    }


{-|

<p>Creates a replication subnet group given a list of the subnet IDs in a VPC.</p>

**Required Parameters**

  - `replicationSubnetGroupIdentifier` **:** `String`
  - `replicationSubnetGroupDescription` **:** `String`
  - `subnetIds` **:** `(List String)`

-}
createReplicationSubnetGroup :
    String
    -> String
    -> List String
    -> (CreateReplicationSubnetGroupOptions -> CreateReplicationSubnetGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateReplicationSubnetGroupResponse)
createReplicationSubnetGroup replicationSubnetGroupIdentifier replicationSubnetGroupDescription subnetIds setOptions =
    let
        requestInput =
            CreateReplicationSubnetGroupMessage
                replicationSubnetGroupIdentifier
                replicationSubnetGroupDescription
                subnetIds
                options.tags

        options =
            setOptions (CreateReplicationSubnetGroupOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createReplicationSubnetGroupMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateReplicationSubnetGroup"
            (AWS.Core.Decode.ResultDecoder "CreateReplicationSubnetGroupResponse" createReplicationSubnetGroupResponseDecoder)
        )


{-| Options for a createReplicationSubnetGroup request
-}
type alias CreateReplicationSubnetGroupOptions =
    { tags : Maybe (List Tag)
    }


{-|

<p>Creates a replication task using the specified parameters.</p>

**Required Parameters**

  - `replicationTaskIdentifier` **:** `String`
  - `sourceEndpointArn` **:** `String`
  - `targetEndpointArn` **:** `String`
  - `replicationInstanceArn` **:** `String`
  - `migrationType` **:** `MigrationTypeValue`
  - `tableMappings` **:** `String`

-}
createReplicationTask :
    String
    -> String
    -> String
    -> String
    -> MigrationTypeValue
    -> String
    -> (CreateReplicationTaskOptions -> CreateReplicationTaskOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateReplicationTaskResponse)
createReplicationTask replicationTaskIdentifier sourceEndpointArn targetEndpointArn replicationInstanceArn migrationType tableMappings setOptions =
    let
        requestInput =
            CreateReplicationTaskMessage
                replicationTaskIdentifier
                sourceEndpointArn
                targetEndpointArn
                replicationInstanceArn
                migrationType
                tableMappings
                options.replicationTaskSettings
                options.cdcStartTime
                options.cdcStartPosition
                options.cdcStopPosition
                options.tags

        options =
            setOptions (CreateReplicationTaskOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createReplicationTaskMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateReplicationTask"
            (AWS.Core.Decode.ResultDecoder "CreateReplicationTaskResponse" createReplicationTaskResponseDecoder)
        )


{-| Options for a createReplicationTask request
-}
type alias CreateReplicationTaskOptions =
    { replicationTaskSettings : Maybe String
    , cdcStartTime : Maybe Posix
    , cdcStartPosition : Maybe String
    , cdcStopPosition : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>Deletes the specified certificate. </p>

**Required Parameters**

  - `certificateArn` **:** `String`

-}
deleteCertificate :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteCertificateResponse)
deleteCertificate certificateArn =
    let
        requestInput =
            DeleteCertificateMessage
                certificateArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteCertificateMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteCertificate"
            (AWS.Core.Decode.ResultDecoder "DeleteCertificateResponse" deleteCertificateResponseDecoder)
        )


{-|

<p>Deletes the specified endpoint.</p> <note> <p>All tasks associated with the endpoint must be deleted before you can delete the endpoint.</p> </note> <p/>

**Required Parameters**

  - `endpointArn` **:** `String`

-}
deleteEndpoint :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteEndpointResponse)
deleteEndpoint endpointArn =
    let
        requestInput =
            DeleteEndpointMessage
                endpointArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteEndpointMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteEndpoint"
            (AWS.Core.Decode.ResultDecoder "DeleteEndpointResponse" deleteEndpointResponseDecoder)
        )


{-|

<p> Deletes an AWS DMS event subscription. </p>

**Required Parameters**

  - `subscriptionName` **:** `String`

-}
deleteEventSubscription :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteEventSubscriptionResponse)
deleteEventSubscription subscriptionName =
    let
        requestInput =
            DeleteEventSubscriptionMessage
                subscriptionName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteEventSubscriptionMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteEventSubscription"
            (AWS.Core.Decode.ResultDecoder "DeleteEventSubscriptionResponse" deleteEventSubscriptionResponseDecoder)
        )


{-|

<p>Deletes the specified replication instance.</p> <note> <p>You must delete any migration tasks that are associated with the replication instance before you can delete it.</p> </note> <p/>

**Required Parameters**

  - `replicationInstanceArn` **:** `String`

-}
deleteReplicationInstance :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteReplicationInstanceResponse)
deleteReplicationInstance replicationInstanceArn =
    let
        requestInput =
            DeleteReplicationInstanceMessage
                replicationInstanceArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteReplicationInstanceMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteReplicationInstance"
            (AWS.Core.Decode.ResultDecoder "DeleteReplicationInstanceResponse" deleteReplicationInstanceResponseDecoder)
        )


{-|

<p>Deletes a subnet group.</p>

**Required Parameters**

  - `replicationSubnetGroupIdentifier` **:** `String`

-}
deleteReplicationSubnetGroup :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteReplicationSubnetGroupResponse)
deleteReplicationSubnetGroup replicationSubnetGroupIdentifier =
    let
        requestInput =
            DeleteReplicationSubnetGroupMessage
                replicationSubnetGroupIdentifier
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteReplicationSubnetGroupMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteReplicationSubnetGroup"
            (AWS.Core.Decode.ResultDecoder "DeleteReplicationSubnetGroupResponse" deleteReplicationSubnetGroupResponseDecoder)
        )


{-|

<p>Deletes the specified replication task.</p>

**Required Parameters**

  - `replicationTaskArn` **:** `String`

-}
deleteReplicationTask :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteReplicationTaskResponse)
deleteReplicationTask replicationTaskArn =
    let
        requestInput =
            DeleteReplicationTaskMessage
                replicationTaskArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteReplicationTaskMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteReplicationTask"
            (AWS.Core.Decode.ResultDecoder "DeleteReplicationTaskResponse" deleteReplicationTaskResponseDecoder)
        )


{-|

<p>Lists all of the AWS DMS attributes for a customer account. These attributes include AWS DMS quotas for the account and a unique account identifier in a particular DMS region. DMS quotas include a list of resource quotas supported by the account, such as the number of replication instances allowed. The description for each resource quota, includes the quota name, current usage toward that quota, and the quota's maximum value. DMS uses the unique account identifier to name each artifact used by DMS in the given region.</p> <p>This command does not take any parameters.</p>

**Required Parameters**

-}
describeAccountAttributes : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAccountAttributesResponse)
describeAccountAttributes =
    let
        requestInput =
            DescribeAccountAttributesMessage
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeAccountAttributesMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAccountAttributes"
            (AWS.Core.Decode.ResultDecoder "DescribeAccountAttributesResponse" describeAccountAttributesResponseDecoder)
        )


{-|

<p>Provides a description of the certificate.</p>

**Required Parameters**

-}
describeCertificates :
    (DescribeCertificatesOptions -> DescribeCertificatesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeCertificatesResponse)
describeCertificates setOptions =
    let
        requestInput =
            DescribeCertificatesMessage
                options.filters
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeCertificatesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeCertificatesMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeCertificates"
            (AWS.Core.Decode.ResultDecoder "DescribeCertificatesResponse" describeCertificatesResponseDecoder)
        )


{-| Options for a describeCertificates request
-}
type alias DescribeCertificatesOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.</p>

**Required Parameters**

-}
describeConnections :
    (DescribeConnectionsOptions -> DescribeConnectionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeConnectionsResponse)
describeConnections setOptions =
    let
        requestInput =
            DescribeConnectionsMessage
                options.filters
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeConnectionsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeConnectionsMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeConnections"
            (AWS.Core.Decode.ResultDecoder "DescribeConnectionsResponse" describeConnectionsResponseDecoder)
        )


{-| Options for a describeConnections request
-}
type alias DescribeConnectionsOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns information about the type of endpoints available.</p>

**Required Parameters**

-}
describeEndpointTypes :
    (DescribeEndpointTypesOptions -> DescribeEndpointTypesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEndpointTypesResponse)
describeEndpointTypes setOptions =
    let
        requestInput =
            DescribeEndpointTypesMessage
                options.filters
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeEndpointTypesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeEndpointTypesMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeEndpointTypes"
            (AWS.Core.Decode.ResultDecoder "DescribeEndpointTypesResponse" describeEndpointTypesResponseDecoder)
        )


{-| Options for a describeEndpointTypes request
-}
type alias DescribeEndpointTypesOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns information about the endpoints for your account in the current region.</p>

**Required Parameters**

-}
describeEndpoints :
    (DescribeEndpointsOptions -> DescribeEndpointsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEndpointsResponse)
describeEndpoints setOptions =
    let
        requestInput =
            DescribeEndpointsMessage
                options.filters
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeEndpointsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeEndpointsMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeEndpoints"
            (AWS.Core.Decode.ResultDecoder "DescribeEndpointsResponse" describeEndpointsResponseDecoder)
        )


{-| Options for a describeEndpoints request
-}
type alias DescribeEndpointsOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Lists categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html">Working with Events and Notifications</a> in the <i>AWS Database Migration Service User Guide.</i> </p>

**Required Parameters**

-}
describeEventCategories :
    (DescribeEventCategoriesOptions -> DescribeEventCategoriesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEventCategoriesResponse)
describeEventCategories setOptions =
    let
        requestInput =
            DescribeEventCategoriesMessage
                options.sourceType
                options.filters

        options =
            setOptions (DescribeEventCategoriesOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeEventCategoriesMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeEventCategories"
            (AWS.Core.Decode.ResultDecoder "DescribeEventCategoriesResponse" describeEventCategoriesResponseDecoder)
        )


{-| Options for a describeEventCategories request
-}
type alias DescribeEventCategoriesOptions =
    { sourceType : Maybe String
    , filters : Maybe (List Filter)
    }


{-|

<p>Lists all the event subscriptions for a customer account. The description of a subscription includes <code>SubscriptionName</code>, <code>SNSTopicARN</code>, <code>CustomerID</code>, <code>SourceType</code>, <code>SourceID</code>, <code>CreationTime</code>, and <code>Status</code>. </p> <p>If you specify <code>SubscriptionName</code>, this action lists the description for that subscription.</p>

**Required Parameters**

-}
describeEventSubscriptions :
    (DescribeEventSubscriptionsOptions -> DescribeEventSubscriptionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEventSubscriptionsResponse)
describeEventSubscriptions setOptions =
    let
        requestInput =
            DescribeEventSubscriptionsMessage
                options.subscriptionName
                options.filters
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeEventSubscriptionsOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeEventSubscriptionsMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeEventSubscriptions"
            (AWS.Core.Decode.ResultDecoder "DescribeEventSubscriptionsResponse" describeEventSubscriptionsResponseDecoder)
        )


{-| Options for a describeEventSubscriptions request
-}
type alias DescribeEventSubscriptionsOptions =
    { subscriptionName : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p> Lists events for a given source identifier and source type. You can also specify a start and end time. For more information on AWS DMS events, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html">Working with Events and Notifications</a> in the <i>AWS Database Migration User Guide.</i> </p>

**Required Parameters**

-}
describeEvents :
    (DescribeEventsOptions -> DescribeEventsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEventsResponse)
describeEvents setOptions =
    let
        requestInput =
            DescribeEventsMessage
                options.sourceIdentifier
                options.sourceType
                options.startTime
                options.endTime
                options.duration
                options.eventCategories
                options.filters
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeEventsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeEventsMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeEvents"
            (AWS.Core.Decode.ResultDecoder "DescribeEventsResponse" describeEventsResponseDecoder)
        )


{-| Options for a describeEvents request
-}
type alias DescribeEventsOptions =
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


{-|

<p>Returns information about the replication instance types that can be created in the specified region.</p>

**Required Parameters**

-}
describeOrderableReplicationInstances :
    (DescribeOrderableReplicationInstancesOptions -> DescribeOrderableReplicationInstancesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeOrderableReplicationInstancesResponse)
describeOrderableReplicationInstances setOptions =
    let
        requestInput =
            DescribeOrderableReplicationInstancesMessage
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeOrderableReplicationInstancesOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeOrderableReplicationInstancesMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeOrderableReplicationInstances"
            (AWS.Core.Decode.ResultDecoder "DescribeOrderableReplicationInstancesResponse" describeOrderableReplicationInstancesResponseDecoder)
        )


{-| Options for a describeOrderableReplicationInstances request
-}
type alias DescribeOrderableReplicationInstancesOptions =
    { maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>For internal use only</p>

**Required Parameters**

-}
describePendingMaintenanceActions :
    (DescribePendingMaintenanceActionsOptions -> DescribePendingMaintenanceActionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribePendingMaintenanceActionsResponse)
describePendingMaintenanceActions setOptions =
    let
        requestInput =
            DescribePendingMaintenanceActionsMessage
                options.replicationInstanceArn
                options.filters
                options.marker
                options.maxRecords

        options =
            setOptions (DescribePendingMaintenanceActionsOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describePendingMaintenanceActionsMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribePendingMaintenanceActions"
            (AWS.Core.Decode.ResultDecoder "DescribePendingMaintenanceActionsResponse" describePendingMaintenanceActionsResponseDecoder)
        )


{-| Options for a describePendingMaintenanceActions request
-}
type alias DescribePendingMaintenanceActionsOptions =
    { replicationInstanceArn : Maybe String
    , filters : Maybe (List Filter)
    , marker : Maybe String
    , maxRecords : Maybe Int
    }


{-|

<p>Returns the status of the RefreshSchemas operation.</p>

**Required Parameters**

  - `endpointArn` **:** `String`

-}
describeRefreshSchemasStatus :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeRefreshSchemasStatusResponse)
describeRefreshSchemasStatus endpointArn =
    let
        requestInput =
            DescribeRefreshSchemasStatusMessage
                endpointArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeRefreshSchemasStatusMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeRefreshSchemasStatus"
            (AWS.Core.Decode.ResultDecoder "DescribeRefreshSchemasStatusResponse" describeRefreshSchemasStatusResponseDecoder)
        )


{-|

<p>Returns information about the task logs for the specified task.</p>

**Required Parameters**

  - `replicationInstanceArn` **:** `String`

-}
describeReplicationInstanceTaskLogs :
    String
    -> (DescribeReplicationInstanceTaskLogsOptions -> DescribeReplicationInstanceTaskLogsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeReplicationInstanceTaskLogsResponse)
describeReplicationInstanceTaskLogs replicationInstanceArn setOptions =
    let
        requestInput =
            DescribeReplicationInstanceTaskLogsMessage
                replicationInstanceArn
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeReplicationInstanceTaskLogsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeReplicationInstanceTaskLogsMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeReplicationInstanceTaskLogs"
            (AWS.Core.Decode.ResultDecoder "DescribeReplicationInstanceTaskLogsResponse" describeReplicationInstanceTaskLogsResponseDecoder)
        )


{-| Options for a describeReplicationInstanceTaskLogs request
-}
type alias DescribeReplicationInstanceTaskLogsOptions =
    { maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns information about replication instances for your account in the current region.</p>

**Required Parameters**

-}
describeReplicationInstances :
    (DescribeReplicationInstancesOptions -> DescribeReplicationInstancesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeReplicationInstancesResponse)
describeReplicationInstances setOptions =
    let
        requestInput =
            DescribeReplicationInstancesMessage
                options.filters
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeReplicationInstancesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeReplicationInstancesMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeReplicationInstances"
            (AWS.Core.Decode.ResultDecoder "DescribeReplicationInstancesResponse" describeReplicationInstancesResponseDecoder)
        )


{-| Options for a describeReplicationInstances request
-}
type alias DescribeReplicationInstancesOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns information about the replication subnet groups.</p>

**Required Parameters**

-}
describeReplicationSubnetGroups :
    (DescribeReplicationSubnetGroupsOptions -> DescribeReplicationSubnetGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeReplicationSubnetGroupsResponse)
describeReplicationSubnetGroups setOptions =
    let
        requestInput =
            DescribeReplicationSubnetGroupsMessage
                options.filters
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeReplicationSubnetGroupsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeReplicationSubnetGroupsMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeReplicationSubnetGroups"
            (AWS.Core.Decode.ResultDecoder "DescribeReplicationSubnetGroupsResponse" describeReplicationSubnetGroupsResponseDecoder)
        )


{-| Options for a describeReplicationSubnetGroups request
-}
type alias DescribeReplicationSubnetGroupsOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns the task assessment results from Amazon S3. This action always returns the latest results.</p>

**Required Parameters**

-}
describeReplicationTaskAssessmentResults :
    (DescribeReplicationTaskAssessmentResultsOptions -> DescribeReplicationTaskAssessmentResultsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeReplicationTaskAssessmentResultsResponse)
describeReplicationTaskAssessmentResults setOptions =
    let
        requestInput =
            DescribeReplicationTaskAssessmentResultsMessage
                options.replicationTaskArn
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeReplicationTaskAssessmentResultsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeReplicationTaskAssessmentResultsMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeReplicationTaskAssessmentResults"
            (AWS.Core.Decode.ResultDecoder "DescribeReplicationTaskAssessmentResultsResponse" describeReplicationTaskAssessmentResultsResponseDecoder)
        )


{-| Options for a describeReplicationTaskAssessmentResults request
-}
type alias DescribeReplicationTaskAssessmentResultsOptions =
    { replicationTaskArn : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns information about replication tasks for your account in the current region.</p>

**Required Parameters**

-}
describeReplicationTasks :
    (DescribeReplicationTasksOptions -> DescribeReplicationTasksOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeReplicationTasksResponse)
describeReplicationTasks setOptions =
    let
        requestInput =
            DescribeReplicationTasksMessage
                options.filters
                options.maxRecords
                options.marker
                options.withoutSettings

        options =
            setOptions (DescribeReplicationTasksOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeReplicationTasksMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeReplicationTasks"
            (AWS.Core.Decode.ResultDecoder "DescribeReplicationTasksResponse" describeReplicationTasksResponseDecoder)
        )


{-| Options for a describeReplicationTasks request
-}
type alias DescribeReplicationTasksOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    , withoutSettings : Maybe Bool
    }


{-|

<p>Returns information about the schema for the specified endpoint.</p> <p/>

**Required Parameters**

  - `endpointArn` **:** `String`

-}
describeSchemas :
    String
    -> (DescribeSchemasOptions -> DescribeSchemasOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSchemasResponse)
describeSchemas endpointArn setOptions =
    let
        requestInput =
            DescribeSchemasMessage
                endpointArn
                options.maxRecords
                options.marker

        options =
            setOptions (DescribeSchemasOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeSchemasMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeSchemas"
            (AWS.Core.Decode.ResultDecoder "DescribeSchemasResponse" describeSchemasResponseDecoder)
        )


{-| Options for a describeSchemas request
-}
type alias DescribeSchemasOptions =
    { maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted.</p> <p>Note that the "last updated" column the DMS console only indicates the time that AWS DMS last updated the table statistics record for a table. It does not indicate the time of the last update to the table.</p>

**Required Parameters**

  - `replicationTaskArn` **:** `String`

-}
describeTableStatistics :
    String
    -> (DescribeTableStatisticsOptions -> DescribeTableStatisticsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTableStatisticsResponse)
describeTableStatistics replicationTaskArn setOptions =
    let
        requestInput =
            DescribeTableStatisticsMessage
                replicationTaskArn
                options.maxRecords
                options.marker
                options.filters

        options =
            setOptions (DescribeTableStatisticsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeTableStatisticsMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeTableStatistics"
            (AWS.Core.Decode.ResultDecoder "DescribeTableStatisticsResponse" describeTableStatisticsResponseDecoder)
        )


{-| Options for a describeTableStatistics request
-}
type alias DescribeTableStatisticsOptions =
    { maxRecords : Maybe Int
    , marker : Maybe String
    , filters : Maybe (List Filter)
    }


{-|

<p>Uploads the specified certificate.</p>

**Required Parameters**

  - `certificateIdentifier` **:** `String`

-}
importCertificate :
    String
    -> (ImportCertificateOptions -> ImportCertificateOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ImportCertificateResponse)
importCertificate certificateIdentifier setOptions =
    let
        requestInput =
            ImportCertificateMessage
                certificateIdentifier
                options.certificatePem
                options.certificateWallet
                options.tags

        options =
            setOptions (ImportCertificateOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> importCertificateMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ImportCertificate"
            (AWS.Core.Decode.ResultDecoder "ImportCertificateResponse" importCertificateResponseDecoder)
        )


{-| Options for a importCertificate request
-}
type alias ImportCertificateOptions =
    { certificatePem : Maybe String
    , certificateWallet : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>Lists all tags for an AWS DMS resource.</p>

**Required Parameters**

  - `resourceArn` **:** `String`

-}
listTagsForResource :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceResponse)
listTagsForResource resourceArn =
    let
        requestInput =
            ListTagsForResourceMessage
                resourceArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listTagsForResourceMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListTagsForResource"
            (AWS.Core.Decode.ResultDecoder "ListTagsForResourceResponse" listTagsForResourceResponseDecoder)
        )


{-|

<p>Modifies the specified endpoint.</p>

**Required Parameters**

  - `endpointArn` **:** `String`

-}
modifyEndpoint :
    String
    -> (ModifyEndpointOptions -> ModifyEndpointOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyEndpointResponse)
modifyEndpoint endpointArn setOptions =
    let
        requestInput =
            ModifyEndpointMessage
                endpointArn
                options.endpointIdentifier
                options.endpointType
                options.engineName
                options.username
                options.password
                options.serverName
                options.port_
                options.databaseName
                options.extraConnectionAttributes
                options.certificateArn
                options.sslMode
                options.serviceAccessRoleArn
                options.externalTableDefinition
                options.dynamoDbSettings
                options.s3Settings
                options.dmsTransferSettings
                options.mongoDbSettings
                options.kinesisSettings
                options.elasticsearchSettings
                options.redshiftSettings

        options =
            setOptions (ModifyEndpointOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> modifyEndpointMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyEndpoint"
            (AWS.Core.Decode.ResultDecoder "ModifyEndpointResponse" modifyEndpointResponseDecoder)
        )


{-| Options for a modifyEndpoint request
-}
type alias ModifyEndpointOptions =
    { endpointIdentifier : Maybe String
    , endpointType : Maybe ReplicationEndpointTypeValue
    , engineName : Maybe String
    , username : Maybe String
    , password : Maybe String
    , serverName : Maybe String
    , port_ : Maybe Int
    , databaseName : Maybe String
    , extraConnectionAttributes : Maybe String
    , certificateArn : Maybe String
    , sslMode : Maybe DmsSslModeValue
    , serviceAccessRoleArn : Maybe String
    , externalTableDefinition : Maybe String
    , dynamoDbSettings : Maybe DynamoDbSettings
    , s3Settings : Maybe S3Settings
    , dmsTransferSettings : Maybe DmsTransferSettings
    , mongoDbSettings : Maybe MongoDbSettings
    , kinesisSettings : Maybe KinesisSettings
    , elasticsearchSettings : Maybe ElasticsearchSettings
    , redshiftSettings : Maybe RedshiftSettings
    }


{-|

<p>Modifies an existing AWS DMS event notification subscription. </p>

**Required Parameters**

  - `subscriptionName` **:** `String`

-}
modifyEventSubscription :
    String
    -> (ModifyEventSubscriptionOptions -> ModifyEventSubscriptionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyEventSubscriptionResponse)
modifyEventSubscription subscriptionName setOptions =
    let
        requestInput =
            ModifyEventSubscriptionMessage
                subscriptionName
                options.snsTopicArn
                options.sourceType
                options.eventCategories
                options.enabled

        options =
            setOptions (ModifyEventSubscriptionOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> modifyEventSubscriptionMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyEventSubscription"
            (AWS.Core.Decode.ResultDecoder "ModifyEventSubscriptionResponse" modifyEventSubscriptionResponseDecoder)
        )


{-| Options for a modifyEventSubscription request
-}
type alias ModifyEventSubscriptionOptions =
    { snsTopicArn : Maybe String
    , sourceType : Maybe String
    , eventCategories : Maybe (List String)
    , enabled : Maybe Bool
    }


{-|

<p>Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these parameters and the new values in the request.</p> <p>Some settings are applied during the maintenance window.</p> <p/>

**Required Parameters**

  - `replicationInstanceArn` **:** `String`

-}
modifyReplicationInstance :
    String
    -> (ModifyReplicationInstanceOptions -> ModifyReplicationInstanceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyReplicationInstanceResponse)
modifyReplicationInstance replicationInstanceArn setOptions =
    let
        requestInput =
            ModifyReplicationInstanceMessage
                replicationInstanceArn
                options.allocatedStorage
                options.applyImmediately
                options.replicationInstanceClass
                options.vpcSecurityGroupIds
                options.preferredMaintenanceWindow
                options.multiAZ
                options.engineVersion
                options.allowMajorVersionUpgrade
                options.autoMinorVersionUpgrade
                options.replicationInstanceIdentifier

        options =
            setOptions (ModifyReplicationInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> modifyReplicationInstanceMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyReplicationInstance"
            (AWS.Core.Decode.ResultDecoder "ModifyReplicationInstanceResponse" modifyReplicationInstanceResponseDecoder)
        )


{-| Options for a modifyReplicationInstance request
-}
type alias ModifyReplicationInstanceOptions =
    { allocatedStorage : Maybe Int
    , applyImmediately : Maybe Bool
    , replicationInstanceClass : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , preferredMaintenanceWindow : Maybe String
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , allowMajorVersionUpgrade : Maybe Bool
    , autoMinorVersionUpgrade : Maybe Bool
    , replicationInstanceIdentifier : Maybe String
    }


{-|

<p>Modifies the settings for the specified replication subnet group.</p>

**Required Parameters**

  - `replicationSubnetGroupIdentifier` **:** `String`
  - `subnetIds` **:** `(List String)`

-}
modifyReplicationSubnetGroup :
    String
    -> List String
    -> (ModifyReplicationSubnetGroupOptions -> ModifyReplicationSubnetGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyReplicationSubnetGroupResponse)
modifyReplicationSubnetGroup replicationSubnetGroupIdentifier subnetIds setOptions =
    let
        requestInput =
            ModifyReplicationSubnetGroupMessage
                replicationSubnetGroupIdentifier
                options.replicationSubnetGroupDescription
                subnetIds

        options =
            setOptions (ModifyReplicationSubnetGroupOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> modifyReplicationSubnetGroupMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyReplicationSubnetGroup"
            (AWS.Core.Decode.ResultDecoder "ModifyReplicationSubnetGroupResponse" modifyReplicationSubnetGroupResponseDecoder)
        )


{-| Options for a modifyReplicationSubnetGroup request
-}
type alias ModifyReplicationSubnetGroupOptions =
    { replicationSubnetGroupDescription : Maybe String
    }


{-|

<p>Modifies the specified replication task.</p> <p>You can't modify the task endpoints. The task must be stopped before you can modify it. </p> <p>For more information about AWS DMS tasks, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html">Working with Migration Tasks</a> in the <i>AWS Database Migration Service User Guide</i>.</p>

**Required Parameters**

  - `replicationTaskArn` **:** `String`

-}
modifyReplicationTask :
    String
    -> (ModifyReplicationTaskOptions -> ModifyReplicationTaskOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyReplicationTaskResponse)
modifyReplicationTask replicationTaskArn setOptions =
    let
        requestInput =
            ModifyReplicationTaskMessage
                replicationTaskArn
                options.replicationTaskIdentifier
                options.migrationType
                options.tableMappings
                options.replicationTaskSettings
                options.cdcStartTime
                options.cdcStartPosition
                options.cdcStopPosition

        options =
            setOptions (ModifyReplicationTaskOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> modifyReplicationTaskMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ModifyReplicationTask"
            (AWS.Core.Decode.ResultDecoder "ModifyReplicationTaskResponse" modifyReplicationTaskResponseDecoder)
        )


{-| Options for a modifyReplicationTask request
-}
type alias ModifyReplicationTaskOptions =
    { replicationTaskIdentifier : Maybe String
    , migrationType : Maybe MigrationTypeValue
    , tableMappings : Maybe String
    , replicationTaskSettings : Maybe String
    , cdcStartTime : Maybe Posix
    , cdcStartPosition : Maybe String
    , cdcStopPosition : Maybe String
    }


{-|

<p>Reboots a replication instance. Rebooting results in a momentary outage, until the replication instance becomes available again.</p>

**Required Parameters**

  - `replicationInstanceArn` **:** `String`

-}
rebootReplicationInstance :
    String
    -> (RebootReplicationInstanceOptions -> RebootReplicationInstanceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RebootReplicationInstanceResponse)
rebootReplicationInstance replicationInstanceArn setOptions =
    let
        requestInput =
            RebootReplicationInstanceMessage
                replicationInstanceArn
                options.forceFailover

        options =
            setOptions (RebootReplicationInstanceOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> rebootReplicationInstanceMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RebootReplicationInstance"
            (AWS.Core.Decode.ResultDecoder "RebootReplicationInstanceResponse" rebootReplicationInstanceResponseDecoder)
        )


{-| Options for a rebootReplicationInstance request
-}
type alias RebootReplicationInstanceOptions =
    { forceFailover : Maybe Bool
    }


{-|

<p>Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can check the status of this operation by calling the DescribeRefreshSchemasStatus operation.</p>

**Required Parameters**

  - `endpointArn` **:** `String`
  - `replicationInstanceArn` **:** `String`

-}
refreshSchemas :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RefreshSchemasResponse)
refreshSchemas endpointArn replicationInstanceArn =
    let
        requestInput =
            RefreshSchemasMessage
                endpointArn
                replicationInstanceArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> refreshSchemasMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RefreshSchemas"
            (AWS.Core.Decode.ResultDecoder "RefreshSchemasResponse" refreshSchemasResponseDecoder)
        )


{-|

<p>Reloads the target database table with the source data. </p>

**Required Parameters**

  - `replicationTaskArn` **:** `String`
  - `tablesToReload` **:** `(List TableToReload)`

-}
reloadTables :
    String
    -> List TableToReload
    -> (ReloadTablesOptions -> ReloadTablesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReloadTablesResponse)
reloadTables replicationTaskArn tablesToReload setOptions =
    let
        requestInput =
            ReloadTablesMessage
                replicationTaskArn
                tablesToReload
                options.reloadOption

        options =
            setOptions (ReloadTablesOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> reloadTablesMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ReloadTables"
            (AWS.Core.Decode.ResultDecoder "ReloadTablesResponse" reloadTablesResponseDecoder)
        )


{-| Options for a reloadTables request
-}
type alias ReloadTablesOptions =
    { reloadOption : Maybe ReloadOptionValue
    }


{-|

<p>Removes metadata tags from a DMS resource.</p>

**Required Parameters**

  - `resourceArn` **:** `String`
  - `tagKeys` **:** `(List String)`

-}
removeTagsFromResource :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveTagsFromResourceResponse)
removeTagsFromResource resourceArn tagKeys =
    let
        requestInput =
            RemoveTagsFromResourceMessage
                resourceArn
                tagKeys
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> removeTagsFromResourceMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RemoveTagsFromResource"
            (AWS.Core.Decode.ResultDecoder "RemoveTagsFromResourceResponse" removeTagsFromResourceResponseDecoder)
        )


{-|

<p>Starts the replication task.</p> <p>For more information about AWS DMS tasks, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html">Working with Migration Tasks </a> in the <i>AWS Database Migration Service User Guide.</i> </p>

**Required Parameters**

  - `replicationTaskArn` **:** `String`
  - `startReplicationTaskType` **:** `StartReplicationTaskTypeValue`

-}
startReplicationTask :
    String
    -> StartReplicationTaskTypeValue
    -> (StartReplicationTaskOptions -> StartReplicationTaskOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartReplicationTaskResponse)
startReplicationTask replicationTaskArn startReplicationTaskType setOptions =
    let
        requestInput =
            StartReplicationTaskMessage
                replicationTaskArn
                startReplicationTaskType
                options.cdcStartTime
                options.cdcStartPosition
                options.cdcStopPosition

        options =
            setOptions (StartReplicationTaskOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> startReplicationTaskMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StartReplicationTask"
            (AWS.Core.Decode.ResultDecoder "StartReplicationTaskResponse" startReplicationTaskResponseDecoder)
        )


{-| Options for a startReplicationTask request
-}
type alias StartReplicationTaskOptions =
    { cdcStartTime : Maybe Posix
    , cdcStartPosition : Maybe String
    , cdcStopPosition : Maybe String
    }


{-|

<p> Starts the replication task assessment for unsupported data types in the source database. </p>

**Required Parameters**

  - `replicationTaskArn` **:** `String`

-}
startReplicationTaskAssessment :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartReplicationTaskAssessmentResponse)
startReplicationTaskAssessment replicationTaskArn =
    let
        requestInput =
            StartReplicationTaskAssessmentMessage
                replicationTaskArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> startReplicationTaskAssessmentMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StartReplicationTaskAssessment"
            (AWS.Core.Decode.ResultDecoder "StartReplicationTaskAssessmentResponse" startReplicationTaskAssessmentResponseDecoder)
        )


{-|

<p>Stops the replication task.</p> <p/>

**Required Parameters**

  - `replicationTaskArn` **:** `String`

-}
stopReplicationTask :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopReplicationTaskResponse)
stopReplicationTask replicationTaskArn =
    let
        requestInput =
            StopReplicationTaskMessage
                replicationTaskArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> stopReplicationTaskMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StopReplicationTask"
            (AWS.Core.Decode.ResultDecoder "StopReplicationTaskResponse" stopReplicationTaskResponseDecoder)
        )


{-|

<p>Tests the connection between the replication instance and the endpoint.</p>

**Required Parameters**

  - `replicationInstanceArn` **:** `String`
  - `endpointArn` **:** `String`

-}
testConnection :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TestConnectionResponse)
testConnection replicationInstanceArn endpointArn =
    let
        requestInput =
            TestConnectionMessage
                replicationInstanceArn
                endpointArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> testConnectionMessageEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "TestConnection"
            (AWS.Core.Decode.ResultDecoder "TestConnectionResponse" testConnectionResponseDecoder)
        )


{-|

<p>Describes a quota for an AWS account, for example, the number of replication instances allowed.</p>

-}
type alias AccountQuota =
    { accountQuotaName : Maybe String
    , used : Maybe Int
    , max : Maybe Int
    }


accountQuotaDecoder : JD.Decoder AccountQuota
accountQuotaDecoder =
    JD.succeed AccountQuota
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountQuotaName", "accountQuotaName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Used", "used" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Max", "max" ]
                JD.int
            )


{-| Type of HTTP response from addTagsToResource
-}
type alias AddTagsToResourceResponse =
    {}


addTagsToResourceResponseDecoder : JD.Decoder AddTagsToResourceResponse
addTagsToResourceResponseDecoder =
    JD.succeed AddTagsToResourceResponse


{-| Type of HTTP response from applyPendingMaintenanceAction
-}
type alias ApplyPendingMaintenanceActionResponse =
    { resourcePendingMaintenanceActions : Maybe ResourcePendingMaintenanceActions
    }


applyPendingMaintenanceActionResponseDecoder : JD.Decoder ApplyPendingMaintenanceActionResponse
applyPendingMaintenanceActionResponseDecoder =
    JD.succeed ApplyPendingMaintenanceActionResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourcePendingMaintenanceActions", "resourcePendingMaintenanceActions" ]
                resourcePendingMaintenanceActionsDecoder
            )


{-| One of

  - `AuthMechanismValue_default`
  - `AuthMechanismValue_mongodb_cr`
  - `AuthMechanismValue_scram_sha_1`

-}
type AuthMechanismValue
    = AuthMechanismValue_default
    | AuthMechanismValue_mongodb_cr
    | AuthMechanismValue_scram_sha_1


authMechanismValueDecoder : JD.Decoder AuthMechanismValue
authMechanismValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "default" ->
                        JD.succeed AuthMechanismValue_default

                    "mongodb_cr" ->
                        JD.succeed AuthMechanismValue_mongodb_cr

                    "scram_sha_1" ->
                        JD.succeed AuthMechanismValue_scram_sha_1

                    _ ->
                        JD.fail "bad thing"
            )


authMechanismValueToString : AuthMechanismValue -> String
authMechanismValueToString val =
    case val of
        AuthMechanismValue_default ->
            "default"

        AuthMechanismValue_mongodb_cr ->
            "mongodb_cr"

        AuthMechanismValue_scram_sha_1 ->
            "scram_sha_1"


{-| One of

  - `AuthTypeValue_no`
  - `AuthTypeValue_password`

-}
type AuthTypeValue
    = AuthTypeValue_no
    | AuthTypeValue_password


authTypeValueDecoder : JD.Decoder AuthTypeValue
authTypeValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "no" ->
                        JD.succeed AuthTypeValue_no

                    "password" ->
                        JD.succeed AuthTypeValue_password

                    _ ->
                        JD.fail "bad thing"
            )


authTypeValueToString : AuthTypeValue -> String
authTypeValueToString val =
    case val of
        AuthTypeValue_no ->
            "no"

        AuthTypeValue_password ->
            "password"


{-|

<p/>

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

<p>The SSL certificate that can be used to encrypt connections between the endpoints and the replication instance.</p>

-}
type alias Certificate =
    { certificateIdentifier : Maybe String
    , certificateCreationDate : Maybe Posix
    , certificatePem : Maybe String
    , certificateWallet : Maybe String
    , certificateArn : Maybe String
    , certificateOwner : Maybe String
    , validFromDate : Maybe Posix
    , validToDate : Maybe Posix
    , signingAlgorithm : Maybe String
    , keyLength : Maybe Int
    }


certificateDecoder : JD.Decoder Certificate
certificateDecoder =
    JD.succeed Certificate
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CertificateIdentifier", "certificateIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CertificateCreationDate", "certificateCreationDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CertificatePem", "certificatePem" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CertificateWallet", "certificateWallet" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CertificateArn", "certificateArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CertificateOwner", "certificateOwner" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ValidFromDate", "validFromDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ValidToDate", "validToDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SigningAlgorithm", "signingAlgorithm" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KeyLength", "keyLength" ]
                JD.int
            )


{-| One of

  - `CompressionTypeValue_none`
  - `CompressionTypeValue_gzip`

-}
type CompressionTypeValue
    = CompressionTypeValue_none
    | CompressionTypeValue_gzip


compressionTypeValueDecoder : JD.Decoder CompressionTypeValue
compressionTypeValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "none" ->
                        JD.succeed CompressionTypeValue_none

                    "gzip" ->
                        JD.succeed CompressionTypeValue_gzip

                    _ ->
                        JD.fail "bad thing"
            )


compressionTypeValueToString : CompressionTypeValue -> String
compressionTypeValueToString val =
    case val of
        CompressionTypeValue_none ->
            "none"

        CompressionTypeValue_gzip ->
            "gzip"


{-|

<p/>

-}
type alias Connection =
    { replicationInstanceArn : Maybe String
    , endpointArn : Maybe String
    , status : Maybe String
    , lastFailureMessage : Maybe String
    , endpointIdentifier : Maybe String
    , replicationInstanceIdentifier : Maybe String
    }


connectionDecoder : JD.Decoder Connection
connectionDecoder =
    JD.succeed Connection
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstanceArn", "replicationInstanceArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EndpointArn", "endpointArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastFailureMessage", "lastFailureMessage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EndpointIdentifier", "endpointIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstanceIdentifier", "replicationInstanceIdentifier" ]
                JD.string
            )


{-| Type of HTTP response from createEndpoint
-}
type alias CreateEndpointResponse =
    { endpoint : Maybe Endpoint
    }


createEndpointResponseDecoder : JD.Decoder CreateEndpointResponse
createEndpointResponseDecoder =
    JD.succeed CreateEndpointResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Endpoint", "endpoint" ]
                endpointDecoder
            )


{-| Type of HTTP response from createEventSubscription
-}
type alias CreateEventSubscriptionResponse =
    { eventSubscription : Maybe EventSubscription
    }


createEventSubscriptionResponseDecoder : JD.Decoder CreateEventSubscriptionResponse
createEventSubscriptionResponseDecoder =
    JD.succeed CreateEventSubscriptionResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventSubscription", "eventSubscription" ]
                eventSubscriptionDecoder
            )


{-| Type of HTTP response from createReplicationInstance
-}
type alias CreateReplicationInstanceResponse =
    { replicationInstance : Maybe ReplicationInstance
    }


createReplicationInstanceResponseDecoder : JD.Decoder CreateReplicationInstanceResponse
createReplicationInstanceResponseDecoder =
    JD.succeed CreateReplicationInstanceResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstance", "replicationInstance" ]
                replicationInstanceDecoder
            )


{-| Type of HTTP response from createReplicationSubnetGroup
-}
type alias CreateReplicationSubnetGroupResponse =
    { replicationSubnetGroup : Maybe ReplicationSubnetGroup
    }


createReplicationSubnetGroupResponseDecoder : JD.Decoder CreateReplicationSubnetGroupResponse
createReplicationSubnetGroupResponseDecoder =
    JD.succeed CreateReplicationSubnetGroupResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationSubnetGroup", "replicationSubnetGroup" ]
                replicationSubnetGroupDecoder
            )


{-| Type of HTTP response from createReplicationTask
-}
type alias CreateReplicationTaskResponse =
    { replicationTask : Maybe ReplicationTask
    }


createReplicationTaskResponseDecoder : JD.Decoder CreateReplicationTaskResponse
createReplicationTaskResponseDecoder =
    JD.succeed CreateReplicationTaskResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTask", "replicationTask" ]
                replicationTaskDecoder
            )


{-| One of

  - `DataFormatValue_csv`
  - `DataFormatValue_parquet`

-}
type DataFormatValue
    = DataFormatValue_csv
    | DataFormatValue_parquet


dataFormatValueDecoder : JD.Decoder DataFormatValue
dataFormatValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "csv" ->
                        JD.succeed DataFormatValue_csv

                    "parquet" ->
                        JD.succeed DataFormatValue_parquet

                    _ ->
                        JD.fail "bad thing"
            )


dataFormatValueToString : DataFormatValue -> String
dataFormatValueToString val =
    case val of
        DataFormatValue_csv ->
            "csv"

        DataFormatValue_parquet ->
            "parquet"


{-| Type of HTTP response from deleteCertificate
-}
type alias DeleteCertificateResponse =
    { certificate : Maybe Certificate
    }


deleteCertificateResponseDecoder : JD.Decoder DeleteCertificateResponse
deleteCertificateResponseDecoder =
    JD.succeed DeleteCertificateResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Certificate", "certificate" ]
                certificateDecoder
            )


{-| Type of HTTP response from deleteEndpoint
-}
type alias DeleteEndpointResponse =
    { endpoint : Maybe Endpoint
    }


deleteEndpointResponseDecoder : JD.Decoder DeleteEndpointResponse
deleteEndpointResponseDecoder =
    JD.succeed DeleteEndpointResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Endpoint", "endpoint" ]
                endpointDecoder
            )


{-| Type of HTTP response from deleteEventSubscription
-}
type alias DeleteEventSubscriptionResponse =
    { eventSubscription : Maybe EventSubscription
    }


deleteEventSubscriptionResponseDecoder : JD.Decoder DeleteEventSubscriptionResponse
deleteEventSubscriptionResponseDecoder =
    JD.succeed DeleteEventSubscriptionResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventSubscription", "eventSubscription" ]
                eventSubscriptionDecoder
            )


{-| Type of HTTP response from deleteReplicationInstance
-}
type alias DeleteReplicationInstanceResponse =
    { replicationInstance : Maybe ReplicationInstance
    }


deleteReplicationInstanceResponseDecoder : JD.Decoder DeleteReplicationInstanceResponse
deleteReplicationInstanceResponseDecoder =
    JD.succeed DeleteReplicationInstanceResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstance", "replicationInstance" ]
                replicationInstanceDecoder
            )


{-| Type of HTTP response from deleteReplicationSubnetGroup
-}
type alias DeleteReplicationSubnetGroupResponse =
    {}


deleteReplicationSubnetGroupResponseDecoder : JD.Decoder DeleteReplicationSubnetGroupResponse
deleteReplicationSubnetGroupResponseDecoder =
    JD.succeed DeleteReplicationSubnetGroupResponse


{-| Type of HTTP response from deleteReplicationTask
-}
type alias DeleteReplicationTaskResponse =
    { replicationTask : Maybe ReplicationTask
    }


deleteReplicationTaskResponseDecoder : JD.Decoder DeleteReplicationTaskResponse
deleteReplicationTaskResponseDecoder =
    JD.succeed DeleteReplicationTaskResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTask", "replicationTask" ]
                replicationTaskDecoder
            )


{-| Type of HTTP response from describeAccountAttributes
-}
type alias DescribeAccountAttributesResponse =
    { accountQuotas : Maybe (List AccountQuota)
    , uniqueAccountIdentifier : Maybe String
    }


describeAccountAttributesResponseDecoder : JD.Decoder DescribeAccountAttributesResponse
describeAccountAttributesResponseDecoder =
    JD.succeed DescribeAccountAttributesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountQuotas", "accountQuotas" ]
                (JD.list accountQuotaDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UniqueAccountIdentifier", "uniqueAccountIdentifier" ]
                JD.string
            )


{-| Type of HTTP response from describeCertificates
-}
type alias DescribeCertificatesResponse =
    { marker : Maybe String
    , certificates : Maybe (List Certificate)
    }


describeCertificatesResponseDecoder : JD.Decoder DescribeCertificatesResponse
describeCertificatesResponseDecoder =
    JD.succeed DescribeCertificatesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Certificates", "certificates" ]
                (JD.list certificateDecoder)
            )


{-| Type of HTTP response from describeConnections
-}
type alias DescribeConnectionsResponse =
    { marker : Maybe String
    , connections : Maybe (List Connection)
    }


describeConnectionsResponseDecoder : JD.Decoder DescribeConnectionsResponse
describeConnectionsResponseDecoder =
    JD.succeed DescribeConnectionsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Connections", "connections" ]
                (JD.list connectionDecoder)
            )


{-| Type of HTTP response from describeEndpointTypes
-}
type alias DescribeEndpointTypesResponse =
    { marker : Maybe String
    , supportedEndpointTypes : Maybe (List SupportedEndpointType)
    }


describeEndpointTypesResponseDecoder : JD.Decoder DescribeEndpointTypesResponse
describeEndpointTypesResponseDecoder =
    JD.succeed DescribeEndpointTypesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SupportedEndpointTypes", "supportedEndpointTypes" ]
                (JD.list supportedEndpointTypeDecoder)
            )


{-| Type of HTTP response from describeEndpoints
-}
type alias DescribeEndpointsResponse =
    { marker : Maybe String
    , endpoints : Maybe (List Endpoint)
    }


describeEndpointsResponseDecoder : JD.Decoder DescribeEndpointsResponse
describeEndpointsResponseDecoder =
    JD.succeed DescribeEndpointsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Endpoints", "endpoints" ]
                (JD.list endpointDecoder)
            )


{-| Type of HTTP response from describeEventCategories
-}
type alias DescribeEventCategoriesResponse =
    { eventCategoryGroupList : Maybe (List EventCategoryGroup)
    }


describeEventCategoriesResponseDecoder : JD.Decoder DescribeEventCategoriesResponse
describeEventCategoriesResponseDecoder =
    JD.succeed DescribeEventCategoriesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventCategoryGroupList", "eventCategoryGroupList" ]
                (JD.list eventCategoryGroupDecoder)
            )


{-| Type of HTTP response from describeEventSubscriptions
-}
type alias DescribeEventSubscriptionsResponse =
    { marker : Maybe String
    , eventSubscriptionsList : Maybe (List EventSubscription)
    }


describeEventSubscriptionsResponseDecoder : JD.Decoder DescribeEventSubscriptionsResponse
describeEventSubscriptionsResponseDecoder =
    JD.succeed DescribeEventSubscriptionsResponse
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


{-| Type of HTTP response from describeEvents
-}
type alias DescribeEventsResponse =
    { marker : Maybe String
    , events : Maybe (List Event)
    }


describeEventsResponseDecoder : JD.Decoder DescribeEventsResponse
describeEventsResponseDecoder =
    JD.succeed DescribeEventsResponse
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


{-| Type of HTTP response from describeOrderableReplicationInstances
-}
type alias DescribeOrderableReplicationInstancesResponse =
    { orderableReplicationInstances : Maybe (List OrderableReplicationInstance)
    , marker : Maybe String
    }


describeOrderableReplicationInstancesResponseDecoder : JD.Decoder DescribeOrderableReplicationInstancesResponse
describeOrderableReplicationInstancesResponseDecoder =
    JD.succeed DescribeOrderableReplicationInstancesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OrderableReplicationInstances", "orderableReplicationInstances" ]
                (JD.list orderableReplicationInstanceDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from describePendingMaintenanceActions
-}
type alias DescribePendingMaintenanceActionsResponse =
    { pendingMaintenanceActions : Maybe (List ResourcePendingMaintenanceActions)
    , marker : Maybe String
    }


describePendingMaintenanceActionsResponseDecoder : JD.Decoder DescribePendingMaintenanceActionsResponse
describePendingMaintenanceActionsResponseDecoder =
    JD.succeed DescribePendingMaintenanceActionsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PendingMaintenanceActions", "pendingMaintenanceActions" ]
                (JD.list resourcePendingMaintenanceActionsDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from describeRefreshSchemasStatus
-}
type alias DescribeRefreshSchemasStatusResponse =
    { refreshSchemasStatus : Maybe RefreshSchemasStatus
    }


describeRefreshSchemasStatusResponseDecoder : JD.Decoder DescribeRefreshSchemasStatusResponse
describeRefreshSchemasStatusResponseDecoder =
    JD.succeed DescribeRefreshSchemasStatusResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RefreshSchemasStatus", "refreshSchemasStatus" ]
                refreshSchemasStatusDecoder
            )


{-| Type of HTTP response from describeReplicationInstanceTaskLogs
-}
type alias DescribeReplicationInstanceTaskLogsResponse =
    { replicationInstanceArn : Maybe String
    , replicationInstanceTaskLogs : Maybe (List ReplicationInstanceTaskLog)
    , marker : Maybe String
    }


describeReplicationInstanceTaskLogsResponseDecoder : JD.Decoder DescribeReplicationInstanceTaskLogsResponse
describeReplicationInstanceTaskLogsResponseDecoder =
    JD.succeed DescribeReplicationInstanceTaskLogsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstanceArn", "replicationInstanceArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstanceTaskLogs", "replicationInstanceTaskLogs" ]
                (JD.list replicationInstanceTaskLogDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from describeReplicationInstances
-}
type alias DescribeReplicationInstancesResponse =
    { marker : Maybe String
    , replicationInstances : Maybe (List ReplicationInstance)
    }


describeReplicationInstancesResponseDecoder : JD.Decoder DescribeReplicationInstancesResponse
describeReplicationInstancesResponseDecoder =
    JD.succeed DescribeReplicationInstancesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstances", "replicationInstances" ]
                (JD.list replicationInstanceDecoder)
            )


{-| Type of HTTP response from describeReplicationSubnetGroups
-}
type alias DescribeReplicationSubnetGroupsResponse =
    { marker : Maybe String
    , replicationSubnetGroups : Maybe (List ReplicationSubnetGroup)
    }


describeReplicationSubnetGroupsResponseDecoder : JD.Decoder DescribeReplicationSubnetGroupsResponse
describeReplicationSubnetGroupsResponseDecoder =
    JD.succeed DescribeReplicationSubnetGroupsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationSubnetGroups", "replicationSubnetGroups" ]
                (JD.list replicationSubnetGroupDecoder)
            )


{-| Type of HTTP response from describeReplicationTaskAssessmentResults
-}
type alias DescribeReplicationTaskAssessmentResultsResponse =
    { marker : Maybe String
    , bucketName : Maybe String
    , replicationTaskAssessmentResults : Maybe (List ReplicationTaskAssessmentResult)
    }


describeReplicationTaskAssessmentResultsResponseDecoder : JD.Decoder DescribeReplicationTaskAssessmentResultsResponse
describeReplicationTaskAssessmentResultsResponseDecoder =
    JD.succeed DescribeReplicationTaskAssessmentResultsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BucketName", "bucketName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTaskAssessmentResults", "replicationTaskAssessmentResults" ]
                (JD.list replicationTaskAssessmentResultDecoder)
            )


{-| Type of HTTP response from describeReplicationTasks
-}
type alias DescribeReplicationTasksResponse =
    { marker : Maybe String
    , replicationTasks : Maybe (List ReplicationTask)
    }


describeReplicationTasksResponseDecoder : JD.Decoder DescribeReplicationTasksResponse
describeReplicationTasksResponseDecoder =
    JD.succeed DescribeReplicationTasksResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTasks", "replicationTasks" ]
                (JD.list replicationTaskDecoder)
            )


{-| Type of HTTP response from describeSchemas
-}
type alias DescribeSchemasResponse =
    { marker : Maybe String
    , schemas : Maybe (List String)
    }


describeSchemasResponseDecoder : JD.Decoder DescribeSchemasResponse
describeSchemasResponseDecoder =
    JD.succeed DescribeSchemasResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Schemas", "schemas" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from describeTableStatistics
-}
type alias DescribeTableStatisticsResponse =
    { replicationTaskArn : Maybe String
    , tableStatistics : Maybe (List TableStatistics)
    , marker : Maybe String
    }


describeTableStatisticsResponseDecoder : JD.Decoder DescribeTableStatisticsResponse
describeTableStatisticsResponseDecoder =
    JD.succeed DescribeTableStatisticsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTaskArn", "replicationTaskArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TableStatistics", "tableStatistics" ]
                (JD.list tableStatisticsDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| One of

  - `DmsSslModeValue_none`
  - `DmsSslModeValue_require`
  - `DmsSslModeValue_verify-ca`
  - `DmsSslModeValue_verify-full`

-}
type DmsSslModeValue
    = DmsSslModeValue_none
    | DmsSslModeValue_require
    | DmsSslModeValue_verify_ca
    | DmsSslModeValue_verify_full


dmsSslModeValueDecoder : JD.Decoder DmsSslModeValue
dmsSslModeValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "none" ->
                        JD.succeed DmsSslModeValue_none

                    "require" ->
                        JD.succeed DmsSslModeValue_require

                    "verify_ca" ->
                        JD.succeed DmsSslModeValue_verify_ca

                    "verify_full" ->
                        JD.succeed DmsSslModeValue_verify_full

                    _ ->
                        JD.fail "bad thing"
            )


dmsSslModeValueToString : DmsSslModeValue -> String
dmsSslModeValueToString val =
    case val of
        DmsSslModeValue_none ->
            "none"

        DmsSslModeValue_require ->
            "require"

        DmsSslModeValue_verify_ca ->
            "verify_ca"

        DmsSslModeValue_verify_full ->
            "verify_full"


{-|

<p> The settings in JSON format for the DMS Transfer type source endpoint. </p>

-}
type alias DmsTransferSettings =
    { serviceAccessRoleArn : Maybe String
    , bucketName : Maybe String
    }


dmsTransferSettingsDecoder : JD.Decoder DmsTransferSettings
dmsTransferSettingsDecoder =
    JD.succeed DmsTransferSettings
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceAccessRoleArn", "serviceAccessRoleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BucketName", "bucketName" ]
                JD.string
            )


{-|

<p/>

-}
type alias DynamoDbSettings =
    { serviceAccessRoleArn : String
    }


dynamoDbSettingsDecoder : JD.Decoder DynamoDbSettings
dynamoDbSettingsDecoder =
    JD.succeed DynamoDbSettings
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServiceAccessRoleArn", "serviceAccessRoleArn" ]
                JD.string
            )


{-|

<p/>

-}
type alias ElasticsearchSettings =
    { serviceAccessRoleArn : String
    , endpointUri : String
    , fullLoadErrorPercentage : Maybe Int
    , errorRetryDuration : Maybe Int
    }


elasticsearchSettingsDecoder : JD.Decoder ElasticsearchSettings
elasticsearchSettingsDecoder =
    JD.succeed ElasticsearchSettings
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServiceAccessRoleArn", "serviceAccessRoleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "EndpointUri", "endpointUri" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FullLoadErrorPercentage", "fullLoadErrorPercentage" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorRetryDuration", "errorRetryDuration" ]
                JD.int
            )


{-| One of

  - `EncodingTypeValue_plain`
  - `EncodingTypeValue_plain-dictionary`
  - `EncodingTypeValue_rle-dictionary`

-}
type EncodingTypeValue
    = EncodingTypeValue_plain
    | EncodingTypeValue_plain_dictionary
    | EncodingTypeValue_rle_dictionary


encodingTypeValueDecoder : JD.Decoder EncodingTypeValue
encodingTypeValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "plain" ->
                        JD.succeed EncodingTypeValue_plain

                    "plain_dictionary" ->
                        JD.succeed EncodingTypeValue_plain_dictionary

                    "rle_dictionary" ->
                        JD.succeed EncodingTypeValue_rle_dictionary

                    _ ->
                        JD.fail "bad thing"
            )


encodingTypeValueToString : EncodingTypeValue -> String
encodingTypeValueToString val =
    case val of
        EncodingTypeValue_plain ->
            "plain"

        EncodingTypeValue_plain_dictionary ->
            "plain_dictionary"

        EncodingTypeValue_rle_dictionary ->
            "rle_dictionary"


{-| One of

  - `EncryptionModeValue_sse-s3`
  - `EncryptionModeValue_sse-kms`

-}
type EncryptionModeValue
    = EncryptionModeValue_sse_s3
    | EncryptionModeValue_sse_kms


encryptionModeValueDecoder : JD.Decoder EncryptionModeValue
encryptionModeValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "sse_s3" ->
                        JD.succeed EncryptionModeValue_sse_s3

                    "sse_kms" ->
                        JD.succeed EncryptionModeValue_sse_kms

                    _ ->
                        JD.fail "bad thing"
            )


encryptionModeValueToString : EncryptionModeValue -> String
encryptionModeValueToString val =
    case val of
        EncryptionModeValue_sse_s3 ->
            "sse_s3"

        EncryptionModeValue_sse_kms ->
            "sse_kms"


{-|

<p/>

-}
type alias Endpoint =
    { endpointIdentifier : Maybe String
    , endpointType : Maybe ReplicationEndpointTypeValue
    , engineName : Maybe String
    , engineDisplayName : Maybe String
    , username : Maybe String
    , serverName : Maybe String
    , port_ : Maybe Int
    , databaseName : Maybe String
    , extraConnectionAttributes : Maybe String
    , status : Maybe String
    , kmsKeyId : Maybe String
    , endpointArn : Maybe String
    , certificateArn : Maybe String
    , sslMode : Maybe DmsSslModeValue
    , serviceAccessRoleArn : Maybe String
    , externalTableDefinition : Maybe String
    , externalId : Maybe String
    , dynamoDbSettings : Maybe DynamoDbSettings
    , s3Settings : Maybe S3Settings
    , dmsTransferSettings : Maybe DmsTransferSettings
    , mongoDbSettings : Maybe MongoDbSettings
    , kinesisSettings : Maybe KinesisSettings
    , elasticsearchSettings : Maybe ElasticsearchSettings
    , redshiftSettings : Maybe RedshiftSettings
    }


endpointDecoder : JD.Decoder Endpoint
endpointDecoder =
    JD.succeed Endpoint
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EndpointIdentifier", "endpointIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EndpointType", "endpointType" ]
                replicationEndpointTypeValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineName", "engineName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineDisplayName", "engineDisplayName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Username", "username" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServerName", "serverName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Port", "port" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DatabaseName", "databaseName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExtraConnectionAttributes", "extraConnectionAttributes" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KmsKeyId", "kmsKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EndpointArn", "endpointArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CertificateArn", "certificateArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SslMode", "sslMode" ]
                dmsSslModeValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceAccessRoleArn", "serviceAccessRoleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExternalTableDefinition", "externalTableDefinition" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExternalId", "externalId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DynamoDbSettings", "dynamoDbSettings" ]
                dynamoDbSettingsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "S3Settings", "s3Settings" ]
                s3SettingsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DmsTransferSettings", "dmsTransferSettings" ]
                dmsTransferSettingsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MongoDbSettings", "mongoDbSettings" ]
                mongoDbSettingsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KinesisSettings", "kinesisSettings" ]
                kinesisSettingsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ElasticsearchSettings", "elasticsearchSettings" ]
                elasticsearchSettingsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RedshiftSettings", "redshiftSettings" ]
                redshiftSettingsDecoder
            )


{-|

<p/>

-}
type alias Event =
    { sourceIdentifier : Maybe String
    , sourceType : Maybe SourceType
    , message : Maybe String
    , eventCategories : Maybe (List String)
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
                [ "EventCategories", "eventCategories" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Date", "date" ]
                JDX.datetime
            )


{-|

<p/>

-}
type alias EventCategoryGroup =
    { sourceType : Maybe String
    , eventCategories : Maybe (List String)
    }


eventCategoryGroupDecoder : JD.Decoder EventCategoryGroup
eventCategoryGroupDecoder =
    JD.succeed EventCategoryGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceType", "sourceType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventCategories", "eventCategories" ]
                (JD.list JD.string)
            )


{-|

<p/>

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
                JD.string
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
                [ "Enabled", "enabled" ]
                JD.bool
            )


{-|

<p/>

-}
type alias Filter =
    { name : String
    , values : List String
    }


filterDecoder : JD.Decoder Filter
filterDecoder =
    JD.succeed Filter
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Values", "values" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from importCertificate
-}
type alias ImportCertificateResponse =
    { certificate : Maybe Certificate
    }


importCertificateResponseDecoder : JD.Decoder ImportCertificateResponse
importCertificateResponseDecoder =
    JD.succeed ImportCertificateResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Certificate", "certificate" ]
                certificateDecoder
            )


{-|

<p/>

-}
type alias KinesisSettings =
    { streamArn : Maybe String
    , messageFormat : Maybe MessageFormatValue
    , serviceAccessRoleArn : Maybe String
    }


kinesisSettingsDecoder : JD.Decoder KinesisSettings
kinesisSettingsDecoder =
    JD.succeed KinesisSettings
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StreamArn", "streamArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MessageFormat", "messageFormat" ]
                messageFormatValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceAccessRoleArn", "serviceAccessRoleArn" ]
                JD.string
            )


{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { tagList : Maybe (List Tag)
    }


listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JD.succeed ListTagsForResourceResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TagList", "tagList" ]
                (JD.list tagDecoder)
            )


{-| One of

  - `MessageFormatValue_json`

-}
type MessageFormatValue
    = MessageFormatValue_json


messageFormatValueDecoder : JD.Decoder MessageFormatValue
messageFormatValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "json" ->
                        JD.succeed MessageFormatValue_json

                    _ ->
                        JD.fail "bad thing"
            )


messageFormatValueToString : MessageFormatValue -> String
messageFormatValueToString val =
    case val of
        MessageFormatValue_json ->
            "json"


{-| One of

  - `MigrationTypeValue_full-load`
  - `MigrationTypeValue_cdc`
  - `MigrationTypeValue_full-load-and-cdc`

-}
type MigrationTypeValue
    = MigrationTypeValue_full_load
    | MigrationTypeValue_cdc
    | MigrationTypeValue_full_load_and_cdc


migrationTypeValueDecoder : JD.Decoder MigrationTypeValue
migrationTypeValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "full_load" ->
                        JD.succeed MigrationTypeValue_full_load

                    "cdc" ->
                        JD.succeed MigrationTypeValue_cdc

                    "full_load_and_cdc" ->
                        JD.succeed MigrationTypeValue_full_load_and_cdc

                    _ ->
                        JD.fail "bad thing"
            )


migrationTypeValueToString : MigrationTypeValue -> String
migrationTypeValueToString val =
    case val of
        MigrationTypeValue_full_load ->
            "full_load"

        MigrationTypeValue_cdc ->
            "cdc"

        MigrationTypeValue_full_load_and_cdc ->
            "full_load_and_cdc"


{-| Type of HTTP response from modifyEndpoint
-}
type alias ModifyEndpointResponse =
    { endpoint : Maybe Endpoint
    }


modifyEndpointResponseDecoder : JD.Decoder ModifyEndpointResponse
modifyEndpointResponseDecoder =
    JD.succeed ModifyEndpointResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Endpoint", "endpoint" ]
                endpointDecoder
            )


{-| Type of HTTP response from modifyEventSubscription
-}
type alias ModifyEventSubscriptionResponse =
    { eventSubscription : Maybe EventSubscription
    }


modifyEventSubscriptionResponseDecoder : JD.Decoder ModifyEventSubscriptionResponse
modifyEventSubscriptionResponseDecoder =
    JD.succeed ModifyEventSubscriptionResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventSubscription", "eventSubscription" ]
                eventSubscriptionDecoder
            )


{-| Type of HTTP response from modifyReplicationInstance
-}
type alias ModifyReplicationInstanceResponse =
    { replicationInstance : Maybe ReplicationInstance
    }


modifyReplicationInstanceResponseDecoder : JD.Decoder ModifyReplicationInstanceResponse
modifyReplicationInstanceResponseDecoder =
    JD.succeed ModifyReplicationInstanceResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstance", "replicationInstance" ]
                replicationInstanceDecoder
            )


{-| Type of HTTP response from modifyReplicationSubnetGroup
-}
type alias ModifyReplicationSubnetGroupResponse =
    { replicationSubnetGroup : Maybe ReplicationSubnetGroup
    }


modifyReplicationSubnetGroupResponseDecoder : JD.Decoder ModifyReplicationSubnetGroupResponse
modifyReplicationSubnetGroupResponseDecoder =
    JD.succeed ModifyReplicationSubnetGroupResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationSubnetGroup", "replicationSubnetGroup" ]
                replicationSubnetGroupDecoder
            )


{-| Type of HTTP response from modifyReplicationTask
-}
type alias ModifyReplicationTaskResponse =
    { replicationTask : Maybe ReplicationTask
    }


modifyReplicationTaskResponseDecoder : JD.Decoder ModifyReplicationTaskResponse
modifyReplicationTaskResponseDecoder =
    JD.succeed ModifyReplicationTaskResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTask", "replicationTask" ]
                replicationTaskDecoder
            )


{-|

<p/>

-}
type alias MongoDbSettings =
    { username : Maybe String
    , password : Maybe String
    , serverName : Maybe String
    , port_ : Maybe Int
    , databaseName : Maybe String
    , authType : Maybe AuthTypeValue
    , authMechanism : Maybe AuthMechanismValue
    , nestingLevel : Maybe NestingLevelValue
    , extractDocId : Maybe String
    , docsToInvestigate : Maybe String
    , authSource : Maybe String
    , kmsKeyId : Maybe String
    }


mongoDbSettingsDecoder : JD.Decoder MongoDbSettings
mongoDbSettingsDecoder =
    JD.succeed MongoDbSettings
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Username", "username" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Password", "password" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServerName", "serverName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Port", "port" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DatabaseName", "databaseName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AuthType", "authType" ]
                authTypeValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AuthMechanism", "authMechanism" ]
                authMechanismValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NestingLevel", "nestingLevel" ]
                nestingLevelValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExtractDocId", "extractDocId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DocsToInvestigate", "docsToInvestigate" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AuthSource", "authSource" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KmsKeyId", "kmsKeyId" ]
                JD.string
            )


{-| One of

  - `NestingLevelValue_none`
  - `NestingLevelValue_one`

-}
type NestingLevelValue
    = NestingLevelValue_none
    | NestingLevelValue_one


nestingLevelValueDecoder : JD.Decoder NestingLevelValue
nestingLevelValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "none" ->
                        JD.succeed NestingLevelValue_none

                    "one" ->
                        JD.succeed NestingLevelValue_one

                    _ ->
                        JD.fail "bad thing"
            )


nestingLevelValueToString : NestingLevelValue -> String
nestingLevelValueToString val =
    case val of
        NestingLevelValue_none ->
            "none"

        NestingLevelValue_one ->
            "one"


{-|

<p/>

-}
type alias OrderableReplicationInstance =
    { engineVersion : Maybe String
    , replicationInstanceClass : Maybe String
    , storageType : Maybe String
    , minAllocatedStorage : Maybe Int
    , maxAllocatedStorage : Maybe Int
    , defaultAllocatedStorage : Maybe Int
    , includedAllocatedStorage : Maybe Int
    , availabilityZones : Maybe (List String)
    , releaseStatus : Maybe ReleaseStatusValues
    }


orderableReplicationInstanceDecoder : JD.Decoder OrderableReplicationInstance
orderableReplicationInstanceDecoder =
    JD.succeed OrderableReplicationInstance
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineVersion", "engineVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstanceClass", "replicationInstanceClass" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StorageType", "storageType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MinAllocatedStorage", "minAllocatedStorage" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaxAllocatedStorage", "maxAllocatedStorage" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DefaultAllocatedStorage", "defaultAllocatedStorage" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IncludedAllocatedStorage", "includedAllocatedStorage" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AvailabilityZones", "availabilityZones" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReleaseStatus", "releaseStatus" ]
                releaseStatusValuesDecoder
            )


{-| One of

  - `ParquetVersionValue_parquet-1-0`
  - `ParquetVersionValue_parquet-2-0`

-}
type ParquetVersionValue
    = ParquetVersionValue_parquet_1_0
    | ParquetVersionValue_parquet_2_0


parquetVersionValueDecoder : JD.Decoder ParquetVersionValue
parquetVersionValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "parquet_1_0" ->
                        JD.succeed ParquetVersionValue_parquet_1_0

                    "parquet_2_0" ->
                        JD.succeed ParquetVersionValue_parquet_2_0

                    _ ->
                        JD.fail "bad thing"
            )


parquetVersionValueToString : ParquetVersionValue -> String
parquetVersionValueToString val =
    case val of
        ParquetVersionValue_parquet_1_0 ->
            "parquet_1_0"

        ParquetVersionValue_parquet_2_0 ->
            "parquet_2_0"


{-|

<p/>

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
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Action", "action" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoAppliedAfterDate", "autoAppliedAfterDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ForcedApplyDate", "forcedApplyDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OptInStatus", "optInStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CurrentApplyDate", "currentApplyDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )


{-| Type of HTTP response from rebootReplicationInstance
-}
type alias RebootReplicationInstanceResponse =
    { replicationInstance : Maybe ReplicationInstance
    }


rebootReplicationInstanceResponseDecoder : JD.Decoder RebootReplicationInstanceResponse
rebootReplicationInstanceResponseDecoder =
    JD.succeed RebootReplicationInstanceResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstance", "replicationInstance" ]
                replicationInstanceDecoder
            )


{-|

<p/>

-}
type alias RedshiftSettings =
    { acceptAnyDate : Maybe Bool
    , afterConnectScript : Maybe String
    , bucketFolder : Maybe String
    , bucketName : Maybe String
    , connectionTimeout : Maybe Int
    , databaseName : Maybe String
    , dateFormat : Maybe String
    , emptyAsNull : Maybe Bool
    , encryptionMode : Maybe EncryptionModeValue
    , fileTransferUploadStreams : Maybe Int
    , loadTimeout : Maybe Int
    , maxFileSize : Maybe Int
    , password : Maybe String
    , port_ : Maybe Int
    , removeQuotes : Maybe Bool
    , replaceInvalidChars : Maybe String
    , replaceChars : Maybe String
    , serverName : Maybe String
    , serviceAccessRoleArn : Maybe String
    , serverSideEncryptionKmsKeyId : Maybe String
    , timeFormat : Maybe String
    , trimBlanks : Maybe Bool
    , truncateColumns : Maybe Bool
    , username : Maybe String
    , writeBufferSize : Maybe Int
    }


redshiftSettingsDecoder : JD.Decoder RedshiftSettings
redshiftSettingsDecoder =
    JD.succeed RedshiftSettings
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AcceptAnyDate", "acceptAnyDate" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AfterConnectScript", "afterConnectScript" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BucketFolder", "bucketFolder" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BucketName", "bucketName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConnectionTimeout", "connectionTimeout" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DatabaseName", "databaseName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DateFormat", "dateFormat" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EmptyAsNull", "emptyAsNull" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EncryptionMode", "encryptionMode" ]
                encryptionModeValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileTransferUploadStreams", "fileTransferUploadStreams" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LoadTimeout", "loadTimeout" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaxFileSize", "maxFileSize" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Password", "password" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Port", "port" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RemoveQuotes", "removeQuotes" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplaceInvalidChars", "replaceInvalidChars" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplaceChars", "replaceChars" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServerName", "serverName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceAccessRoleArn", "serviceAccessRoleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServerSideEncryptionKmsKeyId", "serverSideEncryptionKmsKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TimeFormat", "timeFormat" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrimBlanks", "trimBlanks" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TruncateColumns", "truncateColumns" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Username", "username" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "WriteBufferSize", "writeBufferSize" ]
                JD.int
            )


{-| Type of HTTP response from refreshSchemas
-}
type alias RefreshSchemasResponse =
    { refreshSchemasStatus : Maybe RefreshSchemasStatus
    }


refreshSchemasResponseDecoder : JD.Decoder RefreshSchemasResponse
refreshSchemasResponseDecoder =
    JD.succeed RefreshSchemasResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RefreshSchemasStatus", "refreshSchemasStatus" ]
                refreshSchemasStatusDecoder
            )


{-|

<p/>

-}
type alias RefreshSchemasStatus =
    { endpointArn : Maybe String
    , replicationInstanceArn : Maybe String
    , status : Maybe RefreshSchemasStatusTypeValue
    , lastRefreshDate : Maybe Posix
    , lastFailureMessage : Maybe String
    }


refreshSchemasStatusDecoder : JD.Decoder RefreshSchemasStatus
refreshSchemasStatusDecoder =
    JD.succeed RefreshSchemasStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EndpointArn", "endpointArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstanceArn", "replicationInstanceArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                refreshSchemasStatusTypeValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastRefreshDate", "lastRefreshDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastFailureMessage", "lastFailureMessage" ]
                JD.string
            )


{-| One of

  - `RefreshSchemasStatusTypeValue_successful`
  - `RefreshSchemasStatusTypeValue_failed`
  - `RefreshSchemasStatusTypeValue_refreshing`

-}
type RefreshSchemasStatusTypeValue
    = RefreshSchemasStatusTypeValue_successful
    | RefreshSchemasStatusTypeValue_failed
    | RefreshSchemasStatusTypeValue_refreshing


refreshSchemasStatusTypeValueDecoder : JD.Decoder RefreshSchemasStatusTypeValue
refreshSchemasStatusTypeValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "successful" ->
                        JD.succeed RefreshSchemasStatusTypeValue_successful

                    "failed" ->
                        JD.succeed RefreshSchemasStatusTypeValue_failed

                    "refreshing" ->
                        JD.succeed RefreshSchemasStatusTypeValue_refreshing

                    _ ->
                        JD.fail "bad thing"
            )


refreshSchemasStatusTypeValueToString : RefreshSchemasStatusTypeValue -> String
refreshSchemasStatusTypeValueToString val =
    case val of
        RefreshSchemasStatusTypeValue_successful ->
            "successful"

        RefreshSchemasStatusTypeValue_failed ->
            "failed"

        RefreshSchemasStatusTypeValue_refreshing ->
            "refreshing"


{-| One of

  - `ReleaseStatusValues_beta`

-}
type ReleaseStatusValues
    = ReleaseStatusValues_beta


releaseStatusValuesDecoder : JD.Decoder ReleaseStatusValues
releaseStatusValuesDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "beta" ->
                        JD.succeed ReleaseStatusValues_beta

                    _ ->
                        JD.fail "bad thing"
            )


releaseStatusValuesToString : ReleaseStatusValues -> String
releaseStatusValuesToString val =
    case val of
        ReleaseStatusValues_beta ->
            "beta"


{-| One of

  - `ReloadOptionValue_data-reload`
  - `ReloadOptionValue_validate-only`

-}
type ReloadOptionValue
    = ReloadOptionValue_data_reload
    | ReloadOptionValue_validate_only


reloadOptionValueDecoder : JD.Decoder ReloadOptionValue
reloadOptionValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "data_reload" ->
                        JD.succeed ReloadOptionValue_data_reload

                    "validate_only" ->
                        JD.succeed ReloadOptionValue_validate_only

                    _ ->
                        JD.fail "bad thing"
            )


reloadOptionValueToString : ReloadOptionValue -> String
reloadOptionValueToString val =
    case val of
        ReloadOptionValue_data_reload ->
            "data_reload"

        ReloadOptionValue_validate_only ->
            "validate_only"


{-| Type of HTTP response from reloadTables
-}
type alias ReloadTablesResponse =
    { replicationTaskArn : Maybe String
    }


reloadTablesResponseDecoder : JD.Decoder ReloadTablesResponse
reloadTablesResponseDecoder =
    JD.succeed ReloadTablesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTaskArn", "replicationTaskArn" ]
                JD.string
            )


{-| Type of HTTP response from removeTagsFromResource
-}
type alias RemoveTagsFromResourceResponse =
    {}


removeTagsFromResourceResponseDecoder : JD.Decoder RemoveTagsFromResourceResponse
removeTagsFromResourceResponseDecoder =
    JD.succeed RemoveTagsFromResourceResponse


{-| One of

  - `ReplicationEndpointTypeValue_source`
  - `ReplicationEndpointTypeValue_target`

-}
type ReplicationEndpointTypeValue
    = ReplicationEndpointTypeValue_source
    | ReplicationEndpointTypeValue_target


replicationEndpointTypeValueDecoder : JD.Decoder ReplicationEndpointTypeValue
replicationEndpointTypeValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "source" ->
                        JD.succeed ReplicationEndpointTypeValue_source

                    "target" ->
                        JD.succeed ReplicationEndpointTypeValue_target

                    _ ->
                        JD.fail "bad thing"
            )


replicationEndpointTypeValueToString : ReplicationEndpointTypeValue -> String
replicationEndpointTypeValueToString val =
    case val of
        ReplicationEndpointTypeValue_source ->
            "source"

        ReplicationEndpointTypeValue_target ->
            "target"


{-|

<p/>

-}
type alias ReplicationInstance =
    { replicationInstanceIdentifier : Maybe String
    , replicationInstanceClass : Maybe String
    , replicationInstanceStatus : Maybe String
    , allocatedStorage : Maybe Int
    , instanceCreateTime : Maybe Posix
    , vpcSecurityGroups : Maybe (List VpcSecurityGroupMembership)
    , availabilityZone : Maybe String
    , replicationSubnetGroup : Maybe ReplicationSubnetGroup
    , preferredMaintenanceWindow : Maybe String
    , pendingModifiedValues : Maybe ReplicationPendingModifiedValues
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , kmsKeyId : Maybe String
    , replicationInstanceArn : Maybe String
    , replicationInstancePublicIpAddress : Maybe String
    , replicationInstancePrivateIpAddress : Maybe String
    , replicationInstancePublicIpAddresses : Maybe (List String)
    , replicationInstancePrivateIpAddresses : Maybe (List String)
    , publiclyAccessible : Maybe Bool
    , secondaryAvailabilityZone : Maybe String
    , freeUntil : Maybe Posix
    , dnsNameServers : Maybe String
    }


replicationInstanceDecoder : JD.Decoder ReplicationInstance
replicationInstanceDecoder =
    JD.succeed ReplicationInstance
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstanceIdentifier", "replicationInstanceIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstanceClass", "replicationInstanceClass" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstanceStatus", "replicationInstanceStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AllocatedStorage", "allocatedStorage" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InstanceCreateTime", "instanceCreateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcSecurityGroups", "vpcSecurityGroups" ]
                (JD.list vpcSecurityGroupMembershipDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AvailabilityZone", "availabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationSubnetGroup", "replicationSubnetGroup" ]
                replicationSubnetGroupDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreferredMaintenanceWindow", "preferredMaintenanceWindow" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PendingModifiedValues", "pendingModifiedValues" ]
                replicationPendingModifiedValuesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MultiAZ", "multiAZ" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineVersion", "engineVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoMinorVersionUpgrade", "autoMinorVersionUpgrade" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KmsKeyId", "kmsKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstanceArn", "replicationInstanceArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstancePublicIpAddress", "replicationInstancePublicIpAddress" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstancePrivateIpAddress", "replicationInstancePrivateIpAddress" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstancePublicIpAddresses", "replicationInstancePublicIpAddresses" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstancePrivateIpAddresses", "replicationInstancePrivateIpAddresses" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PubliclyAccessible", "publiclyAccessible" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SecondaryAvailabilityZone", "secondaryAvailabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FreeUntil", "freeUntil" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DnsNameServers", "dnsNameServers" ]
                JD.string
            )


{-|

<p>Contains metadata for a replication instance task log.</p>

-}
type alias ReplicationInstanceTaskLog =
    { replicationTaskName : Maybe String
    , replicationTaskArn : Maybe String
    , replicationInstanceTaskLogSize : Maybe Int
    }


replicationInstanceTaskLogDecoder : JD.Decoder ReplicationInstanceTaskLog
replicationInstanceTaskLogDecoder =
    JD.succeed ReplicationInstanceTaskLog
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTaskName", "replicationTaskName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTaskArn", "replicationTaskArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstanceTaskLogSize", "replicationInstanceTaskLogSize" ]
                JD.int
            )


{-|

<p/>

-}
type alias ReplicationPendingModifiedValues =
    { replicationInstanceClass : Maybe String
    , allocatedStorage : Maybe Int
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    }


replicationPendingModifiedValuesDecoder : JD.Decoder ReplicationPendingModifiedValues
replicationPendingModifiedValuesDecoder =
    JD.succeed ReplicationPendingModifiedValues
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstanceClass", "replicationInstanceClass" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AllocatedStorage", "allocatedStorage" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MultiAZ", "multiAZ" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineVersion", "engineVersion" ]
                JD.string
            )


{-|

<p/>

-}
type alias ReplicationSubnetGroup =
    { replicationSubnetGroupIdentifier : Maybe String
    , replicationSubnetGroupDescription : Maybe String
    , vpcId : Maybe String
    , subnetGroupStatus : Maybe String
    , subnets : Maybe (List Subnet)
    }


replicationSubnetGroupDecoder : JD.Decoder ReplicationSubnetGroup
replicationSubnetGroupDecoder =
    JD.succeed ReplicationSubnetGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationSubnetGroupIdentifier", "replicationSubnetGroupIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationSubnetGroupDescription", "replicationSubnetGroupDescription" ]
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


{-|

<p/>

-}
type alias ReplicationTask =
    { replicationTaskIdentifier : Maybe String
    , sourceEndpointArn : Maybe String
    , targetEndpointArn : Maybe String
    , replicationInstanceArn : Maybe String
    , migrationType : Maybe MigrationTypeValue
    , tableMappings : Maybe String
    , replicationTaskSettings : Maybe String
    , status : Maybe String
    , lastFailureMessage : Maybe String
    , stopReason : Maybe String
    , replicationTaskCreationDate : Maybe Posix
    , replicationTaskStartDate : Maybe Posix
    , cdcStartPosition : Maybe String
    , cdcStopPosition : Maybe String
    , recoveryCheckpoint : Maybe String
    , replicationTaskArn : Maybe String
    , replicationTaskStats : Maybe ReplicationTaskStats
    }


replicationTaskDecoder : JD.Decoder ReplicationTask
replicationTaskDecoder =
    JD.succeed ReplicationTask
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTaskIdentifier", "replicationTaskIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceEndpointArn", "sourceEndpointArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetEndpointArn", "targetEndpointArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationInstanceArn", "replicationInstanceArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MigrationType", "migrationType" ]
                migrationTypeValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TableMappings", "tableMappings" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTaskSettings", "replicationTaskSettings" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastFailureMessage", "lastFailureMessage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StopReason", "stopReason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTaskCreationDate", "replicationTaskCreationDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTaskStartDate", "replicationTaskStartDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CdcStartPosition", "cdcStartPosition" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CdcStopPosition", "cdcStopPosition" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RecoveryCheckpoint", "recoveryCheckpoint" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTaskArn", "replicationTaskArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTaskStats", "replicationTaskStats" ]
                replicationTaskStatsDecoder
            )


{-|

<p> The task assessment report in JSON format. </p>

-}
type alias ReplicationTaskAssessmentResult =
    { replicationTaskIdentifier : Maybe String
    , replicationTaskArn : Maybe String
    , replicationTaskLastAssessmentDate : Maybe Posix
    , assessmentStatus : Maybe String
    , assessmentResultsFile : Maybe String
    , assessmentResults : Maybe String
    , s3ObjectUrl : Maybe String
    }


replicationTaskAssessmentResultDecoder : JD.Decoder ReplicationTaskAssessmentResult
replicationTaskAssessmentResultDecoder =
    JD.succeed ReplicationTaskAssessmentResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTaskIdentifier", "replicationTaskIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTaskArn", "replicationTaskArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTaskLastAssessmentDate", "replicationTaskLastAssessmentDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AssessmentStatus", "assessmentStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AssessmentResultsFile", "assessmentResultsFile" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AssessmentResults", "assessmentResults" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "S3ObjectUrl", "s3ObjectUrl" ]
                JD.string
            )


{-|

<p/>

-}
type alias ReplicationTaskStats =
    { fullLoadProgressPercent : Maybe Int
    , elapsedTimeMillis : Maybe Int
    , tablesLoaded : Maybe Int
    , tablesLoading : Maybe Int
    , tablesQueued : Maybe Int
    , tablesErrored : Maybe Int
    }


replicationTaskStatsDecoder : JD.Decoder ReplicationTaskStats
replicationTaskStatsDecoder =
    JD.succeed ReplicationTaskStats
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FullLoadProgressPercent", "fullLoadProgressPercent" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ElapsedTimeMillis", "elapsedTimeMillis" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TablesLoaded", "tablesLoaded" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TablesLoading", "tablesLoading" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TablesQueued", "tablesQueued" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TablesErrored", "tablesErrored" ]
                JD.int
            )


{-|

<p/>

-}
type alias ResourcePendingMaintenanceActions =
    { resourceIdentifier : Maybe String
    , pendingMaintenanceActionDetails : Maybe (List PendingMaintenanceAction)
    }


resourcePendingMaintenanceActionsDecoder : JD.Decoder ResourcePendingMaintenanceActions
resourcePendingMaintenanceActionsDecoder =
    JD.succeed ResourcePendingMaintenanceActions
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceIdentifier", "resourceIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PendingMaintenanceActionDetails", "pendingMaintenanceActionDetails" ]
                (JD.list pendingMaintenanceActionDecoder)
            )


{-|

<p>Settings for exporting data to Amazon S3. </p>

-}
type alias S3Settings =
    { serviceAccessRoleArn : Maybe String
    , externalTableDefinition : Maybe String
    , csvRowDelimiter : Maybe String
    , csvDelimiter : Maybe String
    , bucketFolder : Maybe String
    , bucketName : Maybe String
    , compressionType : Maybe CompressionTypeValue
    , encryptionMode : Maybe EncryptionModeValue
    , serverSideEncryptionKmsKeyId : Maybe String
    , dataFormat : Maybe DataFormatValue
    , encodingType : Maybe EncodingTypeValue
    , dictPageSizeLimit : Maybe Int
    , rowGroupLength : Maybe Int
    , dataPageSize : Maybe Int
    , parquetVersion : Maybe ParquetVersionValue
    , enableStatistics : Maybe Bool
    , includeOpForFullLoad : Maybe Bool
    , cdcInsertsOnly : Maybe Bool
    , timestampColumnName : Maybe String
    }


s3SettingsDecoder : JD.Decoder S3Settings
s3SettingsDecoder =
    JD.succeed S3Settings
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceAccessRoleArn", "serviceAccessRoleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExternalTableDefinition", "externalTableDefinition" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CsvRowDelimiter", "csvRowDelimiter" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CsvDelimiter", "csvDelimiter" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BucketFolder", "bucketFolder" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BucketName", "bucketName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CompressionType", "compressionType" ]
                compressionTypeValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EncryptionMode", "encryptionMode" ]
                encryptionModeValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServerSideEncryptionKmsKeyId", "serverSideEncryptionKmsKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DataFormat", "dataFormat" ]
                dataFormatValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EncodingType", "encodingType" ]
                encodingTypeValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DictPageSizeLimit", "dictPageSizeLimit" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RowGroupLength", "rowGroupLength" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DataPageSize", "dataPageSize" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParquetVersion", "parquetVersion" ]
                parquetVersionValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EnableStatistics", "enableStatistics" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IncludeOpForFullLoad", "includeOpForFullLoad" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CdcInsertsOnly", "cdcInsertsOnly" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TimestampColumnName", "timestampColumnName" ]
                JD.string
            )


{-| One of

  - `SourceType_replication-instance`

-}
type SourceType
    = SourceType_replication_instance


sourceTypeDecoder : JD.Decoder SourceType
sourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "replication_instance" ->
                        JD.succeed SourceType_replication_instance

                    _ ->
                        JD.fail "bad thing"
            )


sourceTypeToString : SourceType -> String
sourceTypeToString val =
    case val of
        SourceType_replication_instance ->
            "replication_instance"


{-| Type of HTTP response from startReplicationTaskAssessment
-}
type alias StartReplicationTaskAssessmentResponse =
    { replicationTask : Maybe ReplicationTask
    }


startReplicationTaskAssessmentResponseDecoder : JD.Decoder StartReplicationTaskAssessmentResponse
startReplicationTaskAssessmentResponseDecoder =
    JD.succeed StartReplicationTaskAssessmentResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTask", "replicationTask" ]
                replicationTaskDecoder
            )


{-| Type of HTTP response from startReplicationTask
-}
type alias StartReplicationTaskResponse =
    { replicationTask : Maybe ReplicationTask
    }


startReplicationTaskResponseDecoder : JD.Decoder StartReplicationTaskResponse
startReplicationTaskResponseDecoder =
    JD.succeed StartReplicationTaskResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTask", "replicationTask" ]
                replicationTaskDecoder
            )


{-| One of

  - `StartReplicationTaskTypeValue_start-replication`
  - `StartReplicationTaskTypeValue_resume-processing`
  - `StartReplicationTaskTypeValue_reload-target`

-}
type StartReplicationTaskTypeValue
    = StartReplicationTaskTypeValue_start_replication
    | StartReplicationTaskTypeValue_resume_processing
    | StartReplicationTaskTypeValue_reload_target


startReplicationTaskTypeValueDecoder : JD.Decoder StartReplicationTaskTypeValue
startReplicationTaskTypeValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "start_replication" ->
                        JD.succeed StartReplicationTaskTypeValue_start_replication

                    "resume_processing" ->
                        JD.succeed StartReplicationTaskTypeValue_resume_processing

                    "reload_target" ->
                        JD.succeed StartReplicationTaskTypeValue_reload_target

                    _ ->
                        JD.fail "bad thing"
            )


startReplicationTaskTypeValueToString : StartReplicationTaskTypeValue -> String
startReplicationTaskTypeValueToString val =
    case val of
        StartReplicationTaskTypeValue_start_replication ->
            "start_replication"

        StartReplicationTaskTypeValue_resume_processing ->
            "resume_processing"

        StartReplicationTaskTypeValue_reload_target ->
            "reload_target"


{-| Type of HTTP response from stopReplicationTask
-}
type alias StopReplicationTaskResponse =
    { replicationTask : Maybe ReplicationTask
    }


stopReplicationTaskResponseDecoder : JD.Decoder StopReplicationTaskResponse
stopReplicationTaskResponseDecoder =
    JD.succeed StopReplicationTaskResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationTask", "replicationTask" ]
                replicationTaskDecoder
            )


{-|

<p/>

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

<p/>

-}
type alias SupportedEndpointType =
    { engineName : Maybe String
    , supportsCDC : Maybe Bool
    , endpointType : Maybe ReplicationEndpointTypeValue
    , engineDisplayName : Maybe String
    }


supportedEndpointTypeDecoder : JD.Decoder SupportedEndpointType
supportedEndpointTypeDecoder =
    JD.succeed SupportedEndpointType
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineName", "engineName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SupportsCDC", "supportsCDC" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EndpointType", "endpointType" ]
                replicationEndpointTypeValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineDisplayName", "engineDisplayName" ]
                JD.string
            )


{-|

<p/>

-}
type alias TableStatistics =
    { schemaName : Maybe String
    , tableName : Maybe String
    , inserts : Maybe Int
    , deletes : Maybe Int
    , updates : Maybe Int
    , ddls : Maybe Int
    , fullLoadRows : Maybe Int
    , fullLoadCondtnlChkFailedRows : Maybe Int
    , fullLoadErrorRows : Maybe Int
    , lastUpdateTime : Maybe Posix
    , tableState : Maybe String
    , validationPendingRecords : Maybe Int
    , validationFailedRecords : Maybe Int
    , validationSuspendedRecords : Maybe Int
    , validationState : Maybe String
    , validationStateDetails : Maybe String
    }


tableStatisticsDecoder : JD.Decoder TableStatistics
tableStatisticsDecoder =
    JD.succeed TableStatistics
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SchemaName", "schemaName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TableName", "tableName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Inserts", "inserts" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Deletes", "deletes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Updates", "updates" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Ddls", "ddls" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FullLoadRows", "fullLoadRows" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FullLoadCondtnlChkFailedRows", "fullLoadCondtnlChkFailedRows" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FullLoadErrorRows", "fullLoadErrorRows" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastUpdateTime", "lastUpdateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TableState", "tableState" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ValidationPendingRecords", "validationPendingRecords" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ValidationFailedRecords", "validationFailedRecords" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ValidationSuspendedRecords", "validationSuspendedRecords" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ValidationState", "validationState" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ValidationStateDetails", "validationStateDetails" ]
                JD.string
            )


{-|

<p/>

-}
type alias TableToReload =
    { schemaName : Maybe String
    , tableName : Maybe String
    }


tableToReloadDecoder : JD.Decoder TableToReload
tableToReloadDecoder =
    JD.succeed TableToReload
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SchemaName", "schemaName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TableName", "tableName" ]
                JD.string
            )


{-|

<p/>

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


{-| Type of HTTP response from testConnection
-}
type alias TestConnectionResponse =
    { connection : Maybe Connection
    }


testConnectionResponseDecoder : JD.Decoder TestConnectionResponse
testConnectionResponseDecoder =
    JD.succeed TestConnectionResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Connection", "connection" ]
                connectionDecoder
            )


{-|

<p/>

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


{-|

<p>Associates a set of tags with an AWS DMS resource.</p>

-}
type alias AddTagsToResourceMessage =
    { resourceArn : String
    , tags : List Tag
    }


{-|

<p/>

-}
type alias ApplyPendingMaintenanceActionMessage =
    { replicationInstanceArn : String
    , applyAction : String
    , optInType : String
    }


{-|

<p/>

-}
type alias CreateEndpointMessage =
    { endpointIdentifier : String
    , endpointType : ReplicationEndpointTypeValue
    , engineName : String
    , username : Maybe String
    , password : Maybe String
    , serverName : Maybe String
    , port_ : Maybe Int
    , databaseName : Maybe String
    , extraConnectionAttributes : Maybe String
    , kmsKeyId : Maybe String
    , tags : Maybe (List Tag)
    , certificateArn : Maybe String
    , sslMode : Maybe DmsSslModeValue
    , serviceAccessRoleArn : Maybe String
    , externalTableDefinition : Maybe String
    , dynamoDbSettings : Maybe DynamoDbSettings
    , s3Settings : Maybe S3Settings
    , dmsTransferSettings : Maybe DmsTransferSettings
    , mongoDbSettings : Maybe MongoDbSettings
    , kinesisSettings : Maybe KinesisSettings
    , elasticsearchSettings : Maybe ElasticsearchSettings
    , redshiftSettings : Maybe RedshiftSettings
    }


{-|

<p/>

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


{-|

<p/>

-}
type alias CreateReplicationInstanceMessage =
    { replicationInstanceIdentifier : String
    , allocatedStorage : Maybe Int
    , replicationInstanceClass : String
    , vpcSecurityGroupIds : Maybe (List String)
    , availabilityZone : Maybe String
    , replicationSubnetGroupIdentifier : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , tags : Maybe (List Tag)
    , kmsKeyId : Maybe String
    , publiclyAccessible : Maybe Bool
    , dnsNameServers : Maybe String
    }


{-|

<p/>

-}
type alias CreateReplicationSubnetGroupMessage =
    { replicationSubnetGroupIdentifier : String
    , replicationSubnetGroupDescription : String
    , subnetIds : List String
    , tags : Maybe (List Tag)
    }


{-|

<p/>

-}
type alias CreateReplicationTaskMessage =
    { replicationTaskIdentifier : String
    , sourceEndpointArn : String
    , targetEndpointArn : String
    , replicationInstanceArn : String
    , migrationType : MigrationTypeValue
    , tableMappings : String
    , replicationTaskSettings : Maybe String
    , cdcStartTime : Maybe Posix
    , cdcStartPosition : Maybe String
    , cdcStopPosition : Maybe String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias DeleteCertificateMessage =
    { certificateArn : String
    }


{-|

<p/>

-}
type alias DeleteEndpointMessage =
    { endpointArn : String
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
type alias DeleteReplicationInstanceMessage =
    { replicationInstanceArn : String
    }


{-|

<p/>

-}
type alias DeleteReplicationSubnetGroupMessage =
    { replicationSubnetGroupIdentifier : String
    }


{-|

<p/>

-}
type alias DeleteReplicationTaskMessage =
    { replicationTaskArn : String
    }


{-|

<p/>

-}
type alias DescribeAccountAttributesMessage =
    {}


{-| undefined
-}
type alias DescribeCertificatesMessage =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeConnectionsMessage =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeEndpointTypesMessage =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeEndpointsMessage =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeEventCategoriesMessage =
    { sourceType : Maybe String
    , filters : Maybe (List Filter)
    }


{-|

<p/>

-}
type alias DescribeEventSubscriptionsMessage =
    { subscriptionName : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
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
    , eventCategories : Maybe (List String)
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeOrderableReplicationInstancesMessage =
    { maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribePendingMaintenanceActionsMessage =
    { replicationInstanceArn : Maybe String
    , filters : Maybe (List Filter)
    , marker : Maybe String
    , maxRecords : Maybe Int
    }


{-|

<p/>

-}
type alias DescribeRefreshSchemasStatusMessage =
    { endpointArn : String
    }


{-| undefined
-}
type alias DescribeReplicationInstanceTaskLogsMessage =
    { replicationInstanceArn : String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeReplicationInstancesMessage =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeReplicationSubnetGroupsMessage =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeReplicationTaskAssessmentResultsMessage =
    { replicationTaskArn : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeReplicationTasksMessage =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    , withoutSettings : Maybe Bool
    }


{-|

<p/>

-}
type alias DescribeSchemasMessage =
    { endpointArn : String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }


{-|

<p/>

-}
type alias DescribeTableStatisticsMessage =
    { replicationTaskArn : String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , filters : Maybe (List Filter)
    }


{-| undefined
-}
type alias ImportCertificateMessage =
    { certificateIdentifier : String
    , certificatePem : Maybe String
    , certificateWallet : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p/>

-}
type alias ListTagsForResourceMessage =
    { resourceArn : String
    }


{-|

<p/>

-}
type alias ModifyEndpointMessage =
    { endpointArn : String
    , endpointIdentifier : Maybe String
    , endpointType : Maybe ReplicationEndpointTypeValue
    , engineName : Maybe String
    , username : Maybe String
    , password : Maybe String
    , serverName : Maybe String
    , port_ : Maybe Int
    , databaseName : Maybe String
    , extraConnectionAttributes : Maybe String
    , certificateArn : Maybe String
    , sslMode : Maybe DmsSslModeValue
    , serviceAccessRoleArn : Maybe String
    , externalTableDefinition : Maybe String
    , dynamoDbSettings : Maybe DynamoDbSettings
    , s3Settings : Maybe S3Settings
    , dmsTransferSettings : Maybe DmsTransferSettings
    , mongoDbSettings : Maybe MongoDbSettings
    , kinesisSettings : Maybe KinesisSettings
    , elasticsearchSettings : Maybe ElasticsearchSettings
    , redshiftSettings : Maybe RedshiftSettings
    }


{-|

<p/>

-}
type alias ModifyEventSubscriptionMessage =
    { subscriptionName : String
    , snsTopicArn : Maybe String
    , sourceType : Maybe String
    , eventCategories : Maybe (List String)
    , enabled : Maybe Bool
    }


{-|

<p/>

-}
type alias ModifyReplicationInstanceMessage =
    { replicationInstanceArn : String
    , allocatedStorage : Maybe Int
    , applyImmediately : Maybe Bool
    , replicationInstanceClass : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , preferredMaintenanceWindow : Maybe String
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , allowMajorVersionUpgrade : Maybe Bool
    , autoMinorVersionUpgrade : Maybe Bool
    , replicationInstanceIdentifier : Maybe String
    }


{-|

<p/>

-}
type alias ModifyReplicationSubnetGroupMessage =
    { replicationSubnetGroupIdentifier : String
    , replicationSubnetGroupDescription : Maybe String
    , subnetIds : List String
    }


{-|

<p/>

-}
type alias ModifyReplicationTaskMessage =
    { replicationTaskArn : String
    , replicationTaskIdentifier : Maybe String
    , migrationType : Maybe MigrationTypeValue
    , tableMappings : Maybe String
    , replicationTaskSettings : Maybe String
    , cdcStartTime : Maybe Posix
    , cdcStartPosition : Maybe String
    , cdcStopPosition : Maybe String
    }


{-| undefined
-}
type alias RebootReplicationInstanceMessage =
    { replicationInstanceArn : String
    , forceFailover : Maybe Bool
    }


{-|

<p/>

-}
type alias RefreshSchemasMessage =
    { endpointArn : String
    , replicationInstanceArn : String
    }


{-| undefined
-}
type alias ReloadTablesMessage =
    { replicationTaskArn : String
    , tablesToReload : List TableToReload
    , reloadOption : Maybe ReloadOptionValue
    }


{-|

<p>Removes one or more tags from an AWS DMS resource.</p>

-}
type alias RemoveTagsFromResourceMessage =
    { resourceArn : String
    , tagKeys : List String
    }


{-|

<p/>

-}
type alias StartReplicationTaskAssessmentMessage =
    { replicationTaskArn : String
    }


{-|

<p/>

-}
type alias StartReplicationTaskMessage =
    { replicationTaskArn : String
    , startReplicationTaskType : StartReplicationTaskTypeValue
    , cdcStartTime : Maybe Posix
    , cdcStartPosition : Maybe String
    , cdcStopPosition : Maybe String
    }


{-|

<p/>

-}
type alias StopReplicationTaskMessage =
    { replicationTaskArn : String
    }


{-|

<p/>

-}
type alias TestConnectionMessage =
    { replicationInstanceArn : String
    , endpointArn : String
    }


accountQuotaEncoder : AccountQuota -> JE.Value
accountQuotaEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AccountQuotaName", data.accountQuotaName )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Used", data.used )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Max", data.max )
        |> JE.object


addTagsToResourceMessageEncoder : AddTagsToResourceMessage -> JE.Value
addTagsToResourceMessageEncoder data =
    []
        |> (::) ( "ResourceArn", data.resourceArn |> JE.string )
        |> (::) ( "Tags", data.tags |> JE.list tagEncoder )
        |> JE.object


addTagsToResourceResponseEncoder : AddTagsToResourceResponse -> JE.Value
addTagsToResourceResponseEncoder data =
    []
        |> JE.object


applyPendingMaintenanceActionMessageEncoder : ApplyPendingMaintenanceActionMessage -> JE.Value
applyPendingMaintenanceActionMessageEncoder data =
    []
        |> (::) ( "ReplicationInstanceArn", data.replicationInstanceArn |> JE.string )
        |> (::) ( "ApplyAction", data.applyAction |> JE.string )
        |> (::) ( "OptInType", data.optInType |> JE.string )
        |> JE.object


applyPendingMaintenanceActionResponseEncoder : ApplyPendingMaintenanceActionResponse -> JE.Value
applyPendingMaintenanceActionResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            resourcePendingMaintenanceActionsEncoder
            ( "ResourcePendingMaintenanceActions", data.resourcePendingMaintenanceActions )
        |> JE.object


availabilityZoneEncoder : AvailabilityZone -> JE.Value
availabilityZoneEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> JE.object


certificateEncoder : Certificate -> JE.Value
certificateEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CertificateIdentifier", data.certificateIdentifier )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CertificateCreationDate", data.certificateCreationDate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CertificatePem", data.certificatePem )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CertificateWallet", data.certificateWallet )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CertificateArn", data.certificateArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CertificateOwner", data.certificateOwner )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ValidFromDate", data.validFromDate )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ValidToDate", data.validToDate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SigningAlgorithm", data.signingAlgorithm )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "KeyLength", data.keyLength )
        |> JE.object


connectionEncoder : Connection -> JE.Value
connectionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstanceArn", data.replicationInstanceArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EndpointArn", data.endpointArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Status", data.status )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LastFailureMessage", data.lastFailureMessage )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EndpointIdentifier", data.endpointIdentifier )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstanceIdentifier", data.replicationInstanceIdentifier )
        |> JE.object


createEndpointMessageEncoder : CreateEndpointMessage -> JE.Value
createEndpointMessageEncoder data =
    []
        |> (::) ( "EndpointIdentifier", data.endpointIdentifier |> JE.string )
        |> (::) ( "EndpointType", data.endpointType |> (replicationEndpointTypeValueToString >> JE.string) )
        |> (::) ( "EngineName", data.engineName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Username", data.username )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Password", data.password )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServerName", data.serverName )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Port", data.port_ )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DatabaseName", data.databaseName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ExtraConnectionAttributes", data.extraConnectionAttributes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KmsKeyId", data.kmsKeyId )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CertificateArn", data.certificateArn )
        |> AWS.Core.Encode.optionalMember
            (dmsSslModeValueToString >> JE.string)
            ( "SslMode", data.sslMode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServiceAccessRoleArn", data.serviceAccessRoleArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ExternalTableDefinition", data.externalTableDefinition )
        |> AWS.Core.Encode.optionalMember
            dynamoDbSettingsEncoder
            ( "DynamoDbSettings", data.dynamoDbSettings )
        |> AWS.Core.Encode.optionalMember
            s3SettingsEncoder
            ( "S3Settings", data.s3Settings )
        |> AWS.Core.Encode.optionalMember
            dmsTransferSettingsEncoder
            ( "DmsTransferSettings", data.dmsTransferSettings )
        |> AWS.Core.Encode.optionalMember
            mongoDbSettingsEncoder
            ( "MongoDbSettings", data.mongoDbSettings )
        |> AWS.Core.Encode.optionalMember
            kinesisSettingsEncoder
            ( "KinesisSettings", data.kinesisSettings )
        |> AWS.Core.Encode.optionalMember
            elasticsearchSettingsEncoder
            ( "ElasticsearchSettings", data.elasticsearchSettings )
        |> AWS.Core.Encode.optionalMember
            redshiftSettingsEncoder
            ( "RedshiftSettings", data.redshiftSettings )
        |> JE.object


createEndpointResponseEncoder : CreateEndpointResponse -> JE.Value
createEndpointResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            endpointEncoder
            ( "Endpoint", data.endpoint )
        |> JE.object


createEventSubscriptionMessageEncoder : CreateEventSubscriptionMessage -> JE.Value
createEventSubscriptionMessageEncoder data =
    []
        |> (::) ( "SubscriptionName", data.subscriptionName |> JE.string )
        |> (::) ( "SnsTopicArn", data.snsTopicArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceType", data.sourceType )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "EventCategories", data.eventCategories )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SourceIds", data.sourceIds )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "Enabled", data.enabled )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


createEventSubscriptionResponseEncoder : CreateEventSubscriptionResponse -> JE.Value
createEventSubscriptionResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            eventSubscriptionEncoder
            ( "EventSubscription", data.eventSubscription )
        |> JE.object


createReplicationInstanceMessageEncoder : CreateReplicationInstanceMessage -> JE.Value
createReplicationInstanceMessageEncoder data =
    []
        |> (::) ( "ReplicationInstanceIdentifier", data.replicationInstanceIdentifier |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "AllocatedStorage", data.allocatedStorage )
        |> (::) ( "ReplicationInstanceClass", data.replicationInstanceClass |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "VpcSecurityGroupIds", data.vpcSecurityGroupIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AvailabilityZone", data.availabilityZone )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationSubnetGroupIdentifier", data.replicationSubnetGroupIdentifier )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreferredMaintenanceWindow", data.preferredMaintenanceWindow )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "MultiAZ", data.multiAZ )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineVersion", data.engineVersion )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AutoMinorVersionUpgrade", data.autoMinorVersionUpgrade )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KmsKeyId", data.kmsKeyId )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "PubliclyAccessible", data.publiclyAccessible )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DnsNameServers", data.dnsNameServers )
        |> JE.object


createReplicationInstanceResponseEncoder : CreateReplicationInstanceResponse -> JE.Value
createReplicationInstanceResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            replicationInstanceEncoder
            ( "ReplicationInstance", data.replicationInstance )
        |> JE.object


createReplicationSubnetGroupMessageEncoder : CreateReplicationSubnetGroupMessage -> JE.Value
createReplicationSubnetGroupMessageEncoder data =
    []
        |> (::) ( "ReplicationSubnetGroupIdentifier", data.replicationSubnetGroupIdentifier |> JE.string )
        |> (::) ( "ReplicationSubnetGroupDescription", data.replicationSubnetGroupDescription |> JE.string )
        |> (::) ( "SubnetIds", data.subnetIds |> JE.list JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


createReplicationSubnetGroupResponseEncoder : CreateReplicationSubnetGroupResponse -> JE.Value
createReplicationSubnetGroupResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            replicationSubnetGroupEncoder
            ( "ReplicationSubnetGroup", data.replicationSubnetGroup )
        |> JE.object


createReplicationTaskMessageEncoder : CreateReplicationTaskMessage -> JE.Value
createReplicationTaskMessageEncoder data =
    []
        |> (::) ( "ReplicationTaskIdentifier", data.replicationTaskIdentifier |> JE.string )
        |> (::) ( "SourceEndpointArn", data.sourceEndpointArn |> JE.string )
        |> (::) ( "TargetEndpointArn", data.targetEndpointArn |> JE.string )
        |> (::) ( "ReplicationInstanceArn", data.replicationInstanceArn |> JE.string )
        |> (::) ( "MigrationType", data.migrationType |> (migrationTypeValueToString >> JE.string) )
        |> (::) ( "TableMappings", data.tableMappings |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationTaskSettings", data.replicationTaskSettings )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CdcStartTime", data.cdcStartTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CdcStartPosition", data.cdcStartPosition )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CdcStopPosition", data.cdcStopPosition )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


createReplicationTaskResponseEncoder : CreateReplicationTaskResponse -> JE.Value
createReplicationTaskResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            replicationTaskEncoder
            ( "ReplicationTask", data.replicationTask )
        |> JE.object


deleteCertificateMessageEncoder : DeleteCertificateMessage -> JE.Value
deleteCertificateMessageEncoder data =
    []
        |> (::) ( "CertificateArn", data.certificateArn |> JE.string )
        |> JE.object


deleteCertificateResponseEncoder : DeleteCertificateResponse -> JE.Value
deleteCertificateResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            certificateEncoder
            ( "Certificate", data.certificate )
        |> JE.object


deleteEndpointMessageEncoder : DeleteEndpointMessage -> JE.Value
deleteEndpointMessageEncoder data =
    []
        |> (::) ( "EndpointArn", data.endpointArn |> JE.string )
        |> JE.object


deleteEndpointResponseEncoder : DeleteEndpointResponse -> JE.Value
deleteEndpointResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            endpointEncoder
            ( "Endpoint", data.endpoint )
        |> JE.object


deleteEventSubscriptionMessageEncoder : DeleteEventSubscriptionMessage -> JE.Value
deleteEventSubscriptionMessageEncoder data =
    []
        |> (::) ( "SubscriptionName", data.subscriptionName |> JE.string )
        |> JE.object


deleteEventSubscriptionResponseEncoder : DeleteEventSubscriptionResponse -> JE.Value
deleteEventSubscriptionResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            eventSubscriptionEncoder
            ( "EventSubscription", data.eventSubscription )
        |> JE.object


deleteReplicationInstanceMessageEncoder : DeleteReplicationInstanceMessage -> JE.Value
deleteReplicationInstanceMessageEncoder data =
    []
        |> (::) ( "ReplicationInstanceArn", data.replicationInstanceArn |> JE.string )
        |> JE.object


deleteReplicationInstanceResponseEncoder : DeleteReplicationInstanceResponse -> JE.Value
deleteReplicationInstanceResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            replicationInstanceEncoder
            ( "ReplicationInstance", data.replicationInstance )
        |> JE.object


deleteReplicationSubnetGroupMessageEncoder : DeleteReplicationSubnetGroupMessage -> JE.Value
deleteReplicationSubnetGroupMessageEncoder data =
    []
        |> (::) ( "ReplicationSubnetGroupIdentifier", data.replicationSubnetGroupIdentifier |> JE.string )
        |> JE.object


deleteReplicationSubnetGroupResponseEncoder : DeleteReplicationSubnetGroupResponse -> JE.Value
deleteReplicationSubnetGroupResponseEncoder data =
    []
        |> JE.object


deleteReplicationTaskMessageEncoder : DeleteReplicationTaskMessage -> JE.Value
deleteReplicationTaskMessageEncoder data =
    []
        |> (::) ( "ReplicationTaskArn", data.replicationTaskArn |> JE.string )
        |> JE.object


deleteReplicationTaskResponseEncoder : DeleteReplicationTaskResponse -> JE.Value
deleteReplicationTaskResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            replicationTaskEncoder
            ( "ReplicationTask", data.replicationTask )
        |> JE.object


describeAccountAttributesMessageEncoder : DescribeAccountAttributesMessage -> JE.Value
describeAccountAttributesMessageEncoder data =
    []
        |> JE.object


describeAccountAttributesResponseEncoder : DescribeAccountAttributesResponse -> JE.Value
describeAccountAttributesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list accountQuotaEncoder)
            ( "AccountQuotas", data.accountQuotas )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "UniqueAccountIdentifier", data.uniqueAccountIdentifier )
        |> JE.object


describeCertificatesMessageEncoder : DescribeCertificatesMessage -> JE.Value
describeCertificatesMessageEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list filterEncoder)
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeCertificatesResponseEncoder : DescribeCertificatesResponse -> JE.Value
describeCertificatesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            (JE.list certificateEncoder)
            ( "Certificates", data.certificates )
        |> JE.object


describeConnectionsMessageEncoder : DescribeConnectionsMessage -> JE.Value
describeConnectionsMessageEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list filterEncoder)
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeConnectionsResponseEncoder : DescribeConnectionsResponse -> JE.Value
describeConnectionsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            (JE.list connectionEncoder)
            ( "Connections", data.connections )
        |> JE.object


describeEndpointTypesMessageEncoder : DescribeEndpointTypesMessage -> JE.Value
describeEndpointTypesMessageEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list filterEncoder)
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeEndpointTypesResponseEncoder : DescribeEndpointTypesResponse -> JE.Value
describeEndpointTypesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            (JE.list supportedEndpointTypeEncoder)
            ( "SupportedEndpointTypes", data.supportedEndpointTypes )
        |> JE.object


describeEndpointsMessageEncoder : DescribeEndpointsMessage -> JE.Value
describeEndpointsMessageEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list filterEncoder)
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeEndpointsResponseEncoder : DescribeEndpointsResponse -> JE.Value
describeEndpointsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            (JE.list endpointEncoder)
            ( "Endpoints", data.endpoints )
        |> JE.object


describeEventCategoriesMessageEncoder : DescribeEventCategoriesMessage -> JE.Value
describeEventCategoriesMessageEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceType", data.sourceType )
        |> AWS.Core.Encode.optionalMember
            (JE.list filterEncoder)
            ( "Filters", data.filters )
        |> JE.object


describeEventCategoriesResponseEncoder : DescribeEventCategoriesResponse -> JE.Value
describeEventCategoriesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list eventCategoryGroupEncoder)
            ( "EventCategoryGroupList", data.eventCategoryGroupList )
        |> JE.object


describeEventSubscriptionsMessageEncoder : DescribeEventSubscriptionsMessage -> JE.Value
describeEventSubscriptionsMessageEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SubscriptionName", data.subscriptionName )
        |> AWS.Core.Encode.optionalMember
            (JE.list filterEncoder)
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeEventSubscriptionsResponseEncoder : DescribeEventSubscriptionsResponse -> JE.Value
describeEventSubscriptionsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            (JE.list eventSubscriptionEncoder)
            ( "EventSubscriptionsList", data.eventSubscriptionsList )
        |> JE.object


describeEventsMessageEncoder : DescribeEventsMessage -> JE.Value
describeEventsMessageEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceIdentifier", data.sourceIdentifier )
        |> AWS.Core.Encode.optionalMember
            (sourceTypeToString >> JE.string)
            ( "SourceType", data.sourceType )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StartTime", data.startTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "EndTime", data.endTime )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Duration", data.duration )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "EventCategories", data.eventCategories )
        |> AWS.Core.Encode.optionalMember
            (JE.list filterEncoder)
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeEventsResponseEncoder : DescribeEventsResponse -> JE.Value
describeEventsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            (JE.list eventEncoder)
            ( "Events", data.events )
        |> JE.object


describeOrderableReplicationInstancesMessageEncoder : DescribeOrderableReplicationInstancesMessage -> JE.Value
describeOrderableReplicationInstancesMessageEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeOrderableReplicationInstancesResponseEncoder : DescribeOrderableReplicationInstancesResponse -> JE.Value
describeOrderableReplicationInstancesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list orderableReplicationInstanceEncoder)
            ( "OrderableReplicationInstances", data.orderableReplicationInstances )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describePendingMaintenanceActionsMessageEncoder : DescribePendingMaintenanceActionsMessage -> JE.Value
describePendingMaintenanceActionsMessageEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstanceArn", data.replicationInstanceArn )
        |> AWS.Core.Encode.optionalMember
            (JE.list filterEncoder)
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> JE.object


describePendingMaintenanceActionsResponseEncoder : DescribePendingMaintenanceActionsResponse -> JE.Value
describePendingMaintenanceActionsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list resourcePendingMaintenanceActionsEncoder)
            ( "PendingMaintenanceActions", data.pendingMaintenanceActions )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeRefreshSchemasStatusMessageEncoder : DescribeRefreshSchemasStatusMessage -> JE.Value
describeRefreshSchemasStatusMessageEncoder data =
    []
        |> (::) ( "EndpointArn", data.endpointArn |> JE.string )
        |> JE.object


describeRefreshSchemasStatusResponseEncoder : DescribeRefreshSchemasStatusResponse -> JE.Value
describeRefreshSchemasStatusResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            refreshSchemasStatusEncoder
            ( "RefreshSchemasStatus", data.refreshSchemasStatus )
        |> JE.object


describeReplicationInstanceTaskLogsMessageEncoder : DescribeReplicationInstanceTaskLogsMessage -> JE.Value
describeReplicationInstanceTaskLogsMessageEncoder data =
    []
        |> (::) ( "ReplicationInstanceArn", data.replicationInstanceArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeReplicationInstanceTaskLogsResponseEncoder : DescribeReplicationInstanceTaskLogsResponse -> JE.Value
describeReplicationInstanceTaskLogsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstanceArn", data.replicationInstanceArn )
        |> AWS.Core.Encode.optionalMember
            (JE.list replicationInstanceTaskLogEncoder)
            ( "ReplicationInstanceTaskLogs", data.replicationInstanceTaskLogs )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeReplicationInstancesMessageEncoder : DescribeReplicationInstancesMessage -> JE.Value
describeReplicationInstancesMessageEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list filterEncoder)
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeReplicationInstancesResponseEncoder : DescribeReplicationInstancesResponse -> JE.Value
describeReplicationInstancesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            (JE.list replicationInstanceEncoder)
            ( "ReplicationInstances", data.replicationInstances )
        |> JE.object


describeReplicationSubnetGroupsMessageEncoder : DescribeReplicationSubnetGroupsMessage -> JE.Value
describeReplicationSubnetGroupsMessageEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list filterEncoder)
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeReplicationSubnetGroupsResponseEncoder : DescribeReplicationSubnetGroupsResponse -> JE.Value
describeReplicationSubnetGroupsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            (JE.list replicationSubnetGroupEncoder)
            ( "ReplicationSubnetGroups", data.replicationSubnetGroups )
        |> JE.object


describeReplicationTaskAssessmentResultsMessageEncoder : DescribeReplicationTaskAssessmentResultsMessage -> JE.Value
describeReplicationTaskAssessmentResultsMessageEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationTaskArn", data.replicationTaskArn )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeReplicationTaskAssessmentResultsResponseEncoder : DescribeReplicationTaskAssessmentResultsResponse -> JE.Value
describeReplicationTaskAssessmentResultsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "BucketName", data.bucketName )
        |> AWS.Core.Encode.optionalMember
            (JE.list replicationTaskAssessmentResultEncoder)
            ( "ReplicationTaskAssessmentResults", data.replicationTaskAssessmentResults )
        |> JE.object


describeReplicationTasksMessageEncoder : DescribeReplicationTasksMessage -> JE.Value
describeReplicationTasksMessageEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list filterEncoder)
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "WithoutSettings", data.withoutSettings )
        |> JE.object


describeReplicationTasksResponseEncoder : DescribeReplicationTasksResponse -> JE.Value
describeReplicationTasksResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            (JE.list replicationTaskEncoder)
            ( "ReplicationTasks", data.replicationTasks )
        |> JE.object


describeSchemasMessageEncoder : DescribeSchemasMessage -> JE.Value
describeSchemasMessageEncoder data =
    []
        |> (::) ( "EndpointArn", data.endpointArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeSchemasResponseEncoder : DescribeSchemasResponse -> JE.Value
describeSchemasResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "Schemas", data.schemas )
        |> JE.object


describeTableStatisticsMessageEncoder : DescribeTableStatisticsMessage -> JE.Value
describeTableStatisticsMessageEncoder data =
    []
        |> (::) ( "ReplicationTaskArn", data.replicationTaskArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxRecords", data.maxRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            (JE.list filterEncoder)
            ( "Filters", data.filters )
        |> JE.object


describeTableStatisticsResponseEncoder : DescribeTableStatisticsResponse -> JE.Value
describeTableStatisticsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationTaskArn", data.replicationTaskArn )
        |> AWS.Core.Encode.optionalMember
            (JE.list tableStatisticsEncoder)
            ( "TableStatistics", data.tableStatistics )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


dmsTransferSettingsEncoder : DmsTransferSettings -> JE.Value
dmsTransferSettingsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServiceAccessRoleArn", data.serviceAccessRoleArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "BucketName", data.bucketName )
        |> JE.object


dynamoDbSettingsEncoder : DynamoDbSettings -> JE.Value
dynamoDbSettingsEncoder data =
    []
        |> (::) ( "ServiceAccessRoleArn", data.serviceAccessRoleArn |> JE.string )
        |> JE.object


elasticsearchSettingsEncoder : ElasticsearchSettings -> JE.Value
elasticsearchSettingsEncoder data =
    []
        |> (::) ( "ServiceAccessRoleArn", data.serviceAccessRoleArn |> JE.string )
        |> (::) ( "EndpointUri", data.endpointUri |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "FullLoadErrorPercentage", data.fullLoadErrorPercentage )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "ErrorRetryDuration", data.errorRetryDuration )
        |> JE.object


endpointEncoder : Endpoint -> JE.Value
endpointEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EndpointIdentifier", data.endpointIdentifier )
        |> AWS.Core.Encode.optionalMember
            (replicationEndpointTypeValueToString >> JE.string)
            ( "EndpointType", data.endpointType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineName", data.engineName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineDisplayName", data.engineDisplayName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Username", data.username )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServerName", data.serverName )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Port", data.port_ )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DatabaseName", data.databaseName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ExtraConnectionAttributes", data.extraConnectionAttributes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Status", data.status )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KmsKeyId", data.kmsKeyId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EndpointArn", data.endpointArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CertificateArn", data.certificateArn )
        |> AWS.Core.Encode.optionalMember
            (dmsSslModeValueToString >> JE.string)
            ( "SslMode", data.sslMode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServiceAccessRoleArn", data.serviceAccessRoleArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ExternalTableDefinition", data.externalTableDefinition )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ExternalId", data.externalId )
        |> AWS.Core.Encode.optionalMember
            dynamoDbSettingsEncoder
            ( "DynamoDbSettings", data.dynamoDbSettings )
        |> AWS.Core.Encode.optionalMember
            s3SettingsEncoder
            ( "S3Settings", data.s3Settings )
        |> AWS.Core.Encode.optionalMember
            dmsTransferSettingsEncoder
            ( "DmsTransferSettings", data.dmsTransferSettings )
        |> AWS.Core.Encode.optionalMember
            mongoDbSettingsEncoder
            ( "MongoDbSettings", data.mongoDbSettings )
        |> AWS.Core.Encode.optionalMember
            kinesisSettingsEncoder
            ( "KinesisSettings", data.kinesisSettings )
        |> AWS.Core.Encode.optionalMember
            elasticsearchSettingsEncoder
            ( "ElasticsearchSettings", data.elasticsearchSettings )
        |> AWS.Core.Encode.optionalMember
            redshiftSettingsEncoder
            ( "RedshiftSettings", data.redshiftSettings )
        |> JE.object


eventEncoder : Event -> JE.Value
eventEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceIdentifier", data.sourceIdentifier )
        |> AWS.Core.Encode.optionalMember
            (sourceTypeToString >> JE.string)
            ( "SourceType", data.sourceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Message", data.message )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "EventCategories", data.eventCategories )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "Date", data.date )
        |> JE.object


eventCategoryGroupEncoder : EventCategoryGroup -> JE.Value
eventCategoryGroupEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceType", data.sourceType )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "EventCategories", data.eventCategories )
        |> JE.object


eventSubscriptionEncoder : EventSubscription -> JE.Value
eventSubscriptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CustomerAwsId", data.customerAwsId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CustSubscriptionId", data.custSubscriptionId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnsTopicArn", data.snsTopicArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Status", data.status )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SubscriptionCreationTime", data.subscriptionCreationTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceType", data.sourceType )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SourceIdsList", data.sourceIdsList )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "EventCategoriesList", data.eventCategoriesList )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "Enabled", data.enabled )
        |> JE.object


filterEncoder : Filter -> JE.Value
filterEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> (::) ( "Values", data.values |> JE.list JE.string )
        |> JE.object


importCertificateMessageEncoder : ImportCertificateMessage -> JE.Value
importCertificateMessageEncoder data =
    []
        |> (::) ( "CertificateIdentifier", data.certificateIdentifier |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CertificatePem", data.certificatePem )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CertificateWallet", data.certificateWallet )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


importCertificateResponseEncoder : ImportCertificateResponse -> JE.Value
importCertificateResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            certificateEncoder
            ( "Certificate", data.certificate )
        |> JE.object


kinesisSettingsEncoder : KinesisSettings -> JE.Value
kinesisSettingsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "StreamArn", data.streamArn )
        |> AWS.Core.Encode.optionalMember
            (messageFormatValueToString >> JE.string)
            ( "MessageFormat", data.messageFormat )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServiceAccessRoleArn", data.serviceAccessRoleArn )
        |> JE.object


listTagsForResourceMessageEncoder : ListTagsForResourceMessage -> JE.Value
listTagsForResourceMessageEncoder data =
    []
        |> (::) ( "ResourceArn", data.resourceArn |> JE.string )
        |> JE.object


listTagsForResourceResponseEncoder : ListTagsForResourceResponse -> JE.Value
listTagsForResourceResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "TagList", data.tagList )
        |> JE.object


modifyEndpointMessageEncoder : ModifyEndpointMessage -> JE.Value
modifyEndpointMessageEncoder data =
    []
        |> (::) ( "EndpointArn", data.endpointArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EndpointIdentifier", data.endpointIdentifier )
        |> AWS.Core.Encode.optionalMember
            (replicationEndpointTypeValueToString >> JE.string)
            ( "EndpointType", data.endpointType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineName", data.engineName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Username", data.username )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Password", data.password )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServerName", data.serverName )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Port", data.port_ )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DatabaseName", data.databaseName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ExtraConnectionAttributes", data.extraConnectionAttributes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CertificateArn", data.certificateArn )
        |> AWS.Core.Encode.optionalMember
            (dmsSslModeValueToString >> JE.string)
            ( "SslMode", data.sslMode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServiceAccessRoleArn", data.serviceAccessRoleArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ExternalTableDefinition", data.externalTableDefinition )
        |> AWS.Core.Encode.optionalMember
            dynamoDbSettingsEncoder
            ( "DynamoDbSettings", data.dynamoDbSettings )
        |> AWS.Core.Encode.optionalMember
            s3SettingsEncoder
            ( "S3Settings", data.s3Settings )
        |> AWS.Core.Encode.optionalMember
            dmsTransferSettingsEncoder
            ( "DmsTransferSettings", data.dmsTransferSettings )
        |> AWS.Core.Encode.optionalMember
            mongoDbSettingsEncoder
            ( "MongoDbSettings", data.mongoDbSettings )
        |> AWS.Core.Encode.optionalMember
            kinesisSettingsEncoder
            ( "KinesisSettings", data.kinesisSettings )
        |> AWS.Core.Encode.optionalMember
            elasticsearchSettingsEncoder
            ( "ElasticsearchSettings", data.elasticsearchSettings )
        |> AWS.Core.Encode.optionalMember
            redshiftSettingsEncoder
            ( "RedshiftSettings", data.redshiftSettings )
        |> JE.object


modifyEndpointResponseEncoder : ModifyEndpointResponse -> JE.Value
modifyEndpointResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            endpointEncoder
            ( "Endpoint", data.endpoint )
        |> JE.object


modifyEventSubscriptionMessageEncoder : ModifyEventSubscriptionMessage -> JE.Value
modifyEventSubscriptionMessageEncoder data =
    []
        |> (::) ( "SubscriptionName", data.subscriptionName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnsTopicArn", data.snsTopicArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceType", data.sourceType )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "EventCategories", data.eventCategories )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "Enabled", data.enabled )
        |> JE.object


modifyEventSubscriptionResponseEncoder : ModifyEventSubscriptionResponse -> JE.Value
modifyEventSubscriptionResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            eventSubscriptionEncoder
            ( "EventSubscription", data.eventSubscription )
        |> JE.object


modifyReplicationInstanceMessageEncoder : ModifyReplicationInstanceMessage -> JE.Value
modifyReplicationInstanceMessageEncoder data =
    []
        |> (::) ( "ReplicationInstanceArn", data.replicationInstanceArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "AllocatedStorage", data.allocatedStorage )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ApplyImmediately", data.applyImmediately )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstanceClass", data.replicationInstanceClass )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "VpcSecurityGroupIds", data.vpcSecurityGroupIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreferredMaintenanceWindow", data.preferredMaintenanceWindow )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "MultiAZ", data.multiAZ )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineVersion", data.engineVersion )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AllowMajorVersionUpgrade", data.allowMajorVersionUpgrade )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AutoMinorVersionUpgrade", data.autoMinorVersionUpgrade )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstanceIdentifier", data.replicationInstanceIdentifier )
        |> JE.object


modifyReplicationInstanceResponseEncoder : ModifyReplicationInstanceResponse -> JE.Value
modifyReplicationInstanceResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            replicationInstanceEncoder
            ( "ReplicationInstance", data.replicationInstance )
        |> JE.object


modifyReplicationSubnetGroupMessageEncoder : ModifyReplicationSubnetGroupMessage -> JE.Value
modifyReplicationSubnetGroupMessageEncoder data =
    []
        |> (::) ( "ReplicationSubnetGroupIdentifier", data.replicationSubnetGroupIdentifier |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationSubnetGroupDescription", data.replicationSubnetGroupDescription )
        |> (::) ( "SubnetIds", data.subnetIds |> JE.list JE.string )
        |> JE.object


modifyReplicationSubnetGroupResponseEncoder : ModifyReplicationSubnetGroupResponse -> JE.Value
modifyReplicationSubnetGroupResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            replicationSubnetGroupEncoder
            ( "ReplicationSubnetGroup", data.replicationSubnetGroup )
        |> JE.object


modifyReplicationTaskMessageEncoder : ModifyReplicationTaskMessage -> JE.Value
modifyReplicationTaskMessageEncoder data =
    []
        |> (::) ( "ReplicationTaskArn", data.replicationTaskArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationTaskIdentifier", data.replicationTaskIdentifier )
        |> AWS.Core.Encode.optionalMember
            (migrationTypeValueToString >> JE.string)
            ( "MigrationType", data.migrationType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TableMappings", data.tableMappings )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationTaskSettings", data.replicationTaskSettings )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CdcStartTime", data.cdcStartTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CdcStartPosition", data.cdcStartPosition )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CdcStopPosition", data.cdcStopPosition )
        |> JE.object


modifyReplicationTaskResponseEncoder : ModifyReplicationTaskResponse -> JE.Value
modifyReplicationTaskResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            replicationTaskEncoder
            ( "ReplicationTask", data.replicationTask )
        |> JE.object


mongoDbSettingsEncoder : MongoDbSettings -> JE.Value
mongoDbSettingsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Username", data.username )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Password", data.password )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServerName", data.serverName )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Port", data.port_ )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DatabaseName", data.databaseName )
        |> AWS.Core.Encode.optionalMember
            (authTypeValueToString >> JE.string)
            ( "AuthType", data.authType )
        |> AWS.Core.Encode.optionalMember
            (authMechanismValueToString >> JE.string)
            ( "AuthMechanism", data.authMechanism )
        |> AWS.Core.Encode.optionalMember
            (nestingLevelValueToString >> JE.string)
            ( "NestingLevel", data.nestingLevel )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ExtractDocId", data.extractDocId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DocsToInvestigate", data.docsToInvestigate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AuthSource", data.authSource )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KmsKeyId", data.kmsKeyId )
        |> JE.object


orderableReplicationInstanceEncoder : OrderableReplicationInstance -> JE.Value
orderableReplicationInstanceEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineVersion", data.engineVersion )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstanceClass", data.replicationInstanceClass )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "StorageType", data.storageType )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MinAllocatedStorage", data.minAllocatedStorage )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxAllocatedStorage", data.maxAllocatedStorage )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "DefaultAllocatedStorage", data.defaultAllocatedStorage )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "IncludedAllocatedStorage", data.includedAllocatedStorage )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "AvailabilityZones", data.availabilityZones )
        |> AWS.Core.Encode.optionalMember
            (releaseStatusValuesToString >> JE.string)
            ( "ReleaseStatus", data.releaseStatus )
        |> JE.object


pendingMaintenanceActionEncoder : PendingMaintenanceAction -> JE.Value
pendingMaintenanceActionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Action", data.action )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "AutoAppliedAfterDate", data.autoAppliedAfterDate )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ForcedApplyDate", data.forcedApplyDate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "OptInStatus", data.optInStatus )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CurrentApplyDate", data.currentApplyDate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> JE.object


rebootReplicationInstanceMessageEncoder : RebootReplicationInstanceMessage -> JE.Value
rebootReplicationInstanceMessageEncoder data =
    []
        |> (::) ( "ReplicationInstanceArn", data.replicationInstanceArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ForceFailover", data.forceFailover )
        |> JE.object


rebootReplicationInstanceResponseEncoder : RebootReplicationInstanceResponse -> JE.Value
rebootReplicationInstanceResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            replicationInstanceEncoder
            ( "ReplicationInstance", data.replicationInstance )
        |> JE.object


redshiftSettingsEncoder : RedshiftSettings -> JE.Value
redshiftSettingsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AcceptAnyDate", data.acceptAnyDate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AfterConnectScript", data.afterConnectScript )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "BucketFolder", data.bucketFolder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "BucketName", data.bucketName )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "ConnectionTimeout", data.connectionTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DatabaseName", data.databaseName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DateFormat", data.dateFormat )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "EmptyAsNull", data.emptyAsNull )
        |> AWS.Core.Encode.optionalMember
            (encryptionModeValueToString >> JE.string)
            ( "EncryptionMode", data.encryptionMode )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "FileTransferUploadStreams", data.fileTransferUploadStreams )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "LoadTimeout", data.loadTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxFileSize", data.maxFileSize )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Password", data.password )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Port", data.port_ )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "RemoveQuotes", data.removeQuotes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplaceInvalidChars", data.replaceInvalidChars )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplaceChars", data.replaceChars )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServerName", data.serverName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServiceAccessRoleArn", data.serviceAccessRoleArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServerSideEncryptionKmsKeyId", data.serverSideEncryptionKmsKeyId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TimeFormat", data.timeFormat )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "TrimBlanks", data.trimBlanks )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "TruncateColumns", data.truncateColumns )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Username", data.username )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "WriteBufferSize", data.writeBufferSize )
        |> JE.object


refreshSchemasMessageEncoder : RefreshSchemasMessage -> JE.Value
refreshSchemasMessageEncoder data =
    []
        |> (::) ( "EndpointArn", data.endpointArn |> JE.string )
        |> (::) ( "ReplicationInstanceArn", data.replicationInstanceArn |> JE.string )
        |> JE.object


refreshSchemasResponseEncoder : RefreshSchemasResponse -> JE.Value
refreshSchemasResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            refreshSchemasStatusEncoder
            ( "RefreshSchemasStatus", data.refreshSchemasStatus )
        |> JE.object


refreshSchemasStatusEncoder : RefreshSchemasStatus -> JE.Value
refreshSchemasStatusEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EndpointArn", data.endpointArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstanceArn", data.replicationInstanceArn )
        |> AWS.Core.Encode.optionalMember
            (refreshSchemasStatusTypeValueToString >> JE.string)
            ( "Status", data.status )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastRefreshDate", data.lastRefreshDate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LastFailureMessage", data.lastFailureMessage )
        |> JE.object


reloadTablesMessageEncoder : ReloadTablesMessage -> JE.Value
reloadTablesMessageEncoder data =
    []
        |> (::) ( "ReplicationTaskArn", data.replicationTaskArn |> JE.string )
        |> (::) ( "TablesToReload", data.tablesToReload |> JE.list tableToReloadEncoder )
        |> AWS.Core.Encode.optionalMember
            (reloadOptionValueToString >> JE.string)
            ( "ReloadOption", data.reloadOption )
        |> JE.object


reloadTablesResponseEncoder : ReloadTablesResponse -> JE.Value
reloadTablesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationTaskArn", data.replicationTaskArn )
        |> JE.object


removeTagsFromResourceMessageEncoder : RemoveTagsFromResourceMessage -> JE.Value
removeTagsFromResourceMessageEncoder data =
    []
        |> (::) ( "ResourceArn", data.resourceArn |> JE.string )
        |> (::) ( "TagKeys", data.tagKeys |> JE.list JE.string )
        |> JE.object


removeTagsFromResourceResponseEncoder : RemoveTagsFromResourceResponse -> JE.Value
removeTagsFromResourceResponseEncoder data =
    []
        |> JE.object


replicationInstanceEncoder : ReplicationInstance -> JE.Value
replicationInstanceEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstanceIdentifier", data.replicationInstanceIdentifier )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstanceClass", data.replicationInstanceClass )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstanceStatus", data.replicationInstanceStatus )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "AllocatedStorage", data.allocatedStorage )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "InstanceCreateTime", data.instanceCreateTime )
        |> AWS.Core.Encode.optionalMember
            (JE.list vpcSecurityGroupMembershipEncoder)
            ( "VpcSecurityGroups", data.vpcSecurityGroups )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AvailabilityZone", data.availabilityZone )
        |> AWS.Core.Encode.optionalMember
            replicationSubnetGroupEncoder
            ( "ReplicationSubnetGroup", data.replicationSubnetGroup )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreferredMaintenanceWindow", data.preferredMaintenanceWindow )
        |> AWS.Core.Encode.optionalMember
            replicationPendingModifiedValuesEncoder
            ( "PendingModifiedValues", data.pendingModifiedValues )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "MultiAZ", data.multiAZ )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineVersion", data.engineVersion )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AutoMinorVersionUpgrade", data.autoMinorVersionUpgrade )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KmsKeyId", data.kmsKeyId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstanceArn", data.replicationInstanceArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstancePublicIpAddress", data.replicationInstancePublicIpAddress )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstancePrivateIpAddress", data.replicationInstancePrivateIpAddress )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ReplicationInstancePublicIpAddresses", data.replicationInstancePublicIpAddresses )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ReplicationInstancePrivateIpAddresses", data.replicationInstancePrivateIpAddresses )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "PubliclyAccessible", data.publiclyAccessible )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SecondaryAvailabilityZone", data.secondaryAvailabilityZone )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "FreeUntil", data.freeUntil )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DnsNameServers", data.dnsNameServers )
        |> JE.object


replicationInstanceTaskLogEncoder : ReplicationInstanceTaskLog -> JE.Value
replicationInstanceTaskLogEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationTaskName", data.replicationTaskName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationTaskArn", data.replicationTaskArn )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "ReplicationInstanceTaskLogSize", data.replicationInstanceTaskLogSize )
        |> JE.object


replicationPendingModifiedValuesEncoder : ReplicationPendingModifiedValues -> JE.Value
replicationPendingModifiedValuesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstanceClass", data.replicationInstanceClass )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "AllocatedStorage", data.allocatedStorage )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "MultiAZ", data.multiAZ )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineVersion", data.engineVersion )
        |> JE.object


replicationSubnetGroupEncoder : ReplicationSubnetGroup -> JE.Value
replicationSubnetGroupEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationSubnetGroupIdentifier", data.replicationSubnetGroupIdentifier )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationSubnetGroupDescription", data.replicationSubnetGroupDescription )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VpcId", data.vpcId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SubnetGroupStatus", data.subnetGroupStatus )
        |> AWS.Core.Encode.optionalMember
            (JE.list subnetEncoder)
            ( "Subnets", data.subnets )
        |> JE.object


replicationTaskEncoder : ReplicationTask -> JE.Value
replicationTaskEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationTaskIdentifier", data.replicationTaskIdentifier )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceEndpointArn", data.sourceEndpointArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TargetEndpointArn", data.targetEndpointArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationInstanceArn", data.replicationInstanceArn )
        |> AWS.Core.Encode.optionalMember
            (migrationTypeValueToString >> JE.string)
            ( "MigrationType", data.migrationType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TableMappings", data.tableMappings )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationTaskSettings", data.replicationTaskSettings )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Status", data.status )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LastFailureMessage", data.lastFailureMessage )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "StopReason", data.stopReason )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ReplicationTaskCreationDate", data.replicationTaskCreationDate )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ReplicationTaskStartDate", data.replicationTaskStartDate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CdcStartPosition", data.cdcStartPosition )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CdcStopPosition", data.cdcStopPosition )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "RecoveryCheckpoint", data.recoveryCheckpoint )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationTaskArn", data.replicationTaskArn )
        |> AWS.Core.Encode.optionalMember
            replicationTaskStatsEncoder
            ( "ReplicationTaskStats", data.replicationTaskStats )
        |> JE.object


replicationTaskAssessmentResultEncoder : ReplicationTaskAssessmentResult -> JE.Value
replicationTaskAssessmentResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationTaskIdentifier", data.replicationTaskIdentifier )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ReplicationTaskArn", data.replicationTaskArn )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ReplicationTaskLastAssessmentDate", data.replicationTaskLastAssessmentDate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AssessmentStatus", data.assessmentStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AssessmentResultsFile", data.assessmentResultsFile )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AssessmentResults", data.assessmentResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "S3ObjectUrl", data.s3ObjectUrl )
        |> JE.object


replicationTaskStatsEncoder : ReplicationTaskStats -> JE.Value
replicationTaskStatsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "FullLoadProgressPercent", data.fullLoadProgressPercent )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "ElapsedTimeMillis", data.elapsedTimeMillis )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "TablesLoaded", data.tablesLoaded )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "TablesLoading", data.tablesLoading )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "TablesQueued", data.tablesQueued )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "TablesErrored", data.tablesErrored )
        |> JE.object


resourcePendingMaintenanceActionsEncoder : ResourcePendingMaintenanceActions -> JE.Value
resourcePendingMaintenanceActionsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceIdentifier", data.resourceIdentifier )
        |> AWS.Core.Encode.optionalMember
            (JE.list pendingMaintenanceActionEncoder)
            ( "PendingMaintenanceActionDetails", data.pendingMaintenanceActionDetails )
        |> JE.object


s3SettingsEncoder : S3Settings -> JE.Value
s3SettingsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServiceAccessRoleArn", data.serviceAccessRoleArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ExternalTableDefinition", data.externalTableDefinition )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CsvRowDelimiter", data.csvRowDelimiter )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CsvDelimiter", data.csvDelimiter )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "BucketFolder", data.bucketFolder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "BucketName", data.bucketName )
        |> AWS.Core.Encode.optionalMember
            (compressionTypeValueToString >> JE.string)
            ( "CompressionType", data.compressionType )
        |> AWS.Core.Encode.optionalMember
            (encryptionModeValueToString >> JE.string)
            ( "EncryptionMode", data.encryptionMode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServerSideEncryptionKmsKeyId", data.serverSideEncryptionKmsKeyId )
        |> AWS.Core.Encode.optionalMember
            (dataFormatValueToString >> JE.string)
            ( "DataFormat", data.dataFormat )
        |> AWS.Core.Encode.optionalMember
            (encodingTypeValueToString >> JE.string)
            ( "EncodingType", data.encodingType )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "DictPageSizeLimit", data.dictPageSizeLimit )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "RowGroupLength", data.rowGroupLength )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "DataPageSize", data.dataPageSize )
        |> AWS.Core.Encode.optionalMember
            (parquetVersionValueToString >> JE.string)
            ( "ParquetVersion", data.parquetVersion )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "EnableStatistics", data.enableStatistics )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "IncludeOpForFullLoad", data.includeOpForFullLoad )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "CdcInsertsOnly", data.cdcInsertsOnly )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TimestampColumnName", data.timestampColumnName )
        |> JE.object


startReplicationTaskAssessmentMessageEncoder : StartReplicationTaskAssessmentMessage -> JE.Value
startReplicationTaskAssessmentMessageEncoder data =
    []
        |> (::) ( "ReplicationTaskArn", data.replicationTaskArn |> JE.string )
        |> JE.object


startReplicationTaskAssessmentResponseEncoder : StartReplicationTaskAssessmentResponse -> JE.Value
startReplicationTaskAssessmentResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            replicationTaskEncoder
            ( "ReplicationTask", data.replicationTask )
        |> JE.object


startReplicationTaskMessageEncoder : StartReplicationTaskMessage -> JE.Value
startReplicationTaskMessageEncoder data =
    []
        |> (::) ( "ReplicationTaskArn", data.replicationTaskArn |> JE.string )
        |> (::) ( "StartReplicationTaskType", data.startReplicationTaskType |> (startReplicationTaskTypeValueToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CdcStartTime", data.cdcStartTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CdcStartPosition", data.cdcStartPosition )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CdcStopPosition", data.cdcStopPosition )
        |> JE.object


startReplicationTaskResponseEncoder : StartReplicationTaskResponse -> JE.Value
startReplicationTaskResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            replicationTaskEncoder
            ( "ReplicationTask", data.replicationTask )
        |> JE.object


stopReplicationTaskMessageEncoder : StopReplicationTaskMessage -> JE.Value
stopReplicationTaskMessageEncoder data =
    []
        |> (::) ( "ReplicationTaskArn", data.replicationTaskArn |> JE.string )
        |> JE.object


stopReplicationTaskResponseEncoder : StopReplicationTaskResponse -> JE.Value
stopReplicationTaskResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            replicationTaskEncoder
            ( "ReplicationTask", data.replicationTask )
        |> JE.object


subnetEncoder : Subnet -> JE.Value
subnetEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SubnetIdentifier", data.subnetIdentifier )
        |> AWS.Core.Encode.optionalMember
            availabilityZoneEncoder
            ( "SubnetAvailabilityZone", data.subnetAvailabilityZone )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SubnetStatus", data.subnetStatus )
        |> JE.object


supportedEndpointTypeEncoder : SupportedEndpointType -> JE.Value
supportedEndpointTypeEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineName", data.engineName )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "SupportsCDC", data.supportsCDC )
        |> AWS.Core.Encode.optionalMember
            (replicationEndpointTypeValueToString >> JE.string)
            ( "EndpointType", data.endpointType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineDisplayName", data.engineDisplayName )
        |> JE.object


tableStatisticsEncoder : TableStatistics -> JE.Value
tableStatisticsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SchemaName", data.schemaName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TableName", data.tableName )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Inserts", data.inserts )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Deletes", data.deletes )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Updates", data.updates )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Ddls", data.ddls )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "FullLoadRows", data.fullLoadRows )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "FullLoadCondtnlChkFailedRows", data.fullLoadCondtnlChkFailedRows )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "FullLoadErrorRows", data.fullLoadErrorRows )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastUpdateTime", data.lastUpdateTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TableState", data.tableState )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "ValidationPendingRecords", data.validationPendingRecords )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "ValidationFailedRecords", data.validationFailedRecords )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "ValidationSuspendedRecords", data.validationSuspendedRecords )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ValidationState", data.validationState )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ValidationStateDetails", data.validationStateDetails )
        |> JE.object


tableToReloadEncoder : TableToReload -> JE.Value
tableToReloadEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SchemaName", data.schemaName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TableName", data.tableName )
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


testConnectionMessageEncoder : TestConnectionMessage -> JE.Value
testConnectionMessageEncoder data =
    []
        |> (::) ( "ReplicationInstanceArn", data.replicationInstanceArn |> JE.string )
        |> (::) ( "EndpointArn", data.endpointArn |> JE.string )
        |> JE.object


testConnectionResponseEncoder : TestConnectionResponse -> JE.Value
testConnectionResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            connectionEncoder
            ( "Connection", data.connection )
        |> JE.object


vpcSecurityGroupMembershipEncoder : VpcSecurityGroupMembership -> JE.Value
vpcSecurityGroupMembershipEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VpcSecurityGroupId", data.vpcSecurityGroupId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Status", data.status )
        |> JE.object
