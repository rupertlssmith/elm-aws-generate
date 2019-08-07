module AWS.ElasticBeanstalk
    exposing
        ( service
        , abortEnvironmentUpdate
        , AbortEnvironmentUpdateOptions
        , applyEnvironmentManagedAction
        , ApplyEnvironmentManagedActionOptions
        , checkDNSAvailability
        , composeEnvironments
        , ComposeEnvironmentsOptions
        , createApplication
        , CreateApplicationOptions
        , createApplicationVersion
        , CreateApplicationVersionOptions
        , createConfigurationTemplate
        , CreateConfigurationTemplateOptions
        , createEnvironment
        , CreateEnvironmentOptions
        , createPlatformVersion
        , CreatePlatformVersionOptions
        , createStorageLocation
        , deleteApplication
        , DeleteApplicationOptions
        , deleteApplicationVersion
        , DeleteApplicationVersionOptions
        , deleteConfigurationTemplate
        , deleteEnvironmentConfiguration
        , deletePlatformVersion
        , DeletePlatformVersionOptions
        , describeAccountAttributes
        , describeApplicationVersions
        , DescribeApplicationVersionsOptions
        , describeApplications
        , DescribeApplicationsOptions
        , describeConfigurationOptions
        , DescribeConfigurationOptionsOptions
        , describeConfigurationSettings
        , DescribeConfigurationSettingsOptions
        , describeEnvironmentHealth
        , DescribeEnvironmentHealthOptions
        , describeEnvironmentManagedActionHistory
        , DescribeEnvironmentManagedActionHistoryOptions
        , describeEnvironmentManagedActions
        , DescribeEnvironmentManagedActionsOptions
        , describeEnvironmentResources
        , DescribeEnvironmentResourcesOptions
        , describeEnvironments
        , DescribeEnvironmentsOptions
        , describeEvents
        , DescribeEventsOptions
        , describeInstancesHealth
        , DescribeInstancesHealthOptions
        , describePlatformVersion
        , DescribePlatformVersionOptions
        , listAvailableSolutionStacks
        , listPlatformVersions
        , ListPlatformVersionsOptions
        , listTagsForResource
        , rebuildEnvironment
        , RebuildEnvironmentOptions
        , requestEnvironmentInfo
        , RequestEnvironmentInfoOptions
        , restartAppServer
        , RestartAppServerOptions
        , retrieveEnvironmentInfo
        , RetrieveEnvironmentInfoOptions
        , swapEnvironmentCNAMEs
        , SwapEnvironmentCNAMEsOptions
        , terminateEnvironment
        , TerminateEnvironmentOptions
        , updateApplication
        , UpdateApplicationOptions
        , updateApplicationResourceLifecycle
        , updateApplicationVersion
        , UpdateApplicationVersionOptions
        , updateConfigurationTemplate
        , UpdateConfigurationTemplateOptions
        , updateEnvironment
        , UpdateEnvironmentOptions
        , updateTagsForResource
        , UpdateTagsForResourceOptions
        , validateConfigurationSettings
        , ValidateConfigurationSettingsOptions
        , ActionHistoryStatus(..)
        , ActionStatus(..)
        , ActionType(..)
        , ApplicationDescription
        , ApplicationDescriptionMessage
        , ApplicationDescriptionsMessage
        , ApplicationMetrics
        , ApplicationResourceLifecycleConfig
        , ApplicationResourceLifecycleDescriptionMessage
        , ApplicationVersionDescription
        , ApplicationVersionDescriptionMessage
        , ApplicationVersionDescriptionsMessage
        , ApplicationVersionLifecycleConfig
        , ApplicationVersionStatus(..)
        , ApplyEnvironmentManagedActionResult
        , AutoScalingGroup
        , BuildConfiguration
        , Builder
        , CPUUtilization
        , CheckDNSAvailabilityResultMessage
        , ComputeType(..)
        , ConfigurationDeploymentStatus(..)
        , ConfigurationOptionDescription
        , ConfigurationOptionSetting
        , ConfigurationOptionValueType(..)
        , ConfigurationOptionsDescription
        , ConfigurationSettingsDescription
        , ConfigurationSettingsDescriptions
        , ConfigurationSettingsValidationMessages
        , CreatePlatformVersionResult
        , CreateStorageLocationResultMessage
        , CustomAmi
        , DeletePlatformVersionResult
        , Deployment
        , DescribeAccountAttributesResult
        , DescribeEnvironmentHealthResult
        , DescribeEnvironmentManagedActionHistoryResult
        , DescribeEnvironmentManagedActionsResult
        , DescribeInstancesHealthResult
        , DescribePlatformVersionResult
        , EnvironmentDescription
        , EnvironmentDescriptionsMessage
        , EnvironmentHealth(..)
        , EnvironmentHealthAttribute(..)
        , EnvironmentHealthStatus(..)
        , EnvironmentInfoDescription
        , EnvironmentInfoType(..)
        , EnvironmentLink
        , EnvironmentResourceDescription
        , EnvironmentResourceDescriptionsMessage
        , EnvironmentResourcesDescription
        , EnvironmentStatus(..)
        , EnvironmentTier
        , EventDescription
        , EventDescriptionsMessage
        , EventSeverity(..)
        , FailureType(..)
        , Instance
        , InstanceHealthSummary
        , InstancesHealthAttribute(..)
        , Latency
        , LaunchConfiguration
        , LaunchTemplate
        , ListAvailableSolutionStacksResultMessage
        , ListPlatformVersionsResult
        , Listener
        , LoadBalancer
        , LoadBalancerDescription
        , ManagedAction
        , ManagedActionHistoryItem
        , MaxAgeRule
        , MaxCountRule
        , OptionRestrictionRegex
        , OptionSpecification
        , PlatformDescription
        , PlatformFilter
        , PlatformFramework
        , PlatformProgrammingLanguage
        , PlatformStatus(..)
        , PlatformSummary
        , Queue
        , ResourceQuota
        , ResourceQuotas
        , ResourceTagsDescriptionMessage
        , RetrieveEnvironmentInfoResultMessage
        , S3Location
        , SingleInstanceHealth
        , SolutionStackDescription
        , SourceBuildInformation
        , SourceConfiguration
        , SourceRepository(..)
        , SourceType(..)
        , StatusCodes
        , SystemStatus
        , Tag
        , Trigger
        , ValidationMessage
        , ValidationSeverity(..)
        )

{-| <fullname>AWS Elastic Beanstalk</fullname> <p>AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage scalable, fault-tolerant applications running on the Amazon Web Services cloud.</p> <p>For more information about this product, go to the <a href="http://aws.amazon.com/elasticbeanstalk/">AWS Elastic Beanstalk</a> details page. The location of the latest AWS Elastic Beanstalk WSDL is <a href="http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl">http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl</a>. To install the Software Development Kits (SDKs), Integrated Development Environment (IDE) Toolkits, and command line tools that enable you to access the API, go to <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p> <p> <b>Endpoints</b> </p> <p>For a list of region-specific endpoints that AWS Elastic Beanstalk supports, go to <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region">Regions and Endpoints</a> in the <i>Amazon Web Services Glossary</i>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [abortEnvironmentUpdate](#abortEnvironmentUpdate)
* [AbortEnvironmentUpdateOptions](#AbortEnvironmentUpdateOptions)
* [applyEnvironmentManagedAction](#applyEnvironmentManagedAction)
* [ApplyEnvironmentManagedActionOptions](#ApplyEnvironmentManagedActionOptions)
* [checkDNSAvailability](#checkDNSAvailability)
* [composeEnvironments](#composeEnvironments)
* [ComposeEnvironmentsOptions](#ComposeEnvironmentsOptions)
* [createApplication](#createApplication)
* [CreateApplicationOptions](#CreateApplicationOptions)
* [createApplicationVersion](#createApplicationVersion)
* [CreateApplicationVersionOptions](#CreateApplicationVersionOptions)
* [createConfigurationTemplate](#createConfigurationTemplate)
* [CreateConfigurationTemplateOptions](#CreateConfigurationTemplateOptions)
* [createEnvironment](#createEnvironment)
* [CreateEnvironmentOptions](#CreateEnvironmentOptions)
* [createPlatformVersion](#createPlatformVersion)
* [CreatePlatformVersionOptions](#CreatePlatformVersionOptions)
* [createStorageLocation](#createStorageLocation)
* [deleteApplication](#deleteApplication)
* [DeleteApplicationOptions](#DeleteApplicationOptions)
* [deleteApplicationVersion](#deleteApplicationVersion)
* [DeleteApplicationVersionOptions](#DeleteApplicationVersionOptions)
* [deleteConfigurationTemplate](#deleteConfigurationTemplate)
* [deleteEnvironmentConfiguration](#deleteEnvironmentConfiguration)
* [deletePlatformVersion](#deletePlatformVersion)
* [DeletePlatformVersionOptions](#DeletePlatformVersionOptions)
* [describeAccountAttributes](#describeAccountAttributes)
* [describeApplicationVersions](#describeApplicationVersions)
* [DescribeApplicationVersionsOptions](#DescribeApplicationVersionsOptions)
* [describeApplications](#describeApplications)
* [DescribeApplicationsOptions](#DescribeApplicationsOptions)
* [describeConfigurationOptions](#describeConfigurationOptions)
* [DescribeConfigurationOptionsOptions](#DescribeConfigurationOptionsOptions)
* [describeConfigurationSettings](#describeConfigurationSettings)
* [DescribeConfigurationSettingsOptions](#DescribeConfigurationSettingsOptions)
* [describeEnvironmentHealth](#describeEnvironmentHealth)
* [DescribeEnvironmentHealthOptions](#DescribeEnvironmentHealthOptions)
* [describeEnvironmentManagedActionHistory](#describeEnvironmentManagedActionHistory)
* [DescribeEnvironmentManagedActionHistoryOptions](#DescribeEnvironmentManagedActionHistoryOptions)
* [describeEnvironmentManagedActions](#describeEnvironmentManagedActions)
* [DescribeEnvironmentManagedActionsOptions](#DescribeEnvironmentManagedActionsOptions)
* [describeEnvironmentResources](#describeEnvironmentResources)
* [DescribeEnvironmentResourcesOptions](#DescribeEnvironmentResourcesOptions)
* [describeEnvironments](#describeEnvironments)
* [DescribeEnvironmentsOptions](#DescribeEnvironmentsOptions)
* [describeEvents](#describeEvents)
* [DescribeEventsOptions](#DescribeEventsOptions)
* [describeInstancesHealth](#describeInstancesHealth)
* [DescribeInstancesHealthOptions](#DescribeInstancesHealthOptions)
* [describePlatformVersion](#describePlatformVersion)
* [DescribePlatformVersionOptions](#DescribePlatformVersionOptions)
* [listAvailableSolutionStacks](#listAvailableSolutionStacks)
* [listPlatformVersions](#listPlatformVersions)
* [ListPlatformVersionsOptions](#ListPlatformVersionsOptions)
* [listTagsForResource](#listTagsForResource)
* [rebuildEnvironment](#rebuildEnvironment)
* [RebuildEnvironmentOptions](#RebuildEnvironmentOptions)
* [requestEnvironmentInfo](#requestEnvironmentInfo)
* [RequestEnvironmentInfoOptions](#RequestEnvironmentInfoOptions)
* [restartAppServer](#restartAppServer)
* [RestartAppServerOptions](#RestartAppServerOptions)
* [retrieveEnvironmentInfo](#retrieveEnvironmentInfo)
* [RetrieveEnvironmentInfoOptions](#RetrieveEnvironmentInfoOptions)
* [swapEnvironmentCNAMEs](#swapEnvironmentCNAMEs)
* [SwapEnvironmentCNAMEsOptions](#SwapEnvironmentCNAMEsOptions)
* [terminateEnvironment](#terminateEnvironment)
* [TerminateEnvironmentOptions](#TerminateEnvironmentOptions)
* [updateApplication](#updateApplication)
* [UpdateApplicationOptions](#UpdateApplicationOptions)
* [updateApplicationResourceLifecycle](#updateApplicationResourceLifecycle)
* [updateApplicationVersion](#updateApplicationVersion)
* [UpdateApplicationVersionOptions](#UpdateApplicationVersionOptions)
* [updateConfigurationTemplate](#updateConfigurationTemplate)
* [UpdateConfigurationTemplateOptions](#UpdateConfigurationTemplateOptions)
* [updateEnvironment](#updateEnvironment)
* [UpdateEnvironmentOptions](#UpdateEnvironmentOptions)
* [updateTagsForResource](#updateTagsForResource)
* [UpdateTagsForResourceOptions](#UpdateTagsForResourceOptions)
* [validateConfigurationSettings](#validateConfigurationSettings)
* [ValidateConfigurationSettingsOptions](#ValidateConfigurationSettingsOptions)


@docs abortEnvironmentUpdate,AbortEnvironmentUpdateOptions,applyEnvironmentManagedAction,ApplyEnvironmentManagedActionOptions,checkDNSAvailability,composeEnvironments,ComposeEnvironmentsOptions,createApplication,CreateApplicationOptions,createApplicationVersion,CreateApplicationVersionOptions,createConfigurationTemplate,CreateConfigurationTemplateOptions,createEnvironment,CreateEnvironmentOptions,createPlatformVersion,CreatePlatformVersionOptions,createStorageLocation,deleteApplication,DeleteApplicationOptions,deleteApplicationVersion,DeleteApplicationVersionOptions,deleteConfigurationTemplate,deleteEnvironmentConfiguration,deletePlatformVersion,DeletePlatformVersionOptions,describeAccountAttributes,describeApplicationVersions,DescribeApplicationVersionsOptions,describeApplications,DescribeApplicationsOptions,describeConfigurationOptions,DescribeConfigurationOptionsOptions,describeConfigurationSettings,DescribeConfigurationSettingsOptions,describeEnvironmentHealth,DescribeEnvironmentHealthOptions,describeEnvironmentManagedActionHistory,DescribeEnvironmentManagedActionHistoryOptions,describeEnvironmentManagedActions,DescribeEnvironmentManagedActionsOptions,describeEnvironmentResources,DescribeEnvironmentResourcesOptions,describeEnvironments,DescribeEnvironmentsOptions,describeEvents,DescribeEventsOptions,describeInstancesHealth,DescribeInstancesHealthOptions,describePlatformVersion,DescribePlatformVersionOptions,listAvailableSolutionStacks,listPlatformVersions,ListPlatformVersionsOptions,listTagsForResource,rebuildEnvironment,RebuildEnvironmentOptions,requestEnvironmentInfo,RequestEnvironmentInfoOptions,restartAppServer,RestartAppServerOptions,retrieveEnvironmentInfo,RetrieveEnvironmentInfoOptions,swapEnvironmentCNAMEs,SwapEnvironmentCNAMEsOptions,terminateEnvironment,TerminateEnvironmentOptions,updateApplication,UpdateApplicationOptions,updateApplicationResourceLifecycle,updateApplicationVersion,UpdateApplicationVersionOptions,updateConfigurationTemplate,UpdateConfigurationTemplateOptions,updateEnvironment,UpdateEnvironmentOptions,updateTagsForResource,UpdateTagsForResourceOptions,validateConfigurationSettings,ValidateConfigurationSettingsOptions

## Responses

* [ApplicationDescriptionMessage](#ApplicationDescriptionMessage)
* [ApplicationDescriptionsMessage](#ApplicationDescriptionsMessage)
* [ApplicationResourceLifecycleDescriptionMessage](#ApplicationResourceLifecycleDescriptionMessage)
* [ApplicationVersionDescriptionMessage](#ApplicationVersionDescriptionMessage)
* [ApplicationVersionDescriptionsMessage](#ApplicationVersionDescriptionsMessage)
* [ApplyEnvironmentManagedActionResult](#ApplyEnvironmentManagedActionResult)
* [CheckDNSAvailabilityResultMessage](#CheckDNSAvailabilityResultMessage)
* [ConfigurationOptionsDescription](#ConfigurationOptionsDescription)
* [ConfigurationSettingsDescription](#ConfigurationSettingsDescription)
* [ConfigurationSettingsDescriptions](#ConfigurationSettingsDescriptions)
* [ConfigurationSettingsValidationMessages](#ConfigurationSettingsValidationMessages)
* [CreatePlatformVersionResult](#CreatePlatformVersionResult)
* [CreateStorageLocationResultMessage](#CreateStorageLocationResultMessage)
* [DeletePlatformVersionResult](#DeletePlatformVersionResult)
* [DescribeAccountAttributesResult](#DescribeAccountAttributesResult)
* [DescribeEnvironmentHealthResult](#DescribeEnvironmentHealthResult)
* [DescribeEnvironmentManagedActionHistoryResult](#DescribeEnvironmentManagedActionHistoryResult)
* [DescribeEnvironmentManagedActionsResult](#DescribeEnvironmentManagedActionsResult)
* [DescribeInstancesHealthResult](#DescribeInstancesHealthResult)
* [DescribePlatformVersionResult](#DescribePlatformVersionResult)
* [EnvironmentDescription](#EnvironmentDescription)
* [EnvironmentDescriptionsMessage](#EnvironmentDescriptionsMessage)
* [EnvironmentResourceDescriptionsMessage](#EnvironmentResourceDescriptionsMessage)
* [EventDescriptionsMessage](#EventDescriptionsMessage)
* [ListAvailableSolutionStacksResultMessage](#ListAvailableSolutionStacksResultMessage)
* [ListPlatformVersionsResult](#ListPlatformVersionsResult)
* [ResourceTagsDescriptionMessage](#ResourceTagsDescriptionMessage)
* [RetrieveEnvironmentInfoResultMessage](#RetrieveEnvironmentInfoResultMessage)


@docs ApplicationDescriptionMessage,ApplicationDescriptionsMessage,ApplicationResourceLifecycleDescriptionMessage,ApplicationVersionDescriptionMessage,ApplicationVersionDescriptionsMessage,ApplyEnvironmentManagedActionResult,CheckDNSAvailabilityResultMessage,ConfigurationOptionsDescription,ConfigurationSettingsDescription,ConfigurationSettingsDescriptions,ConfigurationSettingsValidationMessages,CreatePlatformVersionResult,CreateStorageLocationResultMessage,DeletePlatformVersionResult,DescribeAccountAttributesResult,DescribeEnvironmentHealthResult,DescribeEnvironmentManagedActionHistoryResult,DescribeEnvironmentManagedActionsResult,DescribeInstancesHealthResult,DescribePlatformVersionResult,EnvironmentDescription,EnvironmentDescriptionsMessage,EnvironmentResourceDescriptionsMessage,EventDescriptionsMessage,ListAvailableSolutionStacksResultMessage,ListPlatformVersionsResult,ResourceTagsDescriptionMessage,RetrieveEnvironmentInfoResultMessage

## Records

* [ApplicationDescription](#ApplicationDescription)
* [ApplicationMetrics](#ApplicationMetrics)
* [ApplicationResourceLifecycleConfig](#ApplicationResourceLifecycleConfig)
* [ApplicationVersionDescription](#ApplicationVersionDescription)
* [ApplicationVersionLifecycleConfig](#ApplicationVersionLifecycleConfig)
* [AutoScalingGroup](#AutoScalingGroup)
* [BuildConfiguration](#BuildConfiguration)
* [Builder](#Builder)
* [CPUUtilization](#CPUUtilization)
* [ConfigurationOptionDescription](#ConfigurationOptionDescription)
* [ConfigurationOptionSetting](#ConfigurationOptionSetting)
* [CustomAmi](#CustomAmi)
* [Deployment](#Deployment)
* [EnvironmentInfoDescription](#EnvironmentInfoDescription)
* [EnvironmentLink](#EnvironmentLink)
* [EnvironmentResourceDescription](#EnvironmentResourceDescription)
* [EnvironmentResourcesDescription](#EnvironmentResourcesDescription)
* [EnvironmentTier](#EnvironmentTier)
* [EventDescription](#EventDescription)
* [Instance](#Instance)
* [InstanceHealthSummary](#InstanceHealthSummary)
* [Latency](#Latency)
* [LaunchConfiguration](#LaunchConfiguration)
* [LaunchTemplate](#LaunchTemplate)
* [Listener](#Listener)
* [LoadBalancer](#LoadBalancer)
* [LoadBalancerDescription](#LoadBalancerDescription)
* [ManagedAction](#ManagedAction)
* [ManagedActionHistoryItem](#ManagedActionHistoryItem)
* [MaxAgeRule](#MaxAgeRule)
* [MaxCountRule](#MaxCountRule)
* [OptionRestrictionRegex](#OptionRestrictionRegex)
* [OptionSpecification](#OptionSpecification)
* [PlatformDescription](#PlatformDescription)
* [PlatformFilter](#PlatformFilter)
* [PlatformFramework](#PlatformFramework)
* [PlatformProgrammingLanguage](#PlatformProgrammingLanguage)
* [PlatformSummary](#PlatformSummary)
* [Queue](#Queue)
* [ResourceQuota](#ResourceQuota)
* [ResourceQuotas](#ResourceQuotas)
* [S3Location](#S3Location)
* [SingleInstanceHealth](#SingleInstanceHealth)
* [SolutionStackDescription](#SolutionStackDescription)
* [SourceBuildInformation](#SourceBuildInformation)
* [SourceConfiguration](#SourceConfiguration)
* [StatusCodes](#StatusCodes)
* [SystemStatus](#SystemStatus)
* [Tag](#Tag)
* [Trigger](#Trigger)
* [ValidationMessage](#ValidationMessage)


@docs ApplicationDescription,ApplicationMetrics,ApplicationResourceLifecycleConfig,ApplicationVersionDescription,ApplicationVersionLifecycleConfig,AutoScalingGroup,BuildConfiguration,Builder,CPUUtilization,ConfigurationOptionDescription,ConfigurationOptionSetting,CustomAmi,Deployment,EnvironmentInfoDescription,EnvironmentLink,EnvironmentResourceDescription,EnvironmentResourcesDescription,EnvironmentTier,EventDescription,Instance,InstanceHealthSummary,Latency,LaunchConfiguration,LaunchTemplate,Listener,LoadBalancer,LoadBalancerDescription,ManagedAction,ManagedActionHistoryItem,MaxAgeRule,MaxCountRule,OptionRestrictionRegex,OptionSpecification,PlatformDescription,PlatformFilter,PlatformFramework,PlatformProgrammingLanguage,PlatformSummary,Queue,ResourceQuota,ResourceQuotas,S3Location,SingleInstanceHealth,SolutionStackDescription,SourceBuildInformation,SourceConfiguration,StatusCodes,SystemStatus,Tag,Trigger,ValidationMessage

## Unions

* [ActionHistoryStatus](#ActionHistoryStatus)
* [ActionStatus](#ActionStatus)
* [ActionType](#ActionType)
* [ApplicationVersionStatus](#ApplicationVersionStatus)
* [ComputeType](#ComputeType)
* [ConfigurationDeploymentStatus](#ConfigurationDeploymentStatus)
* [ConfigurationOptionValueType](#ConfigurationOptionValueType)
* [EnvironmentHealth](#EnvironmentHealth)
* [EnvironmentHealthAttribute](#EnvironmentHealthAttribute)
* [EnvironmentHealthStatus](#EnvironmentHealthStatus)
* [EnvironmentInfoType](#EnvironmentInfoType)
* [EnvironmentStatus](#EnvironmentStatus)
* [EventSeverity](#EventSeverity)
* [FailureType](#FailureType)
* [InstancesHealthAttribute](#InstancesHealthAttribute)
* [PlatformStatus](#PlatformStatus)
* [SourceRepository](#SourceRepository)
* [SourceType](#SourceType)
* [ValidationSeverity](#ValidationSeverity)


@docs ActionHistoryStatus,ActionStatus,ActionType,ApplicationVersionStatus,ComputeType,ConfigurationDeploymentStatus,ConfigurationOptionValueType,EnvironmentHealth,EnvironmentHealthAttribute,EnvironmentHealthStatus,EnvironmentInfoType,EnvironmentStatus,EventSeverity,FailureType,InstancesHealthAttribute,PlatformStatus,SourceRepository,SourceType,ValidationSeverity

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
        "elasticbeanstalk"
        "2010-12-01"
        AWS.Core.Service.query
        AWS.Core.Service.signV4
        (AWS.Core.Service.setXmlNamespace "http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/")



-- OPERATIONS

{-| <p>Cancels in-progress environment configuration update or application version deployment.</p>

__Required Parameters__



-}

abortEnvironmentUpdate :
  
  
    ( AbortEnvironmentUpdateOptions -> AbortEnvironmentUpdateOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

abortEnvironmentUpdate setOptions =
    
    let
        requestInput = AbortEnvironmentUpdateMessage
            
            options.environmentId
            
            options.environmentName
            
        
        options = setOptions (AbortEnvironmentUpdateOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "AbortEnvironmentUpdate")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs abortEnvironmentUpdateMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AbortEnvironmentUpdate"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a abortEnvironmentUpdate request
-}
type alias AbortEnvironmentUpdateOptions =
    {
    environmentId : Maybe String,environmentName : Maybe String
    }



{-| <p>Applies a scheduled managed action immediately. A managed action can be applied only if its status is <code>Scheduled</code>. Get the status and action ID of a managed action with <a>DescribeEnvironmentManagedActions</a>.</p>

__Required Parameters__

* `actionId` __:__ `String`


-}

applyEnvironmentManagedAction :
  
    String ->
  
  
    ( ApplyEnvironmentManagedActionOptions -> ApplyEnvironmentManagedActionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ApplyEnvironmentManagedActionResult)

applyEnvironmentManagedAction actionId setOptions =
    
    let
        requestInput = ApplyEnvironmentManagedActionRequest
            
            options.environmentName
            
            options.environmentId
            
            actionId
            
        
        options = setOptions (ApplyEnvironmentManagedActionOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ApplyEnvironmentManagedAction")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs applyEnvironmentManagedActionRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ApplyEnvironmentManagedAction"
                
                (AWS.Core.Decode.ResultDecoder "ApplyEnvironmentManagedActionResult" applyEnvironmentManagedActionResultDecoder)
                
            )



{-| Options for a applyEnvironmentManagedAction request
-}
type alias ApplyEnvironmentManagedActionOptions =
    {
    environmentName : Maybe String,environmentId : Maybe String
    }



{-| <p>Checks if the specified CNAME is available.</p>

__Required Parameters__

* `cNAMEPrefix` __:__ `String`


-}

checkDNSAvailability :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CheckDNSAvailabilityResultMessage)

checkDNSAvailability cNAMEPrefix =
    
    let
        requestInput = CheckDNSAvailabilityMessage
            
            cNAMEPrefix
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CheckDNSAvailability")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs checkDNSAvailabilityMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CheckDNSAvailability"
                
                (AWS.Core.Decode.ResultDecoder "CheckDNSAvailabilityResult" checkDNSAvailabilityResultMessageDecoder)
                
            )





{-| <p>Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named <code>env.yaml</code>. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html">Compose Environments</a> for details.</p>

__Required Parameters__



-}

composeEnvironments :
  
  
    ( ComposeEnvironmentsOptions -> ComposeEnvironmentsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnvironmentDescriptionsMessage)

composeEnvironments setOptions =
    
    let
        requestInput = ComposeEnvironmentsMessage
            
            options.applicationName
            
            options.groupName
            
            options.versionLabels
            
        
        options = setOptions (ComposeEnvironmentsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ComposeEnvironments")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs composeEnvironmentsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ComposeEnvironments"
                
                (AWS.Core.Decode.ResultDecoder "ComposeEnvironmentsResult" environmentDescriptionsMessageDecoder)
                
            )



{-| Options for a composeEnvironments request
-}
type alias ComposeEnvironmentsOptions =
    {
    applicationName : Maybe String,groupName : Maybe String,versionLabels : Maybe (List String)
    }



{-| <p> Creates an application that has one configuration template named <code>default</code> and no application versions. </p>

__Required Parameters__

* `applicationName` __:__ `String`


-}

createApplication :
  
    String ->
  
  
    ( CreateApplicationOptions -> CreateApplicationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ApplicationDescriptionMessage)

createApplication applicationName setOptions =
    
    let
        requestInput = CreateApplicationMessage
            
            applicationName
            
            options.description
            
            options.resourceLifecycleConfig
            
            options.tags
            
        
        options = setOptions (CreateApplicationOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateApplication")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createApplicationMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateApplication"
                
                (AWS.Core.Decode.ResultDecoder "CreateApplicationResult" applicationDescriptionMessageDecoder)
                
            )



{-| Options for a createApplication request
-}
type alias CreateApplicationOptions =
    {
    description : Maybe String,resourceLifecycleConfig : Maybe ApplicationResourceLifecycleConfig,tags : Maybe (List Tag)
    }



{-| <p>Creates an application version for the specified application. You can create an application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the output of an AWS CodeBuild build as follows:</p> <p>Specify a commit in an AWS CodeCommit repository with <code>SourceBuildInformation</code>.</p> <p>Specify a build in an AWS CodeBuild with <code>SourceBuildInformation</code> and <code>BuildConfiguration</code>.</p> <p>Specify a source bundle in S3 with <code>SourceBundle</code> </p> <p>Omit both <code>SourceBuildInformation</code> and <code>SourceBundle</code> to use the default sample application.</p> <note> <p>Once you create an application version with a specified Amazon S3 bucket and key location, you cannot change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version.</p> </note>

__Required Parameters__

* `applicationName` __:__ `String`
* `versionLabel` __:__ `String`


-}

createApplicationVersion :
  
    String ->
  
    String ->
  
  
    ( CreateApplicationVersionOptions -> CreateApplicationVersionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ApplicationVersionDescriptionMessage)

createApplicationVersion applicationName versionLabel setOptions =
    
    let
        requestInput = CreateApplicationVersionMessage
            
            applicationName
            
            versionLabel
            
            options.description
            
            options.sourceBuildInformation
            
            options.sourceBundle
            
            options.buildConfiguration
            
            options.autoCreateApplication
            
            options.process
            
            options.tags
            
        
        options = setOptions (CreateApplicationVersionOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateApplicationVersion")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createApplicationVersionMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateApplicationVersion"
                
                (AWS.Core.Decode.ResultDecoder "CreateApplicationVersionResult" applicationVersionDescriptionMessageDecoder)
                
            )



{-| Options for a createApplicationVersion request
-}
type alias CreateApplicationVersionOptions =
    {
    description : Maybe String,sourceBuildInformation : Maybe SourceBuildInformation,sourceBundle : Maybe S3Location,buildConfiguration : Maybe BuildConfiguration,autoCreateApplication : Maybe Bool,process : Maybe Bool,tags : Maybe (List Tag)
    }



{-| <p>Creates a configuration template. Templates are associated with a specific application and are used to deploy different versions of the application with the same configuration settings.</p> <p>Templates aren't associated with any environment. The <code>EnvironmentName</code> response element is always <code>null</code>.</p> <p>Related Topics</p> <ul> <li> <p> <a>DescribeConfigurationOptions</a> </p> </li> <li> <p> <a>DescribeConfigurationSettings</a> </p> </li> <li> <p> <a>ListAvailableSolutionStacks</a> </p> </li> </ul>

__Required Parameters__

* `applicationName` __:__ `String`
* `templateName` __:__ `String`


-}

createConfigurationTemplate :
  
    String ->
  
    String ->
  
  
    ( CreateConfigurationTemplateOptions -> CreateConfigurationTemplateOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConfigurationSettingsDescription)

createConfigurationTemplate applicationName templateName setOptions =
    
    let
        requestInput = CreateConfigurationTemplateMessage
            
            applicationName
            
            templateName
            
            options.solutionStackName
            
            options.platformArn
            
            options.sourceConfiguration
            
            options.environmentId
            
            options.description
            
            options.optionSettings
            
            options.tags
            
        
        options = setOptions (CreateConfigurationTemplateOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateConfigurationTemplate")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createConfigurationTemplateMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateConfigurationTemplate"
                
                (AWS.Core.Decode.ResultDecoder "CreateConfigurationTemplateResult" configurationSettingsDescriptionDecoder)
                
            )



{-| Options for a createConfigurationTemplate request
-}
type alias CreateConfigurationTemplateOptions =
    {
    solutionStackName : Maybe String,platformArn : Maybe String,sourceConfiguration : Maybe SourceConfiguration,environmentId : Maybe String,description : Maybe String,optionSettings : Maybe (List ConfigurationOptionSetting),tags : Maybe (List Tag)
    }



{-| <p>Launches an environment for the specified application using the specified configuration.</p>

__Required Parameters__

* `applicationName` __:__ `String`


-}

createEnvironment :
  
    String ->
  
  
    ( CreateEnvironmentOptions -> CreateEnvironmentOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnvironmentDescription)

createEnvironment applicationName setOptions =
    
    let
        requestInput = CreateEnvironmentMessage
            
            applicationName
            
            options.environmentName
            
            options.groupName
            
            options.description
            
            options.cNAMEPrefix
            
            options.tier
            
            options.tags
            
            options.versionLabel
            
            options.templateName
            
            options.solutionStackName
            
            options.platformArn
            
            options.optionSettings
            
            options.optionsToRemove
            
        
        options = setOptions (CreateEnvironmentOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateEnvironment")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createEnvironmentMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateEnvironment"
                
                (AWS.Core.Decode.ResultDecoder "CreateEnvironmentResult" environmentDescriptionDecoder)
                
            )



{-| Options for a createEnvironment request
-}
type alias CreateEnvironmentOptions =
    {
    environmentName : Maybe String,groupName : Maybe String,description : Maybe String,cNAMEPrefix : Maybe String,tier : Maybe EnvironmentTier,tags : Maybe (List Tag),versionLabel : Maybe String,templateName : Maybe String,solutionStackName : Maybe String,platformArn : Maybe String,optionSettings : Maybe (List ConfigurationOptionSetting),optionsToRemove : Maybe (List OptionSpecification)
    }



{-| <p>Create a new version of your custom platform.</p>

__Required Parameters__

* `platformName` __:__ `String`
* `platformVersion` __:__ `String`
* `platformDefinitionBundle` __:__ `S3Location`


-}

createPlatformVersion :
  
    String ->
  
    String ->
  
    S3Location ->
  
  
    ( CreatePlatformVersionOptions -> CreatePlatformVersionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreatePlatformVersionResult)

createPlatformVersion platformName platformVersion platformDefinitionBundle setOptions =
    
    let
        requestInput = CreatePlatformVersionRequest
            
            platformName
            
            platformVersion
            
            platformDefinitionBundle
            
            options.environmentName
            
            options.optionSettings
            
            options.tags
            
        
        options = setOptions (CreatePlatformVersionOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreatePlatformVersion")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createPlatformVersionRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreatePlatformVersion"
                
                (AWS.Core.Decode.ResultDecoder "CreatePlatformVersionResult" createPlatformVersionResultDecoder)
                
            )



{-| Options for a createPlatformVersion request
-}
type alias CreatePlatformVersionOptions =
    {
    environmentName : Maybe String,optionSettings : Maybe (List ConfigurationOptionSetting),tags : Maybe (List Tag)
    }



{-| <p>Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments. The Elastic Beanstalk console and EB CLI call this API the first time you create an environment in a region. If the storage location already exists, <code>CreateStorageLocation</code> still returns the bucket name but does not create a new bucket.</p>

__Required Parameters__



-}

createStorageLocation :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateStorageLocationResultMessage)

createStorageLocation =
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateStorageLocation")]
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateStorageLocation"
                
                (AWS.Core.Decode.ResultDecoder "CreateStorageLocationResult" createStorageLocationResultMessageDecoder)
                
            )





{-| <p>Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket.</p> <note> <p>You cannot delete an application that has a running environment.</p> </note>

__Required Parameters__

* `applicationName` __:__ `String`


-}

deleteApplication :
  
    String ->
  
  
    ( DeleteApplicationOptions -> DeleteApplicationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteApplication applicationName setOptions =
    
    let
        requestInput = DeleteApplicationMessage
            
            applicationName
            
            options.terminateEnvByForce
            
        
        options = setOptions (DeleteApplicationOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteApplication")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteApplicationMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteApplication"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a deleteApplication request
-}
type alias DeleteApplicationOptions =
    {
    terminateEnvByForce : Maybe Bool
    }



{-| <p>Deletes the specified version from the specified application.</p> <note> <p>You cannot delete an application version that is associated with a running environment.</p> </note>

__Required Parameters__

* `applicationName` __:__ `String`
* `versionLabel` __:__ `String`


-}

deleteApplicationVersion :
  
    String ->
  
    String ->
  
  
    ( DeleteApplicationVersionOptions -> DeleteApplicationVersionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteApplicationVersion applicationName versionLabel setOptions =
    
    let
        requestInput = DeleteApplicationVersionMessage
            
            applicationName
            
            versionLabel
            
            options.deleteSourceBundle
            
        
        options = setOptions (DeleteApplicationVersionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteApplicationVersion")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteApplicationVersionMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteApplicationVersion"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a deleteApplicationVersion request
-}
type alias DeleteApplicationVersionOptions =
    {
    deleteSourceBundle : Maybe Bool
    }



{-| <p>Deletes the specified configuration template.</p> <note> <p>When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment.</p> </note>

__Required Parameters__

* `applicationName` __:__ `String`
* `templateName` __:__ `String`


-}

deleteConfigurationTemplate :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteConfigurationTemplate applicationName templateName =
    
    let
        requestInput = DeleteConfigurationTemplateMessage
            
            applicationName
            
            templateName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteConfigurationTemplate")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteConfigurationTemplateMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteConfigurationTemplate"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes the draft configuration associated with the running environment.</p> <p>Updating a running environment with any configuration changes creates a draft configuration set. You can get the draft configuration using <a>DescribeConfigurationSettings</a> while the update is in progress or if the update fails. The <code>DeploymentStatus</code> for the draft configuration indicates whether the deployment is in process or has failed. The draft configuration remains in existence until it is deleted with this action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `environmentName` __:__ `String`


-}

deleteEnvironmentConfiguration :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteEnvironmentConfiguration applicationName environmentName =
    
    let
        requestInput = DeleteEnvironmentConfigurationMessage
            
            applicationName
            
            environmentName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteEnvironmentConfiguration")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteEnvironmentConfigurationMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteEnvironmentConfiguration"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes the specified version of a custom platform.</p>

__Required Parameters__



-}

deletePlatformVersion :
  
  
    ( DeletePlatformVersionOptions -> DeletePlatformVersionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeletePlatformVersionResult)

deletePlatformVersion setOptions =
    
    let
        requestInput = DeletePlatformVersionRequest
            
            options.platformArn
            
        
        options = setOptions (DeletePlatformVersionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeletePlatformVersion")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deletePlatformVersionRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeletePlatformVersion"
                
                (AWS.Core.Decode.ResultDecoder "DeletePlatformVersionResult" deletePlatformVersionResultDecoder)
                
            )



{-| Options for a deletePlatformVersion request
-}
type alias DeletePlatformVersionOptions =
    {
    platformArn : Maybe String
    }



{-| <p>Returns attributes related to AWS Elastic Beanstalk that are associated with the calling AWS account.</p> <p>The result currently has one set of attributes—resource quotas.</p>

__Required Parameters__



-}

describeAccountAttributes :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAccountAttributesResult)

describeAccountAttributes =
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeAccountAttributes")]
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAccountAttributes"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAccountAttributesResult" describeAccountAttributesResultDecoder)
                
            )





{-| <p>Retrieve a list of application versions.</p>

__Required Parameters__



-}

describeApplicationVersions :
  
  
    ( DescribeApplicationVersionsOptions -> DescribeApplicationVersionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ApplicationVersionDescriptionsMessage)

describeApplicationVersions setOptions =
    
    let
        requestInput = DescribeApplicationVersionsMessage
            
            options.applicationName
            
            options.versionLabels
            
            options.maxRecords
            
            options.nextToken
            
        
        options = setOptions (DescribeApplicationVersionsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeApplicationVersions")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeApplicationVersionsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeApplicationVersions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeApplicationVersionsResult" applicationVersionDescriptionsMessageDecoder)
                
            )



{-| Options for a describeApplicationVersions request
-}
type alias DescribeApplicationVersionsOptions =
    {
    applicationName : Maybe String,versionLabels : Maybe (List String),maxRecords : Maybe Int,nextToken : Maybe String
    }



{-| <p>Returns the descriptions of existing applications.</p>

__Required Parameters__



-}

describeApplications :
  
  
    ( DescribeApplicationsOptions -> DescribeApplicationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ApplicationDescriptionsMessage)

describeApplications setOptions =
    
    let
        requestInput = DescribeApplicationsMessage
            
            options.applicationNames
            
        
        options = setOptions (DescribeApplicationsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeApplications")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeApplicationsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeApplications"
                
                (AWS.Core.Decode.ResultDecoder "DescribeApplicationsResult" applicationDescriptionsMessageDecoder)
                
            )



{-| Options for a describeApplications request
-}
type alias DescribeApplicationsOptions =
    {
    applicationNames : Maybe (List String)
    }



{-| <p>Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.</p>

__Required Parameters__



-}

describeConfigurationOptions :
  
  
    ( DescribeConfigurationOptionsOptions -> DescribeConfigurationOptionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConfigurationOptionsDescription)

describeConfigurationOptions setOptions =
    
    let
        requestInput = DescribeConfigurationOptionsMessage
            
            options.applicationName
            
            options.templateName
            
            options.environmentName
            
            options.solutionStackName
            
            options.platformArn
            
            options.options
            
        
        options = setOptions (DescribeConfigurationOptionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeConfigurationOptions")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeConfigurationOptionsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeConfigurationOptions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeConfigurationOptionsResult" configurationOptionsDescriptionDecoder)
                
            )



{-| Options for a describeConfigurationOptions request
-}
type alias DescribeConfigurationOptionsOptions =
    {
    applicationName : Maybe String,templateName : Maybe String,environmentName : Maybe String,solutionStackName : Maybe String,platformArn : Maybe String,options : Maybe (List OptionSpecification)
    }



{-| <p>Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment.</p> <p>When describing the settings for the configuration set associated with a running environment, it is possible to receive two sets of setting descriptions. One is the deployed configuration set, and the other is a draft configuration of an environment that is either in the process of deployment or that failed to deploy.</p> <p>Related Topics</p> <ul> <li> <p> <a>DeleteEnvironmentConfiguration</a> </p> </li> </ul>

__Required Parameters__

* `applicationName` __:__ `String`


-}

describeConfigurationSettings :
  
    String ->
  
  
    ( DescribeConfigurationSettingsOptions -> DescribeConfigurationSettingsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConfigurationSettingsDescriptions)

describeConfigurationSettings applicationName setOptions =
    
    let
        requestInput = DescribeConfigurationSettingsMessage
            
            applicationName
            
            options.templateName
            
            options.environmentName
            
        
        options = setOptions (DescribeConfigurationSettingsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeConfigurationSettings")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeConfigurationSettingsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeConfigurationSettings"
                
                (AWS.Core.Decode.ResultDecoder "DescribeConfigurationSettingsResult" configurationSettingsDescriptionsDecoder)
                
            )



{-| Options for a describeConfigurationSettings request
-}
type alias DescribeConfigurationSettingsOptions =
    {
    templateName : Maybe String,environmentName : Maybe String
    }



{-| <p>Returns information about the overall health of the specified environment. The <b>DescribeEnvironmentHealth</b> operation is only available with AWS Elastic Beanstalk Enhanced Health.</p>

__Required Parameters__



-}

describeEnvironmentHealth :
  
  
    ( DescribeEnvironmentHealthOptions -> DescribeEnvironmentHealthOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEnvironmentHealthResult)

describeEnvironmentHealth setOptions =
    
    let
        requestInput = DescribeEnvironmentHealthRequest
            
            options.environmentName
            
            options.environmentId
            
            options.attributeNames
            
        
        options = setOptions (DescribeEnvironmentHealthOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeEnvironmentHealth")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeEnvironmentHealthRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEnvironmentHealth"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEnvironmentHealthResult" describeEnvironmentHealthResultDecoder)
                
            )



{-| Options for a describeEnvironmentHealth request
-}
type alias DescribeEnvironmentHealthOptions =
    {
    environmentName : Maybe String,environmentId : Maybe String,attributeNames : Maybe (List EnvironmentHealthAttribute)
    }



{-| <p>Lists an environment's completed and failed managed actions.</p>

__Required Parameters__



-}

describeEnvironmentManagedActionHistory :
  
  
    ( DescribeEnvironmentManagedActionHistoryOptions -> DescribeEnvironmentManagedActionHistoryOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEnvironmentManagedActionHistoryResult)

describeEnvironmentManagedActionHistory setOptions =
    
    let
        requestInput = DescribeEnvironmentManagedActionHistoryRequest
            
            options.environmentId
            
            options.environmentName
            
            options.nextToken
            
            options.maxItems
            
        
        options = setOptions (DescribeEnvironmentManagedActionHistoryOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeEnvironmentManagedActionHistory")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeEnvironmentManagedActionHistoryRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEnvironmentManagedActionHistory"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEnvironmentManagedActionHistoryResult" describeEnvironmentManagedActionHistoryResultDecoder)
                
            )



{-| Options for a describeEnvironmentManagedActionHistory request
-}
type alias DescribeEnvironmentManagedActionHistoryOptions =
    {
    environmentId : Maybe String,environmentName : Maybe String,nextToken : Maybe String,maxItems : Maybe Int
    }



{-| <p>Lists an environment's upcoming and in-progress managed actions.</p>

__Required Parameters__



-}

describeEnvironmentManagedActions :
  
  
    ( DescribeEnvironmentManagedActionsOptions -> DescribeEnvironmentManagedActionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEnvironmentManagedActionsResult)

describeEnvironmentManagedActions setOptions =
    
    let
        requestInput = DescribeEnvironmentManagedActionsRequest
            
            options.environmentName
            
            options.environmentId
            
            options.status
            
        
        options = setOptions (DescribeEnvironmentManagedActionsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeEnvironmentManagedActions")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeEnvironmentManagedActionsRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEnvironmentManagedActions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEnvironmentManagedActionsResult" describeEnvironmentManagedActionsResultDecoder)
                
            )



{-| Options for a describeEnvironmentManagedActions request
-}
type alias DescribeEnvironmentManagedActionsOptions =
    {
    environmentName : Maybe String,environmentId : Maybe String,status : Maybe ActionStatus
    }



{-| <p>Returns AWS resources for this environment.</p>

__Required Parameters__



-}

describeEnvironmentResources :
  
  
    ( DescribeEnvironmentResourcesOptions -> DescribeEnvironmentResourcesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnvironmentResourceDescriptionsMessage)

describeEnvironmentResources setOptions =
    
    let
        requestInput = DescribeEnvironmentResourcesMessage
            
            options.environmentId
            
            options.environmentName
            
        
        options = setOptions (DescribeEnvironmentResourcesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeEnvironmentResources")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeEnvironmentResourcesMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEnvironmentResources"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEnvironmentResourcesResult" environmentResourceDescriptionsMessageDecoder)
                
            )



{-| Options for a describeEnvironmentResources request
-}
type alias DescribeEnvironmentResourcesOptions =
    {
    environmentId : Maybe String,environmentName : Maybe String
    }



{-| <p>Returns descriptions for existing environments.</p>

__Required Parameters__



-}

describeEnvironments :
  
  
    ( DescribeEnvironmentsOptions -> DescribeEnvironmentsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnvironmentDescriptionsMessage)

describeEnvironments setOptions =
    
    let
        requestInput = DescribeEnvironmentsMessage
            
            options.applicationName
            
            options.versionLabel
            
            options.environmentIds
            
            options.environmentNames
            
            options.includeDeleted
            
            options.includedDeletedBackTo
            
            options.maxRecords
            
            options.nextToken
            
        
        options = setOptions (DescribeEnvironmentsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeEnvironments")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeEnvironmentsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEnvironments"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEnvironmentsResult" environmentDescriptionsMessageDecoder)
                
            )



{-| Options for a describeEnvironments request
-}
type alias DescribeEnvironmentsOptions =
    {
    applicationName : Maybe String,versionLabel : Maybe String,environmentIds : Maybe (List String),environmentNames : Maybe (List String),includeDeleted : Maybe Bool,includedDeletedBackTo : Maybe Posix,maxRecords : Maybe Int,nextToken : Maybe String
    }



{-| <p>Returns list of event descriptions matching criteria up to the last 6 weeks.</p> <note> <p>This action returns the most recent 1,000 events from the specified <code>NextToken</code>.</p> </note>

__Required Parameters__



-}

describeEvents :
  
  
    ( DescribeEventsOptions -> DescribeEventsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EventDescriptionsMessage)

describeEvents setOptions =
    
    let
        requestInput = DescribeEventsMessage
            
            options.applicationName
            
            options.versionLabel
            
            options.templateName
            
            options.environmentId
            
            options.environmentName
            
            options.platformArn
            
            options.requestId
            
            options.severity
            
            options.startTime
            
            options.endTime
            
            options.maxRecords
            
            options.nextToken
            
        
        options = setOptions (DescribeEventsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
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
                
                (AWS.Core.Decode.ResultDecoder "DescribeEventsResult" eventDescriptionsMessageDecoder)
                
            )



{-| Options for a describeEvents request
-}
type alias DescribeEventsOptions =
    {
    applicationName : Maybe String,versionLabel : Maybe String,templateName : Maybe String,environmentId : Maybe String,environmentName : Maybe String,platformArn : Maybe String,requestId : Maybe String,severity : Maybe EventSeverity,startTime : Maybe Posix,endTime : Maybe Posix,maxRecords : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html">enhanced health reporting</a>.</p>

__Required Parameters__



-}

describeInstancesHealth :
  
  
    ( DescribeInstancesHealthOptions -> DescribeInstancesHealthOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeInstancesHealthResult)

describeInstancesHealth setOptions =
    
    let
        requestInput = DescribeInstancesHealthRequest
            
            options.environmentName
            
            options.environmentId
            
            options.attributeNames
            
            options.nextToken
            
        
        options = setOptions (DescribeInstancesHealthOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeInstancesHealth")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeInstancesHealthRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeInstancesHealth"
                
                (AWS.Core.Decode.ResultDecoder "DescribeInstancesHealthResult" describeInstancesHealthResultDecoder)
                
            )



{-| Options for a describeInstancesHealth request
-}
type alias DescribeInstancesHealthOptions =
    {
    environmentName : Maybe String,environmentId : Maybe String,attributeNames : Maybe (List InstancesHealthAttribute),nextToken : Maybe String
    }



{-| <p>Describes the version of the platform.</p>

__Required Parameters__



-}

describePlatformVersion :
  
  
    ( DescribePlatformVersionOptions -> DescribePlatformVersionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribePlatformVersionResult)

describePlatformVersion setOptions =
    
    let
        requestInput = DescribePlatformVersionRequest
            
            options.platformArn
            
        
        options = setOptions (DescribePlatformVersionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribePlatformVersion")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describePlatformVersionRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribePlatformVersion"
                
                (AWS.Core.Decode.ResultDecoder "DescribePlatformVersionResult" describePlatformVersionResultDecoder)
                
            )



{-| Options for a describePlatformVersion request
-}
type alias DescribePlatformVersionOptions =
    {
    platformArn : Maybe String
    }



{-| <p>Returns a list of the available solution stack names, with the public version first and then in reverse chronological order.</p>

__Required Parameters__



-}

listAvailableSolutionStacks :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAvailableSolutionStacksResultMessage)

listAvailableSolutionStacks =
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListAvailableSolutionStacks")]
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListAvailableSolutionStacks"
                
                (AWS.Core.Decode.ResultDecoder "ListAvailableSolutionStacksResult" listAvailableSolutionStacksResultMessageDecoder)
                
            )





{-| <p>Lists the available platforms.</p>

__Required Parameters__



-}

listPlatformVersions :
  
  
    ( ListPlatformVersionsOptions -> ListPlatformVersionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPlatformVersionsResult)

listPlatformVersions setOptions =
    
    let
        requestInput = ListPlatformVersionsRequest
            
            options.filters
            
            options.maxRecords
            
            options.nextToken
            
        
        options = setOptions (ListPlatformVersionsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListPlatformVersions")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listPlatformVersionsRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListPlatformVersions"
                
                (AWS.Core.Decode.ResultDecoder "ListPlatformVersionsResult" listPlatformVersionsResultDecoder)
                
            )



{-| Options for a listPlatformVersions request
-}
type alias ListPlatformVersionsOptions =
    {
    filters : Maybe (List PlatformFilter),maxRecords : Maybe Int,nextToken : Maybe String
    }



{-| <p>Returns the tags applied to an AWS Elastic Beanstalk resource. The response contains a list of tag key-value pairs.</p> <p>Currently, Elastic Beanstalk only supports tagging of Elastic Beanstalk environments. For details about environment tagging, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.tagging.html">Tagging Resources in Your Elastic Beanstalk Environment</a>.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

listTagsForResource :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ResourceTagsDescriptionMessage)

listTagsForResource resourceArn =
    
    let
        requestInput = ListTagsForResourceMessage
            
            resourceArn
            
        
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
                
                (AWS.Core.Decode.ResultDecoder "ListTagsForResourceResult" resourceTagsDescriptionMessageDecoder)
                
            )





{-| <p>Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.</p>

__Required Parameters__



-}

rebuildEnvironment :
  
  
    ( RebuildEnvironmentOptions -> RebuildEnvironmentOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

rebuildEnvironment setOptions =
    
    let
        requestInput = RebuildEnvironmentMessage
            
            options.environmentId
            
            options.environmentName
            
        
        options = setOptions (RebuildEnvironmentOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RebuildEnvironment")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs rebuildEnvironmentMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RebuildEnvironment"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a rebuildEnvironment request
-}
type alias RebuildEnvironmentOptions =
    {
    environmentId : Maybe String,environmentName : Maybe String
    }



{-| <p>Initiates a request to compile the specified type of information of the deployed environment.</p> <p> Setting the <code>InfoType</code> to <code>tail</code> compiles the last lines from the application server log files of every Amazon EC2 instance in your environment. </p> <p> Setting the <code>InfoType</code> to <code>bundle</code> compresses the application server log files for every Amazon EC2 instance into a <code>.zip</code> file. Legacy and .NET containers do not support bundle logs. </p> <p> Use <a>RetrieveEnvironmentInfo</a> to obtain the set of logs. </p> <p>Related Topics</p> <ul> <li> <p> <a>RetrieveEnvironmentInfo</a> </p> </li> </ul>

__Required Parameters__

* `infoType` __:__ `EnvironmentInfoType`


-}

requestEnvironmentInfo :
  
    EnvironmentInfoType ->
  
  
    ( RequestEnvironmentInfoOptions -> RequestEnvironmentInfoOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

requestEnvironmentInfo infoType setOptions =
    
    let
        requestInput = RequestEnvironmentInfoMessage
            
            options.environmentId
            
            options.environmentName
            
            infoType
            
        
        options = setOptions (RequestEnvironmentInfoOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RequestEnvironmentInfo")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs requestEnvironmentInfoMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RequestEnvironmentInfo"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a requestEnvironmentInfo request
-}
type alias RequestEnvironmentInfoOptions =
    {
    environmentId : Maybe String,environmentName : Maybe String
    }



{-| <p>Causes the environment to restart the application container server running on each Amazon EC2 instance.</p>

__Required Parameters__



-}

restartAppServer :
  
  
    ( RestartAppServerOptions -> RestartAppServerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

restartAppServer setOptions =
    
    let
        requestInput = RestartAppServerMessage
            
            options.environmentId
            
            options.environmentName
            
        
        options = setOptions (RestartAppServerOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RestartAppServer")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs restartAppServerMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RestartAppServer"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a restartAppServer request
-}
type alias RestartAppServerOptions =
    {
    environmentId : Maybe String,environmentName : Maybe String
    }



{-| <p>Retrieves the compiled information from a <a>RequestEnvironmentInfo</a> request.</p> <p>Related Topics</p> <ul> <li> <p> <a>RequestEnvironmentInfo</a> </p> </li> </ul>

__Required Parameters__

* `infoType` __:__ `EnvironmentInfoType`


-}

retrieveEnvironmentInfo :
  
    EnvironmentInfoType ->
  
  
    ( RetrieveEnvironmentInfoOptions -> RetrieveEnvironmentInfoOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RetrieveEnvironmentInfoResultMessage)

retrieveEnvironmentInfo infoType setOptions =
    
    let
        requestInput = RetrieveEnvironmentInfoMessage
            
            options.environmentId
            
            options.environmentName
            
            infoType
            
        
        options = setOptions (RetrieveEnvironmentInfoOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RetrieveEnvironmentInfo")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs retrieveEnvironmentInfoMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RetrieveEnvironmentInfo"
                
                (AWS.Core.Decode.ResultDecoder "RetrieveEnvironmentInfoResult" retrieveEnvironmentInfoResultMessageDecoder)
                
            )



{-| Options for a retrieveEnvironmentInfo request
-}
type alias RetrieveEnvironmentInfoOptions =
    {
    environmentId : Maybe String,environmentName : Maybe String
    }



{-| <p>Swaps the CNAMEs of two environments.</p>

__Required Parameters__



-}

swapEnvironmentCNAMEs :
  
  
    ( SwapEnvironmentCNAMEsOptions -> SwapEnvironmentCNAMEsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

swapEnvironmentCNAMEs setOptions =
    
    let
        requestInput = SwapEnvironmentCNAMEsMessage
            
            options.sourceEnvironmentId
            
            options.sourceEnvironmentName
            
            options.destinationEnvironmentId
            
            options.destinationEnvironmentName
            
        
        options = setOptions (SwapEnvironmentCNAMEsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SwapEnvironmentCNAMEs")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs swapEnvironmentCNAMEsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SwapEnvironmentCNAMEs"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a swapEnvironmentCNAMEs request
-}
type alias SwapEnvironmentCNAMEsOptions =
    {
    sourceEnvironmentId : Maybe String,sourceEnvironmentName : Maybe String,destinationEnvironmentId : Maybe String,destinationEnvironmentName : Maybe String
    }



{-| <p>Terminates the specified environment.</p>

__Required Parameters__



-}

terminateEnvironment :
  
  
    ( TerminateEnvironmentOptions -> TerminateEnvironmentOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnvironmentDescription)

terminateEnvironment setOptions =
    
    let
        requestInput = TerminateEnvironmentMessage
            
            options.environmentId
            
            options.environmentName
            
            options.terminateResources
            
            options.forceTerminate
            
        
        options = setOptions (TerminateEnvironmentOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "TerminateEnvironment")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs terminateEnvironmentMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TerminateEnvironment"
                
                (AWS.Core.Decode.ResultDecoder "TerminateEnvironmentResult" environmentDescriptionDecoder)
                
            )



{-| Options for a terminateEnvironment request
-}
type alias TerminateEnvironmentOptions =
    {
    environmentId : Maybe String,environmentName : Maybe String,terminateResources : Maybe Bool,forceTerminate : Maybe Bool
    }



{-| <p>Updates the specified application to have the specified properties.</p> <note> <p>If a property (for example, <code>description</code>) is not provided, the value remains unchanged. To clear these properties, specify an empty string.</p> </note>

__Required Parameters__

* `applicationName` __:__ `String`


-}

updateApplication :
  
    String ->
  
  
    ( UpdateApplicationOptions -> UpdateApplicationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ApplicationDescriptionMessage)

updateApplication applicationName setOptions =
    
    let
        requestInput = UpdateApplicationMessage
            
            applicationName
            
            options.description
            
        
        options = setOptions (UpdateApplicationOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UpdateApplication")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs updateApplicationMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateApplication"
                
                (AWS.Core.Decode.ResultDecoder "UpdateApplicationResult" applicationDescriptionMessageDecoder)
                
            )



{-| Options for a updateApplication request
-}
type alias UpdateApplicationOptions =
    {
    description : Maybe String
    }



{-| <p>Modifies lifecycle settings for an application.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `resourceLifecycleConfig` __:__ `ApplicationResourceLifecycleConfig`


-}

updateApplicationResourceLifecycle :
  
    String ->
  
    ApplicationResourceLifecycleConfig ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ApplicationResourceLifecycleDescriptionMessage)

updateApplicationResourceLifecycle applicationName resourceLifecycleConfig =
    
    let
        requestInput = UpdateApplicationResourceLifecycleMessage
            
            applicationName
            
            resourceLifecycleConfig
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UpdateApplicationResourceLifecycle")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs updateApplicationResourceLifecycleMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateApplicationResourceLifecycle"
                
                (AWS.Core.Decode.ResultDecoder "UpdateApplicationResourceLifecycleResult" applicationResourceLifecycleDescriptionMessageDecoder)
                
            )





{-| <p>Updates the specified application version to have the specified properties.</p> <note> <p>If a property (for example, <code>description</code>) is not provided, the value remains unchanged. To clear properties, specify an empty string.</p> </note>

__Required Parameters__

* `applicationName` __:__ `String`
* `versionLabel` __:__ `String`


-}

updateApplicationVersion :
  
    String ->
  
    String ->
  
  
    ( UpdateApplicationVersionOptions -> UpdateApplicationVersionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ApplicationVersionDescriptionMessage)

updateApplicationVersion applicationName versionLabel setOptions =
    
    let
        requestInput = UpdateApplicationVersionMessage
            
            applicationName
            
            versionLabel
            
            options.description
            
        
        options = setOptions (UpdateApplicationVersionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UpdateApplicationVersion")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs updateApplicationVersionMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateApplicationVersion"
                
                (AWS.Core.Decode.ResultDecoder "UpdateApplicationVersionResult" applicationVersionDescriptionMessageDecoder)
                
            )



{-| Options for a updateApplicationVersion request
-}
type alias UpdateApplicationVersionOptions =
    {
    description : Maybe String
    }



{-| <p>Updates the specified configuration template to have the specified properties or configuration option values.</p> <note> <p>If a property (for example, <code>ApplicationName</code>) is not provided, its value remains unchanged. To clear such properties, specify an empty string.</p> </note> <p>Related Topics</p> <ul> <li> <p> <a>DescribeConfigurationOptions</a> </p> </li> </ul>

__Required Parameters__

* `applicationName` __:__ `String`
* `templateName` __:__ `String`


-}

updateConfigurationTemplate :
  
    String ->
  
    String ->
  
  
    ( UpdateConfigurationTemplateOptions -> UpdateConfigurationTemplateOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConfigurationSettingsDescription)

updateConfigurationTemplate applicationName templateName setOptions =
    
    let
        requestInput = UpdateConfigurationTemplateMessage
            
            applicationName
            
            templateName
            
            options.description
            
            options.optionSettings
            
            options.optionsToRemove
            
        
        options = setOptions (UpdateConfigurationTemplateOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UpdateConfigurationTemplate")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs updateConfigurationTemplateMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateConfigurationTemplate"
                
                (AWS.Core.Decode.ResultDecoder "UpdateConfigurationTemplateResult" configurationSettingsDescriptionDecoder)
                
            )



{-| Options for a updateConfigurationTemplate request
-}
type alias UpdateConfigurationTemplateOptions =
    {
    description : Maybe String,optionSettings : Maybe (List ConfigurationOptionSetting),optionsToRemove : Maybe (List OptionSpecification)
    }



{-| <p>Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment.</p> <p> Attempting to update both the release and configuration is not allowed and AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error. </p> <p> When updating the configuration settings to a new template or individual settings, a draft configuration is created and <a>DescribeConfigurationSettings</a> for this environment returns two setting descriptions with different <code>DeploymentStatus</code> values. </p>

__Required Parameters__



-}

updateEnvironment :
  
  
    ( UpdateEnvironmentOptions -> UpdateEnvironmentOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnvironmentDescription)

updateEnvironment setOptions =
    
    let
        requestInput = UpdateEnvironmentMessage
            
            options.applicationName
            
            options.environmentId
            
            options.environmentName
            
            options.groupName
            
            options.description
            
            options.tier
            
            options.versionLabel
            
            options.templateName
            
            options.solutionStackName
            
            options.platformArn
            
            options.optionSettings
            
            options.optionsToRemove
            
        
        options = setOptions (UpdateEnvironmentOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UpdateEnvironment")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs updateEnvironmentMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateEnvironment"
                
                (AWS.Core.Decode.ResultDecoder "UpdateEnvironmentResult" environmentDescriptionDecoder)
                
            )



{-| Options for a updateEnvironment request
-}
type alias UpdateEnvironmentOptions =
    {
    applicationName : Maybe String,environmentId : Maybe String,environmentName : Maybe String,groupName : Maybe String,description : Maybe String,tier : Maybe EnvironmentTier,versionLabel : Maybe String,templateName : Maybe String,solutionStackName : Maybe String,platformArn : Maybe String,optionSettings : Maybe (List ConfigurationOptionSetting),optionsToRemove : Maybe (List OptionSpecification)
    }



{-| <p>Update the list of tags applied to an AWS Elastic Beanstalk resource. Two lists can be passed: <code>TagsToAdd</code> for tags to add or update, and <code>TagsToRemove</code>.</p> <p>Currently, Elastic Beanstalk only supports tagging of Elastic Beanstalk environments. For details about environment tagging, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.tagging.html">Tagging Resources in Your Elastic Beanstalk Environment</a>.</p> <p>If you create a custom IAM user policy to control permission to this operation, specify one of the following two virtual actions (or both) instead of the API operation name:</p> <dl> <dt>elasticbeanstalk:AddTags</dt> <dd> <p>Controls permission to call <code>UpdateTagsForResource</code> and pass a list of tags to add in the <code>TagsToAdd</code> parameter.</p> </dd> <dt>elasticbeanstalk:RemoveTags</dt> <dd> <p>Controls permission to call <code>UpdateTagsForResource</code> and pass a list of tag keys to remove in the <code>TagsToRemove</code> parameter.</p> </dd> </dl> <p>For details about creating a custom user policy, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies">Creating a Custom User Policy</a>.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

updateTagsForResource :
  
    String ->
  
  
    ( UpdateTagsForResourceOptions -> UpdateTagsForResourceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateTagsForResource resourceArn setOptions =
    
    let
        requestInput = UpdateTagsForResourceMessage
            
            resourceArn
            
            options.tagsToAdd
            
            options.tagsToRemove
            
        
        options = setOptions (UpdateTagsForResourceOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UpdateTagsForResource")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs updateTagsForResourceMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateTagsForResource"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a updateTagsForResource request
-}
type alias UpdateTagsForResourceOptions =
    {
    tagsToAdd : Maybe (List Tag),tagsToRemove : Maybe (List String)
    }



{-| <p>Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid.</p> <p>This action returns a list of messages indicating any errors or warnings associated with the selection of option values.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `optionSettings` __:__ `(List ConfigurationOptionSetting)`


-}

validateConfigurationSettings :
  
    String ->
  
    (List ConfigurationOptionSetting) ->
  
  
    ( ValidateConfigurationSettingsOptions -> ValidateConfigurationSettingsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConfigurationSettingsValidationMessages)

validateConfigurationSettings applicationName optionSettings setOptions =
    
    let
        requestInput = ValidateConfigurationSettingsMessage
            
            applicationName
            
            options.templateName
            
            options.environmentName
            
            optionSettings
            
        
        options = setOptions (ValidateConfigurationSettingsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ValidateConfigurationSettings")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs validateConfigurationSettingsMessageEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ValidateConfigurationSettings"
                
                (AWS.Core.Decode.ResultDecoder "ValidateConfigurationSettingsResult" configurationSettingsValidationMessagesDecoder)
                
            )



{-| Options for a validateConfigurationSettings request
-}
type alias ValidateConfigurationSettingsOptions =
    {
    templateName : Maybe String,environmentName : Maybe String
    }




{-| One of

* `ActionHistoryStatus_Completed`
* `ActionHistoryStatus_Failed`
* `ActionHistoryStatus_Unknown`

-}
type ActionHistoryStatus
    = ActionHistoryStatus_Completed
    | ActionHistoryStatus_Failed
    | ActionHistoryStatus_Unknown



actionHistoryStatusDecoder : JD.Decoder ActionHistoryStatus
actionHistoryStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Completed" ->
                        JD.succeed ActionHistoryStatus_Completed

                    "Failed" ->
                        JD.succeed ActionHistoryStatus_Failed

                    "Unknown" ->
                        JD.succeed ActionHistoryStatus_Unknown


                    _ ->
                        JD.fail "bad thing"
            )




actionHistoryStatusToString : ActionHistoryStatus -> String
actionHistoryStatusToString val =
    case val of
        ActionHistoryStatus_Completed ->
            "Completed"

        ActionHistoryStatus_Failed ->
            "Failed"

        ActionHistoryStatus_Unknown ->
            "Unknown"




{-| One of

* `ActionStatus_Scheduled`
* `ActionStatus_Pending`
* `ActionStatus_Running`
* `ActionStatus_Unknown`

-}
type ActionStatus
    = ActionStatus_Scheduled
    | ActionStatus_Pending
    | ActionStatus_Running
    | ActionStatus_Unknown



actionStatusDecoder : JD.Decoder ActionStatus
actionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Scheduled" ->
                        JD.succeed ActionStatus_Scheduled

                    "Pending" ->
                        JD.succeed ActionStatus_Pending

                    "Running" ->
                        JD.succeed ActionStatus_Running

                    "Unknown" ->
                        JD.succeed ActionStatus_Unknown


                    _ ->
                        JD.fail "bad thing"
            )




actionStatusToString : ActionStatus -> String
actionStatusToString val =
    case val of
        ActionStatus_Scheduled ->
            "Scheduled"

        ActionStatus_Pending ->
            "Pending"

        ActionStatus_Running ->
            "Running"

        ActionStatus_Unknown ->
            "Unknown"




{-| One of

* `ActionType_InstanceRefresh`
* `ActionType_PlatformUpdate`
* `ActionType_Unknown`

-}
type ActionType
    = ActionType_InstanceRefresh
    | ActionType_PlatformUpdate
    | ActionType_Unknown



actionTypeDecoder : JD.Decoder ActionType
actionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InstanceRefresh" ->
                        JD.succeed ActionType_InstanceRefresh

                    "PlatformUpdate" ->
                        JD.succeed ActionType_PlatformUpdate

                    "Unknown" ->
                        JD.succeed ActionType_Unknown


                    _ ->
                        JD.fail "bad thing"
            )




actionTypeToString : ActionType -> String
actionTypeToString val =
    case val of
        ActionType_InstanceRefresh ->
            "InstanceRefresh"

        ActionType_PlatformUpdate ->
            "PlatformUpdate"

        ActionType_Unknown ->
            "Unknown"




{-| <p>Describes the properties of an application.</p>
-}
type alias ApplicationDescription =
    { applicationArn : Maybe String
    , applicationName : Maybe String
    , description : Maybe String
    , dateCreated : Maybe Posix
    , dateUpdated : Maybe Posix
    , versions : Maybe (List String)
    , configurationTemplates : Maybe (List String)
    , resourceLifecycleConfig : Maybe ApplicationResourceLifecycleConfig
    }



applicationDescriptionDecoder : JD.Decoder ApplicationDescription
applicationDescriptionDecoder =
    JD.succeed ApplicationDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationArn", "applicationArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationName", "applicationName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DateCreated", "dateCreated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DateUpdated", "dateUpdated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Versions", "versions"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConfigurationTemplates", "configurationTemplates"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceLifecycleConfig", "resourceLifecycleConfig"]
            applicationResourceLifecycleConfigDecoder
        )
        




applicationDescriptionToString : ApplicationDescription -> String -- List (String, String)
applicationDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "applicationArn" "" -- val.applicationArn
        
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "dateCreated" "" -- val.dateCreated
        
    --     |> Dict.insert
    --         "dateUpdated" "" -- val.dateUpdated
        
    --     |> Dict.insert
    --         "versions" "" -- val.versions
        
    --     |> Dict.insert
    --         "configurationTemplates" "" -- val.configurationTemplates
        
    --     |> Dict.insert
    --         "resourceLifecycleConfig" "" -- val.resourceLifecycleConfig
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from applicationDescriptio
-}
type alias ApplicationDescriptionMessage =
    { application : Maybe ApplicationDescription
    }



applicationDescriptionMessageDecoder : JD.Decoder ApplicationDescriptionMessage
applicationDescriptionMessageDecoder =
    JD.succeed ApplicationDescriptionMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Application", "application"]
            applicationDescriptionDecoder
        )
        




applicationDescriptionMessageToString : ApplicationDescriptionMessage -> String -- List (String, String)
applicationDescriptionMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "application" "" -- val.application
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from applicationDescription
-}
type alias ApplicationDescriptionsMessage =
    { applications : Maybe (List ApplicationDescription)
    }



applicationDescriptionsMessageDecoder : JD.Decoder ApplicationDescriptionsMessage
applicationDescriptionsMessageDecoder =
    JD.succeed ApplicationDescriptionsMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Applications", "applications"]
            (JD.list applicationDescriptionDecoder)
        )
        




applicationDescriptionsMessageToString : ApplicationDescriptionsMessage -> String -- List (String, String)
applicationDescriptionsMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "applications" "" -- val.applications
        
    --     |> Dict.toList
    ""



{-| <p>Application request metrics for an AWS Elastic Beanstalk environment.</p>
-}
type alias ApplicationMetrics =
    { duration : Maybe Int
    , requestCount : Maybe Int
    , statusCodes : Maybe StatusCodes
    , latency : Maybe Latency
    }



applicationMetricsDecoder : JD.Decoder ApplicationMetrics
applicationMetricsDecoder =
    JD.succeed ApplicationMetrics
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Duration", "duration"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RequestCount", "requestCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusCodes", "statusCodes"]
            statusCodesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Latency", "latency"]
            latencyDecoder
        )
        




applicationMetricsToString : ApplicationMetrics -> String -- List (String, String)
applicationMetricsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "duration" "" -- val.duration
        
    --     |> Dict.insert
    --         "requestCount" "" -- val.requestCount
        
    --     |> Dict.insert
    --         "statusCodes" "" -- val.statusCodes
        
    --     |> Dict.insert
    --         "latency" "" -- val.latency
        
    --     |> Dict.toList
    ""



{-| <p>The resource lifecycle configuration for an application. Defines lifecycle settings for resources that belong to the application, and the service role that Elastic Beanstalk assumes in order to apply lifecycle settings. The version lifecycle configuration defines lifecycle settings for application versions.</p>
-}
type alias ApplicationResourceLifecycleConfig =
    { serviceRole : Maybe String
    , versionLifecycleConfig : Maybe ApplicationVersionLifecycleConfig
    }



applicationResourceLifecycleConfigDecoder : JD.Decoder ApplicationResourceLifecycleConfig
applicationResourceLifecycleConfigDecoder =
    JD.succeed ApplicationResourceLifecycleConfig
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServiceRole", "serviceRole"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VersionLifecycleConfig", "versionLifecycleConfig"]
            applicationVersionLifecycleConfigDecoder
        )
        




applicationResourceLifecycleConfigToString : ApplicationResourceLifecycleConfig -> String -- List (String, String)
applicationResourceLifecycleConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serviceRole" "" -- val.serviceRole
        
    --     |> Dict.insert
    --         "versionLifecycleConfig" "" -- val.versionLifecycleConfig
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from applicationResourceLifecycleDescriptio
-}
type alias ApplicationResourceLifecycleDescriptionMessage =
    { applicationName : Maybe String
    , resourceLifecycleConfig : Maybe ApplicationResourceLifecycleConfig
    }



applicationResourceLifecycleDescriptionMessageDecoder : JD.Decoder ApplicationResourceLifecycleDescriptionMessage
applicationResourceLifecycleDescriptionMessageDecoder =
    JD.succeed ApplicationResourceLifecycleDescriptionMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationName", "applicationName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceLifecycleConfig", "resourceLifecycleConfig"]
            applicationResourceLifecycleConfigDecoder
        )
        




applicationResourceLifecycleDescriptionMessageToString : ApplicationResourceLifecycleDescriptionMessage -> String -- List (String, String)
applicationResourceLifecycleDescriptionMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
        
    --     |> Dict.insert
    --         "resourceLifecycleConfig" "" -- val.resourceLifecycleConfig
        
    --     |> Dict.toList
    ""



{-| <p>Describes the properties of an application version.</p>
-}
type alias ApplicationVersionDescription =
    { applicationVersionArn : Maybe String
    , applicationName : Maybe String
    , description : Maybe String
    , versionLabel : Maybe String
    , sourceBuildInformation : Maybe SourceBuildInformation
    , buildArn : Maybe String
    , sourceBundle : Maybe S3Location
    , dateCreated : Maybe Posix
    , dateUpdated : Maybe Posix
    , status : Maybe ApplicationVersionStatus
    }



applicationVersionDescriptionDecoder : JD.Decoder ApplicationVersionDescription
applicationVersionDescriptionDecoder =
    JD.succeed ApplicationVersionDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationVersionArn", "applicationVersionArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationName", "applicationName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VersionLabel", "versionLabel"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceBuildInformation", "sourceBuildInformation"]
            sourceBuildInformationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BuildArn", "buildArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceBundle", "sourceBundle"]
            s3LocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DateCreated", "dateCreated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DateUpdated", "dateUpdated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            applicationVersionStatusDecoder
        )
        




applicationVersionDescriptionToString : ApplicationVersionDescription -> String -- List (String, String)
applicationVersionDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "applicationVersionArn" "" -- val.applicationVersionArn
        
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "versionLabel" "" -- val.versionLabel
        
    --     |> Dict.insert
    --         "sourceBuildInformation" "" -- val.sourceBuildInformation
        
    --     |> Dict.insert
    --         "buildArn" "" -- val.buildArn
        
    --     |> Dict.insert
    --         "sourceBundle" "" -- val.sourceBundle
        
    --     |> Dict.insert
    --         "dateCreated" "" -- val.dateCreated
        
    --     |> Dict.insert
    --         "dateUpdated" "" -- val.dateUpdated
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from applicationVersionDescriptio
-}
type alias ApplicationVersionDescriptionMessage =
    { applicationVersion : Maybe ApplicationVersionDescription
    }



applicationVersionDescriptionMessageDecoder : JD.Decoder ApplicationVersionDescriptionMessage
applicationVersionDescriptionMessageDecoder =
    JD.succeed ApplicationVersionDescriptionMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationVersion", "applicationVersion"]
            applicationVersionDescriptionDecoder
        )
        




applicationVersionDescriptionMessageToString : ApplicationVersionDescriptionMessage -> String -- List (String, String)
applicationVersionDescriptionMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "applicationVersion" "" -- val.applicationVersion
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from applicationVersionDescription
-}
type alias ApplicationVersionDescriptionsMessage =
    { applicationVersions : Maybe (List ApplicationVersionDescription)
    , nextToken : Maybe String
    }



applicationVersionDescriptionsMessageDecoder : JD.Decoder ApplicationVersionDescriptionsMessage
applicationVersionDescriptionsMessageDecoder =
    JD.succeed ApplicationVersionDescriptionsMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationVersions", "applicationVersions"]
            (JD.list applicationVersionDescriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




applicationVersionDescriptionsMessageToString : ApplicationVersionDescriptionsMessage -> String -- List (String, String)
applicationVersionDescriptionsMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "applicationVersions" "" -- val.applicationVersions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>The application version lifecycle settings for an application. Defines the rules that Elastic Beanstalk applies to an application's versions in order to avoid hitting the per-region limit for application versions.</p> <p>When Elastic Beanstalk deletes an application version from its database, you can no longer deploy that version to an environment. The source bundle remains in S3 unless you configure the rule to delete it.</p>
-}
type alias ApplicationVersionLifecycleConfig =
    { maxCountRule : Maybe MaxCountRule
    , maxAgeRule : Maybe MaxAgeRule
    }



applicationVersionLifecycleConfigDecoder : JD.Decoder ApplicationVersionLifecycleConfig
applicationVersionLifecycleConfigDecoder =
    JD.succeed ApplicationVersionLifecycleConfig
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxCountRule", "maxCountRule"]
            maxCountRuleDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxAgeRule", "maxAgeRule"]
            maxAgeRuleDecoder
        )
        




applicationVersionLifecycleConfigToString : ApplicationVersionLifecycleConfig -> String -- List (String, String)
applicationVersionLifecycleConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "maxCountRule" "" -- val.maxCountRule
        
    --     |> Dict.insert
    --         "maxAgeRule" "" -- val.maxAgeRule
        
    --     |> Dict.toList
    ""



{-| One of

* `ApplicationVersionStatus_Processed`
* `ApplicationVersionStatus_Unprocessed`
* `ApplicationVersionStatus_Failed`
* `ApplicationVersionStatus_Processing`
* `ApplicationVersionStatus_Building`

-}
type ApplicationVersionStatus
    = ApplicationVersionStatus_Processed
    | ApplicationVersionStatus_Unprocessed
    | ApplicationVersionStatus_Failed
    | ApplicationVersionStatus_Processing
    | ApplicationVersionStatus_Building



applicationVersionStatusDecoder : JD.Decoder ApplicationVersionStatus
applicationVersionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Processed" ->
                        JD.succeed ApplicationVersionStatus_Processed

                    "Unprocessed" ->
                        JD.succeed ApplicationVersionStatus_Unprocessed

                    "Failed" ->
                        JD.succeed ApplicationVersionStatus_Failed

                    "Processing" ->
                        JD.succeed ApplicationVersionStatus_Processing

                    "Building" ->
                        JD.succeed ApplicationVersionStatus_Building


                    _ ->
                        JD.fail "bad thing"
            )




applicationVersionStatusToString : ApplicationVersionStatus -> String
applicationVersionStatusToString val =
    case val of
        ApplicationVersionStatus_Processed ->
            "Processed"

        ApplicationVersionStatus_Unprocessed ->
            "Unprocessed"

        ApplicationVersionStatus_Failed ->
            "Failed"

        ApplicationVersionStatus_Processing ->
            "Processing"

        ApplicationVersionStatus_Building ->
            "Building"




{-| Type of HTTP response from applyEnvironmentManagedActi
-}
type alias ApplyEnvironmentManagedActionResult =
    { actionId : Maybe String
    , actionDescription : Maybe String
    , actionType : Maybe ActionType
    , status : Maybe String
    }



applyEnvironmentManagedActionResultDecoder : JD.Decoder ApplyEnvironmentManagedActionResult
applyEnvironmentManagedActionResultDecoder =
    JD.succeed ApplyEnvironmentManagedActionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActionId", "actionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActionDescription", "actionDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActionType", "actionType"]
            actionTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        




applyEnvironmentManagedActionResultToString : ApplyEnvironmentManagedActionResult -> String -- List (String, String)
applyEnvironmentManagedActionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "actionId" "" -- val.actionId
        
    --     |> Dict.insert
    --         "actionDescription" "" -- val.actionDescription
        
    --     |> Dict.insert
    --         "actionType" "" -- val.actionType
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| <p>Describes an Auto Scaling launch configuration.</p>
-}
type alias AutoScalingGroup =
    { name : Maybe String
    }



autoScalingGroupDecoder : JD.Decoder AutoScalingGroup
autoScalingGroupDecoder =
    JD.succeed AutoScalingGroup
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




autoScalingGroupToString : AutoScalingGroup -> String -- List (String, String)
autoScalingGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Settings for an AWS CodeBuild build.</p>
-}
type alias BuildConfiguration =
    { artifactName : Maybe String
    , codeBuildServiceRole : String
    , computeType : Maybe ComputeType
    , image : String
    , timeoutInMinutes : Maybe Int
    }



buildConfigurationDecoder : JD.Decoder BuildConfiguration
buildConfigurationDecoder =
    JD.succeed BuildConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ArtifactName", "artifactName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CodeBuildServiceRole", "codeBuildServiceRole"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComputeType", "computeType"]
            computeTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Image", "image"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimeoutInMinutes", "timeoutInMinutes"]
            JD.int
        )
        




buildConfigurationToString : BuildConfiguration -> String -- List (String, String)
buildConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "artifactName" "" -- val.artifactName
        
    --     |> Dict.insert
    --         "codeBuildServiceRole" "" -- val.codeBuildServiceRole
        
    --     |> Dict.insert
    --         "computeType" "" -- val.computeType
        
    --     |> Dict.insert
    --         "image" "" -- val.image
        
    --     |> Dict.insert
    --         "timeoutInMinutes" "" -- val.timeoutInMinutes
        
    --     |> Dict.toList
    ""



{-| <p>The builder used to build the custom platform.</p>
-}
type alias Builder =
    { aRN : Maybe String
    }



builderDecoder : JD.Decoder Builder
builderDecoder =
    JD.succeed Builder
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ARN", "aRN"]
            JD.string
        )
        




builderToString : Builder -> String -- List (String, String)
builderToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "aRN" "" -- val.aRN
        
    --     |> Dict.toList
    ""



{-| <p>CPU utilization metrics for an instance.</p>
-}
type alias CPUUtilization =
    { user : Maybe Float
    , nice : Maybe Float
    , system : Maybe Float
    , idle : Maybe Float
    , iOWait : Maybe Float
    , iRQ : Maybe Float
    , softIRQ : Maybe Float
    , privileged : Maybe Float
    }



cPUUtilizationDecoder : JD.Decoder CPUUtilization
cPUUtilizationDecoder =
    JD.succeed CPUUtilization
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["User", "user"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Nice", "nice"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["System", "system"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Idle", "idle"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IOWait", "iOWait"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IRQ", "iRQ"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SoftIRQ", "softIRQ"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Privileged", "privileged"]
            JD.float
        )
        




cPUUtilizationToString : CPUUtilization -> String -- List (String, String)
cPUUtilizationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "user" "" -- val.user
        
    --     |> Dict.insert
    --         "nice" "" -- val.nice
        
    --     |> Dict.insert
    --         "system" "" -- val.system
        
    --     |> Dict.insert
    --         "idle" "" -- val.idle
        
    --     |> Dict.insert
    --         "iOWait" "" -- val.iOWait
        
    --     |> Dict.insert
    --         "iRQ" "" -- val.iRQ
        
    --     |> Dict.insert
    --         "softIRQ" "" -- val.softIRQ
        
    --     |> Dict.insert
    --         "privileged" "" -- val.privileged
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from checkDNSAvailabilityResul
-}
type alias CheckDNSAvailabilityResultMessage =
    { available : Maybe Bool
    , fullyQualifiedCNAME : Maybe String
    }



checkDNSAvailabilityResultMessageDecoder : JD.Decoder CheckDNSAvailabilityResultMessage
checkDNSAvailabilityResultMessageDecoder =
    JD.succeed CheckDNSAvailabilityResultMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Available", "available"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FullyQualifiedCNAME", "fullyQualifiedCNAME"]
            JD.string
        )
        




checkDNSAvailabilityResultMessageToString : CheckDNSAvailabilityResultMessage -> String -- List (String, String)
checkDNSAvailabilityResultMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "available" "" -- val.available
        
    --     |> Dict.insert
    --         "fullyQualifiedCNAME" "" -- val.fullyQualifiedCNAME
        
    --     |> Dict.toList
    ""



{-| One of

* `ComputeType_BUILD_GENERAL1_SMALL`
* `ComputeType_BUILD_GENERAL1_MEDIUM`
* `ComputeType_BUILD_GENERAL1_LARGE`

-}
type ComputeType
    = ComputeType_BUILD_GENERAL1_SMALL
    | ComputeType_BUILD_GENERAL1_MEDIUM
    | ComputeType_BUILD_GENERAL1_LARGE



computeTypeDecoder : JD.Decoder ComputeType
computeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BUILD_GENERAL1_SMALL" ->
                        JD.succeed ComputeType_BUILD_GENERAL1_SMALL

                    "BUILD_GENERAL1_MEDIUM" ->
                        JD.succeed ComputeType_BUILD_GENERAL1_MEDIUM

                    "BUILD_GENERAL1_LARGE" ->
                        JD.succeed ComputeType_BUILD_GENERAL1_LARGE


                    _ ->
                        JD.fail "bad thing"
            )




computeTypeToString : ComputeType -> String
computeTypeToString val =
    case val of
        ComputeType_BUILD_GENERAL1_SMALL ->
            "BUILD_GENERAL1_SMALL"

        ComputeType_BUILD_GENERAL1_MEDIUM ->
            "BUILD_GENERAL1_MEDIUM"

        ComputeType_BUILD_GENERAL1_LARGE ->
            "BUILD_GENERAL1_LARGE"




{-| One of

* `ConfigurationDeploymentStatus_deployed`
* `ConfigurationDeploymentStatus_pending`
* `ConfigurationDeploymentStatus_failed`

-}
type ConfigurationDeploymentStatus
    = ConfigurationDeploymentStatus_deployed
    | ConfigurationDeploymentStatus_pending
    | ConfigurationDeploymentStatus_failed



configurationDeploymentStatusDecoder : JD.Decoder ConfigurationDeploymentStatus
configurationDeploymentStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "deployed" ->
                        JD.succeed ConfigurationDeploymentStatus_deployed

                    "pending" ->
                        JD.succeed ConfigurationDeploymentStatus_pending

                    "failed" ->
                        JD.succeed ConfigurationDeploymentStatus_failed


                    _ ->
                        JD.fail "bad thing"
            )




configurationDeploymentStatusToString : ConfigurationDeploymentStatus -> String
configurationDeploymentStatusToString val =
    case val of
        ConfigurationDeploymentStatus_deployed ->
            "deployed"

        ConfigurationDeploymentStatus_pending ->
            "pending"

        ConfigurationDeploymentStatus_failed ->
            "failed"




{-| <p>Describes the possible values for a configuration option.</p>
-}
type alias ConfigurationOptionDescription =
    { namespace : Maybe String
    , name : Maybe String
    , defaultValue : Maybe String
    , changeSeverity : Maybe String
    , userDefined : Maybe Bool
    , valueType : Maybe ConfigurationOptionValueType
    , valueOptions : Maybe (List String)
    , minValue : Maybe Int
    , maxValue : Maybe Int
    , maxLength : Maybe Int
    , regex : Maybe OptionRestrictionRegex
    }



configurationOptionDescriptionDecoder : JD.Decoder ConfigurationOptionDescription
configurationOptionDescriptionDecoder =
    JD.succeed ConfigurationOptionDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Namespace", "namespace"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeSeverity", "changeSeverity"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserDefined", "userDefined"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ValueType", "valueType"]
            configurationOptionValueTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ValueOptions", "valueOptions"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinValue", "minValue"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxValue", "maxValue"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxLength", "maxLength"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Regex", "regex"]
            optionRestrictionRegexDecoder
        )
        




configurationOptionDescriptionToString : ConfigurationOptionDescription -> String -- List (String, String)
configurationOptionDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "namespace" "" -- val.namespace
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "changeSeverity" "" -- val.changeSeverity
        
    --     |> Dict.insert
    --         "userDefined" "" -- val.userDefined
        
    --     |> Dict.insert
    --         "valueType" "" -- val.valueType
        
    --     |> Dict.insert
    --         "valueOptions" "" -- val.valueOptions
        
    --     |> Dict.insert
    --         "minValue" "" -- val.minValue
        
    --     |> Dict.insert
    --         "maxValue" "" -- val.maxValue
        
    --     |> Dict.insert
    --         "maxLength" "" -- val.maxLength
        
    --     |> Dict.insert
    --         "regex" "" -- val.regex
        
    --     |> Dict.toList
    ""



{-| <p> A specification identifying an individual configuration option along with its current value. For a list of possible option values, go to <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html">Option Values</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>. </p>
-}
type alias ConfigurationOptionSetting =
    { resourceName : Maybe String
    , namespace : Maybe String
    , optionName : Maybe String
    , value : Maybe String
    }



configurationOptionSettingDecoder : JD.Decoder ConfigurationOptionSetting
configurationOptionSettingDecoder =
    JD.succeed ConfigurationOptionSetting
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceName", "resourceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Namespace", "namespace"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionName", "optionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




configurationOptionSettingToString : ConfigurationOptionSetting -> String -- List (String, String)
configurationOptionSettingToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceName" "" -- val.resourceName
        
    --     |> Dict.insert
    --         "namespace" "" -- val.namespace
        
    --     |> Dict.insert
    --         "optionName" "" -- val.optionName
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| One of

* `ConfigurationOptionValueType_Scalar`
* `ConfigurationOptionValueType_List`

-}
type ConfigurationOptionValueType
    = ConfigurationOptionValueType_Scalar
    | ConfigurationOptionValueType_List



configurationOptionValueTypeDecoder : JD.Decoder ConfigurationOptionValueType
configurationOptionValueTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Scalar" ->
                        JD.succeed ConfigurationOptionValueType_Scalar

                    "List" ->
                        JD.succeed ConfigurationOptionValueType_List


                    _ ->
                        JD.fail "bad thing"
            )




configurationOptionValueTypeToString : ConfigurationOptionValueType -> String
configurationOptionValueTypeToString val =
    case val of
        ConfigurationOptionValueType_Scalar ->
            "Scalar"

        ConfigurationOptionValueType_List ->
            "List"




{-| Type of HTTP response from configurationOptionsDes
-}
type alias ConfigurationOptionsDescription =
    { solutionStackName : Maybe String
    , platformArn : Maybe String
    , options : Maybe (List ConfigurationOptionDescription)
    }



configurationOptionsDescriptionDecoder : JD.Decoder ConfigurationOptionsDescription
configurationOptionsDescriptionDecoder =
    JD.succeed ConfigurationOptionsDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SolutionStackName", "solutionStackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformArn", "platformArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Options", "options"]
            (JD.list configurationOptionDescriptionDecoder)
        )
        




configurationOptionsDescriptionToString : ConfigurationOptionsDescription -> String -- List (String, String)
configurationOptionsDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "solutionStackName" "" -- val.solutionStackName
        
    --     |> Dict.insert
    --         "platformArn" "" -- val.platformArn
        
    --     |> Dict.insert
    --         "options" "" -- val.options
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from configurationSettingsDes
-}
type alias ConfigurationSettingsDescription =
    { solutionStackName : Maybe String
    , platformArn : Maybe String
    , applicationName : Maybe String
    , templateName : Maybe String
    , description : Maybe String
    , environmentName : Maybe String
    , deploymentStatus : Maybe ConfigurationDeploymentStatus
    , dateCreated : Maybe Posix
    , dateUpdated : Maybe Posix
    , optionSettings : Maybe (List ConfigurationOptionSetting)
    }



configurationSettingsDescriptionDecoder : JD.Decoder ConfigurationSettingsDescription
configurationSettingsDescriptionDecoder =
    JD.succeed ConfigurationSettingsDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SolutionStackName", "solutionStackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformArn", "platformArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationName", "applicationName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TemplateName", "templateName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnvironmentName", "environmentName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeploymentStatus", "deploymentStatus"]
            configurationDeploymentStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DateCreated", "dateCreated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DateUpdated", "dateUpdated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionSettings", "optionSettings"]
            (JD.list configurationOptionSettingDecoder)
        )
        




configurationSettingsDescriptionToString : ConfigurationSettingsDescription -> String -- List (String, String)
configurationSettingsDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "solutionStackName" "" -- val.solutionStackName
        
    --     |> Dict.insert
    --         "platformArn" "" -- val.platformArn
        
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
        
    --     |> Dict.insert
    --         "templateName" "" -- val.templateName
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "environmentName" "" -- val.environmentName
        
    --     |> Dict.insert
    --         "deploymentStatus" "" -- val.deploymentStatus
        
    --     |> Dict.insert
    --         "dateCreated" "" -- val.dateCreated
        
    --     |> Dict.insert
    --         "dateUpdated" "" -- val.dateUpdated
        
    --     |> Dict.insert
    --         "optionSettings" "" -- val.optionSettings
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from configurationSettingsDesc
-}
type alias ConfigurationSettingsDescriptions =
    { configurationSettings : Maybe (List ConfigurationSettingsDescription)
    }



configurationSettingsDescriptionsDecoder : JD.Decoder ConfigurationSettingsDescriptions
configurationSettingsDescriptionsDecoder =
    JD.succeed ConfigurationSettingsDescriptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConfigurationSettings", "configurationSettings"]
            (JD.list configurationSettingsDescriptionDecoder)
        )
        




configurationSettingsDescriptionsToString : ConfigurationSettingsDescriptions -> String -- List (String, String)
configurationSettingsDescriptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "configurationSettings" "" -- val.configurationSettings
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from configurationSettingsValidation
-}
type alias ConfigurationSettingsValidationMessages =
    { messages : Maybe (List ValidationMessage)
    }



configurationSettingsValidationMessagesDecoder : JD.Decoder ConfigurationSettingsValidationMessages
configurationSettingsValidationMessagesDecoder =
    JD.succeed ConfigurationSettingsValidationMessages
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Messages", "messages"]
            (JD.list validationMessageDecoder)
        )
        




configurationSettingsValidationMessagesToString : ConfigurationSettingsValidationMessages -> String -- List (String, String)
configurationSettingsValidationMessagesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "messages" "" -- val.messages
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createPlatformVersi
-}
type alias CreatePlatformVersionResult =
    { platformSummary : Maybe PlatformSummary
    , builder : Maybe Builder
    }



createPlatformVersionResultDecoder : JD.Decoder CreatePlatformVersionResult
createPlatformVersionResultDecoder =
    JD.succeed CreatePlatformVersionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformSummary", "platformSummary"]
            platformSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Builder", "builder"]
            builderDecoder
        )
        




createPlatformVersionResultToString : CreatePlatformVersionResult -> String -- List (String, String)
createPlatformVersionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "platformSummary" "" -- val.platformSummary
        
    --     |> Dict.insert
    --         "builder" "" -- val.builder
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createStorageLocationResul
-}
type alias CreateStorageLocationResultMessage =
    { s3Bucket : Maybe String
    }



createStorageLocationResultMessageDecoder : JD.Decoder CreateStorageLocationResultMessage
createStorageLocationResultMessageDecoder =
    JD.succeed CreateStorageLocationResultMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3Bucket", "s3Bucket"]
            JD.string
        )
        




createStorageLocationResultMessageToString : CreateStorageLocationResultMessage -> String -- List (String, String)
createStorageLocationResultMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s3Bucket" "" -- val.s3Bucket
        
    --     |> Dict.toList
    ""



{-| <p>A custom AMI available to platforms.</p>
-}
type alias CustomAmi =
    { virtualizationType : Maybe String
    , imageId : Maybe String
    }



customAmiDecoder : JD.Decoder CustomAmi
customAmiDecoder =
    JD.succeed CustomAmi
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VirtualizationType", "virtualizationType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageId", "imageId"]
            JD.string
        )
        




customAmiToString : CustomAmi -> String -- List (String, String)
customAmiToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualizationType" "" -- val.virtualizationType
        
    --     |> Dict.insert
    --         "imageId" "" -- val.imageId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deletePlatformVersi
-}
type alias DeletePlatformVersionResult =
    { platformSummary : Maybe PlatformSummary
    }



deletePlatformVersionResultDecoder : JD.Decoder DeletePlatformVersionResult
deletePlatformVersionResultDecoder =
    JD.succeed DeletePlatformVersionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformSummary", "platformSummary"]
            platformSummaryDecoder
        )
        




deletePlatformVersionResultToString : DeletePlatformVersionResult -> String -- List (String, String)
deletePlatformVersionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "platformSummary" "" -- val.platformSummary
        
    --     |> Dict.toList
    ""



{-| <p>Information about an application version deployment.</p>
-}
type alias Deployment =
    { versionLabel : Maybe String
    , deploymentId : Maybe Int
    , status : Maybe String
    , deploymentTime : Maybe Posix
    }



deploymentDecoder : JD.Decoder Deployment
deploymentDecoder =
    JD.succeed Deployment
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VersionLabel", "versionLabel"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeploymentId", "deploymentId"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeploymentTime", "deploymentTime"]
            JDX.datetime
        )
        




deploymentToString : Deployment -> String -- List (String, String)
deploymentToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "versionLabel" "" -- val.versionLabel
        
    --     |> Dict.insert
    --         "deploymentId" "" -- val.deploymentId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "deploymentTime" "" -- val.deploymentTime
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAccountAttribut
-}
type alias DescribeAccountAttributesResult =
    { resourceQuotas : Maybe ResourceQuotas
    }



describeAccountAttributesResultDecoder : JD.Decoder DescribeAccountAttributesResult
describeAccountAttributesResultDecoder =
    JD.succeed DescribeAccountAttributesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceQuotas", "resourceQuotas"]
            resourceQuotasDecoder
        )
        




describeAccountAttributesResultToString : DescribeAccountAttributesResult -> String -- List (String, String)
describeAccountAttributesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceQuotas" "" -- val.resourceQuotas
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEnvironmentHeal
-}
type alias DescribeEnvironmentHealthResult =
    { environmentName : Maybe String
    , healthStatus : Maybe String
    , status : Maybe EnvironmentHealth
    , color : Maybe String
    , causes : Maybe (List String)
    , applicationMetrics : Maybe ApplicationMetrics
    , instancesHealth : Maybe InstanceHealthSummary
    , refreshedAt : Maybe Posix
    }



describeEnvironmentHealthResultDecoder : JD.Decoder DescribeEnvironmentHealthResult
describeEnvironmentHealthResultDecoder =
    JD.succeed DescribeEnvironmentHealthResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnvironmentName", "environmentName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HealthStatus", "healthStatus"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            environmentHealthDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Color", "color"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Causes", "causes"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationMetrics", "applicationMetrics"]
            applicationMetricsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstancesHealth", "instancesHealth"]
            instanceHealthSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RefreshedAt", "refreshedAt"]
            JDX.datetime
        )
        




describeEnvironmentHealthResultToString : DescribeEnvironmentHealthResult -> String -- List (String, String)
describeEnvironmentHealthResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "environmentName" "" -- val.environmentName
        
    --     |> Dict.insert
    --         "healthStatus" "" -- val.healthStatus
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "color" "" -- val.color
        
    --     |> Dict.insert
    --         "causes" "" -- val.causes
        
    --     |> Dict.insert
    --         "applicationMetrics" "" -- val.applicationMetrics
        
    --     |> Dict.insert
    --         "instancesHealth" "" -- val.instancesHealth
        
    --     |> Dict.insert
    --         "refreshedAt" "" -- val.refreshedAt
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEnvironmentManagedActionHisto
-}
type alias DescribeEnvironmentManagedActionHistoryResult =
    { managedActionHistoryItems : Maybe (List ManagedActionHistoryItem)
    , nextToken : Maybe String
    }



describeEnvironmentManagedActionHistoryResultDecoder : JD.Decoder DescribeEnvironmentManagedActionHistoryResult
describeEnvironmentManagedActionHistoryResultDecoder =
    JD.succeed DescribeEnvironmentManagedActionHistoryResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ManagedActionHistoryItems", "managedActionHistoryItems"]
            (JD.list managedActionHistoryItemDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeEnvironmentManagedActionHistoryResultToString : DescribeEnvironmentManagedActionHistoryResult -> String -- List (String, String)
describeEnvironmentManagedActionHistoryResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "managedActionHistoryItems" "" -- val.managedActionHistoryItems
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEnvironmentManagedActio
-}
type alias DescribeEnvironmentManagedActionsResult =
    { managedActions : Maybe (List ManagedAction)
    }



describeEnvironmentManagedActionsResultDecoder : JD.Decoder DescribeEnvironmentManagedActionsResult
describeEnvironmentManagedActionsResultDecoder =
    JD.succeed DescribeEnvironmentManagedActionsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ManagedActions", "managedActions"]
            (JD.list managedActionDecoder)
        )
        




describeEnvironmentManagedActionsResultToString : DescribeEnvironmentManagedActionsResult -> String -- List (String, String)
describeEnvironmentManagedActionsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "managedActions" "" -- val.managedActions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeInstancesHeal
-}
type alias DescribeInstancesHealthResult =
    { instanceHealthList : Maybe (List SingleInstanceHealth)
    , refreshedAt : Maybe Posix
    , nextToken : Maybe String
    }



describeInstancesHealthResultDecoder : JD.Decoder DescribeInstancesHealthResult
describeInstancesHealthResultDecoder =
    JD.succeed DescribeInstancesHealthResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceHealthList", "instanceHealthList"]
            (JD.list singleInstanceHealthDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RefreshedAt", "refreshedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeInstancesHealthResultToString : DescribeInstancesHealthResult -> String -- List (String, String)
describeInstancesHealthResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceHealthList" "" -- val.instanceHealthList
        
    --     |> Dict.insert
    --         "refreshedAt" "" -- val.refreshedAt
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describePlatformVersi
-}
type alias DescribePlatformVersionResult =
    { platformDescription : Maybe PlatformDescription
    }



describePlatformVersionResultDecoder : JD.Decoder DescribePlatformVersionResult
describePlatformVersionResultDecoder =
    JD.succeed DescribePlatformVersionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformDescription", "platformDescription"]
            platformDescriptionDecoder
        )
        




describePlatformVersionResultToString : DescribePlatformVersionResult -> String -- List (String, String)
describePlatformVersionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "platformDescription" "" -- val.platformDescription
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from environmentDes
-}
type alias EnvironmentDescription =
    { environmentName : Maybe String
    , environmentId : Maybe String
    , applicationName : Maybe String
    , versionLabel : Maybe String
    , solutionStackName : Maybe String
    , platformArn : Maybe String
    , templateName : Maybe String
    , description : Maybe String
    , endpointURL : Maybe String
    , cNAME : Maybe String
    , dateCreated : Maybe Posix
    , dateUpdated : Maybe Posix
    , status : Maybe EnvironmentStatus
    , abortableOperationInProgress : Maybe Bool
    , health : Maybe EnvironmentHealth
    , healthStatus : Maybe EnvironmentHealthStatus
    , resources : Maybe EnvironmentResourcesDescription
    , tier : Maybe EnvironmentTier
    , environmentLinks : Maybe (List EnvironmentLink)
    , environmentArn : Maybe String
    }



environmentDescriptionDecoder : JD.Decoder EnvironmentDescription
environmentDescriptionDecoder =
    JD.succeed EnvironmentDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnvironmentName", "environmentName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnvironmentId", "environmentId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationName", "applicationName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VersionLabel", "versionLabel"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SolutionStackName", "solutionStackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformArn", "platformArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TemplateName", "templateName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndpointURL", "endpointURL"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CNAME", "cNAME"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DateCreated", "dateCreated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DateUpdated", "dateUpdated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            environmentStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AbortableOperationInProgress", "abortableOperationInProgress"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Health", "health"]
            environmentHealthDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HealthStatus", "healthStatus"]
            environmentHealthStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Resources", "resources"]
            environmentResourcesDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tier", "tier"]
            environmentTierDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnvironmentLinks", "environmentLinks"]
            (JD.list environmentLinkDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnvironmentArn", "environmentArn"]
            JD.string
        )
        




environmentDescriptionToString : EnvironmentDescription -> String -- List (String, String)
environmentDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "environmentName" "" -- val.environmentName
        
    --     |> Dict.insert
    --         "environmentId" "" -- val.environmentId
        
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
        
    --     |> Dict.insert
    --         "versionLabel" "" -- val.versionLabel
        
    --     |> Dict.insert
    --         "solutionStackName" "" -- val.solutionStackName
        
    --     |> Dict.insert
    --         "platformArn" "" -- val.platformArn
        
    --     |> Dict.insert
    --         "templateName" "" -- val.templateName
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "endpointURL" "" -- val.endpointURL
        
    --     |> Dict.insert
    --         "cNAME" "" -- val.cNAME
        
    --     |> Dict.insert
    --         "dateCreated" "" -- val.dateCreated
        
    --     |> Dict.insert
    --         "dateUpdated" "" -- val.dateUpdated
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "abortableOperationInProgress" "" -- val.abortableOperationInProgress
        
    --     |> Dict.insert
    --         "health" "" -- val.health
        
    --     |> Dict.insert
    --         "healthStatus" "" -- val.healthStatus
        
    --     |> Dict.insert
    --         "resources" "" -- val.resources
        
    --     |> Dict.insert
    --         "tier" "" -- val.tier
        
    --     |> Dict.insert
    --         "environmentLinks" "" -- val.environmentLinks
        
    --     |> Dict.insert
    --         "environmentArn" "" -- val.environmentArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from environmentDescription
-}
type alias EnvironmentDescriptionsMessage =
    { environments : Maybe (List EnvironmentDescription)
    , nextToken : Maybe String
    }



environmentDescriptionsMessageDecoder : JD.Decoder EnvironmentDescriptionsMessage
environmentDescriptionsMessageDecoder =
    JD.succeed EnvironmentDescriptionsMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Environments", "environments"]
            (JD.list environmentDescriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




environmentDescriptionsMessageToString : EnvironmentDescriptionsMessage -> String -- List (String, String)
environmentDescriptionsMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "environments" "" -- val.environments
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| One of

* `EnvironmentHealth_Green`
* `EnvironmentHealth_Yellow`
* `EnvironmentHealth_Red`
* `EnvironmentHealth_Grey`

-}
type EnvironmentHealth
    = EnvironmentHealth_Green
    | EnvironmentHealth_Yellow
    | EnvironmentHealth_Red
    | EnvironmentHealth_Grey



environmentHealthDecoder : JD.Decoder EnvironmentHealth
environmentHealthDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Green" ->
                        JD.succeed EnvironmentHealth_Green

                    "Yellow" ->
                        JD.succeed EnvironmentHealth_Yellow

                    "Red" ->
                        JD.succeed EnvironmentHealth_Red

                    "Grey" ->
                        JD.succeed EnvironmentHealth_Grey


                    _ ->
                        JD.fail "bad thing"
            )




environmentHealthToString : EnvironmentHealth -> String
environmentHealthToString val =
    case val of
        EnvironmentHealth_Green ->
            "Green"

        EnvironmentHealth_Yellow ->
            "Yellow"

        EnvironmentHealth_Red ->
            "Red"

        EnvironmentHealth_Grey ->
            "Grey"




{-| One of

* `EnvironmentHealthAttribute_Status`
* `EnvironmentHealthAttribute_Color`
* `EnvironmentHealthAttribute_Causes`
* `EnvironmentHealthAttribute_ApplicationMetrics`
* `EnvironmentHealthAttribute_InstancesHealth`
* `EnvironmentHealthAttribute_All`
* `EnvironmentHealthAttribute_HealthStatus`
* `EnvironmentHealthAttribute_RefreshedAt`

-}
type EnvironmentHealthAttribute
    = EnvironmentHealthAttribute_Status
    | EnvironmentHealthAttribute_Color
    | EnvironmentHealthAttribute_Causes
    | EnvironmentHealthAttribute_ApplicationMetrics
    | EnvironmentHealthAttribute_InstancesHealth
    | EnvironmentHealthAttribute_All
    | EnvironmentHealthAttribute_HealthStatus
    | EnvironmentHealthAttribute_RefreshedAt



environmentHealthAttributeDecoder : JD.Decoder EnvironmentHealthAttribute
environmentHealthAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Status" ->
                        JD.succeed EnvironmentHealthAttribute_Status

                    "Color" ->
                        JD.succeed EnvironmentHealthAttribute_Color

                    "Causes" ->
                        JD.succeed EnvironmentHealthAttribute_Causes

                    "ApplicationMetrics" ->
                        JD.succeed EnvironmentHealthAttribute_ApplicationMetrics

                    "InstancesHealth" ->
                        JD.succeed EnvironmentHealthAttribute_InstancesHealth

                    "All" ->
                        JD.succeed EnvironmentHealthAttribute_All

                    "HealthStatus" ->
                        JD.succeed EnvironmentHealthAttribute_HealthStatus

                    "RefreshedAt" ->
                        JD.succeed EnvironmentHealthAttribute_RefreshedAt


                    _ ->
                        JD.fail "bad thing"
            )




environmentHealthAttributeToString : EnvironmentHealthAttribute -> String
environmentHealthAttributeToString val =
    case val of
        EnvironmentHealthAttribute_Status ->
            "Status"

        EnvironmentHealthAttribute_Color ->
            "Color"

        EnvironmentHealthAttribute_Causes ->
            "Causes"

        EnvironmentHealthAttribute_ApplicationMetrics ->
            "ApplicationMetrics"

        EnvironmentHealthAttribute_InstancesHealth ->
            "InstancesHealth"

        EnvironmentHealthAttribute_All ->
            "All"

        EnvironmentHealthAttribute_HealthStatus ->
            "HealthStatus"

        EnvironmentHealthAttribute_RefreshedAt ->
            "RefreshedAt"




{-| One of

* `EnvironmentHealthStatus_NoData`
* `EnvironmentHealthStatus_Unknown`
* `EnvironmentHealthStatus_Pending`
* `EnvironmentHealthStatus_Ok`
* `EnvironmentHealthStatus_Info`
* `EnvironmentHealthStatus_Warning`
* `EnvironmentHealthStatus_Degraded`
* `EnvironmentHealthStatus_Severe`
* `EnvironmentHealthStatus_Suspended`

-}
type EnvironmentHealthStatus
    = EnvironmentHealthStatus_NoData
    | EnvironmentHealthStatus_Unknown
    | EnvironmentHealthStatus_Pending
    | EnvironmentHealthStatus_Ok
    | EnvironmentHealthStatus_Info
    | EnvironmentHealthStatus_Warning
    | EnvironmentHealthStatus_Degraded
    | EnvironmentHealthStatus_Severe
    | EnvironmentHealthStatus_Suspended



environmentHealthStatusDecoder : JD.Decoder EnvironmentHealthStatus
environmentHealthStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NoData" ->
                        JD.succeed EnvironmentHealthStatus_NoData

                    "Unknown" ->
                        JD.succeed EnvironmentHealthStatus_Unknown

                    "Pending" ->
                        JD.succeed EnvironmentHealthStatus_Pending

                    "Ok" ->
                        JD.succeed EnvironmentHealthStatus_Ok

                    "Info" ->
                        JD.succeed EnvironmentHealthStatus_Info

                    "Warning" ->
                        JD.succeed EnvironmentHealthStatus_Warning

                    "Degraded" ->
                        JD.succeed EnvironmentHealthStatus_Degraded

                    "Severe" ->
                        JD.succeed EnvironmentHealthStatus_Severe

                    "Suspended" ->
                        JD.succeed EnvironmentHealthStatus_Suspended


                    _ ->
                        JD.fail "bad thing"
            )




environmentHealthStatusToString : EnvironmentHealthStatus -> String
environmentHealthStatusToString val =
    case val of
        EnvironmentHealthStatus_NoData ->
            "NoData"

        EnvironmentHealthStatus_Unknown ->
            "Unknown"

        EnvironmentHealthStatus_Pending ->
            "Pending"

        EnvironmentHealthStatus_Ok ->
            "Ok"

        EnvironmentHealthStatus_Info ->
            "Info"

        EnvironmentHealthStatus_Warning ->
            "Warning"

        EnvironmentHealthStatus_Degraded ->
            "Degraded"

        EnvironmentHealthStatus_Severe ->
            "Severe"

        EnvironmentHealthStatus_Suspended ->
            "Suspended"




{-| <p>The information retrieved from the Amazon EC2 instances.</p>
-}
type alias EnvironmentInfoDescription =
    { infoType : Maybe EnvironmentInfoType
    , ec2InstanceId : Maybe String
    , sampleTimestamp : Maybe Posix
    , message : Maybe String
    }



environmentInfoDescriptionDecoder : JD.Decoder EnvironmentInfoDescription
environmentInfoDescriptionDecoder =
    JD.succeed EnvironmentInfoDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InfoType", "infoType"]
            environmentInfoTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Ec2InstanceId", "ec2InstanceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SampleTimestamp", "sampleTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        




environmentInfoDescriptionToString : EnvironmentInfoDescription -> String -- List (String, String)
environmentInfoDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "infoType" "" -- val.infoType
        
    --     |> Dict.insert
    --         "ec2InstanceId" "" -- val.ec2InstanceId
        
    --     |> Dict.insert
    --         "sampleTimestamp" "" -- val.sampleTimestamp
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| One of

* `EnvironmentInfoType_tail`
* `EnvironmentInfoType_bundle`

-}
type EnvironmentInfoType
    = EnvironmentInfoType_tail
    | EnvironmentInfoType_bundle



environmentInfoTypeDecoder : JD.Decoder EnvironmentInfoType
environmentInfoTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "tail" ->
                        JD.succeed EnvironmentInfoType_tail

                    "bundle" ->
                        JD.succeed EnvironmentInfoType_bundle


                    _ ->
                        JD.fail "bad thing"
            )




environmentInfoTypeToString : EnvironmentInfoType -> String
environmentInfoTypeToString val =
    case val of
        EnvironmentInfoType_tail ->
            "tail"

        EnvironmentInfoType_bundle ->
            "bundle"




{-| <p>A link to another environment, defined in the environment's manifest. Links provide connection information in system properties that can be used to connect to another environment in the same group. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest (env.yaml)</a> for details.</p>
-}
type alias EnvironmentLink =
    { linkName : Maybe String
    , environmentName : Maybe String
    }



environmentLinkDecoder : JD.Decoder EnvironmentLink
environmentLinkDecoder =
    JD.succeed EnvironmentLink
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LinkName", "linkName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnvironmentName", "environmentName"]
            JD.string
        )
        




environmentLinkToString : EnvironmentLink -> String -- List (String, String)
environmentLinkToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "linkName" "" -- val.linkName
        
    --     |> Dict.insert
    --         "environmentName" "" -- val.environmentName
        
    --     |> Dict.toList
    ""



{-| <p>Describes the AWS resources in use by this environment. This data is live.</p>
-}
type alias EnvironmentResourceDescription =
    { environmentName : Maybe String
    , autoScalingGroups : Maybe (List AutoScalingGroup)
    , instances : Maybe (List Instance)
    , launchConfigurations : Maybe (List LaunchConfiguration)
    , launchTemplates : Maybe (List LaunchTemplate)
    , loadBalancers : Maybe (List LoadBalancer)
    , triggers : Maybe (List Trigger)
    , queues : Maybe (List Queue)
    }



environmentResourceDescriptionDecoder : JD.Decoder EnvironmentResourceDescription
environmentResourceDescriptionDecoder =
    JD.succeed EnvironmentResourceDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnvironmentName", "environmentName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoScalingGroups", "autoScalingGroups"]
            (JD.list autoScalingGroupDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Instances", "instances"]
            (JD.list instanceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LaunchConfigurations", "launchConfigurations"]
            (JD.list launchConfigurationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LaunchTemplates", "launchTemplates"]
            (JD.list launchTemplateDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancers", "loadBalancers"]
            (JD.list loadBalancerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Triggers", "triggers"]
            (JD.list triggerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Queues", "queues"]
            (JD.list queueDecoder)
        )
        




environmentResourceDescriptionToString : EnvironmentResourceDescription -> String -- List (String, String)
environmentResourceDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "environmentName" "" -- val.environmentName
        
    --     |> Dict.insert
    --         "autoScalingGroups" "" -- val.autoScalingGroups
        
    --     |> Dict.insert
    --         "instances" "" -- val.instances
        
    --     |> Dict.insert
    --         "launchConfigurations" "" -- val.launchConfigurations
        
    --     |> Dict.insert
    --         "launchTemplates" "" -- val.launchTemplates
        
    --     |> Dict.insert
    --         "loadBalancers" "" -- val.loadBalancers
        
    --     |> Dict.insert
    --         "triggers" "" -- val.triggers
        
    --     |> Dict.insert
    --         "queues" "" -- val.queues
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from environmentResourceDescription
-}
type alias EnvironmentResourceDescriptionsMessage =
    { environmentResources : Maybe EnvironmentResourceDescription
    }



environmentResourceDescriptionsMessageDecoder : JD.Decoder EnvironmentResourceDescriptionsMessage
environmentResourceDescriptionsMessageDecoder =
    JD.succeed EnvironmentResourceDescriptionsMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnvironmentResources", "environmentResources"]
            environmentResourceDescriptionDecoder
        )
        




environmentResourceDescriptionsMessageToString : EnvironmentResourceDescriptionsMessage -> String -- List (String, String)
environmentResourceDescriptionsMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "environmentResources" "" -- val.environmentResources
        
    --     |> Dict.toList
    ""



{-| <p>Describes the AWS resources in use by this environment. This data is not live data.</p>
-}
type alias EnvironmentResourcesDescription =
    { loadBalancer : Maybe LoadBalancerDescription
    }



environmentResourcesDescriptionDecoder : JD.Decoder EnvironmentResourcesDescription
environmentResourcesDescriptionDecoder =
    JD.succeed EnvironmentResourcesDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancer", "loadBalancer"]
            loadBalancerDescriptionDecoder
        )
        




environmentResourcesDescriptionToString : EnvironmentResourcesDescription -> String -- List (String, String)
environmentResourcesDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loadBalancer" "" -- val.loadBalancer
        
    --     |> Dict.toList
    ""



{-| One of

* `EnvironmentStatus_Launching`
* `EnvironmentStatus_Updating`
* `EnvironmentStatus_Ready`
* `EnvironmentStatus_Terminating`
* `EnvironmentStatus_Terminated`

-}
type EnvironmentStatus
    = EnvironmentStatus_Launching
    | EnvironmentStatus_Updating
    | EnvironmentStatus_Ready
    | EnvironmentStatus_Terminating
    | EnvironmentStatus_Terminated



environmentStatusDecoder : JD.Decoder EnvironmentStatus
environmentStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Launching" ->
                        JD.succeed EnvironmentStatus_Launching

                    "Updating" ->
                        JD.succeed EnvironmentStatus_Updating

                    "Ready" ->
                        JD.succeed EnvironmentStatus_Ready

                    "Terminating" ->
                        JD.succeed EnvironmentStatus_Terminating

                    "Terminated" ->
                        JD.succeed EnvironmentStatus_Terminated


                    _ ->
                        JD.fail "bad thing"
            )




environmentStatusToString : EnvironmentStatus -> String
environmentStatusToString val =
    case val of
        EnvironmentStatus_Launching ->
            "Launching"

        EnvironmentStatus_Updating ->
            "Updating"

        EnvironmentStatus_Ready ->
            "Ready"

        EnvironmentStatus_Terminating ->
            "Terminating"

        EnvironmentStatus_Terminated ->
            "Terminated"




{-| <p>Describes the properties of an environment tier</p>
-}
type alias EnvironmentTier =
    { name : Maybe String
    , type_ : Maybe String
    , version : Maybe String
    }



environmentTierDecoder : JD.Decoder EnvironmentTier
environmentTierDecoder =
    JD.succeed EnvironmentTier
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.string
        )
        




environmentTierToString : EnvironmentTier -> String -- List (String, String)
environmentTierToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.toList
    ""



{-| <p>Describes an event.</p>
-}
type alias EventDescription =
    { eventDate : Maybe Posix
    , message : Maybe String
    , applicationName : Maybe String
    , versionLabel : Maybe String
    , templateName : Maybe String
    , environmentName : Maybe String
    , platformArn : Maybe String
    , requestId : Maybe String
    , severity : Maybe EventSeverity
    }



eventDescriptionDecoder : JD.Decoder EventDescription
eventDescriptionDecoder =
    JD.succeed EventDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventDate", "eventDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationName", "applicationName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VersionLabel", "versionLabel"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TemplateName", "templateName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnvironmentName", "environmentName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformArn", "platformArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RequestId", "requestId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Severity", "severity"]
            eventSeverityDecoder
        )
        




eventDescriptionToString : EventDescription -> String -- List (String, String)
eventDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventDate" "" -- val.eventDate
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
        
    --     |> Dict.insert
    --         "versionLabel" "" -- val.versionLabel
        
    --     |> Dict.insert
    --         "templateName" "" -- val.templateName
        
    --     |> Dict.insert
    --         "environmentName" "" -- val.environmentName
        
    --     |> Dict.insert
    --         "platformArn" "" -- val.platformArn
        
    --     |> Dict.insert
    --         "requestId" "" -- val.requestId
        
    --     |> Dict.insert
    --         "severity" "" -- val.severity
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from eventDescription
-}
type alias EventDescriptionsMessage =
    { events : Maybe (List EventDescription)
    , nextToken : Maybe String
    }



eventDescriptionsMessageDecoder : JD.Decoder EventDescriptionsMessage
eventDescriptionsMessageDecoder =
    JD.succeed EventDescriptionsMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Events", "events"]
            (JD.list eventDescriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




eventDescriptionsMessageToString : EventDescriptionsMessage -> String -- List (String, String)
eventDescriptionsMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "events" "" -- val.events
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| One of

* `EventSeverity_TRACE`
* `EventSeverity_DEBUG`
* `EventSeverity_INFO`
* `EventSeverity_WARN`
* `EventSeverity_ERROR`
* `EventSeverity_FATAL`

-}
type EventSeverity
    = EventSeverity_TRACE
    | EventSeverity_DEBUG
    | EventSeverity_INFO
    | EventSeverity_WARN
    | EventSeverity_ERROR
    | EventSeverity_FATAL



eventSeverityDecoder : JD.Decoder EventSeverity
eventSeverityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TRACE" ->
                        JD.succeed EventSeverity_TRACE

                    "DEBUG" ->
                        JD.succeed EventSeverity_DEBUG

                    "INFO" ->
                        JD.succeed EventSeverity_INFO

                    "WARN" ->
                        JD.succeed EventSeverity_WARN

                    "ERROR" ->
                        JD.succeed EventSeverity_ERROR

                    "FATAL" ->
                        JD.succeed EventSeverity_FATAL


                    _ ->
                        JD.fail "bad thing"
            )




eventSeverityToString : EventSeverity -> String
eventSeverityToString val =
    case val of
        EventSeverity_TRACE ->
            "TRACE"

        EventSeverity_DEBUG ->
            "DEBUG"

        EventSeverity_INFO ->
            "INFO"

        EventSeverity_WARN ->
            "WARN"

        EventSeverity_ERROR ->
            "ERROR"

        EventSeverity_FATAL ->
            "FATAL"




{-| One of

* `FailureType_UpdateCancelled`
* `FailureType_CancellationFailed`
* `FailureType_RollbackFailed`
* `FailureType_RollbackSuccessful`
* `FailureType_InternalFailure`
* `FailureType_InvalidEnvironmentState`
* `FailureType_PermissionsError`

-}
type FailureType
    = FailureType_UpdateCancelled
    | FailureType_CancellationFailed
    | FailureType_RollbackFailed
    | FailureType_RollbackSuccessful
    | FailureType_InternalFailure
    | FailureType_InvalidEnvironmentState
    | FailureType_PermissionsError



failureTypeDecoder : JD.Decoder FailureType
failureTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UpdateCancelled" ->
                        JD.succeed FailureType_UpdateCancelled

                    "CancellationFailed" ->
                        JD.succeed FailureType_CancellationFailed

                    "RollbackFailed" ->
                        JD.succeed FailureType_RollbackFailed

                    "RollbackSuccessful" ->
                        JD.succeed FailureType_RollbackSuccessful

                    "InternalFailure" ->
                        JD.succeed FailureType_InternalFailure

                    "InvalidEnvironmentState" ->
                        JD.succeed FailureType_InvalidEnvironmentState

                    "PermissionsError" ->
                        JD.succeed FailureType_PermissionsError


                    _ ->
                        JD.fail "bad thing"
            )




failureTypeToString : FailureType -> String
failureTypeToString val =
    case val of
        FailureType_UpdateCancelled ->
            "UpdateCancelled"

        FailureType_CancellationFailed ->
            "CancellationFailed"

        FailureType_RollbackFailed ->
            "RollbackFailed"

        FailureType_RollbackSuccessful ->
            "RollbackSuccessful"

        FailureType_InternalFailure ->
            "InternalFailure"

        FailureType_InvalidEnvironmentState ->
            "InvalidEnvironmentState"

        FailureType_PermissionsError ->
            "PermissionsError"




{-| <p>The description of an Amazon EC2 instance.</p>
-}
type alias Instance =
    { id : Maybe String
    }



instanceDecoder : JD.Decoder Instance
instanceDecoder =
    JD.succeed Instance
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        




instanceToString : Instance -> String -- List (String, String)
instanceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.toList
    ""



{-| <p>Represents summary information about the health of an instance. For more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health Colors and Statuses</a>.</p>
-}
type alias InstanceHealthSummary =
    { noData : Maybe Int
    , unknown : Maybe Int
    , pending : Maybe Int
    , ok : Maybe Int
    , info : Maybe Int
    , warning : Maybe Int
    , degraded : Maybe Int
    , severe : Maybe Int
    }



instanceHealthSummaryDecoder : JD.Decoder InstanceHealthSummary
instanceHealthSummaryDecoder =
    JD.succeed InstanceHealthSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NoData", "noData"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Unknown", "unknown"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Pending", "pending"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Ok", "ok"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Info", "info"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Warning", "warning"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Degraded", "degraded"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Severe", "severe"]
            JD.int
        )
        




instanceHealthSummaryToString : InstanceHealthSummary -> String -- List (String, String)
instanceHealthSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "noData" "" -- val.noData
        
    --     |> Dict.insert
    --         "unknown" "" -- val.unknown
        
    --     |> Dict.insert
    --         "pending" "" -- val.pending
        
    --     |> Dict.insert
    --         "ok" "" -- val.ok
        
    --     |> Dict.insert
    --         "info" "" -- val.info
        
    --     |> Dict.insert
    --         "warning" "" -- val.warning
        
    --     |> Dict.insert
    --         "degraded" "" -- val.degraded
        
    --     |> Dict.insert
    --         "severe" "" -- val.severe
        
    --     |> Dict.toList
    ""



{-| One of

* `InstancesHealthAttribute_HealthStatus`
* `InstancesHealthAttribute_Color`
* `InstancesHealthAttribute_Causes`
* `InstancesHealthAttribute_ApplicationMetrics`
* `InstancesHealthAttribute_RefreshedAt`
* `InstancesHealthAttribute_LaunchedAt`
* `InstancesHealthAttribute_System`
* `InstancesHealthAttribute_Deployment`
* `InstancesHealthAttribute_AvailabilityZone`
* `InstancesHealthAttribute_InstanceType`
* `InstancesHealthAttribute_All`

-}
type InstancesHealthAttribute
    = InstancesHealthAttribute_HealthStatus
    | InstancesHealthAttribute_Color
    | InstancesHealthAttribute_Causes
    | InstancesHealthAttribute_ApplicationMetrics
    | InstancesHealthAttribute_RefreshedAt
    | InstancesHealthAttribute_LaunchedAt
    | InstancesHealthAttribute_System
    | InstancesHealthAttribute_Deployment
    | InstancesHealthAttribute_AvailabilityZone
    | InstancesHealthAttribute_InstanceType
    | InstancesHealthAttribute_All



instancesHealthAttributeDecoder : JD.Decoder InstancesHealthAttribute
instancesHealthAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HealthStatus" ->
                        JD.succeed InstancesHealthAttribute_HealthStatus

                    "Color" ->
                        JD.succeed InstancesHealthAttribute_Color

                    "Causes" ->
                        JD.succeed InstancesHealthAttribute_Causes

                    "ApplicationMetrics" ->
                        JD.succeed InstancesHealthAttribute_ApplicationMetrics

                    "RefreshedAt" ->
                        JD.succeed InstancesHealthAttribute_RefreshedAt

                    "LaunchedAt" ->
                        JD.succeed InstancesHealthAttribute_LaunchedAt

                    "System" ->
                        JD.succeed InstancesHealthAttribute_System

                    "Deployment" ->
                        JD.succeed InstancesHealthAttribute_Deployment

                    "AvailabilityZone" ->
                        JD.succeed InstancesHealthAttribute_AvailabilityZone

                    "InstanceType" ->
                        JD.succeed InstancesHealthAttribute_InstanceType

                    "All" ->
                        JD.succeed InstancesHealthAttribute_All


                    _ ->
                        JD.fail "bad thing"
            )




instancesHealthAttributeToString : InstancesHealthAttribute -> String
instancesHealthAttributeToString val =
    case val of
        InstancesHealthAttribute_HealthStatus ->
            "HealthStatus"

        InstancesHealthAttribute_Color ->
            "Color"

        InstancesHealthAttribute_Causes ->
            "Causes"

        InstancesHealthAttribute_ApplicationMetrics ->
            "ApplicationMetrics"

        InstancesHealthAttribute_RefreshedAt ->
            "RefreshedAt"

        InstancesHealthAttribute_LaunchedAt ->
            "LaunchedAt"

        InstancesHealthAttribute_System ->
            "System"

        InstancesHealthAttribute_Deployment ->
            "Deployment"

        InstancesHealthAttribute_AvailabilityZone ->
            "AvailabilityZone"

        InstancesHealthAttribute_InstanceType ->
            "InstanceType"

        InstancesHealthAttribute_All ->
            "All"




{-| <p>Represents the average latency for the slowest X percent of requests over the last 10 seconds.</p>
-}
type alias Latency =
    { p999 : Maybe Float
    , p99 : Maybe Float
    , p95 : Maybe Float
    , p90 : Maybe Float
    , p85 : Maybe Float
    , p75 : Maybe Float
    , p50 : Maybe Float
    , p10 : Maybe Float
    }



latencyDecoder : JD.Decoder Latency
latencyDecoder =
    JD.succeed Latency
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["P999", "p999"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["P99", "p99"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["P95", "p95"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["P90", "p90"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["P85", "p85"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["P75", "p75"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["P50", "p50"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["P10", "p10"]
            JD.float
        )
        




latencyToString : Latency -> String -- List (String, String)
latencyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "p999" "" -- val.p999
        
    --     |> Dict.insert
    --         "p99" "" -- val.p99
        
    --     |> Dict.insert
    --         "p95" "" -- val.p95
        
    --     |> Dict.insert
    --         "p90" "" -- val.p90
        
    --     |> Dict.insert
    --         "p85" "" -- val.p85
        
    --     |> Dict.insert
    --         "p75" "" -- val.p75
        
    --     |> Dict.insert
    --         "p50" "" -- val.p50
        
    --     |> Dict.insert
    --         "p10" "" -- val.p10
        
    --     |> Dict.toList
    ""



{-| <p>Describes an Auto Scaling launch configuration.</p>
-}
type alias LaunchConfiguration =
    { name : Maybe String
    }



launchConfigurationDecoder : JD.Decoder LaunchConfiguration
launchConfigurationDecoder =
    JD.succeed LaunchConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




launchConfigurationToString : LaunchConfiguration -> String -- List (String, String)
launchConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Describes an Amazon EC2 launch template.</p>
-}
type alias LaunchTemplate =
    { id : Maybe String
    }



launchTemplateDecoder : JD.Decoder LaunchTemplate
launchTemplateDecoder =
    JD.succeed LaunchTemplate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        




launchTemplateToString : LaunchTemplate -> String -- List (String, String)
launchTemplateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listAvailableSolutionStacksResul
-}
type alias ListAvailableSolutionStacksResultMessage =
    { solutionStacks : Maybe (List String)
    , solutionStackDetails : Maybe (List SolutionStackDescription)
    }



listAvailableSolutionStacksResultMessageDecoder : JD.Decoder ListAvailableSolutionStacksResultMessage
listAvailableSolutionStacksResultMessageDecoder =
    JD.succeed ListAvailableSolutionStacksResultMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SolutionStacks", "solutionStacks"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SolutionStackDetails", "solutionStackDetails"]
            (JD.list solutionStackDescriptionDecoder)
        )
        




listAvailableSolutionStacksResultMessageToString : ListAvailableSolutionStacksResultMessage -> String -- List (String, String)
listAvailableSolutionStacksResultMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "solutionStacks" "" -- val.solutionStacks
        
    --     |> Dict.insert
    --         "solutionStackDetails" "" -- val.solutionStackDetails
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listPlatformVersio
-}
type alias ListPlatformVersionsResult =
    { platformSummaryList : Maybe (List PlatformSummary)
    , nextToken : Maybe String
    }



listPlatformVersionsResultDecoder : JD.Decoder ListPlatformVersionsResult
listPlatformVersionsResultDecoder =
    JD.succeed ListPlatformVersionsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformSummaryList", "platformSummaryList"]
            (JD.list platformSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listPlatformVersionsResultToString : ListPlatformVersionsResult -> String -- List (String, String)
listPlatformVersionsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "platformSummaryList" "" -- val.platformSummaryList
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>Describes the properties of a Listener for the LoadBalancer.</p>
-}
type alias Listener =
    { protocol : Maybe String
    , port_ : Maybe Int
    }



listenerDecoder : JD.Decoder Listener
listenerDecoder =
    JD.succeed Listener
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Protocol", "protocol"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        




listenerToString : Listener -> String -- List (String, String)
listenerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "protocol" "" -- val.protocol
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.toList
    ""



{-| <p>Describes a LoadBalancer.</p>
-}
type alias LoadBalancer =
    { name : Maybe String
    }



loadBalancerDecoder : JD.Decoder LoadBalancer
loadBalancerDecoder =
    JD.succeed LoadBalancer
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




loadBalancerToString : LoadBalancer -> String -- List (String, String)
loadBalancerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Describes the details of a LoadBalancer.</p>
-}
type alias LoadBalancerDescription =
    { loadBalancerName : Maybe String
    , domain : Maybe String
    , listeners : Maybe (List Listener)
    }



loadBalancerDescriptionDecoder : JD.Decoder LoadBalancerDescription
loadBalancerDescriptionDecoder =
    JD.succeed LoadBalancerDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancerName", "loadBalancerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Domain", "domain"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Listeners", "listeners"]
            (JD.list listenerDecoder)
        )
        




loadBalancerDescriptionToString : LoadBalancerDescription -> String -- List (String, String)
loadBalancerDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loadBalancerName" "" -- val.loadBalancerName
        
    --     |> Dict.insert
    --         "domain" "" -- val.domain
        
    --     |> Dict.insert
    --         "listeners" "" -- val.listeners
        
    --     |> Dict.toList
    ""



{-| <p>The record of an upcoming or in-progress managed action.</p>
-}
type alias ManagedAction =
    { actionId : Maybe String
    , actionDescription : Maybe String
    , actionType : Maybe ActionType
    , status : Maybe ActionStatus
    , windowStartTime : Maybe Posix
    }



managedActionDecoder : JD.Decoder ManagedAction
managedActionDecoder =
    JD.succeed ManagedAction
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActionId", "actionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActionDescription", "actionDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActionType", "actionType"]
            actionTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            actionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WindowStartTime", "windowStartTime"]
            JDX.datetime
        )
        




managedActionToString : ManagedAction -> String -- List (String, String)
managedActionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "actionId" "" -- val.actionId
        
    --     |> Dict.insert
    --         "actionDescription" "" -- val.actionDescription
        
    --     |> Dict.insert
    --         "actionType" "" -- val.actionType
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "windowStartTime" "" -- val.windowStartTime
        
    --     |> Dict.toList
    ""



{-| <p>The record of a completed or failed managed action.</p>
-}
type alias ManagedActionHistoryItem =
    { actionId : Maybe String
    , actionType : Maybe ActionType
    , actionDescription : Maybe String
    , failureType : Maybe FailureType
    , status : Maybe ActionHistoryStatus
    , failureDescription : Maybe String
    , executedTime : Maybe Posix
    , finishedTime : Maybe Posix
    }



managedActionHistoryItemDecoder : JD.Decoder ManagedActionHistoryItem
managedActionHistoryItemDecoder =
    JD.succeed ManagedActionHistoryItem
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActionId", "actionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActionType", "actionType"]
            actionTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActionDescription", "actionDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailureType", "failureType"]
            failureTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            actionHistoryStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailureDescription", "failureDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExecutedTime", "executedTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FinishedTime", "finishedTime"]
            JDX.datetime
        )
        




managedActionHistoryItemToString : ManagedActionHistoryItem -> String -- List (String, String)
managedActionHistoryItemToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "actionId" "" -- val.actionId
        
    --     |> Dict.insert
    --         "actionType" "" -- val.actionType
        
    --     |> Dict.insert
    --         "actionDescription" "" -- val.actionDescription
        
    --     |> Dict.insert
    --         "failureType" "" -- val.failureType
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "failureDescription" "" -- val.failureDescription
        
    --     |> Dict.insert
    --         "executedTime" "" -- val.executedTime
        
    --     |> Dict.insert
    --         "finishedTime" "" -- val.finishedTime
        
    --     |> Dict.toList
    ""



{-| <p>A lifecycle rule that deletes application versions after the specified number of days.</p>
-}
type alias MaxAgeRule =
    { enabled : Bool
    , maxAgeInDays : Maybe Int
    , deleteSourceFromS3 : Maybe Bool
    }



maxAgeRuleDecoder : JD.Decoder MaxAgeRule
maxAgeRuleDecoder =
    JD.succeed MaxAgeRule
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxAgeInDays", "maxAgeInDays"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeleteSourceFromS3", "deleteSourceFromS3"]
            JD.bool
        )
        




maxAgeRuleToString : MaxAgeRule -> String -- List (String, String)
maxAgeRuleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "maxAgeInDays" "" -- val.maxAgeInDays
        
    --     |> Dict.insert
    --         "deleteSourceFromS3" "" -- val.deleteSourceFromS3
        
    --     |> Dict.toList
    ""



{-| <p>A lifecycle rule that deletes the oldest application version when the maximum count is exceeded.</p>
-}
type alias MaxCountRule =
    { enabled : Bool
    , maxCount : Maybe Int
    , deleteSourceFromS3 : Maybe Bool
    }



maxCountRuleDecoder : JD.Decoder MaxCountRule
maxCountRuleDecoder =
    JD.succeed MaxCountRule
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxCount", "maxCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeleteSourceFromS3", "deleteSourceFromS3"]
            JD.bool
        )
        




maxCountRuleToString : MaxCountRule -> String -- List (String, String)
maxCountRuleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "maxCount" "" -- val.maxCount
        
    --     |> Dict.insert
    --         "deleteSourceFromS3" "" -- val.deleteSourceFromS3
        
    --     |> Dict.toList
    ""



{-| <p>A regular expression representing a restriction on a string configuration option value.</p>
-}
type alias OptionRestrictionRegex =
    { pattern : Maybe String
    , label : Maybe String
    }



optionRestrictionRegexDecoder : JD.Decoder OptionRestrictionRegex
optionRestrictionRegexDecoder =
    JD.succeed OptionRestrictionRegex
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Pattern", "pattern"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Label", "label"]
            JD.string
        )
        




optionRestrictionRegexToString : OptionRestrictionRegex -> String -- List (String, String)
optionRestrictionRegexToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pattern" "" -- val.pattern
        
    --     |> Dict.insert
    --         "label" "" -- val.label
        
    --     |> Dict.toList
    ""



{-| <p>A specification identifying an individual configuration option.</p>
-}
type alias OptionSpecification =
    { resourceName : Maybe String
    , namespace : Maybe String
    , optionName : Maybe String
    }



optionSpecificationDecoder : JD.Decoder OptionSpecification
optionSpecificationDecoder =
    JD.succeed OptionSpecification
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceName", "resourceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Namespace", "namespace"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionName", "optionName"]
            JD.string
        )
        




optionSpecificationToString : OptionSpecification -> String -- List (String, String)
optionSpecificationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceName" "" -- val.resourceName
        
    --     |> Dict.insert
    --         "namespace" "" -- val.namespace
        
    --     |> Dict.insert
    --         "optionName" "" -- val.optionName
        
    --     |> Dict.toList
    ""



{-| <p>Detailed information about a platform.</p>
-}
type alias PlatformDescription =
    { platformArn : Maybe String
    , platformOwner : Maybe String
    , platformName : Maybe String
    , platformVersion : Maybe String
    , solutionStackName : Maybe String
    , platformStatus : Maybe PlatformStatus
    , dateCreated : Maybe Posix
    , dateUpdated : Maybe Posix
    , platformCategory : Maybe String
    , description : Maybe String
    , maintainer : Maybe String
    , operatingSystemName : Maybe String
    , operatingSystemVersion : Maybe String
    , programmingLanguages : Maybe (List PlatformProgrammingLanguage)
    , frameworks : Maybe (List PlatformFramework)
    , customAmiList : Maybe (List CustomAmi)
    , supportedTierList : Maybe (List String)
    , supportedAddonList : Maybe (List String)
    }



platformDescriptionDecoder : JD.Decoder PlatformDescription
platformDescriptionDecoder =
    JD.succeed PlatformDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformArn", "platformArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformOwner", "platformOwner"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformName", "platformName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformVersion", "platformVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SolutionStackName", "solutionStackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformStatus", "platformStatus"]
            platformStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DateCreated", "dateCreated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DateUpdated", "dateUpdated"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformCategory", "platformCategory"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Maintainer", "maintainer"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperatingSystemName", "operatingSystemName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperatingSystemVersion", "operatingSystemVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProgrammingLanguages", "programmingLanguages"]
            (JD.list platformProgrammingLanguageDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Frameworks", "frameworks"]
            (JD.list platformFrameworkDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomAmiList", "customAmiList"]
            (JD.list customAmiDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportedTierList", "supportedTierList"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportedAddonList", "supportedAddonList"]
            (JD.list JD.string)
        )
        




platformDescriptionToString : PlatformDescription -> String -- List (String, String)
platformDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "platformArn" "" -- val.platformArn
        
    --     |> Dict.insert
    --         "platformOwner" "" -- val.platformOwner
        
    --     |> Dict.insert
    --         "platformName" "" -- val.platformName
        
    --     |> Dict.insert
    --         "platformVersion" "" -- val.platformVersion
        
    --     |> Dict.insert
    --         "solutionStackName" "" -- val.solutionStackName
        
    --     |> Dict.insert
    --         "platformStatus" "" -- val.platformStatus
        
    --     |> Dict.insert
    --         "dateCreated" "" -- val.dateCreated
        
    --     |> Dict.insert
    --         "dateUpdated" "" -- val.dateUpdated
        
    --     |> Dict.insert
    --         "platformCategory" "" -- val.platformCategory
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "maintainer" "" -- val.maintainer
        
    --     |> Dict.insert
    --         "operatingSystemName" "" -- val.operatingSystemName
        
    --     |> Dict.insert
    --         "operatingSystemVersion" "" -- val.operatingSystemVersion
        
    --     |> Dict.insert
    --         "programmingLanguages" "" -- val.programmingLanguages
        
    --     |> Dict.insert
    --         "frameworks" "" -- val.frameworks
        
    --     |> Dict.insert
    --         "customAmiList" "" -- val.customAmiList
        
    --     |> Dict.insert
    --         "supportedTierList" "" -- val.supportedTierList
        
    --     |> Dict.insert
    --         "supportedAddonList" "" -- val.supportedAddonList
        
    --     |> Dict.toList
    ""



{-| <p>Specify criteria to restrict the results when listing custom platforms.</p> <p>The filter is evaluated as the expression:</p> <p> <code>Type</code> <code>Operator</code> <code>Values[i]</code> </p>
-}
type alias PlatformFilter =
    { type_ : Maybe String
    , operator : Maybe String
    , values : Maybe (List String)
    }



platformFilterDecoder : JD.Decoder PlatformFilter
platformFilterDecoder =
    JD.succeed PlatformFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Operator", "operator"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Values", "values"]
            (JD.list JD.string)
        )
        




platformFilterToString : PlatformFilter -> String -- List (String, String)
platformFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "operator" "" -- val.operator
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| <p>A framework supported by the custom platform.</p>
-}
type alias PlatformFramework =
    { name : Maybe String
    , version : Maybe String
    }



platformFrameworkDecoder : JD.Decoder PlatformFramework
platformFrameworkDecoder =
    JD.succeed PlatformFramework
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.string
        )
        




platformFrameworkToString : PlatformFramework -> String -- List (String, String)
platformFrameworkToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.toList
    ""



{-| <p>A programming language supported by the platform.</p>
-}
type alias PlatformProgrammingLanguage =
    { name : Maybe String
    , version : Maybe String
    }



platformProgrammingLanguageDecoder : JD.Decoder PlatformProgrammingLanguage
platformProgrammingLanguageDecoder =
    JD.succeed PlatformProgrammingLanguage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.string
        )
        




platformProgrammingLanguageToString : PlatformProgrammingLanguage -> String -- List (String, String)
platformProgrammingLanguageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.toList
    ""



{-| One of

* `PlatformStatus_Creating`
* `PlatformStatus_Failed`
* `PlatformStatus_Ready`
* `PlatformStatus_Deleting`
* `PlatformStatus_Deleted`

-}
type PlatformStatus
    = PlatformStatus_Creating
    | PlatformStatus_Failed
    | PlatformStatus_Ready
    | PlatformStatus_Deleting
    | PlatformStatus_Deleted



platformStatusDecoder : JD.Decoder PlatformStatus
platformStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Creating" ->
                        JD.succeed PlatformStatus_Creating

                    "Failed" ->
                        JD.succeed PlatformStatus_Failed

                    "Ready" ->
                        JD.succeed PlatformStatus_Ready

                    "Deleting" ->
                        JD.succeed PlatformStatus_Deleting

                    "Deleted" ->
                        JD.succeed PlatformStatus_Deleted


                    _ ->
                        JD.fail "bad thing"
            )




platformStatusToString : PlatformStatus -> String
platformStatusToString val =
    case val of
        PlatformStatus_Creating ->
            "Creating"

        PlatformStatus_Failed ->
            "Failed"

        PlatformStatus_Ready ->
            "Ready"

        PlatformStatus_Deleting ->
            "Deleting"

        PlatformStatus_Deleted ->
            "Deleted"




{-| <p>Detailed information about a platform.</p>
-}
type alias PlatformSummary =
    { platformArn : Maybe String
    , platformOwner : Maybe String
    , platformStatus : Maybe PlatformStatus
    , platformCategory : Maybe String
    , operatingSystemName : Maybe String
    , operatingSystemVersion : Maybe String
    , supportedTierList : Maybe (List String)
    , supportedAddonList : Maybe (List String)
    }



platformSummaryDecoder : JD.Decoder PlatformSummary
platformSummaryDecoder =
    JD.succeed PlatformSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformArn", "platformArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformOwner", "platformOwner"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformStatus", "platformStatus"]
            platformStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlatformCategory", "platformCategory"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperatingSystemName", "operatingSystemName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperatingSystemVersion", "operatingSystemVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportedTierList", "supportedTierList"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportedAddonList", "supportedAddonList"]
            (JD.list JD.string)
        )
        




platformSummaryToString : PlatformSummary -> String -- List (String, String)
platformSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "platformArn" "" -- val.platformArn
        
    --     |> Dict.insert
    --         "platformOwner" "" -- val.platformOwner
        
    --     |> Dict.insert
    --         "platformStatus" "" -- val.platformStatus
        
    --     |> Dict.insert
    --         "platformCategory" "" -- val.platformCategory
        
    --     |> Dict.insert
    --         "operatingSystemName" "" -- val.operatingSystemName
        
    --     |> Dict.insert
    --         "operatingSystemVersion" "" -- val.operatingSystemVersion
        
    --     |> Dict.insert
    --         "supportedTierList" "" -- val.supportedTierList
        
    --     |> Dict.insert
    --         "supportedAddonList" "" -- val.supportedAddonList
        
    --     |> Dict.toList
    ""



{-| <p>Describes a queue.</p>
-}
type alias Queue =
    { name : Maybe String
    , uRL : Maybe String
    }



queueDecoder : JD.Decoder Queue
queueDecoder =
    JD.succeed Queue
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["URL", "uRL"]
            JD.string
        )
        




queueToString : Queue -> String -- List (String, String)
queueToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "uRL" "" -- val.uRL
        
    --     |> Dict.toList
    ""



{-| <p>The AWS Elastic Beanstalk quota information for a single resource type in an AWS account. It reflects the resource's limits for this account.</p>
-}
type alias ResourceQuota =
    { maximum : Maybe Int
    }



resourceQuotaDecoder : JD.Decoder ResourceQuota
resourceQuotaDecoder =
    JD.succeed ResourceQuota
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Maximum", "maximum"]
            JD.int
        )
        




resourceQuotaToString : ResourceQuota -> String -- List (String, String)
resourceQuotaToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "maximum" "" -- val.maximum
        
    --     |> Dict.toList
    ""



{-| <p>A set of per-resource AWS Elastic Beanstalk quotas associated with an AWS account. They reflect Elastic Beanstalk resource limits for this account.</p>
-}
type alias ResourceQuotas =
    { applicationQuota : Maybe ResourceQuota
    , applicationVersionQuota : Maybe ResourceQuota
    , environmentQuota : Maybe ResourceQuota
    , configurationTemplateQuota : Maybe ResourceQuota
    , customPlatformQuota : Maybe ResourceQuota
    }



resourceQuotasDecoder : JD.Decoder ResourceQuotas
resourceQuotasDecoder =
    JD.succeed ResourceQuotas
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationQuota", "applicationQuota"]
            resourceQuotaDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationVersionQuota", "applicationVersionQuota"]
            resourceQuotaDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnvironmentQuota", "environmentQuota"]
            resourceQuotaDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConfigurationTemplateQuota", "configurationTemplateQuota"]
            resourceQuotaDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomPlatformQuota", "customPlatformQuota"]
            resourceQuotaDecoder
        )
        




resourceQuotasToString : ResourceQuotas -> String -- List (String, String)
resourceQuotasToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "applicationQuota" "" -- val.applicationQuota
        
    --     |> Dict.insert
    --         "applicationVersionQuota" "" -- val.applicationVersionQuota
        
    --     |> Dict.insert
    --         "environmentQuota" "" -- val.environmentQuota
        
    --     |> Dict.insert
    --         "configurationTemplateQuota" "" -- val.configurationTemplateQuota
        
    --     |> Dict.insert
    --         "customPlatformQuota" "" -- val.customPlatformQuota
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from resourceTagsDescriptio
-}
type alias ResourceTagsDescriptionMessage =
    { resourceArn : Maybe String
    , resourceTags : Maybe (List Tag)
    }



resourceTagsDescriptionMessageDecoder : JD.Decoder ResourceTagsDescriptionMessage
resourceTagsDescriptionMessageDecoder =
    JD.succeed ResourceTagsDescriptionMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceArn", "resourceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceTags", "resourceTags"]
            (JD.list tagDecoder)
        )
        




resourceTagsDescriptionMessageToString : ResourceTagsDescriptionMessage -> String -- List (String, String)
resourceTagsDescriptionMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceArn" "" -- val.resourceArn
        
    --     |> Dict.insert
    --         "resourceTags" "" -- val.resourceTags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from retrieveEnvironmentInfoResul
-}
type alias RetrieveEnvironmentInfoResultMessage =
    { environmentInfo : Maybe (List EnvironmentInfoDescription)
    }



retrieveEnvironmentInfoResultMessageDecoder : JD.Decoder RetrieveEnvironmentInfoResultMessage
retrieveEnvironmentInfoResultMessageDecoder =
    JD.succeed RetrieveEnvironmentInfoResultMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnvironmentInfo", "environmentInfo"]
            (JD.list environmentInfoDescriptionDecoder)
        )
        




retrieveEnvironmentInfoResultMessageToString : RetrieveEnvironmentInfoResultMessage -> String -- List (String, String)
retrieveEnvironmentInfoResultMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "environmentInfo" "" -- val.environmentInfo
        
    --     |> Dict.toList
    ""



{-| <p>The bucket and key of an item stored in Amazon S3.</p>
-}
type alias S3Location =
    { s3Bucket : Maybe String
    , s3Key : Maybe String
    }



s3LocationDecoder : JD.Decoder S3Location
s3LocationDecoder =
    JD.succeed S3Location
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3Bucket", "s3Bucket"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3Key", "s3Key"]
            JD.string
        )
        




s3LocationToString : S3Location -> String -- List (String, String)
s3LocationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s3Bucket" "" -- val.s3Bucket
        
    --     |> Dict.insert
    --         "s3Key" "" -- val.s3Key
        
    --     |> Dict.toList
    ""



{-| <p>Detailed health information about an Amazon EC2 instance in your Elastic Beanstalk environment.</p>
-}
type alias SingleInstanceHealth =
    { instanceId : Maybe String
    , healthStatus : Maybe String
    , color : Maybe String
    , causes : Maybe (List String)
    , launchedAt : Maybe Posix
    , applicationMetrics : Maybe ApplicationMetrics
    , system : Maybe SystemStatus
    , deployment : Maybe Deployment
    , availabilityZone : Maybe String
    , instanceType : Maybe String
    }



singleInstanceHealthDecoder : JD.Decoder SingleInstanceHealth
singleInstanceHealthDecoder =
    JD.succeed SingleInstanceHealth
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HealthStatus", "healthStatus"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Color", "color"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Causes", "causes"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LaunchedAt", "launchedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationMetrics", "applicationMetrics"]
            applicationMetricsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["System", "system"]
            systemStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Deployment", "deployment"]
            deploymentDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZone", "availabilityZone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceType", "instanceType"]
            JD.string
        )
        




singleInstanceHealthToString : SingleInstanceHealth -> String -- List (String, String)
singleInstanceHealthToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.insert
    --         "healthStatus" "" -- val.healthStatus
        
    --     |> Dict.insert
    --         "color" "" -- val.color
        
    --     |> Dict.insert
    --         "causes" "" -- val.causes
        
    --     |> Dict.insert
    --         "launchedAt" "" -- val.launchedAt
        
    --     |> Dict.insert
    --         "applicationMetrics" "" -- val.applicationMetrics
        
    --     |> Dict.insert
    --         "system" "" -- val.system
        
    --     |> Dict.insert
    --         "deployment" "" -- val.deployment
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.insert
    --         "instanceType" "" -- val.instanceType
        
    --     |> Dict.toList
    ""



{-| <p>Describes the solution stack.</p>
-}
type alias SolutionStackDescription =
    { solutionStackName : Maybe String
    , permittedFileTypes : Maybe (List String)
    }



solutionStackDescriptionDecoder : JD.Decoder SolutionStackDescription
solutionStackDescriptionDecoder =
    JD.succeed SolutionStackDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SolutionStackName", "solutionStackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PermittedFileTypes", "permittedFileTypes"]
            (JD.list JD.string)
        )
        




solutionStackDescriptionToString : SolutionStackDescription -> String -- List (String, String)
solutionStackDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "solutionStackName" "" -- val.solutionStackName
        
    --     |> Dict.insert
    --         "permittedFileTypes" "" -- val.permittedFileTypes
        
    --     |> Dict.toList
    ""



{-| <p>Location of the source code for an application version.</p>
-}
type alias SourceBuildInformation =
    { sourceType : SourceType
    , sourceRepository : SourceRepository
    , sourceLocation : String
    }



sourceBuildInformationDecoder : JD.Decoder SourceBuildInformation
sourceBuildInformationDecoder =
    JD.succeed SourceBuildInformation
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SourceType", "sourceType"]
            sourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SourceRepository", "sourceRepository"]
            sourceRepositoryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SourceLocation", "sourceLocation"]
            JD.string
        )
        




sourceBuildInformationToString : SourceBuildInformation -> String -- List (String, String)
sourceBuildInformationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sourceType" "" -- val.sourceType
        
    --     |> Dict.insert
    --         "sourceRepository" "" -- val.sourceRepository
        
    --     |> Dict.insert
    --         "sourceLocation" "" -- val.sourceLocation
        
    --     |> Dict.toList
    ""



{-| <p>A specification for an environment configuration</p>
-}
type alias SourceConfiguration =
    { applicationName : Maybe String
    , templateName : Maybe String
    }



sourceConfigurationDecoder : JD.Decoder SourceConfiguration
sourceConfigurationDecoder =
    JD.succeed SourceConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationName", "applicationName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TemplateName", "templateName"]
            JD.string
        )
        




sourceConfigurationToString : SourceConfiguration -> String -- List (String, String)
sourceConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
        
    --     |> Dict.insert
    --         "templateName" "" -- val.templateName
        
    --     |> Dict.toList
    ""



{-| One of

* `SourceRepository_CodeCommit`
* `SourceRepository_S3`

-}
type SourceRepository
    = SourceRepository_CodeCommit
    | SourceRepository_S3



sourceRepositoryDecoder : JD.Decoder SourceRepository
sourceRepositoryDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CodeCommit" ->
                        JD.succeed SourceRepository_CodeCommit

                    "S3" ->
                        JD.succeed SourceRepository_S3


                    _ ->
                        JD.fail "bad thing"
            )




sourceRepositoryToString : SourceRepository -> String
sourceRepositoryToString val =
    case val of
        SourceRepository_CodeCommit ->
            "CodeCommit"

        SourceRepository_S3 ->
            "S3"




{-| One of

* `SourceType_Git`
* `SourceType_Zip`

-}
type SourceType
    = SourceType_Git
    | SourceType_Zip



sourceTypeDecoder : JD.Decoder SourceType
sourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Git" ->
                        JD.succeed SourceType_Git

                    "Zip" ->
                        JD.succeed SourceType_Zip


                    _ ->
                        JD.fail "bad thing"
            )




sourceTypeToString : SourceType -> String
sourceTypeToString val =
    case val of
        SourceType_Git ->
            "Git"

        SourceType_Zip ->
            "Zip"




{-| <p>Represents the percentage of requests over the last 10 seconds that resulted in each type of status code response. For more information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html">Status Code Definitions</a>.</p>
-}
type alias StatusCodes =
    { status2xx : Maybe Int
    , status3xx : Maybe Int
    , status4xx : Maybe Int
    , status5xx : Maybe Int
    }



statusCodesDecoder : JD.Decoder StatusCodes
statusCodesDecoder =
    JD.succeed StatusCodes
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status2xx", "status2xx"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status3xx", "status3xx"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status4xx", "status4xx"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status5xx", "status5xx"]
            JD.int
        )
        




statusCodesToString : StatusCodes -> String -- List (String, String)
statusCodesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status2xx" "" -- val.status2xx
        
    --     |> Dict.insert
    --         "status3xx" "" -- val.status3xx
        
    --     |> Dict.insert
    --         "status4xx" "" -- val.status4xx
        
    --     |> Dict.insert
    --         "status5xx" "" -- val.status5xx
        
    --     |> Dict.toList
    ""



{-| <p>CPU utilization and load average metrics for an Amazon EC2 instance.</p>
-}
type alias SystemStatus =
    { cPUUtilization : Maybe CPUUtilization
    , loadAverage : Maybe (List Float)
    }



systemStatusDecoder : JD.Decoder SystemStatus
systemStatusDecoder =
    JD.succeed SystemStatus
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CPUUtilization", "cPUUtilization"]
            cPUUtilizationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadAverage", "loadAverage"]
            (JD.list JD.float)
        )
        




systemStatusToString : SystemStatus -> String -- List (String, String)
systemStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "cPUUtilization" "" -- val.cPUUtilization
        
    --     |> Dict.insert
    --         "loadAverage" "" -- val.loadAverage
        
    --     |> Dict.toList
    ""



{-| <p>Describes a tag applied to a resource in an environment.</p>
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



{-| <p>Describes a trigger.</p>
-}
type alias Trigger =
    { name : Maybe String
    }



triggerDecoder : JD.Decoder Trigger
triggerDecoder =
    JD.succeed Trigger
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




triggerToString : Trigger -> String -- List (String, String)
triggerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>An error or warning for a desired configuration option value.</p>
-}
type alias ValidationMessage =
    { message : Maybe String
    , severity : Maybe ValidationSeverity
    , namespace : Maybe String
    , optionName : Maybe String
    }



validationMessageDecoder : JD.Decoder ValidationMessage
validationMessageDecoder =
    JD.succeed ValidationMessage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Severity", "severity"]
            validationSeverityDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Namespace", "namespace"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OptionName", "optionName"]
            JD.string
        )
        




validationMessageToString : ValidationMessage -> String -- List (String, String)
validationMessageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "severity" "" -- val.severity
        
    --     |> Dict.insert
    --         "namespace" "" -- val.namespace
        
    --     |> Dict.insert
    --         "optionName" "" -- val.optionName
        
    --     |> Dict.toList
    ""



{-| One of

* `ValidationSeverity_error`
* `ValidationSeverity_warning`

-}
type ValidationSeverity
    = ValidationSeverity_error
    | ValidationSeverity_warning



validationSeverityDecoder : JD.Decoder ValidationSeverity
validationSeverityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "error" ->
                        JD.succeed ValidationSeverity_error

                    "warning" ->
                        JD.succeed ValidationSeverity_warning


                    _ ->
                        JD.fail "bad thing"
            )




validationSeverityToString : ValidationSeverity -> String
validationSeverityToString val =
    case val of
        ValidationSeverity_error ->
            "error"

        ValidationSeverity_warning ->
            "warning"







{-| <p/>
-}
type alias AbortEnvironmentUpdateMessage =
    { environmentId : Maybe String
    , environmentName : Maybe String
    }


{-| <p>Request to execute a scheduled managed action immediately.</p>
-}
type alias ApplyEnvironmentManagedActionRequest =
    { environmentName : Maybe String
    , environmentId : Maybe String
    , actionId : String
    }


{-| <p>Results message indicating whether a CNAME is available.</p>
-}
type alias CheckDNSAvailabilityMessage =
    { cNAMEPrefix : String
    }


{-| <p>Request to create or update a group of environments.</p>
-}
type alias ComposeEnvironmentsMessage =
    { applicationName : Maybe String
    , groupName : Maybe String
    , versionLabels : Maybe (List String)
    }


{-| <p>Request to create an application.</p>
-}
type alias CreateApplicationMessage =
    { applicationName : String
    , description : Maybe String
    , resourceLifecycleConfig : Maybe ApplicationResourceLifecycleConfig
    , tags : Maybe (List Tag)
    }


{-| <p/>
-}
type alias CreateApplicationVersionMessage =
    { applicationName : String
    , versionLabel : String
    , description : Maybe String
    , sourceBuildInformation : Maybe SourceBuildInformation
    , sourceBundle : Maybe S3Location
    , buildConfiguration : Maybe BuildConfiguration
    , autoCreateApplication : Maybe Bool
    , process : Maybe Bool
    , tags : Maybe (List Tag)
    }


{-| <p>Request to create a configuration template.</p>
-}
type alias CreateConfigurationTemplateMessage =
    { applicationName : String
    , templateName : String
    , solutionStackName : Maybe String
    , platformArn : Maybe String
    , sourceConfiguration : Maybe SourceConfiguration
    , environmentId : Maybe String
    , description : Maybe String
    , optionSettings : Maybe (List ConfigurationOptionSetting)
    , tags : Maybe (List Tag)
    }


{-| <p/>
-}
type alias CreateEnvironmentMessage =
    { applicationName : String
    , environmentName : Maybe String
    , groupName : Maybe String
    , description : Maybe String
    , cNAMEPrefix : Maybe String
    , tier : Maybe EnvironmentTier
    , tags : Maybe (List Tag)
    , versionLabel : Maybe String
    , templateName : Maybe String
    , solutionStackName : Maybe String
    , platformArn : Maybe String
    , optionSettings : Maybe (List ConfigurationOptionSetting)
    , optionsToRemove : Maybe (List OptionSpecification)
    }


{-| <p>Request to create a new platform version.</p>
-}
type alias CreatePlatformVersionRequest =
    { platformName : String
    , platformVersion : String
    , platformDefinitionBundle : S3Location
    , environmentName : Maybe String
    , optionSettings : Maybe (List ConfigurationOptionSetting)
    , tags : Maybe (List Tag)
    }


{-| <p>Request to delete an application.</p>
-}
type alias DeleteApplicationMessage =
    { applicationName : String
    , terminateEnvByForce : Maybe Bool
    }


{-| <p>Request to delete an application version.</p>
-}
type alias DeleteApplicationVersionMessage =
    { applicationName : String
    , versionLabel : String
    , deleteSourceBundle : Maybe Bool
    }


{-| <p>Request to delete a configuration template.</p>
-}
type alias DeleteConfigurationTemplateMessage =
    { applicationName : String
    , templateName : String
    }


{-| <p>Request to delete a draft environment configuration.</p>
-}
type alias DeleteEnvironmentConfigurationMessage =
    { applicationName : String
    , environmentName : String
    }


{-| undefined
-}
type alias DeletePlatformVersionRequest =
    { platformArn : Maybe String
    }


{-| <p>Request to describe application versions.</p>
-}
type alias DescribeApplicationVersionsMessage =
    { applicationName : Maybe String
    , versionLabels : Maybe (List String)
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Request to describe one or more applications.</p>
-}
type alias DescribeApplicationsMessage =
    { applicationNames : Maybe (List String)
    }


{-| <p>Result message containing a list of application version descriptions.</p>
-}
type alias DescribeConfigurationOptionsMessage =
    { applicationName : Maybe String
    , templateName : Maybe String
    , environmentName : Maybe String
    , solutionStackName : Maybe String
    , platformArn : Maybe String
    , options : Maybe (List OptionSpecification)
    }


{-| <p>Result message containing all of the configuration settings for a specified solution stack or configuration template.</p>
-}
type alias DescribeConfigurationSettingsMessage =
    { applicationName : String
    , templateName : Maybe String
    , environmentName : Maybe String
    }


{-| <p>See the example below to learn how to create a request body.</p>
-}
type alias DescribeEnvironmentHealthRequest =
    { environmentName : Maybe String
    , environmentId : Maybe String
    , attributeNames : Maybe (List EnvironmentHealthAttribute)
    }


{-| <p>Request to list completed and failed managed actions.</p>
-}
type alias DescribeEnvironmentManagedActionHistoryRequest =
    { environmentId : Maybe String
    , environmentName : Maybe String
    , nextToken : Maybe String
    , maxItems : Maybe Int
    }


{-| <p>Request to list an environment's upcoming and in-progress managed actions.</p>
-}
type alias DescribeEnvironmentManagedActionsRequest =
    { environmentName : Maybe String
    , environmentId : Maybe String
    , status : Maybe ActionStatus
    }


{-| <p>Request to describe the resources in an environment.</p>
-}
type alias DescribeEnvironmentResourcesMessage =
    { environmentId : Maybe String
    , environmentName : Maybe String
    }


{-| <p>Request to describe one or more environments.</p>
-}
type alias DescribeEnvironmentsMessage =
    { applicationName : Maybe String
    , versionLabel : Maybe String
    , environmentIds : Maybe (List String)
    , environmentNames : Maybe (List String)
    , includeDeleted : Maybe Bool
    , includedDeletedBackTo : Maybe Posix
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Request to retrieve a list of events for an environment.</p>
-}
type alias DescribeEventsMessage =
    { applicationName : Maybe String
    , versionLabel : Maybe String
    , templateName : Maybe String
    , environmentId : Maybe String
    , environmentName : Maybe String
    , platformArn : Maybe String
    , requestId : Maybe String
    , severity : Maybe EventSeverity
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Parameters for a call to <code>DescribeInstancesHealth</code>.</p>
-}
type alias DescribeInstancesHealthRequest =
    { environmentName : Maybe String
    , environmentId : Maybe String
    , attributeNames : Maybe (List InstancesHealthAttribute)
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribePlatformVersionRequest =
    { platformArn : Maybe String
    }


{-| undefined
-}
type alias ListPlatformVersionsRequest =
    { filters : Maybe (List PlatformFilter)
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListTagsForResourceMessage =
    { resourceArn : String
    }


{-| <p/>
-}
type alias RebuildEnvironmentMessage =
    { environmentId : Maybe String
    , environmentName : Maybe String
    }


{-| <p>Request to retrieve logs from an environment and store them in your Elastic Beanstalk storage bucket.</p>
-}
type alias RequestEnvironmentInfoMessage =
    { environmentId : Maybe String
    , environmentName : Maybe String
    , infoType : EnvironmentInfoType
    }


{-| <p/>
-}
type alias RestartAppServerMessage =
    { environmentId : Maybe String
    , environmentName : Maybe String
    }


{-| <p>Request to download logs retrieved with <a>RequestEnvironmentInfo</a>.</p>
-}
type alias RetrieveEnvironmentInfoMessage =
    { environmentId : Maybe String
    , environmentName : Maybe String
    , infoType : EnvironmentInfoType
    }


{-| <p>Swaps the CNAMEs of two environments.</p>
-}
type alias SwapEnvironmentCNAMEsMessage =
    { sourceEnvironmentId : Maybe String
    , sourceEnvironmentName : Maybe String
    , destinationEnvironmentId : Maybe String
    , destinationEnvironmentName : Maybe String
    }


{-| <p>Request to terminate an environment.</p>
-}
type alias TerminateEnvironmentMessage =
    { environmentId : Maybe String
    , environmentName : Maybe String
    , terminateResources : Maybe Bool
    , forceTerminate : Maybe Bool
    }


{-| <p>Request to update an application.</p>
-}
type alias UpdateApplicationMessage =
    { applicationName : String
    , description : Maybe String
    }


{-| undefined
-}
type alias UpdateApplicationResourceLifecycleMessage =
    { applicationName : String
    , resourceLifecycleConfig : ApplicationResourceLifecycleConfig
    }


{-| <p/>
-}
type alias UpdateApplicationVersionMessage =
    { applicationName : String
    , versionLabel : String
    , description : Maybe String
    }


{-| <p>The result message containing the options for the specified solution stack.</p>
-}
type alias UpdateConfigurationTemplateMessage =
    { applicationName : String
    , templateName : String
    , description : Maybe String
    , optionSettings : Maybe (List ConfigurationOptionSetting)
    , optionsToRemove : Maybe (List OptionSpecification)
    }


{-| <p>Request to update an environment.</p>
-}
type alias UpdateEnvironmentMessage =
    { applicationName : Maybe String
    , environmentId : Maybe String
    , environmentName : Maybe String
    , groupName : Maybe String
    , description : Maybe String
    , tier : Maybe EnvironmentTier
    , versionLabel : Maybe String
    , templateName : Maybe String
    , solutionStackName : Maybe String
    , platformArn : Maybe String
    , optionSettings : Maybe (List ConfigurationOptionSetting)
    , optionsToRemove : Maybe (List OptionSpecification)
    }


{-| undefined
-}
type alias UpdateTagsForResourceMessage =
    { resourceArn : String
    , tagsToAdd : Maybe (List Tag)
    , tagsToRemove : Maybe (List String)
    }


{-| <p>A list of validation messages for a specified configuration template.</p>
-}
type alias ValidateConfigurationSettingsMessage =
    { applicationName : String
    , templateName : Maybe String
    , environmentName : Maybe String
    , optionSettings : (List ConfigurationOptionSetting)
    }








abortEnvironmentUpdateMessageEncoder : AbortEnvironmentUpdateMessage -> List (String, String)
abortEnvironmentUpdateMessageEncoder data =
    []
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        


















applicationDescriptionEncoder : ApplicationDescription -> List (String, String)
applicationDescriptionEncoder data =
    []
        
        
        |> (case data.applicationArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.applicationName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dateCreated of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DateCreated" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dateUpdated of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DateUpdated" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.versions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Versions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.configurationTemplates of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ConfigurationTemplates" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resourceLifecycleConfig of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs applicationResourceLifecycleConfigEncoder "ResourceLifecycleConfig" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






applicationDescriptionMessageEncoder : ApplicationDescriptionMessage -> List (String, String)
applicationDescriptionMessageEncoder data =
    []
        
        
        |> (case data.application of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs applicationDescriptionEncoder "Application" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






applicationDescriptionsMessageEncoder : ApplicationDescriptionsMessage -> List (String, String)
applicationDescriptionsMessageEncoder data =
    []
        
        
        |> (case data.applications of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs applicationDescriptionEncoder "") "Applications" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






applicationMetricsEncoder : ApplicationMetrics -> List (String, String)
applicationMetricsEncoder data =
    []
        
        
        |> (case data.duration of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Duration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.requestCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "RequestCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.statusCodes of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs statusCodesEncoder "StatusCodes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.latency of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs latencyEncoder "Latency" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






applicationResourceLifecycleConfigEncoder : ApplicationResourceLifecycleConfig -> List (String, String)
applicationResourceLifecycleConfigEncoder data =
    []
        
        
        |> (case data.serviceRole of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ServiceRole" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.versionLifecycleConfig of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs applicationVersionLifecycleConfigEncoder "VersionLifecycleConfig" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






applicationResourceLifecycleDescriptionMessageEncoder : ApplicationResourceLifecycleDescriptionMessage -> List (String, String)
applicationResourceLifecycleDescriptionMessageEncoder data =
    []
        
        
        |> (case data.applicationName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resourceLifecycleConfig of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs applicationResourceLifecycleConfigEncoder "ResourceLifecycleConfig" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






applicationVersionDescriptionEncoder : ApplicationVersionDescription -> List (String, String)
applicationVersionDescriptionEncoder data =
    []
        
        
        |> (case data.applicationVersionArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationVersionArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.applicationName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.versionLabel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VersionLabel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceBuildInformation of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs sourceBuildInformationEncoder "SourceBuildInformation" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.buildArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "BuildArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceBundle of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs s3LocationEncoder "SourceBundle" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dateCreated of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DateCreated" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dateUpdated of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DateUpdated" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs applicationVersionStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






applicationVersionDescriptionMessageEncoder : ApplicationVersionDescriptionMessage -> List (String, String)
applicationVersionDescriptionMessageEncoder data =
    []
        
        
        |> (case data.applicationVersion of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs applicationVersionDescriptionEncoder "ApplicationVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






applicationVersionDescriptionsMessageEncoder : ApplicationVersionDescriptionsMessage -> List (String, String)
applicationVersionDescriptionsMessageEncoder data =
    []
        
        
        |> (case data.applicationVersions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs applicationVersionDescriptionEncoder "") "ApplicationVersions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






applicationVersionLifecycleConfigEncoder : ApplicationVersionLifecycleConfig -> List (String, String)
applicationVersionLifecycleConfigEncoder data =
    []
        
        
        |> (case data.maxCountRule of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs maxCountRuleEncoder "MaxCountRule" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxAgeRule of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs maxAgeRuleEncoder "MaxAgeRule" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










applyEnvironmentManagedActionRequestEncoder : ApplyEnvironmentManagedActionRequest -> List (String, String)
applyEnvironmentManagedActionRequestEncoder data =
    []
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ActionId" data.actionId
        
        






applyEnvironmentManagedActionResultEncoder : ApplyEnvironmentManagedActionResult -> List (String, String)
applyEnvironmentManagedActionResultEncoder data =
    []
        
        
        |> (case data.actionId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ActionId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.actionDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ActionDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.actionType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs actionTypeToString "ActionType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






autoScalingGroupEncoder : AutoScalingGroup -> List (String, String)
autoScalingGroupEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






buildConfigurationEncoder : BuildConfiguration -> List (String, String)
buildConfigurationEncoder data =
    []
        
        
        |> (case data.artifactName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ArtifactName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "CodeBuildServiceRole" data.codeBuildServiceRole
        
        
        
        |> (case data.computeType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs computeTypeToString "ComputeType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Image" data.image
        
        
        
        |> (case data.timeoutInMinutes of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "TimeoutInMinutes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






builderEncoder : Builder -> List (String, String)
builderEncoder data =
    []
        
        
        |> (case data.aRN of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ARN" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






cPUUtilizationEncoder : CPUUtilization -> List (String, String)
cPUUtilizationEncoder data =
    []
        
        
        |> (case data.user of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "User" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nice of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "Nice" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.system of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "System" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.idle of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "Idle" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iOWait of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "IOWait" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.iRQ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "IRQ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.softIRQ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "SoftIRQ" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.privileged of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "Privileged" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






checkDNSAvailabilityMessageEncoder : CheckDNSAvailabilityMessage -> List (String, String)
checkDNSAvailabilityMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "CNAMEPrefix" data.cNAMEPrefix
        
        






checkDNSAvailabilityResultMessageEncoder : CheckDNSAvailabilityResultMessage -> List (String, String)
checkDNSAvailabilityResultMessageEncoder data =
    []
        
        
        |> (case data.available of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Available" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.fullyQualifiedCNAME of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "FullyQualifiedCNAME" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






composeEnvironmentsMessageEncoder : ComposeEnvironmentsMessage -> List (String, String)
composeEnvironmentsMessageEncoder data =
    []
        
        
        |> (case data.applicationName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.groupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "GroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.versionLabels of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VersionLabels" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        














configurationOptionDescriptionEncoder : ConfigurationOptionDescription -> List (String, String)
configurationOptionDescriptionEncoder data =
    []
        
        
        |> (case data.namespace of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Namespace" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
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
        
        
        
        |> (case data.changeSeverity of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ChangeSeverity" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.userDefined of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "UserDefined" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.valueType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs configurationOptionValueTypeToString "ValueType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.valueOptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ValueOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.minValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxLength of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxLength" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.regex of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs optionRestrictionRegexEncoder "Regex" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






configurationOptionSettingEncoder : ConfigurationOptionSetting -> List (String, String)
configurationOptionSettingEncoder data =
    []
        
        
        |> (case data.resourceName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ResourceName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.namespace of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Namespace" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.value of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Value" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










configurationOptionsDescriptionEncoder : ConfigurationOptionsDescription -> List (String, String)
configurationOptionsDescriptionEncoder data =
    []
        
        
        |> (case data.solutionStackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SolutionStackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.options of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs configurationOptionDescriptionEncoder "") "Options" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






configurationSettingsDescriptionEncoder : ConfigurationSettingsDescription -> List (String, String)
configurationSettingsDescriptionEncoder data =
    []
        
        
        |> (case data.solutionStackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SolutionStackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.applicationName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deploymentStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs configurationDeploymentStatusToString "DeploymentStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dateCreated of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DateCreated" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dateUpdated of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DateUpdated" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionSettings of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs configurationOptionSettingEncoder "") "OptionSettings" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






configurationSettingsDescriptionsEncoder : ConfigurationSettingsDescriptions -> List (String, String)
configurationSettingsDescriptionsEncoder data =
    []
        
        
        |> (case data.configurationSettings of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs configurationSettingsDescriptionEncoder "") "ConfigurationSettings" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






configurationSettingsValidationMessagesEncoder : ConfigurationSettingsValidationMessages -> List (String, String)
configurationSettingsValidationMessagesEncoder data =
    []
        
        
        |> (case data.messages of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs validationMessageEncoder "") "Messages" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createApplicationMessageEncoder : CreateApplicationMessage -> List (String, String)
createApplicationMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" data.applicationName
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resourceLifecycleConfig of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs applicationResourceLifecycleConfigEncoder "ResourceLifecycleConfig" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createApplicationVersionMessageEncoder : CreateApplicationVersionMessage -> List (String, String)
createApplicationVersionMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" data.applicationName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "VersionLabel" data.versionLabel
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceBuildInformation of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs sourceBuildInformationEncoder "SourceBuildInformation" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceBundle of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs s3LocationEncoder "SourceBundle" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.buildConfiguration of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs buildConfigurationEncoder "BuildConfiguration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.autoCreateApplication of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AutoCreateApplication" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.process of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Process" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createConfigurationTemplateMessageEncoder : CreateConfigurationTemplateMessage -> List (String, String)
createConfigurationTemplateMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" data.applicationName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" data.templateName
        
        
        
        |> (case data.solutionStackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SolutionStackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceConfiguration of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs sourceConfigurationEncoder "SourceConfiguration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionSettings of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs configurationOptionSettingEncoder "") "OptionSettings" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createEnvironmentMessageEncoder : CreateEnvironmentMessage -> List (String, String)
createEnvironmentMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" data.applicationName
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.groupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "GroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.cNAMEPrefix of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CNAMEPrefix" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tier of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs environmentTierEncoder "Tier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.versionLabel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VersionLabel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.solutionStackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SolutionStackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionSettings of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs configurationOptionSettingEncoder "") "OptionSettings" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionsToRemove of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs optionSpecificationEncoder "") "OptionsToRemove" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createPlatformVersionRequestEncoder : CreatePlatformVersionRequest -> List (String, String)
createPlatformVersionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "PlatformName" data.platformName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "PlatformVersion" data.platformVersion
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs s3LocationEncoder "PlatformDefinitionBundle" data.platformDefinitionBundle
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionSettings of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs configurationOptionSettingEncoder "") "OptionSettings" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createPlatformVersionResultEncoder : CreatePlatformVersionResult -> List (String, String)
createPlatformVersionResultEncoder data =
    []
        
        
        |> (case data.platformSummary of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs platformSummaryEncoder "PlatformSummary" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.builder of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs builderEncoder "Builder" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createStorageLocationResultMessageEncoder : CreateStorageLocationResultMessage -> List (String, String)
createStorageLocationResultMessageEncoder data =
    []
        
        
        |> (case data.s3Bucket of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "S3Bucket" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






customAmiEncoder : CustomAmi -> List (String, String)
customAmiEncoder data =
    []
        
        
        |> (case data.virtualizationType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VirtualizationType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.imageId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ImageId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteApplicationMessageEncoder : DeleteApplicationMessage -> List (String, String)
deleteApplicationMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" data.applicationName
        
        
        
        |> (case data.terminateEnvByForce of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "TerminateEnvByForce" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteApplicationVersionMessageEncoder : DeleteApplicationVersionMessage -> List (String, String)
deleteApplicationVersionMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" data.applicationName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "VersionLabel" data.versionLabel
        
        
        
        |> (case data.deleteSourceBundle of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeleteSourceBundle" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteConfigurationTemplateMessageEncoder : DeleteConfigurationTemplateMessage -> List (String, String)
deleteConfigurationTemplateMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" data.applicationName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" data.templateName
        
        






deleteEnvironmentConfigurationMessageEncoder : DeleteEnvironmentConfigurationMessage -> List (String, String)
deleteEnvironmentConfigurationMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" data.applicationName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" data.environmentName
        
        






deletePlatformVersionRequestEncoder : DeletePlatformVersionRequest -> List (String, String)
deletePlatformVersionRequestEncoder data =
    []
        
        
        |> (case data.platformArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deletePlatformVersionResultEncoder : DeletePlatformVersionResult -> List (String, String)
deletePlatformVersionResultEncoder data =
    []
        
        
        |> (case data.platformSummary of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs platformSummaryEncoder "PlatformSummary" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deploymentEncoder : Deployment -> List (String, String)
deploymentEncoder data =
    []
        
        
        |> (case data.versionLabel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VersionLabel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deploymentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "DeploymentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deploymentTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DeploymentTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeAccountAttributesResultEncoder : DescribeAccountAttributesResult -> List (String, String)
describeAccountAttributesResultEncoder data =
    []
        
        
        |> (case data.resourceQuotas of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs resourceQuotasEncoder "ResourceQuotas" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeApplicationVersionsMessageEncoder : DescribeApplicationVersionsMessage -> List (String, String)
describeApplicationVersionsMessageEncoder data =
    []
        
        
        |> (case data.applicationName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.versionLabels of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "VersionLabels" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxRecords of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeApplicationsMessageEncoder : DescribeApplicationsMessage -> List (String, String)
describeApplicationsMessageEncoder data =
    []
        
        
        |> (case data.applicationNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ApplicationNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeConfigurationOptionsMessageEncoder : DescribeConfigurationOptionsMessage -> List (String, String)
describeConfigurationOptionsMessageEncoder data =
    []
        
        
        |> (case data.applicationName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.solutionStackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SolutionStackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.options of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs optionSpecificationEncoder "") "Options" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeConfigurationSettingsMessageEncoder : DescribeConfigurationSettingsMessage -> List (String, String)
describeConfigurationSettingsMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" data.applicationName
        
        
        
        |> (case data.templateName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeEnvironmentHealthRequestEncoder : DescribeEnvironmentHealthRequest -> List (String, String)
describeEnvironmentHealthRequestEncoder data =
    []
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.attributeNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs environmentHealthAttributeToString "") "AttributeNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeEnvironmentHealthResultEncoder : DescribeEnvironmentHealthResult -> List (String, String)
describeEnvironmentHealthResultEncoder data =
    []
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "HealthStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs environmentHealthToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.color of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Color" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.causes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Causes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.applicationMetrics of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs applicationMetricsEncoder "ApplicationMetrics" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.instancesHealth of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs instanceHealthSummaryEncoder "InstancesHealth" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.refreshedAt of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "RefreshedAt" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeEnvironmentManagedActionHistoryRequestEncoder : DescribeEnvironmentManagedActionHistoryRequest -> List (String, String)
describeEnvironmentManagedActionHistoryRequestEncoder data =
    []
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
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
        
        






describeEnvironmentManagedActionHistoryResultEncoder : DescribeEnvironmentManagedActionHistoryResult -> List (String, String)
describeEnvironmentManagedActionHistoryResultEncoder data =
    []
        
        
        |> (case data.managedActionHistoryItems of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs managedActionHistoryItemEncoder "") "ManagedActionHistoryItems" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeEnvironmentManagedActionsRequestEncoder : DescribeEnvironmentManagedActionsRequest -> List (String, String)
describeEnvironmentManagedActionsRequestEncoder data =
    []
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs actionStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeEnvironmentManagedActionsResultEncoder : DescribeEnvironmentManagedActionsResult -> List (String, String)
describeEnvironmentManagedActionsResultEncoder data =
    []
        
        
        |> (case data.managedActions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs managedActionEncoder "") "ManagedActions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeEnvironmentResourcesMessageEncoder : DescribeEnvironmentResourcesMessage -> List (String, String)
describeEnvironmentResourcesMessageEncoder data =
    []
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeEnvironmentsMessageEncoder : DescribeEnvironmentsMessage -> List (String, String)
describeEnvironmentsMessageEncoder data =
    []
        
        
        |> (case data.applicationName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.versionLabel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VersionLabel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EnvironmentIds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "EnvironmentNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.includeDeleted of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IncludeDeleted" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.includedDeletedBackTo of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "IncludedDeletedBackTo" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxRecords of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeEventsMessageEncoder : DescribeEventsMessage -> List (String, String)
describeEventsMessageEncoder data =
    []
        
        
        |> (case data.applicationName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.versionLabel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VersionLabel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.requestId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RequestId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.severity of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs eventSeverityToString "Severity" value
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
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeInstancesHealthRequestEncoder : DescribeInstancesHealthRequest -> List (String, String)
describeInstancesHealthRequestEncoder data =
    []
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.attributeNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs instancesHealthAttributeToString "") "AttributeNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeInstancesHealthResultEncoder : DescribeInstancesHealthResult -> List (String, String)
describeInstancesHealthResultEncoder data =
    []
        
        
        |> (case data.instanceHealthList of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs singleInstanceHealthEncoder "") "InstanceHealthList" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.refreshedAt of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "RefreshedAt" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describePlatformVersionRequestEncoder : DescribePlatformVersionRequest -> List (String, String)
describePlatformVersionRequestEncoder data =
    []
        
        
        |> (case data.platformArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describePlatformVersionResultEncoder : DescribePlatformVersionResult -> List (String, String)
describePlatformVersionResultEncoder data =
    []
        
        
        |> (case data.platformDescription of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs platformDescriptionEncoder "PlatformDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






environmentDescriptionEncoder : EnvironmentDescription -> List (String, String)
environmentDescriptionEncoder data =
    []
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.applicationName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.versionLabel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VersionLabel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.solutionStackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SolutionStackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.endpointURL of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EndpointURL" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.cNAME of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CNAME" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dateCreated of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DateCreated" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dateUpdated of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DateUpdated" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs environmentStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.abortableOperationInProgress of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AbortableOperationInProgress" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.health of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs environmentHealthToString "Health" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs environmentHealthStatusToString "HealthStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resources of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs environmentResourcesDescriptionEncoder "Resources" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tier of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs environmentTierEncoder "Tier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentLinks of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs environmentLinkEncoder "") "EnvironmentLinks" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






environmentDescriptionsMessageEncoder : EnvironmentDescriptionsMessage -> List (String, String)
environmentDescriptionsMessageEncoder data =
    []
        
        
        |> (case data.environments of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs environmentDescriptionEncoder "") "Environments" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        


















environmentInfoDescriptionEncoder : EnvironmentInfoDescription -> List (String, String)
environmentInfoDescriptionEncoder data =
    []
        
        
        |> (case data.infoType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs environmentInfoTypeToString "InfoType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.ec2InstanceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Ec2InstanceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sampleTimestamp of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "SampleTimestamp" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.message of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Message" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










environmentLinkEncoder : EnvironmentLink -> List (String, String)
environmentLinkEncoder data =
    []
        
        
        |> (case data.linkName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LinkName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






environmentResourceDescriptionEncoder : EnvironmentResourceDescription -> List (String, String)
environmentResourceDescriptionEncoder data =
    []
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.autoScalingGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs autoScalingGroupEncoder "") "AutoScalingGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.instances of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs instanceEncoder "") "Instances" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.launchConfigurations of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs launchConfigurationEncoder "") "LaunchConfigurations" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.launchTemplates of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs launchTemplateEncoder "") "LaunchTemplates" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.loadBalancers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs loadBalancerEncoder "") "LoadBalancers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.triggers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs triggerEncoder "") "Triggers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.queues of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs queueEncoder "") "Queues" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






environmentResourceDescriptionsMessageEncoder : EnvironmentResourceDescriptionsMessage -> List (String, String)
environmentResourceDescriptionsMessageEncoder data =
    []
        
        
        |> (case data.environmentResources of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs environmentResourceDescriptionEncoder "EnvironmentResources" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






environmentResourcesDescriptionEncoder : EnvironmentResourcesDescription -> List (String, String)
environmentResourcesDescriptionEncoder data =
    []
        
        
        |> (case data.loadBalancer of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs loadBalancerDescriptionEncoder "LoadBalancer" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










environmentTierEncoder : EnvironmentTier -> List (String, String)
environmentTierEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.type_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Type" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.version of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Version" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






eventDescriptionEncoder : EventDescription -> List (String, String)
eventDescriptionEncoder data =
    []
        
        
        |> (case data.eventDate of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EventDate" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.message of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Message" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.applicationName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.versionLabel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VersionLabel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.requestId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RequestId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.severity of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs eventSeverityToString "Severity" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






eventDescriptionsMessageEncoder : EventDescriptionsMessage -> List (String, String)
eventDescriptionsMessageEncoder data =
    []
        
        
        |> (case data.events of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs eventDescriptionEncoder "") "Events" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        














instanceEncoder : Instance -> List (String, String)
instanceEncoder data =
    []
        
        
        |> (case data.id of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Id" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






instanceHealthSummaryEncoder : InstanceHealthSummary -> List (String, String)
instanceHealthSummaryEncoder data =
    []
        
        
        |> (case data.noData of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "NoData" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.unknown of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Unknown" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.pending of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Pending" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.ok of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Ok" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.info of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Info" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.warning of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Warning" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.degraded of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Degraded" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.severe of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Severe" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










latencyEncoder : Latency -> List (String, String)
latencyEncoder data =
    []
        
        
        |> (case data.p999 of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "P999" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.p99 of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "P99" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.p95 of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "P95" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.p90 of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "P90" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.p85 of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "P85" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.p75 of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "P75" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.p50 of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "P50" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.p10 of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "P10" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






launchConfigurationEncoder : LaunchConfiguration -> List (String, String)
launchConfigurationEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






launchTemplateEncoder : LaunchTemplate -> List (String, String)
launchTemplateEncoder data =
    []
        
        
        |> (case data.id of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Id" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listAvailableSolutionStacksResultMessageEncoder : ListAvailableSolutionStacksResultMessage -> List (String, String)
listAvailableSolutionStacksResultMessageEncoder data =
    []
        
        
        |> (case data.solutionStacks of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SolutionStacks" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.solutionStackDetails of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs solutionStackDescriptionEncoder "") "SolutionStackDetails" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listPlatformVersionsRequestEncoder : ListPlatformVersionsRequest -> List (String, String)
listPlatformVersionsRequestEncoder data =
    []
        
        
        |> (case data.filters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs platformFilterEncoder "") "Filters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxRecords of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listPlatformVersionsResultEncoder : ListPlatformVersionsResult -> List (String, String)
listPlatformVersionsResultEncoder data =
    []
        
        
        |> (case data.platformSummaryList of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs platformSummaryEncoder "") "PlatformSummaryList" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listTagsForResourceMessageEncoder : ListTagsForResourceMessage -> List (String, String)
listTagsForResourceMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceArn" data.resourceArn
        
        






listenerEncoder : Listener -> List (String, String)
listenerEncoder data =
    []
        
        
        |> (case data.protocol of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Protocol" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






loadBalancerEncoder : LoadBalancer -> List (String, String)
loadBalancerEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






loadBalancerDescriptionEncoder : LoadBalancerDescription -> List (String, String)
loadBalancerDescriptionEncoder data =
    []
        
        
        |> (case data.loadBalancerName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.domain of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Domain" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.listeners of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs listenerEncoder "") "Listeners" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






managedActionEncoder : ManagedAction -> List (String, String)
managedActionEncoder data =
    []
        
        
        |> (case data.actionId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ActionId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.actionDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ActionDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.actionType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs actionTypeToString "ActionType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs actionStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.windowStartTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "WindowStartTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






managedActionHistoryItemEncoder : ManagedActionHistoryItem -> List (String, String)
managedActionHistoryItemEncoder data =
    []
        
        
        |> (case data.actionId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ActionId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.actionType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs actionTypeToString "ActionType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.actionDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ActionDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.failureType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs failureTypeToString "FailureType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs actionHistoryStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.failureDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "FailureDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.executedTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ExecutedTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.finishedTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "FinishedTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






maxAgeRuleEncoder : MaxAgeRule -> List (String, String)
maxAgeRuleEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" data.enabled
        
        
        
        |> (case data.maxAgeInDays of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxAgeInDays" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deleteSourceFromS3 of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeleteSourceFromS3" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






maxCountRuleEncoder : MaxCountRule -> List (String, String)
maxCountRuleEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" data.enabled
        
        
        
        |> (case data.maxCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deleteSourceFromS3 of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeleteSourceFromS3" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






optionRestrictionRegexEncoder : OptionRestrictionRegex -> List (String, String)
optionRestrictionRegexEncoder data =
    []
        
        
        |> (case data.pattern of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Pattern" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.label of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Label" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






optionSpecificationEncoder : OptionSpecification -> List (String, String)
optionSpecificationEncoder data =
    []
        
        
        |> (case data.resourceName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ResourceName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.namespace of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Namespace" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






platformDescriptionEncoder : PlatformDescription -> List (String, String)
platformDescriptionEncoder data =
    []
        
        
        |> (case data.platformArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformOwner of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformOwner" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.solutionStackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SolutionStackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs platformStatusToString "PlatformStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dateCreated of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DateCreated" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dateUpdated of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DateUpdated" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformCategory of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformCategory" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maintainer of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Maintainer" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.operatingSystemName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OperatingSystemName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.operatingSystemVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OperatingSystemVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.programmingLanguages of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs platformProgrammingLanguageEncoder "") "ProgrammingLanguages" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.frameworks of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs platformFrameworkEncoder "") "Frameworks" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.customAmiList of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs customAmiEncoder "") "CustomAmiList" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportedTierList of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SupportedTierList" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportedAddonList of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SupportedAddonList" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






platformFilterEncoder : PlatformFilter -> List (String, String)
platformFilterEncoder data =
    []
        
        
        |> (case data.type_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Type" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.operator of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Operator" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.values of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Values" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






platformFrameworkEncoder : PlatformFramework -> List (String, String)
platformFrameworkEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.version of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Version" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






platformProgrammingLanguageEncoder : PlatformProgrammingLanguage -> List (String, String)
platformProgrammingLanguageEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.version of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Version" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










platformSummaryEncoder : PlatformSummary -> List (String, String)
platformSummaryEncoder data =
    []
        
        
        |> (case data.platformArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformOwner of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformOwner" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs platformStatusToString "PlatformStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformCategory of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformCategory" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.operatingSystemName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OperatingSystemName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.operatingSystemVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OperatingSystemVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportedTierList of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SupportedTierList" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.supportedAddonList of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SupportedAddonList" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






queueEncoder : Queue -> List (String, String)
queueEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.uRL of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "URL" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






rebuildEnvironmentMessageEncoder : RebuildEnvironmentMessage -> List (String, String)
rebuildEnvironmentMessageEncoder data =
    []
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






requestEnvironmentInfoMessageEncoder : RequestEnvironmentInfoMessage -> List (String, String)
requestEnvironmentInfoMessageEncoder data =
    []
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs environmentInfoTypeToString "InfoType" data.infoType
        
        






resourceQuotaEncoder : ResourceQuota -> List (String, String)
resourceQuotaEncoder data =
    []
        
        
        |> (case data.maximum of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Maximum" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






resourceQuotasEncoder : ResourceQuotas -> List (String, String)
resourceQuotasEncoder data =
    []
        
        
        |> (case data.applicationQuota of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs resourceQuotaEncoder "ApplicationQuota" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.applicationVersionQuota of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs resourceQuotaEncoder "ApplicationVersionQuota" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentQuota of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs resourceQuotaEncoder "EnvironmentQuota" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.configurationTemplateQuota of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs resourceQuotaEncoder "ConfigurationTemplateQuota" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.customPlatformQuota of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs resourceQuotaEncoder "CustomPlatformQuota" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






resourceTagsDescriptionMessageEncoder : ResourceTagsDescriptionMessage -> List (String, String)
resourceTagsDescriptionMessageEncoder data =
    []
        
        
        |> (case data.resourceArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ResourceArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resourceTags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "ResourceTags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






restartAppServerMessageEncoder : RestartAppServerMessage -> List (String, String)
restartAppServerMessageEncoder data =
    []
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






retrieveEnvironmentInfoMessageEncoder : RetrieveEnvironmentInfoMessage -> List (String, String)
retrieveEnvironmentInfoMessageEncoder data =
    []
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs environmentInfoTypeToString "InfoType" data.infoType
        
        






retrieveEnvironmentInfoResultMessageEncoder : RetrieveEnvironmentInfoResultMessage -> List (String, String)
retrieveEnvironmentInfoResultMessageEncoder data =
    []
        
        
        |> (case data.environmentInfo of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs environmentInfoDescriptionEncoder "") "EnvironmentInfo" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






s3LocationEncoder : S3Location -> List (String, String)
s3LocationEncoder data =
    []
        
        
        |> (case data.s3Bucket of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "S3Bucket" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.s3Key of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "S3Key" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






singleInstanceHealthEncoder : SingleInstanceHealth -> List (String, String)
singleInstanceHealthEncoder data =
    []
        
        
        |> (case data.instanceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "InstanceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "HealthStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.color of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Color" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.causes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Causes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.launchedAt of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LaunchedAt" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.applicationMetrics of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs applicationMetricsEncoder "ApplicationMetrics" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.system of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs systemStatusEncoder "System" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deployment of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs deploymentEncoder "Deployment" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.availabilityZone of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AvailabilityZone" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.instanceType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "InstanceType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






solutionStackDescriptionEncoder : SolutionStackDescription -> List (String, String)
solutionStackDescriptionEncoder data =
    []
        
        
        |> (case data.solutionStackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SolutionStackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.permittedFileTypes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PermittedFileTypes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






sourceBuildInformationEncoder : SourceBuildInformation -> List (String, String)
sourceBuildInformationEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs sourceTypeToString "SourceType" data.sourceType
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs sourceRepositoryToString "SourceRepository" data.sourceRepository
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceLocation" data.sourceLocation
        
        






sourceConfigurationEncoder : SourceConfiguration -> List (String, String)
sourceConfigurationEncoder data =
    []
        
        
        |> (case data.applicationName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        














statusCodesEncoder : StatusCodes -> List (String, String)
statusCodesEncoder data =
    []
        
        
        |> (case data.status2xx of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Status2xx" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status3xx of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Status3xx" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status4xx of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Status4xx" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status5xx of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Status5xx" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






swapEnvironmentCNAMEsMessageEncoder : SwapEnvironmentCNAMEsMessage -> List (String, String)
swapEnvironmentCNAMEsMessageEncoder data =
    []
        
        
        |> (case data.sourceEnvironmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceEnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceEnvironmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceEnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.destinationEnvironmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DestinationEnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.destinationEnvironmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DestinationEnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






systemStatusEncoder : SystemStatus -> List (String, String)
systemStatusEncoder data =
    []
        
        
        |> (case data.cPUUtilization of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs cPUUtilizationEncoder "CPUUtilization" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.loadAverage of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs String.fromFloat "") "LoadAverage" value
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
        
        






terminateEnvironmentMessageEncoder : TerminateEnvironmentMessage -> List (String, String)
terminateEnvironmentMessageEncoder data =
    []
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.terminateResources of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "TerminateResources" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.forceTerminate of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ForceTerminate" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






triggerEncoder : Trigger -> List (String, String)
triggerEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






updateApplicationMessageEncoder : UpdateApplicationMessage -> List (String, String)
updateApplicationMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" data.applicationName
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






updateApplicationResourceLifecycleMessageEncoder : UpdateApplicationResourceLifecycleMessage -> List (String, String)
updateApplicationResourceLifecycleMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" data.applicationName
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs applicationResourceLifecycleConfigEncoder "ResourceLifecycleConfig" data.resourceLifecycleConfig
        
        






updateApplicationVersionMessageEncoder : UpdateApplicationVersionMessage -> List (String, String)
updateApplicationVersionMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" data.applicationName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "VersionLabel" data.versionLabel
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






updateConfigurationTemplateMessageEncoder : UpdateConfigurationTemplateMessage -> List (String, String)
updateConfigurationTemplateMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" data.applicationName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" data.templateName
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionSettings of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs configurationOptionSettingEncoder "") "OptionSettings" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionsToRemove of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs optionSpecificationEncoder "") "OptionsToRemove" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






updateEnvironmentMessageEncoder : UpdateEnvironmentMessage -> List (String, String)
updateEnvironmentMessageEncoder data =
    []
        
        
        |> (case data.applicationName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.groupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "GroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tier of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs environmentTierEncoder "Tier" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.versionLabel of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VersionLabel" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.solutionStackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SolutionStackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.platformArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PlatformArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionSettings of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs configurationOptionSettingEncoder "") "OptionSettings" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionsToRemove of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs optionSpecificationEncoder "") "OptionsToRemove" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






updateTagsForResourceMessageEncoder : UpdateTagsForResourceMessage -> List (String, String)
updateTagsForResourceMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceArn" data.resourceArn
        
        
        
        |> (case data.tagsToAdd of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "TagsToAdd" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tagsToRemove of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagsToRemove" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






validateConfigurationSettingsMessageEncoder : ValidateConfigurationSettingsMessage -> List (String, String)
validateConfigurationSettingsMessageEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ApplicationName" data.applicationName
        
        
        
        |> (case data.templateName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.environmentName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "EnvironmentName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs configurationOptionSettingEncoder "") "OptionSettings" data.optionSettings
        
        






validationMessageEncoder : ValidationMessage -> List (String, String)
validationMessageEncoder data =
    []
        
        
        |> (case data.message of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Message" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.severity of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs validationSeverityToString "Severity" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.namespace of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Namespace" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.optionName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OptionName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        







