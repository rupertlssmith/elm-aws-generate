module AWS.DeviceFarm
    exposing
        ( service
        , createDevicePool
        , CreateDevicePoolOptions
        , createInstanceProfile
        , CreateInstanceProfileOptions
        , createNetworkProfile
        , CreateNetworkProfileOptions
        , createProject
        , CreateProjectOptions
        , createRemoteAccessSession
        , CreateRemoteAccessSessionOptions
        , createUpload
        , CreateUploadOptions
        , createVPCEConfiguration
        , CreateVPCEConfigurationOptions
        , deleteDevicePool
        , deleteInstanceProfile
        , deleteNetworkProfile
        , deleteProject
        , deleteRemoteAccessSession
        , deleteRun
        , deleteUpload
        , deleteVPCEConfiguration
        , getAccountSettings
        , getDevice
        , getDeviceInstance
        , getDevicePool
        , getDevicePoolCompatibility
        , GetDevicePoolCompatibilityOptions
        , getInstanceProfile
        , getJob
        , getNetworkProfile
        , getOfferingStatus
        , GetOfferingStatusOptions
        , getProject
        , getRemoteAccessSession
        , getRun
        , getSuite
        , getTest
        , getUpload
        , getVPCEConfiguration
        , installToRemoteAccessSession
        , listArtifacts
        , ListArtifactsOptions
        , listDeviceInstances
        , ListDeviceInstancesOptions
        , listDevicePools
        , ListDevicePoolsOptions
        , listDevices
        , ListDevicesOptions
        , listInstanceProfiles
        , ListInstanceProfilesOptions
        , listJobs
        , ListJobsOptions
        , listNetworkProfiles
        , ListNetworkProfilesOptions
        , listOfferingPromotions
        , ListOfferingPromotionsOptions
        , listOfferingTransactions
        , ListOfferingTransactionsOptions
        , listOfferings
        , ListOfferingsOptions
        , listProjects
        , ListProjectsOptions
        , listRemoteAccessSessions
        , ListRemoteAccessSessionsOptions
        , listRuns
        , ListRunsOptions
        , listSamples
        , ListSamplesOptions
        , listSuites
        , ListSuitesOptions
        , listTagsForResource
        , listTests
        , ListTestsOptions
        , listUniqueProblems
        , ListUniqueProblemsOptions
        , listUploads
        , ListUploadsOptions
        , listVPCEConfigurations
        , ListVPCEConfigurationsOptions
        , purchaseOffering
        , PurchaseOfferingOptions
        , renewOffering
        , RenewOfferingOptions
        , scheduleRun
        , ScheduleRunOptions
        , stopJob
        , stopRemoteAccessSession
        , stopRun
        , tagResource
        , untagResource
        , updateDeviceInstance
        , UpdateDeviceInstanceOptions
        , updateDevicePool
        , UpdateDevicePoolOptions
        , updateInstanceProfile
        , UpdateInstanceProfileOptions
        , updateNetworkProfile
        , UpdateNetworkProfileOptions
        , updateProject
        , UpdateProjectOptions
        , updateUpload
        , UpdateUploadOptions
        , updateVPCEConfiguration
        , UpdateVPCEConfigurationOptions
        , AccountSettings
        , Artifact
        , ArtifactCategory(..)
        , ArtifactType(..)
        , BillingMethod(..)
        , CPU
        , Counters
        , CreateDevicePoolResult
        , CreateInstanceProfileResult
        , CreateNetworkProfileResult
        , CreateProjectResult
        , CreateRemoteAccessSessionConfiguration
        , CreateRemoteAccessSessionResult
        , CreateUploadResult
        , CreateVPCEConfigurationResult
        , CurrencyCode(..)
        , CustomerArtifactPaths
        , DeleteDevicePoolResult
        , DeleteInstanceProfileResult
        , DeleteNetworkProfileResult
        , DeleteProjectResult
        , DeleteRemoteAccessSessionResult
        , DeleteRunResult
        , DeleteUploadResult
        , DeleteVPCEConfigurationResult
        , Device
        , DeviceAttribute(..)
        , DeviceAvailability(..)
        , DeviceFilter
        , DeviceFilterAttribute(..)
        , DeviceFormFactor(..)
        , DeviceInstance
        , DeviceMinutes
        , DevicePlatform(..)
        , DevicePool
        , DevicePoolCompatibilityResult
        , DevicePoolType(..)
        , DeviceSelectionConfiguration
        , DeviceSelectionResult
        , ExecutionConfiguration
        , ExecutionResult(..)
        , ExecutionResultCode(..)
        , ExecutionStatus(..)
        , GetAccountSettingsResult
        , GetDeviceInstanceResult
        , GetDevicePoolCompatibilityResult
        , GetDevicePoolResult
        , GetDeviceResult
        , GetInstanceProfileResult
        , GetJobResult
        , GetNetworkProfileResult
        , GetOfferingStatusResult
        , GetProjectResult
        , GetRemoteAccessSessionResult
        , GetRunResult
        , GetSuiteResult
        , GetTestResult
        , GetUploadResult
        , GetVPCEConfigurationResult
        , IncompatibilityMessage
        , InstallToRemoteAccessSessionResult
        , InstanceProfile
        , InstanceStatus(..)
        , InteractionMode(..)
        , Job
        , ListArtifactsResult
        , ListDeviceInstancesResult
        , ListDevicePoolsResult
        , ListDevicesResult
        , ListInstanceProfilesResult
        , ListJobsResult
        , ListNetworkProfilesResult
        , ListOfferingPromotionsResult
        , ListOfferingTransactionsResult
        , ListOfferingsResult
        , ListProjectsResult
        , ListRemoteAccessSessionsResult
        , ListRunsResult
        , ListSamplesResult
        , ListSuitesResult
        , ListTagsForResourceResponse
        , ListTestsResult
        , ListUniqueProblemsResult
        , ListUploadsResult
        , ListVPCEConfigurationsResult
        , Location
        , MonetaryAmount
        , NetworkProfile
        , NetworkProfileType(..)
        , Offering
        , OfferingPromotion
        , OfferingStatus
        , OfferingTransaction
        , OfferingTransactionType(..)
        , OfferingType(..)
        , Problem
        , ProblemDetail
        , Project
        , PurchaseOfferingResult
        , Radios
        , RecurringCharge
        , RecurringChargeFrequency(..)
        , RemoteAccessSession
        , RenewOfferingResult
        , Resolution
        , Rule
        , RuleOperator(..)
        , Run
        , Sample
        , SampleType(..)
        , ScheduleRunConfiguration
        , ScheduleRunResult
        , ScheduleRunTest
        , StopJobResult
        , StopRemoteAccessSessionResult
        , StopRunResult
        , Suite
        , Tag
        , TagResourceResponse
        , Test
        , TestType(..)
        , TrialMinutes
        , UniqueProblem
        , UntagResourceResponse
        , UpdateDeviceInstanceResult
        , UpdateDevicePoolResult
        , UpdateInstanceProfileResult
        , UpdateNetworkProfileResult
        , UpdateProjectResult
        , UpdateUploadResult
        , UpdateVPCEConfigurationResult
        , Upload
        , UploadCategory(..)
        , UploadStatus(..)
        , UploadType(..)
        , VPCEConfiguration
        )

{-| <p>AWS Device Farm is a service that enables mobile app developers to test Android, iOS, and Fire OS apps on physical phones, tablets, and other devices in the cloud.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [createDevicePool](#createDevicePool)
* [CreateDevicePoolOptions](#CreateDevicePoolOptions)
* [createInstanceProfile](#createInstanceProfile)
* [CreateInstanceProfileOptions](#CreateInstanceProfileOptions)
* [createNetworkProfile](#createNetworkProfile)
* [CreateNetworkProfileOptions](#CreateNetworkProfileOptions)
* [createProject](#createProject)
* [CreateProjectOptions](#CreateProjectOptions)
* [createRemoteAccessSession](#createRemoteAccessSession)
* [CreateRemoteAccessSessionOptions](#CreateRemoteAccessSessionOptions)
* [createUpload](#createUpload)
* [CreateUploadOptions](#CreateUploadOptions)
* [createVPCEConfiguration](#createVPCEConfiguration)
* [CreateVPCEConfigurationOptions](#CreateVPCEConfigurationOptions)
* [deleteDevicePool](#deleteDevicePool)
* [deleteInstanceProfile](#deleteInstanceProfile)
* [deleteNetworkProfile](#deleteNetworkProfile)
* [deleteProject](#deleteProject)
* [deleteRemoteAccessSession](#deleteRemoteAccessSession)
* [deleteRun](#deleteRun)
* [deleteUpload](#deleteUpload)
* [deleteVPCEConfiguration](#deleteVPCEConfiguration)
* [getAccountSettings](#getAccountSettings)
* [getDevice](#getDevice)
* [getDeviceInstance](#getDeviceInstance)
* [getDevicePool](#getDevicePool)
* [getDevicePoolCompatibility](#getDevicePoolCompatibility)
* [GetDevicePoolCompatibilityOptions](#GetDevicePoolCompatibilityOptions)
* [getInstanceProfile](#getInstanceProfile)
* [getJob](#getJob)
* [getNetworkProfile](#getNetworkProfile)
* [getOfferingStatus](#getOfferingStatus)
* [GetOfferingStatusOptions](#GetOfferingStatusOptions)
* [getProject](#getProject)
* [getRemoteAccessSession](#getRemoteAccessSession)
* [getRun](#getRun)
* [getSuite](#getSuite)
* [getTest](#getTest)
* [getUpload](#getUpload)
* [getVPCEConfiguration](#getVPCEConfiguration)
* [installToRemoteAccessSession](#installToRemoteAccessSession)
* [listArtifacts](#listArtifacts)
* [ListArtifactsOptions](#ListArtifactsOptions)
* [listDeviceInstances](#listDeviceInstances)
* [ListDeviceInstancesOptions](#ListDeviceInstancesOptions)
* [listDevicePools](#listDevicePools)
* [ListDevicePoolsOptions](#ListDevicePoolsOptions)
* [listDevices](#listDevices)
* [ListDevicesOptions](#ListDevicesOptions)
* [listInstanceProfiles](#listInstanceProfiles)
* [ListInstanceProfilesOptions](#ListInstanceProfilesOptions)
* [listJobs](#listJobs)
* [ListJobsOptions](#ListJobsOptions)
* [listNetworkProfiles](#listNetworkProfiles)
* [ListNetworkProfilesOptions](#ListNetworkProfilesOptions)
* [listOfferingPromotions](#listOfferingPromotions)
* [ListOfferingPromotionsOptions](#ListOfferingPromotionsOptions)
* [listOfferingTransactions](#listOfferingTransactions)
* [ListOfferingTransactionsOptions](#ListOfferingTransactionsOptions)
* [listOfferings](#listOfferings)
* [ListOfferingsOptions](#ListOfferingsOptions)
* [listProjects](#listProjects)
* [ListProjectsOptions](#ListProjectsOptions)
* [listRemoteAccessSessions](#listRemoteAccessSessions)
* [ListRemoteAccessSessionsOptions](#ListRemoteAccessSessionsOptions)
* [listRuns](#listRuns)
* [ListRunsOptions](#ListRunsOptions)
* [listSamples](#listSamples)
* [ListSamplesOptions](#ListSamplesOptions)
* [listSuites](#listSuites)
* [ListSuitesOptions](#ListSuitesOptions)
* [listTagsForResource](#listTagsForResource)
* [listTests](#listTests)
* [ListTestsOptions](#ListTestsOptions)
* [listUniqueProblems](#listUniqueProblems)
* [ListUniqueProblemsOptions](#ListUniqueProblemsOptions)
* [listUploads](#listUploads)
* [ListUploadsOptions](#ListUploadsOptions)
* [listVPCEConfigurations](#listVPCEConfigurations)
* [ListVPCEConfigurationsOptions](#ListVPCEConfigurationsOptions)
* [purchaseOffering](#purchaseOffering)
* [PurchaseOfferingOptions](#PurchaseOfferingOptions)
* [renewOffering](#renewOffering)
* [RenewOfferingOptions](#RenewOfferingOptions)
* [scheduleRun](#scheduleRun)
* [ScheduleRunOptions](#ScheduleRunOptions)
* [stopJob](#stopJob)
* [stopRemoteAccessSession](#stopRemoteAccessSession)
* [stopRun](#stopRun)
* [tagResource](#tagResource)
* [untagResource](#untagResource)
* [updateDeviceInstance](#updateDeviceInstance)
* [UpdateDeviceInstanceOptions](#UpdateDeviceInstanceOptions)
* [updateDevicePool](#updateDevicePool)
* [UpdateDevicePoolOptions](#UpdateDevicePoolOptions)
* [updateInstanceProfile](#updateInstanceProfile)
* [UpdateInstanceProfileOptions](#UpdateInstanceProfileOptions)
* [updateNetworkProfile](#updateNetworkProfile)
* [UpdateNetworkProfileOptions](#UpdateNetworkProfileOptions)
* [updateProject](#updateProject)
* [UpdateProjectOptions](#UpdateProjectOptions)
* [updateUpload](#updateUpload)
* [UpdateUploadOptions](#UpdateUploadOptions)
* [updateVPCEConfiguration](#updateVPCEConfiguration)
* [UpdateVPCEConfigurationOptions](#UpdateVPCEConfigurationOptions)


@docs createDevicePool,CreateDevicePoolOptions,createInstanceProfile,CreateInstanceProfileOptions,createNetworkProfile,CreateNetworkProfileOptions,createProject,CreateProjectOptions,createRemoteAccessSession,CreateRemoteAccessSessionOptions,createUpload,CreateUploadOptions,createVPCEConfiguration,CreateVPCEConfigurationOptions,deleteDevicePool,deleteInstanceProfile,deleteNetworkProfile,deleteProject,deleteRemoteAccessSession,deleteRun,deleteUpload,deleteVPCEConfiguration,getAccountSettings,getDevice,getDeviceInstance,getDevicePool,getDevicePoolCompatibility,GetDevicePoolCompatibilityOptions,getInstanceProfile,getJob,getNetworkProfile,getOfferingStatus,GetOfferingStatusOptions,getProject,getRemoteAccessSession,getRun,getSuite,getTest,getUpload,getVPCEConfiguration,installToRemoteAccessSession,listArtifacts,ListArtifactsOptions,listDeviceInstances,ListDeviceInstancesOptions,listDevicePools,ListDevicePoolsOptions,listDevices,ListDevicesOptions,listInstanceProfiles,ListInstanceProfilesOptions,listJobs,ListJobsOptions,listNetworkProfiles,ListNetworkProfilesOptions,listOfferingPromotions,ListOfferingPromotionsOptions,listOfferingTransactions,ListOfferingTransactionsOptions,listOfferings,ListOfferingsOptions,listProjects,ListProjectsOptions,listRemoteAccessSessions,ListRemoteAccessSessionsOptions,listRuns,ListRunsOptions,listSamples,ListSamplesOptions,listSuites,ListSuitesOptions,listTagsForResource,listTests,ListTestsOptions,listUniqueProblems,ListUniqueProblemsOptions,listUploads,ListUploadsOptions,listVPCEConfigurations,ListVPCEConfigurationsOptions,purchaseOffering,PurchaseOfferingOptions,renewOffering,RenewOfferingOptions,scheduleRun,ScheduleRunOptions,stopJob,stopRemoteAccessSession,stopRun,tagResource,untagResource,updateDeviceInstance,UpdateDeviceInstanceOptions,updateDevicePool,UpdateDevicePoolOptions,updateInstanceProfile,UpdateInstanceProfileOptions,updateNetworkProfile,UpdateNetworkProfileOptions,updateProject,UpdateProjectOptions,updateUpload,UpdateUploadOptions,updateVPCEConfiguration,UpdateVPCEConfigurationOptions

## Responses

* [CreateDevicePoolResult](#CreateDevicePoolResult)
* [CreateInstanceProfileResult](#CreateInstanceProfileResult)
* [CreateNetworkProfileResult](#CreateNetworkProfileResult)
* [CreateProjectResult](#CreateProjectResult)
* [CreateRemoteAccessSessionResult](#CreateRemoteAccessSessionResult)
* [CreateUploadResult](#CreateUploadResult)
* [CreateVPCEConfigurationResult](#CreateVPCEConfigurationResult)
* [DeleteDevicePoolResult](#DeleteDevicePoolResult)
* [DeleteInstanceProfileResult](#DeleteInstanceProfileResult)
* [DeleteNetworkProfileResult](#DeleteNetworkProfileResult)
* [DeleteProjectResult](#DeleteProjectResult)
* [DeleteRemoteAccessSessionResult](#DeleteRemoteAccessSessionResult)
* [DeleteRunResult](#DeleteRunResult)
* [DeleteUploadResult](#DeleteUploadResult)
* [DeleteVPCEConfigurationResult](#DeleteVPCEConfigurationResult)
* [GetAccountSettingsResult](#GetAccountSettingsResult)
* [GetDeviceInstanceResult](#GetDeviceInstanceResult)
* [GetDevicePoolCompatibilityResult](#GetDevicePoolCompatibilityResult)
* [GetDevicePoolResult](#GetDevicePoolResult)
* [GetDeviceResult](#GetDeviceResult)
* [GetInstanceProfileResult](#GetInstanceProfileResult)
* [GetJobResult](#GetJobResult)
* [GetNetworkProfileResult](#GetNetworkProfileResult)
* [GetOfferingStatusResult](#GetOfferingStatusResult)
* [GetProjectResult](#GetProjectResult)
* [GetRemoteAccessSessionResult](#GetRemoteAccessSessionResult)
* [GetRunResult](#GetRunResult)
* [GetSuiteResult](#GetSuiteResult)
* [GetTestResult](#GetTestResult)
* [GetUploadResult](#GetUploadResult)
* [GetVPCEConfigurationResult](#GetVPCEConfigurationResult)
* [InstallToRemoteAccessSessionResult](#InstallToRemoteAccessSessionResult)
* [ListArtifactsResult](#ListArtifactsResult)
* [ListDeviceInstancesResult](#ListDeviceInstancesResult)
* [ListDevicePoolsResult](#ListDevicePoolsResult)
* [ListDevicesResult](#ListDevicesResult)
* [ListInstanceProfilesResult](#ListInstanceProfilesResult)
* [ListJobsResult](#ListJobsResult)
* [ListNetworkProfilesResult](#ListNetworkProfilesResult)
* [ListOfferingPromotionsResult](#ListOfferingPromotionsResult)
* [ListOfferingTransactionsResult](#ListOfferingTransactionsResult)
* [ListOfferingsResult](#ListOfferingsResult)
* [ListProjectsResult](#ListProjectsResult)
* [ListRemoteAccessSessionsResult](#ListRemoteAccessSessionsResult)
* [ListRunsResult](#ListRunsResult)
* [ListSamplesResult](#ListSamplesResult)
* [ListSuitesResult](#ListSuitesResult)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [ListTestsResult](#ListTestsResult)
* [ListUniqueProblemsResult](#ListUniqueProblemsResult)
* [ListUploadsResult](#ListUploadsResult)
* [ListVPCEConfigurationsResult](#ListVPCEConfigurationsResult)
* [PurchaseOfferingResult](#PurchaseOfferingResult)
* [RenewOfferingResult](#RenewOfferingResult)
* [ScheduleRunResult](#ScheduleRunResult)
* [StopJobResult](#StopJobResult)
* [StopRemoteAccessSessionResult](#StopRemoteAccessSessionResult)
* [StopRunResult](#StopRunResult)
* [TagResourceResponse](#TagResourceResponse)
* [UntagResourceResponse](#UntagResourceResponse)
* [UpdateDeviceInstanceResult](#UpdateDeviceInstanceResult)
* [UpdateDevicePoolResult](#UpdateDevicePoolResult)
* [UpdateInstanceProfileResult](#UpdateInstanceProfileResult)
* [UpdateNetworkProfileResult](#UpdateNetworkProfileResult)
* [UpdateProjectResult](#UpdateProjectResult)
* [UpdateUploadResult](#UpdateUploadResult)
* [UpdateVPCEConfigurationResult](#UpdateVPCEConfigurationResult)


@docs CreateDevicePoolResult,CreateInstanceProfileResult,CreateNetworkProfileResult,CreateProjectResult,CreateRemoteAccessSessionResult,CreateUploadResult,CreateVPCEConfigurationResult,DeleteDevicePoolResult,DeleteInstanceProfileResult,DeleteNetworkProfileResult,DeleteProjectResult,DeleteRemoteAccessSessionResult,DeleteRunResult,DeleteUploadResult,DeleteVPCEConfigurationResult,GetAccountSettingsResult,GetDeviceInstanceResult,GetDevicePoolCompatibilityResult,GetDevicePoolResult,GetDeviceResult,GetInstanceProfileResult,GetJobResult,GetNetworkProfileResult,GetOfferingStatusResult,GetProjectResult,GetRemoteAccessSessionResult,GetRunResult,GetSuiteResult,GetTestResult,GetUploadResult,GetVPCEConfigurationResult,InstallToRemoteAccessSessionResult,ListArtifactsResult,ListDeviceInstancesResult,ListDevicePoolsResult,ListDevicesResult,ListInstanceProfilesResult,ListJobsResult,ListNetworkProfilesResult,ListOfferingPromotionsResult,ListOfferingTransactionsResult,ListOfferingsResult,ListProjectsResult,ListRemoteAccessSessionsResult,ListRunsResult,ListSamplesResult,ListSuitesResult,ListTagsForResourceResponse,ListTestsResult,ListUniqueProblemsResult,ListUploadsResult,ListVPCEConfigurationsResult,PurchaseOfferingResult,RenewOfferingResult,ScheduleRunResult,StopJobResult,StopRemoteAccessSessionResult,StopRunResult,TagResourceResponse,UntagResourceResponse,UpdateDeviceInstanceResult,UpdateDevicePoolResult,UpdateInstanceProfileResult,UpdateNetworkProfileResult,UpdateProjectResult,UpdateUploadResult,UpdateVPCEConfigurationResult

## Records

* [AccountSettings](#AccountSettings)
* [Artifact](#Artifact)
* [CPU](#CPU)
* [Counters](#Counters)
* [CreateRemoteAccessSessionConfiguration](#CreateRemoteAccessSessionConfiguration)
* [CustomerArtifactPaths](#CustomerArtifactPaths)
* [Device](#Device)
* [DeviceFilter](#DeviceFilter)
* [DeviceInstance](#DeviceInstance)
* [DeviceMinutes](#DeviceMinutes)
* [DevicePool](#DevicePool)
* [DevicePoolCompatibilityResult](#DevicePoolCompatibilityResult)
* [DeviceSelectionConfiguration](#DeviceSelectionConfiguration)
* [DeviceSelectionResult](#DeviceSelectionResult)
* [ExecutionConfiguration](#ExecutionConfiguration)
* [IncompatibilityMessage](#IncompatibilityMessage)
* [InstanceProfile](#InstanceProfile)
* [Job](#Job)
* [Location](#Location)
* [MonetaryAmount](#MonetaryAmount)
* [NetworkProfile](#NetworkProfile)
* [Offering](#Offering)
* [OfferingPromotion](#OfferingPromotion)
* [OfferingStatus](#OfferingStatus)
* [OfferingTransaction](#OfferingTransaction)
* [Problem](#Problem)
* [ProblemDetail](#ProblemDetail)
* [Project](#Project)
* [Radios](#Radios)
* [RecurringCharge](#RecurringCharge)
* [RemoteAccessSession](#RemoteAccessSession)
* [Resolution](#Resolution)
* [Rule](#Rule)
* [Run](#Run)
* [Sample](#Sample)
* [ScheduleRunConfiguration](#ScheduleRunConfiguration)
* [ScheduleRunTest](#ScheduleRunTest)
* [Suite](#Suite)
* [Tag](#Tag)
* [Test](#Test)
* [TrialMinutes](#TrialMinutes)
* [UniqueProblem](#UniqueProblem)
* [Upload](#Upload)
* [VPCEConfiguration](#VPCEConfiguration)


@docs AccountSettings,Artifact,CPU,Counters,CreateRemoteAccessSessionConfiguration,CustomerArtifactPaths,Device,DeviceFilter,DeviceInstance,DeviceMinutes,DevicePool,DevicePoolCompatibilityResult,DeviceSelectionConfiguration,DeviceSelectionResult,ExecutionConfiguration,IncompatibilityMessage,InstanceProfile,Job,Location,MonetaryAmount,NetworkProfile,Offering,OfferingPromotion,OfferingStatus,OfferingTransaction,Problem,ProblemDetail,Project,Radios,RecurringCharge,RemoteAccessSession,Resolution,Rule,Run,Sample,ScheduleRunConfiguration,ScheduleRunTest,Suite,Tag,Test,TrialMinutes,UniqueProblem,Upload,VPCEConfiguration

## Unions

* [ArtifactCategory](#ArtifactCategory)
* [ArtifactType](#ArtifactType)
* [BillingMethod](#BillingMethod)
* [CurrencyCode](#CurrencyCode)
* [DeviceAttribute](#DeviceAttribute)
* [DeviceAvailability](#DeviceAvailability)
* [DeviceFilterAttribute](#DeviceFilterAttribute)
* [DeviceFormFactor](#DeviceFormFactor)
* [DevicePlatform](#DevicePlatform)
* [DevicePoolType](#DevicePoolType)
* [ExecutionResult](#ExecutionResult)
* [ExecutionResultCode](#ExecutionResultCode)
* [ExecutionStatus](#ExecutionStatus)
* [InstanceStatus](#InstanceStatus)
* [InteractionMode](#InteractionMode)
* [NetworkProfileType](#NetworkProfileType)
* [OfferingTransactionType](#OfferingTransactionType)
* [OfferingType](#OfferingType)
* [RecurringChargeFrequency](#RecurringChargeFrequency)
* [RuleOperator](#RuleOperator)
* [SampleType](#SampleType)
* [TestType](#TestType)
* [UploadCategory](#UploadCategory)
* [UploadStatus](#UploadStatus)
* [UploadType](#UploadType)


@docs ArtifactCategory,ArtifactType,BillingMethod,CurrencyCode,DeviceAttribute,DeviceAvailability,DeviceFilterAttribute,DeviceFormFactor,DevicePlatform,DevicePoolType,ExecutionResult,ExecutionResultCode,ExecutionStatus,InstanceStatus,InteractionMode,NetworkProfileType,OfferingTransactionType,OfferingType,RecurringChargeFrequency,RuleOperator,SampleType,TestType,UploadCategory,UploadStatus,UploadType

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
import Dict exposing (Dict)


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "devicefarm"
        "2015-06-23"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "DeviceFarm_20150623")



-- OPERATIONS

{-| <p>Creates a device pool.</p>

__Required Parameters__

* `projectArn` __:__ `String`
* `name` __:__ `String`
* `rules` __:__ `(List Rule)`


-}

createDevicePool :
  
    String ->
  
    String ->
  
    (List Rule) ->
  
  
    ( CreateDevicePoolOptions -> CreateDevicePoolOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDevicePoolResult)

createDevicePool projectArn name rules setOptions =
    
    let
        requestInput = CreateDevicePoolRequest
            
            projectArn
            
            name
            
            options.description
            
            rules
            
            options.maxDevices
            
        
        options = setOptions (CreateDevicePoolOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDevicePoolRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDevicePool"
                
                (AWS.Core.Decode.ResultDecoder "CreateDevicePoolResult" createDevicePoolResultDecoder)
                
            )



{-| Options for a createDevicePool request
-}
type alias CreateDevicePoolOptions =
    {
    description : Maybe String,maxDevices : Maybe Int
    }



{-| <p>Creates a profile that can be applied to one or more private fleet device instances.</p>

__Required Parameters__

* `name` __:__ `String`


-}

createInstanceProfile :
  
    String ->
  
  
    ( CreateInstanceProfileOptions -> CreateInstanceProfileOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateInstanceProfileResult)

createInstanceProfile name setOptions =
    
    let
        requestInput = CreateInstanceProfileRequest
            
            name
            
            options.description
            
            options.packageCleanup
            
            options.excludeAppPackagesFromCleanup
            
            options.rebootAfterUse
            
        
        options = setOptions (CreateInstanceProfileOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createInstanceProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateInstanceProfile"
                
                (AWS.Core.Decode.ResultDecoder "CreateInstanceProfileResult" createInstanceProfileResultDecoder)
                
            )



{-| Options for a createInstanceProfile request
-}
type alias CreateInstanceProfileOptions =
    {
    description : Maybe String,packageCleanup : Maybe Bool,excludeAppPackagesFromCleanup : Maybe (List String),rebootAfterUse : Maybe Bool
    }



{-| <p>Creates a network profile.</p>

__Required Parameters__

* `projectArn` __:__ `String`
* `name` __:__ `String`


-}

createNetworkProfile :
  
    String ->
  
    String ->
  
  
    ( CreateNetworkProfileOptions -> CreateNetworkProfileOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateNetworkProfileResult)

createNetworkProfile projectArn name setOptions =
    
    let
        requestInput = CreateNetworkProfileRequest
            
            projectArn
            
            name
            
            options.description
            
            options.type_
            
            options.uplinkBandwidthBits
            
            options.downlinkBandwidthBits
            
            options.uplinkDelayMs
            
            options.downlinkDelayMs
            
            options.uplinkJitterMs
            
            options.downlinkJitterMs
            
            options.uplinkLossPercent
            
            options.downlinkLossPercent
            
        
        options = setOptions (CreateNetworkProfileOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createNetworkProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateNetworkProfile"
                
                (AWS.Core.Decode.ResultDecoder "CreateNetworkProfileResult" createNetworkProfileResultDecoder)
                
            )



{-| Options for a createNetworkProfile request
-}
type alias CreateNetworkProfileOptions =
    {
    description : Maybe String,type_ : Maybe NetworkProfileType,uplinkBandwidthBits : Maybe Int,downlinkBandwidthBits : Maybe Int,uplinkDelayMs : Maybe Int,downlinkDelayMs : Maybe Int,uplinkJitterMs : Maybe Int,downlinkJitterMs : Maybe Int,uplinkLossPercent : Maybe Int,downlinkLossPercent : Maybe Int
    }



{-| <p>Creates a new project.</p>

__Required Parameters__

* `name` __:__ `String`


-}

createProject :
  
    String ->
  
  
    ( CreateProjectOptions -> CreateProjectOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateProjectResult)

createProject name setOptions =
    
    let
        requestInput = CreateProjectRequest
            
            name
            
            options.defaultJobTimeoutMinutes
            
        
        options = setOptions (CreateProjectOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createProjectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateProject"
                
                (AWS.Core.Decode.ResultDecoder "CreateProjectResult" createProjectResultDecoder)
                
            )



{-| Options for a createProject request
-}
type alias CreateProjectOptions =
    {
    defaultJobTimeoutMinutes : Maybe Int
    }



{-| <p>Specifies and starts a remote access session.</p>

__Required Parameters__

* `projectArn` __:__ `String`
* `deviceArn` __:__ `String`


-}

createRemoteAccessSession :
  
    String ->
  
    String ->
  
  
    ( CreateRemoteAccessSessionOptions -> CreateRemoteAccessSessionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateRemoteAccessSessionResult)

createRemoteAccessSession projectArn deviceArn setOptions =
    
    let
        requestInput = CreateRemoteAccessSessionRequest
            
            projectArn
            
            deviceArn
            
            options.instanceArn
            
            options.sshPublicKey
            
            options.remoteDebugEnabled
            
            options.remoteRecordEnabled
            
            options.remoteRecordAppArn
            
            options.name
            
            options.clientId
            
            options.configuration
            
            options.interactionMode
            
            options.skipAppResign
            
        
        options = setOptions (CreateRemoteAccessSessionOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createRemoteAccessSessionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateRemoteAccessSession"
                
                (AWS.Core.Decode.ResultDecoder "CreateRemoteAccessSessionResult" createRemoteAccessSessionResultDecoder)
                
            )



{-| Options for a createRemoteAccessSession request
-}
type alias CreateRemoteAccessSessionOptions =
    {
    instanceArn : Maybe String,sshPublicKey : Maybe String,remoteDebugEnabled : Maybe Bool,remoteRecordEnabled : Maybe Bool,remoteRecordAppArn : Maybe String,name : Maybe String,clientId : Maybe String,configuration : Maybe CreateRemoteAccessSessionConfiguration,interactionMode : Maybe InteractionMode,skipAppResign : Maybe Bool
    }



{-| <p>Uploads an app or test scripts.</p>

__Required Parameters__

* `projectArn` __:__ `String`
* `name` __:__ `String`
* `type_` __:__ `UploadType`


-}

createUpload :
  
    String ->
  
    String ->
  
    UploadType ->
  
  
    ( CreateUploadOptions -> CreateUploadOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateUploadResult)

createUpload projectArn name type_ setOptions =
    
    let
        requestInput = CreateUploadRequest
            
            projectArn
            
            name
            
            type_
            
            options.contentType
            
        
        options = setOptions (CreateUploadOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createUploadRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateUpload"
                
                (AWS.Core.Decode.ResultDecoder "CreateUploadResult" createUploadResultDecoder)
                
            )



{-| Options for a createUpload request
-}
type alias CreateUploadOptions =
    {
    contentType : Maybe String
    }



{-| <p>Creates a configuration record in Device Farm for your Amazon Virtual Private Cloud (VPC) endpoint.</p>

__Required Parameters__

* `vpceConfigurationName` __:__ `String`
* `vpceServiceName` __:__ `String`
* `serviceDnsName` __:__ `String`


-}

createVPCEConfiguration :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateVPCEConfigurationOptions -> CreateVPCEConfigurationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateVPCEConfigurationResult)

createVPCEConfiguration vpceConfigurationName vpceServiceName serviceDnsName setOptions =
    
    let
        requestInput = CreateVPCEConfigurationRequest
            
            vpceConfigurationName
            
            vpceServiceName
            
            serviceDnsName
            
            options.vpceConfigurationDescription
            
        
        options = setOptions (CreateVPCEConfigurationOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createVPCEConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateVPCEConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "CreateVPCEConfigurationResult" createVPCEConfigurationResultDecoder)
                
            )



{-| Options for a createVPCEConfiguration request
-}
type alias CreateVPCEConfigurationOptions =
    {
    vpceConfigurationDescription : Maybe String
    }



{-| <p>Deletes a device pool given the pool ARN. Does not allow deletion of curated pools owned by the system.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

deleteDevicePool :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDevicePoolResult)

deleteDevicePool arn =
    
    let
        requestInput = DeleteDevicePoolRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteDevicePoolRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDevicePool"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDevicePoolResult" deleteDevicePoolResultDecoder)
                
            )





{-| <p>Deletes a profile that can be applied to one or more private device instances.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

deleteInstanceProfile :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteInstanceProfileResult)

deleteInstanceProfile arn =
    
    let
        requestInput = DeleteInstanceProfileRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteInstanceProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteInstanceProfile"
                
                (AWS.Core.Decode.ResultDecoder "DeleteInstanceProfileResult" deleteInstanceProfileResultDecoder)
                
            )





{-| <p>Deletes a network profile.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

deleteNetworkProfile :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteNetworkProfileResult)

deleteNetworkProfile arn =
    
    let
        requestInput = DeleteNetworkProfileRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteNetworkProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteNetworkProfile"
                
                (AWS.Core.Decode.ResultDecoder "DeleteNetworkProfileResult" deleteNetworkProfileResultDecoder)
                
            )





{-| <p>Deletes an AWS Device Farm project, given the project ARN.</p> <p> <b>Note</b> Deleting this resource does not stop an in-progress run.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

deleteProject :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteProjectResult)

deleteProject arn =
    
    let
        requestInput = DeleteProjectRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteProjectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteProject"
                
                (AWS.Core.Decode.ResultDecoder "DeleteProjectResult" deleteProjectResultDecoder)
                
            )





{-| <p>Deletes a completed remote access session and its results.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

deleteRemoteAccessSession :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRemoteAccessSessionResult)

deleteRemoteAccessSession arn =
    
    let
        requestInput = DeleteRemoteAccessSessionRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRemoteAccessSessionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRemoteAccessSession"
                
                (AWS.Core.Decode.ResultDecoder "DeleteRemoteAccessSessionResult" deleteRemoteAccessSessionResultDecoder)
                
            )





{-| <p>Deletes the run, given the run ARN.</p> <p> <b>Note</b> Deleting this resource does not stop an in-progress run.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

deleteRun :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRunResult)

deleteRun arn =
    
    let
        requestInput = DeleteRunRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRunRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRun"
                
                (AWS.Core.Decode.ResultDecoder "DeleteRunResult" deleteRunResultDecoder)
                
            )





{-| <p>Deletes an upload given the upload ARN.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

deleteUpload :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteUploadResult)

deleteUpload arn =
    
    let
        requestInput = DeleteUploadRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteUploadRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteUpload"
                
                (AWS.Core.Decode.ResultDecoder "DeleteUploadResult" deleteUploadResultDecoder)
                
            )





{-| <p>Deletes a configuration for your Amazon Virtual Private Cloud (VPC) endpoint.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

deleteVPCEConfiguration :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteVPCEConfigurationResult)

deleteVPCEConfiguration arn =
    
    let
        requestInput = DeleteVPCEConfigurationRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteVPCEConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteVPCEConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "DeleteVPCEConfigurationResult" deleteVPCEConfigurationResultDecoder)
                
            )





{-| <p>Returns the number of unmetered iOS and/or unmetered Android devices that have been purchased by the account.</p>

__Required Parameters__



-}

getAccountSettings :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAccountSettingsResult)

getAccountSettings =
    
    let
        requestInput = GetAccountSettingsRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getAccountSettingsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetAccountSettings"
                
                (AWS.Core.Decode.ResultDecoder "GetAccountSettingsResult" getAccountSettingsResultDecoder)
                
            )





{-| <p>Gets information about a unique device type.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

getDevice :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDeviceResult)

getDevice arn =
    
    let
        requestInput = GetDeviceRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDeviceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDevice"
                
                (AWS.Core.Decode.ResultDecoder "GetDeviceResult" getDeviceResultDecoder)
                
            )





{-| <p>Returns information about a device instance belonging to a private device fleet.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

getDeviceInstance :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDeviceInstanceResult)

getDeviceInstance arn =
    
    let
        requestInput = GetDeviceInstanceRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDeviceInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDeviceInstance"
                
                (AWS.Core.Decode.ResultDecoder "GetDeviceInstanceResult" getDeviceInstanceResultDecoder)
                
            )





{-| <p>Gets information about a device pool.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

getDevicePool :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDevicePoolResult)

getDevicePool arn =
    
    let
        requestInput = GetDevicePoolRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDevicePoolRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDevicePool"
                
                (AWS.Core.Decode.ResultDecoder "GetDevicePoolResult" getDevicePoolResultDecoder)
                
            )





{-| <p>Gets information about compatibility with a device pool.</p>

__Required Parameters__

* `devicePoolArn` __:__ `String`


-}

getDevicePoolCompatibility :
  
    String ->
  
  
    ( GetDevicePoolCompatibilityOptions -> GetDevicePoolCompatibilityOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDevicePoolCompatibilityResult)

getDevicePoolCompatibility devicePoolArn setOptions =
    
    let
        requestInput = GetDevicePoolCompatibilityRequest
            
            devicePoolArn
            
            options.appArn
            
            options.testType
            
            options.test
            
            options.configuration
            
        
        options = setOptions (GetDevicePoolCompatibilityOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDevicePoolCompatibilityRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDevicePoolCompatibility"
                
                (AWS.Core.Decode.ResultDecoder "GetDevicePoolCompatibilityResult" getDevicePoolCompatibilityResultDecoder)
                
            )



{-| Options for a getDevicePoolCompatibility request
-}
type alias GetDevicePoolCompatibilityOptions =
    {
    appArn : Maybe String,testType : Maybe TestType,test : Maybe ScheduleRunTest,configuration : Maybe ScheduleRunConfiguration
    }



{-| <p>Returns information about the specified instance profile.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

getInstanceProfile :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetInstanceProfileResult)

getInstanceProfile arn =
    
    let
        requestInput = GetInstanceProfileRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getInstanceProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetInstanceProfile"
                
                (AWS.Core.Decode.ResultDecoder "GetInstanceProfileResult" getInstanceProfileResultDecoder)
                
            )





{-| <p>Gets information about a job.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

getJob :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetJobResult)

getJob arn =
    
    let
        requestInput = GetJobRequest
            
            arn
            
        
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
                
                (AWS.Core.Decode.ResultDecoder "GetJobResult" getJobResultDecoder)
                
            )





{-| <p>Returns information about a network profile.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

getNetworkProfile :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetNetworkProfileResult)

getNetworkProfile arn =
    
    let
        requestInput = GetNetworkProfileRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getNetworkProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetNetworkProfile"
                
                (AWS.Core.Decode.ResultDecoder "GetNetworkProfileResult" getNetworkProfileResultDecoder)
                
            )





{-| <p>Gets the current status and future status of all offerings purchased by an AWS account. The response indicates how many offerings are currently available and the offerings that will be available in the next period. The API returns a <code>NotEligible</code> error if the user is not permitted to invoke the operation. Please contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a> if you believe that you should be able to invoke this operation.</p>

__Required Parameters__



-}

getOfferingStatus :
  
  
    ( GetOfferingStatusOptions -> GetOfferingStatusOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetOfferingStatusResult)

getOfferingStatus setOptions =
    
    let
        requestInput = GetOfferingStatusRequest
            
            options.nextToken
            
        
        options = setOptions (GetOfferingStatusOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getOfferingStatusRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetOfferingStatus"
                
                (AWS.Core.Decode.ResultDecoder "GetOfferingStatusResult" getOfferingStatusResultDecoder)
                
            )



{-| Options for a getOfferingStatus request
-}
type alias GetOfferingStatusOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Gets information about a project.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

getProject :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetProjectResult)

getProject arn =
    
    let
        requestInput = GetProjectRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getProjectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetProject"
                
                (AWS.Core.Decode.ResultDecoder "GetProjectResult" getProjectResultDecoder)
                
            )





{-| <p>Returns a link to a currently running remote access session.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

getRemoteAccessSession :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRemoteAccessSessionResult)

getRemoteAccessSession arn =
    
    let
        requestInput = GetRemoteAccessSessionRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRemoteAccessSessionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRemoteAccessSession"
                
                (AWS.Core.Decode.ResultDecoder "GetRemoteAccessSessionResult" getRemoteAccessSessionResultDecoder)
                
            )





{-| <p>Gets information about a run.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

getRun :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRunResult)

getRun arn =
    
    let
        requestInput = GetRunRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRunRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRun"
                
                (AWS.Core.Decode.ResultDecoder "GetRunResult" getRunResultDecoder)
                
            )





{-| <p>Gets information about a suite.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

getSuite :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSuiteResult)

getSuite arn =
    
    let
        requestInput = GetSuiteRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getSuiteRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetSuite"
                
                (AWS.Core.Decode.ResultDecoder "GetSuiteResult" getSuiteResultDecoder)
                
            )





{-| <p>Gets information about a test.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

getTest :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTestResult)

getTest arn =
    
    let
        requestInput = GetTestRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getTestRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetTest"
                
                (AWS.Core.Decode.ResultDecoder "GetTestResult" getTestResultDecoder)
                
            )





{-| <p>Gets information about an upload.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

getUpload :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetUploadResult)

getUpload arn =
    
    let
        requestInput = GetUploadRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getUploadRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetUpload"
                
                (AWS.Core.Decode.ResultDecoder "GetUploadResult" getUploadResultDecoder)
                
            )





{-| <p>Returns information about the configuration settings for your Amazon Virtual Private Cloud (VPC) endpoint.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

getVPCEConfiguration :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetVPCEConfigurationResult)

getVPCEConfiguration arn =
    
    let
        requestInput = GetVPCEConfigurationRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getVPCEConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetVPCEConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "GetVPCEConfigurationResult" getVPCEConfigurationResultDecoder)
                
            )





{-| <p>Installs an application to the device in a remote access session. For Android applications, the file must be in .apk format. For iOS applications, the file must be in .ipa format.</p>

__Required Parameters__

* `remoteAccessSessionArn` __:__ `String`
* `appArn` __:__ `String`


-}

installToRemoteAccessSession :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper InstallToRemoteAccessSessionResult)

installToRemoteAccessSession remoteAccessSessionArn appArn =
    
    let
        requestInput = InstallToRemoteAccessSessionRequest
            
            remoteAccessSessionArn
            
            appArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> installToRemoteAccessSessionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "InstallToRemoteAccessSession"
                
                (AWS.Core.Decode.ResultDecoder "InstallToRemoteAccessSessionResult" installToRemoteAccessSessionResultDecoder)
                
            )





{-| <p>Gets information about artifacts.</p>

__Required Parameters__

* `arn` __:__ `String`
* `type_` __:__ `ArtifactCategory`


-}

listArtifacts :
  
    String ->
  
    ArtifactCategory ->
  
  
    ( ListArtifactsOptions -> ListArtifactsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListArtifactsResult)

listArtifacts arn type_ setOptions =
    
    let
        requestInput = ListArtifactsRequest
            
            arn
            
            type_
            
            options.nextToken
            
        
        options = setOptions (ListArtifactsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listArtifactsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListArtifacts"
                
                (AWS.Core.Decode.ResultDecoder "ListArtifactsResult" listArtifactsResultDecoder)
                
            )



{-| Options for a listArtifacts request
-}
type alias ListArtifactsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Returns information about the private device instances associated with one or more AWS accounts.</p>

__Required Parameters__



-}

listDeviceInstances :
  
  
    ( ListDeviceInstancesOptions -> ListDeviceInstancesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDeviceInstancesResult)

listDeviceInstances setOptions =
    
    let
        requestInput = ListDeviceInstancesRequest
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListDeviceInstancesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listDeviceInstancesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListDeviceInstances"
                
                (AWS.Core.Decode.ResultDecoder "ListDeviceInstancesResult" listDeviceInstancesResultDecoder)
                
            )



{-| Options for a listDeviceInstances request
-}
type alias ListDeviceInstancesOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Gets information about device pools.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

listDevicePools :
  
    String ->
  
  
    ( ListDevicePoolsOptions -> ListDevicePoolsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDevicePoolsResult)

listDevicePools arn setOptions =
    
    let
        requestInput = ListDevicePoolsRequest
            
            arn
            
            options.type_
            
            options.nextToken
            
        
        options = setOptions (ListDevicePoolsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listDevicePoolsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListDevicePools"
                
                (AWS.Core.Decode.ResultDecoder "ListDevicePoolsResult" listDevicePoolsResultDecoder)
                
            )



{-| Options for a listDevicePools request
-}
type alias ListDevicePoolsOptions =
    {
    type_ : Maybe DevicePoolType,nextToken : Maybe String
    }



{-| <p>Gets information about unique device types.</p>

__Required Parameters__



-}

listDevices :
  
  
    ( ListDevicesOptions -> ListDevicesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDevicesResult)

listDevices setOptions =
    
    let
        requestInput = ListDevicesRequest
            
            options.arn
            
            options.nextToken
            
            options.filters
            
        
        options = setOptions (ListDevicesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listDevicesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListDevices"
                
                (AWS.Core.Decode.ResultDecoder "ListDevicesResult" listDevicesResultDecoder)
                
            )



{-| Options for a listDevices request
-}
type alias ListDevicesOptions =
    {
    arn : Maybe String,nextToken : Maybe String,filters : Maybe (List DeviceFilter)
    }



{-| <p>Returns information about all the instance profiles in an AWS account.</p>

__Required Parameters__



-}

listInstanceProfiles :
  
  
    ( ListInstanceProfilesOptions -> ListInstanceProfilesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListInstanceProfilesResult)

listInstanceProfiles setOptions =
    
    let
        requestInput = ListInstanceProfilesRequest
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListInstanceProfilesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listInstanceProfilesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListInstanceProfiles"
                
                (AWS.Core.Decode.ResultDecoder "ListInstanceProfilesResult" listInstanceProfilesResultDecoder)
                
            )



{-| Options for a listInstanceProfiles request
-}
type alias ListInstanceProfilesOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Gets information about jobs for a given test run.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

listJobs :
  
    String ->
  
  
    ( ListJobsOptions -> ListJobsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListJobsResult)

listJobs arn setOptions =
    
    let
        requestInput = ListJobsRequest
            
            arn
            
            options.nextToken
            
        
        options = setOptions (ListJobsOptions Nothing)
        
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
                
                (AWS.Core.Decode.ResultDecoder "ListJobsResult" listJobsResultDecoder)
                
            )



{-| Options for a listJobs request
-}
type alias ListJobsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Returns the list of available network profiles.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

listNetworkProfiles :
  
    String ->
  
  
    ( ListNetworkProfilesOptions -> ListNetworkProfilesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListNetworkProfilesResult)

listNetworkProfiles arn setOptions =
    
    let
        requestInput = ListNetworkProfilesRequest
            
            arn
            
            options.type_
            
            options.nextToken
            
        
        options = setOptions (ListNetworkProfilesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listNetworkProfilesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListNetworkProfiles"
                
                (AWS.Core.Decode.ResultDecoder "ListNetworkProfilesResult" listNetworkProfilesResultDecoder)
                
            )



{-| Options for a listNetworkProfiles request
-}
type alias ListNetworkProfilesOptions =
    {
    type_ : Maybe NetworkProfileType,nextToken : Maybe String
    }



{-| <p>Returns a list of offering promotions. Each offering promotion record contains the ID and description of the promotion. The API returns a <code>NotEligible</code> error if the caller is not permitted to invoke the operation. Contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a> if you believe that you should be able to invoke this operation.</p>

__Required Parameters__



-}

listOfferingPromotions :
  
  
    ( ListOfferingPromotionsOptions -> ListOfferingPromotionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListOfferingPromotionsResult)

listOfferingPromotions setOptions =
    
    let
        requestInput = ListOfferingPromotionsRequest
            
            options.nextToken
            
        
        options = setOptions (ListOfferingPromotionsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listOfferingPromotionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListOfferingPromotions"
                
                (AWS.Core.Decode.ResultDecoder "ListOfferingPromotionsResult" listOfferingPromotionsResultDecoder)
                
            )



{-| Options for a listOfferingPromotions request
-}
type alias ListOfferingPromotionsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS account. The list is paginated and ordered by a descending timestamp (most recent transactions are first). The API returns a <code>NotEligible</code> error if the user is not permitted to invoke the operation. Please contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a> if you believe that you should be able to invoke this operation.</p>

__Required Parameters__



-}

listOfferingTransactions :
  
  
    ( ListOfferingTransactionsOptions -> ListOfferingTransactionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListOfferingTransactionsResult)

listOfferingTransactions setOptions =
    
    let
        requestInput = ListOfferingTransactionsRequest
            
            options.nextToken
            
        
        options = setOptions (ListOfferingTransactionsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listOfferingTransactionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListOfferingTransactions"
                
                (AWS.Core.Decode.ResultDecoder "ListOfferingTransactionsResult" listOfferingTransactionsResultDecoder)
                
            )



{-| Options for a listOfferingTransactions request
-}
type alias ListOfferingTransactionsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Returns a list of products or offerings that the user can manage through the API. Each offering record indicates the recurring price per unit and the frequency for that offering. The API returns a <code>NotEligible</code> error if the user is not permitted to invoke the operation. Please contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a> if you believe that you should be able to invoke this operation.</p>

__Required Parameters__



-}

listOfferings :
  
  
    ( ListOfferingsOptions -> ListOfferingsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListOfferingsResult)

listOfferings setOptions =
    
    let
        requestInput = ListOfferingsRequest
            
            options.nextToken
            
        
        options = setOptions (ListOfferingsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listOfferingsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListOfferings"
                
                (AWS.Core.Decode.ResultDecoder "ListOfferingsResult" listOfferingsResultDecoder)
                
            )



{-| Options for a listOfferings request
-}
type alias ListOfferingsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Gets information about projects.</p>

__Required Parameters__



-}

listProjects :
  
  
    ( ListProjectsOptions -> ListProjectsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListProjectsResult)

listProjects setOptions =
    
    let
        requestInput = ListProjectsRequest
            
            options.arn
            
            options.nextToken
            
        
        options = setOptions (ListProjectsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listProjectsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListProjects"
                
                (AWS.Core.Decode.ResultDecoder "ListProjectsResult" listProjectsResultDecoder)
                
            )



{-| Options for a listProjects request
-}
type alias ListProjectsOptions =
    {
    arn : Maybe String,nextToken : Maybe String
    }



{-| <p>Returns a list of all currently running remote access sessions.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

listRemoteAccessSessions :
  
    String ->
  
  
    ( ListRemoteAccessSessionsOptions -> ListRemoteAccessSessionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRemoteAccessSessionsResult)

listRemoteAccessSessions arn setOptions =
    
    let
        requestInput = ListRemoteAccessSessionsRequest
            
            arn
            
            options.nextToken
            
        
        options = setOptions (ListRemoteAccessSessionsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listRemoteAccessSessionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListRemoteAccessSessions"
                
                (AWS.Core.Decode.ResultDecoder "ListRemoteAccessSessionsResult" listRemoteAccessSessionsResultDecoder)
                
            )



{-| Options for a listRemoteAccessSessions request
-}
type alias ListRemoteAccessSessionsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Gets information about runs, given an AWS Device Farm project ARN.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

listRuns :
  
    String ->
  
  
    ( ListRunsOptions -> ListRunsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRunsResult)

listRuns arn setOptions =
    
    let
        requestInput = ListRunsRequest
            
            arn
            
            options.nextToken
            
        
        options = setOptions (ListRunsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listRunsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListRuns"
                
                (AWS.Core.Decode.ResultDecoder "ListRunsResult" listRunsResultDecoder)
                
            )



{-| Options for a listRuns request
-}
type alias ListRunsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Gets information about samples, given an AWS Device Farm job ARN.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

listSamples :
  
    String ->
  
  
    ( ListSamplesOptions -> ListSamplesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListSamplesResult)

listSamples arn setOptions =
    
    let
        requestInput = ListSamplesRequest
            
            arn
            
            options.nextToken
            
        
        options = setOptions (ListSamplesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listSamplesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListSamples"
                
                (AWS.Core.Decode.ResultDecoder "ListSamplesResult" listSamplesResultDecoder)
                
            )



{-| Options for a listSamples request
-}
type alias ListSamplesOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Gets information about test suites for a given job.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

listSuites :
  
    String ->
  
  
    ( ListSuitesOptions -> ListSuitesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListSuitesResult)

listSuites arn setOptions =
    
    let
        requestInput = ListSuitesRequest
            
            arn
            
            options.nextToken
            
        
        options = setOptions (ListSuitesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listSuitesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListSuites"
                
                (AWS.Core.Decode.ResultDecoder "ListSuitesResult" listSuitesResultDecoder)
                
            )



{-| Options for a listSuites request
-}
type alias ListSuitesOptions =
    {
    nextToken : Maybe String
    }



{-| <p>List the tags for an AWS Device Farm resource.</p>

__Required Parameters__

* `resourceARN` __:__ `String`


-}

listTagsForResource :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceResponse)

listTagsForResource resourceARN =
    
    let
        requestInput = ListTagsForResourceRequest
            
            resourceARN
            
        
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





{-| <p>Gets information about tests in a given test suite.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

listTests :
  
    String ->
  
  
    ( ListTestsOptions -> ListTestsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTestsResult)

listTests arn setOptions =
    
    let
        requestInput = ListTestsRequest
            
            arn
            
            options.nextToken
            
        
        options = setOptions (ListTestsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listTestsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTests"
                
                (AWS.Core.Decode.ResultDecoder "ListTestsResult" listTestsResultDecoder)
                
            )



{-| Options for a listTests request
-}
type alias ListTestsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Gets information about unique problems.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

listUniqueProblems :
  
    String ->
  
  
    ( ListUniqueProblemsOptions -> ListUniqueProblemsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListUniqueProblemsResult)

listUniqueProblems arn setOptions =
    
    let
        requestInput = ListUniqueProblemsRequest
            
            arn
            
            options.nextToken
            
        
        options = setOptions (ListUniqueProblemsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listUniqueProblemsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListUniqueProblems"
                
                (AWS.Core.Decode.ResultDecoder "ListUniqueProblemsResult" listUniqueProblemsResultDecoder)
                
            )



{-| Options for a listUniqueProblems request
-}
type alias ListUniqueProblemsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Gets information about uploads, given an AWS Device Farm project ARN.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

listUploads :
  
    String ->
  
  
    ( ListUploadsOptions -> ListUploadsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListUploadsResult)

listUploads arn setOptions =
    
    let
        requestInput = ListUploadsRequest
            
            arn
            
            options.type_
            
            options.nextToken
            
        
        options = setOptions (ListUploadsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listUploadsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListUploads"
                
                (AWS.Core.Decode.ResultDecoder "ListUploadsResult" listUploadsResultDecoder)
                
            )



{-| Options for a listUploads request
-}
type alias ListUploadsOptions =
    {
    type_ : Maybe UploadType,nextToken : Maybe String
    }



{-| <p>Returns information about all Amazon Virtual Private Cloud (VPC) endpoint configurations in the AWS account.</p>

__Required Parameters__



-}

listVPCEConfigurations :
  
  
    ( ListVPCEConfigurationsOptions -> ListVPCEConfigurationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListVPCEConfigurationsResult)

listVPCEConfigurations setOptions =
    
    let
        requestInput = ListVPCEConfigurationsRequest
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListVPCEConfigurationsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listVPCEConfigurationsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListVPCEConfigurations"
                
                (AWS.Core.Decode.ResultDecoder "ListVPCEConfigurationsResult" listVPCEConfigurationsResultDecoder)
                
            )



{-| Options for a listVPCEConfigurations request
-}
type alias ListVPCEConfigurationsOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Immediately purchases offerings for an AWS account. Offerings renew with the latest total purchased quantity for an offering, unless the renewal was overridden. The API returns a <code>NotEligible</code> error if the user is not permitted to invoke the operation. Please contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a> if you believe that you should be able to invoke this operation.</p>

__Required Parameters__



-}

purchaseOffering :
  
  
    ( PurchaseOfferingOptions -> PurchaseOfferingOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PurchaseOfferingResult)

purchaseOffering setOptions =
    
    let
        requestInput = PurchaseOfferingRequest
            
            options.offeringId
            
            options.quantity
            
            options.offeringPromotionId
            
        
        options = setOptions (PurchaseOfferingOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> purchaseOfferingRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PurchaseOffering"
                
                (AWS.Core.Decode.ResultDecoder "PurchaseOfferingResult" purchaseOfferingResultDecoder)
                
            )



{-| Options for a purchaseOffering request
-}
type alias PurchaseOfferingOptions =
    {
    offeringId : Maybe String,quantity : Maybe Int,offeringPromotionId : Maybe String
    }



{-| <p>Explicitly sets the quantity of devices to renew for an offering, starting from the <code>effectiveDate</code> of the next period. The API returns a <code>NotEligible</code> error if the user is not permitted to invoke the operation. Please contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a> if you believe that you should be able to invoke this operation.</p>

__Required Parameters__



-}

renewOffering :
  
  
    ( RenewOfferingOptions -> RenewOfferingOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RenewOfferingResult)

renewOffering setOptions =
    
    let
        requestInput = RenewOfferingRequest
            
            options.offeringId
            
            options.quantity
            
        
        options = setOptions (RenewOfferingOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> renewOfferingRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RenewOffering"
                
                (AWS.Core.Decode.ResultDecoder "RenewOfferingResult" renewOfferingResultDecoder)
                
            )



{-| Options for a renewOffering request
-}
type alias RenewOfferingOptions =
    {
    offeringId : Maybe String,quantity : Maybe Int
    }



{-| <p>Schedules a run.</p>

__Required Parameters__

* `projectArn` __:__ `String`
* `test` __:__ `ScheduleRunTest`


-}

scheduleRun :
  
    String ->
  
    ScheduleRunTest ->
  
  
    ( ScheduleRunOptions -> ScheduleRunOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ScheduleRunResult)

scheduleRun projectArn test setOptions =
    
    let
        requestInput = ScheduleRunRequest
            
            projectArn
            
            options.appArn
            
            options.devicePoolArn
            
            options.deviceSelectionConfiguration
            
            options.name
            
            test
            
            options.configuration
            
            options.executionConfiguration
            
        
        options = setOptions (ScheduleRunOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> scheduleRunRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ScheduleRun"
                
                (AWS.Core.Decode.ResultDecoder "ScheduleRunResult" scheduleRunResultDecoder)
                
            )



{-| Options for a scheduleRun request
-}
type alias ScheduleRunOptions =
    {
    appArn : Maybe String,devicePoolArn : Maybe String,deviceSelectionConfiguration : Maybe DeviceSelectionConfiguration,name : Maybe String,configuration : Maybe ScheduleRunConfiguration,executionConfiguration : Maybe ExecutionConfiguration
    }



{-| <p>Initiates a stop request for the current job. AWS Device Farm will immediately stop the job on the device where tests have not started executing, and you will not be billed for this device. On the device where tests have started executing, Setup Suite and Teardown Suite tests will run to completion before stopping execution on the device. You will be billed for Setup, Teardown, and any tests that were in progress or already completed.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

stopJob :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopJobResult)

stopJob arn =
    
    let
        requestInput = StopJobRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopJob"
                
                (AWS.Core.Decode.ResultDecoder "StopJobResult" stopJobResultDecoder)
                
            )





{-| <p>Ends a specified remote access session.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

stopRemoteAccessSession :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopRemoteAccessSessionResult)

stopRemoteAccessSession arn =
    
    let
        requestInput = StopRemoteAccessSessionRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopRemoteAccessSessionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopRemoteAccessSession"
                
                (AWS.Core.Decode.ResultDecoder "StopRemoteAccessSessionResult" stopRemoteAccessSessionResultDecoder)
                
            )





{-| <p>Initiates a stop request for the current test run. AWS Device Farm will immediately stop the run on devices where tests have not started executing, and you will not be billed for these devices. On devices where tests have started executing, Setup Suite and Teardown Suite tests will run to completion before stopping execution on those devices. You will be billed for Setup, Teardown, and any tests that were in progress or already completed.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

stopRun :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopRunResult)

stopRun arn =
    
    let
        requestInput = StopRunRequest
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopRunRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopRun"
                
                (AWS.Core.Decode.ResultDecoder "StopRunResult" stopRunResultDecoder)
                
            )





{-| <p>Associates the specified tags to a resource with the specified <code>resourceArn</code>. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.</p>

__Required Parameters__

* `resourceARN` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

tagResource :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceResponse)

tagResource resourceARN tags =
    
    let
        requestInput = TagResourceRequest
            
            resourceARN
            
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
                
                (AWS.Core.Decode.ResultDecoder "TagResourceResponse" tagResourceResponseDecoder)
                
            )





{-| <p>Deletes the specified tags from a resource.</p>

__Required Parameters__

* `resourceARN` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

untagResource :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceResponse)

untagResource resourceARN tagKeys =
    
    let
        requestInput = UntagResourceRequest
            
            resourceARN
            
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
                
                (AWS.Core.Decode.ResultDecoder "UntagResourceResponse" untagResourceResponseDecoder)
                
            )





{-| <p>Updates information about an existing private device instance.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

updateDeviceInstance :
  
    String ->
  
  
    ( UpdateDeviceInstanceOptions -> UpdateDeviceInstanceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateDeviceInstanceResult)

updateDeviceInstance arn setOptions =
    
    let
        requestInput = UpdateDeviceInstanceRequest
            
            arn
            
            options.profileArn
            
            options.labels
            
        
        options = setOptions (UpdateDeviceInstanceOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateDeviceInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateDeviceInstance"
                
                (AWS.Core.Decode.ResultDecoder "UpdateDeviceInstanceResult" updateDeviceInstanceResultDecoder)
                
            )



{-| Options for a updateDeviceInstance request
-}
type alias UpdateDeviceInstanceOptions =
    {
    profileArn : Maybe String,labels : Maybe (List String)
    }



{-| <p>Modifies the name, description, and rules in a device pool given the attributes and the pool ARN. Rule updates are all-or-nothing, meaning they can only be updated as a whole (or not at all).</p>

__Required Parameters__

* `arn` __:__ `String`


-}

updateDevicePool :
  
    String ->
  
  
    ( UpdateDevicePoolOptions -> UpdateDevicePoolOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateDevicePoolResult)

updateDevicePool arn setOptions =
    
    let
        requestInput = UpdateDevicePoolRequest
            
            arn
            
            options.name
            
            options.description
            
            options.rules
            
            options.maxDevices
            
            options.clearMaxDevices
            
        
        options = setOptions (UpdateDevicePoolOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateDevicePoolRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateDevicePool"
                
                (AWS.Core.Decode.ResultDecoder "UpdateDevicePoolResult" updateDevicePoolResultDecoder)
                
            )



{-| Options for a updateDevicePool request
-}
type alias UpdateDevicePoolOptions =
    {
    name : Maybe String,description : Maybe String,rules : Maybe (List Rule),maxDevices : Maybe Int,clearMaxDevices : Maybe Bool
    }



{-| <p>Updates information about an existing private device instance profile.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

updateInstanceProfile :
  
    String ->
  
  
    ( UpdateInstanceProfileOptions -> UpdateInstanceProfileOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateInstanceProfileResult)

updateInstanceProfile arn setOptions =
    
    let
        requestInput = UpdateInstanceProfileRequest
            
            arn
            
            options.name
            
            options.description
            
            options.packageCleanup
            
            options.excludeAppPackagesFromCleanup
            
            options.rebootAfterUse
            
        
        options = setOptions (UpdateInstanceProfileOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateInstanceProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateInstanceProfile"
                
                (AWS.Core.Decode.ResultDecoder "UpdateInstanceProfileResult" updateInstanceProfileResultDecoder)
                
            )



{-| Options for a updateInstanceProfile request
-}
type alias UpdateInstanceProfileOptions =
    {
    name : Maybe String,description : Maybe String,packageCleanup : Maybe Bool,excludeAppPackagesFromCleanup : Maybe (List String),rebootAfterUse : Maybe Bool
    }



{-| <p>Updates the network profile with specific settings.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

updateNetworkProfile :
  
    String ->
  
  
    ( UpdateNetworkProfileOptions -> UpdateNetworkProfileOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateNetworkProfileResult)

updateNetworkProfile arn setOptions =
    
    let
        requestInput = UpdateNetworkProfileRequest
            
            arn
            
            options.name
            
            options.description
            
            options.type_
            
            options.uplinkBandwidthBits
            
            options.downlinkBandwidthBits
            
            options.uplinkDelayMs
            
            options.downlinkDelayMs
            
            options.uplinkJitterMs
            
            options.downlinkJitterMs
            
            options.uplinkLossPercent
            
            options.downlinkLossPercent
            
        
        options = setOptions (UpdateNetworkProfileOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateNetworkProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateNetworkProfile"
                
                (AWS.Core.Decode.ResultDecoder "UpdateNetworkProfileResult" updateNetworkProfileResultDecoder)
                
            )



{-| Options for a updateNetworkProfile request
-}
type alias UpdateNetworkProfileOptions =
    {
    name : Maybe String,description : Maybe String,type_ : Maybe NetworkProfileType,uplinkBandwidthBits : Maybe Int,downlinkBandwidthBits : Maybe Int,uplinkDelayMs : Maybe Int,downlinkDelayMs : Maybe Int,uplinkJitterMs : Maybe Int,downlinkJitterMs : Maybe Int,uplinkLossPercent : Maybe Int,downlinkLossPercent : Maybe Int
    }



{-| <p>Modifies the specified project name, given the project ARN and a new name.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

updateProject :
  
    String ->
  
  
    ( UpdateProjectOptions -> UpdateProjectOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateProjectResult)

updateProject arn setOptions =
    
    let
        requestInput = UpdateProjectRequest
            
            arn
            
            options.name
            
            options.defaultJobTimeoutMinutes
            
        
        options = setOptions (UpdateProjectOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateProjectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateProject"
                
                (AWS.Core.Decode.ResultDecoder "UpdateProjectResult" updateProjectResultDecoder)
                
            )



{-| Options for a updateProject request
-}
type alias UpdateProjectOptions =
    {
    name : Maybe String,defaultJobTimeoutMinutes : Maybe Int
    }



{-| <p>Update an uploaded test specification (test spec).</p>

__Required Parameters__

* `arn` __:__ `String`


-}

updateUpload :
  
    String ->
  
  
    ( UpdateUploadOptions -> UpdateUploadOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateUploadResult)

updateUpload arn setOptions =
    
    let
        requestInput = UpdateUploadRequest
            
            arn
            
            options.name
            
            options.contentType
            
            options.editContent
            
        
        options = setOptions (UpdateUploadOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateUploadRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateUpload"
                
                (AWS.Core.Decode.ResultDecoder "UpdateUploadResult" updateUploadResultDecoder)
                
            )



{-| Options for a updateUpload request
-}
type alias UpdateUploadOptions =
    {
    name : Maybe String,contentType : Maybe String,editContent : Maybe Bool
    }



{-| <p>Updates information about an existing Amazon Virtual Private Cloud (VPC) endpoint configuration.</p>

__Required Parameters__

* `arn` __:__ `String`


-}

updateVPCEConfiguration :
  
    String ->
  
  
    ( UpdateVPCEConfigurationOptions -> UpdateVPCEConfigurationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateVPCEConfigurationResult)

updateVPCEConfiguration arn setOptions =
    
    let
        requestInput = UpdateVPCEConfigurationRequest
            
            arn
            
            options.vpceConfigurationName
            
            options.vpceServiceName
            
            options.serviceDnsName
            
            options.vpceConfigurationDescription
            
        
        options = setOptions (UpdateVPCEConfigurationOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateVPCEConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateVPCEConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "UpdateVPCEConfigurationResult" updateVPCEConfigurationResultDecoder)
                
            )



{-| Options for a updateVPCEConfiguration request
-}
type alias UpdateVPCEConfigurationOptions =
    {
    vpceConfigurationName : Maybe String,vpceServiceName : Maybe String,serviceDnsName : Maybe String,vpceConfigurationDescription : Maybe String
    }




{-| <p>A container for account-level settings within AWS Device Farm.</p>
-}
type alias AccountSettings =
    { awsAccountNumber : Maybe String
    , unmeteredDevices : Maybe (Dict String Int)
    , unmeteredRemoteAccessDevices : Maybe (Dict String Int)
    , maxJobTimeoutMinutes : Maybe Int
    , trialMinutes : Maybe TrialMinutes
    , maxSlots : Maybe (Dict String Int)
    , defaultJobTimeoutMinutes : Maybe Int
    , skipAppResign : Maybe Bool
    }



accountSettingsDecoder : JD.Decoder AccountSettings
accountSettingsDecoder =
    JD.succeed AccountSettings
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["awsAccountNumber", "AwsAccountNumber"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["unmeteredDevices", "UnmeteredDevices"]
            (AWS.Core.Decode.dict JD.int)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["unmeteredRemoteAccessDevices", "UnmeteredRemoteAccessDevices"]
            (AWS.Core.Decode.dict JD.int)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["maxJobTimeoutMinutes", "MaxJobTimeoutMinutes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["trialMinutes", "TrialMinutes"]
            trialMinutesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["maxSlots", "MaxSlots"]
            (AWS.Core.Decode.dict JD.int)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["defaultJobTimeoutMinutes", "DefaultJobTimeoutMinutes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["skipAppResign", "SkipAppResign"]
            JD.bool
        )
        




accountSettingsToString : AccountSettings -> String -- List (String, String)
accountSettingsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "awsAccountNumber" "" -- val.awsAccountNumber
        
    --     |> Dict.insert
    --         "unmeteredDevices" "" -- val.unmeteredDevices
        
    --     |> Dict.insert
    --         "unmeteredRemoteAccessDevices" "" -- val.unmeteredRemoteAccessDevices
        
    --     |> Dict.insert
    --         "maxJobTimeoutMinutes" "" -- val.maxJobTimeoutMinutes
        
    --     |> Dict.insert
    --         "trialMinutes" "" -- val.trialMinutes
        
    --     |> Dict.insert
    --         "maxSlots" "" -- val.maxSlots
        
    --     |> Dict.insert
    --         "defaultJobTimeoutMinutes" "" -- val.defaultJobTimeoutMinutes
        
    --     |> Dict.insert
    --         "skipAppResign" "" -- val.skipAppResign
        
    --     |> Dict.toList
    ""



{-| <p>Represents the output of a test. Examples of artifacts include logs and screenshots.</p>
-}
type alias Artifact =
    { arn : Maybe String
    , name : Maybe String
    , type_ : Maybe ArtifactType
    , extension : Maybe String
    , url : Maybe String
    }



artifactDecoder : JD.Decoder Artifact
artifactDecoder =
    JD.succeed Artifact
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            artifactTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["extension", "Extension"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["url", "Url"]
            JD.string
        )
        




artifactToString : Artifact -> String -- List (String, String)
artifactToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "extension" "" -- val.extension
        
    --     |> Dict.insert
    --         "url" "" -- val.url
        
    --     |> Dict.toList
    ""



{-| One of

* `ArtifactCategory_SCREENSHOT`
* `ArtifactCategory_FILE`
* `ArtifactCategory_LOG`

-}
type ArtifactCategory
    = ArtifactCategory_SCREENSHOT
    | ArtifactCategory_FILE
    | ArtifactCategory_LOG



artifactCategoryDecoder : JD.Decoder ArtifactCategory
artifactCategoryDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SCREENSHOT" ->
                        JD.succeed ArtifactCategory_SCREENSHOT

                    "FILE" ->
                        JD.succeed ArtifactCategory_FILE

                    "LOG" ->
                        JD.succeed ArtifactCategory_LOG


                    _ ->
                        JD.fail "bad thing"
            )




artifactCategoryToString : ArtifactCategory -> String
artifactCategoryToString val =
    case val of
        ArtifactCategory_SCREENSHOT ->
            "SCREENSHOT"

        ArtifactCategory_FILE ->
            "FILE"

        ArtifactCategory_LOG ->
            "LOG"




{-| One of

* `ArtifactType_UNKNOWN`
* `ArtifactType_SCREENSHOT`
* `ArtifactType_DEVICE_LOG`
* `ArtifactType_MESSAGE_LOG`
* `ArtifactType_VIDEO_LOG`
* `ArtifactType_RESULT_LOG`
* `ArtifactType_SERVICE_LOG`
* `ArtifactType_WEBKIT_LOG`
* `ArtifactType_INSTRUMENTATION_OUTPUT`
* `ArtifactType_EXERCISER_MONKEY_OUTPUT`
* `ArtifactType_CALABASH_JSON_OUTPUT`
* `ArtifactType_CALABASH_PRETTY_OUTPUT`
* `ArtifactType_CALABASH_STANDARD_OUTPUT`
* `ArtifactType_CALABASH_JAVA_XML_OUTPUT`
* `ArtifactType_AUTOMATION_OUTPUT`
* `ArtifactType_APPIUM_SERVER_OUTPUT`
* `ArtifactType_APPIUM_JAVA_OUTPUT`
* `ArtifactType_APPIUM_JAVA_XML_OUTPUT`
* `ArtifactType_APPIUM_PYTHON_OUTPUT`
* `ArtifactType_APPIUM_PYTHON_XML_OUTPUT`
* `ArtifactType_EXPLORER_EVENT_LOG`
* `ArtifactType_EXPLORER_SUMMARY_LOG`
* `ArtifactType_APPLICATION_CRASH_REPORT`
* `ArtifactType_XCTEST_LOG`
* `ArtifactType_VIDEO`
* `ArtifactType_CUSTOMER_ARTIFACT`
* `ArtifactType_CUSTOMER_ARTIFACT_LOG`
* `ArtifactType_TESTSPEC_OUTPUT`

-}
type ArtifactType
    = ArtifactType_UNKNOWN
    | ArtifactType_SCREENSHOT
    | ArtifactType_DEVICE_LOG
    | ArtifactType_MESSAGE_LOG
    | ArtifactType_VIDEO_LOG
    | ArtifactType_RESULT_LOG
    | ArtifactType_SERVICE_LOG
    | ArtifactType_WEBKIT_LOG
    | ArtifactType_INSTRUMENTATION_OUTPUT
    | ArtifactType_EXERCISER_MONKEY_OUTPUT
    | ArtifactType_CALABASH_JSON_OUTPUT
    | ArtifactType_CALABASH_PRETTY_OUTPUT
    | ArtifactType_CALABASH_STANDARD_OUTPUT
    | ArtifactType_CALABASH_JAVA_XML_OUTPUT
    | ArtifactType_AUTOMATION_OUTPUT
    | ArtifactType_APPIUM_SERVER_OUTPUT
    | ArtifactType_APPIUM_JAVA_OUTPUT
    | ArtifactType_APPIUM_JAVA_XML_OUTPUT
    | ArtifactType_APPIUM_PYTHON_OUTPUT
    | ArtifactType_APPIUM_PYTHON_XML_OUTPUT
    | ArtifactType_EXPLORER_EVENT_LOG
    | ArtifactType_EXPLORER_SUMMARY_LOG
    | ArtifactType_APPLICATION_CRASH_REPORT
    | ArtifactType_XCTEST_LOG
    | ArtifactType_VIDEO
    | ArtifactType_CUSTOMER_ARTIFACT
    | ArtifactType_CUSTOMER_ARTIFACT_LOG
    | ArtifactType_TESTSPEC_OUTPUT



artifactTypeDecoder : JD.Decoder ArtifactType
artifactTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNKNOWN" ->
                        JD.succeed ArtifactType_UNKNOWN

                    "SCREENSHOT" ->
                        JD.succeed ArtifactType_SCREENSHOT

                    "DEVICE_LOG" ->
                        JD.succeed ArtifactType_DEVICE_LOG

                    "MESSAGE_LOG" ->
                        JD.succeed ArtifactType_MESSAGE_LOG

                    "VIDEO_LOG" ->
                        JD.succeed ArtifactType_VIDEO_LOG

                    "RESULT_LOG" ->
                        JD.succeed ArtifactType_RESULT_LOG

                    "SERVICE_LOG" ->
                        JD.succeed ArtifactType_SERVICE_LOG

                    "WEBKIT_LOG" ->
                        JD.succeed ArtifactType_WEBKIT_LOG

                    "INSTRUMENTATION_OUTPUT" ->
                        JD.succeed ArtifactType_INSTRUMENTATION_OUTPUT

                    "EXERCISER_MONKEY_OUTPUT" ->
                        JD.succeed ArtifactType_EXERCISER_MONKEY_OUTPUT

                    "CALABASH_JSON_OUTPUT" ->
                        JD.succeed ArtifactType_CALABASH_JSON_OUTPUT

                    "CALABASH_PRETTY_OUTPUT" ->
                        JD.succeed ArtifactType_CALABASH_PRETTY_OUTPUT

                    "CALABASH_STANDARD_OUTPUT" ->
                        JD.succeed ArtifactType_CALABASH_STANDARD_OUTPUT

                    "CALABASH_JAVA_XML_OUTPUT" ->
                        JD.succeed ArtifactType_CALABASH_JAVA_XML_OUTPUT

                    "AUTOMATION_OUTPUT" ->
                        JD.succeed ArtifactType_AUTOMATION_OUTPUT

                    "APPIUM_SERVER_OUTPUT" ->
                        JD.succeed ArtifactType_APPIUM_SERVER_OUTPUT

                    "APPIUM_JAVA_OUTPUT" ->
                        JD.succeed ArtifactType_APPIUM_JAVA_OUTPUT

                    "APPIUM_JAVA_XML_OUTPUT" ->
                        JD.succeed ArtifactType_APPIUM_JAVA_XML_OUTPUT

                    "APPIUM_PYTHON_OUTPUT" ->
                        JD.succeed ArtifactType_APPIUM_PYTHON_OUTPUT

                    "APPIUM_PYTHON_XML_OUTPUT" ->
                        JD.succeed ArtifactType_APPIUM_PYTHON_XML_OUTPUT

                    "EXPLORER_EVENT_LOG" ->
                        JD.succeed ArtifactType_EXPLORER_EVENT_LOG

                    "EXPLORER_SUMMARY_LOG" ->
                        JD.succeed ArtifactType_EXPLORER_SUMMARY_LOG

                    "APPLICATION_CRASH_REPORT" ->
                        JD.succeed ArtifactType_APPLICATION_CRASH_REPORT

                    "XCTEST_LOG" ->
                        JD.succeed ArtifactType_XCTEST_LOG

                    "VIDEO" ->
                        JD.succeed ArtifactType_VIDEO

                    "CUSTOMER_ARTIFACT" ->
                        JD.succeed ArtifactType_CUSTOMER_ARTIFACT

                    "CUSTOMER_ARTIFACT_LOG" ->
                        JD.succeed ArtifactType_CUSTOMER_ARTIFACT_LOG

                    "TESTSPEC_OUTPUT" ->
                        JD.succeed ArtifactType_TESTSPEC_OUTPUT


                    _ ->
                        JD.fail "bad thing"
            )




artifactTypeToString : ArtifactType -> String
artifactTypeToString val =
    case val of
        ArtifactType_UNKNOWN ->
            "UNKNOWN"

        ArtifactType_SCREENSHOT ->
            "SCREENSHOT"

        ArtifactType_DEVICE_LOG ->
            "DEVICE_LOG"

        ArtifactType_MESSAGE_LOG ->
            "MESSAGE_LOG"

        ArtifactType_VIDEO_LOG ->
            "VIDEO_LOG"

        ArtifactType_RESULT_LOG ->
            "RESULT_LOG"

        ArtifactType_SERVICE_LOG ->
            "SERVICE_LOG"

        ArtifactType_WEBKIT_LOG ->
            "WEBKIT_LOG"

        ArtifactType_INSTRUMENTATION_OUTPUT ->
            "INSTRUMENTATION_OUTPUT"

        ArtifactType_EXERCISER_MONKEY_OUTPUT ->
            "EXERCISER_MONKEY_OUTPUT"

        ArtifactType_CALABASH_JSON_OUTPUT ->
            "CALABASH_JSON_OUTPUT"

        ArtifactType_CALABASH_PRETTY_OUTPUT ->
            "CALABASH_PRETTY_OUTPUT"

        ArtifactType_CALABASH_STANDARD_OUTPUT ->
            "CALABASH_STANDARD_OUTPUT"

        ArtifactType_CALABASH_JAVA_XML_OUTPUT ->
            "CALABASH_JAVA_XML_OUTPUT"

        ArtifactType_AUTOMATION_OUTPUT ->
            "AUTOMATION_OUTPUT"

        ArtifactType_APPIUM_SERVER_OUTPUT ->
            "APPIUM_SERVER_OUTPUT"

        ArtifactType_APPIUM_JAVA_OUTPUT ->
            "APPIUM_JAVA_OUTPUT"

        ArtifactType_APPIUM_JAVA_XML_OUTPUT ->
            "APPIUM_JAVA_XML_OUTPUT"

        ArtifactType_APPIUM_PYTHON_OUTPUT ->
            "APPIUM_PYTHON_OUTPUT"

        ArtifactType_APPIUM_PYTHON_XML_OUTPUT ->
            "APPIUM_PYTHON_XML_OUTPUT"

        ArtifactType_EXPLORER_EVENT_LOG ->
            "EXPLORER_EVENT_LOG"

        ArtifactType_EXPLORER_SUMMARY_LOG ->
            "EXPLORER_SUMMARY_LOG"

        ArtifactType_APPLICATION_CRASH_REPORT ->
            "APPLICATION_CRASH_REPORT"

        ArtifactType_XCTEST_LOG ->
            "XCTEST_LOG"

        ArtifactType_VIDEO ->
            "VIDEO"

        ArtifactType_CUSTOMER_ARTIFACT ->
            "CUSTOMER_ARTIFACT"

        ArtifactType_CUSTOMER_ARTIFACT_LOG ->
            "CUSTOMER_ARTIFACT_LOG"

        ArtifactType_TESTSPEC_OUTPUT ->
            "TESTSPEC_OUTPUT"




{-| One of

* `BillingMethod_METERED`
* `BillingMethod_UNMETERED`

-}
type BillingMethod
    = BillingMethod_METERED
    | BillingMethod_UNMETERED



billingMethodDecoder : JD.Decoder BillingMethod
billingMethodDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "METERED" ->
                        JD.succeed BillingMethod_METERED

                    "UNMETERED" ->
                        JD.succeed BillingMethod_UNMETERED


                    _ ->
                        JD.fail "bad thing"
            )




billingMethodToString : BillingMethod -> String
billingMethodToString val =
    case val of
        BillingMethod_METERED ->
            "METERED"

        BillingMethod_UNMETERED ->
            "UNMETERED"




{-| <p>Represents the amount of CPU that an app is using on a physical device.</p> <p>Note that this does not represent system-wide CPU usage.</p>
-}
type alias CPU =
    { frequency : Maybe String
    , architecture : Maybe String
    , clock : Maybe Float
    }



cPUDecoder : JD.Decoder CPU
cPUDecoder =
    JD.succeed CPU
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["frequency", "Frequency"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["architecture", "Architecture"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["clock", "Clock"]
            JD.float
        )
        




cPUToString : CPU -> String -- List (String, String)
cPUToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "frequency" "" -- val.frequency
        
    --     |> Dict.insert
    --         "architecture" "" -- val.architecture
        
    --     |> Dict.insert
    --         "clock" "" -- val.clock
        
    --     |> Dict.toList
    ""



{-| <p>Represents entity counters.</p>
-}
type alias Counters =
    { total : Maybe Int
    , passed : Maybe Int
    , failed : Maybe Int
    , warned : Maybe Int
    , errored : Maybe Int
    , stopped : Maybe Int
    , skipped : Maybe Int
    }



countersDecoder : JD.Decoder Counters
countersDecoder =
    JD.succeed Counters
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["total", "Total"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["passed", "Passed"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["failed", "Failed"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["warned", "Warned"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errored", "Errored"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stopped", "Stopped"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["skipped", "Skipped"]
            JD.int
        )
        




countersToString : Counters -> String -- List (String, String)
countersToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "total" "" -- val.total
        
    --     |> Dict.insert
    --         "passed" "" -- val.passed
        
    --     |> Dict.insert
    --         "failed" "" -- val.failed
        
    --     |> Dict.insert
    --         "warned" "" -- val.warned
        
    --     |> Dict.insert
    --         "errored" "" -- val.errored
        
    --     |> Dict.insert
    --         "stopped" "" -- val.stopped
        
    --     |> Dict.insert
    --         "skipped" "" -- val.skipped
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDevicePo
-}
type alias CreateDevicePoolResult =
    { devicePool : Maybe DevicePool
    }



createDevicePoolResultDecoder : JD.Decoder CreateDevicePoolResult
createDevicePoolResultDecoder =
    JD.succeed CreateDevicePoolResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["devicePool", "DevicePool"]
            devicePoolDecoder
        )
        




createDevicePoolResultToString : CreateDevicePoolResult -> String -- List (String, String)
createDevicePoolResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "devicePool" "" -- val.devicePool
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createInstanceProfi
-}
type alias CreateInstanceProfileResult =
    { instanceProfile : Maybe InstanceProfile
    }



createInstanceProfileResultDecoder : JD.Decoder CreateInstanceProfileResult
createInstanceProfileResultDecoder =
    JD.succeed CreateInstanceProfileResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceProfile", "InstanceProfile"]
            instanceProfileDecoder
        )
        




createInstanceProfileResultToString : CreateInstanceProfileResult -> String -- List (String, String)
createInstanceProfileResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceProfile" "" -- val.instanceProfile
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createNetworkProfi
-}
type alias CreateNetworkProfileResult =
    { networkProfile : Maybe NetworkProfile
    }



createNetworkProfileResultDecoder : JD.Decoder CreateNetworkProfileResult
createNetworkProfileResultDecoder =
    JD.succeed CreateNetworkProfileResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["networkProfile", "NetworkProfile"]
            networkProfileDecoder
        )
        




createNetworkProfileResultToString : CreateNetworkProfileResult -> String -- List (String, String)
createNetworkProfileResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "networkProfile" "" -- val.networkProfile
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createProje
-}
type alias CreateProjectResult =
    { project : Maybe Project
    }



createProjectResultDecoder : JD.Decoder CreateProjectResult
createProjectResultDecoder =
    JD.succeed CreateProjectResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["project", "Project"]
            projectDecoder
        )
        




createProjectResultToString : CreateProjectResult -> String -- List (String, String)
createProjectResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "project" "" -- val.project
        
    --     |> Dict.toList
    ""



{-| <p>Configuration settings for a remote access session, including billing method.</p>
-}
type alias CreateRemoteAccessSessionConfiguration =
    { billingMethod : Maybe BillingMethod
    , vpceConfigurationArns : Maybe (List String)
    }



createRemoteAccessSessionConfigurationDecoder : JD.Decoder CreateRemoteAccessSessionConfiguration
createRemoteAccessSessionConfigurationDecoder =
    JD.succeed CreateRemoteAccessSessionConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["billingMethod", "BillingMethod"]
            billingMethodDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vpceConfigurationArns", "VpceConfigurationArns"]
            (JD.list JD.string)
        )
        




createRemoteAccessSessionConfigurationToString : CreateRemoteAccessSessionConfiguration -> String -- List (String, String)
createRemoteAccessSessionConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "billingMethod" "" -- val.billingMethod
        
    --     |> Dict.insert
    --         "vpceConfigurationArns" "" -- val.vpceConfigurationArns
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createRemoteAccessSessi
-}
type alias CreateRemoteAccessSessionResult =
    { remoteAccessSession : Maybe RemoteAccessSession
    }



createRemoteAccessSessionResultDecoder : JD.Decoder CreateRemoteAccessSessionResult
createRemoteAccessSessionResultDecoder =
    JD.succeed CreateRemoteAccessSessionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["remoteAccessSession", "RemoteAccessSession"]
            remoteAccessSessionDecoder
        )
        




createRemoteAccessSessionResultToString : CreateRemoteAccessSessionResult -> String -- List (String, String)
createRemoteAccessSessionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "remoteAccessSession" "" -- val.remoteAccessSession
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createUplo
-}
type alias CreateUploadResult =
    { upload : Maybe Upload
    }



createUploadResultDecoder : JD.Decoder CreateUploadResult
createUploadResultDecoder =
    JD.succeed CreateUploadResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["upload", "Upload"]
            uploadDecoder
        )
        




createUploadResultToString : CreateUploadResult -> String -- List (String, String)
createUploadResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "upload" "" -- val.upload
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createVPCEConfigurati
-}
type alias CreateVPCEConfigurationResult =
    { vpceConfiguration : Maybe VPCEConfiguration
    }



createVPCEConfigurationResultDecoder : JD.Decoder CreateVPCEConfigurationResult
createVPCEConfigurationResultDecoder =
    JD.succeed CreateVPCEConfigurationResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vpceConfiguration", "VpceConfiguration"]
            vPCEConfigurationDecoder
        )
        




createVPCEConfigurationResultToString : CreateVPCEConfigurationResult -> String -- List (String, String)
createVPCEConfigurationResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "vpceConfiguration" "" -- val.vpceConfiguration
        
    --     |> Dict.toList
    ""



{-| One of

* `CurrencyCode_USD`

-}
type CurrencyCode
    = CurrencyCode_USD



currencyCodeDecoder : JD.Decoder CurrencyCode
currencyCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "USD" ->
                        JD.succeed CurrencyCode_USD


                    _ ->
                        JD.fail "bad thing"
            )




currencyCodeToString : CurrencyCode -> String
currencyCodeToString val =
    case val of
        CurrencyCode_USD ->
            "USD"




{-| <p>A JSON object specifying the paths where the artifacts generated by the customer's tests, on the device or in the test environment, will be pulled from.</p> <p>Specify <code>deviceHostPaths</code> and optionally specify either <code>iosPaths</code> or <code>androidPaths</code>.</p> <p>For web app tests, you can specify both <code>iosPaths</code> and <code>androidPaths</code>.</p>
-}
type alias CustomerArtifactPaths =
    { iosPaths : Maybe (List String)
    , androidPaths : Maybe (List String)
    , deviceHostPaths : Maybe (List String)
    }



customerArtifactPathsDecoder : JD.Decoder CustomerArtifactPaths
customerArtifactPathsDecoder =
    JD.succeed CustomerArtifactPaths
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["iosPaths", "IosPaths"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["androidPaths", "AndroidPaths"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deviceHostPaths", "DeviceHostPaths"]
            (JD.list JD.string)
        )
        




customerArtifactPathsToString : CustomerArtifactPaths -> String -- List (String, String)
customerArtifactPathsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "iosPaths" "" -- val.iosPaths
        
    --     |> Dict.insert
    --         "androidPaths" "" -- val.androidPaths
        
    --     |> Dict.insert
    --         "deviceHostPaths" "" -- val.deviceHostPaths
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDevicePo
-}
type alias DeleteDevicePoolResult =
    { 
    }



deleteDevicePoolResultDecoder : JD.Decoder DeleteDevicePoolResult
deleteDevicePoolResultDecoder =
    JD.succeed DeleteDevicePoolResult
        




deleteDevicePoolResultToString : DeleteDevicePoolResult -> String -- List (String, String)
deleteDevicePoolResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteInstanceProfi
-}
type alias DeleteInstanceProfileResult =
    { 
    }



deleteInstanceProfileResultDecoder : JD.Decoder DeleteInstanceProfileResult
deleteInstanceProfileResultDecoder =
    JD.succeed DeleteInstanceProfileResult
        




deleteInstanceProfileResultToString : DeleteInstanceProfileResult -> String -- List (String, String)
deleteInstanceProfileResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteNetworkProfi
-}
type alias DeleteNetworkProfileResult =
    { 
    }



deleteNetworkProfileResultDecoder : JD.Decoder DeleteNetworkProfileResult
deleteNetworkProfileResultDecoder =
    JD.succeed DeleteNetworkProfileResult
        




deleteNetworkProfileResultToString : DeleteNetworkProfileResult -> String -- List (String, String)
deleteNetworkProfileResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteProje
-}
type alias DeleteProjectResult =
    { 
    }



deleteProjectResultDecoder : JD.Decoder DeleteProjectResult
deleteProjectResultDecoder =
    JD.succeed DeleteProjectResult
        




deleteProjectResultToString : DeleteProjectResult -> String -- List (String, String)
deleteProjectResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteRemoteAccessSessi
-}
type alias DeleteRemoteAccessSessionResult =
    { 
    }



deleteRemoteAccessSessionResultDecoder : JD.Decoder DeleteRemoteAccessSessionResult
deleteRemoteAccessSessionResultDecoder =
    JD.succeed DeleteRemoteAccessSessionResult
        




deleteRemoteAccessSessionResultToString : DeleteRemoteAccessSessionResult -> String -- List (String, String)
deleteRemoteAccessSessionResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteR
-}
type alias DeleteRunResult =
    { 
    }



deleteRunResultDecoder : JD.Decoder DeleteRunResult
deleteRunResultDecoder =
    JD.succeed DeleteRunResult
        




deleteRunResultToString : DeleteRunResult -> String -- List (String, String)
deleteRunResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteUplo
-}
type alias DeleteUploadResult =
    { 
    }



deleteUploadResultDecoder : JD.Decoder DeleteUploadResult
deleteUploadResultDecoder =
    JD.succeed DeleteUploadResult
        




deleteUploadResultToString : DeleteUploadResult -> String -- List (String, String)
deleteUploadResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteVPCEConfigurati
-}
type alias DeleteVPCEConfigurationResult =
    { 
    }



deleteVPCEConfigurationResultDecoder : JD.Decoder DeleteVPCEConfigurationResult
deleteVPCEConfigurationResultDecoder =
    JD.succeed DeleteVPCEConfigurationResult
        




deleteVPCEConfigurationResultToString : DeleteVPCEConfigurationResult -> String -- List (String, String)
deleteVPCEConfigurationResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Represents a device type that an app is tested against.</p>
-}
type alias Device =
    { arn : Maybe String
    , name : Maybe String
    , manufacturer : Maybe String
    , model : Maybe String
    , modelId : Maybe String
    , formFactor : Maybe DeviceFormFactor
    , platform : Maybe DevicePlatform
    , os : Maybe String
    , cpu : Maybe CPU
    , resolution : Maybe Resolution
    , heapSize : Maybe Int
    , memory : Maybe Int
    , image : Maybe String
    , carrier : Maybe String
    , radio : Maybe String
    , remoteAccessEnabled : Maybe Bool
    , remoteDebugEnabled : Maybe Bool
    , fleetType : Maybe String
    , fleetName : Maybe String
    , instances : Maybe (List DeviceInstance)
    , availability : Maybe DeviceAvailability
    }



deviceDecoder : JD.Decoder Device
deviceDecoder =
    JD.succeed Device
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["manufacturer", "Manufacturer"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["model", "Model"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["modelId", "ModelId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["formFactor", "FormFactor"]
            deviceFormFactorDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["platform", "Platform"]
            devicePlatformDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["os", "Os"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cpu", "Cpu"]
            cPUDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resolution", "Resolution"]
            resolutionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["heapSize", "HeapSize"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["memory", "Memory"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["image", "Image"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["carrier", "Carrier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["radio", "Radio"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["remoteAccessEnabled", "RemoteAccessEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["remoteDebugEnabled", "RemoteDebugEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fleetType", "FleetType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fleetName", "FleetName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instances", "Instances"]
            (JD.list deviceInstanceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["availability", "Availability"]
            deviceAvailabilityDecoder
        )
        




deviceToString : Device -> String -- List (String, String)
deviceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "manufacturer" "" -- val.manufacturer
        
    --     |> Dict.insert
    --         "model" "" -- val.model
        
    --     |> Dict.insert
    --         "modelId" "" -- val.modelId
        
    --     |> Dict.insert
    --         "formFactor" "" -- val.formFactor
        
    --     |> Dict.insert
    --         "platform" "" -- val.platform
        
    --     |> Dict.insert
    --         "os" "" -- val.os
        
    --     |> Dict.insert
    --         "cpu" "" -- val.cpu
        
    --     |> Dict.insert
    --         "resolution" "" -- val.resolution
        
    --     |> Dict.insert
    --         "heapSize" "" -- val.heapSize
        
    --     |> Dict.insert
    --         "memory" "" -- val.memory
        
    --     |> Dict.insert
    --         "image" "" -- val.image
        
    --     |> Dict.insert
    --         "carrier" "" -- val.carrier
        
    --     |> Dict.insert
    --         "radio" "" -- val.radio
        
    --     |> Dict.insert
    --         "remoteAccessEnabled" "" -- val.remoteAccessEnabled
        
    --     |> Dict.insert
    --         "remoteDebugEnabled" "" -- val.remoteDebugEnabled
        
    --     |> Dict.insert
    --         "fleetType" "" -- val.fleetType
        
    --     |> Dict.insert
    --         "fleetName" "" -- val.fleetName
        
    --     |> Dict.insert
    --         "instances" "" -- val.instances
        
    --     |> Dict.insert
    --         "availability" "" -- val.availability
        
    --     |> Dict.toList
    ""



{-| One of

* `DeviceAttribute_ARN`
* `DeviceAttribute_PLATFORM`
* `DeviceAttribute_FORM_FACTOR`
* `DeviceAttribute_MANUFACTURER`
* `DeviceAttribute_REMOTE_ACCESS_ENABLED`
* `DeviceAttribute_REMOTE_DEBUG_ENABLED`
* `DeviceAttribute_APPIUM_VERSION`
* `DeviceAttribute_INSTANCE_ARN`
* `DeviceAttribute_INSTANCE_LABELS`
* `DeviceAttribute_FLEET_TYPE`
* `DeviceAttribute_OS_VERSION`
* `DeviceAttribute_MODEL`
* `DeviceAttribute_AVAILABILITY`

-}
type DeviceAttribute
    = DeviceAttribute_ARN
    | DeviceAttribute_PLATFORM
    | DeviceAttribute_FORM_FACTOR
    | DeviceAttribute_MANUFACTURER
    | DeviceAttribute_REMOTE_ACCESS_ENABLED
    | DeviceAttribute_REMOTE_DEBUG_ENABLED
    | DeviceAttribute_APPIUM_VERSION
    | DeviceAttribute_INSTANCE_ARN
    | DeviceAttribute_INSTANCE_LABELS
    | DeviceAttribute_FLEET_TYPE
    | DeviceAttribute_OS_VERSION
    | DeviceAttribute_MODEL
    | DeviceAttribute_AVAILABILITY



deviceAttributeDecoder : JD.Decoder DeviceAttribute
deviceAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ARN" ->
                        JD.succeed DeviceAttribute_ARN

                    "PLATFORM" ->
                        JD.succeed DeviceAttribute_PLATFORM

                    "FORM_FACTOR" ->
                        JD.succeed DeviceAttribute_FORM_FACTOR

                    "MANUFACTURER" ->
                        JD.succeed DeviceAttribute_MANUFACTURER

                    "REMOTE_ACCESS_ENABLED" ->
                        JD.succeed DeviceAttribute_REMOTE_ACCESS_ENABLED

                    "REMOTE_DEBUG_ENABLED" ->
                        JD.succeed DeviceAttribute_REMOTE_DEBUG_ENABLED

                    "APPIUM_VERSION" ->
                        JD.succeed DeviceAttribute_APPIUM_VERSION

                    "INSTANCE_ARN" ->
                        JD.succeed DeviceAttribute_INSTANCE_ARN

                    "INSTANCE_LABELS" ->
                        JD.succeed DeviceAttribute_INSTANCE_LABELS

                    "FLEET_TYPE" ->
                        JD.succeed DeviceAttribute_FLEET_TYPE

                    "OS_VERSION" ->
                        JD.succeed DeviceAttribute_OS_VERSION

                    "MODEL" ->
                        JD.succeed DeviceAttribute_MODEL

                    "AVAILABILITY" ->
                        JD.succeed DeviceAttribute_AVAILABILITY


                    _ ->
                        JD.fail "bad thing"
            )




deviceAttributeToString : DeviceAttribute -> String
deviceAttributeToString val =
    case val of
        DeviceAttribute_ARN ->
            "ARN"

        DeviceAttribute_PLATFORM ->
            "PLATFORM"

        DeviceAttribute_FORM_FACTOR ->
            "FORM_FACTOR"

        DeviceAttribute_MANUFACTURER ->
            "MANUFACTURER"

        DeviceAttribute_REMOTE_ACCESS_ENABLED ->
            "REMOTE_ACCESS_ENABLED"

        DeviceAttribute_REMOTE_DEBUG_ENABLED ->
            "REMOTE_DEBUG_ENABLED"

        DeviceAttribute_APPIUM_VERSION ->
            "APPIUM_VERSION"

        DeviceAttribute_INSTANCE_ARN ->
            "INSTANCE_ARN"

        DeviceAttribute_INSTANCE_LABELS ->
            "INSTANCE_LABELS"

        DeviceAttribute_FLEET_TYPE ->
            "FLEET_TYPE"

        DeviceAttribute_OS_VERSION ->
            "OS_VERSION"

        DeviceAttribute_MODEL ->
            "MODEL"

        DeviceAttribute_AVAILABILITY ->
            "AVAILABILITY"




{-| One of

* `DeviceAvailability_TEMPORARY_NOT_AVAILABLE`
* `DeviceAvailability_BUSY`
* `DeviceAvailability_AVAILABLE`
* `DeviceAvailability_HIGHLY_AVAILABLE`

-}
type DeviceAvailability
    = DeviceAvailability_TEMPORARY_NOT_AVAILABLE
    | DeviceAvailability_BUSY
    | DeviceAvailability_AVAILABLE
    | DeviceAvailability_HIGHLY_AVAILABLE



deviceAvailabilityDecoder : JD.Decoder DeviceAvailability
deviceAvailabilityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TEMPORARY_NOT_AVAILABLE" ->
                        JD.succeed DeviceAvailability_TEMPORARY_NOT_AVAILABLE

                    "BUSY" ->
                        JD.succeed DeviceAvailability_BUSY

                    "AVAILABLE" ->
                        JD.succeed DeviceAvailability_AVAILABLE

                    "HIGHLY_AVAILABLE" ->
                        JD.succeed DeviceAvailability_HIGHLY_AVAILABLE


                    _ ->
                        JD.fail "bad thing"
            )




deviceAvailabilityToString : DeviceAvailability -> String
deviceAvailabilityToString val =
    case val of
        DeviceAvailability_TEMPORARY_NOT_AVAILABLE ->
            "TEMPORARY_NOT_AVAILABLE"

        DeviceAvailability_BUSY ->
            "BUSY"

        DeviceAvailability_AVAILABLE ->
            "AVAILABLE"

        DeviceAvailability_HIGHLY_AVAILABLE ->
            "HIGHLY_AVAILABLE"




{-| <p>Represents a device filter used to select a set of devices to be included in a test run. This data structure is passed in as the <code>deviceSelectionConfiguration</code> parameter to ScheduleRun. For an example of the JSON request syntax, see <a>ScheduleRun</a>.</p> <p>It is also passed in as the <code>filters</code> parameter to ListDevices. For an example of the JSON request syntax, see <a>ListDevices</a>.</p>
-}
type alias DeviceFilter =
    { attribute : Maybe DeviceFilterAttribute
    , operator : Maybe RuleOperator
    , values : Maybe (List String)
    }



deviceFilterDecoder : JD.Decoder DeviceFilter
deviceFilterDecoder =
    JD.succeed DeviceFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attribute", "Attribute"]
            deviceFilterAttributeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operator", "Operator"]
            ruleOperatorDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["values", "Values"]
            (JD.list JD.string)
        )
        




deviceFilterToString : DeviceFilter -> String -- List (String, String)
deviceFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attribute" "" -- val.attribute
        
    --     |> Dict.insert
    --         "operator" "" -- val.operator
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| One of

* `DeviceFilterAttribute_ARN`
* `DeviceFilterAttribute_PLATFORM`
* `DeviceFilterAttribute_OS_VERSION`
* `DeviceFilterAttribute_MODEL`
* `DeviceFilterAttribute_AVAILABILITY`
* `DeviceFilterAttribute_FORM_FACTOR`
* `DeviceFilterAttribute_MANUFACTURER`
* `DeviceFilterAttribute_REMOTE_ACCESS_ENABLED`
* `DeviceFilterAttribute_REMOTE_DEBUG_ENABLED`
* `DeviceFilterAttribute_INSTANCE_ARN`
* `DeviceFilterAttribute_INSTANCE_LABELS`
* `DeviceFilterAttribute_FLEET_TYPE`

-}
type DeviceFilterAttribute
    = DeviceFilterAttribute_ARN
    | DeviceFilterAttribute_PLATFORM
    | DeviceFilterAttribute_OS_VERSION
    | DeviceFilterAttribute_MODEL
    | DeviceFilterAttribute_AVAILABILITY
    | DeviceFilterAttribute_FORM_FACTOR
    | DeviceFilterAttribute_MANUFACTURER
    | DeviceFilterAttribute_REMOTE_ACCESS_ENABLED
    | DeviceFilterAttribute_REMOTE_DEBUG_ENABLED
    | DeviceFilterAttribute_INSTANCE_ARN
    | DeviceFilterAttribute_INSTANCE_LABELS
    | DeviceFilterAttribute_FLEET_TYPE



deviceFilterAttributeDecoder : JD.Decoder DeviceFilterAttribute
deviceFilterAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ARN" ->
                        JD.succeed DeviceFilterAttribute_ARN

                    "PLATFORM" ->
                        JD.succeed DeviceFilterAttribute_PLATFORM

                    "OS_VERSION" ->
                        JD.succeed DeviceFilterAttribute_OS_VERSION

                    "MODEL" ->
                        JD.succeed DeviceFilterAttribute_MODEL

                    "AVAILABILITY" ->
                        JD.succeed DeviceFilterAttribute_AVAILABILITY

                    "FORM_FACTOR" ->
                        JD.succeed DeviceFilterAttribute_FORM_FACTOR

                    "MANUFACTURER" ->
                        JD.succeed DeviceFilterAttribute_MANUFACTURER

                    "REMOTE_ACCESS_ENABLED" ->
                        JD.succeed DeviceFilterAttribute_REMOTE_ACCESS_ENABLED

                    "REMOTE_DEBUG_ENABLED" ->
                        JD.succeed DeviceFilterAttribute_REMOTE_DEBUG_ENABLED

                    "INSTANCE_ARN" ->
                        JD.succeed DeviceFilterAttribute_INSTANCE_ARN

                    "INSTANCE_LABELS" ->
                        JD.succeed DeviceFilterAttribute_INSTANCE_LABELS

                    "FLEET_TYPE" ->
                        JD.succeed DeviceFilterAttribute_FLEET_TYPE


                    _ ->
                        JD.fail "bad thing"
            )




deviceFilterAttributeToString : DeviceFilterAttribute -> String
deviceFilterAttributeToString val =
    case val of
        DeviceFilterAttribute_ARN ->
            "ARN"

        DeviceFilterAttribute_PLATFORM ->
            "PLATFORM"

        DeviceFilterAttribute_OS_VERSION ->
            "OS_VERSION"

        DeviceFilterAttribute_MODEL ->
            "MODEL"

        DeviceFilterAttribute_AVAILABILITY ->
            "AVAILABILITY"

        DeviceFilterAttribute_FORM_FACTOR ->
            "FORM_FACTOR"

        DeviceFilterAttribute_MANUFACTURER ->
            "MANUFACTURER"

        DeviceFilterAttribute_REMOTE_ACCESS_ENABLED ->
            "REMOTE_ACCESS_ENABLED"

        DeviceFilterAttribute_REMOTE_DEBUG_ENABLED ->
            "REMOTE_DEBUG_ENABLED"

        DeviceFilterAttribute_INSTANCE_ARN ->
            "INSTANCE_ARN"

        DeviceFilterAttribute_INSTANCE_LABELS ->
            "INSTANCE_LABELS"

        DeviceFilterAttribute_FLEET_TYPE ->
            "FLEET_TYPE"




{-| One of

* `DeviceFormFactor_PHONE`
* `DeviceFormFactor_TABLET`

-}
type DeviceFormFactor
    = DeviceFormFactor_PHONE
    | DeviceFormFactor_TABLET



deviceFormFactorDecoder : JD.Decoder DeviceFormFactor
deviceFormFactorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PHONE" ->
                        JD.succeed DeviceFormFactor_PHONE

                    "TABLET" ->
                        JD.succeed DeviceFormFactor_TABLET


                    _ ->
                        JD.fail "bad thing"
            )




deviceFormFactorToString : DeviceFormFactor -> String
deviceFormFactorToString val =
    case val of
        DeviceFormFactor_PHONE ->
            "PHONE"

        DeviceFormFactor_TABLET ->
            "TABLET"




{-| <p>Represents the device instance.</p>
-}
type alias DeviceInstance =
    { arn : Maybe String
    , deviceArn : Maybe String
    , labels : Maybe (List String)
    , status : Maybe InstanceStatus
    , udid : Maybe String
    , instanceProfile : Maybe InstanceProfile
    }



deviceInstanceDecoder : JD.Decoder DeviceInstance
deviceInstanceDecoder =
    JD.succeed DeviceInstance
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deviceArn", "DeviceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["labels", "Labels"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            instanceStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["udid", "Udid"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceProfile", "InstanceProfile"]
            instanceProfileDecoder
        )
        




deviceInstanceToString : DeviceInstance -> String -- List (String, String)
deviceInstanceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "deviceArn" "" -- val.deviceArn
        
    --     |> Dict.insert
    --         "labels" "" -- val.labels
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "udid" "" -- val.udid
        
    --     |> Dict.insert
    --         "instanceProfile" "" -- val.instanceProfile
        
    --     |> Dict.toList
    ""



{-| <p>Represents the total (metered or unmetered) minutes used by the resource to run tests. Contains the sum of minutes consumed by all children.</p>
-}
type alias DeviceMinutes =
    { total : Maybe Float
    , metered : Maybe Float
    , unmetered : Maybe Float
    }



deviceMinutesDecoder : JD.Decoder DeviceMinutes
deviceMinutesDecoder =
    JD.succeed DeviceMinutes
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["total", "Total"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["metered", "Metered"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["unmetered", "Unmetered"]
            JD.float
        )
        




deviceMinutesToString : DeviceMinutes -> String -- List (String, String)
deviceMinutesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "total" "" -- val.total
        
    --     |> Dict.insert
    --         "metered" "" -- val.metered
        
    --     |> Dict.insert
    --         "unmetered" "" -- val.unmetered
        
    --     |> Dict.toList
    ""



{-| One of

* `DevicePlatform_ANDROID`
* `DevicePlatform_IOS`

-}
type DevicePlatform
    = DevicePlatform_ANDROID
    | DevicePlatform_IOS



devicePlatformDecoder : JD.Decoder DevicePlatform
devicePlatformDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ANDROID" ->
                        JD.succeed DevicePlatform_ANDROID

                    "IOS" ->
                        JD.succeed DevicePlatform_IOS


                    _ ->
                        JD.fail "bad thing"
            )




devicePlatformToString : DevicePlatform -> String
devicePlatformToString val =
    case val of
        DevicePlatform_ANDROID ->
            "ANDROID"

        DevicePlatform_IOS ->
            "IOS"




{-| <p>Represents a collection of device types.</p>
-}
type alias DevicePool =
    { arn : Maybe String
    , name : Maybe String
    , description : Maybe String
    , type_ : Maybe DevicePoolType
    , rules : Maybe (List Rule)
    , maxDevices : Maybe Int
    }



devicePoolDecoder : JD.Decoder DevicePool
devicePoolDecoder =
    JD.succeed DevicePool
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
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
            ["type", "Type"]
            devicePoolTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["rules", "Rules"]
            (JD.list ruleDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["maxDevices", "MaxDevices"]
            JD.int
        )
        




devicePoolToString : DevicePool -> String -- List (String, String)
devicePoolToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "rules" "" -- val.rules
        
    --     |> Dict.insert
    --         "maxDevices" "" -- val.maxDevices
        
    --     |> Dict.toList
    ""



{-| <p>Represents a device pool compatibility result.</p>
-}
type alias DevicePoolCompatibilityResult =
    { device : Maybe Device
    , compatible : Maybe Bool
    , incompatibilityMessages : Maybe (List IncompatibilityMessage)
    }



devicePoolCompatibilityResultDecoder : JD.Decoder DevicePoolCompatibilityResult
devicePoolCompatibilityResultDecoder =
    JD.succeed DevicePoolCompatibilityResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["device", "Device"]
            deviceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["compatible", "Compatible"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["incompatibilityMessages", "IncompatibilityMessages"]
            (JD.list incompatibilityMessageDecoder)
        )
        




devicePoolCompatibilityResultToString : DevicePoolCompatibilityResult -> String -- List (String, String)
devicePoolCompatibilityResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "device" "" -- val.device
        
    --     |> Dict.insert
    --         "compatible" "" -- val.compatible
        
    --     |> Dict.insert
    --         "incompatibilityMessages" "" -- val.incompatibilityMessages
        
    --     |> Dict.toList
    ""



{-| One of

* `DevicePoolType_CURATED`
* `DevicePoolType_PRIVATE`

-}
type DevicePoolType
    = DevicePoolType_CURATED
    | DevicePoolType_PRIVATE



devicePoolTypeDecoder : JD.Decoder DevicePoolType
devicePoolTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CURATED" ->
                        JD.succeed DevicePoolType_CURATED

                    "PRIVATE" ->
                        JD.succeed DevicePoolType_PRIVATE


                    _ ->
                        JD.fail "bad thing"
            )




devicePoolTypeToString : DevicePoolType -> String
devicePoolTypeToString val =
    case val of
        DevicePoolType_CURATED ->
            "CURATED"

        DevicePoolType_PRIVATE ->
            "PRIVATE"




{-| <p>Represents the device filters used in a test run as well as the maximum number of devices to be included in the run. It is passed in as the <code>deviceSelectionConfiguration</code> request parameter in <a>ScheduleRun</a>.</p>
-}
type alias DeviceSelectionConfiguration =
    { filters : (List DeviceFilter)
    , maxDevices : Int
    }



deviceSelectionConfigurationDecoder : JD.Decoder DeviceSelectionConfiguration
deviceSelectionConfigurationDecoder =
    JD.succeed DeviceSelectionConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["filters", "Filters"]
            (JD.list deviceFilterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["maxDevices", "MaxDevices"]
            JD.int
        )
        




deviceSelectionConfigurationToString : DeviceSelectionConfiguration -> String -- List (String, String)
deviceSelectionConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "filters" "" -- val.filters
        
    --     |> Dict.insert
    --         "maxDevices" "" -- val.maxDevices
        
    --     |> Dict.toList
    ""



{-| <p>Contains the run results requested by the device selection configuration as well as how many devices were returned. For an example of the JSON response syntax, see <a>ScheduleRun</a>.</p>
-}
type alias DeviceSelectionResult =
    { filters : Maybe (List DeviceFilter)
    , matchedDevicesCount : Maybe Int
    , maxDevices : Maybe Int
    }



deviceSelectionResultDecoder : JD.Decoder DeviceSelectionResult
deviceSelectionResultDecoder =
    JD.succeed DeviceSelectionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["filters", "Filters"]
            (JD.list deviceFilterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["matchedDevicesCount", "MatchedDevicesCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["maxDevices", "MaxDevices"]
            JD.int
        )
        




deviceSelectionResultToString : DeviceSelectionResult -> String -- List (String, String)
deviceSelectionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "filters" "" -- val.filters
        
    --     |> Dict.insert
    --         "matchedDevicesCount" "" -- val.matchedDevicesCount
        
    --     |> Dict.insert
    --         "maxDevices" "" -- val.maxDevices
        
    --     |> Dict.toList
    ""



{-| <p>Represents configuration information about a test run, such as the execution timeout (in minutes).</p>
-}
type alias ExecutionConfiguration =
    { jobTimeoutMinutes : Maybe Int
    , accountsCleanup : Maybe Bool
    , appPackagesCleanup : Maybe Bool
    , videoCapture : Maybe Bool
    , skipAppResign : Maybe Bool
    }



executionConfigurationDecoder : JD.Decoder ExecutionConfiguration
executionConfigurationDecoder =
    JD.succeed ExecutionConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["jobTimeoutMinutes", "JobTimeoutMinutes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["accountsCleanup", "AccountsCleanup"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["appPackagesCleanup", "AppPackagesCleanup"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["videoCapture", "VideoCapture"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["skipAppResign", "SkipAppResign"]
            JD.bool
        )
        




executionConfigurationToString : ExecutionConfiguration -> String -- List (String, String)
executionConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobTimeoutMinutes" "" -- val.jobTimeoutMinutes
        
    --     |> Dict.insert
    --         "accountsCleanup" "" -- val.accountsCleanup
        
    --     |> Dict.insert
    --         "appPackagesCleanup" "" -- val.appPackagesCleanup
        
    --     |> Dict.insert
    --         "videoCapture" "" -- val.videoCapture
        
    --     |> Dict.insert
    --         "skipAppResign" "" -- val.skipAppResign
        
    --     |> Dict.toList
    ""



{-| One of

* `ExecutionResult_PENDING`
* `ExecutionResult_PASSED`
* `ExecutionResult_WARNED`
* `ExecutionResult_FAILED`
* `ExecutionResult_SKIPPED`
* `ExecutionResult_ERRORED`
* `ExecutionResult_STOPPED`

-}
type ExecutionResult
    = ExecutionResult_PENDING
    | ExecutionResult_PASSED
    | ExecutionResult_WARNED
    | ExecutionResult_FAILED
    | ExecutionResult_SKIPPED
    | ExecutionResult_ERRORED
    | ExecutionResult_STOPPED



executionResultDecoder : JD.Decoder ExecutionResult
executionResultDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed ExecutionResult_PENDING

                    "PASSED" ->
                        JD.succeed ExecutionResult_PASSED

                    "WARNED" ->
                        JD.succeed ExecutionResult_WARNED

                    "FAILED" ->
                        JD.succeed ExecutionResult_FAILED

                    "SKIPPED" ->
                        JD.succeed ExecutionResult_SKIPPED

                    "ERRORED" ->
                        JD.succeed ExecutionResult_ERRORED

                    "STOPPED" ->
                        JD.succeed ExecutionResult_STOPPED


                    _ ->
                        JD.fail "bad thing"
            )




executionResultToString : ExecutionResult -> String
executionResultToString val =
    case val of
        ExecutionResult_PENDING ->
            "PENDING"

        ExecutionResult_PASSED ->
            "PASSED"

        ExecutionResult_WARNED ->
            "WARNED"

        ExecutionResult_FAILED ->
            "FAILED"

        ExecutionResult_SKIPPED ->
            "SKIPPED"

        ExecutionResult_ERRORED ->
            "ERRORED"

        ExecutionResult_STOPPED ->
            "STOPPED"




{-| One of

* `ExecutionResultCode_PARSING_FAILED`
* `ExecutionResultCode_VPC_ENDPOINT_SETUP_FAILED`

-}
type ExecutionResultCode
    = ExecutionResultCode_PARSING_FAILED
    | ExecutionResultCode_VPC_ENDPOINT_SETUP_FAILED



executionResultCodeDecoder : JD.Decoder ExecutionResultCode
executionResultCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PARSING_FAILED" ->
                        JD.succeed ExecutionResultCode_PARSING_FAILED

                    "VPC_ENDPOINT_SETUP_FAILED" ->
                        JD.succeed ExecutionResultCode_VPC_ENDPOINT_SETUP_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




executionResultCodeToString : ExecutionResultCode -> String
executionResultCodeToString val =
    case val of
        ExecutionResultCode_PARSING_FAILED ->
            "PARSING_FAILED"

        ExecutionResultCode_VPC_ENDPOINT_SETUP_FAILED ->
            "VPC_ENDPOINT_SETUP_FAILED"




{-| One of

* `ExecutionStatus_PENDING`
* `ExecutionStatus_PENDING_CONCURRENCY`
* `ExecutionStatus_PENDING_DEVICE`
* `ExecutionStatus_PROCESSING`
* `ExecutionStatus_SCHEDULING`
* `ExecutionStatus_PREPARING`
* `ExecutionStatus_RUNNING`
* `ExecutionStatus_COMPLETED`
* `ExecutionStatus_STOPPING`

-}
type ExecutionStatus
    = ExecutionStatus_PENDING
    | ExecutionStatus_PENDING_CONCURRENCY
    | ExecutionStatus_PENDING_DEVICE
    | ExecutionStatus_PROCESSING
    | ExecutionStatus_SCHEDULING
    | ExecutionStatus_PREPARING
    | ExecutionStatus_RUNNING
    | ExecutionStatus_COMPLETED
    | ExecutionStatus_STOPPING



executionStatusDecoder : JD.Decoder ExecutionStatus
executionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed ExecutionStatus_PENDING

                    "PENDING_CONCURRENCY" ->
                        JD.succeed ExecutionStatus_PENDING_CONCURRENCY

                    "PENDING_DEVICE" ->
                        JD.succeed ExecutionStatus_PENDING_DEVICE

                    "PROCESSING" ->
                        JD.succeed ExecutionStatus_PROCESSING

                    "SCHEDULING" ->
                        JD.succeed ExecutionStatus_SCHEDULING

                    "PREPARING" ->
                        JD.succeed ExecutionStatus_PREPARING

                    "RUNNING" ->
                        JD.succeed ExecutionStatus_RUNNING

                    "COMPLETED" ->
                        JD.succeed ExecutionStatus_COMPLETED

                    "STOPPING" ->
                        JD.succeed ExecutionStatus_STOPPING


                    _ ->
                        JD.fail "bad thing"
            )




executionStatusToString : ExecutionStatus -> String
executionStatusToString val =
    case val of
        ExecutionStatus_PENDING ->
            "PENDING"

        ExecutionStatus_PENDING_CONCURRENCY ->
            "PENDING_CONCURRENCY"

        ExecutionStatus_PENDING_DEVICE ->
            "PENDING_DEVICE"

        ExecutionStatus_PROCESSING ->
            "PROCESSING"

        ExecutionStatus_SCHEDULING ->
            "SCHEDULING"

        ExecutionStatus_PREPARING ->
            "PREPARING"

        ExecutionStatus_RUNNING ->
            "RUNNING"

        ExecutionStatus_COMPLETED ->
            "COMPLETED"

        ExecutionStatus_STOPPING ->
            "STOPPING"




{-| Type of HTTP response from getAccountSettin
-}
type alias GetAccountSettingsResult =
    { accountSettings : Maybe AccountSettings
    }



getAccountSettingsResultDecoder : JD.Decoder GetAccountSettingsResult
getAccountSettingsResultDecoder =
    JD.succeed GetAccountSettingsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["accountSettings", "AccountSettings"]
            accountSettingsDecoder
        )
        




getAccountSettingsResultToString : GetAccountSettingsResult -> String -- List (String, String)
getAccountSettingsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accountSettings" "" -- val.accountSettings
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDeviceInstan
-}
type alias GetDeviceInstanceResult =
    { deviceInstance : Maybe DeviceInstance
    }



getDeviceInstanceResultDecoder : JD.Decoder GetDeviceInstanceResult
getDeviceInstanceResultDecoder =
    JD.succeed GetDeviceInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deviceInstance", "DeviceInstance"]
            deviceInstanceDecoder
        )
        




getDeviceInstanceResultToString : GetDeviceInstanceResult -> String -- List (String, String)
getDeviceInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deviceInstance" "" -- val.deviceInstance
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDevicePoolCompatibili
-}
type alias GetDevicePoolCompatibilityResult =
    { compatibleDevices : Maybe (List DevicePoolCompatibilityResult)
    , incompatibleDevices : Maybe (List DevicePoolCompatibilityResult)
    }



getDevicePoolCompatibilityResultDecoder : JD.Decoder GetDevicePoolCompatibilityResult
getDevicePoolCompatibilityResultDecoder =
    JD.succeed GetDevicePoolCompatibilityResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["compatibleDevices", "CompatibleDevices"]
            (JD.list devicePoolCompatibilityResultDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["incompatibleDevices", "IncompatibleDevices"]
            (JD.list devicePoolCompatibilityResultDecoder)
        )
        




getDevicePoolCompatibilityResultToString : GetDevicePoolCompatibilityResult -> String -- List (String, String)
getDevicePoolCompatibilityResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "compatibleDevices" "" -- val.compatibleDevices
        
    --     |> Dict.insert
    --         "incompatibleDevices" "" -- val.incompatibleDevices
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDevicePo
-}
type alias GetDevicePoolResult =
    { devicePool : Maybe DevicePool
    }



getDevicePoolResultDecoder : JD.Decoder GetDevicePoolResult
getDevicePoolResultDecoder =
    JD.succeed GetDevicePoolResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["devicePool", "DevicePool"]
            devicePoolDecoder
        )
        




getDevicePoolResultToString : GetDevicePoolResult -> String -- List (String, String)
getDevicePoolResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "devicePool" "" -- val.devicePool
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDevi
-}
type alias GetDeviceResult =
    { device : Maybe Device
    }



getDeviceResultDecoder : JD.Decoder GetDeviceResult
getDeviceResultDecoder =
    JD.succeed GetDeviceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["device", "Device"]
            deviceDecoder
        )
        




getDeviceResultToString : GetDeviceResult -> String -- List (String, String)
getDeviceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "device" "" -- val.device
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getInstanceProfi
-}
type alias GetInstanceProfileResult =
    { instanceProfile : Maybe InstanceProfile
    }



getInstanceProfileResultDecoder : JD.Decoder GetInstanceProfileResult
getInstanceProfileResultDecoder =
    JD.succeed GetInstanceProfileResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceProfile", "InstanceProfile"]
            instanceProfileDecoder
        )
        




getInstanceProfileResultToString : GetInstanceProfileResult -> String -- List (String, String)
getInstanceProfileResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceProfile" "" -- val.instanceProfile
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getJ
-}
type alias GetJobResult =
    { job : Maybe Job
    }



getJobResultDecoder : JD.Decoder GetJobResult
getJobResultDecoder =
    JD.succeed GetJobResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["job", "Job"]
            jobDecoder
        )
        




getJobResultToString : GetJobResult -> String -- List (String, String)
getJobResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "job" "" -- val.job
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getNetworkProfi
-}
type alias GetNetworkProfileResult =
    { networkProfile : Maybe NetworkProfile
    }



getNetworkProfileResultDecoder : JD.Decoder GetNetworkProfileResult
getNetworkProfileResultDecoder =
    JD.succeed GetNetworkProfileResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["networkProfile", "NetworkProfile"]
            networkProfileDecoder
        )
        




getNetworkProfileResultToString : GetNetworkProfileResult -> String -- List (String, String)
getNetworkProfileResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "networkProfile" "" -- val.networkProfile
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getOfferingStat
-}
type alias GetOfferingStatusResult =
    { current : Maybe (Dict String OfferingStatus)
    , nextPeriod : Maybe (Dict String OfferingStatus)
    , nextToken : Maybe String
    }



getOfferingStatusResultDecoder : JD.Decoder GetOfferingStatusResult
getOfferingStatusResultDecoder =
    JD.succeed GetOfferingStatusResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["current", "Current"]
            (AWS.Core.Decode.dict offeringStatusDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPeriod", "NextPeriod"]
            (AWS.Core.Decode.dict offeringStatusDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




getOfferingStatusResultToString : GetOfferingStatusResult -> String -- List (String, String)
getOfferingStatusResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "current" "" -- val.current
        
    --     |> Dict.insert
    --         "nextPeriod" "" -- val.nextPeriod
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getProje
-}
type alias GetProjectResult =
    { project : Maybe Project
    }



getProjectResultDecoder : JD.Decoder GetProjectResult
getProjectResultDecoder =
    JD.succeed GetProjectResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["project", "Project"]
            projectDecoder
        )
        




getProjectResultToString : GetProjectResult -> String -- List (String, String)
getProjectResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "project" "" -- val.project
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRemoteAccessSessi
-}
type alias GetRemoteAccessSessionResult =
    { remoteAccessSession : Maybe RemoteAccessSession
    }



getRemoteAccessSessionResultDecoder : JD.Decoder GetRemoteAccessSessionResult
getRemoteAccessSessionResultDecoder =
    JD.succeed GetRemoteAccessSessionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["remoteAccessSession", "RemoteAccessSession"]
            remoteAccessSessionDecoder
        )
        




getRemoteAccessSessionResultToString : GetRemoteAccessSessionResult -> String -- List (String, String)
getRemoteAccessSessionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "remoteAccessSession" "" -- val.remoteAccessSession
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getR
-}
type alias GetRunResult =
    { run : Maybe Run
    }



getRunResultDecoder : JD.Decoder GetRunResult
getRunResultDecoder =
    JD.succeed GetRunResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["run", "Run"]
            runDecoder
        )
        




getRunResultToString : GetRunResult -> String -- List (String, String)
getRunResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "run" "" -- val.run
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getSui
-}
type alias GetSuiteResult =
    { suite : Maybe Suite
    }



getSuiteResultDecoder : JD.Decoder GetSuiteResult
getSuiteResultDecoder =
    JD.succeed GetSuiteResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["suite", "Suite"]
            suiteDecoder
        )
        




getSuiteResultToString : GetSuiteResult -> String -- List (String, String)
getSuiteResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "suite" "" -- val.suite
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getTe
-}
type alias GetTestResult =
    { test : Maybe Test
    }



getTestResultDecoder : JD.Decoder GetTestResult
getTestResultDecoder =
    JD.succeed GetTestResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["test", "Test"]
            testDecoder
        )
        




getTestResultToString : GetTestResult -> String -- List (String, String)
getTestResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "test" "" -- val.test
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getUplo
-}
type alias GetUploadResult =
    { upload : Maybe Upload
    }



getUploadResultDecoder : JD.Decoder GetUploadResult
getUploadResultDecoder =
    JD.succeed GetUploadResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["upload", "Upload"]
            uploadDecoder
        )
        




getUploadResultToString : GetUploadResult -> String -- List (String, String)
getUploadResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "upload" "" -- val.upload
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getVPCEConfigurati
-}
type alias GetVPCEConfigurationResult =
    { vpceConfiguration : Maybe VPCEConfiguration
    }



getVPCEConfigurationResultDecoder : JD.Decoder GetVPCEConfigurationResult
getVPCEConfigurationResultDecoder =
    JD.succeed GetVPCEConfigurationResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vpceConfiguration", "VpceConfiguration"]
            vPCEConfigurationDecoder
        )
        




getVPCEConfigurationResultToString : GetVPCEConfigurationResult -> String -- List (String, String)
getVPCEConfigurationResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "vpceConfiguration" "" -- val.vpceConfiguration
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about incompatibility.</p>
-}
type alias IncompatibilityMessage =
    { message : Maybe String
    , type_ : Maybe DeviceAttribute
    }



incompatibilityMessageDecoder : JD.Decoder IncompatibilityMessage
incompatibilityMessageDecoder =
    JD.succeed IncompatibilityMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            deviceAttributeDecoder
        )
        




incompatibilityMessageToString : IncompatibilityMessage -> String -- List (String, String)
incompatibilityMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from installToRemoteAccessSessi
-}
type alias InstallToRemoteAccessSessionResult =
    { appUpload : Maybe Upload
    }



installToRemoteAccessSessionResultDecoder : JD.Decoder InstallToRemoteAccessSessionResult
installToRemoteAccessSessionResultDecoder =
    JD.succeed InstallToRemoteAccessSessionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["appUpload", "AppUpload"]
            uploadDecoder
        )
        




installToRemoteAccessSessionResultToString : InstallToRemoteAccessSessionResult -> String -- List (String, String)
installToRemoteAccessSessionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "appUpload" "" -- val.appUpload
        
    --     |> Dict.toList
    ""



{-| <p>Represents the instance profile.</p>
-}
type alias InstanceProfile =
    { arn : Maybe String
    , packageCleanup : Maybe Bool
    , excludeAppPackagesFromCleanup : Maybe (List String)
    , rebootAfterUse : Maybe Bool
    , name : Maybe String
    , description : Maybe String
    }



instanceProfileDecoder : JD.Decoder InstanceProfile
instanceProfileDecoder =
    JD.succeed InstanceProfile
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["packageCleanup", "PackageCleanup"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["excludeAppPackagesFromCleanup", "ExcludeAppPackagesFromCleanup"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["rebootAfterUse", "RebootAfterUse"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        




instanceProfileToString : InstanceProfile -> String -- List (String, String)
instanceProfileToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "packageCleanup" "" -- val.packageCleanup
        
    --     |> Dict.insert
    --         "excludeAppPackagesFromCleanup" "" -- val.excludeAppPackagesFromCleanup
        
    --     |> Dict.insert
    --         "rebootAfterUse" "" -- val.rebootAfterUse
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.toList
    ""



{-| One of

* `InstanceStatus_IN_USE`
* `InstanceStatus_PREPARING`
* `InstanceStatus_AVAILABLE`
* `InstanceStatus_NOT_AVAILABLE`

-}
type InstanceStatus
    = InstanceStatus_IN_USE
    | InstanceStatus_PREPARING
    | InstanceStatus_AVAILABLE
    | InstanceStatus_NOT_AVAILABLE



instanceStatusDecoder : JD.Decoder InstanceStatus
instanceStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IN_USE" ->
                        JD.succeed InstanceStatus_IN_USE

                    "PREPARING" ->
                        JD.succeed InstanceStatus_PREPARING

                    "AVAILABLE" ->
                        JD.succeed InstanceStatus_AVAILABLE

                    "NOT_AVAILABLE" ->
                        JD.succeed InstanceStatus_NOT_AVAILABLE


                    _ ->
                        JD.fail "bad thing"
            )




instanceStatusToString : InstanceStatus -> String
instanceStatusToString val =
    case val of
        InstanceStatus_IN_USE ->
            "IN_USE"

        InstanceStatus_PREPARING ->
            "PREPARING"

        InstanceStatus_AVAILABLE ->
            "AVAILABLE"

        InstanceStatus_NOT_AVAILABLE ->
            "NOT_AVAILABLE"




{-| One of

* `InteractionMode_INTERACTIVE`
* `InteractionMode_NO_VIDEO`
* `InteractionMode_VIDEO_ONLY`

-}
type InteractionMode
    = InteractionMode_INTERACTIVE
    | InteractionMode_NO_VIDEO
    | InteractionMode_VIDEO_ONLY



interactionModeDecoder : JD.Decoder InteractionMode
interactionModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INTERACTIVE" ->
                        JD.succeed InteractionMode_INTERACTIVE

                    "NO_VIDEO" ->
                        JD.succeed InteractionMode_NO_VIDEO

                    "VIDEO_ONLY" ->
                        JD.succeed InteractionMode_VIDEO_ONLY


                    _ ->
                        JD.fail "bad thing"
            )




interactionModeToString : InteractionMode -> String
interactionModeToString val =
    case val of
        InteractionMode_INTERACTIVE ->
            "INTERACTIVE"

        InteractionMode_NO_VIDEO ->
            "NO_VIDEO"

        InteractionMode_VIDEO_ONLY ->
            "VIDEO_ONLY"




{-| <p>Represents a device.</p>
-}
type alias Job =
    { arn : Maybe String
    , name : Maybe String
    , type_ : Maybe TestType
    , created : Maybe Posix
    , status : Maybe ExecutionStatus
    , result : Maybe ExecutionResult
    , started : Maybe Posix
    , stopped : Maybe Posix
    , counters : Maybe Counters
    , message : Maybe String
    , device : Maybe Device
    , instanceArn : Maybe String
    , deviceMinutes : Maybe DeviceMinutes
    , videoEndpoint : Maybe String
    , videoCapture : Maybe Bool
    }



jobDecoder : JD.Decoder Job
jobDecoder =
    JD.succeed Job
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            testTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["created", "Created"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            executionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["result", "Result"]
            executionResultDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["started", "Started"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stopped", "Stopped"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["counters", "Counters"]
            countersDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["device", "Device"]
            deviceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceArn", "InstanceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deviceMinutes", "DeviceMinutes"]
            deviceMinutesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["videoEndpoint", "VideoEndpoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["videoCapture", "VideoCapture"]
            JD.bool
        )
        




jobToString : Job -> String -- List (String, String)
jobToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "result" "" -- val.result
        
    --     |> Dict.insert
    --         "started" "" -- val.started
        
    --     |> Dict.insert
    --         "stopped" "" -- val.stopped
        
    --     |> Dict.insert
    --         "counters" "" -- val.counters
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "device" "" -- val.device
        
    --     |> Dict.insert
    --         "instanceArn" "" -- val.instanceArn
        
    --     |> Dict.insert
    --         "deviceMinutes" "" -- val.deviceMinutes
        
    --     |> Dict.insert
    --         "videoEndpoint" "" -- val.videoEndpoint
        
    --     |> Dict.insert
    --         "videoCapture" "" -- val.videoCapture
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listArtifac
-}
type alias ListArtifactsResult =
    { artifacts : Maybe (List Artifact)
    , nextToken : Maybe String
    }



listArtifactsResultDecoder : JD.Decoder ListArtifactsResult
listArtifactsResultDecoder =
    JD.succeed ListArtifactsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["artifacts", "Artifacts"]
            (JD.list artifactDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listArtifactsResultToString : ListArtifactsResult -> String -- List (String, String)
listArtifactsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "artifacts" "" -- val.artifacts
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listDeviceInstanc
-}
type alias ListDeviceInstancesResult =
    { deviceInstances : Maybe (List DeviceInstance)
    , nextToken : Maybe String
    }



listDeviceInstancesResultDecoder : JD.Decoder ListDeviceInstancesResult
listDeviceInstancesResultDecoder =
    JD.succeed ListDeviceInstancesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deviceInstances", "DeviceInstances"]
            (JD.list deviceInstanceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listDeviceInstancesResultToString : ListDeviceInstancesResult -> String -- List (String, String)
listDeviceInstancesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deviceInstances" "" -- val.deviceInstances
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listDevicePoo
-}
type alias ListDevicePoolsResult =
    { devicePools : Maybe (List DevicePool)
    , nextToken : Maybe String
    }



listDevicePoolsResultDecoder : JD.Decoder ListDevicePoolsResult
listDevicePoolsResultDecoder =
    JD.succeed ListDevicePoolsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["devicePools", "DevicePools"]
            (JD.list devicePoolDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listDevicePoolsResultToString : ListDevicePoolsResult -> String -- List (String, String)
listDevicePoolsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "devicePools" "" -- val.devicePools
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listDevic
-}
type alias ListDevicesResult =
    { devices : Maybe (List Device)
    , nextToken : Maybe String
    }



listDevicesResultDecoder : JD.Decoder ListDevicesResult
listDevicesResultDecoder =
    JD.succeed ListDevicesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["devices", "Devices"]
            (JD.list deviceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listDevicesResultToString : ListDevicesResult -> String -- List (String, String)
listDevicesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "devices" "" -- val.devices
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listInstanceProfil
-}
type alias ListInstanceProfilesResult =
    { instanceProfiles : Maybe (List InstanceProfile)
    , nextToken : Maybe String
    }



listInstanceProfilesResultDecoder : JD.Decoder ListInstanceProfilesResult
listInstanceProfilesResultDecoder =
    JD.succeed ListInstanceProfilesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceProfiles", "InstanceProfiles"]
            (JD.list instanceProfileDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listInstanceProfilesResultToString : ListInstanceProfilesResult -> String -- List (String, String)
listInstanceProfilesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceProfiles" "" -- val.instanceProfiles
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listJo
-}
type alias ListJobsResult =
    { jobs : Maybe (List Job)
    , nextToken : Maybe String
    }



listJobsResultDecoder : JD.Decoder ListJobsResult
listJobsResultDecoder =
    JD.succeed ListJobsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["jobs", "Jobs"]
            (JD.list jobDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listJobsResultToString : ListJobsResult -> String -- List (String, String)
listJobsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobs" "" -- val.jobs
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listNetworkProfil
-}
type alias ListNetworkProfilesResult =
    { networkProfiles : Maybe (List NetworkProfile)
    , nextToken : Maybe String
    }



listNetworkProfilesResultDecoder : JD.Decoder ListNetworkProfilesResult
listNetworkProfilesResultDecoder =
    JD.succeed ListNetworkProfilesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["networkProfiles", "NetworkProfiles"]
            (JD.list networkProfileDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listNetworkProfilesResultToString : ListNetworkProfilesResult -> String -- List (String, String)
listNetworkProfilesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "networkProfiles" "" -- val.networkProfiles
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listOfferingPromotio
-}
type alias ListOfferingPromotionsResult =
    { offeringPromotions : Maybe (List OfferingPromotion)
    , nextToken : Maybe String
    }



listOfferingPromotionsResultDecoder : JD.Decoder ListOfferingPromotionsResult
listOfferingPromotionsResultDecoder =
    JD.succeed ListOfferingPromotionsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["offeringPromotions", "OfferingPromotions"]
            (JD.list offeringPromotionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listOfferingPromotionsResultToString : ListOfferingPromotionsResult -> String -- List (String, String)
listOfferingPromotionsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "offeringPromotions" "" -- val.offeringPromotions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listOfferingTransactio
-}
type alias ListOfferingTransactionsResult =
    { offeringTransactions : Maybe (List OfferingTransaction)
    , nextToken : Maybe String
    }



listOfferingTransactionsResultDecoder : JD.Decoder ListOfferingTransactionsResult
listOfferingTransactionsResultDecoder =
    JD.succeed ListOfferingTransactionsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["offeringTransactions", "OfferingTransactions"]
            (JD.list offeringTransactionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listOfferingTransactionsResultToString : ListOfferingTransactionsResult -> String -- List (String, String)
listOfferingTransactionsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "offeringTransactions" "" -- val.offeringTransactions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listOfferin
-}
type alias ListOfferingsResult =
    { offerings : Maybe (List Offering)
    , nextToken : Maybe String
    }



listOfferingsResultDecoder : JD.Decoder ListOfferingsResult
listOfferingsResultDecoder =
    JD.succeed ListOfferingsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["offerings", "Offerings"]
            (JD.list offeringDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listOfferingsResultToString : ListOfferingsResult -> String -- List (String, String)
listOfferingsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "offerings" "" -- val.offerings
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listProjec
-}
type alias ListProjectsResult =
    { projects : Maybe (List Project)
    , nextToken : Maybe String
    }



listProjectsResultDecoder : JD.Decoder ListProjectsResult
listProjectsResultDecoder =
    JD.succeed ListProjectsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["projects", "Projects"]
            (JD.list projectDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listProjectsResultToString : ListProjectsResult -> String -- List (String, String)
listProjectsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "projects" "" -- val.projects
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listRemoteAccessSessio
-}
type alias ListRemoteAccessSessionsResult =
    { remoteAccessSessions : Maybe (List RemoteAccessSession)
    , nextToken : Maybe String
    }



listRemoteAccessSessionsResultDecoder : JD.Decoder ListRemoteAccessSessionsResult
listRemoteAccessSessionsResultDecoder =
    JD.succeed ListRemoteAccessSessionsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["remoteAccessSessions", "RemoteAccessSessions"]
            (JD.list remoteAccessSessionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listRemoteAccessSessionsResultToString : ListRemoteAccessSessionsResult -> String -- List (String, String)
listRemoteAccessSessionsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "remoteAccessSessions" "" -- val.remoteAccessSessions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listRu
-}
type alias ListRunsResult =
    { runs : Maybe (List Run)
    , nextToken : Maybe String
    }



listRunsResultDecoder : JD.Decoder ListRunsResult
listRunsResultDecoder =
    JD.succeed ListRunsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["runs", "Runs"]
            (JD.list runDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listRunsResultToString : ListRunsResult -> String -- List (String, String)
listRunsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "runs" "" -- val.runs
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listSampl
-}
type alias ListSamplesResult =
    { samples : Maybe (List Sample)
    , nextToken : Maybe String
    }



listSamplesResultDecoder : JD.Decoder ListSamplesResult
listSamplesResultDecoder =
    JD.succeed ListSamplesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["samples", "Samples"]
            (JD.list sampleDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listSamplesResultToString : ListSamplesResult -> String -- List (String, String)
listSamplesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "samples" "" -- val.samples
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listSuit
-}
type alias ListSuitesResult =
    { suites : Maybe (List Suite)
    , nextToken : Maybe String
    }



listSuitesResultDecoder : JD.Decoder ListSuitesResult
listSuitesResultDecoder =
    JD.succeed ListSuitesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["suites", "Suites"]
            (JD.list suiteDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listSuitesResultToString : ListSuitesResult -> String -- List (String, String)
listSuitesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "suites" "" -- val.suites
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { tags : Maybe (List Tag)
    }



listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JD.succeed ListTagsForResourceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        




listTagsForResourceResponseToString : ListTagsForResourceResponse -> String -- List (String, String)
listTagsForResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTes
-}
type alias ListTestsResult =
    { tests : Maybe (List Test)
    , nextToken : Maybe String
    }



listTestsResultDecoder : JD.Decoder ListTestsResult
listTestsResultDecoder =
    JD.succeed ListTestsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tests", "Tests"]
            (JD.list testDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listTestsResultToString : ListTestsResult -> String -- List (String, String)
listTestsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tests" "" -- val.tests
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listUniqueProble
-}
type alias ListUniqueProblemsResult =
    { uniqueProblems : Maybe (Dict String (List UniqueProblem))
    , nextToken : Maybe String
    }



listUniqueProblemsResultDecoder : JD.Decoder ListUniqueProblemsResult
listUniqueProblemsResultDecoder =
    JD.succeed ListUniqueProblemsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["uniqueProblems", "UniqueProblems"]
            (AWS.Core.Decode.dict (JD.list uniqueProblemDecoder))
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listUniqueProblemsResultToString : ListUniqueProblemsResult -> String -- List (String, String)
listUniqueProblemsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "uniqueProblems" "" -- val.uniqueProblems
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listUploa
-}
type alias ListUploadsResult =
    { uploads : Maybe (List Upload)
    , nextToken : Maybe String
    }



listUploadsResultDecoder : JD.Decoder ListUploadsResult
listUploadsResultDecoder =
    JD.succeed ListUploadsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["uploads", "Uploads"]
            (JD.list uploadDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listUploadsResultToString : ListUploadsResult -> String -- List (String, String)
listUploadsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "uploads" "" -- val.uploads
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listVPCEConfiguratio
-}
type alias ListVPCEConfigurationsResult =
    { vpceConfigurations : Maybe (List VPCEConfiguration)
    , nextToken : Maybe String
    }



listVPCEConfigurationsResultDecoder : JD.Decoder ListVPCEConfigurationsResult
listVPCEConfigurationsResultDecoder =
    JD.succeed ListVPCEConfigurationsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vpceConfigurations", "VpceConfigurations"]
            (JD.list vPCEConfigurationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listVPCEConfigurationsResultToString : ListVPCEConfigurationsResult -> String -- List (String, String)
listVPCEConfigurationsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "vpceConfigurations" "" -- val.vpceConfigurations
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>Represents a latitude and longitude pair, expressed in geographic coordinate system degrees (for example 47.6204, -122.3491).</p> <p>Elevation is currently not supported.</p>
-}
type alias Location =
    { latitude : Float
    , longitude : Float
    }



locationDecoder : JD.Decoder Location
locationDecoder =
    JD.succeed Location
        
        |> JDP.custom (AWS.Core.Decode.required
            ["latitude", "Latitude"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["longitude", "Longitude"]
            JD.float
        )
        




locationToString : Location -> String -- List (String, String)
locationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "latitude" "" -- val.latitude
        
    --     |> Dict.insert
    --         "longitude" "" -- val.longitude
        
    --     |> Dict.toList
    ""



{-| <p>A number representing the monetary amount for an offering or transaction.</p>
-}
type alias MonetaryAmount =
    { amount : Maybe Float
    , currencyCode : Maybe CurrencyCode
    }



monetaryAmountDecoder : JD.Decoder MonetaryAmount
monetaryAmountDecoder =
    JD.succeed MonetaryAmount
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["amount", "Amount"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["currencyCode", "CurrencyCode"]
            currencyCodeDecoder
        )
        




monetaryAmountToString : MonetaryAmount -> String -- List (String, String)
monetaryAmountToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "amount" "" -- val.amount
        
    --     |> Dict.insert
    --         "currencyCode" "" -- val.currencyCode
        
    --     |> Dict.toList
    ""



{-| <p>An array of settings that describes characteristics of a network profile.</p>
-}
type alias NetworkProfile =
    { arn : Maybe String
    , name : Maybe String
    , description : Maybe String
    , type_ : Maybe NetworkProfileType
    , uplinkBandwidthBits : Maybe Int
    , downlinkBandwidthBits : Maybe Int
    , uplinkDelayMs : Maybe Int
    , downlinkDelayMs : Maybe Int
    , uplinkJitterMs : Maybe Int
    , downlinkJitterMs : Maybe Int
    , uplinkLossPercent : Maybe Int
    , downlinkLossPercent : Maybe Int
    }



networkProfileDecoder : JD.Decoder NetworkProfile
networkProfileDecoder =
    JD.succeed NetworkProfile
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
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
            ["type", "Type"]
            networkProfileTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["uplinkBandwidthBits", "UplinkBandwidthBits"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["downlinkBandwidthBits", "DownlinkBandwidthBits"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["uplinkDelayMs", "UplinkDelayMs"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["downlinkDelayMs", "DownlinkDelayMs"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["uplinkJitterMs", "UplinkJitterMs"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["downlinkJitterMs", "DownlinkJitterMs"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["uplinkLossPercent", "UplinkLossPercent"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["downlinkLossPercent", "DownlinkLossPercent"]
            JD.int
        )
        




networkProfileToString : NetworkProfile -> String -- List (String, String)
networkProfileToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "uplinkBandwidthBits" "" -- val.uplinkBandwidthBits
        
    --     |> Dict.insert
    --         "downlinkBandwidthBits" "" -- val.downlinkBandwidthBits
        
    --     |> Dict.insert
    --         "uplinkDelayMs" "" -- val.uplinkDelayMs
        
    --     |> Dict.insert
    --         "downlinkDelayMs" "" -- val.downlinkDelayMs
        
    --     |> Dict.insert
    --         "uplinkJitterMs" "" -- val.uplinkJitterMs
        
    --     |> Dict.insert
    --         "downlinkJitterMs" "" -- val.downlinkJitterMs
        
    --     |> Dict.insert
    --         "uplinkLossPercent" "" -- val.uplinkLossPercent
        
    --     |> Dict.insert
    --         "downlinkLossPercent" "" -- val.downlinkLossPercent
        
    --     |> Dict.toList
    ""



{-| One of

* `NetworkProfileType_CURATED`
* `NetworkProfileType_PRIVATE`

-}
type NetworkProfileType
    = NetworkProfileType_CURATED
    | NetworkProfileType_PRIVATE



networkProfileTypeDecoder : JD.Decoder NetworkProfileType
networkProfileTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CURATED" ->
                        JD.succeed NetworkProfileType_CURATED

                    "PRIVATE" ->
                        JD.succeed NetworkProfileType_PRIVATE


                    _ ->
                        JD.fail "bad thing"
            )




networkProfileTypeToString : NetworkProfileType -> String
networkProfileTypeToString val =
    case val of
        NetworkProfileType_CURATED ->
            "CURATED"

        NetworkProfileType_PRIVATE ->
            "PRIVATE"




{-| <p>Represents the metadata of a device offering.</p>
-}
type alias Offering =
    { id : Maybe String
    , description : Maybe String
    , type_ : Maybe OfferingType
    , platform : Maybe DevicePlatform
    , recurringCharges : Maybe (List RecurringCharge)
    }



offeringDecoder : JD.Decoder Offering
offeringDecoder =
    JD.succeed Offering
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            offeringTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["platform", "Platform"]
            devicePlatformDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["recurringCharges", "RecurringCharges"]
            (JD.list recurringChargeDecoder)
        )
        




offeringToString : Offering -> String -- List (String, String)
offeringToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "platform" "" -- val.platform
        
    --     |> Dict.insert
    --         "recurringCharges" "" -- val.recurringCharges
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about an offering promotion.</p>
-}
type alias OfferingPromotion =
    { id : Maybe String
    , description : Maybe String
    }



offeringPromotionDecoder : JD.Decoder OfferingPromotion
offeringPromotionDecoder =
    JD.succeed OfferingPromotion
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        




offeringPromotionToString : OfferingPromotion -> String -- List (String, String)
offeringPromotionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.toList
    ""



{-| <p>The status of the offering.</p>
-}
type alias OfferingStatus =
    { type_ : Maybe OfferingTransactionType
    , offering : Maybe Offering
    , quantity : Maybe Int
    , effectiveOn : Maybe Posix
    }



offeringStatusDecoder : JD.Decoder OfferingStatus
offeringStatusDecoder =
    JD.succeed OfferingStatus
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            offeringTransactionTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["offering", "Offering"]
            offeringDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["quantity", "Quantity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["effectiveOn", "EffectiveOn"]
            JDX.datetime
        )
        




offeringStatusToString : OfferingStatus -> String -- List (String, String)
offeringStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "offering" "" -- val.offering
        
    --     |> Dict.insert
    --         "quantity" "" -- val.quantity
        
    --     |> Dict.insert
    --         "effectiveOn" "" -- val.effectiveOn
        
    --     |> Dict.toList
    ""



{-| <p>Represents the metadata of an offering transaction.</p>
-}
type alias OfferingTransaction =
    { offeringStatus : Maybe OfferingStatus
    , transactionId : Maybe String
    , offeringPromotionId : Maybe String
    , createdOn : Maybe Posix
    , cost : Maybe MonetaryAmount
    }



offeringTransactionDecoder : JD.Decoder OfferingTransaction
offeringTransactionDecoder =
    JD.succeed OfferingTransaction
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["offeringStatus", "OfferingStatus"]
            offeringStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["transactionId", "TransactionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["offeringPromotionId", "OfferingPromotionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdOn", "CreatedOn"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cost", "Cost"]
            monetaryAmountDecoder
        )
        




offeringTransactionToString : OfferingTransaction -> String -- List (String, String)
offeringTransactionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "offeringStatus" "" -- val.offeringStatus
        
    --     |> Dict.insert
    --         "transactionId" "" -- val.transactionId
        
    --     |> Dict.insert
    --         "offeringPromotionId" "" -- val.offeringPromotionId
        
    --     |> Dict.insert
    --         "createdOn" "" -- val.createdOn
        
    --     |> Dict.insert
    --         "cost" "" -- val.cost
        
    --     |> Dict.toList
    ""



{-| One of

* `OfferingTransactionType_PURCHASE`
* `OfferingTransactionType_RENEW`
* `OfferingTransactionType_SYSTEM`

-}
type OfferingTransactionType
    = OfferingTransactionType_PURCHASE
    | OfferingTransactionType_RENEW
    | OfferingTransactionType_SYSTEM



offeringTransactionTypeDecoder : JD.Decoder OfferingTransactionType
offeringTransactionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PURCHASE" ->
                        JD.succeed OfferingTransactionType_PURCHASE

                    "RENEW" ->
                        JD.succeed OfferingTransactionType_RENEW

                    "SYSTEM" ->
                        JD.succeed OfferingTransactionType_SYSTEM


                    _ ->
                        JD.fail "bad thing"
            )




offeringTransactionTypeToString : OfferingTransactionType -> String
offeringTransactionTypeToString val =
    case val of
        OfferingTransactionType_PURCHASE ->
            "PURCHASE"

        OfferingTransactionType_RENEW ->
            "RENEW"

        OfferingTransactionType_SYSTEM ->
            "SYSTEM"




{-| One of

* `OfferingType_RECURRING`

-}
type OfferingType
    = OfferingType_RECURRING



offeringTypeDecoder : JD.Decoder OfferingType
offeringTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RECURRING" ->
                        JD.succeed OfferingType_RECURRING


                    _ ->
                        JD.fail "bad thing"
            )




offeringTypeToString : OfferingType -> String
offeringTypeToString val =
    case val of
        OfferingType_RECURRING ->
            "RECURRING"




{-| <p>Represents a specific warning or failure.</p>
-}
type alias Problem =
    { run : Maybe ProblemDetail
    , job : Maybe ProblemDetail
    , suite : Maybe ProblemDetail
    , test : Maybe ProblemDetail
    , device : Maybe Device
    , result : Maybe ExecutionResult
    , message : Maybe String
    }



problemDecoder : JD.Decoder Problem
problemDecoder =
    JD.succeed Problem
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["run", "Run"]
            problemDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["job", "Job"]
            problemDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["suite", "Suite"]
            problemDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["test", "Test"]
            problemDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["device", "Device"]
            deviceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["result", "Result"]
            executionResultDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




problemToString : Problem -> String -- List (String, String)
problemToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "run" "" -- val.run
        
    --     |> Dict.insert
    --         "job" "" -- val.job
        
    --     |> Dict.insert
    --         "suite" "" -- val.suite
        
    --     |> Dict.insert
    --         "test" "" -- val.test
        
    --     |> Dict.insert
    --         "device" "" -- val.device
        
    --     |> Dict.insert
    --         "result" "" -- val.result
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>Information about a problem detail.</p>
-}
type alias ProblemDetail =
    { arn : Maybe String
    , name : Maybe String
    }



problemDetailDecoder : JD.Decoder ProblemDetail
problemDetailDecoder =
    JD.succeed ProblemDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        




problemDetailToString : ProblemDetail -> String -- List (String, String)
problemDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Represents an operating-system neutral workspace for running and managing tests.</p>
-}
type alias Project =
    { arn : Maybe String
    , name : Maybe String
    , defaultJobTimeoutMinutes : Maybe Int
    , created : Maybe Posix
    }



projectDecoder : JD.Decoder Project
projectDecoder =
    JD.succeed Project
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["defaultJobTimeoutMinutes", "DefaultJobTimeoutMinutes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["created", "Created"]
            JDX.datetime
        )
        




projectToString : Project -> String -- List (String, String)
projectToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "defaultJobTimeoutMinutes" "" -- val.defaultJobTimeoutMinutes
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from purchaseOfferi
-}
type alias PurchaseOfferingResult =
    { offeringTransaction : Maybe OfferingTransaction
    }



purchaseOfferingResultDecoder : JD.Decoder PurchaseOfferingResult
purchaseOfferingResultDecoder =
    JD.succeed PurchaseOfferingResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["offeringTransaction", "OfferingTransaction"]
            offeringTransactionDecoder
        )
        




purchaseOfferingResultToString : PurchaseOfferingResult -> String -- List (String, String)
purchaseOfferingResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "offeringTransaction" "" -- val.offeringTransaction
        
    --     |> Dict.toList
    ""



{-| <p>Represents the set of radios and their states on a device. Examples of radios include Wi-Fi, GPS, Bluetooth, and NFC.</p>
-}
type alias Radios =
    { wifi : Maybe Bool
    , bluetooth : Maybe Bool
    , nfc : Maybe Bool
    , gps : Maybe Bool
    }



radiosDecoder : JD.Decoder Radios
radiosDecoder =
    JD.succeed Radios
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["wifi", "Wifi"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bluetooth", "Bluetooth"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nfc", "Nfc"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["gps", "Gps"]
            JD.bool
        )
        




radiosToString : Radios -> String -- List (String, String)
radiosToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "wifi" "" -- val.wifi
        
    --     |> Dict.insert
    --         "bluetooth" "" -- val.bluetooth
        
    --     |> Dict.insert
    --         "nfc" "" -- val.nfc
        
    --     |> Dict.insert
    --         "gps" "" -- val.gps
        
    --     |> Dict.toList
    ""



{-| <p>Specifies whether charges for devices will be recurring.</p>
-}
type alias RecurringCharge =
    { cost : Maybe MonetaryAmount
    , frequency : Maybe RecurringChargeFrequency
    }



recurringChargeDecoder : JD.Decoder RecurringCharge
recurringChargeDecoder =
    JD.succeed RecurringCharge
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cost", "Cost"]
            monetaryAmountDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["frequency", "Frequency"]
            recurringChargeFrequencyDecoder
        )
        




recurringChargeToString : RecurringCharge -> String -- List (String, String)
recurringChargeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "cost" "" -- val.cost
        
    --     |> Dict.insert
    --         "frequency" "" -- val.frequency
        
    --     |> Dict.toList
    ""



{-| One of

* `RecurringChargeFrequency_MONTHLY`

-}
type RecurringChargeFrequency
    = RecurringChargeFrequency_MONTHLY



recurringChargeFrequencyDecoder : JD.Decoder RecurringChargeFrequency
recurringChargeFrequencyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "MONTHLY" ->
                        JD.succeed RecurringChargeFrequency_MONTHLY


                    _ ->
                        JD.fail "bad thing"
            )




recurringChargeFrequencyToString : RecurringChargeFrequency -> String
recurringChargeFrequencyToString val =
    case val of
        RecurringChargeFrequency_MONTHLY ->
            "MONTHLY"




{-| <p>Represents information about the remote access session.</p>
-}
type alias RemoteAccessSession =
    { arn : Maybe String
    , name : Maybe String
    , created : Maybe Posix
    , status : Maybe ExecutionStatus
    , result : Maybe ExecutionResult
    , message : Maybe String
    , started : Maybe Posix
    , stopped : Maybe Posix
    , device : Maybe Device
    , instanceArn : Maybe String
    , remoteDebugEnabled : Maybe Bool
    , remoteRecordEnabled : Maybe Bool
    , remoteRecordAppArn : Maybe String
    , hostAddress : Maybe String
    , clientId : Maybe String
    , billingMethod : Maybe BillingMethod
    , deviceMinutes : Maybe DeviceMinutes
    , endpoint : Maybe String
    , deviceUdid : Maybe String
    , interactionMode : Maybe InteractionMode
    , skipAppResign : Maybe Bool
    }



remoteAccessSessionDecoder : JD.Decoder RemoteAccessSession
remoteAccessSessionDecoder =
    JD.succeed RemoteAccessSession
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["created", "Created"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            executionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["result", "Result"]
            executionResultDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["started", "Started"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stopped", "Stopped"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["device", "Device"]
            deviceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceArn", "InstanceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["remoteDebugEnabled", "RemoteDebugEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["remoteRecordEnabled", "RemoteRecordEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["remoteRecordAppArn", "RemoteRecordAppArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hostAddress", "HostAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["clientId", "ClientId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["billingMethod", "BillingMethod"]
            billingMethodDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deviceMinutes", "DeviceMinutes"]
            deviceMinutesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["endpoint", "Endpoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deviceUdid", "DeviceUdid"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["interactionMode", "InteractionMode"]
            interactionModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["skipAppResign", "SkipAppResign"]
            JD.bool
        )
        




remoteAccessSessionToString : RemoteAccessSession -> String -- List (String, String)
remoteAccessSessionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "result" "" -- val.result
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "started" "" -- val.started
        
    --     |> Dict.insert
    --         "stopped" "" -- val.stopped
        
    --     |> Dict.insert
    --         "device" "" -- val.device
        
    --     |> Dict.insert
    --         "instanceArn" "" -- val.instanceArn
        
    --     |> Dict.insert
    --         "remoteDebugEnabled" "" -- val.remoteDebugEnabled
        
    --     |> Dict.insert
    --         "remoteRecordEnabled" "" -- val.remoteRecordEnabled
        
    --     |> Dict.insert
    --         "remoteRecordAppArn" "" -- val.remoteRecordAppArn
        
    --     |> Dict.insert
    --         "hostAddress" "" -- val.hostAddress
        
    --     |> Dict.insert
    --         "clientId" "" -- val.clientId
        
    --     |> Dict.insert
    --         "billingMethod" "" -- val.billingMethod
        
    --     |> Dict.insert
    --         "deviceMinutes" "" -- val.deviceMinutes
        
    --     |> Dict.insert
    --         "endpoint" "" -- val.endpoint
        
    --     |> Dict.insert
    --         "deviceUdid" "" -- val.deviceUdid
        
    --     |> Dict.insert
    --         "interactionMode" "" -- val.interactionMode
        
    --     |> Dict.insert
    --         "skipAppResign" "" -- val.skipAppResign
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from renewOfferi
-}
type alias RenewOfferingResult =
    { offeringTransaction : Maybe OfferingTransaction
    }



renewOfferingResultDecoder : JD.Decoder RenewOfferingResult
renewOfferingResultDecoder =
    JD.succeed RenewOfferingResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["offeringTransaction", "OfferingTransaction"]
            offeringTransactionDecoder
        )
        




renewOfferingResultToString : RenewOfferingResult -> String -- List (String, String)
renewOfferingResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "offeringTransaction" "" -- val.offeringTransaction
        
    --     |> Dict.toList
    ""



{-| <p>Represents the screen resolution of a device in height and width, expressed in pixels.</p>
-}
type alias Resolution =
    { width : Maybe Int
    , height : Maybe Int
    }



resolutionDecoder : JD.Decoder Resolution
resolutionDecoder =
    JD.succeed Resolution
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["width", "Width"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["height", "Height"]
            JD.int
        )
        




resolutionToString : Resolution -> String -- List (String, String)
resolutionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "width" "" -- val.width
        
    --     |> Dict.insert
    --         "height" "" -- val.height
        
    --     |> Dict.toList
    ""



{-| <p>Represents a condition for a device pool.</p>
-}
type alias Rule =
    { attribute : Maybe DeviceAttribute
    , operator : Maybe RuleOperator
    , value : Maybe String
    }



ruleDecoder : JD.Decoder Rule
ruleDecoder =
    JD.succeed Rule
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attribute", "Attribute"]
            deviceAttributeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operator", "Operator"]
            ruleOperatorDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["value", "Value"]
            JD.string
        )
        




ruleToString : Rule -> String -- List (String, String)
ruleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attribute" "" -- val.attribute
        
    --     |> Dict.insert
    --         "operator" "" -- val.operator
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| One of

* `RuleOperator_EQUALS`
* `RuleOperator_LESS_THAN`
* `RuleOperator_LESS_THAN_OR_EQUALS`
* `RuleOperator_GREATER_THAN`
* `RuleOperator_GREATER_THAN_OR_EQUALS`
* `RuleOperator_IN`
* `RuleOperator_NOT_IN`
* `RuleOperator_CONTAINS`

-}
type RuleOperator
    = RuleOperator_EQUALS
    | RuleOperator_LESS_THAN
    | RuleOperator_LESS_THAN_OR_EQUALS
    | RuleOperator_GREATER_THAN
    | RuleOperator_GREATER_THAN_OR_EQUALS
    | RuleOperator_IN
    | RuleOperator_NOT_IN
    | RuleOperator_CONTAINS



ruleOperatorDecoder : JD.Decoder RuleOperator
ruleOperatorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EQUALS" ->
                        JD.succeed RuleOperator_EQUALS

                    "LESS_THAN" ->
                        JD.succeed RuleOperator_LESS_THAN

                    "LESS_THAN_OR_EQUALS" ->
                        JD.succeed RuleOperator_LESS_THAN_OR_EQUALS

                    "GREATER_THAN" ->
                        JD.succeed RuleOperator_GREATER_THAN

                    "GREATER_THAN_OR_EQUALS" ->
                        JD.succeed RuleOperator_GREATER_THAN_OR_EQUALS

                    "IN" ->
                        JD.succeed RuleOperator_IN

                    "NOT_IN" ->
                        JD.succeed RuleOperator_NOT_IN

                    "CONTAINS" ->
                        JD.succeed RuleOperator_CONTAINS


                    _ ->
                        JD.fail "bad thing"
            )




ruleOperatorToString : RuleOperator -> String
ruleOperatorToString val =
    case val of
        RuleOperator_EQUALS ->
            "EQUALS"

        RuleOperator_LESS_THAN ->
            "LESS_THAN"

        RuleOperator_LESS_THAN_OR_EQUALS ->
            "LESS_THAN_OR_EQUALS"

        RuleOperator_GREATER_THAN ->
            "GREATER_THAN"

        RuleOperator_GREATER_THAN_OR_EQUALS ->
            "GREATER_THAN_OR_EQUALS"

        RuleOperator_IN ->
            "IN"

        RuleOperator_NOT_IN ->
            "NOT_IN"

        RuleOperator_CONTAINS ->
            "CONTAINS"




{-| <p>Represents a test run on a set of devices with a given app package, test parameters, etc.</p>
-}
type alias Run =
    { arn : Maybe String
    , name : Maybe String
    , type_ : Maybe TestType
    , platform : Maybe DevicePlatform
    , created : Maybe Posix
    , status : Maybe ExecutionStatus
    , result : Maybe ExecutionResult
    , started : Maybe Posix
    , stopped : Maybe Posix
    , counters : Maybe Counters
    , message : Maybe String
    , totalJobs : Maybe Int
    , completedJobs : Maybe Int
    , billingMethod : Maybe BillingMethod
    , deviceMinutes : Maybe DeviceMinutes
    , networkProfile : Maybe NetworkProfile
    , parsingResultUrl : Maybe String
    , resultCode : Maybe ExecutionResultCode
    , seed : Maybe Int
    , appUpload : Maybe String
    , eventCount : Maybe Int
    , jobTimeoutMinutes : Maybe Int
    , devicePoolArn : Maybe String
    , locale : Maybe String
    , radios : Maybe Radios
    , location : Maybe Location
    , customerArtifactPaths : Maybe CustomerArtifactPaths
    , webUrl : Maybe String
    , skipAppResign : Maybe Bool
    , testSpecArn : Maybe String
    , deviceSelectionResult : Maybe DeviceSelectionResult
    }



runDecoder : JD.Decoder Run
runDecoder =
    JD.succeed Run
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            testTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["platform", "Platform"]
            devicePlatformDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["created", "Created"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            executionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["result", "Result"]
            executionResultDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["started", "Started"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stopped", "Stopped"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["counters", "Counters"]
            countersDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["totalJobs", "TotalJobs"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["completedJobs", "CompletedJobs"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["billingMethod", "BillingMethod"]
            billingMethodDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deviceMinutes", "DeviceMinutes"]
            deviceMinutesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["networkProfile", "NetworkProfile"]
            networkProfileDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["parsingResultUrl", "ParsingResultUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resultCode", "ResultCode"]
            executionResultCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["seed", "Seed"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["appUpload", "AppUpload"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventCount", "EventCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["jobTimeoutMinutes", "JobTimeoutMinutes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["devicePoolArn", "DevicePoolArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["locale", "Locale"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["radios", "Radios"]
            radiosDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            locationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["customerArtifactPaths", "CustomerArtifactPaths"]
            customerArtifactPathsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["webUrl", "WebUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["skipAppResign", "SkipAppResign"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["testSpecArn", "TestSpecArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deviceSelectionResult", "DeviceSelectionResult"]
            deviceSelectionResultDecoder
        )
        




runToString : Run -> String -- List (String, String)
runToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "platform" "" -- val.platform
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "result" "" -- val.result
        
    --     |> Dict.insert
    --         "started" "" -- val.started
        
    --     |> Dict.insert
    --         "stopped" "" -- val.stopped
        
    --     |> Dict.insert
    --         "counters" "" -- val.counters
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "totalJobs" "" -- val.totalJobs
        
    --     |> Dict.insert
    --         "completedJobs" "" -- val.completedJobs
        
    --     |> Dict.insert
    --         "billingMethod" "" -- val.billingMethod
        
    --     |> Dict.insert
    --         "deviceMinutes" "" -- val.deviceMinutes
        
    --     |> Dict.insert
    --         "networkProfile" "" -- val.networkProfile
        
    --     |> Dict.insert
    --         "parsingResultUrl" "" -- val.parsingResultUrl
        
    --     |> Dict.insert
    --         "resultCode" "" -- val.resultCode
        
    --     |> Dict.insert
    --         "seed" "" -- val.seed
        
    --     |> Dict.insert
    --         "appUpload" "" -- val.appUpload
        
    --     |> Dict.insert
    --         "eventCount" "" -- val.eventCount
        
    --     |> Dict.insert
    --         "jobTimeoutMinutes" "" -- val.jobTimeoutMinutes
        
    --     |> Dict.insert
    --         "devicePoolArn" "" -- val.devicePoolArn
        
    --     |> Dict.insert
    --         "locale" "" -- val.locale
        
    --     |> Dict.insert
    --         "radios" "" -- val.radios
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "customerArtifactPaths" "" -- val.customerArtifactPaths
        
    --     |> Dict.insert
    --         "webUrl" "" -- val.webUrl
        
    --     |> Dict.insert
    --         "skipAppResign" "" -- val.skipAppResign
        
    --     |> Dict.insert
    --         "testSpecArn" "" -- val.testSpecArn
        
    --     |> Dict.insert
    --         "deviceSelectionResult" "" -- val.deviceSelectionResult
        
    --     |> Dict.toList
    ""



{-| <p>Represents a sample of performance data.</p>
-}
type alias Sample =
    { arn : Maybe String
    , type_ : Maybe SampleType
    , url : Maybe String
    }



sampleDecoder : JD.Decoder Sample
sampleDecoder =
    JD.succeed Sample
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            sampleTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["url", "Url"]
            JD.string
        )
        




sampleToString : Sample -> String -- List (String, String)
sampleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "url" "" -- val.url
        
    --     |> Dict.toList
    ""



{-| One of

* `SampleType_CPU`
* `SampleType_MEMORY`
* `SampleType_THREADS`
* `SampleType_RX_RATE`
* `SampleType_TX_RATE`
* `SampleType_RX`
* `SampleType_TX`
* `SampleType_NATIVE_FRAMES`
* `SampleType_NATIVE_FPS`
* `SampleType_NATIVE_MIN_DRAWTIME`
* `SampleType_NATIVE_AVG_DRAWTIME`
* `SampleType_NATIVE_MAX_DRAWTIME`
* `SampleType_OPENGL_FRAMES`
* `SampleType_OPENGL_FPS`
* `SampleType_OPENGL_MIN_DRAWTIME`
* `SampleType_OPENGL_AVG_DRAWTIME`
* `SampleType_OPENGL_MAX_DRAWTIME`

-}
type SampleType
    = SampleType_CPU
    | SampleType_MEMORY
    | SampleType_THREADS
    | SampleType_RX_RATE
    | SampleType_TX_RATE
    | SampleType_RX
    | SampleType_TX
    | SampleType_NATIVE_FRAMES
    | SampleType_NATIVE_FPS
    | SampleType_NATIVE_MIN_DRAWTIME
    | SampleType_NATIVE_AVG_DRAWTIME
    | SampleType_NATIVE_MAX_DRAWTIME
    | SampleType_OPENGL_FRAMES
    | SampleType_OPENGL_FPS
    | SampleType_OPENGL_MIN_DRAWTIME
    | SampleType_OPENGL_AVG_DRAWTIME
    | SampleType_OPENGL_MAX_DRAWTIME



sampleTypeDecoder : JD.Decoder SampleType
sampleTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CPU" ->
                        JD.succeed SampleType_CPU

                    "MEMORY" ->
                        JD.succeed SampleType_MEMORY

                    "THREADS" ->
                        JD.succeed SampleType_THREADS

                    "RX_RATE" ->
                        JD.succeed SampleType_RX_RATE

                    "TX_RATE" ->
                        JD.succeed SampleType_TX_RATE

                    "RX" ->
                        JD.succeed SampleType_RX

                    "TX" ->
                        JD.succeed SampleType_TX

                    "NATIVE_FRAMES" ->
                        JD.succeed SampleType_NATIVE_FRAMES

                    "NATIVE_FPS" ->
                        JD.succeed SampleType_NATIVE_FPS

                    "NATIVE_MIN_DRAWTIME" ->
                        JD.succeed SampleType_NATIVE_MIN_DRAWTIME

                    "NATIVE_AVG_DRAWTIME" ->
                        JD.succeed SampleType_NATIVE_AVG_DRAWTIME

                    "NATIVE_MAX_DRAWTIME" ->
                        JD.succeed SampleType_NATIVE_MAX_DRAWTIME

                    "OPENGL_FRAMES" ->
                        JD.succeed SampleType_OPENGL_FRAMES

                    "OPENGL_FPS" ->
                        JD.succeed SampleType_OPENGL_FPS

                    "OPENGL_MIN_DRAWTIME" ->
                        JD.succeed SampleType_OPENGL_MIN_DRAWTIME

                    "OPENGL_AVG_DRAWTIME" ->
                        JD.succeed SampleType_OPENGL_AVG_DRAWTIME

                    "OPENGL_MAX_DRAWTIME" ->
                        JD.succeed SampleType_OPENGL_MAX_DRAWTIME


                    _ ->
                        JD.fail "bad thing"
            )




sampleTypeToString : SampleType -> String
sampleTypeToString val =
    case val of
        SampleType_CPU ->
            "CPU"

        SampleType_MEMORY ->
            "MEMORY"

        SampleType_THREADS ->
            "THREADS"

        SampleType_RX_RATE ->
            "RX_RATE"

        SampleType_TX_RATE ->
            "TX_RATE"

        SampleType_RX ->
            "RX"

        SampleType_TX ->
            "TX"

        SampleType_NATIVE_FRAMES ->
            "NATIVE_FRAMES"

        SampleType_NATIVE_FPS ->
            "NATIVE_FPS"

        SampleType_NATIVE_MIN_DRAWTIME ->
            "NATIVE_MIN_DRAWTIME"

        SampleType_NATIVE_AVG_DRAWTIME ->
            "NATIVE_AVG_DRAWTIME"

        SampleType_NATIVE_MAX_DRAWTIME ->
            "NATIVE_MAX_DRAWTIME"

        SampleType_OPENGL_FRAMES ->
            "OPENGL_FRAMES"

        SampleType_OPENGL_FPS ->
            "OPENGL_FPS"

        SampleType_OPENGL_MIN_DRAWTIME ->
            "OPENGL_MIN_DRAWTIME"

        SampleType_OPENGL_AVG_DRAWTIME ->
            "OPENGL_AVG_DRAWTIME"

        SampleType_OPENGL_MAX_DRAWTIME ->
            "OPENGL_MAX_DRAWTIME"




{-| <p>Represents the settings for a run. Includes things like location, radio states, auxiliary apps, and network profiles.</p>
-}
type alias ScheduleRunConfiguration =
    { extraDataPackageArn : Maybe String
    , networkProfileArn : Maybe String
    , locale : Maybe String
    , location : Maybe Location
    , vpceConfigurationArns : Maybe (List String)
    , customerArtifactPaths : Maybe CustomerArtifactPaths
    , radios : Maybe Radios
    , auxiliaryApps : Maybe (List String)
    , billingMethod : Maybe BillingMethod
    }



scheduleRunConfigurationDecoder : JD.Decoder ScheduleRunConfiguration
scheduleRunConfigurationDecoder =
    JD.succeed ScheduleRunConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["extraDataPackageArn", "ExtraDataPackageArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["networkProfileArn", "NetworkProfileArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["locale", "Locale"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            locationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vpceConfigurationArns", "VpceConfigurationArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["customerArtifactPaths", "CustomerArtifactPaths"]
            customerArtifactPathsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["radios", "Radios"]
            radiosDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["auxiliaryApps", "AuxiliaryApps"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["billingMethod", "BillingMethod"]
            billingMethodDecoder
        )
        




scheduleRunConfigurationToString : ScheduleRunConfiguration -> String -- List (String, String)
scheduleRunConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "extraDataPackageArn" "" -- val.extraDataPackageArn
        
    --     |> Dict.insert
    --         "networkProfileArn" "" -- val.networkProfileArn
        
    --     |> Dict.insert
    --         "locale" "" -- val.locale
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "vpceConfigurationArns" "" -- val.vpceConfigurationArns
        
    --     |> Dict.insert
    --         "customerArtifactPaths" "" -- val.customerArtifactPaths
        
    --     |> Dict.insert
    --         "radios" "" -- val.radios
        
    --     |> Dict.insert
    --         "auxiliaryApps" "" -- val.auxiliaryApps
        
    --     |> Dict.insert
    --         "billingMethod" "" -- val.billingMethod
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from scheduleR
-}
type alias ScheduleRunResult =
    { run : Maybe Run
    }



scheduleRunResultDecoder : JD.Decoder ScheduleRunResult
scheduleRunResultDecoder =
    JD.succeed ScheduleRunResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["run", "Run"]
            runDecoder
        )
        




scheduleRunResultToString : ScheduleRunResult -> String -- List (String, String)
scheduleRunResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "run" "" -- val.run
        
    --     |> Dict.toList
    ""



{-| <p>Represents test settings. This data structure is passed in as the "test" parameter to ScheduleRun. For an example of the JSON request syntax, see <a>ScheduleRun</a>.</p>
-}
type alias ScheduleRunTest =
    { type_ : TestType
    , testPackageArn : Maybe String
    , testSpecArn : Maybe String
    , filter : Maybe String
    , parameters : Maybe (Dict String String)
    }



scheduleRunTestDecoder : JD.Decoder ScheduleRunTest
scheduleRunTestDecoder =
    JD.succeed ScheduleRunTest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["type", "Type"]
            testTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["testPackageArn", "TestPackageArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["testSpecArn", "TestSpecArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["filter", "Filter"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["parameters", "Parameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        




scheduleRunTestToString : ScheduleRunTest -> String -- List (String, String)
scheduleRunTestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "testPackageArn" "" -- val.testPackageArn
        
    --     |> Dict.insert
    --         "testSpecArn" "" -- val.testSpecArn
        
    --     |> Dict.insert
    --         "filter" "" -- val.filter
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopJ
-}
type alias StopJobResult =
    { job : Maybe Job
    }



stopJobResultDecoder : JD.Decoder StopJobResult
stopJobResultDecoder =
    JD.succeed StopJobResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["job", "Job"]
            jobDecoder
        )
        




stopJobResultToString : StopJobResult -> String -- List (String, String)
stopJobResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "job" "" -- val.job
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopRemoteAccessSessi
-}
type alias StopRemoteAccessSessionResult =
    { remoteAccessSession : Maybe RemoteAccessSession
    }



stopRemoteAccessSessionResultDecoder : JD.Decoder StopRemoteAccessSessionResult
stopRemoteAccessSessionResultDecoder =
    JD.succeed StopRemoteAccessSessionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["remoteAccessSession", "RemoteAccessSession"]
            remoteAccessSessionDecoder
        )
        




stopRemoteAccessSessionResultToString : StopRemoteAccessSessionResult -> String -- List (String, String)
stopRemoteAccessSessionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "remoteAccessSession" "" -- val.remoteAccessSession
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopR
-}
type alias StopRunResult =
    { run : Maybe Run
    }



stopRunResultDecoder : JD.Decoder StopRunResult
stopRunResultDecoder =
    JD.succeed StopRunResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["run", "Run"]
            runDecoder
        )
        




stopRunResultToString : StopRunResult -> String -- List (String, String)
stopRunResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "run" "" -- val.run
        
    --     |> Dict.toList
    ""



{-| <p>Represents a collection of one or more tests.</p>
-}
type alias Suite =
    { arn : Maybe String
    , name : Maybe String
    , type_ : Maybe TestType
    , created : Maybe Posix
    , status : Maybe ExecutionStatus
    , result : Maybe ExecutionResult
    , started : Maybe Posix
    , stopped : Maybe Posix
    , counters : Maybe Counters
    , message : Maybe String
    , deviceMinutes : Maybe DeviceMinutes
    }



suiteDecoder : JD.Decoder Suite
suiteDecoder =
    JD.succeed Suite
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            testTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["created", "Created"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            executionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["result", "Result"]
            executionResultDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["started", "Started"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stopped", "Stopped"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["counters", "Counters"]
            countersDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deviceMinutes", "DeviceMinutes"]
            deviceMinutesDecoder
        )
        




suiteToString : Suite -> String -- List (String, String)
suiteToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "result" "" -- val.result
        
    --     |> Dict.insert
    --         "started" "" -- val.started
        
    --     |> Dict.insert
    --         "stopped" "" -- val.stopped
        
    --     |> Dict.insert
    --         "counters" "" -- val.counters
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "deviceMinutes" "" -- val.deviceMinutes
        
    --     |> Dict.toList
    ""



{-| <p>The metadata that you apply to a resource to help you categorize and organize it. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters. </p>
-}
type alias Tag =
    { key : String
    , value : String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
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



{-| <p>Represents a condition that is evaluated.</p>
-}
type alias Test =
    { arn : Maybe String
    , name : Maybe String
    , type_ : Maybe TestType
    , created : Maybe Posix
    , status : Maybe ExecutionStatus
    , result : Maybe ExecutionResult
    , started : Maybe Posix
    , stopped : Maybe Posix
    , counters : Maybe Counters
    , message : Maybe String
    , deviceMinutes : Maybe DeviceMinutes
    }



testDecoder : JD.Decoder Test
testDecoder =
    JD.succeed Test
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            testTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["created", "Created"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            executionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["result", "Result"]
            executionResultDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["started", "Started"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stopped", "Stopped"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["counters", "Counters"]
            countersDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deviceMinutes", "DeviceMinutes"]
            deviceMinutesDecoder
        )
        




testToString : Test -> String -- List (String, String)
testToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "result" "" -- val.result
        
    --     |> Dict.insert
    --         "started" "" -- val.started
        
    --     |> Dict.insert
    --         "stopped" "" -- val.stopped
        
    --     |> Dict.insert
    --         "counters" "" -- val.counters
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "deviceMinutes" "" -- val.deviceMinutes
        
    --     |> Dict.toList
    ""



{-| One of

* `TestType_BUILTIN_FUZZ`
* `TestType_BUILTIN_EXPLORER`
* `TestType_WEB_PERFORMANCE_PROFILE`
* `TestType_APPIUM_JAVA_JUNIT`
* `TestType_APPIUM_JAVA_TESTNG`
* `TestType_APPIUM_PYTHON`
* `TestType_APPIUM_NODE`
* `TestType_APPIUM_RUBY`
* `TestType_APPIUM_WEB_JAVA_JUNIT`
* `TestType_APPIUM_WEB_JAVA_TESTNG`
* `TestType_APPIUM_WEB_PYTHON`
* `TestType_APPIUM_WEB_NODE`
* `TestType_APPIUM_WEB_RUBY`
* `TestType_CALABASH`
* `TestType_INSTRUMENTATION`
* `TestType_UIAUTOMATION`
* `TestType_UIAUTOMATOR`
* `TestType_XCTEST`
* `TestType_XCTEST_UI`
* `TestType_REMOTE_ACCESS_RECORD`
* `TestType_REMOTE_ACCESS_REPLAY`

-}
type TestType
    = TestType_BUILTIN_FUZZ
    | TestType_BUILTIN_EXPLORER
    | TestType_WEB_PERFORMANCE_PROFILE
    | TestType_APPIUM_JAVA_JUNIT
    | TestType_APPIUM_JAVA_TESTNG
    | TestType_APPIUM_PYTHON
    | TestType_APPIUM_NODE
    | TestType_APPIUM_RUBY
    | TestType_APPIUM_WEB_JAVA_JUNIT
    | TestType_APPIUM_WEB_JAVA_TESTNG
    | TestType_APPIUM_WEB_PYTHON
    | TestType_APPIUM_WEB_NODE
    | TestType_APPIUM_WEB_RUBY
    | TestType_CALABASH
    | TestType_INSTRUMENTATION
    | TestType_UIAUTOMATION
    | TestType_UIAUTOMATOR
    | TestType_XCTEST
    | TestType_XCTEST_UI
    | TestType_REMOTE_ACCESS_RECORD
    | TestType_REMOTE_ACCESS_REPLAY



testTypeDecoder : JD.Decoder TestType
testTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BUILTIN_FUZZ" ->
                        JD.succeed TestType_BUILTIN_FUZZ

                    "BUILTIN_EXPLORER" ->
                        JD.succeed TestType_BUILTIN_EXPLORER

                    "WEB_PERFORMANCE_PROFILE" ->
                        JD.succeed TestType_WEB_PERFORMANCE_PROFILE

                    "APPIUM_JAVA_JUNIT" ->
                        JD.succeed TestType_APPIUM_JAVA_JUNIT

                    "APPIUM_JAVA_TESTNG" ->
                        JD.succeed TestType_APPIUM_JAVA_TESTNG

                    "APPIUM_PYTHON" ->
                        JD.succeed TestType_APPIUM_PYTHON

                    "APPIUM_NODE" ->
                        JD.succeed TestType_APPIUM_NODE

                    "APPIUM_RUBY" ->
                        JD.succeed TestType_APPIUM_RUBY

                    "APPIUM_WEB_JAVA_JUNIT" ->
                        JD.succeed TestType_APPIUM_WEB_JAVA_JUNIT

                    "APPIUM_WEB_JAVA_TESTNG" ->
                        JD.succeed TestType_APPIUM_WEB_JAVA_TESTNG

                    "APPIUM_WEB_PYTHON" ->
                        JD.succeed TestType_APPIUM_WEB_PYTHON

                    "APPIUM_WEB_NODE" ->
                        JD.succeed TestType_APPIUM_WEB_NODE

                    "APPIUM_WEB_RUBY" ->
                        JD.succeed TestType_APPIUM_WEB_RUBY

                    "CALABASH" ->
                        JD.succeed TestType_CALABASH

                    "INSTRUMENTATION" ->
                        JD.succeed TestType_INSTRUMENTATION

                    "UIAUTOMATION" ->
                        JD.succeed TestType_UIAUTOMATION

                    "UIAUTOMATOR" ->
                        JD.succeed TestType_UIAUTOMATOR

                    "XCTEST" ->
                        JD.succeed TestType_XCTEST

                    "XCTEST_UI" ->
                        JD.succeed TestType_XCTEST_UI

                    "REMOTE_ACCESS_RECORD" ->
                        JD.succeed TestType_REMOTE_ACCESS_RECORD

                    "REMOTE_ACCESS_REPLAY" ->
                        JD.succeed TestType_REMOTE_ACCESS_REPLAY


                    _ ->
                        JD.fail "bad thing"
            )




testTypeToString : TestType -> String
testTypeToString val =
    case val of
        TestType_BUILTIN_FUZZ ->
            "BUILTIN_FUZZ"

        TestType_BUILTIN_EXPLORER ->
            "BUILTIN_EXPLORER"

        TestType_WEB_PERFORMANCE_PROFILE ->
            "WEB_PERFORMANCE_PROFILE"

        TestType_APPIUM_JAVA_JUNIT ->
            "APPIUM_JAVA_JUNIT"

        TestType_APPIUM_JAVA_TESTNG ->
            "APPIUM_JAVA_TESTNG"

        TestType_APPIUM_PYTHON ->
            "APPIUM_PYTHON"

        TestType_APPIUM_NODE ->
            "APPIUM_NODE"

        TestType_APPIUM_RUBY ->
            "APPIUM_RUBY"

        TestType_APPIUM_WEB_JAVA_JUNIT ->
            "APPIUM_WEB_JAVA_JUNIT"

        TestType_APPIUM_WEB_JAVA_TESTNG ->
            "APPIUM_WEB_JAVA_TESTNG"

        TestType_APPIUM_WEB_PYTHON ->
            "APPIUM_WEB_PYTHON"

        TestType_APPIUM_WEB_NODE ->
            "APPIUM_WEB_NODE"

        TestType_APPIUM_WEB_RUBY ->
            "APPIUM_WEB_RUBY"

        TestType_CALABASH ->
            "CALABASH"

        TestType_INSTRUMENTATION ->
            "INSTRUMENTATION"

        TestType_UIAUTOMATION ->
            "UIAUTOMATION"

        TestType_UIAUTOMATOR ->
            "UIAUTOMATOR"

        TestType_XCTEST ->
            "XCTEST"

        TestType_XCTEST_UI ->
            "XCTEST_UI"

        TestType_REMOTE_ACCESS_RECORD ->
            "REMOTE_ACCESS_RECORD"

        TestType_REMOTE_ACCESS_REPLAY ->
            "REMOTE_ACCESS_REPLAY"




{-| <p>Represents information about free trial device minutes for an AWS account.</p>
-}
type alias TrialMinutes =
    { total : Maybe Float
    , remaining : Maybe Float
    }



trialMinutesDecoder : JD.Decoder TrialMinutes
trialMinutesDecoder =
    JD.succeed TrialMinutes
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["total", "Total"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["remaining", "Remaining"]
            JD.float
        )
        




trialMinutesToString : TrialMinutes -> String -- List (String, String)
trialMinutesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "total" "" -- val.total
        
    --     |> Dict.insert
    --         "remaining" "" -- val.remaining
        
    --     |> Dict.toList
    ""



{-| <p>A collection of one or more problems, grouped by their result.</p>
-}
type alias UniqueProblem =
    { message : Maybe String
    , problems : Maybe (List Problem)
    }



uniqueProblemDecoder : JD.Decoder UniqueProblem
uniqueProblemDecoder =
    JD.succeed UniqueProblem
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["problems", "Problems"]
            (JD.list problemDecoder)
        )
        




uniqueProblemToString : UniqueProblem -> String -- List (String, String)
uniqueProblemToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "problems" "" -- val.problems
        
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



{-| Type of HTTP response from updateDeviceInstan
-}
type alias UpdateDeviceInstanceResult =
    { deviceInstance : Maybe DeviceInstance
    }



updateDeviceInstanceResultDecoder : JD.Decoder UpdateDeviceInstanceResult
updateDeviceInstanceResultDecoder =
    JD.succeed UpdateDeviceInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deviceInstance", "DeviceInstance"]
            deviceInstanceDecoder
        )
        




updateDeviceInstanceResultToString : UpdateDeviceInstanceResult -> String -- List (String, String)
updateDeviceInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deviceInstance" "" -- val.deviceInstance
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateDevicePo
-}
type alias UpdateDevicePoolResult =
    { devicePool : Maybe DevicePool
    }



updateDevicePoolResultDecoder : JD.Decoder UpdateDevicePoolResult
updateDevicePoolResultDecoder =
    JD.succeed UpdateDevicePoolResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["devicePool", "DevicePool"]
            devicePoolDecoder
        )
        




updateDevicePoolResultToString : UpdateDevicePoolResult -> String -- List (String, String)
updateDevicePoolResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "devicePool" "" -- val.devicePool
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateInstanceProfi
-}
type alias UpdateInstanceProfileResult =
    { instanceProfile : Maybe InstanceProfile
    }



updateInstanceProfileResultDecoder : JD.Decoder UpdateInstanceProfileResult
updateInstanceProfileResultDecoder =
    JD.succeed UpdateInstanceProfileResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceProfile", "InstanceProfile"]
            instanceProfileDecoder
        )
        




updateInstanceProfileResultToString : UpdateInstanceProfileResult -> String -- List (String, String)
updateInstanceProfileResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceProfile" "" -- val.instanceProfile
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateNetworkProfi
-}
type alias UpdateNetworkProfileResult =
    { networkProfile : Maybe NetworkProfile
    }



updateNetworkProfileResultDecoder : JD.Decoder UpdateNetworkProfileResult
updateNetworkProfileResultDecoder =
    JD.succeed UpdateNetworkProfileResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["networkProfile", "NetworkProfile"]
            networkProfileDecoder
        )
        




updateNetworkProfileResultToString : UpdateNetworkProfileResult -> String -- List (String, String)
updateNetworkProfileResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "networkProfile" "" -- val.networkProfile
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateProje
-}
type alias UpdateProjectResult =
    { project : Maybe Project
    }



updateProjectResultDecoder : JD.Decoder UpdateProjectResult
updateProjectResultDecoder =
    JD.succeed UpdateProjectResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["project", "Project"]
            projectDecoder
        )
        




updateProjectResultToString : UpdateProjectResult -> String -- List (String, String)
updateProjectResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "project" "" -- val.project
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateUplo
-}
type alias UpdateUploadResult =
    { upload : Maybe Upload
    }



updateUploadResultDecoder : JD.Decoder UpdateUploadResult
updateUploadResultDecoder =
    JD.succeed UpdateUploadResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["upload", "Upload"]
            uploadDecoder
        )
        




updateUploadResultToString : UpdateUploadResult -> String -- List (String, String)
updateUploadResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "upload" "" -- val.upload
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateVPCEConfigurati
-}
type alias UpdateVPCEConfigurationResult =
    { vpceConfiguration : Maybe VPCEConfiguration
    }



updateVPCEConfigurationResultDecoder : JD.Decoder UpdateVPCEConfigurationResult
updateVPCEConfigurationResultDecoder =
    JD.succeed UpdateVPCEConfigurationResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vpceConfiguration", "VpceConfiguration"]
            vPCEConfigurationDecoder
        )
        




updateVPCEConfigurationResultToString : UpdateVPCEConfigurationResult -> String -- List (String, String)
updateVPCEConfigurationResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "vpceConfiguration" "" -- val.vpceConfiguration
        
    --     |> Dict.toList
    ""



{-| <p>An app or a set of one or more tests to upload or that have been uploaded.</p>
-}
type alias Upload =
    { arn : Maybe String
    , name : Maybe String
    , created : Maybe Posix
    , type_ : Maybe UploadType
    , status : Maybe UploadStatus
    , url : Maybe String
    , metadata : Maybe String
    , contentType : Maybe String
    , message : Maybe String
    , category : Maybe UploadCategory
    }



uploadDecoder : JD.Decoder Upload
uploadDecoder =
    JD.succeed Upload
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["created", "Created"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            uploadTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            uploadStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["url", "Url"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["metadata", "Metadata"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["contentType", "ContentType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["category", "Category"]
            uploadCategoryDecoder
        )
        




uploadToString : Upload -> String -- List (String, String)
uploadToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "url" "" -- val.url
        
    --     |> Dict.insert
    --         "metadata" "" -- val.metadata
        
    --     |> Dict.insert
    --         "contentType" "" -- val.contentType
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "category" "" -- val.category
        
    --     |> Dict.toList
    ""



{-| One of

* `UploadCategory_CURATED`
* `UploadCategory_PRIVATE`

-}
type UploadCategory
    = UploadCategory_CURATED
    | UploadCategory_PRIVATE



uploadCategoryDecoder : JD.Decoder UploadCategory
uploadCategoryDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CURATED" ->
                        JD.succeed UploadCategory_CURATED

                    "PRIVATE" ->
                        JD.succeed UploadCategory_PRIVATE


                    _ ->
                        JD.fail "bad thing"
            )




uploadCategoryToString : UploadCategory -> String
uploadCategoryToString val =
    case val of
        UploadCategory_CURATED ->
            "CURATED"

        UploadCategory_PRIVATE ->
            "PRIVATE"




{-| One of

* `UploadStatus_INITIALIZED`
* `UploadStatus_PROCESSING`
* `UploadStatus_SUCCEEDED`
* `UploadStatus_FAILED`

-}
type UploadStatus
    = UploadStatus_INITIALIZED
    | UploadStatus_PROCESSING
    | UploadStatus_SUCCEEDED
    | UploadStatus_FAILED



uploadStatusDecoder : JD.Decoder UploadStatus
uploadStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INITIALIZED" ->
                        JD.succeed UploadStatus_INITIALIZED

                    "PROCESSING" ->
                        JD.succeed UploadStatus_PROCESSING

                    "SUCCEEDED" ->
                        JD.succeed UploadStatus_SUCCEEDED

                    "FAILED" ->
                        JD.succeed UploadStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




uploadStatusToString : UploadStatus -> String
uploadStatusToString val =
    case val of
        UploadStatus_INITIALIZED ->
            "INITIALIZED"

        UploadStatus_PROCESSING ->
            "PROCESSING"

        UploadStatus_SUCCEEDED ->
            "SUCCEEDED"

        UploadStatus_FAILED ->
            "FAILED"




{-| One of

* `UploadType_ANDROID_APP`
* `UploadType_IOS_APP`
* `UploadType_WEB_APP`
* `UploadType_EXTERNAL_DATA`
* `UploadType_APPIUM_JAVA_JUNIT_TEST_PACKAGE`
* `UploadType_APPIUM_JAVA_TESTNG_TEST_PACKAGE`
* `UploadType_APPIUM_PYTHON_TEST_PACKAGE`
* `UploadType_APPIUM_NODE_TEST_PACKAGE`
* `UploadType_APPIUM_RUBY_TEST_PACKAGE`
* `UploadType_APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE`
* `UploadType_APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE`
* `UploadType_APPIUM_WEB_PYTHON_TEST_PACKAGE`
* `UploadType_APPIUM_WEB_NODE_TEST_PACKAGE`
* `UploadType_APPIUM_WEB_RUBY_TEST_PACKAGE`
* `UploadType_CALABASH_TEST_PACKAGE`
* `UploadType_INSTRUMENTATION_TEST_PACKAGE`
* `UploadType_UIAUTOMATION_TEST_PACKAGE`
* `UploadType_UIAUTOMATOR_TEST_PACKAGE`
* `UploadType_XCTEST_TEST_PACKAGE`
* `UploadType_XCTEST_UI_TEST_PACKAGE`
* `UploadType_APPIUM_JAVA_JUNIT_TEST_SPEC`
* `UploadType_APPIUM_JAVA_TESTNG_TEST_SPEC`
* `UploadType_APPIUM_PYTHON_TEST_SPEC`
* `UploadType_APPIUM_NODE_TEST_SPEC`
* `UploadType_APPIUM_RUBY_TEST_SPEC`
* `UploadType_APPIUM_WEB_JAVA_JUNIT_TEST_SPEC`
* `UploadType_APPIUM_WEB_JAVA_TESTNG_TEST_SPEC`
* `UploadType_APPIUM_WEB_PYTHON_TEST_SPEC`
* `UploadType_APPIUM_WEB_NODE_TEST_SPEC`
* `UploadType_APPIUM_WEB_RUBY_TEST_SPEC`
* `UploadType_INSTRUMENTATION_TEST_SPEC`
* `UploadType_XCTEST_UI_TEST_SPEC`

-}
type UploadType
    = UploadType_ANDROID_APP
    | UploadType_IOS_APP
    | UploadType_WEB_APP
    | UploadType_EXTERNAL_DATA
    | UploadType_APPIUM_JAVA_JUNIT_TEST_PACKAGE
    | UploadType_APPIUM_JAVA_TESTNG_TEST_PACKAGE
    | UploadType_APPIUM_PYTHON_TEST_PACKAGE
    | UploadType_APPIUM_NODE_TEST_PACKAGE
    | UploadType_APPIUM_RUBY_TEST_PACKAGE
    | UploadType_APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE
    | UploadType_APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE
    | UploadType_APPIUM_WEB_PYTHON_TEST_PACKAGE
    | UploadType_APPIUM_WEB_NODE_TEST_PACKAGE
    | UploadType_APPIUM_WEB_RUBY_TEST_PACKAGE
    | UploadType_CALABASH_TEST_PACKAGE
    | UploadType_INSTRUMENTATION_TEST_PACKAGE
    | UploadType_UIAUTOMATION_TEST_PACKAGE
    | UploadType_UIAUTOMATOR_TEST_PACKAGE
    | UploadType_XCTEST_TEST_PACKAGE
    | UploadType_XCTEST_UI_TEST_PACKAGE
    | UploadType_APPIUM_JAVA_JUNIT_TEST_SPEC
    | UploadType_APPIUM_JAVA_TESTNG_TEST_SPEC
    | UploadType_APPIUM_PYTHON_TEST_SPEC
    | UploadType_APPIUM_NODE_TEST_SPEC
    | UploadType_APPIUM_RUBY_TEST_SPEC
    | UploadType_APPIUM_WEB_JAVA_JUNIT_TEST_SPEC
    | UploadType_APPIUM_WEB_JAVA_TESTNG_TEST_SPEC
    | UploadType_APPIUM_WEB_PYTHON_TEST_SPEC
    | UploadType_APPIUM_WEB_NODE_TEST_SPEC
    | UploadType_APPIUM_WEB_RUBY_TEST_SPEC
    | UploadType_INSTRUMENTATION_TEST_SPEC
    | UploadType_XCTEST_UI_TEST_SPEC



uploadTypeDecoder : JD.Decoder UploadType
uploadTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ANDROID_APP" ->
                        JD.succeed UploadType_ANDROID_APP

                    "IOS_APP" ->
                        JD.succeed UploadType_IOS_APP

                    "WEB_APP" ->
                        JD.succeed UploadType_WEB_APP

                    "EXTERNAL_DATA" ->
                        JD.succeed UploadType_EXTERNAL_DATA

                    "APPIUM_JAVA_JUNIT_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_JAVA_JUNIT_TEST_PACKAGE

                    "APPIUM_JAVA_TESTNG_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_JAVA_TESTNG_TEST_PACKAGE

                    "APPIUM_PYTHON_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_PYTHON_TEST_PACKAGE

                    "APPIUM_NODE_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_NODE_TEST_PACKAGE

                    "APPIUM_RUBY_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_RUBY_TEST_PACKAGE

                    "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE

                    "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE

                    "APPIUM_WEB_PYTHON_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_WEB_PYTHON_TEST_PACKAGE

                    "APPIUM_WEB_NODE_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_WEB_NODE_TEST_PACKAGE

                    "APPIUM_WEB_RUBY_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_WEB_RUBY_TEST_PACKAGE

                    "CALABASH_TEST_PACKAGE" ->
                        JD.succeed UploadType_CALABASH_TEST_PACKAGE

                    "INSTRUMENTATION_TEST_PACKAGE" ->
                        JD.succeed UploadType_INSTRUMENTATION_TEST_PACKAGE

                    "UIAUTOMATION_TEST_PACKAGE" ->
                        JD.succeed UploadType_UIAUTOMATION_TEST_PACKAGE

                    "UIAUTOMATOR_TEST_PACKAGE" ->
                        JD.succeed UploadType_UIAUTOMATOR_TEST_PACKAGE

                    "XCTEST_TEST_PACKAGE" ->
                        JD.succeed UploadType_XCTEST_TEST_PACKAGE

                    "XCTEST_UI_TEST_PACKAGE" ->
                        JD.succeed UploadType_XCTEST_UI_TEST_PACKAGE

                    "APPIUM_JAVA_JUNIT_TEST_SPEC" ->
                        JD.succeed UploadType_APPIUM_JAVA_JUNIT_TEST_SPEC

                    "APPIUM_JAVA_TESTNG_TEST_SPEC" ->
                        JD.succeed UploadType_APPIUM_JAVA_TESTNG_TEST_SPEC

                    "APPIUM_PYTHON_TEST_SPEC" ->
                        JD.succeed UploadType_APPIUM_PYTHON_TEST_SPEC

                    "APPIUM_NODE_TEST_SPEC" ->
                        JD.succeed UploadType_APPIUM_NODE_TEST_SPEC

                    "APPIUM_RUBY_TEST_SPEC" ->
                        JD.succeed UploadType_APPIUM_RUBY_TEST_SPEC

                    "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC" ->
                        JD.succeed UploadType_APPIUM_WEB_JAVA_JUNIT_TEST_SPEC

                    "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC" ->
                        JD.succeed UploadType_APPIUM_WEB_JAVA_TESTNG_TEST_SPEC

                    "APPIUM_WEB_PYTHON_TEST_SPEC" ->
                        JD.succeed UploadType_APPIUM_WEB_PYTHON_TEST_SPEC

                    "APPIUM_WEB_NODE_TEST_SPEC" ->
                        JD.succeed UploadType_APPIUM_WEB_NODE_TEST_SPEC

                    "APPIUM_WEB_RUBY_TEST_SPEC" ->
                        JD.succeed UploadType_APPIUM_WEB_RUBY_TEST_SPEC

                    "INSTRUMENTATION_TEST_SPEC" ->
                        JD.succeed UploadType_INSTRUMENTATION_TEST_SPEC

                    "XCTEST_UI_TEST_SPEC" ->
                        JD.succeed UploadType_XCTEST_UI_TEST_SPEC


                    _ ->
                        JD.fail "bad thing"
            )




uploadTypeToString : UploadType -> String
uploadTypeToString val =
    case val of
        UploadType_ANDROID_APP ->
            "ANDROID_APP"

        UploadType_IOS_APP ->
            "IOS_APP"

        UploadType_WEB_APP ->
            "WEB_APP"

        UploadType_EXTERNAL_DATA ->
            "EXTERNAL_DATA"

        UploadType_APPIUM_JAVA_JUNIT_TEST_PACKAGE ->
            "APPIUM_JAVA_JUNIT_TEST_PACKAGE"

        UploadType_APPIUM_JAVA_TESTNG_TEST_PACKAGE ->
            "APPIUM_JAVA_TESTNG_TEST_PACKAGE"

        UploadType_APPIUM_PYTHON_TEST_PACKAGE ->
            "APPIUM_PYTHON_TEST_PACKAGE"

        UploadType_APPIUM_NODE_TEST_PACKAGE ->
            "APPIUM_NODE_TEST_PACKAGE"

        UploadType_APPIUM_RUBY_TEST_PACKAGE ->
            "APPIUM_RUBY_TEST_PACKAGE"

        UploadType_APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE ->
            "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE"

        UploadType_APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE ->
            "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE"

        UploadType_APPIUM_WEB_PYTHON_TEST_PACKAGE ->
            "APPIUM_WEB_PYTHON_TEST_PACKAGE"

        UploadType_APPIUM_WEB_NODE_TEST_PACKAGE ->
            "APPIUM_WEB_NODE_TEST_PACKAGE"

        UploadType_APPIUM_WEB_RUBY_TEST_PACKAGE ->
            "APPIUM_WEB_RUBY_TEST_PACKAGE"

        UploadType_CALABASH_TEST_PACKAGE ->
            "CALABASH_TEST_PACKAGE"

        UploadType_INSTRUMENTATION_TEST_PACKAGE ->
            "INSTRUMENTATION_TEST_PACKAGE"

        UploadType_UIAUTOMATION_TEST_PACKAGE ->
            "UIAUTOMATION_TEST_PACKAGE"

        UploadType_UIAUTOMATOR_TEST_PACKAGE ->
            "UIAUTOMATOR_TEST_PACKAGE"

        UploadType_XCTEST_TEST_PACKAGE ->
            "XCTEST_TEST_PACKAGE"

        UploadType_XCTEST_UI_TEST_PACKAGE ->
            "XCTEST_UI_TEST_PACKAGE"

        UploadType_APPIUM_JAVA_JUNIT_TEST_SPEC ->
            "APPIUM_JAVA_JUNIT_TEST_SPEC"

        UploadType_APPIUM_JAVA_TESTNG_TEST_SPEC ->
            "APPIUM_JAVA_TESTNG_TEST_SPEC"

        UploadType_APPIUM_PYTHON_TEST_SPEC ->
            "APPIUM_PYTHON_TEST_SPEC"

        UploadType_APPIUM_NODE_TEST_SPEC ->
            "APPIUM_NODE_TEST_SPEC"

        UploadType_APPIUM_RUBY_TEST_SPEC ->
            "APPIUM_RUBY_TEST_SPEC"

        UploadType_APPIUM_WEB_JAVA_JUNIT_TEST_SPEC ->
            "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC"

        UploadType_APPIUM_WEB_JAVA_TESTNG_TEST_SPEC ->
            "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC"

        UploadType_APPIUM_WEB_PYTHON_TEST_SPEC ->
            "APPIUM_WEB_PYTHON_TEST_SPEC"

        UploadType_APPIUM_WEB_NODE_TEST_SPEC ->
            "APPIUM_WEB_NODE_TEST_SPEC"

        UploadType_APPIUM_WEB_RUBY_TEST_SPEC ->
            "APPIUM_WEB_RUBY_TEST_SPEC"

        UploadType_INSTRUMENTATION_TEST_SPEC ->
            "INSTRUMENTATION_TEST_SPEC"

        UploadType_XCTEST_UI_TEST_SPEC ->
            "XCTEST_UI_TEST_SPEC"




{-| <p>Represents an Amazon Virtual Private Cloud (VPC) endpoint configuration.</p>
-}
type alias VPCEConfiguration =
    { arn : Maybe String
    , vpceConfigurationName : Maybe String
    , vpceServiceName : Maybe String
    , serviceDnsName : Maybe String
    , vpceConfigurationDescription : Maybe String
    }



vPCEConfigurationDecoder : JD.Decoder VPCEConfiguration
vPCEConfigurationDecoder =
    JD.succeed VPCEConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vpceConfigurationName", "VpceConfigurationName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vpceServiceName", "VpceServiceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serviceDnsName", "ServiceDnsName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vpceConfigurationDescription", "VpceConfigurationDescription"]
            JD.string
        )
        




vPCEConfigurationToString : VPCEConfiguration -> String -- List (String, String)
vPCEConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "vpceConfigurationName" "" -- val.vpceConfigurationName
        
    --     |> Dict.insert
    --         "vpceServiceName" "" -- val.vpceServiceName
        
    --     |> Dict.insert
    --         "serviceDnsName" "" -- val.serviceDnsName
        
    --     |> Dict.insert
    --         "vpceConfigurationDescription" "" -- val.vpceConfigurationDescription
        
    --     |> Dict.toList
    ""






{-| <p>Represents a request to the create device pool operation.</p>
-}
type alias CreateDevicePoolRequest =
    { projectArn : String
    , name : String
    , description : Maybe String
    , rules : (List Rule)
    , maxDevices : Maybe Int
    }


{-| undefined
-}
type alias CreateInstanceProfileRequest =
    { name : String
    , description : Maybe String
    , packageCleanup : Maybe Bool
    , excludeAppPackagesFromCleanup : Maybe (List String)
    , rebootAfterUse : Maybe Bool
    }


{-| undefined
-}
type alias CreateNetworkProfileRequest =
    { projectArn : String
    , name : String
    , description : Maybe String
    , type_ : Maybe NetworkProfileType
    , uplinkBandwidthBits : Maybe Int
    , downlinkBandwidthBits : Maybe Int
    , uplinkDelayMs : Maybe Int
    , downlinkDelayMs : Maybe Int
    , uplinkJitterMs : Maybe Int
    , downlinkJitterMs : Maybe Int
    , uplinkLossPercent : Maybe Int
    , downlinkLossPercent : Maybe Int
    }


{-| <p>Represents a request to the create project operation.</p>
-}
type alias CreateProjectRequest =
    { name : String
    , defaultJobTimeoutMinutes : Maybe Int
    }


{-| <p>Creates and submits a request to start a remote access session.</p>
-}
type alias CreateRemoteAccessSessionRequest =
    { projectArn : String
    , deviceArn : String
    , instanceArn : Maybe String
    , sshPublicKey : Maybe String
    , remoteDebugEnabled : Maybe Bool
    , remoteRecordEnabled : Maybe Bool
    , remoteRecordAppArn : Maybe String
    , name : Maybe String
    , clientId : Maybe String
    , configuration : Maybe CreateRemoteAccessSessionConfiguration
    , interactionMode : Maybe InteractionMode
    , skipAppResign : Maybe Bool
    }


{-| <p>Represents a request to the create upload operation.</p>
-}
type alias CreateUploadRequest =
    { projectArn : String
    , name : String
    , type_ : UploadType
    , contentType : Maybe String
    }


{-| undefined
-}
type alias CreateVPCEConfigurationRequest =
    { vpceConfigurationName : String
    , vpceServiceName : String
    , serviceDnsName : String
    , vpceConfigurationDescription : Maybe String
    }


{-| <p>Represents a request to the delete device pool operation.</p>
-}
type alias DeleteDevicePoolRequest =
    { arn : String
    }


{-| undefined
-}
type alias DeleteInstanceProfileRequest =
    { arn : String
    }


{-| undefined
-}
type alias DeleteNetworkProfileRequest =
    { arn : String
    }


{-| <p>Represents a request to the delete project operation.</p>
-}
type alias DeleteProjectRequest =
    { arn : String
    }


{-| <p>Represents the request to delete the specified remote access session.</p>
-}
type alias DeleteRemoteAccessSessionRequest =
    { arn : String
    }


{-| <p>Represents a request to the delete run operation.</p>
-}
type alias DeleteRunRequest =
    { arn : String
    }


{-| <p>Represents a request to the delete upload operation.</p>
-}
type alias DeleteUploadRequest =
    { arn : String
    }


{-| undefined
-}
type alias DeleteVPCEConfigurationRequest =
    { arn : String
    }


{-| <p>Represents the request sent to retrieve the account settings.</p>
-}
type alias GetAccountSettingsRequest =
    { 
    }


{-| undefined
-}
type alias GetDeviceInstanceRequest =
    { arn : String
    }


{-| <p>Represents a request to the get device pool compatibility operation.</p>
-}
type alias GetDevicePoolCompatibilityRequest =
    { devicePoolArn : String
    , appArn : Maybe String
    , testType : Maybe TestType
    , test : Maybe ScheduleRunTest
    , configuration : Maybe ScheduleRunConfiguration
    }


{-| <p>Represents a request to the get device pool operation.</p>
-}
type alias GetDevicePoolRequest =
    { arn : String
    }


{-| <p>Represents a request to the get device request.</p>
-}
type alias GetDeviceRequest =
    { arn : String
    }


{-| undefined
-}
type alias GetInstanceProfileRequest =
    { arn : String
    }


{-| <p>Represents a request to the get job operation.</p>
-}
type alias GetJobRequest =
    { arn : String
    }


{-| undefined
-}
type alias GetNetworkProfileRequest =
    { arn : String
    }


{-| <p>Represents the request to retrieve the offering status for the specified customer or account.</p>
-}
type alias GetOfferingStatusRequest =
    { nextToken : Maybe String
    }


{-| <p>Represents a request to the get project operation.</p>
-}
type alias GetProjectRequest =
    { arn : String
    }


{-| <p>Represents the request to get information about the specified remote access session.</p>
-}
type alias GetRemoteAccessSessionRequest =
    { arn : String
    }


{-| <p>Represents a request to the get run operation.</p>
-}
type alias GetRunRequest =
    { arn : String
    }


{-| <p>Represents a request to the get suite operation.</p>
-}
type alias GetSuiteRequest =
    { arn : String
    }


{-| <p>Represents a request to the get test operation.</p>
-}
type alias GetTestRequest =
    { arn : String
    }


{-| <p>Represents a request to the get upload operation.</p>
-}
type alias GetUploadRequest =
    { arn : String
    }


{-| undefined
-}
type alias GetVPCEConfigurationRequest =
    { arn : String
    }


{-| <p>Represents the request to install an Android application (in .apk format) or an iOS application (in .ipa format) as part of a remote access session.</p>
-}
type alias InstallToRemoteAccessSessionRequest =
    { remoteAccessSessionArn : String
    , appArn : String
    }


{-| <p>Represents a request to the list artifacts operation.</p>
-}
type alias ListArtifactsRequest =
    { arn : String
    , type_ : ArtifactCategory
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListDeviceInstancesRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the result of a list device pools request.</p>
-}
type alias ListDevicePoolsRequest =
    { arn : String
    , type_ : Maybe DevicePoolType
    , nextToken : Maybe String
    }


{-| <p>Represents the result of a list devices request.</p>
-}
type alias ListDevicesRequest =
    { arn : Maybe String
    , nextToken : Maybe String
    , filters : Maybe (List DeviceFilter)
    }


{-| undefined
-}
type alias ListInstanceProfilesRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents a request to the list jobs operation.</p>
-}
type alias ListJobsRequest =
    { arn : String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListNetworkProfilesRequest =
    { arn : String
    , type_ : Maybe NetworkProfileType
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListOfferingPromotionsRequest =
    { nextToken : Maybe String
    }


{-| <p>Represents the request to list the offering transaction history.</p>
-}
type alias ListOfferingTransactionsRequest =
    { nextToken : Maybe String
    }


{-| <p>Represents the request to list all offerings.</p>
-}
type alias ListOfferingsRequest =
    { nextToken : Maybe String
    }


{-| <p>Represents a request to the list projects operation.</p>
-}
type alias ListProjectsRequest =
    { arn : Maybe String
    , nextToken : Maybe String
    }


{-| <p>Represents the request to return information about the remote access session.</p>
-}
type alias ListRemoteAccessSessionsRequest =
    { arn : String
    , nextToken : Maybe String
    }


{-| <p>Represents a request to the list runs operation.</p>
-}
type alias ListRunsRequest =
    { arn : String
    , nextToken : Maybe String
    }


{-| <p>Represents a request to the list samples operation.</p>
-}
type alias ListSamplesRequest =
    { arn : String
    , nextToken : Maybe String
    }


{-| <p>Represents a request to the list suites operation.</p>
-}
type alias ListSuitesRequest =
    { arn : String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListTagsForResourceRequest =
    { resourceARN : String
    }


{-| <p>Represents a request to the list tests operation.</p>
-}
type alias ListTestsRequest =
    { arn : String
    , nextToken : Maybe String
    }


{-| <p>Represents a request to the list unique problems operation.</p>
-}
type alias ListUniqueProblemsRequest =
    { arn : String
    , nextToken : Maybe String
    }


{-| <p>Represents a request to the list uploads operation.</p>
-}
type alias ListUploadsRequest =
    { arn : String
    , type_ : Maybe UploadType
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListVPCEConfigurationsRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents a request for a purchase offering.</p>
-}
type alias PurchaseOfferingRequest =
    { offeringId : Maybe String
    , quantity : Maybe Int
    , offeringPromotionId : Maybe String
    }


{-| <p>A request representing an offering renewal.</p>
-}
type alias RenewOfferingRequest =
    { offeringId : Maybe String
    , quantity : Maybe Int
    }


{-| <p>Represents a request to the schedule run operation.</p>
-}
type alias ScheduleRunRequest =
    { projectArn : String
    , appArn : Maybe String
    , devicePoolArn : Maybe String
    , deviceSelectionConfiguration : Maybe DeviceSelectionConfiguration
    , name : Maybe String
    , test : ScheduleRunTest
    , configuration : Maybe ScheduleRunConfiguration
    , executionConfiguration : Maybe ExecutionConfiguration
    }


{-| undefined
-}
type alias StopJobRequest =
    { arn : String
    }


{-| <p>Represents the request to stop the remote access session.</p>
-}
type alias StopRemoteAccessSessionRequest =
    { arn : String
    }


{-| <p>Represents the request to stop a specific run.</p>
-}
type alias StopRunRequest =
    { arn : String
    }


{-| undefined
-}
type alias TagResourceRequest =
    { resourceARN : String
    , tags : (List Tag)
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { resourceARN : String
    , tagKeys : (List String)
    }


{-| undefined
-}
type alias UpdateDeviceInstanceRequest =
    { arn : String
    , profileArn : Maybe String
    , labels : Maybe (List String)
    }


{-| <p>Represents a request to the update device pool operation.</p>
-}
type alias UpdateDevicePoolRequest =
    { arn : String
    , name : Maybe String
    , description : Maybe String
    , rules : Maybe (List Rule)
    , maxDevices : Maybe Int
    , clearMaxDevices : Maybe Bool
    }


{-| undefined
-}
type alias UpdateInstanceProfileRequest =
    { arn : String
    , name : Maybe String
    , description : Maybe String
    , packageCleanup : Maybe Bool
    , excludeAppPackagesFromCleanup : Maybe (List String)
    , rebootAfterUse : Maybe Bool
    }


{-| undefined
-}
type alias UpdateNetworkProfileRequest =
    { arn : String
    , name : Maybe String
    , description : Maybe String
    , type_ : Maybe NetworkProfileType
    , uplinkBandwidthBits : Maybe Int
    , downlinkBandwidthBits : Maybe Int
    , uplinkDelayMs : Maybe Int
    , downlinkDelayMs : Maybe Int
    , uplinkJitterMs : Maybe Int
    , downlinkJitterMs : Maybe Int
    , uplinkLossPercent : Maybe Int
    , downlinkLossPercent : Maybe Int
    }


{-| <p>Represents a request to the update project operation.</p>
-}
type alias UpdateProjectRequest =
    { arn : String
    , name : Maybe String
    , defaultJobTimeoutMinutes : Maybe Int
    }


{-| undefined
-}
type alias UpdateUploadRequest =
    { arn : String
    , name : Maybe String
    , contentType : Maybe String
    , editContent : Maybe Bool
    }


{-| undefined
-}
type alias UpdateVPCEConfigurationRequest =
    { arn : String
    , vpceConfigurationName : Maybe String
    , vpceServiceName : Maybe String
    , serviceDnsName : Maybe String
    , vpceConfigurationDescription : Maybe String
    }






accountSettingsEncoder : AccountSettings -> JE.Value
accountSettingsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("awsAccountNumber", data.awsAccountNumber)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.int))
            ("unmeteredDevices", data.unmeteredDevices)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.int))
            ("unmeteredRemoteAccessDevices", data.unmeteredRemoteAccessDevices)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxJobTimeoutMinutes", data.maxJobTimeoutMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (trialMinutesEncoder)
            ("trialMinutes", data.trialMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.int))
            ("maxSlots", data.maxSlots)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("defaultJobTimeoutMinutes", data.defaultJobTimeoutMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("skipAppResign", data.skipAppResign)
        
        
        |> JE.object






artifactEncoder : Artifact -> JE.Value
artifactEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (artifactTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("extension", data.extension)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("url", data.url)
        
        
        |> JE.object


















cPUEncoder : CPU -> JE.Value
cPUEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("frequency", data.frequency)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("architecture", data.architecture)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("clock", data.clock)
        
        
        |> JE.object






countersEncoder : Counters -> JE.Value
countersEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("total", data.total)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("passed", data.passed)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("failed", data.failed)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("warned", data.warned)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("errored", data.errored)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("stopped", data.stopped)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("skipped", data.skipped)
        
        
        |> JE.object






createDevicePoolRequestEncoder : CreateDevicePoolRequest -> JE.Value
createDevicePoolRequestEncoder data =
    []
        
        
        |> (::) ("projectArn", data.projectArn |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> (::) ("rules", data.rules |> (JE.list (ruleEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxDevices", data.maxDevices)
        
        
        |> JE.object






createDevicePoolResultEncoder : CreateDevicePoolResult -> JE.Value
createDevicePoolResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (devicePoolEncoder)
            ("devicePool", data.devicePool)
        
        
        |> JE.object






createInstanceProfileRequestEncoder : CreateInstanceProfileRequest -> JE.Value
createInstanceProfileRequestEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("packageCleanup", data.packageCleanup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("excludeAppPackagesFromCleanup", data.excludeAppPackagesFromCleanup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("rebootAfterUse", data.rebootAfterUse)
        
        
        |> JE.object






createInstanceProfileResultEncoder : CreateInstanceProfileResult -> JE.Value
createInstanceProfileResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceProfileEncoder)
            ("instanceProfile", data.instanceProfile)
        
        
        |> JE.object






createNetworkProfileRequestEncoder : CreateNetworkProfileRequest -> JE.Value
createNetworkProfileRequestEncoder data =
    []
        
        
        |> (::) ("projectArn", data.projectArn |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (networkProfileTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("uplinkBandwidthBits", data.uplinkBandwidthBits)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("downlinkBandwidthBits", data.downlinkBandwidthBits)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("uplinkDelayMs", data.uplinkDelayMs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("downlinkDelayMs", data.downlinkDelayMs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("uplinkJitterMs", data.uplinkJitterMs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("downlinkJitterMs", data.downlinkJitterMs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("uplinkLossPercent", data.uplinkLossPercent)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("downlinkLossPercent", data.downlinkLossPercent)
        
        
        |> JE.object






createNetworkProfileResultEncoder : CreateNetworkProfileResult -> JE.Value
createNetworkProfileResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (networkProfileEncoder)
            ("networkProfile", data.networkProfile)
        
        
        |> JE.object






createProjectRequestEncoder : CreateProjectRequest -> JE.Value
createProjectRequestEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("defaultJobTimeoutMinutes", data.defaultJobTimeoutMinutes)
        
        
        |> JE.object






createProjectResultEncoder : CreateProjectResult -> JE.Value
createProjectResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (projectEncoder)
            ("project", data.project)
        
        
        |> JE.object






createRemoteAccessSessionConfigurationEncoder : CreateRemoteAccessSessionConfiguration -> JE.Value
createRemoteAccessSessionConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (billingMethodToString >> JE.string)
            ("billingMethod", data.billingMethod)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("vpceConfigurationArns", data.vpceConfigurationArns)
        
        
        |> JE.object






createRemoteAccessSessionRequestEncoder : CreateRemoteAccessSessionRequest -> JE.Value
createRemoteAccessSessionRequestEncoder data =
    []
        
        
        |> (::) ("projectArn", data.projectArn |> (JE.string))
        
        
        
        |> (::) ("deviceArn", data.deviceArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("instanceArn", data.instanceArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sshPublicKey", data.sshPublicKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("remoteDebugEnabled", data.remoteDebugEnabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("remoteRecordEnabled", data.remoteRecordEnabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("remoteRecordAppArn", data.remoteRecordAppArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientId", data.clientId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (createRemoteAccessSessionConfigurationEncoder)
            ("configuration", data.configuration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (interactionModeToString >> JE.string)
            ("interactionMode", data.interactionMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("skipAppResign", data.skipAppResign)
        
        
        |> JE.object






createRemoteAccessSessionResultEncoder : CreateRemoteAccessSessionResult -> JE.Value
createRemoteAccessSessionResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (remoteAccessSessionEncoder)
            ("remoteAccessSession", data.remoteAccessSession)
        
        
        |> JE.object






createUploadRequestEncoder : CreateUploadRequest -> JE.Value
createUploadRequestEncoder data =
    []
        
        
        |> (::) ("projectArn", data.projectArn |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("type", data.type_ |> (uploadTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("contentType", data.contentType)
        
        
        |> JE.object






createUploadResultEncoder : CreateUploadResult -> JE.Value
createUploadResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (uploadEncoder)
            ("upload", data.upload)
        
        
        |> JE.object






createVPCEConfigurationRequestEncoder : CreateVPCEConfigurationRequest -> JE.Value
createVPCEConfigurationRequestEncoder data =
    []
        
        
        |> (::) ("vpceConfigurationName", data.vpceConfigurationName |> (JE.string))
        
        
        
        |> (::) ("vpceServiceName", data.vpceServiceName |> (JE.string))
        
        
        
        |> (::) ("serviceDnsName", data.serviceDnsName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vpceConfigurationDescription", data.vpceConfigurationDescription)
        
        
        |> JE.object






createVPCEConfigurationResultEncoder : CreateVPCEConfigurationResult -> JE.Value
createVPCEConfigurationResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (vPCEConfigurationEncoder)
            ("vpceConfiguration", data.vpceConfiguration)
        
        
        |> JE.object










customerArtifactPathsEncoder : CustomerArtifactPaths -> JE.Value
customerArtifactPathsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("iosPaths", data.iosPaths)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("androidPaths", data.androidPaths)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("deviceHostPaths", data.deviceHostPaths)
        
        
        |> JE.object






deleteDevicePoolRequestEncoder : DeleteDevicePoolRequest -> JE.Value
deleteDevicePoolRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






deleteDevicePoolResultEncoder : DeleteDevicePoolResult -> JE.Value
deleteDevicePoolResultEncoder data =
    []
        
        |> JE.object






deleteInstanceProfileRequestEncoder : DeleteInstanceProfileRequest -> JE.Value
deleteInstanceProfileRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






deleteInstanceProfileResultEncoder : DeleteInstanceProfileResult -> JE.Value
deleteInstanceProfileResultEncoder data =
    []
        
        |> JE.object






deleteNetworkProfileRequestEncoder : DeleteNetworkProfileRequest -> JE.Value
deleteNetworkProfileRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






deleteNetworkProfileResultEncoder : DeleteNetworkProfileResult -> JE.Value
deleteNetworkProfileResultEncoder data =
    []
        
        |> JE.object






deleteProjectRequestEncoder : DeleteProjectRequest -> JE.Value
deleteProjectRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






deleteProjectResultEncoder : DeleteProjectResult -> JE.Value
deleteProjectResultEncoder data =
    []
        
        |> JE.object






deleteRemoteAccessSessionRequestEncoder : DeleteRemoteAccessSessionRequest -> JE.Value
deleteRemoteAccessSessionRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






deleteRemoteAccessSessionResultEncoder : DeleteRemoteAccessSessionResult -> JE.Value
deleteRemoteAccessSessionResultEncoder data =
    []
        
        |> JE.object






deleteRunRequestEncoder : DeleteRunRequest -> JE.Value
deleteRunRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






deleteRunResultEncoder : DeleteRunResult -> JE.Value
deleteRunResultEncoder data =
    []
        
        |> JE.object






deleteUploadRequestEncoder : DeleteUploadRequest -> JE.Value
deleteUploadRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






deleteUploadResultEncoder : DeleteUploadResult -> JE.Value
deleteUploadResultEncoder data =
    []
        
        |> JE.object






deleteVPCEConfigurationRequestEncoder : DeleteVPCEConfigurationRequest -> JE.Value
deleteVPCEConfigurationRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






deleteVPCEConfigurationResultEncoder : DeleteVPCEConfigurationResult -> JE.Value
deleteVPCEConfigurationResultEncoder data =
    []
        
        |> JE.object






deviceEncoder : Device -> JE.Value
deviceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("manufacturer", data.manufacturer)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("model", data.model)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("modelId", data.modelId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceFormFactorToString >> JE.string)
            ("formFactor", data.formFactor)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (devicePlatformToString >> JE.string)
            ("platform", data.platform)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("os", data.os)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cPUEncoder)
            ("cpu", data.cpu)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resolutionEncoder)
            ("resolution", data.resolution)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("heapSize", data.heapSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("memory", data.memory)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("image", data.image)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("carrier", data.carrier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("radio", data.radio)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("remoteAccessEnabled", data.remoteAccessEnabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("remoteDebugEnabled", data.remoteDebugEnabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fleetType", data.fleetType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fleetName", data.fleetName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (deviceInstanceEncoder))
            ("instances", data.instances)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceAvailabilityToString >> JE.string)
            ("availability", data.availability)
        
        
        |> JE.object














deviceFilterEncoder : DeviceFilter -> JE.Value
deviceFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceFilterAttributeToString >> JE.string)
            ("attribute", data.attribute)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (ruleOperatorToString >> JE.string)
            ("operator", data.operator)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("values", data.values)
        
        
        |> JE.object














deviceInstanceEncoder : DeviceInstance -> JE.Value
deviceInstanceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("deviceArn", data.deviceArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("labels", data.labels)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("udid", data.udid)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceProfileEncoder)
            ("instanceProfile", data.instanceProfile)
        
        
        |> JE.object






deviceMinutesEncoder : DeviceMinutes -> JE.Value
deviceMinutesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("total", data.total)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("metered", data.metered)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("unmetered", data.unmetered)
        
        
        |> JE.object










devicePoolEncoder : DevicePool -> JE.Value
devicePoolEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (devicePoolTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (ruleEncoder))
            ("rules", data.rules)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxDevices", data.maxDevices)
        
        
        |> JE.object






devicePoolCompatibilityResultEncoder : DevicePoolCompatibilityResult -> JE.Value
devicePoolCompatibilityResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceEncoder)
            ("device", data.device)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("compatible", data.compatible)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (incompatibilityMessageEncoder))
            ("incompatibilityMessages", data.incompatibilityMessages)
        
        
        |> JE.object










deviceSelectionConfigurationEncoder : DeviceSelectionConfiguration -> JE.Value
deviceSelectionConfigurationEncoder data =
    []
        
        
        |> (::) ("filters", data.filters |> (JE.list (deviceFilterEncoder)))
        
        
        
        |> (::) ("maxDevices", data.maxDevices |> (JE.int))
        
        
        |> JE.object






deviceSelectionResultEncoder : DeviceSelectionResult -> JE.Value
deviceSelectionResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (deviceFilterEncoder))
            ("filters", data.filters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("matchedDevicesCount", data.matchedDevicesCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxDevices", data.maxDevices)
        
        
        |> JE.object






executionConfigurationEncoder : ExecutionConfiguration -> JE.Value
executionConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("jobTimeoutMinutes", data.jobTimeoutMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("accountsCleanup", data.accountsCleanup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("appPackagesCleanup", data.appPackagesCleanup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("videoCapture", data.videoCapture)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("skipAppResign", data.skipAppResign)
        
        
        |> JE.object


















getAccountSettingsRequestEncoder : GetAccountSettingsRequest -> JE.Value
getAccountSettingsRequestEncoder data =
    []
        
        |> JE.object






getAccountSettingsResultEncoder : GetAccountSettingsResult -> JE.Value
getAccountSettingsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (accountSettingsEncoder)
            ("accountSettings", data.accountSettings)
        
        
        |> JE.object






getDeviceInstanceRequestEncoder : GetDeviceInstanceRequest -> JE.Value
getDeviceInstanceRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






getDeviceInstanceResultEncoder : GetDeviceInstanceResult -> JE.Value
getDeviceInstanceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceInstanceEncoder)
            ("deviceInstance", data.deviceInstance)
        
        
        |> JE.object






getDevicePoolCompatibilityRequestEncoder : GetDevicePoolCompatibilityRequest -> JE.Value
getDevicePoolCompatibilityRequestEncoder data =
    []
        
        
        |> (::) ("devicePoolArn", data.devicePoolArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appArn", data.appArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (testTypeToString >> JE.string)
            ("testType", data.testType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scheduleRunTestEncoder)
            ("test", data.test)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scheduleRunConfigurationEncoder)
            ("configuration", data.configuration)
        
        
        |> JE.object






getDevicePoolCompatibilityResultEncoder : GetDevicePoolCompatibilityResult -> JE.Value
getDevicePoolCompatibilityResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (devicePoolCompatibilityResultEncoder))
            ("compatibleDevices", data.compatibleDevices)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (devicePoolCompatibilityResultEncoder))
            ("incompatibleDevices", data.incompatibleDevices)
        
        
        |> JE.object






getDevicePoolRequestEncoder : GetDevicePoolRequest -> JE.Value
getDevicePoolRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






getDevicePoolResultEncoder : GetDevicePoolResult -> JE.Value
getDevicePoolResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (devicePoolEncoder)
            ("devicePool", data.devicePool)
        
        
        |> JE.object






getDeviceRequestEncoder : GetDeviceRequest -> JE.Value
getDeviceRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






getDeviceResultEncoder : GetDeviceResult -> JE.Value
getDeviceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceEncoder)
            ("device", data.device)
        
        
        |> JE.object






getInstanceProfileRequestEncoder : GetInstanceProfileRequest -> JE.Value
getInstanceProfileRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






getInstanceProfileResultEncoder : GetInstanceProfileResult -> JE.Value
getInstanceProfileResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceProfileEncoder)
            ("instanceProfile", data.instanceProfile)
        
        
        |> JE.object






getJobRequestEncoder : GetJobRequest -> JE.Value
getJobRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






getJobResultEncoder : GetJobResult -> JE.Value
getJobResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (jobEncoder)
            ("job", data.job)
        
        
        |> JE.object






getNetworkProfileRequestEncoder : GetNetworkProfileRequest -> JE.Value
getNetworkProfileRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






getNetworkProfileResultEncoder : GetNetworkProfileResult -> JE.Value
getNetworkProfileResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (networkProfileEncoder)
            ("networkProfile", data.networkProfile)
        
        
        |> JE.object






getOfferingStatusRequestEncoder : GetOfferingStatusRequest -> JE.Value
getOfferingStatusRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






getOfferingStatusResultEncoder : GetOfferingStatusResult -> JE.Value
getOfferingStatusResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (offeringStatusEncoder))
            ("current", data.current)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (offeringStatusEncoder))
            ("nextPeriod", data.nextPeriod)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






getProjectRequestEncoder : GetProjectRequest -> JE.Value
getProjectRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






getProjectResultEncoder : GetProjectResult -> JE.Value
getProjectResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (projectEncoder)
            ("project", data.project)
        
        
        |> JE.object






getRemoteAccessSessionRequestEncoder : GetRemoteAccessSessionRequest -> JE.Value
getRemoteAccessSessionRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






getRemoteAccessSessionResultEncoder : GetRemoteAccessSessionResult -> JE.Value
getRemoteAccessSessionResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (remoteAccessSessionEncoder)
            ("remoteAccessSession", data.remoteAccessSession)
        
        
        |> JE.object






getRunRequestEncoder : GetRunRequest -> JE.Value
getRunRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






getRunResultEncoder : GetRunResult -> JE.Value
getRunResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (runEncoder)
            ("run", data.run)
        
        
        |> JE.object






getSuiteRequestEncoder : GetSuiteRequest -> JE.Value
getSuiteRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






getSuiteResultEncoder : GetSuiteResult -> JE.Value
getSuiteResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (suiteEncoder)
            ("suite", data.suite)
        
        
        |> JE.object






getTestRequestEncoder : GetTestRequest -> JE.Value
getTestRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






getTestResultEncoder : GetTestResult -> JE.Value
getTestResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (testEncoder)
            ("test", data.test)
        
        
        |> JE.object






getUploadRequestEncoder : GetUploadRequest -> JE.Value
getUploadRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






getUploadResultEncoder : GetUploadResult -> JE.Value
getUploadResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (uploadEncoder)
            ("upload", data.upload)
        
        
        |> JE.object






getVPCEConfigurationRequestEncoder : GetVPCEConfigurationRequest -> JE.Value
getVPCEConfigurationRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






getVPCEConfigurationResultEncoder : GetVPCEConfigurationResult -> JE.Value
getVPCEConfigurationResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (vPCEConfigurationEncoder)
            ("vpceConfiguration", data.vpceConfiguration)
        
        
        |> JE.object






incompatibilityMessageEncoder : IncompatibilityMessage -> JE.Value
incompatibilityMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceAttributeToString >> JE.string)
            ("type", data.type_)
        
        
        |> JE.object






installToRemoteAccessSessionRequestEncoder : InstallToRemoteAccessSessionRequest -> JE.Value
installToRemoteAccessSessionRequestEncoder data =
    []
        
        
        |> (::) ("remoteAccessSessionArn", data.remoteAccessSessionArn |> (JE.string))
        
        
        
        |> (::) ("appArn", data.appArn |> (JE.string))
        
        
        |> JE.object






installToRemoteAccessSessionResultEncoder : InstallToRemoteAccessSessionResult -> JE.Value
installToRemoteAccessSessionResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (uploadEncoder)
            ("appUpload", data.appUpload)
        
        
        |> JE.object






instanceProfileEncoder : InstanceProfile -> JE.Value
instanceProfileEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("packageCleanup", data.packageCleanup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("excludeAppPackagesFromCleanup", data.excludeAppPackagesFromCleanup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("rebootAfterUse", data.rebootAfterUse)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        |> JE.object














jobEncoder : Job -> JE.Value
jobEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (testTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("created", data.created)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionResultToString >> JE.string)
            ("result", data.result)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("started", data.started)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("stopped", data.stopped)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (countersEncoder)
            ("counters", data.counters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceEncoder)
            ("device", data.device)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("instanceArn", data.instanceArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceMinutesEncoder)
            ("deviceMinutes", data.deviceMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("videoEndpoint", data.videoEndpoint)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("videoCapture", data.videoCapture)
        
        
        |> JE.object






listArtifactsRequestEncoder : ListArtifactsRequest -> JE.Value
listArtifactsRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> (::) ("type", data.type_ |> (artifactCategoryToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listArtifactsResultEncoder : ListArtifactsResult -> JE.Value
listArtifactsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (artifactEncoder))
            ("artifacts", data.artifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listDeviceInstancesRequestEncoder : ListDeviceInstancesRequest -> JE.Value
listDeviceInstancesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listDeviceInstancesResultEncoder : ListDeviceInstancesResult -> JE.Value
listDeviceInstancesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (deviceInstanceEncoder))
            ("deviceInstances", data.deviceInstances)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listDevicePoolsRequestEncoder : ListDevicePoolsRequest -> JE.Value
listDevicePoolsRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (devicePoolTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listDevicePoolsResultEncoder : ListDevicePoolsResult -> JE.Value
listDevicePoolsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (devicePoolEncoder))
            ("devicePools", data.devicePools)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listDevicesRequestEncoder : ListDevicesRequest -> JE.Value
listDevicesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (deviceFilterEncoder))
            ("filters", data.filters)
        
        
        |> JE.object






listDevicesResultEncoder : ListDevicesResult -> JE.Value
listDevicesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (deviceEncoder))
            ("devices", data.devices)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listInstanceProfilesRequestEncoder : ListInstanceProfilesRequest -> JE.Value
listInstanceProfilesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listInstanceProfilesResultEncoder : ListInstanceProfilesResult -> JE.Value
listInstanceProfilesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (instanceProfileEncoder))
            ("instanceProfiles", data.instanceProfiles)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listJobsRequestEncoder : ListJobsRequest -> JE.Value
listJobsRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listJobsResultEncoder : ListJobsResult -> JE.Value
listJobsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (jobEncoder))
            ("jobs", data.jobs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listNetworkProfilesRequestEncoder : ListNetworkProfilesRequest -> JE.Value
listNetworkProfilesRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (networkProfileTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listNetworkProfilesResultEncoder : ListNetworkProfilesResult -> JE.Value
listNetworkProfilesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (networkProfileEncoder))
            ("networkProfiles", data.networkProfiles)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listOfferingPromotionsRequestEncoder : ListOfferingPromotionsRequest -> JE.Value
listOfferingPromotionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listOfferingPromotionsResultEncoder : ListOfferingPromotionsResult -> JE.Value
listOfferingPromotionsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (offeringPromotionEncoder))
            ("offeringPromotions", data.offeringPromotions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listOfferingTransactionsRequestEncoder : ListOfferingTransactionsRequest -> JE.Value
listOfferingTransactionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listOfferingTransactionsResultEncoder : ListOfferingTransactionsResult -> JE.Value
listOfferingTransactionsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (offeringTransactionEncoder))
            ("offeringTransactions", data.offeringTransactions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listOfferingsRequestEncoder : ListOfferingsRequest -> JE.Value
listOfferingsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listOfferingsResultEncoder : ListOfferingsResult -> JE.Value
listOfferingsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (offeringEncoder))
            ("offerings", data.offerings)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listProjectsRequestEncoder : ListProjectsRequest -> JE.Value
listProjectsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listProjectsResultEncoder : ListProjectsResult -> JE.Value
listProjectsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectEncoder))
            ("projects", data.projects)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listRemoteAccessSessionsRequestEncoder : ListRemoteAccessSessionsRequest -> JE.Value
listRemoteAccessSessionsRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listRemoteAccessSessionsResultEncoder : ListRemoteAccessSessionsResult -> JE.Value
listRemoteAccessSessionsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (remoteAccessSessionEncoder))
            ("remoteAccessSessions", data.remoteAccessSessions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listRunsRequestEncoder : ListRunsRequest -> JE.Value
listRunsRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listRunsResultEncoder : ListRunsResult -> JE.Value
listRunsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (runEncoder))
            ("runs", data.runs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listSamplesRequestEncoder : ListSamplesRequest -> JE.Value
listSamplesRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listSamplesResultEncoder : ListSamplesResult -> JE.Value
listSamplesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (sampleEncoder))
            ("samples", data.samples)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listSuitesRequestEncoder : ListSuitesRequest -> JE.Value
listSuitesRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listSuitesResultEncoder : ListSuitesResult -> JE.Value
listSuitesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (suiteEncoder))
            ("suites", data.suites)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listTagsForResourceRequestEncoder : ListTagsForResourceRequest -> JE.Value
listTagsForResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        |> JE.object






listTagsForResourceResponseEncoder : ListTagsForResourceResponse -> JE.Value
listTagsForResourceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






listTestsRequestEncoder : ListTestsRequest -> JE.Value
listTestsRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listTestsResultEncoder : ListTestsResult -> JE.Value
listTestsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (testEncoder))
            ("tests", data.tests)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listUniqueProblemsRequestEncoder : ListUniqueProblemsRequest -> JE.Value
listUniqueProblemsRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listUniqueProblemsResultEncoder : ListUniqueProblemsResult -> JE.Value
listUniqueProblemsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.list (uniqueProblemEncoder)))
            ("uniqueProblems", data.uniqueProblems)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listUploadsRequestEncoder : ListUploadsRequest -> JE.Value
listUploadsRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (uploadTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listUploadsResultEncoder : ListUploadsResult -> JE.Value
listUploadsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (uploadEncoder))
            ("uploads", data.uploads)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listVPCEConfigurationsRequestEncoder : ListVPCEConfigurationsRequest -> JE.Value
listVPCEConfigurationsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listVPCEConfigurationsResultEncoder : ListVPCEConfigurationsResult -> JE.Value
listVPCEConfigurationsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (vPCEConfigurationEncoder))
            ("vpceConfigurations", data.vpceConfigurations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






locationEncoder : Location -> JE.Value
locationEncoder data =
    []
        
        
        |> (::) ("latitude", data.latitude |> (JE.float))
        
        
        
        |> (::) ("longitude", data.longitude |> (JE.float))
        
        
        |> JE.object






monetaryAmountEncoder : MonetaryAmount -> JE.Value
monetaryAmountEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("amount", data.amount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (currencyCodeToString >> JE.string)
            ("currencyCode", data.currencyCode)
        
        
        |> JE.object






networkProfileEncoder : NetworkProfile -> JE.Value
networkProfileEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (networkProfileTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("uplinkBandwidthBits", data.uplinkBandwidthBits)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("downlinkBandwidthBits", data.downlinkBandwidthBits)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("uplinkDelayMs", data.uplinkDelayMs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("downlinkDelayMs", data.downlinkDelayMs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("uplinkJitterMs", data.uplinkJitterMs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("downlinkJitterMs", data.downlinkJitterMs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("uplinkLossPercent", data.uplinkLossPercent)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("downlinkLossPercent", data.downlinkLossPercent)
        
        
        |> JE.object










offeringEncoder : Offering -> JE.Value
offeringEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (offeringTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (devicePlatformToString >> JE.string)
            ("platform", data.platform)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (recurringChargeEncoder))
            ("recurringCharges", data.recurringCharges)
        
        
        |> JE.object






offeringPromotionEncoder : OfferingPromotion -> JE.Value
offeringPromotionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        |> JE.object






offeringStatusEncoder : OfferingStatus -> JE.Value
offeringStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (offeringTransactionTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (offeringEncoder)
            ("offering", data.offering)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("quantity", data.quantity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("effectiveOn", data.effectiveOn)
        
        
        |> JE.object






offeringTransactionEncoder : OfferingTransaction -> JE.Value
offeringTransactionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (offeringStatusEncoder)
            ("offeringStatus", data.offeringStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("transactionId", data.transactionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("offeringPromotionId", data.offeringPromotionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdOn", data.createdOn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (monetaryAmountEncoder)
            ("cost", data.cost)
        
        
        |> JE.object














problemEncoder : Problem -> JE.Value
problemEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (problemDetailEncoder)
            ("run", data.run)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (problemDetailEncoder)
            ("job", data.job)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (problemDetailEncoder)
            ("suite", data.suite)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (problemDetailEncoder)
            ("test", data.test)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceEncoder)
            ("device", data.device)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionResultToString >> JE.string)
            ("result", data.result)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






problemDetailEncoder : ProblemDetail -> JE.Value
problemDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        |> JE.object






projectEncoder : Project -> JE.Value
projectEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("defaultJobTimeoutMinutes", data.defaultJobTimeoutMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("created", data.created)
        
        
        |> JE.object






purchaseOfferingRequestEncoder : PurchaseOfferingRequest -> JE.Value
purchaseOfferingRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("offeringId", data.offeringId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("quantity", data.quantity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("offeringPromotionId", data.offeringPromotionId)
        
        
        |> JE.object






purchaseOfferingResultEncoder : PurchaseOfferingResult -> JE.Value
purchaseOfferingResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (offeringTransactionEncoder)
            ("offeringTransaction", data.offeringTransaction)
        
        
        |> JE.object






radiosEncoder : Radios -> JE.Value
radiosEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("wifi", data.wifi)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("bluetooth", data.bluetooth)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("nfc", data.nfc)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("gps", data.gps)
        
        
        |> JE.object






recurringChargeEncoder : RecurringCharge -> JE.Value
recurringChargeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (monetaryAmountEncoder)
            ("cost", data.cost)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (recurringChargeFrequencyToString >> JE.string)
            ("frequency", data.frequency)
        
        
        |> JE.object










remoteAccessSessionEncoder : RemoteAccessSession -> JE.Value
remoteAccessSessionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("created", data.created)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionResultToString >> JE.string)
            ("result", data.result)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("started", data.started)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("stopped", data.stopped)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceEncoder)
            ("device", data.device)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("instanceArn", data.instanceArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("remoteDebugEnabled", data.remoteDebugEnabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("remoteRecordEnabled", data.remoteRecordEnabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("remoteRecordAppArn", data.remoteRecordAppArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("hostAddress", data.hostAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientId", data.clientId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (billingMethodToString >> JE.string)
            ("billingMethod", data.billingMethod)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceMinutesEncoder)
            ("deviceMinutes", data.deviceMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("endpoint", data.endpoint)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("deviceUdid", data.deviceUdid)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (interactionModeToString >> JE.string)
            ("interactionMode", data.interactionMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("skipAppResign", data.skipAppResign)
        
        
        |> JE.object






renewOfferingRequestEncoder : RenewOfferingRequest -> JE.Value
renewOfferingRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("offeringId", data.offeringId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("quantity", data.quantity)
        
        
        |> JE.object






renewOfferingResultEncoder : RenewOfferingResult -> JE.Value
renewOfferingResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (offeringTransactionEncoder)
            ("offeringTransaction", data.offeringTransaction)
        
        
        |> JE.object






resolutionEncoder : Resolution -> JE.Value
resolutionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("width", data.width)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("height", data.height)
        
        
        |> JE.object






ruleEncoder : Rule -> JE.Value
ruleEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceAttributeToString >> JE.string)
            ("attribute", data.attribute)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (ruleOperatorToString >> JE.string)
            ("operator", data.operator)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("value", data.value)
        
        
        |> JE.object










runEncoder : Run -> JE.Value
runEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (testTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (devicePlatformToString >> JE.string)
            ("platform", data.platform)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("created", data.created)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionResultToString >> JE.string)
            ("result", data.result)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("started", data.started)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("stopped", data.stopped)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (countersEncoder)
            ("counters", data.counters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("totalJobs", data.totalJobs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("completedJobs", data.completedJobs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (billingMethodToString >> JE.string)
            ("billingMethod", data.billingMethod)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceMinutesEncoder)
            ("deviceMinutes", data.deviceMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (networkProfileEncoder)
            ("networkProfile", data.networkProfile)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("parsingResultUrl", data.parsingResultUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionResultCodeToString >> JE.string)
            ("resultCode", data.resultCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("seed", data.seed)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appUpload", data.appUpload)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("eventCount", data.eventCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("jobTimeoutMinutes", data.jobTimeoutMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("devicePoolArn", data.devicePoolArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("locale", data.locale)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (radiosEncoder)
            ("radios", data.radios)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (locationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (customerArtifactPathsEncoder)
            ("customerArtifactPaths", data.customerArtifactPaths)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("webUrl", data.webUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("skipAppResign", data.skipAppResign)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("testSpecArn", data.testSpecArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceSelectionResultEncoder)
            ("deviceSelectionResult", data.deviceSelectionResult)
        
        
        |> JE.object






sampleEncoder : Sample -> JE.Value
sampleEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sampleTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("url", data.url)
        
        
        |> JE.object










scheduleRunConfigurationEncoder : ScheduleRunConfiguration -> JE.Value
scheduleRunConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("extraDataPackageArn", data.extraDataPackageArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("networkProfileArn", data.networkProfileArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("locale", data.locale)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (locationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("vpceConfigurationArns", data.vpceConfigurationArns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (customerArtifactPathsEncoder)
            ("customerArtifactPaths", data.customerArtifactPaths)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (radiosEncoder)
            ("radios", data.radios)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("auxiliaryApps", data.auxiliaryApps)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (billingMethodToString >> JE.string)
            ("billingMethod", data.billingMethod)
        
        
        |> JE.object






scheduleRunRequestEncoder : ScheduleRunRequest -> JE.Value
scheduleRunRequestEncoder data =
    []
        
        
        |> (::) ("projectArn", data.projectArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("appArn", data.appArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("devicePoolArn", data.devicePoolArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceSelectionConfigurationEncoder)
            ("deviceSelectionConfiguration", data.deviceSelectionConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> (::) ("test", data.test |> (scheduleRunTestEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scheduleRunConfigurationEncoder)
            ("configuration", data.configuration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionConfigurationEncoder)
            ("executionConfiguration", data.executionConfiguration)
        
        
        |> JE.object






scheduleRunResultEncoder : ScheduleRunResult -> JE.Value
scheduleRunResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (runEncoder)
            ("run", data.run)
        
        
        |> JE.object






scheduleRunTestEncoder : ScheduleRunTest -> JE.Value
scheduleRunTestEncoder data =
    []
        
        
        |> (::) ("type", data.type_ |> (testTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("testPackageArn", data.testPackageArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("testSpecArn", data.testSpecArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("filter", data.filter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("parameters", data.parameters)
        
        
        |> JE.object






stopJobRequestEncoder : StopJobRequest -> JE.Value
stopJobRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






stopJobResultEncoder : StopJobResult -> JE.Value
stopJobResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (jobEncoder)
            ("job", data.job)
        
        
        |> JE.object






stopRemoteAccessSessionRequestEncoder : StopRemoteAccessSessionRequest -> JE.Value
stopRemoteAccessSessionRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






stopRemoteAccessSessionResultEncoder : StopRemoteAccessSessionResult -> JE.Value
stopRemoteAccessSessionResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (remoteAccessSessionEncoder)
            ("remoteAccessSession", data.remoteAccessSession)
        
        
        |> JE.object






stopRunRequestEncoder : StopRunRequest -> JE.Value
stopRunRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






stopRunResultEncoder : StopRunResult -> JE.Value
stopRunResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (runEncoder)
            ("run", data.run)
        
        
        |> JE.object






suiteEncoder : Suite -> JE.Value
suiteEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (testTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("created", data.created)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionResultToString >> JE.string)
            ("result", data.result)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("started", data.started)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("stopped", data.stopped)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (countersEncoder)
            ("counters", data.counters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceMinutesEncoder)
            ("deviceMinutes", data.deviceMinutes)
        
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> (::) ("Value", data.value |> (JE.string))
        
        
        |> JE.object






tagResourceRequestEncoder : TagResourceRequest -> JE.Value
tagResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        
        |> (::) ("Tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object






tagResourceResponseEncoder : TagResourceResponse -> JE.Value
tagResourceResponseEncoder data =
    []
        
        |> JE.object






testEncoder : Test -> JE.Value
testEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (testTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("created", data.created)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionResultToString >> JE.string)
            ("result", data.result)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("started", data.started)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("stopped", data.stopped)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (countersEncoder)
            ("counters", data.counters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceMinutesEncoder)
            ("deviceMinutes", data.deviceMinutes)
        
        
        |> JE.object










trialMinutesEncoder : TrialMinutes -> JE.Value
trialMinutesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("total", data.total)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("remaining", data.remaining)
        
        
        |> JE.object






uniqueProblemEncoder : UniqueProblem -> JE.Value
uniqueProblemEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (problemEncoder))
            ("problems", data.problems)
        
        
        |> JE.object






untagResourceRequestEncoder : UntagResourceRequest -> JE.Value
untagResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        
        |> (::) ("TagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






untagResourceResponseEncoder : UntagResourceResponse -> JE.Value
untagResourceResponseEncoder data =
    []
        
        |> JE.object






updateDeviceInstanceRequestEncoder : UpdateDeviceInstanceRequest -> JE.Value
updateDeviceInstanceRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("profileArn", data.profileArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("labels", data.labels)
        
        
        |> JE.object






updateDeviceInstanceResultEncoder : UpdateDeviceInstanceResult -> JE.Value
updateDeviceInstanceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceInstanceEncoder)
            ("deviceInstance", data.deviceInstance)
        
        
        |> JE.object






updateDevicePoolRequestEncoder : UpdateDevicePoolRequest -> JE.Value
updateDevicePoolRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (ruleEncoder))
            ("rules", data.rules)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxDevices", data.maxDevices)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("clearMaxDevices", data.clearMaxDevices)
        
        
        |> JE.object






updateDevicePoolResultEncoder : UpdateDevicePoolResult -> JE.Value
updateDevicePoolResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (devicePoolEncoder)
            ("devicePool", data.devicePool)
        
        
        |> JE.object






updateInstanceProfileRequestEncoder : UpdateInstanceProfileRequest -> JE.Value
updateInstanceProfileRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("packageCleanup", data.packageCleanup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("excludeAppPackagesFromCleanup", data.excludeAppPackagesFromCleanup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("rebootAfterUse", data.rebootAfterUse)
        
        
        |> JE.object






updateInstanceProfileResultEncoder : UpdateInstanceProfileResult -> JE.Value
updateInstanceProfileResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceProfileEncoder)
            ("instanceProfile", data.instanceProfile)
        
        
        |> JE.object






updateNetworkProfileRequestEncoder : UpdateNetworkProfileRequest -> JE.Value
updateNetworkProfileRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (networkProfileTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("uplinkBandwidthBits", data.uplinkBandwidthBits)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("downlinkBandwidthBits", data.downlinkBandwidthBits)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("uplinkDelayMs", data.uplinkDelayMs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("downlinkDelayMs", data.downlinkDelayMs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("uplinkJitterMs", data.uplinkJitterMs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("downlinkJitterMs", data.downlinkJitterMs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("uplinkLossPercent", data.uplinkLossPercent)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("downlinkLossPercent", data.downlinkLossPercent)
        
        
        |> JE.object






updateNetworkProfileResultEncoder : UpdateNetworkProfileResult -> JE.Value
updateNetworkProfileResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (networkProfileEncoder)
            ("networkProfile", data.networkProfile)
        
        
        |> JE.object






updateProjectRequestEncoder : UpdateProjectRequest -> JE.Value
updateProjectRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("defaultJobTimeoutMinutes", data.defaultJobTimeoutMinutes)
        
        
        |> JE.object






updateProjectResultEncoder : UpdateProjectResult -> JE.Value
updateProjectResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (projectEncoder)
            ("project", data.project)
        
        
        |> JE.object






updateUploadRequestEncoder : UpdateUploadRequest -> JE.Value
updateUploadRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("contentType", data.contentType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("editContent", data.editContent)
        
        
        |> JE.object






updateUploadResultEncoder : UpdateUploadResult -> JE.Value
updateUploadResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (uploadEncoder)
            ("upload", data.upload)
        
        
        |> JE.object






updateVPCEConfigurationRequestEncoder : UpdateVPCEConfigurationRequest -> JE.Value
updateVPCEConfigurationRequestEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vpceConfigurationName", data.vpceConfigurationName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vpceServiceName", data.vpceServiceName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("serviceDnsName", data.serviceDnsName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vpceConfigurationDescription", data.vpceConfigurationDescription)
        
        
        |> JE.object






updateVPCEConfigurationResultEncoder : UpdateVPCEConfigurationResult -> JE.Value
updateVPCEConfigurationResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (vPCEConfigurationEncoder)
            ("vpceConfiguration", data.vpceConfiguration)
        
        
        |> JE.object






uploadEncoder : Upload -> JE.Value
uploadEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("created", data.created)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (uploadTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (uploadStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("url", data.url)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("metadata", data.metadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("contentType", data.contentType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (uploadCategoryToString >> JE.string)
            ("category", data.category)
        
        
        |> JE.object


















vPCEConfigurationEncoder : VPCEConfiguration -> JE.Value
vPCEConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vpceConfigurationName", data.vpceConfigurationName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vpceServiceName", data.vpceServiceName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("serviceDnsName", data.serviceDnsName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vpceConfigurationDescription", data.vpceConfigurationDescription)
        
        
        |> JE.object





