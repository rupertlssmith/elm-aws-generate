module AWS.OpsWorks
    exposing
        ( service
        , assignInstance
        , assignVolume
        , AssignVolumeOptions
        , associateElasticIp
        , AssociateElasticIpOptions
        , attachElasticLoadBalancer
        , cloneStack
        , CloneStackOptions
        , createApp
        , CreateAppOptions
        , createDeployment
        , CreateDeploymentOptions
        , createInstance
        , CreateInstanceOptions
        , createLayer
        , CreateLayerOptions
        , createStack
        , CreateStackOptions
        , createUserProfile
        , CreateUserProfileOptions
        , deleteApp
        , deleteInstance
        , DeleteInstanceOptions
        , deleteLayer
        , deleteStack
        , deleteUserProfile
        , deregisterEcsCluster
        , deregisterElasticIp
        , deregisterInstance
        , deregisterRdsDbInstance
        , deregisterVolume
        , describeAgentVersions
        , DescribeAgentVersionsOptions
        , describeApps
        , DescribeAppsOptions
        , describeCommands
        , DescribeCommandsOptions
        , describeDeployments
        , DescribeDeploymentsOptions
        , describeEcsClusters
        , DescribeEcsClustersOptions
        , describeElasticIps
        , DescribeElasticIpsOptions
        , describeElasticLoadBalancers
        , DescribeElasticLoadBalancersOptions
        , describeInstances
        , DescribeInstancesOptions
        , describeLayers
        , DescribeLayersOptions
        , describeLoadBasedAutoScaling
        , describeMyUserProfile
        , describeOperatingSystems
        , describePermissions
        , DescribePermissionsOptions
        , describeRaidArrays
        , DescribeRaidArraysOptions
        , describeRdsDbInstances
        , DescribeRdsDbInstancesOptions
        , describeServiceErrors
        , DescribeServiceErrorsOptions
        , describeStackProvisioningParameters
        , describeStackSummary
        , describeStacks
        , DescribeStacksOptions
        , describeTimeBasedAutoScaling
        , describeUserProfiles
        , DescribeUserProfilesOptions
        , describeVolumes
        , DescribeVolumesOptions
        , detachElasticLoadBalancer
        , disassociateElasticIp
        , getHostnameSuggestion
        , grantAccess
        , GrantAccessOptions
        , listTags
        , ListTagsOptions
        , rebootInstance
        , registerEcsCluster
        , registerElasticIp
        , registerInstance
        , RegisterInstanceOptions
        , registerRdsDbInstance
        , registerVolume
        , RegisterVolumeOptions
        , setLoadBasedAutoScaling
        , SetLoadBasedAutoScalingOptions
        , setPermission
        , SetPermissionOptions
        , setTimeBasedAutoScaling
        , SetTimeBasedAutoScalingOptions
        , startInstance
        , startStack
        , stopInstance
        , StopInstanceOptions
        , stopStack
        , tagResource
        , unassignInstance
        , unassignVolume
        , untagResource
        , updateApp
        , UpdateAppOptions
        , updateElasticIp
        , UpdateElasticIpOptions
        , updateInstance
        , UpdateInstanceOptions
        , updateLayer
        , UpdateLayerOptions
        , updateMyUserProfile
        , UpdateMyUserProfileOptions
        , updateRdsDbInstance
        , UpdateRdsDbInstanceOptions
        , updateStack
        , UpdateStackOptions
        , updateUserProfile
        , UpdateUserProfileOptions
        , updateVolume
        , UpdateVolumeOptions
        , AgentVersion
        , App
        , AppAttributesKeys(..)
        , AppType(..)
        , Architecture(..)
        , AutoScalingThresholds
        , AutoScalingType(..)
        , BlockDeviceMapping
        , ChefConfiguration
        , CloneStackResult
        , CloudWatchLogsConfiguration
        , CloudWatchLogsEncoding(..)
        , CloudWatchLogsInitialPosition(..)
        , CloudWatchLogsLogStream
        , CloudWatchLogsTimeZone(..)
        , Command
        , CreateAppResult
        , CreateDeploymentResult
        , CreateInstanceResult
        , CreateLayerResult
        , CreateStackResult
        , CreateUserProfileResult
        , DataSource
        , Deployment
        , DeploymentCommand
        , DeploymentCommandName(..)
        , DescribeAgentVersionsResult
        , DescribeAppsResult
        , DescribeCommandsResult
        , DescribeDeploymentsResult
        , DescribeEcsClustersResult
        , DescribeElasticIpsResult
        , DescribeElasticLoadBalancersResult
        , DescribeInstancesResult
        , DescribeLayersResult
        , DescribeLoadBasedAutoScalingResult
        , DescribeMyUserProfileResult
        , DescribeOperatingSystemsResponse
        , DescribePermissionsResult
        , DescribeRaidArraysResult
        , DescribeRdsDbInstancesResult
        , DescribeServiceErrorsResult
        , DescribeStackProvisioningParametersResult
        , DescribeStackSummaryResult
        , DescribeStacksResult
        , DescribeTimeBasedAutoScalingResult
        , DescribeUserProfilesResult
        , DescribeVolumesResult
        , EbsBlockDevice
        , EcsCluster
        , ElasticIp
        , ElasticLoadBalancer
        , EnvironmentVariable
        , GetHostnameSuggestionResult
        , GrantAccessResult
        , Instance
        , InstanceIdentity
        , InstancesCount
        , Layer
        , LayerAttributesKeys(..)
        , LayerType(..)
        , LifecycleEventConfiguration
        , ListTagsResult
        , LoadBasedAutoScalingConfiguration
        , OperatingSystem
        , OperatingSystemConfigurationManager
        , Permission
        , RaidArray
        , RdsDbInstance
        , Recipes
        , RegisterEcsClusterResult
        , RegisterElasticIpResult
        , RegisterInstanceResult
        , RegisterVolumeResult
        , ReportedOs
        , RootDeviceType(..)
        , SelfUserProfile
        , ServiceError
        , ShutdownEventConfiguration
        , Source
        , SourceType(..)
        , SslConfiguration
        , Stack
        , StackAttributesKeys(..)
        , StackConfigurationManager
        , StackSummary
        , TemporaryCredential
        , TimeBasedAutoScalingConfiguration
        , UserProfile
        , VirtualizationType(..)
        , Volume
        , VolumeConfiguration
        , VolumeType(..)
        , WeeklyAutoScalingSchedule
        )

{-| <fullname>AWS OpsWorks</fullname> <p>Welcome to the <i>AWS OpsWorks Stacks API Reference</i>. This guide provides descriptions, syntax, and usage examples for AWS OpsWorks Stacks actions and data types, including common parameters and error codes. </p> <p>AWS OpsWorks Stacks is an application management service that provides an integrated experience for overseeing the complete application lifecycle. For information about this product, go to the <a href="http://aws.amazon.com/opsworks/">AWS OpsWorks</a> details page. </p> <p> <b>SDKs and CLI</b> </p> <p>The most common way to use the AWS OpsWorks Stacks API is by using the AWS Command Line Interface (CLI) or by using one of the AWS SDKs to implement applications in your preferred language. For more information, see:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html">AWS CLI</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html">AWS SDK for Java</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/sdkfornet/latest/apidocs/html/N_Amazon_OpsWorks.htm">AWS SDK for .NET</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/aws-sdk-php-2/latest/class-Aws.OpsWorks.OpsWorksClient.html">AWS SDK for PHP 2</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/sdkforruby/api/">AWS SDK for Ruby</a> </p> </li> <li> <p> <a href="http://aws.amazon.com/documentation/sdkforjavascript/">AWS SDK for Node.js</a> </p> </li> <li> <p> <a href="http://docs.pythonboto.org/en/latest/ref/opsworks.html">AWS SDK for Python(Boto)</a> </p> </li> </ul> <p> <b>Endpoints</b> </p> <p>AWS OpsWorks Stacks supports the following endpoints, all HTTPS. You must connect to one of the following endpoints. Stacks can only be accessed or managed within the endpoint in which they are created.</p> <ul> <li> <p>opsworks.us-east-1.amazonaws.com</p> </li> <li> <p>opsworks.us-east-2.amazonaws.com</p> </li> <li> <p>opsworks.us-west-1.amazonaws.com</p> </li> <li> <p>opsworks.us-west-2.amazonaws.com</p> </li> <li> <p>opsworks.ca-central-1.amazonaws.com (API only; not available in the AWS console)</p> </li> <li> <p>opsworks.eu-west-1.amazonaws.com</p> </li> <li> <p>opsworks.eu-west-2.amazonaws.com</p> </li> <li> <p>opsworks.eu-west-3.amazonaws.com</p> </li> <li> <p>opsworks.eu-central-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-northeast-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-northeast-2.amazonaws.com</p> </li> <li> <p>opsworks.ap-south-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-southeast-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-southeast-2.amazonaws.com</p> </li> <li> <p>opsworks.sa-east-1.amazonaws.com</p> </li> </ul> <p> <b>Chef Versions</b> </p> <p>When you call <a>CreateStack</a>, <a>CloneStack</a>, or <a>UpdateStack</a> we recommend you use the <code>ConfigurationManager</code> parameter to specify the Chef version. The recommended and default value for Linux stacks is currently 12. Windows stacks use Chef 12.2. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html">Chef Versions</a>.</p> <note> <p>You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We recommend migrating your existing Linux stacks to Chef 12 as soon as possible.</p> </note>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [assignInstance](#assignInstance)
* [assignVolume](#assignVolume)
* [AssignVolumeOptions](#AssignVolumeOptions)
* [associateElasticIp](#associateElasticIp)
* [AssociateElasticIpOptions](#AssociateElasticIpOptions)
* [attachElasticLoadBalancer](#attachElasticLoadBalancer)
* [cloneStack](#cloneStack)
* [CloneStackOptions](#CloneStackOptions)
* [createApp](#createApp)
* [CreateAppOptions](#CreateAppOptions)
* [createDeployment](#createDeployment)
* [CreateDeploymentOptions](#CreateDeploymentOptions)
* [createInstance](#createInstance)
* [CreateInstanceOptions](#CreateInstanceOptions)
* [createLayer](#createLayer)
* [CreateLayerOptions](#CreateLayerOptions)
* [createStack](#createStack)
* [CreateStackOptions](#CreateStackOptions)
* [createUserProfile](#createUserProfile)
* [CreateUserProfileOptions](#CreateUserProfileOptions)
* [deleteApp](#deleteApp)
* [deleteInstance](#deleteInstance)
* [DeleteInstanceOptions](#DeleteInstanceOptions)
* [deleteLayer](#deleteLayer)
* [deleteStack](#deleteStack)
* [deleteUserProfile](#deleteUserProfile)
* [deregisterEcsCluster](#deregisterEcsCluster)
* [deregisterElasticIp](#deregisterElasticIp)
* [deregisterInstance](#deregisterInstance)
* [deregisterRdsDbInstance](#deregisterRdsDbInstance)
* [deregisterVolume](#deregisterVolume)
* [describeAgentVersions](#describeAgentVersions)
* [DescribeAgentVersionsOptions](#DescribeAgentVersionsOptions)
* [describeApps](#describeApps)
* [DescribeAppsOptions](#DescribeAppsOptions)
* [describeCommands](#describeCommands)
* [DescribeCommandsOptions](#DescribeCommandsOptions)
* [describeDeployments](#describeDeployments)
* [DescribeDeploymentsOptions](#DescribeDeploymentsOptions)
* [describeEcsClusters](#describeEcsClusters)
* [DescribeEcsClustersOptions](#DescribeEcsClustersOptions)
* [describeElasticIps](#describeElasticIps)
* [DescribeElasticIpsOptions](#DescribeElasticIpsOptions)
* [describeElasticLoadBalancers](#describeElasticLoadBalancers)
* [DescribeElasticLoadBalancersOptions](#DescribeElasticLoadBalancersOptions)
* [describeInstances](#describeInstances)
* [DescribeInstancesOptions](#DescribeInstancesOptions)
* [describeLayers](#describeLayers)
* [DescribeLayersOptions](#DescribeLayersOptions)
* [describeLoadBasedAutoScaling](#describeLoadBasedAutoScaling)
* [describeMyUserProfile](#describeMyUserProfile)
* [describeOperatingSystems](#describeOperatingSystems)
* [describePermissions](#describePermissions)
* [DescribePermissionsOptions](#DescribePermissionsOptions)
* [describeRaidArrays](#describeRaidArrays)
* [DescribeRaidArraysOptions](#DescribeRaidArraysOptions)
* [describeRdsDbInstances](#describeRdsDbInstances)
* [DescribeRdsDbInstancesOptions](#DescribeRdsDbInstancesOptions)
* [describeServiceErrors](#describeServiceErrors)
* [DescribeServiceErrorsOptions](#DescribeServiceErrorsOptions)
* [describeStackProvisioningParameters](#describeStackProvisioningParameters)
* [describeStackSummary](#describeStackSummary)
* [describeStacks](#describeStacks)
* [DescribeStacksOptions](#DescribeStacksOptions)
* [describeTimeBasedAutoScaling](#describeTimeBasedAutoScaling)
* [describeUserProfiles](#describeUserProfiles)
* [DescribeUserProfilesOptions](#DescribeUserProfilesOptions)
* [describeVolumes](#describeVolumes)
* [DescribeVolumesOptions](#DescribeVolumesOptions)
* [detachElasticLoadBalancer](#detachElasticLoadBalancer)
* [disassociateElasticIp](#disassociateElasticIp)
* [getHostnameSuggestion](#getHostnameSuggestion)
* [grantAccess](#grantAccess)
* [GrantAccessOptions](#GrantAccessOptions)
* [listTags](#listTags)
* [ListTagsOptions](#ListTagsOptions)
* [rebootInstance](#rebootInstance)
* [registerEcsCluster](#registerEcsCluster)
* [registerElasticIp](#registerElasticIp)
* [registerInstance](#registerInstance)
* [RegisterInstanceOptions](#RegisterInstanceOptions)
* [registerRdsDbInstance](#registerRdsDbInstance)
* [registerVolume](#registerVolume)
* [RegisterVolumeOptions](#RegisterVolumeOptions)
* [setLoadBasedAutoScaling](#setLoadBasedAutoScaling)
* [SetLoadBasedAutoScalingOptions](#SetLoadBasedAutoScalingOptions)
* [setPermission](#setPermission)
* [SetPermissionOptions](#SetPermissionOptions)
* [setTimeBasedAutoScaling](#setTimeBasedAutoScaling)
* [SetTimeBasedAutoScalingOptions](#SetTimeBasedAutoScalingOptions)
* [startInstance](#startInstance)
* [startStack](#startStack)
* [stopInstance](#stopInstance)
* [StopInstanceOptions](#StopInstanceOptions)
* [stopStack](#stopStack)
* [tagResource](#tagResource)
* [unassignInstance](#unassignInstance)
* [unassignVolume](#unassignVolume)
* [untagResource](#untagResource)
* [updateApp](#updateApp)
* [UpdateAppOptions](#UpdateAppOptions)
* [updateElasticIp](#updateElasticIp)
* [UpdateElasticIpOptions](#UpdateElasticIpOptions)
* [updateInstance](#updateInstance)
* [UpdateInstanceOptions](#UpdateInstanceOptions)
* [updateLayer](#updateLayer)
* [UpdateLayerOptions](#UpdateLayerOptions)
* [updateMyUserProfile](#updateMyUserProfile)
* [UpdateMyUserProfileOptions](#UpdateMyUserProfileOptions)
* [updateRdsDbInstance](#updateRdsDbInstance)
* [UpdateRdsDbInstanceOptions](#UpdateRdsDbInstanceOptions)
* [updateStack](#updateStack)
* [UpdateStackOptions](#UpdateStackOptions)
* [updateUserProfile](#updateUserProfile)
* [UpdateUserProfileOptions](#UpdateUserProfileOptions)
* [updateVolume](#updateVolume)
* [UpdateVolumeOptions](#UpdateVolumeOptions)


@docs assignInstance,assignVolume,AssignVolumeOptions,associateElasticIp,AssociateElasticIpOptions,attachElasticLoadBalancer,cloneStack,CloneStackOptions,createApp,CreateAppOptions,createDeployment,CreateDeploymentOptions,createInstance,CreateInstanceOptions,createLayer,CreateLayerOptions,createStack,CreateStackOptions,createUserProfile,CreateUserProfileOptions,deleteApp,deleteInstance,DeleteInstanceOptions,deleteLayer,deleteStack,deleteUserProfile,deregisterEcsCluster,deregisterElasticIp,deregisterInstance,deregisterRdsDbInstance,deregisterVolume,describeAgentVersions,DescribeAgentVersionsOptions,describeApps,DescribeAppsOptions,describeCommands,DescribeCommandsOptions,describeDeployments,DescribeDeploymentsOptions,describeEcsClusters,DescribeEcsClustersOptions,describeElasticIps,DescribeElasticIpsOptions,describeElasticLoadBalancers,DescribeElasticLoadBalancersOptions,describeInstances,DescribeInstancesOptions,describeLayers,DescribeLayersOptions,describeLoadBasedAutoScaling,describeMyUserProfile,describeOperatingSystems,describePermissions,DescribePermissionsOptions,describeRaidArrays,DescribeRaidArraysOptions,describeRdsDbInstances,DescribeRdsDbInstancesOptions,describeServiceErrors,DescribeServiceErrorsOptions,describeStackProvisioningParameters,describeStackSummary,describeStacks,DescribeStacksOptions,describeTimeBasedAutoScaling,describeUserProfiles,DescribeUserProfilesOptions,describeVolumes,DescribeVolumesOptions,detachElasticLoadBalancer,disassociateElasticIp,getHostnameSuggestion,grantAccess,GrantAccessOptions,listTags,ListTagsOptions,rebootInstance,registerEcsCluster,registerElasticIp,registerInstance,RegisterInstanceOptions,registerRdsDbInstance,registerVolume,RegisterVolumeOptions,setLoadBasedAutoScaling,SetLoadBasedAutoScalingOptions,setPermission,SetPermissionOptions,setTimeBasedAutoScaling,SetTimeBasedAutoScalingOptions,startInstance,startStack,stopInstance,StopInstanceOptions,stopStack,tagResource,unassignInstance,unassignVolume,untagResource,updateApp,UpdateAppOptions,updateElasticIp,UpdateElasticIpOptions,updateInstance,UpdateInstanceOptions,updateLayer,UpdateLayerOptions,updateMyUserProfile,UpdateMyUserProfileOptions,updateRdsDbInstance,UpdateRdsDbInstanceOptions,updateStack,UpdateStackOptions,updateUserProfile,UpdateUserProfileOptions,updateVolume,UpdateVolumeOptions

## Responses

* [CloneStackResult](#CloneStackResult)
* [CreateAppResult](#CreateAppResult)
* [CreateDeploymentResult](#CreateDeploymentResult)
* [CreateInstanceResult](#CreateInstanceResult)
* [CreateLayerResult](#CreateLayerResult)
* [CreateStackResult](#CreateStackResult)
* [CreateUserProfileResult](#CreateUserProfileResult)
* [DescribeAgentVersionsResult](#DescribeAgentVersionsResult)
* [DescribeAppsResult](#DescribeAppsResult)
* [DescribeCommandsResult](#DescribeCommandsResult)
* [DescribeDeploymentsResult](#DescribeDeploymentsResult)
* [DescribeEcsClustersResult](#DescribeEcsClustersResult)
* [DescribeElasticIpsResult](#DescribeElasticIpsResult)
* [DescribeElasticLoadBalancersResult](#DescribeElasticLoadBalancersResult)
* [DescribeInstancesResult](#DescribeInstancesResult)
* [DescribeLayersResult](#DescribeLayersResult)
* [DescribeLoadBasedAutoScalingResult](#DescribeLoadBasedAutoScalingResult)
* [DescribeMyUserProfileResult](#DescribeMyUserProfileResult)
* [DescribeOperatingSystemsResponse](#DescribeOperatingSystemsResponse)
* [DescribePermissionsResult](#DescribePermissionsResult)
* [DescribeRaidArraysResult](#DescribeRaidArraysResult)
* [DescribeRdsDbInstancesResult](#DescribeRdsDbInstancesResult)
* [DescribeServiceErrorsResult](#DescribeServiceErrorsResult)
* [DescribeStackProvisioningParametersResult](#DescribeStackProvisioningParametersResult)
* [DescribeStackSummaryResult](#DescribeStackSummaryResult)
* [DescribeStacksResult](#DescribeStacksResult)
* [DescribeTimeBasedAutoScalingResult](#DescribeTimeBasedAutoScalingResult)
* [DescribeUserProfilesResult](#DescribeUserProfilesResult)
* [DescribeVolumesResult](#DescribeVolumesResult)
* [GetHostnameSuggestionResult](#GetHostnameSuggestionResult)
* [GrantAccessResult](#GrantAccessResult)
* [ListTagsResult](#ListTagsResult)
* [RegisterEcsClusterResult](#RegisterEcsClusterResult)
* [RegisterElasticIpResult](#RegisterElasticIpResult)
* [RegisterInstanceResult](#RegisterInstanceResult)
* [RegisterVolumeResult](#RegisterVolumeResult)


@docs CloneStackResult,CreateAppResult,CreateDeploymentResult,CreateInstanceResult,CreateLayerResult,CreateStackResult,CreateUserProfileResult,DescribeAgentVersionsResult,DescribeAppsResult,DescribeCommandsResult,DescribeDeploymentsResult,DescribeEcsClustersResult,DescribeElasticIpsResult,DescribeElasticLoadBalancersResult,DescribeInstancesResult,DescribeLayersResult,DescribeLoadBasedAutoScalingResult,DescribeMyUserProfileResult,DescribeOperatingSystemsResponse,DescribePermissionsResult,DescribeRaidArraysResult,DescribeRdsDbInstancesResult,DescribeServiceErrorsResult,DescribeStackProvisioningParametersResult,DescribeStackSummaryResult,DescribeStacksResult,DescribeTimeBasedAutoScalingResult,DescribeUserProfilesResult,DescribeVolumesResult,GetHostnameSuggestionResult,GrantAccessResult,ListTagsResult,RegisterEcsClusterResult,RegisterElasticIpResult,RegisterInstanceResult,RegisterVolumeResult

## Records

* [AgentVersion](#AgentVersion)
* [App](#App)
* [AutoScalingThresholds](#AutoScalingThresholds)
* [BlockDeviceMapping](#BlockDeviceMapping)
* [ChefConfiguration](#ChefConfiguration)
* [CloudWatchLogsConfiguration](#CloudWatchLogsConfiguration)
* [CloudWatchLogsLogStream](#CloudWatchLogsLogStream)
* [Command](#Command)
* [DataSource](#DataSource)
* [Deployment](#Deployment)
* [DeploymentCommand](#DeploymentCommand)
* [EbsBlockDevice](#EbsBlockDevice)
* [EcsCluster](#EcsCluster)
* [ElasticIp](#ElasticIp)
* [ElasticLoadBalancer](#ElasticLoadBalancer)
* [EnvironmentVariable](#EnvironmentVariable)
* [Instance](#Instance)
* [InstanceIdentity](#InstanceIdentity)
* [InstancesCount](#InstancesCount)
* [Layer](#Layer)
* [LifecycleEventConfiguration](#LifecycleEventConfiguration)
* [LoadBasedAutoScalingConfiguration](#LoadBasedAutoScalingConfiguration)
* [OperatingSystem](#OperatingSystem)
* [OperatingSystemConfigurationManager](#OperatingSystemConfigurationManager)
* [Permission](#Permission)
* [RaidArray](#RaidArray)
* [RdsDbInstance](#RdsDbInstance)
* [Recipes](#Recipes)
* [ReportedOs](#ReportedOs)
* [SelfUserProfile](#SelfUserProfile)
* [ServiceError](#ServiceError)
* [ShutdownEventConfiguration](#ShutdownEventConfiguration)
* [Source](#Source)
* [SslConfiguration](#SslConfiguration)
* [Stack](#Stack)
* [StackConfigurationManager](#StackConfigurationManager)
* [StackSummary](#StackSummary)
* [TemporaryCredential](#TemporaryCredential)
* [TimeBasedAutoScalingConfiguration](#TimeBasedAutoScalingConfiguration)
* [UserProfile](#UserProfile)
* [Volume](#Volume)
* [VolumeConfiguration](#VolumeConfiguration)
* [WeeklyAutoScalingSchedule](#WeeklyAutoScalingSchedule)


@docs AgentVersion,App,AutoScalingThresholds,BlockDeviceMapping,ChefConfiguration,CloudWatchLogsConfiguration,CloudWatchLogsLogStream,Command,DataSource,Deployment,DeploymentCommand,EbsBlockDevice,EcsCluster,ElasticIp,ElasticLoadBalancer,EnvironmentVariable,Instance,InstanceIdentity,InstancesCount,Layer,LifecycleEventConfiguration,LoadBasedAutoScalingConfiguration,OperatingSystem,OperatingSystemConfigurationManager,Permission,RaidArray,RdsDbInstance,Recipes,ReportedOs,SelfUserProfile,ServiceError,ShutdownEventConfiguration,Source,SslConfiguration,Stack,StackConfigurationManager,StackSummary,TemporaryCredential,TimeBasedAutoScalingConfiguration,UserProfile,Volume,VolumeConfiguration,WeeklyAutoScalingSchedule

## Unions

* [AppAttributesKeys](#AppAttributesKeys)
* [AppType](#AppType)
* [Architecture](#Architecture)
* [AutoScalingType](#AutoScalingType)
* [CloudWatchLogsEncoding](#CloudWatchLogsEncoding)
* [CloudWatchLogsInitialPosition](#CloudWatchLogsInitialPosition)
* [CloudWatchLogsTimeZone](#CloudWatchLogsTimeZone)
* [DeploymentCommandName](#DeploymentCommandName)
* [LayerAttributesKeys](#LayerAttributesKeys)
* [LayerType](#LayerType)
* [RootDeviceType](#RootDeviceType)
* [SourceType](#SourceType)
* [StackAttributesKeys](#StackAttributesKeys)
* [VirtualizationType](#VirtualizationType)
* [VolumeType](#VolumeType)


@docs AppAttributesKeys,AppType,Architecture,AutoScalingType,CloudWatchLogsEncoding,CloudWatchLogsInitialPosition,CloudWatchLogsTimeZone,DeploymentCommandName,LayerAttributesKeys,LayerType,RootDeviceType,SourceType,StackAttributesKeys,VirtualizationType,VolumeType

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE

import Dict exposing (Dict)


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "opsworks"
        "2013-02-18"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "OpsWorks_20130218")



-- OPERATIONS

{-| <p>Assign a registered instance to a layer.</p> <ul> <li> <p>You can assign registered on-premises instances to any layer type.</p> </li> <li> <p>You can assign registered Amazon EC2 instances only to custom layers.</p> </li> <li> <p>You cannot use this action with instances that were created with AWS OpsWorks Stacks.</p> </li> </ul> <p> <b>Required Permissions</b>: To use this action, an AWS Identity and Access Management (IAM) user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`
* `layerIds` __:__ `(List String)`


-}

assignInstance :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

assignInstance instanceId layerIds =
    
    let
        requestInput = AssignInstanceRequest
            
            instanceId
            
            layerIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> assignInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssignInstance"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Assigns one of the stack's registered Amazon EBS volumes to a specified instance. The volume must first be registered with the stack by calling <a>RegisterVolume</a>. After you register the volume, you must call <a>UpdateVolume</a> to specify a mount point before calling <code>AssignVolume</code>. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `volumeId` __:__ `String`


-}

assignVolume :
  
    String ->
  
  
    ( AssignVolumeOptions -> AssignVolumeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

assignVolume volumeId setOptions =
    
    let
        requestInput = AssignVolumeRequest
            
            volumeId
            
            options.instanceId
            
        
        options = setOptions (AssignVolumeOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> assignVolumeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssignVolume"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a assignVolume request
-}
type alias AssignVolumeOptions =
    {
    instanceId : Maybe String
    }



{-| <p>Associates one of the stack's registered Elastic IP addresses with a specified instance. The address must first be registered with the stack by calling <a>RegisterElasticIp</a>. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `elasticIp` __:__ `String`


-}

associateElasticIp :
  
    String ->
  
  
    ( AssociateElasticIpOptions -> AssociateElasticIpOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

associateElasticIp elasticIp setOptions =
    
    let
        requestInput = AssociateElasticIpRequest
            
            elasticIp
            
            options.instanceId
            
        
        options = setOptions (AssociateElasticIpOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateElasticIpRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateElasticIp"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a associateElasticIp request
-}
type alias AssociateElasticIpOptions =
    {
    instanceId : Maybe String
    }



{-| <p>Attaches an Elastic Load Balancing load balancer to a specified layer. AWS OpsWorks Stacks does not support Application Load Balancer. You can only use Classic Load Balancer with AWS OpsWorks Stacks. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html">Elastic Load Balancing</a>.</p> <note> <p>You must create the Elastic Load Balancing instance separately, by using the Elastic Load Balancing console, API, or CLI. For more information, see <a href="https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html"> Elastic Load Balancing Developer Guide</a>.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `elasticLoadBalancerName` __:__ `String`
* `layerId` __:__ `String`


-}

attachElasticLoadBalancer :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

attachElasticLoadBalancer elasticLoadBalancerName layerId =
    
    let
        requestInput = AttachElasticLoadBalancerRequest
            
            elasticLoadBalancerName
            
            layerId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> attachElasticLoadBalancerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AttachElasticLoadBalancer"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Creates a clone of a specified stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html">Clone a Stack</a>. By default, all parameters are set to the values used by the parent stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `sourceStackId` __:__ `String`
* `serviceRoleArn` __:__ `String`


-}

cloneStack :
  
    String ->
  
    String ->
  
  
    ( CloneStackOptions -> CloneStackOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CloneStackResult)

cloneStack sourceStackId serviceRoleArn setOptions =
    
    let
        requestInput = CloneStackRequest
            
            sourceStackId
            
            options.name
            
            options.region
            
            options.vpcId
            
            options.attributes
            
            serviceRoleArn
            
            options.defaultInstanceProfileArn
            
            options.defaultOs
            
            options.hostnameTheme
            
            options.defaultAvailabilityZone
            
            options.defaultSubnetId
            
            options.customJson
            
            options.configurationManager
            
            options.chefConfiguration
            
            options.useCustomCookbooks
            
            options.useOpsworksSecurityGroups
            
            options.customCookbooksSource
            
            options.defaultSshKeyName
            
            options.clonePermissions
            
            options.cloneAppIds
            
            options.defaultRootDeviceType
            
            options.agentVersion
            
        
        options = setOptions (CloneStackOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> cloneStackRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CloneStack"
                
                (AWS.Core.Decode.ResultDecoder "CloneStackResult" cloneStackResultDecoder)
                
            )



{-| Options for a cloneStack request
-}
type alias CloneStackOptions =
    {
    name : Maybe String,region : Maybe String,vpcId : Maybe String,attributes : Maybe (Dict String String),defaultInstanceProfileArn : Maybe String,defaultOs : Maybe String,hostnameTheme : Maybe String,defaultAvailabilityZone : Maybe String,defaultSubnetId : Maybe String,customJson : Maybe String,configurationManager : Maybe StackConfigurationManager,chefConfiguration : Maybe ChefConfiguration,useCustomCookbooks : Maybe Bool,useOpsworksSecurityGroups : Maybe Bool,customCookbooksSource : Maybe Source,defaultSshKeyName : Maybe String,clonePermissions : Maybe Bool,cloneAppIds : Maybe (List String),defaultRootDeviceType : Maybe RootDeviceType,agentVersion : Maybe String
    }



{-| <p>Creates an app for a specified stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating Apps</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`
* `name` __:__ `String`
* `type_` __:__ `AppType`


-}

createApp :
  
    String ->
  
    String ->
  
    AppType ->
  
  
    ( CreateAppOptions -> CreateAppOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateAppResult)

createApp stackId name type_ setOptions =
    
    let
        requestInput = CreateAppRequest
            
            stackId
            
            options.shortname
            
            name
            
            options.description
            
            options.dataSources
            
            type_
            
            options.appSource
            
            options.domains
            
            options.enableSsl
            
            options.sslConfiguration
            
            options.attributes
            
            options.environment
            
        
        options = setOptions (CreateAppOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
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
                
                (AWS.Core.Decode.ResultDecoder "CreateAppResult" createAppResultDecoder)
                
            )



{-| Options for a createApp request
-}
type alias CreateAppOptions =
    {
    shortname : Maybe String,description : Maybe String,dataSources : Maybe (List DataSource),appSource : Maybe Source,domains : Maybe (List String),enableSsl : Maybe Bool,sslConfiguration : Maybe SslConfiguration,attributes : Maybe (Dict String String),environment : Maybe (List EnvironmentVariable)
    }



{-| <p>Runs deployment or stack commands. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html">Deploying Apps</a> and <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html">Run Stack Commands</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`
* `command` __:__ `DeploymentCommand`


-}

createDeployment :
  
    String ->
  
    DeploymentCommand ->
  
  
    ( CreateDeploymentOptions -> CreateDeploymentOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDeploymentResult)

createDeployment stackId command setOptions =
    
    let
        requestInput = CreateDeploymentRequest
            
            stackId
            
            options.appId
            
            options.instanceIds
            
            options.layerIds
            
            command
            
            options.comment
            
            options.customJson
            
        
        options = setOptions (CreateDeploymentOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDeploymentRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDeployment"
                
                (AWS.Core.Decode.ResultDecoder "CreateDeploymentResult" createDeploymentResultDecoder)
                
            )



{-| Options for a createDeployment request
-}
type alias CreateDeploymentOptions =
    {
    appId : Maybe String,instanceIds : Maybe (List String),layerIds : Maybe (List String),comment : Maybe String,customJson : Maybe String
    }



{-| <p>Creates an instance in a specified stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">Adding an Instance to a Layer</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`
* `layerIds` __:__ `(List String)`
* `instanceType` __:__ `String`


-}

createInstance :
  
    String ->
  
    (List String) ->
  
    String ->
  
  
    ( CreateInstanceOptions -> CreateInstanceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateInstanceResult)

createInstance stackId layerIds instanceType setOptions =
    
    let
        requestInput = CreateInstanceRequest
            
            stackId
            
            layerIds
            
            instanceType
            
            options.autoScalingType
            
            options.hostname
            
            options.os
            
            options.amiId
            
            options.sshKeyName
            
            options.availabilityZone
            
            options.virtualizationType
            
            options.subnetId
            
            options.architecture
            
            options.rootDeviceType
            
            options.blockDeviceMappings
            
            options.installUpdatesOnBoot
            
            options.ebsOptimized
            
            options.agentVersion
            
            options.tenancy
            
        
        options = setOptions (CreateInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateInstance"
                
                (AWS.Core.Decode.ResultDecoder "CreateInstanceResult" createInstanceResultDecoder)
                
            )



{-| Options for a createInstance request
-}
type alias CreateInstanceOptions =
    {
    autoScalingType : Maybe AutoScalingType,hostname : Maybe String,os : Maybe String,amiId : Maybe String,sshKeyName : Maybe String,availabilityZone : Maybe String,virtualizationType : Maybe String,subnetId : Maybe String,architecture : Maybe Architecture,rootDeviceType : Maybe RootDeviceType,blockDeviceMappings : Maybe (List BlockDeviceMapping),installUpdatesOnBoot : Maybe Bool,ebsOptimized : Maybe Bool,agentVersion : Maybe String,tenancy : Maybe String
    }



{-| <p>Creates a layer. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html">How to Create a Layer</a>.</p> <note> <p>You should use <b>CreateLayer</b> for noncustom layer types such as PHP App Server only if the stack does not have an existing layer of that type. A stack can have at most one instance of each noncustom layer; if you attempt to create a second instance, <b>CreateLayer</b> fails. A stack can have an arbitrary number of custom layers, so you can call <b>CreateLayer</b> as many times as you like for that layer type.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`
* `type_` __:__ `LayerType`
* `name` __:__ `String`
* `shortname` __:__ `String`


-}

createLayer :
  
    String ->
  
    LayerType ->
  
    String ->
  
    String ->
  
  
    ( CreateLayerOptions -> CreateLayerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateLayerResult)

createLayer stackId type_ name shortname setOptions =
    
    let
        requestInput = CreateLayerRequest
            
            stackId
            
            type_
            
            name
            
            shortname
            
            options.attributes
            
            options.cloudWatchLogsConfiguration
            
            options.customInstanceProfileArn
            
            options.customJson
            
            options.customSecurityGroupIds
            
            options.packages
            
            options.volumeConfigurations
            
            options.enableAutoHealing
            
            options.autoAssignElasticIps
            
            options.autoAssignPublicIps
            
            options.customRecipes
            
            options.installUpdatesOnBoot
            
            options.useEbsOptimizedInstances
            
            options.lifecycleEventConfiguration
            
        
        options = setOptions (CreateLayerOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createLayerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateLayer"
                
                (AWS.Core.Decode.ResultDecoder "CreateLayerResult" createLayerResultDecoder)
                
            )



{-| Options for a createLayer request
-}
type alias CreateLayerOptions =
    {
    attributes : Maybe (Dict String String),cloudWatchLogsConfiguration : Maybe CloudWatchLogsConfiguration,customInstanceProfileArn : Maybe String,customJson : Maybe String,customSecurityGroupIds : Maybe (List String),packages : Maybe (List String),volumeConfigurations : Maybe (List VolumeConfiguration),enableAutoHealing : Maybe Bool,autoAssignElasticIps : Maybe Bool,autoAssignPublicIps : Maybe Bool,customRecipes : Maybe Recipes,installUpdatesOnBoot : Maybe Bool,useEbsOptimizedInstances : Maybe Bool,lifecycleEventConfiguration : Maybe LifecycleEventConfiguration
    }



{-| <p>Creates a new stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html">Create a New Stack</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `region` __:__ `String`
* `serviceRoleArn` __:__ `String`
* `defaultInstanceProfileArn` __:__ `String`


-}

createStack :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateStackOptions -> CreateStackOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateStackResult)

createStack name region serviceRoleArn defaultInstanceProfileArn setOptions =
    
    let
        requestInput = CreateStackRequest
            
            name
            
            region
            
            options.vpcId
            
            options.attributes
            
            serviceRoleArn
            
            defaultInstanceProfileArn
            
            options.defaultOs
            
            options.hostnameTheme
            
            options.defaultAvailabilityZone
            
            options.defaultSubnetId
            
            options.customJson
            
            options.configurationManager
            
            options.chefConfiguration
            
            options.useCustomCookbooks
            
            options.useOpsworksSecurityGroups
            
            options.customCookbooksSource
            
            options.defaultSshKeyName
            
            options.defaultRootDeviceType
            
            options.agentVersion
            
        
        options = setOptions (CreateStackOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createStackRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateStack"
                
                (AWS.Core.Decode.ResultDecoder "CreateStackResult" createStackResultDecoder)
                
            )



{-| Options for a createStack request
-}
type alias CreateStackOptions =
    {
    vpcId : Maybe String,attributes : Maybe (Dict String String),defaultOs : Maybe String,hostnameTheme : Maybe String,defaultAvailabilityZone : Maybe String,defaultSubnetId : Maybe String,customJson : Maybe String,configurationManager : Maybe StackConfigurationManager,chefConfiguration : Maybe ChefConfiguration,useCustomCookbooks : Maybe Bool,useOpsworksSecurityGroups : Maybe Bool,customCookbooksSource : Maybe Source,defaultSshKeyName : Maybe String,defaultRootDeviceType : Maybe RootDeviceType,agentVersion : Maybe String
    }



{-| <p>Creates a new user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `iamUserArn` __:__ `String`


-}

createUserProfile :
  
    String ->
  
  
    ( CreateUserProfileOptions -> CreateUserProfileOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateUserProfileResult)

createUserProfile iamUserArn setOptions =
    
    let
        requestInput = CreateUserProfileRequest
            
            iamUserArn
            
            options.sshUsername
            
            options.sshPublicKey
            
            options.allowSelfManagement
            
        
        options = setOptions (CreateUserProfileOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createUserProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateUserProfile"
                
                (AWS.Core.Decode.ResultDecoder "CreateUserProfileResult" createUserProfileResultDecoder)
                
            )



{-| Options for a createUserProfile request
-}
type alias CreateUserProfileOptions =
    {
    sshUsername : Maybe String,sshPublicKey : Maybe String,allowSelfManagement : Maybe Bool
    }



{-| <p>Deletes a specified app.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `appId` __:__ `String`


-}

deleteApp :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteApp appId =
    
    let
        requestInput = DeleteAppRequest
            
            appId
            
        
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
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a specified instance, which terminates the associated Amazon EC2 instance. You must stop an instance before you can delete it.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html">Deleting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}

deleteInstance :
  
    String ->
  
  
    ( DeleteInstanceOptions -> DeleteInstanceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteInstance instanceId setOptions =
    
    let
        requestInput = DeleteInstanceRequest
            
            instanceId
            
            options.deleteElasticIp
            
            options.deleteVolumes
            
        
        options = setOptions (DeleteInstanceOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteInstance"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a deleteInstance request
-}
type alias DeleteInstanceOptions =
    {
    deleteElasticIp : Maybe Bool,deleteVolumes : Maybe Bool
    }



{-| <p>Deletes a specified layer. You must first stop and then delete all associated instances or unassign registered instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html">How to Delete a Layer</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `layerId` __:__ `String`


-}

deleteLayer :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteLayer layerId =
    
    let
        requestInput = DeleteLayerRequest
            
            layerId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteLayerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteLayer"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a specified stack. You must first delete all instances, layers, and apps or deregister registered instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html">Shut Down a Stack</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}

deleteStack :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteStack stackId =
    
    let
        requestInput = DeleteStackRequest
            
            stackId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteStackRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteStack"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `iamUserArn` __:__ `String`


-}

deleteUserProfile :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteUserProfile iamUserArn =
    
    let
        requestInput = DeleteUserProfileRequest
            
            iamUserArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteUserProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteUserProfile"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deregisters a specified Amazon ECS cluster from a stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete"> Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html</a>.</p>

__Required Parameters__

* `ecsClusterArn` __:__ `String`


-}

deregisterEcsCluster :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deregisterEcsCluster ecsClusterArn =
    
    let
        requestInput = DeregisterEcsClusterRequest
            
            ecsClusterArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deregisterEcsClusterRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeregisterEcsCluster"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deregisters a specified Elastic IP address. The address can then be registered by another stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `elasticIp` __:__ `String`


-}

deregisterElasticIp :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deregisterElasticIp elasticIp =
    
    let
        requestInput = DeregisterElasticIpRequest
            
            elasticIp
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deregisterElasticIpRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeregisterElasticIp"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deregister a registered Amazon EC2 or on-premises instance. This action removes the instance from the stack and returns it to your control. This action cannot be used with instances that were created with AWS OpsWorks Stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}

deregisterInstance :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deregisterInstance instanceId =
    
    let
        requestInput = DeregisterInstanceRequest
            
            instanceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deregisterInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeregisterInstance"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deregisters an Amazon RDS instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `rdsDbInstanceArn` __:__ `String`


-}

deregisterRdsDbInstance :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deregisterRdsDbInstance rdsDbInstanceArn =
    
    let
        requestInput = DeregisterRdsDbInstanceRequest
            
            rdsDbInstanceArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deregisterRdsDbInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeregisterRdsDbInstance"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deregisters an Amazon EBS volume. The volume can then be registered by another stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `volumeId` __:__ `String`


-}

deregisterVolume :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deregisterVolume volumeId =
    
    let
        requestInput = DeregisterVolumeRequest
            
            volumeId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deregisterVolumeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeregisterVolume"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Describes the available AWS OpsWorks Stacks agent versions. You must specify a stack ID or a configuration manager. <code>DescribeAgentVersions</code> returns a list of available agent versions for the specified stack or configuration manager.</p>

__Required Parameters__



-}

describeAgentVersions :
  
  
    ( DescribeAgentVersionsOptions -> DescribeAgentVersionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAgentVersionsResult)

describeAgentVersions setOptions =
    
    let
        requestInput = DescribeAgentVersionsRequest
            
            options.stackId
            
            options.configurationManager
            
        
        options = setOptions (DescribeAgentVersionsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeAgentVersionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAgentVersions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAgentVersionsResult" describeAgentVersionsResultDecoder)
                
            )



{-| Options for a describeAgentVersions request
-}
type alias DescribeAgentVersionsOptions =
    {
    stackId : Maybe String,configurationManager : Maybe StackConfigurationManager
    }



{-| <p>Requests a description of a specified set of apps.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}

describeApps :
  
  
    ( DescribeAppsOptions -> DescribeAppsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAppsResult)

describeApps setOptions =
    
    let
        requestInput = DescribeAppsRequest
            
            options.stackId
            
            options.appIds
            
        
        options = setOptions (DescribeAppsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeAppsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeApps"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAppsResult" describeAppsResultDecoder)
                
            )



{-| Options for a describeApps request
-}
type alias DescribeAppsOptions =
    {
    stackId : Maybe String,appIds : Maybe (List String)
    }



{-| <p>Describes the results of specified commands.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}

describeCommands :
  
  
    ( DescribeCommandsOptions -> DescribeCommandsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeCommandsResult)

describeCommands setOptions =
    
    let
        requestInput = DescribeCommandsRequest
            
            options.deploymentId
            
            options.instanceId
            
            options.commandIds
            
        
        options = setOptions (DescribeCommandsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeCommandsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeCommands"
                
                (AWS.Core.Decode.ResultDecoder "DescribeCommandsResult" describeCommandsResultDecoder)
                
            )



{-| Options for a describeCommands request
-}
type alias DescribeCommandsOptions =
    {
    deploymentId : Maybe String,instanceId : Maybe String,commandIds : Maybe (List String)
    }



{-| <p>Requests a description of a specified set of deployments.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}

describeDeployments :
  
  
    ( DescribeDeploymentsOptions -> DescribeDeploymentsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDeploymentsResult)

describeDeployments setOptions =
    
    let
        requestInput = DescribeDeploymentsRequest
            
            options.stackId
            
            options.appId
            
            options.deploymentIds
            
        
        options = setOptions (DescribeDeploymentsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeDeploymentsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDeployments"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDeploymentsResult" describeDeploymentsResultDecoder)
                
            )



{-| Options for a describeDeployments request
-}
type alias DescribeDeploymentsOptions =
    {
    stackId : Maybe String,appId : Maybe String,deploymentIds : Maybe (List String)
    }



{-| <p>Describes Amazon ECS clusters that are registered with a stack. If you specify only a stack ID, you can use the <code>MaxResults</code> and <code>NextToken</code> parameters to paginate the response. However, AWS OpsWorks Stacks currently supports only one cluster per layer, so the result set has a maximum of one element.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permission. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>

__Required Parameters__



-}

describeEcsClusters :
  
  
    ( DescribeEcsClustersOptions -> DescribeEcsClustersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEcsClustersResult)

describeEcsClusters setOptions =
    
    let
        requestInput = DescribeEcsClustersRequest
            
            options.ecsClusterArns
            
            options.stackId
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (DescribeEcsClustersOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeEcsClustersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEcsClusters"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEcsClustersResult" describeEcsClustersResultDecoder)
                
            )



{-| Options for a describeEcsClusters request
-}
type alias DescribeEcsClustersOptions =
    {
    ecsClusterArns : Maybe (List String),stackId : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Describes <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP addresses</a>.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}

describeElasticIps :
  
  
    ( DescribeElasticIpsOptions -> DescribeElasticIpsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeElasticIpsResult)

describeElasticIps setOptions =
    
    let
        requestInput = DescribeElasticIpsRequest
            
            options.instanceId
            
            options.stackId
            
            options.ips
            
        
        options = setOptions (DescribeElasticIpsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeElasticIpsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeElasticIps"
                
                (AWS.Core.Decode.ResultDecoder "DescribeElasticIpsResult" describeElasticIpsResultDecoder)
                
            )



{-| Options for a describeElasticIps request
-}
type alias DescribeElasticIpsOptions =
    {
    instanceId : Maybe String,stackId : Maybe String,ips : Maybe (List String)
    }



{-| <p>Describes a stack's Elastic Load Balancing instances.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}

describeElasticLoadBalancers :
  
  
    ( DescribeElasticLoadBalancersOptions -> DescribeElasticLoadBalancersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeElasticLoadBalancersResult)

describeElasticLoadBalancers setOptions =
    
    let
        requestInput = DescribeElasticLoadBalancersRequest
            
            options.stackId
            
            options.layerIds
            
        
        options = setOptions (DescribeElasticLoadBalancersOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeElasticLoadBalancersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeElasticLoadBalancers"
                
                (AWS.Core.Decode.ResultDecoder "DescribeElasticLoadBalancersResult" describeElasticLoadBalancersResultDecoder)
                
            )



{-| Options for a describeElasticLoadBalancers request
-}
type alias DescribeElasticLoadBalancersOptions =
    {
    stackId : Maybe String,layerIds : Maybe (List String)
    }



{-| <p>Requests a description of a set of instances.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}

describeInstances :
  
  
    ( DescribeInstancesOptions -> DescribeInstancesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeInstancesResult)

describeInstances setOptions =
    
    let
        requestInput = DescribeInstancesRequest
            
            options.stackId
            
            options.layerId
            
            options.instanceIds
            
        
        options = setOptions (DescribeInstancesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeInstancesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeInstances"
                
                (AWS.Core.Decode.ResultDecoder "DescribeInstancesResult" describeInstancesResultDecoder)
                
            )



{-| Options for a describeInstances request
-}
type alias DescribeInstancesOptions =
    {
    stackId : Maybe String,layerId : Maybe String,instanceIds : Maybe (List String)
    }



{-| <p>Requests a description of one or more layers in a specified stack.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}

describeLayers :
  
  
    ( DescribeLayersOptions -> DescribeLayersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLayersResult)

describeLayers setOptions =
    
    let
        requestInput = DescribeLayersRequest
            
            options.stackId
            
            options.layerIds
            
        
        options = setOptions (DescribeLayersOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeLayersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeLayers"
                
                (AWS.Core.Decode.ResultDecoder "DescribeLayersResult" describeLayersResultDecoder)
                
            )



{-| Options for a describeLayers request
-}
type alias DescribeLayersOptions =
    {
    stackId : Maybe String,layerIds : Maybe (List String)
    }



{-| <p>Describes load-based auto scaling configurations for specified layers.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `layerIds` __:__ `(List String)`


-}

describeLoadBasedAutoScaling :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLoadBasedAutoScalingResult)

describeLoadBasedAutoScaling layerIds =
    
    let
        requestInput = DescribeLoadBasedAutoScalingRequest
            
            layerIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeLoadBasedAutoScalingRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeLoadBasedAutoScaling"
                
                (AWS.Core.Decode.ResultDecoder "DescribeLoadBasedAutoScalingResult" describeLoadBasedAutoScalingResultDecoder)
                
            )





{-| <p>Describes a user's SSH information.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}

describeMyUserProfile :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeMyUserProfileResult)

describeMyUserProfile =
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeMyUserProfile"
                
                (AWS.Core.Decode.ResultDecoder "DescribeMyUserProfileResult" describeMyUserProfileResultDecoder)
                
            )





{-| <p>Describes the operating systems that are supported by AWS OpsWorks Stacks.</p>

__Required Parameters__



-}

describeOperatingSystems :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeOperatingSystemsResponse)

describeOperatingSystems =
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeOperatingSystems"
                
                (AWS.Core.Decode.ResultDecoder "DescribeOperatingSystemsResponse" describeOperatingSystemsResponseDecoder)
                
            )





{-| <p>Describes the permissions for a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}

describePermissions :
  
  
    ( DescribePermissionsOptions -> DescribePermissionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribePermissionsResult)

describePermissions setOptions =
    
    let
        requestInput = DescribePermissionsRequest
            
            options.iamUserArn
            
            options.stackId
            
        
        options = setOptions (DescribePermissionsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describePermissionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribePermissions"
                
                (AWS.Core.Decode.ResultDecoder "DescribePermissionsResult" describePermissionsResultDecoder)
                
            )



{-| Options for a describePermissions request
-}
type alias DescribePermissionsOptions =
    {
    iamUserArn : Maybe String,stackId : Maybe String
    }



{-| <p>Describe an instance's RAID arrays.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}

describeRaidArrays :
  
  
    ( DescribeRaidArraysOptions -> DescribeRaidArraysOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeRaidArraysResult)

describeRaidArrays setOptions =
    
    let
        requestInput = DescribeRaidArraysRequest
            
            options.instanceId
            
            options.stackId
            
            options.raidArrayIds
            
        
        options = setOptions (DescribeRaidArraysOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeRaidArraysRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeRaidArrays"
                
                (AWS.Core.Decode.ResultDecoder "DescribeRaidArraysResult" describeRaidArraysResultDecoder)
                
            )



{-| Options for a describeRaidArrays request
-}
type alias DescribeRaidArraysOptions =
    {
    instanceId : Maybe String,stackId : Maybe String,raidArrayIds : Maybe (List String)
    }



{-| <p>Describes Amazon RDS instances.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}

describeRdsDbInstances :
  
    String ->
  
  
    ( DescribeRdsDbInstancesOptions -> DescribeRdsDbInstancesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeRdsDbInstancesResult)

describeRdsDbInstances stackId setOptions =
    
    let
        requestInput = DescribeRdsDbInstancesRequest
            
            stackId
            
            options.rdsDbInstanceArns
            
        
        options = setOptions (DescribeRdsDbInstancesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeRdsDbInstancesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeRdsDbInstances"
                
                (AWS.Core.Decode.ResultDecoder "DescribeRdsDbInstancesResult" describeRdsDbInstancesResultDecoder)
                
            )



{-| Options for a describeRdsDbInstances request
-}
type alias DescribeRdsDbInstancesOptions =
    {
    rdsDbInstanceArns : Maybe (List String)
    }



{-| <p>Describes AWS OpsWorks Stacks service errors.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>

__Required Parameters__



-}

describeServiceErrors :
  
  
    ( DescribeServiceErrorsOptions -> DescribeServiceErrorsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeServiceErrorsResult)

describeServiceErrors setOptions =
    
    let
        requestInput = DescribeServiceErrorsRequest
            
            options.stackId
            
            options.instanceId
            
            options.serviceErrorIds
            
        
        options = setOptions (DescribeServiceErrorsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeServiceErrorsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeServiceErrors"
                
                (AWS.Core.Decode.ResultDecoder "DescribeServiceErrorsResult" describeServiceErrorsResultDecoder)
                
            )



{-| Options for a describeServiceErrors request
-}
type alias DescribeServiceErrorsOptions =
    {
    stackId : Maybe String,instanceId : Maybe String,serviceErrorIds : Maybe (List String)
    }



{-| <p>Requests a description of a stack's provisioning parameters.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}

describeStackProvisioningParameters :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackProvisioningParametersResult)

describeStackProvisioningParameters stackId =
    
    let
        requestInput = DescribeStackProvisioningParametersRequest
            
            stackId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeStackProvisioningParametersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackProvisioningParameters"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStackProvisioningParametersResult" describeStackProvisioningParametersResultDecoder)
                
            )





{-| <p>Describes the number of layers and apps in a specified stack, and the number of instances in each state, such as <code>running_setup</code> or <code>online</code>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}

describeStackSummary :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackSummaryResult)

describeStackSummary stackId =
    
    let
        requestInput = DescribeStackSummaryRequest
            
            stackId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeStackSummaryRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackSummary"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStackSummaryResult" describeStackSummaryResultDecoder)
                
            )





{-| <p>Requests a description of one or more stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}

describeStacks :
  
  
    ( DescribeStacksOptions -> DescribeStacksOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStacksResult)

describeStacks setOptions =
    
    let
        requestInput = DescribeStacksRequest
            
            options.stackIds
            
        
        options = setOptions (DescribeStacksOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeStacksRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStacks"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStacksResult" describeStacksResultDecoder)
                
            )



{-| Options for a describeStacks request
-}
type alias DescribeStacksOptions =
    {
    stackIds : Maybe (List String)
    }



{-| <p>Describes time-based auto scaling configurations for specified instances.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceIds` __:__ `(List String)`


-}

describeTimeBasedAutoScaling :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTimeBasedAutoScalingResult)

describeTimeBasedAutoScaling instanceIds =
    
    let
        requestInput = DescribeTimeBasedAutoScalingRequest
            
            instanceIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeTimeBasedAutoScalingRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeTimeBasedAutoScaling"
                
                (AWS.Core.Decode.ResultDecoder "DescribeTimeBasedAutoScalingResult" describeTimeBasedAutoScalingResultDecoder)
                
            )





{-| <p>Describe specified users.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}

describeUserProfiles :
  
  
    ( DescribeUserProfilesOptions -> DescribeUserProfilesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeUserProfilesResult)

describeUserProfiles setOptions =
    
    let
        requestInput = DescribeUserProfilesRequest
            
            options.iamUserArns
            
        
        options = setOptions (DescribeUserProfilesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeUserProfilesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeUserProfiles"
                
                (AWS.Core.Decode.ResultDecoder "DescribeUserProfilesResult" describeUserProfilesResultDecoder)
                
            )



{-| Options for a describeUserProfiles request
-}
type alias DescribeUserProfilesOptions =
    {
    iamUserArns : Maybe (List String)
    }



{-| <p>Describes an instance's Amazon EBS volumes.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}

describeVolumes :
  
  
    ( DescribeVolumesOptions -> DescribeVolumesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeVolumesResult)

describeVolumes setOptions =
    
    let
        requestInput = DescribeVolumesRequest
            
            options.instanceId
            
            options.stackId
            
            options.raidArrayId
            
            options.volumeIds
            
        
        options = setOptions (DescribeVolumesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeVolumesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeVolumes"
                
                (AWS.Core.Decode.ResultDecoder "DescribeVolumesResult" describeVolumesResultDecoder)
                
            )



{-| Options for a describeVolumes request
-}
type alias DescribeVolumesOptions =
    {
    instanceId : Maybe String,stackId : Maybe String,raidArrayId : Maybe String,volumeIds : Maybe (List String)
    }



{-| <p>Detaches a specified Elastic Load Balancing instance from its layer.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `elasticLoadBalancerName` __:__ `String`
* `layerId` __:__ `String`


-}

detachElasticLoadBalancer :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

detachElasticLoadBalancer elasticLoadBalancerName layerId =
    
    let
        requestInput = DetachElasticLoadBalancerRequest
            
            elasticLoadBalancerName
            
            layerId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> detachElasticLoadBalancerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DetachElasticLoadBalancer"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Disassociates an Elastic IP address from its instance. The address remains registered with the stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `elasticIp` __:__ `String`


-}

disassociateElasticIp :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

disassociateElasticIp elasticIp =
    
    let
        requestInput = DisassociateElasticIpRequest
            
            elasticIp
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disassociateElasticIpRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisassociateElasticIp"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Gets a generated host name for the specified layer, based on the current host name theme.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `layerId` __:__ `String`


-}

getHostnameSuggestion :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetHostnameSuggestionResult)

getHostnameSuggestion layerId =
    
    let
        requestInput = GetHostnameSuggestionRequest
            
            layerId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getHostnameSuggestionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetHostnameSuggestion"
                
                (AWS.Core.Decode.ResultDecoder "GetHostnameSuggestionResult" getHostnameSuggestionResultDecoder)
                
            )





{-| <note> <p>This action can be used only with Windows stacks.</p> </note> <p>Grants RDP access to a Windows instance for a specified time period.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}

grantAccess :
  
    String ->
  
  
    ( GrantAccessOptions -> GrantAccessOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GrantAccessResult)

grantAccess instanceId setOptions =
    
    let
        requestInput = GrantAccessRequest
            
            instanceId
            
            options.validForInMinutes
            
        
        options = setOptions (GrantAccessOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> grantAccessRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GrantAccess"
                
                (AWS.Core.Decode.ResultDecoder "GrantAccessResult" grantAccessResultDecoder)
                
            )



{-| Options for a grantAccess request
-}
type alias GrantAccessOptions =
    {
    validForInMinutes : Maybe Int
    }



{-| <p>Returns a list of tags that are applied to the specified stack or layer.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

listTags :
  
    String ->
  
  
    ( ListTagsOptions -> ListTagsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsResult)

listTags resourceArn setOptions =
    
    let
        requestInput = ListTagsRequest
            
            resourceArn
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListTagsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listTagsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTags"
                
                (AWS.Core.Decode.ResultDecoder "ListTagsResult" listTagsResultDecoder)
                
            )



{-| Options for a listTags request
-}
type alias ListTagsOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Reboots a specified instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}

rebootInstance :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

rebootInstance instanceId =
    
    let
        requestInput = RebootInstanceRequest
            
            instanceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> rebootInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RebootInstance"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Registers a specified Amazon ECS cluster with a stack. You can register only one cluster with a stack. A cluster can be registered with only one stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html"> Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html"> Managing User Permissions</a>.</p>

__Required Parameters__

* `ecsClusterArn` __:__ `String`
* `stackId` __:__ `String`


-}

registerEcsCluster :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RegisterEcsClusterResult)

registerEcsCluster ecsClusterArn stackId =
    
    let
        requestInput = RegisterEcsClusterRequest
            
            ecsClusterArn
            
            stackId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> registerEcsClusterRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RegisterEcsCluster"
                
                (AWS.Core.Decode.ResultDecoder "RegisterEcsClusterResult" registerEcsClusterResultDecoder)
                
            )





{-| <p>Registers an Elastic IP address with a specified stack. An address can be registered with only one stack at a time. If the address is already registered, you must first deregister it by calling <a>DeregisterElasticIp</a>. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `elasticIp` __:__ `String`
* `stackId` __:__ `String`


-}

registerElasticIp :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RegisterElasticIpResult)

registerElasticIp elasticIp stackId =
    
    let
        requestInput = RegisterElasticIpRequest
            
            elasticIp
            
            stackId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> registerElasticIpRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RegisterElasticIp"
                
                (AWS.Core.Decode.ResultDecoder "RegisterElasticIpResult" registerElasticIpResultDecoder)
                
            )





{-| <p>Registers instances that were created outside of AWS OpsWorks Stacks with a specified stack.</p> <note> <p>We do not recommend using this action to register instances. The complete registration operation includes two tasks: installing the AWS OpsWorks Stacks agent on the instance, and registering the instance with the stack. <code>RegisterInstance</code> handles only the second step. You should instead use the AWS CLI <code>register</code> command, which performs the entire registration operation. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html"> Registering an Instance with an AWS OpsWorks Stacks Stack</a>.</p> </note> <p>Registered instances have the same requirements as instances that are created by using the <a>CreateInstance</a> API. For example, registered instances must be running a supported Linux-based operating system, and they must have a supported instance type. For more information about requirements for instances that you want to register, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register-registering-preparer.html"> Preparing the Instance</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}

registerInstance :
  
    String ->
  
  
    ( RegisterInstanceOptions -> RegisterInstanceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RegisterInstanceResult)

registerInstance stackId setOptions =
    
    let
        requestInput = RegisterInstanceRequest
            
            stackId
            
            options.hostname
            
            options.publicIp
            
            options.privateIp
            
            options.rsaPublicKey
            
            options.rsaPublicKeyFingerprint
            
            options.instanceIdentity
            
        
        options = setOptions (RegisterInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> registerInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RegisterInstance"
                
                (AWS.Core.Decode.ResultDecoder "RegisterInstanceResult" registerInstanceResultDecoder)
                
            )



{-| Options for a registerInstance request
-}
type alias RegisterInstanceOptions =
    {
    hostname : Maybe String,publicIp : Maybe String,privateIp : Maybe String,rsaPublicKey : Maybe String,rsaPublicKeyFingerprint : Maybe String,instanceIdentity : Maybe InstanceIdentity
    }



{-| <p>Registers an Amazon RDS instance with a stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`
* `rdsDbInstanceArn` __:__ `String`
* `dbUser` __:__ `String`
* `dbPassword` __:__ `String`


-}

registerRdsDbInstance :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

registerRdsDbInstance stackId rdsDbInstanceArn dbUser dbPassword =
    
    let
        requestInput = RegisterRdsDbInstanceRequest
            
            stackId
            
            rdsDbInstanceArn
            
            dbUser
            
            dbPassword
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> registerRdsDbInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RegisterRdsDbInstance"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Registers an Amazon EBS volume with a specified stack. A volume can be registered with only one stack at a time. If the volume is already registered, you must first deregister it by calling <a>DeregisterVolume</a>. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}

registerVolume :
  
    String ->
  
  
    ( RegisterVolumeOptions -> RegisterVolumeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RegisterVolumeResult)

registerVolume stackId setOptions =
    
    let
        requestInput = RegisterVolumeRequest
            
            options.ec2VolumeId
            
            stackId
            
        
        options = setOptions (RegisterVolumeOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> registerVolumeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RegisterVolume"
                
                (AWS.Core.Decode.ResultDecoder "RegisterVolumeResult" registerVolumeResultDecoder)
                
            )



{-| Options for a registerVolume request
-}
type alias RegisterVolumeOptions =
    {
    ec2VolumeId : Maybe String
    }



{-| <p>Specify the load-based auto scaling configuration for a specified layer. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing Load with Time-based and Load-based Instances</a>.</p> <note> <p>To use load-based auto scaling, you must create a set of load-based auto scaling instances. Load-based auto scaling operates only on the instances from that set, so you must ensure that you have created enough instances to handle the maximum anticipated load.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `layerId` __:__ `String`


-}

setLoadBasedAutoScaling :
  
    String ->
  
  
    ( SetLoadBasedAutoScalingOptions -> SetLoadBasedAutoScalingOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

setLoadBasedAutoScaling layerId setOptions =
    
    let
        requestInput = SetLoadBasedAutoScalingRequest
            
            layerId
            
            options.enable
            
            options.upScaling
            
            options.downScaling
            
        
        options = setOptions (SetLoadBasedAutoScalingOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> setLoadBasedAutoScalingRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetLoadBasedAutoScaling"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a setLoadBasedAutoScaling request
-}
type alias SetLoadBasedAutoScalingOptions =
    {
    enable : Maybe Bool,upScaling : Maybe AutoScalingThresholds,downScaling : Maybe AutoScalingThresholds
    }



{-| <p>Specifies a user's permissions. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html">Security and Permissions</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`
* `iamUserArn` __:__ `String`


-}

setPermission :
  
    String ->
  
    String ->
  
  
    ( SetPermissionOptions -> SetPermissionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

setPermission stackId iamUserArn setOptions =
    
    let
        requestInput = SetPermissionRequest
            
            stackId
            
            iamUserArn
            
            options.allowSsh
            
            options.allowSudo
            
            options.level
            
        
        options = setOptions (SetPermissionOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> setPermissionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetPermission"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a setPermission request
-}
type alias SetPermissionOptions =
    {
    allowSsh : Maybe Bool,allowSudo : Maybe Bool,level : Maybe String
    }



{-| <p>Specify the time-based auto scaling configuration for a specified instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing Load with Time-based and Load-based Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}

setTimeBasedAutoScaling :
  
    String ->
  
  
    ( SetTimeBasedAutoScalingOptions -> SetTimeBasedAutoScalingOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

setTimeBasedAutoScaling instanceId setOptions =
    
    let
        requestInput = SetTimeBasedAutoScalingRequest
            
            instanceId
            
            options.autoScalingSchedule
            
        
        options = setOptions (SetTimeBasedAutoScalingOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> setTimeBasedAutoScalingRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetTimeBasedAutoScaling"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a setTimeBasedAutoScaling request
-}
type alias SetTimeBasedAutoScalingOptions =
    {
    autoScalingSchedule : Maybe WeeklyAutoScalingSchedule
    }



{-| <p>Starts a specified instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}

startInstance :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

startInstance instanceId =
    
    let
        requestInput = StartInstanceRequest
            
            instanceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartInstance"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Starts a stack's instances.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}

startStack :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

startStack stackId =
    
    let
        requestInput = StartStackRequest
            
            stackId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startStackRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartStack"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Stops a specified instance. When you stop a standard instance, the data disappears and must be reinstalled when you restart the instance. You can stop an Amazon EBS-backed instance without losing data. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}

stopInstance :
  
    String ->
  
  
    ( StopInstanceOptions -> StopInstanceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

stopInstance instanceId setOptions =
    
    let
        requestInput = StopInstanceRequest
            
            instanceId
            
            options.force
            
        
        options = setOptions (StopInstanceOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopInstance"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a stopInstance request
-}
type alias StopInstanceOptions =
    {
    force : Maybe Bool
    }



{-| <p>Stops a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}

stopStack :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

stopStack stackId =
    
    let
        requestInput = StopStackRequest
            
            stackId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopStackRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopStack"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks Stacks. For more information about how tagging works, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html">Tags</a> in the AWS OpsWorks User Guide.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tags` __:__ `(Dict String String)`


-}

tagResource :
  
    String ->
  
    (Dict String String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

tagResource resourceArn tags =
    
    let
        requestInput = TagResourceRequest
            
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





{-| <p>Unassigns a registered instance from all layers that are using the instance. The instance remains in the stack as an unassigned instance, and can be assigned to another layer as needed. You cannot use this action with instances that were created with AWS OpsWorks Stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}

unassignInstance :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

unassignInstance instanceId =
    
    let
        requestInput = UnassignInstanceRequest
            
            instanceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> unassignInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UnassignInstance"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Unassigns an assigned Amazon EBS volume. The volume remains registered with the stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `volumeId` __:__ `String`


-}

unassignVolume :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

unassignVolume volumeId =
    
    let
        requestInput = UnassignVolumeRequest
            
            volumeId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> unassignVolumeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UnassignVolume"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Removes tags from a specified stack or layer.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

untagResource :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

untagResource resourceArn tagKeys =
    
    let
        requestInput = UntagResourceRequest
            
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





{-| <p>Updates a specified app.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `appId` __:__ `String`


-}

updateApp :
  
    String ->
  
  
    ( UpdateAppOptions -> UpdateAppOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateApp appId setOptions =
    
    let
        requestInput = UpdateAppRequest
            
            appId
            
            options.name
            
            options.description
            
            options.dataSources
            
            options.type_
            
            options.appSource
            
            options.domains
            
            options.enableSsl
            
            options.sslConfiguration
            
            options.attributes
            
            options.environment
            
        
        options = setOptions (UpdateAppOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
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
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a updateApp request
-}
type alias UpdateAppOptions =
    {
    name : Maybe String,description : Maybe String,dataSources : Maybe (List DataSource),type_ : Maybe AppType,appSource : Maybe Source,domains : Maybe (List String),enableSsl : Maybe Bool,sslConfiguration : Maybe SslConfiguration,attributes : Maybe (Dict String String),environment : Maybe (List EnvironmentVariable)
    }



{-| <p>Updates a registered Elastic IP address's name. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `elasticIp` __:__ `String`


-}

updateElasticIp :
  
    String ->
  
  
    ( UpdateElasticIpOptions -> UpdateElasticIpOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateElasticIp elasticIp setOptions =
    
    let
        requestInput = UpdateElasticIpRequest
            
            elasticIp
            
            options.name
            
        
        options = setOptions (UpdateElasticIpOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateElasticIpRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateElasticIp"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a updateElasticIp request
-}
type alias UpdateElasticIpOptions =
    {
    name : Maybe String
    }



{-| <p>Updates a specified instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}

updateInstance :
  
    String ->
  
  
    ( UpdateInstanceOptions -> UpdateInstanceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateInstance instanceId setOptions =
    
    let
        requestInput = UpdateInstanceRequest
            
            instanceId
            
            options.layerIds
            
            options.instanceType
            
            options.autoScalingType
            
            options.hostname
            
            options.os
            
            options.amiId
            
            options.sshKeyName
            
            options.architecture
            
            options.installUpdatesOnBoot
            
            options.ebsOptimized
            
            options.agentVersion
            
        
        options = setOptions (UpdateInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateInstance"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a updateInstance request
-}
type alias UpdateInstanceOptions =
    {
    layerIds : Maybe (List String),instanceType : Maybe String,autoScalingType : Maybe AutoScalingType,hostname : Maybe String,os : Maybe String,amiId : Maybe String,sshKeyName : Maybe String,architecture : Maybe Architecture,installUpdatesOnBoot : Maybe Bool,ebsOptimized : Maybe Bool,agentVersion : Maybe String
    }



{-| <p>Updates a specified layer.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `layerId` __:__ `String`


-}

updateLayer :
  
    String ->
  
  
    ( UpdateLayerOptions -> UpdateLayerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateLayer layerId setOptions =
    
    let
        requestInput = UpdateLayerRequest
            
            layerId
            
            options.name
            
            options.shortname
            
            options.attributes
            
            options.cloudWatchLogsConfiguration
            
            options.customInstanceProfileArn
            
            options.customJson
            
            options.customSecurityGroupIds
            
            options.packages
            
            options.volumeConfigurations
            
            options.enableAutoHealing
            
            options.autoAssignElasticIps
            
            options.autoAssignPublicIps
            
            options.customRecipes
            
            options.installUpdatesOnBoot
            
            options.useEbsOptimizedInstances
            
            options.lifecycleEventConfiguration
            
        
        options = setOptions (UpdateLayerOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateLayerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateLayer"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a updateLayer request
-}
type alias UpdateLayerOptions =
    {
    name : Maybe String,shortname : Maybe String,attributes : Maybe (Dict String String),cloudWatchLogsConfiguration : Maybe CloudWatchLogsConfiguration,customInstanceProfileArn : Maybe String,customJson : Maybe String,customSecurityGroupIds : Maybe (List String),packages : Maybe (List String),volumeConfigurations : Maybe (List VolumeConfiguration),enableAutoHealing : Maybe Bool,autoAssignElasticIps : Maybe Bool,autoAssignPublicIps : Maybe Bool,customRecipes : Maybe Recipes,installUpdatesOnBoot : Maybe Bool,useEbsOptimizedInstances : Maybe Bool,lifecycleEventConfiguration : Maybe LifecycleEventConfiguration
    }



{-| <p>Updates a user's SSH public key.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}

updateMyUserProfile :
  
  
    ( UpdateMyUserProfileOptions -> UpdateMyUserProfileOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateMyUserProfile setOptions =
    
    let
        requestInput = UpdateMyUserProfileRequest
            
            options.sshPublicKey
            
        
        options = setOptions (UpdateMyUserProfileOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateMyUserProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateMyUserProfile"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a updateMyUserProfile request
-}
type alias UpdateMyUserProfileOptions =
    {
    sshPublicKey : Maybe String
    }



{-| <p>Updates an Amazon RDS instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `rdsDbInstanceArn` __:__ `String`


-}

updateRdsDbInstance :
  
    String ->
  
  
    ( UpdateRdsDbInstanceOptions -> UpdateRdsDbInstanceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateRdsDbInstance rdsDbInstanceArn setOptions =
    
    let
        requestInput = UpdateRdsDbInstanceRequest
            
            rdsDbInstanceArn
            
            options.dbUser
            
            options.dbPassword
            
        
        options = setOptions (UpdateRdsDbInstanceOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateRdsDbInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateRdsDbInstance"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a updateRdsDbInstance request
-}
type alias UpdateRdsDbInstanceOptions =
    {
    dbUser : Maybe String,dbPassword : Maybe String
    }



{-| <p>Updates a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}

updateStack :
  
    String ->
  
  
    ( UpdateStackOptions -> UpdateStackOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateStack stackId setOptions =
    
    let
        requestInput = UpdateStackRequest
            
            stackId
            
            options.name
            
            options.attributes
            
            options.serviceRoleArn
            
            options.defaultInstanceProfileArn
            
            options.defaultOs
            
            options.hostnameTheme
            
            options.defaultAvailabilityZone
            
            options.defaultSubnetId
            
            options.customJson
            
            options.configurationManager
            
            options.chefConfiguration
            
            options.useCustomCookbooks
            
            options.customCookbooksSource
            
            options.defaultSshKeyName
            
            options.defaultRootDeviceType
            
            options.useOpsworksSecurityGroups
            
            options.agentVersion
            
        
        options = setOptions (UpdateStackOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateStackRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateStack"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a updateStack request
-}
type alias UpdateStackOptions =
    {
    name : Maybe String,attributes : Maybe (Dict String String),serviceRoleArn : Maybe String,defaultInstanceProfileArn : Maybe String,defaultOs : Maybe String,hostnameTheme : Maybe String,defaultAvailabilityZone : Maybe String,defaultSubnetId : Maybe String,customJson : Maybe String,configurationManager : Maybe StackConfigurationManager,chefConfiguration : Maybe ChefConfiguration,useCustomCookbooks : Maybe Bool,customCookbooksSource : Maybe Source,defaultSshKeyName : Maybe String,defaultRootDeviceType : Maybe RootDeviceType,useOpsworksSecurityGroups : Maybe Bool,agentVersion : Maybe String
    }



{-| <p>Updates a specified user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `iamUserArn` __:__ `String`


-}

updateUserProfile :
  
    String ->
  
  
    ( UpdateUserProfileOptions -> UpdateUserProfileOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateUserProfile iamUserArn setOptions =
    
    let
        requestInput = UpdateUserProfileRequest
            
            iamUserArn
            
            options.sshUsername
            
            options.sshPublicKey
            
            options.allowSelfManagement
            
        
        options = setOptions (UpdateUserProfileOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateUserProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateUserProfile"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a updateUserProfile request
-}
type alias UpdateUserProfileOptions =
    {
    sshUsername : Maybe String,sshPublicKey : Maybe String,allowSelfManagement : Maybe Bool
    }



{-| <p>Updates an Amazon EBS volume's name or mount point. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `volumeId` __:__ `String`


-}

updateVolume :
  
    String ->
  
  
    ( UpdateVolumeOptions -> UpdateVolumeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateVolume volumeId setOptions =
    
    let
        requestInput = UpdateVolumeRequest
            
            volumeId
            
            options.name
            
            options.mountPoint
            
        
        options = setOptions (UpdateVolumeOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateVolumeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateVolume"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a updateVolume request
-}
type alias UpdateVolumeOptions =
    {
    name : Maybe String,mountPoint : Maybe String
    }




{-| <p>Describes an agent version.</p>
-}
type alias AgentVersion =
    { version : Maybe String
    , configurationManager : Maybe StackConfigurationManager
    }



agentVersionDecoder : JD.Decoder AgentVersion
agentVersionDecoder =
    JD.succeed AgentVersion
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConfigurationManager", "configurationManager"]
            stackConfigurationManagerDecoder
        )
        




agentVersionToString : AgentVersion -> String -- List (String, String)
agentVersionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "configurationManager" "" -- val.configurationManager
        
    --     |> Dict.toList
    ""



{-| <p>A description of the app.</p>
-}
type alias App =
    { appId : Maybe String
    , stackId : Maybe String
    , shortname : Maybe String
    , name : Maybe String
    , description : Maybe String
    , dataSources : Maybe (List DataSource)
    , type_ : Maybe AppType
    , appSource : Maybe Source
    , domains : Maybe (List String)
    , enableSsl : Maybe Bool
    , sslConfiguration : Maybe SslConfiguration
    , attributes : Maybe (Dict String String)
    , createdAt : Maybe String
    , environment : Maybe (List EnvironmentVariable)
    }



appDecoder : JD.Decoder App
appDecoder =
    JD.succeed App
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AppId", "appId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Shortname", "shortname"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSources", "dataSources"]
            (JD.list dataSourceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            appTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AppSource", "appSource"]
            sourceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Domains", "domains"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnableSsl", "enableSsl"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SslConfiguration", "sslConfiguration"]
            sslConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Environment", "environment"]
            (JD.list environmentVariableDecoder)
        )
        




appToString : App -> String -- List (String, String)
appToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "appId" "" -- val.appId
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "shortname" "" -- val.shortname
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "dataSources" "" -- val.dataSources
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "appSource" "" -- val.appSource
        
    --     |> Dict.insert
    --         "domains" "" -- val.domains
        
    --     |> Dict.insert
    --         "enableSsl" "" -- val.enableSsl
        
    --     |> Dict.insert
    --         "sslConfiguration" "" -- val.sslConfiguration
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "environment" "" -- val.environment
        
    --     |> Dict.toList
    ""



{-| One of

* `AppAttributesKeys_DocumentRoot`
* `AppAttributesKeys_RailsEnv`
* `AppAttributesKeys_AutoBundleOnDeploy`
* `AppAttributesKeys_AwsFlowRubySettings`

-}
type AppAttributesKeys
    = AppAttributesKeys_DocumentRoot
    | AppAttributesKeys_RailsEnv
    | AppAttributesKeys_AutoBundleOnDeploy
    | AppAttributesKeys_AwsFlowRubySettings



appAttributesKeysDecoder : JD.Decoder AppAttributesKeys
appAttributesKeysDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DocumentRoot" ->
                        JD.succeed AppAttributesKeys_DocumentRoot

                    "RailsEnv" ->
                        JD.succeed AppAttributesKeys_RailsEnv

                    "AutoBundleOnDeploy" ->
                        JD.succeed AppAttributesKeys_AutoBundleOnDeploy

                    "AwsFlowRubySettings" ->
                        JD.succeed AppAttributesKeys_AwsFlowRubySettings


                    _ ->
                        JD.fail "bad thing"
            )




appAttributesKeysToString : AppAttributesKeys -> String
appAttributesKeysToString val =
    case val of
        AppAttributesKeys_DocumentRoot ->
            "DocumentRoot"

        AppAttributesKeys_RailsEnv ->
            "RailsEnv"

        AppAttributesKeys_AutoBundleOnDeploy ->
            "AutoBundleOnDeploy"

        AppAttributesKeys_AwsFlowRubySettings ->
            "AwsFlowRubySettings"




{-| One of

* `AppType_aws-flow-ruby`
* `AppType_java`
* `AppType_rails`
* `AppType_php`
* `AppType_nodejs`
* `AppType_static`
* `AppType_other`

-}
type AppType
    = AppType_aws_flow_ruby
    | AppType_java
    | AppType_rails
    | AppType_php
    | AppType_nodejs
    | AppType_static
    | AppType_other



appTypeDecoder : JD.Decoder AppType
appTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "aws_flow_ruby" ->
                        JD.succeed AppType_aws_flow_ruby

                    "java" ->
                        JD.succeed AppType_java

                    "rails" ->
                        JD.succeed AppType_rails

                    "php" ->
                        JD.succeed AppType_php

                    "nodejs" ->
                        JD.succeed AppType_nodejs

                    "static" ->
                        JD.succeed AppType_static

                    "other" ->
                        JD.succeed AppType_other


                    _ ->
                        JD.fail "bad thing"
            )




appTypeToString : AppType -> String
appTypeToString val =
    case val of
        AppType_aws_flow_ruby ->
            "aws_flow_ruby"

        AppType_java ->
            "java"

        AppType_rails ->
            "rails"

        AppType_php ->
            "php"

        AppType_nodejs ->
            "nodejs"

        AppType_static ->
            "static"

        AppType_other ->
            "other"




{-| One of

* `Architecture_x86_64`
* `Architecture_i386`

-}
type Architecture
    = Architecture_x86_64
    | Architecture_i386



architectureDecoder : JD.Decoder Architecture
architectureDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "x86_64" ->
                        JD.succeed Architecture_x86_64

                    "i386" ->
                        JD.succeed Architecture_i386


                    _ ->
                        JD.fail "bad thing"
            )




architectureToString : Architecture -> String
architectureToString val =
    case val of
        Architecture_x86_64 ->
            "x86_64"

        Architecture_i386 ->
            "i386"




{-| <p>Describes a load-based auto scaling upscaling or downscaling threshold configuration, which specifies when AWS OpsWorks Stacks starts or stops load-based instances.</p>
-}
type alias AutoScalingThresholds =
    { instanceCount : Maybe Int
    , thresholdsWaitTime : Maybe Int
    , ignoreMetricsTime : Maybe Int
    , cpuThreshold : Maybe Float
    , memoryThreshold : Maybe Float
    , loadThreshold : Maybe Float
    , alarms : Maybe (List String)
    }



autoScalingThresholdsDecoder : JD.Decoder AutoScalingThresholds
autoScalingThresholdsDecoder =
    JD.succeed AutoScalingThresholds
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceCount", "instanceCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ThresholdsWaitTime", "thresholdsWaitTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IgnoreMetricsTime", "ignoreMetricsTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CpuThreshold", "cpuThreshold"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MemoryThreshold", "memoryThreshold"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadThreshold", "loadThreshold"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Alarms", "alarms"]
            (JD.list JD.string)
        )
        




autoScalingThresholdsToString : AutoScalingThresholds -> String -- List (String, String)
autoScalingThresholdsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceCount" "" -- val.instanceCount
        
    --     |> Dict.insert
    --         "thresholdsWaitTime" "" -- val.thresholdsWaitTime
        
    --     |> Dict.insert
    --         "ignoreMetricsTime" "" -- val.ignoreMetricsTime
        
    --     |> Dict.insert
    --         "cpuThreshold" "" -- val.cpuThreshold
        
    --     |> Dict.insert
    --         "memoryThreshold" "" -- val.memoryThreshold
        
    --     |> Dict.insert
    --         "loadThreshold" "" -- val.loadThreshold
        
    --     |> Dict.insert
    --         "alarms" "" -- val.alarms
        
    --     |> Dict.toList
    ""



{-| One of

* `AutoScalingType_load`
* `AutoScalingType_timer`

-}
type AutoScalingType
    = AutoScalingType_load
    | AutoScalingType_timer



autoScalingTypeDecoder : JD.Decoder AutoScalingType
autoScalingTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "load" ->
                        JD.succeed AutoScalingType_load

                    "timer" ->
                        JD.succeed AutoScalingType_timer


                    _ ->
                        JD.fail "bad thing"
            )




autoScalingTypeToString : AutoScalingType -> String
autoScalingTypeToString val =
    case val of
        AutoScalingType_load ->
            "load"

        AutoScalingType_timer ->
            "timer"




{-| <p>Describes a block device mapping. This data type maps directly to the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html">BlockDeviceMapping</a> data type. </p>
-}
type alias BlockDeviceMapping =
    { deviceName : Maybe String
    , noDevice : Maybe String
    , virtualName : Maybe String
    , ebs : Maybe EbsBlockDevice
    }



blockDeviceMappingDecoder : JD.Decoder BlockDeviceMapping
blockDeviceMappingDecoder =
    JD.succeed BlockDeviceMapping
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeviceName", "deviceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NoDevice", "noDevice"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VirtualName", "virtualName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Ebs", "ebs"]
            ebsBlockDeviceDecoder
        )
        




blockDeviceMappingToString : BlockDeviceMapping -> String -- List (String, String)
blockDeviceMappingToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deviceName" "" -- val.deviceName
        
    --     |> Dict.insert
    --         "noDevice" "" -- val.noDevice
        
    --     |> Dict.insert
    --         "virtualName" "" -- val.virtualName
        
    --     |> Dict.insert
    --         "ebs" "" -- val.ebs
        
    --     |> Dict.toList
    ""



{-| <p>Describes the Chef configuration.</p>
-}
type alias ChefConfiguration =
    { manageBerkshelf : Maybe Bool
    , berkshelfVersion : Maybe String
    }



chefConfigurationDecoder : JD.Decoder ChefConfiguration
chefConfigurationDecoder =
    JD.succeed ChefConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ManageBerkshelf", "manageBerkshelf"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BerkshelfVersion", "berkshelfVersion"]
            JD.string
        )
        




chefConfigurationToString : ChefConfiguration -> String -- List (String, String)
chefConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "manageBerkshelf" "" -- val.manageBerkshelf
        
    --     |> Dict.insert
    --         "berkshelfVersion" "" -- val.berkshelfVersion
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from cloneSta
-}
type alias CloneStackResult =
    { stackId : Maybe String
    }



cloneStackResultDecoder : JD.Decoder CloneStackResult
cloneStackResultDecoder =
    JD.succeed CloneStackResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        




cloneStackResultToString : CloneStackResult -> String -- List (String, String)
cloneStackResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.toList
    ""



{-| <p>Describes the Amazon CloudWatch logs configuration for a layer.</p>
-}
type alias CloudWatchLogsConfiguration =
    { enabled : Maybe Bool
    , logStreams : Maybe (List CloudWatchLogsLogStream)
    }



cloudWatchLogsConfigurationDecoder : JD.Decoder CloudWatchLogsConfiguration
cloudWatchLogsConfigurationDecoder =
    JD.succeed CloudWatchLogsConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogStreams", "logStreams"]
            (JD.list cloudWatchLogsLogStreamDecoder)
        )
        




cloudWatchLogsConfigurationToString : CloudWatchLogsConfiguration -> String -- List (String, String)
cloudWatchLogsConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "logStreams" "" -- val.logStreams
        
    --     |> Dict.toList
    ""



{-| One of

* `CloudWatchLogsEncoding_ascii`
* `CloudWatchLogsEncoding_big5`
* `CloudWatchLogsEncoding_big5hkscs`
* `CloudWatchLogsEncoding_cp037`
* `CloudWatchLogsEncoding_cp424`
* `CloudWatchLogsEncoding_cp437`
* `CloudWatchLogsEncoding_cp500`
* `CloudWatchLogsEncoding_cp720`
* `CloudWatchLogsEncoding_cp737`
* `CloudWatchLogsEncoding_cp775`
* `CloudWatchLogsEncoding_cp850`
* `CloudWatchLogsEncoding_cp852`
* `CloudWatchLogsEncoding_cp855`
* `CloudWatchLogsEncoding_cp856`
* `CloudWatchLogsEncoding_cp857`
* `CloudWatchLogsEncoding_cp858`
* `CloudWatchLogsEncoding_cp860`
* `CloudWatchLogsEncoding_cp861`
* `CloudWatchLogsEncoding_cp862`
* `CloudWatchLogsEncoding_cp863`
* `CloudWatchLogsEncoding_cp864`
* `CloudWatchLogsEncoding_cp865`
* `CloudWatchLogsEncoding_cp866`
* `CloudWatchLogsEncoding_cp869`
* `CloudWatchLogsEncoding_cp874`
* `CloudWatchLogsEncoding_cp875`
* `CloudWatchLogsEncoding_cp932`
* `CloudWatchLogsEncoding_cp949`
* `CloudWatchLogsEncoding_cp950`
* `CloudWatchLogsEncoding_cp1006`
* `CloudWatchLogsEncoding_cp1026`
* `CloudWatchLogsEncoding_cp1140`
* `CloudWatchLogsEncoding_cp1250`
* `CloudWatchLogsEncoding_cp1251`
* `CloudWatchLogsEncoding_cp1252`
* `CloudWatchLogsEncoding_cp1253`
* `CloudWatchLogsEncoding_cp1254`
* `CloudWatchLogsEncoding_cp1255`
* `CloudWatchLogsEncoding_cp1256`
* `CloudWatchLogsEncoding_cp1257`
* `CloudWatchLogsEncoding_cp1258`
* `CloudWatchLogsEncoding_euc_jp`
* `CloudWatchLogsEncoding_euc_jis_2004`
* `CloudWatchLogsEncoding_euc_jisx0213`
* `CloudWatchLogsEncoding_euc_kr`
* `CloudWatchLogsEncoding_gb2312`
* `CloudWatchLogsEncoding_gbk`
* `CloudWatchLogsEncoding_gb18030`
* `CloudWatchLogsEncoding_hz`
* `CloudWatchLogsEncoding_iso2022_jp`
* `CloudWatchLogsEncoding_iso2022_jp_1`
* `CloudWatchLogsEncoding_iso2022_jp_2`
* `CloudWatchLogsEncoding_iso2022_jp_2004`
* `CloudWatchLogsEncoding_iso2022_jp_3`
* `CloudWatchLogsEncoding_iso2022_jp_ext`
* `CloudWatchLogsEncoding_iso2022_kr`
* `CloudWatchLogsEncoding_latin_1`
* `CloudWatchLogsEncoding_iso8859_2`
* `CloudWatchLogsEncoding_iso8859_3`
* `CloudWatchLogsEncoding_iso8859_4`
* `CloudWatchLogsEncoding_iso8859_5`
* `CloudWatchLogsEncoding_iso8859_6`
* `CloudWatchLogsEncoding_iso8859_7`
* `CloudWatchLogsEncoding_iso8859_8`
* `CloudWatchLogsEncoding_iso8859_9`
* `CloudWatchLogsEncoding_iso8859_10`
* `CloudWatchLogsEncoding_iso8859_13`
* `CloudWatchLogsEncoding_iso8859_14`
* `CloudWatchLogsEncoding_iso8859_15`
* `CloudWatchLogsEncoding_iso8859_16`
* `CloudWatchLogsEncoding_johab`
* `CloudWatchLogsEncoding_koi8_r`
* `CloudWatchLogsEncoding_koi8_u`
* `CloudWatchLogsEncoding_mac_cyrillic`
* `CloudWatchLogsEncoding_mac_greek`
* `CloudWatchLogsEncoding_mac_iceland`
* `CloudWatchLogsEncoding_mac_latin2`
* `CloudWatchLogsEncoding_mac_roman`
* `CloudWatchLogsEncoding_mac_turkish`
* `CloudWatchLogsEncoding_ptcp154`
* `CloudWatchLogsEncoding_shift_jis`
* `CloudWatchLogsEncoding_shift_jis_2004`
* `CloudWatchLogsEncoding_shift_jisx0213`
* `CloudWatchLogsEncoding_utf_32`
* `CloudWatchLogsEncoding_utf_32_be`
* `CloudWatchLogsEncoding_utf_32_le`
* `CloudWatchLogsEncoding_utf_16`
* `CloudWatchLogsEncoding_utf_16_be`
* `CloudWatchLogsEncoding_utf_16_le`
* `CloudWatchLogsEncoding_utf_7`
* `CloudWatchLogsEncoding_utf_8`
* `CloudWatchLogsEncoding_utf_8_sig`

-}
type CloudWatchLogsEncoding
    = CloudWatchLogsEncoding_ascii
    | CloudWatchLogsEncoding_big5
    | CloudWatchLogsEncoding_big5hkscs
    | CloudWatchLogsEncoding_cp037
    | CloudWatchLogsEncoding_cp424
    | CloudWatchLogsEncoding_cp437
    | CloudWatchLogsEncoding_cp500
    | CloudWatchLogsEncoding_cp720
    | CloudWatchLogsEncoding_cp737
    | CloudWatchLogsEncoding_cp775
    | CloudWatchLogsEncoding_cp850
    | CloudWatchLogsEncoding_cp852
    | CloudWatchLogsEncoding_cp855
    | CloudWatchLogsEncoding_cp856
    | CloudWatchLogsEncoding_cp857
    | CloudWatchLogsEncoding_cp858
    | CloudWatchLogsEncoding_cp860
    | CloudWatchLogsEncoding_cp861
    | CloudWatchLogsEncoding_cp862
    | CloudWatchLogsEncoding_cp863
    | CloudWatchLogsEncoding_cp864
    | CloudWatchLogsEncoding_cp865
    | CloudWatchLogsEncoding_cp866
    | CloudWatchLogsEncoding_cp869
    | CloudWatchLogsEncoding_cp874
    | CloudWatchLogsEncoding_cp875
    | CloudWatchLogsEncoding_cp932
    | CloudWatchLogsEncoding_cp949
    | CloudWatchLogsEncoding_cp950
    | CloudWatchLogsEncoding_cp1006
    | CloudWatchLogsEncoding_cp1026
    | CloudWatchLogsEncoding_cp1140
    | CloudWatchLogsEncoding_cp1250
    | CloudWatchLogsEncoding_cp1251
    | CloudWatchLogsEncoding_cp1252
    | CloudWatchLogsEncoding_cp1253
    | CloudWatchLogsEncoding_cp1254
    | CloudWatchLogsEncoding_cp1255
    | CloudWatchLogsEncoding_cp1256
    | CloudWatchLogsEncoding_cp1257
    | CloudWatchLogsEncoding_cp1258
    | CloudWatchLogsEncoding_euc_jp
    | CloudWatchLogsEncoding_euc_jis_2004
    | CloudWatchLogsEncoding_euc_jisx0213
    | CloudWatchLogsEncoding_euc_kr
    | CloudWatchLogsEncoding_gb2312
    | CloudWatchLogsEncoding_gbk
    | CloudWatchLogsEncoding_gb18030
    | CloudWatchLogsEncoding_hz
    | CloudWatchLogsEncoding_iso2022_jp
    | CloudWatchLogsEncoding_iso2022_jp_1
    | CloudWatchLogsEncoding_iso2022_jp_2
    | CloudWatchLogsEncoding_iso2022_jp_2004
    | CloudWatchLogsEncoding_iso2022_jp_3
    | CloudWatchLogsEncoding_iso2022_jp_ext
    | CloudWatchLogsEncoding_iso2022_kr
    | CloudWatchLogsEncoding_latin_1
    | CloudWatchLogsEncoding_iso8859_2
    | CloudWatchLogsEncoding_iso8859_3
    | CloudWatchLogsEncoding_iso8859_4
    | CloudWatchLogsEncoding_iso8859_5
    | CloudWatchLogsEncoding_iso8859_6
    | CloudWatchLogsEncoding_iso8859_7
    | CloudWatchLogsEncoding_iso8859_8
    | CloudWatchLogsEncoding_iso8859_9
    | CloudWatchLogsEncoding_iso8859_10
    | CloudWatchLogsEncoding_iso8859_13
    | CloudWatchLogsEncoding_iso8859_14
    | CloudWatchLogsEncoding_iso8859_15
    | CloudWatchLogsEncoding_iso8859_16
    | CloudWatchLogsEncoding_johab
    | CloudWatchLogsEncoding_koi8_r
    | CloudWatchLogsEncoding_koi8_u
    | CloudWatchLogsEncoding_mac_cyrillic
    | CloudWatchLogsEncoding_mac_greek
    | CloudWatchLogsEncoding_mac_iceland
    | CloudWatchLogsEncoding_mac_latin2
    | CloudWatchLogsEncoding_mac_roman
    | CloudWatchLogsEncoding_mac_turkish
    | CloudWatchLogsEncoding_ptcp154
    | CloudWatchLogsEncoding_shift_jis
    | CloudWatchLogsEncoding_shift_jis_2004
    | CloudWatchLogsEncoding_shift_jisx0213
    | CloudWatchLogsEncoding_utf_32
    | CloudWatchLogsEncoding_utf_32_be
    | CloudWatchLogsEncoding_utf_32_le
    | CloudWatchLogsEncoding_utf_16
    | CloudWatchLogsEncoding_utf_16_be
    | CloudWatchLogsEncoding_utf_16_le
    | CloudWatchLogsEncoding_utf_7
    | CloudWatchLogsEncoding_utf_8
    | CloudWatchLogsEncoding_utf_8_sig



cloudWatchLogsEncodingDecoder : JD.Decoder CloudWatchLogsEncoding
cloudWatchLogsEncodingDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ascii" ->
                        JD.succeed CloudWatchLogsEncoding_ascii

                    "big5" ->
                        JD.succeed CloudWatchLogsEncoding_big5

                    "big5hkscs" ->
                        JD.succeed CloudWatchLogsEncoding_big5hkscs

                    "cp037" ->
                        JD.succeed CloudWatchLogsEncoding_cp037

                    "cp424" ->
                        JD.succeed CloudWatchLogsEncoding_cp424

                    "cp437" ->
                        JD.succeed CloudWatchLogsEncoding_cp437

                    "cp500" ->
                        JD.succeed CloudWatchLogsEncoding_cp500

                    "cp720" ->
                        JD.succeed CloudWatchLogsEncoding_cp720

                    "cp737" ->
                        JD.succeed CloudWatchLogsEncoding_cp737

                    "cp775" ->
                        JD.succeed CloudWatchLogsEncoding_cp775

                    "cp850" ->
                        JD.succeed CloudWatchLogsEncoding_cp850

                    "cp852" ->
                        JD.succeed CloudWatchLogsEncoding_cp852

                    "cp855" ->
                        JD.succeed CloudWatchLogsEncoding_cp855

                    "cp856" ->
                        JD.succeed CloudWatchLogsEncoding_cp856

                    "cp857" ->
                        JD.succeed CloudWatchLogsEncoding_cp857

                    "cp858" ->
                        JD.succeed CloudWatchLogsEncoding_cp858

                    "cp860" ->
                        JD.succeed CloudWatchLogsEncoding_cp860

                    "cp861" ->
                        JD.succeed CloudWatchLogsEncoding_cp861

                    "cp862" ->
                        JD.succeed CloudWatchLogsEncoding_cp862

                    "cp863" ->
                        JD.succeed CloudWatchLogsEncoding_cp863

                    "cp864" ->
                        JD.succeed CloudWatchLogsEncoding_cp864

                    "cp865" ->
                        JD.succeed CloudWatchLogsEncoding_cp865

                    "cp866" ->
                        JD.succeed CloudWatchLogsEncoding_cp866

                    "cp869" ->
                        JD.succeed CloudWatchLogsEncoding_cp869

                    "cp874" ->
                        JD.succeed CloudWatchLogsEncoding_cp874

                    "cp875" ->
                        JD.succeed CloudWatchLogsEncoding_cp875

                    "cp932" ->
                        JD.succeed CloudWatchLogsEncoding_cp932

                    "cp949" ->
                        JD.succeed CloudWatchLogsEncoding_cp949

                    "cp950" ->
                        JD.succeed CloudWatchLogsEncoding_cp950

                    "cp1006" ->
                        JD.succeed CloudWatchLogsEncoding_cp1006

                    "cp1026" ->
                        JD.succeed CloudWatchLogsEncoding_cp1026

                    "cp1140" ->
                        JD.succeed CloudWatchLogsEncoding_cp1140

                    "cp1250" ->
                        JD.succeed CloudWatchLogsEncoding_cp1250

                    "cp1251" ->
                        JD.succeed CloudWatchLogsEncoding_cp1251

                    "cp1252" ->
                        JD.succeed CloudWatchLogsEncoding_cp1252

                    "cp1253" ->
                        JD.succeed CloudWatchLogsEncoding_cp1253

                    "cp1254" ->
                        JD.succeed CloudWatchLogsEncoding_cp1254

                    "cp1255" ->
                        JD.succeed CloudWatchLogsEncoding_cp1255

                    "cp1256" ->
                        JD.succeed CloudWatchLogsEncoding_cp1256

                    "cp1257" ->
                        JD.succeed CloudWatchLogsEncoding_cp1257

                    "cp1258" ->
                        JD.succeed CloudWatchLogsEncoding_cp1258

                    "euc_jp" ->
                        JD.succeed CloudWatchLogsEncoding_euc_jp

                    "euc_jis_2004" ->
                        JD.succeed CloudWatchLogsEncoding_euc_jis_2004

                    "euc_jisx0213" ->
                        JD.succeed CloudWatchLogsEncoding_euc_jisx0213

                    "euc_kr" ->
                        JD.succeed CloudWatchLogsEncoding_euc_kr

                    "gb2312" ->
                        JD.succeed CloudWatchLogsEncoding_gb2312

                    "gbk" ->
                        JD.succeed CloudWatchLogsEncoding_gbk

                    "gb18030" ->
                        JD.succeed CloudWatchLogsEncoding_gb18030

                    "hz" ->
                        JD.succeed CloudWatchLogsEncoding_hz

                    "iso2022_jp" ->
                        JD.succeed CloudWatchLogsEncoding_iso2022_jp

                    "iso2022_jp_1" ->
                        JD.succeed CloudWatchLogsEncoding_iso2022_jp_1

                    "iso2022_jp_2" ->
                        JD.succeed CloudWatchLogsEncoding_iso2022_jp_2

                    "iso2022_jp_2004" ->
                        JD.succeed CloudWatchLogsEncoding_iso2022_jp_2004

                    "iso2022_jp_3" ->
                        JD.succeed CloudWatchLogsEncoding_iso2022_jp_3

                    "iso2022_jp_ext" ->
                        JD.succeed CloudWatchLogsEncoding_iso2022_jp_ext

                    "iso2022_kr" ->
                        JD.succeed CloudWatchLogsEncoding_iso2022_kr

                    "latin_1" ->
                        JD.succeed CloudWatchLogsEncoding_latin_1

                    "iso8859_2" ->
                        JD.succeed CloudWatchLogsEncoding_iso8859_2

                    "iso8859_3" ->
                        JD.succeed CloudWatchLogsEncoding_iso8859_3

                    "iso8859_4" ->
                        JD.succeed CloudWatchLogsEncoding_iso8859_4

                    "iso8859_5" ->
                        JD.succeed CloudWatchLogsEncoding_iso8859_5

                    "iso8859_6" ->
                        JD.succeed CloudWatchLogsEncoding_iso8859_6

                    "iso8859_7" ->
                        JD.succeed CloudWatchLogsEncoding_iso8859_7

                    "iso8859_8" ->
                        JD.succeed CloudWatchLogsEncoding_iso8859_8

                    "iso8859_9" ->
                        JD.succeed CloudWatchLogsEncoding_iso8859_9

                    "iso8859_10" ->
                        JD.succeed CloudWatchLogsEncoding_iso8859_10

                    "iso8859_13" ->
                        JD.succeed CloudWatchLogsEncoding_iso8859_13

                    "iso8859_14" ->
                        JD.succeed CloudWatchLogsEncoding_iso8859_14

                    "iso8859_15" ->
                        JD.succeed CloudWatchLogsEncoding_iso8859_15

                    "iso8859_16" ->
                        JD.succeed CloudWatchLogsEncoding_iso8859_16

                    "johab" ->
                        JD.succeed CloudWatchLogsEncoding_johab

                    "koi8_r" ->
                        JD.succeed CloudWatchLogsEncoding_koi8_r

                    "koi8_u" ->
                        JD.succeed CloudWatchLogsEncoding_koi8_u

                    "mac_cyrillic" ->
                        JD.succeed CloudWatchLogsEncoding_mac_cyrillic

                    "mac_greek" ->
                        JD.succeed CloudWatchLogsEncoding_mac_greek

                    "mac_iceland" ->
                        JD.succeed CloudWatchLogsEncoding_mac_iceland

                    "mac_latin2" ->
                        JD.succeed CloudWatchLogsEncoding_mac_latin2

                    "mac_roman" ->
                        JD.succeed CloudWatchLogsEncoding_mac_roman

                    "mac_turkish" ->
                        JD.succeed CloudWatchLogsEncoding_mac_turkish

                    "ptcp154" ->
                        JD.succeed CloudWatchLogsEncoding_ptcp154

                    "shift_jis" ->
                        JD.succeed CloudWatchLogsEncoding_shift_jis

                    "shift_jis_2004" ->
                        JD.succeed CloudWatchLogsEncoding_shift_jis_2004

                    "shift_jisx0213" ->
                        JD.succeed CloudWatchLogsEncoding_shift_jisx0213

                    "utf_32" ->
                        JD.succeed CloudWatchLogsEncoding_utf_32

                    "utf_32_be" ->
                        JD.succeed CloudWatchLogsEncoding_utf_32_be

                    "utf_32_le" ->
                        JD.succeed CloudWatchLogsEncoding_utf_32_le

                    "utf_16" ->
                        JD.succeed CloudWatchLogsEncoding_utf_16

                    "utf_16_be" ->
                        JD.succeed CloudWatchLogsEncoding_utf_16_be

                    "utf_16_le" ->
                        JD.succeed CloudWatchLogsEncoding_utf_16_le

                    "utf_7" ->
                        JD.succeed CloudWatchLogsEncoding_utf_7

                    "utf_8" ->
                        JD.succeed CloudWatchLogsEncoding_utf_8

                    "utf_8_sig" ->
                        JD.succeed CloudWatchLogsEncoding_utf_8_sig


                    _ ->
                        JD.fail "bad thing"
            )




cloudWatchLogsEncodingToString : CloudWatchLogsEncoding -> String
cloudWatchLogsEncodingToString val =
    case val of
        CloudWatchLogsEncoding_ascii ->
            "ascii"

        CloudWatchLogsEncoding_big5 ->
            "big5"

        CloudWatchLogsEncoding_big5hkscs ->
            "big5hkscs"

        CloudWatchLogsEncoding_cp037 ->
            "cp037"

        CloudWatchLogsEncoding_cp424 ->
            "cp424"

        CloudWatchLogsEncoding_cp437 ->
            "cp437"

        CloudWatchLogsEncoding_cp500 ->
            "cp500"

        CloudWatchLogsEncoding_cp720 ->
            "cp720"

        CloudWatchLogsEncoding_cp737 ->
            "cp737"

        CloudWatchLogsEncoding_cp775 ->
            "cp775"

        CloudWatchLogsEncoding_cp850 ->
            "cp850"

        CloudWatchLogsEncoding_cp852 ->
            "cp852"

        CloudWatchLogsEncoding_cp855 ->
            "cp855"

        CloudWatchLogsEncoding_cp856 ->
            "cp856"

        CloudWatchLogsEncoding_cp857 ->
            "cp857"

        CloudWatchLogsEncoding_cp858 ->
            "cp858"

        CloudWatchLogsEncoding_cp860 ->
            "cp860"

        CloudWatchLogsEncoding_cp861 ->
            "cp861"

        CloudWatchLogsEncoding_cp862 ->
            "cp862"

        CloudWatchLogsEncoding_cp863 ->
            "cp863"

        CloudWatchLogsEncoding_cp864 ->
            "cp864"

        CloudWatchLogsEncoding_cp865 ->
            "cp865"

        CloudWatchLogsEncoding_cp866 ->
            "cp866"

        CloudWatchLogsEncoding_cp869 ->
            "cp869"

        CloudWatchLogsEncoding_cp874 ->
            "cp874"

        CloudWatchLogsEncoding_cp875 ->
            "cp875"

        CloudWatchLogsEncoding_cp932 ->
            "cp932"

        CloudWatchLogsEncoding_cp949 ->
            "cp949"

        CloudWatchLogsEncoding_cp950 ->
            "cp950"

        CloudWatchLogsEncoding_cp1006 ->
            "cp1006"

        CloudWatchLogsEncoding_cp1026 ->
            "cp1026"

        CloudWatchLogsEncoding_cp1140 ->
            "cp1140"

        CloudWatchLogsEncoding_cp1250 ->
            "cp1250"

        CloudWatchLogsEncoding_cp1251 ->
            "cp1251"

        CloudWatchLogsEncoding_cp1252 ->
            "cp1252"

        CloudWatchLogsEncoding_cp1253 ->
            "cp1253"

        CloudWatchLogsEncoding_cp1254 ->
            "cp1254"

        CloudWatchLogsEncoding_cp1255 ->
            "cp1255"

        CloudWatchLogsEncoding_cp1256 ->
            "cp1256"

        CloudWatchLogsEncoding_cp1257 ->
            "cp1257"

        CloudWatchLogsEncoding_cp1258 ->
            "cp1258"

        CloudWatchLogsEncoding_euc_jp ->
            "euc_jp"

        CloudWatchLogsEncoding_euc_jis_2004 ->
            "euc_jis_2004"

        CloudWatchLogsEncoding_euc_jisx0213 ->
            "euc_jisx0213"

        CloudWatchLogsEncoding_euc_kr ->
            "euc_kr"

        CloudWatchLogsEncoding_gb2312 ->
            "gb2312"

        CloudWatchLogsEncoding_gbk ->
            "gbk"

        CloudWatchLogsEncoding_gb18030 ->
            "gb18030"

        CloudWatchLogsEncoding_hz ->
            "hz"

        CloudWatchLogsEncoding_iso2022_jp ->
            "iso2022_jp"

        CloudWatchLogsEncoding_iso2022_jp_1 ->
            "iso2022_jp_1"

        CloudWatchLogsEncoding_iso2022_jp_2 ->
            "iso2022_jp_2"

        CloudWatchLogsEncoding_iso2022_jp_2004 ->
            "iso2022_jp_2004"

        CloudWatchLogsEncoding_iso2022_jp_3 ->
            "iso2022_jp_3"

        CloudWatchLogsEncoding_iso2022_jp_ext ->
            "iso2022_jp_ext"

        CloudWatchLogsEncoding_iso2022_kr ->
            "iso2022_kr"

        CloudWatchLogsEncoding_latin_1 ->
            "latin_1"

        CloudWatchLogsEncoding_iso8859_2 ->
            "iso8859_2"

        CloudWatchLogsEncoding_iso8859_3 ->
            "iso8859_3"

        CloudWatchLogsEncoding_iso8859_4 ->
            "iso8859_4"

        CloudWatchLogsEncoding_iso8859_5 ->
            "iso8859_5"

        CloudWatchLogsEncoding_iso8859_6 ->
            "iso8859_6"

        CloudWatchLogsEncoding_iso8859_7 ->
            "iso8859_7"

        CloudWatchLogsEncoding_iso8859_8 ->
            "iso8859_8"

        CloudWatchLogsEncoding_iso8859_9 ->
            "iso8859_9"

        CloudWatchLogsEncoding_iso8859_10 ->
            "iso8859_10"

        CloudWatchLogsEncoding_iso8859_13 ->
            "iso8859_13"

        CloudWatchLogsEncoding_iso8859_14 ->
            "iso8859_14"

        CloudWatchLogsEncoding_iso8859_15 ->
            "iso8859_15"

        CloudWatchLogsEncoding_iso8859_16 ->
            "iso8859_16"

        CloudWatchLogsEncoding_johab ->
            "johab"

        CloudWatchLogsEncoding_koi8_r ->
            "koi8_r"

        CloudWatchLogsEncoding_koi8_u ->
            "koi8_u"

        CloudWatchLogsEncoding_mac_cyrillic ->
            "mac_cyrillic"

        CloudWatchLogsEncoding_mac_greek ->
            "mac_greek"

        CloudWatchLogsEncoding_mac_iceland ->
            "mac_iceland"

        CloudWatchLogsEncoding_mac_latin2 ->
            "mac_latin2"

        CloudWatchLogsEncoding_mac_roman ->
            "mac_roman"

        CloudWatchLogsEncoding_mac_turkish ->
            "mac_turkish"

        CloudWatchLogsEncoding_ptcp154 ->
            "ptcp154"

        CloudWatchLogsEncoding_shift_jis ->
            "shift_jis"

        CloudWatchLogsEncoding_shift_jis_2004 ->
            "shift_jis_2004"

        CloudWatchLogsEncoding_shift_jisx0213 ->
            "shift_jisx0213"

        CloudWatchLogsEncoding_utf_32 ->
            "utf_32"

        CloudWatchLogsEncoding_utf_32_be ->
            "utf_32_be"

        CloudWatchLogsEncoding_utf_32_le ->
            "utf_32_le"

        CloudWatchLogsEncoding_utf_16 ->
            "utf_16"

        CloudWatchLogsEncoding_utf_16_be ->
            "utf_16_be"

        CloudWatchLogsEncoding_utf_16_le ->
            "utf_16_le"

        CloudWatchLogsEncoding_utf_7 ->
            "utf_7"

        CloudWatchLogsEncoding_utf_8 ->
            "utf_8"

        CloudWatchLogsEncoding_utf_8_sig ->
            "utf_8_sig"




{-| One of

* `CloudWatchLogsInitialPosition_start_of_file`
* `CloudWatchLogsInitialPosition_end_of_file`

-}
type CloudWatchLogsInitialPosition
    = CloudWatchLogsInitialPosition_start_of_file
    | CloudWatchLogsInitialPosition_end_of_file



cloudWatchLogsInitialPositionDecoder : JD.Decoder CloudWatchLogsInitialPosition
cloudWatchLogsInitialPositionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "start_of_file" ->
                        JD.succeed CloudWatchLogsInitialPosition_start_of_file

                    "end_of_file" ->
                        JD.succeed CloudWatchLogsInitialPosition_end_of_file


                    _ ->
                        JD.fail "bad thing"
            )




cloudWatchLogsInitialPositionToString : CloudWatchLogsInitialPosition -> String
cloudWatchLogsInitialPositionToString val =
    case val of
        CloudWatchLogsInitialPosition_start_of_file ->
            "start_of_file"

        CloudWatchLogsInitialPosition_end_of_file ->
            "end_of_file"




{-| <p>Describes the Amazon CloudWatch logs configuration for a layer. For detailed information about members of this data type, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html">CloudWatch Logs Agent Reference</a>.</p>
-}
type alias CloudWatchLogsLogStream =
    { logGroupName : Maybe String
    , datetimeFormat : Maybe String
    , timeZone : Maybe CloudWatchLogsTimeZone
    , file : Maybe String
    , fileFingerprintLines : Maybe String
    , multiLineStartPattern : Maybe String
    , initialPosition : Maybe CloudWatchLogsInitialPosition
    , encoding : Maybe CloudWatchLogsEncoding
    , bufferDuration : Maybe Int
    , batchCount : Maybe Int
    , batchSize : Maybe Int
    }



cloudWatchLogsLogStreamDecoder : JD.Decoder CloudWatchLogsLogStream
cloudWatchLogsLogStreamDecoder =
    JD.succeed CloudWatchLogsLogStream
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogGroupName", "logGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DatetimeFormat", "datetimeFormat"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimeZone", "timeZone"]
            cloudWatchLogsTimeZoneDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["File", "file"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FileFingerprintLines", "fileFingerprintLines"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MultiLineStartPattern", "multiLineStartPattern"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InitialPosition", "initialPosition"]
            cloudWatchLogsInitialPositionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Encoding", "encoding"]
            cloudWatchLogsEncodingDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BufferDuration", "bufferDuration"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BatchCount", "batchCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BatchSize", "batchSize"]
            JD.int
        )
        




cloudWatchLogsLogStreamToString : CloudWatchLogsLogStream -> String -- List (String, String)
cloudWatchLogsLogStreamToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logGroupName" "" -- val.logGroupName
        
    --     |> Dict.insert
    --         "datetimeFormat" "" -- val.datetimeFormat
        
    --     |> Dict.insert
    --         "timeZone" "" -- val.timeZone
        
    --     |> Dict.insert
    --         "file" "" -- val.file
        
    --     |> Dict.insert
    --         "fileFingerprintLines" "" -- val.fileFingerprintLines
        
    --     |> Dict.insert
    --         "multiLineStartPattern" "" -- val.multiLineStartPattern
        
    --     |> Dict.insert
    --         "initialPosition" "" -- val.initialPosition
        
    --     |> Dict.insert
    --         "encoding" "" -- val.encoding
        
    --     |> Dict.insert
    --         "bufferDuration" "" -- val.bufferDuration
        
    --     |> Dict.insert
    --         "batchCount" "" -- val.batchCount
        
    --     |> Dict.insert
    --         "batchSize" "" -- val.batchSize
        
    --     |> Dict.toList
    ""



{-| One of

* `CloudWatchLogsTimeZone_LOCAL`
* `CloudWatchLogsTimeZone_UTC`

-}
type CloudWatchLogsTimeZone
    = CloudWatchLogsTimeZone_LOCAL
    | CloudWatchLogsTimeZone_UTC



cloudWatchLogsTimeZoneDecoder : JD.Decoder CloudWatchLogsTimeZone
cloudWatchLogsTimeZoneDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "LOCAL" ->
                        JD.succeed CloudWatchLogsTimeZone_LOCAL

                    "UTC" ->
                        JD.succeed CloudWatchLogsTimeZone_UTC


                    _ ->
                        JD.fail "bad thing"
            )




cloudWatchLogsTimeZoneToString : CloudWatchLogsTimeZone -> String
cloudWatchLogsTimeZoneToString val =
    case val of
        CloudWatchLogsTimeZone_LOCAL ->
            "LOCAL"

        CloudWatchLogsTimeZone_UTC ->
            "UTC"




{-| <p>Describes a command.</p>
-}
type alias Command =
    { commandId : Maybe String
    , instanceId : Maybe String
    , deploymentId : Maybe String
    , createdAt : Maybe String
    , acknowledgedAt : Maybe String
    , completedAt : Maybe String
    , status : Maybe String
    , exitCode : Maybe Int
    , logUrl : Maybe String
    , type_ : Maybe String
    }



commandDecoder : JD.Decoder Command
commandDecoder =
    JD.succeed Command
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CommandId", "commandId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeploymentId", "deploymentId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AcknowledgedAt", "acknowledgedAt"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CompletedAt", "completedAt"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExitCode", "exitCode"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogUrl", "logUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            JD.string
        )
        




commandToString : Command -> String -- List (String, String)
commandToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commandId" "" -- val.commandId
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.insert
    --         "deploymentId" "" -- val.deploymentId
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "acknowledgedAt" "" -- val.acknowledgedAt
        
    --     |> Dict.insert
    --         "completedAt" "" -- val.completedAt
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "exitCode" "" -- val.exitCode
        
    --     |> Dict.insert
    --         "logUrl" "" -- val.logUrl
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createA
-}
type alias CreateAppResult =
    { appId : Maybe String
    }



createAppResultDecoder : JD.Decoder CreateAppResult
createAppResultDecoder =
    JD.succeed CreateAppResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AppId", "appId"]
            JD.string
        )
        




createAppResultToString : CreateAppResult -> String -- List (String, String)
createAppResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "appId" "" -- val.appId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDeployme
-}
type alias CreateDeploymentResult =
    { deploymentId : Maybe String
    }



createDeploymentResultDecoder : JD.Decoder CreateDeploymentResult
createDeploymentResultDecoder =
    JD.succeed CreateDeploymentResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeploymentId", "deploymentId"]
            JD.string
        )
        




createDeploymentResultToString : CreateDeploymentResult -> String -- List (String, String)
createDeploymentResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deploymentId" "" -- val.deploymentId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createInstan
-}
type alias CreateInstanceResult =
    { instanceId : Maybe String
    }



createInstanceResultDecoder : JD.Decoder CreateInstanceResult
createInstanceResultDecoder =
    JD.succeed CreateInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        




createInstanceResultToString : CreateInstanceResult -> String -- List (String, String)
createInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createLay
-}
type alias CreateLayerResult =
    { layerId : Maybe String
    }



createLayerResultDecoder : JD.Decoder CreateLayerResult
createLayerResultDecoder =
    JD.succeed CreateLayerResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LayerId", "layerId"]
            JD.string
        )
        




createLayerResultToString : CreateLayerResult -> String -- List (String, String)
createLayerResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "layerId" "" -- val.layerId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createSta
-}
type alias CreateStackResult =
    { stackId : Maybe String
    }



createStackResultDecoder : JD.Decoder CreateStackResult
createStackResultDecoder =
    JD.succeed CreateStackResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        




createStackResultToString : CreateStackResult -> String -- List (String, String)
createStackResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createUserProfi
-}
type alias CreateUserProfileResult =
    { iamUserArn : Maybe String
    }



createUserProfileResultDecoder : JD.Decoder CreateUserProfileResult
createUserProfileResultDecoder =
    JD.succeed CreateUserProfileResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IamUserArn", "iamUserArn"]
            JD.string
        )
        




createUserProfileResultToString : CreateUserProfileResult -> String -- List (String, String)
createUserProfileResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "iamUserArn" "" -- val.iamUserArn
        
    --     |> Dict.toList
    ""



{-| <p>Describes an app's data source.</p>
-}
type alias DataSource =
    { type_ : Maybe String
    , arn : Maybe String
    , databaseName : Maybe String
    }



dataSourceDecoder : JD.Decoder DataSource
dataSourceDecoder =
    JD.succeed DataSource
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DatabaseName", "databaseName"]
            JD.string
        )
        




dataSourceToString : DataSource -> String -- List (String, String)
dataSourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "databaseName" "" -- val.databaseName
        
    --     |> Dict.toList
    ""



{-| <p>Describes a deployment of a stack or app.</p>
-}
type alias Deployment =
    { deploymentId : Maybe String
    , stackId : Maybe String
    , appId : Maybe String
    , createdAt : Maybe String
    , completedAt : Maybe String
    , duration : Maybe Int
    , iamUserArn : Maybe String
    , comment : Maybe String
    , command : Maybe DeploymentCommand
    , status : Maybe String
    , customJson : Maybe String
    , instanceIds : Maybe (List String)
    }



deploymentDecoder : JD.Decoder Deployment
deploymentDecoder =
    JD.succeed Deployment
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeploymentId", "deploymentId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AppId", "appId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CompletedAt", "completedAt"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Duration", "duration"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IamUserArn", "iamUserArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Comment", "comment"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Command", "command"]
            deploymentCommandDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomJson", "customJson"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceIds", "instanceIds"]
            (JD.list JD.string)
        )
        




deploymentToString : Deployment -> String -- List (String, String)
deploymentToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deploymentId" "" -- val.deploymentId
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "appId" "" -- val.appId
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "completedAt" "" -- val.completedAt
        
    --     |> Dict.insert
    --         "duration" "" -- val.duration
        
    --     |> Dict.insert
    --         "iamUserArn" "" -- val.iamUserArn
        
    --     |> Dict.insert
    --         "comment" "" -- val.comment
        
    --     |> Dict.insert
    --         "command" "" -- val.command
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "customJson" "" -- val.customJson
        
    --     |> Dict.insert
    --         "instanceIds" "" -- val.instanceIds
        
    --     |> Dict.toList
    ""



{-| <p>Used to specify a stack or deployment command.</p>
-}
type alias DeploymentCommand =
    { name : DeploymentCommandName
    , args : Maybe (Dict String (List String))
    }



deploymentCommandDecoder : JD.Decoder DeploymentCommand
deploymentCommandDecoder =
    JD.succeed DeploymentCommand
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            deploymentCommandNameDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Args", "args"]
            (AWS.Core.Decode.dict (JD.list JD.string))
        )
        




deploymentCommandToString : DeploymentCommand -> String -- List (String, String)
deploymentCommandToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "args" "" -- val.args
        
    --     |> Dict.toList
    ""



{-| One of

* `DeploymentCommandName_install_dependencies`
* `DeploymentCommandName_update_dependencies`
* `DeploymentCommandName_update_custom_cookbooks`
* `DeploymentCommandName_execute_recipes`
* `DeploymentCommandName_configure`
* `DeploymentCommandName_setup`
* `DeploymentCommandName_deploy`
* `DeploymentCommandName_rollback`
* `DeploymentCommandName_start`
* `DeploymentCommandName_stop`
* `DeploymentCommandName_restart`
* `DeploymentCommandName_undeploy`

-}
type DeploymentCommandName
    = DeploymentCommandName_install_dependencies
    | DeploymentCommandName_update_dependencies
    | DeploymentCommandName_update_custom_cookbooks
    | DeploymentCommandName_execute_recipes
    | DeploymentCommandName_configure
    | DeploymentCommandName_setup
    | DeploymentCommandName_deploy
    | DeploymentCommandName_rollback
    | DeploymentCommandName_start
    | DeploymentCommandName_stop
    | DeploymentCommandName_restart
    | DeploymentCommandName_undeploy



deploymentCommandNameDecoder : JD.Decoder DeploymentCommandName
deploymentCommandNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "install_dependencies" ->
                        JD.succeed DeploymentCommandName_install_dependencies

                    "update_dependencies" ->
                        JD.succeed DeploymentCommandName_update_dependencies

                    "update_custom_cookbooks" ->
                        JD.succeed DeploymentCommandName_update_custom_cookbooks

                    "execute_recipes" ->
                        JD.succeed DeploymentCommandName_execute_recipes

                    "configure" ->
                        JD.succeed DeploymentCommandName_configure

                    "setup" ->
                        JD.succeed DeploymentCommandName_setup

                    "deploy" ->
                        JD.succeed DeploymentCommandName_deploy

                    "rollback" ->
                        JD.succeed DeploymentCommandName_rollback

                    "start" ->
                        JD.succeed DeploymentCommandName_start

                    "stop" ->
                        JD.succeed DeploymentCommandName_stop

                    "restart" ->
                        JD.succeed DeploymentCommandName_restart

                    "undeploy" ->
                        JD.succeed DeploymentCommandName_undeploy


                    _ ->
                        JD.fail "bad thing"
            )




deploymentCommandNameToString : DeploymentCommandName -> String
deploymentCommandNameToString val =
    case val of
        DeploymentCommandName_install_dependencies ->
            "install_dependencies"

        DeploymentCommandName_update_dependencies ->
            "update_dependencies"

        DeploymentCommandName_update_custom_cookbooks ->
            "update_custom_cookbooks"

        DeploymentCommandName_execute_recipes ->
            "execute_recipes"

        DeploymentCommandName_configure ->
            "configure"

        DeploymentCommandName_setup ->
            "setup"

        DeploymentCommandName_deploy ->
            "deploy"

        DeploymentCommandName_rollback ->
            "rollback"

        DeploymentCommandName_start ->
            "start"

        DeploymentCommandName_stop ->
            "stop"

        DeploymentCommandName_restart ->
            "restart"

        DeploymentCommandName_undeploy ->
            "undeploy"




{-| Type of HTTP response from describeAgentVersio
-}
type alias DescribeAgentVersionsResult =
    { agentVersions : Maybe (List AgentVersion)
    }



describeAgentVersionsResultDecoder : JD.Decoder DescribeAgentVersionsResult
describeAgentVersionsResultDecoder =
    JD.succeed DescribeAgentVersionsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AgentVersions", "agentVersions"]
            (JD.list agentVersionDecoder)
        )
        




describeAgentVersionsResultToString : DescribeAgentVersionsResult -> String -- List (String, String)
describeAgentVersionsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "agentVersions" "" -- val.agentVersions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAp
-}
type alias DescribeAppsResult =
    { apps : Maybe (List App)
    }



describeAppsResultDecoder : JD.Decoder DescribeAppsResult
describeAppsResultDecoder =
    JD.succeed DescribeAppsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Apps", "apps"]
            (JD.list appDecoder)
        )
        




describeAppsResultToString : DescribeAppsResult -> String -- List (String, String)
describeAppsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "apps" "" -- val.apps
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeComman
-}
type alias DescribeCommandsResult =
    { commands : Maybe (List Command)
    }



describeCommandsResultDecoder : JD.Decoder DescribeCommandsResult
describeCommandsResultDecoder =
    JD.succeed DescribeCommandsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Commands", "commands"]
            (JD.list commandDecoder)
        )
        




describeCommandsResultToString : DescribeCommandsResult -> String -- List (String, String)
describeCommandsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commands" "" -- val.commands
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeDeploymen
-}
type alias DescribeDeploymentsResult =
    { deployments : Maybe (List Deployment)
    }



describeDeploymentsResultDecoder : JD.Decoder DescribeDeploymentsResult
describeDeploymentsResultDecoder =
    JD.succeed DescribeDeploymentsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Deployments", "deployments"]
            (JD.list deploymentDecoder)
        )
        




describeDeploymentsResultToString : DescribeDeploymentsResult -> String -- List (String, String)
describeDeploymentsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deployments" "" -- val.deployments
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEcsCluste
-}
type alias DescribeEcsClustersResult =
    { ecsClusters : Maybe (List EcsCluster)
    , nextToken : Maybe String
    }



describeEcsClustersResultDecoder : JD.Decoder DescribeEcsClustersResult
describeEcsClustersResultDecoder =
    JD.succeed DescribeEcsClustersResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EcsClusters", "ecsClusters"]
            (JD.list ecsClusterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeEcsClustersResultToString : DescribeEcsClustersResult -> String -- List (String, String)
describeEcsClustersResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ecsClusters" "" -- val.ecsClusters
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeElasticI
-}
type alias DescribeElasticIpsResult =
    { elasticIps : Maybe (List ElasticIp)
    }



describeElasticIpsResultDecoder : JD.Decoder DescribeElasticIpsResult
describeElasticIpsResultDecoder =
    JD.succeed DescribeElasticIpsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ElasticIps", "elasticIps"]
            (JD.list elasticIpDecoder)
        )
        




describeElasticIpsResultToString : DescribeElasticIpsResult -> String -- List (String, String)
describeElasticIpsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "elasticIps" "" -- val.elasticIps
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeElasticLoadBalance
-}
type alias DescribeElasticLoadBalancersResult =
    { elasticLoadBalancers : Maybe (List ElasticLoadBalancer)
    }



describeElasticLoadBalancersResultDecoder : JD.Decoder DescribeElasticLoadBalancersResult
describeElasticLoadBalancersResultDecoder =
    JD.succeed DescribeElasticLoadBalancersResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ElasticLoadBalancers", "elasticLoadBalancers"]
            (JD.list elasticLoadBalancerDecoder)
        )
        




describeElasticLoadBalancersResultToString : DescribeElasticLoadBalancersResult -> String -- List (String, String)
describeElasticLoadBalancersResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "elasticLoadBalancers" "" -- val.elasticLoadBalancers
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeInstanc
-}
type alias DescribeInstancesResult =
    { instances : Maybe (List Instance)
    }



describeInstancesResultDecoder : JD.Decoder DescribeInstancesResult
describeInstancesResultDecoder =
    JD.succeed DescribeInstancesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Instances", "instances"]
            (JD.list instanceDecoder)
        )
        




describeInstancesResultToString : DescribeInstancesResult -> String -- List (String, String)
describeInstancesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instances" "" -- val.instances
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeLaye
-}
type alias DescribeLayersResult =
    { layers : Maybe (List Layer)
    }



describeLayersResultDecoder : JD.Decoder DescribeLayersResult
describeLayersResultDecoder =
    JD.succeed DescribeLayersResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Layers", "layers"]
            (JD.list layerDecoder)
        )
        




describeLayersResultToString : DescribeLayersResult -> String -- List (String, String)
describeLayersResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "layers" "" -- val.layers
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeLoadBasedAutoScali
-}
type alias DescribeLoadBasedAutoScalingResult =
    { loadBasedAutoScalingConfigurations : Maybe (List LoadBasedAutoScalingConfiguration)
    }



describeLoadBasedAutoScalingResultDecoder : JD.Decoder DescribeLoadBasedAutoScalingResult
describeLoadBasedAutoScalingResultDecoder =
    JD.succeed DescribeLoadBasedAutoScalingResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBasedAutoScalingConfigurations", "loadBasedAutoScalingConfigurations"]
            (JD.list loadBasedAutoScalingConfigurationDecoder)
        )
        




describeLoadBasedAutoScalingResultToString : DescribeLoadBasedAutoScalingResult -> String -- List (String, String)
describeLoadBasedAutoScalingResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loadBasedAutoScalingConfigurations" "" -- val.loadBasedAutoScalingConfigurations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeMyUserProfi
-}
type alias DescribeMyUserProfileResult =
    { userProfile : Maybe SelfUserProfile
    }



describeMyUserProfileResultDecoder : JD.Decoder DescribeMyUserProfileResult
describeMyUserProfileResultDecoder =
    JD.succeed DescribeMyUserProfileResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserProfile", "userProfile"]
            selfUserProfileDecoder
        )
        




describeMyUserProfileResultToString : DescribeMyUserProfileResult -> String -- List (String, String)
describeMyUserProfileResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userProfile" "" -- val.userProfile
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeOperatingSystems
-}
type alias DescribeOperatingSystemsResponse =
    { operatingSystems : Maybe (List OperatingSystem)
    }



describeOperatingSystemsResponseDecoder : JD.Decoder DescribeOperatingSystemsResponse
describeOperatingSystemsResponseDecoder =
    JD.succeed DescribeOperatingSystemsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperatingSystems", "operatingSystems"]
            (JD.list operatingSystemDecoder)
        )
        




describeOperatingSystemsResponseToString : DescribeOperatingSystemsResponse -> String -- List (String, String)
describeOperatingSystemsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operatingSystems" "" -- val.operatingSystems
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describePermissio
-}
type alias DescribePermissionsResult =
    { permissions : Maybe (List Permission)
    }



describePermissionsResultDecoder : JD.Decoder DescribePermissionsResult
describePermissionsResultDecoder =
    JD.succeed DescribePermissionsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Permissions", "permissions"]
            (JD.list permissionDecoder)
        )
        




describePermissionsResultToString : DescribePermissionsResult -> String -- List (String, String)
describePermissionsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "permissions" "" -- val.permissions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeRaidArra
-}
type alias DescribeRaidArraysResult =
    { raidArrays : Maybe (List RaidArray)
    }



describeRaidArraysResultDecoder : JD.Decoder DescribeRaidArraysResult
describeRaidArraysResultDecoder =
    JD.succeed DescribeRaidArraysResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RaidArrays", "raidArrays"]
            (JD.list raidArrayDecoder)
        )
        




describeRaidArraysResultToString : DescribeRaidArraysResult -> String -- List (String, String)
describeRaidArraysResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "raidArrays" "" -- val.raidArrays
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeRdsDbInstanc
-}
type alias DescribeRdsDbInstancesResult =
    { rdsDbInstances : Maybe (List RdsDbInstance)
    }



describeRdsDbInstancesResultDecoder : JD.Decoder DescribeRdsDbInstancesResult
describeRdsDbInstancesResultDecoder =
    JD.succeed DescribeRdsDbInstancesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RdsDbInstances", "rdsDbInstances"]
            (JD.list rdsDbInstanceDecoder)
        )
        




describeRdsDbInstancesResultToString : DescribeRdsDbInstancesResult -> String -- List (String, String)
describeRdsDbInstancesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "rdsDbInstances" "" -- val.rdsDbInstances
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeServiceErro
-}
type alias DescribeServiceErrorsResult =
    { serviceErrors : Maybe (List ServiceError)
    }



describeServiceErrorsResultDecoder : JD.Decoder DescribeServiceErrorsResult
describeServiceErrorsResultDecoder =
    JD.succeed DescribeServiceErrorsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServiceErrors", "serviceErrors"]
            (JD.list serviceErrorDecoder)
        )
        




describeServiceErrorsResultToString : DescribeServiceErrorsResult -> String -- List (String, String)
describeServiceErrorsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serviceErrors" "" -- val.serviceErrors
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStackProvisioningParamete
-}
type alias DescribeStackProvisioningParametersResult =
    { agentInstallerUrl : Maybe String
    , parameters : Maybe (Dict String String)
    }



describeStackProvisioningParametersResultDecoder : JD.Decoder DescribeStackProvisioningParametersResult
describeStackProvisioningParametersResultDecoder =
    JD.succeed DescribeStackProvisioningParametersResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AgentInstallerUrl", "agentInstallerUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        




describeStackProvisioningParametersResultToString : DescribeStackProvisioningParametersResult -> String -- List (String, String)
describeStackProvisioningParametersResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "agentInstallerUrl" "" -- val.agentInstallerUrl
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStackSumma
-}
type alias DescribeStackSummaryResult =
    { stackSummary : Maybe StackSummary
    }



describeStackSummaryResultDecoder : JD.Decoder DescribeStackSummaryResult
describeStackSummaryResultDecoder =
    JD.succeed DescribeStackSummaryResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSummary", "stackSummary"]
            stackSummaryDecoder
        )
        




describeStackSummaryResultToString : DescribeStackSummaryResult -> String -- List (String, String)
describeStackSummaryResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackSummary" "" -- val.stackSummary
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStac
-}
type alias DescribeStacksResult =
    { stacks : Maybe (List Stack)
    }



describeStacksResultDecoder : JD.Decoder DescribeStacksResult
describeStacksResultDecoder =
    JD.succeed DescribeStacksResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Stacks", "stacks"]
            (JD.list stackDecoder)
        )
        




describeStacksResultToString : DescribeStacksResult -> String -- List (String, String)
describeStacksResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stacks" "" -- val.stacks
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeTimeBasedAutoScali
-}
type alias DescribeTimeBasedAutoScalingResult =
    { timeBasedAutoScalingConfigurations : Maybe (List TimeBasedAutoScalingConfiguration)
    }



describeTimeBasedAutoScalingResultDecoder : JD.Decoder DescribeTimeBasedAutoScalingResult
describeTimeBasedAutoScalingResultDecoder =
    JD.succeed DescribeTimeBasedAutoScalingResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimeBasedAutoScalingConfigurations", "timeBasedAutoScalingConfigurations"]
            (JD.list timeBasedAutoScalingConfigurationDecoder)
        )
        




describeTimeBasedAutoScalingResultToString : DescribeTimeBasedAutoScalingResult -> String -- List (String, String)
describeTimeBasedAutoScalingResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "timeBasedAutoScalingConfigurations" "" -- val.timeBasedAutoScalingConfigurations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeUserProfil
-}
type alias DescribeUserProfilesResult =
    { userProfiles : Maybe (List UserProfile)
    }



describeUserProfilesResultDecoder : JD.Decoder DescribeUserProfilesResult
describeUserProfilesResultDecoder =
    JD.succeed DescribeUserProfilesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserProfiles", "userProfiles"]
            (JD.list userProfileDecoder)
        )
        




describeUserProfilesResultToString : DescribeUserProfilesResult -> String -- List (String, String)
describeUserProfilesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userProfiles" "" -- val.userProfiles
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeVolum
-}
type alias DescribeVolumesResult =
    { volumes : Maybe (List Volume)
    }



describeVolumesResultDecoder : JD.Decoder DescribeVolumesResult
describeVolumesResultDecoder =
    JD.succeed DescribeVolumesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Volumes", "volumes"]
            (JD.list volumeDecoder)
        )
        




describeVolumesResultToString : DescribeVolumesResult -> String -- List (String, String)
describeVolumesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "volumes" "" -- val.volumes
        
    --     |> Dict.toList
    ""



{-| <p>Describes an Amazon EBS volume. This data type maps directly to the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a> data type.</p>
-}
type alias EbsBlockDevice =
    { snapshotId : Maybe String
    , iops : Maybe Int
    , volumeSize : Maybe Int
    , volumeType : Maybe VolumeType
    , deleteOnTermination : Maybe Bool
    }



ebsBlockDeviceDecoder : JD.Decoder EbsBlockDevice
ebsBlockDeviceDecoder =
    JD.succeed EbsBlockDevice
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SnapshotId", "snapshotId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Iops", "iops"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VolumeSize", "volumeSize"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VolumeType", "volumeType"]
            volumeTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeleteOnTermination", "deleteOnTermination"]
            JD.bool
        )
        




ebsBlockDeviceToString : EbsBlockDevice -> String -- List (String, String)
ebsBlockDeviceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "snapshotId" "" -- val.snapshotId
        
    --     |> Dict.insert
    --         "iops" "" -- val.iops
        
    --     |> Dict.insert
    --         "volumeSize" "" -- val.volumeSize
        
    --     |> Dict.insert
    --         "volumeType" "" -- val.volumeType
        
    --     |> Dict.insert
    --         "deleteOnTermination" "" -- val.deleteOnTermination
        
    --     |> Dict.toList
    ""



{-| <p>Describes a registered Amazon ECS cluster.</p>
-}
type alias EcsCluster =
    { ecsClusterArn : Maybe String
    , ecsClusterName : Maybe String
    , stackId : Maybe String
    , registeredAt : Maybe String
    }



ecsClusterDecoder : JD.Decoder EcsCluster
ecsClusterDecoder =
    JD.succeed EcsCluster
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EcsClusterArn", "ecsClusterArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EcsClusterName", "ecsClusterName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RegisteredAt", "registeredAt"]
            JD.string
        )
        




ecsClusterToString : EcsCluster -> String -- List (String, String)
ecsClusterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ecsClusterArn" "" -- val.ecsClusterArn
        
    --     |> Dict.insert
    --         "ecsClusterName" "" -- val.ecsClusterName
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "registeredAt" "" -- val.registeredAt
        
    --     |> Dict.toList
    ""



{-| <p>Describes an Elastic IP address.</p>
-}
type alias ElasticIp =
    { ip : Maybe String
    , name : Maybe String
    , domain : Maybe String
    , region : Maybe String
    , instanceId : Maybe String
    }



elasticIpDecoder : JD.Decoder ElasticIp
elasticIpDecoder =
    JD.succeed ElasticIp
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Ip", "ip"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Domain", "domain"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Region", "region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        




elasticIpToString : ElasticIp -> String -- List (String, String)
elasticIpToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ip" "" -- val.ip
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "domain" "" -- val.domain
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.toList
    ""



{-| <p>Describes an Elastic Load Balancing instance.</p>
-}
type alias ElasticLoadBalancer =
    { elasticLoadBalancerName : Maybe String
    , region : Maybe String
    , dnsName : Maybe String
    , stackId : Maybe String
    , layerId : Maybe String
    , vpcId : Maybe String
    , availabilityZones : Maybe (List String)
    , subnetIds : Maybe (List String)
    , ec2InstanceIds : Maybe (List String)
    }



elasticLoadBalancerDecoder : JD.Decoder ElasticLoadBalancer
elasticLoadBalancerDecoder =
    JD.succeed ElasticLoadBalancer
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ElasticLoadBalancerName", "elasticLoadBalancerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Region", "region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DnsName", "dnsName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LayerId", "layerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcId", "vpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZones", "availabilityZones"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetIds", "subnetIds"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Ec2InstanceIds", "ec2InstanceIds"]
            (JD.list JD.string)
        )
        




elasticLoadBalancerToString : ElasticLoadBalancer -> String -- List (String, String)
elasticLoadBalancerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "elasticLoadBalancerName" "" -- val.elasticLoadBalancerName
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "dnsName" "" -- val.dnsName
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "layerId" "" -- val.layerId
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "availabilityZones" "" -- val.availabilityZones
        
    --     |> Dict.insert
    --         "subnetIds" "" -- val.subnetIds
        
    --     |> Dict.insert
    --         "ec2InstanceIds" "" -- val.ec2InstanceIds
        
    --     |> Dict.toList
    ""



{-| <p>Represents an app's environment variable.</p>
-}
type alias EnvironmentVariable =
    { key : String
    , value : String
    , secure : Maybe Bool
    }



environmentVariableDecoder : JD.Decoder EnvironmentVariable
environmentVariableDecoder =
    JD.succeed EnvironmentVariable
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Value", "value"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Secure", "secure"]
            JD.bool
        )
        




environmentVariableToString : EnvironmentVariable -> String -- List (String, String)
environmentVariableToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "secure" "" -- val.secure
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getHostnameSuggesti
-}
type alias GetHostnameSuggestionResult =
    { layerId : Maybe String
    , hostname : Maybe String
    }



getHostnameSuggestionResultDecoder : JD.Decoder GetHostnameSuggestionResult
getHostnameSuggestionResultDecoder =
    JD.succeed GetHostnameSuggestionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LayerId", "layerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Hostname", "hostname"]
            JD.string
        )
        




getHostnameSuggestionResultToString : GetHostnameSuggestionResult -> String -- List (String, String)
getHostnameSuggestionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "layerId" "" -- val.layerId
        
    --     |> Dict.insert
    --         "hostname" "" -- val.hostname
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from grantAcce
-}
type alias GrantAccessResult =
    { temporaryCredential : Maybe TemporaryCredential
    }



grantAccessResultDecoder : JD.Decoder GrantAccessResult
grantAccessResultDecoder =
    JD.succeed GrantAccessResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TemporaryCredential", "temporaryCredential"]
            temporaryCredentialDecoder
        )
        




grantAccessResultToString : GrantAccessResult -> String -- List (String, String)
grantAccessResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "temporaryCredential" "" -- val.temporaryCredential
        
    --     |> Dict.toList
    ""



{-| <p>Describes an instance.</p>
-}
type alias Instance =
    { agentVersion : Maybe String
    , amiId : Maybe String
    , architecture : Maybe Architecture
    , arn : Maybe String
    , autoScalingType : Maybe AutoScalingType
    , availabilityZone : Maybe String
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , createdAt : Maybe String
    , ebsOptimized : Maybe Bool
    , ec2InstanceId : Maybe String
    , ecsClusterArn : Maybe String
    , ecsContainerInstanceArn : Maybe String
    , elasticIp : Maybe String
    , hostname : Maybe String
    , infrastructureClass : Maybe String
    , installUpdatesOnBoot : Maybe Bool
    , instanceId : Maybe String
    , instanceProfileArn : Maybe String
    , instanceType : Maybe String
    , lastServiceErrorId : Maybe String
    , layerIds : Maybe (List String)
    , os : Maybe String
    , platform : Maybe String
    , privateDns : Maybe String
    , privateIp : Maybe String
    , publicDns : Maybe String
    , publicIp : Maybe String
    , registeredBy : Maybe String
    , reportedAgentVersion : Maybe String
    , reportedOs : Maybe ReportedOs
    , rootDeviceType : Maybe RootDeviceType
    , rootDeviceVolumeId : Maybe String
    , securityGroupIds : Maybe (List String)
    , sshHostDsaKeyFingerprint : Maybe String
    , sshHostRsaKeyFingerprint : Maybe String
    , sshKeyName : Maybe String
    , stackId : Maybe String
    , status : Maybe String
    , subnetId : Maybe String
    , tenancy : Maybe String
    , virtualizationType : Maybe VirtualizationType
    }



instanceDecoder : JD.Decoder Instance
instanceDecoder =
    JD.succeed Instance
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AgentVersion", "agentVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AmiId", "amiId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Architecture", "architecture"]
            architectureDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoScalingType", "autoScalingType"]
            autoScalingTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZone", "availabilityZone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BlockDeviceMappings", "blockDeviceMappings"]
            (JD.list blockDeviceMappingDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EbsOptimized", "ebsOptimized"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Ec2InstanceId", "ec2InstanceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EcsClusterArn", "ecsClusterArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EcsContainerInstanceArn", "ecsContainerInstanceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ElasticIp", "elasticIp"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Hostname", "hostname"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InfrastructureClass", "infrastructureClass"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstallUpdatesOnBoot", "installUpdatesOnBoot"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceProfileArn", "instanceProfileArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceType", "instanceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastServiceErrorId", "lastServiceErrorId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LayerIds", "layerIds"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Os", "os"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Platform", "platform"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PrivateDns", "privateDns"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PrivateIp", "privateIp"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PublicDns", "publicDns"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PublicIp", "publicIp"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RegisteredBy", "registeredBy"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReportedAgentVersion", "reportedAgentVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReportedOs", "reportedOs"]
            reportedOsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RootDeviceType", "rootDeviceType"]
            rootDeviceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RootDeviceVolumeId", "rootDeviceVolumeId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityGroupIds", "securityGroupIds"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SshHostDsaKeyFingerprint", "sshHostDsaKeyFingerprint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SshHostRsaKeyFingerprint", "sshHostRsaKeyFingerprint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SshKeyName", "sshKeyName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetId", "subnetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tenancy", "tenancy"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VirtualizationType", "virtualizationType"]
            virtualizationTypeDecoder
        )
        




instanceToString : Instance -> String -- List (String, String)
instanceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "agentVersion" "" -- val.agentVersion
        
    --     |> Dict.insert
    --         "amiId" "" -- val.amiId
        
    --     |> Dict.insert
    --         "architecture" "" -- val.architecture
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "autoScalingType" "" -- val.autoScalingType
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.insert
    --         "blockDeviceMappings" "" -- val.blockDeviceMappings
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "ebsOptimized" "" -- val.ebsOptimized
        
    --     |> Dict.insert
    --         "ec2InstanceId" "" -- val.ec2InstanceId
        
    --     |> Dict.insert
    --         "ecsClusterArn" "" -- val.ecsClusterArn
        
    --     |> Dict.insert
    --         "ecsContainerInstanceArn" "" -- val.ecsContainerInstanceArn
        
    --     |> Dict.insert
    --         "elasticIp" "" -- val.elasticIp
        
    --     |> Dict.insert
    --         "hostname" "" -- val.hostname
        
    --     |> Dict.insert
    --         "infrastructureClass" "" -- val.infrastructureClass
        
    --     |> Dict.insert
    --         "installUpdatesOnBoot" "" -- val.installUpdatesOnBoot
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.insert
    --         "instanceProfileArn" "" -- val.instanceProfileArn
        
    --     |> Dict.insert
    --         "instanceType" "" -- val.instanceType
        
    --     |> Dict.insert
    --         "lastServiceErrorId" "" -- val.lastServiceErrorId
        
    --     |> Dict.insert
    --         "layerIds" "" -- val.layerIds
        
    --     |> Dict.insert
    --         "os" "" -- val.os
        
    --     |> Dict.insert
    --         "platform" "" -- val.platform
        
    --     |> Dict.insert
    --         "privateDns" "" -- val.privateDns
        
    --     |> Dict.insert
    --         "privateIp" "" -- val.privateIp
        
    --     |> Dict.insert
    --         "publicDns" "" -- val.publicDns
        
    --     |> Dict.insert
    --         "publicIp" "" -- val.publicIp
        
    --     |> Dict.insert
    --         "registeredBy" "" -- val.registeredBy
        
    --     |> Dict.insert
    --         "reportedAgentVersion" "" -- val.reportedAgentVersion
        
    --     |> Dict.insert
    --         "reportedOs" "" -- val.reportedOs
        
    --     |> Dict.insert
    --         "rootDeviceType" "" -- val.rootDeviceType
        
    --     |> Dict.insert
    --         "rootDeviceVolumeId" "" -- val.rootDeviceVolumeId
        
    --     |> Dict.insert
    --         "securityGroupIds" "" -- val.securityGroupIds
        
    --     |> Dict.insert
    --         "sshHostDsaKeyFingerprint" "" -- val.sshHostDsaKeyFingerprint
        
    --     |> Dict.insert
    --         "sshHostRsaKeyFingerprint" "" -- val.sshHostRsaKeyFingerprint
        
    --     |> Dict.insert
    --         "sshKeyName" "" -- val.sshKeyName
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "subnetId" "" -- val.subnetId
        
    --     |> Dict.insert
    --         "tenancy" "" -- val.tenancy
        
    --     |> Dict.insert
    --         "virtualizationType" "" -- val.virtualizationType
        
    --     |> Dict.toList
    ""



{-| <p>Contains a description of an Amazon EC2 instance from the Amazon EC2 metadata service. For more information, see <a href="https://docs.aws.amazon.com/sdkfornet/latest/apidocs/Index.html">Instance Metadata and User Data</a>.</p>
-}
type alias InstanceIdentity =
    { document : Maybe String
    , signature : Maybe String
    }



instanceIdentityDecoder : JD.Decoder InstanceIdentity
instanceIdentityDecoder =
    JD.succeed InstanceIdentity
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Document", "document"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Signature", "signature"]
            JD.string
        )
        




instanceIdentityToString : InstanceIdentity -> String -- List (String, String)
instanceIdentityToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "document" "" -- val.document
        
    --     |> Dict.insert
    --         "signature" "" -- val.signature
        
    --     |> Dict.toList
    ""



{-| <p>Describes how many instances a stack has for each status.</p>
-}
type alias InstancesCount =
    { assigning : Maybe Int
    , booting : Maybe Int
    , connectionLost : Maybe Int
    , deregistering : Maybe Int
    , online : Maybe Int
    , pending : Maybe Int
    , rebooting : Maybe Int
    , registered : Maybe Int
    , registering : Maybe Int
    , requested : Maybe Int
    , runningSetup : Maybe Int
    , setupFailed : Maybe Int
    , shuttingDown : Maybe Int
    , startFailed : Maybe Int
    , stopFailed : Maybe Int
    , stopped : Maybe Int
    , stopping : Maybe Int
    , terminated : Maybe Int
    , terminating : Maybe Int
    , unassigning : Maybe Int
    }



instancesCountDecoder : JD.Decoder InstancesCount
instancesCountDecoder =
    JD.succeed InstancesCount
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Assigning", "assigning"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Booting", "booting"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConnectionLost", "connectionLost"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Deregistering", "deregistering"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Online", "online"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Pending", "pending"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Rebooting", "rebooting"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Registered", "registered"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Registering", "registering"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Requested", "requested"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RunningSetup", "runningSetup"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SetupFailed", "setupFailed"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ShuttingDown", "shuttingDown"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartFailed", "startFailed"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StopFailed", "stopFailed"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Stopped", "stopped"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Stopping", "stopping"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Terminated", "terminated"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Terminating", "terminating"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Unassigning", "unassigning"]
            JD.int
        )
        




instancesCountToString : InstancesCount -> String -- List (String, String)
instancesCountToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "assigning" "" -- val.assigning
        
    --     |> Dict.insert
    --         "booting" "" -- val.booting
        
    --     |> Dict.insert
    --         "connectionLost" "" -- val.connectionLost
        
    --     |> Dict.insert
    --         "deregistering" "" -- val.deregistering
        
    --     |> Dict.insert
    --         "online" "" -- val.online
        
    --     |> Dict.insert
    --         "pending" "" -- val.pending
        
    --     |> Dict.insert
    --         "rebooting" "" -- val.rebooting
        
    --     |> Dict.insert
    --         "registered" "" -- val.registered
        
    --     |> Dict.insert
    --         "registering" "" -- val.registering
        
    --     |> Dict.insert
    --         "requested" "" -- val.requested
        
    --     |> Dict.insert
    --         "runningSetup" "" -- val.runningSetup
        
    --     |> Dict.insert
    --         "setupFailed" "" -- val.setupFailed
        
    --     |> Dict.insert
    --         "shuttingDown" "" -- val.shuttingDown
        
    --     |> Dict.insert
    --         "startFailed" "" -- val.startFailed
        
    --     |> Dict.insert
    --         "stopFailed" "" -- val.stopFailed
        
    --     |> Dict.insert
    --         "stopped" "" -- val.stopped
        
    --     |> Dict.insert
    --         "stopping" "" -- val.stopping
        
    --     |> Dict.insert
    --         "terminated" "" -- val.terminated
        
    --     |> Dict.insert
    --         "terminating" "" -- val.terminating
        
    --     |> Dict.insert
    --         "unassigning" "" -- val.unassigning
        
    --     |> Dict.toList
    ""



{-| <p>Describes a layer.</p>
-}
type alias Layer =
    { arn : Maybe String
    , stackId : Maybe String
    , layerId : Maybe String
    , type_ : Maybe LayerType
    , name : Maybe String
    , shortname : Maybe String
    , attributes : Maybe (Dict String String)
    , cloudWatchLogsConfiguration : Maybe CloudWatchLogsConfiguration
    , customInstanceProfileArn : Maybe String
    , customJson : Maybe String
    , customSecurityGroupIds : Maybe (List String)
    , defaultSecurityGroupNames : Maybe (List String)
    , packages : Maybe (List String)
    , volumeConfigurations : Maybe (List VolumeConfiguration)
    , enableAutoHealing : Maybe Bool
    , autoAssignElasticIps : Maybe Bool
    , autoAssignPublicIps : Maybe Bool
    , defaultRecipes : Maybe Recipes
    , customRecipes : Maybe Recipes
    , createdAt : Maybe String
    , installUpdatesOnBoot : Maybe Bool
    , useEbsOptimizedInstances : Maybe Bool
    , lifecycleEventConfiguration : Maybe LifecycleEventConfiguration
    }



layerDecoder : JD.Decoder Layer
layerDecoder =
    JD.succeed Layer
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LayerId", "layerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            layerTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Shortname", "shortname"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLogsConfiguration", "cloudWatchLogsConfiguration"]
            cloudWatchLogsConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomInstanceProfileArn", "customInstanceProfileArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomJson", "customJson"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomSecurityGroupIds", "customSecurityGroupIds"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultSecurityGroupNames", "defaultSecurityGroupNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Packages", "packages"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VolumeConfigurations", "volumeConfigurations"]
            (JD.list volumeConfigurationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnableAutoHealing", "enableAutoHealing"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoAssignElasticIps", "autoAssignElasticIps"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoAssignPublicIps", "autoAssignPublicIps"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultRecipes", "defaultRecipes"]
            recipesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomRecipes", "customRecipes"]
            recipesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstallUpdatesOnBoot", "installUpdatesOnBoot"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UseEbsOptimizedInstances", "useEbsOptimizedInstances"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LifecycleEventConfiguration", "lifecycleEventConfiguration"]
            lifecycleEventConfigurationDecoder
        )
        




layerToString : Layer -> String -- List (String, String)
layerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "layerId" "" -- val.layerId
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "shortname" "" -- val.shortname
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.insert
    --         "cloudWatchLogsConfiguration" "" -- val.cloudWatchLogsConfiguration
        
    --     |> Dict.insert
    --         "customInstanceProfileArn" "" -- val.customInstanceProfileArn
        
    --     |> Dict.insert
    --         "customJson" "" -- val.customJson
        
    --     |> Dict.insert
    --         "customSecurityGroupIds" "" -- val.customSecurityGroupIds
        
    --     |> Dict.insert
    --         "defaultSecurityGroupNames" "" -- val.defaultSecurityGroupNames
        
    --     |> Dict.insert
    --         "packages" "" -- val.packages
        
    --     |> Dict.insert
    --         "volumeConfigurations" "" -- val.volumeConfigurations
        
    --     |> Dict.insert
    --         "enableAutoHealing" "" -- val.enableAutoHealing
        
    --     |> Dict.insert
    --         "autoAssignElasticIps" "" -- val.autoAssignElasticIps
        
    --     |> Dict.insert
    --         "autoAssignPublicIps" "" -- val.autoAssignPublicIps
        
    --     |> Dict.insert
    --         "defaultRecipes" "" -- val.defaultRecipes
        
    --     |> Dict.insert
    --         "customRecipes" "" -- val.customRecipes
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "installUpdatesOnBoot" "" -- val.installUpdatesOnBoot
        
    --     |> Dict.insert
    --         "useEbsOptimizedInstances" "" -- val.useEbsOptimizedInstances
        
    --     |> Dict.insert
    --         "lifecycleEventConfiguration" "" -- val.lifecycleEventConfiguration
        
    --     |> Dict.toList
    ""



{-| One of

* `LayerAttributesKeys_EcsClusterArn`
* `LayerAttributesKeys_EnableHaproxyStats`
* `LayerAttributesKeys_HaproxyStatsUrl`
* `LayerAttributesKeys_HaproxyStatsUser`
* `LayerAttributesKeys_HaproxyStatsPassword`
* `LayerAttributesKeys_HaproxyHealthCheckUrl`
* `LayerAttributesKeys_HaproxyHealthCheckMethod`
* `LayerAttributesKeys_MysqlRootPassword`
* `LayerAttributesKeys_MysqlRootPasswordUbiquitous`
* `LayerAttributesKeys_GangliaUrl`
* `LayerAttributesKeys_GangliaUser`
* `LayerAttributesKeys_GangliaPassword`
* `LayerAttributesKeys_MemcachedMemory`
* `LayerAttributesKeys_NodejsVersion`
* `LayerAttributesKeys_RubyVersion`
* `LayerAttributesKeys_RubygemsVersion`
* `LayerAttributesKeys_ManageBundler`
* `LayerAttributesKeys_BundlerVersion`
* `LayerAttributesKeys_RailsStack`
* `LayerAttributesKeys_PassengerVersion`
* `LayerAttributesKeys_Jvm`
* `LayerAttributesKeys_JvmVersion`
* `LayerAttributesKeys_JvmOptions`
* `LayerAttributesKeys_JavaAppServer`
* `LayerAttributesKeys_JavaAppServerVersion`

-}
type LayerAttributesKeys
    = LayerAttributesKeys_EcsClusterArn
    | LayerAttributesKeys_EnableHaproxyStats
    | LayerAttributesKeys_HaproxyStatsUrl
    | LayerAttributesKeys_HaproxyStatsUser
    | LayerAttributesKeys_HaproxyStatsPassword
    | LayerAttributesKeys_HaproxyHealthCheckUrl
    | LayerAttributesKeys_HaproxyHealthCheckMethod
    | LayerAttributesKeys_MysqlRootPassword
    | LayerAttributesKeys_MysqlRootPasswordUbiquitous
    | LayerAttributesKeys_GangliaUrl
    | LayerAttributesKeys_GangliaUser
    | LayerAttributesKeys_GangliaPassword
    | LayerAttributesKeys_MemcachedMemory
    | LayerAttributesKeys_NodejsVersion
    | LayerAttributesKeys_RubyVersion
    | LayerAttributesKeys_RubygemsVersion
    | LayerAttributesKeys_ManageBundler
    | LayerAttributesKeys_BundlerVersion
    | LayerAttributesKeys_RailsStack
    | LayerAttributesKeys_PassengerVersion
    | LayerAttributesKeys_Jvm
    | LayerAttributesKeys_JvmVersion
    | LayerAttributesKeys_JvmOptions
    | LayerAttributesKeys_JavaAppServer
    | LayerAttributesKeys_JavaAppServerVersion



layerAttributesKeysDecoder : JD.Decoder LayerAttributesKeys
layerAttributesKeysDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EcsClusterArn" ->
                        JD.succeed LayerAttributesKeys_EcsClusterArn

                    "EnableHaproxyStats" ->
                        JD.succeed LayerAttributesKeys_EnableHaproxyStats

                    "HaproxyStatsUrl" ->
                        JD.succeed LayerAttributesKeys_HaproxyStatsUrl

                    "HaproxyStatsUser" ->
                        JD.succeed LayerAttributesKeys_HaproxyStatsUser

                    "HaproxyStatsPassword" ->
                        JD.succeed LayerAttributesKeys_HaproxyStatsPassword

                    "HaproxyHealthCheckUrl" ->
                        JD.succeed LayerAttributesKeys_HaproxyHealthCheckUrl

                    "HaproxyHealthCheckMethod" ->
                        JD.succeed LayerAttributesKeys_HaproxyHealthCheckMethod

                    "MysqlRootPassword" ->
                        JD.succeed LayerAttributesKeys_MysqlRootPassword

                    "MysqlRootPasswordUbiquitous" ->
                        JD.succeed LayerAttributesKeys_MysqlRootPasswordUbiquitous

                    "GangliaUrl" ->
                        JD.succeed LayerAttributesKeys_GangliaUrl

                    "GangliaUser" ->
                        JD.succeed LayerAttributesKeys_GangliaUser

                    "GangliaPassword" ->
                        JD.succeed LayerAttributesKeys_GangliaPassword

                    "MemcachedMemory" ->
                        JD.succeed LayerAttributesKeys_MemcachedMemory

                    "NodejsVersion" ->
                        JD.succeed LayerAttributesKeys_NodejsVersion

                    "RubyVersion" ->
                        JD.succeed LayerAttributesKeys_RubyVersion

                    "RubygemsVersion" ->
                        JD.succeed LayerAttributesKeys_RubygemsVersion

                    "ManageBundler" ->
                        JD.succeed LayerAttributesKeys_ManageBundler

                    "BundlerVersion" ->
                        JD.succeed LayerAttributesKeys_BundlerVersion

                    "RailsStack" ->
                        JD.succeed LayerAttributesKeys_RailsStack

                    "PassengerVersion" ->
                        JD.succeed LayerAttributesKeys_PassengerVersion

                    "Jvm" ->
                        JD.succeed LayerAttributesKeys_Jvm

                    "JvmVersion" ->
                        JD.succeed LayerAttributesKeys_JvmVersion

                    "JvmOptions" ->
                        JD.succeed LayerAttributesKeys_JvmOptions

                    "JavaAppServer" ->
                        JD.succeed LayerAttributesKeys_JavaAppServer

                    "JavaAppServerVersion" ->
                        JD.succeed LayerAttributesKeys_JavaAppServerVersion


                    _ ->
                        JD.fail "bad thing"
            )




layerAttributesKeysToString : LayerAttributesKeys -> String
layerAttributesKeysToString val =
    case val of
        LayerAttributesKeys_EcsClusterArn ->
            "EcsClusterArn"

        LayerAttributesKeys_EnableHaproxyStats ->
            "EnableHaproxyStats"

        LayerAttributesKeys_HaproxyStatsUrl ->
            "HaproxyStatsUrl"

        LayerAttributesKeys_HaproxyStatsUser ->
            "HaproxyStatsUser"

        LayerAttributesKeys_HaproxyStatsPassword ->
            "HaproxyStatsPassword"

        LayerAttributesKeys_HaproxyHealthCheckUrl ->
            "HaproxyHealthCheckUrl"

        LayerAttributesKeys_HaproxyHealthCheckMethod ->
            "HaproxyHealthCheckMethod"

        LayerAttributesKeys_MysqlRootPassword ->
            "MysqlRootPassword"

        LayerAttributesKeys_MysqlRootPasswordUbiquitous ->
            "MysqlRootPasswordUbiquitous"

        LayerAttributesKeys_GangliaUrl ->
            "GangliaUrl"

        LayerAttributesKeys_GangliaUser ->
            "GangliaUser"

        LayerAttributesKeys_GangliaPassword ->
            "GangliaPassword"

        LayerAttributesKeys_MemcachedMemory ->
            "MemcachedMemory"

        LayerAttributesKeys_NodejsVersion ->
            "NodejsVersion"

        LayerAttributesKeys_RubyVersion ->
            "RubyVersion"

        LayerAttributesKeys_RubygemsVersion ->
            "RubygemsVersion"

        LayerAttributesKeys_ManageBundler ->
            "ManageBundler"

        LayerAttributesKeys_BundlerVersion ->
            "BundlerVersion"

        LayerAttributesKeys_RailsStack ->
            "RailsStack"

        LayerAttributesKeys_PassengerVersion ->
            "PassengerVersion"

        LayerAttributesKeys_Jvm ->
            "Jvm"

        LayerAttributesKeys_JvmVersion ->
            "JvmVersion"

        LayerAttributesKeys_JvmOptions ->
            "JvmOptions"

        LayerAttributesKeys_JavaAppServer ->
            "JavaAppServer"

        LayerAttributesKeys_JavaAppServerVersion ->
            "JavaAppServerVersion"




{-| One of

* `LayerType_aws-flow-ruby`
* `LayerType_ecs-cluster`
* `LayerType_java-app`
* `LayerType_lb`
* `LayerType_web`
* `LayerType_php-app`
* `LayerType_rails-app`
* `LayerType_nodejs-app`
* `LayerType_memcached`
* `LayerType_db-master`
* `LayerType_monitoring-master`
* `LayerType_custom`

-}
type LayerType
    = LayerType_aws_flow_ruby
    | LayerType_ecs_cluster
    | LayerType_java_app
    | LayerType_lb
    | LayerType_web
    | LayerType_php_app
    | LayerType_rails_app
    | LayerType_nodejs_app
    | LayerType_memcached
    | LayerType_db_master
    | LayerType_monitoring_master
    | LayerType_custom



layerTypeDecoder : JD.Decoder LayerType
layerTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "aws_flow_ruby" ->
                        JD.succeed LayerType_aws_flow_ruby

                    "ecs_cluster" ->
                        JD.succeed LayerType_ecs_cluster

                    "java_app" ->
                        JD.succeed LayerType_java_app

                    "lb" ->
                        JD.succeed LayerType_lb

                    "web" ->
                        JD.succeed LayerType_web

                    "php_app" ->
                        JD.succeed LayerType_php_app

                    "rails_app" ->
                        JD.succeed LayerType_rails_app

                    "nodejs_app" ->
                        JD.succeed LayerType_nodejs_app

                    "memcached" ->
                        JD.succeed LayerType_memcached

                    "db_master" ->
                        JD.succeed LayerType_db_master

                    "monitoring_master" ->
                        JD.succeed LayerType_monitoring_master

                    "custom" ->
                        JD.succeed LayerType_custom


                    _ ->
                        JD.fail "bad thing"
            )




layerTypeToString : LayerType -> String
layerTypeToString val =
    case val of
        LayerType_aws_flow_ruby ->
            "aws_flow_ruby"

        LayerType_ecs_cluster ->
            "ecs_cluster"

        LayerType_java_app ->
            "java_app"

        LayerType_lb ->
            "lb"

        LayerType_web ->
            "web"

        LayerType_php_app ->
            "php_app"

        LayerType_rails_app ->
            "rails_app"

        LayerType_nodejs_app ->
            "nodejs_app"

        LayerType_memcached ->
            "memcached"

        LayerType_db_master ->
            "db_master"

        LayerType_monitoring_master ->
            "monitoring_master"

        LayerType_custom ->
            "custom"




{-| <p>Specifies the lifecycle event configuration</p>
-}
type alias LifecycleEventConfiguration =
    { shutdown : Maybe ShutdownEventConfiguration
    }



lifecycleEventConfigurationDecoder : JD.Decoder LifecycleEventConfiguration
lifecycleEventConfigurationDecoder =
    JD.succeed LifecycleEventConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Shutdown", "shutdown"]
            shutdownEventConfigurationDecoder
        )
        




lifecycleEventConfigurationToString : LifecycleEventConfiguration -> String -- List (String, String)
lifecycleEventConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "shutdown" "" -- val.shutdown
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTa
-}
type alias ListTagsResult =
    { tags : Maybe (Dict String String)
    , nextToken : Maybe String
    }



listTagsResultDecoder : JD.Decoder ListTagsResult
listTagsResultDecoder =
    JD.succeed ListTagsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listTagsResultToString : ListTagsResult -> String -- List (String, String)
listTagsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>Describes a layer's load-based auto scaling configuration.</p>
-}
type alias LoadBasedAutoScalingConfiguration =
    { layerId : Maybe String
    , enable : Maybe Bool
    , upScaling : Maybe AutoScalingThresholds
    , downScaling : Maybe AutoScalingThresholds
    }



loadBasedAutoScalingConfigurationDecoder : JD.Decoder LoadBasedAutoScalingConfiguration
loadBasedAutoScalingConfigurationDecoder =
    JD.succeed LoadBasedAutoScalingConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LayerId", "layerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enable", "enable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UpScaling", "upScaling"]
            autoScalingThresholdsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DownScaling", "downScaling"]
            autoScalingThresholdsDecoder
        )
        




loadBasedAutoScalingConfigurationToString : LoadBasedAutoScalingConfiguration -> String -- List (String, String)
loadBasedAutoScalingConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "layerId" "" -- val.layerId
        
    --     |> Dict.insert
    --         "enable" "" -- val.enable
        
    --     |> Dict.insert
    --         "upScaling" "" -- val.upScaling
        
    --     |> Dict.insert
    --         "downScaling" "" -- val.downScaling
        
    --     |> Dict.toList
    ""



{-| <p>Describes supported operating systems in AWS OpsWorks Stacks.</p>
-}
type alias OperatingSystem =
    { name : Maybe String
    , id : Maybe String
    , type_ : Maybe String
    , configurationManagers : Maybe (List OperatingSystemConfigurationManager)
    , reportedName : Maybe String
    , reportedVersion : Maybe String
    , supported : Maybe Bool
    }



operatingSystemDecoder : JD.Decoder OperatingSystem
operatingSystemDecoder =
    JD.succeed OperatingSystem
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConfigurationManagers", "configurationManagers"]
            (JD.list operatingSystemConfigurationManagerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReportedName", "reportedName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReportedVersion", "reportedVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Supported", "supported"]
            JD.bool
        )
        




operatingSystemToString : OperatingSystem -> String -- List (String, String)
operatingSystemToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "configurationManagers" "" -- val.configurationManagers
        
    --     |> Dict.insert
    --         "reportedName" "" -- val.reportedName
        
    --     |> Dict.insert
    --         "reportedVersion" "" -- val.reportedVersion
        
    --     |> Dict.insert
    --         "supported" "" -- val.supported
        
    --     |> Dict.toList
    ""



{-| <p>A block that contains information about the configuration manager (Chef) and the versions of the configuration manager that are supported for an operating system.</p>
-}
type alias OperatingSystemConfigurationManager =
    { name : Maybe String
    , version : Maybe String
    }



operatingSystemConfigurationManagerDecoder : JD.Decoder OperatingSystemConfigurationManager
operatingSystemConfigurationManagerDecoder =
    JD.succeed OperatingSystemConfigurationManager
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.string
        )
        




operatingSystemConfigurationManagerToString : OperatingSystemConfigurationManager -> String -- List (String, String)
operatingSystemConfigurationManagerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.toList
    ""



{-| <p>Describes stack or user permissions.</p>
-}
type alias Permission =
    { stackId : Maybe String
    , iamUserArn : Maybe String
    , allowSsh : Maybe Bool
    , allowSudo : Maybe Bool
    , level : Maybe String
    }



permissionDecoder : JD.Decoder Permission
permissionDecoder =
    JD.succeed Permission
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IamUserArn", "iamUserArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowSsh", "allowSsh"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowSudo", "allowSudo"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Level", "level"]
            JD.string
        )
        




permissionToString : Permission -> String -- List (String, String)
permissionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "iamUserArn" "" -- val.iamUserArn
        
    --     |> Dict.insert
    --         "allowSsh" "" -- val.allowSsh
        
    --     |> Dict.insert
    --         "allowSudo" "" -- val.allowSudo
        
    --     |> Dict.insert
    --         "level" "" -- val.level
        
    --     |> Dict.toList
    ""



{-| <p>Describes an instance's RAID array.</p>
-}
type alias RaidArray =
    { raidArrayId : Maybe String
    , instanceId : Maybe String
    , name : Maybe String
    , raidLevel : Maybe Int
    , numberOfDisks : Maybe Int
    , size : Maybe Int
    , device : Maybe String
    , mountPoint : Maybe String
    , availabilityZone : Maybe String
    , createdAt : Maybe String
    , stackId : Maybe String
    , volumeType : Maybe String
    , iops : Maybe Int
    }



raidArrayDecoder : JD.Decoder RaidArray
raidArrayDecoder =
    JD.succeed RaidArray
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RaidArrayId", "raidArrayId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RaidLevel", "raidLevel"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberOfDisks", "numberOfDisks"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Size", "size"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Device", "device"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MountPoint", "mountPoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZone", "availabilityZone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VolumeType", "volumeType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Iops", "iops"]
            JD.int
        )
        




raidArrayToString : RaidArray -> String -- List (String, String)
raidArrayToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "raidArrayId" "" -- val.raidArrayId
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "raidLevel" "" -- val.raidLevel
        
    --     |> Dict.insert
    --         "numberOfDisks" "" -- val.numberOfDisks
        
    --     |> Dict.insert
    --         "size" "" -- val.size
        
    --     |> Dict.insert
    --         "device" "" -- val.device
        
    --     |> Dict.insert
    --         "mountPoint" "" -- val.mountPoint
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "volumeType" "" -- val.volumeType
        
    --     |> Dict.insert
    --         "iops" "" -- val.iops
        
    --     |> Dict.toList
    ""



{-| <p>Describes an Amazon RDS instance.</p>
-}
type alias RdsDbInstance =
    { rdsDbInstanceArn : Maybe String
    , dbInstanceIdentifier : Maybe String
    , dbUser : Maybe String
    , dbPassword : Maybe String
    , region : Maybe String
    , address : Maybe String
    , engine : Maybe String
    , stackId : Maybe String
    , missingOnRds : Maybe Bool
    }



rdsDbInstanceDecoder : JD.Decoder RdsDbInstance
rdsDbInstanceDecoder =
    JD.succeed RdsDbInstance
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RdsDbInstanceArn", "rdsDbInstanceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DbInstanceIdentifier", "dbInstanceIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DbUser", "dbUser"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DbPassword", "dbPassword"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Region", "region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Address", "address"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Engine", "engine"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MissingOnRds", "missingOnRds"]
            JD.bool
        )
        




rdsDbInstanceToString : RdsDbInstance -> String -- List (String, String)
rdsDbInstanceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "rdsDbInstanceArn" "" -- val.rdsDbInstanceArn
        
    --     |> Dict.insert
    --         "dbInstanceIdentifier" "" -- val.dbInstanceIdentifier
        
    --     |> Dict.insert
    --         "dbUser" "" -- val.dbUser
        
    --     |> Dict.insert
    --         "dbPassword" "" -- val.dbPassword
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "address" "" -- val.address
        
    --     |> Dict.insert
    --         "engine" "" -- val.engine
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "missingOnRds" "" -- val.missingOnRds
        
    --     |> Dict.toList
    ""



{-| <p>AWS OpsWorks Stacks supports five lifecycle events: <b>setup</b>, <b>configuration</b>, <b>deploy</b>, <b>undeploy</b>, and <b>shutdown</b>. For each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event. In addition, you can provide custom recipes for any or all layers and events. AWS OpsWorks Stacks runs custom event recipes after the standard recipes. <code>LayerCustomRecipes</code> specifies the custom recipes for a particular layer to be run in response to each of the five events. </p> <p>To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, which is the recipe's file name without the .rb extension. For example: phpapp2::dbsetup specifies the dbsetup.rb recipe in the repository's phpapp2 folder.</p>
-}
type alias Recipes =
    { setup : Maybe (List String)
    , configure : Maybe (List String)
    , deploy : Maybe (List String)
    , undeploy : Maybe (List String)
    , shutdown : Maybe (List String)
    }



recipesDecoder : JD.Decoder Recipes
recipesDecoder =
    JD.succeed Recipes
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Setup", "setup"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Configure", "configure"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Deploy", "deploy"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Undeploy", "undeploy"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Shutdown", "shutdown"]
            (JD.list JD.string)
        )
        




recipesToString : Recipes -> String -- List (String, String)
recipesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "setup" "" -- val.setup
        
    --     |> Dict.insert
    --         "configure" "" -- val.configure
        
    --     |> Dict.insert
    --         "deploy" "" -- val.deploy
        
    --     |> Dict.insert
    --         "undeploy" "" -- val.undeploy
        
    --     |> Dict.insert
    --         "shutdown" "" -- val.shutdown
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from registerEcsClust
-}
type alias RegisterEcsClusterResult =
    { ecsClusterArn : Maybe String
    }



registerEcsClusterResultDecoder : JD.Decoder RegisterEcsClusterResult
registerEcsClusterResultDecoder =
    JD.succeed RegisterEcsClusterResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EcsClusterArn", "ecsClusterArn"]
            JD.string
        )
        




registerEcsClusterResultToString : RegisterEcsClusterResult -> String -- List (String, String)
registerEcsClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ecsClusterArn" "" -- val.ecsClusterArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from registerElastic
-}
type alias RegisterElasticIpResult =
    { elasticIp : Maybe String
    }



registerElasticIpResultDecoder : JD.Decoder RegisterElasticIpResult
registerElasticIpResultDecoder =
    JD.succeed RegisterElasticIpResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ElasticIp", "elasticIp"]
            JD.string
        )
        




registerElasticIpResultToString : RegisterElasticIpResult -> String -- List (String, String)
registerElasticIpResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "elasticIp" "" -- val.elasticIp
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from registerInstan
-}
type alias RegisterInstanceResult =
    { instanceId : Maybe String
    }



registerInstanceResultDecoder : JD.Decoder RegisterInstanceResult
registerInstanceResultDecoder =
    JD.succeed RegisterInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        




registerInstanceResultToString : RegisterInstanceResult -> String -- List (String, String)
registerInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from registerVolu
-}
type alias RegisterVolumeResult =
    { volumeId : Maybe String
    }



registerVolumeResultDecoder : JD.Decoder RegisterVolumeResult
registerVolumeResultDecoder =
    JD.succeed RegisterVolumeResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VolumeId", "volumeId"]
            JD.string
        )
        




registerVolumeResultToString : RegisterVolumeResult -> String -- List (String, String)
registerVolumeResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "volumeId" "" -- val.volumeId
        
    --     |> Dict.toList
    ""



{-| <p>A registered instance's reported operating system.</p>
-}
type alias ReportedOs =
    { family : Maybe String
    , name : Maybe String
    , version : Maybe String
    }



reportedOsDecoder : JD.Decoder ReportedOs
reportedOsDecoder =
    JD.succeed ReportedOs
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Family", "family"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.string
        )
        




reportedOsToString : ReportedOs -> String -- List (String, String)
reportedOsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "family" "" -- val.family
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.toList
    ""



{-| One of

* `RootDeviceType_ebs`
* `RootDeviceType_instance-store`

-}
type RootDeviceType
    = RootDeviceType_ebs
    | RootDeviceType_instance_store



rootDeviceTypeDecoder : JD.Decoder RootDeviceType
rootDeviceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ebs" ->
                        JD.succeed RootDeviceType_ebs

                    "instance_store" ->
                        JD.succeed RootDeviceType_instance_store


                    _ ->
                        JD.fail "bad thing"
            )




rootDeviceTypeToString : RootDeviceType -> String
rootDeviceTypeToString val =
    case val of
        RootDeviceType_ebs ->
            "ebs"

        RootDeviceType_instance_store ->
            "instance_store"




{-| <p>Describes a user's SSH information.</p>
-}
type alias SelfUserProfile =
    { iamUserArn : Maybe String
    , name : Maybe String
    , sshUsername : Maybe String
    , sshPublicKey : Maybe String
    }



selfUserProfileDecoder : JD.Decoder SelfUserProfile
selfUserProfileDecoder =
    JD.succeed SelfUserProfile
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IamUserArn", "iamUserArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SshUsername", "sshUsername"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SshPublicKey", "sshPublicKey"]
            JD.string
        )
        




selfUserProfileToString : SelfUserProfile -> String -- List (String, String)
selfUserProfileToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "iamUserArn" "" -- val.iamUserArn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "sshUsername" "" -- val.sshUsername
        
    --     |> Dict.insert
    --         "sshPublicKey" "" -- val.sshPublicKey
        
    --     |> Dict.toList
    ""



{-| <p>Describes an AWS OpsWorks Stacks service error.</p>
-}
type alias ServiceError =
    { serviceErrorId : Maybe String
    , stackId : Maybe String
    , instanceId : Maybe String
    , type_ : Maybe String
    , message : Maybe String
    , createdAt : Maybe String
    }



serviceErrorDecoder : JD.Decoder ServiceError
serviceErrorDecoder =
    JD.succeed ServiceError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServiceErrorId", "serviceErrorId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JD.string
        )
        




serviceErrorToString : ServiceError -> String -- List (String, String)
serviceErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serviceErrorId" "" -- val.serviceErrorId
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.toList
    ""



{-| <p>The Shutdown event configuration.</p>
-}
type alias ShutdownEventConfiguration =
    { executionTimeout : Maybe Int
    , delayUntilElbConnectionsDrained : Maybe Bool
    }



shutdownEventConfigurationDecoder : JD.Decoder ShutdownEventConfiguration
shutdownEventConfigurationDecoder =
    JD.succeed ShutdownEventConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExecutionTimeout", "executionTimeout"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DelayUntilElbConnectionsDrained", "delayUntilElbConnectionsDrained"]
            JD.bool
        )
        




shutdownEventConfigurationToString : ShutdownEventConfiguration -> String -- List (String, String)
shutdownEventConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "executionTimeout" "" -- val.executionTimeout
        
    --     |> Dict.insert
    --         "delayUntilElbConnectionsDrained" "" -- val.delayUntilElbConnectionsDrained
        
    --     |> Dict.toList
    ""



{-| <p>Contains the information required to retrieve an app or cookbook from a repository. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating Apps</a> or <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Custom Recipes and Cookbooks</a>.</p>
-}
type alias Source =
    { type_ : Maybe SourceType
    , url : Maybe String
    , username : Maybe String
    , password : Maybe String
    , sshKey : Maybe String
    , revision : Maybe String
    }



sourceDecoder : JD.Decoder Source
sourceDecoder =
    JD.succeed Source
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            sourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Url", "url"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Username", "username"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Password", "password"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SshKey", "sshKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Revision", "revision"]
            JD.string
        )
        




sourceToString : Source -> String -- List (String, String)
sourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "url" "" -- val.url
        
    --     |> Dict.insert
    --         "username" "" -- val.username
        
    --     |> Dict.insert
    --         "password" "" -- val.password
        
    --     |> Dict.insert
    --         "sshKey" "" -- val.sshKey
        
    --     |> Dict.insert
    --         "revision" "" -- val.revision
        
    --     |> Dict.toList
    ""



{-| One of

* `SourceType_git`
* `SourceType_svn`
* `SourceType_archive`
* `SourceType_s3`

-}
type SourceType
    = SourceType_git
    | SourceType_svn
    | SourceType_archive
    | SourceType_s3



sourceTypeDecoder : JD.Decoder SourceType
sourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "git" ->
                        JD.succeed SourceType_git

                    "svn" ->
                        JD.succeed SourceType_svn

                    "archive" ->
                        JD.succeed SourceType_archive

                    "s3" ->
                        JD.succeed SourceType_s3


                    _ ->
                        JD.fail "bad thing"
            )




sourceTypeToString : SourceType -> String
sourceTypeToString val =
    case val of
        SourceType_git ->
            "git"

        SourceType_svn ->
            "svn"

        SourceType_archive ->
            "archive"

        SourceType_s3 ->
            "s3"




{-| <p>Describes an app's SSL configuration.</p>
-}
type alias SslConfiguration =
    { certificate : String
    , privateKey : String
    , chain : Maybe String
    }



sslConfigurationDecoder : JD.Decoder SslConfiguration
sslConfigurationDecoder =
    JD.succeed SslConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Certificate", "certificate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["PrivateKey", "privateKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Chain", "chain"]
            JD.string
        )
        




sslConfigurationToString : SslConfiguration -> String -- List (String, String)
sslConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificate" "" -- val.certificate
        
    --     |> Dict.insert
    --         "privateKey" "" -- val.privateKey
        
    --     |> Dict.insert
    --         "chain" "" -- val.chain
        
    --     |> Dict.toList
    ""



{-| <p>Describes a stack.</p>
-}
type alias Stack =
    { stackId : Maybe String
    , name : Maybe String
    , arn : Maybe String
    , region : Maybe String
    , vpcId : Maybe String
    , attributes : Maybe (Dict String String)
    , serviceRoleArn : Maybe String
    , defaultInstanceProfileArn : Maybe String
    , defaultOs : Maybe String
    , hostnameTheme : Maybe String
    , defaultAvailabilityZone : Maybe String
    , defaultSubnetId : Maybe String
    , customJson : Maybe String
    , configurationManager : Maybe StackConfigurationManager
    , chefConfiguration : Maybe ChefConfiguration
    , useCustomCookbooks : Maybe Bool
    , useOpsworksSecurityGroups : Maybe Bool
    , customCookbooksSource : Maybe Source
    , defaultSshKeyName : Maybe String
    , createdAt : Maybe String
    , defaultRootDeviceType : Maybe RootDeviceType
    , agentVersion : Maybe String
    }



stackDecoder : JD.Decoder Stack
stackDecoder =
    JD.succeed Stack
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Region", "region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcId", "vpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServiceRoleArn", "serviceRoleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultInstanceProfileArn", "defaultInstanceProfileArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultOs", "defaultOs"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HostnameTheme", "hostnameTheme"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultAvailabilityZone", "defaultAvailabilityZone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultSubnetId", "defaultSubnetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomJson", "customJson"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConfigurationManager", "configurationManager"]
            stackConfigurationManagerDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChefConfiguration", "chefConfiguration"]
            chefConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UseCustomCookbooks", "useCustomCookbooks"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UseOpsworksSecurityGroups", "useOpsworksSecurityGroups"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomCookbooksSource", "customCookbooksSource"]
            sourceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultSshKeyName", "defaultSshKeyName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultRootDeviceType", "defaultRootDeviceType"]
            rootDeviceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AgentVersion", "agentVersion"]
            JD.string
        )
        




stackToString : Stack -> String -- List (String, String)
stackToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.insert
    --         "serviceRoleArn" "" -- val.serviceRoleArn
        
    --     |> Dict.insert
    --         "defaultInstanceProfileArn" "" -- val.defaultInstanceProfileArn
        
    --     |> Dict.insert
    --         "defaultOs" "" -- val.defaultOs
        
    --     |> Dict.insert
    --         "hostnameTheme" "" -- val.hostnameTheme
        
    --     |> Dict.insert
    --         "defaultAvailabilityZone" "" -- val.defaultAvailabilityZone
        
    --     |> Dict.insert
    --         "defaultSubnetId" "" -- val.defaultSubnetId
        
    --     |> Dict.insert
    --         "customJson" "" -- val.customJson
        
    --     |> Dict.insert
    --         "configurationManager" "" -- val.configurationManager
        
    --     |> Dict.insert
    --         "chefConfiguration" "" -- val.chefConfiguration
        
    --     |> Dict.insert
    --         "useCustomCookbooks" "" -- val.useCustomCookbooks
        
    --     |> Dict.insert
    --         "useOpsworksSecurityGroups" "" -- val.useOpsworksSecurityGroups
        
    --     |> Dict.insert
    --         "customCookbooksSource" "" -- val.customCookbooksSource
        
    --     |> Dict.insert
    --         "defaultSshKeyName" "" -- val.defaultSshKeyName
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "defaultRootDeviceType" "" -- val.defaultRootDeviceType
        
    --     |> Dict.insert
    --         "agentVersion" "" -- val.agentVersion
        
    --     |> Dict.toList
    ""



{-| One of

* `StackAttributesKeys_Color`

-}
type StackAttributesKeys
    = StackAttributesKeys_Color



stackAttributesKeysDecoder : JD.Decoder StackAttributesKeys
stackAttributesKeysDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Color" ->
                        JD.succeed StackAttributesKeys_Color


                    _ ->
                        JD.fail "bad thing"
            )




stackAttributesKeysToString : StackAttributesKeys -> String
stackAttributesKeysToString val =
    case val of
        StackAttributesKeys_Color ->
            "Color"




{-| <p>Describes the configuration manager.</p>
-}
type alias StackConfigurationManager =
    { name : Maybe String
    , version : Maybe String
    }



stackConfigurationManagerDecoder : JD.Decoder StackConfigurationManager
stackConfigurationManagerDecoder =
    JD.succeed StackConfigurationManager
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.string
        )
        




stackConfigurationManagerToString : StackConfigurationManager -> String -- List (String, String)
stackConfigurationManagerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.toList
    ""



{-| <p>Summarizes the number of layers, instances, and apps in a stack.</p>
-}
type alias StackSummary =
    { stackId : Maybe String
    , name : Maybe String
    , arn : Maybe String
    , layersCount : Maybe Int
    , appsCount : Maybe Int
    , instancesCount : Maybe InstancesCount
    }



stackSummaryDecoder : JD.Decoder StackSummary
stackSummaryDecoder =
    JD.succeed StackSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LayersCount", "layersCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AppsCount", "appsCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstancesCount", "instancesCount"]
            instancesCountDecoder
        )
        




stackSummaryToString : StackSummary -> String -- List (String, String)
stackSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "layersCount" "" -- val.layersCount
        
    --     |> Dict.insert
    --         "appsCount" "" -- val.appsCount
        
    --     |> Dict.insert
    --         "instancesCount" "" -- val.instancesCount
        
    --     |> Dict.toList
    ""



{-| <p>Contains the data needed by RDP clients such as the Microsoft Remote Desktop Connection to log in to the instance.</p>
-}
type alias TemporaryCredential =
    { username : Maybe String
    , password : Maybe String
    , validForInMinutes : Maybe Int
    , instanceId : Maybe String
    }



temporaryCredentialDecoder : JD.Decoder TemporaryCredential
temporaryCredentialDecoder =
    JD.succeed TemporaryCredential
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Username", "username"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Password", "password"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ValidForInMinutes", "validForInMinutes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        




temporaryCredentialToString : TemporaryCredential -> String -- List (String, String)
temporaryCredentialToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "username" "" -- val.username
        
    --     |> Dict.insert
    --         "password" "" -- val.password
        
    --     |> Dict.insert
    --         "validForInMinutes" "" -- val.validForInMinutes
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.toList
    ""



{-| <p>Describes an instance's time-based auto scaling configuration.</p>
-}
type alias TimeBasedAutoScalingConfiguration =
    { instanceId : Maybe String
    , autoScalingSchedule : Maybe WeeklyAutoScalingSchedule
    }



timeBasedAutoScalingConfigurationDecoder : JD.Decoder TimeBasedAutoScalingConfiguration
timeBasedAutoScalingConfigurationDecoder =
    JD.succeed TimeBasedAutoScalingConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoScalingSchedule", "autoScalingSchedule"]
            weeklyAutoScalingScheduleDecoder
        )
        




timeBasedAutoScalingConfigurationToString : TimeBasedAutoScalingConfiguration -> String -- List (String, String)
timeBasedAutoScalingConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.insert
    --         "autoScalingSchedule" "" -- val.autoScalingSchedule
        
    --     |> Dict.toList
    ""



{-| <p>Describes a user's SSH information.</p>
-}
type alias UserProfile =
    { iamUserArn : Maybe String
    , name : Maybe String
    , sshUsername : Maybe String
    , sshPublicKey : Maybe String
    , allowSelfManagement : Maybe Bool
    }



userProfileDecoder : JD.Decoder UserProfile
userProfileDecoder =
    JD.succeed UserProfile
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IamUserArn", "iamUserArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SshUsername", "sshUsername"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SshPublicKey", "sshPublicKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowSelfManagement", "allowSelfManagement"]
            JD.bool
        )
        




userProfileToString : UserProfile -> String -- List (String, String)
userProfileToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "iamUserArn" "" -- val.iamUserArn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "sshUsername" "" -- val.sshUsername
        
    --     |> Dict.insert
    --         "sshPublicKey" "" -- val.sshPublicKey
        
    --     |> Dict.insert
    --         "allowSelfManagement" "" -- val.allowSelfManagement
        
    --     |> Dict.toList
    ""



{-| One of

* `VirtualizationType_paravirtual`
* `VirtualizationType_hvm`

-}
type VirtualizationType
    = VirtualizationType_paravirtual
    | VirtualizationType_hvm



virtualizationTypeDecoder : JD.Decoder VirtualizationType
virtualizationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "paravirtual" ->
                        JD.succeed VirtualizationType_paravirtual

                    "hvm" ->
                        JD.succeed VirtualizationType_hvm


                    _ ->
                        JD.fail "bad thing"
            )




virtualizationTypeToString : VirtualizationType -> String
virtualizationTypeToString val =
    case val of
        VirtualizationType_paravirtual ->
            "paravirtual"

        VirtualizationType_hvm ->
            "hvm"




{-| <p>Describes an instance's Amazon EBS volume.</p>
-}
type alias Volume =
    { volumeId : Maybe String
    , ec2VolumeId : Maybe String
    , name : Maybe String
    , raidArrayId : Maybe String
    , instanceId : Maybe String
    , status : Maybe String
    , size : Maybe Int
    , device : Maybe String
    , mountPoint : Maybe String
    , region : Maybe String
    , availabilityZone : Maybe String
    , volumeType : Maybe String
    , iops : Maybe Int
    , encrypted : Maybe Bool
    }



volumeDecoder : JD.Decoder Volume
volumeDecoder =
    JD.succeed Volume
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VolumeId", "volumeId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Ec2VolumeId", "ec2VolumeId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RaidArrayId", "raidArrayId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Size", "size"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Device", "device"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MountPoint", "mountPoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Region", "region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZone", "availabilityZone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VolumeType", "volumeType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Iops", "iops"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Encrypted", "encrypted"]
            JD.bool
        )
        




volumeToString : Volume -> String -- List (String, String)
volumeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "volumeId" "" -- val.volumeId
        
    --     |> Dict.insert
    --         "ec2VolumeId" "" -- val.ec2VolumeId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "raidArrayId" "" -- val.raidArrayId
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "size" "" -- val.size
        
    --     |> Dict.insert
    --         "device" "" -- val.device
        
    --     |> Dict.insert
    --         "mountPoint" "" -- val.mountPoint
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.insert
    --         "volumeType" "" -- val.volumeType
        
    --     |> Dict.insert
    --         "iops" "" -- val.iops
        
    --     |> Dict.insert
    --         "encrypted" "" -- val.encrypted
        
    --     |> Dict.toList
    ""



{-| <p>Describes an Amazon EBS volume configuration.</p>
-}
type alias VolumeConfiguration =
    { mountPoint : String
    , raidLevel : Maybe Int
    , numberOfDisks : Int
    , size : Int
    , volumeType : Maybe String
    , iops : Maybe Int
    , encrypted : Maybe Bool
    }



volumeConfigurationDecoder : JD.Decoder VolumeConfiguration
volumeConfigurationDecoder =
    JD.succeed VolumeConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["MountPoint", "mountPoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RaidLevel", "raidLevel"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["NumberOfDisks", "numberOfDisks"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Size", "size"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VolumeType", "volumeType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Iops", "iops"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Encrypted", "encrypted"]
            JD.bool
        )
        




volumeConfigurationToString : VolumeConfiguration -> String -- List (String, String)
volumeConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "mountPoint" "" -- val.mountPoint
        
    --     |> Dict.insert
    --         "raidLevel" "" -- val.raidLevel
        
    --     |> Dict.insert
    --         "numberOfDisks" "" -- val.numberOfDisks
        
    --     |> Dict.insert
    --         "size" "" -- val.size
        
    --     |> Dict.insert
    --         "volumeType" "" -- val.volumeType
        
    --     |> Dict.insert
    --         "iops" "" -- val.iops
        
    --     |> Dict.insert
    --         "encrypted" "" -- val.encrypted
        
    --     |> Dict.toList
    ""



{-| One of

* `VolumeType_gp2`
* `VolumeType_io1`
* `VolumeType_standard`

-}
type VolumeType
    = VolumeType_gp2
    | VolumeType_io1
    | VolumeType_standard



volumeTypeDecoder : JD.Decoder VolumeType
volumeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "gp2" ->
                        JD.succeed VolumeType_gp2

                    "io1" ->
                        JD.succeed VolumeType_io1

                    "standard" ->
                        JD.succeed VolumeType_standard


                    _ ->
                        JD.fail "bad thing"
            )




volumeTypeToString : VolumeType -> String
volumeTypeToString val =
    case val of
        VolumeType_gp2 ->
            "gp2"

        VolumeType_io1 ->
            "io1"

        VolumeType_standard ->
            "standard"




{-| <p>Describes a time-based instance's auto scaling schedule. The schedule consists of a set of key-value pairs.</p> <ul> <li> <p>The key is the time period (a UTC hour) and must be an integer from 0 - 23.</p> </li> <li> <p>The value indicates whether the instance should be online or offline for the specified period, and must be set to "on" or "off"</p> </li> </ul> <p>The default setting for all time periods is off, so you use the following parameters primarily to specify the online periods. You don't have to explicitly specify offline periods unless you want to change an online period to an offline period.</p> <p>The following example specifies that the instance should be online for four hours, from UTC 1200 - 1600. It will be off for the remainder of the day.</p> <p> <code> { "12":"on", "13":"on", "14":"on", "15":"on" } </code> </p>
-}
type alias WeeklyAutoScalingSchedule =
    { monday : Maybe (Dict String String)
    , tuesday : Maybe (Dict String String)
    , wednesday : Maybe (Dict String String)
    , thursday : Maybe (Dict String String)
    , friday : Maybe (Dict String String)
    , saturday : Maybe (Dict String String)
    , sunday : Maybe (Dict String String)
    }



weeklyAutoScalingScheduleDecoder : JD.Decoder WeeklyAutoScalingSchedule
weeklyAutoScalingScheduleDecoder =
    JD.succeed WeeklyAutoScalingSchedule
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Monday", "monday"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tuesday", "tuesday"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Wednesday", "wednesday"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Thursday", "thursday"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Friday", "friday"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Saturday", "saturday"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Sunday", "sunday"]
            (AWS.Core.Decode.dict JD.string)
        )
        




weeklyAutoScalingScheduleToString : WeeklyAutoScalingSchedule -> String -- List (String, String)
weeklyAutoScalingScheduleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "monday" "" -- val.monday
        
    --     |> Dict.insert
    --         "tuesday" "" -- val.tuesday
        
    --     |> Dict.insert
    --         "wednesday" "" -- val.wednesday
        
    --     |> Dict.insert
    --         "thursday" "" -- val.thursday
        
    --     |> Dict.insert
    --         "friday" "" -- val.friday
        
    --     |> Dict.insert
    --         "saturday" "" -- val.saturday
        
    --     |> Dict.insert
    --         "sunday" "" -- val.sunday
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias AssignInstanceRequest =
    { instanceId : String
    , layerIds : (List String)
    }


{-| undefined
-}
type alias AssignVolumeRequest =
    { volumeId : String
    , instanceId : Maybe String
    }


{-| undefined
-}
type alias AssociateElasticIpRequest =
    { elasticIp : String
    , instanceId : Maybe String
    }


{-| undefined
-}
type alias AttachElasticLoadBalancerRequest =
    { elasticLoadBalancerName : String
    , layerId : String
    }


{-| undefined
-}
type alias CloneStackRequest =
    { sourceStackId : String
    , name : Maybe String
    , region : Maybe String
    , vpcId : Maybe String
    , attributes : Maybe (Dict String String)
    , serviceRoleArn : String
    , defaultInstanceProfileArn : Maybe String
    , defaultOs : Maybe String
    , hostnameTheme : Maybe String
    , defaultAvailabilityZone : Maybe String
    , defaultSubnetId : Maybe String
    , customJson : Maybe String
    , configurationManager : Maybe StackConfigurationManager
    , chefConfiguration : Maybe ChefConfiguration
    , useCustomCookbooks : Maybe Bool
    , useOpsworksSecurityGroups : Maybe Bool
    , customCookbooksSource : Maybe Source
    , defaultSshKeyName : Maybe String
    , clonePermissions : Maybe Bool
    , cloneAppIds : Maybe (List String)
    , defaultRootDeviceType : Maybe RootDeviceType
    , agentVersion : Maybe String
    }


{-| undefined
-}
type alias CreateAppRequest =
    { stackId : String
    , shortname : Maybe String
    , name : String
    , description : Maybe String
    , dataSources : Maybe (List DataSource)
    , type_ : AppType
    , appSource : Maybe Source
    , domains : Maybe (List String)
    , enableSsl : Maybe Bool
    , sslConfiguration : Maybe SslConfiguration
    , attributes : Maybe (Dict String String)
    , environment : Maybe (List EnvironmentVariable)
    }


{-| undefined
-}
type alias CreateDeploymentRequest =
    { stackId : String
    , appId : Maybe String
    , instanceIds : Maybe (List String)
    , layerIds : Maybe (List String)
    , command : DeploymentCommand
    , comment : Maybe String
    , customJson : Maybe String
    }


{-| undefined
-}
type alias CreateInstanceRequest =
    { stackId : String
    , layerIds : (List String)
    , instanceType : String
    , autoScalingType : Maybe AutoScalingType
    , hostname : Maybe String
    , os : Maybe String
    , amiId : Maybe String
    , sshKeyName : Maybe String
    , availabilityZone : Maybe String
    , virtualizationType : Maybe String
    , subnetId : Maybe String
    , architecture : Maybe Architecture
    , rootDeviceType : Maybe RootDeviceType
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , installUpdatesOnBoot : Maybe Bool
    , ebsOptimized : Maybe Bool
    , agentVersion : Maybe String
    , tenancy : Maybe String
    }


{-| undefined
-}
type alias CreateLayerRequest =
    { stackId : String
    , type_ : LayerType
    , name : String
    , shortname : String
    , attributes : Maybe (Dict String String)
    , cloudWatchLogsConfiguration : Maybe CloudWatchLogsConfiguration
    , customInstanceProfileArn : Maybe String
    , customJson : Maybe String
    , customSecurityGroupIds : Maybe (List String)
    , packages : Maybe (List String)
    , volumeConfigurations : Maybe (List VolumeConfiguration)
    , enableAutoHealing : Maybe Bool
    , autoAssignElasticIps : Maybe Bool
    , autoAssignPublicIps : Maybe Bool
    , customRecipes : Maybe Recipes
    , installUpdatesOnBoot : Maybe Bool
    , useEbsOptimizedInstances : Maybe Bool
    , lifecycleEventConfiguration : Maybe LifecycleEventConfiguration
    }


{-| undefined
-}
type alias CreateStackRequest =
    { name : String
    , region : String
    , vpcId : Maybe String
    , attributes : Maybe (Dict String String)
    , serviceRoleArn : String
    , defaultInstanceProfileArn : String
    , defaultOs : Maybe String
    , hostnameTheme : Maybe String
    , defaultAvailabilityZone : Maybe String
    , defaultSubnetId : Maybe String
    , customJson : Maybe String
    , configurationManager : Maybe StackConfigurationManager
    , chefConfiguration : Maybe ChefConfiguration
    , useCustomCookbooks : Maybe Bool
    , useOpsworksSecurityGroups : Maybe Bool
    , customCookbooksSource : Maybe Source
    , defaultSshKeyName : Maybe String
    , defaultRootDeviceType : Maybe RootDeviceType
    , agentVersion : Maybe String
    }


{-| undefined
-}
type alias CreateUserProfileRequest =
    { iamUserArn : String
    , sshUsername : Maybe String
    , sshPublicKey : Maybe String
    , allowSelfManagement : Maybe Bool
    }


{-| undefined
-}
type alias DeleteAppRequest =
    { appId : String
    }


{-| undefined
-}
type alias DeleteInstanceRequest =
    { instanceId : String
    , deleteElasticIp : Maybe Bool
    , deleteVolumes : Maybe Bool
    }


{-| undefined
-}
type alias DeleteLayerRequest =
    { layerId : String
    }


{-| undefined
-}
type alias DeleteStackRequest =
    { stackId : String
    }


{-| undefined
-}
type alias DeleteUserProfileRequest =
    { iamUserArn : String
    }


{-| undefined
-}
type alias DeregisterEcsClusterRequest =
    { ecsClusterArn : String
    }


{-| undefined
-}
type alias DeregisterElasticIpRequest =
    { elasticIp : String
    }


{-| undefined
-}
type alias DeregisterInstanceRequest =
    { instanceId : String
    }


{-| undefined
-}
type alias DeregisterRdsDbInstanceRequest =
    { rdsDbInstanceArn : String
    }


{-| undefined
-}
type alias DeregisterVolumeRequest =
    { volumeId : String
    }


{-| undefined
-}
type alias DescribeAgentVersionsRequest =
    { stackId : Maybe String
    , configurationManager : Maybe StackConfigurationManager
    }


{-| undefined
-}
type alias DescribeAppsRequest =
    { stackId : Maybe String
    , appIds : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeCommandsRequest =
    { deploymentId : Maybe String
    , instanceId : Maybe String
    , commandIds : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeDeploymentsRequest =
    { stackId : Maybe String
    , appId : Maybe String
    , deploymentIds : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeEcsClustersRequest =
    { ecsClusterArns : Maybe (List String)
    , stackId : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias DescribeElasticIpsRequest =
    { instanceId : Maybe String
    , stackId : Maybe String
    , ips : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeElasticLoadBalancersRequest =
    { stackId : Maybe String
    , layerIds : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeInstancesRequest =
    { stackId : Maybe String
    , layerId : Maybe String
    , instanceIds : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeLayersRequest =
    { stackId : Maybe String
    , layerIds : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeLoadBasedAutoScalingRequest =
    { layerIds : (List String)
    }


{-| undefined
-}
type alias DescribePermissionsRequest =
    { iamUserArn : Maybe String
    , stackId : Maybe String
    }


{-| undefined
-}
type alias DescribeRaidArraysRequest =
    { instanceId : Maybe String
    , stackId : Maybe String
    , raidArrayIds : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeRdsDbInstancesRequest =
    { stackId : String
    , rdsDbInstanceArns : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeServiceErrorsRequest =
    { stackId : Maybe String
    , instanceId : Maybe String
    , serviceErrorIds : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeStackProvisioningParametersRequest =
    { stackId : String
    }


{-| undefined
-}
type alias DescribeStackSummaryRequest =
    { stackId : String
    }


{-| undefined
-}
type alias DescribeStacksRequest =
    { stackIds : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeTimeBasedAutoScalingRequest =
    { instanceIds : (List String)
    }


{-| undefined
-}
type alias DescribeUserProfilesRequest =
    { iamUserArns : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeVolumesRequest =
    { instanceId : Maybe String
    , stackId : Maybe String
    , raidArrayId : Maybe String
    , volumeIds : Maybe (List String)
    }


{-| undefined
-}
type alias DetachElasticLoadBalancerRequest =
    { elasticLoadBalancerName : String
    , layerId : String
    }


{-| undefined
-}
type alias DisassociateElasticIpRequest =
    { elasticIp : String
    }


{-| undefined
-}
type alias GetHostnameSuggestionRequest =
    { layerId : String
    }


{-| undefined
-}
type alias GrantAccessRequest =
    { instanceId : String
    , validForInMinutes : Maybe Int
    }


{-| undefined
-}
type alias ListTagsRequest =
    { resourceArn : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias RebootInstanceRequest =
    { instanceId : String
    }


{-| undefined
-}
type alias RegisterEcsClusterRequest =
    { ecsClusterArn : String
    , stackId : String
    }


{-| undefined
-}
type alias RegisterElasticIpRequest =
    { elasticIp : String
    , stackId : String
    }


{-| undefined
-}
type alias RegisterInstanceRequest =
    { stackId : String
    , hostname : Maybe String
    , publicIp : Maybe String
    , privateIp : Maybe String
    , rsaPublicKey : Maybe String
    , rsaPublicKeyFingerprint : Maybe String
    , instanceIdentity : Maybe InstanceIdentity
    }


{-| undefined
-}
type alias RegisterRdsDbInstanceRequest =
    { stackId : String
    , rdsDbInstanceArn : String
    , dbUser : String
    , dbPassword : String
    }


{-| undefined
-}
type alias RegisterVolumeRequest =
    { ec2VolumeId : Maybe String
    , stackId : String
    }


{-| undefined
-}
type alias SetLoadBasedAutoScalingRequest =
    { layerId : String
    , enable : Maybe Bool
    , upScaling : Maybe AutoScalingThresholds
    , downScaling : Maybe AutoScalingThresholds
    }


{-| undefined
-}
type alias SetPermissionRequest =
    { stackId : String
    , iamUserArn : String
    , allowSsh : Maybe Bool
    , allowSudo : Maybe Bool
    , level : Maybe String
    }


{-| undefined
-}
type alias SetTimeBasedAutoScalingRequest =
    { instanceId : String
    , autoScalingSchedule : Maybe WeeklyAutoScalingSchedule
    }


{-| undefined
-}
type alias StartInstanceRequest =
    { instanceId : String
    }


{-| undefined
-}
type alias StartStackRequest =
    { stackId : String
    }


{-| undefined
-}
type alias StopInstanceRequest =
    { instanceId : String
    , force : Maybe Bool
    }


{-| undefined
-}
type alias StopStackRequest =
    { stackId : String
    }


{-| undefined
-}
type alias TagResourceRequest =
    { resourceArn : String
    , tags : (Dict String String)
    }


{-| undefined
-}
type alias UnassignInstanceRequest =
    { instanceId : String
    }


{-| undefined
-}
type alias UnassignVolumeRequest =
    { volumeId : String
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { resourceArn : String
    , tagKeys : (List String)
    }


{-| undefined
-}
type alias UpdateAppRequest =
    { appId : String
    , name : Maybe String
    , description : Maybe String
    , dataSources : Maybe (List DataSource)
    , type_ : Maybe AppType
    , appSource : Maybe Source
    , domains : Maybe (List String)
    , enableSsl : Maybe Bool
    , sslConfiguration : Maybe SslConfiguration
    , attributes : Maybe (Dict String String)
    , environment : Maybe (List EnvironmentVariable)
    }


{-| undefined
-}
type alias UpdateElasticIpRequest =
    { elasticIp : String
    , name : Maybe String
    }


{-| undefined
-}
type alias UpdateInstanceRequest =
    { instanceId : String
    , layerIds : Maybe (List String)
    , instanceType : Maybe String
    , autoScalingType : Maybe AutoScalingType
    , hostname : Maybe String
    , os : Maybe String
    , amiId : Maybe String
    , sshKeyName : Maybe String
    , architecture : Maybe Architecture
    , installUpdatesOnBoot : Maybe Bool
    , ebsOptimized : Maybe Bool
    , agentVersion : Maybe String
    }


{-| undefined
-}
type alias UpdateLayerRequest =
    { layerId : String
    , name : Maybe String
    , shortname : Maybe String
    , attributes : Maybe (Dict String String)
    , cloudWatchLogsConfiguration : Maybe CloudWatchLogsConfiguration
    , customInstanceProfileArn : Maybe String
    , customJson : Maybe String
    , customSecurityGroupIds : Maybe (List String)
    , packages : Maybe (List String)
    , volumeConfigurations : Maybe (List VolumeConfiguration)
    , enableAutoHealing : Maybe Bool
    , autoAssignElasticIps : Maybe Bool
    , autoAssignPublicIps : Maybe Bool
    , customRecipes : Maybe Recipes
    , installUpdatesOnBoot : Maybe Bool
    , useEbsOptimizedInstances : Maybe Bool
    , lifecycleEventConfiguration : Maybe LifecycleEventConfiguration
    }


{-| undefined
-}
type alias UpdateMyUserProfileRequest =
    { sshPublicKey : Maybe String
    }


{-| undefined
-}
type alias UpdateRdsDbInstanceRequest =
    { rdsDbInstanceArn : String
    , dbUser : Maybe String
    , dbPassword : Maybe String
    }


{-| undefined
-}
type alias UpdateStackRequest =
    { stackId : String
    , name : Maybe String
    , attributes : Maybe (Dict String String)
    , serviceRoleArn : Maybe String
    , defaultInstanceProfileArn : Maybe String
    , defaultOs : Maybe String
    , hostnameTheme : Maybe String
    , defaultAvailabilityZone : Maybe String
    , defaultSubnetId : Maybe String
    , customJson : Maybe String
    , configurationManager : Maybe StackConfigurationManager
    , chefConfiguration : Maybe ChefConfiguration
    , useCustomCookbooks : Maybe Bool
    , customCookbooksSource : Maybe Source
    , defaultSshKeyName : Maybe String
    , defaultRootDeviceType : Maybe RootDeviceType
    , useOpsworksSecurityGroups : Maybe Bool
    , agentVersion : Maybe String
    }


{-| undefined
-}
type alias UpdateUserProfileRequest =
    { iamUserArn : String
    , sshUsername : Maybe String
    , sshPublicKey : Maybe String
    , allowSelfManagement : Maybe Bool
    }


{-| undefined
-}
type alias UpdateVolumeRequest =
    { volumeId : String
    , name : Maybe String
    , mountPoint : Maybe String
    }






agentVersionEncoder : AgentVersion -> JE.Value
agentVersionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stackConfigurationManagerEncoder)
            ("ConfigurationManager", data.configurationManager)
        
        
        |> JE.object






appEncoder : App -> JE.Value
appEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AppId", data.appId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Shortname", data.shortname)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (dataSourceEncoder))
            ("DataSources", data.dataSources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (appTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceEncoder)
            ("AppSource", data.appSource)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Domains", data.domains)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnableSsl", data.enableSsl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sslConfigurationEncoder)
            ("SslConfiguration", data.sslConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Attributes", data.attributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (environmentVariableEncoder))
            ("Environment", data.environment)
        
        
        |> JE.object


















assignInstanceRequestEncoder : AssignInstanceRequest -> JE.Value
assignInstanceRequestEncoder data =
    []
        
        
        |> (::) ("InstanceId", data.instanceId |> (JE.string))
        
        
        
        |> (::) ("LayerIds", data.layerIds |> (JE.list (JE.string)))
        
        
        |> JE.object






assignVolumeRequestEncoder : AssignVolumeRequest -> JE.Value
assignVolumeRequestEncoder data =
    []
        
        
        |> (::) ("VolumeId", data.volumeId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        |> JE.object






associateElasticIpRequestEncoder : AssociateElasticIpRequest -> JE.Value
associateElasticIpRequestEncoder data =
    []
        
        
        |> (::) ("ElasticIp", data.elasticIp |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        |> JE.object






attachElasticLoadBalancerRequestEncoder : AttachElasticLoadBalancerRequest -> JE.Value
attachElasticLoadBalancerRequestEncoder data =
    []
        
        
        |> (::) ("ElasticLoadBalancerName", data.elasticLoadBalancerName |> (JE.string))
        
        
        
        |> (::) ("LayerId", data.layerId |> (JE.string))
        
        
        |> JE.object






autoScalingThresholdsEncoder : AutoScalingThresholds -> JE.Value
autoScalingThresholdsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("InstanceCount", data.instanceCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ThresholdsWaitTime", data.thresholdsWaitTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("IgnoreMetricsTime", data.ignoreMetricsTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("CpuThreshold", data.cpuThreshold)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("MemoryThreshold", data.memoryThreshold)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("LoadThreshold", data.loadThreshold)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Alarms", data.alarms)
        
        
        |> JE.object










blockDeviceMappingEncoder : BlockDeviceMapping -> JE.Value
blockDeviceMappingEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DeviceName", data.deviceName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NoDevice", data.noDevice)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VirtualName", data.virtualName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (ebsBlockDeviceEncoder)
            ("Ebs", data.ebs)
        
        
        |> JE.object






chefConfigurationEncoder : ChefConfiguration -> JE.Value
chefConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("ManageBerkshelf", data.manageBerkshelf)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BerkshelfVersion", data.berkshelfVersion)
        
        
        |> JE.object






cloneStackRequestEncoder : CloneStackRequest -> JE.Value
cloneStackRequestEncoder data =
    []
        
        
        |> (::) ("SourceStackId", data.sourceStackId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VpcId", data.vpcId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Attributes", data.attributes)
        
        
        
        |> (::) ("ServiceRoleArn", data.serviceRoleArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultInstanceProfileArn", data.defaultInstanceProfileArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultOs", data.defaultOs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HostnameTheme", data.hostnameTheme)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultAvailabilityZone", data.defaultAvailabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultSubnetId", data.defaultSubnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomJson", data.customJson)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stackConfigurationManagerEncoder)
            ("ConfigurationManager", data.configurationManager)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (chefConfigurationEncoder)
            ("ChefConfiguration", data.chefConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UseCustomCookbooks", data.useCustomCookbooks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UseOpsworksSecurityGroups", data.useOpsworksSecurityGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceEncoder)
            ("CustomCookbooksSource", data.customCookbooksSource)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultSshKeyName", data.defaultSshKeyName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("ClonePermissions", data.clonePermissions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("CloneAppIds", data.cloneAppIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (rootDeviceTypeToString >> JE.string)
            ("DefaultRootDeviceType", data.defaultRootDeviceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AgentVersion", data.agentVersion)
        
        
        |> JE.object






cloneStackResultEncoder : CloneStackResult -> JE.Value
cloneStackResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        |> JE.object






cloudWatchLogsConfigurationEncoder : CloudWatchLogsConfiguration -> JE.Value
cloudWatchLogsConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enabled", data.enabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (cloudWatchLogsLogStreamEncoder))
            ("LogStreams", data.logStreams)
        
        
        |> JE.object














cloudWatchLogsLogStreamEncoder : CloudWatchLogsLogStream -> JE.Value
cloudWatchLogsLogStreamEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogGroupName", data.logGroupName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DatetimeFormat", data.datetimeFormat)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLogsTimeZoneToString >> JE.string)
            ("TimeZone", data.timeZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("File", data.file)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FileFingerprintLines", data.fileFingerprintLines)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MultiLineStartPattern", data.multiLineStartPattern)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLogsInitialPositionToString >> JE.string)
            ("InitialPosition", data.initialPosition)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLogsEncodingToString >> JE.string)
            ("Encoding", data.encoding)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("BufferDuration", data.bufferDuration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("BatchCount", data.batchCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("BatchSize", data.batchSize)
        
        
        |> JE.object










commandEncoder : Command -> JE.Value
commandEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CommandId", data.commandId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DeploymentId", data.deploymentId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcknowledgedAt", data.acknowledgedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CompletedAt", data.completedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ExitCode", data.exitCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogUrl", data.logUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Type", data.type_)
        
        
        |> JE.object






createAppRequestEncoder : CreateAppRequest -> JE.Value
createAppRequestEncoder data =
    []
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Shortname", data.shortname)
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (dataSourceEncoder))
            ("DataSources", data.dataSources)
        
        
        
        |> (::) ("Type", data.type_ |> (appTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceEncoder)
            ("AppSource", data.appSource)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Domains", data.domains)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnableSsl", data.enableSsl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sslConfigurationEncoder)
            ("SslConfiguration", data.sslConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Attributes", data.attributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (environmentVariableEncoder))
            ("Environment", data.environment)
        
        
        |> JE.object






createAppResultEncoder : CreateAppResult -> JE.Value
createAppResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AppId", data.appId)
        
        
        |> JE.object






createDeploymentRequestEncoder : CreateDeploymentRequest -> JE.Value
createDeploymentRequestEncoder data =
    []
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AppId", data.appId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("InstanceIds", data.instanceIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("LayerIds", data.layerIds)
        
        
        
        |> (::) ("Command", data.command |> (deploymentCommandEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Comment", data.comment)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomJson", data.customJson)
        
        
        |> JE.object






createDeploymentResultEncoder : CreateDeploymentResult -> JE.Value
createDeploymentResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DeploymentId", data.deploymentId)
        
        
        |> JE.object






createInstanceRequestEncoder : CreateInstanceRequest -> JE.Value
createInstanceRequestEncoder data =
    []
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        
        |> (::) ("LayerIds", data.layerIds |> (JE.list (JE.string)))
        
        
        
        |> (::) ("InstanceType", data.instanceType |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (autoScalingTypeToString >> JE.string)
            ("AutoScalingType", data.autoScalingType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Hostname", data.hostname)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Os", data.os)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AmiId", data.amiId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshKeyName", data.sshKeyName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AvailabilityZone", data.availabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VirtualizationType", data.virtualizationType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SubnetId", data.subnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (architectureToString >> JE.string)
            ("Architecture", data.architecture)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (rootDeviceTypeToString >> JE.string)
            ("RootDeviceType", data.rootDeviceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (blockDeviceMappingEncoder))
            ("BlockDeviceMappings", data.blockDeviceMappings)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("InstallUpdatesOnBoot", data.installUpdatesOnBoot)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EbsOptimized", data.ebsOptimized)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AgentVersion", data.agentVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Tenancy", data.tenancy)
        
        
        |> JE.object






createInstanceResultEncoder : CreateInstanceResult -> JE.Value
createInstanceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        |> JE.object






createLayerRequestEncoder : CreateLayerRequest -> JE.Value
createLayerRequestEncoder data =
    []
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        
        |> (::) ("Type", data.type_ |> (layerTypeToString >> JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("Shortname", data.shortname |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Attributes", data.attributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLogsConfigurationEncoder)
            ("CloudWatchLogsConfiguration", data.cloudWatchLogsConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomInstanceProfileArn", data.customInstanceProfileArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomJson", data.customJson)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("CustomSecurityGroupIds", data.customSecurityGroupIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Packages", data.packages)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (volumeConfigurationEncoder))
            ("VolumeConfigurations", data.volumeConfigurations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnableAutoHealing", data.enableAutoHealing)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AutoAssignElasticIps", data.autoAssignElasticIps)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AutoAssignPublicIps", data.autoAssignPublicIps)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (recipesEncoder)
            ("CustomRecipes", data.customRecipes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("InstallUpdatesOnBoot", data.installUpdatesOnBoot)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UseEbsOptimizedInstances", data.useEbsOptimizedInstances)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lifecycleEventConfigurationEncoder)
            ("LifecycleEventConfiguration", data.lifecycleEventConfiguration)
        
        
        |> JE.object






createLayerResultEncoder : CreateLayerResult -> JE.Value
createLayerResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LayerId", data.layerId)
        
        
        |> JE.object






createStackRequestEncoder : CreateStackRequest -> JE.Value
createStackRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("Region", data.region |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VpcId", data.vpcId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Attributes", data.attributes)
        
        
        
        |> (::) ("ServiceRoleArn", data.serviceRoleArn |> (JE.string))
        
        
        
        |> (::) ("DefaultInstanceProfileArn", data.defaultInstanceProfileArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultOs", data.defaultOs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HostnameTheme", data.hostnameTheme)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultAvailabilityZone", data.defaultAvailabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultSubnetId", data.defaultSubnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomJson", data.customJson)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stackConfigurationManagerEncoder)
            ("ConfigurationManager", data.configurationManager)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (chefConfigurationEncoder)
            ("ChefConfiguration", data.chefConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UseCustomCookbooks", data.useCustomCookbooks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UseOpsworksSecurityGroups", data.useOpsworksSecurityGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceEncoder)
            ("CustomCookbooksSource", data.customCookbooksSource)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultSshKeyName", data.defaultSshKeyName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (rootDeviceTypeToString >> JE.string)
            ("DefaultRootDeviceType", data.defaultRootDeviceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AgentVersion", data.agentVersion)
        
        
        |> JE.object






createStackResultEncoder : CreateStackResult -> JE.Value
createStackResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        |> JE.object






createUserProfileRequestEncoder : CreateUserProfileRequest -> JE.Value
createUserProfileRequestEncoder data =
    []
        
        
        |> (::) ("IamUserArn", data.iamUserArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshUsername", data.sshUsername)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshPublicKey", data.sshPublicKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AllowSelfManagement", data.allowSelfManagement)
        
        
        |> JE.object






createUserProfileResultEncoder : CreateUserProfileResult -> JE.Value
createUserProfileResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IamUserArn", data.iamUserArn)
        
        
        |> JE.object






dataSourceEncoder : DataSource -> JE.Value
dataSourceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DatabaseName", data.databaseName)
        
        
        |> JE.object






deleteAppRequestEncoder : DeleteAppRequest -> JE.Value
deleteAppRequestEncoder data =
    []
        
        
        |> (::) ("AppId", data.appId |> (JE.string))
        
        
        |> JE.object






deleteInstanceRequestEncoder : DeleteInstanceRequest -> JE.Value
deleteInstanceRequestEncoder data =
    []
        
        
        |> (::) ("InstanceId", data.instanceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("DeleteElasticIp", data.deleteElasticIp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("DeleteVolumes", data.deleteVolumes)
        
        
        |> JE.object






deleteLayerRequestEncoder : DeleteLayerRequest -> JE.Value
deleteLayerRequestEncoder data =
    []
        
        
        |> (::) ("LayerId", data.layerId |> (JE.string))
        
        
        |> JE.object






deleteStackRequestEncoder : DeleteStackRequest -> JE.Value
deleteStackRequestEncoder data =
    []
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        |> JE.object






deleteUserProfileRequestEncoder : DeleteUserProfileRequest -> JE.Value
deleteUserProfileRequestEncoder data =
    []
        
        
        |> (::) ("IamUserArn", data.iamUserArn |> (JE.string))
        
        
        |> JE.object






deploymentEncoder : Deployment -> JE.Value
deploymentEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DeploymentId", data.deploymentId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AppId", data.appId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CompletedAt", data.completedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Duration", data.duration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IamUserArn", data.iamUserArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Comment", data.comment)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deploymentCommandEncoder)
            ("Command", data.command)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomJson", data.customJson)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("InstanceIds", data.instanceIds)
        
        
        |> JE.object






deploymentCommandEncoder : DeploymentCommand -> JE.Value
deploymentCommandEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (deploymentCommandNameToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.list (JE.string)))
            ("Args", data.args)
        
        
        |> JE.object










deregisterEcsClusterRequestEncoder : DeregisterEcsClusterRequest -> JE.Value
deregisterEcsClusterRequestEncoder data =
    []
        
        
        |> (::) ("EcsClusterArn", data.ecsClusterArn |> (JE.string))
        
        
        |> JE.object






deregisterElasticIpRequestEncoder : DeregisterElasticIpRequest -> JE.Value
deregisterElasticIpRequestEncoder data =
    []
        
        
        |> (::) ("ElasticIp", data.elasticIp |> (JE.string))
        
        
        |> JE.object






deregisterInstanceRequestEncoder : DeregisterInstanceRequest -> JE.Value
deregisterInstanceRequestEncoder data =
    []
        
        
        |> (::) ("InstanceId", data.instanceId |> (JE.string))
        
        
        |> JE.object






deregisterRdsDbInstanceRequestEncoder : DeregisterRdsDbInstanceRequest -> JE.Value
deregisterRdsDbInstanceRequestEncoder data =
    []
        
        
        |> (::) ("RdsDbInstanceArn", data.rdsDbInstanceArn |> (JE.string))
        
        
        |> JE.object






deregisterVolumeRequestEncoder : DeregisterVolumeRequest -> JE.Value
deregisterVolumeRequestEncoder data =
    []
        
        
        |> (::) ("VolumeId", data.volumeId |> (JE.string))
        
        
        |> JE.object






describeAgentVersionsRequestEncoder : DescribeAgentVersionsRequest -> JE.Value
describeAgentVersionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stackConfigurationManagerEncoder)
            ("ConfigurationManager", data.configurationManager)
        
        
        |> JE.object






describeAgentVersionsResultEncoder : DescribeAgentVersionsResult -> JE.Value
describeAgentVersionsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (agentVersionEncoder))
            ("AgentVersions", data.agentVersions)
        
        
        |> JE.object






describeAppsRequestEncoder : DescribeAppsRequest -> JE.Value
describeAppsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("AppIds", data.appIds)
        
        
        |> JE.object






describeAppsResultEncoder : DescribeAppsResult -> JE.Value
describeAppsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (appEncoder))
            ("Apps", data.apps)
        
        
        |> JE.object






describeCommandsRequestEncoder : DescribeCommandsRequest -> JE.Value
describeCommandsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DeploymentId", data.deploymentId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("CommandIds", data.commandIds)
        
        
        |> JE.object






describeCommandsResultEncoder : DescribeCommandsResult -> JE.Value
describeCommandsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (commandEncoder))
            ("Commands", data.commands)
        
        
        |> JE.object






describeDeploymentsRequestEncoder : DescribeDeploymentsRequest -> JE.Value
describeDeploymentsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AppId", data.appId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("DeploymentIds", data.deploymentIds)
        
        
        |> JE.object






describeDeploymentsResultEncoder : DescribeDeploymentsResult -> JE.Value
describeDeploymentsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (deploymentEncoder))
            ("Deployments", data.deployments)
        
        
        |> JE.object






describeEcsClustersRequestEncoder : DescribeEcsClustersRequest -> JE.Value
describeEcsClustersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("EcsClusterArns", data.ecsClusterArns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






describeEcsClustersResultEncoder : DescribeEcsClustersResult -> JE.Value
describeEcsClustersResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (ecsClusterEncoder))
            ("EcsClusters", data.ecsClusters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeElasticIpsRequestEncoder : DescribeElasticIpsRequest -> JE.Value
describeElasticIpsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Ips", data.ips)
        
        
        |> JE.object






describeElasticIpsResultEncoder : DescribeElasticIpsResult -> JE.Value
describeElasticIpsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (elasticIpEncoder))
            ("ElasticIps", data.elasticIps)
        
        
        |> JE.object






describeElasticLoadBalancersRequestEncoder : DescribeElasticLoadBalancersRequest -> JE.Value
describeElasticLoadBalancersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("LayerIds", data.layerIds)
        
        
        |> JE.object






describeElasticLoadBalancersResultEncoder : DescribeElasticLoadBalancersResult -> JE.Value
describeElasticLoadBalancersResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (elasticLoadBalancerEncoder))
            ("ElasticLoadBalancers", data.elasticLoadBalancers)
        
        
        |> JE.object






describeInstancesRequestEncoder : DescribeInstancesRequest -> JE.Value
describeInstancesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LayerId", data.layerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("InstanceIds", data.instanceIds)
        
        
        |> JE.object






describeInstancesResultEncoder : DescribeInstancesResult -> JE.Value
describeInstancesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (instanceEncoder))
            ("Instances", data.instances)
        
        
        |> JE.object






describeLayersRequestEncoder : DescribeLayersRequest -> JE.Value
describeLayersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("LayerIds", data.layerIds)
        
        
        |> JE.object






describeLayersResultEncoder : DescribeLayersResult -> JE.Value
describeLayersResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (layerEncoder))
            ("Layers", data.layers)
        
        
        |> JE.object






describeLoadBasedAutoScalingRequestEncoder : DescribeLoadBasedAutoScalingRequest -> JE.Value
describeLoadBasedAutoScalingRequestEncoder data =
    []
        
        
        |> (::) ("LayerIds", data.layerIds |> (JE.list (JE.string)))
        
        
        |> JE.object






describeLoadBasedAutoScalingResultEncoder : DescribeLoadBasedAutoScalingResult -> JE.Value
describeLoadBasedAutoScalingResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (loadBasedAutoScalingConfigurationEncoder))
            ("LoadBasedAutoScalingConfigurations", data.loadBasedAutoScalingConfigurations)
        
        
        |> JE.object






describeMyUserProfileResultEncoder : DescribeMyUserProfileResult -> JE.Value
describeMyUserProfileResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (selfUserProfileEncoder)
            ("UserProfile", data.userProfile)
        
        
        |> JE.object






describeOperatingSystemsResponseEncoder : DescribeOperatingSystemsResponse -> JE.Value
describeOperatingSystemsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operatingSystemEncoder))
            ("OperatingSystems", data.operatingSystems)
        
        
        |> JE.object






describePermissionsRequestEncoder : DescribePermissionsRequest -> JE.Value
describePermissionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IamUserArn", data.iamUserArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        |> JE.object






describePermissionsResultEncoder : DescribePermissionsResult -> JE.Value
describePermissionsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (permissionEncoder))
            ("Permissions", data.permissions)
        
        
        |> JE.object






describeRaidArraysRequestEncoder : DescribeRaidArraysRequest -> JE.Value
describeRaidArraysRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("RaidArrayIds", data.raidArrayIds)
        
        
        |> JE.object






describeRaidArraysResultEncoder : DescribeRaidArraysResult -> JE.Value
describeRaidArraysResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (raidArrayEncoder))
            ("RaidArrays", data.raidArrays)
        
        
        |> JE.object






describeRdsDbInstancesRequestEncoder : DescribeRdsDbInstancesRequest -> JE.Value
describeRdsDbInstancesRequestEncoder data =
    []
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("RdsDbInstanceArns", data.rdsDbInstanceArns)
        
        
        |> JE.object






describeRdsDbInstancesResultEncoder : DescribeRdsDbInstancesResult -> JE.Value
describeRdsDbInstancesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (rdsDbInstanceEncoder))
            ("RdsDbInstances", data.rdsDbInstances)
        
        
        |> JE.object






describeServiceErrorsRequestEncoder : DescribeServiceErrorsRequest -> JE.Value
describeServiceErrorsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ServiceErrorIds", data.serviceErrorIds)
        
        
        |> JE.object






describeServiceErrorsResultEncoder : DescribeServiceErrorsResult -> JE.Value
describeServiceErrorsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serviceErrorEncoder))
            ("ServiceErrors", data.serviceErrors)
        
        
        |> JE.object






describeStackProvisioningParametersRequestEncoder : DescribeStackProvisioningParametersRequest -> JE.Value
describeStackProvisioningParametersRequestEncoder data =
    []
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        |> JE.object






describeStackProvisioningParametersResultEncoder : DescribeStackProvisioningParametersResult -> JE.Value
describeStackProvisioningParametersResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AgentInstallerUrl", data.agentInstallerUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Parameters", data.parameters)
        
        
        |> JE.object






describeStackSummaryRequestEncoder : DescribeStackSummaryRequest -> JE.Value
describeStackSummaryRequestEncoder data =
    []
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        |> JE.object






describeStackSummaryResultEncoder : DescribeStackSummaryResult -> JE.Value
describeStackSummaryResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (stackSummaryEncoder)
            ("StackSummary", data.stackSummary)
        
        
        |> JE.object






describeStacksRequestEncoder : DescribeStacksRequest -> JE.Value
describeStacksRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("StackIds", data.stackIds)
        
        
        |> JE.object






describeStacksResultEncoder : DescribeStacksResult -> JE.Value
describeStacksResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (stackEncoder))
            ("Stacks", data.stacks)
        
        
        |> JE.object






describeTimeBasedAutoScalingRequestEncoder : DescribeTimeBasedAutoScalingRequest -> JE.Value
describeTimeBasedAutoScalingRequestEncoder data =
    []
        
        
        |> (::) ("InstanceIds", data.instanceIds |> (JE.list (JE.string)))
        
        
        |> JE.object






describeTimeBasedAutoScalingResultEncoder : DescribeTimeBasedAutoScalingResult -> JE.Value
describeTimeBasedAutoScalingResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (timeBasedAutoScalingConfigurationEncoder))
            ("TimeBasedAutoScalingConfigurations", data.timeBasedAutoScalingConfigurations)
        
        
        |> JE.object






describeUserProfilesRequestEncoder : DescribeUserProfilesRequest -> JE.Value
describeUserProfilesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("IamUserArns", data.iamUserArns)
        
        
        |> JE.object






describeUserProfilesResultEncoder : DescribeUserProfilesResult -> JE.Value
describeUserProfilesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (userProfileEncoder))
            ("UserProfiles", data.userProfiles)
        
        
        |> JE.object






describeVolumesRequestEncoder : DescribeVolumesRequest -> JE.Value
describeVolumesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RaidArrayId", data.raidArrayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("VolumeIds", data.volumeIds)
        
        
        |> JE.object






describeVolumesResultEncoder : DescribeVolumesResult -> JE.Value
describeVolumesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (volumeEncoder))
            ("Volumes", data.volumes)
        
        
        |> JE.object






detachElasticLoadBalancerRequestEncoder : DetachElasticLoadBalancerRequest -> JE.Value
detachElasticLoadBalancerRequestEncoder data =
    []
        
        
        |> (::) ("ElasticLoadBalancerName", data.elasticLoadBalancerName |> (JE.string))
        
        
        
        |> (::) ("LayerId", data.layerId |> (JE.string))
        
        
        |> JE.object






disassociateElasticIpRequestEncoder : DisassociateElasticIpRequest -> JE.Value
disassociateElasticIpRequestEncoder data =
    []
        
        
        |> (::) ("ElasticIp", data.elasticIp |> (JE.string))
        
        
        |> JE.object






ebsBlockDeviceEncoder : EbsBlockDevice -> JE.Value
ebsBlockDeviceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SnapshotId", data.snapshotId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Iops", data.iops)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("VolumeSize", data.volumeSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (volumeTypeToString >> JE.string)
            ("VolumeType", data.volumeType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("DeleteOnTermination", data.deleteOnTermination)
        
        
        |> JE.object






ecsClusterEncoder : EcsCluster -> JE.Value
ecsClusterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EcsClusterArn", data.ecsClusterArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EcsClusterName", data.ecsClusterName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RegisteredAt", data.registeredAt)
        
        
        |> JE.object






elasticIpEncoder : ElasticIp -> JE.Value
elasticIpEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Ip", data.ip)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Domain", data.domain)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        |> JE.object






elasticLoadBalancerEncoder : ElasticLoadBalancer -> JE.Value
elasticLoadBalancerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ElasticLoadBalancerName", data.elasticLoadBalancerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DnsName", data.dnsName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LayerId", data.layerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VpcId", data.vpcId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("AvailabilityZones", data.availabilityZones)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SubnetIds", data.subnetIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Ec2InstanceIds", data.ec2InstanceIds)
        
        
        |> JE.object






environmentVariableEncoder : EnvironmentVariable -> JE.Value
environmentVariableEncoder data =
    []
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> (::) ("Value", data.value |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Secure", data.secure)
        
        
        |> JE.object






getHostnameSuggestionRequestEncoder : GetHostnameSuggestionRequest -> JE.Value
getHostnameSuggestionRequestEncoder data =
    []
        
        
        |> (::) ("LayerId", data.layerId |> (JE.string))
        
        
        |> JE.object






getHostnameSuggestionResultEncoder : GetHostnameSuggestionResult -> JE.Value
getHostnameSuggestionResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LayerId", data.layerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Hostname", data.hostname)
        
        
        |> JE.object






grantAccessRequestEncoder : GrantAccessRequest -> JE.Value
grantAccessRequestEncoder data =
    []
        
        
        |> (::) ("InstanceId", data.instanceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ValidForInMinutes", data.validForInMinutes)
        
        
        |> JE.object






grantAccessResultEncoder : GrantAccessResult -> JE.Value
grantAccessResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (temporaryCredentialEncoder)
            ("TemporaryCredential", data.temporaryCredential)
        
        
        |> JE.object






instanceEncoder : Instance -> JE.Value
instanceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AgentVersion", data.agentVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AmiId", data.amiId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (architectureToString >> JE.string)
            ("Architecture", data.architecture)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (autoScalingTypeToString >> JE.string)
            ("AutoScalingType", data.autoScalingType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AvailabilityZone", data.availabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (blockDeviceMappingEncoder))
            ("BlockDeviceMappings", data.blockDeviceMappings)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EbsOptimized", data.ebsOptimized)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Ec2InstanceId", data.ec2InstanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EcsClusterArn", data.ecsClusterArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EcsContainerInstanceArn", data.ecsContainerInstanceArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ElasticIp", data.elasticIp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Hostname", data.hostname)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InfrastructureClass", data.infrastructureClass)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("InstallUpdatesOnBoot", data.installUpdatesOnBoot)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceProfileArn", data.instanceProfileArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceType", data.instanceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LastServiceErrorId", data.lastServiceErrorId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("LayerIds", data.layerIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Os", data.os)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Platform", data.platform)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PrivateDns", data.privateDns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PrivateIp", data.privateIp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PublicDns", data.publicDns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PublicIp", data.publicIp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RegisteredBy", data.registeredBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ReportedAgentVersion", data.reportedAgentVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (reportedOsEncoder)
            ("ReportedOs", data.reportedOs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (rootDeviceTypeToString >> JE.string)
            ("RootDeviceType", data.rootDeviceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RootDeviceVolumeId", data.rootDeviceVolumeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SecurityGroupIds", data.securityGroupIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshHostDsaKeyFingerprint", data.sshHostDsaKeyFingerprint)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshHostRsaKeyFingerprint", data.sshHostRsaKeyFingerprint)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshKeyName", data.sshKeyName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SubnetId", data.subnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Tenancy", data.tenancy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (virtualizationTypeToString >> JE.string)
            ("VirtualizationType", data.virtualizationType)
        
        
        |> JE.object






instanceIdentityEncoder : InstanceIdentity -> JE.Value
instanceIdentityEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Document", data.document)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Signature", data.signature)
        
        
        |> JE.object






instancesCountEncoder : InstancesCount -> JE.Value
instancesCountEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Assigning", data.assigning)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Booting", data.booting)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ConnectionLost", data.connectionLost)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Deregistering", data.deregistering)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Online", data.online)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Pending", data.pending)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Rebooting", data.rebooting)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Registered", data.registered)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Registering", data.registering)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Requested", data.requested)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RunningSetup", data.runningSetup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("SetupFailed", data.setupFailed)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ShuttingDown", data.shuttingDown)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StartFailed", data.startFailed)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StopFailed", data.stopFailed)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Stopped", data.stopped)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Stopping", data.stopping)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Terminated", data.terminated)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Terminating", data.terminating)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Unassigning", data.unassigning)
        
        
        |> JE.object






layerEncoder : Layer -> JE.Value
layerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LayerId", data.layerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (layerTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Shortname", data.shortname)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Attributes", data.attributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLogsConfigurationEncoder)
            ("CloudWatchLogsConfiguration", data.cloudWatchLogsConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomInstanceProfileArn", data.customInstanceProfileArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomJson", data.customJson)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("CustomSecurityGroupIds", data.customSecurityGroupIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("DefaultSecurityGroupNames", data.defaultSecurityGroupNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Packages", data.packages)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (volumeConfigurationEncoder))
            ("VolumeConfigurations", data.volumeConfigurations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnableAutoHealing", data.enableAutoHealing)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AutoAssignElasticIps", data.autoAssignElasticIps)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AutoAssignPublicIps", data.autoAssignPublicIps)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (recipesEncoder)
            ("DefaultRecipes", data.defaultRecipes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (recipesEncoder)
            ("CustomRecipes", data.customRecipes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("InstallUpdatesOnBoot", data.installUpdatesOnBoot)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UseEbsOptimizedInstances", data.useEbsOptimizedInstances)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lifecycleEventConfigurationEncoder)
            ("LifecycleEventConfiguration", data.lifecycleEventConfiguration)
        
        
        |> JE.object














lifecycleEventConfigurationEncoder : LifecycleEventConfiguration -> JE.Value
lifecycleEventConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (shutdownEventConfigurationEncoder)
            ("Shutdown", data.shutdown)
        
        
        |> JE.object






listTagsRequestEncoder : ListTagsRequest -> JE.Value
listTagsRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listTagsResultEncoder : ListTagsResult -> JE.Value
listTagsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






loadBasedAutoScalingConfigurationEncoder : LoadBasedAutoScalingConfiguration -> JE.Value
loadBasedAutoScalingConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LayerId", data.layerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enable", data.enable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (autoScalingThresholdsEncoder)
            ("UpScaling", data.upScaling)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (autoScalingThresholdsEncoder)
            ("DownScaling", data.downScaling)
        
        
        |> JE.object






operatingSystemEncoder : OperatingSystem -> JE.Value
operatingSystemEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operatingSystemConfigurationManagerEncoder))
            ("ConfigurationManagers", data.configurationManagers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ReportedName", data.reportedName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ReportedVersion", data.reportedVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Supported", data.supported)
        
        
        |> JE.object






operatingSystemConfigurationManagerEncoder : OperatingSystemConfigurationManager -> JE.Value
operatingSystemConfigurationManagerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Version", data.version)
        
        
        |> JE.object






permissionEncoder : Permission -> JE.Value
permissionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IamUserArn", data.iamUserArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AllowSsh", data.allowSsh)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AllowSudo", data.allowSudo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Level", data.level)
        
        
        |> JE.object






raidArrayEncoder : RaidArray -> JE.Value
raidArrayEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RaidArrayId", data.raidArrayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RaidLevel", data.raidLevel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfDisks", data.numberOfDisks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Size", data.size)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Device", data.device)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MountPoint", data.mountPoint)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AvailabilityZone", data.availabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VolumeType", data.volumeType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Iops", data.iops)
        
        
        |> JE.object






rdsDbInstanceEncoder : RdsDbInstance -> JE.Value
rdsDbInstanceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RdsDbInstanceArn", data.rdsDbInstanceArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DbInstanceIdentifier", data.dbInstanceIdentifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DbUser", data.dbUser)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DbPassword", data.dbPassword)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Address", data.address)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Engine", data.engine)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("MissingOnRds", data.missingOnRds)
        
        
        |> JE.object






rebootInstanceRequestEncoder : RebootInstanceRequest -> JE.Value
rebootInstanceRequestEncoder data =
    []
        
        
        |> (::) ("InstanceId", data.instanceId |> (JE.string))
        
        
        |> JE.object






recipesEncoder : Recipes -> JE.Value
recipesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Setup", data.setup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Configure", data.configure)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Deploy", data.deploy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Undeploy", data.undeploy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Shutdown", data.shutdown)
        
        
        |> JE.object






registerEcsClusterRequestEncoder : RegisterEcsClusterRequest -> JE.Value
registerEcsClusterRequestEncoder data =
    []
        
        
        |> (::) ("EcsClusterArn", data.ecsClusterArn |> (JE.string))
        
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        |> JE.object






registerEcsClusterResultEncoder : RegisterEcsClusterResult -> JE.Value
registerEcsClusterResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EcsClusterArn", data.ecsClusterArn)
        
        
        |> JE.object






registerElasticIpRequestEncoder : RegisterElasticIpRequest -> JE.Value
registerElasticIpRequestEncoder data =
    []
        
        
        |> (::) ("ElasticIp", data.elasticIp |> (JE.string))
        
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        |> JE.object






registerElasticIpResultEncoder : RegisterElasticIpResult -> JE.Value
registerElasticIpResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ElasticIp", data.elasticIp)
        
        
        |> JE.object






registerInstanceRequestEncoder : RegisterInstanceRequest -> JE.Value
registerInstanceRequestEncoder data =
    []
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Hostname", data.hostname)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PublicIp", data.publicIp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PrivateIp", data.privateIp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RsaPublicKey", data.rsaPublicKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RsaPublicKeyFingerprint", data.rsaPublicKeyFingerprint)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceIdentityEncoder)
            ("InstanceIdentity", data.instanceIdentity)
        
        
        |> JE.object






registerInstanceResultEncoder : RegisterInstanceResult -> JE.Value
registerInstanceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        |> JE.object






registerRdsDbInstanceRequestEncoder : RegisterRdsDbInstanceRequest -> JE.Value
registerRdsDbInstanceRequestEncoder data =
    []
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        
        |> (::) ("RdsDbInstanceArn", data.rdsDbInstanceArn |> (JE.string))
        
        
        
        |> (::) ("DbUser", data.dbUser |> (JE.string))
        
        
        
        |> (::) ("DbPassword", data.dbPassword |> (JE.string))
        
        
        |> JE.object






registerVolumeRequestEncoder : RegisterVolumeRequest -> JE.Value
registerVolumeRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Ec2VolumeId", data.ec2VolumeId)
        
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        |> JE.object






registerVolumeResultEncoder : RegisterVolumeResult -> JE.Value
registerVolumeResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VolumeId", data.volumeId)
        
        
        |> JE.object






reportedOsEncoder : ReportedOs -> JE.Value
reportedOsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Family", data.family)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Version", data.version)
        
        
        |> JE.object










selfUserProfileEncoder : SelfUserProfile -> JE.Value
selfUserProfileEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IamUserArn", data.iamUserArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshUsername", data.sshUsername)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshPublicKey", data.sshPublicKey)
        
        
        |> JE.object






serviceErrorEncoder : ServiceError -> JE.Value
serviceErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ServiceErrorId", data.serviceErrorId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedAt", data.createdAt)
        
        
        |> JE.object






setLoadBasedAutoScalingRequestEncoder : SetLoadBasedAutoScalingRequest -> JE.Value
setLoadBasedAutoScalingRequestEncoder data =
    []
        
        
        |> (::) ("LayerId", data.layerId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enable", data.enable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (autoScalingThresholdsEncoder)
            ("UpScaling", data.upScaling)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (autoScalingThresholdsEncoder)
            ("DownScaling", data.downScaling)
        
        
        |> JE.object






setPermissionRequestEncoder : SetPermissionRequest -> JE.Value
setPermissionRequestEncoder data =
    []
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        
        |> (::) ("IamUserArn", data.iamUserArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AllowSsh", data.allowSsh)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AllowSudo", data.allowSudo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Level", data.level)
        
        
        |> JE.object






setTimeBasedAutoScalingRequestEncoder : SetTimeBasedAutoScalingRequest -> JE.Value
setTimeBasedAutoScalingRequestEncoder data =
    []
        
        
        |> (::) ("InstanceId", data.instanceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (weeklyAutoScalingScheduleEncoder)
            ("AutoScalingSchedule", data.autoScalingSchedule)
        
        
        |> JE.object






shutdownEventConfigurationEncoder : ShutdownEventConfiguration -> JE.Value
shutdownEventConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ExecutionTimeout", data.executionTimeout)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("DelayUntilElbConnectionsDrained", data.delayUntilElbConnectionsDrained)
        
        
        |> JE.object






sourceEncoder : Source -> JE.Value
sourceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Url", data.url)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Username", data.username)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Password", data.password)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshKey", data.sshKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Revision", data.revision)
        
        
        |> JE.object










sslConfigurationEncoder : SslConfiguration -> JE.Value
sslConfigurationEncoder data =
    []
        
        
        |> (::) ("Certificate", data.certificate |> (JE.string))
        
        
        
        |> (::) ("PrivateKey", data.privateKey |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Chain", data.chain)
        
        
        |> JE.object






stackEncoder : Stack -> JE.Value
stackEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VpcId", data.vpcId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Attributes", data.attributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ServiceRoleArn", data.serviceRoleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultInstanceProfileArn", data.defaultInstanceProfileArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultOs", data.defaultOs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HostnameTheme", data.hostnameTheme)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultAvailabilityZone", data.defaultAvailabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultSubnetId", data.defaultSubnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomJson", data.customJson)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stackConfigurationManagerEncoder)
            ("ConfigurationManager", data.configurationManager)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (chefConfigurationEncoder)
            ("ChefConfiguration", data.chefConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UseCustomCookbooks", data.useCustomCookbooks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UseOpsworksSecurityGroups", data.useOpsworksSecurityGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceEncoder)
            ("CustomCookbooksSource", data.customCookbooksSource)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultSshKeyName", data.defaultSshKeyName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (rootDeviceTypeToString >> JE.string)
            ("DefaultRootDeviceType", data.defaultRootDeviceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AgentVersion", data.agentVersion)
        
        
        |> JE.object










stackConfigurationManagerEncoder : StackConfigurationManager -> JE.Value
stackConfigurationManagerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Version", data.version)
        
        
        |> JE.object






stackSummaryEncoder : StackSummary -> JE.Value
stackSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("LayersCount", data.layersCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AppsCount", data.appsCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instancesCountEncoder)
            ("InstancesCount", data.instancesCount)
        
        
        |> JE.object






startInstanceRequestEncoder : StartInstanceRequest -> JE.Value
startInstanceRequestEncoder data =
    []
        
        
        |> (::) ("InstanceId", data.instanceId |> (JE.string))
        
        
        |> JE.object






startStackRequestEncoder : StartStackRequest -> JE.Value
startStackRequestEncoder data =
    []
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        |> JE.object






stopInstanceRequestEncoder : StopInstanceRequest -> JE.Value
stopInstanceRequestEncoder data =
    []
        
        
        |> (::) ("InstanceId", data.instanceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Force", data.force)
        
        
        |> JE.object






stopStackRequestEncoder : StopStackRequest -> JE.Value
stopStackRequestEncoder data =
    []
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        |> JE.object






tagResourceRequestEncoder : TagResourceRequest -> JE.Value
tagResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("Tags", data.tags |> (JE.dict identity (JE.string)))
        
        
        |> JE.object






temporaryCredentialEncoder : TemporaryCredential -> JE.Value
temporaryCredentialEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Username", data.username)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Password", data.password)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ValidForInMinutes", data.validForInMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        |> JE.object






timeBasedAutoScalingConfigurationEncoder : TimeBasedAutoScalingConfiguration -> JE.Value
timeBasedAutoScalingConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (weeklyAutoScalingScheduleEncoder)
            ("AutoScalingSchedule", data.autoScalingSchedule)
        
        
        |> JE.object






unassignInstanceRequestEncoder : UnassignInstanceRequest -> JE.Value
unassignInstanceRequestEncoder data =
    []
        
        
        |> (::) ("InstanceId", data.instanceId |> (JE.string))
        
        
        |> JE.object






unassignVolumeRequestEncoder : UnassignVolumeRequest -> JE.Value
unassignVolumeRequestEncoder data =
    []
        
        
        |> (::) ("VolumeId", data.volumeId |> (JE.string))
        
        
        |> JE.object






untagResourceRequestEncoder : UntagResourceRequest -> JE.Value
untagResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("TagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






updateAppRequestEncoder : UpdateAppRequest -> JE.Value
updateAppRequestEncoder data =
    []
        
        
        |> (::) ("AppId", data.appId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (dataSourceEncoder))
            ("DataSources", data.dataSources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (appTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceEncoder)
            ("AppSource", data.appSource)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Domains", data.domains)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnableSsl", data.enableSsl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sslConfigurationEncoder)
            ("SslConfiguration", data.sslConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Attributes", data.attributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (environmentVariableEncoder))
            ("Environment", data.environment)
        
        
        |> JE.object






updateElasticIpRequestEncoder : UpdateElasticIpRequest -> JE.Value
updateElasticIpRequestEncoder data =
    []
        
        
        |> (::) ("ElasticIp", data.elasticIp |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






updateInstanceRequestEncoder : UpdateInstanceRequest -> JE.Value
updateInstanceRequestEncoder data =
    []
        
        
        |> (::) ("InstanceId", data.instanceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("LayerIds", data.layerIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceType", data.instanceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (autoScalingTypeToString >> JE.string)
            ("AutoScalingType", data.autoScalingType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Hostname", data.hostname)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Os", data.os)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AmiId", data.amiId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshKeyName", data.sshKeyName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (architectureToString >> JE.string)
            ("Architecture", data.architecture)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("InstallUpdatesOnBoot", data.installUpdatesOnBoot)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EbsOptimized", data.ebsOptimized)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AgentVersion", data.agentVersion)
        
        
        |> JE.object






updateLayerRequestEncoder : UpdateLayerRequest -> JE.Value
updateLayerRequestEncoder data =
    []
        
        
        |> (::) ("LayerId", data.layerId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Shortname", data.shortname)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Attributes", data.attributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLogsConfigurationEncoder)
            ("CloudWatchLogsConfiguration", data.cloudWatchLogsConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomInstanceProfileArn", data.customInstanceProfileArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomJson", data.customJson)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("CustomSecurityGroupIds", data.customSecurityGroupIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Packages", data.packages)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (volumeConfigurationEncoder))
            ("VolumeConfigurations", data.volumeConfigurations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnableAutoHealing", data.enableAutoHealing)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AutoAssignElasticIps", data.autoAssignElasticIps)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AutoAssignPublicIps", data.autoAssignPublicIps)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (recipesEncoder)
            ("CustomRecipes", data.customRecipes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("InstallUpdatesOnBoot", data.installUpdatesOnBoot)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UseEbsOptimizedInstances", data.useEbsOptimizedInstances)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lifecycleEventConfigurationEncoder)
            ("LifecycleEventConfiguration", data.lifecycleEventConfiguration)
        
        
        |> JE.object






updateMyUserProfileRequestEncoder : UpdateMyUserProfileRequest -> JE.Value
updateMyUserProfileRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshPublicKey", data.sshPublicKey)
        
        
        |> JE.object






updateRdsDbInstanceRequestEncoder : UpdateRdsDbInstanceRequest -> JE.Value
updateRdsDbInstanceRequestEncoder data =
    []
        
        
        |> (::) ("RdsDbInstanceArn", data.rdsDbInstanceArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DbUser", data.dbUser)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DbPassword", data.dbPassword)
        
        
        |> JE.object






updateStackRequestEncoder : UpdateStackRequest -> JE.Value
updateStackRequestEncoder data =
    []
        
        
        |> (::) ("StackId", data.stackId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Attributes", data.attributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ServiceRoleArn", data.serviceRoleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultInstanceProfileArn", data.defaultInstanceProfileArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultOs", data.defaultOs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HostnameTheme", data.hostnameTheme)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultAvailabilityZone", data.defaultAvailabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultSubnetId", data.defaultSubnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomJson", data.customJson)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stackConfigurationManagerEncoder)
            ("ConfigurationManager", data.configurationManager)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (chefConfigurationEncoder)
            ("ChefConfiguration", data.chefConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UseCustomCookbooks", data.useCustomCookbooks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceEncoder)
            ("CustomCookbooksSource", data.customCookbooksSource)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultSshKeyName", data.defaultSshKeyName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (rootDeviceTypeToString >> JE.string)
            ("DefaultRootDeviceType", data.defaultRootDeviceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UseOpsworksSecurityGroups", data.useOpsworksSecurityGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AgentVersion", data.agentVersion)
        
        
        |> JE.object






updateUserProfileRequestEncoder : UpdateUserProfileRequest -> JE.Value
updateUserProfileRequestEncoder data =
    []
        
        
        |> (::) ("IamUserArn", data.iamUserArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshUsername", data.sshUsername)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshPublicKey", data.sshPublicKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AllowSelfManagement", data.allowSelfManagement)
        
        
        |> JE.object






updateVolumeRequestEncoder : UpdateVolumeRequest -> JE.Value
updateVolumeRequestEncoder data =
    []
        
        
        |> (::) ("VolumeId", data.volumeId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MountPoint", data.mountPoint)
        
        
        |> JE.object






userProfileEncoder : UserProfile -> JE.Value
userProfileEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IamUserArn", data.iamUserArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshUsername", data.sshUsername)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshPublicKey", data.sshPublicKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AllowSelfManagement", data.allowSelfManagement)
        
        
        |> JE.object










volumeEncoder : Volume -> JE.Value
volumeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VolumeId", data.volumeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Ec2VolumeId", data.ec2VolumeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RaidArrayId", data.raidArrayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Size", data.size)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Device", data.device)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MountPoint", data.mountPoint)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AvailabilityZone", data.availabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VolumeType", data.volumeType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Iops", data.iops)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Encrypted", data.encrypted)
        
        
        |> JE.object






volumeConfigurationEncoder : VolumeConfiguration -> JE.Value
volumeConfigurationEncoder data =
    []
        
        
        |> (::) ("MountPoint", data.mountPoint |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RaidLevel", data.raidLevel)
        
        
        
        |> (::) ("NumberOfDisks", data.numberOfDisks |> (JE.int))
        
        
        
        |> (::) ("Size", data.size |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VolumeType", data.volumeType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Iops", data.iops)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Encrypted", data.encrypted)
        
        
        |> JE.object










weeklyAutoScalingScheduleEncoder : WeeklyAutoScalingSchedule -> JE.Value
weeklyAutoScalingScheduleEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Monday", data.monday)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tuesday", data.tuesday)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Wednesday", data.wednesday)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Thursday", data.thursday)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Friday", data.friday)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Saturday", data.saturday)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Sunday", data.sunday)
        
        
        |> JE.object





