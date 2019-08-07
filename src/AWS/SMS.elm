module AWS.SMS
    exposing
        ( service
        , createApp
        , CreateAppOptions
        , createReplicationJob
        , CreateReplicationJobOptions
        , deleteApp
        , DeleteAppOptions
        , deleteAppLaunchConfiguration
        , DeleteAppLaunchConfigurationOptions
        , deleteAppReplicationConfiguration
        , DeleteAppReplicationConfigurationOptions
        , deleteReplicationJob
        , deleteServerCatalog
        , disassociateConnector
        , generateChangeSet
        , GenerateChangeSetOptions
        , generateTemplate
        , GenerateTemplateOptions
        , getApp
        , GetAppOptions
        , getAppLaunchConfiguration
        , GetAppLaunchConfigurationOptions
        , getAppReplicationConfiguration
        , GetAppReplicationConfigurationOptions
        , getConnectors
        , GetConnectorsOptions
        , getReplicationJobs
        , GetReplicationJobsOptions
        , getReplicationRuns
        , GetReplicationRunsOptions
        , getServers
        , GetServersOptions
        , importServerCatalog
        , launchApp
        , LaunchAppOptions
        , listApps
        , ListAppsOptions
        , putAppLaunchConfiguration
        , PutAppLaunchConfigurationOptions
        , putAppReplicationConfiguration
        , PutAppReplicationConfigurationOptions
        , startAppReplication
        , StartAppReplicationOptions
        , startOnDemandReplicationRun
        , StartOnDemandReplicationRunOptions
        , stopAppReplication
        , StopAppReplicationOptions
        , terminateApp
        , TerminateAppOptions
        , updateApp
        , UpdateAppOptions
        , updateReplicationJob
        , UpdateReplicationJobOptions
        , AppLaunchStatus(..)
        , AppReplicationStatus(..)
        , AppStatus(..)
        , AppSummary
        , Connector
        , ConnectorCapability(..)
        , ConnectorStatus(..)
        , CreateAppResponse
        , CreateReplicationJobResponse
        , DeleteAppLaunchConfigurationResponse
        , DeleteAppReplicationConfigurationResponse
        , DeleteAppResponse
        , DeleteReplicationJobResponse
        , DeleteServerCatalogResponse
        , DisassociateConnectorResponse
        , GenerateChangeSetResponse
        , GenerateTemplateResponse
        , GetAppLaunchConfigurationResponse
        , GetAppReplicationConfigurationResponse
        , GetAppResponse
        , GetConnectorsResponse
        , GetReplicationJobsResponse
        , GetReplicationRunsResponse
        , GetServersResponse
        , ImportServerCatalogResponse
        , LaunchAppResponse
        , LaunchDetails
        , LicenseType(..)
        , ListAppsResponse
        , OutputFormat(..)
        , PutAppLaunchConfigurationResponse
        , PutAppReplicationConfigurationResponse
        , ReplicationJob
        , ReplicationJobState(..)
        , ReplicationRun
        , ReplicationRunStageDetails
        , ReplicationRunState(..)
        , ReplicationRunType(..)
        , S3Location
        , Server
        , ServerCatalogStatus(..)
        , ServerGroup
        , ServerGroupLaunchConfiguration
        , ServerGroupReplicationConfiguration
        , ServerLaunchConfiguration
        , ServerReplicationConfiguration
        , ServerReplicationParameters
        , ServerType(..)
        , StartAppReplicationResponse
        , StartOnDemandReplicationRunResponse
        , StopAppReplicationResponse
        , Tag
        , TerminateAppResponse
        , UpdateAppResponse
        , UpdateReplicationJobResponse
        , UserData
        , VmManagerType(..)
        , VmServer
        , VmServerAddress
        )

{-| <fullname>AAWS Sever Migration Service</fullname> <p>This is the <i>AWS Sever Migration Service API Reference</i>. It provides descriptions, syntax, and usage examples for each of the actions and data types for the AWS Sever Migration Service (AWS SMS). The topic for each action shows the Query API request parameters and the XML response. You can also view the XML request elements in the WSDL.</p> <p>Alternatively, you can use one of the AWS SDKs to access an API that's tailored to the programming language or platform that you're using. For more information, see <a href="http://aws.amazon.com/tools/#SDKs">AWS SDKs</a>.</p> <p>To learn more about the Server Migration Service, see the following resources:</p> <ul> <li> <p> <a href="https://aws.amazon.com/server-migration-service/">AWS Sever Migration Service product page</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/server-migration-service/latest/userguide/server-migration.html">AWS Sever Migration Service User Guide</a> </p> </li> </ul>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [createApp](#createApp)
* [CreateAppOptions](#CreateAppOptions)
* [createReplicationJob](#createReplicationJob)
* [CreateReplicationJobOptions](#CreateReplicationJobOptions)
* [deleteApp](#deleteApp)
* [DeleteAppOptions](#DeleteAppOptions)
* [deleteAppLaunchConfiguration](#deleteAppLaunchConfiguration)
* [DeleteAppLaunchConfigurationOptions](#DeleteAppLaunchConfigurationOptions)
* [deleteAppReplicationConfiguration](#deleteAppReplicationConfiguration)
* [DeleteAppReplicationConfigurationOptions](#DeleteAppReplicationConfigurationOptions)
* [deleteReplicationJob](#deleteReplicationJob)
* [deleteServerCatalog](#deleteServerCatalog)
* [disassociateConnector](#disassociateConnector)
* [generateChangeSet](#generateChangeSet)
* [GenerateChangeSetOptions](#GenerateChangeSetOptions)
* [generateTemplate](#generateTemplate)
* [GenerateTemplateOptions](#GenerateTemplateOptions)
* [getApp](#getApp)
* [GetAppOptions](#GetAppOptions)
* [getAppLaunchConfiguration](#getAppLaunchConfiguration)
* [GetAppLaunchConfigurationOptions](#GetAppLaunchConfigurationOptions)
* [getAppReplicationConfiguration](#getAppReplicationConfiguration)
* [GetAppReplicationConfigurationOptions](#GetAppReplicationConfigurationOptions)
* [getConnectors](#getConnectors)
* [GetConnectorsOptions](#GetConnectorsOptions)
* [getReplicationJobs](#getReplicationJobs)
* [GetReplicationJobsOptions](#GetReplicationJobsOptions)
* [getReplicationRuns](#getReplicationRuns)
* [GetReplicationRunsOptions](#GetReplicationRunsOptions)
* [getServers](#getServers)
* [GetServersOptions](#GetServersOptions)
* [importServerCatalog](#importServerCatalog)
* [launchApp](#launchApp)
* [LaunchAppOptions](#LaunchAppOptions)
* [listApps](#listApps)
* [ListAppsOptions](#ListAppsOptions)
* [putAppLaunchConfiguration](#putAppLaunchConfiguration)
* [PutAppLaunchConfigurationOptions](#PutAppLaunchConfigurationOptions)
* [putAppReplicationConfiguration](#putAppReplicationConfiguration)
* [PutAppReplicationConfigurationOptions](#PutAppReplicationConfigurationOptions)
* [startAppReplication](#startAppReplication)
* [StartAppReplicationOptions](#StartAppReplicationOptions)
* [startOnDemandReplicationRun](#startOnDemandReplicationRun)
* [StartOnDemandReplicationRunOptions](#StartOnDemandReplicationRunOptions)
* [stopAppReplication](#stopAppReplication)
* [StopAppReplicationOptions](#StopAppReplicationOptions)
* [terminateApp](#terminateApp)
* [TerminateAppOptions](#TerminateAppOptions)
* [updateApp](#updateApp)
* [UpdateAppOptions](#UpdateAppOptions)
* [updateReplicationJob](#updateReplicationJob)
* [UpdateReplicationJobOptions](#UpdateReplicationJobOptions)


@docs createApp,CreateAppOptions,createReplicationJob,CreateReplicationJobOptions,deleteApp,DeleteAppOptions,deleteAppLaunchConfiguration,DeleteAppLaunchConfigurationOptions,deleteAppReplicationConfiguration,DeleteAppReplicationConfigurationOptions,deleteReplicationJob,deleteServerCatalog,disassociateConnector,generateChangeSet,GenerateChangeSetOptions,generateTemplate,GenerateTemplateOptions,getApp,GetAppOptions,getAppLaunchConfiguration,GetAppLaunchConfigurationOptions,getAppReplicationConfiguration,GetAppReplicationConfigurationOptions,getConnectors,GetConnectorsOptions,getReplicationJobs,GetReplicationJobsOptions,getReplicationRuns,GetReplicationRunsOptions,getServers,GetServersOptions,importServerCatalog,launchApp,LaunchAppOptions,listApps,ListAppsOptions,putAppLaunchConfiguration,PutAppLaunchConfigurationOptions,putAppReplicationConfiguration,PutAppReplicationConfigurationOptions,startAppReplication,StartAppReplicationOptions,startOnDemandReplicationRun,StartOnDemandReplicationRunOptions,stopAppReplication,StopAppReplicationOptions,terminateApp,TerminateAppOptions,updateApp,UpdateAppOptions,updateReplicationJob,UpdateReplicationJobOptions

## Responses

* [CreateAppResponse](#CreateAppResponse)
* [CreateReplicationJobResponse](#CreateReplicationJobResponse)
* [DeleteAppLaunchConfigurationResponse](#DeleteAppLaunchConfigurationResponse)
* [DeleteAppReplicationConfigurationResponse](#DeleteAppReplicationConfigurationResponse)
* [DeleteAppResponse](#DeleteAppResponse)
* [DeleteReplicationJobResponse](#DeleteReplicationJobResponse)
* [DeleteServerCatalogResponse](#DeleteServerCatalogResponse)
* [DisassociateConnectorResponse](#DisassociateConnectorResponse)
* [GenerateChangeSetResponse](#GenerateChangeSetResponse)
* [GenerateTemplateResponse](#GenerateTemplateResponse)
* [GetAppLaunchConfigurationResponse](#GetAppLaunchConfigurationResponse)
* [GetAppReplicationConfigurationResponse](#GetAppReplicationConfigurationResponse)
* [GetAppResponse](#GetAppResponse)
* [GetConnectorsResponse](#GetConnectorsResponse)
* [GetReplicationJobsResponse](#GetReplicationJobsResponse)
* [GetReplicationRunsResponse](#GetReplicationRunsResponse)
* [GetServersResponse](#GetServersResponse)
* [ImportServerCatalogResponse](#ImportServerCatalogResponse)
* [LaunchAppResponse](#LaunchAppResponse)
* [ListAppsResponse](#ListAppsResponse)
* [PutAppLaunchConfigurationResponse](#PutAppLaunchConfigurationResponse)
* [PutAppReplicationConfigurationResponse](#PutAppReplicationConfigurationResponse)
* [StartAppReplicationResponse](#StartAppReplicationResponse)
* [StartOnDemandReplicationRunResponse](#StartOnDemandReplicationRunResponse)
* [StopAppReplicationResponse](#StopAppReplicationResponse)
* [TerminateAppResponse](#TerminateAppResponse)
* [UpdateAppResponse](#UpdateAppResponse)
* [UpdateReplicationJobResponse](#UpdateReplicationJobResponse)


@docs CreateAppResponse,CreateReplicationJobResponse,DeleteAppLaunchConfigurationResponse,DeleteAppReplicationConfigurationResponse,DeleteAppResponse,DeleteReplicationJobResponse,DeleteServerCatalogResponse,DisassociateConnectorResponse,GenerateChangeSetResponse,GenerateTemplateResponse,GetAppLaunchConfigurationResponse,GetAppReplicationConfigurationResponse,GetAppResponse,GetConnectorsResponse,GetReplicationJobsResponse,GetReplicationRunsResponse,GetServersResponse,ImportServerCatalogResponse,LaunchAppResponse,ListAppsResponse,PutAppLaunchConfigurationResponse,PutAppReplicationConfigurationResponse,StartAppReplicationResponse,StartOnDemandReplicationRunResponse,StopAppReplicationResponse,TerminateAppResponse,UpdateAppResponse,UpdateReplicationJobResponse

## Records

* [AppSummary](#AppSummary)
* [Connector](#Connector)
* [LaunchDetails](#LaunchDetails)
* [ReplicationJob](#ReplicationJob)
* [ReplicationRun](#ReplicationRun)
* [ReplicationRunStageDetails](#ReplicationRunStageDetails)
* [S3Location](#S3Location)
* [Server](#Server)
* [ServerGroup](#ServerGroup)
* [ServerGroupLaunchConfiguration](#ServerGroupLaunchConfiguration)
* [ServerGroupReplicationConfiguration](#ServerGroupReplicationConfiguration)
* [ServerLaunchConfiguration](#ServerLaunchConfiguration)
* [ServerReplicationConfiguration](#ServerReplicationConfiguration)
* [ServerReplicationParameters](#ServerReplicationParameters)
* [Tag](#Tag)
* [UserData](#UserData)
* [VmServer](#VmServer)
* [VmServerAddress](#VmServerAddress)


@docs AppSummary,Connector,LaunchDetails,ReplicationJob,ReplicationRun,ReplicationRunStageDetails,S3Location,Server,ServerGroup,ServerGroupLaunchConfiguration,ServerGroupReplicationConfiguration,ServerLaunchConfiguration,ServerReplicationConfiguration,ServerReplicationParameters,Tag,UserData,VmServer,VmServerAddress

## Unions

* [AppLaunchStatus](#AppLaunchStatus)
* [AppReplicationStatus](#AppReplicationStatus)
* [AppStatus](#AppStatus)
* [ConnectorCapability](#ConnectorCapability)
* [ConnectorStatus](#ConnectorStatus)
* [LicenseType](#LicenseType)
* [OutputFormat](#OutputFormat)
* [ReplicationJobState](#ReplicationJobState)
* [ReplicationRunState](#ReplicationRunState)
* [ReplicationRunType](#ReplicationRunType)
* [ServerCatalogStatus](#ServerCatalogStatus)
* [ServerType](#ServerType)
* [VmManagerType](#VmManagerType)


@docs AppLaunchStatus,AppReplicationStatus,AppStatus,ConnectorCapability,ConnectorStatus,LicenseType,OutputFormat,ReplicationJobState,ReplicationRunState,ReplicationRunType,ServerCatalogStatus,ServerType,VmManagerType

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE

import Time exposing (Posix)
import Iso8601
import Json.Decode.Extra as JDX


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "sms"
        "2016-10-24"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWSServerMigrationService_V2016_10_24")



-- OPERATIONS

{-| <p>Creates an application. An application consists of one or more server groups. Each server group contain one or more servers.</p>

__Required Parameters__



-}

createApp :
  
  
    ( CreateAppOptions -> CreateAppOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateAppResponse)

createApp setOptions =
    
    let
        requestInput = CreateAppRequest
            
            options.name
            
            options.description
            
            options.roleName
            
            options.clientToken
            
            options.serverGroups
            
            options.tags
            
        
        options = setOptions (CreateAppOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createAppRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateApp"
                
                (AWS.Core.Decode.ResultDecoder "CreateAppResponse" createAppResponseDecoder)
                
            )



{-| Options for a createApp request
-}
type alias CreateAppOptions =
    {
    name : Maybe String,description : Maybe String,roleName : Maybe String,clientToken : Maybe String,serverGroups : Maybe (List ServerGroup),tags : Maybe (List Tag)
    }



{-| <p>Creates a replication job. The replication job schedules periodic replication runs to replicate your server to AWS. Each replication run creates an Amazon Machine Image (AMI).</p>

__Required Parameters__

* `serverId` __:__ `String`
* `seedReplicationTime` __:__ `Posix`


-}

createReplicationJob :
  
    String ->
  
    Posix ->
  
  
    ( CreateReplicationJobOptions -> CreateReplicationJobOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateReplicationJobResponse)

createReplicationJob serverId seedReplicationTime setOptions =
    
    let
        requestInput = CreateReplicationJobRequest
            
            serverId
            
            seedReplicationTime
            
            options.frequency
            
            options.runOnce
            
            options.licenseType
            
            options.roleName
            
            options.description
            
            options.numberOfRecentAmisToKeep
            
            options.encrypted
            
            options.kmsKeyId
            
        
        options = setOptions (CreateReplicationJobOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createReplicationJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateReplicationJob"
                
                (AWS.Core.Decode.ResultDecoder "CreateReplicationJobResponse" createReplicationJobResponseDecoder)
                
            )



{-| Options for a createReplicationJob request
-}
type alias CreateReplicationJobOptions =
    {
    frequency : Maybe Int,runOnce : Maybe Bool,licenseType : Maybe LicenseType,roleName : Maybe String,description : Maybe String,numberOfRecentAmisToKeep : Maybe Int,encrypted : Maybe Bool,kmsKeyId : Maybe String
    }



{-| <p>Deletes an existing application. Optionally deletes the launched stack associated with the application and all AWS SMS replication jobs for servers in the application.</p>

__Required Parameters__



-}

deleteApp :
  
  
    ( DeleteAppOptions -> DeleteAppOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteAppResponse)

deleteApp setOptions =
    
    let
        requestInput = DeleteAppRequest
            
            options.appId
            
            options.forceStopAppReplication
            
            options.forceTerminateApp
            
        
        options = setOptions (DeleteAppOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteAppRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteApp"
                
                (AWS.Core.Decode.ResultDecoder "DeleteAppResponse" deleteAppResponseDecoder)
                
            )



{-| Options for a deleteApp request
-}
type alias DeleteAppOptions =
    {
    appId : Maybe String,forceStopAppReplication : Maybe Bool,forceTerminateApp : Maybe Bool
    }



{-| <p>Deletes existing launch configuration for an application.</p>

__Required Parameters__



-}

deleteAppLaunchConfiguration :
  
  
    ( DeleteAppLaunchConfigurationOptions -> DeleteAppLaunchConfigurationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteAppLaunchConfigurationResponse)

deleteAppLaunchConfiguration setOptions =
    
    let
        requestInput = DeleteAppLaunchConfigurationRequest
            
            options.appId
            
        
        options = setOptions (DeleteAppLaunchConfigurationOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteAppLaunchConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteAppLaunchConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "DeleteAppLaunchConfigurationResponse" deleteAppLaunchConfigurationResponseDecoder)
                
            )



{-| Options for a deleteAppLaunchConfiguration request
-}
type alias DeleteAppLaunchConfigurationOptions =
    {
    appId : Maybe String
    }



{-| <p>Deletes existing replication configuration for an application.</p>

__Required Parameters__



-}

deleteAppReplicationConfiguration :
  
  
    ( DeleteAppReplicationConfigurationOptions -> DeleteAppReplicationConfigurationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteAppReplicationConfigurationResponse)

deleteAppReplicationConfiguration setOptions =
    
    let
        requestInput = DeleteAppReplicationConfigurationRequest
            
            options.appId
            
        
        options = setOptions (DeleteAppReplicationConfigurationOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteAppReplicationConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteAppReplicationConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "DeleteAppReplicationConfigurationResponse" deleteAppReplicationConfigurationResponseDecoder)
                
            )



{-| Options for a deleteAppReplicationConfiguration request
-}
type alias DeleteAppReplicationConfigurationOptions =
    {
    appId : Maybe String
    }



{-| <p>Deletes the specified replication job.</p> <p>After you delete a replication job, there are no further replication runs. AWS deletes the contents of the Amazon S3 bucket used to store AWS SMS artifacts. The AMIs created by the replication runs are not deleted.</p>

__Required Parameters__

* `replicationJobId` __:__ `String`


-}

deleteReplicationJob :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteReplicationJobResponse)

deleteReplicationJob replicationJobId =
    
    let
        requestInput = DeleteReplicationJobRequest
            
            replicationJobId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteReplicationJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteReplicationJob"
                
                (AWS.Core.Decode.ResultDecoder "DeleteReplicationJobResponse" deleteReplicationJobResponseDecoder)
                
            )





{-| <p>Deletes all servers from your server catalog.</p>

__Required Parameters__



-}

deleteServerCatalog :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteServerCatalogResponse)

deleteServerCatalog =
    
    let
        requestInput = DeleteServerCatalogRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteServerCatalogRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteServerCatalog"
                
                (AWS.Core.Decode.ResultDecoder "DeleteServerCatalogResponse" deleteServerCatalogResponseDecoder)
                
            )





{-| <p>Disassociates the specified connector from AWS SMS.</p> <p>After you disassociate a connector, it is no longer available to support replication jobs.</p>

__Required Parameters__

* `connectorId` __:__ `String`


-}

disassociateConnector :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateConnectorResponse)

disassociateConnector connectorId =
    
    let
        requestInput = DisassociateConnectorRequest
            
            connectorId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disassociateConnectorRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisassociateConnector"
                
                (AWS.Core.Decode.ResultDecoder "DisassociateConnectorResponse" disassociateConnectorResponseDecoder)
                
            )





{-| <p>Generates a target change set for a currently launched stack and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.</p>

__Required Parameters__



-}

generateChangeSet :
  
  
    ( GenerateChangeSetOptions -> GenerateChangeSetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GenerateChangeSetResponse)

generateChangeSet setOptions =
    
    let
        requestInput = GenerateChangeSetRequest
            
            options.appId
            
            options.changesetFormat
            
        
        options = setOptions (GenerateChangeSetOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> generateChangeSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GenerateChangeSet"
                
                (AWS.Core.Decode.ResultDecoder "GenerateChangeSetResponse" generateChangeSetResponseDecoder)
                
            )



{-| Options for a generateChangeSet request
-}
type alias GenerateChangeSetOptions =
    {
    appId : Maybe String,changesetFormat : Maybe OutputFormat
    }



{-| <p>Generates an Amazon CloudFormation template based on the current launch configuration and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.</p>

__Required Parameters__



-}

generateTemplate :
  
  
    ( GenerateTemplateOptions -> GenerateTemplateOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GenerateTemplateResponse)

generateTemplate setOptions =
    
    let
        requestInput = GenerateTemplateRequest
            
            options.appId
            
            options.templateFormat
            
        
        options = setOptions (GenerateTemplateOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> generateTemplateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GenerateTemplate"
                
                (AWS.Core.Decode.ResultDecoder "GenerateTemplateResponse" generateTemplateResponseDecoder)
                
            )



{-| Options for a generateTemplate request
-}
type alias GenerateTemplateOptions =
    {
    appId : Maybe String,templateFormat : Maybe OutputFormat
    }



{-| <p>Retrieve information about an application.</p>

__Required Parameters__



-}

getApp :
  
  
    ( GetAppOptions -> GetAppOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAppResponse)

getApp setOptions =
    
    let
        requestInput = GetAppRequest
            
            options.appId
            
        
        options = setOptions (GetAppOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getAppRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetApp"
                
                (AWS.Core.Decode.ResultDecoder "GetAppResponse" getAppResponseDecoder)
                
            )



{-| Options for a getApp request
-}
type alias GetAppOptions =
    {
    appId : Maybe String
    }



{-| <p>Retrieves the application launch configuration associated with an application.</p>

__Required Parameters__



-}

getAppLaunchConfiguration :
  
  
    ( GetAppLaunchConfigurationOptions -> GetAppLaunchConfigurationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAppLaunchConfigurationResponse)

getAppLaunchConfiguration setOptions =
    
    let
        requestInput = GetAppLaunchConfigurationRequest
            
            options.appId
            
        
        options = setOptions (GetAppLaunchConfigurationOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getAppLaunchConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetAppLaunchConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "GetAppLaunchConfigurationResponse" getAppLaunchConfigurationResponseDecoder)
                
            )



{-| Options for a getAppLaunchConfiguration request
-}
type alias GetAppLaunchConfigurationOptions =
    {
    appId : Maybe String
    }



{-| <p>Retrieves an application replication configuration associatd with an application.</p>

__Required Parameters__



-}

getAppReplicationConfiguration :
  
  
    ( GetAppReplicationConfigurationOptions -> GetAppReplicationConfigurationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAppReplicationConfigurationResponse)

getAppReplicationConfiguration setOptions =
    
    let
        requestInput = GetAppReplicationConfigurationRequest
            
            options.appId
            
        
        options = setOptions (GetAppReplicationConfigurationOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getAppReplicationConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetAppReplicationConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "GetAppReplicationConfigurationResponse" getAppReplicationConfigurationResponseDecoder)
                
            )



{-| Options for a getAppReplicationConfiguration request
-}
type alias GetAppReplicationConfigurationOptions =
    {
    appId : Maybe String
    }



{-| <p>Describes the connectors registered with the AWS SMS.</p>

__Required Parameters__



-}

getConnectors :
  
  
    ( GetConnectorsOptions -> GetConnectorsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetConnectorsResponse)

getConnectors setOptions =
    
    let
        requestInput = GetConnectorsRequest
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (GetConnectorsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getConnectorsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetConnectors"
                
                (AWS.Core.Decode.ResultDecoder "GetConnectorsResponse" getConnectorsResponseDecoder)
                
            )



{-| Options for a getConnectors request
-}
type alias GetConnectorsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Describes the specified replication job or all of your replication jobs.</p>

__Required Parameters__



-}

getReplicationJobs :
  
  
    ( GetReplicationJobsOptions -> GetReplicationJobsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetReplicationJobsResponse)

getReplicationJobs setOptions =
    
    let
        requestInput = GetReplicationJobsRequest
            
            options.replicationJobId
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (GetReplicationJobsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getReplicationJobsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetReplicationJobs"
                
                (AWS.Core.Decode.ResultDecoder "GetReplicationJobsResponse" getReplicationJobsResponseDecoder)
                
            )



{-| Options for a getReplicationJobs request
-}
type alias GetReplicationJobsOptions =
    {
    replicationJobId : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Describes the replication runs for the specified replication job.</p>

__Required Parameters__

* `replicationJobId` __:__ `String`


-}

getReplicationRuns :
  
    String ->
  
  
    ( GetReplicationRunsOptions -> GetReplicationRunsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetReplicationRunsResponse)

getReplicationRuns replicationJobId setOptions =
    
    let
        requestInput = GetReplicationRunsRequest
            
            replicationJobId
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (GetReplicationRunsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getReplicationRunsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetReplicationRuns"
                
                (AWS.Core.Decode.ResultDecoder "GetReplicationRunsResponse" getReplicationRunsResponseDecoder)
                
            )



{-| Options for a getReplicationRuns request
-}
type alias GetReplicationRunsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Describes the servers in your server catalog.</p> <p>Before you can describe your servers, you must import them using <a>ImportServerCatalog</a>.</p>

__Required Parameters__



-}

getServers :
  
  
    ( GetServersOptions -> GetServersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetServersResponse)

getServers setOptions =
    
    let
        requestInput = GetServersRequest
            
            options.nextToken
            
            options.maxResults
            
            options.vmServerAddressList
            
        
        options = setOptions (GetServersOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getServersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetServers"
                
                (AWS.Core.Decode.ResultDecoder "GetServersResponse" getServersResponseDecoder)
                
            )



{-| Options for a getServers request
-}
type alias GetServersOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int,vmServerAddressList : Maybe (List VmServerAddress)
    }



{-| <p>Gathers a complete list of on-premises servers. Connectors must be installed and monitoring all servers that you want to import.</p> <p>This call returns immediately, but might take additional time to retrieve all the servers.</p>

__Required Parameters__



-}

importServerCatalog :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ImportServerCatalogResponse)

importServerCatalog =
    
    let
        requestInput = ImportServerCatalogRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> importServerCatalogRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ImportServerCatalog"
                
                (AWS.Core.Decode.ResultDecoder "ImportServerCatalogResponse" importServerCatalogResponseDecoder)
                
            )





{-| <p>Launches an application stack.</p>

__Required Parameters__



-}

launchApp :
  
  
    ( LaunchAppOptions -> LaunchAppOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper LaunchAppResponse)

launchApp setOptions =
    
    let
        requestInput = LaunchAppRequest
            
            options.appId
            
        
        options = setOptions (LaunchAppOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> launchAppRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "LaunchApp"
                
                (AWS.Core.Decode.ResultDecoder "LaunchAppResponse" launchAppResponseDecoder)
                
            )



{-| Options for a launchApp request
-}
type alias LaunchAppOptions =
    {
    appId : Maybe String
    }



{-| <p>Returns a list of summaries for all applications.</p>

__Required Parameters__



-}

listApps :
  
  
    ( ListAppsOptions -> ListAppsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAppsResponse)

listApps setOptions =
    
    let
        requestInput = ListAppsRequest
            
            options.appIds
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListAppsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listAppsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListApps"
                
                (AWS.Core.Decode.ResultDecoder "ListAppsResponse" listAppsResponseDecoder)
                
            )



{-| Options for a listApps request
-}
type alias ListAppsOptions =
    {
    appIds : Maybe (List String),nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Creates a launch configuration for an application.</p>

__Required Parameters__



-}

putAppLaunchConfiguration :
  
  
    ( PutAppLaunchConfigurationOptions -> PutAppLaunchConfigurationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutAppLaunchConfigurationResponse)

putAppLaunchConfiguration setOptions =
    
    let
        requestInput = PutAppLaunchConfigurationRequest
            
            options.appId
            
            options.roleName
            
            options.serverGroupLaunchConfigurations
            
        
        options = setOptions (PutAppLaunchConfigurationOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putAppLaunchConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutAppLaunchConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "PutAppLaunchConfigurationResponse" putAppLaunchConfigurationResponseDecoder)
                
            )



{-| Options for a putAppLaunchConfiguration request
-}
type alias PutAppLaunchConfigurationOptions =
    {
    appId : Maybe String,roleName : Maybe String,serverGroupLaunchConfigurations : Maybe (List ServerGroupLaunchConfiguration)
    }



{-| <p>Creates or updates a replication configuration for an application.</p>

__Required Parameters__



-}

putAppReplicationConfiguration :
  
  
    ( PutAppReplicationConfigurationOptions -> PutAppReplicationConfigurationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutAppReplicationConfigurationResponse)

putAppReplicationConfiguration setOptions =
    
    let
        requestInput = PutAppReplicationConfigurationRequest
            
            options.appId
            
            options.serverGroupReplicationConfigurations
            
        
        options = setOptions (PutAppReplicationConfigurationOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putAppReplicationConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutAppReplicationConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "PutAppReplicationConfigurationResponse" putAppReplicationConfigurationResponseDecoder)
                
            )



{-| Options for a putAppReplicationConfiguration request
-}
type alias PutAppReplicationConfigurationOptions =
    {
    appId : Maybe String,serverGroupReplicationConfigurations : Maybe (List ServerGroupReplicationConfiguration)
    }



{-| <p>Starts replicating an application.</p>

__Required Parameters__



-}

startAppReplication :
  
  
    ( StartAppReplicationOptions -> StartAppReplicationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartAppReplicationResponse)

startAppReplication setOptions =
    
    let
        requestInput = StartAppReplicationRequest
            
            options.appId
            
        
        options = setOptions (StartAppReplicationOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startAppReplicationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartAppReplication"
                
                (AWS.Core.Decode.ResultDecoder "StartAppReplicationResponse" startAppReplicationResponseDecoder)
                
            )



{-| Options for a startAppReplication request
-}
type alias StartAppReplicationOptions =
    {
    appId : Maybe String
    }



{-| <p>Starts an on-demand replication run for the specified replication job. This replication run starts immediately. This replication run is in addition to the ones already scheduled.</p> <p>There is a limit on the number of on-demand replications runs you can request in a 24-hour period.</p>

__Required Parameters__

* `replicationJobId` __:__ `String`


-}

startOnDemandReplicationRun :
  
    String ->
  
  
    ( StartOnDemandReplicationRunOptions -> StartOnDemandReplicationRunOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartOnDemandReplicationRunResponse)

startOnDemandReplicationRun replicationJobId setOptions =
    
    let
        requestInput = StartOnDemandReplicationRunRequest
            
            replicationJobId
            
            options.description
            
        
        options = setOptions (StartOnDemandReplicationRunOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startOnDemandReplicationRunRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartOnDemandReplicationRun"
                
                (AWS.Core.Decode.ResultDecoder "StartOnDemandReplicationRunResponse" startOnDemandReplicationRunResponseDecoder)
                
            )



{-| Options for a startOnDemandReplicationRun request
-}
type alias StartOnDemandReplicationRunOptions =
    {
    description : Maybe String
    }



{-| <p>Stops replicating an application.</p>

__Required Parameters__



-}

stopAppReplication :
  
  
    ( StopAppReplicationOptions -> StopAppReplicationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopAppReplicationResponse)

stopAppReplication setOptions =
    
    let
        requestInput = StopAppReplicationRequest
            
            options.appId
            
        
        options = setOptions (StopAppReplicationOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopAppReplicationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopAppReplication"
                
                (AWS.Core.Decode.ResultDecoder "StopAppReplicationResponse" stopAppReplicationResponseDecoder)
                
            )



{-| Options for a stopAppReplication request
-}
type alias StopAppReplicationOptions =
    {
    appId : Maybe String
    }



{-| <p>Terminates the stack for an application.</p>

__Required Parameters__



-}

terminateApp :
  
  
    ( TerminateAppOptions -> TerminateAppOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TerminateAppResponse)

terminateApp setOptions =
    
    let
        requestInput = TerminateAppRequest
            
            options.appId
            
        
        options = setOptions (TerminateAppOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> terminateAppRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TerminateApp"
                
                (AWS.Core.Decode.ResultDecoder "TerminateAppResponse" terminateAppResponseDecoder)
                
            )



{-| Options for a terminateApp request
-}
type alias TerminateAppOptions =
    {
    appId : Maybe String
    }



{-| <p>Updates an application.</p>

__Required Parameters__



-}

updateApp :
  
  
    ( UpdateAppOptions -> UpdateAppOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateAppResponse)

updateApp setOptions =
    
    let
        requestInput = UpdateAppRequest
            
            options.appId
            
            options.name
            
            options.description
            
            options.roleName
            
            options.serverGroups
            
            options.tags
            
        
        options = setOptions (UpdateAppOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateAppRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateApp"
                
                (AWS.Core.Decode.ResultDecoder "UpdateAppResponse" updateAppResponseDecoder)
                
            )



{-| Options for a updateApp request
-}
type alias UpdateAppOptions =
    {
    appId : Maybe String,name : Maybe String,description : Maybe String,roleName : Maybe String,serverGroups : Maybe (List ServerGroup),tags : Maybe (List Tag)
    }



{-| <p>Updates the specified settings for the specified replication job.</p>

__Required Parameters__

* `replicationJobId` __:__ `String`


-}

updateReplicationJob :
  
    String ->
  
  
    ( UpdateReplicationJobOptions -> UpdateReplicationJobOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateReplicationJobResponse)

updateReplicationJob replicationJobId setOptions =
    
    let
        requestInput = UpdateReplicationJobRequest
            
            replicationJobId
            
            options.frequency
            
            options.nextReplicationRunStartTime
            
            options.licenseType
            
            options.roleName
            
            options.description
            
            options.numberOfRecentAmisToKeep
            
            options.encrypted
            
            options.kmsKeyId
            
        
        options = setOptions (UpdateReplicationJobOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateReplicationJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateReplicationJob"
                
                (AWS.Core.Decode.ResultDecoder "UpdateReplicationJobResponse" updateReplicationJobResponseDecoder)
                
            )



{-| Options for a updateReplicationJob request
-}
type alias UpdateReplicationJobOptions =
    {
    frequency : Maybe Int,nextReplicationRunStartTime : Maybe Posix,licenseType : Maybe LicenseType,roleName : Maybe String,description : Maybe String,numberOfRecentAmisToKeep : Maybe Int,encrypted : Maybe Bool,kmsKeyId : Maybe String
    }




{-| One of

* `AppLaunchStatus_READY_FOR_CONFIGURATION`
* `AppLaunchStatus_CONFIGURATION_IN_PROGRESS`
* `AppLaunchStatus_CONFIGURATION_INVALID`
* `AppLaunchStatus_READY_FOR_LAUNCH`
* `AppLaunchStatus_VALIDATION_IN_PROGRESS`
* `AppLaunchStatus_LAUNCH_PENDING`
* `AppLaunchStatus_LAUNCH_IN_PROGRESS`
* `AppLaunchStatus_LAUNCHED`
* `AppLaunchStatus_DELTA_LAUNCH_IN_PROGRESS`
* `AppLaunchStatus_DELTA_LAUNCH_FAILED`
* `AppLaunchStatus_LAUNCH_FAILED`
* `AppLaunchStatus_TERMINATE_IN_PROGRESS`
* `AppLaunchStatus_TERMINATE_FAILED`
* `AppLaunchStatus_TERMINATED`

-}
type AppLaunchStatus
    = AppLaunchStatus_READY_FOR_CONFIGURATION
    | AppLaunchStatus_CONFIGURATION_IN_PROGRESS
    | AppLaunchStatus_CONFIGURATION_INVALID
    | AppLaunchStatus_READY_FOR_LAUNCH
    | AppLaunchStatus_VALIDATION_IN_PROGRESS
    | AppLaunchStatus_LAUNCH_PENDING
    | AppLaunchStatus_LAUNCH_IN_PROGRESS
    | AppLaunchStatus_LAUNCHED
    | AppLaunchStatus_DELTA_LAUNCH_IN_PROGRESS
    | AppLaunchStatus_DELTA_LAUNCH_FAILED
    | AppLaunchStatus_LAUNCH_FAILED
    | AppLaunchStatus_TERMINATE_IN_PROGRESS
    | AppLaunchStatus_TERMINATE_FAILED
    | AppLaunchStatus_TERMINATED



appLaunchStatusDecoder : JD.Decoder AppLaunchStatus
appLaunchStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "READY_FOR_CONFIGURATION" ->
                        JD.succeed AppLaunchStatus_READY_FOR_CONFIGURATION

                    "CONFIGURATION_IN_PROGRESS" ->
                        JD.succeed AppLaunchStatus_CONFIGURATION_IN_PROGRESS

                    "CONFIGURATION_INVALID" ->
                        JD.succeed AppLaunchStatus_CONFIGURATION_INVALID

                    "READY_FOR_LAUNCH" ->
                        JD.succeed AppLaunchStatus_READY_FOR_LAUNCH

                    "VALIDATION_IN_PROGRESS" ->
                        JD.succeed AppLaunchStatus_VALIDATION_IN_PROGRESS

                    "LAUNCH_PENDING" ->
                        JD.succeed AppLaunchStatus_LAUNCH_PENDING

                    "LAUNCH_IN_PROGRESS" ->
                        JD.succeed AppLaunchStatus_LAUNCH_IN_PROGRESS

                    "LAUNCHED" ->
                        JD.succeed AppLaunchStatus_LAUNCHED

                    "DELTA_LAUNCH_IN_PROGRESS" ->
                        JD.succeed AppLaunchStatus_DELTA_LAUNCH_IN_PROGRESS

                    "DELTA_LAUNCH_FAILED" ->
                        JD.succeed AppLaunchStatus_DELTA_LAUNCH_FAILED

                    "LAUNCH_FAILED" ->
                        JD.succeed AppLaunchStatus_LAUNCH_FAILED

                    "TERMINATE_IN_PROGRESS" ->
                        JD.succeed AppLaunchStatus_TERMINATE_IN_PROGRESS

                    "TERMINATE_FAILED" ->
                        JD.succeed AppLaunchStatus_TERMINATE_FAILED

                    "TERMINATED" ->
                        JD.succeed AppLaunchStatus_TERMINATED


                    _ ->
                        JD.fail "bad thing"
            )




appLaunchStatusToString : AppLaunchStatus -> String
appLaunchStatusToString val =
    case val of
        AppLaunchStatus_READY_FOR_CONFIGURATION ->
            "READY_FOR_CONFIGURATION"

        AppLaunchStatus_CONFIGURATION_IN_PROGRESS ->
            "CONFIGURATION_IN_PROGRESS"

        AppLaunchStatus_CONFIGURATION_INVALID ->
            "CONFIGURATION_INVALID"

        AppLaunchStatus_READY_FOR_LAUNCH ->
            "READY_FOR_LAUNCH"

        AppLaunchStatus_VALIDATION_IN_PROGRESS ->
            "VALIDATION_IN_PROGRESS"

        AppLaunchStatus_LAUNCH_PENDING ->
            "LAUNCH_PENDING"

        AppLaunchStatus_LAUNCH_IN_PROGRESS ->
            "LAUNCH_IN_PROGRESS"

        AppLaunchStatus_LAUNCHED ->
            "LAUNCHED"

        AppLaunchStatus_DELTA_LAUNCH_IN_PROGRESS ->
            "DELTA_LAUNCH_IN_PROGRESS"

        AppLaunchStatus_DELTA_LAUNCH_FAILED ->
            "DELTA_LAUNCH_FAILED"

        AppLaunchStatus_LAUNCH_FAILED ->
            "LAUNCH_FAILED"

        AppLaunchStatus_TERMINATE_IN_PROGRESS ->
            "TERMINATE_IN_PROGRESS"

        AppLaunchStatus_TERMINATE_FAILED ->
            "TERMINATE_FAILED"

        AppLaunchStatus_TERMINATED ->
            "TERMINATED"




{-| One of

* `AppReplicationStatus_READY_FOR_CONFIGURATION`
* `AppReplicationStatus_CONFIGURATION_IN_PROGRESS`
* `AppReplicationStatus_CONFIGURATION_INVALID`
* `AppReplicationStatus_READY_FOR_REPLICATION`
* `AppReplicationStatus_VALIDATION_IN_PROGRESS`
* `AppReplicationStatus_REPLICATION_PENDING`
* `AppReplicationStatus_REPLICATION_IN_PROGRESS`
* `AppReplicationStatus_REPLICATED`
* `AppReplicationStatus_DELTA_REPLICATION_IN_PROGRESS`
* `AppReplicationStatus_DELTA_REPLICATED`
* `AppReplicationStatus_DELTA_REPLICATION_FAILED`
* `AppReplicationStatus_REPLICATION_FAILED`
* `AppReplicationStatus_REPLICATION_STOPPING`
* `AppReplicationStatus_REPLICATION_STOP_FAILED`
* `AppReplicationStatus_REPLICATION_STOPPED`

-}
type AppReplicationStatus
    = AppReplicationStatus_READY_FOR_CONFIGURATION
    | AppReplicationStatus_CONFIGURATION_IN_PROGRESS
    | AppReplicationStatus_CONFIGURATION_INVALID
    | AppReplicationStatus_READY_FOR_REPLICATION
    | AppReplicationStatus_VALIDATION_IN_PROGRESS
    | AppReplicationStatus_REPLICATION_PENDING
    | AppReplicationStatus_REPLICATION_IN_PROGRESS
    | AppReplicationStatus_REPLICATED
    | AppReplicationStatus_DELTA_REPLICATION_IN_PROGRESS
    | AppReplicationStatus_DELTA_REPLICATED
    | AppReplicationStatus_DELTA_REPLICATION_FAILED
    | AppReplicationStatus_REPLICATION_FAILED
    | AppReplicationStatus_REPLICATION_STOPPING
    | AppReplicationStatus_REPLICATION_STOP_FAILED
    | AppReplicationStatus_REPLICATION_STOPPED



appReplicationStatusDecoder : JD.Decoder AppReplicationStatus
appReplicationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "READY_FOR_CONFIGURATION" ->
                        JD.succeed AppReplicationStatus_READY_FOR_CONFIGURATION

                    "CONFIGURATION_IN_PROGRESS" ->
                        JD.succeed AppReplicationStatus_CONFIGURATION_IN_PROGRESS

                    "CONFIGURATION_INVALID" ->
                        JD.succeed AppReplicationStatus_CONFIGURATION_INVALID

                    "READY_FOR_REPLICATION" ->
                        JD.succeed AppReplicationStatus_READY_FOR_REPLICATION

                    "VALIDATION_IN_PROGRESS" ->
                        JD.succeed AppReplicationStatus_VALIDATION_IN_PROGRESS

                    "REPLICATION_PENDING" ->
                        JD.succeed AppReplicationStatus_REPLICATION_PENDING

                    "REPLICATION_IN_PROGRESS" ->
                        JD.succeed AppReplicationStatus_REPLICATION_IN_PROGRESS

                    "REPLICATED" ->
                        JD.succeed AppReplicationStatus_REPLICATED

                    "DELTA_REPLICATION_IN_PROGRESS" ->
                        JD.succeed AppReplicationStatus_DELTA_REPLICATION_IN_PROGRESS

                    "DELTA_REPLICATED" ->
                        JD.succeed AppReplicationStatus_DELTA_REPLICATED

                    "DELTA_REPLICATION_FAILED" ->
                        JD.succeed AppReplicationStatus_DELTA_REPLICATION_FAILED

                    "REPLICATION_FAILED" ->
                        JD.succeed AppReplicationStatus_REPLICATION_FAILED

                    "REPLICATION_STOPPING" ->
                        JD.succeed AppReplicationStatus_REPLICATION_STOPPING

                    "REPLICATION_STOP_FAILED" ->
                        JD.succeed AppReplicationStatus_REPLICATION_STOP_FAILED

                    "REPLICATION_STOPPED" ->
                        JD.succeed AppReplicationStatus_REPLICATION_STOPPED


                    _ ->
                        JD.fail "bad thing"
            )




appReplicationStatusToString : AppReplicationStatus -> String
appReplicationStatusToString val =
    case val of
        AppReplicationStatus_READY_FOR_CONFIGURATION ->
            "READY_FOR_CONFIGURATION"

        AppReplicationStatus_CONFIGURATION_IN_PROGRESS ->
            "CONFIGURATION_IN_PROGRESS"

        AppReplicationStatus_CONFIGURATION_INVALID ->
            "CONFIGURATION_INVALID"

        AppReplicationStatus_READY_FOR_REPLICATION ->
            "READY_FOR_REPLICATION"

        AppReplicationStatus_VALIDATION_IN_PROGRESS ->
            "VALIDATION_IN_PROGRESS"

        AppReplicationStatus_REPLICATION_PENDING ->
            "REPLICATION_PENDING"

        AppReplicationStatus_REPLICATION_IN_PROGRESS ->
            "REPLICATION_IN_PROGRESS"

        AppReplicationStatus_REPLICATED ->
            "REPLICATED"

        AppReplicationStatus_DELTA_REPLICATION_IN_PROGRESS ->
            "DELTA_REPLICATION_IN_PROGRESS"

        AppReplicationStatus_DELTA_REPLICATED ->
            "DELTA_REPLICATED"

        AppReplicationStatus_DELTA_REPLICATION_FAILED ->
            "DELTA_REPLICATION_FAILED"

        AppReplicationStatus_REPLICATION_FAILED ->
            "REPLICATION_FAILED"

        AppReplicationStatus_REPLICATION_STOPPING ->
            "REPLICATION_STOPPING"

        AppReplicationStatus_REPLICATION_STOP_FAILED ->
            "REPLICATION_STOP_FAILED"

        AppReplicationStatus_REPLICATION_STOPPED ->
            "REPLICATION_STOPPED"




{-| One of

* `AppStatus_CREATING`
* `AppStatus_ACTIVE`
* `AppStatus_UPDATING`
* `AppStatus_DELETING`
* `AppStatus_DELETED`
* `AppStatus_DELETE_FAILED`

-}
type AppStatus
    = AppStatus_CREATING
    | AppStatus_ACTIVE
    | AppStatus_UPDATING
    | AppStatus_DELETING
    | AppStatus_DELETED
    | AppStatus_DELETE_FAILED



appStatusDecoder : JD.Decoder AppStatus
appStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATING" ->
                        JD.succeed AppStatus_CREATING

                    "ACTIVE" ->
                        JD.succeed AppStatus_ACTIVE

                    "UPDATING" ->
                        JD.succeed AppStatus_UPDATING

                    "DELETING" ->
                        JD.succeed AppStatus_DELETING

                    "DELETED" ->
                        JD.succeed AppStatus_DELETED

                    "DELETE_FAILED" ->
                        JD.succeed AppStatus_DELETE_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




appStatusToString : AppStatus -> String
appStatusToString val =
    case val of
        AppStatus_CREATING ->
            "CREATING"

        AppStatus_ACTIVE ->
            "ACTIVE"

        AppStatus_UPDATING ->
            "UPDATING"

        AppStatus_DELETING ->
            "DELETING"

        AppStatus_DELETED ->
            "DELETED"

        AppStatus_DELETE_FAILED ->
            "DELETE_FAILED"




{-| <p>Information about the application.</p>
-}
type alias AppSummary =
    { appId : Maybe String
    , name : Maybe String
    , description : Maybe String
    , status : Maybe AppStatus
    , statusMessage : Maybe String
    , replicationStatus : Maybe AppReplicationStatus
    , replicationStatusMessage : Maybe String
    , latestReplicationTime : Maybe Posix
    , launchStatus : Maybe AppLaunchStatus
    , launchStatusMessage : Maybe String
    , launchDetails : Maybe LaunchDetails
    , creationTime : Maybe Posix
    , lastModified : Maybe Posix
    , roleName : Maybe String
    , totalServerGroups : Maybe Int
    , totalServers : Maybe Int
    }



appSummaryDecoder : JD.Decoder AppSummary
appSummaryDecoder =
    JD.succeed AppSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["appId", "AppId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            appStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["statusMessage", "StatusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["replicationStatus", "ReplicationStatus"]
            appReplicationStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["replicationStatusMessage", "ReplicationStatusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["latestReplicationTime", "LatestReplicationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["launchStatus", "LaunchStatus"]
            appLaunchStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["launchStatusMessage", "LaunchStatusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["launchDetails", "LaunchDetails"]
            launchDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["creationTime", "CreationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastModified", "LastModified"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["roleName", "RoleName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["totalServerGroups", "TotalServerGroups"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["totalServers", "TotalServers"]
            JD.int
        )
        




appSummaryToString : AppSummary -> String -- List (String, String)
appSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "appId" "" -- val.appId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "replicationStatus" "" -- val.replicationStatus
        
    --     |> Dict.insert
    --         "replicationStatusMessage" "" -- val.replicationStatusMessage
        
    --     |> Dict.insert
    --         "latestReplicationTime" "" -- val.latestReplicationTime
        
    --     |> Dict.insert
    --         "launchStatus" "" -- val.launchStatus
        
    --     |> Dict.insert
    --         "launchStatusMessage" "" -- val.launchStatusMessage
        
    --     |> Dict.insert
    --         "launchDetails" "" -- val.launchDetails
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "lastModified" "" -- val.lastModified
        
    --     |> Dict.insert
    --         "roleName" "" -- val.roleName
        
    --     |> Dict.insert
    --         "totalServerGroups" "" -- val.totalServerGroups
        
    --     |> Dict.insert
    --         "totalServers" "" -- val.totalServers
        
    --     |> Dict.toList
    ""



{-| <p>Represents a connector.</p>
-}
type alias Connector =
    { connectorId : Maybe String
    , version : Maybe String
    , status : Maybe ConnectorStatus
    , capabilityList : Maybe (List ConnectorCapability)
    , vmManagerName : Maybe String
    , vmManagerType : Maybe VmManagerType
    , vmManagerId : Maybe String
    , ipAddress : Maybe String
    , macAddress : Maybe String
    , associatedOn : Maybe Posix
    }



connectorDecoder : JD.Decoder Connector
connectorDecoder =
    JD.succeed Connector
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["connectorId", "ConnectorId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["version", "Version"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            connectorStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["capabilityList", "CapabilityList"]
            (JD.list connectorCapabilityDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vmManagerName", "VmManagerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vmManagerType", "VmManagerType"]
            vmManagerTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vmManagerId", "VmManagerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ipAddress", "IpAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["macAddress", "MacAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["associatedOn", "AssociatedOn"]
            JDX.datetime
        )
        




connectorToString : Connector -> String -- List (String, String)
connectorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "connectorId" "" -- val.connectorId
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "capabilityList" "" -- val.capabilityList
        
    --     |> Dict.insert
    --         "vmManagerName" "" -- val.vmManagerName
        
    --     |> Dict.insert
    --         "vmManagerType" "" -- val.vmManagerType
        
    --     |> Dict.insert
    --         "vmManagerId" "" -- val.vmManagerId
        
    --     |> Dict.insert
    --         "ipAddress" "" -- val.ipAddress
        
    --     |> Dict.insert
    --         "macAddress" "" -- val.macAddress
        
    --     |> Dict.insert
    --         "associatedOn" "" -- val.associatedOn
        
    --     |> Dict.toList
    ""



{-| One of

* `ConnectorCapability_VSPHERE`
* `ConnectorCapability_SCVMM`
* `ConnectorCapability_HYPERV-MANAGER`
* `ConnectorCapability_SNAPSHOT_BATCHING`

-}
type ConnectorCapability
    = ConnectorCapability_VSPHERE
    | ConnectorCapability_SCVMM
    | ConnectorCapability_HYPERV_MANAGER
    | ConnectorCapability_SNAPSHOT_BATCHING



connectorCapabilityDecoder : JD.Decoder ConnectorCapability
connectorCapabilityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "VSPHERE" ->
                        JD.succeed ConnectorCapability_VSPHERE

                    "SCVMM" ->
                        JD.succeed ConnectorCapability_SCVMM

                    "HYPERV_MANAGER" ->
                        JD.succeed ConnectorCapability_HYPERV_MANAGER

                    "SNAPSHOT_BATCHING" ->
                        JD.succeed ConnectorCapability_SNAPSHOT_BATCHING


                    _ ->
                        JD.fail "bad thing"
            )




connectorCapabilityToString : ConnectorCapability -> String
connectorCapabilityToString val =
    case val of
        ConnectorCapability_VSPHERE ->
            "VSPHERE"

        ConnectorCapability_SCVMM ->
            "SCVMM"

        ConnectorCapability_HYPERV_MANAGER ->
            "HYPERV_MANAGER"

        ConnectorCapability_SNAPSHOT_BATCHING ->
            "SNAPSHOT_BATCHING"




{-| One of

* `ConnectorStatus_HEALTHY`
* `ConnectorStatus_UNHEALTHY`

-}
type ConnectorStatus
    = ConnectorStatus_HEALTHY
    | ConnectorStatus_UNHEALTHY



connectorStatusDecoder : JD.Decoder ConnectorStatus
connectorStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HEALTHY" ->
                        JD.succeed ConnectorStatus_HEALTHY

                    "UNHEALTHY" ->
                        JD.succeed ConnectorStatus_UNHEALTHY


                    _ ->
                        JD.fail "bad thing"
            )




connectorStatusToString : ConnectorStatus -> String
connectorStatusToString val =
    case val of
        ConnectorStatus_HEALTHY ->
            "HEALTHY"

        ConnectorStatus_UNHEALTHY ->
            "UNHEALTHY"




{-| Type of HTTP response from createApp
-}
type alias CreateAppResponse =
    { appSummary : Maybe AppSummary
    , serverGroups : Maybe (List ServerGroup)
    , tags : Maybe (List Tag)
    }



createAppResponseDecoder : JD.Decoder CreateAppResponse
createAppResponseDecoder =
    JD.succeed CreateAppResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["appSummary", "AppSummary"]
            appSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverGroups", "ServerGroups"]
            (JD.list serverGroupDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




createAppResponseToString : CreateAppResponse -> String -- List (String, String)
createAppResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "appSummary" "" -- val.appSummary
        
    --     |> Dict.insert
    --         "serverGroups" "" -- val.serverGroups
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createReplicationJob
-}
type alias CreateReplicationJobResponse =
    { replicationJobId : Maybe String
    }



createReplicationJobResponseDecoder : JD.Decoder CreateReplicationJobResponse
createReplicationJobResponseDecoder =
    JD.succeed CreateReplicationJobResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["replicationJobId", "ReplicationJobId"]
            JD.string
        )
        




createReplicationJobResponseToString : CreateReplicationJobResponse -> String -- List (String, String)
createReplicationJobResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "replicationJobId" "" -- val.replicationJobId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteAppLaunchConfiguration
-}
type alias DeleteAppLaunchConfigurationResponse =
    { 
    }



deleteAppLaunchConfigurationResponseDecoder : JD.Decoder DeleteAppLaunchConfigurationResponse
deleteAppLaunchConfigurationResponseDecoder =
    JD.succeed DeleteAppLaunchConfigurationResponse
        




deleteAppLaunchConfigurationResponseToString : DeleteAppLaunchConfigurationResponse -> String -- List (String, String)
deleteAppLaunchConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteAppReplicationConfiguration
-}
type alias DeleteAppReplicationConfigurationResponse =
    { 
    }



deleteAppReplicationConfigurationResponseDecoder : JD.Decoder DeleteAppReplicationConfigurationResponse
deleteAppReplicationConfigurationResponseDecoder =
    JD.succeed DeleteAppReplicationConfigurationResponse
        




deleteAppReplicationConfigurationResponseToString : DeleteAppReplicationConfigurationResponse -> String -- List (String, String)
deleteAppReplicationConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteApp
-}
type alias DeleteAppResponse =
    { 
    }



deleteAppResponseDecoder : JD.Decoder DeleteAppResponse
deleteAppResponseDecoder =
    JD.succeed DeleteAppResponse
        




deleteAppResponseToString : DeleteAppResponse -> String -- List (String, String)
deleteAppResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteReplicationJob
-}
type alias DeleteReplicationJobResponse =
    { 
    }



deleteReplicationJobResponseDecoder : JD.Decoder DeleteReplicationJobResponse
deleteReplicationJobResponseDecoder =
    JD.succeed DeleteReplicationJobResponse
        




deleteReplicationJobResponseToString : DeleteReplicationJobResponse -> String -- List (String, String)
deleteReplicationJobResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteServerCatalog
-}
type alias DeleteServerCatalogResponse =
    { 
    }



deleteServerCatalogResponseDecoder : JD.Decoder DeleteServerCatalogResponse
deleteServerCatalogResponseDecoder =
    JD.succeed DeleteServerCatalogResponse
        




deleteServerCatalogResponseToString : DeleteServerCatalogResponse -> String -- List (String, String)
deleteServerCatalogResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from disassociateConnector
-}
type alias DisassociateConnectorResponse =
    { 
    }



disassociateConnectorResponseDecoder : JD.Decoder DisassociateConnectorResponse
disassociateConnectorResponseDecoder =
    JD.succeed DisassociateConnectorResponse
        




disassociateConnectorResponseToString : DisassociateConnectorResponse -> String -- List (String, String)
disassociateConnectorResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from generateChangeSet
-}
type alias GenerateChangeSetResponse =
    { s3Location : Maybe S3Location
    }



generateChangeSetResponseDecoder : JD.Decoder GenerateChangeSetResponse
generateChangeSetResponseDecoder =
    JD.succeed GenerateChangeSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["s3Location", "S3Location"]
            s3LocationDecoder
        )
        




generateChangeSetResponseToString : GenerateChangeSetResponse -> String -- List (String, String)
generateChangeSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s3Location" "" -- val.s3Location
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from generateTemplate
-}
type alias GenerateTemplateResponse =
    { s3Location : Maybe S3Location
    }



generateTemplateResponseDecoder : JD.Decoder GenerateTemplateResponse
generateTemplateResponseDecoder =
    JD.succeed GenerateTemplateResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["s3Location", "S3Location"]
            s3LocationDecoder
        )
        




generateTemplateResponseToString : GenerateTemplateResponse -> String -- List (String, String)
generateTemplateResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s3Location" "" -- val.s3Location
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getAppLaunchConfiguration
-}
type alias GetAppLaunchConfigurationResponse =
    { appId : Maybe String
    , roleName : Maybe String
    , serverGroupLaunchConfigurations : Maybe (List ServerGroupLaunchConfiguration)
    }



getAppLaunchConfigurationResponseDecoder : JD.Decoder GetAppLaunchConfigurationResponse
getAppLaunchConfigurationResponseDecoder =
    JD.succeed GetAppLaunchConfigurationResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["appId", "AppId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["roleName", "RoleName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverGroupLaunchConfigurations", "ServerGroupLaunchConfigurations"]
            (JD.list serverGroupLaunchConfigurationDecoder)
        )
        




getAppLaunchConfigurationResponseToString : GetAppLaunchConfigurationResponse -> String -- List (String, String)
getAppLaunchConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "appId" "" -- val.appId
        
    --     |> Dict.insert
    --         "roleName" "" -- val.roleName
        
    --     |> Dict.insert
    --         "serverGroupLaunchConfigurations" "" -- val.serverGroupLaunchConfigurations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getAppReplicationConfiguration
-}
type alias GetAppReplicationConfigurationResponse =
    { serverGroupReplicationConfigurations : Maybe (List ServerGroupReplicationConfiguration)
    }



getAppReplicationConfigurationResponseDecoder : JD.Decoder GetAppReplicationConfigurationResponse
getAppReplicationConfigurationResponseDecoder =
    JD.succeed GetAppReplicationConfigurationResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverGroupReplicationConfigurations", "ServerGroupReplicationConfigurations"]
            (JD.list serverGroupReplicationConfigurationDecoder)
        )
        




getAppReplicationConfigurationResponseToString : GetAppReplicationConfigurationResponse -> String -- List (String, String)
getAppReplicationConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serverGroupReplicationConfigurations" "" -- val.serverGroupReplicationConfigurations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getApp
-}
type alias GetAppResponse =
    { appSummary : Maybe AppSummary
    , serverGroups : Maybe (List ServerGroup)
    , tags : Maybe (List Tag)
    }



getAppResponseDecoder : JD.Decoder GetAppResponse
getAppResponseDecoder =
    JD.succeed GetAppResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["appSummary", "AppSummary"]
            appSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverGroups", "ServerGroups"]
            (JD.list serverGroupDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




getAppResponseToString : GetAppResponse -> String -- List (String, String)
getAppResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "appSummary" "" -- val.appSummary
        
    --     |> Dict.insert
    --         "serverGroups" "" -- val.serverGroups
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getConnectors
-}
type alias GetConnectorsResponse =
    { connectorList : Maybe (List Connector)
    , nextToken : Maybe String
    }



getConnectorsResponseDecoder : JD.Decoder GetConnectorsResponse
getConnectorsResponseDecoder =
    JD.succeed GetConnectorsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["connectorList", "ConnectorList"]
            (JD.list connectorDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




getConnectorsResponseToString : GetConnectorsResponse -> String -- List (String, String)
getConnectorsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "connectorList" "" -- val.connectorList
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getReplicationJobs
-}
type alias GetReplicationJobsResponse =
    { replicationJobList : Maybe (List ReplicationJob)
    , nextToken : Maybe String
    }



getReplicationJobsResponseDecoder : JD.Decoder GetReplicationJobsResponse
getReplicationJobsResponseDecoder =
    JD.succeed GetReplicationJobsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["replicationJobList", "ReplicationJobList"]
            (JD.list replicationJobDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




getReplicationJobsResponseToString : GetReplicationJobsResponse -> String -- List (String, String)
getReplicationJobsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "replicationJobList" "" -- val.replicationJobList
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getReplicationRuns
-}
type alias GetReplicationRunsResponse =
    { replicationJob : Maybe ReplicationJob
    , replicationRunList : Maybe (List ReplicationRun)
    , nextToken : Maybe String
    }



getReplicationRunsResponseDecoder : JD.Decoder GetReplicationRunsResponse
getReplicationRunsResponseDecoder =
    JD.succeed GetReplicationRunsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["replicationJob", "ReplicationJob"]
            replicationJobDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["replicationRunList", "ReplicationRunList"]
            (JD.list replicationRunDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




getReplicationRunsResponseToString : GetReplicationRunsResponse -> String -- List (String, String)
getReplicationRunsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "replicationJob" "" -- val.replicationJob
        
    --     |> Dict.insert
    --         "replicationRunList" "" -- val.replicationRunList
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getServers
-}
type alias GetServersResponse =
    { lastModifiedOn : Maybe Posix
    , serverCatalogStatus : Maybe ServerCatalogStatus
    , serverList : Maybe (List Server)
    , nextToken : Maybe String
    }



getServersResponseDecoder : JD.Decoder GetServersResponse
getServersResponseDecoder =
    JD.succeed GetServersResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastModifiedOn", "LastModifiedOn"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverCatalogStatus", "ServerCatalogStatus"]
            serverCatalogStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverList", "ServerList"]
            (JD.list serverDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




getServersResponseToString : GetServersResponse -> String -- List (String, String)
getServersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "lastModifiedOn" "" -- val.lastModifiedOn
        
    --     |> Dict.insert
    --         "serverCatalogStatus" "" -- val.serverCatalogStatus
        
    --     |> Dict.insert
    --         "serverList" "" -- val.serverList
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from importServerCatalog
-}
type alias ImportServerCatalogResponse =
    { 
    }



importServerCatalogResponseDecoder : JD.Decoder ImportServerCatalogResponse
importServerCatalogResponseDecoder =
    JD.succeed ImportServerCatalogResponse
        




importServerCatalogResponseToString : ImportServerCatalogResponse -> String -- List (String, String)
importServerCatalogResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from launchApp
-}
type alias LaunchAppResponse =
    { 
    }



launchAppResponseDecoder : JD.Decoder LaunchAppResponse
launchAppResponseDecoder =
    JD.succeed LaunchAppResponse
        




launchAppResponseToString : LaunchAppResponse -> String -- List (String, String)
launchAppResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Details about the latest launch of an application.</p>
-}
type alias LaunchDetails =
    { latestLaunchTime : Maybe Posix
    , stackName : Maybe String
    , stackId : Maybe String
    }



launchDetailsDecoder : JD.Decoder LaunchDetails
launchDetailsDecoder =
    JD.succeed LaunchDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["latestLaunchTime", "LatestLaunchTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stackName", "StackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stackId", "StackId"]
            JD.string
        )
        




launchDetailsToString : LaunchDetails -> String -- List (String, String)
launchDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "latestLaunchTime" "" -- val.latestLaunchTime
        
    --     |> Dict.insert
    --         "stackName" "" -- val.stackName
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.toList
    ""



{-| One of

* `LicenseType_AWS`
* `LicenseType_BYOL`

-}
type LicenseType
    = LicenseType_AWS
    | LicenseType_BYOL



licenseTypeDecoder : JD.Decoder LicenseType
licenseTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AWS" ->
                        JD.succeed LicenseType_AWS

                    "BYOL" ->
                        JD.succeed LicenseType_BYOL


                    _ ->
                        JD.fail "bad thing"
            )




licenseTypeToString : LicenseType -> String
licenseTypeToString val =
    case val of
        LicenseType_AWS ->
            "AWS"

        LicenseType_BYOL ->
            "BYOL"




{-| Type of HTTP response from listApps
-}
type alias ListAppsResponse =
    { apps : Maybe (List AppSummary)
    , nextToken : Maybe String
    }



listAppsResponseDecoder : JD.Decoder ListAppsResponse
listAppsResponseDecoder =
    JD.succeed ListAppsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["apps", "Apps"]
            (JD.list appSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listAppsResponseToString : ListAppsResponse -> String -- List (String, String)
listAppsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "apps" "" -- val.apps
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| One of

* `OutputFormat_JSON`
* `OutputFormat_YAML`

-}
type OutputFormat
    = OutputFormat_JSON
    | OutputFormat_YAML



outputFormatDecoder : JD.Decoder OutputFormat
outputFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "JSON" ->
                        JD.succeed OutputFormat_JSON

                    "YAML" ->
                        JD.succeed OutputFormat_YAML


                    _ ->
                        JD.fail "bad thing"
            )




outputFormatToString : OutputFormat -> String
outputFormatToString val =
    case val of
        OutputFormat_JSON ->
            "JSON"

        OutputFormat_YAML ->
            "YAML"




{-| Type of HTTP response from putAppLaunchConfiguration
-}
type alias PutAppLaunchConfigurationResponse =
    { 
    }



putAppLaunchConfigurationResponseDecoder : JD.Decoder PutAppLaunchConfigurationResponse
putAppLaunchConfigurationResponseDecoder =
    JD.succeed PutAppLaunchConfigurationResponse
        




putAppLaunchConfigurationResponseToString : PutAppLaunchConfigurationResponse -> String -- List (String, String)
putAppLaunchConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putAppReplicationConfiguration
-}
type alias PutAppReplicationConfigurationResponse =
    { 
    }



putAppReplicationConfigurationResponseDecoder : JD.Decoder PutAppReplicationConfigurationResponse
putAppReplicationConfigurationResponseDecoder =
    JD.succeed PutAppReplicationConfigurationResponse
        




putAppReplicationConfigurationResponseToString : PutAppReplicationConfigurationResponse -> String -- List (String, String)
putAppReplicationConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Represents a replication job.</p>
-}
type alias ReplicationJob =
    { replicationJobId : Maybe String
    , serverId : Maybe String
    , serverType : Maybe ServerType
    , vmServer : Maybe VmServer
    , seedReplicationTime : Maybe Posix
    , frequency : Maybe Int
    , runOnce : Maybe Bool
    , nextReplicationRunStartTime : Maybe Posix
    , licenseType : Maybe LicenseType
    , roleName : Maybe String
    , latestAmiId : Maybe String
    , state : Maybe ReplicationJobState
    , statusMessage : Maybe String
    , description : Maybe String
    , numberOfRecentAmisToKeep : Maybe Int
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , replicationRunList : Maybe (List ReplicationRun)
    }



replicationJobDecoder : JD.Decoder ReplicationJob
replicationJobDecoder =
    JD.succeed ReplicationJob
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["replicationJobId", "ReplicationJobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverId", "ServerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverType", "ServerType"]
            serverTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vmServer", "VmServer"]
            vmServerDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["seedReplicationTime", "SeedReplicationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["frequency", "Frequency"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["runOnce", "RunOnce"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextReplicationRunStartTime", "NextReplicationRunStartTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["licenseType", "LicenseType"]
            licenseTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["roleName", "RoleName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["latestAmiId", "LatestAmiId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["state", "State"]
            replicationJobStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["statusMessage", "StatusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["numberOfRecentAmisToKeep", "NumberOfRecentAmisToKeep"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["encrypted", "Encrypted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["kmsKeyId", "KmsKeyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["replicationRunList", "ReplicationRunList"]
            (JD.list replicationRunDecoder)
        )
        




replicationJobToString : ReplicationJob -> String -- List (String, String)
replicationJobToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "replicationJobId" "" -- val.replicationJobId
        
    --     |> Dict.insert
    --         "serverId" "" -- val.serverId
        
    --     |> Dict.insert
    --         "serverType" "" -- val.serverType
        
    --     |> Dict.insert
    --         "vmServer" "" -- val.vmServer
        
    --     |> Dict.insert
    --         "seedReplicationTime" "" -- val.seedReplicationTime
        
    --     |> Dict.insert
    --         "frequency" "" -- val.frequency
        
    --     |> Dict.insert
    --         "runOnce" "" -- val.runOnce
        
    --     |> Dict.insert
    --         "nextReplicationRunStartTime" "" -- val.nextReplicationRunStartTime
        
    --     |> Dict.insert
    --         "licenseType" "" -- val.licenseType
        
    --     |> Dict.insert
    --         "roleName" "" -- val.roleName
        
    --     |> Dict.insert
    --         "latestAmiId" "" -- val.latestAmiId
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "numberOfRecentAmisToKeep" "" -- val.numberOfRecentAmisToKeep
        
    --     |> Dict.insert
    --         "encrypted" "" -- val.encrypted
        
    --     |> Dict.insert
    --         "kmsKeyId" "" -- val.kmsKeyId
        
    --     |> Dict.insert
    --         "replicationRunList" "" -- val.replicationRunList
        
    --     |> Dict.toList
    ""



{-| One of

* `ReplicationJobState_PENDING`
* `ReplicationJobState_ACTIVE`
* `ReplicationJobState_FAILED`
* `ReplicationJobState_DELETING`
* `ReplicationJobState_DELETED`
* `ReplicationJobState_COMPLETED`
* `ReplicationJobState_PAUSED_ON_FAILURE`
* `ReplicationJobState_FAILING`

-}
type ReplicationJobState
    = ReplicationJobState_PENDING
    | ReplicationJobState_ACTIVE
    | ReplicationJobState_FAILED
    | ReplicationJobState_DELETING
    | ReplicationJobState_DELETED
    | ReplicationJobState_COMPLETED
    | ReplicationJobState_PAUSED_ON_FAILURE
    | ReplicationJobState_FAILING



replicationJobStateDecoder : JD.Decoder ReplicationJobState
replicationJobStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed ReplicationJobState_PENDING

                    "ACTIVE" ->
                        JD.succeed ReplicationJobState_ACTIVE

                    "FAILED" ->
                        JD.succeed ReplicationJobState_FAILED

                    "DELETING" ->
                        JD.succeed ReplicationJobState_DELETING

                    "DELETED" ->
                        JD.succeed ReplicationJobState_DELETED

                    "COMPLETED" ->
                        JD.succeed ReplicationJobState_COMPLETED

                    "PAUSED_ON_FAILURE" ->
                        JD.succeed ReplicationJobState_PAUSED_ON_FAILURE

                    "FAILING" ->
                        JD.succeed ReplicationJobState_FAILING


                    _ ->
                        JD.fail "bad thing"
            )




replicationJobStateToString : ReplicationJobState -> String
replicationJobStateToString val =
    case val of
        ReplicationJobState_PENDING ->
            "PENDING"

        ReplicationJobState_ACTIVE ->
            "ACTIVE"

        ReplicationJobState_FAILED ->
            "FAILED"

        ReplicationJobState_DELETING ->
            "DELETING"

        ReplicationJobState_DELETED ->
            "DELETED"

        ReplicationJobState_COMPLETED ->
            "COMPLETED"

        ReplicationJobState_PAUSED_ON_FAILURE ->
            "PAUSED_ON_FAILURE"

        ReplicationJobState_FAILING ->
            "FAILING"




{-| <p>Represents a replication run.</p>
-}
type alias ReplicationRun =
    { replicationRunId : Maybe String
    , state : Maybe ReplicationRunState
    , type_ : Maybe ReplicationRunType
    , stageDetails : Maybe ReplicationRunStageDetails
    , statusMessage : Maybe String
    , amiId : Maybe String
    , scheduledStartTime : Maybe Posix
    , completedTime : Maybe Posix
    , description : Maybe String
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    }



replicationRunDecoder : JD.Decoder ReplicationRun
replicationRunDecoder =
    JD.succeed ReplicationRun
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["replicationRunId", "ReplicationRunId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["state", "State"]
            replicationRunStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            replicationRunTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stageDetails", "StageDetails"]
            replicationRunStageDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["statusMessage", "StatusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["amiId", "AmiId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["scheduledStartTime", "ScheduledStartTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["completedTime", "CompletedTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["encrypted", "Encrypted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["kmsKeyId", "KmsKeyId"]
            JD.string
        )
        




replicationRunToString : ReplicationRun -> String -- List (String, String)
replicationRunToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "replicationRunId" "" -- val.replicationRunId
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "stageDetails" "" -- val.stageDetails
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "amiId" "" -- val.amiId
        
    --     |> Dict.insert
    --         "scheduledStartTime" "" -- val.scheduledStartTime
        
    --     |> Dict.insert
    --         "completedTime" "" -- val.completedTime
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "encrypted" "" -- val.encrypted
        
    --     |> Dict.insert
    --         "kmsKeyId" "" -- val.kmsKeyId
        
    --     |> Dict.toList
    ""



{-| <p>Details of the current stage of a replication run.</p>
-}
type alias ReplicationRunStageDetails =
    { stage : Maybe String
    , stageProgress : Maybe String
    }



replicationRunStageDetailsDecoder : JD.Decoder ReplicationRunStageDetails
replicationRunStageDetailsDecoder =
    JD.succeed ReplicationRunStageDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stage", "Stage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stageProgress", "StageProgress"]
            JD.string
        )
        




replicationRunStageDetailsToString : ReplicationRunStageDetails -> String -- List (String, String)
replicationRunStageDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stage" "" -- val.stage
        
    --     |> Dict.insert
    --         "stageProgress" "" -- val.stageProgress
        
    --     |> Dict.toList
    ""



{-| One of

* `ReplicationRunState_PENDING`
* `ReplicationRunState_MISSED`
* `ReplicationRunState_ACTIVE`
* `ReplicationRunState_FAILED`
* `ReplicationRunState_COMPLETED`
* `ReplicationRunState_DELETING`
* `ReplicationRunState_DELETED`

-}
type ReplicationRunState
    = ReplicationRunState_PENDING
    | ReplicationRunState_MISSED
    | ReplicationRunState_ACTIVE
    | ReplicationRunState_FAILED
    | ReplicationRunState_COMPLETED
    | ReplicationRunState_DELETING
    | ReplicationRunState_DELETED



replicationRunStateDecoder : JD.Decoder ReplicationRunState
replicationRunStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed ReplicationRunState_PENDING

                    "MISSED" ->
                        JD.succeed ReplicationRunState_MISSED

                    "ACTIVE" ->
                        JD.succeed ReplicationRunState_ACTIVE

                    "FAILED" ->
                        JD.succeed ReplicationRunState_FAILED

                    "COMPLETED" ->
                        JD.succeed ReplicationRunState_COMPLETED

                    "DELETING" ->
                        JD.succeed ReplicationRunState_DELETING

                    "DELETED" ->
                        JD.succeed ReplicationRunState_DELETED


                    _ ->
                        JD.fail "bad thing"
            )




replicationRunStateToString : ReplicationRunState -> String
replicationRunStateToString val =
    case val of
        ReplicationRunState_PENDING ->
            "PENDING"

        ReplicationRunState_MISSED ->
            "MISSED"

        ReplicationRunState_ACTIVE ->
            "ACTIVE"

        ReplicationRunState_FAILED ->
            "FAILED"

        ReplicationRunState_COMPLETED ->
            "COMPLETED"

        ReplicationRunState_DELETING ->
            "DELETING"

        ReplicationRunState_DELETED ->
            "DELETED"




{-| One of

* `ReplicationRunType_ON_DEMAND`
* `ReplicationRunType_AUTOMATIC`

-}
type ReplicationRunType
    = ReplicationRunType_ON_DEMAND
    | ReplicationRunType_AUTOMATIC



replicationRunTypeDecoder : JD.Decoder ReplicationRunType
replicationRunTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ON_DEMAND" ->
                        JD.succeed ReplicationRunType_ON_DEMAND

                    "AUTOMATIC" ->
                        JD.succeed ReplicationRunType_AUTOMATIC


                    _ ->
                        JD.fail "bad thing"
            )




replicationRunTypeToString : ReplicationRunType -> String
replicationRunTypeToString val =
    case val of
        ReplicationRunType_ON_DEMAND ->
            "ON_DEMAND"

        ReplicationRunType_AUTOMATIC ->
            "AUTOMATIC"




{-| <p>Location of the Amazon S3 object in the customer's account.</p>
-}
type alias S3Location =
    { bucket : Maybe String
    , key : Maybe String
    }



s3LocationDecoder : JD.Decoder S3Location
s3LocationDecoder =
    JD.succeed S3Location
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bucket", "Bucket"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["key", "Key"]
            JD.string
        )
        




s3LocationToString : S3Location -> String -- List (String, String)
s3LocationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bucket" "" -- val.bucket
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.toList
    ""



{-| <p>Represents a server.</p>
-}
type alias Server =
    { serverId : Maybe String
    , serverType : Maybe ServerType
    , vmServer : Maybe VmServer
    , replicationJobId : Maybe String
    , replicationJobTerminated : Maybe Bool
    }



serverDecoder : JD.Decoder Server
serverDecoder =
    JD.succeed Server
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverId", "ServerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverType", "ServerType"]
            serverTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vmServer", "VmServer"]
            vmServerDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["replicationJobId", "ReplicationJobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["replicationJobTerminated", "ReplicationJobTerminated"]
            JD.bool
        )
        




serverToString : Server -> String -- List (String, String)
serverToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serverId" "" -- val.serverId
        
    --     |> Dict.insert
    --         "serverType" "" -- val.serverType
        
    --     |> Dict.insert
    --         "vmServer" "" -- val.vmServer
        
    --     |> Dict.insert
    --         "replicationJobId" "" -- val.replicationJobId
        
    --     |> Dict.insert
    --         "replicationJobTerminated" "" -- val.replicationJobTerminated
        
    --     |> Dict.toList
    ""



{-| One of

* `ServerCatalogStatus_NOT_IMPORTED`
* `ServerCatalogStatus_IMPORTING`
* `ServerCatalogStatus_AVAILABLE`
* `ServerCatalogStatus_DELETED`
* `ServerCatalogStatus_EXPIRED`

-}
type ServerCatalogStatus
    = ServerCatalogStatus_NOT_IMPORTED
    | ServerCatalogStatus_IMPORTING
    | ServerCatalogStatus_AVAILABLE
    | ServerCatalogStatus_DELETED
    | ServerCatalogStatus_EXPIRED



serverCatalogStatusDecoder : JD.Decoder ServerCatalogStatus
serverCatalogStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NOT_IMPORTED" ->
                        JD.succeed ServerCatalogStatus_NOT_IMPORTED

                    "IMPORTING" ->
                        JD.succeed ServerCatalogStatus_IMPORTING

                    "AVAILABLE" ->
                        JD.succeed ServerCatalogStatus_AVAILABLE

                    "DELETED" ->
                        JD.succeed ServerCatalogStatus_DELETED

                    "EXPIRED" ->
                        JD.succeed ServerCatalogStatus_EXPIRED


                    _ ->
                        JD.fail "bad thing"
            )




serverCatalogStatusToString : ServerCatalogStatus -> String
serverCatalogStatusToString val =
    case val of
        ServerCatalogStatus_NOT_IMPORTED ->
            "NOT_IMPORTED"

        ServerCatalogStatus_IMPORTING ->
            "IMPORTING"

        ServerCatalogStatus_AVAILABLE ->
            "AVAILABLE"

        ServerCatalogStatus_DELETED ->
            "DELETED"

        ServerCatalogStatus_EXPIRED ->
            "EXPIRED"




{-| <p>A logical grouping of servers.</p>
-}
type alias ServerGroup =
    { serverGroupId : Maybe String
    , name : Maybe String
    , serverList : Maybe (List Server)
    }



serverGroupDecoder : JD.Decoder ServerGroup
serverGroupDecoder =
    JD.succeed ServerGroup
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverGroupId", "ServerGroupId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverList", "ServerList"]
            (JD.list serverDecoder)
        )
        




serverGroupToString : ServerGroup -> String -- List (String, String)
serverGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serverGroupId" "" -- val.serverGroupId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "serverList" "" -- val.serverList
        
    --     |> Dict.toList
    ""



{-| <p>Launch configuration for a server group.</p>
-}
type alias ServerGroupLaunchConfiguration =
    { serverGroupId : Maybe String
    , launchOrder : Maybe Int
    , serverLaunchConfigurations : Maybe (List ServerLaunchConfiguration)
    }



serverGroupLaunchConfigurationDecoder : JD.Decoder ServerGroupLaunchConfiguration
serverGroupLaunchConfigurationDecoder =
    JD.succeed ServerGroupLaunchConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverGroupId", "ServerGroupId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["launchOrder", "LaunchOrder"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverLaunchConfigurations", "ServerLaunchConfigurations"]
            (JD.list serverLaunchConfigurationDecoder)
        )
        




serverGroupLaunchConfigurationToString : ServerGroupLaunchConfiguration -> String -- List (String, String)
serverGroupLaunchConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serverGroupId" "" -- val.serverGroupId
        
    --     |> Dict.insert
    --         "launchOrder" "" -- val.launchOrder
        
    --     |> Dict.insert
    --         "serverLaunchConfigurations" "" -- val.serverLaunchConfigurations
        
    --     |> Dict.toList
    ""



{-| <p>Replication configuration for a server group.</p>
-}
type alias ServerGroupReplicationConfiguration =
    { serverGroupId : Maybe String
    , serverReplicationConfigurations : Maybe (List ServerReplicationConfiguration)
    }



serverGroupReplicationConfigurationDecoder : JD.Decoder ServerGroupReplicationConfiguration
serverGroupReplicationConfigurationDecoder =
    JD.succeed ServerGroupReplicationConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverGroupId", "ServerGroupId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverReplicationConfigurations", "ServerReplicationConfigurations"]
            (JD.list serverReplicationConfigurationDecoder)
        )
        




serverGroupReplicationConfigurationToString : ServerGroupReplicationConfiguration -> String -- List (String, String)
serverGroupReplicationConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serverGroupId" "" -- val.serverGroupId
        
    --     |> Dict.insert
    --         "serverReplicationConfigurations" "" -- val.serverReplicationConfigurations
        
    --     |> Dict.toList
    ""



{-| <p>Launch configuration for a server.</p>
-}
type alias ServerLaunchConfiguration =
    { server : Maybe Server
    , logicalId : Maybe String
    , vpc : Maybe String
    , subnet : Maybe String
    , securityGroup : Maybe String
    , ec2KeyName : Maybe String
    , userData : Maybe UserData
    , instanceType : Maybe String
    , associatePublicIpAddress : Maybe Bool
    }



serverLaunchConfigurationDecoder : JD.Decoder ServerLaunchConfiguration
serverLaunchConfigurationDecoder =
    JD.succeed ServerLaunchConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["server", "Server"]
            serverDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logicalId", "LogicalId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vpc", "Vpc"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["subnet", "Subnet"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["securityGroup", "SecurityGroup"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ec2KeyName", "Ec2KeyName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["userData", "UserData"]
            userDataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceType", "InstanceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["associatePublicIpAddress", "AssociatePublicIpAddress"]
            JD.bool
        )
        




serverLaunchConfigurationToString : ServerLaunchConfiguration -> String -- List (String, String)
serverLaunchConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "server" "" -- val.server
        
    --     |> Dict.insert
    --         "logicalId" "" -- val.logicalId
        
    --     |> Dict.insert
    --         "vpc" "" -- val.vpc
        
    --     |> Dict.insert
    --         "subnet" "" -- val.subnet
        
    --     |> Dict.insert
    --         "securityGroup" "" -- val.securityGroup
        
    --     |> Dict.insert
    --         "ec2KeyName" "" -- val.ec2KeyName
        
    --     |> Dict.insert
    --         "userData" "" -- val.userData
        
    --     |> Dict.insert
    --         "instanceType" "" -- val.instanceType
        
    --     |> Dict.insert
    --         "associatePublicIpAddress" "" -- val.associatePublicIpAddress
        
    --     |> Dict.toList
    ""



{-| <p>Replication configuration of a server.</p>
-}
type alias ServerReplicationConfiguration =
    { server : Maybe Server
    , serverReplicationParameters : Maybe ServerReplicationParameters
    }



serverReplicationConfigurationDecoder : JD.Decoder ServerReplicationConfiguration
serverReplicationConfigurationDecoder =
    JD.succeed ServerReplicationConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["server", "Server"]
            serverDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverReplicationParameters", "ServerReplicationParameters"]
            serverReplicationParametersDecoder
        )
        




serverReplicationConfigurationToString : ServerReplicationConfiguration -> String -- List (String, String)
serverReplicationConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "server" "" -- val.server
        
    --     |> Dict.insert
    --         "serverReplicationParameters" "" -- val.serverReplicationParameters
        
    --     |> Dict.toList
    ""



{-| <p>Replication parameters for replicating a server.</p>
-}
type alias ServerReplicationParameters =
    { seedTime : Maybe Posix
    , frequency : Maybe Int
    , runOnce : Maybe Bool
    , licenseType : Maybe LicenseType
    , numberOfRecentAmisToKeep : Maybe Int
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    }



serverReplicationParametersDecoder : JD.Decoder ServerReplicationParameters
serverReplicationParametersDecoder =
    JD.succeed ServerReplicationParameters
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["seedTime", "SeedTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["frequency", "Frequency"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["runOnce", "RunOnce"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["licenseType", "LicenseType"]
            licenseTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["numberOfRecentAmisToKeep", "NumberOfRecentAmisToKeep"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["encrypted", "Encrypted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["kmsKeyId", "KmsKeyId"]
            JD.string
        )
        




serverReplicationParametersToString : ServerReplicationParameters -> String -- List (String, String)
serverReplicationParametersToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "seedTime" "" -- val.seedTime
        
    --     |> Dict.insert
    --         "frequency" "" -- val.frequency
        
    --     |> Dict.insert
    --         "runOnce" "" -- val.runOnce
        
    --     |> Dict.insert
    --         "licenseType" "" -- val.licenseType
        
    --     |> Dict.insert
    --         "numberOfRecentAmisToKeep" "" -- val.numberOfRecentAmisToKeep
        
    --     |> Dict.insert
    --         "encrypted" "" -- val.encrypted
        
    --     |> Dict.insert
    --         "kmsKeyId" "" -- val.kmsKeyId
        
    --     |> Dict.toList
    ""



{-| One of

* `ServerType_VIRTUAL_MACHINE`

-}
type ServerType
    = ServerType_VIRTUAL_MACHINE



serverTypeDecoder : JD.Decoder ServerType
serverTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "VIRTUAL_MACHINE" ->
                        JD.succeed ServerType_VIRTUAL_MACHINE


                    _ ->
                        JD.fail "bad thing"
            )




serverTypeToString : ServerType -> String
serverTypeToString val =
    case val of
        ServerType_VIRTUAL_MACHINE ->
            "VIRTUAL_MACHINE"




{-| Type of HTTP response from startAppReplication
-}
type alias StartAppReplicationResponse =
    { 
    }



startAppReplicationResponseDecoder : JD.Decoder StartAppReplicationResponse
startAppReplicationResponseDecoder =
    JD.succeed StartAppReplicationResponse
        




startAppReplicationResponseToString : StartAppReplicationResponse -> String -- List (String, String)
startAppReplicationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startOnDemandReplicationRun
-}
type alias StartOnDemandReplicationRunResponse =
    { replicationRunId : Maybe String
    }



startOnDemandReplicationRunResponseDecoder : JD.Decoder StartOnDemandReplicationRunResponse
startOnDemandReplicationRunResponseDecoder =
    JD.succeed StartOnDemandReplicationRunResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["replicationRunId", "ReplicationRunId"]
            JD.string
        )
        




startOnDemandReplicationRunResponseToString : StartOnDemandReplicationRunResponse -> String -- List (String, String)
startOnDemandReplicationRunResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "replicationRunId" "" -- val.replicationRunId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopAppReplication
-}
type alias StopAppReplicationResponse =
    { 
    }



stopAppReplicationResponseDecoder : JD.Decoder StopAppReplicationResponse
stopAppReplicationResponseDecoder =
    JD.succeed StopAppReplicationResponse
        




stopAppReplicationResponseToString : StopAppReplicationResponse -> String -- List (String, String)
stopAppReplicationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>A label that can be assigned to an application.</p>
-}
type alias Tag =
    { key : Maybe String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["key", "Key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
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



{-| Type of HTTP response from terminateApp
-}
type alias TerminateAppResponse =
    { 
    }



terminateAppResponseDecoder : JD.Decoder TerminateAppResponse
terminateAppResponseDecoder =
    JD.succeed TerminateAppResponse
        




terminateAppResponseToString : TerminateAppResponse -> String -- List (String, String)
terminateAppResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateApp
-}
type alias UpdateAppResponse =
    { appSummary : Maybe AppSummary
    , serverGroups : Maybe (List ServerGroup)
    , tags : Maybe (List Tag)
    }



updateAppResponseDecoder : JD.Decoder UpdateAppResponse
updateAppResponseDecoder =
    JD.succeed UpdateAppResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["appSummary", "AppSummary"]
            appSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverGroups", "ServerGroups"]
            (JD.list serverGroupDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




updateAppResponseToString : UpdateAppResponse -> String -- List (String, String)
updateAppResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "appSummary" "" -- val.appSummary
        
    --     |> Dict.insert
    --         "serverGroups" "" -- val.serverGroups
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateReplicationJob
-}
type alias UpdateReplicationJobResponse =
    { 
    }



updateReplicationJobResponseDecoder : JD.Decoder UpdateReplicationJobResponse
updateReplicationJobResponseDecoder =
    JD.succeed UpdateReplicationJobResponse
        




updateReplicationJobResponseToString : UpdateReplicationJobResponse -> String -- List (String, String)
updateReplicationJobResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>A script that runs on first launch of an Amazon EC2 instance. Used for configuring the server during launch.</p>
-}
type alias UserData =
    { s3Location : Maybe S3Location
    }



userDataDecoder : JD.Decoder UserData
userDataDecoder =
    JD.succeed UserData
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["s3Location", "S3Location"]
            s3LocationDecoder
        )
        




userDataToString : UserData -> String -- List (String, String)
userDataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s3Location" "" -- val.s3Location
        
    --     |> Dict.toList
    ""



{-| One of

* `VmManagerType_VSPHERE`
* `VmManagerType_SCVMM`
* `VmManagerType_HYPERV-MANAGER`

-}
type VmManagerType
    = VmManagerType_VSPHERE
    | VmManagerType_SCVMM
    | VmManagerType_HYPERV_MANAGER



vmManagerTypeDecoder : JD.Decoder VmManagerType
vmManagerTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "VSPHERE" ->
                        JD.succeed VmManagerType_VSPHERE

                    "SCVMM" ->
                        JD.succeed VmManagerType_SCVMM

                    "HYPERV_MANAGER" ->
                        JD.succeed VmManagerType_HYPERV_MANAGER


                    _ ->
                        JD.fail "bad thing"
            )




vmManagerTypeToString : VmManagerType -> String
vmManagerTypeToString val =
    case val of
        VmManagerType_VSPHERE ->
            "VSPHERE"

        VmManagerType_SCVMM ->
            "SCVMM"

        VmManagerType_HYPERV_MANAGER ->
            "HYPERV_MANAGER"




{-| <p>Represents a VM server.</p>
-}
type alias VmServer =
    { vmServerAddress : Maybe VmServerAddress
    , vmName : Maybe String
    , vmManagerName : Maybe String
    , vmManagerType : Maybe VmManagerType
    , vmPath : Maybe String
    }



vmServerDecoder : JD.Decoder VmServer
vmServerDecoder =
    JD.succeed VmServer
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vmServerAddress", "VmServerAddress"]
            vmServerAddressDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vmName", "VmName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vmManagerName", "VmManagerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vmManagerType", "VmManagerType"]
            vmManagerTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vmPath", "VmPath"]
            JD.string
        )
        




vmServerToString : VmServer -> String -- List (String, String)
vmServerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "vmServerAddress" "" -- val.vmServerAddress
        
    --     |> Dict.insert
    --         "vmName" "" -- val.vmName
        
    --     |> Dict.insert
    --         "vmManagerName" "" -- val.vmManagerName
        
    --     |> Dict.insert
    --         "vmManagerType" "" -- val.vmManagerType
        
    --     |> Dict.insert
    --         "vmPath" "" -- val.vmPath
        
    --     |> Dict.toList
    ""



{-| <p>Represents a VM server location.</p>
-}
type alias VmServerAddress =
    { vmManagerId : Maybe String
    , vmId : Maybe String
    }



vmServerAddressDecoder : JD.Decoder VmServerAddress
vmServerAddressDecoder =
    JD.succeed VmServerAddress
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vmManagerId", "VmManagerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vmId", "VmId"]
            JD.string
        )
        




vmServerAddressToString : VmServerAddress -> String -- List (String, String)
vmServerAddressToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "vmManagerId" "" -- val.vmManagerId
        
    --     |> Dict.insert
    --         "vmId" "" -- val.vmId
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias CreateAppRequest =
    { name : Maybe String
    , description : Maybe String
    , roleName : Maybe String
    , clientToken : Maybe String
    , serverGroups : Maybe (List ServerGroup)
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateReplicationJobRequest =
    { serverId : String
    , seedReplicationTime : Posix
    , frequency : Maybe Int
    , runOnce : Maybe Bool
    , licenseType : Maybe LicenseType
    , roleName : Maybe String
    , description : Maybe String
    , numberOfRecentAmisToKeep : Maybe Int
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    }


{-| undefined
-}
type alias DeleteAppLaunchConfigurationRequest =
    { appId : Maybe String
    }


{-| undefined
-}
type alias DeleteAppReplicationConfigurationRequest =
    { appId : Maybe String
    }


{-| undefined
-}
type alias DeleteAppRequest =
    { appId : Maybe String
    , forceStopAppReplication : Maybe Bool
    , forceTerminateApp : Maybe Bool
    }


{-| undefined
-}
type alias DeleteReplicationJobRequest =
    { replicationJobId : String
    }


{-| undefined
-}
type alias DeleteServerCatalogRequest =
    { 
    }


{-| undefined
-}
type alias DisassociateConnectorRequest =
    { connectorId : String
    }


{-| undefined
-}
type alias GenerateChangeSetRequest =
    { appId : Maybe String
    , changesetFormat : Maybe OutputFormat
    }


{-| undefined
-}
type alias GenerateTemplateRequest =
    { appId : Maybe String
    , templateFormat : Maybe OutputFormat
    }


{-| undefined
-}
type alias GetAppLaunchConfigurationRequest =
    { appId : Maybe String
    }


{-| undefined
-}
type alias GetAppReplicationConfigurationRequest =
    { appId : Maybe String
    }


{-| undefined
-}
type alias GetAppRequest =
    { appId : Maybe String
    }


{-| undefined
-}
type alias GetConnectorsRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetReplicationJobsRequest =
    { replicationJobId : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetReplicationRunsRequest =
    { replicationJobId : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetServersRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , vmServerAddressList : Maybe (List VmServerAddress)
    }


{-| undefined
-}
type alias ImportServerCatalogRequest =
    { 
    }


{-| undefined
-}
type alias LaunchAppRequest =
    { appId : Maybe String
    }


{-| undefined
-}
type alias ListAppsRequest =
    { appIds : Maybe (List String)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias PutAppLaunchConfigurationRequest =
    { appId : Maybe String
    , roleName : Maybe String
    , serverGroupLaunchConfigurations : Maybe (List ServerGroupLaunchConfiguration)
    }


{-| undefined
-}
type alias PutAppReplicationConfigurationRequest =
    { appId : Maybe String
    , serverGroupReplicationConfigurations : Maybe (List ServerGroupReplicationConfiguration)
    }


{-| undefined
-}
type alias StartAppReplicationRequest =
    { appId : Maybe String
    }


{-| undefined
-}
type alias StartOnDemandReplicationRunRequest =
    { replicationJobId : String
    , description : Maybe String
    }


{-| undefined
-}
type alias StopAppReplicationRequest =
    { appId : Maybe String
    }


{-| undefined
-}
type alias TerminateAppRequest =
    { appId : Maybe String
    }


{-| undefined
-}
type alias UpdateAppRequest =
    { appId : Maybe String
    , name : Maybe String
    , description : Maybe String
    , roleName : Maybe String
    , serverGroups : Maybe (List ServerGroup)
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias UpdateReplicationJobRequest =
    { replicationJobId : String
    , frequency : Maybe Int
    , nextReplicationRunStartTime : Maybe Posix
    , licenseType : Maybe LicenseType
    , roleName : Maybe String
    , description : Maybe String
    , numberOfRecentAmisToKeep : Maybe Int
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    }


















appSummaryEncoder : AppSummary -> JE.Value
appSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (appStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("statusMessage", data.statusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (appReplicationStatusToString >> JE.string)
            ("replicationStatus", data.replicationStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("replicationStatusMessage", data.replicationStatusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("latestReplicationTime", data.latestReplicationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (appLaunchStatusToString >> JE.string)
            ("launchStatus", data.launchStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("launchStatusMessage", data.launchStatusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (launchDetailsEncoder)
            ("launchDetails", data.launchDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("creationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastModified", data.lastModified)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleName", data.roleName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("totalServerGroups", data.totalServerGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("totalServers", data.totalServers)
        
        
        |> JE.object






connectorEncoder : Connector -> JE.Value
connectorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("connectorId", data.connectorId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (connectorStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (connectorCapabilityToString >> JE.string))
            ("capabilityList", data.capabilityList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vmManagerName", data.vmManagerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (vmManagerTypeToString >> JE.string)
            ("vmManagerType", data.vmManagerType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vmManagerId", data.vmManagerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ipAddress", data.ipAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("macAddress", data.macAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("associatedOn", data.associatedOn)
        
        
        |> JE.object














createAppRequestEncoder : CreateAppRequest -> JE.Value
createAppRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleName", data.roleName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientToken", data.clientToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serverGroupEncoder))
            ("serverGroups", data.serverGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createAppResponseEncoder : CreateAppResponse -> JE.Value
createAppResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (appSummaryEncoder)
            ("appSummary", data.appSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serverGroupEncoder))
            ("serverGroups", data.serverGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createReplicationJobRequestEncoder : CreateReplicationJobRequest -> JE.Value
createReplicationJobRequestEncoder data =
    []
        
        
        |> (::) ("serverId", data.serverId |> (JE.string))
        
        
        
        |> (::) ("seedReplicationTime", data.seedReplicationTime |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("frequency", data.frequency)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("runOnce", data.runOnce)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (licenseTypeToString >> JE.string)
            ("licenseType", data.licenseType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleName", data.roleName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("numberOfRecentAmisToKeep", data.numberOfRecentAmisToKeep)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("encrypted", data.encrypted)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("kmsKeyId", data.kmsKeyId)
        
        
        |> JE.object






createReplicationJobResponseEncoder : CreateReplicationJobResponse -> JE.Value
createReplicationJobResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("replicationJobId", data.replicationJobId)
        
        
        |> JE.object






deleteAppLaunchConfigurationRequestEncoder : DeleteAppLaunchConfigurationRequest -> JE.Value
deleteAppLaunchConfigurationRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        |> JE.object






deleteAppLaunchConfigurationResponseEncoder : DeleteAppLaunchConfigurationResponse -> JE.Value
deleteAppLaunchConfigurationResponseEncoder data =
    []
        
        |> JE.object






deleteAppReplicationConfigurationRequestEncoder : DeleteAppReplicationConfigurationRequest -> JE.Value
deleteAppReplicationConfigurationRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        |> JE.object






deleteAppReplicationConfigurationResponseEncoder : DeleteAppReplicationConfigurationResponse -> JE.Value
deleteAppReplicationConfigurationResponseEncoder data =
    []
        
        |> JE.object






deleteAppRequestEncoder : DeleteAppRequest -> JE.Value
deleteAppRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("forceStopAppReplication", data.forceStopAppReplication)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("forceTerminateApp", data.forceTerminateApp)
        
        
        |> JE.object






deleteAppResponseEncoder : DeleteAppResponse -> JE.Value
deleteAppResponseEncoder data =
    []
        
        |> JE.object






deleteReplicationJobRequestEncoder : DeleteReplicationJobRequest -> JE.Value
deleteReplicationJobRequestEncoder data =
    []
        
        
        |> (::) ("replicationJobId", data.replicationJobId |> (JE.string))
        
        
        |> JE.object






deleteReplicationJobResponseEncoder : DeleteReplicationJobResponse -> JE.Value
deleteReplicationJobResponseEncoder data =
    []
        
        |> JE.object






deleteServerCatalogRequestEncoder : DeleteServerCatalogRequest -> JE.Value
deleteServerCatalogRequestEncoder data =
    []
        
        |> JE.object






deleteServerCatalogResponseEncoder : DeleteServerCatalogResponse -> JE.Value
deleteServerCatalogResponseEncoder data =
    []
        
        |> JE.object






disassociateConnectorRequestEncoder : DisassociateConnectorRequest -> JE.Value
disassociateConnectorRequestEncoder data =
    []
        
        
        |> (::) ("connectorId", data.connectorId |> (JE.string))
        
        
        |> JE.object






disassociateConnectorResponseEncoder : DisassociateConnectorResponse -> JE.Value
disassociateConnectorResponseEncoder data =
    []
        
        |> JE.object






generateChangeSetRequestEncoder : GenerateChangeSetRequest -> JE.Value
generateChangeSetRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (outputFormatToString >> JE.string)
            ("changesetFormat", data.changesetFormat)
        
        
        |> JE.object






generateChangeSetResponseEncoder : GenerateChangeSetResponse -> JE.Value
generateChangeSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (s3LocationEncoder)
            ("s3Location", data.s3Location)
        
        
        |> JE.object






generateTemplateRequestEncoder : GenerateTemplateRequest -> JE.Value
generateTemplateRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (outputFormatToString >> JE.string)
            ("templateFormat", data.templateFormat)
        
        
        |> JE.object






generateTemplateResponseEncoder : GenerateTemplateResponse -> JE.Value
generateTemplateResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (s3LocationEncoder)
            ("s3Location", data.s3Location)
        
        
        |> JE.object






getAppLaunchConfigurationRequestEncoder : GetAppLaunchConfigurationRequest -> JE.Value
getAppLaunchConfigurationRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        |> JE.object






getAppLaunchConfigurationResponseEncoder : GetAppLaunchConfigurationResponse -> JE.Value
getAppLaunchConfigurationResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleName", data.roleName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serverGroupLaunchConfigurationEncoder))
            ("serverGroupLaunchConfigurations", data.serverGroupLaunchConfigurations)
        
        
        |> JE.object






getAppReplicationConfigurationRequestEncoder : GetAppReplicationConfigurationRequest -> JE.Value
getAppReplicationConfigurationRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        |> JE.object






getAppReplicationConfigurationResponseEncoder : GetAppReplicationConfigurationResponse -> JE.Value
getAppReplicationConfigurationResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serverGroupReplicationConfigurationEncoder))
            ("serverGroupReplicationConfigurations", data.serverGroupReplicationConfigurations)
        
        
        |> JE.object






getAppRequestEncoder : GetAppRequest -> JE.Value
getAppRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        |> JE.object






getAppResponseEncoder : GetAppResponse -> JE.Value
getAppResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (appSummaryEncoder)
            ("appSummary", data.appSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serverGroupEncoder))
            ("serverGroups", data.serverGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






getConnectorsRequestEncoder : GetConnectorsRequest -> JE.Value
getConnectorsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






getConnectorsResponseEncoder : GetConnectorsResponse -> JE.Value
getConnectorsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (connectorEncoder))
            ("connectorList", data.connectorList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






getReplicationJobsRequestEncoder : GetReplicationJobsRequest -> JE.Value
getReplicationJobsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("replicationJobId", data.replicationJobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






getReplicationJobsResponseEncoder : GetReplicationJobsResponse -> JE.Value
getReplicationJobsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (replicationJobEncoder))
            ("replicationJobList", data.replicationJobList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






getReplicationRunsRequestEncoder : GetReplicationRunsRequest -> JE.Value
getReplicationRunsRequestEncoder data =
    []
        
        
        |> (::) ("replicationJobId", data.replicationJobId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






getReplicationRunsResponseEncoder : GetReplicationRunsResponse -> JE.Value
getReplicationRunsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (replicationJobEncoder)
            ("replicationJob", data.replicationJob)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (replicationRunEncoder))
            ("replicationRunList", data.replicationRunList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






getServersRequestEncoder : GetServersRequest -> JE.Value
getServersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (vmServerAddressEncoder))
            ("vmServerAddressList", data.vmServerAddressList)
        
        
        |> JE.object






getServersResponseEncoder : GetServersResponse -> JE.Value
getServersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastModifiedOn", data.lastModifiedOn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (serverCatalogStatusToString >> JE.string)
            ("serverCatalogStatus", data.serverCatalogStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serverEncoder))
            ("serverList", data.serverList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






importServerCatalogRequestEncoder : ImportServerCatalogRequest -> JE.Value
importServerCatalogRequestEncoder data =
    []
        
        |> JE.object






importServerCatalogResponseEncoder : ImportServerCatalogResponse -> JE.Value
importServerCatalogResponseEncoder data =
    []
        
        |> JE.object






launchAppRequestEncoder : LaunchAppRequest -> JE.Value
launchAppRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        |> JE.object






launchAppResponseEncoder : LaunchAppResponse -> JE.Value
launchAppResponseEncoder data =
    []
        
        |> JE.object






launchDetailsEncoder : LaunchDetails -> JE.Value
launchDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("latestLaunchTime", data.latestLaunchTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("stackName", data.stackName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("stackId", data.stackId)
        
        
        |> JE.object










listAppsRequestEncoder : ListAppsRequest -> JE.Value
listAppsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("appIds", data.appIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listAppsResponseEncoder : ListAppsResponse -> JE.Value
listAppsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (appSummaryEncoder))
            ("apps", data.apps)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object










putAppLaunchConfigurationRequestEncoder : PutAppLaunchConfigurationRequest -> JE.Value
putAppLaunchConfigurationRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleName", data.roleName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serverGroupLaunchConfigurationEncoder))
            ("serverGroupLaunchConfigurations", data.serverGroupLaunchConfigurations)
        
        
        |> JE.object






putAppLaunchConfigurationResponseEncoder : PutAppLaunchConfigurationResponse -> JE.Value
putAppLaunchConfigurationResponseEncoder data =
    []
        
        |> JE.object






putAppReplicationConfigurationRequestEncoder : PutAppReplicationConfigurationRequest -> JE.Value
putAppReplicationConfigurationRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serverGroupReplicationConfigurationEncoder))
            ("serverGroupReplicationConfigurations", data.serverGroupReplicationConfigurations)
        
        
        |> JE.object






putAppReplicationConfigurationResponseEncoder : PutAppReplicationConfigurationResponse -> JE.Value
putAppReplicationConfigurationResponseEncoder data =
    []
        
        |> JE.object






replicationJobEncoder : ReplicationJob -> JE.Value
replicationJobEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("replicationJobId", data.replicationJobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("serverId", data.serverId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (serverTypeToString >> JE.string)
            ("serverType", data.serverType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (vmServerEncoder)
            ("vmServer", data.vmServer)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("seedReplicationTime", data.seedReplicationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("frequency", data.frequency)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("runOnce", data.runOnce)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("nextReplicationRunStartTime", data.nextReplicationRunStartTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (licenseTypeToString >> JE.string)
            ("licenseType", data.licenseType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleName", data.roleName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("latestAmiId", data.latestAmiId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (replicationJobStateToString >> JE.string)
            ("state", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("statusMessage", data.statusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("numberOfRecentAmisToKeep", data.numberOfRecentAmisToKeep)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("encrypted", data.encrypted)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("kmsKeyId", data.kmsKeyId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (replicationRunEncoder))
            ("replicationRunList", data.replicationRunList)
        
        
        |> JE.object










replicationRunEncoder : ReplicationRun -> JE.Value
replicationRunEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("replicationRunId", data.replicationRunId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (replicationRunStateToString >> JE.string)
            ("state", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (replicationRunTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (replicationRunStageDetailsEncoder)
            ("stageDetails", data.stageDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("statusMessage", data.statusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("amiId", data.amiId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("scheduledStartTime", data.scheduledStartTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("completedTime", data.completedTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("encrypted", data.encrypted)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("kmsKeyId", data.kmsKeyId)
        
        
        |> JE.object






replicationRunStageDetailsEncoder : ReplicationRunStageDetails -> JE.Value
replicationRunStageDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("stage", data.stage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("stageProgress", data.stageProgress)
        
        
        |> JE.object














s3LocationEncoder : S3Location -> JE.Value
s3LocationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("bucket", data.bucket)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("key", data.key)
        
        
        |> JE.object






serverEncoder : Server -> JE.Value
serverEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("serverId", data.serverId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (serverTypeToString >> JE.string)
            ("serverType", data.serverType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (vmServerEncoder)
            ("vmServer", data.vmServer)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("replicationJobId", data.replicationJobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("replicationJobTerminated", data.replicationJobTerminated)
        
        
        |> JE.object










serverGroupEncoder : ServerGroup -> JE.Value
serverGroupEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("serverGroupId", data.serverGroupId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serverEncoder))
            ("serverList", data.serverList)
        
        
        |> JE.object






serverGroupLaunchConfigurationEncoder : ServerGroupLaunchConfiguration -> JE.Value
serverGroupLaunchConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("serverGroupId", data.serverGroupId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("launchOrder", data.launchOrder)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serverLaunchConfigurationEncoder))
            ("serverLaunchConfigurations", data.serverLaunchConfigurations)
        
        
        |> JE.object






serverGroupReplicationConfigurationEncoder : ServerGroupReplicationConfiguration -> JE.Value
serverGroupReplicationConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("serverGroupId", data.serverGroupId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serverReplicationConfigurationEncoder))
            ("serverReplicationConfigurations", data.serverReplicationConfigurations)
        
        
        |> JE.object






serverLaunchConfigurationEncoder : ServerLaunchConfiguration -> JE.Value
serverLaunchConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (serverEncoder)
            ("server", data.server)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("logicalId", data.logicalId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vpc", data.vpc)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("subnet", data.subnet)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("securityGroup", data.securityGroup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ec2KeyName", data.ec2KeyName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userDataEncoder)
            ("userData", data.userData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("instanceType", data.instanceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("associatePublicIpAddress", data.associatePublicIpAddress)
        
        
        |> JE.object






serverReplicationConfigurationEncoder : ServerReplicationConfiguration -> JE.Value
serverReplicationConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (serverEncoder)
            ("server", data.server)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (serverReplicationParametersEncoder)
            ("serverReplicationParameters", data.serverReplicationParameters)
        
        
        |> JE.object






serverReplicationParametersEncoder : ServerReplicationParameters -> JE.Value
serverReplicationParametersEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("seedTime", data.seedTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("frequency", data.frequency)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("runOnce", data.runOnce)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (licenseTypeToString >> JE.string)
            ("licenseType", data.licenseType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("numberOfRecentAmisToKeep", data.numberOfRecentAmisToKeep)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("encrypted", data.encrypted)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("kmsKeyId", data.kmsKeyId)
        
        
        |> JE.object










startAppReplicationRequestEncoder : StartAppReplicationRequest -> JE.Value
startAppReplicationRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        |> JE.object






startAppReplicationResponseEncoder : StartAppReplicationResponse -> JE.Value
startAppReplicationResponseEncoder data =
    []
        
        |> JE.object






startOnDemandReplicationRunRequestEncoder : StartOnDemandReplicationRunRequest -> JE.Value
startOnDemandReplicationRunRequestEncoder data =
    []
        
        
        |> (::) ("replicationJobId", data.replicationJobId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        |> JE.object






startOnDemandReplicationRunResponseEncoder : StartOnDemandReplicationRunResponse -> JE.Value
startOnDemandReplicationRunResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("replicationRunId", data.replicationRunId)
        
        
        |> JE.object






stopAppReplicationRequestEncoder : StopAppReplicationRequest -> JE.Value
stopAppReplicationRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        |> JE.object






stopAppReplicationResponseEncoder : StopAppReplicationResponse -> JE.Value
stopAppReplicationResponseEncoder data =
    []
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("value", data.value)
        
        
        |> JE.object






terminateAppRequestEncoder : TerminateAppRequest -> JE.Value
terminateAppRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        |> JE.object






terminateAppResponseEncoder : TerminateAppResponse -> JE.Value
terminateAppResponseEncoder data =
    []
        
        |> JE.object






updateAppRequestEncoder : UpdateAppRequest -> JE.Value
updateAppRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appId", data.appId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleName", data.roleName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serverGroupEncoder))
            ("serverGroups", data.serverGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






updateAppResponseEncoder : UpdateAppResponse -> JE.Value
updateAppResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (appSummaryEncoder)
            ("appSummary", data.appSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serverGroupEncoder))
            ("serverGroups", data.serverGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






updateReplicationJobRequestEncoder : UpdateReplicationJobRequest -> JE.Value
updateReplicationJobRequestEncoder data =
    []
        
        
        |> (::) ("replicationJobId", data.replicationJobId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("frequency", data.frequency)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("nextReplicationRunStartTime", data.nextReplicationRunStartTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (licenseTypeToString >> JE.string)
            ("licenseType", data.licenseType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleName", data.roleName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("numberOfRecentAmisToKeep", data.numberOfRecentAmisToKeep)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("encrypted", data.encrypted)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("kmsKeyId", data.kmsKeyId)
        
        
        |> JE.object






updateReplicationJobResponseEncoder : UpdateReplicationJobResponse -> JE.Value
updateReplicationJobResponseEncoder data =
    []
        
        |> JE.object






userDataEncoder : UserData -> JE.Value
userDataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (s3LocationEncoder)
            ("s3Location", data.s3Location)
        
        
        |> JE.object










vmServerEncoder : VmServer -> JE.Value
vmServerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (vmServerAddressEncoder)
            ("vmServerAddress", data.vmServerAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vmName", data.vmName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vmManagerName", data.vmManagerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (vmManagerTypeToString >> JE.string)
            ("vmManagerType", data.vmManagerType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vmPath", data.vmPath)
        
        
        |> JE.object






vmServerAddressEncoder : VmServerAddress -> JE.Value
vmServerAddressEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vmManagerId", data.vmManagerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vmId", data.vmId)
        
        
        |> JE.object





