module AWS.ApplicationDiscoveryService
    exposing
        ( service
        , associateConfigurationItemsToApplication
        , batchDeleteImportData
        , createApplication
        , CreateApplicationOptions
        , createTags
        , deleteApplications
        , deleteTags
        , DeleteTagsOptions
        , describeAgents
        , DescribeAgentsOptions
        , describeConfigurations
        , describeContinuousExports
        , DescribeContinuousExportsOptions
        , describeExportConfigurations
        , DescribeExportConfigurationsOptions
        , describeExportTasks
        , DescribeExportTasksOptions
        , describeImportTasks
        , DescribeImportTasksOptions
        , describeTags
        , DescribeTagsOptions
        , disassociateConfigurationItemsFromApplication
        , exportConfigurations
        , getDiscoverySummary
        , listConfigurations
        , ListConfigurationsOptions
        , listServerNeighbors
        , ListServerNeighborsOptions
        , startContinuousExport
        , startDataCollectionByAgentIds
        , startExportTask
        , StartExportTaskOptions
        , startImportTask
        , StartImportTaskOptions
        , stopContinuousExport
        , stopDataCollectionByAgentIds
        , updateApplication
        , UpdateApplicationOptions
        , AgentConfigurationStatus
        , AgentInfo
        , AgentNetworkInfo
        , AgentStatus(..)
        , AssociateConfigurationItemsToApplicationResponse
        , BatchDeleteImportDataError
        , BatchDeleteImportDataErrorCode(..)
        , BatchDeleteImportDataResponse
        , ConfigurationItemType(..)
        , ConfigurationTag
        , ContinuousExportDescription
        , ContinuousExportStatus(..)
        , CreateApplicationResponse
        , CreateTagsResponse
        , CustomerAgentInfo
        , CustomerConnectorInfo
        , DataSource(..)
        , DeleteApplicationsResponse
        , DeleteTagsResponse
        , DescribeAgentsResponse
        , DescribeConfigurationsResponse
        , DescribeContinuousExportsResponse
        , DescribeExportConfigurationsResponse
        , DescribeExportTasksResponse
        , DescribeImportTasksResponse
        , DescribeTagsResponse
        , DisassociateConfigurationItemsFromApplicationResponse
        , ExportConfigurationsResponse
        , ExportDataFormat(..)
        , ExportFilter
        , ExportInfo
        , ExportStatus(..)
        , Filter
        , GetDiscoverySummaryResponse
        , ImportStatus(..)
        , ImportTask
        , ImportTaskFilter
        , ImportTaskFilterName(..)
        , ListConfigurationsResponse
        , ListServerNeighborsResponse
        , NeighborConnectionDetail
        , OrderByElement
        , StartContinuousExportResponse
        , StartDataCollectionByAgentIdsResponse
        , StartExportTaskResponse
        , StartImportTaskResponse
        , StopContinuousExportResponse
        , StopDataCollectionByAgentIdsResponse
        , Tag
        , TagFilter
        , UpdateApplicationResponse
        , OrderString(..)
        )

{-| <fullname>AWS Application Discovery Service</fullname> <p>AWS Application Discovery Service helps you plan application migration projects by automatically identifying servers, virtual machines (VMs), software, and software dependencies running in your on-premises data centers. Application Discovery Service also collects application performance data, which can help you assess the outcome of your migration. The data collected by Application Discovery Service is securely retained in an AWS-hosted and managed database in the cloud. You can export the data as a CSV or XML file into your preferred visualization tool or cloud-migration solution to plan your migration. For more information, see <a href="http://aws.amazon.com/application-discovery/faqs/">AWS Application Discovery Service FAQ</a>.</p> <p>Application Discovery Service offers two modes of operation:</p> <ul> <li> <p> <b>Agentless discovery</b> mode is recommended for environments that use VMware vCenter Server. This mode doesn't require you to install an agent on each host. Agentless discovery gathers server information regardless of the operating systems, which minimizes the time required for initial on-premises infrastructure assessment. Agentless discovery doesn't collect information about software and software dependencies. It also doesn't work in non-VMware environments. </p> </li> <li> <p> <b>Agent-based discovery</b> mode collects a richer set of data than agentless discovery by using the AWS Application Discovery Agent, which you install on one or more hosts in your data center. The agent captures infrastructure and application information, including an inventory of installed software applications, system and process performance, resource utilization, and network dependencies between workloads. The information collected by agents is secured at rest and in transit to the Application Discovery Service database in the cloud. </p> </li> </ul> <p>We recommend that you use agent-based discovery for non-VMware environments and to collect information about software and software dependencies. You can also run agent-based and agentless discovery simultaneously. Use agentless discovery to quickly complete the initial infrastructure assessment and then install agents on select hosts.</p> <p>Application Discovery Service integrates with application discovery solutions from AWS Partner Network (APN) partners. Third-party application discovery tools can query Application Discovery Service and write to the Application Discovery Service database using a public API. You can then import the data into either a visualization tool or cloud-migration solution.</p> <important> <p>Application Discovery Service doesn't gather sensitive information. All data is handled according to the <a href="http://aws.amazon.com/privacy/">AWS Privacy Policy</a>. You can operate Application Discovery Service offline to inspect collected data before it is shared with the service.</p> </important> <p>This API reference provides descriptions, syntax, and usage examples for each of the actions and data types for Application Discovery Service. The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the AWS SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see <a href="http://aws.amazon.com/tools/#SDKs">AWS SDKs</a>.</p> <p>This guide is intended for use with the <a href="http://docs.aws.amazon.com/application-discovery/latest/userguide/"> <i>AWS Application Discovery Service User Guide</i> </a>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [associateConfigurationItemsToApplication](#associateConfigurationItemsToApplication)
* [batchDeleteImportData](#batchDeleteImportData)
* [createApplication](#createApplication)
* [CreateApplicationOptions](#CreateApplicationOptions)
* [createTags](#createTags)
* [deleteApplications](#deleteApplications)
* [deleteTags](#deleteTags)
* [DeleteTagsOptions](#DeleteTagsOptions)
* [describeAgents](#describeAgents)
* [DescribeAgentsOptions](#DescribeAgentsOptions)
* [describeConfigurations](#describeConfigurations)
* [describeContinuousExports](#describeContinuousExports)
* [DescribeContinuousExportsOptions](#DescribeContinuousExportsOptions)
* [describeExportConfigurations](#describeExportConfigurations)
* [DescribeExportConfigurationsOptions](#DescribeExportConfigurationsOptions)
* [describeExportTasks](#describeExportTasks)
* [DescribeExportTasksOptions](#DescribeExportTasksOptions)
* [describeImportTasks](#describeImportTasks)
* [DescribeImportTasksOptions](#DescribeImportTasksOptions)
* [describeTags](#describeTags)
* [DescribeTagsOptions](#DescribeTagsOptions)
* [disassociateConfigurationItemsFromApplication](#disassociateConfigurationItemsFromApplication)
* [exportConfigurations](#exportConfigurations)
* [getDiscoverySummary](#getDiscoverySummary)
* [listConfigurations](#listConfigurations)
* [ListConfigurationsOptions](#ListConfigurationsOptions)
* [listServerNeighbors](#listServerNeighbors)
* [ListServerNeighborsOptions](#ListServerNeighborsOptions)
* [startContinuousExport](#startContinuousExport)
* [startDataCollectionByAgentIds](#startDataCollectionByAgentIds)
* [startExportTask](#startExportTask)
* [StartExportTaskOptions](#StartExportTaskOptions)
* [startImportTask](#startImportTask)
* [StartImportTaskOptions](#StartImportTaskOptions)
* [stopContinuousExport](#stopContinuousExport)
* [stopDataCollectionByAgentIds](#stopDataCollectionByAgentIds)
* [updateApplication](#updateApplication)
* [UpdateApplicationOptions](#UpdateApplicationOptions)


@docs associateConfigurationItemsToApplication,batchDeleteImportData,createApplication,CreateApplicationOptions,createTags,deleteApplications,deleteTags,DeleteTagsOptions,describeAgents,DescribeAgentsOptions,describeConfigurations,describeContinuousExports,DescribeContinuousExportsOptions,describeExportConfigurations,DescribeExportConfigurationsOptions,describeExportTasks,DescribeExportTasksOptions,describeImportTasks,DescribeImportTasksOptions,describeTags,DescribeTagsOptions,disassociateConfigurationItemsFromApplication,exportConfigurations,getDiscoverySummary,listConfigurations,ListConfigurationsOptions,listServerNeighbors,ListServerNeighborsOptions,startContinuousExport,startDataCollectionByAgentIds,startExportTask,StartExportTaskOptions,startImportTask,StartImportTaskOptions,stopContinuousExport,stopDataCollectionByAgentIds,updateApplication,UpdateApplicationOptions

## Responses

* [AssociateConfigurationItemsToApplicationResponse](#AssociateConfigurationItemsToApplicationResponse)
* [BatchDeleteImportDataResponse](#BatchDeleteImportDataResponse)
* [CreateApplicationResponse](#CreateApplicationResponse)
* [CreateTagsResponse](#CreateTagsResponse)
* [DeleteApplicationsResponse](#DeleteApplicationsResponse)
* [DeleteTagsResponse](#DeleteTagsResponse)
* [DescribeAgentsResponse](#DescribeAgentsResponse)
* [DescribeConfigurationsResponse](#DescribeConfigurationsResponse)
* [DescribeContinuousExportsResponse](#DescribeContinuousExportsResponse)
* [DescribeExportConfigurationsResponse](#DescribeExportConfigurationsResponse)
* [DescribeExportTasksResponse](#DescribeExportTasksResponse)
* [DescribeImportTasksResponse](#DescribeImportTasksResponse)
* [DescribeTagsResponse](#DescribeTagsResponse)
* [DisassociateConfigurationItemsFromApplicationResponse](#DisassociateConfigurationItemsFromApplicationResponse)
* [ExportConfigurationsResponse](#ExportConfigurationsResponse)
* [GetDiscoverySummaryResponse](#GetDiscoverySummaryResponse)
* [ListConfigurationsResponse](#ListConfigurationsResponse)
* [ListServerNeighborsResponse](#ListServerNeighborsResponse)
* [StartContinuousExportResponse](#StartContinuousExportResponse)
* [StartDataCollectionByAgentIdsResponse](#StartDataCollectionByAgentIdsResponse)
* [StartExportTaskResponse](#StartExportTaskResponse)
* [StartImportTaskResponse](#StartImportTaskResponse)
* [StopContinuousExportResponse](#StopContinuousExportResponse)
* [StopDataCollectionByAgentIdsResponse](#StopDataCollectionByAgentIdsResponse)
* [UpdateApplicationResponse](#UpdateApplicationResponse)


@docs AssociateConfigurationItemsToApplicationResponse,BatchDeleteImportDataResponse,CreateApplicationResponse,CreateTagsResponse,DeleteApplicationsResponse,DeleteTagsResponse,DescribeAgentsResponse,DescribeConfigurationsResponse,DescribeContinuousExportsResponse,DescribeExportConfigurationsResponse,DescribeExportTasksResponse,DescribeImportTasksResponse,DescribeTagsResponse,DisassociateConfigurationItemsFromApplicationResponse,ExportConfigurationsResponse,GetDiscoverySummaryResponse,ListConfigurationsResponse,ListServerNeighborsResponse,StartContinuousExportResponse,StartDataCollectionByAgentIdsResponse,StartExportTaskResponse,StartImportTaskResponse,StopContinuousExportResponse,StopDataCollectionByAgentIdsResponse,UpdateApplicationResponse

## Records

* [AgentConfigurationStatus](#AgentConfigurationStatus)
* [AgentInfo](#AgentInfo)
* [AgentNetworkInfo](#AgentNetworkInfo)
* [BatchDeleteImportDataError](#BatchDeleteImportDataError)
* [ConfigurationTag](#ConfigurationTag)
* [ContinuousExportDescription](#ContinuousExportDescription)
* [CustomerAgentInfo](#CustomerAgentInfo)
* [CustomerConnectorInfo](#CustomerConnectorInfo)
* [ExportFilter](#ExportFilter)
* [ExportInfo](#ExportInfo)
* [Filter](#Filter)
* [ImportTask](#ImportTask)
* [ImportTaskFilter](#ImportTaskFilter)
* [NeighborConnectionDetail](#NeighborConnectionDetail)
* [OrderByElement](#OrderByElement)
* [Tag](#Tag)
* [TagFilter](#TagFilter)


@docs AgentConfigurationStatus,AgentInfo,AgentNetworkInfo,BatchDeleteImportDataError,ConfigurationTag,ContinuousExportDescription,CustomerAgentInfo,CustomerConnectorInfo,ExportFilter,ExportInfo,Filter,ImportTask,ImportTaskFilter,NeighborConnectionDetail,OrderByElement,Tag,TagFilter

## Unions

* [AgentStatus](#AgentStatus)
* [BatchDeleteImportDataErrorCode](#BatchDeleteImportDataErrorCode)
* [ConfigurationItemType](#ConfigurationItemType)
* [ContinuousExportStatus](#ContinuousExportStatus)
* [DataSource](#DataSource)
* [ExportDataFormat](#ExportDataFormat)
* [ExportStatus](#ExportStatus)
* [ImportStatus](#ImportStatus)
* [ImportTaskFilterName](#ImportTaskFilterName)
* [OrderString](#OrderString)


@docs AgentStatus,BatchDeleteImportDataErrorCode,ConfigurationItemType,ContinuousExportStatus,DataSource,ExportDataFormat,ExportStatus,ImportStatus,ImportTaskFilterName,OrderString

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
        "discovery"
        "2015-11-01"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWSPoseidonService_V2015_11_01")



-- OPERATIONS

{-| <p>Associates one or more configuration items with an application.</p>

__Required Parameters__

* `applicationConfigurationId` __:__ `String`
* `configurationIds` __:__ `(List String)`


-}

associateConfigurationItemsToApplication :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateConfigurationItemsToApplicationResponse)

associateConfigurationItemsToApplication applicationConfigurationId configurationIds =
    
    let
        requestInput = AssociateConfigurationItemsToApplicationRequest
            
            applicationConfigurationId
            
            configurationIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateConfigurationItemsToApplicationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateConfigurationItemsToApplication"
                
                (AWS.Core.Decode.ResultDecoder "AssociateConfigurationItemsToApplicationResponse" associateConfigurationItemsToApplicationResponseDecoder)
                
            )





{-| <p>Deletes one or more import tasks, each identified by their import ID. Each import task has a number of records that can identify servers or applications. </p> <p>AWS Application Discovery Service has built-in matching logic that will identify when discovered servers match existing entries that you've previously discovered, the information for the already-existing discovered server is updated. When you delete an import task that contains records that were used to match, the information in those matched records that comes from the deleted records will also be deleted.</p>

__Required Parameters__

* `importTaskIds` __:__ `(List String)`


-}

batchDeleteImportData :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchDeleteImportDataResponse)

batchDeleteImportData importTaskIds =
    
    let
        requestInput = BatchDeleteImportDataRequest
            
            importTaskIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchDeleteImportDataRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchDeleteImportData"
                
                (AWS.Core.Decode.ResultDecoder "BatchDeleteImportDataResponse" batchDeleteImportDataResponseDecoder)
                
            )





{-| <p>Creates an application with the given name and description.</p>

__Required Parameters__

* `name` __:__ `String`


-}

createApplication :
  
    String ->
  
  
    ( CreateApplicationOptions -> CreateApplicationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateApplicationResponse)

createApplication name setOptions =
    
    let
        requestInput = CreateApplicationRequest
            
            name
            
            options.description
            
        
        options = setOptions (CreateApplicationOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createApplicationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateApplication"
                
                (AWS.Core.Decode.ResultDecoder "CreateApplicationResponse" createApplicationResponseDecoder)
                
            )



{-| Options for a createApplication request
-}
type alias CreateApplicationOptions =
    {
    description : Maybe String
    }



{-| <p>Creates one or more tags for configuration items. Tags are metadata that help you categorize IT assets. This API accepts a list of multiple configuration items.</p>

__Required Parameters__

* `configurationIds` __:__ `(List String)`
* `tags` __:__ `(List Tag)`


-}

createTags :
  
    (List String) ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTagsResponse)

createTags configurationIds tags =
    
    let
        requestInput = CreateTagsRequest
            
            configurationIds
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createTagsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateTags"
                
                (AWS.Core.Decode.ResultDecoder "CreateTagsResponse" createTagsResponseDecoder)
                
            )





{-| <p>Deletes a list of applications and their associations with configuration items.</p>

__Required Parameters__

* `configurationIds` __:__ `(List String)`


-}

deleteApplications :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteApplicationsResponse)

deleteApplications configurationIds =
    
    let
        requestInput = DeleteApplicationsRequest
            
            configurationIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteApplicationsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteApplications"
                
                (AWS.Core.Decode.ResultDecoder "DeleteApplicationsResponse" deleteApplicationsResponseDecoder)
                
            )





{-| <p>Deletes the association between configuration items and one or more tags. This API accepts a list of multiple configuration items.</p>

__Required Parameters__

* `configurationIds` __:__ `(List String)`


-}

deleteTags :
  
    (List String) ->
  
  
    ( DeleteTagsOptions -> DeleteTagsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTagsResponse)

deleteTags configurationIds setOptions =
    
    let
        requestInput = DeleteTagsRequest
            
            configurationIds
            
            options.tags
            
        
        options = setOptions (DeleteTagsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteTagsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteTags"
                
                (AWS.Core.Decode.ResultDecoder "DeleteTagsResponse" deleteTagsResponseDecoder)
                
            )



{-| Options for a deleteTags request
-}
type alias DeleteTagsOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Lists agents or connectors as specified by ID or other filters. All agents/connectors associated with your user account can be listed if you call <code>DescribeAgents</code> as is without passing any parameters.</p>

__Required Parameters__



-}

describeAgents :
  
  
    ( DescribeAgentsOptions -> DescribeAgentsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAgentsResponse)

describeAgents setOptions =
    
    let
        requestInput = DescribeAgentsRequest
            
            options.agentIds
            
            options.filters
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeAgentsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeAgentsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAgents"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAgentsResponse" describeAgentsResponseDecoder)
                
            )



{-| Options for a describeAgents request
-}
type alias DescribeAgentsOptions =
    {
    agentIds : Maybe (List String),filters : Maybe (List Filter),maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves attributes for a list of configuration item IDs.</p> <note> <p>All of the supplied IDs must be for the same asset type from one of the following:</p> <ul> <li> <p>server</p> </li> <li> <p>application</p> </li> <li> <p>process</p> </li> <li> <p>connection</p> </li> </ul> <p>Output fields are specific to the asset type specified. For example, the output for a <i>server</i> configuration item includes a list of attributes about the server, such as host name, operating system, number of network cards, etc.</p> <p>For a complete list of outputs for each asset type, see <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#DescribeConfigurations">Using the DescribeConfigurations Action</a>.</p> </note>

__Required Parameters__

* `configurationIds` __:__ `(List String)`


-}

describeConfigurations :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeConfigurationsResponse)

describeConfigurations configurationIds =
    
    let
        requestInput = DescribeConfigurationsRequest
            
            configurationIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeConfigurationsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeConfigurations"
                
                (AWS.Core.Decode.ResultDecoder "DescribeConfigurationsResponse" describeConfigurationsResponseDecoder)
                
            )





{-| <p>Lists exports as specified by ID. All continuous exports associated with your user account can be listed if you call <code>DescribeContinuousExports</code> as is without passing any parameters.</p>

__Required Parameters__



-}

describeContinuousExports :
  
  
    ( DescribeContinuousExportsOptions -> DescribeContinuousExportsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeContinuousExportsResponse)

describeContinuousExports setOptions =
    
    let
        requestInput = DescribeContinuousExportsRequest
            
            options.exportIds
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeContinuousExportsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeContinuousExportsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeContinuousExports"
                
                (AWS.Core.Decode.ResultDecoder "DescribeContinuousExportsResponse" describeContinuousExportsResponseDecoder)
                
            )



{-| Options for a describeContinuousExports request
-}
type alias DescribeContinuousExportsOptions =
    {
    exportIds : Maybe (List String),maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p> <code>DescribeExportConfigurations</code> is deprecated. Use <a href="https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html">DescribeImportTasks</a>, instead.</p>

__Required Parameters__



-}

describeExportConfigurations :
  
  
    ( DescribeExportConfigurationsOptions -> DescribeExportConfigurationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeExportConfigurationsResponse)

describeExportConfigurations setOptions =
    
    let
        requestInput = DescribeExportConfigurationsRequest
            
            options.exportIds
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeExportConfigurationsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeExportConfigurationsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeExportConfigurations"
                
                (AWS.Core.Decode.ResultDecoder "DescribeExportConfigurationsResponse" describeExportConfigurationsResponseDecoder)
                
            )



{-| Options for a describeExportConfigurations request
-}
type alias DescribeExportConfigurationsOptions =
    {
    exportIds : Maybe (List String),maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieve status of one or more export tasks. You can retrieve the status of up to 100 export tasks.</p>

__Required Parameters__



-}

describeExportTasks :
  
  
    ( DescribeExportTasksOptions -> DescribeExportTasksOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeExportTasksResponse)

describeExportTasks setOptions =
    
    let
        requestInput = DescribeExportTasksRequest
            
            options.exportIds
            
            options.filters
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeExportTasksOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeExportTasksRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeExportTasks"
                
                (AWS.Core.Decode.ResultDecoder "DescribeExportTasksResponse" describeExportTasksResponseDecoder)
                
            )



{-| Options for a describeExportTasks request
-}
type alias DescribeExportTasksOptions =
    {
    exportIds : Maybe (List String),filters : Maybe (List ExportFilter),maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Returns an array of import tasks for your account, including status information, times, IDs, the Amazon S3 Object URL for the import file, and more.</p>

__Required Parameters__



-}

describeImportTasks :
  
  
    ( DescribeImportTasksOptions -> DescribeImportTasksOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeImportTasksResponse)

describeImportTasks setOptions =
    
    let
        requestInput = DescribeImportTasksRequest
            
            options.filters
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeImportTasksOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeImportTasksRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeImportTasks"
                
                (AWS.Core.Decode.ResultDecoder "DescribeImportTasksResponse" describeImportTasksResponseDecoder)
                
            )



{-| Options for a describeImportTasks request
-}
type alias DescribeImportTasksOptions =
    {
    filters : Maybe (List ImportTaskFilter),maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves a list of configuration items that have tags as specified by the key-value pairs, name and value, passed to the optional parameter <code>filters</code>.</p> <p>There are three valid tag filter names:</p> <ul> <li> <p>tagKey</p> </li> <li> <p>tagValue</p> </li> <li> <p>configurationId</p> </li> </ul> <p>Also, all configuration items associated with your user account that have tags can be listed if you call <code>DescribeTags</code> as is without passing any parameters.</p>

__Required Parameters__



-}

describeTags :
  
  
    ( DescribeTagsOptions -> DescribeTagsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTagsResponse)

describeTags setOptions =
    
    let
        requestInput = DescribeTagsRequest
            
            options.filters
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeTagsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeTagsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeTags"
                
                (AWS.Core.Decode.ResultDecoder "DescribeTagsResponse" describeTagsResponseDecoder)
                
            )



{-| Options for a describeTags request
-}
type alias DescribeTagsOptions =
    {
    filters : Maybe (List TagFilter),maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Disassociates one or more configuration items from an application.</p>

__Required Parameters__

* `applicationConfigurationId` __:__ `String`
* `configurationIds` __:__ `(List String)`


-}

disassociateConfigurationItemsFromApplication :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateConfigurationItemsFromApplicationResponse)

disassociateConfigurationItemsFromApplication applicationConfigurationId configurationIds =
    
    let
        requestInput = DisassociateConfigurationItemsFromApplicationRequest
            
            applicationConfigurationId
            
            configurationIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disassociateConfigurationItemsFromApplicationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisassociateConfigurationItemsFromApplication"
                
                (AWS.Core.Decode.ResultDecoder "DisassociateConfigurationItemsFromApplicationResponse" disassociateConfigurationItemsFromApplicationResponseDecoder)
                
            )





{-| <p>Deprecated. Use <code>StartExportTask</code> instead.</p> <p>Exports all discovered configuration data to an Amazon S3 bucket or an application that enables you to view and evaluate the data. Data includes tags and tag associations, processes, connections, servers, and system performance. This API returns an export ID that you can query using the <i>DescribeExportConfigurations</i> API. The system imposes a limit of two configuration exports in six hours.</p>

__Required Parameters__



-}

exportConfigurations :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ExportConfigurationsResponse)

exportConfigurations =
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ExportConfigurations"
                
                (AWS.Core.Decode.ResultDecoder "ExportConfigurationsResponse" exportConfigurationsResponseDecoder)
                
            )





{-| <p>Retrieves a short summary of discovered assets.</p> <p>This API operation takes no request parameters and is called as is at the command prompt as shown in the example.</p>

__Required Parameters__



-}

getDiscoverySummary :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDiscoverySummaryResponse)

getDiscoverySummary =
    
    let
        requestInput = GetDiscoverySummaryRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDiscoverySummaryRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDiscoverySummary"
                
                (AWS.Core.Decode.ResultDecoder "GetDiscoverySummaryResponse" getDiscoverySummaryResponseDecoder)
                
            )





{-| <p>Retrieves a list of configuration items as specified by the value passed to the required paramater <code>configurationType</code>. Optional filtering may be applied to refine search results.</p>

__Required Parameters__

* `configurationType` __:__ `ConfigurationItemType`


-}

listConfigurations :
  
    ConfigurationItemType ->
  
  
    ( ListConfigurationsOptions -> ListConfigurationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListConfigurationsResponse)

listConfigurations configurationType setOptions =
    
    let
        requestInput = ListConfigurationsRequest
            
            configurationType
            
            options.filters
            
            options.maxResults
            
            options.nextToken
            
            options.orderBy
            
        
        options = setOptions (ListConfigurationsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listConfigurationsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListConfigurations"
                
                (AWS.Core.Decode.ResultDecoder "ListConfigurationsResponse" listConfigurationsResponseDecoder)
                
            )



{-| Options for a listConfigurations request
-}
type alias ListConfigurationsOptions =
    {
    filters : Maybe (List Filter),maxResults : Maybe Int,nextToken : Maybe String,orderBy : Maybe (List OrderByElement)
    }



{-| <p>Retrieves a list of servers that are one network hop away from a specified server.</p>

__Required Parameters__

* `configurationId` __:__ `String`


-}

listServerNeighbors :
  
    String ->
  
  
    ( ListServerNeighborsOptions -> ListServerNeighborsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListServerNeighborsResponse)

listServerNeighbors configurationId setOptions =
    
    let
        requestInput = ListServerNeighborsRequest
            
            configurationId
            
            options.portInformationNeeded
            
            options.neighborConfigurationIds
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListServerNeighborsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listServerNeighborsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListServerNeighbors"
                
                (AWS.Core.Decode.ResultDecoder "ListServerNeighborsResponse" listServerNeighborsResponseDecoder)
                
            )



{-| Options for a listServerNeighbors request
-}
type alias ListServerNeighborsOptions =
    {
    portInformationNeeded : Maybe Bool,neighborConfigurationIds : Maybe (List String),maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Start the continuous flow of agent's discovered data into Amazon Athena.</p>

__Required Parameters__



-}

startContinuousExport :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartContinuousExportResponse)

startContinuousExport =
    
    let
        requestInput = StartContinuousExportRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startContinuousExportRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartContinuousExport"
                
                (AWS.Core.Decode.ResultDecoder "StartContinuousExportResponse" startContinuousExportResponseDecoder)
                
            )





{-| <p>Instructs the specified agents or connectors to start collecting data.</p>

__Required Parameters__

* `agentIds` __:__ `(List String)`


-}

startDataCollectionByAgentIds :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartDataCollectionByAgentIdsResponse)

startDataCollectionByAgentIds agentIds =
    
    let
        requestInput = StartDataCollectionByAgentIdsRequest
            
            agentIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startDataCollectionByAgentIdsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartDataCollectionByAgentIds"
                
                (AWS.Core.Decode.ResultDecoder "StartDataCollectionByAgentIdsResponse" startDataCollectionByAgentIdsResponseDecoder)
                
            )





{-| <p> Begins the export of discovered data to an S3 bucket.</p> <p> If you specify <code>agentIds</code> in a filter, the task exports up to 72 hours of detailed data collected by the identified Application Discovery Agent, including network, process, and performance details. A time range for exported agent data may be set by using <code>startTime</code> and <code>endTime</code>. Export of detailed agent data is limited to five concurrently running exports. </p> <p> If you do not include an <code>agentIds</code> filter, summary data is exported that includes both AWS Agentless Discovery Connector data and summary data from AWS Discovery Agents. Export of summary data is limited to two exports per day. </p>

__Required Parameters__



-}

startExportTask :
  
  
    ( StartExportTaskOptions -> StartExportTaskOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartExportTaskResponse)

startExportTask setOptions =
    
    let
        requestInput = StartExportTaskRequest
            
            options.exportDataFormat
            
            options.filters
            
            options.startTime
            
            options.endTime
            
        
        options = setOptions (StartExportTaskOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startExportTaskRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartExportTask"
                
                (AWS.Core.Decode.ResultDecoder "StartExportTaskResponse" startExportTaskResponseDecoder)
                
            )



{-| Options for a startExportTask request
-}
type alias StartExportTaskOptions =
    {
    exportDataFormat : Maybe (List ExportDataFormat),filters : Maybe (List ExportFilter),startTime : Maybe Posix,endTime : Maybe Posix
    }



{-| <p>Starts an import task, which allows you to import details of your on-premises environment directly into AWS without having to use the Application Discovery Service (ADS) tools such as the Discovery Connector or Discovery Agent. This gives you the option to perform migration assessment and planning directly from your imported data, including the ability to group your devices as applications and track their migration status.</p> <p>To start an import request, do this:</p> <ol> <li> <p>Download the specially formatted comma separated value (CSV) import template, which you can find here: <a href="https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv">https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv</a>.</p> </li> <li> <p>Fill out the template with your server and application data.</p> </li> <li> <p>Upload your import file to an Amazon S3 bucket, and make a note of it's Object URL. Your import file must be in the CSV format.</p> </li> <li> <p>Use the console or the <code>StartImportTask</code> command with the AWS CLI or one of the AWS SDKs to import the records from your file.</p> </li> </ol> <p>For more information, including step-by-step procedures, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-import.html">Migration Hub Import</a> in the <i>AWS Application Discovery Service User Guide</i>.</p> <note> <p>There are limits to the number of import tasks you can create (and delete) in an AWS account. For more information, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/ads_service_limits.html">AWS Application Discovery Service Limits</a> in the <i>AWS Application Discovery Service User Guide</i>.</p> </note>

__Required Parameters__

* `name` __:__ `String`
* `importUrl` __:__ `String`


-}

startImportTask :
  
    String ->
  
    String ->
  
  
    ( StartImportTaskOptions -> StartImportTaskOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartImportTaskResponse)

startImportTask name importUrl setOptions =
    
    let
        requestInput = StartImportTaskRequest
            
            options.clientRequestToken
            
            name
            
            importUrl
            
        
        options = setOptions (StartImportTaskOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startImportTaskRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartImportTask"
                
                (AWS.Core.Decode.ResultDecoder "StartImportTaskResponse" startImportTaskResponseDecoder)
                
            )



{-| Options for a startImportTask request
-}
type alias StartImportTaskOptions =
    {
    clientRequestToken : Maybe String
    }



{-| <p>Stop the continuous flow of agent's discovered data into Amazon Athena.</p>

__Required Parameters__

* `exportId` __:__ `String`


-}

stopContinuousExport :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopContinuousExportResponse)

stopContinuousExport exportId =
    
    let
        requestInput = StopContinuousExportRequest
            
            exportId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopContinuousExportRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopContinuousExport"
                
                (AWS.Core.Decode.ResultDecoder "StopContinuousExportResponse" stopContinuousExportResponseDecoder)
                
            )





{-| <p>Instructs the specified agents or connectors to stop collecting data.</p>

__Required Parameters__

* `agentIds` __:__ `(List String)`


-}

stopDataCollectionByAgentIds :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopDataCollectionByAgentIdsResponse)

stopDataCollectionByAgentIds agentIds =
    
    let
        requestInput = StopDataCollectionByAgentIdsRequest
            
            agentIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopDataCollectionByAgentIdsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopDataCollectionByAgentIds"
                
                (AWS.Core.Decode.ResultDecoder "StopDataCollectionByAgentIdsResponse" stopDataCollectionByAgentIdsResponseDecoder)
                
            )





{-| <p>Updates metadata about an application.</p>

__Required Parameters__

* `configurationId` __:__ `String`


-}

updateApplication :
  
    String ->
  
  
    ( UpdateApplicationOptions -> UpdateApplicationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateApplicationResponse)

updateApplication configurationId setOptions =
    
    let
        requestInput = UpdateApplicationRequest
            
            configurationId
            
            options.name
            
            options.description
            
        
        options = setOptions (UpdateApplicationOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateApplicationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateApplication"
                
                (AWS.Core.Decode.ResultDecoder "UpdateApplicationResponse" updateApplicationResponseDecoder)
                
            )



{-| Options for a updateApplication request
-}
type alias UpdateApplicationOptions =
    {
    name : Maybe String,description : Maybe String
    }




{-| <p>Information about agents or connectors that were instructed to start collecting data. Information includes the agent/connector ID, a description of the operation, and whether the agent/connector configuration was updated.</p>
-}
type alias AgentConfigurationStatus =
    { agentId : Maybe String
    , operationSucceeded : Maybe Bool
    , description : Maybe String
    }



agentConfigurationStatusDecoder : JD.Decoder AgentConfigurationStatus
agentConfigurationStatusDecoder =
    JD.succeed AgentConfigurationStatus
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["agentId", "AgentId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operationSucceeded", "OperationSucceeded"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        




agentConfigurationStatusToString : AgentConfigurationStatus -> String -- List (String, String)
agentConfigurationStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "agentId" "" -- val.agentId
        
    --     |> Dict.insert
    --         "operationSucceeded" "" -- val.operationSucceeded
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.toList
    ""



{-| <p>Information about agents or connectors associated with the user’s AWS account. Information includes agent or connector IDs, IP addresses, media access control (MAC) addresses, agent or connector health, hostname where the agent or connector resides, and agent version for each agent.</p>
-}
type alias AgentInfo =
    { agentId : Maybe String
    , hostName : Maybe String
    , agentNetworkInfoList : Maybe (List AgentNetworkInfo)
    , connectorId : Maybe String
    , version : Maybe String
    , health : Maybe AgentStatus
    , lastHealthPingTime : Maybe String
    , collectionStatus : Maybe String
    , agentType : Maybe String
    , registeredTime : Maybe String
    }



agentInfoDecoder : JD.Decoder AgentInfo
agentInfoDecoder =
    JD.succeed AgentInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["agentId", "AgentId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hostName", "HostName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["agentNetworkInfoList", "AgentNetworkInfoList"]
            (JD.list agentNetworkInfoDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["connectorId", "ConnectorId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["version", "Version"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["health", "Health"]
            agentStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastHealthPingTime", "LastHealthPingTime"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["collectionStatus", "CollectionStatus"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["agentType", "AgentType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registeredTime", "RegisteredTime"]
            JD.string
        )
        




agentInfoToString : AgentInfo -> String -- List (String, String)
agentInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "agentId" "" -- val.agentId
        
    --     |> Dict.insert
    --         "hostName" "" -- val.hostName
        
    --     |> Dict.insert
    --         "agentNetworkInfoList" "" -- val.agentNetworkInfoList
        
    --     |> Dict.insert
    --         "connectorId" "" -- val.connectorId
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "health" "" -- val.health
        
    --     |> Dict.insert
    --         "lastHealthPingTime" "" -- val.lastHealthPingTime
        
    --     |> Dict.insert
    --         "collectionStatus" "" -- val.collectionStatus
        
    --     |> Dict.insert
    --         "agentType" "" -- val.agentType
        
    --     |> Dict.insert
    --         "registeredTime" "" -- val.registeredTime
        
    --     |> Dict.toList
    ""



{-| <p>Network details about the host where the agent/connector resides.</p>
-}
type alias AgentNetworkInfo =
    { ipAddress : Maybe String
    , macAddress : Maybe String
    }



agentNetworkInfoDecoder : JD.Decoder AgentNetworkInfo
agentNetworkInfoDecoder =
    JD.succeed AgentNetworkInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ipAddress", "IpAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["macAddress", "MacAddress"]
            JD.string
        )
        




agentNetworkInfoToString : AgentNetworkInfo -> String -- List (String, String)
agentNetworkInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ipAddress" "" -- val.ipAddress
        
    --     |> Dict.insert
    --         "macAddress" "" -- val.macAddress
        
    --     |> Dict.toList
    ""



{-| One of

* `AgentStatus_HEALTHY`
* `AgentStatus_UNHEALTHY`
* `AgentStatus_RUNNING`
* `AgentStatus_UNKNOWN`
* `AgentStatus_BLACKLISTED`
* `AgentStatus_SHUTDOWN`

-}
type AgentStatus
    = AgentStatus_HEALTHY
    | AgentStatus_UNHEALTHY
    | AgentStatus_RUNNING
    | AgentStatus_UNKNOWN
    | AgentStatus_BLACKLISTED
    | AgentStatus_SHUTDOWN



agentStatusDecoder : JD.Decoder AgentStatus
agentStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HEALTHY" ->
                        JD.succeed AgentStatus_HEALTHY

                    "UNHEALTHY" ->
                        JD.succeed AgentStatus_UNHEALTHY

                    "RUNNING" ->
                        JD.succeed AgentStatus_RUNNING

                    "UNKNOWN" ->
                        JD.succeed AgentStatus_UNKNOWN

                    "BLACKLISTED" ->
                        JD.succeed AgentStatus_BLACKLISTED

                    "SHUTDOWN" ->
                        JD.succeed AgentStatus_SHUTDOWN


                    _ ->
                        JD.fail "bad thing"
            )




agentStatusToString : AgentStatus -> String
agentStatusToString val =
    case val of
        AgentStatus_HEALTHY ->
            "HEALTHY"

        AgentStatus_UNHEALTHY ->
            "UNHEALTHY"

        AgentStatus_RUNNING ->
            "RUNNING"

        AgentStatus_UNKNOWN ->
            "UNKNOWN"

        AgentStatus_BLACKLISTED ->
            "BLACKLISTED"

        AgentStatus_SHUTDOWN ->
            "SHUTDOWN"




{-| Type of HTTP response from associateConfigurationItemsToApplication
-}
type alias AssociateConfigurationItemsToApplicationResponse =
    { 
    }



associateConfigurationItemsToApplicationResponseDecoder : JD.Decoder AssociateConfigurationItemsToApplicationResponse
associateConfigurationItemsToApplicationResponseDecoder =
    JD.succeed AssociateConfigurationItemsToApplicationResponse
        




associateConfigurationItemsToApplicationResponseToString : AssociateConfigurationItemsToApplicationResponse -> String -- List (String, String)
associateConfigurationItemsToApplicationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Error messages returned for each import task that you deleted as a response for this command.</p>
-}
type alias BatchDeleteImportDataError =
    { importTaskId : Maybe String
    , errorCode : Maybe BatchDeleteImportDataErrorCode
    , errorDescription : Maybe String
    }



batchDeleteImportDataErrorDecoder : JD.Decoder BatchDeleteImportDataError
batchDeleteImportDataErrorDecoder =
    JD.succeed BatchDeleteImportDataError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["importTaskId", "ImportTaskId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errorCode", "ErrorCode"]
            batchDeleteImportDataErrorCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errorDescription", "ErrorDescription"]
            JD.string
        )
        




batchDeleteImportDataErrorToString : BatchDeleteImportDataError -> String -- List (String, String)
batchDeleteImportDataErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "importTaskId" "" -- val.importTaskId
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorDescription" "" -- val.errorDescription
        
    --     |> Dict.toList
    ""



{-| One of

* `BatchDeleteImportDataErrorCode_NOT_FOUND`
* `BatchDeleteImportDataErrorCode_INTERNAL_SERVER_ERROR`
* `BatchDeleteImportDataErrorCode_OVER_LIMIT`

-}
type BatchDeleteImportDataErrorCode
    = BatchDeleteImportDataErrorCode_NOT_FOUND
    | BatchDeleteImportDataErrorCode_INTERNAL_SERVER_ERROR
    | BatchDeleteImportDataErrorCode_OVER_LIMIT



batchDeleteImportDataErrorCodeDecoder : JD.Decoder BatchDeleteImportDataErrorCode
batchDeleteImportDataErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NOT_FOUND" ->
                        JD.succeed BatchDeleteImportDataErrorCode_NOT_FOUND

                    "INTERNAL_SERVER_ERROR" ->
                        JD.succeed BatchDeleteImportDataErrorCode_INTERNAL_SERVER_ERROR

                    "OVER_LIMIT" ->
                        JD.succeed BatchDeleteImportDataErrorCode_OVER_LIMIT


                    _ ->
                        JD.fail "bad thing"
            )




batchDeleteImportDataErrorCodeToString : BatchDeleteImportDataErrorCode -> String
batchDeleteImportDataErrorCodeToString val =
    case val of
        BatchDeleteImportDataErrorCode_NOT_FOUND ->
            "NOT_FOUND"

        BatchDeleteImportDataErrorCode_INTERNAL_SERVER_ERROR ->
            "INTERNAL_SERVER_ERROR"

        BatchDeleteImportDataErrorCode_OVER_LIMIT ->
            "OVER_LIMIT"




{-| Type of HTTP response from batchDeleteImportData
-}
type alias BatchDeleteImportDataResponse =
    { errors : Maybe (List BatchDeleteImportDataError)
    }



batchDeleteImportDataResponseDecoder : JD.Decoder BatchDeleteImportDataResponse
batchDeleteImportDataResponseDecoder =
    JD.succeed BatchDeleteImportDataResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errors", "Errors"]
            (JD.list batchDeleteImportDataErrorDecoder)
        )
        




batchDeleteImportDataResponseToString : BatchDeleteImportDataResponse -> String -- List (String, String)
batchDeleteImportDataResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "errors" "" -- val.errors
        
    --     |> Dict.toList
    ""



{-| One of

* `ConfigurationItemType_SERVER`
* `ConfigurationItemType_PROCESS`
* `ConfigurationItemType_CONNECTION`
* `ConfigurationItemType_APPLICATION`

-}
type ConfigurationItemType
    = ConfigurationItemType_SERVER
    | ConfigurationItemType_PROCESS
    | ConfigurationItemType_CONNECTION
    | ConfigurationItemType_APPLICATION



configurationItemTypeDecoder : JD.Decoder ConfigurationItemType
configurationItemTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SERVER" ->
                        JD.succeed ConfigurationItemType_SERVER

                    "PROCESS" ->
                        JD.succeed ConfigurationItemType_PROCESS

                    "CONNECTION" ->
                        JD.succeed ConfigurationItemType_CONNECTION

                    "APPLICATION" ->
                        JD.succeed ConfigurationItemType_APPLICATION


                    _ ->
                        JD.fail "bad thing"
            )




configurationItemTypeToString : ConfigurationItemType -> String
configurationItemTypeToString val =
    case val of
        ConfigurationItemType_SERVER ->
            "SERVER"

        ConfigurationItemType_PROCESS ->
            "PROCESS"

        ConfigurationItemType_CONNECTION ->
            "CONNECTION"

        ConfigurationItemType_APPLICATION ->
            "APPLICATION"




{-| <p>Tags for a configuration item. Tags are metadata that help you categorize IT assets.</p>
-}
type alias ConfigurationTag =
    { configurationType : Maybe ConfigurationItemType
    , configurationId : Maybe String
    , key : Maybe String
    , value : Maybe String
    , timeOfCreation : Maybe Posix
    }



configurationTagDecoder : JD.Decoder ConfigurationTag
configurationTagDecoder =
    JD.succeed ConfigurationTag
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["configurationType", "ConfigurationType"]
            configurationItemTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["configurationId", "ConfigurationId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["key", "Key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["value", "Value"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["timeOfCreation", "TimeOfCreation"]
            JDX.datetime
        )
        




configurationTagToString : ConfigurationTag -> String -- List (String, String)
configurationTagToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "configurationType" "" -- val.configurationType
        
    --     |> Dict.insert
    --         "configurationId" "" -- val.configurationId
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "timeOfCreation" "" -- val.timeOfCreation
        
    --     |> Dict.toList
    ""



{-| <p>A list of continuous export descriptions.</p>
-}
type alias ContinuousExportDescription =
    { exportId : Maybe String
    , status : Maybe ContinuousExportStatus
    , statusDetail : Maybe String
    , s3Bucket : Maybe String
    , startTime : Maybe Posix
    , stopTime : Maybe Posix
    , dataSource : Maybe DataSource
    , schemaStorageConfig : Maybe (Dict String String)
    }



continuousExportDescriptionDecoder : JD.Decoder ContinuousExportDescription
continuousExportDescriptionDecoder =
    JD.succeed ContinuousExportDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["exportId", "ExportId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            continuousExportStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["statusDetail", "StatusDetail"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["s3Bucket", "S3Bucket"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["startTime", "StartTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stopTime", "StopTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["dataSource", "DataSource"]
            dataSourceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["schemaStorageConfig", "SchemaStorageConfig"]
            (AWS.Core.Decode.dict JD.string)
        )
        




continuousExportDescriptionToString : ContinuousExportDescription -> String -- List (String, String)
continuousExportDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "exportId" "" -- val.exportId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusDetail" "" -- val.statusDetail
        
    --     |> Dict.insert
    --         "s3Bucket" "" -- val.s3Bucket
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "stopTime" "" -- val.stopTime
        
    --     |> Dict.insert
    --         "dataSource" "" -- val.dataSource
        
    --     |> Dict.insert
    --         "schemaStorageConfig" "" -- val.schemaStorageConfig
        
    --     |> Dict.toList
    ""



{-| One of

* `ContinuousExportStatus_START_IN_PROGRESS`
* `ContinuousExportStatus_START_FAILED`
* `ContinuousExportStatus_ACTIVE`
* `ContinuousExportStatus_ERROR`
* `ContinuousExportStatus_STOP_IN_PROGRESS`
* `ContinuousExportStatus_STOP_FAILED`
* `ContinuousExportStatus_INACTIVE`

-}
type ContinuousExportStatus
    = ContinuousExportStatus_START_IN_PROGRESS
    | ContinuousExportStatus_START_FAILED
    | ContinuousExportStatus_ACTIVE
    | ContinuousExportStatus_ERROR
    | ContinuousExportStatus_STOP_IN_PROGRESS
    | ContinuousExportStatus_STOP_FAILED
    | ContinuousExportStatus_INACTIVE



continuousExportStatusDecoder : JD.Decoder ContinuousExportStatus
continuousExportStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "START_IN_PROGRESS" ->
                        JD.succeed ContinuousExportStatus_START_IN_PROGRESS

                    "START_FAILED" ->
                        JD.succeed ContinuousExportStatus_START_FAILED

                    "ACTIVE" ->
                        JD.succeed ContinuousExportStatus_ACTIVE

                    "ERROR" ->
                        JD.succeed ContinuousExportStatus_ERROR

                    "STOP_IN_PROGRESS" ->
                        JD.succeed ContinuousExportStatus_STOP_IN_PROGRESS

                    "STOP_FAILED" ->
                        JD.succeed ContinuousExportStatus_STOP_FAILED

                    "INACTIVE" ->
                        JD.succeed ContinuousExportStatus_INACTIVE


                    _ ->
                        JD.fail "bad thing"
            )




continuousExportStatusToString : ContinuousExportStatus -> String
continuousExportStatusToString val =
    case val of
        ContinuousExportStatus_START_IN_PROGRESS ->
            "START_IN_PROGRESS"

        ContinuousExportStatus_START_FAILED ->
            "START_FAILED"

        ContinuousExportStatus_ACTIVE ->
            "ACTIVE"

        ContinuousExportStatus_ERROR ->
            "ERROR"

        ContinuousExportStatus_STOP_IN_PROGRESS ->
            "STOP_IN_PROGRESS"

        ContinuousExportStatus_STOP_FAILED ->
            "STOP_FAILED"

        ContinuousExportStatus_INACTIVE ->
            "INACTIVE"




{-| Type of HTTP response from createApplication
-}
type alias CreateApplicationResponse =
    { configurationId : Maybe String
    }



createApplicationResponseDecoder : JD.Decoder CreateApplicationResponse
createApplicationResponseDecoder =
    JD.succeed CreateApplicationResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["configurationId", "ConfigurationId"]
            JD.string
        )
        




createApplicationResponseToString : CreateApplicationResponse -> String -- List (String, String)
createApplicationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "configurationId" "" -- val.configurationId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createTags
-}
type alias CreateTagsResponse =
    { 
    }



createTagsResponseDecoder : JD.Decoder CreateTagsResponse
createTagsResponseDecoder =
    JD.succeed CreateTagsResponse
        




createTagsResponseToString : CreateTagsResponse -> String -- List (String, String)
createTagsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Inventory data for installed discovery agents.</p>
-}
type alias CustomerAgentInfo =
    { activeAgents : Int
    , healthyAgents : Int
    , blackListedAgents : Int
    , shutdownAgents : Int
    , unhealthyAgents : Int
    , totalAgents : Int
    , unknownAgents : Int
    }



customerAgentInfoDecoder : JD.Decoder CustomerAgentInfo
customerAgentInfoDecoder =
    JD.succeed CustomerAgentInfo
        
        |> JDP.custom (AWS.Core.Decode.required
            ["activeAgents", "ActiveAgents"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["healthyAgents", "HealthyAgents"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["blackListedAgents", "BlackListedAgents"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["shutdownAgents", "ShutdownAgents"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["unhealthyAgents", "UnhealthyAgents"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["totalAgents", "TotalAgents"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["unknownAgents", "UnknownAgents"]
            JD.int
        )
        




customerAgentInfoToString : CustomerAgentInfo -> String -- List (String, String)
customerAgentInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "activeAgents" "" -- val.activeAgents
        
    --     |> Dict.insert
    --         "healthyAgents" "" -- val.healthyAgents
        
    --     |> Dict.insert
    --         "blackListedAgents" "" -- val.blackListedAgents
        
    --     |> Dict.insert
    --         "shutdownAgents" "" -- val.shutdownAgents
        
    --     |> Dict.insert
    --         "unhealthyAgents" "" -- val.unhealthyAgents
        
    --     |> Dict.insert
    --         "totalAgents" "" -- val.totalAgents
        
    --     |> Dict.insert
    --         "unknownAgents" "" -- val.unknownAgents
        
    --     |> Dict.toList
    ""



{-| <p>Inventory data for installed discovery connectors.</p>
-}
type alias CustomerConnectorInfo =
    { activeConnectors : Int
    , healthyConnectors : Int
    , blackListedConnectors : Int
    , shutdownConnectors : Int
    , unhealthyConnectors : Int
    , totalConnectors : Int
    , unknownConnectors : Int
    }



customerConnectorInfoDecoder : JD.Decoder CustomerConnectorInfo
customerConnectorInfoDecoder =
    JD.succeed CustomerConnectorInfo
        
        |> JDP.custom (AWS.Core.Decode.required
            ["activeConnectors", "ActiveConnectors"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["healthyConnectors", "HealthyConnectors"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["blackListedConnectors", "BlackListedConnectors"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["shutdownConnectors", "ShutdownConnectors"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["unhealthyConnectors", "UnhealthyConnectors"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["totalConnectors", "TotalConnectors"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["unknownConnectors", "UnknownConnectors"]
            JD.int
        )
        




customerConnectorInfoToString : CustomerConnectorInfo -> String -- List (String, String)
customerConnectorInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "activeConnectors" "" -- val.activeConnectors
        
    --     |> Dict.insert
    --         "healthyConnectors" "" -- val.healthyConnectors
        
    --     |> Dict.insert
    --         "blackListedConnectors" "" -- val.blackListedConnectors
        
    --     |> Dict.insert
    --         "shutdownConnectors" "" -- val.shutdownConnectors
        
    --     |> Dict.insert
    --         "unhealthyConnectors" "" -- val.unhealthyConnectors
        
    --     |> Dict.insert
    --         "totalConnectors" "" -- val.totalConnectors
        
    --     |> Dict.insert
    --         "unknownConnectors" "" -- val.unknownConnectors
        
    --     |> Dict.toList
    ""



{-| One of

* `DataSource_AGENT`

-}
type DataSource
    = DataSource_AGENT



dataSourceDecoder : JD.Decoder DataSource
dataSourceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AGENT" ->
                        JD.succeed DataSource_AGENT


                    _ ->
                        JD.fail "bad thing"
            )




dataSourceToString : DataSource -> String
dataSourceToString val =
    case val of
        DataSource_AGENT ->
            "AGENT"




{-| Type of HTTP response from deleteApplications
-}
type alias DeleteApplicationsResponse =
    { 
    }



deleteApplicationsResponseDecoder : JD.Decoder DeleteApplicationsResponse
deleteApplicationsResponseDecoder =
    JD.succeed DeleteApplicationsResponse
        




deleteApplicationsResponseToString : DeleteApplicationsResponse -> String -- List (String, String)
deleteApplicationsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteTags
-}
type alias DeleteTagsResponse =
    { 
    }



deleteTagsResponseDecoder : JD.Decoder DeleteTagsResponse
deleteTagsResponseDecoder =
    JD.succeed DeleteTagsResponse
        




deleteTagsResponseToString : DeleteTagsResponse -> String -- List (String, String)
deleteTagsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAgents
-}
type alias DescribeAgentsResponse =
    { agentsInfo : Maybe (List AgentInfo)
    , nextToken : Maybe String
    }



describeAgentsResponseDecoder : JD.Decoder DescribeAgentsResponse
describeAgentsResponseDecoder =
    JD.succeed DescribeAgentsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["agentsInfo", "AgentsInfo"]
            (JD.list agentInfoDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeAgentsResponseToString : DescribeAgentsResponse -> String -- List (String, String)
describeAgentsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "agentsInfo" "" -- val.agentsInfo
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeConfigurations
-}
type alias DescribeConfigurationsResponse =
    { configurations : Maybe (List (Dict String String))
    }



describeConfigurationsResponseDecoder : JD.Decoder DescribeConfigurationsResponse
describeConfigurationsResponseDecoder =
    JD.succeed DescribeConfigurationsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["configurations", "Configurations"]
            (JD.list (AWS.Core.Decode.dict JD.string))
        )
        




describeConfigurationsResponseToString : DescribeConfigurationsResponse -> String -- List (String, String)
describeConfigurationsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "configurations" "" -- val.configurations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeContinuousExports
-}
type alias DescribeContinuousExportsResponse =
    { descriptions : Maybe (List ContinuousExportDescription)
    , nextToken : Maybe String
    }



describeContinuousExportsResponseDecoder : JD.Decoder DescribeContinuousExportsResponse
describeContinuousExportsResponseDecoder =
    JD.succeed DescribeContinuousExportsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["descriptions", "Descriptions"]
            (JD.list continuousExportDescriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeContinuousExportsResponseToString : DescribeContinuousExportsResponse -> String -- List (String, String)
describeContinuousExportsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "descriptions" "" -- val.descriptions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeExportConfigurations
-}
type alias DescribeExportConfigurationsResponse =
    { exportsInfo : Maybe (List ExportInfo)
    , nextToken : Maybe String
    }



describeExportConfigurationsResponseDecoder : JD.Decoder DescribeExportConfigurationsResponse
describeExportConfigurationsResponseDecoder =
    JD.succeed DescribeExportConfigurationsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["exportsInfo", "ExportsInfo"]
            (JD.list exportInfoDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeExportConfigurationsResponseToString : DescribeExportConfigurationsResponse -> String -- List (String, String)
describeExportConfigurationsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "exportsInfo" "" -- val.exportsInfo
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeExportTasks
-}
type alias DescribeExportTasksResponse =
    { exportsInfo : Maybe (List ExportInfo)
    , nextToken : Maybe String
    }



describeExportTasksResponseDecoder : JD.Decoder DescribeExportTasksResponse
describeExportTasksResponseDecoder =
    JD.succeed DescribeExportTasksResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["exportsInfo", "ExportsInfo"]
            (JD.list exportInfoDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeExportTasksResponseToString : DescribeExportTasksResponse -> String -- List (String, String)
describeExportTasksResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "exportsInfo" "" -- val.exportsInfo
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeImportTasks
-}
type alias DescribeImportTasksResponse =
    { nextToken : Maybe String
    , tasks : Maybe (List ImportTask)
    }



describeImportTasksResponseDecoder : JD.Decoder DescribeImportTasksResponse
describeImportTasksResponseDecoder =
    JD.succeed DescribeImportTasksResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tasks", "Tasks"]
            (JD.list importTaskDecoder)
        )
        




describeImportTasksResponseToString : DescribeImportTasksResponse -> String -- List (String, String)
describeImportTasksResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "tasks" "" -- val.tasks
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeTags
-}
type alias DescribeTagsResponse =
    { tags : Maybe (List ConfigurationTag)
    , nextToken : Maybe String
    }



describeTagsResponseDecoder : JD.Decoder DescribeTagsResponse
describeTagsResponseDecoder =
    JD.succeed DescribeTagsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list configurationTagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeTagsResponseToString : DescribeTagsResponse -> String -- List (String, String)
describeTagsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from disassociateConfigurationItemsFromApplication
-}
type alias DisassociateConfigurationItemsFromApplicationResponse =
    { 
    }



disassociateConfigurationItemsFromApplicationResponseDecoder : JD.Decoder DisassociateConfigurationItemsFromApplicationResponse
disassociateConfigurationItemsFromApplicationResponseDecoder =
    JD.succeed DisassociateConfigurationItemsFromApplicationResponse
        




disassociateConfigurationItemsFromApplicationResponseToString : DisassociateConfigurationItemsFromApplicationResponse -> String -- List (String, String)
disassociateConfigurationItemsFromApplicationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from exportConfigurations
-}
type alias ExportConfigurationsResponse =
    { exportId : Maybe String
    }



exportConfigurationsResponseDecoder : JD.Decoder ExportConfigurationsResponse
exportConfigurationsResponseDecoder =
    JD.succeed ExportConfigurationsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["exportId", "ExportId"]
            JD.string
        )
        




exportConfigurationsResponseToString : ExportConfigurationsResponse -> String -- List (String, String)
exportConfigurationsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "exportId" "" -- val.exportId
        
    --     |> Dict.toList
    ""



{-| One of

* `ExportDataFormat_CSV`
* `ExportDataFormat_GRAPHML`

-}
type ExportDataFormat
    = ExportDataFormat_CSV
    | ExportDataFormat_GRAPHML



exportDataFormatDecoder : JD.Decoder ExportDataFormat
exportDataFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CSV" ->
                        JD.succeed ExportDataFormat_CSV

                    "GRAPHML" ->
                        JD.succeed ExportDataFormat_GRAPHML


                    _ ->
                        JD.fail "bad thing"
            )




exportDataFormatToString : ExportDataFormat -> String
exportDataFormatToString val =
    case val of
        ExportDataFormat_CSV ->
            "CSV"

        ExportDataFormat_GRAPHML ->
            "GRAPHML"




{-| <p>Used to select which agent's data is to be exported. A single agent ID may be selected for export using the <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_StartExportTask.html">StartExportTask</a> action.</p>
-}
type alias ExportFilter =
    { name : String
    , values : (List String)
    , condition : String
    }



exportFilterDecoder : JD.Decoder ExportFilter
exportFilterDecoder =
    JD.succeed ExportFilter
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["values", "Values"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["condition", "Condition"]
            JD.string
        )
        




exportFilterToString : ExportFilter -> String -- List (String, String)
exportFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.insert
    --         "condition" "" -- val.condition
        
    --     |> Dict.toList
    ""



{-| <p>Information regarding the export status of discovered data. The value is an array of objects.</p>
-}
type alias ExportInfo =
    { exportId : String
    , exportStatus : ExportStatus
    , statusMessage : String
    , configurationsDownloadUrl : Maybe String
    , exportRequestTime : Posix
    , isTruncated : Maybe Bool
    , requestedStartTime : Maybe Posix
    , requestedEndTime : Maybe Posix
    }



exportInfoDecoder : JD.Decoder ExportInfo
exportInfoDecoder =
    JD.succeed ExportInfo
        
        |> JDP.custom (AWS.Core.Decode.required
            ["exportId", "ExportId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["exportStatus", "ExportStatus"]
            exportStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["statusMessage", "StatusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["configurationsDownloadUrl", "ConfigurationsDownloadUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["exportRequestTime", "ExportRequestTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isTruncated", "IsTruncated"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["requestedStartTime", "RequestedStartTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["requestedEndTime", "RequestedEndTime"]
            JDX.datetime
        )
        




exportInfoToString : ExportInfo -> String -- List (String, String)
exportInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "exportId" "" -- val.exportId
        
    --     |> Dict.insert
    --         "exportStatus" "" -- val.exportStatus
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "configurationsDownloadUrl" "" -- val.configurationsDownloadUrl
        
    --     |> Dict.insert
    --         "exportRequestTime" "" -- val.exportRequestTime
        
    --     |> Dict.insert
    --         "isTruncated" "" -- val.isTruncated
        
    --     |> Dict.insert
    --         "requestedStartTime" "" -- val.requestedStartTime
        
    --     |> Dict.insert
    --         "requestedEndTime" "" -- val.requestedEndTime
        
    --     |> Dict.toList
    ""



{-| One of

* `ExportStatus_FAILED`
* `ExportStatus_SUCCEEDED`
* `ExportStatus_IN_PROGRESS`

-}
type ExportStatus
    = ExportStatus_FAILED
    | ExportStatus_SUCCEEDED
    | ExportStatus_IN_PROGRESS



exportStatusDecoder : JD.Decoder ExportStatus
exportStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FAILED" ->
                        JD.succeed ExportStatus_FAILED

                    "SUCCEEDED" ->
                        JD.succeed ExportStatus_SUCCEEDED

                    "IN_PROGRESS" ->
                        JD.succeed ExportStatus_IN_PROGRESS


                    _ ->
                        JD.fail "bad thing"
            )




exportStatusToString : ExportStatus -> String
exportStatusToString val =
    case val of
        ExportStatus_FAILED ->
            "FAILED"

        ExportStatus_SUCCEEDED ->
            "SUCCEEDED"

        ExportStatus_IN_PROGRESS ->
            "IN_PROGRESS"




{-| <p>A filter that can use conditional operators.</p> <p>For more information about filters, see <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html">Querying Discovered Configuration Items</a>. </p>
-}
type alias Filter =
    { name : String
    , values : (List String)
    , condition : String
    }



filterDecoder : JD.Decoder Filter
filterDecoder =
    JD.succeed Filter
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["values", "Values"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["condition", "Condition"]
            JD.string
        )
        




filterToString : Filter -> String -- List (String, String)
filterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.insert
    --         "condition" "" -- val.condition
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDiscoverySummary
-}
type alias GetDiscoverySummaryResponse =
    { servers : Maybe Int
    , applications : Maybe Int
    , serversMappedToApplications : Maybe Int
    , serversMappedtoTags : Maybe Int
    , agentSummary : Maybe CustomerAgentInfo
    , connectorSummary : Maybe CustomerConnectorInfo
    }



getDiscoverySummaryResponseDecoder : JD.Decoder GetDiscoverySummaryResponse
getDiscoverySummaryResponseDecoder =
    JD.succeed GetDiscoverySummaryResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["servers", "Servers"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["applications", "Applications"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serversMappedToApplications", "ServersMappedToApplications"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serversMappedtoTags", "ServersMappedtoTags"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["agentSummary", "AgentSummary"]
            customerAgentInfoDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["connectorSummary", "ConnectorSummary"]
            customerConnectorInfoDecoder
        )
        




getDiscoverySummaryResponseToString : GetDiscoverySummaryResponse -> String -- List (String, String)
getDiscoverySummaryResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "servers" "" -- val.servers
        
    --     |> Dict.insert
    --         "applications" "" -- val.applications
        
    --     |> Dict.insert
    --         "serversMappedToApplications" "" -- val.serversMappedToApplications
        
    --     |> Dict.insert
    --         "serversMappedtoTags" "" -- val.serversMappedtoTags
        
    --     |> Dict.insert
    --         "agentSummary" "" -- val.agentSummary
        
    --     |> Dict.insert
    --         "connectorSummary" "" -- val.connectorSummary
        
    --     |> Dict.toList
    ""



{-| One of

* `ImportStatus_IMPORT_IN_PROGRESS`
* `ImportStatus_IMPORT_COMPLETE`
* `ImportStatus_IMPORT_COMPLETE_WITH_ERRORS`
* `ImportStatus_IMPORT_FAILED`
* `ImportStatus_IMPORT_FAILED_SERVER_LIMIT_EXCEEDED`
* `ImportStatus_IMPORT_FAILED_RECORD_LIMIT_EXCEEDED`
* `ImportStatus_DELETE_IN_PROGRESS`
* `ImportStatus_DELETE_COMPLETE`
* `ImportStatus_DELETE_FAILED`
* `ImportStatus_DELETE_FAILED_LIMIT_EXCEEDED`
* `ImportStatus_INTERNAL_ERROR`

-}
type ImportStatus
    = ImportStatus_IMPORT_IN_PROGRESS
    | ImportStatus_IMPORT_COMPLETE
    | ImportStatus_IMPORT_COMPLETE_WITH_ERRORS
    | ImportStatus_IMPORT_FAILED
    | ImportStatus_IMPORT_FAILED_SERVER_LIMIT_EXCEEDED
    | ImportStatus_IMPORT_FAILED_RECORD_LIMIT_EXCEEDED
    | ImportStatus_DELETE_IN_PROGRESS
    | ImportStatus_DELETE_COMPLETE
    | ImportStatus_DELETE_FAILED
    | ImportStatus_DELETE_FAILED_LIMIT_EXCEEDED
    | ImportStatus_INTERNAL_ERROR



importStatusDecoder : JD.Decoder ImportStatus
importStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IMPORT_IN_PROGRESS" ->
                        JD.succeed ImportStatus_IMPORT_IN_PROGRESS

                    "IMPORT_COMPLETE" ->
                        JD.succeed ImportStatus_IMPORT_COMPLETE

                    "IMPORT_COMPLETE_WITH_ERRORS" ->
                        JD.succeed ImportStatus_IMPORT_COMPLETE_WITH_ERRORS

                    "IMPORT_FAILED" ->
                        JD.succeed ImportStatus_IMPORT_FAILED

                    "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED" ->
                        JD.succeed ImportStatus_IMPORT_FAILED_SERVER_LIMIT_EXCEEDED

                    "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED" ->
                        JD.succeed ImportStatus_IMPORT_FAILED_RECORD_LIMIT_EXCEEDED

                    "DELETE_IN_PROGRESS" ->
                        JD.succeed ImportStatus_DELETE_IN_PROGRESS

                    "DELETE_COMPLETE" ->
                        JD.succeed ImportStatus_DELETE_COMPLETE

                    "DELETE_FAILED" ->
                        JD.succeed ImportStatus_DELETE_FAILED

                    "DELETE_FAILED_LIMIT_EXCEEDED" ->
                        JD.succeed ImportStatus_DELETE_FAILED_LIMIT_EXCEEDED

                    "INTERNAL_ERROR" ->
                        JD.succeed ImportStatus_INTERNAL_ERROR


                    _ ->
                        JD.fail "bad thing"
            )




importStatusToString : ImportStatus -> String
importStatusToString val =
    case val of
        ImportStatus_IMPORT_IN_PROGRESS ->
            "IMPORT_IN_PROGRESS"

        ImportStatus_IMPORT_COMPLETE ->
            "IMPORT_COMPLETE"

        ImportStatus_IMPORT_COMPLETE_WITH_ERRORS ->
            "IMPORT_COMPLETE_WITH_ERRORS"

        ImportStatus_IMPORT_FAILED ->
            "IMPORT_FAILED"

        ImportStatus_IMPORT_FAILED_SERVER_LIMIT_EXCEEDED ->
            "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED"

        ImportStatus_IMPORT_FAILED_RECORD_LIMIT_EXCEEDED ->
            "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED"

        ImportStatus_DELETE_IN_PROGRESS ->
            "DELETE_IN_PROGRESS"

        ImportStatus_DELETE_COMPLETE ->
            "DELETE_COMPLETE"

        ImportStatus_DELETE_FAILED ->
            "DELETE_FAILED"

        ImportStatus_DELETE_FAILED_LIMIT_EXCEEDED ->
            "DELETE_FAILED_LIMIT_EXCEEDED"

        ImportStatus_INTERNAL_ERROR ->
            "INTERNAL_ERROR"




{-| <p>An array of information related to the import task request that includes status information, times, IDs, the Amazon S3 Object URL for the import file, and more.</p>
-}
type alias ImportTask =
    { importTaskId : Maybe String
    , clientRequestToken : Maybe String
    , name : Maybe String
    , importUrl : Maybe String
    , status : Maybe ImportStatus
    , importRequestTime : Maybe Posix
    , importCompletionTime : Maybe Posix
    , importDeletedTime : Maybe Posix
    , serverImportSuccess : Maybe Int
    , serverImportFailure : Maybe Int
    , applicationImportSuccess : Maybe Int
    , applicationImportFailure : Maybe Int
    , errorsAndFailedEntriesZip : Maybe String
    }



importTaskDecoder : JD.Decoder ImportTask
importTaskDecoder =
    JD.succeed ImportTask
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["importTaskId", "ImportTaskId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["clientRequestToken", "ClientRequestToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["importUrl", "ImportUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            importStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["importRequestTime", "ImportRequestTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["importCompletionTime", "ImportCompletionTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["importDeletedTime", "ImportDeletedTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverImportSuccess", "ServerImportSuccess"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverImportFailure", "ServerImportFailure"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["applicationImportSuccess", "ApplicationImportSuccess"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["applicationImportFailure", "ApplicationImportFailure"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errorsAndFailedEntriesZip", "ErrorsAndFailedEntriesZip"]
            JD.string
        )
        




importTaskToString : ImportTask -> String -- List (String, String)
importTaskToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "importTaskId" "" -- val.importTaskId
        
    --     |> Dict.insert
    --         "clientRequestToken" "" -- val.clientRequestToken
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "importUrl" "" -- val.importUrl
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "importRequestTime" "" -- val.importRequestTime
        
    --     |> Dict.insert
    --         "importCompletionTime" "" -- val.importCompletionTime
        
    --     |> Dict.insert
    --         "importDeletedTime" "" -- val.importDeletedTime
        
    --     |> Dict.insert
    --         "serverImportSuccess" "" -- val.serverImportSuccess
        
    --     |> Dict.insert
    --         "serverImportFailure" "" -- val.serverImportFailure
        
    --     |> Dict.insert
    --         "applicationImportSuccess" "" -- val.applicationImportSuccess
        
    --     |> Dict.insert
    --         "applicationImportFailure" "" -- val.applicationImportFailure
        
    --     |> Dict.insert
    --         "errorsAndFailedEntriesZip" "" -- val.errorsAndFailedEntriesZip
        
    --     |> Dict.toList
    ""



{-| <p>A name-values pair of elements you can use to filter the results when querying your import tasks. Currently, wildcards are not supported for filters.</p> <note> <p>When filtering by import status, all other filter values are ignored.</p> </note>
-}
type alias ImportTaskFilter =
    { name : Maybe ImportTaskFilterName
    , values : Maybe (List String)
    }



importTaskFilterDecoder : JD.Decoder ImportTaskFilter
importTaskFilterDecoder =
    JD.succeed ImportTaskFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            importTaskFilterNameDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["values", "Values"]
            (JD.list JD.string)
        )
        




importTaskFilterToString : ImportTaskFilter -> String -- List (String, String)
importTaskFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| One of

* `ImportTaskFilterName_IMPORT_TASK_ID`
* `ImportTaskFilterName_STATUS`
* `ImportTaskFilterName_NAME`

-}
type ImportTaskFilterName
    = ImportTaskFilterName_IMPORT_TASK_ID
    | ImportTaskFilterName_STATUS
    | ImportTaskFilterName_NAME



importTaskFilterNameDecoder : JD.Decoder ImportTaskFilterName
importTaskFilterNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IMPORT_TASK_ID" ->
                        JD.succeed ImportTaskFilterName_IMPORT_TASK_ID

                    "STATUS" ->
                        JD.succeed ImportTaskFilterName_STATUS

                    "NAME" ->
                        JD.succeed ImportTaskFilterName_NAME


                    _ ->
                        JD.fail "bad thing"
            )




importTaskFilterNameToString : ImportTaskFilterName -> String
importTaskFilterNameToString val =
    case val of
        ImportTaskFilterName_IMPORT_TASK_ID ->
            "IMPORT_TASK_ID"

        ImportTaskFilterName_STATUS ->
            "STATUS"

        ImportTaskFilterName_NAME ->
            "NAME"




{-| Type of HTTP response from listConfigurations
-}
type alias ListConfigurationsResponse =
    { configurations : Maybe (List (Dict String String))
    , nextToken : Maybe String
    }



listConfigurationsResponseDecoder : JD.Decoder ListConfigurationsResponse
listConfigurationsResponseDecoder =
    JD.succeed ListConfigurationsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["configurations", "Configurations"]
            (JD.list (AWS.Core.Decode.dict JD.string))
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listConfigurationsResponseToString : ListConfigurationsResponse -> String -- List (String, String)
listConfigurationsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "configurations" "" -- val.configurations
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listServerNeighbors
-}
type alias ListServerNeighborsResponse =
    { neighbors : (List NeighborConnectionDetail)
    , nextToken : Maybe String
    , knownDependencyCount : Maybe Int
    }



listServerNeighborsResponseDecoder : JD.Decoder ListServerNeighborsResponse
listServerNeighborsResponseDecoder =
    JD.succeed ListServerNeighborsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["neighbors", "Neighbors"]
            (JD.list neighborConnectionDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["knownDependencyCount", "KnownDependencyCount"]
            JD.int
        )
        




listServerNeighborsResponseToString : ListServerNeighborsResponse -> String -- List (String, String)
listServerNeighborsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "neighbors" "" -- val.neighbors
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "knownDependencyCount" "" -- val.knownDependencyCount
        
    --     |> Dict.toList
    ""



{-| <p>Details about neighboring servers.</p>
-}
type alias NeighborConnectionDetail =
    { sourceServerId : String
    , destinationServerId : String
    , destinationPort : Maybe Int
    , transportProtocol : Maybe String
    , connectionsCount : Int
    }



neighborConnectionDetailDecoder : JD.Decoder NeighborConnectionDetail
neighborConnectionDetailDecoder =
    JD.succeed NeighborConnectionDetail
        
        |> JDP.custom (AWS.Core.Decode.required
            ["sourceServerId", "SourceServerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["destinationServerId", "DestinationServerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destinationPort", "DestinationPort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["transportProtocol", "TransportProtocol"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["connectionsCount", "ConnectionsCount"]
            JD.int
        )
        




neighborConnectionDetailToString : NeighborConnectionDetail -> String -- List (String, String)
neighborConnectionDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sourceServerId" "" -- val.sourceServerId
        
    --     |> Dict.insert
    --         "destinationServerId" "" -- val.destinationServerId
        
    --     |> Dict.insert
    --         "destinationPort" "" -- val.destinationPort
        
    --     |> Dict.insert
    --         "transportProtocol" "" -- val.transportProtocol
        
    --     |> Dict.insert
    --         "connectionsCount" "" -- val.connectionsCount
        
    --     |> Dict.toList
    ""



{-| <p>A field and direction for ordered output.</p>
-}
type alias OrderByElement =
    { fieldName : String
    , sortOrder : Maybe OrderString
    }



orderByElementDecoder : JD.Decoder OrderByElement
orderByElementDecoder =
    JD.succeed OrderByElement
        
        |> JDP.custom (AWS.Core.Decode.required
            ["fieldName", "FieldName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sortOrder", "SortOrder"]
            orderStringDecoder
        )
        




orderByElementToString : OrderByElement -> String -- List (String, String)
orderByElementToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fieldName" "" -- val.fieldName
        
    --     |> Dict.insert
    --         "sortOrder" "" -- val.sortOrder
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startContinuousExport
-}
type alias StartContinuousExportResponse =
    { exportId : Maybe String
    , s3Bucket : Maybe String
    , startTime : Maybe Posix
    , dataSource : Maybe DataSource
    , schemaStorageConfig : Maybe (Dict String String)
    }



startContinuousExportResponseDecoder : JD.Decoder StartContinuousExportResponse
startContinuousExportResponseDecoder =
    JD.succeed StartContinuousExportResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["exportId", "ExportId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["s3Bucket", "S3Bucket"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["startTime", "StartTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["dataSource", "DataSource"]
            dataSourceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["schemaStorageConfig", "SchemaStorageConfig"]
            (AWS.Core.Decode.dict JD.string)
        )
        




startContinuousExportResponseToString : StartContinuousExportResponse -> String -- List (String, String)
startContinuousExportResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "exportId" "" -- val.exportId
        
    --     |> Dict.insert
    --         "s3Bucket" "" -- val.s3Bucket
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "dataSource" "" -- val.dataSource
        
    --     |> Dict.insert
    --         "schemaStorageConfig" "" -- val.schemaStorageConfig
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startDataCollectionByAgentIds
-}
type alias StartDataCollectionByAgentIdsResponse =
    { agentsConfigurationStatus : Maybe (List AgentConfigurationStatus)
    }



startDataCollectionByAgentIdsResponseDecoder : JD.Decoder StartDataCollectionByAgentIdsResponse
startDataCollectionByAgentIdsResponseDecoder =
    JD.succeed StartDataCollectionByAgentIdsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["agentsConfigurationStatus", "AgentsConfigurationStatus"]
            (JD.list agentConfigurationStatusDecoder)
        )
        




startDataCollectionByAgentIdsResponseToString : StartDataCollectionByAgentIdsResponse -> String -- List (String, String)
startDataCollectionByAgentIdsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "agentsConfigurationStatus" "" -- val.agentsConfigurationStatus
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startExportTask
-}
type alias StartExportTaskResponse =
    { exportId : Maybe String
    }



startExportTaskResponseDecoder : JD.Decoder StartExportTaskResponse
startExportTaskResponseDecoder =
    JD.succeed StartExportTaskResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["exportId", "ExportId"]
            JD.string
        )
        




startExportTaskResponseToString : StartExportTaskResponse -> String -- List (String, String)
startExportTaskResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "exportId" "" -- val.exportId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startImportTask
-}
type alias StartImportTaskResponse =
    { task : Maybe ImportTask
    }



startImportTaskResponseDecoder : JD.Decoder StartImportTaskResponse
startImportTaskResponseDecoder =
    JD.succeed StartImportTaskResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["task", "Task"]
            importTaskDecoder
        )
        




startImportTaskResponseToString : StartImportTaskResponse -> String -- List (String, String)
startImportTaskResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "task" "" -- val.task
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopContinuousExport
-}
type alias StopContinuousExportResponse =
    { startTime : Maybe Posix
    , stopTime : Maybe Posix
    }



stopContinuousExportResponseDecoder : JD.Decoder StopContinuousExportResponse
stopContinuousExportResponseDecoder =
    JD.succeed StopContinuousExportResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["startTime", "StartTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stopTime", "StopTime"]
            JDX.datetime
        )
        




stopContinuousExportResponseToString : StopContinuousExportResponse -> String -- List (String, String)
stopContinuousExportResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "stopTime" "" -- val.stopTime
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopDataCollectionByAgentIds
-}
type alias StopDataCollectionByAgentIdsResponse =
    { agentsConfigurationStatus : Maybe (List AgentConfigurationStatus)
    }



stopDataCollectionByAgentIdsResponseDecoder : JD.Decoder StopDataCollectionByAgentIdsResponse
stopDataCollectionByAgentIdsResponseDecoder =
    JD.succeed StopDataCollectionByAgentIdsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["agentsConfigurationStatus", "AgentsConfigurationStatus"]
            (JD.list agentConfigurationStatusDecoder)
        )
        




stopDataCollectionByAgentIdsResponseToString : StopDataCollectionByAgentIdsResponse -> String -- List (String, String)
stopDataCollectionByAgentIdsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "agentsConfigurationStatus" "" -- val.agentsConfigurationStatus
        
    --     |> Dict.toList
    ""



{-| <p>Metadata that help you categorize IT assets.</p>
-}
type alias Tag =
    { key : String
    , value : String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.required
            ["key", "Key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["value", "Value"]
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



{-| <p>The tag filter. Valid names are: <code>tagKey</code>, <code>tagValue</code>, <code>configurationId</code>.</p>
-}
type alias TagFilter =
    { name : String
    , values : (List String)
    }



tagFilterDecoder : JD.Decoder TagFilter
tagFilterDecoder =
    JD.succeed TagFilter
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["values", "Values"]
            (JD.list JD.string)
        )
        




tagFilterToString : TagFilter -> String -- List (String, String)
tagFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateApplication
-}
type alias UpdateApplicationResponse =
    { 
    }



updateApplicationResponseDecoder : JD.Decoder UpdateApplicationResponse
updateApplicationResponseDecoder =
    JD.succeed UpdateApplicationResponse
        




updateApplicationResponseToString : UpdateApplicationResponse -> String -- List (String, String)
updateApplicationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `OrderString_ASC`
* `OrderString_DESC`

-}
type OrderString
    = OrderString_ASC
    | OrderString_DESC



orderStringDecoder : JD.Decoder OrderString
orderStringDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASC" ->
                        JD.succeed OrderString_ASC

                    "DESC" ->
                        JD.succeed OrderString_DESC


                    _ ->
                        JD.fail "bad thing"
            )




orderStringToString : OrderString -> String
orderStringToString val =
    case val of
        OrderString_ASC ->
            "ASC"

        OrderString_DESC ->
            "DESC"







{-| undefined
-}
type alias AssociateConfigurationItemsToApplicationRequest =
    { applicationConfigurationId : String
    , configurationIds : (List String)
    }


{-| undefined
-}
type alias BatchDeleteImportDataRequest =
    { importTaskIds : (List String)
    }


{-| undefined
-}
type alias CreateApplicationRequest =
    { name : String
    , description : Maybe String
    }


{-| undefined
-}
type alias CreateTagsRequest =
    { configurationIds : (List String)
    , tags : (List Tag)
    }


{-| undefined
-}
type alias DeleteApplicationsRequest =
    { configurationIds : (List String)
    }


{-| undefined
-}
type alias DeleteTagsRequest =
    { configurationIds : (List String)
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias DescribeAgentsRequest =
    { agentIds : Maybe (List String)
    , filters : Maybe (List Filter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeConfigurationsRequest =
    { configurationIds : (List String)
    }


{-| undefined
-}
type alias DescribeContinuousExportsRequest =
    { exportIds : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeExportConfigurationsRequest =
    { exportIds : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeExportTasksRequest =
    { exportIds : Maybe (List String)
    , filters : Maybe (List ExportFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeImportTasksRequest =
    { filters : Maybe (List ImportTaskFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeTagsRequest =
    { filters : Maybe (List TagFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DisassociateConfigurationItemsFromApplicationRequest =
    { applicationConfigurationId : String
    , configurationIds : (List String)
    }


{-| undefined
-}
type alias GetDiscoverySummaryRequest =
    { 
    }


{-| undefined
-}
type alias ListConfigurationsRequest =
    { configurationType : ConfigurationItemType
    , filters : Maybe (List Filter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    , orderBy : Maybe (List OrderByElement)
    }


{-| undefined
-}
type alias ListServerNeighborsRequest =
    { configurationId : String
    , portInformationNeeded : Maybe Bool
    , neighborConfigurationIds : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias StartContinuousExportRequest =
    { 
    }


{-| undefined
-}
type alias StartDataCollectionByAgentIdsRequest =
    { agentIds : (List String)
    }


{-| undefined
-}
type alias StartExportTaskRequest =
    { exportDataFormat : Maybe (List ExportDataFormat)
    , filters : Maybe (List ExportFilter)
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    }


{-| undefined
-}
type alias StartImportTaskRequest =
    { clientRequestToken : Maybe String
    , name : String
    , importUrl : String
    }


{-| undefined
-}
type alias StopContinuousExportRequest =
    { exportId : String
    }


{-| undefined
-}
type alias StopDataCollectionByAgentIdsRequest =
    { agentIds : (List String)
    }


{-| undefined
-}
type alias UpdateApplicationRequest =
    { configurationId : String
    , name : Maybe String
    , description : Maybe String
    }






agentConfigurationStatusEncoder : AgentConfigurationStatus -> JE.Value
agentConfigurationStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("agentId", data.agentId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("operationSucceeded", data.operationSucceeded)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        |> JE.object






agentInfoEncoder : AgentInfo -> JE.Value
agentInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("agentId", data.agentId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("hostName", data.hostName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (agentNetworkInfoEncoder))
            ("agentNetworkInfoList", data.agentNetworkInfoList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("connectorId", data.connectorId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (agentStatusToString >> JE.string)
            ("health", data.health)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lastHealthPingTime", data.lastHealthPingTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("collectionStatus", data.collectionStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("agentType", data.agentType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registeredTime", data.registeredTime)
        
        
        |> JE.object






agentNetworkInfoEncoder : AgentNetworkInfo -> JE.Value
agentNetworkInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ipAddress", data.ipAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("macAddress", data.macAddress)
        
        
        |> JE.object










associateConfigurationItemsToApplicationRequestEncoder : AssociateConfigurationItemsToApplicationRequest -> JE.Value
associateConfigurationItemsToApplicationRequestEncoder data =
    []
        
        
        |> (::) ("applicationConfigurationId", data.applicationConfigurationId |> (JE.string))
        
        
        
        |> (::) ("configurationIds", data.configurationIds |> (JE.list (JE.string)))
        
        
        |> JE.object






associateConfigurationItemsToApplicationResponseEncoder : AssociateConfigurationItemsToApplicationResponse -> JE.Value
associateConfigurationItemsToApplicationResponseEncoder data =
    []
        
        |> JE.object






batchDeleteImportDataErrorEncoder : BatchDeleteImportDataError -> JE.Value
batchDeleteImportDataErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("importTaskId", data.importTaskId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (batchDeleteImportDataErrorCodeToString >> JE.string)
            ("errorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("errorDescription", data.errorDescription)
        
        
        |> JE.object










batchDeleteImportDataRequestEncoder : BatchDeleteImportDataRequest -> JE.Value
batchDeleteImportDataRequestEncoder data =
    []
        
        
        |> (::) ("importTaskIds", data.importTaskIds |> (JE.list (JE.string)))
        
        
        |> JE.object






batchDeleteImportDataResponseEncoder : BatchDeleteImportDataResponse -> JE.Value
batchDeleteImportDataResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (batchDeleteImportDataErrorEncoder))
            ("errors", data.errors)
        
        
        |> JE.object










configurationTagEncoder : ConfigurationTag -> JE.Value
configurationTagEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (configurationItemTypeToString >> JE.string)
            ("configurationType", data.configurationType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("configurationId", data.configurationId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("timeOfCreation", data.timeOfCreation)
        
        
        |> JE.object






continuousExportDescriptionEncoder : ContinuousExportDescription -> JE.Value
continuousExportDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("exportId", data.exportId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (continuousExportStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("statusDetail", data.statusDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("s3Bucket", data.s3Bucket)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("startTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("stopTime", data.stopTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (dataSourceToString >> JE.string)
            ("dataSource", data.dataSource)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("schemaStorageConfig", data.schemaStorageConfig)
        
        
        |> JE.object










createApplicationRequestEncoder : CreateApplicationRequest -> JE.Value
createApplicationRequestEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        |> JE.object






createApplicationResponseEncoder : CreateApplicationResponse -> JE.Value
createApplicationResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("configurationId", data.configurationId)
        
        
        |> JE.object






createTagsRequestEncoder : CreateTagsRequest -> JE.Value
createTagsRequestEncoder data =
    []
        
        
        |> (::) ("configurationIds", data.configurationIds |> (JE.list (JE.string)))
        
        
        
        |> (::) ("tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object






createTagsResponseEncoder : CreateTagsResponse -> JE.Value
createTagsResponseEncoder data =
    []
        
        |> JE.object






customerAgentInfoEncoder : CustomerAgentInfo -> JE.Value
customerAgentInfoEncoder data =
    []
        
        
        |> (::) ("activeAgents", data.activeAgents |> (JE.int))
        
        
        
        |> (::) ("healthyAgents", data.healthyAgents |> (JE.int))
        
        
        
        |> (::) ("blackListedAgents", data.blackListedAgents |> (JE.int))
        
        
        
        |> (::) ("shutdownAgents", data.shutdownAgents |> (JE.int))
        
        
        
        |> (::) ("unhealthyAgents", data.unhealthyAgents |> (JE.int))
        
        
        
        |> (::) ("totalAgents", data.totalAgents |> (JE.int))
        
        
        
        |> (::) ("unknownAgents", data.unknownAgents |> (JE.int))
        
        
        |> JE.object






customerConnectorInfoEncoder : CustomerConnectorInfo -> JE.Value
customerConnectorInfoEncoder data =
    []
        
        
        |> (::) ("activeConnectors", data.activeConnectors |> (JE.int))
        
        
        
        |> (::) ("healthyConnectors", data.healthyConnectors |> (JE.int))
        
        
        
        |> (::) ("blackListedConnectors", data.blackListedConnectors |> (JE.int))
        
        
        
        |> (::) ("shutdownConnectors", data.shutdownConnectors |> (JE.int))
        
        
        
        |> (::) ("unhealthyConnectors", data.unhealthyConnectors |> (JE.int))
        
        
        
        |> (::) ("totalConnectors", data.totalConnectors |> (JE.int))
        
        
        
        |> (::) ("unknownConnectors", data.unknownConnectors |> (JE.int))
        
        
        |> JE.object










deleteApplicationsRequestEncoder : DeleteApplicationsRequest -> JE.Value
deleteApplicationsRequestEncoder data =
    []
        
        
        |> (::) ("configurationIds", data.configurationIds |> (JE.list (JE.string)))
        
        
        |> JE.object






deleteApplicationsResponseEncoder : DeleteApplicationsResponse -> JE.Value
deleteApplicationsResponseEncoder data =
    []
        
        |> JE.object






deleteTagsRequestEncoder : DeleteTagsRequest -> JE.Value
deleteTagsRequestEncoder data =
    []
        
        
        |> (::) ("configurationIds", data.configurationIds |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






deleteTagsResponseEncoder : DeleteTagsResponse -> JE.Value
deleteTagsResponseEncoder data =
    []
        
        |> JE.object






describeAgentsRequestEncoder : DescribeAgentsRequest -> JE.Value
describeAgentsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("agentIds", data.agentIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (filterEncoder))
            ("filters", data.filters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeAgentsResponseEncoder : DescribeAgentsResponse -> JE.Value
describeAgentsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (agentInfoEncoder))
            ("agentsInfo", data.agentsInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeConfigurationsRequestEncoder : DescribeConfigurationsRequest -> JE.Value
describeConfigurationsRequestEncoder data =
    []
        
        
        |> (::) ("configurationIds", data.configurationIds |> (JE.list (JE.string)))
        
        
        |> JE.object






describeConfigurationsResponseEncoder : DescribeConfigurationsResponse -> JE.Value
describeConfigurationsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.dict identity (JE.string)))
            ("configurations", data.configurations)
        
        
        |> JE.object






describeContinuousExportsRequestEncoder : DescribeContinuousExportsRequest -> JE.Value
describeContinuousExportsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("exportIds", data.exportIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeContinuousExportsResponseEncoder : DescribeContinuousExportsResponse -> JE.Value
describeContinuousExportsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (continuousExportDescriptionEncoder))
            ("descriptions", data.descriptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeExportConfigurationsRequestEncoder : DescribeExportConfigurationsRequest -> JE.Value
describeExportConfigurationsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("exportIds", data.exportIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeExportConfigurationsResponseEncoder : DescribeExportConfigurationsResponse -> JE.Value
describeExportConfigurationsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (exportInfoEncoder))
            ("exportsInfo", data.exportsInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeExportTasksRequestEncoder : DescribeExportTasksRequest -> JE.Value
describeExportTasksRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("exportIds", data.exportIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (exportFilterEncoder))
            ("filters", data.filters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeExportTasksResponseEncoder : DescribeExportTasksResponse -> JE.Value
describeExportTasksResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (exportInfoEncoder))
            ("exportsInfo", data.exportsInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeImportTasksRequestEncoder : DescribeImportTasksRequest -> JE.Value
describeImportTasksRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (importTaskFilterEncoder))
            ("filters", data.filters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeImportTasksResponseEncoder : DescribeImportTasksResponse -> JE.Value
describeImportTasksResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (importTaskEncoder))
            ("tasks", data.tasks)
        
        
        |> JE.object






describeTagsRequestEncoder : DescribeTagsRequest -> JE.Value
describeTagsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagFilterEncoder))
            ("filters", data.filters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeTagsResponseEncoder : DescribeTagsResponse -> JE.Value
describeTagsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (configurationTagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






disassociateConfigurationItemsFromApplicationRequestEncoder : DisassociateConfigurationItemsFromApplicationRequest -> JE.Value
disassociateConfigurationItemsFromApplicationRequestEncoder data =
    []
        
        
        |> (::) ("applicationConfigurationId", data.applicationConfigurationId |> (JE.string))
        
        
        
        |> (::) ("configurationIds", data.configurationIds |> (JE.list (JE.string)))
        
        
        |> JE.object






disassociateConfigurationItemsFromApplicationResponseEncoder : DisassociateConfigurationItemsFromApplicationResponse -> JE.Value
disassociateConfigurationItemsFromApplicationResponseEncoder data =
    []
        
        |> JE.object






exportConfigurationsResponseEncoder : ExportConfigurationsResponse -> JE.Value
exportConfigurationsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("exportId", data.exportId)
        
        
        |> JE.object










exportFilterEncoder : ExportFilter -> JE.Value
exportFilterEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("values", data.values |> (JE.list (JE.string)))
        
        
        
        |> (::) ("condition", data.condition |> (JE.string))
        
        
        |> JE.object






exportInfoEncoder : ExportInfo -> JE.Value
exportInfoEncoder data =
    []
        
        
        |> (::) ("exportId", data.exportId |> (JE.string))
        
        
        
        |> (::) ("exportStatus", data.exportStatus |> (exportStatusToString >> JE.string))
        
        
        
        |> (::) ("statusMessage", data.statusMessage |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("configurationsDownloadUrl", data.configurationsDownloadUrl)
        
        
        
        |> (::) ("exportRequestTime", data.exportRequestTime |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isTruncated", data.isTruncated)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("requestedStartTime", data.requestedStartTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("requestedEndTime", data.requestedEndTime)
        
        
        |> JE.object










filterEncoder : Filter -> JE.Value
filterEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("values", data.values |> (JE.list (JE.string)))
        
        
        
        |> (::) ("condition", data.condition |> (JE.string))
        
        
        |> JE.object






getDiscoverySummaryRequestEncoder : GetDiscoverySummaryRequest -> JE.Value
getDiscoverySummaryRequestEncoder data =
    []
        
        |> JE.object






getDiscoverySummaryResponseEncoder : GetDiscoverySummaryResponse -> JE.Value
getDiscoverySummaryResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("servers", data.servers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("applications", data.applications)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("serversMappedToApplications", data.serversMappedToApplications)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("serversMappedtoTags", data.serversMappedtoTags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (customerAgentInfoEncoder)
            ("agentSummary", data.agentSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (customerConnectorInfoEncoder)
            ("connectorSummary", data.connectorSummary)
        
        
        |> JE.object










importTaskEncoder : ImportTask -> JE.Value
importTaskEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("importTaskId", data.importTaskId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("importUrl", data.importUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (importStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("importRequestTime", data.importRequestTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("importCompletionTime", data.importCompletionTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("importDeletedTime", data.importDeletedTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("serverImportSuccess", data.serverImportSuccess)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("serverImportFailure", data.serverImportFailure)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("applicationImportSuccess", data.applicationImportSuccess)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("applicationImportFailure", data.applicationImportFailure)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("errorsAndFailedEntriesZip", data.errorsAndFailedEntriesZip)
        
        
        |> JE.object






importTaskFilterEncoder : ImportTaskFilter -> JE.Value
importTaskFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (importTaskFilterNameToString >> JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("values", data.values)
        
        
        |> JE.object










listConfigurationsRequestEncoder : ListConfigurationsRequest -> JE.Value
listConfigurationsRequestEncoder data =
    []
        
        
        |> (::) ("configurationType", data.configurationType |> (configurationItemTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (filterEncoder))
            ("filters", data.filters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (orderByElementEncoder))
            ("orderBy", data.orderBy)
        
        
        |> JE.object






listConfigurationsResponseEncoder : ListConfigurationsResponse -> JE.Value
listConfigurationsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.dict identity (JE.string)))
            ("configurations", data.configurations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listServerNeighborsRequestEncoder : ListServerNeighborsRequest -> JE.Value
listServerNeighborsRequestEncoder data =
    []
        
        
        |> (::) ("configurationId", data.configurationId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("portInformationNeeded", data.portInformationNeeded)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("neighborConfigurationIds", data.neighborConfigurationIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listServerNeighborsResponseEncoder : ListServerNeighborsResponse -> JE.Value
listServerNeighborsResponseEncoder data =
    []
        
        
        |> (::) ("neighbors", data.neighbors |> (JE.list (neighborConnectionDetailEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("knownDependencyCount", data.knownDependencyCount)
        
        
        |> JE.object






neighborConnectionDetailEncoder : NeighborConnectionDetail -> JE.Value
neighborConnectionDetailEncoder data =
    []
        
        
        |> (::) ("sourceServerId", data.sourceServerId |> (JE.string))
        
        
        
        |> (::) ("destinationServerId", data.destinationServerId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("destinationPort", data.destinationPort)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("transportProtocol", data.transportProtocol)
        
        
        
        |> (::) ("connectionsCount", data.connectionsCount |> (JE.int))
        
        
        |> JE.object






orderByElementEncoder : OrderByElement -> JE.Value
orderByElementEncoder data =
    []
        
        
        |> (::) ("fieldName", data.fieldName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (orderStringToString >> JE.string)
            ("sortOrder", data.sortOrder)
        
        
        |> JE.object






startContinuousExportRequestEncoder : StartContinuousExportRequest -> JE.Value
startContinuousExportRequestEncoder data =
    []
        
        |> JE.object






startContinuousExportResponseEncoder : StartContinuousExportResponse -> JE.Value
startContinuousExportResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("exportId", data.exportId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("s3Bucket", data.s3Bucket)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("startTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (dataSourceToString >> JE.string)
            ("dataSource", data.dataSource)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("schemaStorageConfig", data.schemaStorageConfig)
        
        
        |> JE.object






startDataCollectionByAgentIdsRequestEncoder : StartDataCollectionByAgentIdsRequest -> JE.Value
startDataCollectionByAgentIdsRequestEncoder data =
    []
        
        
        |> (::) ("agentIds", data.agentIds |> (JE.list (JE.string)))
        
        
        |> JE.object






startDataCollectionByAgentIdsResponseEncoder : StartDataCollectionByAgentIdsResponse -> JE.Value
startDataCollectionByAgentIdsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (agentConfigurationStatusEncoder))
            ("agentsConfigurationStatus", data.agentsConfigurationStatus)
        
        
        |> JE.object






startExportTaskRequestEncoder : StartExportTaskRequest -> JE.Value
startExportTaskRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (exportDataFormatToString >> JE.string))
            ("exportDataFormat", data.exportDataFormat)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (exportFilterEncoder))
            ("filters", data.filters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("startTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("endTime", data.endTime)
        
        
        |> JE.object






startExportTaskResponseEncoder : StartExportTaskResponse -> JE.Value
startExportTaskResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("exportId", data.exportId)
        
        
        |> JE.object






startImportTaskRequestEncoder : StartImportTaskRequest -> JE.Value
startImportTaskRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("importUrl", data.importUrl |> (JE.string))
        
        
        |> JE.object






startImportTaskResponseEncoder : StartImportTaskResponse -> JE.Value
startImportTaskResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (importTaskEncoder)
            ("task", data.task)
        
        
        |> JE.object






stopContinuousExportRequestEncoder : StopContinuousExportRequest -> JE.Value
stopContinuousExportRequestEncoder data =
    []
        
        
        |> (::) ("exportId", data.exportId |> (JE.string))
        
        
        |> JE.object






stopContinuousExportResponseEncoder : StopContinuousExportResponse -> JE.Value
stopContinuousExportResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("startTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("stopTime", data.stopTime)
        
        
        |> JE.object






stopDataCollectionByAgentIdsRequestEncoder : StopDataCollectionByAgentIdsRequest -> JE.Value
stopDataCollectionByAgentIdsRequestEncoder data =
    []
        
        
        |> (::) ("agentIds", data.agentIds |> (JE.list (JE.string)))
        
        
        |> JE.object






stopDataCollectionByAgentIdsResponseEncoder : StopDataCollectionByAgentIdsResponse -> JE.Value
stopDataCollectionByAgentIdsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (agentConfigurationStatusEncoder))
            ("agentsConfigurationStatus", data.agentsConfigurationStatus)
        
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("key", data.key |> (JE.string))
        
        
        
        |> (::) ("value", data.value |> (JE.string))
        
        
        |> JE.object






tagFilterEncoder : TagFilter -> JE.Value
tagFilterEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("values", data.values |> (JE.list (JE.string)))
        
        
        |> JE.object






updateApplicationRequestEncoder : UpdateApplicationRequest -> JE.Value
updateApplicationRequestEncoder data =
    []
        
        
        |> (::) ("configurationId", data.configurationId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        |> JE.object






updateApplicationResponseEncoder : UpdateApplicationResponse -> JE.Value
updateApplicationResponseEncoder data =
    []
        
        |> JE.object









