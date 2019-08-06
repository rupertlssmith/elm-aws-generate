module AWS.CodeDeploy exposing
    ( service
    , addTagsToOnPremisesInstances, batchGetApplicationRevisions, batchGetApplications, batchGetDeploymentGroups, batchGetDeploymentInstances, batchGetDeploymentTargets, BatchGetDeploymentTargetsOptions, batchGetDeployments, batchGetOnPremisesInstances, continueDeployment, ContinueDeploymentOptions, createApplication, CreateApplicationOptions, createDeployment, CreateDeploymentOptions, createDeploymentConfig, CreateDeploymentConfigOptions, createDeploymentGroup, CreateDeploymentGroupOptions, deleteApplication, deleteDeploymentConfig, deleteDeploymentGroup, deleteGitHubAccountToken, DeleteGitHubAccountTokenOptions, deregisterOnPremisesInstance, getApplication, getApplicationRevision, getDeployment, getDeploymentConfig, getDeploymentGroup, getDeploymentInstance, getDeploymentTarget, GetDeploymentTargetOptions, getOnPremisesInstance, listApplicationRevisions, ListApplicationRevisionsOptions, listApplications, ListApplicationsOptions, listDeploymentConfigs, ListDeploymentConfigsOptions, listDeploymentGroups, ListDeploymentGroupsOptions, listDeploymentInstances, ListDeploymentInstancesOptions, listDeploymentTargets, ListDeploymentTargetsOptions, listDeployments, ListDeploymentsOptions, listGitHubAccountTokenNames, ListGitHubAccountTokenNamesOptions, listOnPremisesInstances, ListOnPremisesInstancesOptions, listTagsForResource, ListTagsForResourceOptions, putLifecycleEventHookExecutionStatus, PutLifecycleEventHookExecutionStatusOptions, registerApplicationRevision, RegisterApplicationRevisionOptions, registerOnPremisesInstance, RegisterOnPremisesInstanceOptions, removeTagsFromOnPremisesInstances, skipWaitTimeForInstanceTermination, SkipWaitTimeForInstanceTerminationOptions, stopDeployment, StopDeploymentOptions, tagResource, untagResource, updateApplication, UpdateApplicationOptions, updateDeploymentGroup, UpdateDeploymentGroupOptions
    , BatchGetApplicationRevisionsOutput, BatchGetApplicationsOutput, BatchGetDeploymentGroupsOutput, BatchGetDeploymentInstancesOutput, BatchGetDeploymentTargetsOutput, BatchGetDeploymentsOutput, BatchGetOnPremisesInstancesOutput, CreateApplicationOutput, CreateDeploymentConfigOutput, CreateDeploymentGroupOutput, CreateDeploymentOutput, DeleteDeploymentGroupOutput, DeleteGitHubAccountTokenOutput, GetApplicationOutput, GetApplicationRevisionOutput, GetDeploymentConfigOutput, GetDeploymentGroupOutput, GetDeploymentInstanceOutput, GetDeploymentOutput, GetDeploymentTargetOutput, GetOnPremisesInstanceOutput, ListApplicationRevisionsOutput, ListApplicationsOutput, ListDeploymentConfigsOutput, ListDeploymentGroupsOutput, ListDeploymentInstancesOutput, ListDeploymentTargetsOutput, ListDeploymentsOutput, ListGitHubAccountTokenNamesOutput, ListOnPremisesInstancesOutput, ListTagsForResourceOutput, PutLifecycleEventHookExecutionStatusOutput, StopDeploymentOutput, TagResourceOutput, UntagResourceOutput, UpdateDeploymentGroupOutput
    , Alarm, AlarmConfiguration, AppSpecContent, ApplicationInfo, AutoRollbackConfiguration, AutoScalingGroup, BlueGreenDeploymentConfiguration, BlueInstanceTerminationOption, DeploymentConfigInfo, DeploymentGroupInfo, DeploymentInfo, DeploymentOverview, DeploymentReadyOption, DeploymentStyle, DeploymentTarget, Diagnostics, EC2TagFilter, EC2TagSet, ECSService, ECSTarget, ECSTaskSet, ELBInfo, ErrorInformation, GenericRevisionInfo, GitHubLocation, GreenFleetProvisioningOption, InstanceInfo, InstanceSummary, InstanceTarget, LambdaFunctionInfo, LambdaTarget, LastDeploymentInfo, LifecycleEvent, LoadBalancerInfo, MinimumHealthyHosts, OnPremisesTagSet, RawString, RevisionInfo, RevisionLocation, RollbackInfo, S3Location, Tag, TagFilter, TargetGroupInfo, TargetGroupPairInfo, TargetInstances, TimeBasedCanary, TimeBasedLinear, TimeRange, TrafficRoute, TrafficRoutingConfig, TriggerConfig
    , ApplicationRevisionSortBy(..), AutoRollbackEvent(..), BundleType(..), ComputePlatform(..), DeploymentCreator(..), DeploymentOption(..), DeploymentReadyAction(..), DeploymentStatus(..), DeploymentTargetType(..), DeploymentType(..), DeploymentWaitType(..), EC2TagFilterType(..), ErrorCode(..), FileExistsBehavior(..), GreenFleetProvisioningAction(..), InstanceAction(..), InstanceStatus(..), InstanceType(..), LifecycleErrorCode(..), LifecycleEventStatus(..), ListStateFilterAction(..), MinimumHealthyHostsType(..), RegistrationStatus(..), RevisionLocationType(..), SortOrder(..), StopStatus(..), TagFilterType(..), TargetFilterName(..), TargetLabel(..), TargetStatus(..), TrafficRoutingType(..), TriggerEventType(..)
    )

{-| <fullname>AWS CodeDeploy</fullname> <p>AWS CodeDeploy is a deployment service that automates application deployments to Amazon EC2 instances, on-premises instances running in your own facility, serverless AWS Lambda functions, or applications in an Amazon ECS service.</p> <p>You can deploy a nearly unlimited variety of application content, such as an updated Lambda function, updated applications in an Amazon ECS service, code, web and configuration files, executables, packages, scripts, multimedia files, and so on. AWS CodeDeploy can deploy application content stored in Amazon S3 buckets, GitHub repositories, or Bitbucket repositories. You do not need to make changes to your existing code before you can use AWS CodeDeploy.</p> <p>AWS CodeDeploy makes it easier for you to rapidly release new features, helps you avoid downtime during application deployment, and handles the complexity of updating your applications, without many of the risks associated with error-prone manual deployments.</p> <p> <b>AWS CodeDeploy Components</b> </p> <p>Use the information in this guide to help you work with the following AWS CodeDeploy components:</p> <ul> <li> <p> <b>Application</b>: A name that uniquely identifies the application you want to deploy. AWS CodeDeploy uses this name, which functions as a container, to ensure the correct combination of revision, deployment configuration, and deployment group are referenced during a deployment.</p> </li> <li> <p> <b>Deployment group</b>: A set of individual instances, CodeDeploy Lambda deployment configuration settings, or an Amazon ECS service and network details. A Lambda deployment group specifies how to route traffic to a new version of a Lambda function. An Amazon ECS deployment group specifies the service created in Amazon ECS to deploy, a load balancer, and a listener to reroute production traffic to an updated containerized application. An EC2/On-premises deployment group contains individually tagged instances, Amazon EC2 instances in Amazon EC2 Auto Scaling groups, or both. All deployment groups can specify optional trigger, alarm, and rollback settings.</p> </li> <li> <p> <b>Deployment configuration</b>: A set of deployment rules and deployment success and failure conditions used by AWS CodeDeploy during a deployment.</p> </li> <li> <p> <b>Deployment</b>: The process and the components used when updating a Lambda function, a containerized application in an Amazon ECS service, or of installing content on one or more instances. </p> </li> <li> <p> <b>Application revisions</b>: For an AWS Lambda deployment, this is an AppSpec file that specifies the Lambda function to be updated and one or more functions to validate deployment lifecycle events. For an Amazon ECS deployment, this is an AppSpec file that specifies the Amazon ECS task definition, container, and port where production traffic is rerouted. For an EC2/On-premises deployment, this is an archive file that contains source content—source code, webpages, executable files, and deployment scripts—along with an AppSpec file. Revisions are stored in Amazon S3 buckets or GitHub repositories. For Amazon S3, a revision is uniquely identified by its Amazon S3 object key and its ETag, version, or both. For GitHub, a revision is uniquely identified by its commit ID.</p> </li> </ul> <p>This guide also contains information to help you get details about the instances in your deployments, to make on-premises instances available for AWS CodeDeploy deployments, to get details about a Lambda function deployment, and to get details about Amazon ECS service deployments.</p> <p> <b>AWS CodeDeploy Information Resources</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide">AWS CodeDeploy User Guide</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/codedeploy/latest/APIReference/">AWS CodeDeploy API Reference Guide</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/cli/latest/reference/deploy/index.html">AWS CLI Reference for AWS CodeDeploy</a> </p> </li> <li> <p> <a href="https://forums.aws.amazon.com/forum.jspa?forumID=179">AWS CodeDeploy Developer Forum</a> </p> </li> </ul>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [addTagsToOnPremisesInstances](#addTagsToOnPremisesInstances)
  - [batchGetApplicationRevisions](#batchGetApplicationRevisions)
  - [batchGetApplications](#batchGetApplications)
  - [batchGetDeploymentGroups](#batchGetDeploymentGroups)
  - [batchGetDeploymentInstances](#batchGetDeploymentInstances)
  - [batchGetDeploymentTargets](#batchGetDeploymentTargets)
  - [BatchGetDeploymentTargetsOptions](#BatchGetDeploymentTargetsOptions)
  - [batchGetDeployments](#batchGetDeployments)
  - [batchGetOnPremisesInstances](#batchGetOnPremisesInstances)
  - [continueDeployment](#continueDeployment)
  - [ContinueDeploymentOptions](#ContinueDeploymentOptions)
  - [createApplication](#createApplication)
  - [CreateApplicationOptions](#CreateApplicationOptions)
  - [createDeployment](#createDeployment)
  - [CreateDeploymentOptions](#CreateDeploymentOptions)
  - [createDeploymentConfig](#createDeploymentConfig)
  - [CreateDeploymentConfigOptions](#CreateDeploymentConfigOptions)
  - [createDeploymentGroup](#createDeploymentGroup)
  - [CreateDeploymentGroupOptions](#CreateDeploymentGroupOptions)
  - [deleteApplication](#deleteApplication)
  - [deleteDeploymentConfig](#deleteDeploymentConfig)
  - [deleteDeploymentGroup](#deleteDeploymentGroup)
  - [deleteGitHubAccountToken](#deleteGitHubAccountToken)
  - [DeleteGitHubAccountTokenOptions](#DeleteGitHubAccountTokenOptions)
  - [deregisterOnPremisesInstance](#deregisterOnPremisesInstance)
  - [getApplication](#getApplication)
  - [getApplicationRevision](#getApplicationRevision)
  - [getDeployment](#getDeployment)
  - [getDeploymentConfig](#getDeploymentConfig)
  - [getDeploymentGroup](#getDeploymentGroup)
  - [getDeploymentInstance](#getDeploymentInstance)
  - [getDeploymentTarget](#getDeploymentTarget)
  - [GetDeploymentTargetOptions](#GetDeploymentTargetOptions)
  - [getOnPremisesInstance](#getOnPremisesInstance)
  - [listApplicationRevisions](#listApplicationRevisions)
  - [ListApplicationRevisionsOptions](#ListApplicationRevisionsOptions)
  - [listApplications](#listApplications)
  - [ListApplicationsOptions](#ListApplicationsOptions)
  - [listDeploymentConfigs](#listDeploymentConfigs)
  - [ListDeploymentConfigsOptions](#ListDeploymentConfigsOptions)
  - [listDeploymentGroups](#listDeploymentGroups)
  - [ListDeploymentGroupsOptions](#ListDeploymentGroupsOptions)
  - [listDeploymentInstances](#listDeploymentInstances)
  - [ListDeploymentInstancesOptions](#ListDeploymentInstancesOptions)
  - [listDeploymentTargets](#listDeploymentTargets)
  - [ListDeploymentTargetsOptions](#ListDeploymentTargetsOptions)
  - [listDeployments](#listDeployments)
  - [ListDeploymentsOptions](#ListDeploymentsOptions)
  - [listGitHubAccountTokenNames](#listGitHubAccountTokenNames)
  - [ListGitHubAccountTokenNamesOptions](#ListGitHubAccountTokenNamesOptions)
  - [listOnPremisesInstances](#listOnPremisesInstances)
  - [ListOnPremisesInstancesOptions](#ListOnPremisesInstancesOptions)
  - [listTagsForResource](#listTagsForResource)
  - [ListTagsForResourceOptions](#ListTagsForResourceOptions)
  - [putLifecycleEventHookExecutionStatus](#putLifecycleEventHookExecutionStatus)
  - [PutLifecycleEventHookExecutionStatusOptions](#PutLifecycleEventHookExecutionStatusOptions)
  - [registerApplicationRevision](#registerApplicationRevision)
  - [RegisterApplicationRevisionOptions](#RegisterApplicationRevisionOptions)
  - [registerOnPremisesInstance](#registerOnPremisesInstance)
  - [RegisterOnPremisesInstanceOptions](#RegisterOnPremisesInstanceOptions)
  - [removeTagsFromOnPremisesInstances](#removeTagsFromOnPremisesInstances)
  - [skipWaitTimeForInstanceTermination](#skipWaitTimeForInstanceTermination)
  - [SkipWaitTimeForInstanceTerminationOptions](#SkipWaitTimeForInstanceTerminationOptions)
  - [stopDeployment](#stopDeployment)
  - [StopDeploymentOptions](#StopDeploymentOptions)
  - [tagResource](#tagResource)
  - [untagResource](#untagResource)
  - [updateApplication](#updateApplication)
  - [UpdateApplicationOptions](#UpdateApplicationOptions)
  - [updateDeploymentGroup](#updateDeploymentGroup)
  - [UpdateDeploymentGroupOptions](#UpdateDeploymentGroupOptions)

@docs addTagsToOnPremisesInstances, batchGetApplicationRevisions, batchGetApplications, batchGetDeploymentGroups, batchGetDeploymentInstances, batchGetDeploymentTargets, BatchGetDeploymentTargetsOptions, batchGetDeployments, batchGetOnPremisesInstances, continueDeployment, ContinueDeploymentOptions, createApplication, CreateApplicationOptions, createDeployment, CreateDeploymentOptions, createDeploymentConfig, CreateDeploymentConfigOptions, createDeploymentGroup, CreateDeploymentGroupOptions, deleteApplication, deleteDeploymentConfig, deleteDeploymentGroup, deleteGitHubAccountToken, DeleteGitHubAccountTokenOptions, deregisterOnPremisesInstance, getApplication, getApplicationRevision, getDeployment, getDeploymentConfig, getDeploymentGroup, getDeploymentInstance, getDeploymentTarget, GetDeploymentTargetOptions, getOnPremisesInstance, listApplicationRevisions, ListApplicationRevisionsOptions, listApplications, ListApplicationsOptions, listDeploymentConfigs, ListDeploymentConfigsOptions, listDeploymentGroups, ListDeploymentGroupsOptions, listDeploymentInstances, ListDeploymentInstancesOptions, listDeploymentTargets, ListDeploymentTargetsOptions, listDeployments, ListDeploymentsOptions, listGitHubAccountTokenNames, ListGitHubAccountTokenNamesOptions, listOnPremisesInstances, ListOnPremisesInstancesOptions, listTagsForResource, ListTagsForResourceOptions, putLifecycleEventHookExecutionStatus, PutLifecycleEventHookExecutionStatusOptions, registerApplicationRevision, RegisterApplicationRevisionOptions, registerOnPremisesInstance, RegisterOnPremisesInstanceOptions, removeTagsFromOnPremisesInstances, skipWaitTimeForInstanceTermination, SkipWaitTimeForInstanceTerminationOptions, stopDeployment, StopDeploymentOptions, tagResource, untagResource, updateApplication, UpdateApplicationOptions, updateDeploymentGroup, UpdateDeploymentGroupOptions


## Responses

  - [BatchGetApplicationRevisionsOutput](#BatchGetApplicationRevisionsOutput)
  - [BatchGetApplicationsOutput](#BatchGetApplicationsOutput)
  - [BatchGetDeploymentGroupsOutput](#BatchGetDeploymentGroupsOutput)
  - [BatchGetDeploymentInstancesOutput](#BatchGetDeploymentInstancesOutput)
  - [BatchGetDeploymentTargetsOutput](#BatchGetDeploymentTargetsOutput)
  - [BatchGetDeploymentsOutput](#BatchGetDeploymentsOutput)
  - [BatchGetOnPremisesInstancesOutput](#BatchGetOnPremisesInstancesOutput)
  - [CreateApplicationOutput](#CreateApplicationOutput)
  - [CreateDeploymentConfigOutput](#CreateDeploymentConfigOutput)
  - [CreateDeploymentGroupOutput](#CreateDeploymentGroupOutput)
  - [CreateDeploymentOutput](#CreateDeploymentOutput)
  - [DeleteDeploymentGroupOutput](#DeleteDeploymentGroupOutput)
  - [DeleteGitHubAccountTokenOutput](#DeleteGitHubAccountTokenOutput)
  - [GetApplicationOutput](#GetApplicationOutput)
  - [GetApplicationRevisionOutput](#GetApplicationRevisionOutput)
  - [GetDeploymentConfigOutput](#GetDeploymentConfigOutput)
  - [GetDeploymentGroupOutput](#GetDeploymentGroupOutput)
  - [GetDeploymentInstanceOutput](#GetDeploymentInstanceOutput)
  - [GetDeploymentOutput](#GetDeploymentOutput)
  - [GetDeploymentTargetOutput](#GetDeploymentTargetOutput)
  - [GetOnPremisesInstanceOutput](#GetOnPremisesInstanceOutput)
  - [ListApplicationRevisionsOutput](#ListApplicationRevisionsOutput)
  - [ListApplicationsOutput](#ListApplicationsOutput)
  - [ListDeploymentConfigsOutput](#ListDeploymentConfigsOutput)
  - [ListDeploymentGroupsOutput](#ListDeploymentGroupsOutput)
  - [ListDeploymentInstancesOutput](#ListDeploymentInstancesOutput)
  - [ListDeploymentTargetsOutput](#ListDeploymentTargetsOutput)
  - [ListDeploymentsOutput](#ListDeploymentsOutput)
  - [ListGitHubAccountTokenNamesOutput](#ListGitHubAccountTokenNamesOutput)
  - [ListOnPremisesInstancesOutput](#ListOnPremisesInstancesOutput)
  - [ListTagsForResourceOutput](#ListTagsForResourceOutput)
  - [PutLifecycleEventHookExecutionStatusOutput](#PutLifecycleEventHookExecutionStatusOutput)
  - [StopDeploymentOutput](#StopDeploymentOutput)
  - [TagResourceOutput](#TagResourceOutput)
  - [UntagResourceOutput](#UntagResourceOutput)
  - [UpdateDeploymentGroupOutput](#UpdateDeploymentGroupOutput)

@docs BatchGetApplicationRevisionsOutput, BatchGetApplicationsOutput, BatchGetDeploymentGroupsOutput, BatchGetDeploymentInstancesOutput, BatchGetDeploymentTargetsOutput, BatchGetDeploymentsOutput, BatchGetOnPremisesInstancesOutput, CreateApplicationOutput, CreateDeploymentConfigOutput, CreateDeploymentGroupOutput, CreateDeploymentOutput, DeleteDeploymentGroupOutput, DeleteGitHubAccountTokenOutput, GetApplicationOutput, GetApplicationRevisionOutput, GetDeploymentConfigOutput, GetDeploymentGroupOutput, GetDeploymentInstanceOutput, GetDeploymentOutput, GetDeploymentTargetOutput, GetOnPremisesInstanceOutput, ListApplicationRevisionsOutput, ListApplicationsOutput, ListDeploymentConfigsOutput, ListDeploymentGroupsOutput, ListDeploymentInstancesOutput, ListDeploymentTargetsOutput, ListDeploymentsOutput, ListGitHubAccountTokenNamesOutput, ListOnPremisesInstancesOutput, ListTagsForResourceOutput, PutLifecycleEventHookExecutionStatusOutput, StopDeploymentOutput, TagResourceOutput, UntagResourceOutput, UpdateDeploymentGroupOutput


## Records

  - [Alarm](#Alarm)
  - [AlarmConfiguration](#AlarmConfiguration)
  - [AppSpecContent](#AppSpecContent)
  - [ApplicationInfo](#ApplicationInfo)
  - [AutoRollbackConfiguration](#AutoRollbackConfiguration)
  - [AutoScalingGroup](#AutoScalingGroup)
  - [BlueGreenDeploymentConfiguration](#BlueGreenDeploymentConfiguration)
  - [BlueInstanceTerminationOption](#BlueInstanceTerminationOption)
  - [DeploymentConfigInfo](#DeploymentConfigInfo)
  - [DeploymentGroupInfo](#DeploymentGroupInfo)
  - [DeploymentInfo](#DeploymentInfo)
  - [DeploymentOverview](#DeploymentOverview)
  - [DeploymentReadyOption](#DeploymentReadyOption)
  - [DeploymentStyle](#DeploymentStyle)
  - [DeploymentTarget](#DeploymentTarget)
  - [Diagnostics](#Diagnostics)
  - [EC2TagFilter](#EC2TagFilter)
  - [EC2TagSet](#EC2TagSet)
  - [ECSService](#ECSService)
  - [ECSTarget](#ECSTarget)
  - [ECSTaskSet](#ECSTaskSet)
  - [ELBInfo](#ELBInfo)
  - [ErrorInformation](#ErrorInformation)
  - [GenericRevisionInfo](#GenericRevisionInfo)
  - [GitHubLocation](#GitHubLocation)
  - [GreenFleetProvisioningOption](#GreenFleetProvisioningOption)
  - [InstanceInfo](#InstanceInfo)
  - [InstanceSummary](#InstanceSummary)
  - [InstanceTarget](#InstanceTarget)
  - [LambdaFunctionInfo](#LambdaFunctionInfo)
  - [LambdaTarget](#LambdaTarget)
  - [LastDeploymentInfo](#LastDeploymentInfo)
  - [LifecycleEvent](#LifecycleEvent)
  - [LoadBalancerInfo](#LoadBalancerInfo)
  - [MinimumHealthyHosts](#MinimumHealthyHosts)
  - [OnPremisesTagSet](#OnPremisesTagSet)
  - [RawString](#RawString)
  - [RevisionInfo](#RevisionInfo)
  - [RevisionLocation](#RevisionLocation)
  - [RollbackInfo](#RollbackInfo)
  - [S3Location](#S3Location)
  - [Tag](#Tag)
  - [TagFilter](#TagFilter)
  - [TargetGroupInfo](#TargetGroupInfo)
  - [TargetGroupPairInfo](#TargetGroupPairInfo)
  - [TargetInstances](#TargetInstances)
  - [TimeBasedCanary](#TimeBasedCanary)
  - [TimeBasedLinear](#TimeBasedLinear)
  - [TimeRange](#TimeRange)
  - [TrafficRoute](#TrafficRoute)
  - [TrafficRoutingConfig](#TrafficRoutingConfig)
  - [TriggerConfig](#TriggerConfig)

@docs Alarm, AlarmConfiguration, AppSpecContent, ApplicationInfo, AutoRollbackConfiguration, AutoScalingGroup, BlueGreenDeploymentConfiguration, BlueInstanceTerminationOption, DeploymentConfigInfo, DeploymentGroupInfo, DeploymentInfo, DeploymentOverview, DeploymentReadyOption, DeploymentStyle, DeploymentTarget, Diagnostics, EC2TagFilter, EC2TagSet, ECSService, ECSTarget, ECSTaskSet, ELBInfo, ErrorInformation, GenericRevisionInfo, GitHubLocation, GreenFleetProvisioningOption, InstanceInfo, InstanceSummary, InstanceTarget, LambdaFunctionInfo, LambdaTarget, LastDeploymentInfo, LifecycleEvent, LoadBalancerInfo, MinimumHealthyHosts, OnPremisesTagSet, RawString, RevisionInfo, RevisionLocation, RollbackInfo, S3Location, Tag, TagFilter, TargetGroupInfo, TargetGroupPairInfo, TargetInstances, TimeBasedCanary, TimeBasedLinear, TimeRange, TrafficRoute, TrafficRoutingConfig, TriggerConfig


## Unions

  - [ApplicationRevisionSortBy](#ApplicationRevisionSortBy)
  - [AutoRollbackEvent](#AutoRollbackEvent)
  - [BundleType](#BundleType)
  - [ComputePlatform](#ComputePlatform)
  - [DeploymentCreator](#DeploymentCreator)
  - [DeploymentOption](#DeploymentOption)
  - [DeploymentReadyAction](#DeploymentReadyAction)
  - [DeploymentStatus](#DeploymentStatus)
  - [DeploymentTargetType](#DeploymentTargetType)
  - [DeploymentType](#DeploymentType)
  - [DeploymentWaitType](#DeploymentWaitType)
  - [EC2TagFilterType](#EC2TagFilterType)
  - [ErrorCode](#ErrorCode)
  - [FileExistsBehavior](#FileExistsBehavior)
  - [GreenFleetProvisioningAction](#GreenFleetProvisioningAction)
  - [InstanceAction](#InstanceAction)
  - [InstanceStatus](#InstanceStatus)
  - [InstanceType](#InstanceType)
  - [LifecycleErrorCode](#LifecycleErrorCode)
  - [LifecycleEventStatus](#LifecycleEventStatus)
  - [ListStateFilterAction](#ListStateFilterAction)
  - [MinimumHealthyHostsType](#MinimumHealthyHostsType)
  - [RegistrationStatus](#RegistrationStatus)
  - [RevisionLocationType](#RevisionLocationType)
  - [SortOrder](#SortOrder)
  - [StopStatus](#StopStatus)
  - [TagFilterType](#TagFilterType)
  - [TargetFilterName](#TargetFilterName)
  - [TargetLabel](#TargetLabel)
  - [TargetStatus](#TargetStatus)
  - [TrafficRoutingType](#TrafficRoutingType)
  - [TriggerEventType](#TriggerEventType)

@docs ApplicationRevisionSortBy, AutoRollbackEvent, BundleType, ComputePlatform, DeploymentCreator, DeploymentOption, DeploymentReadyAction, DeploymentStatus, DeploymentTargetType, DeploymentType, DeploymentWaitType, EC2TagFilterType, ErrorCode, FileExistsBehavior, GreenFleetProvisioningAction, InstanceAction, InstanceStatus, InstanceType, LifecycleErrorCode, LifecycleEventStatus, ListStateFilterAction, MinimumHealthyHostsType, RegistrationStatus, RevisionLocationType, SortOrder, StopStatus, TagFilterType, TargetFilterName, TargetLabel, TargetStatus, TrafficRoutingType, TriggerEventType

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Dict exposing (Dict)
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
        "codedeploy"
        "2014-10-06"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "CodeDeploy_20141006")



-- OPERATIONS


{-|

<p>Adds tags to on-premises instances.</p>

**Required Parameters**

  - `tags` **:** `(List Tag)`
  - `instanceNames` **:** `(List String)`

-}
addTagsToOnPremisesInstances :
    List Tag
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
addTagsToOnPremisesInstances tags instanceNames =
    let
        requestInput =
            AddTagsToOnPremisesInstancesInput
                tags
                instanceNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> addTagsToOnPremisesInstancesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AddTagsToOnPremisesInstances"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Gets information about one or more application revisions. The maximum number of application revisions that can be returned is 25.</p>

**Required Parameters**

  - `applicationName` **:** `String`
  - `revisions` **:** `(List RevisionLocation)`

-}
batchGetApplicationRevisions :
    String
    -> List RevisionLocation
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetApplicationRevisionsOutput)
batchGetApplicationRevisions applicationName revisions =
    let
        requestInput =
            BatchGetApplicationRevisionsInput
                applicationName
                revisions
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> batchGetApplicationRevisionsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchGetApplicationRevisions"
            (AWS.Core.Decode.ResultDecoder "BatchGetApplicationRevisionsOutput" batchGetApplicationRevisionsOutputDecoder)
        )


{-|

<p>Gets information about one or more applications. The maximum number of applications that can be returned is 25.</p>

**Required Parameters**

  - `applicationNames` **:** `(List String)`

-}
batchGetApplications :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetApplicationsOutput)
batchGetApplications applicationNames =
    let
        requestInput =
            BatchGetApplicationsInput
                applicationNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> batchGetApplicationsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchGetApplications"
            (AWS.Core.Decode.ResultDecoder "BatchGetApplicationsOutput" batchGetApplicationsOutputDecoder)
        )


{-|

<p>Gets information about one or more deployment groups.</p>

**Required Parameters**

  - `applicationName` **:** `String`
  - `deploymentGroupNames` **:** `(List String)`

-}
batchGetDeploymentGroups :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetDeploymentGroupsOutput)
batchGetDeploymentGroups applicationName deploymentGroupNames =
    let
        requestInput =
            BatchGetDeploymentGroupsInput
                applicationName
                deploymentGroupNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> batchGetDeploymentGroupsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchGetDeploymentGroups"
            (AWS.Core.Decode.ResultDecoder "BatchGetDeploymentGroupsOutput" batchGetDeploymentGroupsOutputDecoder)
        )


{-| <note> <p> This method works, but is deprecated. Use <code>BatchGetDeploymentTargets</code> instead. </p> </note> <p> Returns an array of one or more instances associated with a deployment. This method works with EC2/On-premises and AWS Lambda compute platforms. The newer <code>BatchGetDeploymentTargets</code> works with all compute platforms. The maximum number of instances that can be returned is 25.</p>

**Required Parameters**

  - `deploymentId` **:** `String`
  - `instanceIds` **:** `(List String)`

-}
batchGetDeploymentInstances :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetDeploymentInstancesOutput)
batchGetDeploymentInstances deploymentId instanceIds =
    let
        requestInput =
            BatchGetDeploymentInstancesInput
                deploymentId
                instanceIds
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> batchGetDeploymentInstancesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchGetDeploymentInstances"
            (AWS.Core.Decode.ResultDecoder "BatchGetDeploymentInstancesOutput" batchGetDeploymentInstancesOutputDecoder)
        )


{-|

<p> Returns an array of one or more targets associated with a deployment. This method works with all compute types and should be used instead of the deprecated <code>BatchGetDeploymentInstances</code>. The maximum number of targets that can be returned is 25.</p> <p> The type of targets returned depends on the deployment's compute platform: </p> <ul> <li> <p> <b>EC2/On-premises</b>: Information about EC2 instance targets. </p> </li> <li> <p> <b>AWS Lambda</b>: Information about Lambda functions targets. </p> </li> <li> <p> <b>Amazon ECS</b>: Information about Amazon ECS service targets. </p> </li> </ul>

**Required Parameters**

-}
batchGetDeploymentTargets :
    (BatchGetDeploymentTargetsOptions -> BatchGetDeploymentTargetsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetDeploymentTargetsOutput)
batchGetDeploymentTargets setOptions =
    let
        requestInput =
            BatchGetDeploymentTargetsInput
                options.deploymentId
                options.targetIds

        options =
            setOptions (BatchGetDeploymentTargetsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> batchGetDeploymentTargetsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchGetDeploymentTargets"
            (AWS.Core.Decode.ResultDecoder "BatchGetDeploymentTargetsOutput" batchGetDeploymentTargetsOutputDecoder)
        )


{-| Options for a batchGetDeploymentTargets request
-}
type alias BatchGetDeploymentTargetsOptions =
    { deploymentId : Maybe String
    , targetIds : Maybe (List String)
    }


{-|

<p>Gets information about one or more deployments. The maximum number of deployments that can be returned is 25.</p>

**Required Parameters**

  - `deploymentIds` **:** `(List String)`

-}
batchGetDeployments :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetDeploymentsOutput)
batchGetDeployments deploymentIds =
    let
        requestInput =
            BatchGetDeploymentsInput
                deploymentIds
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> batchGetDeploymentsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchGetDeployments"
            (AWS.Core.Decode.ResultDecoder "BatchGetDeploymentsOutput" batchGetDeploymentsOutputDecoder)
        )


{-|

<p>Gets information about one or more on-premises instances. The maximum number of on-premises instances that can be returned is 25.</p>

**Required Parameters**

  - `instanceNames` **:** `(List String)`

-}
batchGetOnPremisesInstances :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetOnPremisesInstancesOutput)
batchGetOnPremisesInstances instanceNames =
    let
        requestInput =
            BatchGetOnPremisesInstancesInput
                instanceNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> batchGetOnPremisesInstancesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchGetOnPremisesInstances"
            (AWS.Core.Decode.ResultDecoder "BatchGetOnPremisesInstancesOutput" batchGetOnPremisesInstancesOutputDecoder)
        )


{-|

<p>For a blue/green deployment, starts the process of rerouting traffic from instances in the original environment to instances in the replacement environment without waiting for a specified wait time to elapse. (Traffic rerouting, which is achieved by registering instances in the replacement environment with the load balancer, can start as soon as all instances have a status of Ready.) </p>

**Required Parameters**

-}
continueDeployment :
    (ContinueDeploymentOptions -> ContinueDeploymentOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
continueDeployment setOptions =
    let
        requestInput =
            ContinueDeploymentInput
                options.deploymentId
                options.deploymentWaitType

        options =
            setOptions (ContinueDeploymentOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> continueDeploymentInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ContinueDeployment"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a continueDeployment request
-}
type alias ContinueDeploymentOptions =
    { deploymentId : Maybe String
    , deploymentWaitType : Maybe DeploymentWaitType
    }


{-|

<p>Creates an application.</p>

**Required Parameters**

  - `applicationName` **:** `String`

-}
createApplication :
    String
    -> (CreateApplicationOptions -> CreateApplicationOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateApplicationOutput)
createApplication applicationName setOptions =
    let
        requestInput =
            CreateApplicationInput
                applicationName
                options.computePlatform
                options.tags

        options =
            setOptions (CreateApplicationOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createApplicationInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateApplication"
            (AWS.Core.Decode.ResultDecoder "CreateApplicationOutput" createApplicationOutputDecoder)
        )


{-| Options for a createApplication request
-}
type alias CreateApplicationOptions =
    { computePlatform : Maybe ComputePlatform
    , tags : Maybe (List Tag)
    }


{-|

<p>Deploys an application revision through the specified deployment group.</p>

**Required Parameters**

  - `applicationName` **:** `String`

-}
createDeployment :
    String
    -> (CreateDeploymentOptions -> CreateDeploymentOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDeploymentOutput)
createDeployment applicationName setOptions =
    let
        requestInput =
            CreateDeploymentInput
                applicationName
                options.deploymentGroupName
                options.revision
                options.deploymentConfigName
                options.description
                options.ignoreApplicationStopFailures
                options.targetInstances
                options.autoRollbackConfiguration
                options.updateOutdatedInstancesOnly
                options.fileExistsBehavior

        options =
            setOptions (CreateDeploymentOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createDeploymentInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateDeployment"
            (AWS.Core.Decode.ResultDecoder "CreateDeploymentOutput" createDeploymentOutputDecoder)
        )


{-| Options for a createDeployment request
-}
type alias CreateDeploymentOptions =
    { deploymentGroupName : Maybe String
    , revision : Maybe RevisionLocation
    , deploymentConfigName : Maybe String
    , description : Maybe String
    , ignoreApplicationStopFailures : Maybe Bool
    , targetInstances : Maybe TargetInstances
    , autoRollbackConfiguration : Maybe AutoRollbackConfiguration
    , updateOutdatedInstancesOnly : Maybe Bool
    , fileExistsBehavior : Maybe FileExistsBehavior
    }


{-|

<p> Creates a deployment configuration. </p>

**Required Parameters**

  - `deploymentConfigName` **:** `String`

-}
createDeploymentConfig :
    String
    -> (CreateDeploymentConfigOptions -> CreateDeploymentConfigOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDeploymentConfigOutput)
createDeploymentConfig deploymentConfigName setOptions =
    let
        requestInput =
            CreateDeploymentConfigInput
                deploymentConfigName
                options.minimumHealthyHosts
                options.trafficRoutingConfig
                options.computePlatform

        options =
            setOptions (CreateDeploymentConfigOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createDeploymentConfigInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateDeploymentConfig"
            (AWS.Core.Decode.ResultDecoder "CreateDeploymentConfigOutput" createDeploymentConfigOutputDecoder)
        )


{-| Options for a createDeploymentConfig request
-}
type alias CreateDeploymentConfigOptions =
    { minimumHealthyHosts : Maybe MinimumHealthyHosts
    , trafficRoutingConfig : Maybe TrafficRoutingConfig
    , computePlatform : Maybe ComputePlatform
    }


{-|

<p>Creates a deployment group to which application revisions are deployed.</p>

**Required Parameters**

  - `applicationName` **:** `String`
  - `deploymentGroupName` **:** `String`
  - `serviceRoleArn` **:** `String`

-}
createDeploymentGroup :
    String
    -> String
    -> String
    -> (CreateDeploymentGroupOptions -> CreateDeploymentGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDeploymentGroupOutput)
createDeploymentGroup applicationName deploymentGroupName serviceRoleArn setOptions =
    let
        requestInput =
            CreateDeploymentGroupInput
                applicationName
                deploymentGroupName
                options.deploymentConfigName
                options.ec2TagFilters
                options.onPremisesInstanceTagFilters
                options.autoScalingGroups
                serviceRoleArn
                options.triggerConfigurations
                options.alarmConfiguration
                options.autoRollbackConfiguration
                options.deploymentStyle
                options.blueGreenDeploymentConfiguration
                options.loadBalancerInfo
                options.ec2TagSet
                options.ecsServices
                options.onPremisesTagSet
                options.tags

        options =
            setOptions (CreateDeploymentGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createDeploymentGroupInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateDeploymentGroup"
            (AWS.Core.Decode.ResultDecoder "CreateDeploymentGroupOutput" createDeploymentGroupOutputDecoder)
        )


{-| Options for a createDeploymentGroup request
-}
type alias CreateDeploymentGroupOptions =
    { deploymentConfigName : Maybe String
    , ec2TagFilters : Maybe (List EC2TagFilter)
    , onPremisesInstanceTagFilters : Maybe (List TagFilter)
    , autoScalingGroups : Maybe (List String)
    , triggerConfigurations : Maybe (List TriggerConfig)
    , alarmConfiguration : Maybe AlarmConfiguration
    , autoRollbackConfiguration : Maybe AutoRollbackConfiguration
    , deploymentStyle : Maybe DeploymentStyle
    , blueGreenDeploymentConfiguration : Maybe BlueGreenDeploymentConfiguration
    , loadBalancerInfo : Maybe LoadBalancerInfo
    , ec2TagSet : Maybe EC2TagSet
    , ecsServices : Maybe (List ECSService)
    , onPremisesTagSet : Maybe OnPremisesTagSet
    , tags : Maybe (List Tag)
    }


{-|

<p>Deletes an application.</p>

**Required Parameters**

  - `applicationName` **:** `String`

-}
deleteApplication :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteApplication applicationName =
    let
        requestInput =
            DeleteApplicationInput
                applicationName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteApplicationInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteApplication"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes a deployment configuration.</p> <note> <p>A deployment configuration cannot be deleted if it is currently in use. Predefined configurations cannot be deleted.</p> </note>

**Required Parameters**

  - `deploymentConfigName` **:** `String`

-}
deleteDeploymentConfig :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteDeploymentConfig deploymentConfigName =
    let
        requestInput =
            DeleteDeploymentConfigInput
                deploymentConfigName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteDeploymentConfigInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteDeploymentConfig"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes a deployment group.</p>

**Required Parameters**

  - `applicationName` **:** `String`
  - `deploymentGroupName` **:** `String`

-}
deleteDeploymentGroup :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDeploymentGroupOutput)
deleteDeploymentGroup applicationName deploymentGroupName =
    let
        requestInput =
            DeleteDeploymentGroupInput
                applicationName
                deploymentGroupName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteDeploymentGroupInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteDeploymentGroup"
            (AWS.Core.Decode.ResultDecoder "DeleteDeploymentGroupOutput" deleteDeploymentGroupOutputDecoder)
        )


{-|

<p>Deletes a GitHub account connection.</p>

**Required Parameters**

-}
deleteGitHubAccountToken :
    (DeleteGitHubAccountTokenOptions -> DeleteGitHubAccountTokenOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteGitHubAccountTokenOutput)
deleteGitHubAccountToken setOptions =
    let
        requestInput =
            DeleteGitHubAccountTokenInput
                options.tokenName

        options =
            setOptions (DeleteGitHubAccountTokenOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteGitHubAccountTokenInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteGitHubAccountToken"
            (AWS.Core.Decode.ResultDecoder "DeleteGitHubAccountTokenOutput" deleteGitHubAccountTokenOutputDecoder)
        )


{-| Options for a deleteGitHubAccountToken request
-}
type alias DeleteGitHubAccountTokenOptions =
    { tokenName : Maybe String
    }


{-|

<p>Deregisters an on-premises instance.</p>

**Required Parameters**

  - `instanceName` **:** `String`

-}
deregisterOnPremisesInstance :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deregisterOnPremisesInstance instanceName =
    let
        requestInput =
            DeregisterOnPremisesInstanceInput
                instanceName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deregisterOnPremisesInstanceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeregisterOnPremisesInstance"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Gets information about an application.</p>

**Required Parameters**

  - `applicationName` **:** `String`

-}
getApplication :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetApplicationOutput)
getApplication applicationName =
    let
        requestInput =
            GetApplicationInput
                applicationName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getApplicationInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetApplication"
            (AWS.Core.Decode.ResultDecoder "GetApplicationOutput" getApplicationOutputDecoder)
        )


{-|

<p>Gets information about an application revision.</p>

**Required Parameters**

  - `applicationName` **:** `String`
  - `revision` **:** `RevisionLocation`

-}
getApplicationRevision :
    String
    -> RevisionLocation
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetApplicationRevisionOutput)
getApplicationRevision applicationName revision =
    let
        requestInput =
            GetApplicationRevisionInput
                applicationName
                revision
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getApplicationRevisionInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetApplicationRevision"
            (AWS.Core.Decode.ResultDecoder "GetApplicationRevisionOutput" getApplicationRevisionOutputDecoder)
        )


{-|

<p>Gets information about a deployment.</p> <note> <p> The <code>content</code> property of the <code>appSpecContent</code> object in the returned revision is always null. Use <code>GetApplicationRevision</code> and the <code>sha256</code> property of the returned <code>appSpecContent</code> object to get the content of the deployment’s AppSpec file. </p> </note>

**Required Parameters**

  - `deploymentId` **:** `String`

-}
getDeployment :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDeploymentOutput)
getDeployment deploymentId =
    let
        requestInput =
            GetDeploymentInput
                deploymentId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getDeploymentInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetDeployment"
            (AWS.Core.Decode.ResultDecoder "GetDeploymentOutput" getDeploymentOutputDecoder)
        )


{-|

<p>Gets information about a deployment configuration.</p>

**Required Parameters**

  - `deploymentConfigName` **:** `String`

-}
getDeploymentConfig :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDeploymentConfigOutput)
getDeploymentConfig deploymentConfigName =
    let
        requestInput =
            GetDeploymentConfigInput
                deploymentConfigName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getDeploymentConfigInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetDeploymentConfig"
            (AWS.Core.Decode.ResultDecoder "GetDeploymentConfigOutput" getDeploymentConfigOutputDecoder)
        )


{-|

<p>Gets information about a deployment group.</p>

**Required Parameters**

  - `applicationName` **:** `String`
  - `deploymentGroupName` **:** `String`

-}
getDeploymentGroup :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDeploymentGroupOutput)
getDeploymentGroup applicationName deploymentGroupName =
    let
        requestInput =
            GetDeploymentGroupInput
                applicationName
                deploymentGroupName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getDeploymentGroupInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetDeploymentGroup"
            (AWS.Core.Decode.ResultDecoder "GetDeploymentGroupOutput" getDeploymentGroupOutputDecoder)
        )


{-|

<p>Gets information about an instance as part of a deployment.</p>

**Required Parameters**

  - `deploymentId` **:** `String`
  - `instanceId` **:** `String`

-}
getDeploymentInstance :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDeploymentInstanceOutput)
getDeploymentInstance deploymentId instanceId =
    let
        requestInput =
            GetDeploymentInstanceInput
                deploymentId
                instanceId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getDeploymentInstanceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetDeploymentInstance"
            (AWS.Core.Decode.ResultDecoder "GetDeploymentInstanceOutput" getDeploymentInstanceOutputDecoder)
        )


{-|

<p> Returns information about a deployment target. </p>

**Required Parameters**

-}
getDeploymentTarget :
    (GetDeploymentTargetOptions -> GetDeploymentTargetOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDeploymentTargetOutput)
getDeploymentTarget setOptions =
    let
        requestInput =
            GetDeploymentTargetInput
                options.deploymentId
                options.targetId

        options =
            setOptions (GetDeploymentTargetOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getDeploymentTargetInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetDeploymentTarget"
            (AWS.Core.Decode.ResultDecoder "GetDeploymentTargetOutput" getDeploymentTargetOutputDecoder)
        )


{-| Options for a getDeploymentTarget request
-}
type alias GetDeploymentTargetOptions =
    { deploymentId : Maybe String
    , targetId : Maybe String
    }


{-|

<p> Gets information about an on-premises instance. </p>

**Required Parameters**

  - `instanceName` **:** `String`

-}
getOnPremisesInstance :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetOnPremisesInstanceOutput)
getOnPremisesInstance instanceName =
    let
        requestInput =
            GetOnPremisesInstanceInput
                instanceName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getOnPremisesInstanceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetOnPremisesInstance"
            (AWS.Core.Decode.ResultDecoder "GetOnPremisesInstanceOutput" getOnPremisesInstanceOutputDecoder)
        )


{-|

<p>Lists information about revisions for an application.</p>

**Required Parameters**

  - `applicationName` **:** `String`

-}
listApplicationRevisions :
    String
    -> (ListApplicationRevisionsOptions -> ListApplicationRevisionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListApplicationRevisionsOutput)
listApplicationRevisions applicationName setOptions =
    let
        requestInput =
            ListApplicationRevisionsInput
                applicationName
                options.sortBy
                options.sortOrder
                options.s3Bucket
                options.s3KeyPrefix
                options.deployed
                options.nextToken

        options =
            setOptions (ListApplicationRevisionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listApplicationRevisionsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListApplicationRevisions"
            (AWS.Core.Decode.ResultDecoder "ListApplicationRevisionsOutput" listApplicationRevisionsOutputDecoder)
        )


{-| Options for a listApplicationRevisions request
-}
type alias ListApplicationRevisionsOptions =
    { sortBy : Maybe ApplicationRevisionSortBy
    , sortOrder : Maybe SortOrder
    , s3Bucket : Maybe String
    , s3KeyPrefix : Maybe String
    , deployed : Maybe ListStateFilterAction
    , nextToken : Maybe String
    }


{-|

<p>Lists the applications registered with the IAM user or AWS account.</p>

**Required Parameters**

-}
listApplications :
    (ListApplicationsOptions -> ListApplicationsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListApplicationsOutput)
listApplications setOptions =
    let
        requestInput =
            ListApplicationsInput
                options.nextToken

        options =
            setOptions (ListApplicationsOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listApplicationsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListApplications"
            (AWS.Core.Decode.ResultDecoder "ListApplicationsOutput" listApplicationsOutputDecoder)
        )


{-| Options for a listApplications request
-}
type alias ListApplicationsOptions =
    { nextToken : Maybe String
    }


{-|

<p>Lists the deployment configurations with the IAM user or AWS account.</p>

**Required Parameters**

-}
listDeploymentConfigs :
    (ListDeploymentConfigsOptions -> ListDeploymentConfigsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDeploymentConfigsOutput)
listDeploymentConfigs setOptions =
    let
        requestInput =
            ListDeploymentConfigsInput
                options.nextToken

        options =
            setOptions (ListDeploymentConfigsOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listDeploymentConfigsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListDeploymentConfigs"
            (AWS.Core.Decode.ResultDecoder "ListDeploymentConfigsOutput" listDeploymentConfigsOutputDecoder)
        )


{-| Options for a listDeploymentConfigs request
-}
type alias ListDeploymentConfigsOptions =
    { nextToken : Maybe String
    }


{-|

<p>Lists the deployment groups for an application registered with the IAM user or AWS account.</p>

**Required Parameters**

  - `applicationName` **:** `String`

-}
listDeploymentGroups :
    String
    -> (ListDeploymentGroupsOptions -> ListDeploymentGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDeploymentGroupsOutput)
listDeploymentGroups applicationName setOptions =
    let
        requestInput =
            ListDeploymentGroupsInput
                applicationName
                options.nextToken

        options =
            setOptions (ListDeploymentGroupsOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listDeploymentGroupsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListDeploymentGroups"
            (AWS.Core.Decode.ResultDecoder "ListDeploymentGroupsOutput" listDeploymentGroupsOutputDecoder)
        )


{-| Options for a listDeploymentGroups request
-}
type alias ListDeploymentGroupsOptions =
    { nextToken : Maybe String
    }


{-| <note> <p> The newer BatchGetDeploymentTargets should be used instead because it works with all compute types. <code>ListDeploymentInstances</code> throws an exception if it is used with a compute platform other than EC2/On-premises or AWS Lambda. </p> </note> <p> Lists the instance for a deployment associated with the IAM user or AWS account. </p>

**Required Parameters**

  - `deploymentId` **:** `String`

-}
listDeploymentInstances :
    String
    -> (ListDeploymentInstancesOptions -> ListDeploymentInstancesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDeploymentInstancesOutput)
listDeploymentInstances deploymentId setOptions =
    let
        requestInput =
            ListDeploymentInstancesInput
                deploymentId
                options.nextToken
                options.instanceStatusFilter
                options.instanceTypeFilter

        options =
            setOptions (ListDeploymentInstancesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listDeploymentInstancesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListDeploymentInstances"
            (AWS.Core.Decode.ResultDecoder "ListDeploymentInstancesOutput" listDeploymentInstancesOutputDecoder)
        )


{-| Options for a listDeploymentInstances request
-}
type alias ListDeploymentInstancesOptions =
    { nextToken : Maybe String
    , instanceStatusFilter : Maybe (List InstanceStatus)
    , instanceTypeFilter : Maybe (List InstanceType)
    }


{-|

<p> Returns an array of target IDs that are associated a deployment. </p>

**Required Parameters**

-}
listDeploymentTargets :
    (ListDeploymentTargetsOptions -> ListDeploymentTargetsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDeploymentTargetsOutput)
listDeploymentTargets setOptions =
    let
        requestInput =
            ListDeploymentTargetsInput
                options.deploymentId
                options.nextToken
                options.targetFilters

        options =
            setOptions (ListDeploymentTargetsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listDeploymentTargetsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListDeploymentTargets"
            (AWS.Core.Decode.ResultDecoder "ListDeploymentTargetsOutput" listDeploymentTargetsOutputDecoder)
        )


{-| Options for a listDeploymentTargets request
-}
type alias ListDeploymentTargetsOptions =
    { deploymentId : Maybe String
    , nextToken : Maybe String
    , targetFilters : Maybe (Dict String (List String))
    }


{-|

<p>Lists the deployments in a deployment group for an application registered with the IAM user or AWS account.</p>

**Required Parameters**

-}
listDeployments :
    (ListDeploymentsOptions -> ListDeploymentsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDeploymentsOutput)
listDeployments setOptions =
    let
        requestInput =
            ListDeploymentsInput
                options.applicationName
                options.deploymentGroupName
                options.includeOnlyStatuses
                options.createTimeRange
                options.nextToken

        options =
            setOptions (ListDeploymentsOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listDeploymentsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListDeployments"
            (AWS.Core.Decode.ResultDecoder "ListDeploymentsOutput" listDeploymentsOutputDecoder)
        )


{-| Options for a listDeployments request
-}
type alias ListDeploymentsOptions =
    { applicationName : Maybe String
    , deploymentGroupName : Maybe String
    , includeOnlyStatuses : Maybe (List DeploymentStatus)
    , createTimeRange : Maybe TimeRange
    , nextToken : Maybe String
    }


{-|

<p>Lists the names of stored connections to GitHub accounts.</p>

**Required Parameters**

-}
listGitHubAccountTokenNames :
    (ListGitHubAccountTokenNamesOptions -> ListGitHubAccountTokenNamesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListGitHubAccountTokenNamesOutput)
listGitHubAccountTokenNames setOptions =
    let
        requestInput =
            ListGitHubAccountTokenNamesInput
                options.nextToken

        options =
            setOptions (ListGitHubAccountTokenNamesOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listGitHubAccountTokenNamesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListGitHubAccountTokenNames"
            (AWS.Core.Decode.ResultDecoder "ListGitHubAccountTokenNamesOutput" listGitHubAccountTokenNamesOutputDecoder)
        )


{-| Options for a listGitHubAccountTokenNames request
-}
type alias ListGitHubAccountTokenNamesOptions =
    { nextToken : Maybe String
    }


{-|

<p>Gets a list of names for one or more on-premises instances.</p> <p>Unless otherwise specified, both registered and deregistered on-premises instance names are listed. To list only registered or deregistered on-premises instance names, use the registration status parameter.</p>

**Required Parameters**

-}
listOnPremisesInstances :
    (ListOnPremisesInstancesOptions -> ListOnPremisesInstancesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListOnPremisesInstancesOutput)
listOnPremisesInstances setOptions =
    let
        requestInput =
            ListOnPremisesInstancesInput
                options.registrationStatus
                options.tagFilters
                options.nextToken

        options =
            setOptions (ListOnPremisesInstancesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listOnPremisesInstancesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListOnPremisesInstances"
            (AWS.Core.Decode.ResultDecoder "ListOnPremisesInstancesOutput" listOnPremisesInstancesOutputDecoder)
        )


{-| Options for a listOnPremisesInstances request
-}
type alias ListOnPremisesInstancesOptions =
    { registrationStatus : Maybe RegistrationStatus
    , tagFilters : Maybe (List TagFilter)
    , nextToken : Maybe String
    }


{-|

<p> Returns a list of tags for the resource identified by a specified ARN. Tags are used to organize and categorize your CodeDeploy resources. </p>

**Required Parameters**

  - `resourceArn` **:** `String`

-}
listTagsForResource :
    String
    -> (ListTagsForResourceOptions -> ListTagsForResourceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceOutput)
listTagsForResource resourceArn setOptions =
    let
        requestInput =
            ListTagsForResourceInput
                resourceArn
                options.nextToken

        options =
            setOptions (ListTagsForResourceOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listTagsForResourceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListTagsForResource"
            (AWS.Core.Decode.ResultDecoder "ListTagsForResourceOutput" listTagsForResourceOutputDecoder)
        )


{-| Options for a listTagsForResource request
-}
type alias ListTagsForResourceOptions =
    { nextToken : Maybe String
    }


{-|

<p> Sets the result of a Lambda validation function. The function validates one or both lifecycle events (<code>BeforeAllowTraffic</code> and <code>AfterAllowTraffic</code>) and returns <code>Succeeded</code> or <code>Failed</code>. </p>

**Required Parameters**

-}
putLifecycleEventHookExecutionStatus :
    (PutLifecycleEventHookExecutionStatusOptions -> PutLifecycleEventHookExecutionStatusOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutLifecycleEventHookExecutionStatusOutput)
putLifecycleEventHookExecutionStatus setOptions =
    let
        requestInput =
            PutLifecycleEventHookExecutionStatusInput
                options.deploymentId
                options.lifecycleEventHookExecutionId
                options.status

        options =
            setOptions (PutLifecycleEventHookExecutionStatusOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> putLifecycleEventHookExecutionStatusInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "PutLifecycleEventHookExecutionStatus"
            (AWS.Core.Decode.ResultDecoder "PutLifecycleEventHookExecutionStatusOutput" putLifecycleEventHookExecutionStatusOutputDecoder)
        )


{-| Options for a putLifecycleEventHookExecutionStatus request
-}
type alias PutLifecycleEventHookExecutionStatusOptions =
    { deploymentId : Maybe String
    , lifecycleEventHookExecutionId : Maybe String
    , status : Maybe LifecycleEventStatus
    }


{-|

<p>Registers with AWS CodeDeploy a revision for the specified application.</p>

**Required Parameters**

  - `applicationName` **:** `String`
  - `revision` **:** `RevisionLocation`

-}
registerApplicationRevision :
    String
    -> RevisionLocation
    -> (RegisterApplicationRevisionOptions -> RegisterApplicationRevisionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
registerApplicationRevision applicationName revision setOptions =
    let
        requestInput =
            RegisterApplicationRevisionInput
                applicationName
                options.description
                revision

        options =
            setOptions (RegisterApplicationRevisionOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> registerApplicationRevisionInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RegisterApplicationRevision"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a registerApplicationRevision request
-}
type alias RegisterApplicationRevisionOptions =
    { description : Maybe String
    }


{-|

<p>Registers an on-premises instance.</p> <note> <p>Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the request. You cannot use both.</p> </note>

**Required Parameters**

  - `instanceName` **:** `String`

-}
registerOnPremisesInstance :
    String
    -> (RegisterOnPremisesInstanceOptions -> RegisterOnPremisesInstanceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
registerOnPremisesInstance instanceName setOptions =
    let
        requestInput =
            RegisterOnPremisesInstanceInput
                instanceName
                options.iamSessionArn
                options.iamUserArn

        options =
            setOptions (RegisterOnPremisesInstanceOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> registerOnPremisesInstanceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RegisterOnPremisesInstance"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a registerOnPremisesInstance request
-}
type alias RegisterOnPremisesInstanceOptions =
    { iamSessionArn : Maybe String
    , iamUserArn : Maybe String
    }


{-|

<p>Removes one or more tags from one or more on-premises instances.</p>

**Required Parameters**

  - `tags` **:** `(List Tag)`
  - `instanceNames` **:** `(List String)`

-}
removeTagsFromOnPremisesInstances :
    List Tag
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
removeTagsFromOnPremisesInstances tags instanceNames =
    let
        requestInput =
            RemoveTagsFromOnPremisesInstancesInput
                tags
                instanceNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> removeTagsFromOnPremisesInstancesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RemoveTagsFromOnPremisesInstances"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>In a blue/green deployment, overrides any specified wait time and starts terminating instances immediately after the traffic routing is complete.</p>

**Required Parameters**

-}
skipWaitTimeForInstanceTermination :
    (SkipWaitTimeForInstanceTerminationOptions -> SkipWaitTimeForInstanceTerminationOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
skipWaitTimeForInstanceTermination setOptions =
    let
        requestInput =
            SkipWaitTimeForInstanceTerminationInput
                options.deploymentId

        options =
            setOptions (SkipWaitTimeForInstanceTerminationOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> skipWaitTimeForInstanceTerminationInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "SkipWaitTimeForInstanceTermination"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a skipWaitTimeForInstanceTermination request
-}
type alias SkipWaitTimeForInstanceTerminationOptions =
    { deploymentId : Maybe String
    }


{-|

<p>Attempts to stop an ongoing deployment.</p>

**Required Parameters**

  - `deploymentId` **:** `String`

-}
stopDeployment :
    String
    -> (StopDeploymentOptions -> StopDeploymentOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopDeploymentOutput)
stopDeployment deploymentId setOptions =
    let
        requestInput =
            StopDeploymentInput
                deploymentId
                options.autoRollbackEnabled

        options =
            setOptions (StopDeploymentOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> stopDeploymentInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StopDeployment"
            (AWS.Core.Decode.ResultDecoder "StopDeploymentOutput" stopDeploymentOutputDecoder)
        )


{-| Options for a stopDeployment request
-}
type alias StopDeploymentOptions =
    { autoRollbackEnabled : Maybe Bool
    }


{-|

<p> Associates the list of tags in the input <code>Tags</code> parameter with the resource identified by the <code>ResourceArn</code> input parameter. </p>

**Required Parameters**

  - `resourceArn` **:** `String`
  - `tags` **:** `(List Tag)`

-}
tagResource :
    String
    -> List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceOutput)
tagResource resourceArn tags =
    let
        requestInput =
            TagResourceInput
                resourceArn
                tags
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> tagResourceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "TagResource"
            (AWS.Core.Decode.ResultDecoder "TagResourceOutput" tagResourceOutputDecoder)
        )


{-|

<p> Disassociates a resource from a list of tags. The resource is identified by the <code>ResourceArn</code> input parameter. The tags are identfied by the list of keys in the <code>TagKeys</code> input parameter. </p>

**Required Parameters**

  - `resourceArn` **:** `String`
  - `tagKeys` **:** `(List String)`

-}
untagResource :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceOutput)
untagResource resourceArn tagKeys =
    let
        requestInput =
            UntagResourceInput
                resourceArn
                tagKeys
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> untagResourceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UntagResource"
            (AWS.Core.Decode.ResultDecoder "UntagResourceOutput" untagResourceOutputDecoder)
        )


{-|

<p>Changes the name of an application.</p>

**Required Parameters**

-}
updateApplication :
    (UpdateApplicationOptions -> UpdateApplicationOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateApplication setOptions =
    let
        requestInput =
            UpdateApplicationInput
                options.applicationName
                options.newApplicationName

        options =
            setOptions (UpdateApplicationOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateApplicationInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateApplication"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a updateApplication request
-}
type alias UpdateApplicationOptions =
    { applicationName : Maybe String
    , newApplicationName : Maybe String
    }


{-|

<p>Changes information about a deployment group.</p>

**Required Parameters**

  - `applicationName` **:** `String`
  - `currentDeploymentGroupName` **:** `String`

-}
updateDeploymentGroup :
    String
    -> String
    -> (UpdateDeploymentGroupOptions -> UpdateDeploymentGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateDeploymentGroupOutput)
updateDeploymentGroup applicationName currentDeploymentGroupName setOptions =
    let
        requestInput =
            UpdateDeploymentGroupInput
                applicationName
                currentDeploymentGroupName
                options.newDeploymentGroupName
                options.deploymentConfigName
                options.ec2TagFilters
                options.onPremisesInstanceTagFilters
                options.autoScalingGroups
                options.serviceRoleArn
                options.triggerConfigurations
                options.alarmConfiguration
                options.autoRollbackConfiguration
                options.deploymentStyle
                options.blueGreenDeploymentConfiguration
                options.loadBalancerInfo
                options.ec2TagSet
                options.ecsServices
                options.onPremisesTagSet

        options =
            setOptions (UpdateDeploymentGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateDeploymentGroupInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateDeploymentGroup"
            (AWS.Core.Decode.ResultDecoder "UpdateDeploymentGroupOutput" updateDeploymentGroupOutputDecoder)
        )


{-| Options for a updateDeploymentGroup request
-}
type alias UpdateDeploymentGroupOptions =
    { newDeploymentGroupName : Maybe String
    , deploymentConfigName : Maybe String
    , ec2TagFilters : Maybe (List EC2TagFilter)
    , onPremisesInstanceTagFilters : Maybe (List TagFilter)
    , autoScalingGroups : Maybe (List String)
    , serviceRoleArn : Maybe String
    , triggerConfigurations : Maybe (List TriggerConfig)
    , alarmConfiguration : Maybe AlarmConfiguration
    , autoRollbackConfiguration : Maybe AutoRollbackConfiguration
    , deploymentStyle : Maybe DeploymentStyle
    , blueGreenDeploymentConfiguration : Maybe BlueGreenDeploymentConfiguration
    , loadBalancerInfo : Maybe LoadBalancerInfo
    , ec2TagSet : Maybe EC2TagSet
    , ecsServices : Maybe (List ECSService)
    , onPremisesTagSet : Maybe OnPremisesTagSet
    }


{-|

<p>Information about an alarm.</p>

-}
type alias Alarm =
    { name : Maybe String
    }


alarmDecoder : JD.Decoder Alarm
alarmDecoder =
    JD.succeed Alarm
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "name", "Name" ]
                JD.string
            )


alarmToString :
    Alarm
    -> String -- List (String, String)
alarmToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.toList
    ""


{-|

<p>Information about alarms associated with the deployment group.</p>

-}
type alias AlarmConfiguration =
    { enabled : Maybe Bool
    , ignorePollAlarmFailure : Maybe Bool
    , alarms : Maybe (List Alarm)
    }


alarmConfigurationDecoder : JD.Decoder AlarmConfiguration
alarmConfigurationDecoder =
    JD.succeed AlarmConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "enabled", "Enabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ignorePollAlarmFailure", "IgnorePollAlarmFailure" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "alarms", "Alarms" ]
                (JD.list alarmDecoder)
            )


alarmConfigurationToString :
    AlarmConfiguration
    -> String -- List (String, String)
alarmConfigurationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
    --     |> Dict.insert
    --         "ignorePollAlarmFailure" "" -- val.ignorePollAlarmFailure
    --     |> Dict.insert
    --         "alarms" "" -- val.alarms
    --     |> Dict.toList
    ""


{-|

<p> A revision for an AWS Lambda or Amazon ECS deployment that is a YAML-formatted or JSON-formatted string. For AWS Lambda and Amazon ECS deployments, the revision is the same as the AppSpec file. This method replaces the deprecated <code>RawString</code> data type. </p>

-}
type alias AppSpecContent =
    { content : Maybe String
    , sha256 : Maybe String
    }


appSpecContentDecoder : JD.Decoder AppSpecContent
appSpecContentDecoder =
    JD.succeed AppSpecContent
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "content", "Content" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "sha256", "Sha256" ]
                JD.string
            )


appSpecContentToString :
    AppSpecContent
    -> String -- List (String, String)
appSpecContentToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "content" "" -- val.content
    --     |> Dict.insert
    --         "sha256" "" -- val.sha256
    --     |> Dict.toList
    ""


{-|

<p>Information about an application.</p>

-}
type alias ApplicationInfo =
    { applicationId : Maybe String
    , applicationName : Maybe String
    , createTime : Maybe Posix
    , linkedToGitHub : Maybe Bool
    , gitHubAccountName : Maybe String
    , computePlatform : Maybe ComputePlatform
    }


applicationInfoDecoder : JD.Decoder ApplicationInfo
applicationInfoDecoder =
    JD.succeed ApplicationInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "applicationId", "ApplicationId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "applicationName", "ApplicationName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "createTime", "CreateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "linkedToGitHub", "LinkedToGitHub" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "gitHubAccountName", "GitHubAccountName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "computePlatform", "ComputePlatform" ]
                computePlatformDecoder
            )


applicationInfoToString :
    ApplicationInfo
    -> String -- List (String, String)
applicationInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "applicationId" "" -- val.applicationId
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
    --     |> Dict.insert
    --         "createTime" "" -- val.createTime
    --     |> Dict.insert
    --         "linkedToGitHub" "" -- val.linkedToGitHub
    --     |> Dict.insert
    --         "gitHubAccountName" "" -- val.gitHubAccountName
    --     |> Dict.insert
    --         "computePlatform" "" -- val.computePlatform
    --     |> Dict.toList
    ""


{-| One of

  - `ApplicationRevisionSortBy_registerTime`
  - `ApplicationRevisionSortBy_firstUsedTime`
  - `ApplicationRevisionSortBy_lastUsedTime`

-}
type ApplicationRevisionSortBy
    = ApplicationRevisionSortBy_registerTime
    | ApplicationRevisionSortBy_firstUsedTime
    | ApplicationRevisionSortBy_lastUsedTime


applicationRevisionSortByDecoder : JD.Decoder ApplicationRevisionSortBy
applicationRevisionSortByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "registerTime" ->
                        JD.succeed ApplicationRevisionSortBy_registerTime

                    "firstUsedTime" ->
                        JD.succeed ApplicationRevisionSortBy_firstUsedTime

                    "lastUsedTime" ->
                        JD.succeed ApplicationRevisionSortBy_lastUsedTime

                    _ ->
                        JD.fail "bad thing"
            )


applicationRevisionSortByToString : ApplicationRevisionSortBy -> String
applicationRevisionSortByToString val =
    case val of
        ApplicationRevisionSortBy_registerTime ->
            "registerTime"

        ApplicationRevisionSortBy_firstUsedTime ->
            "firstUsedTime"

        ApplicationRevisionSortBy_lastUsedTime ->
            "lastUsedTime"


{-|

<p>Information about a configuration for automatically rolling back to a previous version of an application revision when a deployment is not completed successfully.</p>

-}
type alias AutoRollbackConfiguration =
    { enabled : Maybe Bool
    , events : Maybe (List AutoRollbackEvent)
    }


autoRollbackConfigurationDecoder : JD.Decoder AutoRollbackConfiguration
autoRollbackConfigurationDecoder =
    JD.succeed AutoRollbackConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "enabled", "Enabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "events", "Events" ]
                (JD.list autoRollbackEventDecoder)
            )


autoRollbackConfigurationToString :
    AutoRollbackConfiguration
    -> String -- List (String, String)
autoRollbackConfigurationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
    --     |> Dict.insert
    --         "events" "" -- val.events
    --     |> Dict.toList
    ""


{-| One of

  - `AutoRollbackEvent_DEPLOYMENT_FAILURE`
  - `AutoRollbackEvent_DEPLOYMENT_STOP_ON_ALARM`
  - `AutoRollbackEvent_DEPLOYMENT_STOP_ON_REQUEST`

-}
type AutoRollbackEvent
    = AutoRollbackEvent_DEPLOYMENT_FAILURE
    | AutoRollbackEvent_DEPLOYMENT_STOP_ON_ALARM
    | AutoRollbackEvent_DEPLOYMENT_STOP_ON_REQUEST


autoRollbackEventDecoder : JD.Decoder AutoRollbackEvent
autoRollbackEventDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DEPLOYMENT_FAILURE" ->
                        JD.succeed AutoRollbackEvent_DEPLOYMENT_FAILURE

                    "DEPLOYMENT_STOP_ON_ALARM" ->
                        JD.succeed AutoRollbackEvent_DEPLOYMENT_STOP_ON_ALARM

                    "DEPLOYMENT_STOP_ON_REQUEST" ->
                        JD.succeed AutoRollbackEvent_DEPLOYMENT_STOP_ON_REQUEST

                    _ ->
                        JD.fail "bad thing"
            )


autoRollbackEventToString : AutoRollbackEvent -> String
autoRollbackEventToString val =
    case val of
        AutoRollbackEvent_DEPLOYMENT_FAILURE ->
            "DEPLOYMENT_FAILURE"

        AutoRollbackEvent_DEPLOYMENT_STOP_ON_ALARM ->
            "DEPLOYMENT_STOP_ON_ALARM"

        AutoRollbackEvent_DEPLOYMENT_STOP_ON_REQUEST ->
            "DEPLOYMENT_STOP_ON_REQUEST"


{-|

<p>Information about an Auto Scaling group.</p>

-}
type alias AutoScalingGroup =
    { name : Maybe String
    , hook : Maybe String
    }


autoScalingGroupDecoder : JD.Decoder AutoScalingGroup
autoScalingGroupDecoder =
    JD.succeed AutoScalingGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "name", "Name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "hook", "Hook" ]
                JD.string
            )


autoScalingGroupToString :
    AutoScalingGroup
    -> String -- List (String, String)
autoScalingGroupToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.insert
    --         "hook" "" -- val.hook
    --     |> Dict.toList
    ""


{-| Type of HTTP response from batchGetApplicationRevisio
-}
type alias BatchGetApplicationRevisionsOutput =
    { applicationName : Maybe String
    , errorMessage : Maybe String
    , revisions : Maybe (List RevisionInfo)
    }


batchGetApplicationRevisionsOutputDecoder : JD.Decoder BatchGetApplicationRevisionsOutput
batchGetApplicationRevisionsOutputDecoder =
    JD.succeed BatchGetApplicationRevisionsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "applicationName", "ApplicationName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "errorMessage", "ErrorMessage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "revisions", "Revisions" ]
                (JD.list revisionInfoDecoder)
            )


batchGetApplicationRevisionsOutputToString :
    BatchGetApplicationRevisionsOutput
    -> String -- List (String, String)
batchGetApplicationRevisionsOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
    --     |> Dict.insert
    --         "revisions" "" -- val.revisions
    --     |> Dict.toList
    ""


{-| Type of HTTP response from batchGetApplicatio
-}
type alias BatchGetApplicationsOutput =
    { applicationsInfo : Maybe (List ApplicationInfo)
    }


batchGetApplicationsOutputDecoder : JD.Decoder BatchGetApplicationsOutput
batchGetApplicationsOutputDecoder =
    JD.succeed BatchGetApplicationsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "applicationsInfo", "ApplicationsInfo" ]
                (JD.list applicationInfoDecoder)
            )


batchGetApplicationsOutputToString :
    BatchGetApplicationsOutput
    -> String -- List (String, String)
batchGetApplicationsOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "applicationsInfo" "" -- val.applicationsInfo
    --     |> Dict.toList
    ""


{-| Type of HTTP response from batchGetDeploymentGrou
-}
type alias BatchGetDeploymentGroupsOutput =
    { deploymentGroupsInfo : Maybe (List DeploymentGroupInfo)
    , errorMessage : Maybe String
    }


batchGetDeploymentGroupsOutputDecoder : JD.Decoder BatchGetDeploymentGroupsOutput
batchGetDeploymentGroupsOutputDecoder =
    JD.succeed BatchGetDeploymentGroupsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentGroupsInfo", "DeploymentGroupsInfo" ]
                (JD.list deploymentGroupInfoDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "errorMessage", "ErrorMessage" ]
                JD.string
            )


batchGetDeploymentGroupsOutputToString :
    BatchGetDeploymentGroupsOutput
    -> String -- List (String, String)
batchGetDeploymentGroupsOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentGroupsInfo" "" -- val.deploymentGroupsInfo
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
    --     |> Dict.toList
    ""


{-| Type of HTTP response from batchGetDeploymentInstanc
-}
type alias BatchGetDeploymentInstancesOutput =
    { instancesSummary : Maybe (List InstanceSummary)
    , errorMessage : Maybe String
    }


batchGetDeploymentInstancesOutputDecoder : JD.Decoder BatchGetDeploymentInstancesOutput
batchGetDeploymentInstancesOutputDecoder =
    JD.succeed BatchGetDeploymentInstancesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "instancesSummary", "InstancesSummary" ]
                (JD.list instanceSummaryDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "errorMessage", "ErrorMessage" ]
                JD.string
            )


batchGetDeploymentInstancesOutputToString :
    BatchGetDeploymentInstancesOutput
    -> String -- List (String, String)
batchGetDeploymentInstancesOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "instancesSummary" "" -- val.instancesSummary
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
    --     |> Dict.toList
    ""


{-| Type of HTTP response from batchGetDeploymentTarge
-}
type alias BatchGetDeploymentTargetsOutput =
    { deploymentTargets : Maybe (List DeploymentTarget)
    }


batchGetDeploymentTargetsOutputDecoder : JD.Decoder BatchGetDeploymentTargetsOutput
batchGetDeploymentTargetsOutputDecoder =
    JD.succeed BatchGetDeploymentTargetsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentTargets", "DeploymentTargets" ]
                (JD.list deploymentTargetDecoder)
            )


batchGetDeploymentTargetsOutputToString :
    BatchGetDeploymentTargetsOutput
    -> String -- List (String, String)
batchGetDeploymentTargetsOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentTargets" "" -- val.deploymentTargets
    --     |> Dict.toList
    ""


{-| Type of HTTP response from batchGetDeploymen
-}
type alias BatchGetDeploymentsOutput =
    { deploymentsInfo : Maybe (List DeploymentInfo)
    }


batchGetDeploymentsOutputDecoder : JD.Decoder BatchGetDeploymentsOutput
batchGetDeploymentsOutputDecoder =
    JD.succeed BatchGetDeploymentsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentsInfo", "DeploymentsInfo" ]
                (JD.list deploymentInfoDecoder)
            )


batchGetDeploymentsOutputToString :
    BatchGetDeploymentsOutput
    -> String -- List (String, String)
batchGetDeploymentsOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentsInfo" "" -- val.deploymentsInfo
    --     |> Dict.toList
    ""


{-| Type of HTTP response from batchGetOnPremisesInstanc
-}
type alias BatchGetOnPremisesInstancesOutput =
    { instanceInfos : Maybe (List InstanceInfo)
    }


batchGetOnPremisesInstancesOutputDecoder : JD.Decoder BatchGetOnPremisesInstancesOutput
batchGetOnPremisesInstancesOutputDecoder =
    JD.succeed BatchGetOnPremisesInstancesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "instanceInfos", "InstanceInfos" ]
                (JD.list instanceInfoDecoder)
            )


batchGetOnPremisesInstancesOutputToString :
    BatchGetOnPremisesInstancesOutput
    -> String -- List (String, String)
batchGetOnPremisesInstancesOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "instanceInfos" "" -- val.instanceInfos
    --     |> Dict.toList
    ""


{-|

<p>Information about blue/green deployment options for a deployment group.</p>

-}
type alias BlueGreenDeploymentConfiguration =
    { terminateBlueInstancesOnDeploymentSuccess : Maybe BlueInstanceTerminationOption
    , deploymentReadyOption : Maybe DeploymentReadyOption
    , greenFleetProvisioningOption : Maybe GreenFleetProvisioningOption
    }


blueGreenDeploymentConfigurationDecoder : JD.Decoder BlueGreenDeploymentConfiguration
blueGreenDeploymentConfigurationDecoder =
    JD.succeed BlueGreenDeploymentConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "terminateBlueInstancesOnDeploymentSuccess", "TerminateBlueInstancesOnDeploymentSuccess" ]
                blueInstanceTerminationOptionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentReadyOption", "DeploymentReadyOption" ]
                deploymentReadyOptionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "greenFleetProvisioningOption", "GreenFleetProvisioningOption" ]
                greenFleetProvisioningOptionDecoder
            )


blueGreenDeploymentConfigurationToString :
    BlueGreenDeploymentConfiguration
    -> String -- List (String, String)
blueGreenDeploymentConfigurationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "terminateBlueInstancesOnDeploymentSuccess" "" -- val.terminateBlueInstancesOnDeploymentSuccess
    --     |> Dict.insert
    --         "deploymentReadyOption" "" -- val.deploymentReadyOption
    --     |> Dict.insert
    --         "greenFleetProvisioningOption" "" -- val.greenFleetProvisioningOption
    --     |> Dict.toList
    ""


{-|

<p>Information about whether instances in the original environment are terminated when a blue/green deployment is successful. <code>BlueInstanceTerminationOption</code> does not apply to Lambda deployments. </p>

-}
type alias BlueInstanceTerminationOption =
    { action : Maybe InstanceAction
    , terminationWaitTimeInMinutes : Maybe Int
    }


blueInstanceTerminationOptionDecoder : JD.Decoder BlueInstanceTerminationOption
blueInstanceTerminationOptionDecoder =
    JD.succeed BlueInstanceTerminationOption
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "action", "Action" ]
                instanceActionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "terminationWaitTimeInMinutes", "TerminationWaitTimeInMinutes" ]
                JD.int
            )


blueInstanceTerminationOptionToString :
    BlueInstanceTerminationOption
    -> String -- List (String, String)
blueInstanceTerminationOptionToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "action" "" -- val.action
    --     |> Dict.insert
    --         "terminationWaitTimeInMinutes" "" -- val.terminationWaitTimeInMinutes
    --     |> Dict.toList
    ""


{-| One of

  - `BundleType_tar`
  - `BundleType_tgz`
  - `BundleType_zip`
  - `BundleType_YAML`
  - `BundleType_JSON`

-}
type BundleType
    = BundleType_tar
    | BundleType_tgz
    | BundleType_zip
    | BundleType_YAML
    | BundleType_JSON


bundleTypeDecoder : JD.Decoder BundleType
bundleTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "tar" ->
                        JD.succeed BundleType_tar

                    "tgz" ->
                        JD.succeed BundleType_tgz

                    "zip" ->
                        JD.succeed BundleType_zip

                    "YAML" ->
                        JD.succeed BundleType_YAML

                    "JSON" ->
                        JD.succeed BundleType_JSON

                    _ ->
                        JD.fail "bad thing"
            )


bundleTypeToString : BundleType -> String
bundleTypeToString val =
    case val of
        BundleType_tar ->
            "tar"

        BundleType_tgz ->
            "tgz"

        BundleType_zip ->
            "zip"

        BundleType_YAML ->
            "YAML"

        BundleType_JSON ->
            "JSON"


{-| One of

  - `ComputePlatform_Server`
  - `ComputePlatform_Lambda`
  - `ComputePlatform_ECS`

-}
type ComputePlatform
    = ComputePlatform_Server
    | ComputePlatform_Lambda
    | ComputePlatform_ECS


computePlatformDecoder : JD.Decoder ComputePlatform
computePlatformDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Server" ->
                        JD.succeed ComputePlatform_Server

                    "Lambda" ->
                        JD.succeed ComputePlatform_Lambda

                    "ECS" ->
                        JD.succeed ComputePlatform_ECS

                    _ ->
                        JD.fail "bad thing"
            )


computePlatformToString : ComputePlatform -> String
computePlatformToString val =
    case val of
        ComputePlatform_Server ->
            "Server"

        ComputePlatform_Lambda ->
            "Lambda"

        ComputePlatform_ECS ->
            "ECS"


{-| Type of HTTP response from createApplicati
-}
type alias CreateApplicationOutput =
    { applicationId : Maybe String
    }


createApplicationOutputDecoder : JD.Decoder CreateApplicationOutput
createApplicationOutputDecoder =
    JD.succeed CreateApplicationOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "applicationId", "ApplicationId" ]
                JD.string
            )


createApplicationOutputToString :
    CreateApplicationOutput
    -> String -- List (String, String)
createApplicationOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "applicationId" "" -- val.applicationId
    --     |> Dict.toList
    ""


{-| Type of HTTP response from createDeploymentConf
-}
type alias CreateDeploymentConfigOutput =
    { deploymentConfigId : Maybe String
    }


createDeploymentConfigOutputDecoder : JD.Decoder CreateDeploymentConfigOutput
createDeploymentConfigOutputDecoder =
    JD.succeed CreateDeploymentConfigOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentConfigId", "DeploymentConfigId" ]
                JD.string
            )


createDeploymentConfigOutputToString :
    CreateDeploymentConfigOutput
    -> String -- List (String, String)
createDeploymentConfigOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentConfigId" "" -- val.deploymentConfigId
    --     |> Dict.toList
    ""


{-| Type of HTTP response from createDeploymentGro
-}
type alias CreateDeploymentGroupOutput =
    { deploymentGroupId : Maybe String
    }


createDeploymentGroupOutputDecoder : JD.Decoder CreateDeploymentGroupOutput
createDeploymentGroupOutputDecoder =
    JD.succeed CreateDeploymentGroupOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentGroupId", "DeploymentGroupId" ]
                JD.string
            )


createDeploymentGroupOutputToString :
    CreateDeploymentGroupOutput
    -> String -- List (String, String)
createDeploymentGroupOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentGroupId" "" -- val.deploymentGroupId
    --     |> Dict.toList
    ""


{-| Type of HTTP response from createDeployme
-}
type alias CreateDeploymentOutput =
    { deploymentId : Maybe String
    }


createDeploymentOutputDecoder : JD.Decoder CreateDeploymentOutput
createDeploymentOutputDecoder =
    JD.succeed CreateDeploymentOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentId", "DeploymentId" ]
                JD.string
            )


createDeploymentOutputToString :
    CreateDeploymentOutput
    -> String -- List (String, String)
createDeploymentOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentId" "" -- val.deploymentId
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteDeploymentGro
-}
type alias DeleteDeploymentGroupOutput =
    { hooksNotCleanedUp : Maybe (List AutoScalingGroup)
    }


deleteDeploymentGroupOutputDecoder : JD.Decoder DeleteDeploymentGroupOutput
deleteDeploymentGroupOutputDecoder =
    JD.succeed DeleteDeploymentGroupOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "hooksNotCleanedUp", "HooksNotCleanedUp" ]
                (JD.list autoScalingGroupDecoder)
            )


deleteDeploymentGroupOutputToString :
    DeleteDeploymentGroupOutput
    -> String -- List (String, String)
deleteDeploymentGroupOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "hooksNotCleanedUp" "" -- val.hooksNotCleanedUp
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteGitHubAccountTok
-}
type alias DeleteGitHubAccountTokenOutput =
    { tokenName : Maybe String
    }


deleteGitHubAccountTokenOutputDecoder : JD.Decoder DeleteGitHubAccountTokenOutput
deleteGitHubAccountTokenOutputDecoder =
    JD.succeed DeleteGitHubAccountTokenOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "tokenName", "TokenName" ]
                JD.string
            )


deleteGitHubAccountTokenOutputToString :
    DeleteGitHubAccountTokenOutput
    -> String -- List (String, String)
deleteGitHubAccountTokenOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "tokenName" "" -- val.tokenName
    --     |> Dict.toList
    ""


{-|

<p>Information about a deployment configuration.</p>

-}
type alias DeploymentConfigInfo =
    { deploymentConfigId : Maybe String
    , deploymentConfigName : Maybe String
    , minimumHealthyHosts : Maybe MinimumHealthyHosts
    , createTime : Maybe Posix
    , computePlatform : Maybe ComputePlatform
    , trafficRoutingConfig : Maybe TrafficRoutingConfig
    }


deploymentConfigInfoDecoder : JD.Decoder DeploymentConfigInfo
deploymentConfigInfoDecoder =
    JD.succeed DeploymentConfigInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentConfigId", "DeploymentConfigId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentConfigName", "DeploymentConfigName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "minimumHealthyHosts", "MinimumHealthyHosts" ]
                minimumHealthyHostsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "createTime", "CreateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "computePlatform", "ComputePlatform" ]
                computePlatformDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "trafficRoutingConfig", "TrafficRoutingConfig" ]
                trafficRoutingConfigDecoder
            )


deploymentConfigInfoToString :
    DeploymentConfigInfo
    -> String -- List (String, String)
deploymentConfigInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentConfigId" "" -- val.deploymentConfigId
    --     |> Dict.insert
    --         "deploymentConfigName" "" -- val.deploymentConfigName
    --     |> Dict.insert
    --         "minimumHealthyHosts" "" -- val.minimumHealthyHosts
    --     |> Dict.insert
    --         "createTime" "" -- val.createTime
    --     |> Dict.insert
    --         "computePlatform" "" -- val.computePlatform
    --     |> Dict.insert
    --         "trafficRoutingConfig" "" -- val.trafficRoutingConfig
    --     |> Dict.toList
    ""


{-| One of

  - `DeploymentCreator_user`
  - `DeploymentCreator_autoscaling`
  - `DeploymentCreator_codeDeployRollback`

-}
type DeploymentCreator
    = DeploymentCreator_user
    | DeploymentCreator_autoscaling
    | DeploymentCreator_codeDeployRollback


deploymentCreatorDecoder : JD.Decoder DeploymentCreator
deploymentCreatorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "user" ->
                        JD.succeed DeploymentCreator_user

                    "autoscaling" ->
                        JD.succeed DeploymentCreator_autoscaling

                    "codeDeployRollback" ->
                        JD.succeed DeploymentCreator_codeDeployRollback

                    _ ->
                        JD.fail "bad thing"
            )


deploymentCreatorToString : DeploymentCreator -> String
deploymentCreatorToString val =
    case val of
        DeploymentCreator_user ->
            "user"

        DeploymentCreator_autoscaling ->
            "autoscaling"

        DeploymentCreator_codeDeployRollback ->
            "codeDeployRollback"


{-|

<p>Information about a deployment group.</p>

-}
type alias DeploymentGroupInfo =
    { applicationName : Maybe String
    , deploymentGroupId : Maybe String
    , deploymentGroupName : Maybe String
    , deploymentConfigName : Maybe String
    , ec2TagFilters : Maybe (List EC2TagFilter)
    , onPremisesInstanceTagFilters : Maybe (List TagFilter)
    , autoScalingGroups : Maybe (List AutoScalingGroup)
    , serviceRoleArn : Maybe String
    , targetRevision : Maybe RevisionLocation
    , triggerConfigurations : Maybe (List TriggerConfig)
    , alarmConfiguration : Maybe AlarmConfiguration
    , autoRollbackConfiguration : Maybe AutoRollbackConfiguration
    , deploymentStyle : Maybe DeploymentStyle
    , blueGreenDeploymentConfiguration : Maybe BlueGreenDeploymentConfiguration
    , loadBalancerInfo : Maybe LoadBalancerInfo
    , lastSuccessfulDeployment : Maybe LastDeploymentInfo
    , lastAttemptedDeployment : Maybe LastDeploymentInfo
    , ec2TagSet : Maybe EC2TagSet
    , onPremisesTagSet : Maybe OnPremisesTagSet
    , computePlatform : Maybe ComputePlatform
    , ecsServices : Maybe (List ECSService)
    }


deploymentGroupInfoDecoder : JD.Decoder DeploymentGroupInfo
deploymentGroupInfoDecoder =
    JD.succeed DeploymentGroupInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "applicationName", "ApplicationName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentGroupId", "DeploymentGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentGroupName", "DeploymentGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentConfigName", "DeploymentConfigName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ec2TagFilters", "Ec2TagFilters" ]
                (JD.list eC2TagFilterDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "onPremisesInstanceTagFilters", "OnPremisesInstanceTagFilters" ]
                (JD.list tagFilterDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "autoScalingGroups", "AutoScalingGroups" ]
                (JD.list autoScalingGroupDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "serviceRoleArn", "ServiceRoleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetRevision", "TargetRevision" ]
                revisionLocationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "triggerConfigurations", "TriggerConfigurations" ]
                (JD.list triggerConfigDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "alarmConfiguration", "AlarmConfiguration" ]
                alarmConfigurationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "autoRollbackConfiguration", "AutoRollbackConfiguration" ]
                autoRollbackConfigurationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentStyle", "DeploymentStyle" ]
                deploymentStyleDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "blueGreenDeploymentConfiguration", "BlueGreenDeploymentConfiguration" ]
                blueGreenDeploymentConfigurationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "loadBalancerInfo", "LoadBalancerInfo" ]
                loadBalancerInfoDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastSuccessfulDeployment", "LastSuccessfulDeployment" ]
                lastDeploymentInfoDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastAttemptedDeployment", "LastAttemptedDeployment" ]
                lastDeploymentInfoDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ec2TagSet", "Ec2TagSet" ]
                eC2TagSetDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "onPremisesTagSet", "OnPremisesTagSet" ]
                onPremisesTagSetDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "computePlatform", "ComputePlatform" ]
                computePlatformDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ecsServices", "EcsServices" ]
                (JD.list eCSServiceDecoder)
            )


deploymentGroupInfoToString :
    DeploymentGroupInfo
    -> String -- List (String, String)
deploymentGroupInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
    --     |> Dict.insert
    --         "deploymentGroupId" "" -- val.deploymentGroupId
    --     |> Dict.insert
    --         "deploymentGroupName" "" -- val.deploymentGroupName
    --     |> Dict.insert
    --         "deploymentConfigName" "" -- val.deploymentConfigName
    --     |> Dict.insert
    --         "ec2TagFilters" "" -- val.ec2TagFilters
    --     |> Dict.insert
    --         "onPremisesInstanceTagFilters" "" -- val.onPremisesInstanceTagFilters
    --     |> Dict.insert
    --         "autoScalingGroups" "" -- val.autoScalingGroups
    --     |> Dict.insert
    --         "serviceRoleArn" "" -- val.serviceRoleArn
    --     |> Dict.insert
    --         "targetRevision" "" -- val.targetRevision
    --     |> Dict.insert
    --         "triggerConfigurations" "" -- val.triggerConfigurations
    --     |> Dict.insert
    --         "alarmConfiguration" "" -- val.alarmConfiguration
    --     |> Dict.insert
    --         "autoRollbackConfiguration" "" -- val.autoRollbackConfiguration
    --     |> Dict.insert
    --         "deploymentStyle" "" -- val.deploymentStyle
    --     |> Dict.insert
    --         "blueGreenDeploymentConfiguration" "" -- val.blueGreenDeploymentConfiguration
    --     |> Dict.insert
    --         "loadBalancerInfo" "" -- val.loadBalancerInfo
    --     |> Dict.insert
    --         "lastSuccessfulDeployment" "" -- val.lastSuccessfulDeployment
    --     |> Dict.insert
    --         "lastAttemptedDeployment" "" -- val.lastAttemptedDeployment
    --     |> Dict.insert
    --         "ec2TagSet" "" -- val.ec2TagSet
    --     |> Dict.insert
    --         "onPremisesTagSet" "" -- val.onPremisesTagSet
    --     |> Dict.insert
    --         "computePlatform" "" -- val.computePlatform
    --     |> Dict.insert
    --         "ecsServices" "" -- val.ecsServices
    --     |> Dict.toList
    ""


{-|

<p>Information about a deployment.</p>

-}
type alias DeploymentInfo =
    { applicationName : Maybe String
    , deploymentGroupName : Maybe String
    , deploymentConfigName : Maybe String
    , deploymentId : Maybe String
    , previousRevision : Maybe RevisionLocation
    , revision : Maybe RevisionLocation
    , status : Maybe DeploymentStatus
    , errorInformation : Maybe ErrorInformation
    , createTime : Maybe Posix
    , startTime : Maybe Posix
    , completeTime : Maybe Posix
    , deploymentOverview : Maybe DeploymentOverview
    , description : Maybe String
    , creator : Maybe DeploymentCreator
    , ignoreApplicationStopFailures : Maybe Bool
    , autoRollbackConfiguration : Maybe AutoRollbackConfiguration
    , updateOutdatedInstancesOnly : Maybe Bool
    , rollbackInfo : Maybe RollbackInfo
    , deploymentStyle : Maybe DeploymentStyle
    , targetInstances : Maybe TargetInstances
    , instanceTerminationWaitTimeStarted : Maybe Bool
    , blueGreenDeploymentConfiguration : Maybe BlueGreenDeploymentConfiguration
    , loadBalancerInfo : Maybe LoadBalancerInfo
    , additionalDeploymentStatusInfo : Maybe String
    , fileExistsBehavior : Maybe FileExistsBehavior
    , deploymentStatusMessages : Maybe (List String)
    , computePlatform : Maybe ComputePlatform
    }


deploymentInfoDecoder : JD.Decoder DeploymentInfo
deploymentInfoDecoder =
    JD.succeed DeploymentInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "applicationName", "ApplicationName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentGroupName", "DeploymentGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentConfigName", "DeploymentConfigName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentId", "DeploymentId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "previousRevision", "PreviousRevision" ]
                revisionLocationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "revision", "Revision" ]
                revisionLocationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "status", "Status" ]
                deploymentStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "errorInformation", "ErrorInformation" ]
                errorInformationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "createTime", "CreateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "startTime", "StartTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "completeTime", "CompleteTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentOverview", "DeploymentOverview" ]
                deploymentOverviewDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "description", "Description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "creator", "Creator" ]
                deploymentCreatorDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ignoreApplicationStopFailures", "IgnoreApplicationStopFailures" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "autoRollbackConfiguration", "AutoRollbackConfiguration" ]
                autoRollbackConfigurationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "updateOutdatedInstancesOnly", "UpdateOutdatedInstancesOnly" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "rollbackInfo", "RollbackInfo" ]
                rollbackInfoDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentStyle", "DeploymentStyle" ]
                deploymentStyleDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetInstances", "TargetInstances" ]
                targetInstancesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "instanceTerminationWaitTimeStarted", "InstanceTerminationWaitTimeStarted" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "blueGreenDeploymentConfiguration", "BlueGreenDeploymentConfiguration" ]
                blueGreenDeploymentConfigurationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "loadBalancerInfo", "LoadBalancerInfo" ]
                loadBalancerInfoDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "additionalDeploymentStatusInfo", "AdditionalDeploymentStatusInfo" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "fileExistsBehavior", "FileExistsBehavior" ]
                fileExistsBehaviorDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentStatusMessages", "DeploymentStatusMessages" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "computePlatform", "ComputePlatform" ]
                computePlatformDecoder
            )


deploymentInfoToString :
    DeploymentInfo
    -> String -- List (String, String)
deploymentInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
    --     |> Dict.insert
    --         "deploymentGroupName" "" -- val.deploymentGroupName
    --     |> Dict.insert
    --         "deploymentConfigName" "" -- val.deploymentConfigName
    --     |> Dict.insert
    --         "deploymentId" "" -- val.deploymentId
    --     |> Dict.insert
    --         "previousRevision" "" -- val.previousRevision
    --     |> Dict.insert
    --         "revision" "" -- val.revision
    --     |> Dict.insert
    --         "status" "" -- val.status
    --     |> Dict.insert
    --         "errorInformation" "" -- val.errorInformation
    --     |> Dict.insert
    --         "createTime" "" -- val.createTime
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
    --     |> Dict.insert
    --         "completeTime" "" -- val.completeTime
    --     |> Dict.insert
    --         "deploymentOverview" "" -- val.deploymentOverview
    --     |> Dict.insert
    --         "description" "" -- val.description
    --     |> Dict.insert
    --         "creator" "" -- val.creator
    --     |> Dict.insert
    --         "ignoreApplicationStopFailures" "" -- val.ignoreApplicationStopFailures
    --     |> Dict.insert
    --         "autoRollbackConfiguration" "" -- val.autoRollbackConfiguration
    --     |> Dict.insert
    --         "updateOutdatedInstancesOnly" "" -- val.updateOutdatedInstancesOnly
    --     |> Dict.insert
    --         "rollbackInfo" "" -- val.rollbackInfo
    --     |> Dict.insert
    --         "deploymentStyle" "" -- val.deploymentStyle
    --     |> Dict.insert
    --         "targetInstances" "" -- val.targetInstances
    --     |> Dict.insert
    --         "instanceTerminationWaitTimeStarted" "" -- val.instanceTerminationWaitTimeStarted
    --     |> Dict.insert
    --         "blueGreenDeploymentConfiguration" "" -- val.blueGreenDeploymentConfiguration
    --     |> Dict.insert
    --         "loadBalancerInfo" "" -- val.loadBalancerInfo
    --     |> Dict.insert
    --         "additionalDeploymentStatusInfo" "" -- val.additionalDeploymentStatusInfo
    --     |> Dict.insert
    --         "fileExistsBehavior" "" -- val.fileExistsBehavior
    --     |> Dict.insert
    --         "deploymentStatusMessages" "" -- val.deploymentStatusMessages
    --     |> Dict.insert
    --         "computePlatform" "" -- val.computePlatform
    --     |> Dict.toList
    ""


{-| One of

  - `DeploymentOption_WITH_TRAFFIC_CONTROL`
  - `DeploymentOption_WITHOUT_TRAFFIC_CONTROL`

-}
type DeploymentOption
    = DeploymentOption_WITH_TRAFFIC_CONTROL
    | DeploymentOption_WITHOUT_TRAFFIC_CONTROL


deploymentOptionDecoder : JD.Decoder DeploymentOption
deploymentOptionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "WITH_TRAFFIC_CONTROL" ->
                        JD.succeed DeploymentOption_WITH_TRAFFIC_CONTROL

                    "WITHOUT_TRAFFIC_CONTROL" ->
                        JD.succeed DeploymentOption_WITHOUT_TRAFFIC_CONTROL

                    _ ->
                        JD.fail "bad thing"
            )


deploymentOptionToString : DeploymentOption -> String
deploymentOptionToString val =
    case val of
        DeploymentOption_WITH_TRAFFIC_CONTROL ->
            "WITH_TRAFFIC_CONTROL"

        DeploymentOption_WITHOUT_TRAFFIC_CONTROL ->
            "WITHOUT_TRAFFIC_CONTROL"


{-|

<p>Information about the deployment status of the instances in the deployment.</p>

-}
type alias DeploymentOverview =
    { pending : Maybe Int
    , inProgress : Maybe Int
    , succeeded : Maybe Int
    , failed : Maybe Int
    , skipped : Maybe Int
    , ready : Maybe Int
    }


deploymentOverviewDecoder : JD.Decoder DeploymentOverview
deploymentOverviewDecoder =
    JD.succeed DeploymentOverview
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Pending", "pending" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InProgress", "inProgress" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Succeeded", "succeeded" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Failed", "failed" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Skipped", "skipped" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Ready", "ready" ]
                JD.int
            )


deploymentOverviewToString :
    DeploymentOverview
    -> String -- List (String, String)
deploymentOverviewToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "pending" "" -- val.pending
    --     |> Dict.insert
    --         "inProgress" "" -- val.inProgress
    --     |> Dict.insert
    --         "succeeded" "" -- val.succeeded
    --     |> Dict.insert
    --         "failed" "" -- val.failed
    --     |> Dict.insert
    --         "skipped" "" -- val.skipped
    --     |> Dict.insert
    --         "ready" "" -- val.ready
    --     |> Dict.toList
    ""


{-| One of

  - `DeploymentReadyAction_CONTINUE_DEPLOYMENT`
  - `DeploymentReadyAction_STOP_DEPLOYMENT`

-}
type DeploymentReadyAction
    = DeploymentReadyAction_CONTINUE_DEPLOYMENT
    | DeploymentReadyAction_STOP_DEPLOYMENT


deploymentReadyActionDecoder : JD.Decoder DeploymentReadyAction
deploymentReadyActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CONTINUE_DEPLOYMENT" ->
                        JD.succeed DeploymentReadyAction_CONTINUE_DEPLOYMENT

                    "STOP_DEPLOYMENT" ->
                        JD.succeed DeploymentReadyAction_STOP_DEPLOYMENT

                    _ ->
                        JD.fail "bad thing"
            )


deploymentReadyActionToString : DeploymentReadyAction -> String
deploymentReadyActionToString val =
    case val of
        DeploymentReadyAction_CONTINUE_DEPLOYMENT ->
            "CONTINUE_DEPLOYMENT"

        DeploymentReadyAction_STOP_DEPLOYMENT ->
            "STOP_DEPLOYMENT"


{-|

<p>Information about how traffic is rerouted to instances in a replacement environment in a blue/green deployment.</p>

-}
type alias DeploymentReadyOption =
    { actionOnTimeout : Maybe DeploymentReadyAction
    , waitTimeInMinutes : Maybe Int
    }


deploymentReadyOptionDecoder : JD.Decoder DeploymentReadyOption
deploymentReadyOptionDecoder =
    JD.succeed DeploymentReadyOption
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "actionOnTimeout", "ActionOnTimeout" ]
                deploymentReadyActionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "waitTimeInMinutes", "WaitTimeInMinutes" ]
                JD.int
            )


deploymentReadyOptionToString :
    DeploymentReadyOption
    -> String -- List (String, String)
deploymentReadyOptionToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "actionOnTimeout" "" -- val.actionOnTimeout
    --     |> Dict.insert
    --         "waitTimeInMinutes" "" -- val.waitTimeInMinutes
    --     |> Dict.toList
    ""


{-| One of

  - `DeploymentStatus_Created`
  - `DeploymentStatus_Queued`
  - `DeploymentStatus_InProgress`
  - `DeploymentStatus_Succeeded`
  - `DeploymentStatus_Failed`
  - `DeploymentStatus_Stopped`
  - `DeploymentStatus_Ready`

-}
type DeploymentStatus
    = DeploymentStatus_Created
    | DeploymentStatus_Queued
    | DeploymentStatus_InProgress
    | DeploymentStatus_Succeeded
    | DeploymentStatus_Failed
    | DeploymentStatus_Stopped
    | DeploymentStatus_Ready


deploymentStatusDecoder : JD.Decoder DeploymentStatus
deploymentStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Created" ->
                        JD.succeed DeploymentStatus_Created

                    "Queued" ->
                        JD.succeed DeploymentStatus_Queued

                    "InProgress" ->
                        JD.succeed DeploymentStatus_InProgress

                    "Succeeded" ->
                        JD.succeed DeploymentStatus_Succeeded

                    "Failed" ->
                        JD.succeed DeploymentStatus_Failed

                    "Stopped" ->
                        JD.succeed DeploymentStatus_Stopped

                    "Ready" ->
                        JD.succeed DeploymentStatus_Ready

                    _ ->
                        JD.fail "bad thing"
            )


deploymentStatusToString : DeploymentStatus -> String
deploymentStatusToString val =
    case val of
        DeploymentStatus_Created ->
            "Created"

        DeploymentStatus_Queued ->
            "Queued"

        DeploymentStatus_InProgress ->
            "InProgress"

        DeploymentStatus_Succeeded ->
            "Succeeded"

        DeploymentStatus_Failed ->
            "Failed"

        DeploymentStatus_Stopped ->
            "Stopped"

        DeploymentStatus_Ready ->
            "Ready"


{-|

<p>Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.</p>

-}
type alias DeploymentStyle =
    { deploymentType : Maybe DeploymentType
    , deploymentOption : Maybe DeploymentOption
    }


deploymentStyleDecoder : JD.Decoder DeploymentStyle
deploymentStyleDecoder =
    JD.succeed DeploymentStyle
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentType", "DeploymentType" ]
                deploymentTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentOption", "DeploymentOption" ]
                deploymentOptionDecoder
            )


deploymentStyleToString :
    DeploymentStyle
    -> String -- List (String, String)
deploymentStyleToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentType" "" -- val.deploymentType
    --     |> Dict.insert
    --         "deploymentOption" "" -- val.deploymentOption
    --     |> Dict.toList
    ""


{-|

<p> Information about the deployment target. </p>

-}
type alias DeploymentTarget =
    { deploymentTargetType : Maybe DeploymentTargetType
    , instanceTarget : Maybe InstanceTarget
    , lambdaTarget : Maybe LambdaTarget
    , ecsTarget : Maybe ECSTarget
    }


deploymentTargetDecoder : JD.Decoder DeploymentTarget
deploymentTargetDecoder =
    JD.succeed DeploymentTarget
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentTargetType", "DeploymentTargetType" ]
                deploymentTargetTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "instanceTarget", "InstanceTarget" ]
                instanceTargetDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lambdaTarget", "LambdaTarget" ]
                lambdaTargetDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ecsTarget", "EcsTarget" ]
                eCSTargetDecoder
            )


deploymentTargetToString :
    DeploymentTarget
    -> String -- List (String, String)
deploymentTargetToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentTargetType" "" -- val.deploymentTargetType
    --     |> Dict.insert
    --         "instanceTarget" "" -- val.instanceTarget
    --     |> Dict.insert
    --         "lambdaTarget" "" -- val.lambdaTarget
    --     |> Dict.insert
    --         "ecsTarget" "" -- val.ecsTarget
    --     |> Dict.toList
    ""


{-| One of

  - `DeploymentTargetType_InstanceTarget`
  - `DeploymentTargetType_LambdaTarget`
  - `DeploymentTargetType_ECSTarget`

-}
type DeploymentTargetType
    = DeploymentTargetType_InstanceTarget
    | DeploymentTargetType_LambdaTarget
    | DeploymentTargetType_ECSTarget


deploymentTargetTypeDecoder : JD.Decoder DeploymentTargetType
deploymentTargetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InstanceTarget" ->
                        JD.succeed DeploymentTargetType_InstanceTarget

                    "LambdaTarget" ->
                        JD.succeed DeploymentTargetType_LambdaTarget

                    "ECSTarget" ->
                        JD.succeed DeploymentTargetType_ECSTarget

                    _ ->
                        JD.fail "bad thing"
            )


deploymentTargetTypeToString : DeploymentTargetType -> String
deploymentTargetTypeToString val =
    case val of
        DeploymentTargetType_InstanceTarget ->
            "InstanceTarget"

        DeploymentTargetType_LambdaTarget ->
            "LambdaTarget"

        DeploymentTargetType_ECSTarget ->
            "ECSTarget"


{-| One of

  - `DeploymentType_IN_PLACE`
  - `DeploymentType_BLUE_GREEN`

-}
type DeploymentType
    = DeploymentType_IN_PLACE
    | DeploymentType_BLUE_GREEN


deploymentTypeDecoder : JD.Decoder DeploymentType
deploymentTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IN_PLACE" ->
                        JD.succeed DeploymentType_IN_PLACE

                    "BLUE_GREEN" ->
                        JD.succeed DeploymentType_BLUE_GREEN

                    _ ->
                        JD.fail "bad thing"
            )


deploymentTypeToString : DeploymentType -> String
deploymentTypeToString val =
    case val of
        DeploymentType_IN_PLACE ->
            "IN_PLACE"

        DeploymentType_BLUE_GREEN ->
            "BLUE_GREEN"


{-| One of

  - `DeploymentWaitType_READY_WAIT`
  - `DeploymentWaitType_TERMINATION_WAIT`

-}
type DeploymentWaitType
    = DeploymentWaitType_READY_WAIT
    | DeploymentWaitType_TERMINATION_WAIT


deploymentWaitTypeDecoder : JD.Decoder DeploymentWaitType
deploymentWaitTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "READY_WAIT" ->
                        JD.succeed DeploymentWaitType_READY_WAIT

                    "TERMINATION_WAIT" ->
                        JD.succeed DeploymentWaitType_TERMINATION_WAIT

                    _ ->
                        JD.fail "bad thing"
            )


deploymentWaitTypeToString : DeploymentWaitType -> String
deploymentWaitTypeToString val =
    case val of
        DeploymentWaitType_READY_WAIT ->
            "READY_WAIT"

        DeploymentWaitType_TERMINATION_WAIT ->
            "TERMINATION_WAIT"


{-|

<p>Diagnostic information about executable scripts that are part of a deployment.</p>

-}
type alias Diagnostics =
    { errorCode : Maybe LifecycleErrorCode
    , scriptName : Maybe String
    , message : Maybe String
    , logTail : Maybe String
    }


diagnosticsDecoder : JD.Decoder Diagnostics
diagnosticsDecoder =
    JD.succeed Diagnostics
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "errorCode", "ErrorCode" ]
                lifecycleErrorCodeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "scriptName", "ScriptName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "message", "Message" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "logTail", "LogTail" ]
                JD.string
            )


diagnosticsToString :
    Diagnostics
    -> String -- List (String, String)
diagnosticsToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
    --     |> Dict.insert
    --         "scriptName" "" -- val.scriptName
    --     |> Dict.insert
    --         "message" "" -- val.message
    --     |> Dict.insert
    --         "logTail" "" -- val.logTail
    --     |> Dict.toList
    ""


{-|

<p>Information about an EC2 tag filter.</p>

-}
type alias EC2TagFilter =
    { key : Maybe String
    , value : Maybe String
    , type_ : Maybe EC2TagFilterType
    }


eC2TagFilterDecoder : JD.Decoder EC2TagFilter
eC2TagFilterDecoder =
    JD.succeed EC2TagFilter
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
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Type", "type" ]
                eC2TagFilterTypeDecoder
            )


eC2TagFilterToString :
    EC2TagFilter
    -> String -- List (String, String)
eC2TagFilterToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "key" "" -- val.key
    --     |> Dict.insert
    --         "value" "" -- val.value
    --     |> Dict.insert
    --         "type_" "" -- val.type_
    --     |> Dict.toList
    ""


{-| One of

  - `EC2TagFilterType_KEY_ONLY`
  - `EC2TagFilterType_VALUE_ONLY`
  - `EC2TagFilterType_KEY_AND_VALUE`

-}
type EC2TagFilterType
    = EC2TagFilterType_KEY_ONLY
    | EC2TagFilterType_VALUE_ONLY
    | EC2TagFilterType_KEY_AND_VALUE


eC2TagFilterTypeDecoder : JD.Decoder EC2TagFilterType
eC2TagFilterTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "KEY_ONLY" ->
                        JD.succeed EC2TagFilterType_KEY_ONLY

                    "VALUE_ONLY" ->
                        JD.succeed EC2TagFilterType_VALUE_ONLY

                    "KEY_AND_VALUE" ->
                        JD.succeed EC2TagFilterType_KEY_AND_VALUE

                    _ ->
                        JD.fail "bad thing"
            )


eC2TagFilterTypeToString : EC2TagFilterType -> String
eC2TagFilterTypeToString val =
    case val of
        EC2TagFilterType_KEY_ONLY ->
            "KEY_ONLY"

        EC2TagFilterType_VALUE_ONLY ->
            "VALUE_ONLY"

        EC2TagFilterType_KEY_AND_VALUE ->
            "KEY_AND_VALUE"


{-|

<p>Information about groups of EC2 instance tags.</p>

-}
type alias EC2TagSet =
    { ec2TagSetList : Maybe (List (List EC2TagFilter))
    }


eC2TagSetDecoder : JD.Decoder EC2TagSet
eC2TagSetDecoder =
    JD.succeed EC2TagSet
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ec2TagSetList", "Ec2TagSetList" ]
                (JD.list (JD.list eC2TagFilterDecoder))
            )


eC2TagSetToString :
    EC2TagSet
    -> String -- List (String, String)
eC2TagSetToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "ec2TagSetList" "" -- val.ec2TagSetList
    --     |> Dict.toList
    ""


{-|

<p> Contains the service and cluster names used to identify an Amazon ECS deployment's target. </p>

-}
type alias ECSService =
    { serviceName : Maybe String
    , clusterName : Maybe String
    }


eCSServiceDecoder : JD.Decoder ECSService
eCSServiceDecoder =
    JD.succeed ECSService
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "serviceName", "ServiceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "clusterName", "ClusterName" ]
                JD.string
            )


eCSServiceToString :
    ECSService
    -> String -- List (String, String)
eCSServiceToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "serviceName" "" -- val.serviceName
    --     |> Dict.insert
    --         "clusterName" "" -- val.clusterName
    --     |> Dict.toList
    ""


{-|

<p> Information about the target of an Amazon ECS deployment. </p>

-}
type alias ECSTarget =
    { deploymentId : Maybe String
    , targetId : Maybe String
    , targetArn : Maybe String
    , lastUpdatedAt : Maybe Posix
    , lifecycleEvents : Maybe (List LifecycleEvent)
    , status : Maybe TargetStatus
    , taskSetsInfo : Maybe (List ECSTaskSet)
    }


eCSTargetDecoder : JD.Decoder ECSTarget
eCSTargetDecoder =
    JD.succeed ECSTarget
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentId", "DeploymentId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetId", "TargetId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetArn", "TargetArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastUpdatedAt", "LastUpdatedAt" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lifecycleEvents", "LifecycleEvents" ]
                (JD.list lifecycleEventDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "status", "Status" ]
                targetStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskSetsInfo", "TaskSetsInfo" ]
                (JD.list eCSTaskSetDecoder)
            )


eCSTargetToString :
    ECSTarget
    -> String -- List (String, String)
eCSTargetToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentId" "" -- val.deploymentId
    --     |> Dict.insert
    --         "targetId" "" -- val.targetId
    --     |> Dict.insert
    --         "targetArn" "" -- val.targetArn
    --     |> Dict.insert
    --         "lastUpdatedAt" "" -- val.lastUpdatedAt
    --     |> Dict.insert
    --         "lifecycleEvents" "" -- val.lifecycleEvents
    --     |> Dict.insert
    --         "status" "" -- val.status
    --     |> Dict.insert
    --         "taskSetsInfo" "" -- val.taskSetsInfo
    --     |> Dict.toList
    ""


{-|

<p> Information about a set of Amazon ECS tasks in an AWS CodeDeploy deployment. An Amazon ECS task set includes details such as the desired number of tasks, how many tasks are running, and whether the task set serves production traffic. An AWS CodeDeploy application that uses the Amazon ECS compute platform deploys a containerized application in an Amazon ECS service as a task set. </p>

-}
type alias ECSTaskSet =
    { identifer : Maybe String
    , desiredCount : Maybe Int
    , pendingCount : Maybe Int
    , runningCount : Maybe Int
    , status : Maybe String
    , trafficWeight : Maybe Float
    , targetGroup : Maybe TargetGroupInfo
    , taskSetLabel : Maybe TargetLabel
    }


eCSTaskSetDecoder : JD.Decoder ECSTaskSet
eCSTaskSetDecoder =
    JD.succeed ECSTaskSet
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "identifer", "Identifer" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "desiredCount", "DesiredCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "pendingCount", "PendingCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "runningCount", "RunningCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "status", "Status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "trafficWeight", "TrafficWeight" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetGroup", "TargetGroup" ]
                targetGroupInfoDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskSetLabel", "TaskSetLabel" ]
                targetLabelDecoder
            )


eCSTaskSetToString :
    ECSTaskSet
    -> String -- List (String, String)
eCSTaskSetToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identifer" "" -- val.identifer
    --     |> Dict.insert
    --         "desiredCount" "" -- val.desiredCount
    --     |> Dict.insert
    --         "pendingCount" "" -- val.pendingCount
    --     |> Dict.insert
    --         "runningCount" "" -- val.runningCount
    --     |> Dict.insert
    --         "status" "" -- val.status
    --     |> Dict.insert
    --         "trafficWeight" "" -- val.trafficWeight
    --     |> Dict.insert
    --         "targetGroup" "" -- val.targetGroup
    --     |> Dict.insert
    --         "taskSetLabel" "" -- val.taskSetLabel
    --     |> Dict.toList
    ""


{-|

<p>Information about a load balancer in Elastic Load Balancing to use in a deployment. Instances are registered directly with a load balancer, and traffic is routed to the load balancer.</p>

-}
type alias ELBInfo =
    { name : Maybe String
    }


eLBInfoDecoder : JD.Decoder ELBInfo
eLBInfoDecoder =
    JD.succeed ELBInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "name", "Name" ]
                JD.string
            )


eLBInfoToString :
    ELBInfo
    -> String -- List (String, String)
eLBInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.toList
    ""


{-| One of

  - `ErrorCode_AGENT_ISSUE`
  - `ErrorCode_ALARM_ACTIVE`
  - `ErrorCode_APPLICATION_MISSING`
  - `ErrorCode_AUTOSCALING_VALIDATION_ERROR`
  - `ErrorCode_AUTO_SCALING_CONFIGURATION`
  - `ErrorCode_AUTO_SCALING_IAM_ROLE_PERMISSIONS`
  - `ErrorCode_CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND`
  - `ErrorCode_CUSTOMER_APPLICATION_UNHEALTHY`
  - `ErrorCode_DEPLOYMENT_GROUP_MISSING`
  - `ErrorCode_ECS_UPDATE_ERROR`
  - `ErrorCode_ELASTIC_LOAD_BALANCING_INVALID`
  - `ErrorCode_ELB_INVALID_INSTANCE`
  - `ErrorCode_HEALTH_CONSTRAINTS`
  - `ErrorCode_HEALTH_CONSTRAINTS_INVALID`
  - `ErrorCode_HOOK_EXECUTION_FAILURE`
  - `ErrorCode_IAM_ROLE_MISSING`
  - `ErrorCode_IAM_ROLE_PERMISSIONS`
  - `ErrorCode_INTERNAL_ERROR`
  - `ErrorCode_INVALID_ECS_SERVICE`
  - `ErrorCode_INVALID_LAMBDA_CONFIGURATION`
  - `ErrorCode_INVALID_LAMBDA_FUNCTION`
  - `ErrorCode_INVALID_REVISION`
  - `ErrorCode_MANUAL_STOP`
  - `ErrorCode_MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION`
  - `ErrorCode_MISSING_ELB_INFORMATION`
  - `ErrorCode_MISSING_GITHUB_TOKEN`
  - `ErrorCode_NO_EC2_SUBSCRIPTION`
  - `ErrorCode_NO_INSTANCES`
  - `ErrorCode_OVER_MAX_INSTANCES`
  - `ErrorCode_RESOURCE_LIMIT_EXCEEDED`
  - `ErrorCode_REVISION_MISSING`
  - `ErrorCode_THROTTLED`
  - `ErrorCode_TIMEOUT`

-}
type ErrorCode
    = ErrorCode_AGENT_ISSUE
    | ErrorCode_ALARM_ACTIVE
    | ErrorCode_APPLICATION_MISSING
    | ErrorCode_AUTOSCALING_VALIDATION_ERROR
    | ErrorCode_AUTO_SCALING_CONFIGURATION
    | ErrorCode_AUTO_SCALING_IAM_ROLE_PERMISSIONS
    | ErrorCode_CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND
    | ErrorCode_CUSTOMER_APPLICATION_UNHEALTHY
    | ErrorCode_DEPLOYMENT_GROUP_MISSING
    | ErrorCode_ECS_UPDATE_ERROR
    | ErrorCode_ELASTIC_LOAD_BALANCING_INVALID
    | ErrorCode_ELB_INVALID_INSTANCE
    | ErrorCode_HEALTH_CONSTRAINTS
    | ErrorCode_HEALTH_CONSTRAINTS_INVALID
    | ErrorCode_HOOK_EXECUTION_FAILURE
    | ErrorCode_IAM_ROLE_MISSING
    | ErrorCode_IAM_ROLE_PERMISSIONS
    | ErrorCode_INTERNAL_ERROR
    | ErrorCode_INVALID_ECS_SERVICE
    | ErrorCode_INVALID_LAMBDA_CONFIGURATION
    | ErrorCode_INVALID_LAMBDA_FUNCTION
    | ErrorCode_INVALID_REVISION
    | ErrorCode_MANUAL_STOP
    | ErrorCode_MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION
    | ErrorCode_MISSING_ELB_INFORMATION
    | ErrorCode_MISSING_GITHUB_TOKEN
    | ErrorCode_NO_EC2_SUBSCRIPTION
    | ErrorCode_NO_INSTANCES
    | ErrorCode_OVER_MAX_INSTANCES
    | ErrorCode_RESOURCE_LIMIT_EXCEEDED
    | ErrorCode_REVISION_MISSING
    | ErrorCode_THROTTLED
    | ErrorCode_TIMEOUT


errorCodeDecoder : JD.Decoder ErrorCode
errorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AGENT_ISSUE" ->
                        JD.succeed ErrorCode_AGENT_ISSUE

                    "ALARM_ACTIVE" ->
                        JD.succeed ErrorCode_ALARM_ACTIVE

                    "APPLICATION_MISSING" ->
                        JD.succeed ErrorCode_APPLICATION_MISSING

                    "AUTOSCALING_VALIDATION_ERROR" ->
                        JD.succeed ErrorCode_AUTOSCALING_VALIDATION_ERROR

                    "AUTO_SCALING_CONFIGURATION" ->
                        JD.succeed ErrorCode_AUTO_SCALING_CONFIGURATION

                    "AUTO_SCALING_IAM_ROLE_PERMISSIONS" ->
                        JD.succeed ErrorCode_AUTO_SCALING_IAM_ROLE_PERMISSIONS

                    "CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND" ->
                        JD.succeed ErrorCode_CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND

                    "CUSTOMER_APPLICATION_UNHEALTHY" ->
                        JD.succeed ErrorCode_CUSTOMER_APPLICATION_UNHEALTHY

                    "DEPLOYMENT_GROUP_MISSING" ->
                        JD.succeed ErrorCode_DEPLOYMENT_GROUP_MISSING

                    "ECS_UPDATE_ERROR" ->
                        JD.succeed ErrorCode_ECS_UPDATE_ERROR

                    "ELASTIC_LOAD_BALANCING_INVALID" ->
                        JD.succeed ErrorCode_ELASTIC_LOAD_BALANCING_INVALID

                    "ELB_INVALID_INSTANCE" ->
                        JD.succeed ErrorCode_ELB_INVALID_INSTANCE

                    "HEALTH_CONSTRAINTS" ->
                        JD.succeed ErrorCode_HEALTH_CONSTRAINTS

                    "HEALTH_CONSTRAINTS_INVALID" ->
                        JD.succeed ErrorCode_HEALTH_CONSTRAINTS_INVALID

                    "HOOK_EXECUTION_FAILURE" ->
                        JD.succeed ErrorCode_HOOK_EXECUTION_FAILURE

                    "IAM_ROLE_MISSING" ->
                        JD.succeed ErrorCode_IAM_ROLE_MISSING

                    "IAM_ROLE_PERMISSIONS" ->
                        JD.succeed ErrorCode_IAM_ROLE_PERMISSIONS

                    "INTERNAL_ERROR" ->
                        JD.succeed ErrorCode_INTERNAL_ERROR

                    "INVALID_ECS_SERVICE" ->
                        JD.succeed ErrorCode_INVALID_ECS_SERVICE

                    "INVALID_LAMBDA_CONFIGURATION" ->
                        JD.succeed ErrorCode_INVALID_LAMBDA_CONFIGURATION

                    "INVALID_LAMBDA_FUNCTION" ->
                        JD.succeed ErrorCode_INVALID_LAMBDA_FUNCTION

                    "INVALID_REVISION" ->
                        JD.succeed ErrorCode_INVALID_REVISION

                    "MANUAL_STOP" ->
                        JD.succeed ErrorCode_MANUAL_STOP

                    "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION" ->
                        JD.succeed ErrorCode_MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION

                    "MISSING_ELB_INFORMATION" ->
                        JD.succeed ErrorCode_MISSING_ELB_INFORMATION

                    "MISSING_GITHUB_TOKEN" ->
                        JD.succeed ErrorCode_MISSING_GITHUB_TOKEN

                    "NO_EC2_SUBSCRIPTION" ->
                        JD.succeed ErrorCode_NO_EC2_SUBSCRIPTION

                    "NO_INSTANCES" ->
                        JD.succeed ErrorCode_NO_INSTANCES

                    "OVER_MAX_INSTANCES" ->
                        JD.succeed ErrorCode_OVER_MAX_INSTANCES

                    "RESOURCE_LIMIT_EXCEEDED" ->
                        JD.succeed ErrorCode_RESOURCE_LIMIT_EXCEEDED

                    "REVISION_MISSING" ->
                        JD.succeed ErrorCode_REVISION_MISSING

                    "THROTTLED" ->
                        JD.succeed ErrorCode_THROTTLED

                    "TIMEOUT" ->
                        JD.succeed ErrorCode_TIMEOUT

                    _ ->
                        JD.fail "bad thing"
            )


errorCodeToString : ErrorCode -> String
errorCodeToString val =
    case val of
        ErrorCode_AGENT_ISSUE ->
            "AGENT_ISSUE"

        ErrorCode_ALARM_ACTIVE ->
            "ALARM_ACTIVE"

        ErrorCode_APPLICATION_MISSING ->
            "APPLICATION_MISSING"

        ErrorCode_AUTOSCALING_VALIDATION_ERROR ->
            "AUTOSCALING_VALIDATION_ERROR"

        ErrorCode_AUTO_SCALING_CONFIGURATION ->
            "AUTO_SCALING_CONFIGURATION"

        ErrorCode_AUTO_SCALING_IAM_ROLE_PERMISSIONS ->
            "AUTO_SCALING_IAM_ROLE_PERMISSIONS"

        ErrorCode_CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND ->
            "CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND"

        ErrorCode_CUSTOMER_APPLICATION_UNHEALTHY ->
            "CUSTOMER_APPLICATION_UNHEALTHY"

        ErrorCode_DEPLOYMENT_GROUP_MISSING ->
            "DEPLOYMENT_GROUP_MISSING"

        ErrorCode_ECS_UPDATE_ERROR ->
            "ECS_UPDATE_ERROR"

        ErrorCode_ELASTIC_LOAD_BALANCING_INVALID ->
            "ELASTIC_LOAD_BALANCING_INVALID"

        ErrorCode_ELB_INVALID_INSTANCE ->
            "ELB_INVALID_INSTANCE"

        ErrorCode_HEALTH_CONSTRAINTS ->
            "HEALTH_CONSTRAINTS"

        ErrorCode_HEALTH_CONSTRAINTS_INVALID ->
            "HEALTH_CONSTRAINTS_INVALID"

        ErrorCode_HOOK_EXECUTION_FAILURE ->
            "HOOK_EXECUTION_FAILURE"

        ErrorCode_IAM_ROLE_MISSING ->
            "IAM_ROLE_MISSING"

        ErrorCode_IAM_ROLE_PERMISSIONS ->
            "IAM_ROLE_PERMISSIONS"

        ErrorCode_INTERNAL_ERROR ->
            "INTERNAL_ERROR"

        ErrorCode_INVALID_ECS_SERVICE ->
            "INVALID_ECS_SERVICE"

        ErrorCode_INVALID_LAMBDA_CONFIGURATION ->
            "INVALID_LAMBDA_CONFIGURATION"

        ErrorCode_INVALID_LAMBDA_FUNCTION ->
            "INVALID_LAMBDA_FUNCTION"

        ErrorCode_INVALID_REVISION ->
            "INVALID_REVISION"

        ErrorCode_MANUAL_STOP ->
            "MANUAL_STOP"

        ErrorCode_MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION ->
            "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION"

        ErrorCode_MISSING_ELB_INFORMATION ->
            "MISSING_ELB_INFORMATION"

        ErrorCode_MISSING_GITHUB_TOKEN ->
            "MISSING_GITHUB_TOKEN"

        ErrorCode_NO_EC2_SUBSCRIPTION ->
            "NO_EC2_SUBSCRIPTION"

        ErrorCode_NO_INSTANCES ->
            "NO_INSTANCES"

        ErrorCode_OVER_MAX_INSTANCES ->
            "OVER_MAX_INSTANCES"

        ErrorCode_RESOURCE_LIMIT_EXCEEDED ->
            "RESOURCE_LIMIT_EXCEEDED"

        ErrorCode_REVISION_MISSING ->
            "REVISION_MISSING"

        ErrorCode_THROTTLED ->
            "THROTTLED"

        ErrorCode_TIMEOUT ->
            "TIMEOUT"


{-|

<p>Information about a deployment error.</p>

-}
type alias ErrorInformation =
    { code : Maybe ErrorCode
    , message : Maybe String
    }


errorInformationDecoder : JD.Decoder ErrorInformation
errorInformationDecoder =
    JD.succeed ErrorInformation
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "code", "Code" ]
                errorCodeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "message", "Message" ]
                JD.string
            )


errorInformationToString :
    ErrorInformation
    -> String -- List (String, String)
errorInformationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "code" "" -- val.code
    --     |> Dict.insert
    --         "message" "" -- val.message
    --     |> Dict.toList
    ""


{-| One of

  - `FileExistsBehavior_DISALLOW`
  - `FileExistsBehavior_OVERWRITE`
  - `FileExistsBehavior_RETAIN`

-}
type FileExistsBehavior
    = FileExistsBehavior_DISALLOW
    | FileExistsBehavior_OVERWRITE
    | FileExistsBehavior_RETAIN


fileExistsBehaviorDecoder : JD.Decoder FileExistsBehavior
fileExistsBehaviorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DISALLOW" ->
                        JD.succeed FileExistsBehavior_DISALLOW

                    "OVERWRITE" ->
                        JD.succeed FileExistsBehavior_OVERWRITE

                    "RETAIN" ->
                        JD.succeed FileExistsBehavior_RETAIN

                    _ ->
                        JD.fail "bad thing"
            )


fileExistsBehaviorToString : FileExistsBehavior -> String
fileExistsBehaviorToString val =
    case val of
        FileExistsBehavior_DISALLOW ->
            "DISALLOW"

        FileExistsBehavior_OVERWRITE ->
            "OVERWRITE"

        FileExistsBehavior_RETAIN ->
            "RETAIN"


{-|

<p>Information about an application revision.</p>

-}
type alias GenericRevisionInfo =
    { description : Maybe String
    , deploymentGroups : Maybe (List String)
    , firstUsedTime : Maybe Posix
    , lastUsedTime : Maybe Posix
    , registerTime : Maybe Posix
    }


genericRevisionInfoDecoder : JD.Decoder GenericRevisionInfo
genericRevisionInfoDecoder =
    JD.succeed GenericRevisionInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "description", "Description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentGroups", "DeploymentGroups" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "firstUsedTime", "FirstUsedTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastUsedTime", "LastUsedTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "registerTime", "RegisterTime" ]
                JDX.datetime
            )


genericRevisionInfoToString :
    GenericRevisionInfo
    -> String -- List (String, String)
genericRevisionInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "description" "" -- val.description
    --     |> Dict.insert
    --         "deploymentGroups" "" -- val.deploymentGroups
    --     |> Dict.insert
    --         "firstUsedTime" "" -- val.firstUsedTime
    --     |> Dict.insert
    --         "lastUsedTime" "" -- val.lastUsedTime
    --     |> Dict.insert
    --         "registerTime" "" -- val.registerTime
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getApplicati
-}
type alias GetApplicationOutput =
    { application : Maybe ApplicationInfo
    }


getApplicationOutputDecoder : JD.Decoder GetApplicationOutput
getApplicationOutputDecoder =
    JD.succeed GetApplicationOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "application", "Application" ]
                applicationInfoDecoder
            )


getApplicationOutputToString :
    GetApplicationOutput
    -> String -- List (String, String)
getApplicationOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "application" "" -- val.application
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getApplicationRevisi
-}
type alias GetApplicationRevisionOutput =
    { applicationName : Maybe String
    , revision : Maybe RevisionLocation
    , revisionInfo : Maybe GenericRevisionInfo
    }


getApplicationRevisionOutputDecoder : JD.Decoder GetApplicationRevisionOutput
getApplicationRevisionOutputDecoder =
    JD.succeed GetApplicationRevisionOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "applicationName", "ApplicationName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "revision", "Revision" ]
                revisionLocationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "revisionInfo", "RevisionInfo" ]
                genericRevisionInfoDecoder
            )


getApplicationRevisionOutputToString :
    GetApplicationRevisionOutput
    -> String -- List (String, String)
getApplicationRevisionOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
    --     |> Dict.insert
    --         "revision" "" -- val.revision
    --     |> Dict.insert
    --         "revisionInfo" "" -- val.revisionInfo
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getDeploymentConf
-}
type alias GetDeploymentConfigOutput =
    { deploymentConfigInfo : Maybe DeploymentConfigInfo
    }


getDeploymentConfigOutputDecoder : JD.Decoder GetDeploymentConfigOutput
getDeploymentConfigOutputDecoder =
    JD.succeed GetDeploymentConfigOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentConfigInfo", "DeploymentConfigInfo" ]
                deploymentConfigInfoDecoder
            )


getDeploymentConfigOutputToString :
    GetDeploymentConfigOutput
    -> String -- List (String, String)
getDeploymentConfigOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentConfigInfo" "" -- val.deploymentConfigInfo
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getDeploymentGro
-}
type alias GetDeploymentGroupOutput =
    { deploymentGroupInfo : Maybe DeploymentGroupInfo
    }


getDeploymentGroupOutputDecoder : JD.Decoder GetDeploymentGroupOutput
getDeploymentGroupOutputDecoder =
    JD.succeed GetDeploymentGroupOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentGroupInfo", "DeploymentGroupInfo" ]
                deploymentGroupInfoDecoder
            )


getDeploymentGroupOutputToString :
    GetDeploymentGroupOutput
    -> String -- List (String, String)
getDeploymentGroupOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentGroupInfo" "" -- val.deploymentGroupInfo
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getDeploymentInstan
-}
type alias GetDeploymentInstanceOutput =
    { instanceSummary : Maybe InstanceSummary
    }


getDeploymentInstanceOutputDecoder : JD.Decoder GetDeploymentInstanceOutput
getDeploymentInstanceOutputDecoder =
    JD.succeed GetDeploymentInstanceOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "instanceSummary", "InstanceSummary" ]
                instanceSummaryDecoder
            )


getDeploymentInstanceOutputToString :
    GetDeploymentInstanceOutput
    -> String -- List (String, String)
getDeploymentInstanceOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "instanceSummary" "" -- val.instanceSummary
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getDeployme
-}
type alias GetDeploymentOutput =
    { deploymentInfo : Maybe DeploymentInfo
    }


getDeploymentOutputDecoder : JD.Decoder GetDeploymentOutput
getDeploymentOutputDecoder =
    JD.succeed GetDeploymentOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentInfo", "DeploymentInfo" ]
                deploymentInfoDecoder
            )


getDeploymentOutputToString :
    GetDeploymentOutput
    -> String -- List (String, String)
getDeploymentOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentInfo" "" -- val.deploymentInfo
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getDeploymentTarg
-}
type alias GetDeploymentTargetOutput =
    { deploymentTarget : Maybe DeploymentTarget
    }


getDeploymentTargetOutputDecoder : JD.Decoder GetDeploymentTargetOutput
getDeploymentTargetOutputDecoder =
    JD.succeed GetDeploymentTargetOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentTarget", "DeploymentTarget" ]
                deploymentTargetDecoder
            )


getDeploymentTargetOutputToString :
    GetDeploymentTargetOutput
    -> String -- List (String, String)
getDeploymentTargetOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentTarget" "" -- val.deploymentTarget
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getOnPremisesInstan
-}
type alias GetOnPremisesInstanceOutput =
    { instanceInfo : Maybe InstanceInfo
    }


getOnPremisesInstanceOutputDecoder : JD.Decoder GetOnPremisesInstanceOutput
getOnPremisesInstanceOutputDecoder =
    JD.succeed GetOnPremisesInstanceOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "instanceInfo", "InstanceInfo" ]
                instanceInfoDecoder
            )


getOnPremisesInstanceOutputToString :
    GetOnPremisesInstanceOutput
    -> String -- List (String, String)
getOnPremisesInstanceOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "instanceInfo" "" -- val.instanceInfo
    --     |> Dict.toList
    ""


{-|

<p>Information about the location of application artifacts stored in GitHub.</p>

-}
type alias GitHubLocation =
    { repository : Maybe String
    , commitId : Maybe String
    }


gitHubLocationDecoder : JD.Decoder GitHubLocation
gitHubLocationDecoder =
    JD.succeed GitHubLocation
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "repository", "Repository" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "commitId", "CommitId" ]
                JD.string
            )


gitHubLocationToString :
    GitHubLocation
    -> String -- List (String, String)
gitHubLocationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "repository" "" -- val.repository
    --     |> Dict.insert
    --         "commitId" "" -- val.commitId
    --     |> Dict.toList
    ""


{-| One of

  - `GreenFleetProvisioningAction_DISCOVER_EXISTING`
  - `GreenFleetProvisioningAction_COPY_AUTO_SCALING_GROUP`

-}
type GreenFleetProvisioningAction
    = GreenFleetProvisioningAction_DISCOVER_EXISTING
    | GreenFleetProvisioningAction_COPY_AUTO_SCALING_GROUP


greenFleetProvisioningActionDecoder : JD.Decoder GreenFleetProvisioningAction
greenFleetProvisioningActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DISCOVER_EXISTING" ->
                        JD.succeed GreenFleetProvisioningAction_DISCOVER_EXISTING

                    "COPY_AUTO_SCALING_GROUP" ->
                        JD.succeed GreenFleetProvisioningAction_COPY_AUTO_SCALING_GROUP

                    _ ->
                        JD.fail "bad thing"
            )


greenFleetProvisioningActionToString : GreenFleetProvisioningAction -> String
greenFleetProvisioningActionToString val =
    case val of
        GreenFleetProvisioningAction_DISCOVER_EXISTING ->
            "DISCOVER_EXISTING"

        GreenFleetProvisioningAction_COPY_AUTO_SCALING_GROUP ->
            "COPY_AUTO_SCALING_GROUP"


{-|

<p>Information about the instances that belong to the replacement environment in a blue/green deployment.</p>

-}
type alias GreenFleetProvisioningOption =
    { action : Maybe GreenFleetProvisioningAction
    }


greenFleetProvisioningOptionDecoder : JD.Decoder GreenFleetProvisioningOption
greenFleetProvisioningOptionDecoder =
    JD.succeed GreenFleetProvisioningOption
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "action", "Action" ]
                greenFleetProvisioningActionDecoder
            )


greenFleetProvisioningOptionToString :
    GreenFleetProvisioningOption
    -> String -- List (String, String)
greenFleetProvisioningOptionToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "action" "" -- val.action
    --     |> Dict.toList
    ""


{-| One of

  - `InstanceAction_TERMINATE`
  - `InstanceAction_KEEP_ALIVE`

-}
type InstanceAction
    = InstanceAction_TERMINATE
    | InstanceAction_KEEP_ALIVE


instanceActionDecoder : JD.Decoder InstanceAction
instanceActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TERMINATE" ->
                        JD.succeed InstanceAction_TERMINATE

                    "KEEP_ALIVE" ->
                        JD.succeed InstanceAction_KEEP_ALIVE

                    _ ->
                        JD.fail "bad thing"
            )


instanceActionToString : InstanceAction -> String
instanceActionToString val =
    case val of
        InstanceAction_TERMINATE ->
            "TERMINATE"

        InstanceAction_KEEP_ALIVE ->
            "KEEP_ALIVE"


{-|

<p>Information about an on-premises instance.</p>

-}
type alias InstanceInfo =
    { instanceName : Maybe String
    , iamSessionArn : Maybe String
    , iamUserArn : Maybe String
    , instanceArn : Maybe String
    , registerTime : Maybe Posix
    , deregisterTime : Maybe Posix
    , tags : Maybe (List Tag)
    }


instanceInfoDecoder : JD.Decoder InstanceInfo
instanceInfoDecoder =
    JD.succeed InstanceInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "instanceName", "InstanceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "iamSessionArn", "IamSessionArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "iamUserArn", "IamUserArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "instanceArn", "InstanceArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "registerTime", "RegisterTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deregisterTime", "DeregisterTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "tags", "Tags" ]
                (JD.list tagDecoder)
            )


instanceInfoToString :
    InstanceInfo
    -> String -- List (String, String)
instanceInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "instanceName" "" -- val.instanceName
    --     |> Dict.insert
    --         "iamSessionArn" "" -- val.iamSessionArn
    --     |> Dict.insert
    --         "iamUserArn" "" -- val.iamUserArn
    --     |> Dict.insert
    --         "instanceArn" "" -- val.instanceArn
    --     |> Dict.insert
    --         "registerTime" "" -- val.registerTime
    --     |> Dict.insert
    --         "deregisterTime" "" -- val.deregisterTime
    --     |> Dict.insert
    --         "tags" "" -- val.tags
    --     |> Dict.toList
    ""


{-| One of

  - `InstanceStatus_Pending`
  - `InstanceStatus_InProgress`
  - `InstanceStatus_Succeeded`
  - `InstanceStatus_Failed`
  - `InstanceStatus_Skipped`
  - `InstanceStatus_Unknown`
  - `InstanceStatus_Ready`

-}
type InstanceStatus
    = InstanceStatus_Pending
    | InstanceStatus_InProgress
    | InstanceStatus_Succeeded
    | InstanceStatus_Failed
    | InstanceStatus_Skipped
    | InstanceStatus_Unknown
    | InstanceStatus_Ready


instanceStatusDecoder : JD.Decoder InstanceStatus
instanceStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed InstanceStatus_Pending

                    "InProgress" ->
                        JD.succeed InstanceStatus_InProgress

                    "Succeeded" ->
                        JD.succeed InstanceStatus_Succeeded

                    "Failed" ->
                        JD.succeed InstanceStatus_Failed

                    "Skipped" ->
                        JD.succeed InstanceStatus_Skipped

                    "Unknown" ->
                        JD.succeed InstanceStatus_Unknown

                    "Ready" ->
                        JD.succeed InstanceStatus_Ready

                    _ ->
                        JD.fail "bad thing"
            )


instanceStatusToString : InstanceStatus -> String
instanceStatusToString val =
    case val of
        InstanceStatus_Pending ->
            "Pending"

        InstanceStatus_InProgress ->
            "InProgress"

        InstanceStatus_Succeeded ->
            "Succeeded"

        InstanceStatus_Failed ->
            "Failed"

        InstanceStatus_Skipped ->
            "Skipped"

        InstanceStatus_Unknown ->
            "Unknown"

        InstanceStatus_Ready ->
            "Ready"


{-|

<p>Information about an instance in a deployment.</p>

-}
type alias InstanceSummary =
    { deploymentId : Maybe String
    , instanceId : Maybe String
    , status : Maybe InstanceStatus
    , lastUpdatedAt : Maybe Posix
    , lifecycleEvents : Maybe (List LifecycleEvent)
    , instanceType : Maybe InstanceType
    }


instanceSummaryDecoder : JD.Decoder InstanceSummary
instanceSummaryDecoder =
    JD.succeed InstanceSummary
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentId", "DeploymentId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "instanceId", "InstanceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "status", "Status" ]
                instanceStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastUpdatedAt", "LastUpdatedAt" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lifecycleEvents", "LifecycleEvents" ]
                (JD.list lifecycleEventDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "instanceType", "InstanceType" ]
                instanceTypeDecoder
            )


instanceSummaryToString :
    InstanceSummary
    -> String -- List (String, String)
instanceSummaryToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentId" "" -- val.deploymentId
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
    --     |> Dict.insert
    --         "status" "" -- val.status
    --     |> Dict.insert
    --         "lastUpdatedAt" "" -- val.lastUpdatedAt
    --     |> Dict.insert
    --         "lifecycleEvents" "" -- val.lifecycleEvents
    --     |> Dict.insert
    --         "instanceType" "" -- val.instanceType
    --     |> Dict.toList
    ""


{-|

<p> A target Amazon EC2 or on-premises instance during a deployment that uses the EC2/On-premises compute platform. </p>

-}
type alias InstanceTarget =
    { deploymentId : Maybe String
    , targetId : Maybe String
    , targetArn : Maybe String
    , status : Maybe TargetStatus
    , lastUpdatedAt : Maybe Posix
    , lifecycleEvents : Maybe (List LifecycleEvent)
    , instanceLabel : Maybe TargetLabel
    }


instanceTargetDecoder : JD.Decoder InstanceTarget
instanceTargetDecoder =
    JD.succeed InstanceTarget
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentId", "DeploymentId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetId", "TargetId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetArn", "TargetArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "status", "Status" ]
                targetStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastUpdatedAt", "LastUpdatedAt" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lifecycleEvents", "LifecycleEvents" ]
                (JD.list lifecycleEventDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "instanceLabel", "InstanceLabel" ]
                targetLabelDecoder
            )


instanceTargetToString :
    InstanceTarget
    -> String -- List (String, String)
instanceTargetToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentId" "" -- val.deploymentId
    --     |> Dict.insert
    --         "targetId" "" -- val.targetId
    --     |> Dict.insert
    --         "targetArn" "" -- val.targetArn
    --     |> Dict.insert
    --         "status" "" -- val.status
    --     |> Dict.insert
    --         "lastUpdatedAt" "" -- val.lastUpdatedAt
    --     |> Dict.insert
    --         "lifecycleEvents" "" -- val.lifecycleEvents
    --     |> Dict.insert
    --         "instanceLabel" "" -- val.instanceLabel
    --     |> Dict.toList
    ""


{-| One of

  - `InstanceType_Blue`
  - `InstanceType_Green`

-}
type InstanceType
    = InstanceType_Blue
    | InstanceType_Green


instanceTypeDecoder : JD.Decoder InstanceType
instanceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Blue" ->
                        JD.succeed InstanceType_Blue

                    "Green" ->
                        JD.succeed InstanceType_Green

                    _ ->
                        JD.fail "bad thing"
            )


instanceTypeToString : InstanceType -> String
instanceTypeToString val =
    case val of
        InstanceType_Blue ->
            "Blue"

        InstanceType_Green ->
            "Green"


{-|

<p> Information about a Lambda function specified in a deployment. </p>

-}
type alias LambdaFunctionInfo =
    { functionName : Maybe String
    , functionAlias : Maybe String
    , currentVersion : Maybe String
    , targetVersion : Maybe String
    , targetVersionWeight : Maybe Float
    }


lambdaFunctionInfoDecoder : JD.Decoder LambdaFunctionInfo
lambdaFunctionInfoDecoder =
    JD.succeed LambdaFunctionInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "functionName", "FunctionName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "functionAlias", "FunctionAlias" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "currentVersion", "CurrentVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetVersion", "TargetVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetVersionWeight", "TargetVersionWeight" ]
                JD.float
            )


lambdaFunctionInfoToString :
    LambdaFunctionInfo
    -> String -- List (String, String)
lambdaFunctionInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "functionName" "" -- val.functionName
    --     |> Dict.insert
    --         "functionAlias" "" -- val.functionAlias
    --     |> Dict.insert
    --         "currentVersion" "" -- val.currentVersion
    --     |> Dict.insert
    --         "targetVersion" "" -- val.targetVersion
    --     |> Dict.insert
    --         "targetVersionWeight" "" -- val.targetVersionWeight
    --     |> Dict.toList
    ""


{-|

<p> Information about the target AWS Lambda function during an AWS Lambda deployment. </p>

-}
type alias LambdaTarget =
    { deploymentId : Maybe String
    , targetId : Maybe String
    , targetArn : Maybe String
    , status : Maybe TargetStatus
    , lastUpdatedAt : Maybe Posix
    , lifecycleEvents : Maybe (List LifecycleEvent)
    , lambdaFunctionInfo : Maybe LambdaFunctionInfo
    }


lambdaTargetDecoder : JD.Decoder LambdaTarget
lambdaTargetDecoder =
    JD.succeed LambdaTarget
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentId", "DeploymentId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetId", "TargetId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetArn", "TargetArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "status", "Status" ]
                targetStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lastUpdatedAt", "LastUpdatedAt" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lifecycleEvents", "LifecycleEvents" ]
                (JD.list lifecycleEventDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lambdaFunctionInfo", "LambdaFunctionInfo" ]
                lambdaFunctionInfoDecoder
            )


lambdaTargetToString :
    LambdaTarget
    -> String -- List (String, String)
lambdaTargetToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentId" "" -- val.deploymentId
    --     |> Dict.insert
    --         "targetId" "" -- val.targetId
    --     |> Dict.insert
    --         "targetArn" "" -- val.targetArn
    --     |> Dict.insert
    --         "status" "" -- val.status
    --     |> Dict.insert
    --         "lastUpdatedAt" "" -- val.lastUpdatedAt
    --     |> Dict.insert
    --         "lifecycleEvents" "" -- val.lifecycleEvents
    --     |> Dict.insert
    --         "lambdaFunctionInfo" "" -- val.lambdaFunctionInfo
    --     |> Dict.toList
    ""


{-|

<p>Information about the most recent attempted or successful deployment to a deployment group.</p>

-}
type alias LastDeploymentInfo =
    { deploymentId : Maybe String
    , status : Maybe DeploymentStatus
    , endTime : Maybe Posix
    , createTime : Maybe Posix
    }


lastDeploymentInfoDecoder : JD.Decoder LastDeploymentInfo
lastDeploymentInfoDecoder =
    JD.succeed LastDeploymentInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentId", "DeploymentId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "status", "Status" ]
                deploymentStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "endTime", "EndTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "createTime", "CreateTime" ]
                JDX.datetime
            )


lastDeploymentInfoToString :
    LastDeploymentInfo
    -> String -- List (String, String)
lastDeploymentInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentId" "" -- val.deploymentId
    --     |> Dict.insert
    --         "status" "" -- val.status
    --     |> Dict.insert
    --         "endTime" "" -- val.endTime
    --     |> Dict.insert
    --         "createTime" "" -- val.createTime
    --     |> Dict.toList
    ""


{-| One of

  - `LifecycleErrorCode_Success`
  - `LifecycleErrorCode_ScriptMissing`
  - `LifecycleErrorCode_ScriptNotExecutable`
  - `LifecycleErrorCode_ScriptTimedOut`
  - `LifecycleErrorCode_ScriptFailed`
  - `LifecycleErrorCode_UnknownError`

-}
type LifecycleErrorCode
    = LifecycleErrorCode_Success
    | LifecycleErrorCode_ScriptMissing
    | LifecycleErrorCode_ScriptNotExecutable
    | LifecycleErrorCode_ScriptTimedOut
    | LifecycleErrorCode_ScriptFailed
    | LifecycleErrorCode_UnknownError


lifecycleErrorCodeDecoder : JD.Decoder LifecycleErrorCode
lifecycleErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Success" ->
                        JD.succeed LifecycleErrorCode_Success

                    "ScriptMissing" ->
                        JD.succeed LifecycleErrorCode_ScriptMissing

                    "ScriptNotExecutable" ->
                        JD.succeed LifecycleErrorCode_ScriptNotExecutable

                    "ScriptTimedOut" ->
                        JD.succeed LifecycleErrorCode_ScriptTimedOut

                    "ScriptFailed" ->
                        JD.succeed LifecycleErrorCode_ScriptFailed

                    "UnknownError" ->
                        JD.succeed LifecycleErrorCode_UnknownError

                    _ ->
                        JD.fail "bad thing"
            )


lifecycleErrorCodeToString : LifecycleErrorCode -> String
lifecycleErrorCodeToString val =
    case val of
        LifecycleErrorCode_Success ->
            "Success"

        LifecycleErrorCode_ScriptMissing ->
            "ScriptMissing"

        LifecycleErrorCode_ScriptNotExecutable ->
            "ScriptNotExecutable"

        LifecycleErrorCode_ScriptTimedOut ->
            "ScriptTimedOut"

        LifecycleErrorCode_ScriptFailed ->
            "ScriptFailed"

        LifecycleErrorCode_UnknownError ->
            "UnknownError"


{-|

<p>Information about a deployment lifecycle event.</p>

-}
type alias LifecycleEvent =
    { lifecycleEventName : Maybe String
    , diagnostics : Maybe Diagnostics
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , status : Maybe LifecycleEventStatus
    }


lifecycleEventDecoder : JD.Decoder LifecycleEvent
lifecycleEventDecoder =
    JD.succeed LifecycleEvent
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lifecycleEventName", "LifecycleEventName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "diagnostics", "Diagnostics" ]
                diagnosticsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "startTime", "StartTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "endTime", "EndTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "status", "Status" ]
                lifecycleEventStatusDecoder
            )


lifecycleEventToString :
    LifecycleEvent
    -> String -- List (String, String)
lifecycleEventToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "lifecycleEventName" "" -- val.lifecycleEventName
    --     |> Dict.insert
    --         "diagnostics" "" -- val.diagnostics
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
    --     |> Dict.insert
    --         "endTime" "" -- val.endTime
    --     |> Dict.insert
    --         "status" "" -- val.status
    --     |> Dict.toList
    ""


{-| One of

  - `LifecycleEventStatus_Pending`
  - `LifecycleEventStatus_InProgress`
  - `LifecycleEventStatus_Succeeded`
  - `LifecycleEventStatus_Failed`
  - `LifecycleEventStatus_Skipped`
  - `LifecycleEventStatus_Unknown`

-}
type LifecycleEventStatus
    = LifecycleEventStatus_Pending
    | LifecycleEventStatus_InProgress
    | LifecycleEventStatus_Succeeded
    | LifecycleEventStatus_Failed
    | LifecycleEventStatus_Skipped
    | LifecycleEventStatus_Unknown


lifecycleEventStatusDecoder : JD.Decoder LifecycleEventStatus
lifecycleEventStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed LifecycleEventStatus_Pending

                    "InProgress" ->
                        JD.succeed LifecycleEventStatus_InProgress

                    "Succeeded" ->
                        JD.succeed LifecycleEventStatus_Succeeded

                    "Failed" ->
                        JD.succeed LifecycleEventStatus_Failed

                    "Skipped" ->
                        JD.succeed LifecycleEventStatus_Skipped

                    "Unknown" ->
                        JD.succeed LifecycleEventStatus_Unknown

                    _ ->
                        JD.fail "bad thing"
            )


lifecycleEventStatusToString : LifecycleEventStatus -> String
lifecycleEventStatusToString val =
    case val of
        LifecycleEventStatus_Pending ->
            "Pending"

        LifecycleEventStatus_InProgress ->
            "InProgress"

        LifecycleEventStatus_Succeeded ->
            "Succeeded"

        LifecycleEventStatus_Failed ->
            "Failed"

        LifecycleEventStatus_Skipped ->
            "Skipped"

        LifecycleEventStatus_Unknown ->
            "Unknown"


{-| Type of HTTP response from listApplicationRevisio
-}
type alias ListApplicationRevisionsOutput =
    { revisions : Maybe (List RevisionLocation)
    , nextToken : Maybe String
    }


listApplicationRevisionsOutputDecoder : JD.Decoder ListApplicationRevisionsOutput
listApplicationRevisionsOutputDecoder =
    JD.succeed ListApplicationRevisionsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "revisions", "Revisions" ]
                (JD.list revisionLocationDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextToken", "NextToken" ]
                JD.string
            )


listApplicationRevisionsOutputToString :
    ListApplicationRevisionsOutput
    -> String -- List (String, String)
listApplicationRevisionsOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "revisions" "" -- val.revisions
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listApplicatio
-}
type alias ListApplicationsOutput =
    { applications : Maybe (List String)
    , nextToken : Maybe String
    }


listApplicationsOutputDecoder : JD.Decoder ListApplicationsOutput
listApplicationsOutputDecoder =
    JD.succeed ListApplicationsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "applications", "Applications" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextToken", "NextToken" ]
                JD.string
            )


listApplicationsOutputToString :
    ListApplicationsOutput
    -> String -- List (String, String)
listApplicationsOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "applications" "" -- val.applications
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listDeploymentConfi
-}
type alias ListDeploymentConfigsOutput =
    { deploymentConfigsList : Maybe (List String)
    , nextToken : Maybe String
    }


listDeploymentConfigsOutputDecoder : JD.Decoder ListDeploymentConfigsOutput
listDeploymentConfigsOutputDecoder =
    JD.succeed ListDeploymentConfigsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentConfigsList", "DeploymentConfigsList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextToken", "NextToken" ]
                JD.string
            )


listDeploymentConfigsOutputToString :
    ListDeploymentConfigsOutput
    -> String -- List (String, String)
listDeploymentConfigsOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deploymentConfigsList" "" -- val.deploymentConfigsList
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listDeploymentGrou
-}
type alias ListDeploymentGroupsOutput =
    { applicationName : Maybe String
    , deploymentGroups : Maybe (List String)
    , nextToken : Maybe String
    }


listDeploymentGroupsOutputDecoder : JD.Decoder ListDeploymentGroupsOutput
listDeploymentGroupsOutputDecoder =
    JD.succeed ListDeploymentGroupsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "applicationName", "ApplicationName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deploymentGroups", "DeploymentGroups" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextToken", "NextToken" ]
                JD.string
            )


listDeploymentGroupsOutputToString :
    ListDeploymentGroupsOutput
    -> String -- List (String, String)
listDeploymentGroupsOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
    --     |> Dict.insert
    --         "deploymentGroups" "" -- val.deploymentGroups
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listDeploymentInstanc
-}
type alias ListDeploymentInstancesOutput =
    { instancesList : Maybe (List String)
    , nextToken : Maybe String
    }


listDeploymentInstancesOutputDecoder : JD.Decoder ListDeploymentInstancesOutput
listDeploymentInstancesOutputDecoder =
    JD.succeed ListDeploymentInstancesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "instancesList", "InstancesList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextToken", "NextToken" ]
                JD.string
            )


listDeploymentInstancesOutputToString :
    ListDeploymentInstancesOutput
    -> String -- List (String, String)
listDeploymentInstancesOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "instancesList" "" -- val.instancesList
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listDeploymentTarge
-}
type alias ListDeploymentTargetsOutput =
    { targetIds : Maybe (List String)
    , nextToken : Maybe String
    }


listDeploymentTargetsOutputDecoder : JD.Decoder ListDeploymentTargetsOutput
listDeploymentTargetsOutputDecoder =
    JD.succeed ListDeploymentTargetsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetIds", "TargetIds" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextToken", "NextToken" ]
                JD.string
            )


listDeploymentTargetsOutputToString :
    ListDeploymentTargetsOutput
    -> String -- List (String, String)
listDeploymentTargetsOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "targetIds" "" -- val.targetIds
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listDeploymen
-}
type alias ListDeploymentsOutput =
    { deployments : Maybe (List String)
    , nextToken : Maybe String
    }


listDeploymentsOutputDecoder : JD.Decoder ListDeploymentsOutput
listDeploymentsOutputDecoder =
    JD.succeed ListDeploymentsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deployments", "Deployments" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextToken", "NextToken" ]
                JD.string
            )


listDeploymentsOutputToString :
    ListDeploymentsOutput
    -> String -- List (String, String)
listDeploymentsOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "deployments" "" -- val.deployments
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listGitHubAccountTokenNam
-}
type alias ListGitHubAccountTokenNamesOutput =
    { tokenNameList : Maybe (List String)
    , nextToken : Maybe String
    }


listGitHubAccountTokenNamesOutputDecoder : JD.Decoder ListGitHubAccountTokenNamesOutput
listGitHubAccountTokenNamesOutputDecoder =
    JD.succeed ListGitHubAccountTokenNamesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "tokenNameList", "TokenNameList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextToken", "NextToken" ]
                JD.string
            )


listGitHubAccountTokenNamesOutputToString :
    ListGitHubAccountTokenNamesOutput
    -> String -- List (String, String)
listGitHubAccountTokenNamesOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "tokenNameList" "" -- val.tokenNameList
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listOnPremisesInstanc
-}
type alias ListOnPremisesInstancesOutput =
    { instanceNames : Maybe (List String)
    , nextToken : Maybe String
    }


listOnPremisesInstancesOutputDecoder : JD.Decoder ListOnPremisesInstancesOutput
listOnPremisesInstancesOutputDecoder =
    JD.succeed ListOnPremisesInstancesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "instanceNames", "InstanceNames" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextToken", "NextToken" ]
                JD.string
            )


listOnPremisesInstancesOutputToString :
    ListOnPremisesInstancesOutput
    -> String -- List (String, String)
listOnPremisesInstancesOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "instanceNames" "" -- val.instanceNames
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| One of

  - `ListStateFilterAction_include`
  - `ListStateFilterAction_exclude`
  - `ListStateFilterAction_ignore`

-}
type ListStateFilterAction
    = ListStateFilterAction_include
    | ListStateFilterAction_exclude
    | ListStateFilterAction_ignore


listStateFilterActionDecoder : JD.Decoder ListStateFilterAction
listStateFilterActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "include" ->
                        JD.succeed ListStateFilterAction_include

                    "exclude" ->
                        JD.succeed ListStateFilterAction_exclude

                    "ignore" ->
                        JD.succeed ListStateFilterAction_ignore

                    _ ->
                        JD.fail "bad thing"
            )


listStateFilterActionToString : ListStateFilterAction -> String
listStateFilterActionToString val =
    case val of
        ListStateFilterAction_include ->
            "include"

        ListStateFilterAction_exclude ->
            "exclude"

        ListStateFilterAction_ignore ->
            "ignore"


{-| Type of HTTP response from listTagsForResour
-}
type alias ListTagsForResourceOutput =
    { tags : Maybe (List Tag)
    , nextToken : Maybe String
    }


listTagsForResourceOutputDecoder : JD.Decoder ListTagsForResourceOutput
listTagsForResourceOutputDecoder =
    JD.succeed ListTagsForResourceOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


listTagsForResourceOutputToString :
    ListTagsForResourceOutput
    -> String -- List (String, String)
listTagsForResourceOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "tags" "" -- val.tags
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-|

<p>Information about the Elastic Load Balancing load balancer or target group used in a deployment.</p>

-}
type alias LoadBalancerInfo =
    { elbInfoList : Maybe (List ELBInfo)
    , targetGroupInfoList : Maybe (List TargetGroupInfo)
    , targetGroupPairInfoList : Maybe (List TargetGroupPairInfo)
    }


loadBalancerInfoDecoder : JD.Decoder LoadBalancerInfo
loadBalancerInfoDecoder =
    JD.succeed LoadBalancerInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "elbInfoList", "ElbInfoList" ]
                (JD.list eLBInfoDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetGroupInfoList", "TargetGroupInfoList" ]
                (JD.list targetGroupInfoDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetGroupPairInfoList", "TargetGroupPairInfoList" ]
                (JD.list targetGroupPairInfoDecoder)
            )


loadBalancerInfoToString :
    LoadBalancerInfo
    -> String -- List (String, String)
loadBalancerInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "elbInfoList" "" -- val.elbInfoList
    --     |> Dict.insert
    --         "targetGroupInfoList" "" -- val.targetGroupInfoList
    --     |> Dict.insert
    --         "targetGroupPairInfoList" "" -- val.targetGroupPairInfoList
    --     |> Dict.toList
    ""


{-|

<p>Information about minimum healthy instance.</p>

-}
type alias MinimumHealthyHosts =
    { value : Maybe Int
    , type_ : Maybe MinimumHealthyHostsType
    }


minimumHealthyHostsDecoder : JD.Decoder MinimumHealthyHosts
minimumHealthyHostsDecoder =
    JD.succeed MinimumHealthyHosts
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "value", "Value" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "type", "Type" ]
                minimumHealthyHostsTypeDecoder
            )


minimumHealthyHostsToString :
    MinimumHealthyHosts
    -> String -- List (String, String)
minimumHealthyHostsToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "value" "" -- val.value
    --     |> Dict.insert
    --         "type_" "" -- val.type_
    --     |> Dict.toList
    ""


{-| One of

  - `MinimumHealthyHostsType_HOST_COUNT`
  - `MinimumHealthyHostsType_FLEET_PERCENT`

-}
type MinimumHealthyHostsType
    = MinimumHealthyHostsType_HOST_COUNT
    | MinimumHealthyHostsType_FLEET_PERCENT


minimumHealthyHostsTypeDecoder : JD.Decoder MinimumHealthyHostsType
minimumHealthyHostsTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HOST_COUNT" ->
                        JD.succeed MinimumHealthyHostsType_HOST_COUNT

                    "FLEET_PERCENT" ->
                        JD.succeed MinimumHealthyHostsType_FLEET_PERCENT

                    _ ->
                        JD.fail "bad thing"
            )


minimumHealthyHostsTypeToString : MinimumHealthyHostsType -> String
minimumHealthyHostsTypeToString val =
    case val of
        MinimumHealthyHostsType_HOST_COUNT ->
            "HOST_COUNT"

        MinimumHealthyHostsType_FLEET_PERCENT ->
            "FLEET_PERCENT"


{-|

<p>Information about groups of on-premises instance tags.</p>

-}
type alias OnPremisesTagSet =
    { onPremisesTagSetList : Maybe (List (List TagFilter))
    }


onPremisesTagSetDecoder : JD.Decoder OnPremisesTagSet
onPremisesTagSetDecoder =
    JD.succeed OnPremisesTagSet
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "onPremisesTagSetList", "OnPremisesTagSetList" ]
                (JD.list (JD.list tagFilterDecoder))
            )


onPremisesTagSetToString :
    OnPremisesTagSet
    -> String -- List (String, String)
onPremisesTagSetToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "onPremisesTagSetList" "" -- val.onPremisesTagSetList
    --     |> Dict.toList
    ""


{-| Type of HTTP response from putLifecycleEventHookExecutionStat
-}
type alias PutLifecycleEventHookExecutionStatusOutput =
    { lifecycleEventHookExecutionId : Maybe String
    }


putLifecycleEventHookExecutionStatusOutputDecoder : JD.Decoder PutLifecycleEventHookExecutionStatusOutput
putLifecycleEventHookExecutionStatusOutputDecoder =
    JD.succeed PutLifecycleEventHookExecutionStatusOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lifecycleEventHookExecutionId", "LifecycleEventHookExecutionId" ]
                JD.string
            )


putLifecycleEventHookExecutionStatusOutputToString :
    PutLifecycleEventHookExecutionStatusOutput
    -> String -- List (String, String)
putLifecycleEventHookExecutionStatusOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "lifecycleEventHookExecutionId" "" -- val.lifecycleEventHookExecutionId
    --     |> Dict.toList
    ""


{-|

<p>A revision for an AWS Lambda deployment that is a YAML-formatted or JSON-formatted string. For AWS Lambda deployments, the revision is the same as the AppSpec file.</p>

-}
type alias RawString =
    { content : Maybe String
    , sha256 : Maybe String
    }


rawStringDecoder : JD.Decoder RawString
rawStringDecoder =
    JD.succeed RawString
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "content", "Content" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "sha256", "Sha256" ]
                JD.string
            )


rawStringToString :
    RawString
    -> String -- List (String, String)
rawStringToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "content" "" -- val.content
    --     |> Dict.insert
    --         "sha256" "" -- val.sha256
    --     |> Dict.toList
    ""


{-| One of

  - `RegistrationStatus_Registered`
  - `RegistrationStatus_Deregistered`

-}
type RegistrationStatus
    = RegistrationStatus_Registered
    | RegistrationStatus_Deregistered


registrationStatusDecoder : JD.Decoder RegistrationStatus
registrationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Registered" ->
                        JD.succeed RegistrationStatus_Registered

                    "Deregistered" ->
                        JD.succeed RegistrationStatus_Deregistered

                    _ ->
                        JD.fail "bad thing"
            )


registrationStatusToString : RegistrationStatus -> String
registrationStatusToString val =
    case val of
        RegistrationStatus_Registered ->
            "Registered"

        RegistrationStatus_Deregistered ->
            "Deregistered"


{-|

<p>Information about an application revision.</p>

-}
type alias RevisionInfo =
    { revisionLocation : Maybe RevisionLocation
    , genericRevisionInfo : Maybe GenericRevisionInfo
    }


revisionInfoDecoder : JD.Decoder RevisionInfo
revisionInfoDecoder =
    JD.succeed RevisionInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "revisionLocation", "RevisionLocation" ]
                revisionLocationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "genericRevisionInfo", "GenericRevisionInfo" ]
                genericRevisionInfoDecoder
            )


revisionInfoToString :
    RevisionInfo
    -> String -- List (String, String)
revisionInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "revisionLocation" "" -- val.revisionLocation
    --     |> Dict.insert
    --         "genericRevisionInfo" "" -- val.genericRevisionInfo
    --     |> Dict.toList
    ""


{-|

<p>Information about the location of an application revision.</p>

-}
type alias RevisionLocation =
    { revisionType : Maybe RevisionLocationType
    , s3Location : Maybe S3Location
    , gitHubLocation : Maybe GitHubLocation
    , string : Maybe RawString
    , appSpecContent : Maybe AppSpecContent
    }


revisionLocationDecoder : JD.Decoder RevisionLocation
revisionLocationDecoder =
    JD.succeed RevisionLocation
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "revisionType", "RevisionType" ]
                revisionLocationTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "s3Location", "S3Location" ]
                s3LocationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "gitHubLocation", "GitHubLocation" ]
                gitHubLocationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "string", "String" ]
                rawStringDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "appSpecContent", "AppSpecContent" ]
                appSpecContentDecoder
            )


revisionLocationToString :
    RevisionLocation
    -> String -- List (String, String)
revisionLocationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "revisionType" "" -- val.revisionType
    --     |> Dict.insert
    --         "s3Location" "" -- val.s3Location
    --     |> Dict.insert
    --         "gitHubLocation" "" -- val.gitHubLocation
    --     |> Dict.insert
    --         "string" "" -- val.string
    --     |> Dict.insert
    --         "appSpecContent" "" -- val.appSpecContent
    --     |> Dict.toList
    ""


{-| One of

  - `RevisionLocationType_S3`
  - `RevisionLocationType_GitHub`
  - `RevisionLocationType_String`
  - `RevisionLocationType_AppSpecContent`

-}
type RevisionLocationType
    = RevisionLocationType_S3
    | RevisionLocationType_GitHub
    | RevisionLocationType_String
    | RevisionLocationType_AppSpecContent


revisionLocationTypeDecoder : JD.Decoder RevisionLocationType
revisionLocationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "S3" ->
                        JD.succeed RevisionLocationType_S3

                    "GitHub" ->
                        JD.succeed RevisionLocationType_GitHub

                    "String" ->
                        JD.succeed RevisionLocationType_String

                    "AppSpecContent" ->
                        JD.succeed RevisionLocationType_AppSpecContent

                    _ ->
                        JD.fail "bad thing"
            )


revisionLocationTypeToString : RevisionLocationType -> String
revisionLocationTypeToString val =
    case val of
        RevisionLocationType_S3 ->
            "S3"

        RevisionLocationType_GitHub ->
            "GitHub"

        RevisionLocationType_String ->
            "String"

        RevisionLocationType_AppSpecContent ->
            "AppSpecContent"


{-|

<p>Information about a deployment rollback.</p>

-}
type alias RollbackInfo =
    { rollbackDeploymentId : Maybe String
    , rollbackTriggeringDeploymentId : Maybe String
    , rollbackMessage : Maybe String
    }


rollbackInfoDecoder : JD.Decoder RollbackInfo
rollbackInfoDecoder =
    JD.succeed RollbackInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "rollbackDeploymentId", "RollbackDeploymentId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "rollbackTriggeringDeploymentId", "RollbackTriggeringDeploymentId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "rollbackMessage", "RollbackMessage" ]
                JD.string
            )


rollbackInfoToString :
    RollbackInfo
    -> String -- List (String, String)
rollbackInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "rollbackDeploymentId" "" -- val.rollbackDeploymentId
    --     |> Dict.insert
    --         "rollbackTriggeringDeploymentId" "" -- val.rollbackTriggeringDeploymentId
    --     |> Dict.insert
    --         "rollbackMessage" "" -- val.rollbackMessage
    --     |> Dict.toList
    ""


{-|

<p>Information about the location of application artifacts stored in Amazon S3.</p>

-}
type alias S3Location =
    { bucket : Maybe String
    , key : Maybe String
    , bundleType : Maybe BundleType
    , version : Maybe String
    , eTag : Maybe String
    }


s3LocationDecoder : JD.Decoder S3Location
s3LocationDecoder =
    JD.succeed S3Location
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "bucket", "Bucket" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "key", "Key" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "bundleType", "BundleType" ]
                bundleTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "version", "Version" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "eTag", "ETag" ]
                JD.string
            )


s3LocationToString :
    S3Location
    -> String -- List (String, String)
s3LocationToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "bucket" "" -- val.bucket
    --     |> Dict.insert
    --         "key" "" -- val.key
    --     |> Dict.insert
    --         "bundleType" "" -- val.bundleType
    --     |> Dict.insert
    --         "version" "" -- val.version
    --     |> Dict.insert
    --         "eTag" "" -- val.eTag
    --     |> Dict.toList
    ""


{-| One of

  - `SortOrder_ascending`
  - `SortOrder_descending`

-}
type SortOrder
    = SortOrder_ascending
    | SortOrder_descending


sortOrderDecoder : JD.Decoder SortOrder
sortOrderDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ascending" ->
                        JD.succeed SortOrder_ascending

                    "descending" ->
                        JD.succeed SortOrder_descending

                    _ ->
                        JD.fail "bad thing"
            )


sortOrderToString : SortOrder -> String
sortOrderToString val =
    case val of
        SortOrder_ascending ->
            "ascending"

        SortOrder_descending ->
            "descending"


{-| Type of HTTP response from stopDeployme
-}
type alias StopDeploymentOutput =
    { status : Maybe StopStatus
    , statusMessage : Maybe String
    }


stopDeploymentOutputDecoder : JD.Decoder StopDeploymentOutput
stopDeploymentOutputDecoder =
    JD.succeed StopDeploymentOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "status", "Status" ]
                stopStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "statusMessage", "StatusMessage" ]
                JD.string
            )


stopDeploymentOutputToString :
    StopDeploymentOutput
    -> String -- List (String, String)
stopDeploymentOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "status" "" -- val.status
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
    --     |> Dict.toList
    ""


{-| One of

  - `StopStatus_Pending`
  - `StopStatus_Succeeded`

-}
type StopStatus
    = StopStatus_Pending
    | StopStatus_Succeeded


stopStatusDecoder : JD.Decoder StopStatus
stopStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed StopStatus_Pending

                    "Succeeded" ->
                        JD.succeed StopStatus_Succeeded

                    _ ->
                        JD.fail "bad thing"
            )


stopStatusToString : StopStatus -> String
stopStatusToString val =
    case val of
        StopStatus_Pending ->
            "Pending"

        StopStatus_Succeeded ->
            "Succeeded"


{-|

<p>Information about a tag.</p>

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


tagToString :
    Tag
    -> String -- List (String, String)
tagToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "key" "" -- val.key
    --     |> Dict.insert
    --         "value" "" -- val.value
    --     |> Dict.toList
    ""


{-|

<p>Information about an on-premises instance tag filter.</p>

-}
type alias TagFilter =
    { key : Maybe String
    , value : Maybe String
    , type_ : Maybe TagFilterType
    }


tagFilterDecoder : JD.Decoder TagFilter
tagFilterDecoder =
    JD.succeed TagFilter
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
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Type", "type" ]
                tagFilterTypeDecoder
            )


tagFilterToString :
    TagFilter
    -> String -- List (String, String)
tagFilterToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "key" "" -- val.key
    --     |> Dict.insert
    --         "value" "" -- val.value
    --     |> Dict.insert
    --         "type_" "" -- val.type_
    --     |> Dict.toList
    ""


{-| One of

  - `TagFilterType_KEY_ONLY`
  - `TagFilterType_VALUE_ONLY`
  - `TagFilterType_KEY_AND_VALUE`

-}
type TagFilterType
    = TagFilterType_KEY_ONLY
    | TagFilterType_VALUE_ONLY
    | TagFilterType_KEY_AND_VALUE


tagFilterTypeDecoder : JD.Decoder TagFilterType
tagFilterTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "KEY_ONLY" ->
                        JD.succeed TagFilterType_KEY_ONLY

                    "VALUE_ONLY" ->
                        JD.succeed TagFilterType_VALUE_ONLY

                    "KEY_AND_VALUE" ->
                        JD.succeed TagFilterType_KEY_AND_VALUE

                    _ ->
                        JD.fail "bad thing"
            )


tagFilterTypeToString : TagFilterType -> String
tagFilterTypeToString val =
    case val of
        TagFilterType_KEY_ONLY ->
            "KEY_ONLY"

        TagFilterType_VALUE_ONLY ->
            "VALUE_ONLY"

        TagFilterType_KEY_AND_VALUE ->
            "KEY_AND_VALUE"


{-| Type of HTTP response from tagResour
-}
type alias TagResourceOutput =
    {}


tagResourceOutputDecoder : JD.Decoder TagResourceOutput
tagResourceOutputDecoder =
    JD.succeed TagResourceOutput


tagResourceOutputToString :
    TagResourceOutput
    -> String -- List (String, String)
tagResourceOutputToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| One of

  - `TargetFilterName_TargetStatus`
  - `TargetFilterName_ServerInstanceLabel`

-}
type TargetFilterName
    = TargetFilterName_TargetStatus
    | TargetFilterName_ServerInstanceLabel


targetFilterNameDecoder : JD.Decoder TargetFilterName
targetFilterNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TargetStatus" ->
                        JD.succeed TargetFilterName_TargetStatus

                    "ServerInstanceLabel" ->
                        JD.succeed TargetFilterName_ServerInstanceLabel

                    _ ->
                        JD.fail "bad thing"
            )


targetFilterNameToString : TargetFilterName -> String
targetFilterNameToString val =
    case val of
        TargetFilterName_TargetStatus ->
            "TargetStatus"

        TargetFilterName_ServerInstanceLabel ->
            "ServerInstanceLabel"


{-|

<p>Information about a target group in Elastic Load Balancing to use in a deployment. Instances are registered as targets in a target group, and traffic is routed to the target group.</p>

-}
type alias TargetGroupInfo =
    { name : Maybe String
    }


targetGroupInfoDecoder : JD.Decoder TargetGroupInfo
targetGroupInfoDecoder =
    JD.succeed TargetGroupInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "name", "Name" ]
                JD.string
            )


targetGroupInfoToString :
    TargetGroupInfo
    -> String -- List (String, String)
targetGroupInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "name" "" -- val.name
    --     |> Dict.toList
    ""


{-|

<p> Information about two target groups and how traffic is routed during an Amazon ECS deployment. An optional test traffic route can be specified. </p>

-}
type alias TargetGroupPairInfo =
    { targetGroups : Maybe (List TargetGroupInfo)
    , prodTrafficRoute : Maybe TrafficRoute
    , testTrafficRoute : Maybe TrafficRoute
    }


targetGroupPairInfoDecoder : JD.Decoder TargetGroupPairInfo
targetGroupPairInfoDecoder =
    JD.succeed TargetGroupPairInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "targetGroups", "TargetGroups" ]
                (JD.list targetGroupInfoDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "prodTrafficRoute", "ProdTrafficRoute" ]
                trafficRouteDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "testTrafficRoute", "TestTrafficRoute" ]
                trafficRouteDecoder
            )


targetGroupPairInfoToString :
    TargetGroupPairInfo
    -> String -- List (String, String)
targetGroupPairInfoToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "targetGroups" "" -- val.targetGroups
    --     |> Dict.insert
    --         "prodTrafficRoute" "" -- val.prodTrafficRoute
    --     |> Dict.insert
    --         "testTrafficRoute" "" -- val.testTrafficRoute
    --     |> Dict.toList
    ""


{-|

<p>Information about the instances to be used in the replacement environment in a blue/green deployment.</p>

-}
type alias TargetInstances =
    { tagFilters : Maybe (List EC2TagFilter)
    , autoScalingGroups : Maybe (List String)
    , ec2TagSet : Maybe EC2TagSet
    }


targetInstancesDecoder : JD.Decoder TargetInstances
targetInstancesDecoder =
    JD.succeed TargetInstances
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "tagFilters", "TagFilters" ]
                (JD.list eC2TagFilterDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "autoScalingGroups", "AutoScalingGroups" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ec2TagSet", "Ec2TagSet" ]
                eC2TagSetDecoder
            )


targetInstancesToString :
    TargetInstances
    -> String -- List (String, String)
targetInstancesToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "tagFilters" "" -- val.tagFilters
    --     |> Dict.insert
    --         "autoScalingGroups" "" -- val.autoScalingGroups
    --     |> Dict.insert
    --         "ec2TagSet" "" -- val.ec2TagSet
    --     |> Dict.toList
    ""


{-| One of

  - `TargetLabel_Blue`
  - `TargetLabel_Green`

-}
type TargetLabel
    = TargetLabel_Blue
    | TargetLabel_Green


targetLabelDecoder : JD.Decoder TargetLabel
targetLabelDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Blue" ->
                        JD.succeed TargetLabel_Blue

                    "Green" ->
                        JD.succeed TargetLabel_Green

                    _ ->
                        JD.fail "bad thing"
            )


targetLabelToString : TargetLabel -> String
targetLabelToString val =
    case val of
        TargetLabel_Blue ->
            "Blue"

        TargetLabel_Green ->
            "Green"


{-| One of

  - `TargetStatus_Pending`
  - `TargetStatus_InProgress`
  - `TargetStatus_Succeeded`
  - `TargetStatus_Failed`
  - `TargetStatus_Skipped`
  - `TargetStatus_Unknown`
  - `TargetStatus_Ready`

-}
type TargetStatus
    = TargetStatus_Pending
    | TargetStatus_InProgress
    | TargetStatus_Succeeded
    | TargetStatus_Failed
    | TargetStatus_Skipped
    | TargetStatus_Unknown
    | TargetStatus_Ready


targetStatusDecoder : JD.Decoder TargetStatus
targetStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed TargetStatus_Pending

                    "InProgress" ->
                        JD.succeed TargetStatus_InProgress

                    "Succeeded" ->
                        JD.succeed TargetStatus_Succeeded

                    "Failed" ->
                        JD.succeed TargetStatus_Failed

                    "Skipped" ->
                        JD.succeed TargetStatus_Skipped

                    "Unknown" ->
                        JD.succeed TargetStatus_Unknown

                    "Ready" ->
                        JD.succeed TargetStatus_Ready

                    _ ->
                        JD.fail "bad thing"
            )


targetStatusToString : TargetStatus -> String
targetStatusToString val =
    case val of
        TargetStatus_Pending ->
            "Pending"

        TargetStatus_InProgress ->
            "InProgress"

        TargetStatus_Succeeded ->
            "Succeeded"

        TargetStatus_Failed ->
            "Failed"

        TargetStatus_Skipped ->
            "Skipped"

        TargetStatus_Unknown ->
            "Unknown"

        TargetStatus_Ready ->
            "Ready"


{-|

<p>A configuration that shifts traffic from one version of a Lambda function to another in two increments. The original and target Lambda function versions are specified in the deployment's AppSpec file.</p>

-}
type alias TimeBasedCanary =
    { canaryPercentage : Maybe Int
    , canaryInterval : Maybe Int
    }


timeBasedCanaryDecoder : JD.Decoder TimeBasedCanary
timeBasedCanaryDecoder =
    JD.succeed TimeBasedCanary
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "canaryPercentage", "CanaryPercentage" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "canaryInterval", "CanaryInterval" ]
                JD.int
            )


timeBasedCanaryToString :
    TimeBasedCanary
    -> String -- List (String, String)
timeBasedCanaryToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "canaryPercentage" "" -- val.canaryPercentage
    --     |> Dict.insert
    --         "canaryInterval" "" -- val.canaryInterval
    --     |> Dict.toList
    ""


{-|

<p>A configuration that shifts traffic from one version of a Lambda function to another in equal increments, with an equal number of minutes between each increment. The original and target Lambda function versions are specified in the deployment's AppSpec file.</p>

-}
type alias TimeBasedLinear =
    { linearPercentage : Maybe Int
    , linearInterval : Maybe Int
    }


timeBasedLinearDecoder : JD.Decoder TimeBasedLinear
timeBasedLinearDecoder =
    JD.succeed TimeBasedLinear
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "linearPercentage", "LinearPercentage" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "linearInterval", "LinearInterval" ]
                JD.int
            )


timeBasedLinearToString :
    TimeBasedLinear
    -> String -- List (String, String)
timeBasedLinearToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "linearPercentage" "" -- val.linearPercentage
    --     |> Dict.insert
    --         "linearInterval" "" -- val.linearInterval
    --     |> Dict.toList
    ""


{-|

<p>Information about a time range.</p>

-}
type alias TimeRange =
    { start : Maybe Posix
    , end : Maybe Posix
    }


timeRangeDecoder : JD.Decoder TimeRange
timeRangeDecoder =
    JD.succeed TimeRange
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "start", "Start" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "end", "End" ]
                JDX.datetime
            )


timeRangeToString :
    TimeRange
    -> String -- List (String, String)
timeRangeToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "start" "" -- val.start
    --     |> Dict.insert
    --         "end" "" -- val.end
    --     |> Dict.toList
    ""


{-|

<p> Information about a listener. The listener contains the path used to route traffic that is received from the load balancer to a target group. </p>

-}
type alias TrafficRoute =
    { listenerArns : Maybe (List String)
    }


trafficRouteDecoder : JD.Decoder TrafficRoute
trafficRouteDecoder =
    JD.succeed TrafficRoute
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "listenerArns", "ListenerArns" ]
                (JD.list JD.string)
            )


trafficRouteToString :
    TrafficRoute
    -> String -- List (String, String)
trafficRouteToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "listenerArns" "" -- val.listenerArns
    --     |> Dict.toList
    ""


{-|

<p>The configuration that specifies how traffic is shifted from one version of a Lambda function to another version during an AWS Lambda deployment.</p>

-}
type alias TrafficRoutingConfig =
    { type_ : Maybe TrafficRoutingType
    , timeBasedCanary : Maybe TimeBasedCanary
    , timeBasedLinear : Maybe TimeBasedLinear
    }


trafficRoutingConfigDecoder : JD.Decoder TrafficRoutingConfig
trafficRoutingConfigDecoder =
    JD.succeed TrafficRoutingConfig
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "type", "Type" ]
                trafficRoutingTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "timeBasedCanary", "TimeBasedCanary" ]
                timeBasedCanaryDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "timeBasedLinear", "TimeBasedLinear" ]
                timeBasedLinearDecoder
            )


trafficRoutingConfigToString :
    TrafficRoutingConfig
    -> String -- List (String, String)
trafficRoutingConfigToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "type_" "" -- val.type_
    --     |> Dict.insert
    --         "timeBasedCanary" "" -- val.timeBasedCanary
    --     |> Dict.insert
    --         "timeBasedLinear" "" -- val.timeBasedLinear
    --     |> Dict.toList
    ""


{-| One of

  - `TrafficRoutingType_TimeBasedCanary`
  - `TrafficRoutingType_TimeBasedLinear`
  - `TrafficRoutingType_AllAtOnce`

-}
type TrafficRoutingType
    = TrafficRoutingType_TimeBasedCanary
    | TrafficRoutingType_TimeBasedLinear
    | TrafficRoutingType_AllAtOnce


trafficRoutingTypeDecoder : JD.Decoder TrafficRoutingType
trafficRoutingTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TimeBasedCanary" ->
                        JD.succeed TrafficRoutingType_TimeBasedCanary

                    "TimeBasedLinear" ->
                        JD.succeed TrafficRoutingType_TimeBasedLinear

                    "AllAtOnce" ->
                        JD.succeed TrafficRoutingType_AllAtOnce

                    _ ->
                        JD.fail "bad thing"
            )


trafficRoutingTypeToString : TrafficRoutingType -> String
trafficRoutingTypeToString val =
    case val of
        TrafficRoutingType_TimeBasedCanary ->
            "TimeBasedCanary"

        TrafficRoutingType_TimeBasedLinear ->
            "TimeBasedLinear"

        TrafficRoutingType_AllAtOnce ->
            "AllAtOnce"


{-|

<p>Information about notification triggers for the deployment group.</p>

-}
type alias TriggerConfig =
    { triggerName : Maybe String
    , triggerTargetArn : Maybe String
    , triggerEvents : Maybe (List TriggerEventType)
    }


triggerConfigDecoder : JD.Decoder TriggerConfig
triggerConfigDecoder =
    JD.succeed TriggerConfig
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "triggerName", "TriggerName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "triggerTargetArn", "TriggerTargetArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "triggerEvents", "TriggerEvents" ]
                (JD.list triggerEventTypeDecoder)
            )


triggerConfigToString :
    TriggerConfig
    -> String -- List (String, String)
triggerConfigToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "triggerName" "" -- val.triggerName
    --     |> Dict.insert
    --         "triggerTargetArn" "" -- val.triggerTargetArn
    --     |> Dict.insert
    --         "triggerEvents" "" -- val.triggerEvents
    --     |> Dict.toList
    ""


{-| One of

  - `TriggerEventType_DeploymentStart`
  - `TriggerEventType_DeploymentSuccess`
  - `TriggerEventType_DeploymentFailure`
  - `TriggerEventType_DeploymentStop`
  - `TriggerEventType_DeploymentRollback`
  - `TriggerEventType_DeploymentReady`
  - `TriggerEventType_InstanceStart`
  - `TriggerEventType_InstanceSuccess`
  - `TriggerEventType_InstanceFailure`
  - `TriggerEventType_InstanceReady`

-}
type TriggerEventType
    = TriggerEventType_DeploymentStart
    | TriggerEventType_DeploymentSuccess
    | TriggerEventType_DeploymentFailure
    | TriggerEventType_DeploymentStop
    | TriggerEventType_DeploymentRollback
    | TriggerEventType_DeploymentReady
    | TriggerEventType_InstanceStart
    | TriggerEventType_InstanceSuccess
    | TriggerEventType_InstanceFailure
    | TriggerEventType_InstanceReady


triggerEventTypeDecoder : JD.Decoder TriggerEventType
triggerEventTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DeploymentStart" ->
                        JD.succeed TriggerEventType_DeploymentStart

                    "DeploymentSuccess" ->
                        JD.succeed TriggerEventType_DeploymentSuccess

                    "DeploymentFailure" ->
                        JD.succeed TriggerEventType_DeploymentFailure

                    "DeploymentStop" ->
                        JD.succeed TriggerEventType_DeploymentStop

                    "DeploymentRollback" ->
                        JD.succeed TriggerEventType_DeploymentRollback

                    "DeploymentReady" ->
                        JD.succeed TriggerEventType_DeploymentReady

                    "InstanceStart" ->
                        JD.succeed TriggerEventType_InstanceStart

                    "InstanceSuccess" ->
                        JD.succeed TriggerEventType_InstanceSuccess

                    "InstanceFailure" ->
                        JD.succeed TriggerEventType_InstanceFailure

                    "InstanceReady" ->
                        JD.succeed TriggerEventType_InstanceReady

                    _ ->
                        JD.fail "bad thing"
            )


triggerEventTypeToString : TriggerEventType -> String
triggerEventTypeToString val =
    case val of
        TriggerEventType_DeploymentStart ->
            "DeploymentStart"

        TriggerEventType_DeploymentSuccess ->
            "DeploymentSuccess"

        TriggerEventType_DeploymentFailure ->
            "DeploymentFailure"

        TriggerEventType_DeploymentStop ->
            "DeploymentStop"

        TriggerEventType_DeploymentRollback ->
            "DeploymentRollback"

        TriggerEventType_DeploymentReady ->
            "DeploymentReady"

        TriggerEventType_InstanceStart ->
            "InstanceStart"

        TriggerEventType_InstanceSuccess ->
            "InstanceSuccess"

        TriggerEventType_InstanceFailure ->
            "InstanceFailure"

        TriggerEventType_InstanceReady ->
            "InstanceReady"


{-| Type of HTTP response from untagResour
-}
type alias UntagResourceOutput =
    {}


untagResourceOutputDecoder : JD.Decoder UntagResourceOutput
untagResourceOutputDecoder =
    JD.succeed UntagResourceOutput


untagResourceOutputToString :
    UntagResourceOutput
    -> String -- List (String, String)
untagResourceOutputToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from updateDeploymentGro
-}
type alias UpdateDeploymentGroupOutput =
    { hooksNotCleanedUp : Maybe (List AutoScalingGroup)
    }


updateDeploymentGroupOutputDecoder : JD.Decoder UpdateDeploymentGroupOutput
updateDeploymentGroupOutputDecoder =
    JD.succeed UpdateDeploymentGroupOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "hooksNotCleanedUp", "HooksNotCleanedUp" ]
                (JD.list autoScalingGroupDecoder)
            )


updateDeploymentGroupOutputToString :
    UpdateDeploymentGroupOutput
    -> String -- List (String, String)
updateDeploymentGroupOutputToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "hooksNotCleanedUp" "" -- val.hooksNotCleanedUp
    --     |> Dict.toList
    ""


{-|

<p>Represents the input of, and adds tags to, an on-premises instance operation.</p>

-}
type alias AddTagsToOnPremisesInstancesInput =
    { tags : List Tag
    , instanceNames : List String
    }


{-|

<p>Represents the input of a BatchGetApplicationRevisions operation.</p>

-}
type alias BatchGetApplicationRevisionsInput =
    { applicationName : String
    , revisions : List RevisionLocation
    }


{-|

<p>Represents the input of a BatchGetApplications operation.</p>

-}
type alias BatchGetApplicationsInput =
    { applicationNames : List String
    }


{-|

<p>Represents the input of a BatchGetDeploymentGroups operation.</p>

-}
type alias BatchGetDeploymentGroupsInput =
    { applicationName : String
    , deploymentGroupNames : List String
    }


{-|

<p> Represents the input of a BatchGetDeploymentInstances operation. </p>

-}
type alias BatchGetDeploymentInstancesInput =
    { deploymentId : String
    , instanceIds : List String
    }


{-| undefined
-}
type alias BatchGetDeploymentTargetsInput =
    { deploymentId : Maybe String
    , targetIds : Maybe (List String)
    }


{-|

<p> Represents the input of a BatchGetDeployments operation. </p>

-}
type alias BatchGetDeploymentsInput =
    { deploymentIds : List String
    }


{-|

<p>Represents the input of a BatchGetOnPremisesInstances operation.</p>

-}
type alias BatchGetOnPremisesInstancesInput =
    { instanceNames : List String
    }


{-| undefined
-}
type alias ContinueDeploymentInput =
    { deploymentId : Maybe String
    , deploymentWaitType : Maybe DeploymentWaitType
    }


{-|

<p>Represents the input of a CreateApplication operation.</p>

-}
type alias CreateApplicationInput =
    { applicationName : String
    , computePlatform : Maybe ComputePlatform
    , tags : Maybe (List Tag)
    }


{-|

<p>Represents the input of a CreateDeploymentConfig operation.</p>

-}
type alias CreateDeploymentConfigInput =
    { deploymentConfigName : String
    , minimumHealthyHosts : Maybe MinimumHealthyHosts
    , trafficRoutingConfig : Maybe TrafficRoutingConfig
    , computePlatform : Maybe ComputePlatform
    }


{-|

<p>Represents the input of a CreateDeploymentGroup operation.</p>

-}
type alias CreateDeploymentGroupInput =
    { applicationName : String
    , deploymentGroupName : String
    , deploymentConfigName : Maybe String
    , ec2TagFilters : Maybe (List EC2TagFilter)
    , onPremisesInstanceTagFilters : Maybe (List TagFilter)
    , autoScalingGroups : Maybe (List String)
    , serviceRoleArn : String
    , triggerConfigurations : Maybe (List TriggerConfig)
    , alarmConfiguration : Maybe AlarmConfiguration
    , autoRollbackConfiguration : Maybe AutoRollbackConfiguration
    , deploymentStyle : Maybe DeploymentStyle
    , blueGreenDeploymentConfiguration : Maybe BlueGreenDeploymentConfiguration
    , loadBalancerInfo : Maybe LoadBalancerInfo
    , ec2TagSet : Maybe EC2TagSet
    , ecsServices : Maybe (List ECSService)
    , onPremisesTagSet : Maybe OnPremisesTagSet
    , tags : Maybe (List Tag)
    }


{-|

<p>Represents the input of a CreateDeployment operation.</p>

-}
type alias CreateDeploymentInput =
    { applicationName : String
    , deploymentGroupName : Maybe String
    , revision : Maybe RevisionLocation
    , deploymentConfigName : Maybe String
    , description : Maybe String
    , ignoreApplicationStopFailures : Maybe Bool
    , targetInstances : Maybe TargetInstances
    , autoRollbackConfiguration : Maybe AutoRollbackConfiguration
    , updateOutdatedInstancesOnly : Maybe Bool
    , fileExistsBehavior : Maybe FileExistsBehavior
    }


{-|

<p>Represents the input of a DeleteApplication operation.</p>

-}
type alias DeleteApplicationInput =
    { applicationName : String
    }


{-|

<p>Represents the input of a DeleteDeploymentConfig operation.</p>

-}
type alias DeleteDeploymentConfigInput =
    { deploymentConfigName : String
    }


{-|

<p>Represents the input of a DeleteDeploymentGroup operation.</p>

-}
type alias DeleteDeploymentGroupInput =
    { applicationName : String
    , deploymentGroupName : String
    }


{-|

<p>Represents the input of a DeleteGitHubAccount operation.</p>

-}
type alias DeleteGitHubAccountTokenInput =
    { tokenName : Maybe String
    }


{-|

<p>Represents the input of a DeregisterOnPremisesInstance operation.</p>

-}
type alias DeregisterOnPremisesInstanceInput =
    { instanceName : String
    }


{-|

<p>Represents the input of a GetApplication operation.</p>

-}
type alias GetApplicationInput =
    { applicationName : String
    }


{-|

<p>Represents the input of a GetApplicationRevision operation.</p>

-}
type alias GetApplicationRevisionInput =
    { applicationName : String
    , revision : RevisionLocation
    }


{-|

<p>Represents the input of a GetDeploymentConfig operation.</p>

-}
type alias GetDeploymentConfigInput =
    { deploymentConfigName : String
    }


{-|

<p>Represents the input of a GetDeploymentGroup operation.</p>

-}
type alias GetDeploymentGroupInput =
    { applicationName : String
    , deploymentGroupName : String
    }


{-|

<p>Represents the input of a GetDeployment operation.</p>

-}
type alias GetDeploymentInput =
    { deploymentId : String
    }


{-|

<p> Represents the input of a GetDeploymentInstance operation. </p>

-}
type alias GetDeploymentInstanceInput =
    { deploymentId : String
    , instanceId : String
    }


{-| undefined
-}
type alias GetDeploymentTargetInput =
    { deploymentId : Maybe String
    , targetId : Maybe String
    }


{-|

<p> Represents the input of a GetOnPremisesInstance operation. </p>

-}
type alias GetOnPremisesInstanceInput =
    { instanceName : String
    }


{-|

<p> Represents the input of a ListApplicationRevisions operation. </p>

-}
type alias ListApplicationRevisionsInput =
    { applicationName : String
    , sortBy : Maybe ApplicationRevisionSortBy
    , sortOrder : Maybe SortOrder
    , s3Bucket : Maybe String
    , s3KeyPrefix : Maybe String
    , deployed : Maybe ListStateFilterAction
    , nextToken : Maybe String
    }


{-|

<p>Represents the input of a ListApplications operation.</p>

-}
type alias ListApplicationsInput =
    { nextToken : Maybe String
    }


{-|

<p>Represents the input of a ListDeploymentConfigs operation.</p>

-}
type alias ListDeploymentConfigsInput =
    { nextToken : Maybe String
    }


{-|

<p>Represents the input of a ListDeploymentGroups operation.</p>

-}
type alias ListDeploymentGroupsInput =
    { applicationName : String
    , nextToken : Maybe String
    }


{-|

<p> Represents the input of a ListDeploymentInstances operation. </p>

-}
type alias ListDeploymentInstancesInput =
    { deploymentId : String
    , nextToken : Maybe String
    , instanceStatusFilter : Maybe (List InstanceStatus)
    , instanceTypeFilter : Maybe (List InstanceType)
    }


{-| undefined
-}
type alias ListDeploymentTargetsInput =
    { deploymentId : Maybe String
    , nextToken : Maybe String
    , targetFilters : Maybe (Dict String (List String))
    }


{-|

<p>Represents the input of a ListDeployments operation.</p>

-}
type alias ListDeploymentsInput =
    { applicationName : Maybe String
    , deploymentGroupName : Maybe String
    , includeOnlyStatuses : Maybe (List DeploymentStatus)
    , createTimeRange : Maybe TimeRange
    , nextToken : Maybe String
    }


{-|

<p>Represents the input of a ListGitHubAccountTokenNames operation.</p>

-}
type alias ListGitHubAccountTokenNamesInput =
    { nextToken : Maybe String
    }


{-|

<p>Represents the input of a ListOnPremisesInstances operation.</p>

-}
type alias ListOnPremisesInstancesInput =
    { registrationStatus : Maybe RegistrationStatus
    , tagFilters : Maybe (List TagFilter)
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListTagsForResourceInput =
    { resourceArn : String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias PutLifecycleEventHookExecutionStatusInput =
    { deploymentId : Maybe String
    , lifecycleEventHookExecutionId : Maybe String
    , status : Maybe LifecycleEventStatus
    }


{-|

<p>Represents the input of a RegisterApplicationRevision operation.</p>

-}
type alias RegisterApplicationRevisionInput =
    { applicationName : String
    , description : Maybe String
    , revision : RevisionLocation
    }


{-|

<p>Represents the input of the register on-premises instance operation.</p>

-}
type alias RegisterOnPremisesInstanceInput =
    { instanceName : String
    , iamSessionArn : Maybe String
    , iamUserArn : Maybe String
    }


{-|

<p>Represents the input of a RemoveTagsFromOnPremisesInstances operation.</p>

-}
type alias RemoveTagsFromOnPremisesInstancesInput =
    { tags : List Tag
    , instanceNames : List String
    }


{-| undefined
-}
type alias SkipWaitTimeForInstanceTerminationInput =
    { deploymentId : Maybe String
    }


{-|

<p> Represents the input of a StopDeployment operation. </p>

-}
type alias StopDeploymentInput =
    { deploymentId : String
    , autoRollbackEnabled : Maybe Bool
    }


{-| undefined
-}
type alias TagResourceInput =
    { resourceArn : String
    , tags : List Tag
    }


{-| undefined
-}
type alias UntagResourceInput =
    { resourceArn : String
    , tagKeys : List String
    }


{-|

<p>Represents the input of an UpdateApplication operation.</p>

-}
type alias UpdateApplicationInput =
    { applicationName : Maybe String
    , newApplicationName : Maybe String
    }


{-|

<p>Represents the input of an UpdateDeploymentGroup operation.</p>

-}
type alias UpdateDeploymentGroupInput =
    { applicationName : String
    , currentDeploymentGroupName : String
    , newDeploymentGroupName : Maybe String
    , deploymentConfigName : Maybe String
    , ec2TagFilters : Maybe (List EC2TagFilter)
    , onPremisesInstanceTagFilters : Maybe (List TagFilter)
    , autoScalingGroups : Maybe (List String)
    , serviceRoleArn : Maybe String
    , triggerConfigurations : Maybe (List TriggerConfig)
    , alarmConfiguration : Maybe AlarmConfiguration
    , autoRollbackConfiguration : Maybe AutoRollbackConfiguration
    , deploymentStyle : Maybe DeploymentStyle
    , blueGreenDeploymentConfiguration : Maybe BlueGreenDeploymentConfiguration
    , loadBalancerInfo : Maybe LoadBalancerInfo
    , ec2TagSet : Maybe EC2TagSet
    , ecsServices : Maybe (List ECSService)
    , onPremisesTagSet : Maybe OnPremisesTagSet
    }


addTagsToOnPremisesInstancesInputEncoder : AddTagsToOnPremisesInstancesInput -> JE.Value
addTagsToOnPremisesInstancesInputEncoder data =
    []
        |> (::) ( "tags", data.tags |> JE.list tagEncoder )
        |> (::) ( "instanceNames", data.instanceNames |> JE.list JE.string )
        |> JE.object


alarmEncoder : Alarm -> JE.Value
alarmEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "name", data.name )
        |> JE.object


alarmConfigurationEncoder : AlarmConfiguration -> JE.Value
alarmConfigurationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "enabled", data.enabled )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ignorePollAlarmFailure", data.ignorePollAlarmFailure )
        |> AWS.Core.Encode.optionalMember
            (JE.list alarmEncoder)
            ( "alarms", data.alarms )
        |> JE.object


appSpecContentEncoder : AppSpecContent -> JE.Value
appSpecContentEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "content", data.content )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "sha256", data.sha256 )
        |> JE.object


applicationInfoEncoder : ApplicationInfo -> JE.Value
applicationInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "applicationId", data.applicationId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "applicationName", data.applicationName )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "createTime", data.createTime )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "linkedToGitHub", data.linkedToGitHub )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "gitHubAccountName", data.gitHubAccountName )
        |> AWS.Core.Encode.optionalMember
            (computePlatformToString >> JE.string)
            ( "computePlatform", data.computePlatform )
        |> JE.object


autoRollbackConfigurationEncoder : AutoRollbackConfiguration -> JE.Value
autoRollbackConfigurationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "enabled", data.enabled )
        |> AWS.Core.Encode.optionalMember
            (JE.list (autoRollbackEventToString >> JE.string))
            ( "events", data.events )
        |> JE.object


autoScalingGroupEncoder : AutoScalingGroup -> JE.Value
autoScalingGroupEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "name", data.name )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "hook", data.hook )
        |> JE.object


batchGetApplicationRevisionsInputEncoder : BatchGetApplicationRevisionsInput -> JE.Value
batchGetApplicationRevisionsInputEncoder data =
    []
        |> (::) ( "applicationName", data.applicationName |> JE.string )
        |> (::) ( "revisions", data.revisions |> JE.list revisionLocationEncoder )
        |> JE.object


batchGetApplicationRevisionsOutputEncoder : BatchGetApplicationRevisionsOutput -> JE.Value
batchGetApplicationRevisionsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "applicationName", data.applicationName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "errorMessage", data.errorMessage )
        |> AWS.Core.Encode.optionalMember
            (JE.list revisionInfoEncoder)
            ( "revisions", data.revisions )
        |> JE.object


batchGetApplicationsInputEncoder : BatchGetApplicationsInput -> JE.Value
batchGetApplicationsInputEncoder data =
    []
        |> (::) ( "applicationNames", data.applicationNames |> JE.list JE.string )
        |> JE.object


batchGetApplicationsOutputEncoder : BatchGetApplicationsOutput -> JE.Value
batchGetApplicationsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list applicationInfoEncoder)
            ( "applicationsInfo", data.applicationsInfo )
        |> JE.object


batchGetDeploymentGroupsInputEncoder : BatchGetDeploymentGroupsInput -> JE.Value
batchGetDeploymentGroupsInputEncoder data =
    []
        |> (::) ( "applicationName", data.applicationName |> JE.string )
        |> (::) ( "deploymentGroupNames", data.deploymentGroupNames |> JE.list JE.string )
        |> JE.object


batchGetDeploymentGroupsOutputEncoder : BatchGetDeploymentGroupsOutput -> JE.Value
batchGetDeploymentGroupsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list deploymentGroupInfoEncoder)
            ( "deploymentGroupsInfo", data.deploymentGroupsInfo )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "errorMessage", data.errorMessage )
        |> JE.object


batchGetDeploymentInstancesInputEncoder : BatchGetDeploymentInstancesInput -> JE.Value
batchGetDeploymentInstancesInputEncoder data =
    []
        |> (::) ( "deploymentId", data.deploymentId |> JE.string )
        |> (::) ( "instanceIds", data.instanceIds |> JE.list JE.string )
        |> JE.object


batchGetDeploymentInstancesOutputEncoder : BatchGetDeploymentInstancesOutput -> JE.Value
batchGetDeploymentInstancesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list instanceSummaryEncoder)
            ( "instancesSummary", data.instancesSummary )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "errorMessage", data.errorMessage )
        |> JE.object


batchGetDeploymentTargetsInputEncoder : BatchGetDeploymentTargetsInput -> JE.Value
batchGetDeploymentTargetsInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentId", data.deploymentId )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "targetIds", data.targetIds )
        |> JE.object


batchGetDeploymentTargetsOutputEncoder : BatchGetDeploymentTargetsOutput -> JE.Value
batchGetDeploymentTargetsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list deploymentTargetEncoder)
            ( "deploymentTargets", data.deploymentTargets )
        |> JE.object


batchGetDeploymentsInputEncoder : BatchGetDeploymentsInput -> JE.Value
batchGetDeploymentsInputEncoder data =
    []
        |> (::) ( "deploymentIds", data.deploymentIds |> JE.list JE.string )
        |> JE.object


batchGetDeploymentsOutputEncoder : BatchGetDeploymentsOutput -> JE.Value
batchGetDeploymentsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list deploymentInfoEncoder)
            ( "deploymentsInfo", data.deploymentsInfo )
        |> JE.object


batchGetOnPremisesInstancesInputEncoder : BatchGetOnPremisesInstancesInput -> JE.Value
batchGetOnPremisesInstancesInputEncoder data =
    []
        |> (::) ( "instanceNames", data.instanceNames |> JE.list JE.string )
        |> JE.object


batchGetOnPremisesInstancesOutputEncoder : BatchGetOnPremisesInstancesOutput -> JE.Value
batchGetOnPremisesInstancesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list instanceInfoEncoder)
            ( "instanceInfos", data.instanceInfos )
        |> JE.object


blueGreenDeploymentConfigurationEncoder : BlueGreenDeploymentConfiguration -> JE.Value
blueGreenDeploymentConfigurationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            blueInstanceTerminationOptionEncoder
            ( "terminateBlueInstancesOnDeploymentSuccess", data.terminateBlueInstancesOnDeploymentSuccess )
        |> AWS.Core.Encode.optionalMember
            deploymentReadyOptionEncoder
            ( "deploymentReadyOption", data.deploymentReadyOption )
        |> AWS.Core.Encode.optionalMember
            greenFleetProvisioningOptionEncoder
            ( "greenFleetProvisioningOption", data.greenFleetProvisioningOption )
        |> JE.object


blueInstanceTerminationOptionEncoder : BlueInstanceTerminationOption -> JE.Value
blueInstanceTerminationOptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (instanceActionToString >> JE.string)
            ( "action", data.action )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "terminationWaitTimeInMinutes", data.terminationWaitTimeInMinutes )
        |> JE.object


continueDeploymentInputEncoder : ContinueDeploymentInput -> JE.Value
continueDeploymentInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentId", data.deploymentId )
        |> AWS.Core.Encode.optionalMember
            (deploymentWaitTypeToString >> JE.string)
            ( "deploymentWaitType", data.deploymentWaitType )
        |> JE.object


createApplicationInputEncoder : CreateApplicationInput -> JE.Value
createApplicationInputEncoder data =
    []
        |> (::) ( "applicationName", data.applicationName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (computePlatformToString >> JE.string)
            ( "computePlatform", data.computePlatform )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "tags", data.tags )
        |> JE.object


createApplicationOutputEncoder : CreateApplicationOutput -> JE.Value
createApplicationOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "applicationId", data.applicationId )
        |> JE.object


createDeploymentConfigInputEncoder : CreateDeploymentConfigInput -> JE.Value
createDeploymentConfigInputEncoder data =
    []
        |> (::) ( "deploymentConfigName", data.deploymentConfigName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            minimumHealthyHostsEncoder
            ( "minimumHealthyHosts", data.minimumHealthyHosts )
        |> AWS.Core.Encode.optionalMember
            trafficRoutingConfigEncoder
            ( "trafficRoutingConfig", data.trafficRoutingConfig )
        |> AWS.Core.Encode.optionalMember
            (computePlatformToString >> JE.string)
            ( "computePlatform", data.computePlatform )
        |> JE.object


createDeploymentConfigOutputEncoder : CreateDeploymentConfigOutput -> JE.Value
createDeploymentConfigOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentConfigId", data.deploymentConfigId )
        |> JE.object


createDeploymentGroupInputEncoder : CreateDeploymentGroupInput -> JE.Value
createDeploymentGroupInputEncoder data =
    []
        |> (::) ( "applicationName", data.applicationName |> JE.string )
        |> (::) ( "deploymentGroupName", data.deploymentGroupName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentConfigName", data.deploymentConfigName )
        |> AWS.Core.Encode.optionalMember
            (JE.list eC2TagFilterEncoder)
            ( "ec2TagFilters", data.ec2TagFilters )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagFilterEncoder)
            ( "onPremisesInstanceTagFilters", data.onPremisesInstanceTagFilters )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "autoScalingGroups", data.autoScalingGroups )
        |> (::) ( "serviceRoleArn", data.serviceRoleArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list triggerConfigEncoder)
            ( "triggerConfigurations", data.triggerConfigurations )
        |> AWS.Core.Encode.optionalMember
            alarmConfigurationEncoder
            ( "alarmConfiguration", data.alarmConfiguration )
        |> AWS.Core.Encode.optionalMember
            autoRollbackConfigurationEncoder
            ( "autoRollbackConfiguration", data.autoRollbackConfiguration )
        |> AWS.Core.Encode.optionalMember
            deploymentStyleEncoder
            ( "deploymentStyle", data.deploymentStyle )
        |> AWS.Core.Encode.optionalMember
            blueGreenDeploymentConfigurationEncoder
            ( "blueGreenDeploymentConfiguration", data.blueGreenDeploymentConfiguration )
        |> AWS.Core.Encode.optionalMember
            loadBalancerInfoEncoder
            ( "loadBalancerInfo", data.loadBalancerInfo )
        |> AWS.Core.Encode.optionalMember
            eC2TagSetEncoder
            ( "ec2TagSet", data.ec2TagSet )
        |> AWS.Core.Encode.optionalMember
            (JE.list eCSServiceEncoder)
            ( "ecsServices", data.ecsServices )
        |> AWS.Core.Encode.optionalMember
            onPremisesTagSetEncoder
            ( "onPremisesTagSet", data.onPremisesTagSet )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "tags", data.tags )
        |> JE.object


createDeploymentGroupOutputEncoder : CreateDeploymentGroupOutput -> JE.Value
createDeploymentGroupOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentGroupId", data.deploymentGroupId )
        |> JE.object


createDeploymentInputEncoder : CreateDeploymentInput -> JE.Value
createDeploymentInputEncoder data =
    []
        |> (::) ( "applicationName", data.applicationName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentGroupName", data.deploymentGroupName )
        |> AWS.Core.Encode.optionalMember
            revisionLocationEncoder
            ( "revision", data.revision )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentConfigName", data.deploymentConfigName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "description", data.description )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ignoreApplicationStopFailures", data.ignoreApplicationStopFailures )
        |> AWS.Core.Encode.optionalMember
            targetInstancesEncoder
            ( "targetInstances", data.targetInstances )
        |> AWS.Core.Encode.optionalMember
            autoRollbackConfigurationEncoder
            ( "autoRollbackConfiguration", data.autoRollbackConfiguration )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "updateOutdatedInstancesOnly", data.updateOutdatedInstancesOnly )
        |> AWS.Core.Encode.optionalMember
            (fileExistsBehaviorToString >> JE.string)
            ( "fileExistsBehavior", data.fileExistsBehavior )
        |> JE.object


createDeploymentOutputEncoder : CreateDeploymentOutput -> JE.Value
createDeploymentOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentId", data.deploymentId )
        |> JE.object


deleteApplicationInputEncoder : DeleteApplicationInput -> JE.Value
deleteApplicationInputEncoder data =
    []
        |> (::) ( "applicationName", data.applicationName |> JE.string )
        |> JE.object


deleteDeploymentConfigInputEncoder : DeleteDeploymentConfigInput -> JE.Value
deleteDeploymentConfigInputEncoder data =
    []
        |> (::) ( "deploymentConfigName", data.deploymentConfigName |> JE.string )
        |> JE.object


deleteDeploymentGroupInputEncoder : DeleteDeploymentGroupInput -> JE.Value
deleteDeploymentGroupInputEncoder data =
    []
        |> (::) ( "applicationName", data.applicationName |> JE.string )
        |> (::) ( "deploymentGroupName", data.deploymentGroupName |> JE.string )
        |> JE.object


deleteDeploymentGroupOutputEncoder : DeleteDeploymentGroupOutput -> JE.Value
deleteDeploymentGroupOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list autoScalingGroupEncoder)
            ( "hooksNotCleanedUp", data.hooksNotCleanedUp )
        |> JE.object


deleteGitHubAccountTokenInputEncoder : DeleteGitHubAccountTokenInput -> JE.Value
deleteGitHubAccountTokenInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "tokenName", data.tokenName )
        |> JE.object


deleteGitHubAccountTokenOutputEncoder : DeleteGitHubAccountTokenOutput -> JE.Value
deleteGitHubAccountTokenOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "tokenName", data.tokenName )
        |> JE.object


deploymentConfigInfoEncoder : DeploymentConfigInfo -> JE.Value
deploymentConfigInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentConfigId", data.deploymentConfigId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentConfigName", data.deploymentConfigName )
        |> AWS.Core.Encode.optionalMember
            minimumHealthyHostsEncoder
            ( "minimumHealthyHosts", data.minimumHealthyHosts )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "createTime", data.createTime )
        |> AWS.Core.Encode.optionalMember
            (computePlatformToString >> JE.string)
            ( "computePlatform", data.computePlatform )
        |> AWS.Core.Encode.optionalMember
            trafficRoutingConfigEncoder
            ( "trafficRoutingConfig", data.trafficRoutingConfig )
        |> JE.object


deploymentGroupInfoEncoder : DeploymentGroupInfo -> JE.Value
deploymentGroupInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "applicationName", data.applicationName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentGroupId", data.deploymentGroupId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentGroupName", data.deploymentGroupName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentConfigName", data.deploymentConfigName )
        |> AWS.Core.Encode.optionalMember
            (JE.list eC2TagFilterEncoder)
            ( "ec2TagFilters", data.ec2TagFilters )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagFilterEncoder)
            ( "onPremisesInstanceTagFilters", data.onPremisesInstanceTagFilters )
        |> AWS.Core.Encode.optionalMember
            (JE.list autoScalingGroupEncoder)
            ( "autoScalingGroups", data.autoScalingGroups )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "serviceRoleArn", data.serviceRoleArn )
        |> AWS.Core.Encode.optionalMember
            revisionLocationEncoder
            ( "targetRevision", data.targetRevision )
        |> AWS.Core.Encode.optionalMember
            (JE.list triggerConfigEncoder)
            ( "triggerConfigurations", data.triggerConfigurations )
        |> AWS.Core.Encode.optionalMember
            alarmConfigurationEncoder
            ( "alarmConfiguration", data.alarmConfiguration )
        |> AWS.Core.Encode.optionalMember
            autoRollbackConfigurationEncoder
            ( "autoRollbackConfiguration", data.autoRollbackConfiguration )
        |> AWS.Core.Encode.optionalMember
            deploymentStyleEncoder
            ( "deploymentStyle", data.deploymentStyle )
        |> AWS.Core.Encode.optionalMember
            blueGreenDeploymentConfigurationEncoder
            ( "blueGreenDeploymentConfiguration", data.blueGreenDeploymentConfiguration )
        |> AWS.Core.Encode.optionalMember
            loadBalancerInfoEncoder
            ( "loadBalancerInfo", data.loadBalancerInfo )
        |> AWS.Core.Encode.optionalMember
            lastDeploymentInfoEncoder
            ( "lastSuccessfulDeployment", data.lastSuccessfulDeployment )
        |> AWS.Core.Encode.optionalMember
            lastDeploymentInfoEncoder
            ( "lastAttemptedDeployment", data.lastAttemptedDeployment )
        |> AWS.Core.Encode.optionalMember
            eC2TagSetEncoder
            ( "ec2TagSet", data.ec2TagSet )
        |> AWS.Core.Encode.optionalMember
            onPremisesTagSetEncoder
            ( "onPremisesTagSet", data.onPremisesTagSet )
        |> AWS.Core.Encode.optionalMember
            (computePlatformToString >> JE.string)
            ( "computePlatform", data.computePlatform )
        |> AWS.Core.Encode.optionalMember
            (JE.list eCSServiceEncoder)
            ( "ecsServices", data.ecsServices )
        |> JE.object


deploymentInfoEncoder : DeploymentInfo -> JE.Value
deploymentInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "applicationName", data.applicationName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentGroupName", data.deploymentGroupName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentConfigName", data.deploymentConfigName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentId", data.deploymentId )
        |> AWS.Core.Encode.optionalMember
            revisionLocationEncoder
            ( "previousRevision", data.previousRevision )
        |> AWS.Core.Encode.optionalMember
            revisionLocationEncoder
            ( "revision", data.revision )
        |> AWS.Core.Encode.optionalMember
            (deploymentStatusToString >> JE.string)
            ( "status", data.status )
        |> AWS.Core.Encode.optionalMember
            errorInformationEncoder
            ( "errorInformation", data.errorInformation )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "createTime", data.createTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "startTime", data.startTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "completeTime", data.completeTime )
        |> AWS.Core.Encode.optionalMember
            deploymentOverviewEncoder
            ( "deploymentOverview", data.deploymentOverview )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "description", data.description )
        |> AWS.Core.Encode.optionalMember
            (deploymentCreatorToString >> JE.string)
            ( "creator", data.creator )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ignoreApplicationStopFailures", data.ignoreApplicationStopFailures )
        |> AWS.Core.Encode.optionalMember
            autoRollbackConfigurationEncoder
            ( "autoRollbackConfiguration", data.autoRollbackConfiguration )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "updateOutdatedInstancesOnly", data.updateOutdatedInstancesOnly )
        |> AWS.Core.Encode.optionalMember
            rollbackInfoEncoder
            ( "rollbackInfo", data.rollbackInfo )
        |> AWS.Core.Encode.optionalMember
            deploymentStyleEncoder
            ( "deploymentStyle", data.deploymentStyle )
        |> AWS.Core.Encode.optionalMember
            targetInstancesEncoder
            ( "targetInstances", data.targetInstances )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "instanceTerminationWaitTimeStarted", data.instanceTerminationWaitTimeStarted )
        |> AWS.Core.Encode.optionalMember
            blueGreenDeploymentConfigurationEncoder
            ( "blueGreenDeploymentConfiguration", data.blueGreenDeploymentConfiguration )
        |> AWS.Core.Encode.optionalMember
            loadBalancerInfoEncoder
            ( "loadBalancerInfo", data.loadBalancerInfo )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "additionalDeploymentStatusInfo", data.additionalDeploymentStatusInfo )
        |> AWS.Core.Encode.optionalMember
            (fileExistsBehaviorToString >> JE.string)
            ( "fileExistsBehavior", data.fileExistsBehavior )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "deploymentStatusMessages", data.deploymentStatusMessages )
        |> AWS.Core.Encode.optionalMember
            (computePlatformToString >> JE.string)
            ( "computePlatform", data.computePlatform )
        |> JE.object


deploymentOverviewEncoder : DeploymentOverview -> JE.Value
deploymentOverviewEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Pending", data.pending )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "InProgress", data.inProgress )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Succeeded", data.succeeded )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Failed", data.failed )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Skipped", data.skipped )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Ready", data.ready )
        |> JE.object


deploymentReadyOptionEncoder : DeploymentReadyOption -> JE.Value
deploymentReadyOptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (deploymentReadyActionToString >> JE.string)
            ( "actionOnTimeout", data.actionOnTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "waitTimeInMinutes", data.waitTimeInMinutes )
        |> JE.object


deploymentStyleEncoder : DeploymentStyle -> JE.Value
deploymentStyleEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (deploymentTypeToString >> JE.string)
            ( "deploymentType", data.deploymentType )
        |> AWS.Core.Encode.optionalMember
            (deploymentOptionToString >> JE.string)
            ( "deploymentOption", data.deploymentOption )
        |> JE.object


deploymentTargetEncoder : DeploymentTarget -> JE.Value
deploymentTargetEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (deploymentTargetTypeToString >> JE.string)
            ( "deploymentTargetType", data.deploymentTargetType )
        |> AWS.Core.Encode.optionalMember
            instanceTargetEncoder
            ( "instanceTarget", data.instanceTarget )
        |> AWS.Core.Encode.optionalMember
            lambdaTargetEncoder
            ( "lambdaTarget", data.lambdaTarget )
        |> AWS.Core.Encode.optionalMember
            eCSTargetEncoder
            ( "ecsTarget", data.ecsTarget )
        |> JE.object


deregisterOnPremisesInstanceInputEncoder : DeregisterOnPremisesInstanceInput -> JE.Value
deregisterOnPremisesInstanceInputEncoder data =
    []
        |> (::) ( "instanceName", data.instanceName |> JE.string )
        |> JE.object


diagnosticsEncoder : Diagnostics -> JE.Value
diagnosticsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (lifecycleErrorCodeToString >> JE.string)
            ( "errorCode", data.errorCode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "scriptName", data.scriptName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "message", data.message )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "logTail", data.logTail )
        |> JE.object


eC2TagFilterEncoder : EC2TagFilter -> JE.Value
eC2TagFilterEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Key", data.key )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Value", data.value )
        |> AWS.Core.Encode.optionalMember
            (eC2TagFilterTypeToString >> JE.string)
            ( "Type", data.type_ )
        |> JE.object


eC2TagSetEncoder : EC2TagSet -> JE.Value
eC2TagSetEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.list eC2TagFilterEncoder))
            ( "ec2TagSetList", data.ec2TagSetList )
        |> JE.object


eCSServiceEncoder : ECSService -> JE.Value
eCSServiceEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "serviceName", data.serviceName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "clusterName", data.clusterName )
        |> JE.object


eCSTargetEncoder : ECSTarget -> JE.Value
eCSTargetEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentId", data.deploymentId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "targetId", data.targetId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "targetArn", data.targetArn )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "lastUpdatedAt", data.lastUpdatedAt )
        |> AWS.Core.Encode.optionalMember
            (JE.list lifecycleEventEncoder)
            ( "lifecycleEvents", data.lifecycleEvents )
        |> AWS.Core.Encode.optionalMember
            (targetStatusToString >> JE.string)
            ( "status", data.status )
        |> AWS.Core.Encode.optionalMember
            (JE.list eCSTaskSetEncoder)
            ( "taskSetsInfo", data.taskSetsInfo )
        |> JE.object


eCSTaskSetEncoder : ECSTaskSet -> JE.Value
eCSTaskSetEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "identifer", data.identifer )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "desiredCount", data.desiredCount )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "pendingCount", data.pendingCount )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "runningCount", data.runningCount )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "status", data.status )
        |> AWS.Core.Encode.optionalMember
            JE.float
            ( "trafficWeight", data.trafficWeight )
        |> AWS.Core.Encode.optionalMember
            targetGroupInfoEncoder
            ( "targetGroup", data.targetGroup )
        |> AWS.Core.Encode.optionalMember
            (targetLabelToString >> JE.string)
            ( "taskSetLabel", data.taskSetLabel )
        |> JE.object


eLBInfoEncoder : ELBInfo -> JE.Value
eLBInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "name", data.name )
        |> JE.object


errorInformationEncoder : ErrorInformation -> JE.Value
errorInformationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (errorCodeToString >> JE.string)
            ( "code", data.code )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "message", data.message )
        |> JE.object


genericRevisionInfoEncoder : GenericRevisionInfo -> JE.Value
genericRevisionInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "description", data.description )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "deploymentGroups", data.deploymentGroups )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "firstUsedTime", data.firstUsedTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "lastUsedTime", data.lastUsedTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "registerTime", data.registerTime )
        |> JE.object


getApplicationInputEncoder : GetApplicationInput -> JE.Value
getApplicationInputEncoder data =
    []
        |> (::) ( "applicationName", data.applicationName |> JE.string )
        |> JE.object


getApplicationOutputEncoder : GetApplicationOutput -> JE.Value
getApplicationOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            applicationInfoEncoder
            ( "application", data.application )
        |> JE.object


getApplicationRevisionInputEncoder : GetApplicationRevisionInput -> JE.Value
getApplicationRevisionInputEncoder data =
    []
        |> (::) ( "applicationName", data.applicationName |> JE.string )
        |> (::) ( "revision", data.revision |> revisionLocationEncoder )
        |> JE.object


getApplicationRevisionOutputEncoder : GetApplicationRevisionOutput -> JE.Value
getApplicationRevisionOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "applicationName", data.applicationName )
        |> AWS.Core.Encode.optionalMember
            revisionLocationEncoder
            ( "revision", data.revision )
        |> AWS.Core.Encode.optionalMember
            genericRevisionInfoEncoder
            ( "revisionInfo", data.revisionInfo )
        |> JE.object


getDeploymentConfigInputEncoder : GetDeploymentConfigInput -> JE.Value
getDeploymentConfigInputEncoder data =
    []
        |> (::) ( "deploymentConfigName", data.deploymentConfigName |> JE.string )
        |> JE.object


getDeploymentConfigOutputEncoder : GetDeploymentConfigOutput -> JE.Value
getDeploymentConfigOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            deploymentConfigInfoEncoder
            ( "deploymentConfigInfo", data.deploymentConfigInfo )
        |> JE.object


getDeploymentGroupInputEncoder : GetDeploymentGroupInput -> JE.Value
getDeploymentGroupInputEncoder data =
    []
        |> (::) ( "applicationName", data.applicationName |> JE.string )
        |> (::) ( "deploymentGroupName", data.deploymentGroupName |> JE.string )
        |> JE.object


getDeploymentGroupOutputEncoder : GetDeploymentGroupOutput -> JE.Value
getDeploymentGroupOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            deploymentGroupInfoEncoder
            ( "deploymentGroupInfo", data.deploymentGroupInfo )
        |> JE.object


getDeploymentInputEncoder : GetDeploymentInput -> JE.Value
getDeploymentInputEncoder data =
    []
        |> (::) ( "deploymentId", data.deploymentId |> JE.string )
        |> JE.object


getDeploymentInstanceInputEncoder : GetDeploymentInstanceInput -> JE.Value
getDeploymentInstanceInputEncoder data =
    []
        |> (::) ( "deploymentId", data.deploymentId |> JE.string )
        |> (::) ( "instanceId", data.instanceId |> JE.string )
        |> JE.object


getDeploymentInstanceOutputEncoder : GetDeploymentInstanceOutput -> JE.Value
getDeploymentInstanceOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            instanceSummaryEncoder
            ( "instanceSummary", data.instanceSummary )
        |> JE.object


getDeploymentOutputEncoder : GetDeploymentOutput -> JE.Value
getDeploymentOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            deploymentInfoEncoder
            ( "deploymentInfo", data.deploymentInfo )
        |> JE.object


getDeploymentTargetInputEncoder : GetDeploymentTargetInput -> JE.Value
getDeploymentTargetInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentId", data.deploymentId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "targetId", data.targetId )
        |> JE.object


getDeploymentTargetOutputEncoder : GetDeploymentTargetOutput -> JE.Value
getDeploymentTargetOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            deploymentTargetEncoder
            ( "deploymentTarget", data.deploymentTarget )
        |> JE.object


getOnPremisesInstanceInputEncoder : GetOnPremisesInstanceInput -> JE.Value
getOnPremisesInstanceInputEncoder data =
    []
        |> (::) ( "instanceName", data.instanceName |> JE.string )
        |> JE.object


getOnPremisesInstanceOutputEncoder : GetOnPremisesInstanceOutput -> JE.Value
getOnPremisesInstanceOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            instanceInfoEncoder
            ( "instanceInfo", data.instanceInfo )
        |> JE.object


gitHubLocationEncoder : GitHubLocation -> JE.Value
gitHubLocationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "repository", data.repository )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "commitId", data.commitId )
        |> JE.object


greenFleetProvisioningOptionEncoder : GreenFleetProvisioningOption -> JE.Value
greenFleetProvisioningOptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (greenFleetProvisioningActionToString >> JE.string)
            ( "action", data.action )
        |> JE.object


instanceInfoEncoder : InstanceInfo -> JE.Value
instanceInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "instanceName", data.instanceName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "iamSessionArn", data.iamSessionArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "iamUserArn", data.iamUserArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "instanceArn", data.instanceArn )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "registerTime", data.registerTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "deregisterTime", data.deregisterTime )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "tags", data.tags )
        |> JE.object


instanceSummaryEncoder : InstanceSummary -> JE.Value
instanceSummaryEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentId", data.deploymentId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "instanceId", data.instanceId )
        |> AWS.Core.Encode.optionalMember
            (instanceStatusToString >> JE.string)
            ( "status", data.status )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "lastUpdatedAt", data.lastUpdatedAt )
        |> AWS.Core.Encode.optionalMember
            (JE.list lifecycleEventEncoder)
            ( "lifecycleEvents", data.lifecycleEvents )
        |> AWS.Core.Encode.optionalMember
            (instanceTypeToString >> JE.string)
            ( "instanceType", data.instanceType )
        |> JE.object


instanceTargetEncoder : InstanceTarget -> JE.Value
instanceTargetEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentId", data.deploymentId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "targetId", data.targetId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "targetArn", data.targetArn )
        |> AWS.Core.Encode.optionalMember
            (targetStatusToString >> JE.string)
            ( "status", data.status )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "lastUpdatedAt", data.lastUpdatedAt )
        |> AWS.Core.Encode.optionalMember
            (JE.list lifecycleEventEncoder)
            ( "lifecycleEvents", data.lifecycleEvents )
        |> AWS.Core.Encode.optionalMember
            (targetLabelToString >> JE.string)
            ( "instanceLabel", data.instanceLabel )
        |> JE.object


lambdaFunctionInfoEncoder : LambdaFunctionInfo -> JE.Value
lambdaFunctionInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "functionName", data.functionName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "functionAlias", data.functionAlias )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "currentVersion", data.currentVersion )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "targetVersion", data.targetVersion )
        |> AWS.Core.Encode.optionalMember
            JE.float
            ( "targetVersionWeight", data.targetVersionWeight )
        |> JE.object


lambdaTargetEncoder : LambdaTarget -> JE.Value
lambdaTargetEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentId", data.deploymentId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "targetId", data.targetId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "targetArn", data.targetArn )
        |> AWS.Core.Encode.optionalMember
            (targetStatusToString >> JE.string)
            ( "status", data.status )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "lastUpdatedAt", data.lastUpdatedAt )
        |> AWS.Core.Encode.optionalMember
            (JE.list lifecycleEventEncoder)
            ( "lifecycleEvents", data.lifecycleEvents )
        |> AWS.Core.Encode.optionalMember
            lambdaFunctionInfoEncoder
            ( "lambdaFunctionInfo", data.lambdaFunctionInfo )
        |> JE.object


lastDeploymentInfoEncoder : LastDeploymentInfo -> JE.Value
lastDeploymentInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentId", data.deploymentId )
        |> AWS.Core.Encode.optionalMember
            (deploymentStatusToString >> JE.string)
            ( "status", data.status )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "endTime", data.endTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "createTime", data.createTime )
        |> JE.object


lifecycleEventEncoder : LifecycleEvent -> JE.Value
lifecycleEventEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lifecycleEventName", data.lifecycleEventName )
        |> AWS.Core.Encode.optionalMember
            diagnosticsEncoder
            ( "diagnostics", data.diagnostics )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "startTime", data.startTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "endTime", data.endTime )
        |> AWS.Core.Encode.optionalMember
            (lifecycleEventStatusToString >> JE.string)
            ( "status", data.status )
        |> JE.object


listApplicationRevisionsInputEncoder : ListApplicationRevisionsInput -> JE.Value
listApplicationRevisionsInputEncoder data =
    []
        |> (::) ( "applicationName", data.applicationName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (applicationRevisionSortByToString >> JE.string)
            ( "sortBy", data.sortBy )
        |> AWS.Core.Encode.optionalMember
            (sortOrderToString >> JE.string)
            ( "sortOrder", data.sortOrder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "s3Bucket", data.s3Bucket )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "s3KeyPrefix", data.s3KeyPrefix )
        |> AWS.Core.Encode.optionalMember
            (listStateFilterActionToString >> JE.string)
            ( "deployed", data.deployed )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listApplicationRevisionsOutputEncoder : ListApplicationRevisionsOutput -> JE.Value
listApplicationRevisionsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list revisionLocationEncoder)
            ( "revisions", data.revisions )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listApplicationsInputEncoder : ListApplicationsInput -> JE.Value
listApplicationsInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listApplicationsOutputEncoder : ListApplicationsOutput -> JE.Value
listApplicationsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "applications", data.applications )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listDeploymentConfigsInputEncoder : ListDeploymentConfigsInput -> JE.Value
listDeploymentConfigsInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listDeploymentConfigsOutputEncoder : ListDeploymentConfigsOutput -> JE.Value
listDeploymentConfigsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "deploymentConfigsList", data.deploymentConfigsList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listDeploymentGroupsInputEncoder : ListDeploymentGroupsInput -> JE.Value
listDeploymentGroupsInputEncoder data =
    []
        |> (::) ( "applicationName", data.applicationName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listDeploymentGroupsOutputEncoder : ListDeploymentGroupsOutput -> JE.Value
listDeploymentGroupsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "applicationName", data.applicationName )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "deploymentGroups", data.deploymentGroups )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listDeploymentInstancesInputEncoder : ListDeploymentInstancesInput -> JE.Value
listDeploymentInstancesInputEncoder data =
    []
        |> (::) ( "deploymentId", data.deploymentId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            (JE.list (instanceStatusToString >> JE.string))
            ( "instanceStatusFilter", data.instanceStatusFilter )
        |> AWS.Core.Encode.optionalMember
            (JE.list (instanceTypeToString >> JE.string))
            ( "instanceTypeFilter", data.instanceTypeFilter )
        |> JE.object


listDeploymentInstancesOutputEncoder : ListDeploymentInstancesOutput -> JE.Value
listDeploymentInstancesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "instancesList", data.instancesList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listDeploymentTargetsInputEncoder : ListDeploymentTargetsInput -> JE.Value
listDeploymentTargetsInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentId", data.deploymentId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            (List String Encoder)
            ( "targetFilters", data.targetFilters )
        |> JE.object


listDeploymentTargetsOutputEncoder : ListDeploymentTargetsOutput -> JE.Value
listDeploymentTargetsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "targetIds", data.targetIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listDeploymentsInputEncoder : ListDeploymentsInput -> JE.Value
listDeploymentsInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "applicationName", data.applicationName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentGroupName", data.deploymentGroupName )
        |> AWS.Core.Encode.optionalMember
            (JE.list (deploymentStatusToString >> JE.string))
            ( "includeOnlyStatuses", data.includeOnlyStatuses )
        |> AWS.Core.Encode.optionalMember
            timeRangeEncoder
            ( "createTimeRange", data.createTimeRange )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listDeploymentsOutputEncoder : ListDeploymentsOutput -> JE.Value
listDeploymentsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "deployments", data.deployments )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listGitHubAccountTokenNamesInputEncoder : ListGitHubAccountTokenNamesInput -> JE.Value
listGitHubAccountTokenNamesInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listGitHubAccountTokenNamesOutputEncoder : ListGitHubAccountTokenNamesOutput -> JE.Value
listGitHubAccountTokenNamesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "tokenNameList", data.tokenNameList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listOnPremisesInstancesInputEncoder : ListOnPremisesInstancesInput -> JE.Value
listOnPremisesInstancesInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (registrationStatusToString >> JE.string)
            ( "registrationStatus", data.registrationStatus )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagFilterEncoder)
            ( "tagFilters", data.tagFilters )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listOnPremisesInstancesOutputEncoder : ListOnPremisesInstancesOutput -> JE.Value
listOnPremisesInstancesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "instanceNames", data.instanceNames )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextToken", data.nextToken )
        |> JE.object


listTagsForResourceInputEncoder : ListTagsForResourceInput -> JE.Value
listTagsForResourceInputEncoder data =
    []
        |> (::) ( "ResourceArn", data.resourceArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listTagsForResourceOutputEncoder : ListTagsForResourceOutput -> JE.Value
listTagsForResourceOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


loadBalancerInfoEncoder : LoadBalancerInfo -> JE.Value
loadBalancerInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list eLBInfoEncoder)
            ( "elbInfoList", data.elbInfoList )
        |> AWS.Core.Encode.optionalMember
            (JE.list targetGroupInfoEncoder)
            ( "targetGroupInfoList", data.targetGroupInfoList )
        |> AWS.Core.Encode.optionalMember
            (JE.list targetGroupPairInfoEncoder)
            ( "targetGroupPairInfoList", data.targetGroupPairInfoList )
        |> JE.object


minimumHealthyHostsEncoder : MinimumHealthyHosts -> JE.Value
minimumHealthyHostsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "value", data.value )
        |> AWS.Core.Encode.optionalMember
            (minimumHealthyHostsTypeToString >> JE.string)
            ( "type", data.type_ )
        |> JE.object


onPremisesTagSetEncoder : OnPremisesTagSet -> JE.Value
onPremisesTagSetEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.list tagFilterEncoder))
            ( "onPremisesTagSetList", data.onPremisesTagSetList )
        |> JE.object


putLifecycleEventHookExecutionStatusInputEncoder : PutLifecycleEventHookExecutionStatusInput -> JE.Value
putLifecycleEventHookExecutionStatusInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentId", data.deploymentId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lifecycleEventHookExecutionId", data.lifecycleEventHookExecutionId )
        |> AWS.Core.Encode.optionalMember
            (lifecycleEventStatusToString >> JE.string)
            ( "status", data.status )
        |> JE.object


putLifecycleEventHookExecutionStatusOutputEncoder : PutLifecycleEventHookExecutionStatusOutput -> JE.Value
putLifecycleEventHookExecutionStatusOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lifecycleEventHookExecutionId", data.lifecycleEventHookExecutionId )
        |> JE.object


rawStringEncoder : RawString -> JE.Value
rawStringEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "content", data.content )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "sha256", data.sha256 )
        |> JE.object


registerApplicationRevisionInputEncoder : RegisterApplicationRevisionInput -> JE.Value
registerApplicationRevisionInputEncoder data =
    []
        |> (::) ( "applicationName", data.applicationName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "description", data.description )
        |> (::) ( "revision", data.revision |> revisionLocationEncoder )
        |> JE.object


registerOnPremisesInstanceInputEncoder : RegisterOnPremisesInstanceInput -> JE.Value
registerOnPremisesInstanceInputEncoder data =
    []
        |> (::) ( "instanceName", data.instanceName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "iamSessionArn", data.iamSessionArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "iamUserArn", data.iamUserArn )
        |> JE.object


removeTagsFromOnPremisesInstancesInputEncoder : RemoveTagsFromOnPremisesInstancesInput -> JE.Value
removeTagsFromOnPremisesInstancesInputEncoder data =
    []
        |> (::) ( "tags", data.tags |> JE.list tagEncoder )
        |> (::) ( "instanceNames", data.instanceNames |> JE.list JE.string )
        |> JE.object


revisionInfoEncoder : RevisionInfo -> JE.Value
revisionInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            revisionLocationEncoder
            ( "revisionLocation", data.revisionLocation )
        |> AWS.Core.Encode.optionalMember
            genericRevisionInfoEncoder
            ( "genericRevisionInfo", data.genericRevisionInfo )
        |> JE.object


revisionLocationEncoder : RevisionLocation -> JE.Value
revisionLocationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (revisionLocationTypeToString >> JE.string)
            ( "revisionType", data.revisionType )
        |> AWS.Core.Encode.optionalMember
            s3LocationEncoder
            ( "s3Location", data.s3Location )
        |> AWS.Core.Encode.optionalMember
            gitHubLocationEncoder
            ( "gitHubLocation", data.gitHubLocation )
        |> AWS.Core.Encode.optionalMember
            rawStringEncoder
            ( "string", data.string )
        |> AWS.Core.Encode.optionalMember
            appSpecContentEncoder
            ( "appSpecContent", data.appSpecContent )
        |> JE.object


rollbackInfoEncoder : RollbackInfo -> JE.Value
rollbackInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "rollbackDeploymentId", data.rollbackDeploymentId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "rollbackTriggeringDeploymentId", data.rollbackTriggeringDeploymentId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "rollbackMessage", data.rollbackMessage )
        |> JE.object


s3LocationEncoder : S3Location -> JE.Value
s3LocationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "bucket", data.bucket )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "key", data.key )
        |> AWS.Core.Encode.optionalMember
            (bundleTypeToString >> JE.string)
            ( "bundleType", data.bundleType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "version", data.version )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "eTag", data.eTag )
        |> JE.object


skipWaitTimeForInstanceTerminationInputEncoder : SkipWaitTimeForInstanceTerminationInput -> JE.Value
skipWaitTimeForInstanceTerminationInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentId", data.deploymentId )
        |> JE.object


stopDeploymentInputEncoder : StopDeploymentInput -> JE.Value
stopDeploymentInputEncoder data =
    []
        |> (::) ( "deploymentId", data.deploymentId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "autoRollbackEnabled", data.autoRollbackEnabled )
        |> JE.object


stopDeploymentOutputEncoder : StopDeploymentOutput -> JE.Value
stopDeploymentOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (stopStatusToString >> JE.string)
            ( "status", data.status )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "statusMessage", data.statusMessage )
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


tagFilterEncoder : TagFilter -> JE.Value
tagFilterEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Key", data.key )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Value", data.value )
        |> AWS.Core.Encode.optionalMember
            (tagFilterTypeToString >> JE.string)
            ( "Type", data.type_ )
        |> JE.object


tagResourceInputEncoder : TagResourceInput -> JE.Value
tagResourceInputEncoder data =
    []
        |> (::) ( "ResourceArn", data.resourceArn |> JE.string )
        |> (::) ( "Tags", data.tags |> JE.list tagEncoder )
        |> JE.object


tagResourceOutputEncoder : TagResourceOutput -> JE.Value
tagResourceOutputEncoder data =
    []
        |> JE.object


targetGroupInfoEncoder : TargetGroupInfo -> JE.Value
targetGroupInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "name", data.name )
        |> JE.object


targetGroupPairInfoEncoder : TargetGroupPairInfo -> JE.Value
targetGroupPairInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list targetGroupInfoEncoder)
            ( "targetGroups", data.targetGroups )
        |> AWS.Core.Encode.optionalMember
            trafficRouteEncoder
            ( "prodTrafficRoute", data.prodTrafficRoute )
        |> AWS.Core.Encode.optionalMember
            trafficRouteEncoder
            ( "testTrafficRoute", data.testTrafficRoute )
        |> JE.object


targetInstancesEncoder : TargetInstances -> JE.Value
targetInstancesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list eC2TagFilterEncoder)
            ( "tagFilters", data.tagFilters )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "autoScalingGroups", data.autoScalingGroups )
        |> AWS.Core.Encode.optionalMember
            eC2TagSetEncoder
            ( "ec2TagSet", data.ec2TagSet )
        |> JE.object


timeBasedCanaryEncoder : TimeBasedCanary -> JE.Value
timeBasedCanaryEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "canaryPercentage", data.canaryPercentage )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "canaryInterval", data.canaryInterval )
        |> JE.object


timeBasedLinearEncoder : TimeBasedLinear -> JE.Value
timeBasedLinearEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "linearPercentage", data.linearPercentage )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "linearInterval", data.linearInterval )
        |> JE.object


timeRangeEncoder : TimeRange -> JE.Value
timeRangeEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "start", data.start )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "end", data.end )
        |> JE.object


trafficRouteEncoder : TrafficRoute -> JE.Value
trafficRouteEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "listenerArns", data.listenerArns )
        |> JE.object


trafficRoutingConfigEncoder : TrafficRoutingConfig -> JE.Value
trafficRoutingConfigEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (trafficRoutingTypeToString >> JE.string)
            ( "type", data.type_ )
        |> AWS.Core.Encode.optionalMember
            timeBasedCanaryEncoder
            ( "timeBasedCanary", data.timeBasedCanary )
        |> AWS.Core.Encode.optionalMember
            timeBasedLinearEncoder
            ( "timeBasedLinear", data.timeBasedLinear )
        |> JE.object


triggerConfigEncoder : TriggerConfig -> JE.Value
triggerConfigEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "triggerName", data.triggerName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "triggerTargetArn", data.triggerTargetArn )
        |> AWS.Core.Encode.optionalMember
            (JE.list (triggerEventTypeToString >> JE.string))
            ( "triggerEvents", data.triggerEvents )
        |> JE.object


untagResourceInputEncoder : UntagResourceInput -> JE.Value
untagResourceInputEncoder data =
    []
        |> (::) ( "ResourceArn", data.resourceArn |> JE.string )
        |> (::) ( "TagKeys", data.tagKeys |> JE.list JE.string )
        |> JE.object


untagResourceOutputEncoder : UntagResourceOutput -> JE.Value
untagResourceOutputEncoder data =
    []
        |> JE.object


updateApplicationInputEncoder : UpdateApplicationInput -> JE.Value
updateApplicationInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "applicationName", data.applicationName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "newApplicationName", data.newApplicationName )
        |> JE.object


updateDeploymentGroupInputEncoder : UpdateDeploymentGroupInput -> JE.Value
updateDeploymentGroupInputEncoder data =
    []
        |> (::) ( "applicationName", data.applicationName |> JE.string )
        |> (::) ( "currentDeploymentGroupName", data.currentDeploymentGroupName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "newDeploymentGroupName", data.newDeploymentGroupName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "deploymentConfigName", data.deploymentConfigName )
        |> AWS.Core.Encode.optionalMember
            (JE.list eC2TagFilterEncoder)
            ( "ec2TagFilters", data.ec2TagFilters )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagFilterEncoder)
            ( "onPremisesInstanceTagFilters", data.onPremisesInstanceTagFilters )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "autoScalingGroups", data.autoScalingGroups )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "serviceRoleArn", data.serviceRoleArn )
        |> AWS.Core.Encode.optionalMember
            (JE.list triggerConfigEncoder)
            ( "triggerConfigurations", data.triggerConfigurations )
        |> AWS.Core.Encode.optionalMember
            alarmConfigurationEncoder
            ( "alarmConfiguration", data.alarmConfiguration )
        |> AWS.Core.Encode.optionalMember
            autoRollbackConfigurationEncoder
            ( "autoRollbackConfiguration", data.autoRollbackConfiguration )
        |> AWS.Core.Encode.optionalMember
            deploymentStyleEncoder
            ( "deploymentStyle", data.deploymentStyle )
        |> AWS.Core.Encode.optionalMember
            blueGreenDeploymentConfigurationEncoder
            ( "blueGreenDeploymentConfiguration", data.blueGreenDeploymentConfiguration )
        |> AWS.Core.Encode.optionalMember
            loadBalancerInfoEncoder
            ( "loadBalancerInfo", data.loadBalancerInfo )
        |> AWS.Core.Encode.optionalMember
            eC2TagSetEncoder
            ( "ec2TagSet", data.ec2TagSet )
        |> AWS.Core.Encode.optionalMember
            (JE.list eCSServiceEncoder)
            ( "ecsServices", data.ecsServices )
        |> AWS.Core.Encode.optionalMember
            onPremisesTagSetEncoder
            ( "onPremisesTagSet", data.onPremisesTagSet )
        |> JE.object


updateDeploymentGroupOutputEncoder : UpdateDeploymentGroupOutput -> JE.Value
updateDeploymentGroupOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list autoScalingGroupEncoder)
            ( "hooksNotCleanedUp", data.hooksNotCleanedUp )
        |> JE.object
