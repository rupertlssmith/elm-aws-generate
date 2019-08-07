module AWS.Glue
    exposing
        ( service
        , batchCreatePartition
        , BatchCreatePartitionOptions
        , batchDeleteConnection
        , BatchDeleteConnectionOptions
        , batchDeletePartition
        , BatchDeletePartitionOptions
        , batchDeleteTable
        , BatchDeleteTableOptions
        , batchDeleteTableVersion
        , BatchDeleteTableVersionOptions
        , batchGetCrawlers
        , batchGetDevEndpoints
        , batchGetJobs
        , batchGetPartition
        , BatchGetPartitionOptions
        , batchGetTriggers
        , batchGetWorkflows
        , BatchGetWorkflowsOptions
        , batchStopJobRun
        , createClassifier
        , CreateClassifierOptions
        , createConnection
        , CreateConnectionOptions
        , createCrawler
        , CreateCrawlerOptions
        , createDatabase
        , CreateDatabaseOptions
        , createDevEndpoint
        , CreateDevEndpointOptions
        , createJob
        , CreateJobOptions
        , createPartition
        , CreatePartitionOptions
        , createScript
        , CreateScriptOptions
        , createSecurityConfiguration
        , createTable
        , CreateTableOptions
        , createTrigger
        , CreateTriggerOptions
        , createUserDefinedFunction
        , CreateUserDefinedFunctionOptions
        , createWorkflow
        , CreateWorkflowOptions
        , deleteClassifier
        , deleteConnection
        , DeleteConnectionOptions
        , deleteCrawler
        , deleteDatabase
        , DeleteDatabaseOptions
        , deleteDevEndpoint
        , deleteJob
        , deletePartition
        , DeletePartitionOptions
        , deleteResourcePolicy
        , DeleteResourcePolicyOptions
        , deleteSecurityConfiguration
        , deleteTable
        , DeleteTableOptions
        , deleteTableVersion
        , DeleteTableVersionOptions
        , deleteTrigger
        , deleteUserDefinedFunction
        , DeleteUserDefinedFunctionOptions
        , deleteWorkflow
        , getCatalogImportStatus
        , GetCatalogImportStatusOptions
        , getClassifier
        , getClassifiers
        , GetClassifiersOptions
        , getConnection
        , GetConnectionOptions
        , getConnections
        , GetConnectionsOptions
        , getCrawler
        , getCrawlerMetrics
        , GetCrawlerMetricsOptions
        , getCrawlers
        , GetCrawlersOptions
        , getDataCatalogEncryptionSettings
        , GetDataCatalogEncryptionSettingsOptions
        , getDatabase
        , GetDatabaseOptions
        , getDatabases
        , GetDatabasesOptions
        , getDataflowGraph
        , GetDataflowGraphOptions
        , getDevEndpoint
        , getDevEndpoints
        , GetDevEndpointsOptions
        , getJob
        , getJobBookmark
        , GetJobBookmarkOptions
        , getJobBookmarks
        , GetJobBookmarksOptions
        , getJobRun
        , GetJobRunOptions
        , getJobRuns
        , GetJobRunsOptions
        , getJobs
        , GetJobsOptions
        , getMapping
        , GetMappingOptions
        , getPartition
        , GetPartitionOptions
        , getPartitions
        , GetPartitionsOptions
        , getPlan
        , GetPlanOptions
        , getResourcePolicy
        , getSecurityConfiguration
        , getSecurityConfigurations
        , GetSecurityConfigurationsOptions
        , getTable
        , GetTableOptions
        , getTableVersion
        , GetTableVersionOptions
        , getTableVersions
        , GetTableVersionsOptions
        , getTables
        , GetTablesOptions
        , getTags
        , getTrigger
        , getTriggers
        , GetTriggersOptions
        , getUserDefinedFunction
        , GetUserDefinedFunctionOptions
        , getUserDefinedFunctions
        , GetUserDefinedFunctionsOptions
        , getWorkflow
        , GetWorkflowOptions
        , getWorkflowRun
        , GetWorkflowRunOptions
        , getWorkflowRunProperties
        , getWorkflowRuns
        , GetWorkflowRunsOptions
        , importCatalogToGlue
        , ImportCatalogToGlueOptions
        , listCrawlers
        , ListCrawlersOptions
        , listDevEndpoints
        , ListDevEndpointsOptions
        , listJobs
        , ListJobsOptions
        , listTriggers
        , ListTriggersOptions
        , listWorkflows
        , ListWorkflowsOptions
        , putDataCatalogEncryptionSettings
        , PutDataCatalogEncryptionSettingsOptions
        , putResourcePolicy
        , PutResourcePolicyOptions
        , putWorkflowRunProperties
        , resetJobBookmark
        , ResetJobBookmarkOptions
        , startCrawler
        , startCrawlerSchedule
        , startJobRun
        , StartJobRunOptions
        , startTrigger
        , startWorkflowRun
        , stopCrawler
        , stopCrawlerSchedule
        , stopTrigger
        , tagResource
        , untagResource
        , updateClassifier
        , UpdateClassifierOptions
        , updateConnection
        , UpdateConnectionOptions
        , updateCrawler
        , UpdateCrawlerOptions
        , updateCrawlerSchedule
        , UpdateCrawlerScheduleOptions
        , updateDatabase
        , UpdateDatabaseOptions
        , updateDevEndpoint
        , UpdateDevEndpointOptions
        , updateJob
        , updatePartition
        , UpdatePartitionOptions
        , updateTable
        , UpdateTableOptions
        , updateTrigger
        , updateUserDefinedFunction
        , UpdateUserDefinedFunctionOptions
        , updateWorkflow
        , UpdateWorkflowOptions
        , Action
        , BatchCreatePartitionResponse
        , BatchDeleteConnectionResponse
        , BatchDeletePartitionResponse
        , BatchDeleteTableResponse
        , BatchDeleteTableVersionResponse
        , BatchGetCrawlersResponse
        , BatchGetDevEndpointsResponse
        , BatchGetJobsResponse
        , BatchGetPartitionResponse
        , BatchGetTriggersResponse
        , BatchGetWorkflowsResponse
        , BatchStopJobRunError
        , BatchStopJobRunResponse
        , BatchStopJobRunSuccessfulSubmission
        , CatalogEncryptionMode(..)
        , CatalogEntry
        , CatalogImportStatus
        , CatalogTarget
        , Classifier
        , CloudWatchEncryption
        , CloudWatchEncryptionMode(..)
        , CodeGenEdge
        , CodeGenNode
        , CodeGenNodeArg
        , Column
        , Condition
        , Connection
        , ConnectionInput
        , ConnectionPasswordEncryption
        , ConnectionPropertyKey(..)
        , ConnectionType(..)
        , ConnectionsList
        , Crawl
        , CrawlState(..)
        , Crawler
        , CrawlerMetrics
        , CrawlerNodeDetails
        , CrawlerState(..)
        , CrawlerTargets
        , CreateClassifierResponse
        , CreateConnectionResponse
        , CreateCrawlerResponse
        , CreateCsvClassifierRequest
        , CreateDatabaseResponse
        , CreateDevEndpointResponse
        , CreateGrokClassifierRequest
        , CreateJobResponse
        , CreateJsonClassifierRequest
        , CreatePartitionResponse
        , CreateScriptResponse
        , CreateSecurityConfigurationResponse
        , CreateTableResponse
        , CreateTriggerResponse
        , CreateUserDefinedFunctionResponse
        , CreateWorkflowResponse
        , CreateXMLClassifierRequest
        , CsvClassifier
        , CsvHeaderOption(..)
        , DataCatalogEncryptionSettings
        , Database
        , DatabaseInput
        , DeleteBehavior(..)
        , DeleteClassifierResponse
        , DeleteConnectionResponse
        , DeleteCrawlerResponse
        , DeleteDatabaseResponse
        , DeleteDevEndpointResponse
        , DeleteJobResponse
        , DeletePartitionResponse
        , DeleteResourcePolicyResponse
        , DeleteSecurityConfigurationResponse
        , DeleteTableResponse
        , DeleteTableVersionResponse
        , DeleteTriggerResponse
        , DeleteUserDefinedFunctionResponse
        , DeleteWorkflowResponse
        , DevEndpoint
        , DevEndpointCustomLibraries
        , DynamoDBTarget
        , Edge
        , EncryptionAtRest
        , EncryptionConfiguration
        , ErrorDetail
        , ExecutionProperty
        , ExistCondition(..)
        , GetCatalogImportStatusResponse
        , GetClassifierResponse
        , GetClassifiersResponse
        , GetConnectionResponse
        , GetConnectionsFilter
        , GetConnectionsResponse
        , GetCrawlerMetricsResponse
        , GetCrawlerResponse
        , GetCrawlersResponse
        , GetDataCatalogEncryptionSettingsResponse
        , GetDatabaseResponse
        , GetDatabasesResponse
        , GetDataflowGraphResponse
        , GetDevEndpointResponse
        , GetDevEndpointsResponse
        , GetJobBookmarkResponse
        , GetJobBookmarksResponse
        , GetJobResponse
        , GetJobRunResponse
        , GetJobRunsResponse
        , GetJobsResponse
        , GetMappingResponse
        , GetPartitionResponse
        , GetPartitionsResponse
        , GetPlanResponse
        , GetResourcePolicyResponse
        , GetSecurityConfigurationResponse
        , GetSecurityConfigurationsResponse
        , GetTableResponse
        , GetTableVersionResponse
        , GetTableVersionsResponse
        , GetTablesResponse
        , GetTagsResponse
        , GetTriggerResponse
        , GetTriggersResponse
        , GetUserDefinedFunctionResponse
        , GetUserDefinedFunctionsResponse
        , GetWorkflowResponse
        , GetWorkflowRunPropertiesResponse
        , GetWorkflowRunResponse
        , GetWorkflowRunsResponse
        , GrokClassifier
        , ImportCatalogToGlueResponse
        , JdbcTarget
        , Job
        , JobBookmarkEntry
        , JobBookmarksEncryption
        , JobBookmarksEncryptionMode(..)
        , JobCommand
        , JobNodeDetails
        , JobRun
        , JobRunState(..)
        , JobUpdate
        , JsonClassifier
        , Language(..)
        , LastCrawlInfo
        , LastCrawlStatus(..)
        , ListCrawlersResponse
        , ListDevEndpointsResponse
        , ListJobsResponse
        , ListTriggersResponse
        , ListWorkflowsResponse
        , Location
        , Logical(..)
        , LogicalOperator(..)
        , MappingEntry
        , Node
        , NodeType(..)
        , NotificationProperty
        , Order
        , Partition
        , PartitionError
        , PartitionInput
        , PartitionValueList
        , PhysicalConnectionRequirements
        , Predecessor
        , Predicate
        , PrincipalType(..)
        , PutDataCatalogEncryptionSettingsResponse
        , PutResourcePolicyResponse
        , PutWorkflowRunPropertiesResponse
        , ResetJobBookmarkResponse
        , ResourceType(..)
        , ResourceUri
        , S3Encryption
        , S3EncryptionMode(..)
        , S3Target
        , Schedule
        , ScheduleState(..)
        , SchemaChangePolicy
        , SecurityConfiguration
        , Segment
        , SerDeInfo
        , SkewedInfo
        , StartCrawlerResponse
        , StartCrawlerScheduleResponse
        , StartJobRunResponse
        , StartTriggerResponse
        , StartWorkflowRunResponse
        , StopCrawlerResponse
        , StopCrawlerScheduleResponse
        , StopTriggerResponse
        , StorageDescriptor
        , Table
        , TableError
        , TableInput
        , TableVersion
        , TableVersionError
        , TagResourceResponse
        , Trigger
        , TriggerNodeDetails
        , TriggerState(..)
        , TriggerType(..)
        , TriggerUpdate
        , UntagResourceResponse
        , UpdateBehavior(..)
        , UpdateClassifierResponse
        , UpdateConnectionResponse
        , UpdateCrawlerResponse
        , UpdateCrawlerScheduleResponse
        , UpdateCsvClassifierRequest
        , UpdateDatabaseResponse
        , UpdateDevEndpointResponse
        , UpdateGrokClassifierRequest
        , UpdateJobResponse
        , UpdateJsonClassifierRequest
        , UpdatePartitionResponse
        , UpdateTableResponse
        , UpdateTriggerResponse
        , UpdateUserDefinedFunctionResponse
        , UpdateWorkflowResponse
        , UpdateXMLClassifierRequest
        , UserDefinedFunction
        , UserDefinedFunctionInput
        , WorkerType(..)
        , Workflow
        , WorkflowGraph
        , WorkflowRun
        , WorkflowRunStatistics
        , WorkflowRunStatus(..)
        , XMLClassifier
        )

{-| <fullname>AWS Glue</fullname> <p>Defines the public endpoint for the AWS Glue service.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [batchCreatePartition](#batchCreatePartition)
* [BatchCreatePartitionOptions](#BatchCreatePartitionOptions)
* [batchDeleteConnection](#batchDeleteConnection)
* [BatchDeleteConnectionOptions](#BatchDeleteConnectionOptions)
* [batchDeletePartition](#batchDeletePartition)
* [BatchDeletePartitionOptions](#BatchDeletePartitionOptions)
* [batchDeleteTable](#batchDeleteTable)
* [BatchDeleteTableOptions](#BatchDeleteTableOptions)
* [batchDeleteTableVersion](#batchDeleteTableVersion)
* [BatchDeleteTableVersionOptions](#BatchDeleteTableVersionOptions)
* [batchGetCrawlers](#batchGetCrawlers)
* [batchGetDevEndpoints](#batchGetDevEndpoints)
* [batchGetJobs](#batchGetJobs)
* [batchGetPartition](#batchGetPartition)
* [BatchGetPartitionOptions](#BatchGetPartitionOptions)
* [batchGetTriggers](#batchGetTriggers)
* [batchGetWorkflows](#batchGetWorkflows)
* [BatchGetWorkflowsOptions](#BatchGetWorkflowsOptions)
* [batchStopJobRun](#batchStopJobRun)
* [createClassifier](#createClassifier)
* [CreateClassifierOptions](#CreateClassifierOptions)
* [createConnection](#createConnection)
* [CreateConnectionOptions](#CreateConnectionOptions)
* [createCrawler](#createCrawler)
* [CreateCrawlerOptions](#CreateCrawlerOptions)
* [createDatabase](#createDatabase)
* [CreateDatabaseOptions](#CreateDatabaseOptions)
* [createDevEndpoint](#createDevEndpoint)
* [CreateDevEndpointOptions](#CreateDevEndpointOptions)
* [createJob](#createJob)
* [CreateJobOptions](#CreateJobOptions)
* [createPartition](#createPartition)
* [CreatePartitionOptions](#CreatePartitionOptions)
* [createScript](#createScript)
* [CreateScriptOptions](#CreateScriptOptions)
* [createSecurityConfiguration](#createSecurityConfiguration)
* [createTable](#createTable)
* [CreateTableOptions](#CreateTableOptions)
* [createTrigger](#createTrigger)
* [CreateTriggerOptions](#CreateTriggerOptions)
* [createUserDefinedFunction](#createUserDefinedFunction)
* [CreateUserDefinedFunctionOptions](#CreateUserDefinedFunctionOptions)
* [createWorkflow](#createWorkflow)
* [CreateWorkflowOptions](#CreateWorkflowOptions)
* [deleteClassifier](#deleteClassifier)
* [deleteConnection](#deleteConnection)
* [DeleteConnectionOptions](#DeleteConnectionOptions)
* [deleteCrawler](#deleteCrawler)
* [deleteDatabase](#deleteDatabase)
* [DeleteDatabaseOptions](#DeleteDatabaseOptions)
* [deleteDevEndpoint](#deleteDevEndpoint)
* [deleteJob](#deleteJob)
* [deletePartition](#deletePartition)
* [DeletePartitionOptions](#DeletePartitionOptions)
* [deleteResourcePolicy](#deleteResourcePolicy)
* [DeleteResourcePolicyOptions](#DeleteResourcePolicyOptions)
* [deleteSecurityConfiguration](#deleteSecurityConfiguration)
* [deleteTable](#deleteTable)
* [DeleteTableOptions](#DeleteTableOptions)
* [deleteTableVersion](#deleteTableVersion)
* [DeleteTableVersionOptions](#DeleteTableVersionOptions)
* [deleteTrigger](#deleteTrigger)
* [deleteUserDefinedFunction](#deleteUserDefinedFunction)
* [DeleteUserDefinedFunctionOptions](#DeleteUserDefinedFunctionOptions)
* [deleteWorkflow](#deleteWorkflow)
* [getCatalogImportStatus](#getCatalogImportStatus)
* [GetCatalogImportStatusOptions](#GetCatalogImportStatusOptions)
* [getClassifier](#getClassifier)
* [getClassifiers](#getClassifiers)
* [GetClassifiersOptions](#GetClassifiersOptions)
* [getConnection](#getConnection)
* [GetConnectionOptions](#GetConnectionOptions)
* [getConnections](#getConnections)
* [GetConnectionsOptions](#GetConnectionsOptions)
* [getCrawler](#getCrawler)
* [getCrawlerMetrics](#getCrawlerMetrics)
* [GetCrawlerMetricsOptions](#GetCrawlerMetricsOptions)
* [getCrawlers](#getCrawlers)
* [GetCrawlersOptions](#GetCrawlersOptions)
* [getDataCatalogEncryptionSettings](#getDataCatalogEncryptionSettings)
* [GetDataCatalogEncryptionSettingsOptions](#GetDataCatalogEncryptionSettingsOptions)
* [getDatabase](#getDatabase)
* [GetDatabaseOptions](#GetDatabaseOptions)
* [getDatabases](#getDatabases)
* [GetDatabasesOptions](#GetDatabasesOptions)
* [getDataflowGraph](#getDataflowGraph)
* [GetDataflowGraphOptions](#GetDataflowGraphOptions)
* [getDevEndpoint](#getDevEndpoint)
* [getDevEndpoints](#getDevEndpoints)
* [GetDevEndpointsOptions](#GetDevEndpointsOptions)
* [getJob](#getJob)
* [getJobBookmark](#getJobBookmark)
* [GetJobBookmarkOptions](#GetJobBookmarkOptions)
* [getJobBookmarks](#getJobBookmarks)
* [GetJobBookmarksOptions](#GetJobBookmarksOptions)
* [getJobRun](#getJobRun)
* [GetJobRunOptions](#GetJobRunOptions)
* [getJobRuns](#getJobRuns)
* [GetJobRunsOptions](#GetJobRunsOptions)
* [getJobs](#getJobs)
* [GetJobsOptions](#GetJobsOptions)
* [getMapping](#getMapping)
* [GetMappingOptions](#GetMappingOptions)
* [getPartition](#getPartition)
* [GetPartitionOptions](#GetPartitionOptions)
* [getPartitions](#getPartitions)
* [GetPartitionsOptions](#GetPartitionsOptions)
* [getPlan](#getPlan)
* [GetPlanOptions](#GetPlanOptions)
* [getResourcePolicy](#getResourcePolicy)
* [getSecurityConfiguration](#getSecurityConfiguration)
* [getSecurityConfigurations](#getSecurityConfigurations)
* [GetSecurityConfigurationsOptions](#GetSecurityConfigurationsOptions)
* [getTable](#getTable)
* [GetTableOptions](#GetTableOptions)
* [getTableVersion](#getTableVersion)
* [GetTableVersionOptions](#GetTableVersionOptions)
* [getTableVersions](#getTableVersions)
* [GetTableVersionsOptions](#GetTableVersionsOptions)
* [getTables](#getTables)
* [GetTablesOptions](#GetTablesOptions)
* [getTags](#getTags)
* [getTrigger](#getTrigger)
* [getTriggers](#getTriggers)
* [GetTriggersOptions](#GetTriggersOptions)
* [getUserDefinedFunction](#getUserDefinedFunction)
* [GetUserDefinedFunctionOptions](#GetUserDefinedFunctionOptions)
* [getUserDefinedFunctions](#getUserDefinedFunctions)
* [GetUserDefinedFunctionsOptions](#GetUserDefinedFunctionsOptions)
* [getWorkflow](#getWorkflow)
* [GetWorkflowOptions](#GetWorkflowOptions)
* [getWorkflowRun](#getWorkflowRun)
* [GetWorkflowRunOptions](#GetWorkflowRunOptions)
* [getWorkflowRunProperties](#getWorkflowRunProperties)
* [getWorkflowRuns](#getWorkflowRuns)
* [GetWorkflowRunsOptions](#GetWorkflowRunsOptions)
* [importCatalogToGlue](#importCatalogToGlue)
* [ImportCatalogToGlueOptions](#ImportCatalogToGlueOptions)
* [listCrawlers](#listCrawlers)
* [ListCrawlersOptions](#ListCrawlersOptions)
* [listDevEndpoints](#listDevEndpoints)
* [ListDevEndpointsOptions](#ListDevEndpointsOptions)
* [listJobs](#listJobs)
* [ListJobsOptions](#ListJobsOptions)
* [listTriggers](#listTriggers)
* [ListTriggersOptions](#ListTriggersOptions)
* [listWorkflows](#listWorkflows)
* [ListWorkflowsOptions](#ListWorkflowsOptions)
* [putDataCatalogEncryptionSettings](#putDataCatalogEncryptionSettings)
* [PutDataCatalogEncryptionSettingsOptions](#PutDataCatalogEncryptionSettingsOptions)
* [putResourcePolicy](#putResourcePolicy)
* [PutResourcePolicyOptions](#PutResourcePolicyOptions)
* [putWorkflowRunProperties](#putWorkflowRunProperties)
* [resetJobBookmark](#resetJobBookmark)
* [ResetJobBookmarkOptions](#ResetJobBookmarkOptions)
* [startCrawler](#startCrawler)
* [startCrawlerSchedule](#startCrawlerSchedule)
* [startJobRun](#startJobRun)
* [StartJobRunOptions](#StartJobRunOptions)
* [startTrigger](#startTrigger)
* [startWorkflowRun](#startWorkflowRun)
* [stopCrawler](#stopCrawler)
* [stopCrawlerSchedule](#stopCrawlerSchedule)
* [stopTrigger](#stopTrigger)
* [tagResource](#tagResource)
* [untagResource](#untagResource)
* [updateClassifier](#updateClassifier)
* [UpdateClassifierOptions](#UpdateClassifierOptions)
* [updateConnection](#updateConnection)
* [UpdateConnectionOptions](#UpdateConnectionOptions)
* [updateCrawler](#updateCrawler)
* [UpdateCrawlerOptions](#UpdateCrawlerOptions)
* [updateCrawlerSchedule](#updateCrawlerSchedule)
* [UpdateCrawlerScheduleOptions](#UpdateCrawlerScheduleOptions)
* [updateDatabase](#updateDatabase)
* [UpdateDatabaseOptions](#UpdateDatabaseOptions)
* [updateDevEndpoint](#updateDevEndpoint)
* [UpdateDevEndpointOptions](#UpdateDevEndpointOptions)
* [updateJob](#updateJob)
* [updatePartition](#updatePartition)
* [UpdatePartitionOptions](#UpdatePartitionOptions)
* [updateTable](#updateTable)
* [UpdateTableOptions](#UpdateTableOptions)
* [updateTrigger](#updateTrigger)
* [updateUserDefinedFunction](#updateUserDefinedFunction)
* [UpdateUserDefinedFunctionOptions](#UpdateUserDefinedFunctionOptions)
* [updateWorkflow](#updateWorkflow)
* [UpdateWorkflowOptions](#UpdateWorkflowOptions)


@docs batchCreatePartition,BatchCreatePartitionOptions,batchDeleteConnection,BatchDeleteConnectionOptions,batchDeletePartition,BatchDeletePartitionOptions,batchDeleteTable,BatchDeleteTableOptions,batchDeleteTableVersion,BatchDeleteTableVersionOptions,batchGetCrawlers,batchGetDevEndpoints,batchGetJobs,batchGetPartition,BatchGetPartitionOptions,batchGetTriggers,batchGetWorkflows,BatchGetWorkflowsOptions,batchStopJobRun,createClassifier,CreateClassifierOptions,createConnection,CreateConnectionOptions,createCrawler,CreateCrawlerOptions,createDatabase,CreateDatabaseOptions,createDevEndpoint,CreateDevEndpointOptions,createJob,CreateJobOptions,createPartition,CreatePartitionOptions,createScript,CreateScriptOptions,createSecurityConfiguration,createTable,CreateTableOptions,createTrigger,CreateTriggerOptions,createUserDefinedFunction,CreateUserDefinedFunctionOptions,createWorkflow,CreateWorkflowOptions,deleteClassifier,deleteConnection,DeleteConnectionOptions,deleteCrawler,deleteDatabase,DeleteDatabaseOptions,deleteDevEndpoint,deleteJob,deletePartition,DeletePartitionOptions,deleteResourcePolicy,DeleteResourcePolicyOptions,deleteSecurityConfiguration,deleteTable,DeleteTableOptions,deleteTableVersion,DeleteTableVersionOptions,deleteTrigger,deleteUserDefinedFunction,DeleteUserDefinedFunctionOptions,deleteWorkflow,getCatalogImportStatus,GetCatalogImportStatusOptions,getClassifier,getClassifiers,GetClassifiersOptions,getConnection,GetConnectionOptions,getConnections,GetConnectionsOptions,getCrawler,getCrawlerMetrics,GetCrawlerMetricsOptions,getCrawlers,GetCrawlersOptions,getDataCatalogEncryptionSettings,GetDataCatalogEncryptionSettingsOptions,getDatabase,GetDatabaseOptions,getDatabases,GetDatabasesOptions,getDataflowGraph,GetDataflowGraphOptions,getDevEndpoint,getDevEndpoints,GetDevEndpointsOptions,getJob,getJobBookmark,GetJobBookmarkOptions,getJobBookmarks,GetJobBookmarksOptions,getJobRun,GetJobRunOptions,getJobRuns,GetJobRunsOptions,getJobs,GetJobsOptions,getMapping,GetMappingOptions,getPartition,GetPartitionOptions,getPartitions,GetPartitionsOptions,getPlan,GetPlanOptions,getResourcePolicy,getSecurityConfiguration,getSecurityConfigurations,GetSecurityConfigurationsOptions,getTable,GetTableOptions,getTableVersion,GetTableVersionOptions,getTableVersions,GetTableVersionsOptions,getTables,GetTablesOptions,getTags,getTrigger,getTriggers,GetTriggersOptions,getUserDefinedFunction,GetUserDefinedFunctionOptions,getUserDefinedFunctions,GetUserDefinedFunctionsOptions,getWorkflow,GetWorkflowOptions,getWorkflowRun,GetWorkflowRunOptions,getWorkflowRunProperties,getWorkflowRuns,GetWorkflowRunsOptions,importCatalogToGlue,ImportCatalogToGlueOptions,listCrawlers,ListCrawlersOptions,listDevEndpoints,ListDevEndpointsOptions,listJobs,ListJobsOptions,listTriggers,ListTriggersOptions,listWorkflows,ListWorkflowsOptions,putDataCatalogEncryptionSettings,PutDataCatalogEncryptionSettingsOptions,putResourcePolicy,PutResourcePolicyOptions,putWorkflowRunProperties,resetJobBookmark,ResetJobBookmarkOptions,startCrawler,startCrawlerSchedule,startJobRun,StartJobRunOptions,startTrigger,startWorkflowRun,stopCrawler,stopCrawlerSchedule,stopTrigger,tagResource,untagResource,updateClassifier,UpdateClassifierOptions,updateConnection,UpdateConnectionOptions,updateCrawler,UpdateCrawlerOptions,updateCrawlerSchedule,UpdateCrawlerScheduleOptions,updateDatabase,UpdateDatabaseOptions,updateDevEndpoint,UpdateDevEndpointOptions,updateJob,updatePartition,UpdatePartitionOptions,updateTable,UpdateTableOptions,updateTrigger,updateUserDefinedFunction,UpdateUserDefinedFunctionOptions,updateWorkflow,UpdateWorkflowOptions

## Responses

* [BatchCreatePartitionResponse](#BatchCreatePartitionResponse)
* [BatchDeleteConnectionResponse](#BatchDeleteConnectionResponse)
* [BatchDeletePartitionResponse](#BatchDeletePartitionResponse)
* [BatchDeleteTableResponse](#BatchDeleteTableResponse)
* [BatchDeleteTableVersionResponse](#BatchDeleteTableVersionResponse)
* [BatchGetCrawlersResponse](#BatchGetCrawlersResponse)
* [BatchGetDevEndpointsResponse](#BatchGetDevEndpointsResponse)
* [BatchGetJobsResponse](#BatchGetJobsResponse)
* [BatchGetPartitionResponse](#BatchGetPartitionResponse)
* [BatchGetTriggersResponse](#BatchGetTriggersResponse)
* [BatchGetWorkflowsResponse](#BatchGetWorkflowsResponse)
* [BatchStopJobRunResponse](#BatchStopJobRunResponse)
* [CreateClassifierResponse](#CreateClassifierResponse)
* [CreateConnectionResponse](#CreateConnectionResponse)
* [CreateCrawlerResponse](#CreateCrawlerResponse)
* [CreateDatabaseResponse](#CreateDatabaseResponse)
* [CreateDevEndpointResponse](#CreateDevEndpointResponse)
* [CreateJobResponse](#CreateJobResponse)
* [CreatePartitionResponse](#CreatePartitionResponse)
* [CreateScriptResponse](#CreateScriptResponse)
* [CreateSecurityConfigurationResponse](#CreateSecurityConfigurationResponse)
* [CreateTableResponse](#CreateTableResponse)
* [CreateTriggerResponse](#CreateTriggerResponse)
* [CreateUserDefinedFunctionResponse](#CreateUserDefinedFunctionResponse)
* [CreateWorkflowResponse](#CreateWorkflowResponse)
* [DeleteClassifierResponse](#DeleteClassifierResponse)
* [DeleteConnectionResponse](#DeleteConnectionResponse)
* [DeleteCrawlerResponse](#DeleteCrawlerResponse)
* [DeleteDatabaseResponse](#DeleteDatabaseResponse)
* [DeleteDevEndpointResponse](#DeleteDevEndpointResponse)
* [DeleteJobResponse](#DeleteJobResponse)
* [DeletePartitionResponse](#DeletePartitionResponse)
* [DeleteResourcePolicyResponse](#DeleteResourcePolicyResponse)
* [DeleteSecurityConfigurationResponse](#DeleteSecurityConfigurationResponse)
* [DeleteTableResponse](#DeleteTableResponse)
* [DeleteTableVersionResponse](#DeleteTableVersionResponse)
* [DeleteTriggerResponse](#DeleteTriggerResponse)
* [DeleteUserDefinedFunctionResponse](#DeleteUserDefinedFunctionResponse)
* [DeleteWorkflowResponse](#DeleteWorkflowResponse)
* [GetCatalogImportStatusResponse](#GetCatalogImportStatusResponse)
* [GetClassifierResponse](#GetClassifierResponse)
* [GetClassifiersResponse](#GetClassifiersResponse)
* [GetConnectionResponse](#GetConnectionResponse)
* [GetConnectionsResponse](#GetConnectionsResponse)
* [GetCrawlerMetricsResponse](#GetCrawlerMetricsResponse)
* [GetCrawlerResponse](#GetCrawlerResponse)
* [GetCrawlersResponse](#GetCrawlersResponse)
* [GetDataCatalogEncryptionSettingsResponse](#GetDataCatalogEncryptionSettingsResponse)
* [GetDatabaseResponse](#GetDatabaseResponse)
* [GetDatabasesResponse](#GetDatabasesResponse)
* [GetDataflowGraphResponse](#GetDataflowGraphResponse)
* [GetDevEndpointResponse](#GetDevEndpointResponse)
* [GetDevEndpointsResponse](#GetDevEndpointsResponse)
* [GetJobBookmarkResponse](#GetJobBookmarkResponse)
* [GetJobBookmarksResponse](#GetJobBookmarksResponse)
* [GetJobResponse](#GetJobResponse)
* [GetJobRunResponse](#GetJobRunResponse)
* [GetJobRunsResponse](#GetJobRunsResponse)
* [GetJobsResponse](#GetJobsResponse)
* [GetMappingResponse](#GetMappingResponse)
* [GetPartitionResponse](#GetPartitionResponse)
* [GetPartitionsResponse](#GetPartitionsResponse)
* [GetPlanResponse](#GetPlanResponse)
* [GetResourcePolicyResponse](#GetResourcePolicyResponse)
* [GetSecurityConfigurationResponse](#GetSecurityConfigurationResponse)
* [GetSecurityConfigurationsResponse](#GetSecurityConfigurationsResponse)
* [GetTableResponse](#GetTableResponse)
* [GetTableVersionResponse](#GetTableVersionResponse)
* [GetTableVersionsResponse](#GetTableVersionsResponse)
* [GetTablesResponse](#GetTablesResponse)
* [GetTagsResponse](#GetTagsResponse)
* [GetTriggerResponse](#GetTriggerResponse)
* [GetTriggersResponse](#GetTriggersResponse)
* [GetUserDefinedFunctionResponse](#GetUserDefinedFunctionResponse)
* [GetUserDefinedFunctionsResponse](#GetUserDefinedFunctionsResponse)
* [GetWorkflowResponse](#GetWorkflowResponse)
* [GetWorkflowRunPropertiesResponse](#GetWorkflowRunPropertiesResponse)
* [GetWorkflowRunResponse](#GetWorkflowRunResponse)
* [GetWorkflowRunsResponse](#GetWorkflowRunsResponse)
* [ImportCatalogToGlueResponse](#ImportCatalogToGlueResponse)
* [ListCrawlersResponse](#ListCrawlersResponse)
* [ListDevEndpointsResponse](#ListDevEndpointsResponse)
* [ListJobsResponse](#ListJobsResponse)
* [ListTriggersResponse](#ListTriggersResponse)
* [ListWorkflowsResponse](#ListWorkflowsResponse)
* [PutDataCatalogEncryptionSettingsResponse](#PutDataCatalogEncryptionSettingsResponse)
* [PutResourcePolicyResponse](#PutResourcePolicyResponse)
* [PutWorkflowRunPropertiesResponse](#PutWorkflowRunPropertiesResponse)
* [ResetJobBookmarkResponse](#ResetJobBookmarkResponse)
* [StartCrawlerResponse](#StartCrawlerResponse)
* [StartCrawlerScheduleResponse](#StartCrawlerScheduleResponse)
* [StartJobRunResponse](#StartJobRunResponse)
* [StartTriggerResponse](#StartTriggerResponse)
* [StartWorkflowRunResponse](#StartWorkflowRunResponse)
* [StopCrawlerResponse](#StopCrawlerResponse)
* [StopCrawlerScheduleResponse](#StopCrawlerScheduleResponse)
* [StopTriggerResponse](#StopTriggerResponse)
* [TagResourceResponse](#TagResourceResponse)
* [UntagResourceResponse](#UntagResourceResponse)
* [UpdateClassifierResponse](#UpdateClassifierResponse)
* [UpdateConnectionResponse](#UpdateConnectionResponse)
* [UpdateCrawlerResponse](#UpdateCrawlerResponse)
* [UpdateCrawlerScheduleResponse](#UpdateCrawlerScheduleResponse)
* [UpdateDatabaseResponse](#UpdateDatabaseResponse)
* [UpdateDevEndpointResponse](#UpdateDevEndpointResponse)
* [UpdateJobResponse](#UpdateJobResponse)
* [UpdatePartitionResponse](#UpdatePartitionResponse)
* [UpdateTableResponse](#UpdateTableResponse)
* [UpdateTriggerResponse](#UpdateTriggerResponse)
* [UpdateUserDefinedFunctionResponse](#UpdateUserDefinedFunctionResponse)
* [UpdateWorkflowResponse](#UpdateWorkflowResponse)


@docs BatchCreatePartitionResponse,BatchDeleteConnectionResponse,BatchDeletePartitionResponse,BatchDeleteTableResponse,BatchDeleteTableVersionResponse,BatchGetCrawlersResponse,BatchGetDevEndpointsResponse,BatchGetJobsResponse,BatchGetPartitionResponse,BatchGetTriggersResponse,BatchGetWorkflowsResponse,BatchStopJobRunResponse,CreateClassifierResponse,CreateConnectionResponse,CreateCrawlerResponse,CreateDatabaseResponse,CreateDevEndpointResponse,CreateJobResponse,CreatePartitionResponse,CreateScriptResponse,CreateSecurityConfigurationResponse,CreateTableResponse,CreateTriggerResponse,CreateUserDefinedFunctionResponse,CreateWorkflowResponse,DeleteClassifierResponse,DeleteConnectionResponse,DeleteCrawlerResponse,DeleteDatabaseResponse,DeleteDevEndpointResponse,DeleteJobResponse,DeletePartitionResponse,DeleteResourcePolicyResponse,DeleteSecurityConfigurationResponse,DeleteTableResponse,DeleteTableVersionResponse,DeleteTriggerResponse,DeleteUserDefinedFunctionResponse,DeleteWorkflowResponse,GetCatalogImportStatusResponse,GetClassifierResponse,GetClassifiersResponse,GetConnectionResponse,GetConnectionsResponse,GetCrawlerMetricsResponse,GetCrawlerResponse,GetCrawlersResponse,GetDataCatalogEncryptionSettingsResponse,GetDatabaseResponse,GetDatabasesResponse,GetDataflowGraphResponse,GetDevEndpointResponse,GetDevEndpointsResponse,GetJobBookmarkResponse,GetJobBookmarksResponse,GetJobResponse,GetJobRunResponse,GetJobRunsResponse,GetJobsResponse,GetMappingResponse,GetPartitionResponse,GetPartitionsResponse,GetPlanResponse,GetResourcePolicyResponse,GetSecurityConfigurationResponse,GetSecurityConfigurationsResponse,GetTableResponse,GetTableVersionResponse,GetTableVersionsResponse,GetTablesResponse,GetTagsResponse,GetTriggerResponse,GetTriggersResponse,GetUserDefinedFunctionResponse,GetUserDefinedFunctionsResponse,GetWorkflowResponse,GetWorkflowRunPropertiesResponse,GetWorkflowRunResponse,GetWorkflowRunsResponse,ImportCatalogToGlueResponse,ListCrawlersResponse,ListDevEndpointsResponse,ListJobsResponse,ListTriggersResponse,ListWorkflowsResponse,PutDataCatalogEncryptionSettingsResponse,PutResourcePolicyResponse,PutWorkflowRunPropertiesResponse,ResetJobBookmarkResponse,StartCrawlerResponse,StartCrawlerScheduleResponse,StartJobRunResponse,StartTriggerResponse,StartWorkflowRunResponse,StopCrawlerResponse,StopCrawlerScheduleResponse,StopTriggerResponse,TagResourceResponse,UntagResourceResponse,UpdateClassifierResponse,UpdateConnectionResponse,UpdateCrawlerResponse,UpdateCrawlerScheduleResponse,UpdateDatabaseResponse,UpdateDevEndpointResponse,UpdateJobResponse,UpdatePartitionResponse,UpdateTableResponse,UpdateTriggerResponse,UpdateUserDefinedFunctionResponse,UpdateWorkflowResponse

## Records

* [Action](#Action)
* [BatchStopJobRunError](#BatchStopJobRunError)
* [BatchStopJobRunSuccessfulSubmission](#BatchStopJobRunSuccessfulSubmission)
* [CatalogEntry](#CatalogEntry)
* [CatalogImportStatus](#CatalogImportStatus)
* [CatalogTarget](#CatalogTarget)
* [Classifier](#Classifier)
* [CloudWatchEncryption](#CloudWatchEncryption)
* [CodeGenEdge](#CodeGenEdge)
* [CodeGenNode](#CodeGenNode)
* [CodeGenNodeArg](#CodeGenNodeArg)
* [Column](#Column)
* [Condition](#Condition)
* [Connection](#Connection)
* [ConnectionInput](#ConnectionInput)
* [ConnectionPasswordEncryption](#ConnectionPasswordEncryption)
* [ConnectionsList](#ConnectionsList)
* [Crawl](#Crawl)
* [Crawler](#Crawler)
* [CrawlerMetrics](#CrawlerMetrics)
* [CrawlerNodeDetails](#CrawlerNodeDetails)
* [CrawlerTargets](#CrawlerTargets)
* [CreateCsvClassifierRequest](#CreateCsvClassifierRequest)
* [CreateGrokClassifierRequest](#CreateGrokClassifierRequest)
* [CreateJsonClassifierRequest](#CreateJsonClassifierRequest)
* [CreateXMLClassifierRequest](#CreateXMLClassifierRequest)
* [CsvClassifier](#CsvClassifier)
* [DataCatalogEncryptionSettings](#DataCatalogEncryptionSettings)
* [Database](#Database)
* [DatabaseInput](#DatabaseInput)
* [DevEndpoint](#DevEndpoint)
* [DevEndpointCustomLibraries](#DevEndpointCustomLibraries)
* [DynamoDBTarget](#DynamoDBTarget)
* [Edge](#Edge)
* [EncryptionAtRest](#EncryptionAtRest)
* [EncryptionConfiguration](#EncryptionConfiguration)
* [ErrorDetail](#ErrorDetail)
* [ExecutionProperty](#ExecutionProperty)
* [GetConnectionsFilter](#GetConnectionsFilter)
* [GrokClassifier](#GrokClassifier)
* [JdbcTarget](#JdbcTarget)
* [Job](#Job)
* [JobBookmarkEntry](#JobBookmarkEntry)
* [JobBookmarksEncryption](#JobBookmarksEncryption)
* [JobCommand](#JobCommand)
* [JobNodeDetails](#JobNodeDetails)
* [JobRun](#JobRun)
* [JobUpdate](#JobUpdate)
* [JsonClassifier](#JsonClassifier)
* [LastCrawlInfo](#LastCrawlInfo)
* [Location](#Location)
* [MappingEntry](#MappingEntry)
* [Node](#Node)
* [NotificationProperty](#NotificationProperty)
* [Order](#Order)
* [Partition](#Partition)
* [PartitionError](#PartitionError)
* [PartitionInput](#PartitionInput)
* [PartitionValueList](#PartitionValueList)
* [PhysicalConnectionRequirements](#PhysicalConnectionRequirements)
* [Predecessor](#Predecessor)
* [Predicate](#Predicate)
* [ResourceUri](#ResourceUri)
* [S3Encryption](#S3Encryption)
* [S3Target](#S3Target)
* [Schedule](#Schedule)
* [SchemaChangePolicy](#SchemaChangePolicy)
* [SecurityConfiguration](#SecurityConfiguration)
* [Segment](#Segment)
* [SerDeInfo](#SerDeInfo)
* [SkewedInfo](#SkewedInfo)
* [StorageDescriptor](#StorageDescriptor)
* [Table](#Table)
* [TableError](#TableError)
* [TableInput](#TableInput)
* [TableVersion](#TableVersion)
* [TableVersionError](#TableVersionError)
* [Trigger](#Trigger)
* [TriggerNodeDetails](#TriggerNodeDetails)
* [TriggerUpdate](#TriggerUpdate)
* [UpdateCsvClassifierRequest](#UpdateCsvClassifierRequest)
* [UpdateGrokClassifierRequest](#UpdateGrokClassifierRequest)
* [UpdateJsonClassifierRequest](#UpdateJsonClassifierRequest)
* [UpdateXMLClassifierRequest](#UpdateXMLClassifierRequest)
* [UserDefinedFunction](#UserDefinedFunction)
* [UserDefinedFunctionInput](#UserDefinedFunctionInput)
* [Workflow](#Workflow)
* [WorkflowGraph](#WorkflowGraph)
* [WorkflowRun](#WorkflowRun)
* [WorkflowRunStatistics](#WorkflowRunStatistics)
* [XMLClassifier](#XMLClassifier)


@docs Action,BatchStopJobRunError,BatchStopJobRunSuccessfulSubmission,CatalogEntry,CatalogImportStatus,CatalogTarget,Classifier,CloudWatchEncryption,CodeGenEdge,CodeGenNode,CodeGenNodeArg,Column,Condition,Connection,ConnectionInput,ConnectionPasswordEncryption,ConnectionsList,Crawl,Crawler,CrawlerMetrics,CrawlerNodeDetails,CrawlerTargets,CreateCsvClassifierRequest,CreateGrokClassifierRequest,CreateJsonClassifierRequest,CreateXMLClassifierRequest,CsvClassifier,DataCatalogEncryptionSettings,Database,DatabaseInput,DevEndpoint,DevEndpointCustomLibraries,DynamoDBTarget,Edge,EncryptionAtRest,EncryptionConfiguration,ErrorDetail,ExecutionProperty,GetConnectionsFilter,GrokClassifier,JdbcTarget,Job,JobBookmarkEntry,JobBookmarksEncryption,JobCommand,JobNodeDetails,JobRun,JobUpdate,JsonClassifier,LastCrawlInfo,Location,MappingEntry,Node,NotificationProperty,Order,Partition,PartitionError,PartitionInput,PartitionValueList,PhysicalConnectionRequirements,Predecessor,Predicate,ResourceUri,S3Encryption,S3Target,Schedule,SchemaChangePolicy,SecurityConfiguration,Segment,SerDeInfo,SkewedInfo,StorageDescriptor,Table,TableError,TableInput,TableVersion,TableVersionError,Trigger,TriggerNodeDetails,TriggerUpdate,UpdateCsvClassifierRequest,UpdateGrokClassifierRequest,UpdateJsonClassifierRequest,UpdateXMLClassifierRequest,UserDefinedFunction,UserDefinedFunctionInput,Workflow,WorkflowGraph,WorkflowRun,WorkflowRunStatistics,XMLClassifier

## Unions

* [CatalogEncryptionMode](#CatalogEncryptionMode)
* [CloudWatchEncryptionMode](#CloudWatchEncryptionMode)
* [ConnectionPropertyKey](#ConnectionPropertyKey)
* [ConnectionType](#ConnectionType)
* [CrawlState](#CrawlState)
* [CrawlerState](#CrawlerState)
* [CsvHeaderOption](#CsvHeaderOption)
* [DeleteBehavior](#DeleteBehavior)
* [ExistCondition](#ExistCondition)
* [JobBookmarksEncryptionMode](#JobBookmarksEncryptionMode)
* [JobRunState](#JobRunState)
* [Language](#Language)
* [LastCrawlStatus](#LastCrawlStatus)
* [Logical](#Logical)
* [LogicalOperator](#LogicalOperator)
* [NodeType](#NodeType)
* [PrincipalType](#PrincipalType)
* [ResourceType](#ResourceType)
* [S3EncryptionMode](#S3EncryptionMode)
* [ScheduleState](#ScheduleState)
* [TriggerState](#TriggerState)
* [TriggerType](#TriggerType)
* [UpdateBehavior](#UpdateBehavior)
* [WorkerType](#WorkerType)
* [WorkflowRunStatus](#WorkflowRunStatus)


@docs CatalogEncryptionMode,CloudWatchEncryptionMode,ConnectionPropertyKey,ConnectionType,CrawlState,CrawlerState,CsvHeaderOption,DeleteBehavior,ExistCondition,JobBookmarksEncryptionMode,JobRunState,Language,LastCrawlStatus,Logical,LogicalOperator,NodeType,PrincipalType,ResourceType,S3EncryptionMode,ScheduleState,TriggerState,TriggerType,UpdateBehavior,WorkerType,WorkflowRunStatus

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
        "glue"
        "2017-03-31"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWSGlue")



-- OPERATIONS

{-| <p>Creates one or more partitions in a batch operation.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `tableName` __:__ `String`
* `partitionInputList` __:__ `(List PartitionInput)`


-}

batchCreatePartition :
  
    String ->
  
    String ->
  
    (List PartitionInput) ->
  
  
    ( BatchCreatePartitionOptions -> BatchCreatePartitionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchCreatePartitionResponse)

batchCreatePartition databaseName tableName partitionInputList setOptions =
    
    let
        requestInput = BatchCreatePartitionRequest
            
            options.catalogId
            
            databaseName
            
            tableName
            
            partitionInputList
            
        
        options = setOptions (BatchCreatePartitionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchCreatePartitionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchCreatePartition"
                
                (AWS.Core.Decode.ResultDecoder "BatchCreatePartitionResponse" batchCreatePartitionResponseDecoder)
                
            )



{-| Options for a batchCreatePartition request
-}
type alias BatchCreatePartitionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Deletes a list of connection definitions from the Data Catalog.</p>

__Required Parameters__

* `connectionNameList` __:__ `(List String)`


-}

batchDeleteConnection :
  
    (List String) ->
  
  
    ( BatchDeleteConnectionOptions -> BatchDeleteConnectionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchDeleteConnectionResponse)

batchDeleteConnection connectionNameList setOptions =
    
    let
        requestInput = BatchDeleteConnectionRequest
            
            options.catalogId
            
            connectionNameList
            
        
        options = setOptions (BatchDeleteConnectionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchDeleteConnectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchDeleteConnection"
                
                (AWS.Core.Decode.ResultDecoder "BatchDeleteConnectionResponse" batchDeleteConnectionResponseDecoder)
                
            )



{-| Options for a batchDeleteConnection request
-}
type alias BatchDeleteConnectionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Deletes one or more partitions in a batch operation.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `tableName` __:__ `String`
* `partitionsToDelete` __:__ `(List PartitionValueList)`


-}

batchDeletePartition :
  
    String ->
  
    String ->
  
    (List PartitionValueList) ->
  
  
    ( BatchDeletePartitionOptions -> BatchDeletePartitionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchDeletePartitionResponse)

batchDeletePartition databaseName tableName partitionsToDelete setOptions =
    
    let
        requestInput = BatchDeletePartitionRequest
            
            options.catalogId
            
            databaseName
            
            tableName
            
            partitionsToDelete
            
        
        options = setOptions (BatchDeletePartitionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchDeletePartitionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchDeletePartition"
                
                (AWS.Core.Decode.ResultDecoder "BatchDeletePartitionResponse" batchDeletePartitionResponseDecoder)
                
            )



{-| Options for a batchDeletePartition request
-}
type alias BatchDeletePartitionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Deletes multiple tables at once.</p> <note> <p>After completing this operation, you will no longer have access to the table versions and partitions that belong to the deleted table. AWS Glue deletes these "orphaned" resources asynchronously in a timely manner, at the discretion of the service.</p> <p>To ensure immediate deletion of all related resources, before calling <code>BatchDeleteTable</code>, use <code>DeleteTableVersion</code> or <code>BatchDeleteTableVersion</code>, and <code>DeletePartition</code> or <code>BatchDeletePartition</code>, to delete any resources that belong to the table.</p> </note>

__Required Parameters__

* `databaseName` __:__ `String`
* `tablesToDelete` __:__ `(List String)`


-}

batchDeleteTable :
  
    String ->
  
    (List String) ->
  
  
    ( BatchDeleteTableOptions -> BatchDeleteTableOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchDeleteTableResponse)

batchDeleteTable databaseName tablesToDelete setOptions =
    
    let
        requestInput = BatchDeleteTableRequest
            
            options.catalogId
            
            databaseName
            
            tablesToDelete
            
        
        options = setOptions (BatchDeleteTableOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchDeleteTableRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchDeleteTable"
                
                (AWS.Core.Decode.ResultDecoder "BatchDeleteTableResponse" batchDeleteTableResponseDecoder)
                
            )



{-| Options for a batchDeleteTable request
-}
type alias BatchDeleteTableOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Deletes a specified batch of versions of a table.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `tableName` __:__ `String`
* `versionIds` __:__ `(List String)`


-}

batchDeleteTableVersion :
  
    String ->
  
    String ->
  
    (List String) ->
  
  
    ( BatchDeleteTableVersionOptions -> BatchDeleteTableVersionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchDeleteTableVersionResponse)

batchDeleteTableVersion databaseName tableName versionIds setOptions =
    
    let
        requestInput = BatchDeleteTableVersionRequest
            
            options.catalogId
            
            databaseName
            
            tableName
            
            versionIds
            
        
        options = setOptions (BatchDeleteTableVersionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchDeleteTableVersionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchDeleteTableVersion"
                
                (AWS.Core.Decode.ResultDecoder "BatchDeleteTableVersionResponse" batchDeleteTableVersionResponseDecoder)
                
            )



{-| Options for a batchDeleteTableVersion request
-}
type alias BatchDeleteTableVersionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Returns a list of resource metadata for a given list of crawler names. After calling the <code>ListCrawlers</code> operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.</p>

__Required Parameters__

* `crawlerNames` __:__ `(List String)`


-}

batchGetCrawlers :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetCrawlersResponse)

batchGetCrawlers crawlerNames =
    
    let
        requestInput = BatchGetCrawlersRequest
            
            crawlerNames
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchGetCrawlersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchGetCrawlers"
                
                (AWS.Core.Decode.ResultDecoder "BatchGetCrawlersResponse" batchGetCrawlersResponseDecoder)
                
            )





{-| <p>Returns a list of resource metadata for a given list of development endpoint names. After calling the <code>ListDevEndpoints</code> operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.</p>

__Required Parameters__

* `devEndpointNames` __:__ `(List String)`


-}

batchGetDevEndpoints :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetDevEndpointsResponse)

batchGetDevEndpoints devEndpointNames =
    
    let
        requestInput = BatchGetDevEndpointsRequest
            
            devEndpointNames
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchGetDevEndpointsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchGetDevEndpoints"
                
                (AWS.Core.Decode.ResultDecoder "BatchGetDevEndpointsResponse" batchGetDevEndpointsResponseDecoder)
                
            )





{-| <p>Returns a list of resource metadata for a given list of job names. After calling the <code>ListJobs</code> operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags. </p>

__Required Parameters__

* `jobNames` __:__ `(List String)`


-}

batchGetJobs :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetJobsResponse)

batchGetJobs jobNames =
    
    let
        requestInput = BatchGetJobsRequest
            
            jobNames
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchGetJobsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchGetJobs"
                
                (AWS.Core.Decode.ResultDecoder "BatchGetJobsResponse" batchGetJobsResponseDecoder)
                
            )





{-| <p>Retrieves partitions in a batch request.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `tableName` __:__ `String`
* `partitionsToGet` __:__ `(List PartitionValueList)`


-}

batchGetPartition :
  
    String ->
  
    String ->
  
    (List PartitionValueList) ->
  
  
    ( BatchGetPartitionOptions -> BatchGetPartitionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetPartitionResponse)

batchGetPartition databaseName tableName partitionsToGet setOptions =
    
    let
        requestInput = BatchGetPartitionRequest
            
            options.catalogId
            
            databaseName
            
            tableName
            
            partitionsToGet
            
        
        options = setOptions (BatchGetPartitionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchGetPartitionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchGetPartition"
                
                (AWS.Core.Decode.ResultDecoder "BatchGetPartitionResponse" batchGetPartitionResponseDecoder)
                
            )



{-| Options for a batchGetPartition request
-}
type alias BatchGetPartitionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Returns a list of resource metadata for a given list of trigger names. After calling the <code>ListTriggers</code> operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.</p>

__Required Parameters__

* `triggerNames` __:__ `(List String)`


-}

batchGetTriggers :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetTriggersResponse)

batchGetTriggers triggerNames =
    
    let
        requestInput = BatchGetTriggersRequest
            
            triggerNames
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchGetTriggersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchGetTriggers"
                
                (AWS.Core.Decode.ResultDecoder "BatchGetTriggersResponse" batchGetTriggersResponseDecoder)
                
            )





{-| <p>Returns a list of resource metadata for a given list of workflow names. After calling the <code>ListWorkflows</code> operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.</p>

__Required Parameters__

* `names` __:__ `(List String)`


-}

batchGetWorkflows :
  
    (List String) ->
  
  
    ( BatchGetWorkflowsOptions -> BatchGetWorkflowsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetWorkflowsResponse)

batchGetWorkflows names setOptions =
    
    let
        requestInput = BatchGetWorkflowsRequest
            
            names
            
            options.includeGraph
            
        
        options = setOptions (BatchGetWorkflowsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchGetWorkflowsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchGetWorkflows"
                
                (AWS.Core.Decode.ResultDecoder "BatchGetWorkflowsResponse" batchGetWorkflowsResponseDecoder)
                
            )



{-| Options for a batchGetWorkflows request
-}
type alias BatchGetWorkflowsOptions =
    {
    includeGraph : Maybe Bool
    }



{-| <p>Stops one or more job runs for a specified job definition.</p>

__Required Parameters__

* `jobName` __:__ `String`
* `jobRunIds` __:__ `(List String)`


-}

batchStopJobRun :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchStopJobRunResponse)

batchStopJobRun jobName jobRunIds =
    
    let
        requestInput = BatchStopJobRunRequest
            
            jobName
            
            jobRunIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchStopJobRunRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchStopJobRun"
                
                (AWS.Core.Decode.ResultDecoder "BatchStopJobRunResponse" batchStopJobRunResponseDecoder)
                
            )





{-| <p>Creates a classifier in the user's account. This can be a <code>GrokClassifier</code>, an <code>XMLClassifier</code>, a <code>JsonClassifier</code>, or a <code>CsvClassifier</code>, depending on which field of the request is present.</p>

__Required Parameters__



-}

createClassifier :
  
  
    ( CreateClassifierOptions -> CreateClassifierOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateClassifierResponse)

createClassifier setOptions =
    
    let
        requestInput = CreateClassifierRequest
            
            options.grokClassifier
            
            options.xMLClassifier
            
            options.jsonClassifier
            
            options.csvClassifier
            
        
        options = setOptions (CreateClassifierOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createClassifierRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateClassifier"
                
                (AWS.Core.Decode.ResultDecoder "CreateClassifierResponse" createClassifierResponseDecoder)
                
            )



{-| Options for a createClassifier request
-}
type alias CreateClassifierOptions =
    {
    grokClassifier : Maybe CreateGrokClassifierRequest,xMLClassifier : Maybe CreateXMLClassifierRequest,jsonClassifier : Maybe CreateJsonClassifierRequest,csvClassifier : Maybe CreateCsvClassifierRequest
    }



{-| <p>Creates a connection definition in the Data Catalog.</p>

__Required Parameters__

* `connectionInput` __:__ `ConnectionInput`


-}

createConnection :
  
    ConnectionInput ->
  
  
    ( CreateConnectionOptions -> CreateConnectionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateConnectionResponse)

createConnection connectionInput setOptions =
    
    let
        requestInput = CreateConnectionRequest
            
            options.catalogId
            
            connectionInput
            
        
        options = setOptions (CreateConnectionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createConnectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateConnection"
                
                (AWS.Core.Decode.ResultDecoder "CreateConnectionResponse" createConnectionResponseDecoder)
                
            )



{-| Options for a createConnection request
-}
type alias CreateConnectionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Creates a new crawler with specified targets, role, configuration, and optional schedule. At least one crawl target must be specified, in the <code>s3Targets</code> field, the <code>jdbcTargets</code> field, or the <code>DynamoDBTargets</code> field.</p>

__Required Parameters__

* `name` __:__ `String`
* `role` __:__ `String`
* `targets` __:__ `CrawlerTargets`


-}

createCrawler :
  
    String ->
  
    String ->
  
    CrawlerTargets ->
  
  
    ( CreateCrawlerOptions -> CreateCrawlerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateCrawlerResponse)

createCrawler name role targets setOptions =
    
    let
        requestInput = CreateCrawlerRequest
            
            name
            
            role
            
            options.databaseName
            
            options.description
            
            targets
            
            options.schedule
            
            options.classifiers
            
            options.tablePrefix
            
            options.schemaChangePolicy
            
            options.configuration
            
            options.crawlerSecurityConfiguration
            
            options.tags
            
        
        options = setOptions (CreateCrawlerOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createCrawlerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateCrawler"
                
                (AWS.Core.Decode.ResultDecoder "CreateCrawlerResponse" createCrawlerResponseDecoder)
                
            )



{-| Options for a createCrawler request
-}
type alias CreateCrawlerOptions =
    {
    databaseName : Maybe String,description : Maybe String,schedule : Maybe String,classifiers : Maybe (List String),tablePrefix : Maybe String,schemaChangePolicy : Maybe SchemaChangePolicy,configuration : Maybe String,crawlerSecurityConfiguration : Maybe String,tags : Maybe (Dict String String)
    }



{-| <p>Creates a new database in a Data Catalog.</p>

__Required Parameters__

* `databaseInput` __:__ `DatabaseInput`


-}

createDatabase :
  
    DatabaseInput ->
  
  
    ( CreateDatabaseOptions -> CreateDatabaseOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDatabaseResponse)

createDatabase databaseInput setOptions =
    
    let
        requestInput = CreateDatabaseRequest
            
            options.catalogId
            
            databaseInput
            
        
        options = setOptions (CreateDatabaseOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDatabaseRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDatabase"
                
                (AWS.Core.Decode.ResultDecoder "CreateDatabaseResponse" createDatabaseResponseDecoder)
                
            )



{-| Options for a createDatabase request
-}
type alias CreateDatabaseOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Creates a new development endpoint.</p>

__Required Parameters__

* `endpointName` __:__ `String`
* `roleArn` __:__ `String`


-}

createDevEndpoint :
  
    String ->
  
    String ->
  
  
    ( CreateDevEndpointOptions -> CreateDevEndpointOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDevEndpointResponse)

createDevEndpoint endpointName roleArn setOptions =
    
    let
        requestInput = CreateDevEndpointRequest
            
            endpointName
            
            roleArn
            
            options.securityGroupIds
            
            options.subnetId
            
            options.publicKey
            
            options.publicKeys
            
            options.numberOfNodes
            
            options.workerType
            
            options.numberOfWorkers
            
            options.extraPythonLibsS3Path
            
            options.extraJarsS3Path
            
            options.securityConfiguration
            
            options.tags
            
            options.arguments
            
        
        options = setOptions (CreateDevEndpointOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDevEndpointRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDevEndpoint"
                
                (AWS.Core.Decode.ResultDecoder "CreateDevEndpointResponse" createDevEndpointResponseDecoder)
                
            )



{-| Options for a createDevEndpoint request
-}
type alias CreateDevEndpointOptions =
    {
    securityGroupIds : Maybe (List String),subnetId : Maybe String,publicKey : Maybe String,publicKeys : Maybe (List String),numberOfNodes : Maybe Int,workerType : Maybe WorkerType,numberOfWorkers : Maybe Int,extraPythonLibsS3Path : Maybe String,extraJarsS3Path : Maybe String,securityConfiguration : Maybe String,tags : Maybe (Dict String String),arguments : Maybe (Dict String String)
    }



{-| <p>Creates a new job definition.</p>

__Required Parameters__

* `name` __:__ `String`
* `role` __:__ `String`
* `command` __:__ `JobCommand`


-}

createJob :
  
    String ->
  
    String ->
  
    JobCommand ->
  
  
    ( CreateJobOptions -> CreateJobOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateJobResponse)

createJob name role command setOptions =
    
    let
        requestInput = CreateJobRequest
            
            name
            
            options.description
            
            options.logUri
            
            role
            
            options.executionProperty
            
            command
            
            options.defaultArguments
            
            options.connections
            
            options.maxRetries
            
            options.allocatedCapacity
            
            options.timeout
            
            options.maxCapacity
            
            options.securityConfiguration
            
            options.tags
            
            options.notificationProperty
            
            options.glueVersion
            
            options.numberOfWorkers
            
            options.workerType
            
        
        options = setOptions (CreateJobOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateJob"
                
                (AWS.Core.Decode.ResultDecoder "CreateJobResponse" createJobResponseDecoder)
                
            )



{-| Options for a createJob request
-}
type alias CreateJobOptions =
    {
    description : Maybe String,logUri : Maybe String,executionProperty : Maybe ExecutionProperty,defaultArguments : Maybe (Dict String String),connections : Maybe ConnectionsList,maxRetries : Maybe Int,allocatedCapacity : Maybe Int,timeout : Maybe Int,maxCapacity : Maybe Float,securityConfiguration : Maybe String,tags : Maybe (Dict String String),notificationProperty : Maybe NotificationProperty,glueVersion : Maybe String,numberOfWorkers : Maybe Int,workerType : Maybe WorkerType
    }



{-| <p>Creates a new partition.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `tableName` __:__ `String`
* `partitionInput` __:__ `PartitionInput`


-}

createPartition :
  
    String ->
  
    String ->
  
    PartitionInput ->
  
  
    ( CreatePartitionOptions -> CreatePartitionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreatePartitionResponse)

createPartition databaseName tableName partitionInput setOptions =
    
    let
        requestInput = CreatePartitionRequest
            
            options.catalogId
            
            databaseName
            
            tableName
            
            partitionInput
            
        
        options = setOptions (CreatePartitionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createPartitionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreatePartition"
                
                (AWS.Core.Decode.ResultDecoder "CreatePartitionResponse" createPartitionResponseDecoder)
                
            )



{-| Options for a createPartition request
-}
type alias CreatePartitionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Transforms a directed acyclic graph (DAG) into code.</p>

__Required Parameters__



-}

createScript :
  
  
    ( CreateScriptOptions -> CreateScriptOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateScriptResponse)

createScript setOptions =
    
    let
        requestInput = CreateScriptRequest
            
            options.dagNodes
            
            options.dagEdges
            
            options.language
            
        
        options = setOptions (CreateScriptOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createScriptRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateScript"
                
                (AWS.Core.Decode.ResultDecoder "CreateScriptResponse" createScriptResponseDecoder)
                
            )



{-| Options for a createScript request
-}
type alias CreateScriptOptions =
    {
    dagNodes : Maybe (List CodeGenNode),dagEdges : Maybe (List CodeGenEdge),language : Maybe Language
    }



{-| <p>Creates a new security configuration. A security configuration is a set of security properties that can be used by AWS Glue. You can use a security configuration to encrypt data at rest. For information about using security configurations in AWS Glue, see <a href="https://docs.aws.amazon.com/glue/latest/dg/encryption-security-configuration.html">Encrypting Data Written by Crawlers, Jobs, and Development Endpoints</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `encryptionConfiguration` __:__ `EncryptionConfiguration`


-}

createSecurityConfiguration :
  
    String ->
  
    EncryptionConfiguration ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateSecurityConfigurationResponse)

createSecurityConfiguration name encryptionConfiguration =
    
    let
        requestInput = CreateSecurityConfigurationRequest
            
            name
            
            encryptionConfiguration
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createSecurityConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateSecurityConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "CreateSecurityConfigurationResponse" createSecurityConfigurationResponseDecoder)
                
            )





{-| <p>Creates a new table definition in the Data Catalog.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `tableInput` __:__ `TableInput`


-}

createTable :
  
    String ->
  
    TableInput ->
  
  
    ( CreateTableOptions -> CreateTableOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTableResponse)

createTable databaseName tableInput setOptions =
    
    let
        requestInput = CreateTableRequest
            
            options.catalogId
            
            databaseName
            
            tableInput
            
        
        options = setOptions (CreateTableOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createTableRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateTable"
                
                (AWS.Core.Decode.ResultDecoder "CreateTableResponse" createTableResponseDecoder)
                
            )



{-| Options for a createTable request
-}
type alias CreateTableOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Creates a new trigger.</p>

__Required Parameters__

* `name` __:__ `String`
* `type_` __:__ `TriggerType`
* `actions` __:__ `(List Action)`


-}

createTrigger :
  
    String ->
  
    TriggerType ->
  
    (List Action) ->
  
  
    ( CreateTriggerOptions -> CreateTriggerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTriggerResponse)

createTrigger name type_ actions setOptions =
    
    let
        requestInput = CreateTriggerRequest
            
            name
            
            options.workflowName
            
            type_
            
            options.schedule
            
            options.predicate
            
            actions
            
            options.description
            
            options.startOnCreation
            
            options.tags
            
        
        options = setOptions (CreateTriggerOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createTriggerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateTrigger"
                
                (AWS.Core.Decode.ResultDecoder "CreateTriggerResponse" createTriggerResponseDecoder)
                
            )



{-| Options for a createTrigger request
-}
type alias CreateTriggerOptions =
    {
    workflowName : Maybe String,schedule : Maybe String,predicate : Maybe Predicate,description : Maybe String,startOnCreation : Maybe Bool,tags : Maybe (Dict String String)
    }



{-| <p>Creates a new function definition in the Data Catalog.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `functionInput` __:__ `UserDefinedFunctionInput`


-}

createUserDefinedFunction :
  
    String ->
  
    UserDefinedFunctionInput ->
  
  
    ( CreateUserDefinedFunctionOptions -> CreateUserDefinedFunctionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateUserDefinedFunctionResponse)

createUserDefinedFunction databaseName functionInput setOptions =
    
    let
        requestInput = CreateUserDefinedFunctionRequest
            
            options.catalogId
            
            databaseName
            
            functionInput
            
        
        options = setOptions (CreateUserDefinedFunctionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createUserDefinedFunctionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateUserDefinedFunction"
                
                (AWS.Core.Decode.ResultDecoder "CreateUserDefinedFunctionResponse" createUserDefinedFunctionResponseDecoder)
                
            )



{-| Options for a createUserDefinedFunction request
-}
type alias CreateUserDefinedFunctionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Creates a new workflow.</p>

__Required Parameters__

* `name` __:__ `String`


-}

createWorkflow :
  
    String ->
  
  
    ( CreateWorkflowOptions -> CreateWorkflowOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateWorkflowResponse)

createWorkflow name setOptions =
    
    let
        requestInput = CreateWorkflowRequest
            
            name
            
            options.description
            
            options.defaultRunProperties
            
            options.tags
            
        
        options = setOptions (CreateWorkflowOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createWorkflowRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateWorkflow"
                
                (AWS.Core.Decode.ResultDecoder "CreateWorkflowResponse" createWorkflowResponseDecoder)
                
            )



{-| Options for a createWorkflow request
-}
type alias CreateWorkflowOptions =
    {
    description : Maybe String,defaultRunProperties : Maybe (Dict String String),tags : Maybe (Dict String String)
    }



{-| <p>Removes a classifier from the Data Catalog.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deleteClassifier :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteClassifierResponse)

deleteClassifier name =
    
    let
        requestInput = DeleteClassifierRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteClassifierRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteClassifier"
                
                (AWS.Core.Decode.ResultDecoder "DeleteClassifierResponse" deleteClassifierResponseDecoder)
                
            )





{-| <p>Deletes a connection from the Data Catalog.</p>

__Required Parameters__

* `connectionName` __:__ `String`


-}

deleteConnection :
  
    String ->
  
  
    ( DeleteConnectionOptions -> DeleteConnectionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteConnectionResponse)

deleteConnection connectionName setOptions =
    
    let
        requestInput = DeleteConnectionRequest
            
            options.catalogId
            
            connectionName
            
        
        options = setOptions (DeleteConnectionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteConnectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteConnection"
                
                (AWS.Core.Decode.ResultDecoder "DeleteConnectionResponse" deleteConnectionResponseDecoder)
                
            )



{-| Options for a deleteConnection request
-}
type alias DeleteConnectionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Removes a specified crawler from the AWS Glue Data Catalog, unless the crawler state is <code>RUNNING</code>.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deleteCrawler :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteCrawlerResponse)

deleteCrawler name =
    
    let
        requestInput = DeleteCrawlerRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteCrawlerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteCrawler"
                
                (AWS.Core.Decode.ResultDecoder "DeleteCrawlerResponse" deleteCrawlerResponseDecoder)
                
            )





{-| <p>Removes a specified Database from a Data Catalog.</p> <note> <p>After completing this operation, you will no longer have access to the tables (and all table versions and partitions that might belong to the tables) and the user-defined functions in the deleted database. AWS Glue deletes these "orphaned" resources asynchronously in a timely manner, at the discretion of the service.</p> <p>To ensure immediate deletion of all related resources, before calling <code>DeleteDatabase</code>, use <code>DeleteTableVersion</code> or <code>BatchDeleteTableVersion</code>, <code>DeletePartition</code> or <code>BatchDeletePartition</code>, <code>DeleteUserDefinedFunction</code>, and <code>DeleteTable</code> or <code>BatchDeleteTable</code>, to delete any resources that belong to the database.</p> </note>

__Required Parameters__

* `name` __:__ `String`


-}

deleteDatabase :
  
    String ->
  
  
    ( DeleteDatabaseOptions -> DeleteDatabaseOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDatabaseResponse)

deleteDatabase name setOptions =
    
    let
        requestInput = DeleteDatabaseRequest
            
            options.catalogId
            
            name
            
        
        options = setOptions (DeleteDatabaseOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteDatabaseRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDatabase"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDatabaseResponse" deleteDatabaseResponseDecoder)
                
            )



{-| Options for a deleteDatabase request
-}
type alias DeleteDatabaseOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Deletes a specified development endpoint.</p>

__Required Parameters__

* `endpointName` __:__ `String`


-}

deleteDevEndpoint :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDevEndpointResponse)

deleteDevEndpoint endpointName =
    
    let
        requestInput = DeleteDevEndpointRequest
            
            endpointName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteDevEndpointRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDevEndpoint"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDevEndpointResponse" deleteDevEndpointResponseDecoder)
                
            )





{-| <p>Deletes a specified job definition. If the job definition is not found, no exception is thrown.</p>

__Required Parameters__

* `jobName` __:__ `String`


-}

deleteJob :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteJobResponse)

deleteJob jobName =
    
    let
        requestInput = DeleteJobRequest
            
            jobName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteJob"
                
                (AWS.Core.Decode.ResultDecoder "DeleteJobResponse" deleteJobResponseDecoder)
                
            )





{-| <p>Deletes a specified partition.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `tableName` __:__ `String`
* `partitionValues` __:__ `(List String)`


-}

deletePartition :
  
    String ->
  
    String ->
  
    (List String) ->
  
  
    ( DeletePartitionOptions -> DeletePartitionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeletePartitionResponse)

deletePartition databaseName tableName partitionValues setOptions =
    
    let
        requestInput = DeletePartitionRequest
            
            options.catalogId
            
            databaseName
            
            tableName
            
            partitionValues
            
        
        options = setOptions (DeletePartitionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deletePartitionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeletePartition"
                
                (AWS.Core.Decode.ResultDecoder "DeletePartitionResponse" deletePartitionResponseDecoder)
                
            )



{-| Options for a deletePartition request
-}
type alias DeletePartitionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Deletes a specified policy.</p>

__Required Parameters__



-}

deleteResourcePolicy :
  
  
    ( DeleteResourcePolicyOptions -> DeleteResourcePolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteResourcePolicyResponse)

deleteResourcePolicy setOptions =
    
    let
        requestInput = DeleteResourcePolicyRequest
            
            options.policyHashCondition
            
        
        options = setOptions (DeleteResourcePolicyOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteResourcePolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteResourcePolicy"
                
                (AWS.Core.Decode.ResultDecoder "DeleteResourcePolicyResponse" deleteResourcePolicyResponseDecoder)
                
            )



{-| Options for a deleteResourcePolicy request
-}
type alias DeleteResourcePolicyOptions =
    {
    policyHashCondition : Maybe String
    }



{-| <p>Deletes a specified security configuration.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deleteSecurityConfiguration :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteSecurityConfigurationResponse)

deleteSecurityConfiguration name =
    
    let
        requestInput = DeleteSecurityConfigurationRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteSecurityConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteSecurityConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "DeleteSecurityConfigurationResponse" deleteSecurityConfigurationResponseDecoder)
                
            )





{-| <p>Removes a table definition from the Data Catalog.</p> <note> <p>After completing this operation, you will no longer have access to the table versions and partitions that belong to the deleted table. AWS Glue deletes these "orphaned" resources asynchronously in a timely manner, at the discretion of the service.</p> <p>To ensure immediate deletion of all related resources, before calling <code>DeleteTable</code>, use <code>DeleteTableVersion</code> or <code>BatchDeleteTableVersion</code>, and <code>DeletePartition</code> or <code>BatchDeletePartition</code>, to delete any resources that belong to the table.</p> </note>

__Required Parameters__

* `databaseName` __:__ `String`
* `name` __:__ `String`


-}

deleteTable :
  
    String ->
  
    String ->
  
  
    ( DeleteTableOptions -> DeleteTableOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTableResponse)

deleteTable databaseName name setOptions =
    
    let
        requestInput = DeleteTableRequest
            
            options.catalogId
            
            databaseName
            
            name
            
        
        options = setOptions (DeleteTableOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteTableRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteTable"
                
                (AWS.Core.Decode.ResultDecoder "DeleteTableResponse" deleteTableResponseDecoder)
                
            )



{-| Options for a deleteTable request
-}
type alias DeleteTableOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Deletes a specified version of a table.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `tableName` __:__ `String`
* `versionId` __:__ `String`


-}

deleteTableVersion :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( DeleteTableVersionOptions -> DeleteTableVersionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTableVersionResponse)

deleteTableVersion databaseName tableName versionId setOptions =
    
    let
        requestInput = DeleteTableVersionRequest
            
            options.catalogId
            
            databaseName
            
            tableName
            
            versionId
            
        
        options = setOptions (DeleteTableVersionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteTableVersionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteTableVersion"
                
                (AWS.Core.Decode.ResultDecoder "DeleteTableVersionResponse" deleteTableVersionResponseDecoder)
                
            )



{-| Options for a deleteTableVersion request
-}
type alias DeleteTableVersionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Deletes a specified trigger. If the trigger is not found, no exception is thrown.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deleteTrigger :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTriggerResponse)

deleteTrigger name =
    
    let
        requestInput = DeleteTriggerRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteTriggerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteTrigger"
                
                (AWS.Core.Decode.ResultDecoder "DeleteTriggerResponse" deleteTriggerResponseDecoder)
                
            )





{-| <p>Deletes an existing function definition from the Data Catalog.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `functionName` __:__ `String`


-}

deleteUserDefinedFunction :
  
    String ->
  
    String ->
  
  
    ( DeleteUserDefinedFunctionOptions -> DeleteUserDefinedFunctionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteUserDefinedFunctionResponse)

deleteUserDefinedFunction databaseName functionName setOptions =
    
    let
        requestInput = DeleteUserDefinedFunctionRequest
            
            options.catalogId
            
            databaseName
            
            functionName
            
        
        options = setOptions (DeleteUserDefinedFunctionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteUserDefinedFunctionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteUserDefinedFunction"
                
                (AWS.Core.Decode.ResultDecoder "DeleteUserDefinedFunctionResponse" deleteUserDefinedFunctionResponseDecoder)
                
            )



{-| Options for a deleteUserDefinedFunction request
-}
type alias DeleteUserDefinedFunctionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Deletes a workflow.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deleteWorkflow :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteWorkflowResponse)

deleteWorkflow name =
    
    let
        requestInput = DeleteWorkflowRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteWorkflowRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteWorkflow"
                
                (AWS.Core.Decode.ResultDecoder "DeleteWorkflowResponse" deleteWorkflowResponseDecoder)
                
            )





{-| <p>Retrieves the status of a migration operation.</p>

__Required Parameters__



-}

getCatalogImportStatus :
  
  
    ( GetCatalogImportStatusOptions -> GetCatalogImportStatusOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCatalogImportStatusResponse)

getCatalogImportStatus setOptions =
    
    let
        requestInput = GetCatalogImportStatusRequest
            
            options.catalogId
            
        
        options = setOptions (GetCatalogImportStatusOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getCatalogImportStatusRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetCatalogImportStatus"
                
                (AWS.Core.Decode.ResultDecoder "GetCatalogImportStatusResponse" getCatalogImportStatusResponseDecoder)
                
            )



{-| Options for a getCatalogImportStatus request
-}
type alias GetCatalogImportStatusOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Retrieve a classifier by name.</p>

__Required Parameters__

* `name` __:__ `String`


-}

getClassifier :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetClassifierResponse)

getClassifier name =
    
    let
        requestInput = GetClassifierRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getClassifierRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetClassifier"
                
                (AWS.Core.Decode.ResultDecoder "GetClassifierResponse" getClassifierResponseDecoder)
                
            )





{-| <p>Lists all classifier objects in the Data Catalog.</p>

__Required Parameters__



-}

getClassifiers :
  
  
    ( GetClassifiersOptions -> GetClassifiersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetClassifiersResponse)

getClassifiers setOptions =
    
    let
        requestInput = GetClassifiersRequest
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (GetClassifiersOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getClassifiersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetClassifiers"
                
                (AWS.Core.Decode.ResultDecoder "GetClassifiersResponse" getClassifiersResponseDecoder)
                
            )



{-| Options for a getClassifiers request
-}
type alias GetClassifiersOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves a connection definition from the Data Catalog.</p>

__Required Parameters__

* `name` __:__ `String`


-}

getConnection :
  
    String ->
  
  
    ( GetConnectionOptions -> GetConnectionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetConnectionResponse)

getConnection name setOptions =
    
    let
        requestInput = GetConnectionRequest
            
            options.catalogId
            
            name
            
            options.hidePassword
            
        
        options = setOptions (GetConnectionOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getConnectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetConnection"
                
                (AWS.Core.Decode.ResultDecoder "GetConnectionResponse" getConnectionResponseDecoder)
                
            )



{-| Options for a getConnection request
-}
type alias GetConnectionOptions =
    {
    catalogId : Maybe String,hidePassword : Maybe Bool
    }



{-| <p>Retrieves a list of connection definitions from the Data Catalog.</p>

__Required Parameters__



-}

getConnections :
  
  
    ( GetConnectionsOptions -> GetConnectionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetConnectionsResponse)

getConnections setOptions =
    
    let
        requestInput = GetConnectionsRequest
            
            options.catalogId
            
            options.filter
            
            options.hidePassword
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (GetConnectionsOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getConnectionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetConnections"
                
                (AWS.Core.Decode.ResultDecoder "GetConnectionsResponse" getConnectionsResponseDecoder)
                
            )



{-| Options for a getConnections request
-}
type alias GetConnectionsOptions =
    {
    catalogId : Maybe String,filter : Maybe GetConnectionsFilter,hidePassword : Maybe Bool,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Retrieves metadata for a specified crawler.</p>

__Required Parameters__

* `name` __:__ `String`


-}

getCrawler :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCrawlerResponse)

getCrawler name =
    
    let
        requestInput = GetCrawlerRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getCrawlerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetCrawler"
                
                (AWS.Core.Decode.ResultDecoder "GetCrawlerResponse" getCrawlerResponseDecoder)
                
            )





{-| <p>Retrieves metrics about specified crawlers.</p>

__Required Parameters__



-}

getCrawlerMetrics :
  
  
    ( GetCrawlerMetricsOptions -> GetCrawlerMetricsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCrawlerMetricsResponse)

getCrawlerMetrics setOptions =
    
    let
        requestInput = GetCrawlerMetricsRequest
            
            options.crawlerNameList
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (GetCrawlerMetricsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getCrawlerMetricsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetCrawlerMetrics"
                
                (AWS.Core.Decode.ResultDecoder "GetCrawlerMetricsResponse" getCrawlerMetricsResponseDecoder)
                
            )



{-| Options for a getCrawlerMetrics request
-}
type alias GetCrawlerMetricsOptions =
    {
    crawlerNameList : Maybe (List String),maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves metadata for all crawlers defined in the customer account.</p>

__Required Parameters__



-}

getCrawlers :
  
  
    ( GetCrawlersOptions -> GetCrawlersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCrawlersResponse)

getCrawlers setOptions =
    
    let
        requestInput = GetCrawlersRequest
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (GetCrawlersOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getCrawlersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetCrawlers"
                
                (AWS.Core.Decode.ResultDecoder "GetCrawlersResponse" getCrawlersResponseDecoder)
                
            )



{-| Options for a getCrawlers request
-}
type alias GetCrawlersOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves the security configuration for a specified catalog.</p>

__Required Parameters__



-}

getDataCatalogEncryptionSettings :
  
  
    ( GetDataCatalogEncryptionSettingsOptions -> GetDataCatalogEncryptionSettingsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDataCatalogEncryptionSettingsResponse)

getDataCatalogEncryptionSettings setOptions =
    
    let
        requestInput = GetDataCatalogEncryptionSettingsRequest
            
            options.catalogId
            
        
        options = setOptions (GetDataCatalogEncryptionSettingsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDataCatalogEncryptionSettingsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDataCatalogEncryptionSettings"
                
                (AWS.Core.Decode.ResultDecoder "GetDataCatalogEncryptionSettingsResponse" getDataCatalogEncryptionSettingsResponseDecoder)
                
            )



{-| Options for a getDataCatalogEncryptionSettings request
-}
type alias GetDataCatalogEncryptionSettingsOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Retrieves the definition of a specified database.</p>

__Required Parameters__

* `name` __:__ `String`


-}

getDatabase :
  
    String ->
  
  
    ( GetDatabaseOptions -> GetDatabaseOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDatabaseResponse)

getDatabase name setOptions =
    
    let
        requestInput = GetDatabaseRequest
            
            options.catalogId
            
            name
            
        
        options = setOptions (GetDatabaseOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDatabaseRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDatabase"
                
                (AWS.Core.Decode.ResultDecoder "GetDatabaseResponse" getDatabaseResponseDecoder)
                
            )



{-| Options for a getDatabase request
-}
type alias GetDatabaseOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Retrieves all Databases defined in a given Data Catalog.</p>

__Required Parameters__



-}

getDatabases :
  
  
    ( GetDatabasesOptions -> GetDatabasesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDatabasesResponse)

getDatabases setOptions =
    
    let
        requestInput = GetDatabasesRequest
            
            options.catalogId
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (GetDatabasesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDatabasesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDatabases"
                
                (AWS.Core.Decode.ResultDecoder "GetDatabasesResponse" getDatabasesResponseDecoder)
                
            )



{-| Options for a getDatabases request
-}
type alias GetDatabasesOptions =
    {
    catalogId : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Transforms a Python script into a directed acyclic graph (DAG). </p>

__Required Parameters__



-}

getDataflowGraph :
  
  
    ( GetDataflowGraphOptions -> GetDataflowGraphOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDataflowGraphResponse)

getDataflowGraph setOptions =
    
    let
        requestInput = GetDataflowGraphRequest
            
            options.pythonScript
            
        
        options = setOptions (GetDataflowGraphOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDataflowGraphRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDataflowGraph"
                
                (AWS.Core.Decode.ResultDecoder "GetDataflowGraphResponse" getDataflowGraphResponseDecoder)
                
            )



{-| Options for a getDataflowGraph request
-}
type alias GetDataflowGraphOptions =
    {
    pythonScript : Maybe String
    }



{-| <p>Retrieves information about a specified development endpoint.</p> <note> <p>When you create a development endpoint in a virtual private cloud (VPC), AWS Glue returns only a private IP address, and the public IP address field is not populated. When you create a non-VPC development endpoint, AWS Glue returns only a public IP address.</p> </note>

__Required Parameters__

* `endpointName` __:__ `String`


-}

getDevEndpoint :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDevEndpointResponse)

getDevEndpoint endpointName =
    
    let
        requestInput = GetDevEndpointRequest
            
            endpointName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDevEndpointRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDevEndpoint"
                
                (AWS.Core.Decode.ResultDecoder "GetDevEndpointResponse" getDevEndpointResponseDecoder)
                
            )





{-| <p>Retrieves all the development endpoints in this AWS account.</p> <note> <p>When you create a development endpoint in a virtual private cloud (VPC), AWS Glue returns only a private IP address and the public IP address field is not populated. When you create a non-VPC development endpoint, AWS Glue returns only a public IP address.</p> </note>

__Required Parameters__



-}

getDevEndpoints :
  
  
    ( GetDevEndpointsOptions -> GetDevEndpointsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDevEndpointsResponse)

getDevEndpoints setOptions =
    
    let
        requestInput = GetDevEndpointsRequest
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (GetDevEndpointsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDevEndpointsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDevEndpoints"
                
                (AWS.Core.Decode.ResultDecoder "GetDevEndpointsResponse" getDevEndpointsResponseDecoder)
                
            )



{-| Options for a getDevEndpoints request
-}
type alias GetDevEndpointsOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves an existing job definition.</p>

__Required Parameters__

* `jobName` __:__ `String`


-}

getJob :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetJobResponse)

getJob jobName =
    
    let
        requestInput = GetJobRequest
            
            jobName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetJob"
                
                (AWS.Core.Decode.ResultDecoder "GetJobResponse" getJobResponseDecoder)
                
            )





{-| <p>Returns information on a job bookmark entry.</p>

__Required Parameters__

* `jobName` __:__ `String`


-}

getJobBookmark :
  
    String ->
  
  
    ( GetJobBookmarkOptions -> GetJobBookmarkOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetJobBookmarkResponse)

getJobBookmark jobName setOptions =
    
    let
        requestInput = GetJobBookmarkRequest
            
            jobName
            
            options.runId
            
        
        options = setOptions (GetJobBookmarkOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getJobBookmarkRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetJobBookmark"
                
                (AWS.Core.Decode.ResultDecoder "GetJobBookmarkResponse" getJobBookmarkResponseDecoder)
                
            )



{-| Options for a getJobBookmark request
-}
type alias GetJobBookmarkOptions =
    {
    runId : Maybe String
    }



{-| <p>Returns information on the job bookmark entries. The list is ordered on decreasing version numbers.</p>

__Required Parameters__

* `jobName` __:__ `String`


-}

getJobBookmarks :
  
    String ->
  
  
    ( GetJobBookmarksOptions -> GetJobBookmarksOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetJobBookmarksResponse)

getJobBookmarks jobName setOptions =
    
    let
        requestInput = GetJobBookmarksRequest
            
            jobName
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (GetJobBookmarksOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getJobBookmarksRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetJobBookmarks"
                
                (AWS.Core.Decode.ResultDecoder "GetJobBookmarksResponse" getJobBookmarksResponseDecoder)
                
            )



{-| Options for a getJobBookmarks request
-}
type alias GetJobBookmarksOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe Int
    }



{-| <p>Retrieves the metadata for a given job run.</p>

__Required Parameters__

* `jobName` __:__ `String`
* `runId` __:__ `String`


-}

getJobRun :
  
    String ->
  
    String ->
  
  
    ( GetJobRunOptions -> GetJobRunOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetJobRunResponse)

getJobRun jobName runId setOptions =
    
    let
        requestInput = GetJobRunRequest
            
            jobName
            
            runId
            
            options.predecessorsIncluded
            
        
        options = setOptions (GetJobRunOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getJobRunRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetJobRun"
                
                (AWS.Core.Decode.ResultDecoder "GetJobRunResponse" getJobRunResponseDecoder)
                
            )



{-| Options for a getJobRun request
-}
type alias GetJobRunOptions =
    {
    predecessorsIncluded : Maybe Bool
    }



{-| <p>Retrieves metadata for all runs of a given job definition.</p>

__Required Parameters__

* `jobName` __:__ `String`


-}

getJobRuns :
  
    String ->
  
  
    ( GetJobRunsOptions -> GetJobRunsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetJobRunsResponse)

getJobRuns jobName setOptions =
    
    let
        requestInput = GetJobRunsRequest
            
            jobName
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (GetJobRunsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getJobRunsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetJobRuns"
                
                (AWS.Core.Decode.ResultDecoder "GetJobRunsResponse" getJobRunsResponseDecoder)
                
            )



{-| Options for a getJobRuns request
-}
type alias GetJobRunsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Retrieves all current job definitions.</p>

__Required Parameters__



-}

getJobs :
  
  
    ( GetJobsOptions -> GetJobsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetJobsResponse)

getJobs setOptions =
    
    let
        requestInput = GetJobsRequest
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (GetJobsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getJobsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetJobs"
                
                (AWS.Core.Decode.ResultDecoder "GetJobsResponse" getJobsResponseDecoder)
                
            )



{-| Options for a getJobs request
-}
type alias GetJobsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Creates mappings.</p>

__Required Parameters__

* `source` __:__ `CatalogEntry`


-}

getMapping :
  
    CatalogEntry ->
  
  
    ( GetMappingOptions -> GetMappingOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetMappingResponse)

getMapping source setOptions =
    
    let
        requestInput = GetMappingRequest
            
            source
            
            options.sinks
            
            options.location
            
        
        options = setOptions (GetMappingOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getMappingRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetMapping"
                
                (AWS.Core.Decode.ResultDecoder "GetMappingResponse" getMappingResponseDecoder)
                
            )



{-| Options for a getMapping request
-}
type alias GetMappingOptions =
    {
    sinks : Maybe (List CatalogEntry),location : Maybe Location
    }



{-| <p>Retrieves information about a specified partition.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `tableName` __:__ `String`
* `partitionValues` __:__ `(List String)`


-}

getPartition :
  
    String ->
  
    String ->
  
    (List String) ->
  
  
    ( GetPartitionOptions -> GetPartitionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetPartitionResponse)

getPartition databaseName tableName partitionValues setOptions =
    
    let
        requestInput = GetPartitionRequest
            
            options.catalogId
            
            databaseName
            
            tableName
            
            partitionValues
            
        
        options = setOptions (GetPartitionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getPartitionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetPartition"
                
                (AWS.Core.Decode.ResultDecoder "GetPartitionResponse" getPartitionResponseDecoder)
                
            )



{-| Options for a getPartition request
-}
type alias GetPartitionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Retrieves information about the partitions in a table.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `tableName` __:__ `String`


-}

getPartitions :
  
    String ->
  
    String ->
  
  
    ( GetPartitionsOptions -> GetPartitionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetPartitionsResponse)

getPartitions databaseName tableName setOptions =
    
    let
        requestInput = GetPartitionsRequest
            
            options.catalogId
            
            databaseName
            
            tableName
            
            options.expression
            
            options.nextToken
            
            options.segment
            
            options.maxResults
            
        
        options = setOptions (GetPartitionsOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getPartitionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetPartitions"
                
                (AWS.Core.Decode.ResultDecoder "GetPartitionsResponse" getPartitionsResponseDecoder)
                
            )



{-| Options for a getPartitions request
-}
type alias GetPartitionsOptions =
    {
    catalogId : Maybe String,expression : Maybe String,nextToken : Maybe String,segment : Maybe Segment,maxResults : Maybe Int
    }



{-| <p>Gets code to perform a specified mapping.</p>

__Required Parameters__

* `mapping` __:__ `(List MappingEntry)`
* `source` __:__ `CatalogEntry`


-}

getPlan :
  
    (List MappingEntry) ->
  
    CatalogEntry ->
  
  
    ( GetPlanOptions -> GetPlanOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetPlanResponse)

getPlan mapping source setOptions =
    
    let
        requestInput = GetPlanRequest
            
            mapping
            
            source
            
            options.sinks
            
            options.location
            
            options.language
            
        
        options = setOptions (GetPlanOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getPlanRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetPlan"
                
                (AWS.Core.Decode.ResultDecoder "GetPlanResponse" getPlanResponseDecoder)
                
            )



{-| Options for a getPlan request
-}
type alias GetPlanOptions =
    {
    sinks : Maybe (List CatalogEntry),location : Maybe Location,language : Maybe Language
    }



{-| <p>Retrieves a specified resource policy.</p>

__Required Parameters__



-}

getResourcePolicy :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetResourcePolicyResponse)

getResourcePolicy =
    
    let
        requestInput = GetResourcePolicyRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getResourcePolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetResourcePolicy"
                
                (AWS.Core.Decode.ResultDecoder "GetResourcePolicyResponse" getResourcePolicyResponseDecoder)
                
            )





{-| <p>Retrieves a specified security configuration.</p>

__Required Parameters__

* `name` __:__ `String`


-}

getSecurityConfiguration :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSecurityConfigurationResponse)

getSecurityConfiguration name =
    
    let
        requestInput = GetSecurityConfigurationRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getSecurityConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetSecurityConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "GetSecurityConfigurationResponse" getSecurityConfigurationResponseDecoder)
                
            )





{-| <p>Retrieves a list of all security configurations.</p>

__Required Parameters__



-}

getSecurityConfigurations :
  
  
    ( GetSecurityConfigurationsOptions -> GetSecurityConfigurationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSecurityConfigurationsResponse)

getSecurityConfigurations setOptions =
    
    let
        requestInput = GetSecurityConfigurationsRequest
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (GetSecurityConfigurationsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getSecurityConfigurationsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetSecurityConfigurations"
                
                (AWS.Core.Decode.ResultDecoder "GetSecurityConfigurationsResponse" getSecurityConfigurationsResponseDecoder)
                
            )



{-| Options for a getSecurityConfigurations request
-}
type alias GetSecurityConfigurationsOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves the <code>Table</code> definition in a Data Catalog for a specified table.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `name` __:__ `String`


-}

getTable :
  
    String ->
  
    String ->
  
  
    ( GetTableOptions -> GetTableOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTableResponse)

getTable databaseName name setOptions =
    
    let
        requestInput = GetTableRequest
            
            options.catalogId
            
            databaseName
            
            name
            
        
        options = setOptions (GetTableOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getTableRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetTable"
                
                (AWS.Core.Decode.ResultDecoder "GetTableResponse" getTableResponseDecoder)
                
            )



{-| Options for a getTable request
-}
type alias GetTableOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Retrieves a specified version of a table.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `tableName` __:__ `String`


-}

getTableVersion :
  
    String ->
  
    String ->
  
  
    ( GetTableVersionOptions -> GetTableVersionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTableVersionResponse)

getTableVersion databaseName tableName setOptions =
    
    let
        requestInput = GetTableVersionRequest
            
            options.catalogId
            
            databaseName
            
            tableName
            
            options.versionId
            
        
        options = setOptions (GetTableVersionOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getTableVersionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetTableVersion"
                
                (AWS.Core.Decode.ResultDecoder "GetTableVersionResponse" getTableVersionResponseDecoder)
                
            )



{-| Options for a getTableVersion request
-}
type alias GetTableVersionOptions =
    {
    catalogId : Maybe String,versionId : Maybe String
    }



{-| <p>Retrieves a list of strings that identify available versions of a specified table.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `tableName` __:__ `String`


-}

getTableVersions :
  
    String ->
  
    String ->
  
  
    ( GetTableVersionsOptions -> GetTableVersionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTableVersionsResponse)

getTableVersions databaseName tableName setOptions =
    
    let
        requestInput = GetTableVersionsRequest
            
            options.catalogId
            
            databaseName
            
            tableName
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (GetTableVersionsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getTableVersionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetTableVersions"
                
                (AWS.Core.Decode.ResultDecoder "GetTableVersionsResponse" getTableVersionsResponseDecoder)
                
            )



{-| Options for a getTableVersions request
-}
type alias GetTableVersionsOptions =
    {
    catalogId : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Retrieves the definitions of some or all of the tables in a given <code>Database</code>.</p>

__Required Parameters__

* `databaseName` __:__ `String`


-}

getTables :
  
    String ->
  
  
    ( GetTablesOptions -> GetTablesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTablesResponse)

getTables databaseName setOptions =
    
    let
        requestInput = GetTablesRequest
            
            options.catalogId
            
            databaseName
            
            options.expression
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (GetTablesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getTablesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetTables"
                
                (AWS.Core.Decode.ResultDecoder "GetTablesResponse" getTablesResponseDecoder)
                
            )



{-| Options for a getTables request
-}
type alias GetTablesOptions =
    {
    catalogId : Maybe String,expression : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Retrieves a list of tags associated with a resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

getTags :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTagsResponse)

getTags resourceArn =
    
    let
        requestInput = GetTagsRequest
            
            resourceArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getTagsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetTags"
                
                (AWS.Core.Decode.ResultDecoder "GetTagsResponse" getTagsResponseDecoder)
                
            )





{-| <p>Retrieves the definition of a trigger.</p>

__Required Parameters__

* `name` __:__ `String`


-}

getTrigger :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTriggerResponse)

getTrigger name =
    
    let
        requestInput = GetTriggerRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getTriggerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetTrigger"
                
                (AWS.Core.Decode.ResultDecoder "GetTriggerResponse" getTriggerResponseDecoder)
                
            )





{-| <p>Gets all the triggers associated with a job.</p>

__Required Parameters__



-}

getTriggers :
  
  
    ( GetTriggersOptions -> GetTriggersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTriggersResponse)

getTriggers setOptions =
    
    let
        requestInput = GetTriggersRequest
            
            options.nextToken
            
            options.dependentJobName
            
            options.maxResults
            
        
        options = setOptions (GetTriggersOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getTriggersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetTriggers"
                
                (AWS.Core.Decode.ResultDecoder "GetTriggersResponse" getTriggersResponseDecoder)
                
            )



{-| Options for a getTriggers request
-}
type alias GetTriggersOptions =
    {
    nextToken : Maybe String,dependentJobName : Maybe String,maxResults : Maybe Int
    }



{-| <p>Retrieves a specified function definition from the Data Catalog.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `functionName` __:__ `String`


-}

getUserDefinedFunction :
  
    String ->
  
    String ->
  
  
    ( GetUserDefinedFunctionOptions -> GetUserDefinedFunctionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetUserDefinedFunctionResponse)

getUserDefinedFunction databaseName functionName setOptions =
    
    let
        requestInput = GetUserDefinedFunctionRequest
            
            options.catalogId
            
            databaseName
            
            functionName
            
        
        options = setOptions (GetUserDefinedFunctionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getUserDefinedFunctionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetUserDefinedFunction"
                
                (AWS.Core.Decode.ResultDecoder "GetUserDefinedFunctionResponse" getUserDefinedFunctionResponseDecoder)
                
            )



{-| Options for a getUserDefinedFunction request
-}
type alias GetUserDefinedFunctionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Retrieves a multiple function definitions from the Data Catalog.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `pattern` __:__ `String`


-}

getUserDefinedFunctions :
  
    String ->
  
    String ->
  
  
    ( GetUserDefinedFunctionsOptions -> GetUserDefinedFunctionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetUserDefinedFunctionsResponse)

getUserDefinedFunctions databaseName pattern setOptions =
    
    let
        requestInput = GetUserDefinedFunctionsRequest
            
            options.catalogId
            
            databaseName
            
            pattern
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (GetUserDefinedFunctionsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getUserDefinedFunctionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetUserDefinedFunctions"
                
                (AWS.Core.Decode.ResultDecoder "GetUserDefinedFunctionsResponse" getUserDefinedFunctionsResponseDecoder)
                
            )



{-| Options for a getUserDefinedFunctions request
-}
type alias GetUserDefinedFunctionsOptions =
    {
    catalogId : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Retrieves resource metadata for a workflow.</p>

__Required Parameters__

* `name` __:__ `String`


-}

getWorkflow :
  
    String ->
  
  
    ( GetWorkflowOptions -> GetWorkflowOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetWorkflowResponse)

getWorkflow name setOptions =
    
    let
        requestInput = GetWorkflowRequest
            
            name
            
            options.includeGraph
            
        
        options = setOptions (GetWorkflowOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getWorkflowRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetWorkflow"
                
                (AWS.Core.Decode.ResultDecoder "GetWorkflowResponse" getWorkflowResponseDecoder)
                
            )



{-| Options for a getWorkflow request
-}
type alias GetWorkflowOptions =
    {
    includeGraph : Maybe Bool
    }



{-| <p>Retrieves the metadata for a given workflow run. </p>

__Required Parameters__

* `name` __:__ `String`
* `runId` __:__ `String`


-}

getWorkflowRun :
  
    String ->
  
    String ->
  
  
    ( GetWorkflowRunOptions -> GetWorkflowRunOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetWorkflowRunResponse)

getWorkflowRun name runId setOptions =
    
    let
        requestInput = GetWorkflowRunRequest
            
            name
            
            runId
            
            options.includeGraph
            
        
        options = setOptions (GetWorkflowRunOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getWorkflowRunRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetWorkflowRun"
                
                (AWS.Core.Decode.ResultDecoder "GetWorkflowRunResponse" getWorkflowRunResponseDecoder)
                
            )



{-| Options for a getWorkflowRun request
-}
type alias GetWorkflowRunOptions =
    {
    includeGraph : Maybe Bool
    }



{-| <p>Retrieves the workflow run properties which were set during the run.</p>

__Required Parameters__

* `name` __:__ `String`
* `runId` __:__ `String`


-}

getWorkflowRunProperties :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetWorkflowRunPropertiesResponse)

getWorkflowRunProperties name runId =
    
    let
        requestInput = GetWorkflowRunPropertiesRequest
            
            name
            
            runId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getWorkflowRunPropertiesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetWorkflowRunProperties"
                
                (AWS.Core.Decode.ResultDecoder "GetWorkflowRunPropertiesResponse" getWorkflowRunPropertiesResponseDecoder)
                
            )





{-| <p>Retrieves metadata for all runs of a given workflow.</p>

__Required Parameters__

* `name` __:__ `String`


-}

getWorkflowRuns :
  
    String ->
  
  
    ( GetWorkflowRunsOptions -> GetWorkflowRunsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetWorkflowRunsResponse)

getWorkflowRuns name setOptions =
    
    let
        requestInput = GetWorkflowRunsRequest
            
            name
            
            options.includeGraph
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (GetWorkflowRunsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getWorkflowRunsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetWorkflowRuns"
                
                (AWS.Core.Decode.ResultDecoder "GetWorkflowRunsResponse" getWorkflowRunsResponseDecoder)
                
            )



{-| Options for a getWorkflowRuns request
-}
type alias GetWorkflowRunsOptions =
    {
    includeGraph : Maybe Bool,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Imports an existing Athena Data Catalog to AWS Glue</p>

__Required Parameters__



-}

importCatalogToGlue :
  
  
    ( ImportCatalogToGlueOptions -> ImportCatalogToGlueOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ImportCatalogToGlueResponse)

importCatalogToGlue setOptions =
    
    let
        requestInput = ImportCatalogToGlueRequest
            
            options.catalogId
            
        
        options = setOptions (ImportCatalogToGlueOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> importCatalogToGlueRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ImportCatalogToGlue"
                
                (AWS.Core.Decode.ResultDecoder "ImportCatalogToGlueResponse" importCatalogToGlueResponseDecoder)
                
            )



{-| Options for a importCatalogToGlue request
-}
type alias ImportCatalogToGlueOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Retrieves the names of all crawler resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names.</p> <p>This operation takes the optional <code>Tags</code> field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.</p>

__Required Parameters__



-}

listCrawlers :
  
  
    ( ListCrawlersOptions -> ListCrawlersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListCrawlersResponse)

listCrawlers setOptions =
    
    let
        requestInput = ListCrawlersRequest
            
            options.maxResults
            
            options.nextToken
            
            options.tags
            
        
        options = setOptions (ListCrawlersOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listCrawlersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListCrawlers"
                
                (AWS.Core.Decode.ResultDecoder "ListCrawlersResponse" listCrawlersResponseDecoder)
                
            )



{-| Options for a listCrawlers request
-}
type alias ListCrawlersOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String,tags : Maybe (Dict String String)
    }



{-| <p>Retrieves the names of all <code>DevEndpoint</code> resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names.</p> <p>This operation takes the optional <code>Tags</code> field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.</p>

__Required Parameters__



-}

listDevEndpoints :
  
  
    ( ListDevEndpointsOptions -> ListDevEndpointsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDevEndpointsResponse)

listDevEndpoints setOptions =
    
    let
        requestInput = ListDevEndpointsRequest
            
            options.nextToken
            
            options.maxResults
            
            options.tags
            
        
        options = setOptions (ListDevEndpointsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listDevEndpointsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListDevEndpoints"
                
                (AWS.Core.Decode.ResultDecoder "ListDevEndpointsResponse" listDevEndpointsResponseDecoder)
                
            )



{-| Options for a listDevEndpoints request
-}
type alias ListDevEndpointsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int,tags : Maybe (Dict String String)
    }



{-| <p>Retrieves the names of all job resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names.</p> <p>This operation takes the optional <code>Tags</code> field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.</p>

__Required Parameters__



-}

listJobs :
  
  
    ( ListJobsOptions -> ListJobsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListJobsResponse)

listJobs setOptions =
    
    let
        requestInput = ListJobsRequest
            
            options.nextToken
            
            options.maxResults
            
            options.tags
            
        
        options = setOptions (ListJobsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listJobsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListJobs"
                
                (AWS.Core.Decode.ResultDecoder "ListJobsResponse" listJobsResponseDecoder)
                
            )



{-| Options for a listJobs request
-}
type alias ListJobsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int,tags : Maybe (Dict String String)
    }



{-| <p>Retrieves the names of all trigger resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names.</p> <p>This operation takes the optional <code>Tags</code> field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.</p>

__Required Parameters__



-}

listTriggers :
  
  
    ( ListTriggersOptions -> ListTriggersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTriggersResponse)

listTriggers setOptions =
    
    let
        requestInput = ListTriggersRequest
            
            options.nextToken
            
            options.dependentJobName
            
            options.maxResults
            
            options.tags
            
        
        options = setOptions (ListTriggersOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listTriggersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTriggers"
                
                (AWS.Core.Decode.ResultDecoder "ListTriggersResponse" listTriggersResponseDecoder)
                
            )



{-| Options for a listTriggers request
-}
type alias ListTriggersOptions =
    {
    nextToken : Maybe String,dependentJobName : Maybe String,maxResults : Maybe Int,tags : Maybe (Dict String String)
    }



{-| <p>Lists names of workflows created in the account.</p>

__Required Parameters__



-}

listWorkflows :
  
  
    ( ListWorkflowsOptions -> ListWorkflowsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListWorkflowsResponse)

listWorkflows setOptions =
    
    let
        requestInput = ListWorkflowsRequest
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListWorkflowsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listWorkflowsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListWorkflows"
                
                (AWS.Core.Decode.ResultDecoder "ListWorkflowsResponse" listWorkflowsResponseDecoder)
                
            )



{-| Options for a listWorkflows request
-}
type alias ListWorkflowsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Sets the security configuration for a specified catalog. After the configuration has been set, the specified encryption is applied to every catalog write thereafter.</p>

__Required Parameters__

* `dataCatalogEncryptionSettings` __:__ `DataCatalogEncryptionSettings`


-}

putDataCatalogEncryptionSettings :
  
    DataCatalogEncryptionSettings ->
  
  
    ( PutDataCatalogEncryptionSettingsOptions -> PutDataCatalogEncryptionSettingsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutDataCatalogEncryptionSettingsResponse)

putDataCatalogEncryptionSettings dataCatalogEncryptionSettings setOptions =
    
    let
        requestInput = PutDataCatalogEncryptionSettingsRequest
            
            options.catalogId
            
            dataCatalogEncryptionSettings
            
        
        options = setOptions (PutDataCatalogEncryptionSettingsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putDataCatalogEncryptionSettingsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutDataCatalogEncryptionSettings"
                
                (AWS.Core.Decode.ResultDecoder "PutDataCatalogEncryptionSettingsResponse" putDataCatalogEncryptionSettingsResponseDecoder)
                
            )



{-| Options for a putDataCatalogEncryptionSettings request
-}
type alias PutDataCatalogEncryptionSettingsOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Sets the Data Catalog resource policy for access control.</p>

__Required Parameters__

* `policyInJson` __:__ `String`


-}

putResourcePolicy :
  
    String ->
  
  
    ( PutResourcePolicyOptions -> PutResourcePolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutResourcePolicyResponse)

putResourcePolicy policyInJson setOptions =
    
    let
        requestInput = PutResourcePolicyRequest
            
            policyInJson
            
            options.policyHashCondition
            
            options.policyExistsCondition
            
        
        options = setOptions (PutResourcePolicyOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putResourcePolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutResourcePolicy"
                
                (AWS.Core.Decode.ResultDecoder "PutResourcePolicyResponse" putResourcePolicyResponseDecoder)
                
            )



{-| Options for a putResourcePolicy request
-}
type alias PutResourcePolicyOptions =
    {
    policyHashCondition : Maybe String,policyExistsCondition : Maybe ExistCondition
    }



{-| <p>Puts the specified workflow run properties for the given workflow run. If a property already exists for the specified run, then it overrides the value otherwise adds the property to existing properties.</p>

__Required Parameters__

* `name` __:__ `String`
* `runId` __:__ `String`
* `runProperties` __:__ `(Dict String String)`


-}

putWorkflowRunProperties :
  
    String ->
  
    String ->
  
    (Dict String String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutWorkflowRunPropertiesResponse)

putWorkflowRunProperties name runId runProperties =
    
    let
        requestInput = PutWorkflowRunPropertiesRequest
            
            name
            
            runId
            
            runProperties
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putWorkflowRunPropertiesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutWorkflowRunProperties"
                
                (AWS.Core.Decode.ResultDecoder "PutWorkflowRunPropertiesResponse" putWorkflowRunPropertiesResponseDecoder)
                
            )





{-| <p>Resets a bookmark entry.</p>

__Required Parameters__

* `jobName` __:__ `String`


-}

resetJobBookmark :
  
    String ->
  
  
    ( ResetJobBookmarkOptions -> ResetJobBookmarkOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ResetJobBookmarkResponse)

resetJobBookmark jobName setOptions =
    
    let
        requestInput = ResetJobBookmarkRequest
            
            jobName
            
            options.runId
            
        
        options = setOptions (ResetJobBookmarkOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> resetJobBookmarkRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ResetJobBookmark"
                
                (AWS.Core.Decode.ResultDecoder "ResetJobBookmarkResponse" resetJobBookmarkResponseDecoder)
                
            )



{-| Options for a resetJobBookmark request
-}
type alias ResetJobBookmarkOptions =
    {
    runId : Maybe String
    }



{-| <p>Starts a crawl using the specified crawler, regardless of what is scheduled. If the crawler is already running, returns a <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException">CrawlerRunningException</a>.</p>

__Required Parameters__

* `name` __:__ `String`


-}

startCrawler :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartCrawlerResponse)

startCrawler name =
    
    let
        requestInput = StartCrawlerRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startCrawlerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartCrawler"
                
                (AWS.Core.Decode.ResultDecoder "StartCrawlerResponse" startCrawlerResponseDecoder)
                
            )





{-| <p>Changes the schedule state of the specified crawler to <code>SCHEDULED</code>, unless the crawler is already running or the schedule state is already <code>SCHEDULED</code>.</p>

__Required Parameters__

* `crawlerName` __:__ `String`


-}

startCrawlerSchedule :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartCrawlerScheduleResponse)

startCrawlerSchedule crawlerName =
    
    let
        requestInput = StartCrawlerScheduleRequest
            
            crawlerName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startCrawlerScheduleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartCrawlerSchedule"
                
                (AWS.Core.Decode.ResultDecoder "StartCrawlerScheduleResponse" startCrawlerScheduleResponseDecoder)
                
            )





{-| <p>Starts a job run using a job definition.</p>

__Required Parameters__

* `jobName` __:__ `String`


-}

startJobRun :
  
    String ->
  
  
    ( StartJobRunOptions -> StartJobRunOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartJobRunResponse)

startJobRun jobName setOptions =
    
    let
        requestInput = StartJobRunRequest
            
            jobName
            
            options.jobRunId
            
            options.arguments
            
            options.allocatedCapacity
            
            options.timeout
            
            options.maxCapacity
            
            options.securityConfiguration
            
            options.notificationProperty
            
            options.workerType
            
            options.numberOfWorkers
            
        
        options = setOptions (StartJobRunOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startJobRunRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartJobRun"
                
                (AWS.Core.Decode.ResultDecoder "StartJobRunResponse" startJobRunResponseDecoder)
                
            )



{-| Options for a startJobRun request
-}
type alias StartJobRunOptions =
    {
    jobRunId : Maybe String,arguments : Maybe (Dict String String),allocatedCapacity : Maybe Int,timeout : Maybe Int,maxCapacity : Maybe Float,securityConfiguration : Maybe String,notificationProperty : Maybe NotificationProperty,workerType : Maybe WorkerType,numberOfWorkers : Maybe Int
    }



{-| <p>Starts an existing trigger. See <a href="https://docs.aws.amazon.com/glue/latest/dg/trigger-job.html">Triggering Jobs</a> for information about how different types of trigger are started.</p>

__Required Parameters__

* `name` __:__ `String`


-}

startTrigger :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartTriggerResponse)

startTrigger name =
    
    let
        requestInput = StartTriggerRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startTriggerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartTrigger"
                
                (AWS.Core.Decode.ResultDecoder "StartTriggerResponse" startTriggerResponseDecoder)
                
            )





{-| <p>Starts a new run of the specified workflow.</p>

__Required Parameters__

* `name` __:__ `String`


-}

startWorkflowRun :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartWorkflowRunResponse)

startWorkflowRun name =
    
    let
        requestInput = StartWorkflowRunRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startWorkflowRunRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartWorkflowRun"
                
                (AWS.Core.Decode.ResultDecoder "StartWorkflowRunResponse" startWorkflowRunResponseDecoder)
                
            )





{-| <p>If the specified crawler is running, stops the crawl.</p>

__Required Parameters__

* `name` __:__ `String`


-}

stopCrawler :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopCrawlerResponse)

stopCrawler name =
    
    let
        requestInput = StopCrawlerRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopCrawlerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopCrawler"
                
                (AWS.Core.Decode.ResultDecoder "StopCrawlerResponse" stopCrawlerResponseDecoder)
                
            )





{-| <p>Sets the schedule state of the specified crawler to <code>NOT_SCHEDULED</code>, but does not stop the crawler if it is already running.</p>

__Required Parameters__

* `crawlerName` __:__ `String`


-}

stopCrawlerSchedule :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopCrawlerScheduleResponse)

stopCrawlerSchedule crawlerName =
    
    let
        requestInput = StopCrawlerScheduleRequest
            
            crawlerName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopCrawlerScheduleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopCrawlerSchedule"
                
                (AWS.Core.Decode.ResultDecoder "StopCrawlerScheduleResponse" stopCrawlerScheduleResponseDecoder)
                
            )





{-| <p>Stops a specified trigger.</p>

__Required Parameters__

* `name` __:__ `String`


-}

stopTrigger :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopTriggerResponse)

stopTrigger name =
    
    let
        requestInput = StopTriggerRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopTriggerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopTrigger"
                
                (AWS.Core.Decode.ResultDecoder "StopTriggerResponse" stopTriggerResponseDecoder)
                
            )





{-| <p>Adds tags to a resource. A tag is a label you can assign to an AWS resource. In AWS Glue, you can tag only certain resources. For information about what resources you can tag, see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">AWS Tags in AWS Glue</a>.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tagsToAdd` __:__ `(Dict String String)`


-}

tagResource :
  
    String ->
  
    (Dict String String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceResponse)

tagResource resourceArn tagsToAdd =
    
    let
        requestInput = TagResourceRequest
            
            resourceArn
            
            tagsToAdd
            
        
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





{-| <p>Removes tags from a resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tagsToRemove` __:__ `(List String)`


-}

untagResource :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceResponse)

untagResource resourceArn tagsToRemove =
    
    let
        requestInput = UntagResourceRequest
            
            resourceArn
            
            tagsToRemove
            
        
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





{-| <p>Modifies an existing classifier (a <code>GrokClassifier</code>, an <code>XMLClassifier</code>, a <code>JsonClassifier</code>, or a <code>CsvClassifier</code>, depending on which field is present).</p>

__Required Parameters__



-}

updateClassifier :
  
  
    ( UpdateClassifierOptions -> UpdateClassifierOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateClassifierResponse)

updateClassifier setOptions =
    
    let
        requestInput = UpdateClassifierRequest
            
            options.grokClassifier
            
            options.xMLClassifier
            
            options.jsonClassifier
            
            options.csvClassifier
            
        
        options = setOptions (UpdateClassifierOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateClassifierRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateClassifier"
                
                (AWS.Core.Decode.ResultDecoder "UpdateClassifierResponse" updateClassifierResponseDecoder)
                
            )



{-| Options for a updateClassifier request
-}
type alias UpdateClassifierOptions =
    {
    grokClassifier : Maybe UpdateGrokClassifierRequest,xMLClassifier : Maybe UpdateXMLClassifierRequest,jsonClassifier : Maybe UpdateJsonClassifierRequest,csvClassifier : Maybe UpdateCsvClassifierRequest
    }



{-| <p>Updates a connection definition in the Data Catalog.</p>

__Required Parameters__

* `name` __:__ `String`
* `connectionInput` __:__ `ConnectionInput`


-}

updateConnection :
  
    String ->
  
    ConnectionInput ->
  
  
    ( UpdateConnectionOptions -> UpdateConnectionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateConnectionResponse)

updateConnection name connectionInput setOptions =
    
    let
        requestInput = UpdateConnectionRequest
            
            options.catalogId
            
            name
            
            connectionInput
            
        
        options = setOptions (UpdateConnectionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateConnectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateConnection"
                
                (AWS.Core.Decode.ResultDecoder "UpdateConnectionResponse" updateConnectionResponseDecoder)
                
            )



{-| Options for a updateConnection request
-}
type alias UpdateConnectionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Updates a crawler. If a crawler is running, you must stop it using <code>StopCrawler</code> before updating it.</p>

__Required Parameters__

* `name` __:__ `String`


-}

updateCrawler :
  
    String ->
  
  
    ( UpdateCrawlerOptions -> UpdateCrawlerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateCrawlerResponse)

updateCrawler name setOptions =
    
    let
        requestInput = UpdateCrawlerRequest
            
            name
            
            options.role
            
            options.databaseName
            
            options.description
            
            options.targets
            
            options.schedule
            
            options.classifiers
            
            options.tablePrefix
            
            options.schemaChangePolicy
            
            options.configuration
            
            options.crawlerSecurityConfiguration
            
        
        options = setOptions (UpdateCrawlerOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateCrawlerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateCrawler"
                
                (AWS.Core.Decode.ResultDecoder "UpdateCrawlerResponse" updateCrawlerResponseDecoder)
                
            )



{-| Options for a updateCrawler request
-}
type alias UpdateCrawlerOptions =
    {
    role : Maybe String,databaseName : Maybe String,description : Maybe String,targets : Maybe CrawlerTargets,schedule : Maybe String,classifiers : Maybe (List String),tablePrefix : Maybe String,schemaChangePolicy : Maybe SchemaChangePolicy,configuration : Maybe String,crawlerSecurityConfiguration : Maybe String
    }



{-| <p>Updates the schedule of a crawler using a <code>cron</code> expression. </p>

__Required Parameters__

* `crawlerName` __:__ `String`


-}

updateCrawlerSchedule :
  
    String ->
  
  
    ( UpdateCrawlerScheduleOptions -> UpdateCrawlerScheduleOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateCrawlerScheduleResponse)

updateCrawlerSchedule crawlerName setOptions =
    
    let
        requestInput = UpdateCrawlerScheduleRequest
            
            crawlerName
            
            options.schedule
            
        
        options = setOptions (UpdateCrawlerScheduleOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateCrawlerScheduleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateCrawlerSchedule"
                
                (AWS.Core.Decode.ResultDecoder "UpdateCrawlerScheduleResponse" updateCrawlerScheduleResponseDecoder)
                
            )



{-| Options for a updateCrawlerSchedule request
-}
type alias UpdateCrawlerScheduleOptions =
    {
    schedule : Maybe String
    }



{-| <p>Updates an existing database definition in a Data Catalog.</p>

__Required Parameters__

* `name` __:__ `String`
* `databaseInput` __:__ `DatabaseInput`


-}

updateDatabase :
  
    String ->
  
    DatabaseInput ->
  
  
    ( UpdateDatabaseOptions -> UpdateDatabaseOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateDatabaseResponse)

updateDatabase name databaseInput setOptions =
    
    let
        requestInput = UpdateDatabaseRequest
            
            options.catalogId
            
            name
            
            databaseInput
            
        
        options = setOptions (UpdateDatabaseOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateDatabaseRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateDatabase"
                
                (AWS.Core.Decode.ResultDecoder "UpdateDatabaseResponse" updateDatabaseResponseDecoder)
                
            )



{-| Options for a updateDatabase request
-}
type alias UpdateDatabaseOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Updates a specified development endpoint.</p>

__Required Parameters__

* `endpointName` __:__ `String`


-}

updateDevEndpoint :
  
    String ->
  
  
    ( UpdateDevEndpointOptions -> UpdateDevEndpointOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateDevEndpointResponse)

updateDevEndpoint endpointName setOptions =
    
    let
        requestInput = UpdateDevEndpointRequest
            
            endpointName
            
            options.publicKey
            
            options.addPublicKeys
            
            options.deletePublicKeys
            
            options.customLibraries
            
            options.updateEtlLibraries
            
            options.deleteArguments
            
            options.addArguments
            
        
        options = setOptions (UpdateDevEndpointOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateDevEndpointRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateDevEndpoint"
                
                (AWS.Core.Decode.ResultDecoder "UpdateDevEndpointResponse" updateDevEndpointResponseDecoder)
                
            )



{-| Options for a updateDevEndpoint request
-}
type alias UpdateDevEndpointOptions =
    {
    publicKey : Maybe String,addPublicKeys : Maybe (List String),deletePublicKeys : Maybe (List String),customLibraries : Maybe DevEndpointCustomLibraries,updateEtlLibraries : Maybe Bool,deleteArguments : Maybe (List String),addArguments : Maybe (Dict String String)
    }



{-| <p>Updates an existing job definition.</p>

__Required Parameters__

* `jobName` __:__ `String`
* `jobUpdate` __:__ `JobUpdate`


-}

updateJob :
  
    String ->
  
    JobUpdate ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateJobResponse)

updateJob jobName jobUpdate =
    
    let
        requestInput = UpdateJobRequest
            
            jobName
            
            jobUpdate
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateJob"
                
                (AWS.Core.Decode.ResultDecoder "UpdateJobResponse" updateJobResponseDecoder)
                
            )





{-| <p>Updates a partition.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `tableName` __:__ `String`
* `partitionValueList` __:__ `(List String)`
* `partitionInput` __:__ `PartitionInput`


-}

updatePartition :
  
    String ->
  
    String ->
  
    (List String) ->
  
    PartitionInput ->
  
  
    ( UpdatePartitionOptions -> UpdatePartitionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdatePartitionResponse)

updatePartition databaseName tableName partitionValueList partitionInput setOptions =
    
    let
        requestInput = UpdatePartitionRequest
            
            options.catalogId
            
            databaseName
            
            tableName
            
            partitionValueList
            
            partitionInput
            
        
        options = setOptions (UpdatePartitionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updatePartitionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdatePartition"
                
                (AWS.Core.Decode.ResultDecoder "UpdatePartitionResponse" updatePartitionResponseDecoder)
                
            )



{-| Options for a updatePartition request
-}
type alias UpdatePartitionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Updates a metadata table in the Data Catalog.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `tableInput` __:__ `TableInput`


-}

updateTable :
  
    String ->
  
    TableInput ->
  
  
    ( UpdateTableOptions -> UpdateTableOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTableResponse)

updateTable databaseName tableInput setOptions =
    
    let
        requestInput = UpdateTableRequest
            
            options.catalogId
            
            databaseName
            
            tableInput
            
            options.skipArchive
            
        
        options = setOptions (UpdateTableOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateTableRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateTable"
                
                (AWS.Core.Decode.ResultDecoder "UpdateTableResponse" updateTableResponseDecoder)
                
            )



{-| Options for a updateTable request
-}
type alias UpdateTableOptions =
    {
    catalogId : Maybe String,skipArchive : Maybe Bool
    }



{-| <p>Updates a trigger definition.</p>

__Required Parameters__

* `name` __:__ `String`
* `triggerUpdate` __:__ `TriggerUpdate`


-}

updateTrigger :
  
    String ->
  
    TriggerUpdate ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTriggerResponse)

updateTrigger name triggerUpdate =
    
    let
        requestInput = UpdateTriggerRequest
            
            name
            
            triggerUpdate
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateTriggerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateTrigger"
                
                (AWS.Core.Decode.ResultDecoder "UpdateTriggerResponse" updateTriggerResponseDecoder)
                
            )





{-| <p>Updates an existing function definition in the Data Catalog.</p>

__Required Parameters__

* `databaseName` __:__ `String`
* `functionName` __:__ `String`
* `functionInput` __:__ `UserDefinedFunctionInput`


-}

updateUserDefinedFunction :
  
    String ->
  
    String ->
  
    UserDefinedFunctionInput ->
  
  
    ( UpdateUserDefinedFunctionOptions -> UpdateUserDefinedFunctionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateUserDefinedFunctionResponse)

updateUserDefinedFunction databaseName functionName functionInput setOptions =
    
    let
        requestInput = UpdateUserDefinedFunctionRequest
            
            options.catalogId
            
            databaseName
            
            functionName
            
            functionInput
            
        
        options = setOptions (UpdateUserDefinedFunctionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateUserDefinedFunctionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateUserDefinedFunction"
                
                (AWS.Core.Decode.ResultDecoder "UpdateUserDefinedFunctionResponse" updateUserDefinedFunctionResponseDecoder)
                
            )



{-| Options for a updateUserDefinedFunction request
-}
type alias UpdateUserDefinedFunctionOptions =
    {
    catalogId : Maybe String
    }



{-| <p>Updates an existing workflow.</p>

__Required Parameters__

* `name` __:__ `String`


-}

updateWorkflow :
  
    String ->
  
  
    ( UpdateWorkflowOptions -> UpdateWorkflowOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateWorkflowResponse)

updateWorkflow name setOptions =
    
    let
        requestInput = UpdateWorkflowRequest
            
            name
            
            options.description
            
            options.defaultRunProperties
            
        
        options = setOptions (UpdateWorkflowOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateWorkflowRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateWorkflow"
                
                (AWS.Core.Decode.ResultDecoder "UpdateWorkflowResponse" updateWorkflowResponseDecoder)
                
            )



{-| Options for a updateWorkflow request
-}
type alias UpdateWorkflowOptions =
    {
    description : Maybe String,defaultRunProperties : Maybe (Dict String String)
    }




{-| <p>Defines an action to be initiated by a trigger.</p>
-}
type alias Action =
    { jobName : Maybe String
    , arguments : Maybe (Dict String String)
    , timeout : Maybe Int
    , securityConfiguration : Maybe String
    , notificationProperty : Maybe NotificationProperty
    , crawlerName : Maybe String
    }



actionDecoder : JD.Decoder Action
actionDecoder =
    JD.succeed Action
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobName", "jobName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arguments", "arguments"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timeout", "timeout"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityConfiguration", "securityConfiguration"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotificationProperty", "notificationProperty"]
            notificationPropertyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CrawlerName", "crawlerName"]
            JD.string
        )
        




actionToString : Action -> String -- List (String, String)
actionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobName" "" -- val.jobName
        
    --     |> Dict.insert
    --         "arguments" "" -- val.arguments
        
    --     |> Dict.insert
    --         "timeout" "" -- val.timeout
        
    --     |> Dict.insert
    --         "securityConfiguration" "" -- val.securityConfiguration
        
    --     |> Dict.insert
    --         "notificationProperty" "" -- val.notificationProperty
        
    --     |> Dict.insert
    --         "crawlerName" "" -- val.crawlerName
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchCreatePartition
-}
type alias BatchCreatePartitionResponse =
    { errors : Maybe (List PartitionError)
    }



batchCreatePartitionResponseDecoder : JD.Decoder BatchCreatePartitionResponse
batchCreatePartitionResponseDecoder =
    JD.succeed BatchCreatePartitionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Errors", "errors"]
            (JD.list partitionErrorDecoder)
        )
        




batchCreatePartitionResponseToString : BatchCreatePartitionResponse -> String -- List (String, String)
batchCreatePartitionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "errors" "" -- val.errors
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchDeleteConnection
-}
type alias BatchDeleteConnectionResponse =
    { succeeded : Maybe (List String)
    , errors : Maybe (Dict String ErrorDetail)
    }



batchDeleteConnectionResponseDecoder : JD.Decoder BatchDeleteConnectionResponse
batchDeleteConnectionResponseDecoder =
    JD.succeed BatchDeleteConnectionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Succeeded", "succeeded"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Errors", "errors"]
            (AWS.Core.Decode.dict errorDetailDecoder)
        )
        




batchDeleteConnectionResponseToString : BatchDeleteConnectionResponse -> String -- List (String, String)
batchDeleteConnectionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "succeeded" "" -- val.succeeded
        
    --     |> Dict.insert
    --         "errors" "" -- val.errors
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchDeletePartition
-}
type alias BatchDeletePartitionResponse =
    { errors : Maybe (List PartitionError)
    }



batchDeletePartitionResponseDecoder : JD.Decoder BatchDeletePartitionResponse
batchDeletePartitionResponseDecoder =
    JD.succeed BatchDeletePartitionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Errors", "errors"]
            (JD.list partitionErrorDecoder)
        )
        




batchDeletePartitionResponseToString : BatchDeletePartitionResponse -> String -- List (String, String)
batchDeletePartitionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "errors" "" -- val.errors
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchDeleteTable
-}
type alias BatchDeleteTableResponse =
    { errors : Maybe (List TableError)
    }



batchDeleteTableResponseDecoder : JD.Decoder BatchDeleteTableResponse
batchDeleteTableResponseDecoder =
    JD.succeed BatchDeleteTableResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Errors", "errors"]
            (JD.list tableErrorDecoder)
        )
        




batchDeleteTableResponseToString : BatchDeleteTableResponse -> String -- List (String, String)
batchDeleteTableResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "errors" "" -- val.errors
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchDeleteTableVersion
-}
type alias BatchDeleteTableVersionResponse =
    { errors : Maybe (List TableVersionError)
    }



batchDeleteTableVersionResponseDecoder : JD.Decoder BatchDeleteTableVersionResponse
batchDeleteTableVersionResponseDecoder =
    JD.succeed BatchDeleteTableVersionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Errors", "errors"]
            (JD.list tableVersionErrorDecoder)
        )
        




batchDeleteTableVersionResponseToString : BatchDeleteTableVersionResponse -> String -- List (String, String)
batchDeleteTableVersionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "errors" "" -- val.errors
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchGetCrawlers
-}
type alias BatchGetCrawlersResponse =
    { crawlers : Maybe (List Crawler)
    , crawlersNotFound : Maybe (List String)
    }



batchGetCrawlersResponseDecoder : JD.Decoder BatchGetCrawlersResponse
batchGetCrawlersResponseDecoder =
    JD.succeed BatchGetCrawlersResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Crawlers", "crawlers"]
            (JD.list crawlerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CrawlersNotFound", "crawlersNotFound"]
            (JD.list JD.string)
        )
        




batchGetCrawlersResponseToString : BatchGetCrawlersResponse -> String -- List (String, String)
batchGetCrawlersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "crawlers" "" -- val.crawlers
        
    --     |> Dict.insert
    --         "crawlersNotFound" "" -- val.crawlersNotFound
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchGetDevEndpoints
-}
type alias BatchGetDevEndpointsResponse =
    { devEndpoints : Maybe (List DevEndpoint)
    , devEndpointsNotFound : Maybe (List String)
    }



batchGetDevEndpointsResponseDecoder : JD.Decoder BatchGetDevEndpointsResponse
batchGetDevEndpointsResponseDecoder =
    JD.succeed BatchGetDevEndpointsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DevEndpoints", "devEndpoints"]
            (JD.list devEndpointDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DevEndpointsNotFound", "devEndpointsNotFound"]
            (JD.list JD.string)
        )
        




batchGetDevEndpointsResponseToString : BatchGetDevEndpointsResponse -> String -- List (String, String)
batchGetDevEndpointsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "devEndpoints" "" -- val.devEndpoints
        
    --     |> Dict.insert
    --         "devEndpointsNotFound" "" -- val.devEndpointsNotFound
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchGetJobs
-}
type alias BatchGetJobsResponse =
    { jobs : Maybe (List Job)
    , jobsNotFound : Maybe (List String)
    }



batchGetJobsResponseDecoder : JD.Decoder BatchGetJobsResponse
batchGetJobsResponseDecoder =
    JD.succeed BatchGetJobsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Jobs", "jobs"]
            (JD.list jobDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobsNotFound", "jobsNotFound"]
            (JD.list JD.string)
        )
        




batchGetJobsResponseToString : BatchGetJobsResponse -> String -- List (String, String)
batchGetJobsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobs" "" -- val.jobs
        
    --     |> Dict.insert
    --         "jobsNotFound" "" -- val.jobsNotFound
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchGetPartition
-}
type alias BatchGetPartitionResponse =
    { partitions : Maybe (List Partition)
    , unprocessedKeys : Maybe (List PartitionValueList)
    }



batchGetPartitionResponseDecoder : JD.Decoder BatchGetPartitionResponse
batchGetPartitionResponseDecoder =
    JD.succeed BatchGetPartitionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Partitions", "partitions"]
            (JD.list partitionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UnprocessedKeys", "unprocessedKeys"]
            (JD.list partitionValueListDecoder)
        )
        




batchGetPartitionResponseToString : BatchGetPartitionResponse -> String -- List (String, String)
batchGetPartitionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "partitions" "" -- val.partitions
        
    --     |> Dict.insert
    --         "unprocessedKeys" "" -- val.unprocessedKeys
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchGetTriggers
-}
type alias BatchGetTriggersResponse =
    { triggers : Maybe (List Trigger)
    , triggersNotFound : Maybe (List String)
    }



batchGetTriggersResponseDecoder : JD.Decoder BatchGetTriggersResponse
batchGetTriggersResponseDecoder =
    JD.succeed BatchGetTriggersResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Triggers", "triggers"]
            (JD.list triggerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TriggersNotFound", "triggersNotFound"]
            (JD.list JD.string)
        )
        




batchGetTriggersResponseToString : BatchGetTriggersResponse -> String -- List (String, String)
batchGetTriggersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "triggers" "" -- val.triggers
        
    --     |> Dict.insert
    --         "triggersNotFound" "" -- val.triggersNotFound
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchGetWorkflows
-}
type alias BatchGetWorkflowsResponse =
    { workflows : Maybe (List Workflow)
    , missingWorkflows : Maybe (List String)
    }



batchGetWorkflowsResponseDecoder : JD.Decoder BatchGetWorkflowsResponse
batchGetWorkflowsResponseDecoder =
    JD.succeed BatchGetWorkflowsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Workflows", "workflows"]
            (JD.list workflowDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MissingWorkflows", "missingWorkflows"]
            (JD.list JD.string)
        )
        




batchGetWorkflowsResponseToString : BatchGetWorkflowsResponse -> String -- List (String, String)
batchGetWorkflowsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workflows" "" -- val.workflows
        
    --     |> Dict.insert
    --         "missingWorkflows" "" -- val.missingWorkflows
        
    --     |> Dict.toList
    ""



{-| <p>Records an error that occurred when attempting to stop a specified job run.</p>
-}
type alias BatchStopJobRunError =
    { jobName : Maybe String
    , jobRunId : Maybe String
    , errorDetail : Maybe ErrorDetail
    }



batchStopJobRunErrorDecoder : JD.Decoder BatchStopJobRunError
batchStopJobRunErrorDecoder =
    JD.succeed BatchStopJobRunError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobName", "jobName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobRunId", "jobRunId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorDetail", "errorDetail"]
            errorDetailDecoder
        )
        




batchStopJobRunErrorToString : BatchStopJobRunError -> String -- List (String, String)
batchStopJobRunErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobName" "" -- val.jobName
        
    --     |> Dict.insert
    --         "jobRunId" "" -- val.jobRunId
        
    --     |> Dict.insert
    --         "errorDetail" "" -- val.errorDetail
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchStopJobRun
-}
type alias BatchStopJobRunResponse =
    { successfulSubmissions : Maybe (List BatchStopJobRunSuccessfulSubmission)
    , errors : Maybe (List BatchStopJobRunError)
    }



batchStopJobRunResponseDecoder : JD.Decoder BatchStopJobRunResponse
batchStopJobRunResponseDecoder =
    JD.succeed BatchStopJobRunResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SuccessfulSubmissions", "successfulSubmissions"]
            (JD.list batchStopJobRunSuccessfulSubmissionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Errors", "errors"]
            (JD.list batchStopJobRunErrorDecoder)
        )
        




batchStopJobRunResponseToString : BatchStopJobRunResponse -> String -- List (String, String)
batchStopJobRunResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "successfulSubmissions" "" -- val.successfulSubmissions
        
    --     |> Dict.insert
    --         "errors" "" -- val.errors
        
    --     |> Dict.toList
    ""



{-| <p>Records a successful request to stop a specified <code>JobRun</code>.</p>
-}
type alias BatchStopJobRunSuccessfulSubmission =
    { jobName : Maybe String
    , jobRunId : Maybe String
    }



batchStopJobRunSuccessfulSubmissionDecoder : JD.Decoder BatchStopJobRunSuccessfulSubmission
batchStopJobRunSuccessfulSubmissionDecoder =
    JD.succeed BatchStopJobRunSuccessfulSubmission
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobName", "jobName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobRunId", "jobRunId"]
            JD.string
        )
        




batchStopJobRunSuccessfulSubmissionToString : BatchStopJobRunSuccessfulSubmission -> String -- List (String, String)
batchStopJobRunSuccessfulSubmissionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobName" "" -- val.jobName
        
    --     |> Dict.insert
    --         "jobRunId" "" -- val.jobRunId
        
    --     |> Dict.toList
    ""



{-| One of

* `CatalogEncryptionMode_DISABLED`
* `CatalogEncryptionMode_SSE-KMS`

-}
type CatalogEncryptionMode
    = CatalogEncryptionMode_DISABLED
    | CatalogEncryptionMode_SSE_KMS



catalogEncryptionModeDecoder : JD.Decoder CatalogEncryptionMode
catalogEncryptionModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DISABLED" ->
                        JD.succeed CatalogEncryptionMode_DISABLED

                    "SSE_KMS" ->
                        JD.succeed CatalogEncryptionMode_SSE_KMS


                    _ ->
                        JD.fail "bad thing"
            )




catalogEncryptionModeToString : CatalogEncryptionMode -> String
catalogEncryptionModeToString val =
    case val of
        CatalogEncryptionMode_DISABLED ->
            "DISABLED"

        CatalogEncryptionMode_SSE_KMS ->
            "SSE_KMS"




{-| <p>Specifies a table definition in the AWS Glue Data Catalog.</p>
-}
type alias CatalogEntry =
    { databaseName : String
    , tableName : String
    }



catalogEntryDecoder : JD.Decoder CatalogEntry
catalogEntryDecoder =
    JD.succeed CatalogEntry
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DatabaseName", "databaseName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TableName", "tableName"]
            JD.string
        )
        




catalogEntryToString : CatalogEntry -> String -- List (String, String)
catalogEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "databaseName" "" -- val.databaseName
        
    --     |> Dict.insert
    --         "tableName" "" -- val.tableName
        
    --     |> Dict.toList
    ""



{-| <p>A structure containing migration status information.</p>
-}
type alias CatalogImportStatus =
    { importCompleted : Maybe Bool
    , importTime : Maybe Posix
    , importedBy : Maybe String
    }



catalogImportStatusDecoder : JD.Decoder CatalogImportStatus
catalogImportStatusDecoder =
    JD.succeed CatalogImportStatus
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImportCompleted", "importCompleted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImportTime", "importTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImportedBy", "importedBy"]
            JD.string
        )
        




catalogImportStatusToString : CatalogImportStatus -> String -- List (String, String)
catalogImportStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "importCompleted" "" -- val.importCompleted
        
    --     |> Dict.insert
    --         "importTime" "" -- val.importTime
        
    --     |> Dict.insert
    --         "importedBy" "" -- val.importedBy
        
    --     |> Dict.toList
    ""



{-| <p>Specifies an AWS Glue Data Catalog target.</p>
-}
type alias CatalogTarget =
    { databaseName : String
    , tables : (List String)
    }



catalogTargetDecoder : JD.Decoder CatalogTarget
catalogTargetDecoder =
    JD.succeed CatalogTarget
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DatabaseName", "databaseName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Tables", "tables"]
            (JD.list JD.string)
        )
        




catalogTargetToString : CatalogTarget -> String -- List (String, String)
catalogTargetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "databaseName" "" -- val.databaseName
        
    --     |> Dict.insert
    --         "tables" "" -- val.tables
        
    --     |> Dict.toList
    ""



{-| <p>Classifiers are triggered during a crawl task. A classifier checks whether a given file is in a format it can handle. If it is, the classifier creates a schema in the form of a <code>StructType</code> object that matches that data format.</p> <p>You can use the standard classifiers that AWS Glue provides, or you can write your own classifiers to best categorize your data sources and specify the appropriate schemas to use for them. A classifier can be a <code>grok</code> classifier, an <code>XML</code> classifier, a <code>JSON</code> classifier, or a custom <code>CSV</code> classifier, as specified in one of the fields in the <code>Classifier</code> object.</p>
-}
type alias Classifier =
    { grokClassifier : Maybe GrokClassifier
    , xMLClassifier : Maybe XMLClassifier
    , jsonClassifier : Maybe JsonClassifier
    , csvClassifier : Maybe CsvClassifier
    }



classifierDecoder : JD.Decoder Classifier
classifierDecoder =
    JD.succeed Classifier
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GrokClassifier", "grokClassifier"]
            grokClassifierDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["XMLClassifier", "xMLClassifier"]
            xMLClassifierDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JsonClassifier", "jsonClassifier"]
            jsonClassifierDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CsvClassifier", "csvClassifier"]
            csvClassifierDecoder
        )
        




classifierToString : Classifier -> String -- List (String, String)
classifierToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "grokClassifier" "" -- val.grokClassifier
        
    --     |> Dict.insert
    --         "xMLClassifier" "" -- val.xMLClassifier
        
    --     |> Dict.insert
    --         "jsonClassifier" "" -- val.jsonClassifier
        
    --     |> Dict.insert
    --         "csvClassifier" "" -- val.csvClassifier
        
    --     |> Dict.toList
    ""



{-| <p>Specifies how Amazon CloudWatch data should be encrypted.</p>
-}
type alias CloudWatchEncryption =
    { cloudWatchEncryptionMode : Maybe CloudWatchEncryptionMode
    , kmsKeyArn : Maybe String
    }



cloudWatchEncryptionDecoder : JD.Decoder CloudWatchEncryption
cloudWatchEncryptionDecoder =
    JD.succeed CloudWatchEncryption
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchEncryptionMode", "cloudWatchEncryptionMode"]
            cloudWatchEncryptionModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KmsKeyArn", "kmsKeyArn"]
            JD.string
        )
        




cloudWatchEncryptionToString : CloudWatchEncryption -> String -- List (String, String)
cloudWatchEncryptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "cloudWatchEncryptionMode" "" -- val.cloudWatchEncryptionMode
        
    --     |> Dict.insert
    --         "kmsKeyArn" "" -- val.kmsKeyArn
        
    --     |> Dict.toList
    ""



{-| One of

* `CloudWatchEncryptionMode_DISABLED`
* `CloudWatchEncryptionMode_SSE-KMS`

-}
type CloudWatchEncryptionMode
    = CloudWatchEncryptionMode_DISABLED
    | CloudWatchEncryptionMode_SSE_KMS



cloudWatchEncryptionModeDecoder : JD.Decoder CloudWatchEncryptionMode
cloudWatchEncryptionModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DISABLED" ->
                        JD.succeed CloudWatchEncryptionMode_DISABLED

                    "SSE_KMS" ->
                        JD.succeed CloudWatchEncryptionMode_SSE_KMS


                    _ ->
                        JD.fail "bad thing"
            )




cloudWatchEncryptionModeToString : CloudWatchEncryptionMode -> String
cloudWatchEncryptionModeToString val =
    case val of
        CloudWatchEncryptionMode_DISABLED ->
            "DISABLED"

        CloudWatchEncryptionMode_SSE_KMS ->
            "SSE_KMS"




{-| <p>Represents a directional edge in a directed acyclic graph (DAG).</p>
-}
type alias CodeGenEdge =
    { source : String
    , target : String
    , targetParameter : Maybe String
    }



codeGenEdgeDecoder : JD.Decoder CodeGenEdge
codeGenEdgeDecoder =
    JD.succeed CodeGenEdge
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Source", "source"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Target", "target"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetParameter", "targetParameter"]
            JD.string
        )
        




codeGenEdgeToString : CodeGenEdge -> String -- List (String, String)
codeGenEdgeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "target" "" -- val.target
        
    --     |> Dict.insert
    --         "targetParameter" "" -- val.targetParameter
        
    --     |> Dict.toList
    ""



{-| <p>Represents a node in a directed acyclic graph (DAG)</p>
-}
type alias CodeGenNode =
    { id : String
    , nodeType : String
    , args : (List CodeGenNodeArg)
    , lineNumber : Maybe Int
    }



codeGenNodeDecoder : JD.Decoder CodeGenNode
codeGenNodeDecoder =
    JD.succeed CodeGenNode
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["NodeType", "nodeType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Args", "args"]
            (JD.list codeGenNodeArgDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LineNumber", "lineNumber"]
            JD.int
        )
        




codeGenNodeToString : CodeGenNode -> String -- List (String, String)
codeGenNodeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "nodeType" "" -- val.nodeType
        
    --     |> Dict.insert
    --         "args" "" -- val.args
        
    --     |> Dict.insert
    --         "lineNumber" "" -- val.lineNumber
        
    --     |> Dict.toList
    ""



{-| <p>An argument or property of a node.</p>
-}
type alias CodeGenNodeArg =
    { name : String
    , value : String
    , param : Maybe Bool
    }



codeGenNodeArgDecoder : JD.Decoder CodeGenNodeArg
codeGenNodeArgDecoder =
    JD.succeed CodeGenNodeArg
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Value", "value"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Param", "param"]
            JD.bool
        )
        




codeGenNodeArgToString : CodeGenNodeArg -> String -- List (String, String)
codeGenNodeArgToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "param" "" -- val.param
        
    --     |> Dict.toList
    ""



{-| <p>A column in a <code>Table</code>.</p>
-}
type alias Column =
    { name : String
    , type_ : Maybe String
    , comment : Maybe String
    }



columnDecoder : JD.Decoder Column
columnDecoder =
    JD.succeed Column
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Comment", "comment"]
            JD.string
        )
        




columnToString : Column -> String -- List (String, String)
columnToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "comment" "" -- val.comment
        
    --     |> Dict.toList
    ""



{-| <p>Defines a condition under which a trigger fires.</p>
-}
type alias Condition =
    { logicalOperator : Maybe LogicalOperator
    , jobName : Maybe String
    , state : Maybe JobRunState
    , crawlerName : Maybe String
    , crawlState : Maybe CrawlState
    }



conditionDecoder : JD.Decoder Condition
conditionDecoder =
    JD.succeed Condition
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogicalOperator", "logicalOperator"]
            logicalOperatorDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobName", "jobName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            jobRunStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CrawlerName", "crawlerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CrawlState", "crawlState"]
            crawlStateDecoder
        )
        




conditionToString : Condition -> String -- List (String, String)
conditionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logicalOperator" "" -- val.logicalOperator
        
    --     |> Dict.insert
    --         "jobName" "" -- val.jobName
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "crawlerName" "" -- val.crawlerName
        
    --     |> Dict.insert
    --         "crawlState" "" -- val.crawlState
        
    --     |> Dict.toList
    ""



{-| <p>Defines a connection to a data source.</p>
-}
type alias Connection =
    { name : Maybe String
    , description : Maybe String
    , connectionType : Maybe ConnectionType
    , matchCriteria : Maybe (List String)
    , connectionProperties : Maybe (Dict String String)
    , physicalConnectionRequirements : Maybe PhysicalConnectionRequirements
    , creationTime : Maybe Posix
    , lastUpdatedTime : Maybe Posix
    , lastUpdatedBy : Maybe String
    }



connectionDecoder : JD.Decoder Connection
connectionDecoder =
    JD.succeed Connection
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConnectionType", "connectionType"]
            connectionTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MatchCriteria", "matchCriteria"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConnectionProperties", "connectionProperties"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PhysicalConnectionRequirements", "physicalConnectionRequirements"]
            physicalConnectionRequirementsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdatedTime", "lastUpdatedTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdatedBy", "lastUpdatedBy"]
            JD.string
        )
        




connectionToString : Connection -> String -- List (String, String)
connectionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "connectionType" "" -- val.connectionType
        
    --     |> Dict.insert
    --         "matchCriteria" "" -- val.matchCriteria
        
    --     |> Dict.insert
    --         "connectionProperties" "" -- val.connectionProperties
        
    --     |> Dict.insert
    --         "physicalConnectionRequirements" "" -- val.physicalConnectionRequirements
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "lastUpdatedTime" "" -- val.lastUpdatedTime
        
    --     |> Dict.insert
    --         "lastUpdatedBy" "" -- val.lastUpdatedBy
        
    --     |> Dict.toList
    ""



{-| <p>A structure that is used to specify a connection to create or update.</p>
-}
type alias ConnectionInput =
    { name : String
    , description : Maybe String
    , connectionType : ConnectionType
    , matchCriteria : Maybe (List String)
    , connectionProperties : (Dict String String)
    , physicalConnectionRequirements : Maybe PhysicalConnectionRequirements
    }



connectionInputDecoder : JD.Decoder ConnectionInput
connectionInputDecoder =
    JD.succeed ConnectionInput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ConnectionType", "connectionType"]
            connectionTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MatchCriteria", "matchCriteria"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ConnectionProperties", "connectionProperties"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PhysicalConnectionRequirements", "physicalConnectionRequirements"]
            physicalConnectionRequirementsDecoder
        )
        




connectionInputToString : ConnectionInput -> String -- List (String, String)
connectionInputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "connectionType" "" -- val.connectionType
        
    --     |> Dict.insert
    --         "matchCriteria" "" -- val.matchCriteria
        
    --     |> Dict.insert
    --         "connectionProperties" "" -- val.connectionProperties
        
    --     |> Dict.insert
    --         "physicalConnectionRequirements" "" -- val.physicalConnectionRequirements
        
    --     |> Dict.toList
    ""



{-| <p>The data structure used by the Data Catalog to encrypt the password as part of <code>CreateConnection</code> or <code>UpdateConnection</code> and store it in the <code>ENCRYPTED_PASSWORD</code> field in the connection properties. You can enable catalog encryption or only password encryption.</p> <p>When a <code>CreationConnection</code> request arrives containing a password, the Data Catalog first encrypts the password using your AWS KMS key. It then encrypts the whole connection object again if catalog encryption is also enabled.</p> <p>This encryption requires that you set AWS KMS key permissions to enable or restrict access on the password key according to your security requirements. For example, you might want only admin users to have decrypt permission on the password key.</p>
-}
type alias ConnectionPasswordEncryption =
    { returnConnectionPasswordEncrypted : Bool
    , awsKmsKeyId : Maybe String
    }



connectionPasswordEncryptionDecoder : JD.Decoder ConnectionPasswordEncryption
connectionPasswordEncryptionDecoder =
    JD.succeed ConnectionPasswordEncryption
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ReturnConnectionPasswordEncrypted", "returnConnectionPasswordEncrypted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AwsKmsKeyId", "awsKmsKeyId"]
            JD.string
        )
        




connectionPasswordEncryptionToString : ConnectionPasswordEncryption -> String -- List (String, String)
connectionPasswordEncryptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "returnConnectionPasswordEncrypted" "" -- val.returnConnectionPasswordEncrypted
        
    --     |> Dict.insert
    --         "awsKmsKeyId" "" -- val.awsKmsKeyId
        
    --     |> Dict.toList
    ""



{-| One of

* `ConnectionPropertyKey_HOST`
* `ConnectionPropertyKey_PORT`
* `ConnectionPropertyKey_USERNAME`
* `ConnectionPropertyKey_PASSWORD`
* `ConnectionPropertyKey_ENCRYPTED_PASSWORD`
* `ConnectionPropertyKey_JDBC_DRIVER_JAR_URI`
* `ConnectionPropertyKey_JDBC_DRIVER_CLASS_NAME`
* `ConnectionPropertyKey_JDBC_ENGINE`
* `ConnectionPropertyKey_JDBC_ENGINE_VERSION`
* `ConnectionPropertyKey_CONFIG_FILES`
* `ConnectionPropertyKey_INSTANCE_ID`
* `ConnectionPropertyKey_JDBC_CONNECTION_URL`
* `ConnectionPropertyKey_JDBC_ENFORCE_SSL`

-}
type ConnectionPropertyKey
    = ConnectionPropertyKey_HOST
    | ConnectionPropertyKey_PORT
    | ConnectionPropertyKey_USERNAME
    | ConnectionPropertyKey_PASSWORD
    | ConnectionPropertyKey_ENCRYPTED_PASSWORD
    | ConnectionPropertyKey_JDBC_DRIVER_JAR_URI
    | ConnectionPropertyKey_JDBC_DRIVER_CLASS_NAME
    | ConnectionPropertyKey_JDBC_ENGINE
    | ConnectionPropertyKey_JDBC_ENGINE_VERSION
    | ConnectionPropertyKey_CONFIG_FILES
    | ConnectionPropertyKey_INSTANCE_ID
    | ConnectionPropertyKey_JDBC_CONNECTION_URL
    | ConnectionPropertyKey_JDBC_ENFORCE_SSL



connectionPropertyKeyDecoder : JD.Decoder ConnectionPropertyKey
connectionPropertyKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HOST" ->
                        JD.succeed ConnectionPropertyKey_HOST

                    "PORT" ->
                        JD.succeed ConnectionPropertyKey_PORT

                    "USERNAME" ->
                        JD.succeed ConnectionPropertyKey_USERNAME

                    "PASSWORD" ->
                        JD.succeed ConnectionPropertyKey_PASSWORD

                    "ENCRYPTED_PASSWORD" ->
                        JD.succeed ConnectionPropertyKey_ENCRYPTED_PASSWORD

                    "JDBC_DRIVER_JAR_URI" ->
                        JD.succeed ConnectionPropertyKey_JDBC_DRIVER_JAR_URI

                    "JDBC_DRIVER_CLASS_NAME" ->
                        JD.succeed ConnectionPropertyKey_JDBC_DRIVER_CLASS_NAME

                    "JDBC_ENGINE" ->
                        JD.succeed ConnectionPropertyKey_JDBC_ENGINE

                    "JDBC_ENGINE_VERSION" ->
                        JD.succeed ConnectionPropertyKey_JDBC_ENGINE_VERSION

                    "CONFIG_FILES" ->
                        JD.succeed ConnectionPropertyKey_CONFIG_FILES

                    "INSTANCE_ID" ->
                        JD.succeed ConnectionPropertyKey_INSTANCE_ID

                    "JDBC_CONNECTION_URL" ->
                        JD.succeed ConnectionPropertyKey_JDBC_CONNECTION_URL

                    "JDBC_ENFORCE_SSL" ->
                        JD.succeed ConnectionPropertyKey_JDBC_ENFORCE_SSL


                    _ ->
                        JD.fail "bad thing"
            )




connectionPropertyKeyToString : ConnectionPropertyKey -> String
connectionPropertyKeyToString val =
    case val of
        ConnectionPropertyKey_HOST ->
            "HOST"

        ConnectionPropertyKey_PORT ->
            "PORT"

        ConnectionPropertyKey_USERNAME ->
            "USERNAME"

        ConnectionPropertyKey_PASSWORD ->
            "PASSWORD"

        ConnectionPropertyKey_ENCRYPTED_PASSWORD ->
            "ENCRYPTED_PASSWORD"

        ConnectionPropertyKey_JDBC_DRIVER_JAR_URI ->
            "JDBC_DRIVER_JAR_URI"

        ConnectionPropertyKey_JDBC_DRIVER_CLASS_NAME ->
            "JDBC_DRIVER_CLASS_NAME"

        ConnectionPropertyKey_JDBC_ENGINE ->
            "JDBC_ENGINE"

        ConnectionPropertyKey_JDBC_ENGINE_VERSION ->
            "JDBC_ENGINE_VERSION"

        ConnectionPropertyKey_CONFIG_FILES ->
            "CONFIG_FILES"

        ConnectionPropertyKey_INSTANCE_ID ->
            "INSTANCE_ID"

        ConnectionPropertyKey_JDBC_CONNECTION_URL ->
            "JDBC_CONNECTION_URL"

        ConnectionPropertyKey_JDBC_ENFORCE_SSL ->
            "JDBC_ENFORCE_SSL"




{-| One of

* `ConnectionType_JDBC`
* `ConnectionType_SFTP`

-}
type ConnectionType
    = ConnectionType_JDBC
    | ConnectionType_SFTP



connectionTypeDecoder : JD.Decoder ConnectionType
connectionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "JDBC" ->
                        JD.succeed ConnectionType_JDBC

                    "SFTP" ->
                        JD.succeed ConnectionType_SFTP


                    _ ->
                        JD.fail "bad thing"
            )




connectionTypeToString : ConnectionType -> String
connectionTypeToString val =
    case val of
        ConnectionType_JDBC ->
            "JDBC"

        ConnectionType_SFTP ->
            "SFTP"




{-| <p>Specifies the connections used by a job.</p>
-}
type alias ConnectionsList =
    { connections : Maybe (List String)
    }



connectionsListDecoder : JD.Decoder ConnectionsList
connectionsListDecoder =
    JD.succeed ConnectionsList
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Connections", "connections"]
            (JD.list JD.string)
        )
        




connectionsListToString : ConnectionsList -> String -- List (String, String)
connectionsListToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "connections" "" -- val.connections
        
    --     |> Dict.toList
    ""



{-| <p>The details of a crawl in the workflow.</p>
-}
type alias Crawl =
    { state : Maybe CrawlState
    , startedOn : Maybe Posix
    , completedOn : Maybe Posix
    , errorMessage : Maybe String
    , logGroup : Maybe String
    , logStream : Maybe String
    }



crawlDecoder : JD.Decoder Crawl
crawlDecoder =
    JD.succeed Crawl
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            crawlStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartedOn", "startedOn"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CompletedOn", "completedOn"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogGroup", "logGroup"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogStream", "logStream"]
            JD.string
        )
        




crawlToString : Crawl -> String -- List (String, String)
crawlToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "startedOn" "" -- val.startedOn
        
    --     |> Dict.insert
    --         "completedOn" "" -- val.completedOn
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.insert
    --         "logGroup" "" -- val.logGroup
        
    --     |> Dict.insert
    --         "logStream" "" -- val.logStream
        
    --     |> Dict.toList
    ""



{-| One of

* `CrawlState_RUNNING`
* `CrawlState_SUCCEEDED`
* `CrawlState_CANCELLED`
* `CrawlState_FAILED`

-}
type CrawlState
    = CrawlState_RUNNING
    | CrawlState_SUCCEEDED
    | CrawlState_CANCELLED
    | CrawlState_FAILED



crawlStateDecoder : JD.Decoder CrawlState
crawlStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RUNNING" ->
                        JD.succeed CrawlState_RUNNING

                    "SUCCEEDED" ->
                        JD.succeed CrawlState_SUCCEEDED

                    "CANCELLED" ->
                        JD.succeed CrawlState_CANCELLED

                    "FAILED" ->
                        JD.succeed CrawlState_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




crawlStateToString : CrawlState -> String
crawlStateToString val =
    case val of
        CrawlState_RUNNING ->
            "RUNNING"

        CrawlState_SUCCEEDED ->
            "SUCCEEDED"

        CrawlState_CANCELLED ->
            "CANCELLED"

        CrawlState_FAILED ->
            "FAILED"




{-| <p>Specifies a crawler program that examines a data source and uses classifiers to try to determine its schema. If successful, the crawler records metadata concerning the data source in the AWS Glue Data Catalog.</p>
-}
type alias Crawler =
    { name : Maybe String
    , role : Maybe String
    , targets : Maybe CrawlerTargets
    , databaseName : Maybe String
    , description : Maybe String
    , classifiers : Maybe (List String)
    , schemaChangePolicy : Maybe SchemaChangePolicy
    , state : Maybe CrawlerState
    , tablePrefix : Maybe String
    , schedule : Maybe Schedule
    , crawlElapsedTime : Maybe Int
    , creationTime : Maybe Posix
    , lastUpdated : Maybe Posix
    , lastCrawl : Maybe LastCrawlInfo
    , version : Maybe Int
    , configuration : Maybe String
    , crawlerSecurityConfiguration : Maybe String
    }



crawlerDecoder : JD.Decoder Crawler
crawlerDecoder =
    JD.succeed Crawler
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Role", "role"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Targets", "targets"]
            crawlerTargetsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DatabaseName", "databaseName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Classifiers", "classifiers"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SchemaChangePolicy", "schemaChangePolicy"]
            schemaChangePolicyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            crawlerStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TablePrefix", "tablePrefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Schedule", "schedule"]
            scheduleDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CrawlElapsedTime", "crawlElapsedTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdated", "lastUpdated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastCrawl", "lastCrawl"]
            lastCrawlInfoDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Configuration", "configuration"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CrawlerSecurityConfiguration", "crawlerSecurityConfiguration"]
            JD.string
        )
        




crawlerToString : Crawler -> String -- List (String, String)
crawlerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "role" "" -- val.role
        
    --     |> Dict.insert
    --         "targets" "" -- val.targets
        
    --     |> Dict.insert
    --         "databaseName" "" -- val.databaseName
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "classifiers" "" -- val.classifiers
        
    --     |> Dict.insert
    --         "schemaChangePolicy" "" -- val.schemaChangePolicy
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "tablePrefix" "" -- val.tablePrefix
        
    --     |> Dict.insert
    --         "schedule" "" -- val.schedule
        
    --     |> Dict.insert
    --         "crawlElapsedTime" "" -- val.crawlElapsedTime
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "lastUpdated" "" -- val.lastUpdated
        
    --     |> Dict.insert
    --         "lastCrawl" "" -- val.lastCrawl
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "configuration" "" -- val.configuration
        
    --     |> Dict.insert
    --         "crawlerSecurityConfiguration" "" -- val.crawlerSecurityConfiguration
        
    --     |> Dict.toList
    ""



{-| <p>Metrics for a specified crawler.</p>
-}
type alias CrawlerMetrics =
    { crawlerName : Maybe String
    , timeLeftSeconds : Maybe Float
    , stillEstimating : Maybe Bool
    , lastRuntimeSeconds : Maybe Float
    , medianRuntimeSeconds : Maybe Float
    , tablesCreated : Maybe Int
    , tablesUpdated : Maybe Int
    , tablesDeleted : Maybe Int
    }



crawlerMetricsDecoder : JD.Decoder CrawlerMetrics
crawlerMetricsDecoder =
    JD.succeed CrawlerMetrics
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CrawlerName", "crawlerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimeLeftSeconds", "timeLeftSeconds"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StillEstimating", "stillEstimating"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastRuntimeSeconds", "lastRuntimeSeconds"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MedianRuntimeSeconds", "medianRuntimeSeconds"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TablesCreated", "tablesCreated"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TablesUpdated", "tablesUpdated"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TablesDeleted", "tablesDeleted"]
            JD.int
        )
        




crawlerMetricsToString : CrawlerMetrics -> String -- List (String, String)
crawlerMetricsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "crawlerName" "" -- val.crawlerName
        
    --     |> Dict.insert
    --         "timeLeftSeconds" "" -- val.timeLeftSeconds
        
    --     |> Dict.insert
    --         "stillEstimating" "" -- val.stillEstimating
        
    --     |> Dict.insert
    --         "lastRuntimeSeconds" "" -- val.lastRuntimeSeconds
        
    --     |> Dict.insert
    --         "medianRuntimeSeconds" "" -- val.medianRuntimeSeconds
        
    --     |> Dict.insert
    --         "tablesCreated" "" -- val.tablesCreated
        
    --     |> Dict.insert
    --         "tablesUpdated" "" -- val.tablesUpdated
        
    --     |> Dict.insert
    --         "tablesDeleted" "" -- val.tablesDeleted
        
    --     |> Dict.toList
    ""



{-| <p>The details of a Crawler node present in the workflow.</p>
-}
type alias CrawlerNodeDetails =
    { crawls : Maybe (List Crawl)
    }



crawlerNodeDetailsDecoder : JD.Decoder CrawlerNodeDetails
crawlerNodeDetailsDecoder =
    JD.succeed CrawlerNodeDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Crawls", "crawls"]
            (JD.list crawlDecoder)
        )
        




crawlerNodeDetailsToString : CrawlerNodeDetails -> String -- List (String, String)
crawlerNodeDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "crawls" "" -- val.crawls
        
    --     |> Dict.toList
    ""



{-| One of

* `CrawlerState_READY`
* `CrawlerState_RUNNING`
* `CrawlerState_STOPPING`

-}
type CrawlerState
    = CrawlerState_READY
    | CrawlerState_RUNNING
    | CrawlerState_STOPPING



crawlerStateDecoder : JD.Decoder CrawlerState
crawlerStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "READY" ->
                        JD.succeed CrawlerState_READY

                    "RUNNING" ->
                        JD.succeed CrawlerState_RUNNING

                    "STOPPING" ->
                        JD.succeed CrawlerState_STOPPING


                    _ ->
                        JD.fail "bad thing"
            )




crawlerStateToString : CrawlerState -> String
crawlerStateToString val =
    case val of
        CrawlerState_READY ->
            "READY"

        CrawlerState_RUNNING ->
            "RUNNING"

        CrawlerState_STOPPING ->
            "STOPPING"




{-| <p>Specifies data stores to crawl.</p>
-}
type alias CrawlerTargets =
    { s3Targets : Maybe (List S3Target)
    , jdbcTargets : Maybe (List JdbcTarget)
    , dynamoDBTargets : Maybe (List DynamoDBTarget)
    , catalogTargets : Maybe (List CatalogTarget)
    }



crawlerTargetsDecoder : JD.Decoder CrawlerTargets
crawlerTargetsDecoder =
    JD.succeed CrawlerTargets
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3Targets", "s3Targets"]
            (JD.list s3TargetDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JdbcTargets", "jdbcTargets"]
            (JD.list jdbcTargetDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DynamoDBTargets", "dynamoDBTargets"]
            (JD.list dynamoDBTargetDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CatalogTargets", "catalogTargets"]
            (JD.list catalogTargetDecoder)
        )
        




crawlerTargetsToString : CrawlerTargets -> String -- List (String, String)
crawlerTargetsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s3Targets" "" -- val.s3Targets
        
    --     |> Dict.insert
    --         "jdbcTargets" "" -- val.jdbcTargets
        
    --     |> Dict.insert
    --         "dynamoDBTargets" "" -- val.dynamoDBTargets
        
    --     |> Dict.insert
    --         "catalogTargets" "" -- val.catalogTargets
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createClassifier
-}
type alias CreateClassifierResponse =
    { 
    }



createClassifierResponseDecoder : JD.Decoder CreateClassifierResponse
createClassifierResponseDecoder =
    JD.succeed CreateClassifierResponse
        




createClassifierResponseToString : CreateClassifierResponse -> String -- List (String, String)
createClassifierResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createConnection
-}
type alias CreateConnectionResponse =
    { 
    }



createConnectionResponseDecoder : JD.Decoder CreateConnectionResponse
createConnectionResponseDecoder =
    JD.succeed CreateConnectionResponse
        




createConnectionResponseToString : CreateConnectionResponse -> String -- List (String, String)
createConnectionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createCrawler
-}
type alias CreateCrawlerResponse =
    { 
    }



createCrawlerResponseDecoder : JD.Decoder CreateCrawlerResponse
createCrawlerResponseDecoder =
    JD.succeed CreateCrawlerResponse
        




createCrawlerResponseToString : CreateCrawlerResponse -> String -- List (String, String)
createCrawlerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Specifies a custom CSV classifier for <code>CreateClassifier</code> to create.</p>
-}
type alias CreateCsvClassifierRequest =
    { name : String
    , delimiter : Maybe String
    , quoteSymbol : Maybe String
    , containsHeader : Maybe CsvHeaderOption
    , header : Maybe (List String)
    , disableValueTrimming : Maybe Bool
    , allowSingleColumn : Maybe Bool
    }



createCsvClassifierRequestDecoder : JD.Decoder CreateCsvClassifierRequest
createCsvClassifierRequestDecoder =
    JD.succeed CreateCsvClassifierRequest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Delimiter", "delimiter"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QuoteSymbol", "quoteSymbol"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ContainsHeader", "containsHeader"]
            csvHeaderOptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Header", "header"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DisableValueTrimming", "disableValueTrimming"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowSingleColumn", "allowSingleColumn"]
            JD.bool
        )
        




createCsvClassifierRequestToString : CreateCsvClassifierRequest -> String -- List (String, String)
createCsvClassifierRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "delimiter" "" -- val.delimiter
        
    --     |> Dict.insert
    --         "quoteSymbol" "" -- val.quoteSymbol
        
    --     |> Dict.insert
    --         "containsHeader" "" -- val.containsHeader
        
    --     |> Dict.insert
    --         "header" "" -- val.header
        
    --     |> Dict.insert
    --         "disableValueTrimming" "" -- val.disableValueTrimming
        
    --     |> Dict.insert
    --         "allowSingleColumn" "" -- val.allowSingleColumn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDatabase
-}
type alias CreateDatabaseResponse =
    { 
    }



createDatabaseResponseDecoder : JD.Decoder CreateDatabaseResponse
createDatabaseResponseDecoder =
    JD.succeed CreateDatabaseResponse
        




createDatabaseResponseToString : CreateDatabaseResponse -> String -- List (String, String)
createDatabaseResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDevEndpoint
-}
type alias CreateDevEndpointResponse =
    { endpointName : Maybe String
    , status : Maybe String
    , securityGroupIds : Maybe (List String)
    , subnetId : Maybe String
    , roleArn : Maybe String
    , yarnEndpointAddress : Maybe String
    , zeppelinRemoteSparkInterpreterPort : Maybe Int
    , numberOfNodes : Maybe Int
    , workerType : Maybe WorkerType
    , numberOfWorkers : Maybe Int
    , availabilityZone : Maybe String
    , vpcId : Maybe String
    , extraPythonLibsS3Path : Maybe String
    , extraJarsS3Path : Maybe String
    , failureReason : Maybe String
    , securityConfiguration : Maybe String
    , createdTimestamp : Maybe Posix
    , arguments : Maybe (Dict String String)
    }



createDevEndpointResponseDecoder : JD.Decoder CreateDevEndpointResponse
createDevEndpointResponseDecoder =
    JD.succeed CreateDevEndpointResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndpointName", "endpointName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityGroupIds", "securityGroupIds"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetId", "subnetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleArn", "roleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["YarnEndpointAddress", "yarnEndpointAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ZeppelinRemoteSparkInterpreterPort", "zeppelinRemoteSparkInterpreterPort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberOfNodes", "numberOfNodes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkerType", "workerType"]
            workerTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberOfWorkers", "numberOfWorkers"]
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
            ["ExtraPythonLibsS3Path", "extraPythonLibsS3Path"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExtraJarsS3Path", "extraJarsS3Path"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailureReason", "failureReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityConfiguration", "securityConfiguration"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTimestamp", "createdTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arguments", "arguments"]
            (AWS.Core.Decode.dict JD.string)
        )
        




createDevEndpointResponseToString : CreateDevEndpointResponse -> String -- List (String, String)
createDevEndpointResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "endpointName" "" -- val.endpointName
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "securityGroupIds" "" -- val.securityGroupIds
        
    --     |> Dict.insert
    --         "subnetId" "" -- val.subnetId
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "yarnEndpointAddress" "" -- val.yarnEndpointAddress
        
    --     |> Dict.insert
    --         "zeppelinRemoteSparkInterpreterPort" "" -- val.zeppelinRemoteSparkInterpreterPort
        
    --     |> Dict.insert
    --         "numberOfNodes" "" -- val.numberOfNodes
        
    --     |> Dict.insert
    --         "workerType" "" -- val.workerType
        
    --     |> Dict.insert
    --         "numberOfWorkers" "" -- val.numberOfWorkers
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "extraPythonLibsS3Path" "" -- val.extraPythonLibsS3Path
        
    --     |> Dict.insert
    --         "extraJarsS3Path" "" -- val.extraJarsS3Path
        
    --     |> Dict.insert
    --         "failureReason" "" -- val.failureReason
        
    --     |> Dict.insert
    --         "securityConfiguration" "" -- val.securityConfiguration
        
    --     |> Dict.insert
    --         "createdTimestamp" "" -- val.createdTimestamp
        
    --     |> Dict.insert
    --         "arguments" "" -- val.arguments
        
    --     |> Dict.toList
    ""



{-| <p>Specifies a <code>grok</code> classifier for <code>CreateClassifier</code> to create.</p>
-}
type alias CreateGrokClassifierRequest =
    { classification : String
    , name : String
    , grokPattern : String
    , customPatterns : Maybe String
    }



createGrokClassifierRequestDecoder : JD.Decoder CreateGrokClassifierRequest
createGrokClassifierRequestDecoder =
    JD.succeed CreateGrokClassifierRequest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Classification", "classification"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["GrokPattern", "grokPattern"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomPatterns", "customPatterns"]
            JD.string
        )
        




createGrokClassifierRequestToString : CreateGrokClassifierRequest -> String -- List (String, String)
createGrokClassifierRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "classification" "" -- val.classification
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "grokPattern" "" -- val.grokPattern
        
    --     |> Dict.insert
    --         "customPatterns" "" -- val.customPatterns
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createJob
-}
type alias CreateJobResponse =
    { name : Maybe String
    }



createJobResponseDecoder : JD.Decoder CreateJobResponse
createJobResponseDecoder =
    JD.succeed CreateJobResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




createJobResponseToString : CreateJobResponse -> String -- List (String, String)
createJobResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Specifies a JSON classifier for <code>CreateClassifier</code> to create.</p>
-}
type alias CreateJsonClassifierRequest =
    { name : String
    , jsonPath : String
    }



createJsonClassifierRequestDecoder : JD.Decoder CreateJsonClassifierRequest
createJsonClassifierRequestDecoder =
    JD.succeed CreateJsonClassifierRequest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["JsonPath", "jsonPath"]
            JD.string
        )
        




createJsonClassifierRequestToString : CreateJsonClassifierRequest -> String -- List (String, String)
createJsonClassifierRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "jsonPath" "" -- val.jsonPath
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createPartition
-}
type alias CreatePartitionResponse =
    { 
    }



createPartitionResponseDecoder : JD.Decoder CreatePartitionResponse
createPartitionResponseDecoder =
    JD.succeed CreatePartitionResponse
        




createPartitionResponseToString : CreatePartitionResponse -> String -- List (String, String)
createPartitionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createScript
-}
type alias CreateScriptResponse =
    { pythonScript : Maybe String
    , scalaCode : Maybe String
    }



createScriptResponseDecoder : JD.Decoder CreateScriptResponse
createScriptResponseDecoder =
    JD.succeed CreateScriptResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PythonScript", "pythonScript"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScalaCode", "scalaCode"]
            JD.string
        )
        




createScriptResponseToString : CreateScriptResponse -> String -- List (String, String)
createScriptResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pythonScript" "" -- val.pythonScript
        
    --     |> Dict.insert
    --         "scalaCode" "" -- val.scalaCode
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createSecurityConfiguration
-}
type alias CreateSecurityConfigurationResponse =
    { name : Maybe String
    , createdTimestamp : Maybe Posix
    }



createSecurityConfigurationResponseDecoder : JD.Decoder CreateSecurityConfigurationResponse
createSecurityConfigurationResponseDecoder =
    JD.succeed CreateSecurityConfigurationResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTimestamp", "createdTimestamp"]
            JDX.datetime
        )
        




createSecurityConfigurationResponseToString : CreateSecurityConfigurationResponse -> String -- List (String, String)
createSecurityConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "createdTimestamp" "" -- val.createdTimestamp
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createTable
-}
type alias CreateTableResponse =
    { 
    }



createTableResponseDecoder : JD.Decoder CreateTableResponse
createTableResponseDecoder =
    JD.succeed CreateTableResponse
        




createTableResponseToString : CreateTableResponse -> String -- List (String, String)
createTableResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createTrigger
-}
type alias CreateTriggerResponse =
    { name : Maybe String
    }



createTriggerResponseDecoder : JD.Decoder CreateTriggerResponse
createTriggerResponseDecoder =
    JD.succeed CreateTriggerResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




createTriggerResponseToString : CreateTriggerResponse -> String -- List (String, String)
createTriggerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createUserDefinedFunction
-}
type alias CreateUserDefinedFunctionResponse =
    { 
    }



createUserDefinedFunctionResponseDecoder : JD.Decoder CreateUserDefinedFunctionResponse
createUserDefinedFunctionResponseDecoder =
    JD.succeed CreateUserDefinedFunctionResponse
        




createUserDefinedFunctionResponseToString : CreateUserDefinedFunctionResponse -> String -- List (String, String)
createUserDefinedFunctionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createWorkflow
-}
type alias CreateWorkflowResponse =
    { name : Maybe String
    }



createWorkflowResponseDecoder : JD.Decoder CreateWorkflowResponse
createWorkflowResponseDecoder =
    JD.succeed CreateWorkflowResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




createWorkflowResponseToString : CreateWorkflowResponse -> String -- List (String, String)
createWorkflowResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Specifies an XML classifier for <code>CreateClassifier</code> to create.</p>
-}
type alias CreateXMLClassifierRequest =
    { classification : String
    , name : String
    , rowTag : Maybe String
    }



createXMLClassifierRequestDecoder : JD.Decoder CreateXMLClassifierRequest
createXMLClassifierRequestDecoder =
    JD.succeed CreateXMLClassifierRequest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Classification", "classification"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RowTag", "rowTag"]
            JD.string
        )
        




createXMLClassifierRequestToString : CreateXMLClassifierRequest -> String -- List (String, String)
createXMLClassifierRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "classification" "" -- val.classification
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "rowTag" "" -- val.rowTag
        
    --     |> Dict.toList
    ""



{-| <p>A classifier for custom <code>CSV</code> content.</p>
-}
type alias CsvClassifier =
    { name : String
    , creationTime : Maybe Posix
    , lastUpdated : Maybe Posix
    , version : Maybe Int
    , delimiter : Maybe String
    , quoteSymbol : Maybe String
    , containsHeader : Maybe CsvHeaderOption
    , header : Maybe (List String)
    , disableValueTrimming : Maybe Bool
    , allowSingleColumn : Maybe Bool
    }



csvClassifierDecoder : JD.Decoder CsvClassifier
csvClassifierDecoder =
    JD.succeed CsvClassifier
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdated", "lastUpdated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Delimiter", "delimiter"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QuoteSymbol", "quoteSymbol"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ContainsHeader", "containsHeader"]
            csvHeaderOptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Header", "header"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DisableValueTrimming", "disableValueTrimming"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowSingleColumn", "allowSingleColumn"]
            JD.bool
        )
        




csvClassifierToString : CsvClassifier -> String -- List (String, String)
csvClassifierToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "lastUpdated" "" -- val.lastUpdated
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "delimiter" "" -- val.delimiter
        
    --     |> Dict.insert
    --         "quoteSymbol" "" -- val.quoteSymbol
        
    --     |> Dict.insert
    --         "containsHeader" "" -- val.containsHeader
        
    --     |> Dict.insert
    --         "header" "" -- val.header
        
    --     |> Dict.insert
    --         "disableValueTrimming" "" -- val.disableValueTrimming
        
    --     |> Dict.insert
    --         "allowSingleColumn" "" -- val.allowSingleColumn
        
    --     |> Dict.toList
    ""



{-| One of

* `CsvHeaderOption_UNKNOWN`
* `CsvHeaderOption_PRESENT`
* `CsvHeaderOption_ABSENT`

-}
type CsvHeaderOption
    = CsvHeaderOption_UNKNOWN
    | CsvHeaderOption_PRESENT
    | CsvHeaderOption_ABSENT



csvHeaderOptionDecoder : JD.Decoder CsvHeaderOption
csvHeaderOptionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNKNOWN" ->
                        JD.succeed CsvHeaderOption_UNKNOWN

                    "PRESENT" ->
                        JD.succeed CsvHeaderOption_PRESENT

                    "ABSENT" ->
                        JD.succeed CsvHeaderOption_ABSENT


                    _ ->
                        JD.fail "bad thing"
            )




csvHeaderOptionToString : CsvHeaderOption -> String
csvHeaderOptionToString val =
    case val of
        CsvHeaderOption_UNKNOWN ->
            "UNKNOWN"

        CsvHeaderOption_PRESENT ->
            "PRESENT"

        CsvHeaderOption_ABSENT ->
            "ABSENT"




{-| <p>Contains configuration information for maintaining Data Catalog security.</p>
-}
type alias DataCatalogEncryptionSettings =
    { encryptionAtRest : Maybe EncryptionAtRest
    , connectionPasswordEncryption : Maybe ConnectionPasswordEncryption
    }



dataCatalogEncryptionSettingsDecoder : JD.Decoder DataCatalogEncryptionSettings
dataCatalogEncryptionSettingsDecoder =
    JD.succeed DataCatalogEncryptionSettings
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncryptionAtRest", "encryptionAtRest"]
            encryptionAtRestDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConnectionPasswordEncryption", "connectionPasswordEncryption"]
            connectionPasswordEncryptionDecoder
        )
        




dataCatalogEncryptionSettingsToString : DataCatalogEncryptionSettings -> String -- List (String, String)
dataCatalogEncryptionSettingsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "encryptionAtRest" "" -- val.encryptionAtRest
        
    --     |> Dict.insert
    --         "connectionPasswordEncryption" "" -- val.connectionPasswordEncryption
        
    --     |> Dict.toList
    ""



{-| <p>The <code>Database</code> object represents a logical grouping of tables that may reside in a Hive metastore or an RDBMS.</p>
-}
type alias Database =
    { name : String
    , description : Maybe String
    , locationUri : Maybe String
    , parameters : Maybe (Dict String String)
    , createTime : Maybe Posix
    }



databaseDecoder : JD.Decoder Database
databaseDecoder =
    JD.succeed Database
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LocationUri", "locationUri"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreateTime", "createTime"]
            JDX.datetime
        )
        




databaseToString : Database -> String -- List (String, String)
databaseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "locationUri" "" -- val.locationUri
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "createTime" "" -- val.createTime
        
    --     |> Dict.toList
    ""



{-| <p>The structure used to create or update a database.</p>
-}
type alias DatabaseInput =
    { name : String
    , description : Maybe String
    , locationUri : Maybe String
    , parameters : Maybe (Dict String String)
    }



databaseInputDecoder : JD.Decoder DatabaseInput
databaseInputDecoder =
    JD.succeed DatabaseInput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LocationUri", "locationUri"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        




databaseInputToString : DatabaseInput -> String -- List (String, String)
databaseInputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "locationUri" "" -- val.locationUri
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.toList
    ""



{-| One of

* `DeleteBehavior_LOG`
* `DeleteBehavior_DELETE_FROM_DATABASE`
* `DeleteBehavior_DEPRECATE_IN_DATABASE`

-}
type DeleteBehavior
    = DeleteBehavior_LOG
    | DeleteBehavior_DELETE_FROM_DATABASE
    | DeleteBehavior_DEPRECATE_IN_DATABASE



deleteBehaviorDecoder : JD.Decoder DeleteBehavior
deleteBehaviorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "LOG" ->
                        JD.succeed DeleteBehavior_LOG

                    "DELETE_FROM_DATABASE" ->
                        JD.succeed DeleteBehavior_DELETE_FROM_DATABASE

                    "DEPRECATE_IN_DATABASE" ->
                        JD.succeed DeleteBehavior_DEPRECATE_IN_DATABASE


                    _ ->
                        JD.fail "bad thing"
            )




deleteBehaviorToString : DeleteBehavior -> String
deleteBehaviorToString val =
    case val of
        DeleteBehavior_LOG ->
            "LOG"

        DeleteBehavior_DELETE_FROM_DATABASE ->
            "DELETE_FROM_DATABASE"

        DeleteBehavior_DEPRECATE_IN_DATABASE ->
            "DEPRECATE_IN_DATABASE"




{-| Type of HTTP response from deleteClassifier
-}
type alias DeleteClassifierResponse =
    { 
    }



deleteClassifierResponseDecoder : JD.Decoder DeleteClassifierResponse
deleteClassifierResponseDecoder =
    JD.succeed DeleteClassifierResponse
        




deleteClassifierResponseToString : DeleteClassifierResponse -> String -- List (String, String)
deleteClassifierResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteConnection
-}
type alias DeleteConnectionResponse =
    { 
    }



deleteConnectionResponseDecoder : JD.Decoder DeleteConnectionResponse
deleteConnectionResponseDecoder =
    JD.succeed DeleteConnectionResponse
        




deleteConnectionResponseToString : DeleteConnectionResponse -> String -- List (String, String)
deleteConnectionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteCrawler
-}
type alias DeleteCrawlerResponse =
    { 
    }



deleteCrawlerResponseDecoder : JD.Decoder DeleteCrawlerResponse
deleteCrawlerResponseDecoder =
    JD.succeed DeleteCrawlerResponse
        




deleteCrawlerResponseToString : DeleteCrawlerResponse -> String -- List (String, String)
deleteCrawlerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDatabase
-}
type alias DeleteDatabaseResponse =
    { 
    }



deleteDatabaseResponseDecoder : JD.Decoder DeleteDatabaseResponse
deleteDatabaseResponseDecoder =
    JD.succeed DeleteDatabaseResponse
        




deleteDatabaseResponseToString : DeleteDatabaseResponse -> String -- List (String, String)
deleteDatabaseResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDevEndpoint
-}
type alias DeleteDevEndpointResponse =
    { 
    }



deleteDevEndpointResponseDecoder : JD.Decoder DeleteDevEndpointResponse
deleteDevEndpointResponseDecoder =
    JD.succeed DeleteDevEndpointResponse
        




deleteDevEndpointResponseToString : DeleteDevEndpointResponse -> String -- List (String, String)
deleteDevEndpointResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteJob
-}
type alias DeleteJobResponse =
    { jobName : Maybe String
    }



deleteJobResponseDecoder : JD.Decoder DeleteJobResponse
deleteJobResponseDecoder =
    JD.succeed DeleteJobResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobName", "jobName"]
            JD.string
        )
        




deleteJobResponseToString : DeleteJobResponse -> String -- List (String, String)
deleteJobResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobName" "" -- val.jobName
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deletePartition
-}
type alias DeletePartitionResponse =
    { 
    }



deletePartitionResponseDecoder : JD.Decoder DeletePartitionResponse
deletePartitionResponseDecoder =
    JD.succeed DeletePartitionResponse
        




deletePartitionResponseToString : DeletePartitionResponse -> String -- List (String, String)
deletePartitionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteResourcePolicy
-}
type alias DeleteResourcePolicyResponse =
    { 
    }



deleteResourcePolicyResponseDecoder : JD.Decoder DeleteResourcePolicyResponse
deleteResourcePolicyResponseDecoder =
    JD.succeed DeleteResourcePolicyResponse
        




deleteResourcePolicyResponseToString : DeleteResourcePolicyResponse -> String -- List (String, String)
deleteResourcePolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteSecurityConfiguration
-}
type alias DeleteSecurityConfigurationResponse =
    { 
    }



deleteSecurityConfigurationResponseDecoder : JD.Decoder DeleteSecurityConfigurationResponse
deleteSecurityConfigurationResponseDecoder =
    JD.succeed DeleteSecurityConfigurationResponse
        




deleteSecurityConfigurationResponseToString : DeleteSecurityConfigurationResponse -> String -- List (String, String)
deleteSecurityConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteTable
-}
type alias DeleteTableResponse =
    { 
    }



deleteTableResponseDecoder : JD.Decoder DeleteTableResponse
deleteTableResponseDecoder =
    JD.succeed DeleteTableResponse
        




deleteTableResponseToString : DeleteTableResponse -> String -- List (String, String)
deleteTableResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteTableVersion
-}
type alias DeleteTableVersionResponse =
    { 
    }



deleteTableVersionResponseDecoder : JD.Decoder DeleteTableVersionResponse
deleteTableVersionResponseDecoder =
    JD.succeed DeleteTableVersionResponse
        




deleteTableVersionResponseToString : DeleteTableVersionResponse -> String -- List (String, String)
deleteTableVersionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteTrigger
-}
type alias DeleteTriggerResponse =
    { name : Maybe String
    }



deleteTriggerResponseDecoder : JD.Decoder DeleteTriggerResponse
deleteTriggerResponseDecoder =
    JD.succeed DeleteTriggerResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




deleteTriggerResponseToString : DeleteTriggerResponse -> String -- List (String, String)
deleteTriggerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteUserDefinedFunction
-}
type alias DeleteUserDefinedFunctionResponse =
    { 
    }



deleteUserDefinedFunctionResponseDecoder : JD.Decoder DeleteUserDefinedFunctionResponse
deleteUserDefinedFunctionResponseDecoder =
    JD.succeed DeleteUserDefinedFunctionResponse
        




deleteUserDefinedFunctionResponseToString : DeleteUserDefinedFunctionResponse -> String -- List (String, String)
deleteUserDefinedFunctionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteWorkflow
-}
type alias DeleteWorkflowResponse =
    { name : Maybe String
    }



deleteWorkflowResponseDecoder : JD.Decoder DeleteWorkflowResponse
deleteWorkflowResponseDecoder =
    JD.succeed DeleteWorkflowResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




deleteWorkflowResponseToString : DeleteWorkflowResponse -> String -- List (String, String)
deleteWorkflowResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>A development endpoint where a developer can remotely debug extract, transform, and load (ETL) scripts.</p>
-}
type alias DevEndpoint =
    { endpointName : Maybe String
    , roleArn : Maybe String
    , securityGroupIds : Maybe (List String)
    , subnetId : Maybe String
    , yarnEndpointAddress : Maybe String
    , privateAddress : Maybe String
    , zeppelinRemoteSparkInterpreterPort : Maybe Int
    , publicAddress : Maybe String
    , status : Maybe String
    , workerType : Maybe WorkerType
    , numberOfWorkers : Maybe Int
    , numberOfNodes : Maybe Int
    , availabilityZone : Maybe String
    , vpcId : Maybe String
    , extraPythonLibsS3Path : Maybe String
    , extraJarsS3Path : Maybe String
    , failureReason : Maybe String
    , lastUpdateStatus : Maybe String
    , createdTimestamp : Maybe Posix
    , lastModifiedTimestamp : Maybe Posix
    , publicKey : Maybe String
    , publicKeys : Maybe (List String)
    , securityConfiguration : Maybe String
    , arguments : Maybe (Dict String String)
    }



devEndpointDecoder : JD.Decoder DevEndpoint
devEndpointDecoder =
    JD.succeed DevEndpoint
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndpointName", "endpointName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleArn", "roleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityGroupIds", "securityGroupIds"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetId", "subnetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["YarnEndpointAddress", "yarnEndpointAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PrivateAddress", "privateAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ZeppelinRemoteSparkInterpreterPort", "zeppelinRemoteSparkInterpreterPort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PublicAddress", "publicAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkerType", "workerType"]
            workerTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberOfWorkers", "numberOfWorkers"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberOfNodes", "numberOfNodes"]
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
            ["ExtraPythonLibsS3Path", "extraPythonLibsS3Path"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExtraJarsS3Path", "extraJarsS3Path"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailureReason", "failureReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdateStatus", "lastUpdateStatus"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTimestamp", "createdTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastModifiedTimestamp", "lastModifiedTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PublicKey", "publicKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PublicKeys", "publicKeys"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityConfiguration", "securityConfiguration"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arguments", "arguments"]
            (AWS.Core.Decode.dict JD.string)
        )
        




devEndpointToString : DevEndpoint -> String -- List (String, String)
devEndpointToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "endpointName" "" -- val.endpointName
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "securityGroupIds" "" -- val.securityGroupIds
        
    --     |> Dict.insert
    --         "subnetId" "" -- val.subnetId
        
    --     |> Dict.insert
    --         "yarnEndpointAddress" "" -- val.yarnEndpointAddress
        
    --     |> Dict.insert
    --         "privateAddress" "" -- val.privateAddress
        
    --     |> Dict.insert
    --         "zeppelinRemoteSparkInterpreterPort" "" -- val.zeppelinRemoteSparkInterpreterPort
        
    --     |> Dict.insert
    --         "publicAddress" "" -- val.publicAddress
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "workerType" "" -- val.workerType
        
    --     |> Dict.insert
    --         "numberOfWorkers" "" -- val.numberOfWorkers
        
    --     |> Dict.insert
    --         "numberOfNodes" "" -- val.numberOfNodes
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "extraPythonLibsS3Path" "" -- val.extraPythonLibsS3Path
        
    --     |> Dict.insert
    --         "extraJarsS3Path" "" -- val.extraJarsS3Path
        
    --     |> Dict.insert
    --         "failureReason" "" -- val.failureReason
        
    --     |> Dict.insert
    --         "lastUpdateStatus" "" -- val.lastUpdateStatus
        
    --     |> Dict.insert
    --         "createdTimestamp" "" -- val.createdTimestamp
        
    --     |> Dict.insert
    --         "lastModifiedTimestamp" "" -- val.lastModifiedTimestamp
        
    --     |> Dict.insert
    --         "publicKey" "" -- val.publicKey
        
    --     |> Dict.insert
    --         "publicKeys" "" -- val.publicKeys
        
    --     |> Dict.insert
    --         "securityConfiguration" "" -- val.securityConfiguration
        
    --     |> Dict.insert
    --         "arguments" "" -- val.arguments
        
    --     |> Dict.toList
    ""



{-| <p>Custom libraries to be loaded into a development endpoint.</p>
-}
type alias DevEndpointCustomLibraries =
    { extraPythonLibsS3Path : Maybe String
    , extraJarsS3Path : Maybe String
    }



devEndpointCustomLibrariesDecoder : JD.Decoder DevEndpointCustomLibraries
devEndpointCustomLibrariesDecoder =
    JD.succeed DevEndpointCustomLibraries
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExtraPythonLibsS3Path", "extraPythonLibsS3Path"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExtraJarsS3Path", "extraJarsS3Path"]
            JD.string
        )
        




devEndpointCustomLibrariesToString : DevEndpointCustomLibraries -> String -- List (String, String)
devEndpointCustomLibrariesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "extraPythonLibsS3Path" "" -- val.extraPythonLibsS3Path
        
    --     |> Dict.insert
    --         "extraJarsS3Path" "" -- val.extraJarsS3Path
        
    --     |> Dict.toList
    ""



{-| <p>Specifies an Amazon DynamoDB table to crawl.</p>
-}
type alias DynamoDBTarget =
    { path : Maybe String
    }



dynamoDBTargetDecoder : JD.Decoder DynamoDBTarget
dynamoDBTargetDecoder =
    JD.succeed DynamoDBTarget
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Path", "path"]
            JD.string
        )
        




dynamoDBTargetToString : DynamoDBTarget -> String -- List (String, String)
dynamoDBTargetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "path" "" -- val.path
        
    --     |> Dict.toList
    ""



{-| <p>An edge represents a directed connection between two AWS Glue components which are part of the workflow the edge belongs to.</p>
-}
type alias Edge =
    { sourceId : Maybe String
    , destinationId : Maybe String
    }



edgeDecoder : JD.Decoder Edge
edgeDecoder =
    JD.succeed Edge
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceId", "sourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DestinationId", "destinationId"]
            JD.string
        )
        




edgeToString : Edge -> String -- List (String, String)
edgeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sourceId" "" -- val.sourceId
        
    --     |> Dict.insert
    --         "destinationId" "" -- val.destinationId
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the encryption-at-rest configuration for the Data Catalog.</p>
-}
type alias EncryptionAtRest =
    { catalogEncryptionMode : CatalogEncryptionMode
    , sseAwsKmsKeyId : Maybe String
    }



encryptionAtRestDecoder : JD.Decoder EncryptionAtRest
encryptionAtRestDecoder =
    JD.succeed EncryptionAtRest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CatalogEncryptionMode", "catalogEncryptionMode"]
            catalogEncryptionModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SseAwsKmsKeyId", "sseAwsKmsKeyId"]
            JD.string
        )
        




encryptionAtRestToString : EncryptionAtRest -> String -- List (String, String)
encryptionAtRestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "catalogEncryptionMode" "" -- val.catalogEncryptionMode
        
    --     |> Dict.insert
    --         "sseAwsKmsKeyId" "" -- val.sseAwsKmsKeyId
        
    --     |> Dict.toList
    ""



{-| <p>Specifies an encryption configuration.</p>
-}
type alias EncryptionConfiguration =
    { s3Encryption : Maybe (List S3Encryption)
    , cloudWatchEncryption : Maybe CloudWatchEncryption
    , jobBookmarksEncryption : Maybe JobBookmarksEncryption
    }



encryptionConfigurationDecoder : JD.Decoder EncryptionConfiguration
encryptionConfigurationDecoder =
    JD.succeed EncryptionConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3Encryption", "s3Encryption"]
            (JD.list s3EncryptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchEncryption", "cloudWatchEncryption"]
            cloudWatchEncryptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobBookmarksEncryption", "jobBookmarksEncryption"]
            jobBookmarksEncryptionDecoder
        )
        




encryptionConfigurationToString : EncryptionConfiguration -> String -- List (String, String)
encryptionConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s3Encryption" "" -- val.s3Encryption
        
    --     |> Dict.insert
    --         "cloudWatchEncryption" "" -- val.cloudWatchEncryption
        
    --     |> Dict.insert
    --         "jobBookmarksEncryption" "" -- val.jobBookmarksEncryption
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about an error.</p>
-}
type alias ErrorDetail =
    { errorCode : Maybe String
    , errorMessage : Maybe String
    }



errorDetailDecoder : JD.Decoder ErrorDetail
errorDetailDecoder =
    JD.succeed ErrorDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        




errorDetailToString : ErrorDetail -> String -- List (String, String)
errorDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| <p>An execution property of a job.</p>
-}
type alias ExecutionProperty =
    { maxConcurrentRuns : Maybe Int
    }



executionPropertyDecoder : JD.Decoder ExecutionProperty
executionPropertyDecoder =
    JD.succeed ExecutionProperty
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxConcurrentRuns", "maxConcurrentRuns"]
            JD.int
        )
        




executionPropertyToString : ExecutionProperty -> String -- List (String, String)
executionPropertyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "maxConcurrentRuns" "" -- val.maxConcurrentRuns
        
    --     |> Dict.toList
    ""



{-| One of

* `ExistCondition_MUST_EXIST`
* `ExistCondition_NOT_EXIST`
* `ExistCondition_NONE`

-}
type ExistCondition
    = ExistCondition_MUST_EXIST
    | ExistCondition_NOT_EXIST
    | ExistCondition_NONE



existConditionDecoder : JD.Decoder ExistCondition
existConditionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "MUST_EXIST" ->
                        JD.succeed ExistCondition_MUST_EXIST

                    "NOT_EXIST" ->
                        JD.succeed ExistCondition_NOT_EXIST

                    "NONE" ->
                        JD.succeed ExistCondition_NONE


                    _ ->
                        JD.fail "bad thing"
            )




existConditionToString : ExistCondition -> String
existConditionToString val =
    case val of
        ExistCondition_MUST_EXIST ->
            "MUST_EXIST"

        ExistCondition_NOT_EXIST ->
            "NOT_EXIST"

        ExistCondition_NONE ->
            "NONE"




{-| Type of HTTP response from getCatalogImportStatus
-}
type alias GetCatalogImportStatusResponse =
    { importStatus : Maybe CatalogImportStatus
    }



getCatalogImportStatusResponseDecoder : JD.Decoder GetCatalogImportStatusResponse
getCatalogImportStatusResponseDecoder =
    JD.succeed GetCatalogImportStatusResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImportStatus", "importStatus"]
            catalogImportStatusDecoder
        )
        




getCatalogImportStatusResponseToString : GetCatalogImportStatusResponse -> String -- List (String, String)
getCatalogImportStatusResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "importStatus" "" -- val.importStatus
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getClassifier
-}
type alias GetClassifierResponse =
    { classifier : Maybe Classifier
    }



getClassifierResponseDecoder : JD.Decoder GetClassifierResponse
getClassifierResponseDecoder =
    JD.succeed GetClassifierResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Classifier", "classifier"]
            classifierDecoder
        )
        




getClassifierResponseToString : GetClassifierResponse -> String -- List (String, String)
getClassifierResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "classifier" "" -- val.classifier
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getClassifiers
-}
type alias GetClassifiersResponse =
    { classifiers : Maybe (List Classifier)
    , nextToken : Maybe String
    }



getClassifiersResponseDecoder : JD.Decoder GetClassifiersResponse
getClassifiersResponseDecoder =
    JD.succeed GetClassifiersResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Classifiers", "classifiers"]
            (JD.list classifierDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getClassifiersResponseToString : GetClassifiersResponse -> String -- List (String, String)
getClassifiersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "classifiers" "" -- val.classifiers
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getConnection
-}
type alias GetConnectionResponse =
    { connection : Maybe Connection
    }



getConnectionResponseDecoder : JD.Decoder GetConnectionResponse
getConnectionResponseDecoder =
    JD.succeed GetConnectionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Connection", "connection"]
            connectionDecoder
        )
        




getConnectionResponseToString : GetConnectionResponse -> String -- List (String, String)
getConnectionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "connection" "" -- val.connection
        
    --     |> Dict.toList
    ""



{-| <p>Filters the connection definitions that are returned by the <code>GetConnections</code> API operation.</p>
-}
type alias GetConnectionsFilter =
    { matchCriteria : Maybe (List String)
    , connectionType : Maybe ConnectionType
    }



getConnectionsFilterDecoder : JD.Decoder GetConnectionsFilter
getConnectionsFilterDecoder =
    JD.succeed GetConnectionsFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MatchCriteria", "matchCriteria"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConnectionType", "connectionType"]
            connectionTypeDecoder
        )
        




getConnectionsFilterToString : GetConnectionsFilter -> String -- List (String, String)
getConnectionsFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "matchCriteria" "" -- val.matchCriteria
        
    --     |> Dict.insert
    --         "connectionType" "" -- val.connectionType
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getConnections
-}
type alias GetConnectionsResponse =
    { connectionList : Maybe (List Connection)
    , nextToken : Maybe String
    }



getConnectionsResponseDecoder : JD.Decoder GetConnectionsResponse
getConnectionsResponseDecoder =
    JD.succeed GetConnectionsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConnectionList", "connectionList"]
            (JD.list connectionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getConnectionsResponseToString : GetConnectionsResponse -> String -- List (String, String)
getConnectionsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "connectionList" "" -- val.connectionList
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getCrawlerMetrics
-}
type alias GetCrawlerMetricsResponse =
    { crawlerMetricsList : Maybe (List CrawlerMetrics)
    , nextToken : Maybe String
    }



getCrawlerMetricsResponseDecoder : JD.Decoder GetCrawlerMetricsResponse
getCrawlerMetricsResponseDecoder =
    JD.succeed GetCrawlerMetricsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CrawlerMetricsList", "crawlerMetricsList"]
            (JD.list crawlerMetricsDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getCrawlerMetricsResponseToString : GetCrawlerMetricsResponse -> String -- List (String, String)
getCrawlerMetricsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "crawlerMetricsList" "" -- val.crawlerMetricsList
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getCrawler
-}
type alias GetCrawlerResponse =
    { crawler : Maybe Crawler
    }



getCrawlerResponseDecoder : JD.Decoder GetCrawlerResponse
getCrawlerResponseDecoder =
    JD.succeed GetCrawlerResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Crawler", "crawler"]
            crawlerDecoder
        )
        




getCrawlerResponseToString : GetCrawlerResponse -> String -- List (String, String)
getCrawlerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "crawler" "" -- val.crawler
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getCrawlers
-}
type alias GetCrawlersResponse =
    { crawlers : Maybe (List Crawler)
    , nextToken : Maybe String
    }



getCrawlersResponseDecoder : JD.Decoder GetCrawlersResponse
getCrawlersResponseDecoder =
    JD.succeed GetCrawlersResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Crawlers", "crawlers"]
            (JD.list crawlerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getCrawlersResponseToString : GetCrawlersResponse -> String -- List (String, String)
getCrawlersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "crawlers" "" -- val.crawlers
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDataCatalogEncryptionSettings
-}
type alias GetDataCatalogEncryptionSettingsResponse =
    { dataCatalogEncryptionSettings : Maybe DataCatalogEncryptionSettings
    }



getDataCatalogEncryptionSettingsResponseDecoder : JD.Decoder GetDataCatalogEncryptionSettingsResponse
getDataCatalogEncryptionSettingsResponseDecoder =
    JD.succeed GetDataCatalogEncryptionSettingsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataCatalogEncryptionSettings", "dataCatalogEncryptionSettings"]
            dataCatalogEncryptionSettingsDecoder
        )
        




getDataCatalogEncryptionSettingsResponseToString : GetDataCatalogEncryptionSettingsResponse -> String -- List (String, String)
getDataCatalogEncryptionSettingsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dataCatalogEncryptionSettings" "" -- val.dataCatalogEncryptionSettings
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDatabase
-}
type alias GetDatabaseResponse =
    { database : Maybe Database
    }



getDatabaseResponseDecoder : JD.Decoder GetDatabaseResponse
getDatabaseResponseDecoder =
    JD.succeed GetDatabaseResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Database", "database"]
            databaseDecoder
        )
        




getDatabaseResponseToString : GetDatabaseResponse -> String -- List (String, String)
getDatabaseResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "database" "" -- val.database
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDatabases
-}
type alias GetDatabasesResponse =
    { databaseList : (List Database)
    , nextToken : Maybe String
    }



getDatabasesResponseDecoder : JD.Decoder GetDatabasesResponse
getDatabasesResponseDecoder =
    JD.succeed GetDatabasesResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DatabaseList", "databaseList"]
            (JD.list databaseDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getDatabasesResponseToString : GetDatabasesResponse -> String -- List (String, String)
getDatabasesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "databaseList" "" -- val.databaseList
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDataflowGraph
-}
type alias GetDataflowGraphResponse =
    { dagNodes : Maybe (List CodeGenNode)
    , dagEdges : Maybe (List CodeGenEdge)
    }



getDataflowGraphResponseDecoder : JD.Decoder GetDataflowGraphResponse
getDataflowGraphResponseDecoder =
    JD.succeed GetDataflowGraphResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DagNodes", "dagNodes"]
            (JD.list codeGenNodeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DagEdges", "dagEdges"]
            (JD.list codeGenEdgeDecoder)
        )
        




getDataflowGraphResponseToString : GetDataflowGraphResponse -> String -- List (String, String)
getDataflowGraphResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dagNodes" "" -- val.dagNodes
        
    --     |> Dict.insert
    --         "dagEdges" "" -- val.dagEdges
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDevEndpoint
-}
type alias GetDevEndpointResponse =
    { devEndpoint : Maybe DevEndpoint
    }



getDevEndpointResponseDecoder : JD.Decoder GetDevEndpointResponse
getDevEndpointResponseDecoder =
    JD.succeed GetDevEndpointResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DevEndpoint", "devEndpoint"]
            devEndpointDecoder
        )
        




getDevEndpointResponseToString : GetDevEndpointResponse -> String -- List (String, String)
getDevEndpointResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "devEndpoint" "" -- val.devEndpoint
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDevEndpoints
-}
type alias GetDevEndpointsResponse =
    { devEndpoints : Maybe (List DevEndpoint)
    , nextToken : Maybe String
    }



getDevEndpointsResponseDecoder : JD.Decoder GetDevEndpointsResponse
getDevEndpointsResponseDecoder =
    JD.succeed GetDevEndpointsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DevEndpoints", "devEndpoints"]
            (JD.list devEndpointDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getDevEndpointsResponseToString : GetDevEndpointsResponse -> String -- List (String, String)
getDevEndpointsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "devEndpoints" "" -- val.devEndpoints
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getJobBookmark
-}
type alias GetJobBookmarkResponse =
    { jobBookmarkEntry : Maybe JobBookmarkEntry
    }



getJobBookmarkResponseDecoder : JD.Decoder GetJobBookmarkResponse
getJobBookmarkResponseDecoder =
    JD.succeed GetJobBookmarkResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobBookmarkEntry", "jobBookmarkEntry"]
            jobBookmarkEntryDecoder
        )
        




getJobBookmarkResponseToString : GetJobBookmarkResponse -> String -- List (String, String)
getJobBookmarkResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobBookmarkEntry" "" -- val.jobBookmarkEntry
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getJobBookmarks
-}
type alias GetJobBookmarksResponse =
    { jobBookmarkEntries : Maybe (List JobBookmarkEntry)
    , nextToken : Maybe Int
    }



getJobBookmarksResponseDecoder : JD.Decoder GetJobBookmarksResponse
getJobBookmarksResponseDecoder =
    JD.succeed GetJobBookmarksResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobBookmarkEntries", "jobBookmarkEntries"]
            (JD.list jobBookmarkEntryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.int
        )
        




getJobBookmarksResponseToString : GetJobBookmarksResponse -> String -- List (String, String)
getJobBookmarksResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobBookmarkEntries" "" -- val.jobBookmarkEntries
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getJob
-}
type alias GetJobResponse =
    { job : Maybe Job
    }



getJobResponseDecoder : JD.Decoder GetJobResponse
getJobResponseDecoder =
    JD.succeed GetJobResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Job", "job"]
            jobDecoder
        )
        




getJobResponseToString : GetJobResponse -> String -- List (String, String)
getJobResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "job" "" -- val.job
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getJobRun
-}
type alias GetJobRunResponse =
    { jobRun : Maybe JobRun
    }



getJobRunResponseDecoder : JD.Decoder GetJobRunResponse
getJobRunResponseDecoder =
    JD.succeed GetJobRunResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobRun", "jobRun"]
            jobRunDecoder
        )
        




getJobRunResponseToString : GetJobRunResponse -> String -- List (String, String)
getJobRunResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobRun" "" -- val.jobRun
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getJobRuns
-}
type alias GetJobRunsResponse =
    { jobRuns : Maybe (List JobRun)
    , nextToken : Maybe String
    }



getJobRunsResponseDecoder : JD.Decoder GetJobRunsResponse
getJobRunsResponseDecoder =
    JD.succeed GetJobRunsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobRuns", "jobRuns"]
            (JD.list jobRunDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getJobRunsResponseToString : GetJobRunsResponse -> String -- List (String, String)
getJobRunsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobRuns" "" -- val.jobRuns
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getJobs
-}
type alias GetJobsResponse =
    { jobs : Maybe (List Job)
    , nextToken : Maybe String
    }



getJobsResponseDecoder : JD.Decoder GetJobsResponse
getJobsResponseDecoder =
    JD.succeed GetJobsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Jobs", "jobs"]
            (JD.list jobDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getJobsResponseToString : GetJobsResponse -> String -- List (String, String)
getJobsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobs" "" -- val.jobs
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getMapping
-}
type alias GetMappingResponse =
    { mapping : (List MappingEntry)
    }



getMappingResponseDecoder : JD.Decoder GetMappingResponse
getMappingResponseDecoder =
    JD.succeed GetMappingResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Mapping", "mapping"]
            (JD.list mappingEntryDecoder)
        )
        




getMappingResponseToString : GetMappingResponse -> String -- List (String, String)
getMappingResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "mapping" "" -- val.mapping
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getPartition
-}
type alias GetPartitionResponse =
    { partition : Maybe Partition
    }



getPartitionResponseDecoder : JD.Decoder GetPartitionResponse
getPartitionResponseDecoder =
    JD.succeed GetPartitionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Partition", "partition"]
            partitionDecoder
        )
        




getPartitionResponseToString : GetPartitionResponse -> String -- List (String, String)
getPartitionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "partition" "" -- val.partition
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getPartitions
-}
type alias GetPartitionsResponse =
    { partitions : Maybe (List Partition)
    , nextToken : Maybe String
    }



getPartitionsResponseDecoder : JD.Decoder GetPartitionsResponse
getPartitionsResponseDecoder =
    JD.succeed GetPartitionsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Partitions", "partitions"]
            (JD.list partitionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getPartitionsResponseToString : GetPartitionsResponse -> String -- List (String, String)
getPartitionsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "partitions" "" -- val.partitions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getPlan
-}
type alias GetPlanResponse =
    { pythonScript : Maybe String
    , scalaCode : Maybe String
    }



getPlanResponseDecoder : JD.Decoder GetPlanResponse
getPlanResponseDecoder =
    JD.succeed GetPlanResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PythonScript", "pythonScript"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScalaCode", "scalaCode"]
            JD.string
        )
        




getPlanResponseToString : GetPlanResponse -> String -- List (String, String)
getPlanResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pythonScript" "" -- val.pythonScript
        
    --     |> Dict.insert
    --         "scalaCode" "" -- val.scalaCode
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getResourcePolicy
-}
type alias GetResourcePolicyResponse =
    { policyInJson : Maybe String
    , policyHash : Maybe String
    , createTime : Maybe Posix
    , updateTime : Maybe Posix
    }



getResourcePolicyResponseDecoder : JD.Decoder GetResourcePolicyResponse
getResourcePolicyResponseDecoder =
    JD.succeed GetResourcePolicyResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyInJson", "policyInJson"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyHash", "policyHash"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreateTime", "createTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UpdateTime", "updateTime"]
            JDX.datetime
        )
        




getResourcePolicyResponseToString : GetResourcePolicyResponse -> String -- List (String, String)
getResourcePolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policyInJson" "" -- val.policyInJson
        
    --     |> Dict.insert
    --         "policyHash" "" -- val.policyHash
        
    --     |> Dict.insert
    --         "createTime" "" -- val.createTime
        
    --     |> Dict.insert
    --         "updateTime" "" -- val.updateTime
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getSecurityConfiguration
-}
type alias GetSecurityConfigurationResponse =
    { securityConfiguration : Maybe SecurityConfiguration
    }



getSecurityConfigurationResponseDecoder : JD.Decoder GetSecurityConfigurationResponse
getSecurityConfigurationResponseDecoder =
    JD.succeed GetSecurityConfigurationResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityConfiguration", "securityConfiguration"]
            securityConfigurationDecoder
        )
        




getSecurityConfigurationResponseToString : GetSecurityConfigurationResponse -> String -- List (String, String)
getSecurityConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "securityConfiguration" "" -- val.securityConfiguration
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getSecurityConfigurations
-}
type alias GetSecurityConfigurationsResponse =
    { securityConfigurations : Maybe (List SecurityConfiguration)
    , nextToken : Maybe String
    }



getSecurityConfigurationsResponseDecoder : JD.Decoder GetSecurityConfigurationsResponse
getSecurityConfigurationsResponseDecoder =
    JD.succeed GetSecurityConfigurationsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityConfigurations", "securityConfigurations"]
            (JD.list securityConfigurationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getSecurityConfigurationsResponseToString : GetSecurityConfigurationsResponse -> String -- List (String, String)
getSecurityConfigurationsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "securityConfigurations" "" -- val.securityConfigurations
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getTable
-}
type alias GetTableResponse =
    { table : Maybe Table
    }



getTableResponseDecoder : JD.Decoder GetTableResponse
getTableResponseDecoder =
    JD.succeed GetTableResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Table", "table"]
            tableDecoder
        )
        




getTableResponseToString : GetTableResponse -> String -- List (String, String)
getTableResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "table" "" -- val.table
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getTableVersion
-}
type alias GetTableVersionResponse =
    { tableVersion : Maybe TableVersion
    }



getTableVersionResponseDecoder : JD.Decoder GetTableVersionResponse
getTableVersionResponseDecoder =
    JD.succeed GetTableVersionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TableVersion", "tableVersion"]
            tableVersionDecoder
        )
        




getTableVersionResponseToString : GetTableVersionResponse -> String -- List (String, String)
getTableVersionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tableVersion" "" -- val.tableVersion
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getTableVersions
-}
type alias GetTableVersionsResponse =
    { tableVersions : Maybe (List TableVersion)
    , nextToken : Maybe String
    }



getTableVersionsResponseDecoder : JD.Decoder GetTableVersionsResponse
getTableVersionsResponseDecoder =
    JD.succeed GetTableVersionsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TableVersions", "tableVersions"]
            (JD.list tableVersionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getTableVersionsResponseToString : GetTableVersionsResponse -> String -- List (String, String)
getTableVersionsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tableVersions" "" -- val.tableVersions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getTables
-}
type alias GetTablesResponse =
    { tableList : Maybe (List Table)
    , nextToken : Maybe String
    }



getTablesResponseDecoder : JD.Decoder GetTablesResponse
getTablesResponseDecoder =
    JD.succeed GetTablesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TableList", "tableList"]
            (JD.list tableDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getTablesResponseToString : GetTablesResponse -> String -- List (String, String)
getTablesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tableList" "" -- val.tableList
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getTags
-}
type alias GetTagsResponse =
    { tags : Maybe (Dict String String)
    }



getTagsResponseDecoder : JD.Decoder GetTagsResponse
getTagsResponseDecoder =
    JD.succeed GetTagsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (AWS.Core.Decode.dict JD.string)
        )
        




getTagsResponseToString : GetTagsResponse -> String -- List (String, String)
getTagsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getTrigger
-}
type alias GetTriggerResponse =
    { trigger : Maybe Trigger
    }



getTriggerResponseDecoder : JD.Decoder GetTriggerResponse
getTriggerResponseDecoder =
    JD.succeed GetTriggerResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Trigger", "trigger"]
            triggerDecoder
        )
        




getTriggerResponseToString : GetTriggerResponse -> String -- List (String, String)
getTriggerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "trigger" "" -- val.trigger
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getTriggers
-}
type alias GetTriggersResponse =
    { triggers : Maybe (List Trigger)
    , nextToken : Maybe String
    }



getTriggersResponseDecoder : JD.Decoder GetTriggersResponse
getTriggersResponseDecoder =
    JD.succeed GetTriggersResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Triggers", "triggers"]
            (JD.list triggerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getTriggersResponseToString : GetTriggersResponse -> String -- List (String, String)
getTriggersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "triggers" "" -- val.triggers
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getUserDefinedFunction
-}
type alias GetUserDefinedFunctionResponse =
    { userDefinedFunction : Maybe UserDefinedFunction
    }



getUserDefinedFunctionResponseDecoder : JD.Decoder GetUserDefinedFunctionResponse
getUserDefinedFunctionResponseDecoder =
    JD.succeed GetUserDefinedFunctionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserDefinedFunction", "userDefinedFunction"]
            userDefinedFunctionDecoder
        )
        




getUserDefinedFunctionResponseToString : GetUserDefinedFunctionResponse -> String -- List (String, String)
getUserDefinedFunctionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userDefinedFunction" "" -- val.userDefinedFunction
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getUserDefinedFunctions
-}
type alias GetUserDefinedFunctionsResponse =
    { userDefinedFunctions : Maybe (List UserDefinedFunction)
    , nextToken : Maybe String
    }



getUserDefinedFunctionsResponseDecoder : JD.Decoder GetUserDefinedFunctionsResponse
getUserDefinedFunctionsResponseDecoder =
    JD.succeed GetUserDefinedFunctionsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserDefinedFunctions", "userDefinedFunctions"]
            (JD.list userDefinedFunctionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getUserDefinedFunctionsResponseToString : GetUserDefinedFunctionsResponse -> String -- List (String, String)
getUserDefinedFunctionsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userDefinedFunctions" "" -- val.userDefinedFunctions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getWorkflow
-}
type alias GetWorkflowResponse =
    { workflow : Maybe Workflow
    }



getWorkflowResponseDecoder : JD.Decoder GetWorkflowResponse
getWorkflowResponseDecoder =
    JD.succeed GetWorkflowResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Workflow", "workflow"]
            workflowDecoder
        )
        




getWorkflowResponseToString : GetWorkflowResponse -> String -- List (String, String)
getWorkflowResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workflow" "" -- val.workflow
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getWorkflowRunProperties
-}
type alias GetWorkflowRunPropertiesResponse =
    { runProperties : Maybe (Dict String String)
    }



getWorkflowRunPropertiesResponseDecoder : JD.Decoder GetWorkflowRunPropertiesResponse
getWorkflowRunPropertiesResponseDecoder =
    JD.succeed GetWorkflowRunPropertiesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RunProperties", "runProperties"]
            (AWS.Core.Decode.dict JD.string)
        )
        




getWorkflowRunPropertiesResponseToString : GetWorkflowRunPropertiesResponse -> String -- List (String, String)
getWorkflowRunPropertiesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "runProperties" "" -- val.runProperties
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getWorkflowRun
-}
type alias GetWorkflowRunResponse =
    { run : Maybe WorkflowRun
    }



getWorkflowRunResponseDecoder : JD.Decoder GetWorkflowRunResponse
getWorkflowRunResponseDecoder =
    JD.succeed GetWorkflowRunResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Run", "run"]
            workflowRunDecoder
        )
        




getWorkflowRunResponseToString : GetWorkflowRunResponse -> String -- List (String, String)
getWorkflowRunResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "run" "" -- val.run
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getWorkflowRuns
-}
type alias GetWorkflowRunsResponse =
    { runs : Maybe (List WorkflowRun)
    , nextToken : Maybe String
    }



getWorkflowRunsResponseDecoder : JD.Decoder GetWorkflowRunsResponse
getWorkflowRunsResponseDecoder =
    JD.succeed GetWorkflowRunsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Runs", "runs"]
            (JD.list workflowRunDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getWorkflowRunsResponseToString : GetWorkflowRunsResponse -> String -- List (String, String)
getWorkflowRunsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "runs" "" -- val.runs
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>A classifier that uses <code>grok</code> patterns.</p>
-}
type alias GrokClassifier =
    { name : String
    , classification : String
    , creationTime : Maybe Posix
    , lastUpdated : Maybe Posix
    , version : Maybe Int
    , grokPattern : String
    , customPatterns : Maybe String
    }



grokClassifierDecoder : JD.Decoder GrokClassifier
grokClassifierDecoder =
    JD.succeed GrokClassifier
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Classification", "classification"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdated", "lastUpdated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["GrokPattern", "grokPattern"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomPatterns", "customPatterns"]
            JD.string
        )
        




grokClassifierToString : GrokClassifier -> String -- List (String, String)
grokClassifierToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "classification" "" -- val.classification
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "lastUpdated" "" -- val.lastUpdated
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "grokPattern" "" -- val.grokPattern
        
    --     |> Dict.insert
    --         "customPatterns" "" -- val.customPatterns
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from importCatalogToGlue
-}
type alias ImportCatalogToGlueResponse =
    { 
    }



importCatalogToGlueResponseDecoder : JD.Decoder ImportCatalogToGlueResponse
importCatalogToGlueResponseDecoder =
    JD.succeed ImportCatalogToGlueResponse
        




importCatalogToGlueResponseToString : ImportCatalogToGlueResponse -> String -- List (String, String)
importCatalogToGlueResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Specifies a JDBC data store to crawl.</p>
-}
type alias JdbcTarget =
    { connectionName : Maybe String
    , path : Maybe String
    , exclusions : Maybe (List String)
    }



jdbcTargetDecoder : JD.Decoder JdbcTarget
jdbcTargetDecoder =
    JD.succeed JdbcTarget
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConnectionName", "connectionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Path", "path"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Exclusions", "exclusions"]
            (JD.list JD.string)
        )
        




jdbcTargetToString : JdbcTarget -> String -- List (String, String)
jdbcTargetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "connectionName" "" -- val.connectionName
        
    --     |> Dict.insert
    --         "path" "" -- val.path
        
    --     |> Dict.insert
    --         "exclusions" "" -- val.exclusions
        
    --     |> Dict.toList
    ""



{-| <p>Specifies a job definition.</p>
-}
type alias Job =
    { name : Maybe String
    , description : Maybe String
    , logUri : Maybe String
    , role : Maybe String
    , createdOn : Maybe Posix
    , lastModifiedOn : Maybe Posix
    , executionProperty : Maybe ExecutionProperty
    , command : Maybe JobCommand
    , defaultArguments : Maybe (Dict String String)
    , connections : Maybe ConnectionsList
    , maxRetries : Maybe Int
    , allocatedCapacity : Maybe Int
    , timeout : Maybe Int
    , maxCapacity : Maybe Float
    , workerType : Maybe WorkerType
    , numberOfWorkers : Maybe Int
    , securityConfiguration : Maybe String
    , notificationProperty : Maybe NotificationProperty
    , glueVersion : Maybe String
    }



jobDecoder : JD.Decoder Job
jobDecoder =
    JD.succeed Job
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogUri", "logUri"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Role", "role"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedOn", "createdOn"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastModifiedOn", "lastModifiedOn"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExecutionProperty", "executionProperty"]
            executionPropertyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Command", "command"]
            jobCommandDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultArguments", "defaultArguments"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Connections", "connections"]
            connectionsListDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxRetries", "maxRetries"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllocatedCapacity", "allocatedCapacity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timeout", "timeout"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxCapacity", "maxCapacity"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkerType", "workerType"]
            workerTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberOfWorkers", "numberOfWorkers"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityConfiguration", "securityConfiguration"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotificationProperty", "notificationProperty"]
            notificationPropertyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GlueVersion", "glueVersion"]
            JD.string
        )
        




jobToString : Job -> String -- List (String, String)
jobToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "logUri" "" -- val.logUri
        
    --     |> Dict.insert
    --         "role" "" -- val.role
        
    --     |> Dict.insert
    --         "createdOn" "" -- val.createdOn
        
    --     |> Dict.insert
    --         "lastModifiedOn" "" -- val.lastModifiedOn
        
    --     |> Dict.insert
    --         "executionProperty" "" -- val.executionProperty
        
    --     |> Dict.insert
    --         "command" "" -- val.command
        
    --     |> Dict.insert
    --         "defaultArguments" "" -- val.defaultArguments
        
    --     |> Dict.insert
    --         "connections" "" -- val.connections
        
    --     |> Dict.insert
    --         "maxRetries" "" -- val.maxRetries
        
    --     |> Dict.insert
    --         "allocatedCapacity" "" -- val.allocatedCapacity
        
    --     |> Dict.insert
    --         "timeout" "" -- val.timeout
        
    --     |> Dict.insert
    --         "maxCapacity" "" -- val.maxCapacity
        
    --     |> Dict.insert
    --         "workerType" "" -- val.workerType
        
    --     |> Dict.insert
    --         "numberOfWorkers" "" -- val.numberOfWorkers
        
    --     |> Dict.insert
    --         "securityConfiguration" "" -- val.securityConfiguration
        
    --     |> Dict.insert
    --         "notificationProperty" "" -- val.notificationProperty
        
    --     |> Dict.insert
    --         "glueVersion" "" -- val.glueVersion
        
    --     |> Dict.toList
    ""



{-| <p>Defines a point that a job can resume processing.</p>
-}
type alias JobBookmarkEntry =
    { jobName : Maybe String
    , version : Maybe Int
    , run : Maybe Int
    , attempt : Maybe Int
    , previousRunId : Maybe String
    , runId : Maybe String
    , jobBookmark : Maybe String
    }



jobBookmarkEntryDecoder : JD.Decoder JobBookmarkEntry
jobBookmarkEntryDecoder =
    JD.succeed JobBookmarkEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobName", "jobName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Run", "run"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attempt", "attempt"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreviousRunId", "previousRunId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RunId", "runId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobBookmark", "jobBookmark"]
            JD.string
        )
        




jobBookmarkEntryToString : JobBookmarkEntry -> String -- List (String, String)
jobBookmarkEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobName" "" -- val.jobName
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "run" "" -- val.run
        
    --     |> Dict.insert
    --         "attempt" "" -- val.attempt
        
    --     |> Dict.insert
    --         "previousRunId" "" -- val.previousRunId
        
    --     |> Dict.insert
    --         "runId" "" -- val.runId
        
    --     |> Dict.insert
    --         "jobBookmark" "" -- val.jobBookmark
        
    --     |> Dict.toList
    ""



{-| <p>Specifies how job bookmark data should be encrypted.</p>
-}
type alias JobBookmarksEncryption =
    { jobBookmarksEncryptionMode : Maybe JobBookmarksEncryptionMode
    , kmsKeyArn : Maybe String
    }



jobBookmarksEncryptionDecoder : JD.Decoder JobBookmarksEncryption
jobBookmarksEncryptionDecoder =
    JD.succeed JobBookmarksEncryption
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobBookmarksEncryptionMode", "jobBookmarksEncryptionMode"]
            jobBookmarksEncryptionModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KmsKeyArn", "kmsKeyArn"]
            JD.string
        )
        




jobBookmarksEncryptionToString : JobBookmarksEncryption -> String -- List (String, String)
jobBookmarksEncryptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobBookmarksEncryptionMode" "" -- val.jobBookmarksEncryptionMode
        
    --     |> Dict.insert
    --         "kmsKeyArn" "" -- val.kmsKeyArn
        
    --     |> Dict.toList
    ""



{-| One of

* `JobBookmarksEncryptionMode_DISABLED`
* `JobBookmarksEncryptionMode_CSE-KMS`

-}
type JobBookmarksEncryptionMode
    = JobBookmarksEncryptionMode_DISABLED
    | JobBookmarksEncryptionMode_CSE_KMS



jobBookmarksEncryptionModeDecoder : JD.Decoder JobBookmarksEncryptionMode
jobBookmarksEncryptionModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DISABLED" ->
                        JD.succeed JobBookmarksEncryptionMode_DISABLED

                    "CSE_KMS" ->
                        JD.succeed JobBookmarksEncryptionMode_CSE_KMS


                    _ ->
                        JD.fail "bad thing"
            )




jobBookmarksEncryptionModeToString : JobBookmarksEncryptionMode -> String
jobBookmarksEncryptionModeToString val =
    case val of
        JobBookmarksEncryptionMode_DISABLED ->
            "DISABLED"

        JobBookmarksEncryptionMode_CSE_KMS ->
            "CSE_KMS"




{-| <p>Specifies code executed when a job is run.</p>
-}
type alias JobCommand =
    { name : Maybe String
    , scriptLocation : Maybe String
    , pythonVersion : Maybe String
    }



jobCommandDecoder : JD.Decoder JobCommand
jobCommandDecoder =
    JD.succeed JobCommand
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScriptLocation", "scriptLocation"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PythonVersion", "pythonVersion"]
            JD.string
        )
        




jobCommandToString : JobCommand -> String -- List (String, String)
jobCommandToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "scriptLocation" "" -- val.scriptLocation
        
    --     |> Dict.insert
    --         "pythonVersion" "" -- val.pythonVersion
        
    --     |> Dict.toList
    ""



{-| <p>The details of a Job node present in the workflow.</p>
-}
type alias JobNodeDetails =
    { jobRuns : Maybe (List JobRun)
    }



jobNodeDetailsDecoder : JD.Decoder JobNodeDetails
jobNodeDetailsDecoder =
    JD.succeed JobNodeDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobRuns", "jobRuns"]
            (JD.list jobRunDecoder)
        )
        




jobNodeDetailsToString : JobNodeDetails -> String -- List (String, String)
jobNodeDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobRuns" "" -- val.jobRuns
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about a job run.</p>
-}
type alias JobRun =
    { id : Maybe String
    , attempt : Maybe Int
    , previousRunId : Maybe String
    , triggerName : Maybe String
    , jobName : Maybe String
    , startedOn : Maybe Posix
    , lastModifiedOn : Maybe Posix
    , completedOn : Maybe Posix
    , jobRunState : Maybe JobRunState
    , arguments : Maybe (Dict String String)
    , errorMessage : Maybe String
    , predecessorRuns : Maybe (List Predecessor)
    , allocatedCapacity : Maybe Int
    , executionTime : Maybe Int
    , timeout : Maybe Int
    , maxCapacity : Maybe Float
    , workerType : Maybe WorkerType
    , numberOfWorkers : Maybe Int
    , securityConfiguration : Maybe String
    , logGroupName : Maybe String
    , notificationProperty : Maybe NotificationProperty
    , glueVersion : Maybe String
    }



jobRunDecoder : JD.Decoder JobRun
jobRunDecoder =
    JD.succeed JobRun
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attempt", "attempt"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreviousRunId", "previousRunId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TriggerName", "triggerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobName", "jobName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartedOn", "startedOn"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastModifiedOn", "lastModifiedOn"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CompletedOn", "completedOn"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobRunState", "jobRunState"]
            jobRunStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arguments", "arguments"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PredecessorRuns", "predecessorRuns"]
            (JD.list predecessorDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllocatedCapacity", "allocatedCapacity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExecutionTime", "executionTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timeout", "timeout"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxCapacity", "maxCapacity"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkerType", "workerType"]
            workerTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberOfWorkers", "numberOfWorkers"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityConfiguration", "securityConfiguration"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogGroupName", "logGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotificationProperty", "notificationProperty"]
            notificationPropertyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GlueVersion", "glueVersion"]
            JD.string
        )
        




jobRunToString : JobRun -> String -- List (String, String)
jobRunToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "attempt" "" -- val.attempt
        
    --     |> Dict.insert
    --         "previousRunId" "" -- val.previousRunId
        
    --     |> Dict.insert
    --         "triggerName" "" -- val.triggerName
        
    --     |> Dict.insert
    --         "jobName" "" -- val.jobName
        
    --     |> Dict.insert
    --         "startedOn" "" -- val.startedOn
        
    --     |> Dict.insert
    --         "lastModifiedOn" "" -- val.lastModifiedOn
        
    --     |> Dict.insert
    --         "completedOn" "" -- val.completedOn
        
    --     |> Dict.insert
    --         "jobRunState" "" -- val.jobRunState
        
    --     |> Dict.insert
    --         "arguments" "" -- val.arguments
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.insert
    --         "predecessorRuns" "" -- val.predecessorRuns
        
    --     |> Dict.insert
    --         "allocatedCapacity" "" -- val.allocatedCapacity
        
    --     |> Dict.insert
    --         "executionTime" "" -- val.executionTime
        
    --     |> Dict.insert
    --         "timeout" "" -- val.timeout
        
    --     |> Dict.insert
    --         "maxCapacity" "" -- val.maxCapacity
        
    --     |> Dict.insert
    --         "workerType" "" -- val.workerType
        
    --     |> Dict.insert
    --         "numberOfWorkers" "" -- val.numberOfWorkers
        
    --     |> Dict.insert
    --         "securityConfiguration" "" -- val.securityConfiguration
        
    --     |> Dict.insert
    --         "logGroupName" "" -- val.logGroupName
        
    --     |> Dict.insert
    --         "notificationProperty" "" -- val.notificationProperty
        
    --     |> Dict.insert
    --         "glueVersion" "" -- val.glueVersion
        
    --     |> Dict.toList
    ""



{-| One of

* `JobRunState_STARTING`
* `JobRunState_RUNNING`
* `JobRunState_STOPPING`
* `JobRunState_STOPPED`
* `JobRunState_SUCCEEDED`
* `JobRunState_FAILED`
* `JobRunState_TIMEOUT`

-}
type JobRunState
    = JobRunState_STARTING
    | JobRunState_RUNNING
    | JobRunState_STOPPING
    | JobRunState_STOPPED
    | JobRunState_SUCCEEDED
    | JobRunState_FAILED
    | JobRunState_TIMEOUT



jobRunStateDecoder : JD.Decoder JobRunState
jobRunStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STARTING" ->
                        JD.succeed JobRunState_STARTING

                    "RUNNING" ->
                        JD.succeed JobRunState_RUNNING

                    "STOPPING" ->
                        JD.succeed JobRunState_STOPPING

                    "STOPPED" ->
                        JD.succeed JobRunState_STOPPED

                    "SUCCEEDED" ->
                        JD.succeed JobRunState_SUCCEEDED

                    "FAILED" ->
                        JD.succeed JobRunState_FAILED

                    "TIMEOUT" ->
                        JD.succeed JobRunState_TIMEOUT


                    _ ->
                        JD.fail "bad thing"
            )




jobRunStateToString : JobRunState -> String
jobRunStateToString val =
    case val of
        JobRunState_STARTING ->
            "STARTING"

        JobRunState_RUNNING ->
            "RUNNING"

        JobRunState_STOPPING ->
            "STOPPING"

        JobRunState_STOPPED ->
            "STOPPED"

        JobRunState_SUCCEEDED ->
            "SUCCEEDED"

        JobRunState_FAILED ->
            "FAILED"

        JobRunState_TIMEOUT ->
            "TIMEOUT"




{-| <p>Specifies information used to update an existing job definition. The previous job definition is completely overwritten by this information.</p>
-}
type alias JobUpdate =
    { description : Maybe String
    , logUri : Maybe String
    , role : Maybe String
    , executionProperty : Maybe ExecutionProperty
    , command : Maybe JobCommand
    , defaultArguments : Maybe (Dict String String)
    , connections : Maybe ConnectionsList
    , maxRetries : Maybe Int
    , allocatedCapacity : Maybe Int
    , timeout : Maybe Int
    , maxCapacity : Maybe Float
    , workerType : Maybe WorkerType
    , numberOfWorkers : Maybe Int
    , securityConfiguration : Maybe String
    , notificationProperty : Maybe NotificationProperty
    , glueVersion : Maybe String
    }



jobUpdateDecoder : JD.Decoder JobUpdate
jobUpdateDecoder =
    JD.succeed JobUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogUri", "logUri"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Role", "role"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExecutionProperty", "executionProperty"]
            executionPropertyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Command", "command"]
            jobCommandDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultArguments", "defaultArguments"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Connections", "connections"]
            connectionsListDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxRetries", "maxRetries"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllocatedCapacity", "allocatedCapacity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timeout", "timeout"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxCapacity", "maxCapacity"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkerType", "workerType"]
            workerTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberOfWorkers", "numberOfWorkers"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityConfiguration", "securityConfiguration"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotificationProperty", "notificationProperty"]
            notificationPropertyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GlueVersion", "glueVersion"]
            JD.string
        )
        




jobUpdateToString : JobUpdate -> String -- List (String, String)
jobUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "logUri" "" -- val.logUri
        
    --     |> Dict.insert
    --         "role" "" -- val.role
        
    --     |> Dict.insert
    --         "executionProperty" "" -- val.executionProperty
        
    --     |> Dict.insert
    --         "command" "" -- val.command
        
    --     |> Dict.insert
    --         "defaultArguments" "" -- val.defaultArguments
        
    --     |> Dict.insert
    --         "connections" "" -- val.connections
        
    --     |> Dict.insert
    --         "maxRetries" "" -- val.maxRetries
        
    --     |> Dict.insert
    --         "allocatedCapacity" "" -- val.allocatedCapacity
        
    --     |> Dict.insert
    --         "timeout" "" -- val.timeout
        
    --     |> Dict.insert
    --         "maxCapacity" "" -- val.maxCapacity
        
    --     |> Dict.insert
    --         "workerType" "" -- val.workerType
        
    --     |> Dict.insert
    --         "numberOfWorkers" "" -- val.numberOfWorkers
        
    --     |> Dict.insert
    --         "securityConfiguration" "" -- val.securityConfiguration
        
    --     |> Dict.insert
    --         "notificationProperty" "" -- val.notificationProperty
        
    --     |> Dict.insert
    --         "glueVersion" "" -- val.glueVersion
        
    --     |> Dict.toList
    ""



{-| <p>A classifier for <code>JSON</code> content.</p>
-}
type alias JsonClassifier =
    { name : String
    , creationTime : Maybe Posix
    , lastUpdated : Maybe Posix
    , version : Maybe Int
    , jsonPath : String
    }



jsonClassifierDecoder : JD.Decoder JsonClassifier
jsonClassifierDecoder =
    JD.succeed JsonClassifier
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdated", "lastUpdated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["JsonPath", "jsonPath"]
            JD.string
        )
        




jsonClassifierToString : JsonClassifier -> String -- List (String, String)
jsonClassifierToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "lastUpdated" "" -- val.lastUpdated
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "jsonPath" "" -- val.jsonPath
        
    --     |> Dict.toList
    ""



{-| One of

* `Language_PYTHON`
* `Language_SCALA`

-}
type Language
    = Language_PYTHON
    | Language_SCALA



languageDecoder : JD.Decoder Language
languageDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PYTHON" ->
                        JD.succeed Language_PYTHON

                    "SCALA" ->
                        JD.succeed Language_SCALA


                    _ ->
                        JD.fail "bad thing"
            )




languageToString : Language -> String
languageToString val =
    case val of
        Language_PYTHON ->
            "PYTHON"

        Language_SCALA ->
            "SCALA"




{-| <p>Status and error information about the most recent crawl.</p>
-}
type alias LastCrawlInfo =
    { status : Maybe LastCrawlStatus
    , errorMessage : Maybe String
    , logGroup : Maybe String
    , logStream : Maybe String
    , messagePrefix : Maybe String
    , startTime : Maybe Posix
    }



lastCrawlInfoDecoder : JD.Decoder LastCrawlInfo
lastCrawlInfoDecoder =
    JD.succeed LastCrawlInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            lastCrawlStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogGroup", "logGroup"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogStream", "logStream"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MessagePrefix", "messagePrefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartTime", "startTime"]
            JDX.datetime
        )
        




lastCrawlInfoToString : LastCrawlInfo -> String -- List (String, String)
lastCrawlInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.insert
    --         "logGroup" "" -- val.logGroup
        
    --     |> Dict.insert
    --         "logStream" "" -- val.logStream
        
    --     |> Dict.insert
    --         "messagePrefix" "" -- val.messagePrefix
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.toList
    ""



{-| One of

* `LastCrawlStatus_SUCCEEDED`
* `LastCrawlStatus_CANCELLED`
* `LastCrawlStatus_FAILED`

-}
type LastCrawlStatus
    = LastCrawlStatus_SUCCEEDED
    | LastCrawlStatus_CANCELLED
    | LastCrawlStatus_FAILED



lastCrawlStatusDecoder : JD.Decoder LastCrawlStatus
lastCrawlStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCEEDED" ->
                        JD.succeed LastCrawlStatus_SUCCEEDED

                    "CANCELLED" ->
                        JD.succeed LastCrawlStatus_CANCELLED

                    "FAILED" ->
                        JD.succeed LastCrawlStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




lastCrawlStatusToString : LastCrawlStatus -> String
lastCrawlStatusToString val =
    case val of
        LastCrawlStatus_SUCCEEDED ->
            "SUCCEEDED"

        LastCrawlStatus_CANCELLED ->
            "CANCELLED"

        LastCrawlStatus_FAILED ->
            "FAILED"




{-| Type of HTTP response from listCrawlers
-}
type alias ListCrawlersResponse =
    { crawlerNames : Maybe (List String)
    , nextToken : Maybe String
    }



listCrawlersResponseDecoder : JD.Decoder ListCrawlersResponse
listCrawlersResponseDecoder =
    JD.succeed ListCrawlersResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CrawlerNames", "crawlerNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listCrawlersResponseToString : ListCrawlersResponse -> String -- List (String, String)
listCrawlersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "crawlerNames" "" -- val.crawlerNames
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listDevEndpoints
-}
type alias ListDevEndpointsResponse =
    { devEndpointNames : Maybe (List String)
    , nextToken : Maybe String
    }



listDevEndpointsResponseDecoder : JD.Decoder ListDevEndpointsResponse
listDevEndpointsResponseDecoder =
    JD.succeed ListDevEndpointsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DevEndpointNames", "devEndpointNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listDevEndpointsResponseToString : ListDevEndpointsResponse -> String -- List (String, String)
listDevEndpointsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "devEndpointNames" "" -- val.devEndpointNames
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listJobs
-}
type alias ListJobsResponse =
    { jobNames : Maybe (List String)
    , nextToken : Maybe String
    }



listJobsResponseDecoder : JD.Decoder ListJobsResponse
listJobsResponseDecoder =
    JD.succeed ListJobsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobNames", "jobNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listJobsResponseToString : ListJobsResponse -> String -- List (String, String)
listJobsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobNames" "" -- val.jobNames
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTriggers
-}
type alias ListTriggersResponse =
    { triggerNames : Maybe (List String)
    , nextToken : Maybe String
    }



listTriggersResponseDecoder : JD.Decoder ListTriggersResponse
listTriggersResponseDecoder =
    JD.succeed ListTriggersResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TriggerNames", "triggerNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listTriggersResponseToString : ListTriggersResponse -> String -- List (String, String)
listTriggersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "triggerNames" "" -- val.triggerNames
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listWorkflows
-}
type alias ListWorkflowsResponse =
    { workflows : Maybe (List String)
    , nextToken : Maybe String
    }



listWorkflowsResponseDecoder : JD.Decoder ListWorkflowsResponse
listWorkflowsResponseDecoder =
    JD.succeed ListWorkflowsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Workflows", "workflows"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listWorkflowsResponseToString : ListWorkflowsResponse -> String -- List (String, String)
listWorkflowsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workflows" "" -- val.workflows
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>The location of resources.</p>
-}
type alias Location =
    { jdbc : Maybe (List CodeGenNodeArg)
    , s3 : Maybe (List CodeGenNodeArg)
    , dynamoDB : Maybe (List CodeGenNodeArg)
    }



locationDecoder : JD.Decoder Location
locationDecoder =
    JD.succeed Location
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Jdbc", "jdbc"]
            (JD.list codeGenNodeArgDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3", "s3"]
            (JD.list codeGenNodeArgDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DynamoDB", "dynamoDB"]
            (JD.list codeGenNodeArgDecoder)
        )
        




locationToString : Location -> String -- List (String, String)
locationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jdbc" "" -- val.jdbc
        
    --     |> Dict.insert
    --         "s3" "" -- val.s3
        
    --     |> Dict.insert
    --         "dynamoDB" "" -- val.dynamoDB
        
    --     |> Dict.toList
    ""



{-| One of

* `Logical_AND`
* `Logical_ANY`

-}
type Logical
    = Logical_AND
    | Logical_ANY



logicalDecoder : JD.Decoder Logical
logicalDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AND" ->
                        JD.succeed Logical_AND

                    "ANY" ->
                        JD.succeed Logical_ANY


                    _ ->
                        JD.fail "bad thing"
            )




logicalToString : Logical -> String
logicalToString val =
    case val of
        Logical_AND ->
            "AND"

        Logical_ANY ->
            "ANY"




{-| One of

* `LogicalOperator_EQUALS`

-}
type LogicalOperator
    = LogicalOperator_EQUALS



logicalOperatorDecoder : JD.Decoder LogicalOperator
logicalOperatorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EQUALS" ->
                        JD.succeed LogicalOperator_EQUALS


                    _ ->
                        JD.fail "bad thing"
            )




logicalOperatorToString : LogicalOperator -> String
logicalOperatorToString val =
    case val of
        LogicalOperator_EQUALS ->
            "EQUALS"




{-| <p>Defines a mapping.</p>
-}
type alias MappingEntry =
    { sourceTable : Maybe String
    , sourcePath : Maybe String
    , sourceType : Maybe String
    , targetTable : Maybe String
    , targetPath : Maybe String
    , targetType : Maybe String
    }



mappingEntryDecoder : JD.Decoder MappingEntry
mappingEntryDecoder =
    JD.succeed MappingEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceTable", "sourceTable"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourcePath", "sourcePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceType", "sourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetTable", "targetTable"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetPath", "targetPath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetType", "targetType"]
            JD.string
        )
        




mappingEntryToString : MappingEntry -> String -- List (String, String)
mappingEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sourceTable" "" -- val.sourceTable
        
    --     |> Dict.insert
    --         "sourcePath" "" -- val.sourcePath
        
    --     |> Dict.insert
    --         "sourceType" "" -- val.sourceType
        
    --     |> Dict.insert
    --         "targetTable" "" -- val.targetTable
        
    --     |> Dict.insert
    --         "targetPath" "" -- val.targetPath
        
    --     |> Dict.insert
    --         "targetType" "" -- val.targetType
        
    --     |> Dict.toList
    ""



{-| <p>A node represents an AWS Glue component like Trigger, Job etc. which is part of a workflow.</p>
-}
type alias Node =
    { type_ : Maybe NodeType
    , name : Maybe String
    , uniqueId : Maybe String
    , triggerDetails : Maybe TriggerNodeDetails
    , jobDetails : Maybe JobNodeDetails
    , crawlerDetails : Maybe CrawlerNodeDetails
    }



nodeDecoder : JD.Decoder Node
nodeDecoder =
    JD.succeed Node
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            nodeTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UniqueId", "uniqueId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TriggerDetails", "triggerDetails"]
            triggerNodeDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobDetails", "jobDetails"]
            jobNodeDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CrawlerDetails", "crawlerDetails"]
            crawlerNodeDetailsDecoder
        )
        




nodeToString : Node -> String -- List (String, String)
nodeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "uniqueId" "" -- val.uniqueId
        
    --     |> Dict.insert
    --         "triggerDetails" "" -- val.triggerDetails
        
    --     |> Dict.insert
    --         "jobDetails" "" -- val.jobDetails
        
    --     |> Dict.insert
    --         "crawlerDetails" "" -- val.crawlerDetails
        
    --     |> Dict.toList
    ""



{-| One of

* `NodeType_CRAWLER`
* `NodeType_JOB`
* `NodeType_TRIGGER`

-}
type NodeType
    = NodeType_CRAWLER
    | NodeType_JOB
    | NodeType_TRIGGER



nodeTypeDecoder : JD.Decoder NodeType
nodeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CRAWLER" ->
                        JD.succeed NodeType_CRAWLER

                    "JOB" ->
                        JD.succeed NodeType_JOB

                    "TRIGGER" ->
                        JD.succeed NodeType_TRIGGER


                    _ ->
                        JD.fail "bad thing"
            )




nodeTypeToString : NodeType -> String
nodeTypeToString val =
    case val of
        NodeType_CRAWLER ->
            "CRAWLER"

        NodeType_JOB ->
            "JOB"

        NodeType_TRIGGER ->
            "TRIGGER"




{-| <p>Specifies configuration properties of a notification.</p>
-}
type alias NotificationProperty =
    { notifyDelayAfter : Maybe Int
    }



notificationPropertyDecoder : JD.Decoder NotificationProperty
notificationPropertyDecoder =
    JD.succeed NotificationProperty
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotifyDelayAfter", "notifyDelayAfter"]
            JD.int
        )
        




notificationPropertyToString : NotificationProperty -> String -- List (String, String)
notificationPropertyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "notifyDelayAfter" "" -- val.notifyDelayAfter
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the sort order of a sorted column.</p>
-}
type alias Order =
    { column : String
    , sortOrder : Int
    }



orderDecoder : JD.Decoder Order
orderDecoder =
    JD.succeed Order
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Column", "column"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SortOrder", "sortOrder"]
            JD.int
        )
        




orderToString : Order -> String -- List (String, String)
orderToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "column" "" -- val.column
        
    --     |> Dict.insert
    --         "sortOrder" "" -- val.sortOrder
        
    --     |> Dict.toList
    ""



{-| <p>Represents a slice of table data.</p>
-}
type alias Partition =
    { values : Maybe (List String)
    , databaseName : Maybe String
    , tableName : Maybe String
    , creationTime : Maybe Posix
    , lastAccessTime : Maybe Posix
    , storageDescriptor : Maybe StorageDescriptor
    , parameters : Maybe (Dict String String)
    , lastAnalyzedTime : Maybe Posix
    }



partitionDecoder : JD.Decoder Partition
partitionDecoder =
    JD.succeed Partition
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Values", "values"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DatabaseName", "databaseName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TableName", "tableName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastAccessTime", "lastAccessTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageDescriptor", "storageDescriptor"]
            storageDescriptorDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastAnalyzedTime", "lastAnalyzedTime"]
            JDX.datetime
        )
        




partitionToString : Partition -> String -- List (String, String)
partitionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.insert
    --         "databaseName" "" -- val.databaseName
        
    --     |> Dict.insert
    --         "tableName" "" -- val.tableName
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "lastAccessTime" "" -- val.lastAccessTime
        
    --     |> Dict.insert
    --         "storageDescriptor" "" -- val.storageDescriptor
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "lastAnalyzedTime" "" -- val.lastAnalyzedTime
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about a partition error.</p>
-}
type alias PartitionError =
    { partitionValues : Maybe (List String)
    , errorDetail : Maybe ErrorDetail
    }



partitionErrorDecoder : JD.Decoder PartitionError
partitionErrorDecoder =
    JD.succeed PartitionError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PartitionValues", "partitionValues"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorDetail", "errorDetail"]
            errorDetailDecoder
        )
        




partitionErrorToString : PartitionError -> String -- List (String, String)
partitionErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "partitionValues" "" -- val.partitionValues
        
    --     |> Dict.insert
    --         "errorDetail" "" -- val.errorDetail
        
    --     |> Dict.toList
    ""



{-| <p>The structure used to create and update a partion.</p>
-}
type alias PartitionInput =
    { values : Maybe (List String)
    , lastAccessTime : Maybe Posix
    , storageDescriptor : Maybe StorageDescriptor
    , parameters : Maybe (Dict String String)
    , lastAnalyzedTime : Maybe Posix
    }



partitionInputDecoder : JD.Decoder PartitionInput
partitionInputDecoder =
    JD.succeed PartitionInput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Values", "values"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastAccessTime", "lastAccessTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageDescriptor", "storageDescriptor"]
            storageDescriptorDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastAnalyzedTime", "lastAnalyzedTime"]
            JDX.datetime
        )
        




partitionInputToString : PartitionInput -> String -- List (String, String)
partitionInputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.insert
    --         "lastAccessTime" "" -- val.lastAccessTime
        
    --     |> Dict.insert
    --         "storageDescriptor" "" -- val.storageDescriptor
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "lastAnalyzedTime" "" -- val.lastAnalyzedTime
        
    --     |> Dict.toList
    ""



{-| <p>Contains a list of values defining partitions.</p>
-}
type alias PartitionValueList =
    { values : (List String)
    }



partitionValueListDecoder : JD.Decoder PartitionValueList
partitionValueListDecoder =
    JD.succeed PartitionValueList
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Values", "values"]
            (JD.list JD.string)
        )
        




partitionValueListToString : PartitionValueList -> String -- List (String, String)
partitionValueListToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the physical requirements for a connection.</p>
-}
type alias PhysicalConnectionRequirements =
    { subnetId : Maybe String
    , securityGroupIdList : Maybe (List String)
    , availabilityZone : Maybe String
    }



physicalConnectionRequirementsDecoder : JD.Decoder PhysicalConnectionRequirements
physicalConnectionRequirementsDecoder =
    JD.succeed PhysicalConnectionRequirements
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetId", "subnetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityGroupIdList", "securityGroupIdList"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZone", "availabilityZone"]
            JD.string
        )
        




physicalConnectionRequirementsToString : PhysicalConnectionRequirements -> String -- List (String, String)
physicalConnectionRequirementsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subnetId" "" -- val.subnetId
        
    --     |> Dict.insert
    --         "securityGroupIdList" "" -- val.securityGroupIdList
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.toList
    ""



{-| <p>A job run that was used in the predicate of a conditional trigger that triggered this job run.</p>
-}
type alias Predecessor =
    { jobName : Maybe String
    , runId : Maybe String
    }



predecessorDecoder : JD.Decoder Predecessor
predecessorDecoder =
    JD.succeed Predecessor
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobName", "jobName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RunId", "runId"]
            JD.string
        )
        




predecessorToString : Predecessor -> String -- List (String, String)
predecessorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobName" "" -- val.jobName
        
    --     |> Dict.insert
    --         "runId" "" -- val.runId
        
    --     |> Dict.toList
    ""



{-| <p>Defines the predicate of the trigger, which determines when it fires.</p>
-}
type alias Predicate =
    { logical : Maybe Logical
    , conditions : Maybe (List Condition)
    }



predicateDecoder : JD.Decoder Predicate
predicateDecoder =
    JD.succeed Predicate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Logical", "logical"]
            logicalDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Conditions", "conditions"]
            (JD.list conditionDecoder)
        )
        




predicateToString : Predicate -> String -- List (String, String)
predicateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logical" "" -- val.logical
        
    --     |> Dict.insert
    --         "conditions" "" -- val.conditions
        
    --     |> Dict.toList
    ""



{-| One of

* `PrincipalType_USER`
* `PrincipalType_ROLE`
* `PrincipalType_GROUP`

-}
type PrincipalType
    = PrincipalType_USER
    | PrincipalType_ROLE
    | PrincipalType_GROUP



principalTypeDecoder : JD.Decoder PrincipalType
principalTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "USER" ->
                        JD.succeed PrincipalType_USER

                    "ROLE" ->
                        JD.succeed PrincipalType_ROLE

                    "GROUP" ->
                        JD.succeed PrincipalType_GROUP


                    _ ->
                        JD.fail "bad thing"
            )




principalTypeToString : PrincipalType -> String
principalTypeToString val =
    case val of
        PrincipalType_USER ->
            "USER"

        PrincipalType_ROLE ->
            "ROLE"

        PrincipalType_GROUP ->
            "GROUP"




{-| Type of HTTP response from putDataCatalogEncryptionSettings
-}
type alias PutDataCatalogEncryptionSettingsResponse =
    { 
    }



putDataCatalogEncryptionSettingsResponseDecoder : JD.Decoder PutDataCatalogEncryptionSettingsResponse
putDataCatalogEncryptionSettingsResponseDecoder =
    JD.succeed PutDataCatalogEncryptionSettingsResponse
        




putDataCatalogEncryptionSettingsResponseToString : PutDataCatalogEncryptionSettingsResponse -> String -- List (String, String)
putDataCatalogEncryptionSettingsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putResourcePolicy
-}
type alias PutResourcePolicyResponse =
    { policyHash : Maybe String
    }



putResourcePolicyResponseDecoder : JD.Decoder PutResourcePolicyResponse
putResourcePolicyResponseDecoder =
    JD.succeed PutResourcePolicyResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyHash", "policyHash"]
            JD.string
        )
        




putResourcePolicyResponseToString : PutResourcePolicyResponse -> String -- List (String, String)
putResourcePolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policyHash" "" -- val.policyHash
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putWorkflowRunProperties
-}
type alias PutWorkflowRunPropertiesResponse =
    { 
    }



putWorkflowRunPropertiesResponseDecoder : JD.Decoder PutWorkflowRunPropertiesResponse
putWorkflowRunPropertiesResponseDecoder =
    JD.succeed PutWorkflowRunPropertiesResponse
        




putWorkflowRunPropertiesResponseToString : PutWorkflowRunPropertiesResponse -> String -- List (String, String)
putWorkflowRunPropertiesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from resetJobBookmark
-}
type alias ResetJobBookmarkResponse =
    { jobBookmarkEntry : Maybe JobBookmarkEntry
    }



resetJobBookmarkResponseDecoder : JD.Decoder ResetJobBookmarkResponse
resetJobBookmarkResponseDecoder =
    JD.succeed ResetJobBookmarkResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobBookmarkEntry", "jobBookmarkEntry"]
            jobBookmarkEntryDecoder
        )
        




resetJobBookmarkResponseToString : ResetJobBookmarkResponse -> String -- List (String, String)
resetJobBookmarkResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobBookmarkEntry" "" -- val.jobBookmarkEntry
        
    --     |> Dict.toList
    ""



{-| One of

* `ResourceType_JAR`
* `ResourceType_FILE`
* `ResourceType_ARCHIVE`

-}
type ResourceType
    = ResourceType_JAR
    | ResourceType_FILE
    | ResourceType_ARCHIVE



resourceTypeDecoder : JD.Decoder ResourceType
resourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "JAR" ->
                        JD.succeed ResourceType_JAR

                    "FILE" ->
                        JD.succeed ResourceType_FILE

                    "ARCHIVE" ->
                        JD.succeed ResourceType_ARCHIVE


                    _ ->
                        JD.fail "bad thing"
            )




resourceTypeToString : ResourceType -> String
resourceTypeToString val =
    case val of
        ResourceType_JAR ->
            "JAR"

        ResourceType_FILE ->
            "FILE"

        ResourceType_ARCHIVE ->
            "ARCHIVE"




{-| <p>URIs for function resources.</p>
-}
type alias ResourceUri =
    { resourceType : Maybe ResourceType
    , uri : Maybe String
    }



resourceUriDecoder : JD.Decoder ResourceUri
resourceUriDecoder =
    JD.succeed ResourceUri
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceType", "resourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Uri", "uri"]
            JD.string
        )
        




resourceUriToString : ResourceUri -> String -- List (String, String)
resourceUriToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "uri" "" -- val.uri
        
    --     |> Dict.toList
    ""



{-| <p>Specifies how Amazon Simple Storage Service (Amazon S3) data should be encrypted.</p>
-}
type alias S3Encryption =
    { s3EncryptionMode : Maybe S3EncryptionMode
    , kmsKeyArn : Maybe String
    }



s3EncryptionDecoder : JD.Decoder S3Encryption
s3EncryptionDecoder =
    JD.succeed S3Encryption
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3EncryptionMode", "s3EncryptionMode"]
            s3EncryptionModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KmsKeyArn", "kmsKeyArn"]
            JD.string
        )
        




s3EncryptionToString : S3Encryption -> String -- List (String, String)
s3EncryptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s3EncryptionMode" "" -- val.s3EncryptionMode
        
    --     |> Dict.insert
    --         "kmsKeyArn" "" -- val.kmsKeyArn
        
    --     |> Dict.toList
    ""



{-| One of

* `S3EncryptionMode_DISABLED`
* `S3EncryptionMode_SSE-KMS`
* `S3EncryptionMode_SSE-S3`

-}
type S3EncryptionMode
    = S3EncryptionMode_DISABLED
    | S3EncryptionMode_SSE_KMS
    | S3EncryptionMode_SSE_S3



s3EncryptionModeDecoder : JD.Decoder S3EncryptionMode
s3EncryptionModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DISABLED" ->
                        JD.succeed S3EncryptionMode_DISABLED

                    "SSE_KMS" ->
                        JD.succeed S3EncryptionMode_SSE_KMS

                    "SSE_S3" ->
                        JD.succeed S3EncryptionMode_SSE_S3


                    _ ->
                        JD.fail "bad thing"
            )




s3EncryptionModeToString : S3EncryptionMode -> String
s3EncryptionModeToString val =
    case val of
        S3EncryptionMode_DISABLED ->
            "DISABLED"

        S3EncryptionMode_SSE_KMS ->
            "SSE_KMS"

        S3EncryptionMode_SSE_S3 ->
            "SSE_S3"




{-| <p>Specifies a data store in Amazon Simple Storage Service (Amazon S3).</p>
-}
type alias S3Target =
    { path : Maybe String
    , exclusions : Maybe (List String)
    }



s3TargetDecoder : JD.Decoder S3Target
s3TargetDecoder =
    JD.succeed S3Target
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Path", "path"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Exclusions", "exclusions"]
            (JD.list JD.string)
        )
        




s3TargetToString : S3Target -> String -- List (String, String)
s3TargetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "path" "" -- val.path
        
    --     |> Dict.insert
    --         "exclusions" "" -- val.exclusions
        
    --     |> Dict.toList
    ""



{-| <p>A scheduling object using a <code>cron</code> statement to schedule an event.</p>
-}
type alias Schedule =
    { scheduleExpression : Maybe String
    , state : Maybe ScheduleState
    }



scheduleDecoder : JD.Decoder Schedule
scheduleDecoder =
    JD.succeed Schedule
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScheduleExpression", "scheduleExpression"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            scheduleStateDecoder
        )
        




scheduleToString : Schedule -> String -- List (String, String)
scheduleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "scheduleExpression" "" -- val.scheduleExpression
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.toList
    ""



{-| One of

* `ScheduleState_SCHEDULED`
* `ScheduleState_NOT_SCHEDULED`
* `ScheduleState_TRANSITIONING`

-}
type ScheduleState
    = ScheduleState_SCHEDULED
    | ScheduleState_NOT_SCHEDULED
    | ScheduleState_TRANSITIONING



scheduleStateDecoder : JD.Decoder ScheduleState
scheduleStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SCHEDULED" ->
                        JD.succeed ScheduleState_SCHEDULED

                    "NOT_SCHEDULED" ->
                        JD.succeed ScheduleState_NOT_SCHEDULED

                    "TRANSITIONING" ->
                        JD.succeed ScheduleState_TRANSITIONING


                    _ ->
                        JD.fail "bad thing"
            )




scheduleStateToString : ScheduleState -> String
scheduleStateToString val =
    case val of
        ScheduleState_SCHEDULED ->
            "SCHEDULED"

        ScheduleState_NOT_SCHEDULED ->
            "NOT_SCHEDULED"

        ScheduleState_TRANSITIONING ->
            "TRANSITIONING"




{-| <p>A policy that specifies update and deletion behaviors for the crawler.</p>
-}
type alias SchemaChangePolicy =
    { updateBehavior : Maybe UpdateBehavior
    , deleteBehavior : Maybe DeleteBehavior
    }



schemaChangePolicyDecoder : JD.Decoder SchemaChangePolicy
schemaChangePolicyDecoder =
    JD.succeed SchemaChangePolicy
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UpdateBehavior", "updateBehavior"]
            updateBehaviorDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeleteBehavior", "deleteBehavior"]
            deleteBehaviorDecoder
        )
        




schemaChangePolicyToString : SchemaChangePolicy -> String -- List (String, String)
schemaChangePolicyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "updateBehavior" "" -- val.updateBehavior
        
    --     |> Dict.insert
    --         "deleteBehavior" "" -- val.deleteBehavior
        
    --     |> Dict.toList
    ""



{-| <p>Specifies a security configuration.</p>
-}
type alias SecurityConfiguration =
    { name : Maybe String
    , createdTimeStamp : Maybe Posix
    , encryptionConfiguration : Maybe EncryptionConfiguration
    }



securityConfigurationDecoder : JD.Decoder SecurityConfiguration
securityConfigurationDecoder =
    JD.succeed SecurityConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTimeStamp", "createdTimeStamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncryptionConfiguration", "encryptionConfiguration"]
            encryptionConfigurationDecoder
        )
        




securityConfigurationToString : SecurityConfiguration -> String -- List (String, String)
securityConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "createdTimeStamp" "" -- val.createdTimeStamp
        
    --     |> Dict.insert
    --         "encryptionConfiguration" "" -- val.encryptionConfiguration
        
    --     |> Dict.toList
    ""



{-| <p>Defines a non-overlapping region of a table's partitions, allowing multiple requests to be executed in parallel.</p>
-}
type alias Segment =
    { segmentNumber : Int
    , totalSegments : Int
    }



segmentDecoder : JD.Decoder Segment
segmentDecoder =
    JD.succeed Segment
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SegmentNumber", "segmentNumber"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TotalSegments", "totalSegments"]
            JD.int
        )
        




segmentToString : Segment -> String -- List (String, String)
segmentToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "segmentNumber" "" -- val.segmentNumber
        
    --     |> Dict.insert
    --         "totalSegments" "" -- val.totalSegments
        
    --     |> Dict.toList
    ""



{-| <p>Information about a serialization/deserialization program (SerDe) which serves as an extractor and loader.</p>
-}
type alias SerDeInfo =
    { name : Maybe String
    , serializationLibrary : Maybe String
    , parameters : Maybe (Dict String String)
    }



serDeInfoDecoder : JD.Decoder SerDeInfo
serDeInfoDecoder =
    JD.succeed SerDeInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SerializationLibrary", "serializationLibrary"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        




serDeInfoToString : SerDeInfo -> String -- List (String, String)
serDeInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "serializationLibrary" "" -- val.serializationLibrary
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.toList
    ""



{-| <p>Specifies skewed values in a table. Skewed are ones that occur with very high frequency.</p>
-}
type alias SkewedInfo =
    { skewedColumnNames : Maybe (List String)
    , skewedColumnValues : Maybe (List String)
    , skewedColumnValueLocationMaps : Maybe (Dict String String)
    }



skewedInfoDecoder : JD.Decoder SkewedInfo
skewedInfoDecoder =
    JD.succeed SkewedInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SkewedColumnNames", "skewedColumnNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SkewedColumnValues", "skewedColumnValues"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SkewedColumnValueLocationMaps", "skewedColumnValueLocationMaps"]
            (AWS.Core.Decode.dict JD.string)
        )
        




skewedInfoToString : SkewedInfo -> String -- List (String, String)
skewedInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "skewedColumnNames" "" -- val.skewedColumnNames
        
    --     |> Dict.insert
    --         "skewedColumnValues" "" -- val.skewedColumnValues
        
    --     |> Dict.insert
    --         "skewedColumnValueLocationMaps" "" -- val.skewedColumnValueLocationMaps
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startCrawler
-}
type alias StartCrawlerResponse =
    { 
    }



startCrawlerResponseDecoder : JD.Decoder StartCrawlerResponse
startCrawlerResponseDecoder =
    JD.succeed StartCrawlerResponse
        




startCrawlerResponseToString : StartCrawlerResponse -> String -- List (String, String)
startCrawlerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startCrawlerSchedule
-}
type alias StartCrawlerScheduleResponse =
    { 
    }



startCrawlerScheduleResponseDecoder : JD.Decoder StartCrawlerScheduleResponse
startCrawlerScheduleResponseDecoder =
    JD.succeed StartCrawlerScheduleResponse
        




startCrawlerScheduleResponseToString : StartCrawlerScheduleResponse -> String -- List (String, String)
startCrawlerScheduleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startJobRun
-}
type alias StartJobRunResponse =
    { jobRunId : Maybe String
    }



startJobRunResponseDecoder : JD.Decoder StartJobRunResponse
startJobRunResponseDecoder =
    JD.succeed StartJobRunResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobRunId", "jobRunId"]
            JD.string
        )
        




startJobRunResponseToString : StartJobRunResponse -> String -- List (String, String)
startJobRunResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobRunId" "" -- val.jobRunId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startTrigger
-}
type alias StartTriggerResponse =
    { name : Maybe String
    }



startTriggerResponseDecoder : JD.Decoder StartTriggerResponse
startTriggerResponseDecoder =
    JD.succeed StartTriggerResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




startTriggerResponseToString : StartTriggerResponse -> String -- List (String, String)
startTriggerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startWorkflowRun
-}
type alias StartWorkflowRunResponse =
    { runId : Maybe String
    }



startWorkflowRunResponseDecoder : JD.Decoder StartWorkflowRunResponse
startWorkflowRunResponseDecoder =
    JD.succeed StartWorkflowRunResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RunId", "runId"]
            JD.string
        )
        




startWorkflowRunResponseToString : StartWorkflowRunResponse -> String -- List (String, String)
startWorkflowRunResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "runId" "" -- val.runId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopCrawler
-}
type alias StopCrawlerResponse =
    { 
    }



stopCrawlerResponseDecoder : JD.Decoder StopCrawlerResponse
stopCrawlerResponseDecoder =
    JD.succeed StopCrawlerResponse
        




stopCrawlerResponseToString : StopCrawlerResponse -> String -- List (String, String)
stopCrawlerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopCrawlerSchedule
-}
type alias StopCrawlerScheduleResponse =
    { 
    }



stopCrawlerScheduleResponseDecoder : JD.Decoder StopCrawlerScheduleResponse
stopCrawlerScheduleResponseDecoder =
    JD.succeed StopCrawlerScheduleResponse
        




stopCrawlerScheduleResponseToString : StopCrawlerScheduleResponse -> String -- List (String, String)
stopCrawlerScheduleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopTrigger
-}
type alias StopTriggerResponse =
    { name : Maybe String
    }



stopTriggerResponseDecoder : JD.Decoder StopTriggerResponse
stopTriggerResponseDecoder =
    JD.succeed StopTriggerResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




stopTriggerResponseToString : StopTriggerResponse -> String -- List (String, String)
stopTriggerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Describes the physical storage of table data.</p>
-}
type alias StorageDescriptor =
    { columns : Maybe (List Column)
    , location : Maybe String
    , inputFormat : Maybe String
    , outputFormat : Maybe String
    , compressed : Maybe Bool
    , numberOfBuckets : Maybe Int
    , serdeInfo : Maybe SerDeInfo
    , bucketColumns : Maybe (List String)
    , sortColumns : Maybe (List Order)
    , parameters : Maybe (Dict String String)
    , skewedInfo : Maybe SkewedInfo
    , storedAsSubDirectories : Maybe Bool
    }



storageDescriptorDecoder : JD.Decoder StorageDescriptor
storageDescriptorDecoder =
    JD.succeed StorageDescriptor
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Columns", "columns"]
            (JD.list columnDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Location", "location"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputFormat", "inputFormat"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OutputFormat", "outputFormat"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Compressed", "compressed"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberOfBuckets", "numberOfBuckets"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SerdeInfo", "serdeInfo"]
            serDeInfoDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BucketColumns", "bucketColumns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SortColumns", "sortColumns"]
            (JD.list orderDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SkewedInfo", "skewedInfo"]
            skewedInfoDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StoredAsSubDirectories", "storedAsSubDirectories"]
            JD.bool
        )
        




storageDescriptorToString : StorageDescriptor -> String -- List (String, String)
storageDescriptorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "columns" "" -- val.columns
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "inputFormat" "" -- val.inputFormat
        
    --     |> Dict.insert
    --         "outputFormat" "" -- val.outputFormat
        
    --     |> Dict.insert
    --         "compressed" "" -- val.compressed
        
    --     |> Dict.insert
    --         "numberOfBuckets" "" -- val.numberOfBuckets
        
    --     |> Dict.insert
    --         "serdeInfo" "" -- val.serdeInfo
        
    --     |> Dict.insert
    --         "bucketColumns" "" -- val.bucketColumns
        
    --     |> Dict.insert
    --         "sortColumns" "" -- val.sortColumns
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "skewedInfo" "" -- val.skewedInfo
        
    --     |> Dict.insert
    --         "storedAsSubDirectories" "" -- val.storedAsSubDirectories
        
    --     |> Dict.toList
    ""



{-| <p>Represents a collection of related data organized in columns and rows.</p>
-}
type alias Table =
    { name : String
    , databaseName : Maybe String
    , description : Maybe String
    , owner : Maybe String
    , createTime : Maybe Posix
    , updateTime : Maybe Posix
    , lastAccessTime : Maybe Posix
    , lastAnalyzedTime : Maybe Posix
    , retention : Maybe Int
    , storageDescriptor : Maybe StorageDescriptor
    , partitionKeys : Maybe (List Column)
    , viewOriginalText : Maybe String
    , viewExpandedText : Maybe String
    , tableType : Maybe String
    , parameters : Maybe (Dict String String)
    , createdBy : Maybe String
    }



tableDecoder : JD.Decoder Table
tableDecoder =
    JD.succeed Table
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DatabaseName", "databaseName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Owner", "owner"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreateTime", "createTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UpdateTime", "updateTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastAccessTime", "lastAccessTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastAnalyzedTime", "lastAnalyzedTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Retention", "retention"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageDescriptor", "storageDescriptor"]
            storageDescriptorDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PartitionKeys", "partitionKeys"]
            (JD.list columnDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ViewOriginalText", "viewOriginalText"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ViewExpandedText", "viewExpandedText"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TableType", "tableType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedBy", "createdBy"]
            JD.string
        )
        




tableToString : Table -> String -- List (String, String)
tableToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "databaseName" "" -- val.databaseName
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "owner" "" -- val.owner
        
    --     |> Dict.insert
    --         "createTime" "" -- val.createTime
        
    --     |> Dict.insert
    --         "updateTime" "" -- val.updateTime
        
    --     |> Dict.insert
    --         "lastAccessTime" "" -- val.lastAccessTime
        
    --     |> Dict.insert
    --         "lastAnalyzedTime" "" -- val.lastAnalyzedTime
        
    --     |> Dict.insert
    --         "retention" "" -- val.retention
        
    --     |> Dict.insert
    --         "storageDescriptor" "" -- val.storageDescriptor
        
    --     |> Dict.insert
    --         "partitionKeys" "" -- val.partitionKeys
        
    --     |> Dict.insert
    --         "viewOriginalText" "" -- val.viewOriginalText
        
    --     |> Dict.insert
    --         "viewExpandedText" "" -- val.viewExpandedText
        
    --     |> Dict.insert
    --         "tableType" "" -- val.tableType
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "createdBy" "" -- val.createdBy
        
    --     |> Dict.toList
    ""



{-| <p>An error record for table operations.</p>
-}
type alias TableError =
    { tableName : Maybe String
    , errorDetail : Maybe ErrorDetail
    }



tableErrorDecoder : JD.Decoder TableError
tableErrorDecoder =
    JD.succeed TableError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TableName", "tableName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorDetail", "errorDetail"]
            errorDetailDecoder
        )
        




tableErrorToString : TableError -> String -- List (String, String)
tableErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tableName" "" -- val.tableName
        
    --     |> Dict.insert
    --         "errorDetail" "" -- val.errorDetail
        
    --     |> Dict.toList
    ""



{-| <p>Structure used to create or update the table.</p>
-}
type alias TableInput =
    { name : String
    , description : Maybe String
    , owner : Maybe String
    , lastAccessTime : Maybe Posix
    , lastAnalyzedTime : Maybe Posix
    , retention : Maybe Int
    , storageDescriptor : Maybe StorageDescriptor
    , partitionKeys : Maybe (List Column)
    , viewOriginalText : Maybe String
    , viewExpandedText : Maybe String
    , tableType : Maybe String
    , parameters : Maybe (Dict String String)
    }



tableInputDecoder : JD.Decoder TableInput
tableInputDecoder =
    JD.succeed TableInput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Owner", "owner"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastAccessTime", "lastAccessTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastAnalyzedTime", "lastAnalyzedTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Retention", "retention"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageDescriptor", "storageDescriptor"]
            storageDescriptorDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PartitionKeys", "partitionKeys"]
            (JD.list columnDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ViewOriginalText", "viewOriginalText"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ViewExpandedText", "viewExpandedText"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TableType", "tableType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        




tableInputToString : TableInput -> String -- List (String, String)
tableInputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "owner" "" -- val.owner
        
    --     |> Dict.insert
    --         "lastAccessTime" "" -- val.lastAccessTime
        
    --     |> Dict.insert
    --         "lastAnalyzedTime" "" -- val.lastAnalyzedTime
        
    --     |> Dict.insert
    --         "retention" "" -- val.retention
        
    --     |> Dict.insert
    --         "storageDescriptor" "" -- val.storageDescriptor
        
    --     |> Dict.insert
    --         "partitionKeys" "" -- val.partitionKeys
        
    --     |> Dict.insert
    --         "viewOriginalText" "" -- val.viewOriginalText
        
    --     |> Dict.insert
    --         "viewExpandedText" "" -- val.viewExpandedText
        
    --     |> Dict.insert
    --         "tableType" "" -- val.tableType
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.toList
    ""



{-| <p>Specifies a version of a table.</p>
-}
type alias TableVersion =
    { table : Maybe Table
    , versionId : Maybe String
    }



tableVersionDecoder : JD.Decoder TableVersion
tableVersionDecoder =
    JD.succeed TableVersion
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Table", "table"]
            tableDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VersionId", "versionId"]
            JD.string
        )
        




tableVersionToString : TableVersion -> String -- List (String, String)
tableVersionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "table" "" -- val.table
        
    --     |> Dict.insert
    --         "versionId" "" -- val.versionId
        
    --     |> Dict.toList
    ""



{-| <p>An error record for table-version operations.</p>
-}
type alias TableVersionError =
    { tableName : Maybe String
    , versionId : Maybe String
    , errorDetail : Maybe ErrorDetail
    }



tableVersionErrorDecoder : JD.Decoder TableVersionError
tableVersionErrorDecoder =
    JD.succeed TableVersionError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TableName", "tableName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VersionId", "versionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorDetail", "errorDetail"]
            errorDetailDecoder
        )
        




tableVersionErrorToString : TableVersionError -> String -- List (String, String)
tableVersionErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tableName" "" -- val.tableName
        
    --     |> Dict.insert
    --         "versionId" "" -- val.versionId
        
    --     |> Dict.insert
    --         "errorDetail" "" -- val.errorDetail
        
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



{-| <p>Information about a specific trigger.</p>
-}
type alias Trigger =
    { name : Maybe String
    , workflowName : Maybe String
    , id : Maybe String
    , type_ : Maybe TriggerType
    , state : Maybe TriggerState
    , description : Maybe String
    , schedule : Maybe String
    , actions : Maybe (List Action)
    , predicate : Maybe Predicate
    }



triggerDecoder : JD.Decoder Trigger
triggerDecoder =
    JD.succeed Trigger
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkflowName", "workflowName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            triggerTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            triggerStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Schedule", "schedule"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Actions", "actions"]
            (JD.list actionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Predicate", "predicate"]
            predicateDecoder
        )
        




triggerToString : Trigger -> String -- List (String, String)
triggerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "workflowName" "" -- val.workflowName
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "schedule" "" -- val.schedule
        
    --     |> Dict.insert
    --         "actions" "" -- val.actions
        
    --     |> Dict.insert
    --         "predicate" "" -- val.predicate
        
    --     |> Dict.toList
    ""



{-| <p>The details of a Trigger node present in the workflow.</p>
-}
type alias TriggerNodeDetails =
    { trigger : Maybe Trigger
    }



triggerNodeDetailsDecoder : JD.Decoder TriggerNodeDetails
triggerNodeDetailsDecoder =
    JD.succeed TriggerNodeDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Trigger", "trigger"]
            triggerDecoder
        )
        




triggerNodeDetailsToString : TriggerNodeDetails -> String -- List (String, String)
triggerNodeDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "trigger" "" -- val.trigger
        
    --     |> Dict.toList
    ""



{-| One of

* `TriggerState_CREATING`
* `TriggerState_CREATED`
* `TriggerState_ACTIVATING`
* `TriggerState_ACTIVATED`
* `TriggerState_DEACTIVATING`
* `TriggerState_DEACTIVATED`
* `TriggerState_DELETING`
* `TriggerState_UPDATING`

-}
type TriggerState
    = TriggerState_CREATING
    | TriggerState_CREATED
    | TriggerState_ACTIVATING
    | TriggerState_ACTIVATED
    | TriggerState_DEACTIVATING
    | TriggerState_DEACTIVATED
    | TriggerState_DELETING
    | TriggerState_UPDATING



triggerStateDecoder : JD.Decoder TriggerState
triggerStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATING" ->
                        JD.succeed TriggerState_CREATING

                    "CREATED" ->
                        JD.succeed TriggerState_CREATED

                    "ACTIVATING" ->
                        JD.succeed TriggerState_ACTIVATING

                    "ACTIVATED" ->
                        JD.succeed TriggerState_ACTIVATED

                    "DEACTIVATING" ->
                        JD.succeed TriggerState_DEACTIVATING

                    "DEACTIVATED" ->
                        JD.succeed TriggerState_DEACTIVATED

                    "DELETING" ->
                        JD.succeed TriggerState_DELETING

                    "UPDATING" ->
                        JD.succeed TriggerState_UPDATING


                    _ ->
                        JD.fail "bad thing"
            )




triggerStateToString : TriggerState -> String
triggerStateToString val =
    case val of
        TriggerState_CREATING ->
            "CREATING"

        TriggerState_CREATED ->
            "CREATED"

        TriggerState_ACTIVATING ->
            "ACTIVATING"

        TriggerState_ACTIVATED ->
            "ACTIVATED"

        TriggerState_DEACTIVATING ->
            "DEACTIVATING"

        TriggerState_DEACTIVATED ->
            "DEACTIVATED"

        TriggerState_DELETING ->
            "DELETING"

        TriggerState_UPDATING ->
            "UPDATING"




{-| One of

* `TriggerType_SCHEDULED`
* `TriggerType_CONDITIONAL`
* `TriggerType_ON_DEMAND`

-}
type TriggerType
    = TriggerType_SCHEDULED
    | TriggerType_CONDITIONAL
    | TriggerType_ON_DEMAND



triggerTypeDecoder : JD.Decoder TriggerType
triggerTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SCHEDULED" ->
                        JD.succeed TriggerType_SCHEDULED

                    "CONDITIONAL" ->
                        JD.succeed TriggerType_CONDITIONAL

                    "ON_DEMAND" ->
                        JD.succeed TriggerType_ON_DEMAND


                    _ ->
                        JD.fail "bad thing"
            )




triggerTypeToString : TriggerType -> String
triggerTypeToString val =
    case val of
        TriggerType_SCHEDULED ->
            "SCHEDULED"

        TriggerType_CONDITIONAL ->
            "CONDITIONAL"

        TriggerType_ON_DEMAND ->
            "ON_DEMAND"




{-| <p>A structure used to provide information used to update a trigger. This object updates the previous trigger definition by overwriting it completely.</p>
-}
type alias TriggerUpdate =
    { name : Maybe String
    , description : Maybe String
    , schedule : Maybe String
    , actions : Maybe (List Action)
    , predicate : Maybe Predicate
    }



triggerUpdateDecoder : JD.Decoder TriggerUpdate
triggerUpdateDecoder =
    JD.succeed TriggerUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Schedule", "schedule"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Actions", "actions"]
            (JD.list actionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Predicate", "predicate"]
            predicateDecoder
        )
        




triggerUpdateToString : TriggerUpdate -> String -- List (String, String)
triggerUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "schedule" "" -- val.schedule
        
    --     |> Dict.insert
    --         "actions" "" -- val.actions
        
    --     |> Dict.insert
    --         "predicate" "" -- val.predicate
        
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



{-| One of

* `UpdateBehavior_LOG`
* `UpdateBehavior_UPDATE_IN_DATABASE`

-}
type UpdateBehavior
    = UpdateBehavior_LOG
    | UpdateBehavior_UPDATE_IN_DATABASE



updateBehaviorDecoder : JD.Decoder UpdateBehavior
updateBehaviorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "LOG" ->
                        JD.succeed UpdateBehavior_LOG

                    "UPDATE_IN_DATABASE" ->
                        JD.succeed UpdateBehavior_UPDATE_IN_DATABASE


                    _ ->
                        JD.fail "bad thing"
            )




updateBehaviorToString : UpdateBehavior -> String
updateBehaviorToString val =
    case val of
        UpdateBehavior_LOG ->
            "LOG"

        UpdateBehavior_UPDATE_IN_DATABASE ->
            "UPDATE_IN_DATABASE"




{-| Type of HTTP response from updateClassifier
-}
type alias UpdateClassifierResponse =
    { 
    }



updateClassifierResponseDecoder : JD.Decoder UpdateClassifierResponse
updateClassifierResponseDecoder =
    JD.succeed UpdateClassifierResponse
        




updateClassifierResponseToString : UpdateClassifierResponse -> String -- List (String, String)
updateClassifierResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateConnection
-}
type alias UpdateConnectionResponse =
    { 
    }



updateConnectionResponseDecoder : JD.Decoder UpdateConnectionResponse
updateConnectionResponseDecoder =
    JD.succeed UpdateConnectionResponse
        




updateConnectionResponseToString : UpdateConnectionResponse -> String -- List (String, String)
updateConnectionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateCrawler
-}
type alias UpdateCrawlerResponse =
    { 
    }



updateCrawlerResponseDecoder : JD.Decoder UpdateCrawlerResponse
updateCrawlerResponseDecoder =
    JD.succeed UpdateCrawlerResponse
        




updateCrawlerResponseToString : UpdateCrawlerResponse -> String -- List (String, String)
updateCrawlerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateCrawlerSchedule
-}
type alias UpdateCrawlerScheduleResponse =
    { 
    }



updateCrawlerScheduleResponseDecoder : JD.Decoder UpdateCrawlerScheduleResponse
updateCrawlerScheduleResponseDecoder =
    JD.succeed UpdateCrawlerScheduleResponse
        




updateCrawlerScheduleResponseToString : UpdateCrawlerScheduleResponse -> String -- List (String, String)
updateCrawlerScheduleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Specifies a custom CSV classifier to be updated.</p>
-}
type alias UpdateCsvClassifierRequest =
    { name : String
    , delimiter : Maybe String
    , quoteSymbol : Maybe String
    , containsHeader : Maybe CsvHeaderOption
    , header : Maybe (List String)
    , disableValueTrimming : Maybe Bool
    , allowSingleColumn : Maybe Bool
    }



updateCsvClassifierRequestDecoder : JD.Decoder UpdateCsvClassifierRequest
updateCsvClassifierRequestDecoder =
    JD.succeed UpdateCsvClassifierRequest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Delimiter", "delimiter"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QuoteSymbol", "quoteSymbol"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ContainsHeader", "containsHeader"]
            csvHeaderOptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Header", "header"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DisableValueTrimming", "disableValueTrimming"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowSingleColumn", "allowSingleColumn"]
            JD.bool
        )
        




updateCsvClassifierRequestToString : UpdateCsvClassifierRequest -> String -- List (String, String)
updateCsvClassifierRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "delimiter" "" -- val.delimiter
        
    --     |> Dict.insert
    --         "quoteSymbol" "" -- val.quoteSymbol
        
    --     |> Dict.insert
    --         "containsHeader" "" -- val.containsHeader
        
    --     |> Dict.insert
    --         "header" "" -- val.header
        
    --     |> Dict.insert
    --         "disableValueTrimming" "" -- val.disableValueTrimming
        
    --     |> Dict.insert
    --         "allowSingleColumn" "" -- val.allowSingleColumn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateDatabase
-}
type alias UpdateDatabaseResponse =
    { 
    }



updateDatabaseResponseDecoder : JD.Decoder UpdateDatabaseResponse
updateDatabaseResponseDecoder =
    JD.succeed UpdateDatabaseResponse
        




updateDatabaseResponseToString : UpdateDatabaseResponse -> String -- List (String, String)
updateDatabaseResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateDevEndpoint
-}
type alias UpdateDevEndpointResponse =
    { 
    }



updateDevEndpointResponseDecoder : JD.Decoder UpdateDevEndpointResponse
updateDevEndpointResponseDecoder =
    JD.succeed UpdateDevEndpointResponse
        




updateDevEndpointResponseToString : UpdateDevEndpointResponse -> String -- List (String, String)
updateDevEndpointResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Specifies a grok classifier to update when passed to <code>UpdateClassifier</code>.</p>
-}
type alias UpdateGrokClassifierRequest =
    { name : String
    , classification : Maybe String
    , grokPattern : Maybe String
    , customPatterns : Maybe String
    }



updateGrokClassifierRequestDecoder : JD.Decoder UpdateGrokClassifierRequest
updateGrokClassifierRequestDecoder =
    JD.succeed UpdateGrokClassifierRequest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Classification", "classification"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GrokPattern", "grokPattern"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomPatterns", "customPatterns"]
            JD.string
        )
        




updateGrokClassifierRequestToString : UpdateGrokClassifierRequest -> String -- List (String, String)
updateGrokClassifierRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "classification" "" -- val.classification
        
    --     |> Dict.insert
    --         "grokPattern" "" -- val.grokPattern
        
    --     |> Dict.insert
    --         "customPatterns" "" -- val.customPatterns
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateJob
-}
type alias UpdateJobResponse =
    { jobName : Maybe String
    }



updateJobResponseDecoder : JD.Decoder UpdateJobResponse
updateJobResponseDecoder =
    JD.succeed UpdateJobResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobName", "jobName"]
            JD.string
        )
        




updateJobResponseToString : UpdateJobResponse -> String -- List (String, String)
updateJobResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobName" "" -- val.jobName
        
    --     |> Dict.toList
    ""



{-| <p>Specifies a JSON classifier to be updated.</p>
-}
type alias UpdateJsonClassifierRequest =
    { name : String
    , jsonPath : Maybe String
    }



updateJsonClassifierRequestDecoder : JD.Decoder UpdateJsonClassifierRequest
updateJsonClassifierRequestDecoder =
    JD.succeed UpdateJsonClassifierRequest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JsonPath", "jsonPath"]
            JD.string
        )
        




updateJsonClassifierRequestToString : UpdateJsonClassifierRequest -> String -- List (String, String)
updateJsonClassifierRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "jsonPath" "" -- val.jsonPath
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updatePartition
-}
type alias UpdatePartitionResponse =
    { 
    }



updatePartitionResponseDecoder : JD.Decoder UpdatePartitionResponse
updatePartitionResponseDecoder =
    JD.succeed UpdatePartitionResponse
        




updatePartitionResponseToString : UpdatePartitionResponse -> String -- List (String, String)
updatePartitionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateTable
-}
type alias UpdateTableResponse =
    { 
    }



updateTableResponseDecoder : JD.Decoder UpdateTableResponse
updateTableResponseDecoder =
    JD.succeed UpdateTableResponse
        




updateTableResponseToString : UpdateTableResponse -> String -- List (String, String)
updateTableResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateTrigger
-}
type alias UpdateTriggerResponse =
    { trigger : Maybe Trigger
    }



updateTriggerResponseDecoder : JD.Decoder UpdateTriggerResponse
updateTriggerResponseDecoder =
    JD.succeed UpdateTriggerResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Trigger", "trigger"]
            triggerDecoder
        )
        




updateTriggerResponseToString : UpdateTriggerResponse -> String -- List (String, String)
updateTriggerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "trigger" "" -- val.trigger
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateUserDefinedFunction
-}
type alias UpdateUserDefinedFunctionResponse =
    { 
    }



updateUserDefinedFunctionResponseDecoder : JD.Decoder UpdateUserDefinedFunctionResponse
updateUserDefinedFunctionResponseDecoder =
    JD.succeed UpdateUserDefinedFunctionResponse
        




updateUserDefinedFunctionResponseToString : UpdateUserDefinedFunctionResponse -> String -- List (String, String)
updateUserDefinedFunctionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateWorkflow
-}
type alias UpdateWorkflowResponse =
    { name : Maybe String
    }



updateWorkflowResponseDecoder : JD.Decoder UpdateWorkflowResponse
updateWorkflowResponseDecoder =
    JD.succeed UpdateWorkflowResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




updateWorkflowResponseToString : UpdateWorkflowResponse -> String -- List (String, String)
updateWorkflowResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Specifies an XML classifier to be updated.</p>
-}
type alias UpdateXMLClassifierRequest =
    { name : String
    , classification : Maybe String
    , rowTag : Maybe String
    }



updateXMLClassifierRequestDecoder : JD.Decoder UpdateXMLClassifierRequest
updateXMLClassifierRequestDecoder =
    JD.succeed UpdateXMLClassifierRequest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Classification", "classification"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RowTag", "rowTag"]
            JD.string
        )
        




updateXMLClassifierRequestToString : UpdateXMLClassifierRequest -> String -- List (String, String)
updateXMLClassifierRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "classification" "" -- val.classification
        
    --     |> Dict.insert
    --         "rowTag" "" -- val.rowTag
        
    --     |> Dict.toList
    ""



{-| <p>Represents the equivalent of a Hive user-defined function (<code>UDF</code>) definition.</p>
-}
type alias UserDefinedFunction =
    { functionName : Maybe String
    , className : Maybe String
    , ownerName : Maybe String
    , ownerType : Maybe PrincipalType
    , createTime : Maybe Posix
    , resourceUris : Maybe (List ResourceUri)
    }



userDefinedFunctionDecoder : JD.Decoder UserDefinedFunction
userDefinedFunctionDecoder =
    JD.succeed UserDefinedFunction
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FunctionName", "functionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClassName", "className"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OwnerName", "ownerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OwnerType", "ownerType"]
            principalTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreateTime", "createTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceUris", "resourceUris"]
            (JD.list resourceUriDecoder)
        )
        




userDefinedFunctionToString : UserDefinedFunction -> String -- List (String, String)
userDefinedFunctionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "functionName" "" -- val.functionName
        
    --     |> Dict.insert
    --         "className" "" -- val.className
        
    --     |> Dict.insert
    --         "ownerName" "" -- val.ownerName
        
    --     |> Dict.insert
    --         "ownerType" "" -- val.ownerType
        
    --     |> Dict.insert
    --         "createTime" "" -- val.createTime
        
    --     |> Dict.insert
    --         "resourceUris" "" -- val.resourceUris
        
    --     |> Dict.toList
    ""



{-| <p>A structure used to create or updata a user-defined function.</p>
-}
type alias UserDefinedFunctionInput =
    { functionName : Maybe String
    , className : Maybe String
    , ownerName : Maybe String
    , ownerType : Maybe PrincipalType
    , resourceUris : Maybe (List ResourceUri)
    }



userDefinedFunctionInputDecoder : JD.Decoder UserDefinedFunctionInput
userDefinedFunctionInputDecoder =
    JD.succeed UserDefinedFunctionInput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FunctionName", "functionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClassName", "className"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OwnerName", "ownerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OwnerType", "ownerType"]
            principalTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceUris", "resourceUris"]
            (JD.list resourceUriDecoder)
        )
        




userDefinedFunctionInputToString : UserDefinedFunctionInput -> String -- List (String, String)
userDefinedFunctionInputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "functionName" "" -- val.functionName
        
    --     |> Dict.insert
    --         "className" "" -- val.className
        
    --     |> Dict.insert
    --         "ownerName" "" -- val.ownerName
        
    --     |> Dict.insert
    --         "ownerType" "" -- val.ownerType
        
    --     |> Dict.insert
    --         "resourceUris" "" -- val.resourceUris
        
    --     |> Dict.toList
    ""



{-| One of

* `WorkerType_Standard`
* `WorkerType_G.1X`
* `WorkerType_G.2X`

-}
type WorkerType
    = WorkerType_Standard
    | WorkerType_G_1X
    | WorkerType_G_2X



workerTypeDecoder : JD.Decoder WorkerType
workerTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Standard" ->
                        JD.succeed WorkerType_Standard

                    "G_1X" ->
                        JD.succeed WorkerType_G_1X

                    "G_2X" ->
                        JD.succeed WorkerType_G_2X


                    _ ->
                        JD.fail "bad thing"
            )




workerTypeToString : WorkerType -> String
workerTypeToString val =
    case val of
        WorkerType_Standard ->
            "Standard"

        WorkerType_G_1X ->
            "G_1X"

        WorkerType_G_2X ->
            "G_2X"




{-| <p>A workflow represents a flow in which AWS Glue components should be executed to complete a logical task.</p>
-}
type alias Workflow =
    { name : Maybe String
    , description : Maybe String
    , defaultRunProperties : Maybe (Dict String String)
    , createdOn : Maybe Posix
    , lastModifiedOn : Maybe Posix
    , lastRun : Maybe WorkflowRun
    , graph : Maybe WorkflowGraph
    }



workflowDecoder : JD.Decoder Workflow
workflowDecoder =
    JD.succeed Workflow
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultRunProperties", "defaultRunProperties"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedOn", "createdOn"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastModifiedOn", "lastModifiedOn"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastRun", "lastRun"]
            workflowRunDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Graph", "graph"]
            workflowGraphDecoder
        )
        




workflowToString : Workflow -> String -- List (String, String)
workflowToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "defaultRunProperties" "" -- val.defaultRunProperties
        
    --     |> Dict.insert
    --         "createdOn" "" -- val.createdOn
        
    --     |> Dict.insert
    --         "lastModifiedOn" "" -- val.lastModifiedOn
        
    --     |> Dict.insert
    --         "lastRun" "" -- val.lastRun
        
    --     |> Dict.insert
    --         "graph" "" -- val.graph
        
    --     |> Dict.toList
    ""



{-| <p>A workflow graph represents the complete workflow containing all the AWS Glue components present in the workflow and all the directed connections between them.</p>
-}
type alias WorkflowGraph =
    { nodes : Maybe (List Node)
    , edges : Maybe (List Edge)
    }



workflowGraphDecoder : JD.Decoder WorkflowGraph
workflowGraphDecoder =
    JD.succeed WorkflowGraph
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Nodes", "nodes"]
            (JD.list nodeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Edges", "edges"]
            (JD.list edgeDecoder)
        )
        




workflowGraphToString : WorkflowGraph -> String -- List (String, String)
workflowGraphToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nodes" "" -- val.nodes
        
    --     |> Dict.insert
    --         "edges" "" -- val.edges
        
    --     |> Dict.toList
    ""



{-| <p>A workflow run is an execution of a workflow providing all the runtime information.</p>
-}
type alias WorkflowRun =
    { name : Maybe String
    , workflowRunId : Maybe String
    , workflowRunProperties : Maybe (Dict String String)
    , startedOn : Maybe Posix
    , completedOn : Maybe Posix
    , status : Maybe WorkflowRunStatus
    , statistics : Maybe WorkflowRunStatistics
    , graph : Maybe WorkflowGraph
    }



workflowRunDecoder : JD.Decoder WorkflowRun
workflowRunDecoder =
    JD.succeed WorkflowRun
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkflowRunId", "workflowRunId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkflowRunProperties", "workflowRunProperties"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartedOn", "startedOn"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CompletedOn", "completedOn"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            workflowRunStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Statistics", "statistics"]
            workflowRunStatisticsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Graph", "graph"]
            workflowGraphDecoder
        )
        




workflowRunToString : WorkflowRun -> String -- List (String, String)
workflowRunToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "workflowRunId" "" -- val.workflowRunId
        
    --     |> Dict.insert
    --         "workflowRunProperties" "" -- val.workflowRunProperties
        
    --     |> Dict.insert
    --         "startedOn" "" -- val.startedOn
        
    --     |> Dict.insert
    --         "completedOn" "" -- val.completedOn
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statistics" "" -- val.statistics
        
    --     |> Dict.insert
    --         "graph" "" -- val.graph
        
    --     |> Dict.toList
    ""



{-| <p>Workflow run statistics provides statistics about the workflow run.</p>
-}
type alias WorkflowRunStatistics =
    { totalActions : Maybe Int
    , timeoutActions : Maybe Int
    , failedActions : Maybe Int
    , stoppedActions : Maybe Int
    , succeededActions : Maybe Int
    , runningActions : Maybe Int
    }



workflowRunStatisticsDecoder : JD.Decoder WorkflowRunStatistics
workflowRunStatisticsDecoder =
    JD.succeed WorkflowRunStatistics
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TotalActions", "totalActions"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimeoutActions", "timeoutActions"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedActions", "failedActions"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StoppedActions", "stoppedActions"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SucceededActions", "succeededActions"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RunningActions", "runningActions"]
            JD.int
        )
        




workflowRunStatisticsToString : WorkflowRunStatistics -> String -- List (String, String)
workflowRunStatisticsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "totalActions" "" -- val.totalActions
        
    --     |> Dict.insert
    --         "timeoutActions" "" -- val.timeoutActions
        
    --     |> Dict.insert
    --         "failedActions" "" -- val.failedActions
        
    --     |> Dict.insert
    --         "stoppedActions" "" -- val.stoppedActions
        
    --     |> Dict.insert
    --         "succeededActions" "" -- val.succeededActions
        
    --     |> Dict.insert
    --         "runningActions" "" -- val.runningActions
        
    --     |> Dict.toList
    ""



{-| One of

* `WorkflowRunStatus_RUNNING`
* `WorkflowRunStatus_COMPLETED`

-}
type WorkflowRunStatus
    = WorkflowRunStatus_RUNNING
    | WorkflowRunStatus_COMPLETED



workflowRunStatusDecoder : JD.Decoder WorkflowRunStatus
workflowRunStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RUNNING" ->
                        JD.succeed WorkflowRunStatus_RUNNING

                    "COMPLETED" ->
                        JD.succeed WorkflowRunStatus_COMPLETED


                    _ ->
                        JD.fail "bad thing"
            )




workflowRunStatusToString : WorkflowRunStatus -> String
workflowRunStatusToString val =
    case val of
        WorkflowRunStatus_RUNNING ->
            "RUNNING"

        WorkflowRunStatus_COMPLETED ->
            "COMPLETED"




{-| <p>A classifier for <code>XML</code> content.</p>
-}
type alias XMLClassifier =
    { name : String
    , classification : String
    , creationTime : Maybe Posix
    , lastUpdated : Maybe Posix
    , version : Maybe Int
    , rowTag : Maybe String
    }



xMLClassifierDecoder : JD.Decoder XMLClassifier
xMLClassifierDecoder =
    JD.succeed XMLClassifier
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Classification", "classification"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdated", "lastUpdated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RowTag", "rowTag"]
            JD.string
        )
        




xMLClassifierToString : XMLClassifier -> String -- List (String, String)
xMLClassifierToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "classification" "" -- val.classification
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "lastUpdated" "" -- val.lastUpdated
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "rowTag" "" -- val.rowTag
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias BatchCreatePartitionRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tableName : String
    , partitionInputList : (List PartitionInput)
    }


{-| undefined
-}
type alias BatchDeleteConnectionRequest =
    { catalogId : Maybe String
    , connectionNameList : (List String)
    }


{-| undefined
-}
type alias BatchDeletePartitionRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tableName : String
    , partitionsToDelete : (List PartitionValueList)
    }


{-| undefined
-}
type alias BatchDeleteTableRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tablesToDelete : (List String)
    }


{-| undefined
-}
type alias BatchDeleteTableVersionRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tableName : String
    , versionIds : (List String)
    }


{-| undefined
-}
type alias BatchGetCrawlersRequest =
    { crawlerNames : (List String)
    }


{-| undefined
-}
type alias BatchGetDevEndpointsRequest =
    { devEndpointNames : (List String)
    }


{-| undefined
-}
type alias BatchGetJobsRequest =
    { jobNames : (List String)
    }


{-| undefined
-}
type alias BatchGetPartitionRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tableName : String
    , partitionsToGet : (List PartitionValueList)
    }


{-| undefined
-}
type alias BatchGetTriggersRequest =
    { triggerNames : (List String)
    }


{-| undefined
-}
type alias BatchGetWorkflowsRequest =
    { names : (List String)
    , includeGraph : Maybe Bool
    }


{-| undefined
-}
type alias BatchStopJobRunRequest =
    { jobName : String
    , jobRunIds : (List String)
    }


{-| undefined
-}
type alias CreateClassifierRequest =
    { grokClassifier : Maybe CreateGrokClassifierRequest
    , xMLClassifier : Maybe CreateXMLClassifierRequest
    , jsonClassifier : Maybe CreateJsonClassifierRequest
    , csvClassifier : Maybe CreateCsvClassifierRequest
    }


{-| undefined
-}
type alias CreateConnectionRequest =
    { catalogId : Maybe String
    , connectionInput : ConnectionInput
    }


{-| undefined
-}
type alias CreateCrawlerRequest =
    { name : String
    , role : String
    , databaseName : Maybe String
    , description : Maybe String
    , targets : CrawlerTargets
    , schedule : Maybe String
    , classifiers : Maybe (List String)
    , tablePrefix : Maybe String
    , schemaChangePolicy : Maybe SchemaChangePolicy
    , configuration : Maybe String
    , crawlerSecurityConfiguration : Maybe String
    , tags : Maybe (Dict String String)
    }


{-| undefined
-}
type alias CreateDatabaseRequest =
    { catalogId : Maybe String
    , databaseInput : DatabaseInput
    }


{-| undefined
-}
type alias CreateDevEndpointRequest =
    { endpointName : String
    , roleArn : String
    , securityGroupIds : Maybe (List String)
    , subnetId : Maybe String
    , publicKey : Maybe String
    , publicKeys : Maybe (List String)
    , numberOfNodes : Maybe Int
    , workerType : Maybe WorkerType
    , numberOfWorkers : Maybe Int
    , extraPythonLibsS3Path : Maybe String
    , extraJarsS3Path : Maybe String
    , securityConfiguration : Maybe String
    , tags : Maybe (Dict String String)
    , arguments : Maybe (Dict String String)
    }


{-| undefined
-}
type alias CreateJobRequest =
    { name : String
    , description : Maybe String
    , logUri : Maybe String
    , role : String
    , executionProperty : Maybe ExecutionProperty
    , command : JobCommand
    , defaultArguments : Maybe (Dict String String)
    , connections : Maybe ConnectionsList
    , maxRetries : Maybe Int
    , allocatedCapacity : Maybe Int
    , timeout : Maybe Int
    , maxCapacity : Maybe Float
    , securityConfiguration : Maybe String
    , tags : Maybe (Dict String String)
    , notificationProperty : Maybe NotificationProperty
    , glueVersion : Maybe String
    , numberOfWorkers : Maybe Int
    , workerType : Maybe WorkerType
    }


{-| undefined
-}
type alias CreatePartitionRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tableName : String
    , partitionInput : PartitionInput
    }


{-| undefined
-}
type alias CreateScriptRequest =
    { dagNodes : Maybe (List CodeGenNode)
    , dagEdges : Maybe (List CodeGenEdge)
    , language : Maybe Language
    }


{-| undefined
-}
type alias CreateSecurityConfigurationRequest =
    { name : String
    , encryptionConfiguration : EncryptionConfiguration
    }


{-| undefined
-}
type alias CreateTableRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tableInput : TableInput
    }


{-| undefined
-}
type alias CreateTriggerRequest =
    { name : String
    , workflowName : Maybe String
    , type_ : TriggerType
    , schedule : Maybe String
    , predicate : Maybe Predicate
    , actions : (List Action)
    , description : Maybe String
    , startOnCreation : Maybe Bool
    , tags : Maybe (Dict String String)
    }


{-| undefined
-}
type alias CreateUserDefinedFunctionRequest =
    { catalogId : Maybe String
    , databaseName : String
    , functionInput : UserDefinedFunctionInput
    }


{-| undefined
-}
type alias CreateWorkflowRequest =
    { name : String
    , description : Maybe String
    , defaultRunProperties : Maybe (Dict String String)
    , tags : Maybe (Dict String String)
    }


{-| undefined
-}
type alias DeleteClassifierRequest =
    { name : String
    }


{-| undefined
-}
type alias DeleteConnectionRequest =
    { catalogId : Maybe String
    , connectionName : String
    }


{-| undefined
-}
type alias DeleteCrawlerRequest =
    { name : String
    }


{-| undefined
-}
type alias DeleteDatabaseRequest =
    { catalogId : Maybe String
    , name : String
    }


{-| undefined
-}
type alias DeleteDevEndpointRequest =
    { endpointName : String
    }


{-| undefined
-}
type alias DeleteJobRequest =
    { jobName : String
    }


{-| undefined
-}
type alias DeletePartitionRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tableName : String
    , partitionValues : (List String)
    }


{-| undefined
-}
type alias DeleteResourcePolicyRequest =
    { policyHashCondition : Maybe String
    }


{-| undefined
-}
type alias DeleteSecurityConfigurationRequest =
    { name : String
    }


{-| undefined
-}
type alias DeleteTableRequest =
    { catalogId : Maybe String
    , databaseName : String
    , name : String
    }


{-| undefined
-}
type alias DeleteTableVersionRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tableName : String
    , versionId : String
    }


{-| undefined
-}
type alias DeleteTriggerRequest =
    { name : String
    }


{-| undefined
-}
type alias DeleteUserDefinedFunctionRequest =
    { catalogId : Maybe String
    , databaseName : String
    , functionName : String
    }


{-| undefined
-}
type alias DeleteWorkflowRequest =
    { name : String
    }


{-| undefined
-}
type alias GetCatalogImportStatusRequest =
    { catalogId : Maybe String
    }


{-| undefined
-}
type alias GetClassifierRequest =
    { name : String
    }


{-| undefined
-}
type alias GetClassifiersRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias GetConnectionRequest =
    { catalogId : Maybe String
    , name : String
    , hidePassword : Maybe Bool
    }


{-| undefined
-}
type alias GetConnectionsRequest =
    { catalogId : Maybe String
    , filter : Maybe GetConnectionsFilter
    , hidePassword : Maybe Bool
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetCrawlerMetricsRequest =
    { crawlerNameList : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias GetCrawlerRequest =
    { name : String
    }


{-| undefined
-}
type alias GetCrawlersRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias GetDataCatalogEncryptionSettingsRequest =
    { catalogId : Maybe String
    }


{-| undefined
-}
type alias GetDatabaseRequest =
    { catalogId : Maybe String
    , name : String
    }


{-| undefined
-}
type alias GetDatabasesRequest =
    { catalogId : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetDataflowGraphRequest =
    { pythonScript : Maybe String
    }


{-| undefined
-}
type alias GetDevEndpointRequest =
    { endpointName : String
    }


{-| undefined
-}
type alias GetDevEndpointsRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias GetJobBookmarkRequest =
    { jobName : String
    , runId : Maybe String
    }


{-| undefined
-}
type alias GetJobBookmarksRequest =
    { jobName : String
    , maxResults : Maybe Int
    , nextToken : Maybe Int
    }


{-| undefined
-}
type alias GetJobRequest =
    { jobName : String
    }


{-| undefined
-}
type alias GetJobRunRequest =
    { jobName : String
    , runId : String
    , predecessorsIncluded : Maybe Bool
    }


{-| undefined
-}
type alias GetJobRunsRequest =
    { jobName : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetJobsRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetMappingRequest =
    { source : CatalogEntry
    , sinks : Maybe (List CatalogEntry)
    , location : Maybe Location
    }


{-| undefined
-}
type alias GetPartitionRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tableName : String
    , partitionValues : (List String)
    }


{-| undefined
-}
type alias GetPartitionsRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tableName : String
    , expression : Maybe String
    , nextToken : Maybe String
    , segment : Maybe Segment
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetPlanRequest =
    { mapping : (List MappingEntry)
    , source : CatalogEntry
    , sinks : Maybe (List CatalogEntry)
    , location : Maybe Location
    , language : Maybe Language
    }


{-| undefined
-}
type alias GetResourcePolicyRequest =
    { 
    }


{-| undefined
-}
type alias GetSecurityConfigurationRequest =
    { name : String
    }


{-| undefined
-}
type alias GetSecurityConfigurationsRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias GetTableRequest =
    { catalogId : Maybe String
    , databaseName : String
    , name : String
    }


{-| undefined
-}
type alias GetTableVersionRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tableName : String
    , versionId : Maybe String
    }


{-| undefined
-}
type alias GetTableVersionsRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tableName : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetTablesRequest =
    { catalogId : Maybe String
    , databaseName : String
    , expression : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetTagsRequest =
    { resourceArn : String
    }


{-| undefined
-}
type alias GetTriggerRequest =
    { name : String
    }


{-| undefined
-}
type alias GetTriggersRequest =
    { nextToken : Maybe String
    , dependentJobName : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetUserDefinedFunctionRequest =
    { catalogId : Maybe String
    , databaseName : String
    , functionName : String
    }


{-| undefined
-}
type alias GetUserDefinedFunctionsRequest =
    { catalogId : Maybe String
    , databaseName : String
    , pattern : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetWorkflowRequest =
    { name : String
    , includeGraph : Maybe Bool
    }


{-| undefined
-}
type alias GetWorkflowRunPropertiesRequest =
    { name : String
    , runId : String
    }


{-| undefined
-}
type alias GetWorkflowRunRequest =
    { name : String
    , runId : String
    , includeGraph : Maybe Bool
    }


{-| undefined
-}
type alias GetWorkflowRunsRequest =
    { name : String
    , includeGraph : Maybe Bool
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ImportCatalogToGlueRequest =
    { catalogId : Maybe String
    }


{-| undefined
-}
type alias ListCrawlersRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    , tags : Maybe (Dict String String)
    }


{-| undefined
-}
type alias ListDevEndpointsRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , tags : Maybe (Dict String String)
    }


{-| undefined
-}
type alias ListJobsRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , tags : Maybe (Dict String String)
    }


{-| undefined
-}
type alias ListTriggersRequest =
    { nextToken : Maybe String
    , dependentJobName : Maybe String
    , maxResults : Maybe Int
    , tags : Maybe (Dict String String)
    }


{-| undefined
-}
type alias ListWorkflowsRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias PutDataCatalogEncryptionSettingsRequest =
    { catalogId : Maybe String
    , dataCatalogEncryptionSettings : DataCatalogEncryptionSettings
    }


{-| undefined
-}
type alias PutResourcePolicyRequest =
    { policyInJson : String
    , policyHashCondition : Maybe String
    , policyExistsCondition : Maybe ExistCondition
    }


{-| undefined
-}
type alias PutWorkflowRunPropertiesRequest =
    { name : String
    , runId : String
    , runProperties : (Dict String String)
    }


{-| undefined
-}
type alias ResetJobBookmarkRequest =
    { jobName : String
    , runId : Maybe String
    }


{-| undefined
-}
type alias StartCrawlerRequest =
    { name : String
    }


{-| undefined
-}
type alias StartCrawlerScheduleRequest =
    { crawlerName : String
    }


{-| undefined
-}
type alias StartJobRunRequest =
    { jobName : String
    , jobRunId : Maybe String
    , arguments : Maybe (Dict String String)
    , allocatedCapacity : Maybe Int
    , timeout : Maybe Int
    , maxCapacity : Maybe Float
    , securityConfiguration : Maybe String
    , notificationProperty : Maybe NotificationProperty
    , workerType : Maybe WorkerType
    , numberOfWorkers : Maybe Int
    }


{-| undefined
-}
type alias StartTriggerRequest =
    { name : String
    }


{-| undefined
-}
type alias StartWorkflowRunRequest =
    { name : String
    }


{-| undefined
-}
type alias StopCrawlerRequest =
    { name : String
    }


{-| undefined
-}
type alias StopCrawlerScheduleRequest =
    { crawlerName : String
    }


{-| undefined
-}
type alias StopTriggerRequest =
    { name : String
    }


{-| undefined
-}
type alias TagResourceRequest =
    { resourceArn : String
    , tagsToAdd : (Dict String String)
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { resourceArn : String
    , tagsToRemove : (List String)
    }


{-| undefined
-}
type alias UpdateClassifierRequest =
    { grokClassifier : Maybe UpdateGrokClassifierRequest
    , xMLClassifier : Maybe UpdateXMLClassifierRequest
    , jsonClassifier : Maybe UpdateJsonClassifierRequest
    , csvClassifier : Maybe UpdateCsvClassifierRequest
    }


{-| undefined
-}
type alias UpdateConnectionRequest =
    { catalogId : Maybe String
    , name : String
    , connectionInput : ConnectionInput
    }


{-| undefined
-}
type alias UpdateCrawlerRequest =
    { name : String
    , role : Maybe String
    , databaseName : Maybe String
    , description : Maybe String
    , targets : Maybe CrawlerTargets
    , schedule : Maybe String
    , classifiers : Maybe (List String)
    , tablePrefix : Maybe String
    , schemaChangePolicy : Maybe SchemaChangePolicy
    , configuration : Maybe String
    , crawlerSecurityConfiguration : Maybe String
    }


{-| undefined
-}
type alias UpdateCrawlerScheduleRequest =
    { crawlerName : String
    , schedule : Maybe String
    }


{-| undefined
-}
type alias UpdateDatabaseRequest =
    { catalogId : Maybe String
    , name : String
    , databaseInput : DatabaseInput
    }


{-| undefined
-}
type alias UpdateDevEndpointRequest =
    { endpointName : String
    , publicKey : Maybe String
    , addPublicKeys : Maybe (List String)
    , deletePublicKeys : Maybe (List String)
    , customLibraries : Maybe DevEndpointCustomLibraries
    , updateEtlLibraries : Maybe Bool
    , deleteArguments : Maybe (List String)
    , addArguments : Maybe (Dict String String)
    }


{-| undefined
-}
type alias UpdateJobRequest =
    { jobName : String
    , jobUpdate : JobUpdate
    }


{-| undefined
-}
type alias UpdatePartitionRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tableName : String
    , partitionValueList : (List String)
    , partitionInput : PartitionInput
    }


{-| undefined
-}
type alias UpdateTableRequest =
    { catalogId : Maybe String
    , databaseName : String
    , tableInput : TableInput
    , skipArchive : Maybe Bool
    }


{-| undefined
-}
type alias UpdateTriggerRequest =
    { name : String
    , triggerUpdate : TriggerUpdate
    }


{-| undefined
-}
type alias UpdateUserDefinedFunctionRequest =
    { catalogId : Maybe String
    , databaseName : String
    , functionName : String
    , functionInput : UserDefinedFunctionInput
    }


{-| undefined
-}
type alias UpdateWorkflowRequest =
    { name : String
    , description : Maybe String
    , defaultRunProperties : Maybe (Dict String String)
    }






actionEncoder : Action -> JE.Value
actionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobName", data.jobName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Arguments", data.arguments)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Timeout", data.timeout)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecurityConfiguration", data.securityConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationPropertyEncoder)
            ("NotificationProperty", data.notificationProperty)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CrawlerName", data.crawlerName)
        
        
        |> JE.object






batchCreatePartitionRequestEncoder : BatchCreatePartitionRequest -> JE.Value
batchCreatePartitionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        
        |> (::) ("PartitionInputList", data.partitionInputList |> (JE.list (partitionInputEncoder)))
        
        
        |> JE.object






batchCreatePartitionResponseEncoder : BatchCreatePartitionResponse -> JE.Value
batchCreatePartitionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (partitionErrorEncoder))
            ("Errors", data.errors)
        
        
        |> JE.object






batchDeleteConnectionRequestEncoder : BatchDeleteConnectionRequest -> JE.Value
batchDeleteConnectionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("ConnectionNameList", data.connectionNameList |> (JE.list (JE.string)))
        
        
        |> JE.object






batchDeleteConnectionResponseEncoder : BatchDeleteConnectionResponse -> JE.Value
batchDeleteConnectionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Succeeded", data.succeeded)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (errorDetailEncoder))
            ("Errors", data.errors)
        
        
        |> JE.object






batchDeletePartitionRequestEncoder : BatchDeletePartitionRequest -> JE.Value
batchDeletePartitionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        
        |> (::) ("PartitionsToDelete", data.partitionsToDelete |> (JE.list (partitionValueListEncoder)))
        
        
        |> JE.object






batchDeletePartitionResponseEncoder : BatchDeletePartitionResponse -> JE.Value
batchDeletePartitionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (partitionErrorEncoder))
            ("Errors", data.errors)
        
        
        |> JE.object






batchDeleteTableRequestEncoder : BatchDeleteTableRequest -> JE.Value
batchDeleteTableRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TablesToDelete", data.tablesToDelete |> (JE.list (JE.string)))
        
        
        |> JE.object






batchDeleteTableResponseEncoder : BatchDeleteTableResponse -> JE.Value
batchDeleteTableResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tableErrorEncoder))
            ("Errors", data.errors)
        
        
        |> JE.object






batchDeleteTableVersionRequestEncoder : BatchDeleteTableVersionRequest -> JE.Value
batchDeleteTableVersionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        
        |> (::) ("VersionIds", data.versionIds |> (JE.list (JE.string)))
        
        
        |> JE.object






batchDeleteTableVersionResponseEncoder : BatchDeleteTableVersionResponse -> JE.Value
batchDeleteTableVersionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tableVersionErrorEncoder))
            ("Errors", data.errors)
        
        
        |> JE.object






batchGetCrawlersRequestEncoder : BatchGetCrawlersRequest -> JE.Value
batchGetCrawlersRequestEncoder data =
    []
        
        
        |> (::) ("CrawlerNames", data.crawlerNames |> (JE.list (JE.string)))
        
        
        |> JE.object






batchGetCrawlersResponseEncoder : BatchGetCrawlersResponse -> JE.Value
batchGetCrawlersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (crawlerEncoder))
            ("Crawlers", data.crawlers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("CrawlersNotFound", data.crawlersNotFound)
        
        
        |> JE.object






batchGetDevEndpointsRequestEncoder : BatchGetDevEndpointsRequest -> JE.Value
batchGetDevEndpointsRequestEncoder data =
    []
        
        
        |> (::) ("DevEndpointNames", data.devEndpointNames |> (JE.list (JE.string)))
        
        
        |> JE.object






batchGetDevEndpointsResponseEncoder : BatchGetDevEndpointsResponse -> JE.Value
batchGetDevEndpointsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (devEndpointEncoder))
            ("DevEndpoints", data.devEndpoints)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("DevEndpointsNotFound", data.devEndpointsNotFound)
        
        
        |> JE.object






batchGetJobsRequestEncoder : BatchGetJobsRequest -> JE.Value
batchGetJobsRequestEncoder data =
    []
        
        
        |> (::) ("JobNames", data.jobNames |> (JE.list (JE.string)))
        
        
        |> JE.object






batchGetJobsResponseEncoder : BatchGetJobsResponse -> JE.Value
batchGetJobsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (jobEncoder))
            ("Jobs", data.jobs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("JobsNotFound", data.jobsNotFound)
        
        
        |> JE.object






batchGetPartitionRequestEncoder : BatchGetPartitionRequest -> JE.Value
batchGetPartitionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        
        |> (::) ("PartitionsToGet", data.partitionsToGet |> (JE.list (partitionValueListEncoder)))
        
        
        |> JE.object






batchGetPartitionResponseEncoder : BatchGetPartitionResponse -> JE.Value
batchGetPartitionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (partitionEncoder))
            ("Partitions", data.partitions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (partitionValueListEncoder))
            ("UnprocessedKeys", data.unprocessedKeys)
        
        
        |> JE.object






batchGetTriggersRequestEncoder : BatchGetTriggersRequest -> JE.Value
batchGetTriggersRequestEncoder data =
    []
        
        
        |> (::) ("TriggerNames", data.triggerNames |> (JE.list (JE.string)))
        
        
        |> JE.object






batchGetTriggersResponseEncoder : BatchGetTriggersResponse -> JE.Value
batchGetTriggersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (triggerEncoder))
            ("Triggers", data.triggers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("TriggersNotFound", data.triggersNotFound)
        
        
        |> JE.object






batchGetWorkflowsRequestEncoder : BatchGetWorkflowsRequest -> JE.Value
batchGetWorkflowsRequestEncoder data =
    []
        
        
        |> (::) ("Names", data.names |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IncludeGraph", data.includeGraph)
        
        
        |> JE.object






batchGetWorkflowsResponseEncoder : BatchGetWorkflowsResponse -> JE.Value
batchGetWorkflowsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (workflowEncoder))
            ("Workflows", data.workflows)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("MissingWorkflows", data.missingWorkflows)
        
        
        |> JE.object






batchStopJobRunErrorEncoder : BatchStopJobRunError -> JE.Value
batchStopJobRunErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobName", data.jobName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobRunId", data.jobRunId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (errorDetailEncoder)
            ("ErrorDetail", data.errorDetail)
        
        
        |> JE.object






batchStopJobRunRequestEncoder : BatchStopJobRunRequest -> JE.Value
batchStopJobRunRequestEncoder data =
    []
        
        
        |> (::) ("JobName", data.jobName |> (JE.string))
        
        
        
        |> (::) ("JobRunIds", data.jobRunIds |> (JE.list (JE.string)))
        
        
        |> JE.object






batchStopJobRunResponseEncoder : BatchStopJobRunResponse -> JE.Value
batchStopJobRunResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (batchStopJobRunSuccessfulSubmissionEncoder))
            ("SuccessfulSubmissions", data.successfulSubmissions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (batchStopJobRunErrorEncoder))
            ("Errors", data.errors)
        
        
        |> JE.object






batchStopJobRunSuccessfulSubmissionEncoder : BatchStopJobRunSuccessfulSubmission -> JE.Value
batchStopJobRunSuccessfulSubmissionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobName", data.jobName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobRunId", data.jobRunId)
        
        
        |> JE.object










catalogEntryEncoder : CatalogEntry -> JE.Value
catalogEntryEncoder data =
    []
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        |> JE.object






catalogImportStatusEncoder : CatalogImportStatus -> JE.Value
catalogImportStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("ImportCompleted", data.importCompleted)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ImportTime", data.importTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImportedBy", data.importedBy)
        
        
        |> JE.object






catalogTargetEncoder : CatalogTarget -> JE.Value
catalogTargetEncoder data =
    []
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("Tables", data.tables |> (JE.list (JE.string)))
        
        
        |> JE.object






classifierEncoder : Classifier -> JE.Value
classifierEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (grokClassifierEncoder)
            ("GrokClassifier", data.grokClassifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (xMLClassifierEncoder)
            ("XMLClassifier", data.xMLClassifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jsonClassifierEncoder)
            ("JsonClassifier", data.jsonClassifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (csvClassifierEncoder)
            ("CsvClassifier", data.csvClassifier)
        
        
        |> JE.object






cloudWatchEncryptionEncoder : CloudWatchEncryption -> JE.Value
cloudWatchEncryptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchEncryptionModeToString >> JE.string)
            ("CloudWatchEncryptionMode", data.cloudWatchEncryptionMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KmsKeyArn", data.kmsKeyArn)
        
        
        |> JE.object










codeGenEdgeEncoder : CodeGenEdge -> JE.Value
codeGenEdgeEncoder data =
    []
        
        
        |> (::) ("Source", data.source |> (JE.string))
        
        
        
        |> (::) ("Target", data.target |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TargetParameter", data.targetParameter)
        
        
        |> JE.object






codeGenNodeEncoder : CodeGenNode -> JE.Value
codeGenNodeEncoder data =
    []
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        
        |> (::) ("NodeType", data.nodeType |> (JE.string))
        
        
        
        |> (::) ("Args", data.args |> (JE.list (codeGenNodeArgEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("LineNumber", data.lineNumber)
        
        
        |> JE.object






codeGenNodeArgEncoder : CodeGenNodeArg -> JE.Value
codeGenNodeArgEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("Value", data.value |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Param", data.param)
        
        
        |> JE.object






columnEncoder : Column -> JE.Value
columnEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Comment", data.comment)
        
        
        |> JE.object






conditionEncoder : Condition -> JE.Value
conditionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (logicalOperatorToString >> JE.string)
            ("LogicalOperator", data.logicalOperator)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobName", data.jobName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobRunStateToString >> JE.string)
            ("State", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CrawlerName", data.crawlerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (crawlStateToString >> JE.string)
            ("CrawlState", data.crawlState)
        
        
        |> JE.object






connectionEncoder : Connection -> JE.Value
connectionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (connectionTypeToString >> JE.string)
            ("ConnectionType", data.connectionType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("MatchCriteria", data.matchCriteria)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("ConnectionProperties", data.connectionProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (physicalConnectionRequirementsEncoder)
            ("PhysicalConnectionRequirements", data.physicalConnectionRequirements)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdatedTime", data.lastUpdatedTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LastUpdatedBy", data.lastUpdatedBy)
        
        
        |> JE.object






connectionInputEncoder : ConnectionInput -> JE.Value
connectionInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> (::) ("ConnectionType", data.connectionType |> (connectionTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("MatchCriteria", data.matchCriteria)
        
        
        
        |> (::) ("ConnectionProperties", data.connectionProperties |> (JE.dict identity (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (physicalConnectionRequirementsEncoder)
            ("PhysicalConnectionRequirements", data.physicalConnectionRequirements)
        
        
        |> JE.object






connectionPasswordEncryptionEncoder : ConnectionPasswordEncryption -> JE.Value
connectionPasswordEncryptionEncoder data =
    []
        
        
        |> (::) ("ReturnConnectionPasswordEncrypted", data.returnConnectionPasswordEncrypted |> (JE.bool))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AwsKmsKeyId", data.awsKmsKeyId)
        
        
        |> JE.object














connectionsListEncoder : ConnectionsList -> JE.Value
connectionsListEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Connections", data.connections)
        
        
        |> JE.object






crawlEncoder : Crawl -> JE.Value
crawlEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (crawlStateToString >> JE.string)
            ("State", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartedOn", data.startedOn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CompletedOn", data.completedOn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogGroup", data.logGroup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogStream", data.logStream)
        
        
        |> JE.object










crawlerEncoder : Crawler -> JE.Value
crawlerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Role", data.role)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (crawlerTargetsEncoder)
            ("Targets", data.targets)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DatabaseName", data.databaseName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Classifiers", data.classifiers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (schemaChangePolicyEncoder)
            ("SchemaChangePolicy", data.schemaChangePolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (crawlerStateToString >> JE.string)
            ("State", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TablePrefix", data.tablePrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scheduleEncoder)
            ("Schedule", data.schedule)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("CrawlElapsedTime", data.crawlElapsedTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdated", data.lastUpdated)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lastCrawlInfoEncoder)
            ("LastCrawl", data.lastCrawl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Configuration", data.configuration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CrawlerSecurityConfiguration", data.crawlerSecurityConfiguration)
        
        
        |> JE.object






crawlerMetricsEncoder : CrawlerMetrics -> JE.Value
crawlerMetricsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CrawlerName", data.crawlerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("TimeLeftSeconds", data.timeLeftSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("StillEstimating", data.stillEstimating)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("LastRuntimeSeconds", data.lastRuntimeSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("MedianRuntimeSeconds", data.medianRuntimeSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TablesCreated", data.tablesCreated)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TablesUpdated", data.tablesUpdated)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TablesDeleted", data.tablesDeleted)
        
        
        |> JE.object






crawlerNodeDetailsEncoder : CrawlerNodeDetails -> JE.Value
crawlerNodeDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (crawlEncoder))
            ("Crawls", data.crawls)
        
        
        |> JE.object










crawlerTargetsEncoder : CrawlerTargets -> JE.Value
crawlerTargetsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (s3TargetEncoder))
            ("S3Targets", data.s3Targets)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (jdbcTargetEncoder))
            ("JdbcTargets", data.jdbcTargets)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (dynamoDBTargetEncoder))
            ("DynamoDBTargets", data.dynamoDBTargets)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (catalogTargetEncoder))
            ("CatalogTargets", data.catalogTargets)
        
        
        |> JE.object






createClassifierRequestEncoder : CreateClassifierRequest -> JE.Value
createClassifierRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (createGrokClassifierRequestEncoder)
            ("GrokClassifier", data.grokClassifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (createXMLClassifierRequestEncoder)
            ("XMLClassifier", data.xMLClassifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (createJsonClassifierRequestEncoder)
            ("JsonClassifier", data.jsonClassifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (createCsvClassifierRequestEncoder)
            ("CsvClassifier", data.csvClassifier)
        
        
        |> JE.object






createClassifierResponseEncoder : CreateClassifierResponse -> JE.Value
createClassifierResponseEncoder data =
    []
        
        |> JE.object






createConnectionRequestEncoder : CreateConnectionRequest -> JE.Value
createConnectionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("ConnectionInput", data.connectionInput |> (connectionInputEncoder))
        
        
        |> JE.object






createConnectionResponseEncoder : CreateConnectionResponse -> JE.Value
createConnectionResponseEncoder data =
    []
        
        |> JE.object






createCrawlerRequestEncoder : CreateCrawlerRequest -> JE.Value
createCrawlerRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("Role", data.role |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DatabaseName", data.databaseName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> (::) ("Targets", data.targets |> (crawlerTargetsEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Schedule", data.schedule)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Classifiers", data.classifiers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TablePrefix", data.tablePrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (schemaChangePolicyEncoder)
            ("SchemaChangePolicy", data.schemaChangePolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Configuration", data.configuration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CrawlerSecurityConfiguration", data.crawlerSecurityConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        |> JE.object






createCrawlerResponseEncoder : CreateCrawlerResponse -> JE.Value
createCrawlerResponseEncoder data =
    []
        
        |> JE.object






createCsvClassifierRequestEncoder : CreateCsvClassifierRequest -> JE.Value
createCsvClassifierRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Delimiter", data.delimiter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("QuoteSymbol", data.quoteSymbol)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (csvHeaderOptionToString >> JE.string)
            ("ContainsHeader", data.containsHeader)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Header", data.header)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("DisableValueTrimming", data.disableValueTrimming)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AllowSingleColumn", data.allowSingleColumn)
        
        
        |> JE.object






createDatabaseRequestEncoder : CreateDatabaseRequest -> JE.Value
createDatabaseRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseInput", data.databaseInput |> (databaseInputEncoder))
        
        
        |> JE.object






createDatabaseResponseEncoder : CreateDatabaseResponse -> JE.Value
createDatabaseResponseEncoder data =
    []
        
        |> JE.object






createDevEndpointRequestEncoder : CreateDevEndpointRequest -> JE.Value
createDevEndpointRequestEncoder data =
    []
        
        
        |> (::) ("EndpointName", data.endpointName |> (JE.string))
        
        
        
        |> (::) ("RoleArn", data.roleArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SecurityGroupIds", data.securityGroupIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SubnetId", data.subnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PublicKey", data.publicKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("PublicKeys", data.publicKeys)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfNodes", data.numberOfNodes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workerTypeToString >> JE.string)
            ("WorkerType", data.workerType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfWorkers", data.numberOfWorkers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExtraPythonLibsS3Path", data.extraPythonLibsS3Path)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExtraJarsS3Path", data.extraJarsS3Path)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecurityConfiguration", data.securityConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Arguments", data.arguments)
        
        
        |> JE.object






createDevEndpointResponseEncoder : CreateDevEndpointResponse -> JE.Value
createDevEndpointResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EndpointName", data.endpointName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SecurityGroupIds", data.securityGroupIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SubnetId", data.subnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("YarnEndpointAddress", data.yarnEndpointAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ZeppelinRemoteSparkInterpreterPort", data.zeppelinRemoteSparkInterpreterPort)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfNodes", data.numberOfNodes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workerTypeToString >> JE.string)
            ("WorkerType", data.workerType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfWorkers", data.numberOfWorkers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AvailabilityZone", data.availabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VpcId", data.vpcId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExtraPythonLibsS3Path", data.extraPythonLibsS3Path)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExtraJarsS3Path", data.extraJarsS3Path)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FailureReason", data.failureReason)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecurityConfiguration", data.securityConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTimestamp", data.createdTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Arguments", data.arguments)
        
        
        |> JE.object






createGrokClassifierRequestEncoder : CreateGrokClassifierRequest -> JE.Value
createGrokClassifierRequestEncoder data =
    []
        
        
        |> (::) ("Classification", data.classification |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("GrokPattern", data.grokPattern |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomPatterns", data.customPatterns)
        
        
        |> JE.object






createJobRequestEncoder : CreateJobRequest -> JE.Value
createJobRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogUri", data.logUri)
        
        
        
        |> (::) ("Role", data.role |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionPropertyEncoder)
            ("ExecutionProperty", data.executionProperty)
        
        
        
        |> (::) ("Command", data.command |> (jobCommandEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("DefaultArguments", data.defaultArguments)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (connectionsListEncoder)
            ("Connections", data.connections)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxRetries", data.maxRetries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AllocatedCapacity", data.allocatedCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Timeout", data.timeout)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("MaxCapacity", data.maxCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecurityConfiguration", data.securityConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationPropertyEncoder)
            ("NotificationProperty", data.notificationProperty)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GlueVersion", data.glueVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfWorkers", data.numberOfWorkers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workerTypeToString >> JE.string)
            ("WorkerType", data.workerType)
        
        
        |> JE.object






createJobResponseEncoder : CreateJobResponse -> JE.Value
createJobResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






createJsonClassifierRequestEncoder : CreateJsonClassifierRequest -> JE.Value
createJsonClassifierRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("JsonPath", data.jsonPath |> (JE.string))
        
        
        |> JE.object






createPartitionRequestEncoder : CreatePartitionRequest -> JE.Value
createPartitionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        
        |> (::) ("PartitionInput", data.partitionInput |> (partitionInputEncoder))
        
        
        |> JE.object






createPartitionResponseEncoder : CreatePartitionResponse -> JE.Value
createPartitionResponseEncoder data =
    []
        
        |> JE.object






createScriptRequestEncoder : CreateScriptRequest -> JE.Value
createScriptRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (codeGenNodeEncoder))
            ("DagNodes", data.dagNodes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (codeGenEdgeEncoder))
            ("DagEdges", data.dagEdges)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (languageToString >> JE.string)
            ("Language", data.language)
        
        
        |> JE.object






createScriptResponseEncoder : CreateScriptResponse -> JE.Value
createScriptResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PythonScript", data.pythonScript)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ScalaCode", data.scalaCode)
        
        
        |> JE.object






createSecurityConfigurationRequestEncoder : CreateSecurityConfigurationRequest -> JE.Value
createSecurityConfigurationRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("EncryptionConfiguration", data.encryptionConfiguration |> (encryptionConfigurationEncoder))
        
        
        |> JE.object






createSecurityConfigurationResponseEncoder : CreateSecurityConfigurationResponse -> JE.Value
createSecurityConfigurationResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTimestamp", data.createdTimestamp)
        
        
        |> JE.object






createTableRequestEncoder : CreateTableRequest -> JE.Value
createTableRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableInput", data.tableInput |> (tableInputEncoder))
        
        
        |> JE.object






createTableResponseEncoder : CreateTableResponse -> JE.Value
createTableResponseEncoder data =
    []
        
        |> JE.object






createTriggerRequestEncoder : CreateTriggerRequest -> JE.Value
createTriggerRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkflowName", data.workflowName)
        
        
        
        |> (::) ("Type", data.type_ |> (triggerTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Schedule", data.schedule)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (predicateEncoder)
            ("Predicate", data.predicate)
        
        
        
        |> (::) ("Actions", data.actions |> (JE.list (actionEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("StartOnCreation", data.startOnCreation)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        |> JE.object






createTriggerResponseEncoder : CreateTriggerResponse -> JE.Value
createTriggerResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






createUserDefinedFunctionRequestEncoder : CreateUserDefinedFunctionRequest -> JE.Value
createUserDefinedFunctionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("FunctionInput", data.functionInput |> (userDefinedFunctionInputEncoder))
        
        
        |> JE.object






createUserDefinedFunctionResponseEncoder : CreateUserDefinedFunctionResponse -> JE.Value
createUserDefinedFunctionResponseEncoder data =
    []
        
        |> JE.object






createWorkflowRequestEncoder : CreateWorkflowRequest -> JE.Value
createWorkflowRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("DefaultRunProperties", data.defaultRunProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        |> JE.object






createWorkflowResponseEncoder : CreateWorkflowResponse -> JE.Value
createWorkflowResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






createXMLClassifierRequestEncoder : CreateXMLClassifierRequest -> JE.Value
createXMLClassifierRequestEncoder data =
    []
        
        
        |> (::) ("Classification", data.classification |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RowTag", data.rowTag)
        
        
        |> JE.object






csvClassifierEncoder : CsvClassifier -> JE.Value
csvClassifierEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdated", data.lastUpdated)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Delimiter", data.delimiter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("QuoteSymbol", data.quoteSymbol)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (csvHeaderOptionToString >> JE.string)
            ("ContainsHeader", data.containsHeader)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Header", data.header)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("DisableValueTrimming", data.disableValueTrimming)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AllowSingleColumn", data.allowSingleColumn)
        
        
        |> JE.object










dataCatalogEncryptionSettingsEncoder : DataCatalogEncryptionSettings -> JE.Value
dataCatalogEncryptionSettingsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (encryptionAtRestEncoder)
            ("EncryptionAtRest", data.encryptionAtRest)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (connectionPasswordEncryptionEncoder)
            ("ConnectionPasswordEncryption", data.connectionPasswordEncryption)
        
        
        |> JE.object






databaseEncoder : Database -> JE.Value
databaseEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LocationUri", data.locationUri)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Parameters", data.parameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreateTime", data.createTime)
        
        
        |> JE.object






databaseInputEncoder : DatabaseInput -> JE.Value
databaseInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LocationUri", data.locationUri)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Parameters", data.parameters)
        
        
        |> JE.object










deleteClassifierRequestEncoder : DeleteClassifierRequest -> JE.Value
deleteClassifierRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteClassifierResponseEncoder : DeleteClassifierResponse -> JE.Value
deleteClassifierResponseEncoder data =
    []
        
        |> JE.object






deleteConnectionRequestEncoder : DeleteConnectionRequest -> JE.Value
deleteConnectionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("ConnectionName", data.connectionName |> (JE.string))
        
        
        |> JE.object






deleteConnectionResponseEncoder : DeleteConnectionResponse -> JE.Value
deleteConnectionResponseEncoder data =
    []
        
        |> JE.object






deleteCrawlerRequestEncoder : DeleteCrawlerRequest -> JE.Value
deleteCrawlerRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteCrawlerResponseEncoder : DeleteCrawlerResponse -> JE.Value
deleteCrawlerResponseEncoder data =
    []
        
        |> JE.object






deleteDatabaseRequestEncoder : DeleteDatabaseRequest -> JE.Value
deleteDatabaseRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteDatabaseResponseEncoder : DeleteDatabaseResponse -> JE.Value
deleteDatabaseResponseEncoder data =
    []
        
        |> JE.object






deleteDevEndpointRequestEncoder : DeleteDevEndpointRequest -> JE.Value
deleteDevEndpointRequestEncoder data =
    []
        
        
        |> (::) ("EndpointName", data.endpointName |> (JE.string))
        
        
        |> JE.object






deleteDevEndpointResponseEncoder : DeleteDevEndpointResponse -> JE.Value
deleteDevEndpointResponseEncoder data =
    []
        
        |> JE.object






deleteJobRequestEncoder : DeleteJobRequest -> JE.Value
deleteJobRequestEncoder data =
    []
        
        
        |> (::) ("JobName", data.jobName |> (JE.string))
        
        
        |> JE.object






deleteJobResponseEncoder : DeleteJobResponse -> JE.Value
deleteJobResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobName", data.jobName)
        
        
        |> JE.object






deletePartitionRequestEncoder : DeletePartitionRequest -> JE.Value
deletePartitionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        
        |> (::) ("PartitionValues", data.partitionValues |> (JE.list (JE.string)))
        
        
        |> JE.object






deletePartitionResponseEncoder : DeletePartitionResponse -> JE.Value
deletePartitionResponseEncoder data =
    []
        
        |> JE.object






deleteResourcePolicyRequestEncoder : DeleteResourcePolicyRequest -> JE.Value
deleteResourcePolicyRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PolicyHashCondition", data.policyHashCondition)
        
        
        |> JE.object






deleteResourcePolicyResponseEncoder : DeleteResourcePolicyResponse -> JE.Value
deleteResourcePolicyResponseEncoder data =
    []
        
        |> JE.object






deleteSecurityConfigurationRequestEncoder : DeleteSecurityConfigurationRequest -> JE.Value
deleteSecurityConfigurationRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteSecurityConfigurationResponseEncoder : DeleteSecurityConfigurationResponse -> JE.Value
deleteSecurityConfigurationResponseEncoder data =
    []
        
        |> JE.object






deleteTableRequestEncoder : DeleteTableRequest -> JE.Value
deleteTableRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteTableResponseEncoder : DeleteTableResponse -> JE.Value
deleteTableResponseEncoder data =
    []
        
        |> JE.object






deleteTableVersionRequestEncoder : DeleteTableVersionRequest -> JE.Value
deleteTableVersionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        
        |> (::) ("VersionId", data.versionId |> (JE.string))
        
        
        |> JE.object






deleteTableVersionResponseEncoder : DeleteTableVersionResponse -> JE.Value
deleteTableVersionResponseEncoder data =
    []
        
        |> JE.object






deleteTriggerRequestEncoder : DeleteTriggerRequest -> JE.Value
deleteTriggerRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteTriggerResponseEncoder : DeleteTriggerResponse -> JE.Value
deleteTriggerResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






deleteUserDefinedFunctionRequestEncoder : DeleteUserDefinedFunctionRequest -> JE.Value
deleteUserDefinedFunctionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("FunctionName", data.functionName |> (JE.string))
        
        
        |> JE.object






deleteUserDefinedFunctionResponseEncoder : DeleteUserDefinedFunctionResponse -> JE.Value
deleteUserDefinedFunctionResponseEncoder data =
    []
        
        |> JE.object






deleteWorkflowRequestEncoder : DeleteWorkflowRequest -> JE.Value
deleteWorkflowRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteWorkflowResponseEncoder : DeleteWorkflowResponse -> JE.Value
deleteWorkflowResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






devEndpointEncoder : DevEndpoint -> JE.Value
devEndpointEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EndpointName", data.endpointName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SecurityGroupIds", data.securityGroupIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SubnetId", data.subnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("YarnEndpointAddress", data.yarnEndpointAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PrivateAddress", data.privateAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ZeppelinRemoteSparkInterpreterPort", data.zeppelinRemoteSparkInterpreterPort)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PublicAddress", data.publicAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workerTypeToString >> JE.string)
            ("WorkerType", data.workerType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfWorkers", data.numberOfWorkers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfNodes", data.numberOfNodes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AvailabilityZone", data.availabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VpcId", data.vpcId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExtraPythonLibsS3Path", data.extraPythonLibsS3Path)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExtraJarsS3Path", data.extraJarsS3Path)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FailureReason", data.failureReason)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LastUpdateStatus", data.lastUpdateStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTimestamp", data.createdTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastModifiedTimestamp", data.lastModifiedTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PublicKey", data.publicKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("PublicKeys", data.publicKeys)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecurityConfiguration", data.securityConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Arguments", data.arguments)
        
        
        |> JE.object






devEndpointCustomLibrariesEncoder : DevEndpointCustomLibraries -> JE.Value
devEndpointCustomLibrariesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExtraPythonLibsS3Path", data.extraPythonLibsS3Path)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExtraJarsS3Path", data.extraJarsS3Path)
        
        
        |> JE.object






dynamoDBTargetEncoder : DynamoDBTarget -> JE.Value
dynamoDBTargetEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Path", data.path)
        
        
        |> JE.object






edgeEncoder : Edge -> JE.Value
edgeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SourceId", data.sourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DestinationId", data.destinationId)
        
        
        |> JE.object






encryptionAtRestEncoder : EncryptionAtRest -> JE.Value
encryptionAtRestEncoder data =
    []
        
        
        |> (::) ("CatalogEncryptionMode", data.catalogEncryptionMode |> (catalogEncryptionModeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SseAwsKmsKeyId", data.sseAwsKmsKeyId)
        
        
        |> JE.object






encryptionConfigurationEncoder : EncryptionConfiguration -> JE.Value
encryptionConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (s3EncryptionEncoder))
            ("S3Encryption", data.s3Encryption)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchEncryptionEncoder)
            ("CloudWatchEncryption", data.cloudWatchEncryption)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobBookmarksEncryptionEncoder)
            ("JobBookmarksEncryption", data.jobBookmarksEncryption)
        
        
        |> JE.object






errorDetailEncoder : ErrorDetail -> JE.Value
errorDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object






executionPropertyEncoder : ExecutionProperty -> JE.Value
executionPropertyEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxConcurrentRuns", data.maxConcurrentRuns)
        
        
        |> JE.object










getCatalogImportStatusRequestEncoder : GetCatalogImportStatusRequest -> JE.Value
getCatalogImportStatusRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        |> JE.object






getCatalogImportStatusResponseEncoder : GetCatalogImportStatusResponse -> JE.Value
getCatalogImportStatusResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (catalogImportStatusEncoder)
            ("ImportStatus", data.importStatus)
        
        
        |> JE.object






getClassifierRequestEncoder : GetClassifierRequest -> JE.Value
getClassifierRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






getClassifierResponseEncoder : GetClassifierResponse -> JE.Value
getClassifierResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (classifierEncoder)
            ("Classifier", data.classifier)
        
        
        |> JE.object






getClassifiersRequestEncoder : GetClassifiersRequest -> JE.Value
getClassifiersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getClassifiersResponseEncoder : GetClassifiersResponse -> JE.Value
getClassifiersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (classifierEncoder))
            ("Classifiers", data.classifiers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getConnectionRequestEncoder : GetConnectionRequest -> JE.Value
getConnectionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("HidePassword", data.hidePassword)
        
        
        |> JE.object






getConnectionResponseEncoder : GetConnectionResponse -> JE.Value
getConnectionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (connectionEncoder)
            ("Connection", data.connection)
        
        
        |> JE.object






getConnectionsFilterEncoder : GetConnectionsFilter -> JE.Value
getConnectionsFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("MatchCriteria", data.matchCriteria)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (connectionTypeToString >> JE.string)
            ("ConnectionType", data.connectionType)
        
        
        |> JE.object






getConnectionsRequestEncoder : GetConnectionsRequest -> JE.Value
getConnectionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (getConnectionsFilterEncoder)
            ("Filter", data.filter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("HidePassword", data.hidePassword)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






getConnectionsResponseEncoder : GetConnectionsResponse -> JE.Value
getConnectionsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (connectionEncoder))
            ("ConnectionList", data.connectionList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getCrawlerMetricsRequestEncoder : GetCrawlerMetricsRequest -> JE.Value
getCrawlerMetricsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("CrawlerNameList", data.crawlerNameList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getCrawlerMetricsResponseEncoder : GetCrawlerMetricsResponse -> JE.Value
getCrawlerMetricsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (crawlerMetricsEncoder))
            ("CrawlerMetricsList", data.crawlerMetricsList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getCrawlerRequestEncoder : GetCrawlerRequest -> JE.Value
getCrawlerRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






getCrawlerResponseEncoder : GetCrawlerResponse -> JE.Value
getCrawlerResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (crawlerEncoder)
            ("Crawler", data.crawler)
        
        
        |> JE.object






getCrawlersRequestEncoder : GetCrawlersRequest -> JE.Value
getCrawlersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getCrawlersResponseEncoder : GetCrawlersResponse -> JE.Value
getCrawlersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (crawlerEncoder))
            ("Crawlers", data.crawlers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getDataCatalogEncryptionSettingsRequestEncoder : GetDataCatalogEncryptionSettingsRequest -> JE.Value
getDataCatalogEncryptionSettingsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        |> JE.object






getDataCatalogEncryptionSettingsResponseEncoder : GetDataCatalogEncryptionSettingsResponse -> JE.Value
getDataCatalogEncryptionSettingsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (dataCatalogEncryptionSettingsEncoder)
            ("DataCatalogEncryptionSettings", data.dataCatalogEncryptionSettings)
        
        
        |> JE.object






getDatabaseRequestEncoder : GetDatabaseRequest -> JE.Value
getDatabaseRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






getDatabaseResponseEncoder : GetDatabaseResponse -> JE.Value
getDatabaseResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (databaseEncoder)
            ("Database", data.database)
        
        
        |> JE.object






getDatabasesRequestEncoder : GetDatabasesRequest -> JE.Value
getDatabasesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






getDatabasesResponseEncoder : GetDatabasesResponse -> JE.Value
getDatabasesResponseEncoder data =
    []
        
        
        |> (::) ("DatabaseList", data.databaseList |> (JE.list (databaseEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getDataflowGraphRequestEncoder : GetDataflowGraphRequest -> JE.Value
getDataflowGraphRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PythonScript", data.pythonScript)
        
        
        |> JE.object






getDataflowGraphResponseEncoder : GetDataflowGraphResponse -> JE.Value
getDataflowGraphResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (codeGenNodeEncoder))
            ("DagNodes", data.dagNodes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (codeGenEdgeEncoder))
            ("DagEdges", data.dagEdges)
        
        
        |> JE.object






getDevEndpointRequestEncoder : GetDevEndpointRequest -> JE.Value
getDevEndpointRequestEncoder data =
    []
        
        
        |> (::) ("EndpointName", data.endpointName |> (JE.string))
        
        
        |> JE.object






getDevEndpointResponseEncoder : GetDevEndpointResponse -> JE.Value
getDevEndpointResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (devEndpointEncoder)
            ("DevEndpoint", data.devEndpoint)
        
        
        |> JE.object






getDevEndpointsRequestEncoder : GetDevEndpointsRequest -> JE.Value
getDevEndpointsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getDevEndpointsResponseEncoder : GetDevEndpointsResponse -> JE.Value
getDevEndpointsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (devEndpointEncoder))
            ("DevEndpoints", data.devEndpoints)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getJobBookmarkRequestEncoder : GetJobBookmarkRequest -> JE.Value
getJobBookmarkRequestEncoder data =
    []
        
        
        |> (::) ("JobName", data.jobName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RunId", data.runId)
        
        
        |> JE.object






getJobBookmarkResponseEncoder : GetJobBookmarkResponse -> JE.Value
getJobBookmarkResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (jobBookmarkEntryEncoder)
            ("JobBookmarkEntry", data.jobBookmarkEntry)
        
        
        |> JE.object






getJobBookmarksRequestEncoder : GetJobBookmarksRequest -> JE.Value
getJobBookmarksRequestEncoder data =
    []
        
        
        |> (::) ("JobName", data.jobName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getJobBookmarksResponseEncoder : GetJobBookmarksResponse -> JE.Value
getJobBookmarksResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (jobBookmarkEntryEncoder))
            ("JobBookmarkEntries", data.jobBookmarkEntries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getJobRequestEncoder : GetJobRequest -> JE.Value
getJobRequestEncoder data =
    []
        
        
        |> (::) ("JobName", data.jobName |> (JE.string))
        
        
        |> JE.object






getJobResponseEncoder : GetJobResponse -> JE.Value
getJobResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (jobEncoder)
            ("Job", data.job)
        
        
        |> JE.object






getJobRunRequestEncoder : GetJobRunRequest -> JE.Value
getJobRunRequestEncoder data =
    []
        
        
        |> (::) ("JobName", data.jobName |> (JE.string))
        
        
        
        |> (::) ("RunId", data.runId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("PredecessorsIncluded", data.predecessorsIncluded)
        
        
        |> JE.object






getJobRunResponseEncoder : GetJobRunResponse -> JE.Value
getJobRunResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (jobRunEncoder)
            ("JobRun", data.jobRun)
        
        
        |> JE.object






getJobRunsRequestEncoder : GetJobRunsRequest -> JE.Value
getJobRunsRequestEncoder data =
    []
        
        
        |> (::) ("JobName", data.jobName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






getJobRunsResponseEncoder : GetJobRunsResponse -> JE.Value
getJobRunsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (jobRunEncoder))
            ("JobRuns", data.jobRuns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getJobsRequestEncoder : GetJobsRequest -> JE.Value
getJobsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






getJobsResponseEncoder : GetJobsResponse -> JE.Value
getJobsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (jobEncoder))
            ("Jobs", data.jobs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getMappingRequestEncoder : GetMappingRequest -> JE.Value
getMappingRequestEncoder data =
    []
        
        
        |> (::) ("Source", data.source |> (catalogEntryEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (catalogEntryEncoder))
            ("Sinks", data.sinks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (locationEncoder)
            ("Location", data.location)
        
        
        |> JE.object






getMappingResponseEncoder : GetMappingResponse -> JE.Value
getMappingResponseEncoder data =
    []
        
        
        |> (::) ("Mapping", data.mapping |> (JE.list (mappingEntryEncoder)))
        
        
        |> JE.object






getPartitionRequestEncoder : GetPartitionRequest -> JE.Value
getPartitionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        
        |> (::) ("PartitionValues", data.partitionValues |> (JE.list (JE.string)))
        
        
        |> JE.object






getPartitionResponseEncoder : GetPartitionResponse -> JE.Value
getPartitionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (partitionEncoder)
            ("Partition", data.partition)
        
        
        |> JE.object






getPartitionsRequestEncoder : GetPartitionsRequest -> JE.Value
getPartitionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Expression", data.expression)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (segmentEncoder)
            ("Segment", data.segment)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






getPartitionsResponseEncoder : GetPartitionsResponse -> JE.Value
getPartitionsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (partitionEncoder))
            ("Partitions", data.partitions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getPlanRequestEncoder : GetPlanRequest -> JE.Value
getPlanRequestEncoder data =
    []
        
        
        |> (::) ("Mapping", data.mapping |> (JE.list (mappingEntryEncoder)))
        
        
        
        |> (::) ("Source", data.source |> (catalogEntryEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (catalogEntryEncoder))
            ("Sinks", data.sinks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (locationEncoder)
            ("Location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (languageToString >> JE.string)
            ("Language", data.language)
        
        
        |> JE.object






getPlanResponseEncoder : GetPlanResponse -> JE.Value
getPlanResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PythonScript", data.pythonScript)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ScalaCode", data.scalaCode)
        
        
        |> JE.object






getResourcePolicyRequestEncoder : GetResourcePolicyRequest -> JE.Value
getResourcePolicyRequestEncoder data =
    []
        
        |> JE.object






getResourcePolicyResponseEncoder : GetResourcePolicyResponse -> JE.Value
getResourcePolicyResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PolicyInJson", data.policyInJson)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PolicyHash", data.policyHash)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreateTime", data.createTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("UpdateTime", data.updateTime)
        
        
        |> JE.object






getSecurityConfigurationRequestEncoder : GetSecurityConfigurationRequest -> JE.Value
getSecurityConfigurationRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






getSecurityConfigurationResponseEncoder : GetSecurityConfigurationResponse -> JE.Value
getSecurityConfigurationResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (securityConfigurationEncoder)
            ("SecurityConfiguration", data.securityConfiguration)
        
        
        |> JE.object






getSecurityConfigurationsRequestEncoder : GetSecurityConfigurationsRequest -> JE.Value
getSecurityConfigurationsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getSecurityConfigurationsResponseEncoder : GetSecurityConfigurationsResponse -> JE.Value
getSecurityConfigurationsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (securityConfigurationEncoder))
            ("SecurityConfigurations", data.securityConfigurations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getTableRequestEncoder : GetTableRequest -> JE.Value
getTableRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






getTableResponseEncoder : GetTableResponse -> JE.Value
getTableResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (tableEncoder)
            ("Table", data.table)
        
        
        |> JE.object






getTableVersionRequestEncoder : GetTableVersionRequest -> JE.Value
getTableVersionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VersionId", data.versionId)
        
        
        |> JE.object






getTableVersionResponseEncoder : GetTableVersionResponse -> JE.Value
getTableVersionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (tableVersionEncoder)
            ("TableVersion", data.tableVersion)
        
        
        |> JE.object






getTableVersionsRequestEncoder : GetTableVersionsRequest -> JE.Value
getTableVersionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






getTableVersionsResponseEncoder : GetTableVersionsResponse -> JE.Value
getTableVersionsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tableVersionEncoder))
            ("TableVersions", data.tableVersions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getTablesRequestEncoder : GetTablesRequest -> JE.Value
getTablesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Expression", data.expression)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






getTablesResponseEncoder : GetTablesResponse -> JE.Value
getTablesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tableEncoder))
            ("TableList", data.tableList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getTagsRequestEncoder : GetTagsRequest -> JE.Value
getTagsRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        |> JE.object






getTagsResponseEncoder : GetTagsResponse -> JE.Value
getTagsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        |> JE.object






getTriggerRequestEncoder : GetTriggerRequest -> JE.Value
getTriggerRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






getTriggerResponseEncoder : GetTriggerResponse -> JE.Value
getTriggerResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (triggerEncoder)
            ("Trigger", data.trigger)
        
        
        |> JE.object






getTriggersRequestEncoder : GetTriggersRequest -> JE.Value
getTriggersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DependentJobName", data.dependentJobName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






getTriggersResponseEncoder : GetTriggersResponse -> JE.Value
getTriggersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (triggerEncoder))
            ("Triggers", data.triggers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getUserDefinedFunctionRequestEncoder : GetUserDefinedFunctionRequest -> JE.Value
getUserDefinedFunctionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("FunctionName", data.functionName |> (JE.string))
        
        
        |> JE.object






getUserDefinedFunctionResponseEncoder : GetUserDefinedFunctionResponse -> JE.Value
getUserDefinedFunctionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (userDefinedFunctionEncoder)
            ("UserDefinedFunction", data.userDefinedFunction)
        
        
        |> JE.object






getUserDefinedFunctionsRequestEncoder : GetUserDefinedFunctionsRequest -> JE.Value
getUserDefinedFunctionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("Pattern", data.pattern |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






getUserDefinedFunctionsResponseEncoder : GetUserDefinedFunctionsResponse -> JE.Value
getUserDefinedFunctionsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (userDefinedFunctionEncoder))
            ("UserDefinedFunctions", data.userDefinedFunctions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getWorkflowRequestEncoder : GetWorkflowRequest -> JE.Value
getWorkflowRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IncludeGraph", data.includeGraph)
        
        
        |> JE.object






getWorkflowResponseEncoder : GetWorkflowResponse -> JE.Value
getWorkflowResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (workflowEncoder)
            ("Workflow", data.workflow)
        
        
        |> JE.object






getWorkflowRunPropertiesRequestEncoder : GetWorkflowRunPropertiesRequest -> JE.Value
getWorkflowRunPropertiesRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("RunId", data.runId |> (JE.string))
        
        
        |> JE.object






getWorkflowRunPropertiesResponseEncoder : GetWorkflowRunPropertiesResponse -> JE.Value
getWorkflowRunPropertiesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("RunProperties", data.runProperties)
        
        
        |> JE.object






getWorkflowRunRequestEncoder : GetWorkflowRunRequest -> JE.Value
getWorkflowRunRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("RunId", data.runId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IncludeGraph", data.includeGraph)
        
        
        |> JE.object






getWorkflowRunResponseEncoder : GetWorkflowRunResponse -> JE.Value
getWorkflowRunResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (workflowRunEncoder)
            ("Run", data.run)
        
        
        |> JE.object






getWorkflowRunsRequestEncoder : GetWorkflowRunsRequest -> JE.Value
getWorkflowRunsRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IncludeGraph", data.includeGraph)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






getWorkflowRunsResponseEncoder : GetWorkflowRunsResponse -> JE.Value
getWorkflowRunsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (workflowRunEncoder))
            ("Runs", data.runs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






grokClassifierEncoder : GrokClassifier -> JE.Value
grokClassifierEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("Classification", data.classification |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdated", data.lastUpdated)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Version", data.version)
        
        
        
        |> (::) ("GrokPattern", data.grokPattern |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomPatterns", data.customPatterns)
        
        
        |> JE.object






importCatalogToGlueRequestEncoder : ImportCatalogToGlueRequest -> JE.Value
importCatalogToGlueRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        |> JE.object






importCatalogToGlueResponseEncoder : ImportCatalogToGlueResponse -> JE.Value
importCatalogToGlueResponseEncoder data =
    []
        
        |> JE.object






jdbcTargetEncoder : JdbcTarget -> JE.Value
jdbcTargetEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ConnectionName", data.connectionName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Path", data.path)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Exclusions", data.exclusions)
        
        
        |> JE.object






jobEncoder : Job -> JE.Value
jobEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogUri", data.logUri)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Role", data.role)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedOn", data.createdOn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastModifiedOn", data.lastModifiedOn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionPropertyEncoder)
            ("ExecutionProperty", data.executionProperty)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobCommandEncoder)
            ("Command", data.command)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("DefaultArguments", data.defaultArguments)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (connectionsListEncoder)
            ("Connections", data.connections)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxRetries", data.maxRetries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AllocatedCapacity", data.allocatedCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Timeout", data.timeout)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("MaxCapacity", data.maxCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workerTypeToString >> JE.string)
            ("WorkerType", data.workerType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfWorkers", data.numberOfWorkers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecurityConfiguration", data.securityConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationPropertyEncoder)
            ("NotificationProperty", data.notificationProperty)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GlueVersion", data.glueVersion)
        
        
        |> JE.object






jobBookmarkEntryEncoder : JobBookmarkEntry -> JE.Value
jobBookmarkEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobName", data.jobName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Run", data.run)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Attempt", data.attempt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PreviousRunId", data.previousRunId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RunId", data.runId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobBookmark", data.jobBookmark)
        
        
        |> JE.object






jobBookmarksEncryptionEncoder : JobBookmarksEncryption -> JE.Value
jobBookmarksEncryptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (jobBookmarksEncryptionModeToString >> JE.string)
            ("JobBookmarksEncryptionMode", data.jobBookmarksEncryptionMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KmsKeyArn", data.kmsKeyArn)
        
        
        |> JE.object










jobCommandEncoder : JobCommand -> JE.Value
jobCommandEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ScriptLocation", data.scriptLocation)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PythonVersion", data.pythonVersion)
        
        
        |> JE.object






jobNodeDetailsEncoder : JobNodeDetails -> JE.Value
jobNodeDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (jobRunEncoder))
            ("JobRuns", data.jobRuns)
        
        
        |> JE.object






jobRunEncoder : JobRun -> JE.Value
jobRunEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Attempt", data.attempt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PreviousRunId", data.previousRunId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TriggerName", data.triggerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobName", data.jobName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartedOn", data.startedOn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastModifiedOn", data.lastModifiedOn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CompletedOn", data.completedOn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobRunStateToString >> JE.string)
            ("JobRunState", data.jobRunState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Arguments", data.arguments)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (predecessorEncoder))
            ("PredecessorRuns", data.predecessorRuns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AllocatedCapacity", data.allocatedCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ExecutionTime", data.executionTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Timeout", data.timeout)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("MaxCapacity", data.maxCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workerTypeToString >> JE.string)
            ("WorkerType", data.workerType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfWorkers", data.numberOfWorkers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecurityConfiguration", data.securityConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogGroupName", data.logGroupName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationPropertyEncoder)
            ("NotificationProperty", data.notificationProperty)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GlueVersion", data.glueVersion)
        
        
        |> JE.object










jobUpdateEncoder : JobUpdate -> JE.Value
jobUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogUri", data.logUri)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Role", data.role)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionPropertyEncoder)
            ("ExecutionProperty", data.executionProperty)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobCommandEncoder)
            ("Command", data.command)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("DefaultArguments", data.defaultArguments)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (connectionsListEncoder)
            ("Connections", data.connections)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxRetries", data.maxRetries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AllocatedCapacity", data.allocatedCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Timeout", data.timeout)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("MaxCapacity", data.maxCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workerTypeToString >> JE.string)
            ("WorkerType", data.workerType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfWorkers", data.numberOfWorkers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecurityConfiguration", data.securityConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationPropertyEncoder)
            ("NotificationProperty", data.notificationProperty)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GlueVersion", data.glueVersion)
        
        
        |> JE.object






jsonClassifierEncoder : JsonClassifier -> JE.Value
jsonClassifierEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdated", data.lastUpdated)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Version", data.version)
        
        
        
        |> (::) ("JsonPath", data.jsonPath |> (JE.string))
        
        
        |> JE.object










lastCrawlInfoEncoder : LastCrawlInfo -> JE.Value
lastCrawlInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (lastCrawlStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogGroup", data.logGroup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogStream", data.logStream)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MessagePrefix", data.messagePrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartTime", data.startTime)
        
        
        |> JE.object










listCrawlersRequestEncoder : ListCrawlersRequest -> JE.Value
listCrawlersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        |> JE.object






listCrawlersResponseEncoder : ListCrawlersResponse -> JE.Value
listCrawlersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("CrawlerNames", data.crawlerNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listDevEndpointsRequestEncoder : ListDevEndpointsRequest -> JE.Value
listDevEndpointsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        |> JE.object






listDevEndpointsResponseEncoder : ListDevEndpointsResponse -> JE.Value
listDevEndpointsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("DevEndpointNames", data.devEndpointNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listJobsRequestEncoder : ListJobsRequest -> JE.Value
listJobsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        |> JE.object






listJobsResponseEncoder : ListJobsResponse -> JE.Value
listJobsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("JobNames", data.jobNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listTriggersRequestEncoder : ListTriggersRequest -> JE.Value
listTriggersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DependentJobName", data.dependentJobName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        |> JE.object






listTriggersResponseEncoder : ListTriggersResponse -> JE.Value
listTriggersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("TriggerNames", data.triggerNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listWorkflowsRequestEncoder : ListWorkflowsRequest -> JE.Value
listWorkflowsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






listWorkflowsResponseEncoder : ListWorkflowsResponse -> JE.Value
listWorkflowsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Workflows", data.workflows)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






locationEncoder : Location -> JE.Value
locationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (codeGenNodeArgEncoder))
            ("Jdbc", data.jdbc)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (codeGenNodeArgEncoder))
            ("S3", data.s3)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (codeGenNodeArgEncoder))
            ("DynamoDB", data.dynamoDB)
        
        
        |> JE.object














mappingEntryEncoder : MappingEntry -> JE.Value
mappingEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SourceTable", data.sourceTable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SourcePath", data.sourcePath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SourceType", data.sourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TargetTable", data.targetTable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TargetPath", data.targetPath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TargetType", data.targetType)
        
        
        |> JE.object






nodeEncoder : Node -> JE.Value
nodeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (nodeTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UniqueId", data.uniqueId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (triggerNodeDetailsEncoder)
            ("TriggerDetails", data.triggerDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobNodeDetailsEncoder)
            ("JobDetails", data.jobDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (crawlerNodeDetailsEncoder)
            ("CrawlerDetails", data.crawlerDetails)
        
        
        |> JE.object










notificationPropertyEncoder : NotificationProperty -> JE.Value
notificationPropertyEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NotifyDelayAfter", data.notifyDelayAfter)
        
        
        |> JE.object






orderEncoder : Order -> JE.Value
orderEncoder data =
    []
        
        
        |> (::) ("Column", data.column |> (JE.string))
        
        
        
        |> (::) ("SortOrder", data.sortOrder |> (JE.int))
        
        
        |> JE.object






partitionEncoder : Partition -> JE.Value
partitionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Values", data.values)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DatabaseName", data.databaseName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TableName", data.tableName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastAccessTime", data.lastAccessTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (storageDescriptorEncoder)
            ("StorageDescriptor", data.storageDescriptor)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Parameters", data.parameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastAnalyzedTime", data.lastAnalyzedTime)
        
        
        |> JE.object






partitionErrorEncoder : PartitionError -> JE.Value
partitionErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("PartitionValues", data.partitionValues)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (errorDetailEncoder)
            ("ErrorDetail", data.errorDetail)
        
        
        |> JE.object






partitionInputEncoder : PartitionInput -> JE.Value
partitionInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Values", data.values)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastAccessTime", data.lastAccessTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (storageDescriptorEncoder)
            ("StorageDescriptor", data.storageDescriptor)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Parameters", data.parameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastAnalyzedTime", data.lastAnalyzedTime)
        
        
        |> JE.object






partitionValueListEncoder : PartitionValueList -> JE.Value
partitionValueListEncoder data =
    []
        
        
        |> (::) ("Values", data.values |> (JE.list (JE.string)))
        
        
        |> JE.object






physicalConnectionRequirementsEncoder : PhysicalConnectionRequirements -> JE.Value
physicalConnectionRequirementsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SubnetId", data.subnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SecurityGroupIdList", data.securityGroupIdList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AvailabilityZone", data.availabilityZone)
        
        
        |> JE.object






predecessorEncoder : Predecessor -> JE.Value
predecessorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobName", data.jobName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RunId", data.runId)
        
        
        |> JE.object






predicateEncoder : Predicate -> JE.Value
predicateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (logicalToString >> JE.string)
            ("Logical", data.logical)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (conditionEncoder))
            ("Conditions", data.conditions)
        
        
        |> JE.object










putDataCatalogEncryptionSettingsRequestEncoder : PutDataCatalogEncryptionSettingsRequest -> JE.Value
putDataCatalogEncryptionSettingsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DataCatalogEncryptionSettings", data.dataCatalogEncryptionSettings |> (dataCatalogEncryptionSettingsEncoder))
        
        
        |> JE.object






putDataCatalogEncryptionSettingsResponseEncoder : PutDataCatalogEncryptionSettingsResponse -> JE.Value
putDataCatalogEncryptionSettingsResponseEncoder data =
    []
        
        |> JE.object






putResourcePolicyRequestEncoder : PutResourcePolicyRequest -> JE.Value
putResourcePolicyRequestEncoder data =
    []
        
        
        |> (::) ("PolicyInJson", data.policyInJson |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PolicyHashCondition", data.policyHashCondition)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (existConditionToString >> JE.string)
            ("PolicyExistsCondition", data.policyExistsCondition)
        
        
        |> JE.object






putResourcePolicyResponseEncoder : PutResourcePolicyResponse -> JE.Value
putResourcePolicyResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PolicyHash", data.policyHash)
        
        
        |> JE.object






putWorkflowRunPropertiesRequestEncoder : PutWorkflowRunPropertiesRequest -> JE.Value
putWorkflowRunPropertiesRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("RunId", data.runId |> (JE.string))
        
        
        
        |> (::) ("RunProperties", data.runProperties |> (JE.dict identity (JE.string)))
        
        
        |> JE.object






putWorkflowRunPropertiesResponseEncoder : PutWorkflowRunPropertiesResponse -> JE.Value
putWorkflowRunPropertiesResponseEncoder data =
    []
        
        |> JE.object






resetJobBookmarkRequestEncoder : ResetJobBookmarkRequest -> JE.Value
resetJobBookmarkRequestEncoder data =
    []
        
        
        |> (::) ("JobName", data.jobName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RunId", data.runId)
        
        
        |> JE.object






resetJobBookmarkResponseEncoder : ResetJobBookmarkResponse -> JE.Value
resetJobBookmarkResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (jobBookmarkEntryEncoder)
            ("JobBookmarkEntry", data.jobBookmarkEntry)
        
        
        |> JE.object










resourceUriEncoder : ResourceUri -> JE.Value
resourceUriEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("ResourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Uri", data.uri)
        
        
        |> JE.object






s3EncryptionEncoder : S3Encryption -> JE.Value
s3EncryptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (s3EncryptionModeToString >> JE.string)
            ("S3EncryptionMode", data.s3EncryptionMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KmsKeyArn", data.kmsKeyArn)
        
        
        |> JE.object










s3TargetEncoder : S3Target -> JE.Value
s3TargetEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Path", data.path)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Exclusions", data.exclusions)
        
        
        |> JE.object






scheduleEncoder : Schedule -> JE.Value
scheduleEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ScheduleExpression", data.scheduleExpression)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scheduleStateToString >> JE.string)
            ("State", data.state)
        
        
        |> JE.object










schemaChangePolicyEncoder : SchemaChangePolicy -> JE.Value
schemaChangePolicyEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (updateBehaviorToString >> JE.string)
            ("UpdateBehavior", data.updateBehavior)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deleteBehaviorToString >> JE.string)
            ("DeleteBehavior", data.deleteBehavior)
        
        
        |> JE.object






securityConfigurationEncoder : SecurityConfiguration -> JE.Value
securityConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTimeStamp", data.createdTimeStamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (encryptionConfigurationEncoder)
            ("EncryptionConfiguration", data.encryptionConfiguration)
        
        
        |> JE.object






segmentEncoder : Segment -> JE.Value
segmentEncoder data =
    []
        
        
        |> (::) ("SegmentNumber", data.segmentNumber |> (JE.int))
        
        
        
        |> (::) ("TotalSegments", data.totalSegments |> (JE.int))
        
        
        |> JE.object






serDeInfoEncoder : SerDeInfo -> JE.Value
serDeInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SerializationLibrary", data.serializationLibrary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Parameters", data.parameters)
        
        
        |> JE.object






skewedInfoEncoder : SkewedInfo -> JE.Value
skewedInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SkewedColumnNames", data.skewedColumnNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SkewedColumnValues", data.skewedColumnValues)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("SkewedColumnValueLocationMaps", data.skewedColumnValueLocationMaps)
        
        
        |> JE.object






startCrawlerRequestEncoder : StartCrawlerRequest -> JE.Value
startCrawlerRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






startCrawlerResponseEncoder : StartCrawlerResponse -> JE.Value
startCrawlerResponseEncoder data =
    []
        
        |> JE.object






startCrawlerScheduleRequestEncoder : StartCrawlerScheduleRequest -> JE.Value
startCrawlerScheduleRequestEncoder data =
    []
        
        
        |> (::) ("CrawlerName", data.crawlerName |> (JE.string))
        
        
        |> JE.object






startCrawlerScheduleResponseEncoder : StartCrawlerScheduleResponse -> JE.Value
startCrawlerScheduleResponseEncoder data =
    []
        
        |> JE.object






startJobRunRequestEncoder : StartJobRunRequest -> JE.Value
startJobRunRequestEncoder data =
    []
        
        
        |> (::) ("JobName", data.jobName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobRunId", data.jobRunId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Arguments", data.arguments)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AllocatedCapacity", data.allocatedCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Timeout", data.timeout)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("MaxCapacity", data.maxCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecurityConfiguration", data.securityConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationPropertyEncoder)
            ("NotificationProperty", data.notificationProperty)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workerTypeToString >> JE.string)
            ("WorkerType", data.workerType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfWorkers", data.numberOfWorkers)
        
        
        |> JE.object






startJobRunResponseEncoder : StartJobRunResponse -> JE.Value
startJobRunResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobRunId", data.jobRunId)
        
        
        |> JE.object






startTriggerRequestEncoder : StartTriggerRequest -> JE.Value
startTriggerRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






startTriggerResponseEncoder : StartTriggerResponse -> JE.Value
startTriggerResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






startWorkflowRunRequestEncoder : StartWorkflowRunRequest -> JE.Value
startWorkflowRunRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






startWorkflowRunResponseEncoder : StartWorkflowRunResponse -> JE.Value
startWorkflowRunResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RunId", data.runId)
        
        
        |> JE.object






stopCrawlerRequestEncoder : StopCrawlerRequest -> JE.Value
stopCrawlerRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






stopCrawlerResponseEncoder : StopCrawlerResponse -> JE.Value
stopCrawlerResponseEncoder data =
    []
        
        |> JE.object






stopCrawlerScheduleRequestEncoder : StopCrawlerScheduleRequest -> JE.Value
stopCrawlerScheduleRequestEncoder data =
    []
        
        
        |> (::) ("CrawlerName", data.crawlerName |> (JE.string))
        
        
        |> JE.object






stopCrawlerScheduleResponseEncoder : StopCrawlerScheduleResponse -> JE.Value
stopCrawlerScheduleResponseEncoder data =
    []
        
        |> JE.object






stopTriggerRequestEncoder : StopTriggerRequest -> JE.Value
stopTriggerRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






stopTriggerResponseEncoder : StopTriggerResponse -> JE.Value
stopTriggerResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






storageDescriptorEncoder : StorageDescriptor -> JE.Value
storageDescriptorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (columnEncoder))
            ("Columns", data.columns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InputFormat", data.inputFormat)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("OutputFormat", data.outputFormat)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Compressed", data.compressed)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfBuckets", data.numberOfBuckets)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (serDeInfoEncoder)
            ("SerdeInfo", data.serdeInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("BucketColumns", data.bucketColumns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (orderEncoder))
            ("SortColumns", data.sortColumns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Parameters", data.parameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (skewedInfoEncoder)
            ("SkewedInfo", data.skewedInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("StoredAsSubDirectories", data.storedAsSubDirectories)
        
        
        |> JE.object






tableEncoder : Table -> JE.Value
tableEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DatabaseName", data.databaseName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Owner", data.owner)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreateTime", data.createTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("UpdateTime", data.updateTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastAccessTime", data.lastAccessTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastAnalyzedTime", data.lastAnalyzedTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Retention", data.retention)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (storageDescriptorEncoder)
            ("StorageDescriptor", data.storageDescriptor)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (columnEncoder))
            ("PartitionKeys", data.partitionKeys)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ViewOriginalText", data.viewOriginalText)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ViewExpandedText", data.viewExpandedText)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TableType", data.tableType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Parameters", data.parameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedBy", data.createdBy)
        
        
        |> JE.object






tableErrorEncoder : TableError -> JE.Value
tableErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TableName", data.tableName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (errorDetailEncoder)
            ("ErrorDetail", data.errorDetail)
        
        
        |> JE.object






tableInputEncoder : TableInput -> JE.Value
tableInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Owner", data.owner)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastAccessTime", data.lastAccessTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastAnalyzedTime", data.lastAnalyzedTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Retention", data.retention)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (storageDescriptorEncoder)
            ("StorageDescriptor", data.storageDescriptor)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (columnEncoder))
            ("PartitionKeys", data.partitionKeys)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ViewOriginalText", data.viewOriginalText)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ViewExpandedText", data.viewExpandedText)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TableType", data.tableType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Parameters", data.parameters)
        
        
        |> JE.object






tableVersionEncoder : TableVersion -> JE.Value
tableVersionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (tableEncoder)
            ("Table", data.table)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VersionId", data.versionId)
        
        
        |> JE.object






tableVersionErrorEncoder : TableVersionError -> JE.Value
tableVersionErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TableName", data.tableName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VersionId", data.versionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (errorDetailEncoder)
            ("ErrorDetail", data.errorDetail)
        
        
        |> JE.object






tagResourceRequestEncoder : TagResourceRequest -> JE.Value
tagResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("TagsToAdd", data.tagsToAdd |> (JE.dict identity (JE.string)))
        
        
        |> JE.object






tagResourceResponseEncoder : TagResourceResponse -> JE.Value
tagResourceResponseEncoder data =
    []
        
        |> JE.object






triggerEncoder : Trigger -> JE.Value
triggerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkflowName", data.workflowName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (triggerTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (triggerStateToString >> JE.string)
            ("State", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Schedule", data.schedule)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (actionEncoder))
            ("Actions", data.actions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (predicateEncoder)
            ("Predicate", data.predicate)
        
        
        |> JE.object






triggerNodeDetailsEncoder : TriggerNodeDetails -> JE.Value
triggerNodeDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (triggerEncoder)
            ("Trigger", data.trigger)
        
        
        |> JE.object














triggerUpdateEncoder : TriggerUpdate -> JE.Value
triggerUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Schedule", data.schedule)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (actionEncoder))
            ("Actions", data.actions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (predicateEncoder)
            ("Predicate", data.predicate)
        
        
        |> JE.object






untagResourceRequestEncoder : UntagResourceRequest -> JE.Value
untagResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("TagsToRemove", data.tagsToRemove |> (JE.list (JE.string)))
        
        
        |> JE.object






untagResourceResponseEncoder : UntagResourceResponse -> JE.Value
untagResourceResponseEncoder data =
    []
        
        |> JE.object










updateClassifierRequestEncoder : UpdateClassifierRequest -> JE.Value
updateClassifierRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (updateGrokClassifierRequestEncoder)
            ("GrokClassifier", data.grokClassifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (updateXMLClassifierRequestEncoder)
            ("XMLClassifier", data.xMLClassifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (updateJsonClassifierRequestEncoder)
            ("JsonClassifier", data.jsonClassifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (updateCsvClassifierRequestEncoder)
            ("CsvClassifier", data.csvClassifier)
        
        
        |> JE.object






updateClassifierResponseEncoder : UpdateClassifierResponse -> JE.Value
updateClassifierResponseEncoder data =
    []
        
        |> JE.object






updateConnectionRequestEncoder : UpdateConnectionRequest -> JE.Value
updateConnectionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("ConnectionInput", data.connectionInput |> (connectionInputEncoder))
        
        
        |> JE.object






updateConnectionResponseEncoder : UpdateConnectionResponse -> JE.Value
updateConnectionResponseEncoder data =
    []
        
        |> JE.object






updateCrawlerRequestEncoder : UpdateCrawlerRequest -> JE.Value
updateCrawlerRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Role", data.role)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DatabaseName", data.databaseName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (crawlerTargetsEncoder)
            ("Targets", data.targets)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Schedule", data.schedule)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Classifiers", data.classifiers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TablePrefix", data.tablePrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (schemaChangePolicyEncoder)
            ("SchemaChangePolicy", data.schemaChangePolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Configuration", data.configuration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CrawlerSecurityConfiguration", data.crawlerSecurityConfiguration)
        
        
        |> JE.object






updateCrawlerResponseEncoder : UpdateCrawlerResponse -> JE.Value
updateCrawlerResponseEncoder data =
    []
        
        |> JE.object






updateCrawlerScheduleRequestEncoder : UpdateCrawlerScheduleRequest -> JE.Value
updateCrawlerScheduleRequestEncoder data =
    []
        
        
        |> (::) ("CrawlerName", data.crawlerName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Schedule", data.schedule)
        
        
        |> JE.object






updateCrawlerScheduleResponseEncoder : UpdateCrawlerScheduleResponse -> JE.Value
updateCrawlerScheduleResponseEncoder data =
    []
        
        |> JE.object






updateCsvClassifierRequestEncoder : UpdateCsvClassifierRequest -> JE.Value
updateCsvClassifierRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Delimiter", data.delimiter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("QuoteSymbol", data.quoteSymbol)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (csvHeaderOptionToString >> JE.string)
            ("ContainsHeader", data.containsHeader)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Header", data.header)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("DisableValueTrimming", data.disableValueTrimming)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AllowSingleColumn", data.allowSingleColumn)
        
        
        |> JE.object






updateDatabaseRequestEncoder : UpdateDatabaseRequest -> JE.Value
updateDatabaseRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("DatabaseInput", data.databaseInput |> (databaseInputEncoder))
        
        
        |> JE.object






updateDatabaseResponseEncoder : UpdateDatabaseResponse -> JE.Value
updateDatabaseResponseEncoder data =
    []
        
        |> JE.object






updateDevEndpointRequestEncoder : UpdateDevEndpointRequest -> JE.Value
updateDevEndpointRequestEncoder data =
    []
        
        
        |> (::) ("EndpointName", data.endpointName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PublicKey", data.publicKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("AddPublicKeys", data.addPublicKeys)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("DeletePublicKeys", data.deletePublicKeys)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (devEndpointCustomLibrariesEncoder)
            ("CustomLibraries", data.customLibraries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UpdateEtlLibraries", data.updateEtlLibraries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("DeleteArguments", data.deleteArguments)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("AddArguments", data.addArguments)
        
        
        |> JE.object






updateDevEndpointResponseEncoder : UpdateDevEndpointResponse -> JE.Value
updateDevEndpointResponseEncoder data =
    []
        
        |> JE.object






updateGrokClassifierRequestEncoder : UpdateGrokClassifierRequest -> JE.Value
updateGrokClassifierRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Classification", data.classification)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GrokPattern", data.grokPattern)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomPatterns", data.customPatterns)
        
        
        |> JE.object






updateJobRequestEncoder : UpdateJobRequest -> JE.Value
updateJobRequestEncoder data =
    []
        
        
        |> (::) ("JobName", data.jobName |> (JE.string))
        
        
        
        |> (::) ("JobUpdate", data.jobUpdate |> (jobUpdateEncoder))
        
        
        |> JE.object






updateJobResponseEncoder : UpdateJobResponse -> JE.Value
updateJobResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobName", data.jobName)
        
        
        |> JE.object






updateJsonClassifierRequestEncoder : UpdateJsonClassifierRequest -> JE.Value
updateJsonClassifierRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JsonPath", data.jsonPath)
        
        
        |> JE.object






updatePartitionRequestEncoder : UpdatePartitionRequest -> JE.Value
updatePartitionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        
        |> (::) ("PartitionValueList", data.partitionValueList |> (JE.list (JE.string)))
        
        
        
        |> (::) ("PartitionInput", data.partitionInput |> (partitionInputEncoder))
        
        
        |> JE.object






updatePartitionResponseEncoder : UpdatePartitionResponse -> JE.Value
updatePartitionResponseEncoder data =
    []
        
        |> JE.object






updateTableRequestEncoder : UpdateTableRequest -> JE.Value
updateTableRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("TableInput", data.tableInput |> (tableInputEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("SkipArchive", data.skipArchive)
        
        
        |> JE.object






updateTableResponseEncoder : UpdateTableResponse -> JE.Value
updateTableResponseEncoder data =
    []
        
        |> JE.object






updateTriggerRequestEncoder : UpdateTriggerRequest -> JE.Value
updateTriggerRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("TriggerUpdate", data.triggerUpdate |> (triggerUpdateEncoder))
        
        
        |> JE.object






updateTriggerResponseEncoder : UpdateTriggerResponse -> JE.Value
updateTriggerResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (triggerEncoder)
            ("Trigger", data.trigger)
        
        
        |> JE.object






updateUserDefinedFunctionRequestEncoder : UpdateUserDefinedFunctionRequest -> JE.Value
updateUserDefinedFunctionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CatalogId", data.catalogId)
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("FunctionName", data.functionName |> (JE.string))
        
        
        
        |> (::) ("FunctionInput", data.functionInput |> (userDefinedFunctionInputEncoder))
        
        
        |> JE.object






updateUserDefinedFunctionResponseEncoder : UpdateUserDefinedFunctionResponse -> JE.Value
updateUserDefinedFunctionResponseEncoder data =
    []
        
        |> JE.object






updateWorkflowRequestEncoder : UpdateWorkflowRequest -> JE.Value
updateWorkflowRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("DefaultRunProperties", data.defaultRunProperties)
        
        
        |> JE.object






updateWorkflowResponseEncoder : UpdateWorkflowResponse -> JE.Value
updateWorkflowResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






updateXMLClassifierRequestEncoder : UpdateXMLClassifierRequest -> JE.Value
updateXMLClassifierRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Classification", data.classification)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RowTag", data.rowTag)
        
        
        |> JE.object






userDefinedFunctionEncoder : UserDefinedFunction -> JE.Value
userDefinedFunctionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FunctionName", data.functionName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClassName", data.className)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("OwnerName", data.ownerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (principalTypeToString >> JE.string)
            ("OwnerType", data.ownerType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreateTime", data.createTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourceUriEncoder))
            ("ResourceUris", data.resourceUris)
        
        
        |> JE.object






userDefinedFunctionInputEncoder : UserDefinedFunctionInput -> JE.Value
userDefinedFunctionInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FunctionName", data.functionName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClassName", data.className)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("OwnerName", data.ownerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (principalTypeToString >> JE.string)
            ("OwnerType", data.ownerType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourceUriEncoder))
            ("ResourceUris", data.resourceUris)
        
        
        |> JE.object










workflowEncoder : Workflow -> JE.Value
workflowEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("DefaultRunProperties", data.defaultRunProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedOn", data.createdOn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastModifiedOn", data.lastModifiedOn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workflowRunEncoder)
            ("LastRun", data.lastRun)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workflowGraphEncoder)
            ("Graph", data.graph)
        
        
        |> JE.object






workflowGraphEncoder : WorkflowGraph -> JE.Value
workflowGraphEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (nodeEncoder))
            ("Nodes", data.nodes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (edgeEncoder))
            ("Edges", data.edges)
        
        
        |> JE.object






workflowRunEncoder : WorkflowRun -> JE.Value
workflowRunEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkflowRunId", data.workflowRunId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("WorkflowRunProperties", data.workflowRunProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartedOn", data.startedOn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CompletedOn", data.completedOn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workflowRunStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workflowRunStatisticsEncoder)
            ("Statistics", data.statistics)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workflowGraphEncoder)
            ("Graph", data.graph)
        
        
        |> JE.object






workflowRunStatisticsEncoder : WorkflowRunStatistics -> JE.Value
workflowRunStatisticsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TotalActions", data.totalActions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TimeoutActions", data.timeoutActions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("FailedActions", data.failedActions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StoppedActions", data.stoppedActions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("SucceededActions", data.succeededActions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RunningActions", data.runningActions)
        
        
        |> JE.object










xMLClassifierEncoder : XMLClassifier -> JE.Value
xMLClassifierEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("Classification", data.classification |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdated", data.lastUpdated)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RowTag", data.rowTag)
        
        
        |> JE.object





