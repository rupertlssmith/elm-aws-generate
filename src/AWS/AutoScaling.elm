module AWS.AutoScaling exposing
    ( service
    , attachInstances, AttachInstancesOptions, attachLoadBalancerTargetGroups, attachLoadBalancers, batchDeleteScheduledAction, batchPutScheduledUpdateGroupAction, completeLifecycleAction, CompleteLifecycleActionOptions, createAutoScalingGroup, CreateAutoScalingGroupOptions, createLaunchConfiguration, CreateLaunchConfigurationOptions, createOrUpdateTags, deleteAutoScalingGroup, DeleteAutoScalingGroupOptions, deleteLaunchConfiguration, deleteLifecycleHook, deleteNotificationConfiguration, deletePolicy, DeletePolicyOptions, deleteScheduledAction, deleteTags, describeAccountLimits, describeAdjustmentTypes, describeAutoScalingGroups, DescribeAutoScalingGroupsOptions, describeAutoScalingInstances, DescribeAutoScalingInstancesOptions, describeAutoScalingNotificationTypes, describeLaunchConfigurations, DescribeLaunchConfigurationsOptions, describeLifecycleHookTypes, describeLifecycleHooks, DescribeLifecycleHooksOptions, describeLoadBalancerTargetGroups, DescribeLoadBalancerTargetGroupsOptions, describeLoadBalancers, DescribeLoadBalancersOptions, describeMetricCollectionTypes, describeNotificationConfigurations, DescribeNotificationConfigurationsOptions, describePolicies, DescribePoliciesOptions, describeScalingActivities, DescribeScalingActivitiesOptions, describeScalingProcessTypes, describeScheduledActions, DescribeScheduledActionsOptions, describeTags, DescribeTagsOptions, describeTerminationPolicyTypes, detachInstances, DetachInstancesOptions, detachLoadBalancerTargetGroups, detachLoadBalancers, disableMetricsCollection, DisableMetricsCollectionOptions, enableMetricsCollection, EnableMetricsCollectionOptions, enterStandby, EnterStandbyOptions, executePolicy, ExecutePolicyOptions, exitStandby, ExitStandbyOptions, putLifecycleHook, PutLifecycleHookOptions, putNotificationConfiguration, putScalingPolicy, PutScalingPolicyOptions, putScheduledUpdateGroupAction, PutScheduledUpdateGroupActionOptions, recordLifecycleActionHeartbeat, RecordLifecycleActionHeartbeatOptions, resumeProcesses, ResumeProcessesOptions, setDesiredCapacity, SetDesiredCapacityOptions, setInstanceHealth, SetInstanceHealthOptions, setInstanceProtection, suspendProcesses, SuspendProcessesOptions, terminateInstanceInAutoScalingGroup, updateAutoScalingGroup, UpdateAutoScalingGroupOptions
    , ActivitiesType, ActivityType, AttachLoadBalancerTargetGroupsResultType, AttachLoadBalancersResultType, AutoScalingGroupsType, AutoScalingInstancesType, BatchDeleteScheduledActionAnswer, BatchPutScheduledUpdateGroupActionAnswer, CompleteLifecycleActionAnswer, DeleteLifecycleHookAnswer, DescribeAccountLimitsAnswer, DescribeAdjustmentTypesAnswer, DescribeAutoScalingNotificationTypesAnswer, DescribeLifecycleHookTypesAnswer, DescribeLifecycleHooksAnswer, DescribeLoadBalancerTargetGroupsResponse, DescribeLoadBalancersResponse, DescribeMetricCollectionTypesAnswer, DescribeNotificationConfigurationsAnswer, DescribeTerminationPolicyTypesAnswer, DetachInstancesAnswer, DetachLoadBalancerTargetGroupsResultType, DetachLoadBalancersResultType, EnterStandbyAnswer, ExitStandbyAnswer, LaunchConfigurationsType, PoliciesType, PolicyARNType, ProcessesType, PutLifecycleHookAnswer, RecordLifecycleActionHeartbeatAnswer, ScheduledActionsType, SetInstanceProtectionAnswer, TagsType
    , Activity, AdjustmentType, Alarm, AutoScalingGroup, AutoScalingInstanceDetails, BlockDeviceMapping, CustomizedMetricSpecification, Ebs, EnabledMetric, FailedScheduledUpdateGroupActionRequest, Filter, Instance, InstanceMonitoring, InstancesDistribution, LaunchConfiguration, LaunchTemplate, LaunchTemplateOverrides, LaunchTemplateSpecification, LifecycleHook, LifecycleHookSpecification, LoadBalancerState, LoadBalancerTargetGroupState, MetricCollectionType, MetricDimension, MetricGranularityType, MixedInstancesPolicy, NotificationConfiguration, PredefinedMetricSpecification, ProcessType, ScalingPolicy, ScheduledUpdateGroupAction, ScheduledUpdateGroupActionRequest, StepAdjustment, SuspendedProcess, Tag, TagDescription, TargetTrackingConfiguration
    , LifecycleState(..), MetricStatistic(..), MetricType(..), ScalingActivityStatusCode(..)
    )

{-| <fullname>Amazon EC2 Auto Scaling</fullname> <p>Amazon EC2 Auto Scaling is designed to automatically launch or terminate EC2 instances based on user-defined policies, schedules, and health checks. Use this service with AWS Auto Scaling, Amazon CloudWatch, and Elastic Load Balancing.</p> <p>For more information, including information about granting IAM users required permissions for Amazon EC2 Auto Scaling actions, see the <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html">Amazon EC2 Auto Scaling User Guide</a>.</p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [attachInstances](#attachInstances)
  - [AttachInstancesOptions](#AttachInstancesOptions)
  - [attachLoadBalancerTargetGroups](#attachLoadBalancerTargetGroups)
  - [attachLoadBalancers](#attachLoadBalancers)
  - [batchDeleteScheduledAction](#batchDeleteScheduledAction)
  - [batchPutScheduledUpdateGroupAction](#batchPutScheduledUpdateGroupAction)
  - [completeLifecycleAction](#completeLifecycleAction)
  - [CompleteLifecycleActionOptions](#CompleteLifecycleActionOptions)
  - [createAutoScalingGroup](#createAutoScalingGroup)
  - [CreateAutoScalingGroupOptions](#CreateAutoScalingGroupOptions)
  - [createLaunchConfiguration](#createLaunchConfiguration)
  - [CreateLaunchConfigurationOptions](#CreateLaunchConfigurationOptions)
  - [createOrUpdateTags](#createOrUpdateTags)
  - [deleteAutoScalingGroup](#deleteAutoScalingGroup)
  - [DeleteAutoScalingGroupOptions](#DeleteAutoScalingGroupOptions)
  - [deleteLaunchConfiguration](#deleteLaunchConfiguration)
  - [deleteLifecycleHook](#deleteLifecycleHook)
  - [deleteNotificationConfiguration](#deleteNotificationConfiguration)
  - [deletePolicy](#deletePolicy)
  - [DeletePolicyOptions](#DeletePolicyOptions)
  - [deleteScheduledAction](#deleteScheduledAction)
  - [deleteTags](#deleteTags)
  - [describeAccountLimits](#describeAccountLimits)
  - [describeAdjustmentTypes](#describeAdjustmentTypes)
  - [describeAutoScalingGroups](#describeAutoScalingGroups)
  - [DescribeAutoScalingGroupsOptions](#DescribeAutoScalingGroupsOptions)
  - [describeAutoScalingInstances](#describeAutoScalingInstances)
  - [DescribeAutoScalingInstancesOptions](#DescribeAutoScalingInstancesOptions)
  - [describeAutoScalingNotificationTypes](#describeAutoScalingNotificationTypes)
  - [describeLaunchConfigurations](#describeLaunchConfigurations)
  - [DescribeLaunchConfigurationsOptions](#DescribeLaunchConfigurationsOptions)
  - [describeLifecycleHookTypes](#describeLifecycleHookTypes)
  - [describeLifecycleHooks](#describeLifecycleHooks)
  - [DescribeLifecycleHooksOptions](#DescribeLifecycleHooksOptions)
  - [describeLoadBalancerTargetGroups](#describeLoadBalancerTargetGroups)
  - [DescribeLoadBalancerTargetGroupsOptions](#DescribeLoadBalancerTargetGroupsOptions)
  - [describeLoadBalancers](#describeLoadBalancers)
  - [DescribeLoadBalancersOptions](#DescribeLoadBalancersOptions)
  - [describeMetricCollectionTypes](#describeMetricCollectionTypes)
  - [describeNotificationConfigurations](#describeNotificationConfigurations)
  - [DescribeNotificationConfigurationsOptions](#DescribeNotificationConfigurationsOptions)
  - [describePolicies](#describePolicies)
  - [DescribePoliciesOptions](#DescribePoliciesOptions)
  - [describeScalingActivities](#describeScalingActivities)
  - [DescribeScalingActivitiesOptions](#DescribeScalingActivitiesOptions)
  - [describeScalingProcessTypes](#describeScalingProcessTypes)
  - [describeScheduledActions](#describeScheduledActions)
  - [DescribeScheduledActionsOptions](#DescribeScheduledActionsOptions)
  - [describeTags](#describeTags)
  - [DescribeTagsOptions](#DescribeTagsOptions)
  - [describeTerminationPolicyTypes](#describeTerminationPolicyTypes)
  - [detachInstances](#detachInstances)
  - [DetachInstancesOptions](#DetachInstancesOptions)
  - [detachLoadBalancerTargetGroups](#detachLoadBalancerTargetGroups)
  - [detachLoadBalancers](#detachLoadBalancers)
  - [disableMetricsCollection](#disableMetricsCollection)
  - [DisableMetricsCollectionOptions](#DisableMetricsCollectionOptions)
  - [enableMetricsCollection](#enableMetricsCollection)
  - [EnableMetricsCollectionOptions](#EnableMetricsCollectionOptions)
  - [enterStandby](#enterStandby)
  - [EnterStandbyOptions](#EnterStandbyOptions)
  - [executePolicy](#executePolicy)
  - [ExecutePolicyOptions](#ExecutePolicyOptions)
  - [exitStandby](#exitStandby)
  - [ExitStandbyOptions](#ExitStandbyOptions)
  - [putLifecycleHook](#putLifecycleHook)
  - [PutLifecycleHookOptions](#PutLifecycleHookOptions)
  - [putNotificationConfiguration](#putNotificationConfiguration)
  - [putScalingPolicy](#putScalingPolicy)
  - [PutScalingPolicyOptions](#PutScalingPolicyOptions)
  - [putScheduledUpdateGroupAction](#putScheduledUpdateGroupAction)
  - [PutScheduledUpdateGroupActionOptions](#PutScheduledUpdateGroupActionOptions)
  - [recordLifecycleActionHeartbeat](#recordLifecycleActionHeartbeat)
  - [RecordLifecycleActionHeartbeatOptions](#RecordLifecycleActionHeartbeatOptions)
  - [resumeProcesses](#resumeProcesses)
  - [ResumeProcessesOptions](#ResumeProcessesOptions)
  - [setDesiredCapacity](#setDesiredCapacity)
  - [SetDesiredCapacityOptions](#SetDesiredCapacityOptions)
  - [setInstanceHealth](#setInstanceHealth)
  - [SetInstanceHealthOptions](#SetInstanceHealthOptions)
  - [setInstanceProtection](#setInstanceProtection)
  - [suspendProcesses](#suspendProcesses)
  - [SuspendProcessesOptions](#SuspendProcessesOptions)
  - [terminateInstanceInAutoScalingGroup](#terminateInstanceInAutoScalingGroup)
  - [updateAutoScalingGroup](#updateAutoScalingGroup)
  - [UpdateAutoScalingGroupOptions](#UpdateAutoScalingGroupOptions)

@docs attachInstances, AttachInstancesOptions, attachLoadBalancerTargetGroups, attachLoadBalancers, batchDeleteScheduledAction, batchPutScheduledUpdateGroupAction, completeLifecycleAction, CompleteLifecycleActionOptions, createAutoScalingGroup, CreateAutoScalingGroupOptions, createLaunchConfiguration, CreateLaunchConfigurationOptions, createOrUpdateTags, deleteAutoScalingGroup, DeleteAutoScalingGroupOptions, deleteLaunchConfiguration, deleteLifecycleHook, deleteNotificationConfiguration, deletePolicy, DeletePolicyOptions, deleteScheduledAction, deleteTags, describeAccountLimits, describeAdjustmentTypes, describeAutoScalingGroups, DescribeAutoScalingGroupsOptions, describeAutoScalingInstances, DescribeAutoScalingInstancesOptions, describeAutoScalingNotificationTypes, describeLaunchConfigurations, DescribeLaunchConfigurationsOptions, describeLifecycleHookTypes, describeLifecycleHooks, DescribeLifecycleHooksOptions, describeLoadBalancerTargetGroups, DescribeLoadBalancerTargetGroupsOptions, describeLoadBalancers, DescribeLoadBalancersOptions, describeMetricCollectionTypes, describeNotificationConfigurations, DescribeNotificationConfigurationsOptions, describePolicies, DescribePoliciesOptions, describeScalingActivities, DescribeScalingActivitiesOptions, describeScalingProcessTypes, describeScheduledActions, DescribeScheduledActionsOptions, describeTags, DescribeTagsOptions, describeTerminationPolicyTypes, detachInstances, DetachInstancesOptions, detachLoadBalancerTargetGroups, detachLoadBalancers, disableMetricsCollection, DisableMetricsCollectionOptions, enableMetricsCollection, EnableMetricsCollectionOptions, enterStandby, EnterStandbyOptions, executePolicy, ExecutePolicyOptions, exitStandby, ExitStandbyOptions, putLifecycleHook, PutLifecycleHookOptions, putNotificationConfiguration, putScalingPolicy, PutScalingPolicyOptions, putScheduledUpdateGroupAction, PutScheduledUpdateGroupActionOptions, recordLifecycleActionHeartbeat, RecordLifecycleActionHeartbeatOptions, resumeProcesses, ResumeProcessesOptions, setDesiredCapacity, SetDesiredCapacityOptions, setInstanceHealth, SetInstanceHealthOptions, setInstanceProtection, suspendProcesses, SuspendProcessesOptions, terminateInstanceInAutoScalingGroup, updateAutoScalingGroup, UpdateAutoScalingGroupOptions


## Responses

  - [ActivitiesType](#ActivitiesType)
  - [ActivityType](#ActivityType)
  - [AttachLoadBalancerTargetGroupsResultType](#AttachLoadBalancerTargetGroupsResultType)
  - [AttachLoadBalancersResultType](#AttachLoadBalancersResultType)
  - [AutoScalingGroupsType](#AutoScalingGroupsType)
  - [AutoScalingInstancesType](#AutoScalingInstancesType)
  - [BatchDeleteScheduledActionAnswer](#BatchDeleteScheduledActionAnswer)
  - [BatchPutScheduledUpdateGroupActionAnswer](#BatchPutScheduledUpdateGroupActionAnswer)
  - [CompleteLifecycleActionAnswer](#CompleteLifecycleActionAnswer)
  - [DeleteLifecycleHookAnswer](#DeleteLifecycleHookAnswer)
  - [DescribeAccountLimitsAnswer](#DescribeAccountLimitsAnswer)
  - [DescribeAdjustmentTypesAnswer](#DescribeAdjustmentTypesAnswer)
  - [DescribeAutoScalingNotificationTypesAnswer](#DescribeAutoScalingNotificationTypesAnswer)
  - [DescribeLifecycleHookTypesAnswer](#DescribeLifecycleHookTypesAnswer)
  - [DescribeLifecycleHooksAnswer](#DescribeLifecycleHooksAnswer)
  - [DescribeLoadBalancerTargetGroupsResponse](#DescribeLoadBalancerTargetGroupsResponse)
  - [DescribeLoadBalancersResponse](#DescribeLoadBalancersResponse)
  - [DescribeMetricCollectionTypesAnswer](#DescribeMetricCollectionTypesAnswer)
  - [DescribeNotificationConfigurationsAnswer](#DescribeNotificationConfigurationsAnswer)
  - [DescribeTerminationPolicyTypesAnswer](#DescribeTerminationPolicyTypesAnswer)
  - [DetachInstancesAnswer](#DetachInstancesAnswer)
  - [DetachLoadBalancerTargetGroupsResultType](#DetachLoadBalancerTargetGroupsResultType)
  - [DetachLoadBalancersResultType](#DetachLoadBalancersResultType)
  - [EnterStandbyAnswer](#EnterStandbyAnswer)
  - [ExitStandbyAnswer](#ExitStandbyAnswer)
  - [LaunchConfigurationsType](#LaunchConfigurationsType)
  - [PoliciesType](#PoliciesType)
  - [PolicyARNType](#PolicyARNType)
  - [ProcessesType](#ProcessesType)
  - [PutLifecycleHookAnswer](#PutLifecycleHookAnswer)
  - [RecordLifecycleActionHeartbeatAnswer](#RecordLifecycleActionHeartbeatAnswer)
  - [ScheduledActionsType](#ScheduledActionsType)
  - [SetInstanceProtectionAnswer](#SetInstanceProtectionAnswer)
  - [TagsType](#TagsType)

@docs ActivitiesType, ActivityType, AttachLoadBalancerTargetGroupsResultType, AttachLoadBalancersResultType, AutoScalingGroupsType, AutoScalingInstancesType, BatchDeleteScheduledActionAnswer, BatchPutScheduledUpdateGroupActionAnswer, CompleteLifecycleActionAnswer, DeleteLifecycleHookAnswer, DescribeAccountLimitsAnswer, DescribeAdjustmentTypesAnswer, DescribeAutoScalingNotificationTypesAnswer, DescribeLifecycleHookTypesAnswer, DescribeLifecycleHooksAnswer, DescribeLoadBalancerTargetGroupsResponse, DescribeLoadBalancersResponse, DescribeMetricCollectionTypesAnswer, DescribeNotificationConfigurationsAnswer, DescribeTerminationPolicyTypesAnswer, DetachInstancesAnswer, DetachLoadBalancerTargetGroupsResultType, DetachLoadBalancersResultType, EnterStandbyAnswer, ExitStandbyAnswer, LaunchConfigurationsType, PoliciesType, PolicyARNType, ProcessesType, PutLifecycleHookAnswer, RecordLifecycleActionHeartbeatAnswer, ScheduledActionsType, SetInstanceProtectionAnswer, TagsType


## Records

  - [Activity](#Activity)
  - [AdjustmentType](#AdjustmentType)
  - [Alarm](#Alarm)
  - [AutoScalingGroup](#AutoScalingGroup)
  - [AutoScalingInstanceDetails](#AutoScalingInstanceDetails)
  - [BlockDeviceMapping](#BlockDeviceMapping)
  - [CustomizedMetricSpecification](#CustomizedMetricSpecification)
  - [Ebs](#Ebs)
  - [EnabledMetric](#EnabledMetric)
  - [FailedScheduledUpdateGroupActionRequest](#FailedScheduledUpdateGroupActionRequest)
  - [Filter](#Filter)
  - [Instance](#Instance)
  - [InstanceMonitoring](#InstanceMonitoring)
  - [InstancesDistribution](#InstancesDistribution)
  - [LaunchConfiguration](#LaunchConfiguration)
  - [LaunchTemplate](#LaunchTemplate)
  - [LaunchTemplateOverrides](#LaunchTemplateOverrides)
  - [LaunchTemplateSpecification](#LaunchTemplateSpecification)
  - [LifecycleHook](#LifecycleHook)
  - [LifecycleHookSpecification](#LifecycleHookSpecification)
  - [LoadBalancerState](#LoadBalancerState)
  - [LoadBalancerTargetGroupState](#LoadBalancerTargetGroupState)
  - [MetricCollectionType](#MetricCollectionType)
  - [MetricDimension](#MetricDimension)
  - [MetricGranularityType](#MetricGranularityType)
  - [MixedInstancesPolicy](#MixedInstancesPolicy)
  - [NotificationConfiguration](#NotificationConfiguration)
  - [PredefinedMetricSpecification](#PredefinedMetricSpecification)
  - [ProcessType](#ProcessType)
  - [ScalingPolicy](#ScalingPolicy)
  - [ScheduledUpdateGroupAction](#ScheduledUpdateGroupAction)
  - [ScheduledUpdateGroupActionRequest](#ScheduledUpdateGroupActionRequest)
  - [StepAdjustment](#StepAdjustment)
  - [SuspendedProcess](#SuspendedProcess)
  - [Tag](#Tag)
  - [TagDescription](#TagDescription)
  - [TargetTrackingConfiguration](#TargetTrackingConfiguration)

@docs Activity, AdjustmentType, Alarm, AutoScalingGroup, AutoScalingInstanceDetails, BlockDeviceMapping, CustomizedMetricSpecification, Ebs, EnabledMetric, FailedScheduledUpdateGroupActionRequest, Filter, Instance, InstanceMonitoring, InstancesDistribution, LaunchConfiguration, LaunchTemplate, LaunchTemplateOverrides, LaunchTemplateSpecification, LifecycleHook, LifecycleHookSpecification, LoadBalancerState, LoadBalancerTargetGroupState, MetricCollectionType, MetricDimension, MetricGranularityType, MixedInstancesPolicy, NotificationConfiguration, PredefinedMetricSpecification, ProcessType, ScalingPolicy, ScheduledUpdateGroupAction, ScheduledUpdateGroupActionRequest, StepAdjustment, SuspendedProcess, Tag, TagDescription, TargetTrackingConfiguration


## Unions

  - [LifecycleState](#LifecycleState)
  - [MetricStatistic](#MetricStatistic)
  - [MetricType](#MetricType)
  - [ScalingActivityStatusCode](#ScalingActivityStatusCode)

@docs LifecycleState, MetricStatistic, MetricType, ScalingActivityStatusCode

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
        "autoscaling"
        "2011-01-01"
        AWS.Core.Service.query
        AWS.Core.Service.signV4
        (AWS.Core.Service.setXmlNamespace "http://autoscaling.amazonaws.com/doc/2011-01-01/")



-- OPERATIONS


{-|

<p>Attaches one or more EC2 instances to the specified Auto Scaling group.</p> <p>When you attach instances, Amazon EC2 Auto Scaling increases the desired capacity of the group by the number of instances being attached. If the number of instances being attached plus the desired capacity of the group exceeds the maximum size of the group, the operation fails.</p> <p>If there is a Classic Load Balancer attached to your Auto Scaling group, the instances are also registered with the load balancer. If there are target groups attached to your Auto Scaling group, the instances are also registered with the target groups.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-instance-asg.html">Attach EC2 Instances to Your Auto Scaling Group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`

-}
attachInstances :
    String
    -> (AttachInstancesOptions -> AttachInstancesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
attachInstances autoScalingGroupName setOptions =
    let
        requestInput =
            AttachInstancesQuery
                options.instanceIds
                autoScalingGroupName

        options =
            setOptions (AttachInstancesOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "AttachInstances")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs attachInstancesQueryEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "AttachInstances"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a attachInstances request
-}
type alias AttachInstancesOptions =
    { instanceIds : Maybe (List String)
    }


{-|

<p>Attaches one or more target groups to the specified Auto Scaling group. </p> <p>To describe the target groups for an Auto Scaling group, use <a>DescribeLoadBalancerTargetGroups</a>. To detach the target group from the Auto Scaling group, use <a>DetachLoadBalancerTargetGroups</a>.</p> <p>With Application Load Balancers and Network Load Balancers, instances are registered as targets with a target group. With Classic Load Balancers, instances are registered with the load balancer. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-load-balancer-asg.html">Attaching a Load Balancer to Your Auto Scaling Group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `targetGroupARNs` **:** `(List String)`

-}
attachLoadBalancerTargetGroups :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AttachLoadBalancerTargetGroupsResultType)
attachLoadBalancerTargetGroups autoScalingGroupName targetGroupARNs =
    let
        requestInput =
            AttachLoadBalancerTargetGroupsType
                autoScalingGroupName
                targetGroupARNs
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "AttachLoadBalancerTargetGroups")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs attachLoadBalancerTargetGroupsTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "AttachLoadBalancerTargetGroups"
            (AWS.Core.Decode.ResultDecoder "AttachLoadBalancerTargetGroupsResult" attachLoadBalancerTargetGroupsResultTypeDecoder)
        )


{-|

<p>Attaches one or more Classic Load Balancers to the specified Auto Scaling group.</p> <p>To attach an Application Load Balancer or a Network Load Balancer instead, see <a>AttachLoadBalancerTargetGroups</a>.</p> <p>To describe the load balancers for an Auto Scaling group, use <a>DescribeLoadBalancers</a>. To detach the load balancer from the Auto Scaling group, use <a>DetachLoadBalancers</a>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-load-balancer-asg.html">Attaching a Load Balancer to Your Auto Scaling Group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `loadBalancerNames` **:** `(List String)`

-}
attachLoadBalancers :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AttachLoadBalancersResultType)
attachLoadBalancers autoScalingGroupName loadBalancerNames =
    let
        requestInput =
            AttachLoadBalancersType
                autoScalingGroupName
                loadBalancerNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "AttachLoadBalancers")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs attachLoadBalancersTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "AttachLoadBalancers"
            (AWS.Core.Decode.ResultDecoder "AttachLoadBalancersResult" attachLoadBalancersResultTypeDecoder)
        )


{-|

<p>Deletes one or more scheduled actions for the specified Auto Scaling group.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `scheduledActionNames` **:** `(List String)`

-}
batchDeleteScheduledAction :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchDeleteScheduledActionAnswer)
batchDeleteScheduledAction autoScalingGroupName scheduledActionNames =
    let
        requestInput =
            BatchDeleteScheduledActionType
                autoScalingGroupName
                scheduledActionNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "BatchDeleteScheduledAction")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs batchDeleteScheduledActionTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchDeleteScheduledAction"
            (AWS.Core.Decode.ResultDecoder "BatchDeleteScheduledActionResult" batchDeleteScheduledActionAnswerDecoder)
        )


{-|

<p>Creates or updates one or more scheduled scaling actions for an Auto Scaling group. If you leave a parameter unspecified when updating a scheduled scaling action, the corresponding value remains unchanged.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `scheduledUpdateGroupActions` **:** `(List ScheduledUpdateGroupActionRequest)`

-}
batchPutScheduledUpdateGroupAction :
    String
    -> List ScheduledUpdateGroupActionRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchPutScheduledUpdateGroupActionAnswer)
batchPutScheduledUpdateGroupAction autoScalingGroupName scheduledUpdateGroupActions =
    let
        requestInput =
            BatchPutScheduledUpdateGroupActionType
                autoScalingGroupName
                scheduledUpdateGroupActions
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "BatchPutScheduledUpdateGroupAction")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs batchPutScheduledUpdateGroupActionTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchPutScheduledUpdateGroupAction"
            (AWS.Core.Decode.ResultDecoder "BatchPutScheduledUpdateGroupActionResult" batchPutScheduledUpdateGroupActionAnswerDecoder)
        )


{-|

<p>Completes the lifecycle action for the specified token or instance with the specified result.</p> <p>This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:</p> <ol> <li> <p>(Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.</p> </li> <li> <p>(Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.</p> </li> <li> <p>Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.</p> </li> <li> <p>If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.</p> </li> <li> <p> <b>If you finish before the timeout period ends, complete the lifecycle action.</b> </p> </li> </ol> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html">Amazon EC2 Auto Scaling Lifecycle Hooks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `lifecycleHookName` **:** `String`
  - `autoScalingGroupName` **:** `String`
  - `lifecycleActionResult` **:** `String`

-}
completeLifecycleAction :
    String
    -> String
    -> String
    -> (CompleteLifecycleActionOptions -> CompleteLifecycleActionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CompleteLifecycleActionAnswer)
completeLifecycleAction lifecycleHookName autoScalingGroupName lifecycleActionResult setOptions =
    let
        requestInput =
            CompleteLifecycleActionType
                lifecycleHookName
                autoScalingGroupName
                options.lifecycleActionToken
                lifecycleActionResult
                options.instanceId

        options =
            setOptions (CompleteLifecycleActionOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CompleteLifecycleAction")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs completeLifecycleActionTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CompleteLifecycleAction"
            (AWS.Core.Decode.ResultDecoder "CompleteLifecycleActionResult" completeLifecycleActionAnswerDecoder)
        )


{-| Options for a completeLifecycleAction request
-}
type alias CompleteLifecycleActionOptions =
    { lifecycleActionToken : Maybe String
    , instanceId : Maybe String
    }


{-|

<p>Creates an Auto Scaling group with the specified name and attributes.</p> <p>If you exceed your maximum limit of Auto Scaling groups, the call fails. For information about viewing this limit, see <a>DescribeAccountLimits</a>. For information about updating this limit, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html">Amazon EC2 Auto Scaling Limits</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `minSize` **:** `Int`
  - `maxSize` **:** `Int`

-}
createAutoScalingGroup :
    String
    -> Int
    -> Int
    -> (CreateAutoScalingGroupOptions -> CreateAutoScalingGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
createAutoScalingGroup autoScalingGroupName minSize maxSize setOptions =
    let
        requestInput =
            CreateAutoScalingGroupType
                autoScalingGroupName
                options.launchConfigurationName
                options.launchTemplate
                options.mixedInstancesPolicy
                options.instanceId
                minSize
                maxSize
                options.desiredCapacity
                options.defaultCooldown
                options.availabilityZones
                options.loadBalancerNames
                options.targetGroupARNs
                options.healthCheckType
                options.healthCheckGracePeriod
                options.placementGroup
                options.vPCZoneIdentifier
                options.terminationPolicies
                options.newInstancesProtectedFromScaleIn
                options.lifecycleHookSpecificationList
                options.tags
                options.serviceLinkedRoleARN

        options =
            setOptions (CreateAutoScalingGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateAutoScalingGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createAutoScalingGroupTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateAutoScalingGroup"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a createAutoScalingGroup request
-}
type alias CreateAutoScalingGroupOptions =
    { launchConfigurationName : Maybe String
    , launchTemplate : Maybe LaunchTemplateSpecification
    , mixedInstancesPolicy : Maybe MixedInstancesPolicy
    , instanceId : Maybe String
    , desiredCapacity : Maybe Int
    , defaultCooldown : Maybe Int
    , availabilityZones : Maybe (List String)
    , loadBalancerNames : Maybe (List String)
    , targetGroupARNs : Maybe (List String)
    , healthCheckType : Maybe String
    , healthCheckGracePeriod : Maybe Int
    , placementGroup : Maybe String
    , vPCZoneIdentifier : Maybe String
    , terminationPolicies : Maybe (List String)
    , newInstancesProtectedFromScaleIn : Maybe Bool
    , lifecycleHookSpecificationList : Maybe (List LifecycleHookSpecification)
    , tags : Maybe (List Tag)
    , serviceLinkedRoleARN : Maybe String
    }


{-|

<p>Creates a launch configuration.</p> <p>If you exceed your maximum limit of launch configurations, the call fails. For information about viewing this limit, see <a>DescribeAccountLimits</a>. For information about updating this limit, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html">Amazon EC2 Auto Scaling Limits</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchConfiguration.html">Launch Configurations</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `launchConfigurationName` **:** `String`

-}
createLaunchConfiguration :
    String
    -> (CreateLaunchConfigurationOptions -> CreateLaunchConfigurationOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
createLaunchConfiguration launchConfigurationName setOptions =
    let
        requestInput =
            CreateLaunchConfigurationType
                launchConfigurationName
                options.imageId
                options.keyName
                options.securityGroups
                options.classicLinkVPCId
                options.classicLinkVPCSecurityGroups
                options.userData
                options.instanceId
                options.instanceType
                options.kernelId
                options.ramdiskId
                options.blockDeviceMappings
                options.instanceMonitoring
                options.spotPrice
                options.iamInstanceProfile
                options.ebsOptimized
                options.associatePublicIpAddress
                options.placementTenancy

        options =
            setOptions (CreateLaunchConfigurationOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateLaunchConfiguration")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createLaunchConfigurationTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateLaunchConfiguration"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a createLaunchConfiguration request
-}
type alias CreateLaunchConfigurationOptions =
    { imageId : Maybe String
    , keyName : Maybe String
    , securityGroups : Maybe (List String)
    , classicLinkVPCId : Maybe String
    , classicLinkVPCSecurityGroups : Maybe (List String)
    , userData : Maybe String
    , instanceId : Maybe String
    , instanceType : Maybe String
    , kernelId : Maybe String
    , ramdiskId : Maybe String
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , instanceMonitoring : Maybe InstanceMonitoring
    , spotPrice : Maybe String
    , iamInstanceProfile : Maybe String
    , ebsOptimized : Maybe Bool
    , associatePublicIpAddress : Maybe Bool
    , placementTenancy : Maybe String
    }


{-|

<p>Creates or updates tags for the specified Auto Scaling group.</p> <p>When you specify a tag with a key that already exists, the operation overwrites the previous tag definition, and you do not get an error message.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html">Tagging Auto Scaling Groups and Instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `tags` **:** `(List Tag)`

-}
createOrUpdateTags :
    List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
createOrUpdateTags tags =
    let
        requestInput =
            CreateOrUpdateTagsType
                tags
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "CreateOrUpdateTags")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs createOrUpdateTagsTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateOrUpdateTags"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified Auto Scaling group.</p> <p>If the group has instances or scaling activities in progress, you must specify the option to force the deletion in order for it to succeed.</p> <p>If the group has policies, deleting the group deletes the policies, the underlying alarm actions, and any alarm that no longer has an associated action.</p> <p>To remove instances from the Auto Scaling group before deleting it, call <a>DetachInstances</a> with the list of instances and the option to decrement the desired capacity. This ensures that Amazon EC2 Auto Scaling does not launch replacement instances.</p> <p>To terminate all instances before deleting the Auto Scaling group, call <a>UpdateAutoScalingGroup</a> and set the minimum size and desired capacity of the Auto Scaling group to zero.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`

-}
deleteAutoScalingGroup :
    String
    -> (DeleteAutoScalingGroupOptions -> DeleteAutoScalingGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteAutoScalingGroup autoScalingGroupName setOptions =
    let
        requestInput =
            DeleteAutoScalingGroupType
                autoScalingGroupName
                options.forceDelete

        options =
            setOptions (DeleteAutoScalingGroupOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteAutoScalingGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteAutoScalingGroupTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteAutoScalingGroup"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a deleteAutoScalingGroup request
-}
type alias DeleteAutoScalingGroupOptions =
    { forceDelete : Maybe Bool
    }


{-|

<p>Deletes the specified launch configuration.</p> <p>The launch configuration must not be attached to an Auto Scaling group. When this call completes, the launch configuration is no longer available for use.</p>

**Required Parameters**

  - `launchConfigurationName` **:** `String`

-}
deleteLaunchConfiguration :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteLaunchConfiguration launchConfigurationName =
    let
        requestInput =
            LaunchConfigurationNameType
                launchConfigurationName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteLaunchConfiguration")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs launchConfigurationNameTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteLaunchConfiguration"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified lifecycle hook.</p> <p>If there are any outstanding lifecycle actions, they are completed first (<code>ABANDON</code> for launching instances, <code>CONTINUE</code> for terminating instances).</p>

**Required Parameters**

  - `lifecycleHookName` **:** `String`
  - `autoScalingGroupName` **:** `String`

-}
deleteLifecycleHook :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteLifecycleHookAnswer)
deleteLifecycleHook lifecycleHookName autoScalingGroupName =
    let
        requestInput =
            DeleteLifecycleHookType
                lifecycleHookName
                autoScalingGroupName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteLifecycleHook")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteLifecycleHookTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteLifecycleHook"
            (AWS.Core.Decode.ResultDecoder "DeleteLifecycleHookResult" deleteLifecycleHookAnswerDecoder)
        )


{-|

<p>Deletes the specified notification.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `topicARN` **:** `String`

-}
deleteNotificationConfiguration :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteNotificationConfiguration autoScalingGroupName topicARN =
    let
        requestInput =
            DeleteNotificationConfigurationType
                autoScalingGroupName
                topicARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteNotificationConfiguration")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteNotificationConfigurationTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteNotificationConfiguration"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified scaling policy.</p> <p>Deleting either a step scaling policy or a simple scaling policy deletes the underlying alarm action, but does not delete the alarm, even if it no longer has an associated action.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/deleting-scaling-policy.html">Deleting a Scaling Policy</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `policyName` **:** `String`

-}
deletePolicy :
    String
    -> (DeletePolicyOptions -> DeletePolicyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deletePolicy policyName setOptions =
    let
        requestInput =
            DeletePolicyType
                options.autoScalingGroupName
                policyName

        options =
            setOptions (DeletePolicyOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeletePolicy")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deletePolicyTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeletePolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a deletePolicy request
-}
type alias DeletePolicyOptions =
    { autoScalingGroupName : Maybe String
    }


{-|

<p>Deletes the specified scheduled action.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `scheduledActionName` **:** `String`

-}
deleteScheduledAction :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteScheduledAction autoScalingGroupName scheduledActionName =
    let
        requestInput =
            DeleteScheduledActionType
                autoScalingGroupName
                scheduledActionName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteScheduledAction")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteScheduledActionTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteScheduledAction"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified tags.</p>

**Required Parameters**

  - `tags` **:** `(List Tag)`

-}
deleteTags :
    List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteTags tags =
    let
        requestInput =
            DeleteTagsType
                tags
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteTags")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteTagsTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteTags"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Describes the current Amazon EC2 Auto Scaling resource limits for your AWS account.</p> <p>For information about requesting an increase in these limits, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html">Amazon EC2 Auto Scaling Limits</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

-}
describeAccountLimits : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAccountLimitsAnswer)
describeAccountLimits =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeAccountLimits")]
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAccountLimits"
            (AWS.Core.Decode.ResultDecoder "DescribeAccountLimitsResult" describeAccountLimitsAnswerDecoder)
        )


{-|

<p>Describes the policy adjustment types for use with <a>PutScalingPolicy</a>.</p>

**Required Parameters**

-}
describeAdjustmentTypes : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAdjustmentTypesAnswer)
describeAdjustmentTypes =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeAdjustmentTypes")]
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAdjustmentTypes"
            (AWS.Core.Decode.ResultDecoder "DescribeAdjustmentTypesResult" describeAdjustmentTypesAnswerDecoder)
        )


{-|

<p>Describes one or more Auto Scaling groups.</p>

**Required Parameters**

-}
describeAutoScalingGroups :
    (DescribeAutoScalingGroupsOptions -> DescribeAutoScalingGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AutoScalingGroupsType)
describeAutoScalingGroups setOptions =
    let
        requestInput =
            AutoScalingGroupNamesType
                options.autoScalingGroupNames
                options.nextToken
                options.maxRecords

        options =
            setOptions (DescribeAutoScalingGroupsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeAutoScalingGroups")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs autoScalingGroupNamesTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAutoScalingGroups"
            (AWS.Core.Decode.ResultDecoder "DescribeAutoScalingGroupsResult" autoScalingGroupsTypeDecoder)
        )


{-| Options for a describeAutoScalingGroups request
-}
type alias DescribeAutoScalingGroupsOptions =
    { autoScalingGroupNames : Maybe (List String)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-|

<p>Describes one or more Auto Scaling instances.</p>

**Required Parameters**

-}
describeAutoScalingInstances :
    (DescribeAutoScalingInstancesOptions -> DescribeAutoScalingInstancesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AutoScalingInstancesType)
describeAutoScalingInstances setOptions =
    let
        requestInput =
            DescribeAutoScalingInstancesType
                options.instanceIds
                options.maxRecords
                options.nextToken

        options =
            setOptions (DescribeAutoScalingInstancesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeAutoScalingInstances")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeAutoScalingInstancesTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAutoScalingInstances"
            (AWS.Core.Decode.ResultDecoder "DescribeAutoScalingInstancesResult" autoScalingInstancesTypeDecoder)
        )


{-| Options for a describeAutoScalingInstances request
-}
type alias DescribeAutoScalingInstancesOptions =
    { instanceIds : Maybe (List String)
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Describes the notification types that are supported by Amazon EC2 Auto Scaling.</p>

**Required Parameters**

-}
describeAutoScalingNotificationTypes : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAutoScalingNotificationTypesAnswer)
describeAutoScalingNotificationTypes =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeAutoScalingNotificationTypes")]
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAutoScalingNotificationTypes"
            (AWS.Core.Decode.ResultDecoder "DescribeAutoScalingNotificationTypesResult" describeAutoScalingNotificationTypesAnswerDecoder)
        )


{-|

<p>Describes one or more launch configurations.</p>

**Required Parameters**

-}
describeLaunchConfigurations :
    (DescribeLaunchConfigurationsOptions -> DescribeLaunchConfigurationsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper LaunchConfigurationsType)
describeLaunchConfigurations setOptions =
    let
        requestInput =
            LaunchConfigurationNamesType
                options.launchConfigurationNames
                options.nextToken
                options.maxRecords

        options =
            setOptions (DescribeLaunchConfigurationsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeLaunchConfigurations")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs launchConfigurationNamesTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeLaunchConfigurations"
            (AWS.Core.Decode.ResultDecoder "DescribeLaunchConfigurationsResult" launchConfigurationsTypeDecoder)
        )


{-| Options for a describeLaunchConfigurations request
-}
type alias DescribeLaunchConfigurationsOptions =
    { launchConfigurationNames : Maybe (List String)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-|

<p>Describes the available types of lifecycle hooks.</p> <p>The following hook types are supported:</p> <ul> <li> <p>autoscaling:EC2_INSTANCE_LAUNCHING</p> </li> <li> <p>autoscaling:EC2_INSTANCE_TERMINATING</p> </li> </ul>

**Required Parameters**

-}
describeLifecycleHookTypes : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLifecycleHookTypesAnswer)
describeLifecycleHookTypes =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeLifecycleHookTypes")]
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeLifecycleHookTypes"
            (AWS.Core.Decode.ResultDecoder "DescribeLifecycleHookTypesResult" describeLifecycleHookTypesAnswerDecoder)
        )


{-|

<p>Describes the lifecycle hooks for the specified Auto Scaling group.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`

-}
describeLifecycleHooks :
    String
    -> (DescribeLifecycleHooksOptions -> DescribeLifecycleHooksOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLifecycleHooksAnswer)
describeLifecycleHooks autoScalingGroupName setOptions =
    let
        requestInput =
            DescribeLifecycleHooksType
                autoScalingGroupName
                options.lifecycleHookNames

        options =
            setOptions (DescribeLifecycleHooksOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeLifecycleHooks")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeLifecycleHooksTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeLifecycleHooks"
            (AWS.Core.Decode.ResultDecoder "DescribeLifecycleHooksResult" describeLifecycleHooksAnswerDecoder)
        )


{-| Options for a describeLifecycleHooks request
-}
type alias DescribeLifecycleHooksOptions =
    { lifecycleHookNames : Maybe (List String)
    }


{-|

<p>Describes the target groups for the specified Auto Scaling group.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`

-}
describeLoadBalancerTargetGroups :
    String
    -> (DescribeLoadBalancerTargetGroupsOptions -> DescribeLoadBalancerTargetGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLoadBalancerTargetGroupsResponse)
describeLoadBalancerTargetGroups autoScalingGroupName setOptions =
    let
        requestInput =
            DescribeLoadBalancerTargetGroupsRequest
                autoScalingGroupName
                options.nextToken
                options.maxRecords

        options =
            setOptions (DescribeLoadBalancerTargetGroupsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeLoadBalancerTargetGroups")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeLoadBalancerTargetGroupsRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeLoadBalancerTargetGroups"
            (AWS.Core.Decode.ResultDecoder "DescribeLoadBalancerTargetGroupsResult" describeLoadBalancerTargetGroupsResponseDecoder)
        )


{-| Options for a describeLoadBalancerTargetGroups request
-}
type alias DescribeLoadBalancerTargetGroupsOptions =
    { nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-|

<p>Describes the load balancers for the specified Auto Scaling group.</p> <p>This operation describes only Classic Load Balancers. If you have Application Load Balancers or Network Load Balancers, use <a>DescribeLoadBalancerTargetGroups</a> instead.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`

-}
describeLoadBalancers :
    String
    -> (DescribeLoadBalancersOptions -> DescribeLoadBalancersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLoadBalancersResponse)
describeLoadBalancers autoScalingGroupName setOptions =
    let
        requestInput =
            DescribeLoadBalancersRequest
                autoScalingGroupName
                options.nextToken
                options.maxRecords

        options =
            setOptions (DescribeLoadBalancersOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeLoadBalancers")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeLoadBalancersRequestEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeLoadBalancers"
            (AWS.Core.Decode.ResultDecoder "DescribeLoadBalancersResult" describeLoadBalancersResponseDecoder)
        )


{-| Options for a describeLoadBalancers request
-}
type alias DescribeLoadBalancersOptions =
    { nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-|

<p>Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling.</p> <p>The <code>GroupStandbyInstances</code> metric is not returned by default. You must explicitly request this metric when calling <a>EnableMetricsCollection</a>.</p>

**Required Parameters**

-}
describeMetricCollectionTypes : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeMetricCollectionTypesAnswer)
describeMetricCollectionTypes =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeMetricCollectionTypes")]
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeMetricCollectionTypes"
            (AWS.Core.Decode.ResultDecoder "DescribeMetricCollectionTypesResult" describeMetricCollectionTypesAnswerDecoder)
        )


{-|

<p>Describes the notification actions associated with the specified Auto Scaling group.</p>

**Required Parameters**

-}
describeNotificationConfigurations :
    (DescribeNotificationConfigurationsOptions -> DescribeNotificationConfigurationsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeNotificationConfigurationsAnswer)
describeNotificationConfigurations setOptions =
    let
        requestInput =
            DescribeNotificationConfigurationsType
                options.autoScalingGroupNames
                options.nextToken
                options.maxRecords

        options =
            setOptions (DescribeNotificationConfigurationsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeNotificationConfigurations")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeNotificationConfigurationsTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeNotificationConfigurations"
            (AWS.Core.Decode.ResultDecoder "DescribeNotificationConfigurationsResult" describeNotificationConfigurationsAnswerDecoder)
        )


{-| Options for a describeNotificationConfigurations request
-}
type alias DescribeNotificationConfigurationsOptions =
    { autoScalingGroupNames : Maybe (List String)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-|

<p>Describes the policies for the specified Auto Scaling group.</p>

**Required Parameters**

-}
describePolicies :
    (DescribePoliciesOptions -> DescribePoliciesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PoliciesType)
describePolicies setOptions =
    let
        requestInput =
            DescribePoliciesType
                options.autoScalingGroupName
                options.policyNames
                options.policyTypes
                options.nextToken
                options.maxRecords

        options =
            setOptions (DescribePoliciesOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribePolicies")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describePoliciesTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribePolicies"
            (AWS.Core.Decode.ResultDecoder "DescribePoliciesResult" policiesTypeDecoder)
        )


{-| Options for a describePolicies request
-}
type alias DescribePoliciesOptions =
    { autoScalingGroupName : Maybe String
    , policyNames : Maybe (List String)
    , policyTypes : Maybe (List String)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-|

<p>Describes one or more scaling activities for the specified Auto Scaling group.</p>

**Required Parameters**

-}
describeScalingActivities :
    (DescribeScalingActivitiesOptions -> DescribeScalingActivitiesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ActivitiesType)
describeScalingActivities setOptions =
    let
        requestInput =
            DescribeScalingActivitiesType
                options.activityIds
                options.autoScalingGroupName
                options.maxRecords
                options.nextToken

        options =
            setOptions (DescribeScalingActivitiesOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeScalingActivities")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeScalingActivitiesTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeScalingActivities"
            (AWS.Core.Decode.ResultDecoder "DescribeScalingActivitiesResult" activitiesTypeDecoder)
        )


{-| Options for a describeScalingActivities request
-}
type alias DescribeScalingActivitiesOptions =
    { activityIds : Maybe (List String)
    , autoScalingGroupName : Maybe String
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Describes the scaling process types for use with <a>ResumeProcesses</a> and <a>SuspendProcesses</a>.</p>

**Required Parameters**

-}
describeScalingProcessTypes : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ProcessesType)
describeScalingProcessTypes =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeScalingProcessTypes")]
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeScalingProcessTypes"
            (AWS.Core.Decode.ResultDecoder "DescribeScalingProcessTypesResult" processesTypeDecoder)
        )


{-|

<p>Describes the actions scheduled for your Auto Scaling group that haven't run or that have not reached their end time. To describe the actions that have already run, use <a>DescribeScalingActivities</a>. </p>

**Required Parameters**

-}
describeScheduledActions :
    (DescribeScheduledActionsOptions -> DescribeScheduledActionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ScheduledActionsType)
describeScheduledActions setOptions =
    let
        requestInput =
            DescribeScheduledActionsType
                options.autoScalingGroupName
                options.scheduledActionNames
                options.startTime
                options.endTime
                options.nextToken
                options.maxRecords

        options =
            setOptions (DescribeScheduledActionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeScheduledActions")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeScheduledActionsTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeScheduledActions"
            (AWS.Core.Decode.ResultDecoder "DescribeScheduledActionsResult" scheduledActionsTypeDecoder)
        )


{-| Options for a describeScheduledActions request
-}
type alias DescribeScheduledActionsOptions =
    { autoScalingGroupName : Maybe String
    , scheduledActionNames : Maybe (List String)
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-|

<p>Describes the specified tags.</p> <p>You can use filters to limit the results. For example, you can query for the tags for a specific Auto Scaling group. You can specify multiple values for a filter. A tag must match at least one of the specified values for it to be included in the results.</p> <p>You can also specify multiple filters. The result includes information for a particular tag only if it matches all the filters. If there's no match, no special message is returned.</p>

**Required Parameters**

-}
describeTags :
    (DescribeTagsOptions -> DescribeTagsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagsType)
describeTags setOptions =
    let
        requestInput =
            DescribeTagsType
                options.filters
                options.nextToken
                options.maxRecords

        options =
            setOptions (DescribeTagsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeTags")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeTagsTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeTags"
            (AWS.Core.Decode.ResultDecoder "DescribeTagsResult" tagsTypeDecoder)
        )


{-| Options for a describeTags request
-}
type alias DescribeTagsOptions =
    { filters : Maybe (List Filter)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-|

<p>Describes the termination policies supported by Amazon EC2 Auto Scaling.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html">Controlling Which Auto Scaling Instances Terminate During Scale In</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

-}
describeTerminationPolicyTypes : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTerminationPolicyTypesAnswer)
describeTerminationPolicyTypes =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeTerminationPolicyTypes")]
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeTerminationPolicyTypes"
            (AWS.Core.Decode.ResultDecoder "DescribeTerminationPolicyTypesResult" describeTerminationPolicyTypesAnswerDecoder)
        )


{-|

<p>Removes one or more instances from the specified Auto Scaling group.</p> <p>After the instances are detached, you can manage them independent of the Auto Scaling group.</p> <p>If you do not specify the option to decrement the desired capacity, Amazon EC2 Auto Scaling launches instances to replace the ones that are detached.</p> <p>If there is a Classic Load Balancer attached to the Auto Scaling group, the instances are deregistered from the load balancer. If there are target groups attached to the Auto Scaling group, the instances are deregistered from the target groups.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/detach-instance-asg.html">Detach EC2 Instances from Your Auto Scaling Group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `shouldDecrementDesiredCapacity` **:** `Bool`

-}
detachInstances :
    String
    -> Bool
    -> (DetachInstancesOptions -> DetachInstancesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetachInstancesAnswer)
detachInstances autoScalingGroupName shouldDecrementDesiredCapacity setOptions =
    let
        requestInput =
            DetachInstancesQuery
                options.instanceIds
                autoScalingGroupName
                shouldDecrementDesiredCapacity

        options =
            setOptions (DetachInstancesOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DetachInstances")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs detachInstancesQueryEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DetachInstances"
            (AWS.Core.Decode.ResultDecoder "DetachInstancesResult" detachInstancesAnswerDecoder)
        )


{-| Options for a detachInstances request
-}
type alias DetachInstancesOptions =
    { instanceIds : Maybe (List String)
    }


{-|

<p>Detaches one or more target groups from the specified Auto Scaling group.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `targetGroupARNs` **:** `(List String)`

-}
detachLoadBalancerTargetGroups :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetachLoadBalancerTargetGroupsResultType)
detachLoadBalancerTargetGroups autoScalingGroupName targetGroupARNs =
    let
        requestInput =
            DetachLoadBalancerTargetGroupsType
                autoScalingGroupName
                targetGroupARNs
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DetachLoadBalancerTargetGroups")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs detachLoadBalancerTargetGroupsTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DetachLoadBalancerTargetGroups"
            (AWS.Core.Decode.ResultDecoder "DetachLoadBalancerTargetGroupsResult" detachLoadBalancerTargetGroupsResultTypeDecoder)
        )


{-|

<p>Detaches one or more Classic Load Balancers from the specified Auto Scaling group.</p> <p>This operation detaches only Classic Load Balancers. If you have Application Load Balancers or Network Load Balancers, use <a>DetachLoadBalancerTargetGroups</a> instead.</p> <p>When you detach a load balancer, it enters the <code>Removing</code> state while deregistering the instances in the group. When all instances are deregistered, then you can no longer describe the load balancer using <a>DescribeLoadBalancers</a>. The instances remain running.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `loadBalancerNames` **:** `(List String)`

-}
detachLoadBalancers :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetachLoadBalancersResultType)
detachLoadBalancers autoScalingGroupName loadBalancerNames =
    let
        requestInput =
            DetachLoadBalancersType
                autoScalingGroupName
                loadBalancerNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DetachLoadBalancers")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs detachLoadBalancersTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DetachLoadBalancers"
            (AWS.Core.Decode.ResultDecoder "DetachLoadBalancersResult" detachLoadBalancersResultTypeDecoder)
        )


{-|

<p>Disables group metrics for the specified Auto Scaling group.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`

-}
disableMetricsCollection :
    String
    -> (DisableMetricsCollectionOptions -> DisableMetricsCollectionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
disableMetricsCollection autoScalingGroupName setOptions =
    let
        requestInput =
            DisableMetricsCollectionQuery
                autoScalingGroupName
                options.metrics

        options =
            setOptions (DisableMetricsCollectionOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DisableMetricsCollection")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs disableMetricsCollectionQueryEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DisableMetricsCollection"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a disableMetricsCollection request
-}
type alias DisableMetricsCollectionOptions =
    { metrics : Maybe (List String)
    }


{-|

<p>Enables group metrics for the specified Auto Scaling group. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-monitoring.html">Monitoring Your Auto Scaling Groups and Instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `granularity` **:** `String`

-}
enableMetricsCollection :
    String
    -> String
    -> (EnableMetricsCollectionOptions -> EnableMetricsCollectionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
enableMetricsCollection autoScalingGroupName granularity setOptions =
    let
        requestInput =
            EnableMetricsCollectionQuery
                autoScalingGroupName
                options.metrics
                granularity

        options =
            setOptions (EnableMetricsCollectionOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "EnableMetricsCollection")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs enableMetricsCollectionQueryEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "EnableMetricsCollection"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a enableMetricsCollection request
-}
type alias EnableMetricsCollectionOptions =
    { metrics : Maybe (List String)
    }


{-|

<p>Moves the specified instances into the standby state.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html">Temporarily Removing Instances from Your Auto Scaling Group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `shouldDecrementDesiredCapacity` **:** `Bool`

-}
enterStandby :
    String
    -> Bool
    -> (EnterStandbyOptions -> EnterStandbyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnterStandbyAnswer)
enterStandby autoScalingGroupName shouldDecrementDesiredCapacity setOptions =
    let
        requestInput =
            EnterStandbyQuery
                options.instanceIds
                autoScalingGroupName
                shouldDecrementDesiredCapacity

        options =
            setOptions (EnterStandbyOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "EnterStandby")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs enterStandbyQueryEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "EnterStandby"
            (AWS.Core.Decode.ResultDecoder "EnterStandbyResult" enterStandbyAnswerDecoder)
        )


{-| Options for a enterStandby request
-}
type alias EnterStandbyOptions =
    { instanceIds : Maybe (List String)
    }


{-|

<p>Executes the specified policy.</p>

**Required Parameters**

  - `policyName` **:** `String`

-}
executePolicy :
    String
    -> (ExecutePolicyOptions -> ExecutePolicyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
executePolicy policyName setOptions =
    let
        requestInput =
            ExecutePolicyType
                options.autoScalingGroupName
                policyName
                options.honorCooldown
                options.metricValue
                options.breachThreshold

        options =
            setOptions (ExecutePolicyOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ExecutePolicy")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs executePolicyTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ExecutePolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a executePolicy request
-}
type alias ExecutePolicyOptions =
    { autoScalingGroupName : Maybe String
    , honorCooldown : Maybe Bool
    , metricValue : Maybe Float
    , breachThreshold : Maybe Float
    }


{-|

<p>Moves the specified instances out of the standby state.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html">Temporarily Removing Instances from Your Auto Scaling Group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`

-}
exitStandby :
    String
    -> (ExitStandbyOptions -> ExitStandbyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ExitStandbyAnswer)
exitStandby autoScalingGroupName setOptions =
    let
        requestInput =
            ExitStandbyQuery
                options.instanceIds
                autoScalingGroupName

        options =
            setOptions (ExitStandbyOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ExitStandby")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs exitStandbyQueryEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ExitStandby"
            (AWS.Core.Decode.ResultDecoder "ExitStandbyResult" exitStandbyAnswerDecoder)
        )


{-| Options for a exitStandby request
-}
type alias ExitStandbyOptions =
    { instanceIds : Maybe (List String)
    }


{-|

<p>Creates or updates a lifecycle hook for the specified Auto Scaling group.</p> <p>A lifecycle hook tells Amazon EC2 Auto Scaling to perform an action on an instance when the instance launches (before it is put into service) or as the instance terminates (before it is fully terminated).</p> <p>This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:</p> <ol> <li> <p>(Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.</p> </li> <li> <p>(Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.</p> </li> <li> <p> <b>Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.</b> </p> </li> <li> <p>If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state using using <a>RecordLifecycleActionHeartbeat</a>.</p> </li> <li> <p>If you finish before the timeout period ends, complete the lifecycle action using <a>CompleteLifecycleAction</a>.</p> </li> </ol> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html">Amazon EC2 Auto Scaling Lifecycle Hooks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p> <p>If you exceed your maximum limit of lifecycle hooks, which by default is 50 per Auto Scaling group, the call fails.</p> <p>You can view the lifecycle hooks for an Auto Scaling group using <a>DescribeLifecycleHooks</a>. If you are no longer using a lifecycle hook, you can delete it using <a>DeleteLifecycleHook</a>.</p>

**Required Parameters**

  - `lifecycleHookName` **:** `String`
  - `autoScalingGroupName` **:** `String`

-}
putLifecycleHook :
    String
    -> String
    -> (PutLifecycleHookOptions -> PutLifecycleHookOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutLifecycleHookAnswer)
putLifecycleHook lifecycleHookName autoScalingGroupName setOptions =
    let
        requestInput =
            PutLifecycleHookType
                lifecycleHookName
                autoScalingGroupName
                options.lifecycleTransition
                options.roleARN
                options.notificationTargetARN
                options.notificationMetadata
                options.heartbeatTimeout
                options.defaultResult

        options =
            setOptions (PutLifecycleHookOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "PutLifecycleHook")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs putLifecycleHookTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutLifecycleHook"
            (AWS.Core.Decode.ResultDecoder "PutLifecycleHookResult" putLifecycleHookAnswerDecoder)
        )


{-| Options for a putLifecycleHook request
-}
type alias PutLifecycleHookOptions =
    { lifecycleTransition : Maybe String
    , roleARN : Maybe String
    , notificationTargetARN : Maybe String
    , notificationMetadata : Maybe String
    , heartbeatTimeout : Maybe Int
    , defaultResult : Maybe String
    }


{-|

<p>Configures an Auto Scaling group to send notifications when specified events take place. Subscribers to the specified topic can have messages delivered to an endpoint such as a web server or an email address.</p> <p>This configuration overwrites any existing configuration.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ASGettingNotifications.html">Getting Amazon SNS Notifications When Your Auto Scaling Group Scales</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `topicARN` **:** `String`
  - `notificationTypes` **:** `(List String)`

-}
putNotificationConfiguration :
    String
    -> String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putNotificationConfiguration autoScalingGroupName topicARN notificationTypes =
    let
        requestInput =
            PutNotificationConfigurationType
                autoScalingGroupName
                topicARN
                notificationTypes
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "PutNotificationConfiguration")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs putNotificationConfigurationTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutNotificationConfiguration"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Creates or updates a policy for an Auto Scaling group. To update an existing policy, use the existing policy name and set the parameters to change. Any existing parameter not changed in an update to an existing policy is not changed in this update request.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `policyName` **:** `String`

-}
putScalingPolicy :
    String
    -> String
    -> (PutScalingPolicyOptions -> PutScalingPolicyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PolicyARNType)
putScalingPolicy autoScalingGroupName policyName setOptions =
    let
        requestInput =
            PutScalingPolicyType
                autoScalingGroupName
                policyName
                options.policyType
                options.adjustmentType
                options.minAdjustmentStep
                options.minAdjustmentMagnitude
                options.scalingAdjustment
                options.cooldown
                options.metricAggregationType
                options.stepAdjustments
                options.estimatedInstanceWarmup
                options.targetTrackingConfiguration

        options =
            setOptions (PutScalingPolicyOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "PutScalingPolicy")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs putScalingPolicyTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutScalingPolicy"
            (AWS.Core.Decode.ResultDecoder "PutScalingPolicyResult" policyARNTypeDecoder)
        )


{-| Options for a putScalingPolicy request
-}
type alias PutScalingPolicyOptions =
    { policyType : Maybe String
    , adjustmentType : Maybe String
    , minAdjustmentStep : Maybe Int
    , minAdjustmentMagnitude : Maybe Int
    , scalingAdjustment : Maybe Int
    , cooldown : Maybe Int
    , metricAggregationType : Maybe String
    , stepAdjustments : Maybe (List StepAdjustment)
    , estimatedInstanceWarmup : Maybe Int
    , targetTrackingConfiguration : Maybe TargetTrackingConfiguration
    }


{-|

<p>Creates or updates a scheduled scaling action for an Auto Scaling group. If you leave a parameter unspecified when updating a scheduled scaling action, the corresponding value remains unchanged.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/schedule_time.html">Scheduled Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `scheduledActionName` **:** `String`

-}
putScheduledUpdateGroupAction :
    String
    -> String
    -> (PutScheduledUpdateGroupActionOptions -> PutScheduledUpdateGroupActionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putScheduledUpdateGroupAction autoScalingGroupName scheduledActionName setOptions =
    let
        requestInput =
            PutScheduledUpdateGroupActionType
                autoScalingGroupName
                scheduledActionName
                options.time
                options.startTime
                options.endTime
                options.recurrence
                options.minSize
                options.maxSize
                options.desiredCapacity

        options =
            setOptions (PutScheduledUpdateGroupActionOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "PutScheduledUpdateGroupAction")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs putScheduledUpdateGroupActionTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutScheduledUpdateGroupAction"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a putScheduledUpdateGroupAction request
-}
type alias PutScheduledUpdateGroupActionOptions =
    { time : Maybe Posix
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , recurrence : Maybe String
    , minSize : Maybe Int
    , maxSize : Maybe Int
    , desiredCapacity : Maybe Int
    }


{-|

<p>Records a heartbeat for the lifecycle action associated with the specified token or instance. This extends the timeout by the length of time defined using <a>PutLifecycleHook</a>.</p> <p>This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:</p> <ol> <li> <p>(Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.</p> </li> <li> <p>(Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.</p> </li> <li> <p>Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.</p> </li> <li> <p> <b>If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.</b> </p> </li> <li> <p>If you finish before the timeout period ends, complete the lifecycle action.</p> </li> </ol> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html">Auto Scaling Lifecycle</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `lifecycleHookName` **:** `String`
  - `autoScalingGroupName` **:** `String`

-}
recordLifecycleActionHeartbeat :
    String
    -> String
    -> (RecordLifecycleActionHeartbeatOptions -> RecordLifecycleActionHeartbeatOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RecordLifecycleActionHeartbeatAnswer)
recordLifecycleActionHeartbeat lifecycleHookName autoScalingGroupName setOptions =
    let
        requestInput =
            RecordLifecycleActionHeartbeatType
                lifecycleHookName
                autoScalingGroupName
                options.lifecycleActionToken
                options.instanceId

        options =
            setOptions (RecordLifecycleActionHeartbeatOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "RecordLifecycleActionHeartbeat")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs recordLifecycleActionHeartbeatTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "RecordLifecycleActionHeartbeat"
            (AWS.Core.Decode.ResultDecoder "RecordLifecycleActionHeartbeatResult" recordLifecycleActionHeartbeatAnswerDecoder)
        )


{-| Options for a recordLifecycleActionHeartbeat request
-}
type alias RecordLifecycleActionHeartbeatOptions =
    { lifecycleActionToken : Maybe String
    , instanceId : Maybe String
    }


{-|

<p>Resumes the specified suspended automatic scaling processes, or all suspended process, for the specified Auto Scaling group.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html">Suspending and Resuming Scaling Processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`

-}
resumeProcesses :
    String
    -> (ResumeProcessesOptions -> ResumeProcessesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
resumeProcesses autoScalingGroupName setOptions =
    let
        requestInput =
            ScalingProcessQuery
                autoScalingGroupName
                options.scalingProcesses

        options =
            setOptions (ResumeProcessesOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ResumeProcesses")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs scalingProcessQueryEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ResumeProcesses"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a resumeProcesses request
-}
type alias ResumeProcessesOptions =
    { scalingProcesses : Maybe (List String)
    }


{-|

<p>Sets the size of the specified Auto Scaling group.</p> <p>For more information about desired capacity, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html">What Is Amazon EC2 Auto Scaling?</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`
  - `desiredCapacity` **:** `Int`

-}
setDesiredCapacity :
    String
    -> Int
    -> (SetDesiredCapacityOptions -> SetDesiredCapacityOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
setDesiredCapacity autoScalingGroupName desiredCapacity setOptions =
    let
        requestInput =
            SetDesiredCapacityType
                autoScalingGroupName
                desiredCapacity
                options.honorCooldown

        options =
            setOptions (SetDesiredCapacityOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SetDesiredCapacity")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs setDesiredCapacityTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SetDesiredCapacity"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a setDesiredCapacity request
-}
type alias SetDesiredCapacityOptions =
    { honorCooldown : Maybe Bool
    }


{-|

<p>Sets the health status of the specified instance.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html">Health Checks for Auto Scaling Instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `instanceId` **:** `String`
  - `healthStatus` **:** `String`

-}
setInstanceHealth :
    String
    -> String
    -> (SetInstanceHealthOptions -> SetInstanceHealthOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
setInstanceHealth instanceId healthStatus setOptions =
    let
        requestInput =
            SetInstanceHealthQuery
                instanceId
                healthStatus
                options.shouldRespectGracePeriod

        options =
            setOptions (SetInstanceHealthOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SetInstanceHealth")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs setInstanceHealthQueryEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SetInstanceHealth"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a setInstanceHealth request
-}
type alias SetInstanceHealthOptions =
    { shouldRespectGracePeriod : Maybe Bool
    }


{-|

<p>Updates the instance protection settings of the specified instances.</p> <p>For more information about preventing instances that are part of an Auto Scaling group from terminating on scale in, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection">Instance Protection</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `instanceIds` **:** `(List String)`
  - `autoScalingGroupName` **:** `String`
  - `protectedFromScaleIn` **:** `Bool`

-}
setInstanceProtection :
    List String
    -> String
    -> Bool
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetInstanceProtectionAnswer)
setInstanceProtection instanceIds autoScalingGroupName protectedFromScaleIn =
    let
        requestInput =
            SetInstanceProtectionQuery
                instanceIds
                autoScalingGroupName
                protectedFromScaleIn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SetInstanceProtection")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs setInstanceProtectionQueryEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SetInstanceProtection"
            (AWS.Core.Decode.ResultDecoder "SetInstanceProtectionResult" setInstanceProtectionAnswerDecoder)
        )


{-|

<p>Suspends the specified automatic scaling processes, or all processes, for the specified Auto Scaling group.</p> <p>If you suspend either the <code>Launch</code> or <code>Terminate</code> process types, it can prevent other process types from functioning properly.</p> <p>To resume processes that have been suspended, use <a>ResumeProcesses</a>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html">Suspending and Resuming Scaling Processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`

-}
suspendProcesses :
    String
    -> (SuspendProcessesOptions -> SuspendProcessesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
suspendProcesses autoScalingGroupName setOptions =
    let
        requestInput =
            ScalingProcessQuery
                autoScalingGroupName
                options.scalingProcesses

        options =
            setOptions (SuspendProcessesOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SuspendProcesses")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs scalingProcessQueryEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SuspendProcesses"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a suspendProcesses request
-}
type alias SuspendProcessesOptions =
    { scalingProcesses : Maybe (List String)
    }


{-|

<p>Terminates the specified instance and optionally adjusts the desired group size.</p> <p>This call simply makes a termination request. The instance is not terminated immediately.</p>

**Required Parameters**

  - `instanceId` **:** `String`
  - `shouldDecrementDesiredCapacity` **:** `Bool`

-}
terminateInstanceInAutoScalingGroup :
    String
    -> Bool
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ActivityType)
terminateInstanceInAutoScalingGroup instanceId shouldDecrementDesiredCapacity =
    let
        requestInput =
            TerminateInstanceInAutoScalingGroupType
                instanceId
                shouldDecrementDesiredCapacity
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "TerminateInstanceInAutoScalingGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs terminateInstanceInAutoScalingGroupTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "TerminateInstanceInAutoScalingGroup"
            (AWS.Core.Decode.ResultDecoder "TerminateInstanceInAutoScalingGroupResult" activityTypeDecoder)
        )


{-|

<p>Updates the configuration for the specified Auto Scaling group.</p> <p>To update an Auto Scaling group, specify the name of the group and the parameter that you want to change. Any parameters that you don't specify are not changed by this update request. The new settings take effect on any scaling activities after this call returns. Scaling activities that are currently in progress aren't affected.</p> <p>If you associate a new launch configuration or template with an Auto Scaling group, all new instances will get the updated configuration, but existing instances continue to run with the configuration that they were originally launched with. When you update a group to specify a mixed instances policy instead of a launch configuration or template, existing instances may be replaced to match the new purchasing options that you specified in the policy. For example, if the group currently has 100% On-Demand capacity and the policy specifies 50% Spot capacity, this means that half of your instances will be gradually terminated and relaunched as Spot Instances. When replacing instances, Amazon EC2 Auto Scaling launches new instances before terminating the old ones, so that updating your group does not compromise the performance or availability of your application.</p> <p>Note the following about changing <code>DesiredCapacity</code>, <code>MaxSize</code>, or <code>MinSize</code>:</p> <ul> <li> <p>If a scale-in event occurs as a result of a new <code>DesiredCapacity</code> value that is lower than the current size of the group, the Auto Scaling group uses its termination policy to determine which instances to terminate.</p> </li> <li> <p>If you specify a new value for <code>MinSize</code> without specifying a value for <code>DesiredCapacity</code>, and the new <code>MinSize</code> is larger than the current size of the group, this sets the group's <code>DesiredCapacity</code> to the new <code>MinSize</code> value.</p> </li> <li> <p>If you specify a new value for <code>MaxSize</code> without specifying a value for <code>DesiredCapacity</code>, and the new <code>MaxSize</code> is smaller than the current size of the group, this sets the group's <code>DesiredCapacity</code> to the new <code>MaxSize</code> value.</p> </li> </ul> <p>To see which parameters have been set, use <a>DescribeAutoScalingGroups</a>. You can also view the scaling policies for an Auto Scaling group using <a>DescribePolicies</a>. If the group has scaling policies, you can update them using <a>PutScalingPolicy</a>.</p>

**Required Parameters**

  - `autoScalingGroupName` **:** `String`

-}
updateAutoScalingGroup :
    String
    -> (UpdateAutoScalingGroupOptions -> UpdateAutoScalingGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateAutoScalingGroup autoScalingGroupName setOptions =
    let
        requestInput =
            UpdateAutoScalingGroupType
                autoScalingGroupName
                options.launchConfigurationName
                options.launchTemplate
                options.mixedInstancesPolicy
                options.minSize
                options.maxSize
                options.desiredCapacity
                options.defaultCooldown
                options.availabilityZones
                options.healthCheckType
                options.healthCheckGracePeriod
                options.placementGroup
                options.vPCZoneIdentifier
                options.terminationPolicies
                options.newInstancesProtectedFromScaleIn
                options.serviceLinkedRoleARN

        options =
            setOptions (UpdateAutoScalingGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "UpdateAutoScalingGroup")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs updateAutoScalingGroupTypeEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateAutoScalingGroup"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a updateAutoScalingGroup request
-}
type alias UpdateAutoScalingGroupOptions =
    { launchConfigurationName : Maybe String
    , launchTemplate : Maybe LaunchTemplateSpecification
    , mixedInstancesPolicy : Maybe MixedInstancesPolicy
    , minSize : Maybe Int
    , maxSize : Maybe Int
    , desiredCapacity : Maybe Int
    , defaultCooldown : Maybe Int
    , availabilityZones : Maybe (List String)
    , healthCheckType : Maybe String
    , healthCheckGracePeriod : Maybe Int
    , placementGroup : Maybe String
    , vPCZoneIdentifier : Maybe String
    , terminationPolicies : Maybe (List String)
    , newInstancesProtectedFromScaleIn : Maybe Bool
    , serviceLinkedRoleARN : Maybe String
    }


{-| Type of HTTP response from activi
-}
type alias ActivitiesType =
    { activities : List Activity
    , nextToken : Maybe String
    }


activitiesTypeDecoder : JD.Decoder ActivitiesType
activitiesTypeDecoder =
    JD.succeed ActivitiesType
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Activities", "activities" ]
                (JD.list activityDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-|

<p>Describes scaling activity, which is a long-running process that represents a change to your Auto Scaling group, such as changing its size or replacing an instance.</p>

-}
type alias Activity =
    { activityId : String
    , autoScalingGroupName : String
    , description : Maybe String
    , cause : String
    , startTime : Posix
    , endTime : Maybe Posix
    , statusCode : ScalingActivityStatusCode
    , statusMessage : Maybe String
    , progress : Maybe Int
    , details : Maybe String
    }


activityDecoder : JD.Decoder Activity
activityDecoder =
    JD.succeed Activity
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ActivityId", "activityId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AutoScalingGroupName", "autoScalingGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Cause", "cause" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "StartTime", "startTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EndTime", "endTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "StatusCode", "statusCode" ]
                scalingActivityStatusCodeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StatusMessage", "statusMessage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Progress", "progress" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Details", "details" ]
                JD.string
            )


{-| Type of HTTP response from acti
-}
type alias ActivityType =
    { activity : Maybe Activity
    }


activityTypeDecoder : JD.Decoder ActivityType
activityTypeDecoder =
    JD.succeed ActivityType
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Activity", "activity" ]
                activityDecoder
            )


{-|

<p>Describes a policy adjustment type.</p>

-}
type alias AdjustmentType =
    { adjustmentType : Maybe String
    }


adjustmentTypeDecoder : JD.Decoder AdjustmentType
adjustmentTypeDecoder =
    JD.succeed AdjustmentType
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AdjustmentType", "adjustmentType" ]
                JD.string
            )


{-|

<p>Describes an alarm.</p>

-}
type alias Alarm =
    { alarmName : Maybe String
    , alarmARN : Maybe String
    }


alarmDecoder : JD.Decoder Alarm
alarmDecoder =
    JD.succeed Alarm
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AlarmName", "alarmName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AlarmARN", "alarmARN" ]
                JD.string
            )


{-| Type of HTTP response from attachLoadBalancerTargetGroupsRe
-}
type alias AttachLoadBalancerTargetGroupsResultType =
    {}


attachLoadBalancerTargetGroupsResultTypeDecoder : JD.Decoder AttachLoadBalancerTargetGroupsResultType
attachLoadBalancerTargetGroupsResultTypeDecoder =
    JD.succeed AttachLoadBalancerTargetGroupsResultType


{-| Type of HTTP response from attachLoadBalancersRe
-}
type alias AttachLoadBalancersResultType =
    {}


attachLoadBalancersResultTypeDecoder : JD.Decoder AttachLoadBalancersResultType
attachLoadBalancersResultTypeDecoder =
    JD.succeed AttachLoadBalancersResultType


{-|

<p>Describes an Auto Scaling group.</p>

-}
type alias AutoScalingGroup =
    { autoScalingGroupName : String
    , autoScalingGroupARN : Maybe String
    , launchConfigurationName : Maybe String
    , launchTemplate : Maybe LaunchTemplateSpecification
    , mixedInstancesPolicy : Maybe MixedInstancesPolicy
    , minSize : Int
    , maxSize : Int
    , desiredCapacity : Int
    , defaultCooldown : Int
    , availabilityZones : List String
    , loadBalancerNames : Maybe (List String)
    , targetGroupARNs : Maybe (List String)
    , healthCheckType : String
    , healthCheckGracePeriod : Maybe Int
    , instances : Maybe (List Instance)
    , createdTime : Posix
    , suspendedProcesses : Maybe (List SuspendedProcess)
    , placementGroup : Maybe String
    , vPCZoneIdentifier : Maybe String
    , enabledMetrics : Maybe (List EnabledMetric)
    , status : Maybe String
    , tags : Maybe (List TagDescription)
    , terminationPolicies : Maybe (List String)
    , newInstancesProtectedFromScaleIn : Maybe Bool
    , serviceLinkedRoleARN : Maybe String
    }


autoScalingGroupDecoder : JD.Decoder AutoScalingGroup
autoScalingGroupDecoder =
    JD.succeed AutoScalingGroup
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AutoScalingGroupName", "autoScalingGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoScalingGroupARN", "autoScalingGroupARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LaunchConfigurationName", "launchConfigurationName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LaunchTemplate", "launchTemplate" ]
                launchTemplateSpecificationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MixedInstancesPolicy", "mixedInstancesPolicy" ]
                mixedInstancesPolicyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "MinSize", "minSize" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "MaxSize", "maxSize" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DesiredCapacity", "desiredCapacity" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DefaultCooldown", "defaultCooldown" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AvailabilityZones", "availabilityZones" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LoadBalancerNames", "loadBalancerNames" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetGroupARNs", "targetGroupARNs" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "HealthCheckType", "healthCheckType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HealthCheckGracePeriod", "healthCheckGracePeriod" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Instances", "instances" ]
                (JD.list instanceDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "CreatedTime", "createdTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SuspendedProcesses", "suspendedProcesses" ]
                (JD.list suspendedProcessDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PlacementGroup", "placementGroup" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VPCZoneIdentifier", "vPCZoneIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EnabledMetrics", "enabledMetrics" ]
                (JD.list enabledMetricDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDescriptionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TerminationPolicies", "terminationPolicies" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NewInstancesProtectedFromScaleIn", "newInstancesProtectedFromScaleIn" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceLinkedRoleARN", "serviceLinkedRoleARN" ]
                JD.string
            )


{-| Type of HTTP response from autoScalingGr
-}
type alias AutoScalingGroupsType =
    { autoScalingGroups : List AutoScalingGroup
    , nextToken : Maybe String
    }


autoScalingGroupsTypeDecoder : JD.Decoder AutoScalingGroupsType
autoScalingGroupsTypeDecoder =
    JD.succeed AutoScalingGroupsType
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AutoScalingGroups", "autoScalingGroups" ]
                (JD.list autoScalingGroupDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-|

<p>Describes an EC2 instance associated with an Auto Scaling group.</p>

-}
type alias AutoScalingInstanceDetails =
    { instanceId : String
    , autoScalingGroupName : String
    , availabilityZone : String
    , lifecycleState : String
    , healthStatus : String
    , launchConfigurationName : Maybe String
    , launchTemplate : Maybe LaunchTemplateSpecification
    , protectedFromScaleIn : Bool
    }


autoScalingInstanceDetailsDecoder : JD.Decoder AutoScalingInstanceDetails
autoScalingInstanceDetailsDecoder =
    JD.succeed AutoScalingInstanceDetails
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "InstanceId", "instanceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AutoScalingGroupName", "autoScalingGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AvailabilityZone", "availabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "LifecycleState", "lifecycleState" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "HealthStatus", "healthStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LaunchConfigurationName", "launchConfigurationName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LaunchTemplate", "launchTemplate" ]
                launchTemplateSpecificationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ProtectedFromScaleIn", "protectedFromScaleIn" ]
                JD.bool
            )


{-| Type of HTTP response from autoScalingInsta
-}
type alias AutoScalingInstancesType =
    { autoScalingInstances : Maybe (List AutoScalingInstanceDetails)
    , nextToken : Maybe String
    }


autoScalingInstancesTypeDecoder : JD.Decoder AutoScalingInstancesType
autoScalingInstancesTypeDecoder =
    JD.succeed AutoScalingInstancesType
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoScalingInstances", "autoScalingInstances" ]
                (JD.list autoScalingInstanceDetailsDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from batchDeleteScheduledActi
-}
type alias BatchDeleteScheduledActionAnswer =
    { failedScheduledActions : Maybe (List FailedScheduledUpdateGroupActionRequest)
    }


batchDeleteScheduledActionAnswerDecoder : JD.Decoder BatchDeleteScheduledActionAnswer
batchDeleteScheduledActionAnswerDecoder =
    JD.succeed BatchDeleteScheduledActionAnswer
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FailedScheduledActions", "failedScheduledActions" ]
                (JD.list failedScheduledUpdateGroupActionRequestDecoder)
            )


{-| Type of HTTP response from batchPutScheduledUpdateGroupActi
-}
type alias BatchPutScheduledUpdateGroupActionAnswer =
    { failedScheduledUpdateGroupActions : Maybe (List FailedScheduledUpdateGroupActionRequest)
    }


batchPutScheduledUpdateGroupActionAnswerDecoder : JD.Decoder BatchPutScheduledUpdateGroupActionAnswer
batchPutScheduledUpdateGroupActionAnswerDecoder =
    JD.succeed BatchPutScheduledUpdateGroupActionAnswer
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FailedScheduledUpdateGroupActions", "failedScheduledUpdateGroupActions" ]
                (JD.list failedScheduledUpdateGroupActionRequestDecoder)
            )


{-|

<p>Describes a block device mapping.</p>

-}
type alias BlockDeviceMapping =
    { virtualName : Maybe String
    , deviceName : String
    , ebs : Maybe Ebs
    , noDevice : Maybe Bool
    }


blockDeviceMappingDecoder : JD.Decoder BlockDeviceMapping
blockDeviceMappingDecoder =
    JD.succeed BlockDeviceMapping
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VirtualName", "virtualName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DeviceName", "deviceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Ebs", "ebs" ]
                ebsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NoDevice", "noDevice" ]
                JD.bool
            )


{-| Type of HTTP response from completeLifecycleActi
-}
type alias CompleteLifecycleActionAnswer =
    {}


completeLifecycleActionAnswerDecoder : JD.Decoder CompleteLifecycleActionAnswer
completeLifecycleActionAnswerDecoder =
    JD.succeed CompleteLifecycleActionAnswer


{-|

<p>Represents a CloudWatch metric of your choosing for a target tracking scaling policy to use with Amazon EC2 Auto Scaling.</p> <p>To create your customized metric specification:</p> <ul> <li> <p>Add values for each required parameter from CloudWatch. You can use an existing metric, or a new metric that you create. To use your own metric, you must first publish the metric to CloudWatch. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publish Custom Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p> </li> <li> <p>Choose a metric that changes proportionally with capacity. The value of the metric should increase or decrease in inverse proportion to the number of capacity units. That is, the value of the metric should decrease when capacity increases. </p> </li> </ul> <p>For more information about CloudWatch, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html">Amazon CloudWatch Concepts</a>. </p>

-}
type alias CustomizedMetricSpecification =
    { metricName : String
    , namespace : String
    , dimensions : Maybe (List MetricDimension)
    , statistic : MetricStatistic
    , unit : Maybe String
    }


customizedMetricSpecificationDecoder : JD.Decoder CustomizedMetricSpecification
customizedMetricSpecificationDecoder =
    JD.succeed CustomizedMetricSpecification
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "MetricName", "metricName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Namespace", "namespace" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Dimensions", "dimensions" ]
                (JD.list metricDimensionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Statistic", "statistic" ]
                metricStatisticDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Unit", "unit" ]
                JD.string
            )


{-| Type of HTTP response from deleteLifecycleHo
-}
type alias DeleteLifecycleHookAnswer =
    {}


deleteLifecycleHookAnswerDecoder : JD.Decoder DeleteLifecycleHookAnswer
deleteLifecycleHookAnswerDecoder =
    JD.succeed DeleteLifecycleHookAnswer


{-| Type of HTTP response from describeAccountLimi
-}
type alias DescribeAccountLimitsAnswer =
    { maxNumberOfAutoScalingGroups : Maybe Int
    , maxNumberOfLaunchConfigurations : Maybe Int
    , numberOfAutoScalingGroups : Maybe Int
    , numberOfLaunchConfigurations : Maybe Int
    }


describeAccountLimitsAnswerDecoder : JD.Decoder DescribeAccountLimitsAnswer
describeAccountLimitsAnswerDecoder =
    JD.succeed DescribeAccountLimitsAnswer
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaxNumberOfAutoScalingGroups", "maxNumberOfAutoScalingGroups" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaxNumberOfLaunchConfigurations", "maxNumberOfLaunchConfigurations" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NumberOfAutoScalingGroups", "numberOfAutoScalingGroups" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NumberOfLaunchConfigurations", "numberOfLaunchConfigurations" ]
                JD.int
            )


{-| Type of HTTP response from describeAdjustmentTyp
-}
type alias DescribeAdjustmentTypesAnswer =
    { adjustmentTypes : Maybe (List AdjustmentType)
    }


describeAdjustmentTypesAnswerDecoder : JD.Decoder DescribeAdjustmentTypesAnswer
describeAdjustmentTypesAnswerDecoder =
    JD.succeed DescribeAdjustmentTypesAnswer
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AdjustmentTypes", "adjustmentTypes" ]
                (JD.list adjustmentTypeDecoder)
            )


{-| Type of HTTP response from describeAutoScalingNotificationTyp
-}
type alias DescribeAutoScalingNotificationTypesAnswer =
    { autoScalingNotificationTypes : Maybe (List String)
    }


describeAutoScalingNotificationTypesAnswerDecoder : JD.Decoder DescribeAutoScalingNotificationTypesAnswer
describeAutoScalingNotificationTypesAnswerDecoder =
    JD.succeed DescribeAutoScalingNotificationTypesAnswer
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoScalingNotificationTypes", "autoScalingNotificationTypes" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from describeLifecycleHookTyp
-}
type alias DescribeLifecycleHookTypesAnswer =
    { lifecycleHookTypes : Maybe (List String)
    }


describeLifecycleHookTypesAnswerDecoder : JD.Decoder DescribeLifecycleHookTypesAnswer
describeLifecycleHookTypesAnswerDecoder =
    JD.succeed DescribeLifecycleHookTypesAnswer
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LifecycleHookTypes", "lifecycleHookTypes" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from describeLifecycleHoo
-}
type alias DescribeLifecycleHooksAnswer =
    { lifecycleHooks : Maybe (List LifecycleHook)
    }


describeLifecycleHooksAnswerDecoder : JD.Decoder DescribeLifecycleHooksAnswer
describeLifecycleHooksAnswerDecoder =
    JD.succeed DescribeLifecycleHooksAnswer
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LifecycleHooks", "lifecycleHooks" ]
                (JD.list lifecycleHookDecoder)
            )


{-| Type of HTTP response from describeLoadBalancerTargetGroups
-}
type alias DescribeLoadBalancerTargetGroupsResponse =
    { loadBalancerTargetGroups : Maybe (List LoadBalancerTargetGroupState)
    , nextToken : Maybe String
    }


describeLoadBalancerTargetGroupsResponseDecoder : JD.Decoder DescribeLoadBalancerTargetGroupsResponse
describeLoadBalancerTargetGroupsResponseDecoder =
    JD.succeed DescribeLoadBalancerTargetGroupsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LoadBalancerTargetGroups", "loadBalancerTargetGroups" ]
                (JD.list loadBalancerTargetGroupStateDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from describeLoadBalancers
-}
type alias DescribeLoadBalancersResponse =
    { loadBalancers : Maybe (List LoadBalancerState)
    , nextToken : Maybe String
    }


describeLoadBalancersResponseDecoder : JD.Decoder DescribeLoadBalancersResponse
describeLoadBalancersResponseDecoder =
    JD.succeed DescribeLoadBalancersResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LoadBalancers", "loadBalancers" ]
                (JD.list loadBalancerStateDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from describeMetricCollectionTyp
-}
type alias DescribeMetricCollectionTypesAnswer =
    { metrics : Maybe (List MetricCollectionType)
    , granularities : Maybe (List MetricGranularityType)
    }


describeMetricCollectionTypesAnswerDecoder : JD.Decoder DescribeMetricCollectionTypesAnswer
describeMetricCollectionTypesAnswerDecoder =
    JD.succeed DescribeMetricCollectionTypesAnswer
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Metrics", "metrics" ]
                (JD.list metricCollectionTypeDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Granularities", "granularities" ]
                (JD.list metricGranularityTypeDecoder)
            )


{-| Type of HTTP response from describeNotificationConfiguratio
-}
type alias DescribeNotificationConfigurationsAnswer =
    { notificationConfigurations : List NotificationConfiguration
    , nextToken : Maybe String
    }


describeNotificationConfigurationsAnswerDecoder : JD.Decoder DescribeNotificationConfigurationsAnswer
describeNotificationConfigurationsAnswerDecoder =
    JD.succeed DescribeNotificationConfigurationsAnswer
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "NotificationConfigurations", "notificationConfigurations" ]
                (JD.list notificationConfigurationDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from describeTerminationPolicyTyp
-}
type alias DescribeTerminationPolicyTypesAnswer =
    { terminationPolicyTypes : Maybe (List String)
    }


describeTerminationPolicyTypesAnswerDecoder : JD.Decoder DescribeTerminationPolicyTypesAnswer
describeTerminationPolicyTypesAnswerDecoder =
    JD.succeed DescribeTerminationPolicyTypesAnswer
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TerminationPolicyTypes", "terminationPolicyTypes" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from detachInstanc
-}
type alias DetachInstancesAnswer =
    { activities : Maybe (List Activity)
    }


detachInstancesAnswerDecoder : JD.Decoder DetachInstancesAnswer
detachInstancesAnswerDecoder =
    JD.succeed DetachInstancesAnswer
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Activities", "activities" ]
                (JD.list activityDecoder)
            )


{-| Type of HTTP response from detachLoadBalancerTargetGroupsRe
-}
type alias DetachLoadBalancerTargetGroupsResultType =
    {}


detachLoadBalancerTargetGroupsResultTypeDecoder : JD.Decoder DetachLoadBalancerTargetGroupsResultType
detachLoadBalancerTargetGroupsResultTypeDecoder =
    JD.succeed DetachLoadBalancerTargetGroupsResultType


{-| Type of HTTP response from detachLoadBalancersRe
-}
type alias DetachLoadBalancersResultType =
    {}


detachLoadBalancersResultTypeDecoder : JD.Decoder DetachLoadBalancersResultType
detachLoadBalancersResultTypeDecoder =
    JD.succeed DetachLoadBalancersResultType


{-|

<p>Describes an Amazon EBS volume. Used in combination with <a>BlockDeviceMapping</a>.</p>

-}
type alias Ebs =
    { snapshotId : Maybe String
    , volumeSize : Maybe Int
    , volumeType : Maybe String
    , deleteOnTermination : Maybe Bool
    , iops : Maybe Int
    , encrypted : Maybe Bool
    }


ebsDecoder : JD.Decoder Ebs
ebsDecoder =
    JD.succeed Ebs
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotId", "snapshotId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeSize", "volumeSize" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeType", "volumeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeleteOnTermination", "deleteOnTermination" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Iops", "iops" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Encrypted", "encrypted" ]
                JD.bool
            )


{-|

<p>Describes an enabled metric.</p>

-}
type alias EnabledMetric =
    { metric : Maybe String
    , granularity : Maybe String
    }


enabledMetricDecoder : JD.Decoder EnabledMetric
enabledMetricDecoder =
    JD.succeed EnabledMetric
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Metric", "metric" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Granularity", "granularity" ]
                JD.string
            )


{-| Type of HTTP response from enterStand
-}
type alias EnterStandbyAnswer =
    { activities : Maybe (List Activity)
    }


enterStandbyAnswerDecoder : JD.Decoder EnterStandbyAnswer
enterStandbyAnswerDecoder =
    JD.succeed EnterStandbyAnswer
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Activities", "activities" ]
                (JD.list activityDecoder)
            )


{-| Type of HTTP response from exitStand
-}
type alias ExitStandbyAnswer =
    { activities : Maybe (List Activity)
    }


exitStandbyAnswerDecoder : JD.Decoder ExitStandbyAnswer
exitStandbyAnswerDecoder =
    JD.succeed ExitStandbyAnswer
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Activities", "activities" ]
                (JD.list activityDecoder)
            )


{-|

<p>Describes a scheduled action that could not be created, updated, or deleted.</p>

-}
type alias FailedScheduledUpdateGroupActionRequest =
    { scheduledActionName : String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }


failedScheduledUpdateGroupActionRequestDecoder : JD.Decoder FailedScheduledUpdateGroupActionRequest
failedScheduledUpdateGroupActionRequestDecoder =
    JD.succeed FailedScheduledUpdateGroupActionRequest
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ScheduledActionName", "scheduledActionName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorCode", "errorCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorMessage", "errorMessage" ]
                JD.string
            )


{-|

<p>Describes a filter.</p>

-}
type alias Filter =
    { name : Maybe String
    , values : Maybe (List String)
    }


filterDecoder : JD.Decoder Filter
filterDecoder =
    JD.succeed Filter
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Values", "values" ]
                (JD.list JD.string)
            )


{-|

<p>Describes an EC2 instance.</p>

-}
type alias Instance =
    { instanceId : String
    , availabilityZone : String
    , lifecycleState : LifecycleState
    , healthStatus : String
    , launchConfigurationName : Maybe String
    , launchTemplate : Maybe LaunchTemplateSpecification
    , protectedFromScaleIn : Bool
    }


instanceDecoder : JD.Decoder Instance
instanceDecoder =
    JD.succeed Instance
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "InstanceId", "instanceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AvailabilityZone", "availabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "LifecycleState", "lifecycleState" ]
                lifecycleStateDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "HealthStatus", "healthStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LaunchConfigurationName", "launchConfigurationName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LaunchTemplate", "launchTemplate" ]
                launchTemplateSpecificationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ProtectedFromScaleIn", "protectedFromScaleIn" ]
                JD.bool
            )


{-|

<p>Describes whether detailed monitoring is enabled for the Auto Scaling instances.</p>

-}
type alias InstanceMonitoring =
    { enabled : Maybe Bool
    }


instanceMonitoringDecoder : JD.Decoder InstanceMonitoring
instanceMonitoringDecoder =
    JD.succeed InstanceMonitoring
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Enabled", "enabled" ]
                JD.bool
            )


{-|

<p>Describes an instances distribution for an Auto Scaling group with <a>MixedInstancesPolicy</a>.</p> <p>The instances distribution specifies the distribution of On-Demand Instances and Spot Instances, the maximum price to pay for Spot Instances, and how the Auto Scaling group allocates instance types to fulfill On-Demand and Spot capacity.</p>

-}
type alias InstancesDistribution =
    { onDemandAllocationStrategy : Maybe String
    , onDemandBaseCapacity : Maybe Int
    , onDemandPercentageAboveBaseCapacity : Maybe Int
    , spotAllocationStrategy : Maybe String
    , spotInstancePools : Maybe Int
    , spotMaxPrice : Maybe String
    }


instancesDistributionDecoder : JD.Decoder InstancesDistribution
instancesDistributionDecoder =
    JD.succeed InstancesDistribution
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OnDemandAllocationStrategy", "onDemandAllocationStrategy" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OnDemandBaseCapacity", "onDemandBaseCapacity" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OnDemandPercentageAboveBaseCapacity", "onDemandPercentageAboveBaseCapacity" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SpotAllocationStrategy", "spotAllocationStrategy" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SpotInstancePools", "spotInstancePools" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SpotMaxPrice", "spotMaxPrice" ]
                JD.string
            )


{-|

<p>Describes a launch configuration.</p>

-}
type alias LaunchConfiguration =
    { launchConfigurationName : String
    , launchConfigurationARN : Maybe String
    , imageId : String
    , keyName : Maybe String
    , securityGroups : Maybe (List String)
    , classicLinkVPCId : Maybe String
    , classicLinkVPCSecurityGroups : Maybe (List String)
    , userData : Maybe String
    , instanceType : String
    , kernelId : Maybe String
    , ramdiskId : Maybe String
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , instanceMonitoring : Maybe InstanceMonitoring
    , spotPrice : Maybe String
    , iamInstanceProfile : Maybe String
    , createdTime : Posix
    , ebsOptimized : Maybe Bool
    , associatePublicIpAddress : Maybe Bool
    , placementTenancy : Maybe String
    }


launchConfigurationDecoder : JD.Decoder LaunchConfiguration
launchConfigurationDecoder =
    JD.succeed LaunchConfiguration
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "LaunchConfigurationName", "launchConfigurationName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LaunchConfigurationARN", "launchConfigurationARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ImageId", "imageId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KeyName", "keyName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SecurityGroups", "securityGroups" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClassicLinkVPCId", "classicLinkVPCId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClassicLinkVPCSecurityGroups", "classicLinkVPCSecurityGroups" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UserData", "userData" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "InstanceType", "instanceType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KernelId", "kernelId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RamdiskId", "ramdiskId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BlockDeviceMappings", "blockDeviceMappings" ]
                (JD.list blockDeviceMappingDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InstanceMonitoring", "instanceMonitoring" ]
                instanceMonitoringDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SpotPrice", "spotPrice" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IamInstanceProfile", "iamInstanceProfile" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "CreatedTime", "createdTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EbsOptimized", "ebsOptimized" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AssociatePublicIpAddress", "associatePublicIpAddress" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PlacementTenancy", "placementTenancy" ]
                JD.string
            )


{-| Type of HTTP response from launchConfigurat
-}
type alias LaunchConfigurationsType =
    { launchConfigurations : List LaunchConfiguration
    , nextToken : Maybe String
    }


launchConfigurationsTypeDecoder : JD.Decoder LaunchConfigurationsType
launchConfigurationsTypeDecoder =
    JD.succeed LaunchConfigurationsType
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "LaunchConfigurations", "launchConfigurations" ]
                (JD.list launchConfigurationDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-|

<p>Describes a launch template and overrides. </p> <p>The overrides are used to override the instance type specified by the launch template with multiple instance types that can be used to launch On-Demand Instances and Spot Instances. </p>

-}
type alias LaunchTemplate =
    { launchTemplateSpecification : Maybe LaunchTemplateSpecification
    , overrides : Maybe (List LaunchTemplateOverrides)
    }


launchTemplateDecoder : JD.Decoder LaunchTemplate
launchTemplateDecoder =
    JD.succeed LaunchTemplate
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LaunchTemplateSpecification", "launchTemplateSpecification" ]
                launchTemplateSpecificationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Overrides", "overrides" ]
                (JD.list launchTemplateOverridesDecoder)
            )


{-|

<p>Describes an override for a launch template. </p>

-}
type alias LaunchTemplateOverrides =
    { instanceType : Maybe String
    }


launchTemplateOverridesDecoder : JD.Decoder LaunchTemplateOverrides
launchTemplateOverridesDecoder =
    JD.succeed LaunchTemplateOverrides
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InstanceType", "instanceType" ]
                JD.string
            )


{-|

<p>Describes a launch template and the launch template version.</p> <p>The launch template that is specified must be configured for use with an Auto Scaling group. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html">Creating a Launch Template for an Auto Scaling Group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

-}
type alias LaunchTemplateSpecification =
    { launchTemplateId : Maybe String
    , launchTemplateName : Maybe String
    , version : Maybe String
    }


launchTemplateSpecificationDecoder : JD.Decoder LaunchTemplateSpecification
launchTemplateSpecificationDecoder =
    JD.succeed LaunchTemplateSpecification
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LaunchTemplateId", "launchTemplateId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LaunchTemplateName", "launchTemplateName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Version", "version" ]
                JD.string
            )


{-|

<p>Describes a lifecycle hook, which tells Amazon EC2 Auto Scaling that you want to perform an action whenever it launches instances or whenever it terminates instances. Used in response to <a>DescribeLifecycleHooks</a>.</p>

-}
type alias LifecycleHook =
    { lifecycleHookName : Maybe String
    , autoScalingGroupName : Maybe String
    , lifecycleTransition : Maybe String
    , notificationTargetARN : Maybe String
    , roleARN : Maybe String
    , notificationMetadata : Maybe String
    , heartbeatTimeout : Maybe Int
    , globalTimeout : Maybe Int
    , defaultResult : Maybe String
    }


lifecycleHookDecoder : JD.Decoder LifecycleHook
lifecycleHookDecoder =
    JD.succeed LifecycleHook
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LifecycleHookName", "lifecycleHookName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoScalingGroupName", "autoScalingGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LifecycleTransition", "lifecycleTransition" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NotificationTargetARN", "notificationTargetARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RoleARN", "roleARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NotificationMetadata", "notificationMetadata" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HeartbeatTimeout", "heartbeatTimeout" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GlobalTimeout", "globalTimeout" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DefaultResult", "defaultResult" ]
                JD.string
            )


{-|

<p>Describes a lifecycle hook. Used in combination with <a>CreateAutoScalingGroup</a>.</p> <p>A lifecycle hook tells Amazon EC2 Auto Scaling to perform an action on an instance when the instance launches (before it is put into service) or as the instance terminates (before it is fully terminated).</p> <p>This step is a part of the procedure for creating a lifecycle hook for an Auto Scaling group:</p> <ol> <li> <p>(Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.</p> </li> <li> <p>(Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.</p> </li> <li> <p> <b>Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.</b> </p> </li> <li> <p>If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state using using <a>RecordLifecycleActionHeartbeat</a>.</p> </li> <li> <p>If you finish before the timeout period ends, complete the lifecycle action using <a>CompleteLifecycleAction</a>.</p> </li> </ol> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html">Amazon EC2 Auto Scaling Lifecycle Hooks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p> <p>You can view the lifecycle hooks for an Auto Scaling group using <a>DescribeLifecycleHooks</a>. You can modify an existing lifecycle hook or create new lifecycle hooks using <a>PutLifecycleHook</a>. If you are no longer using a lifecycle hook, you can delete it using <a>DeleteLifecycleHook</a>.</p>

-}
type alias LifecycleHookSpecification =
    { lifecycleHookName : String
    , lifecycleTransition : String
    , notificationMetadata : Maybe String
    , heartbeatTimeout : Maybe Int
    , defaultResult : Maybe String
    , notificationTargetARN : Maybe String
    , roleARN : Maybe String
    }


lifecycleHookSpecificationDecoder : JD.Decoder LifecycleHookSpecification
lifecycleHookSpecificationDecoder =
    JD.succeed LifecycleHookSpecification
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "LifecycleHookName", "lifecycleHookName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "LifecycleTransition", "lifecycleTransition" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NotificationMetadata", "notificationMetadata" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HeartbeatTimeout", "heartbeatTimeout" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DefaultResult", "defaultResult" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NotificationTargetARN", "notificationTargetARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RoleARN", "roleARN" ]
                JD.string
            )


{-| One of

  - `LifecycleState_Pending`
  - `LifecycleState_Pending:Wait`
  - `LifecycleState_Pending:Proceed`
  - `LifecycleState_Quarantined`
  - `LifecycleState_InService`
  - `LifecycleState_Terminating`
  - `LifecycleState_Terminating:Wait`
  - `LifecycleState_Terminating:Proceed`
  - `LifecycleState_Terminated`
  - `LifecycleState_Detaching`
  - `LifecycleState_Detached`
  - `LifecycleState_EnteringStandby`
  - `LifecycleState_Standby`

-}
type LifecycleState
    = LifecycleState_Pending
    | LifecycleState_Pending_Wait
    | LifecycleState_Pending_Proceed
    | LifecycleState_Quarantined
    | LifecycleState_InService
    | LifecycleState_Terminating
    | LifecycleState_Terminating_Wait
    | LifecycleState_Terminating_Proceed
    | LifecycleState_Terminated
    | LifecycleState_Detaching
    | LifecycleState_Detached
    | LifecycleState_EnteringStandby
    | LifecycleState_Standby


lifecycleStateDecoder : JD.Decoder LifecycleState
lifecycleStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed LifecycleState_Pending

                    "Pending_Wait" ->
                        JD.succeed LifecycleState_Pending_Wait

                    "Pending_Proceed" ->
                        JD.succeed LifecycleState_Pending_Proceed

                    "Quarantined" ->
                        JD.succeed LifecycleState_Quarantined

                    "InService" ->
                        JD.succeed LifecycleState_InService

                    "Terminating" ->
                        JD.succeed LifecycleState_Terminating

                    "Terminating_Wait" ->
                        JD.succeed LifecycleState_Terminating_Wait

                    "Terminating_Proceed" ->
                        JD.succeed LifecycleState_Terminating_Proceed

                    "Terminated" ->
                        JD.succeed LifecycleState_Terminated

                    "Detaching" ->
                        JD.succeed LifecycleState_Detaching

                    "Detached" ->
                        JD.succeed LifecycleState_Detached

                    "EnteringStandby" ->
                        JD.succeed LifecycleState_EnteringStandby

                    "Standby" ->
                        JD.succeed LifecycleState_Standby

                    _ ->
                        JD.fail "bad thing"
            )


lifecycleStateToString : LifecycleState -> String
lifecycleStateToString val =
    case val of
        LifecycleState_Pending ->
            "Pending"

        LifecycleState_Pending_Wait ->
            "Pending_Wait"

        LifecycleState_Pending_Proceed ->
            "Pending_Proceed"

        LifecycleState_Quarantined ->
            "Quarantined"

        LifecycleState_InService ->
            "InService"

        LifecycleState_Terminating ->
            "Terminating"

        LifecycleState_Terminating_Wait ->
            "Terminating_Wait"

        LifecycleState_Terminating_Proceed ->
            "Terminating_Proceed"

        LifecycleState_Terminated ->
            "Terminated"

        LifecycleState_Detaching ->
            "Detaching"

        LifecycleState_Detached ->
            "Detached"

        LifecycleState_EnteringStandby ->
            "EnteringStandby"

        LifecycleState_Standby ->
            "Standby"


{-|

<p>Describes the state of a Classic Load Balancer.</p> <p>If you specify a load balancer when creating the Auto Scaling group, the state of the load balancer is <code>InService</code>.</p> <p>If you attach a load balancer to an existing Auto Scaling group, the initial state is <code>Adding</code>. The state transitions to <code>Added</code> after all instances in the group are registered with the load balancer. If Elastic Load Balancing health checks are enabled for the load balancer, the state transitions to <code>InService</code> after at least one instance in the group passes the health check. If EC2 health checks are enabled instead, the load balancer remains in the <code>Added</code> state.</p>

-}
type alias LoadBalancerState =
    { loadBalancerName : Maybe String
    , state : Maybe String
    }


loadBalancerStateDecoder : JD.Decoder LoadBalancerState
loadBalancerStateDecoder =
    JD.succeed LoadBalancerState
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LoadBalancerName", "loadBalancerName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "State", "state" ]
                JD.string
            )


{-|

<p>Describes the state of a target group.</p> <p>If you attach a target group to an existing Auto Scaling group, the initial state is <code>Adding</code>. The state transitions to <code>Added</code> after all Auto Scaling instances are registered with the target group. If Elastic Load Balancing health checks are enabled, the state transitions to <code>InService</code> after at least one Auto Scaling instance passes the health check. If EC2 health checks are enabled instead, the target group remains in the <code>Added</code> state.</p>

-}
type alias LoadBalancerTargetGroupState =
    { loadBalancerTargetGroupARN : Maybe String
    , state : Maybe String
    }


loadBalancerTargetGroupStateDecoder : JD.Decoder LoadBalancerTargetGroupState
loadBalancerTargetGroupStateDecoder =
    JD.succeed LoadBalancerTargetGroupState
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LoadBalancerTargetGroupARN", "loadBalancerTargetGroupARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "State", "state" ]
                JD.string
            )


{-|

<p>Describes a metric.</p>

-}
type alias MetricCollectionType =
    { metric : Maybe String
    }


metricCollectionTypeDecoder : JD.Decoder MetricCollectionType
metricCollectionTypeDecoder =
    JD.succeed MetricCollectionType
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Metric", "metric" ]
                JD.string
            )


{-|

<p>Describes the dimension of a metric.</p>

-}
type alias MetricDimension =
    { name : String
    , value : String
    }


metricDimensionDecoder : JD.Decoder MetricDimension
metricDimensionDecoder =
    JD.succeed MetricDimension
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Value", "value" ]
                JD.string
            )


{-|

<p>Describes a granularity of a metric.</p>

-}
type alias MetricGranularityType =
    { granularity : Maybe String
    }


metricGranularityTypeDecoder : JD.Decoder MetricGranularityType
metricGranularityTypeDecoder =
    JD.succeed MetricGranularityType
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Granularity", "granularity" ]
                JD.string
            )


{-| One of

  - `MetricStatistic_Average`
  - `MetricStatistic_Minimum`
  - `MetricStatistic_Maximum`
  - `MetricStatistic_SampleCount`
  - `MetricStatistic_Sum`

-}
type MetricStatistic
    = MetricStatistic_Average
    | MetricStatistic_Minimum
    | MetricStatistic_Maximum
    | MetricStatistic_SampleCount
    | MetricStatistic_Sum


metricStatisticDecoder : JD.Decoder MetricStatistic
metricStatisticDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Average" ->
                        JD.succeed MetricStatistic_Average

                    "Minimum" ->
                        JD.succeed MetricStatistic_Minimum

                    "Maximum" ->
                        JD.succeed MetricStatistic_Maximum

                    "SampleCount" ->
                        JD.succeed MetricStatistic_SampleCount

                    "Sum" ->
                        JD.succeed MetricStatistic_Sum

                    _ ->
                        JD.fail "bad thing"
            )


metricStatisticToString : MetricStatistic -> String
metricStatisticToString val =
    case val of
        MetricStatistic_Average ->
            "Average"

        MetricStatistic_Minimum ->
            "Minimum"

        MetricStatistic_Maximum ->
            "Maximum"

        MetricStatistic_SampleCount ->
            "SampleCount"

        MetricStatistic_Sum ->
            "Sum"


{-| One of

  - `MetricType_ASGAverageCPUUtilization`
  - `MetricType_ASGAverageNetworkIn`
  - `MetricType_ASGAverageNetworkOut`
  - `MetricType_ALBRequestCountPerTarget`

-}
type MetricType
    = MetricType_ASGAverageCPUUtilization
    | MetricType_ASGAverageNetworkIn
    | MetricType_ASGAverageNetworkOut
    | MetricType_ALBRequestCountPerTarget


metricTypeDecoder : JD.Decoder MetricType
metricTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASGAverageCPUUtilization" ->
                        JD.succeed MetricType_ASGAverageCPUUtilization

                    "ASGAverageNetworkIn" ->
                        JD.succeed MetricType_ASGAverageNetworkIn

                    "ASGAverageNetworkOut" ->
                        JD.succeed MetricType_ASGAverageNetworkOut

                    "ALBRequestCountPerTarget" ->
                        JD.succeed MetricType_ALBRequestCountPerTarget

                    _ ->
                        JD.fail "bad thing"
            )


metricTypeToString : MetricType -> String
metricTypeToString val =
    case val of
        MetricType_ASGAverageCPUUtilization ->
            "ASGAverageCPUUtilization"

        MetricType_ASGAverageNetworkIn ->
            "ASGAverageNetworkIn"

        MetricType_ASGAverageNetworkOut ->
            "ASGAverageNetworkOut"

        MetricType_ALBRequestCountPerTarget ->
            "ALBRequestCountPerTarget"


{-|

<p>Describes a mixed instances policy for an Auto Scaling group. With mixed instances, your Auto Scaling group can provision a combination of On-Demand Instances and Spot Instances across multiple instance types. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html">Auto Scaling Groups with Multiple Instance Types and Purchase Options</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p> <p>You can create a mixed instances policy for a new Auto Scaling group (<a>CreateAutoScalingGroup</a>), or you can create it for an existing group by updating the group (<a>UpdateAutoScalingGroup</a>) to specify <code>MixedInstancesPolicy</code> as the top-level parameter instead of a launch configuration or template.</p>

-}
type alias MixedInstancesPolicy =
    { launchTemplate : Maybe LaunchTemplate
    , instancesDistribution : Maybe InstancesDistribution
    }


mixedInstancesPolicyDecoder : JD.Decoder MixedInstancesPolicy
mixedInstancesPolicyDecoder =
    JD.succeed MixedInstancesPolicy
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LaunchTemplate", "launchTemplate" ]
                launchTemplateDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InstancesDistribution", "instancesDistribution" ]
                instancesDistributionDecoder
            )


{-|

<p>Describes a notification.</p>

-}
type alias NotificationConfiguration =
    { autoScalingGroupName : Maybe String
    , topicARN : Maybe String
    , notificationType : Maybe String
    }


notificationConfigurationDecoder : JD.Decoder NotificationConfiguration
notificationConfigurationDecoder =
    JD.succeed NotificationConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoScalingGroupName", "autoScalingGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TopicARN", "topicARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NotificationType", "notificationType" ]
                JD.string
            )


{-| Type of HTTP response from poli
-}
type alias PoliciesType =
    { scalingPolicies : Maybe (List ScalingPolicy)
    , nextToken : Maybe String
    }


policiesTypeDecoder : JD.Decoder PoliciesType
policiesTypeDecoder =
    JD.succeed PoliciesType
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ScalingPolicies", "scalingPolicies" ]
                (JD.list scalingPolicyDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from polic
-}
type alias PolicyARNType =
    { policyARN : Maybe String
    , alarms : Maybe (List Alarm)
    }


policyARNTypeDecoder : JD.Decoder PolicyARNType
policyARNTypeDecoder =
    JD.succeed PolicyARNType
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyARN", "policyARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Alarms", "alarms" ]
                (JD.list alarmDecoder)
            )


{-|

<p>Represents a predefined metric for a target tracking scaling policy to use with Amazon EC2 Auto Scaling.</p>

-}
type alias PredefinedMetricSpecification =
    { predefinedMetricType : MetricType
    , resourceLabel : Maybe String
    }


predefinedMetricSpecificationDecoder : JD.Decoder PredefinedMetricSpecification
predefinedMetricSpecificationDecoder =
    JD.succeed PredefinedMetricSpecification
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PredefinedMetricType", "predefinedMetricType" ]
                metricTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceLabel", "resourceLabel" ]
                JD.string
            )


{-|

<p>Describes a process type.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html#process-types">Scaling Processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>

-}
type alias ProcessType =
    { processName : String
    }


processTypeDecoder : JD.Decoder ProcessType
processTypeDecoder =
    JD.succeed ProcessType
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ProcessName", "processName" ]
                JD.string
            )


{-| Type of HTTP response from proce
-}
type alias ProcessesType =
    { processes : Maybe (List ProcessType)
    }


processesTypeDecoder : JD.Decoder ProcessesType
processesTypeDecoder =
    JD.succeed ProcessesType
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Processes", "processes" ]
                (JD.list processTypeDecoder)
            )


{-| Type of HTTP response from putLifecycleHo
-}
type alias PutLifecycleHookAnswer =
    {}


putLifecycleHookAnswerDecoder : JD.Decoder PutLifecycleHookAnswer
putLifecycleHookAnswerDecoder =
    JD.succeed PutLifecycleHookAnswer


{-| Type of HTTP response from recordLifecycleActionHeartbe
-}
type alias RecordLifecycleActionHeartbeatAnswer =
    {}


recordLifecycleActionHeartbeatAnswerDecoder : JD.Decoder RecordLifecycleActionHeartbeatAnswer
recordLifecycleActionHeartbeatAnswerDecoder =
    JD.succeed RecordLifecycleActionHeartbeatAnswer


{-| One of

  - `ScalingActivityStatusCode_PendingSpotBidPlacement`
  - `ScalingActivityStatusCode_WaitingForSpotInstanceRequestId`
  - `ScalingActivityStatusCode_WaitingForSpotInstanceId`
  - `ScalingActivityStatusCode_WaitingForInstanceId`
  - `ScalingActivityStatusCode_PreInService`
  - `ScalingActivityStatusCode_InProgress`
  - `ScalingActivityStatusCode_WaitingForELBConnectionDraining`
  - `ScalingActivityStatusCode_MidLifecycleAction`
  - `ScalingActivityStatusCode_WaitingForInstanceWarmup`
  - `ScalingActivityStatusCode_Successful`
  - `ScalingActivityStatusCode_Failed`
  - `ScalingActivityStatusCode_Cancelled`

-}
type ScalingActivityStatusCode
    = ScalingActivityStatusCode_PendingSpotBidPlacement
    | ScalingActivityStatusCode_WaitingForSpotInstanceRequestId
    | ScalingActivityStatusCode_WaitingForSpotInstanceId
    | ScalingActivityStatusCode_WaitingForInstanceId
    | ScalingActivityStatusCode_PreInService
    | ScalingActivityStatusCode_InProgress
    | ScalingActivityStatusCode_WaitingForELBConnectionDraining
    | ScalingActivityStatusCode_MidLifecycleAction
    | ScalingActivityStatusCode_WaitingForInstanceWarmup
    | ScalingActivityStatusCode_Successful
    | ScalingActivityStatusCode_Failed
    | ScalingActivityStatusCode_Cancelled


scalingActivityStatusCodeDecoder : JD.Decoder ScalingActivityStatusCode
scalingActivityStatusCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PendingSpotBidPlacement" ->
                        JD.succeed ScalingActivityStatusCode_PendingSpotBidPlacement

                    "WaitingForSpotInstanceRequestId" ->
                        JD.succeed ScalingActivityStatusCode_WaitingForSpotInstanceRequestId

                    "WaitingForSpotInstanceId" ->
                        JD.succeed ScalingActivityStatusCode_WaitingForSpotInstanceId

                    "WaitingForInstanceId" ->
                        JD.succeed ScalingActivityStatusCode_WaitingForInstanceId

                    "PreInService" ->
                        JD.succeed ScalingActivityStatusCode_PreInService

                    "InProgress" ->
                        JD.succeed ScalingActivityStatusCode_InProgress

                    "WaitingForELBConnectionDraining" ->
                        JD.succeed ScalingActivityStatusCode_WaitingForELBConnectionDraining

                    "MidLifecycleAction" ->
                        JD.succeed ScalingActivityStatusCode_MidLifecycleAction

                    "WaitingForInstanceWarmup" ->
                        JD.succeed ScalingActivityStatusCode_WaitingForInstanceWarmup

                    "Successful" ->
                        JD.succeed ScalingActivityStatusCode_Successful

                    "Failed" ->
                        JD.succeed ScalingActivityStatusCode_Failed

                    "Cancelled" ->
                        JD.succeed ScalingActivityStatusCode_Cancelled

                    _ ->
                        JD.fail "bad thing"
            )


scalingActivityStatusCodeToString : ScalingActivityStatusCode -> String
scalingActivityStatusCodeToString val =
    case val of
        ScalingActivityStatusCode_PendingSpotBidPlacement ->
            "PendingSpotBidPlacement"

        ScalingActivityStatusCode_WaitingForSpotInstanceRequestId ->
            "WaitingForSpotInstanceRequestId"

        ScalingActivityStatusCode_WaitingForSpotInstanceId ->
            "WaitingForSpotInstanceId"

        ScalingActivityStatusCode_WaitingForInstanceId ->
            "WaitingForInstanceId"

        ScalingActivityStatusCode_PreInService ->
            "PreInService"

        ScalingActivityStatusCode_InProgress ->
            "InProgress"

        ScalingActivityStatusCode_WaitingForELBConnectionDraining ->
            "WaitingForELBConnectionDraining"

        ScalingActivityStatusCode_MidLifecycleAction ->
            "MidLifecycleAction"

        ScalingActivityStatusCode_WaitingForInstanceWarmup ->
            "WaitingForInstanceWarmup"

        ScalingActivityStatusCode_Successful ->
            "Successful"

        ScalingActivityStatusCode_Failed ->
            "Failed"

        ScalingActivityStatusCode_Cancelled ->
            "Cancelled"


{-|

<p>Describes a scaling policy.</p>

-}
type alias ScalingPolicy =
    { autoScalingGroupName : Maybe String
    , policyName : Maybe String
    , policyARN : Maybe String
    , policyType : Maybe String
    , adjustmentType : Maybe String
    , minAdjustmentStep : Maybe Int
    , minAdjustmentMagnitude : Maybe Int
    , scalingAdjustment : Maybe Int
    , cooldown : Maybe Int
    , stepAdjustments : Maybe (List StepAdjustment)
    , metricAggregationType : Maybe String
    , estimatedInstanceWarmup : Maybe Int
    , alarms : Maybe (List Alarm)
    , targetTrackingConfiguration : Maybe TargetTrackingConfiguration
    }


scalingPolicyDecoder : JD.Decoder ScalingPolicy
scalingPolicyDecoder =
    JD.succeed ScalingPolicy
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoScalingGroupName", "autoScalingGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyName", "policyName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyARN", "policyARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyType", "policyType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AdjustmentType", "adjustmentType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MinAdjustmentStep", "minAdjustmentStep" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MinAdjustmentMagnitude", "minAdjustmentMagnitude" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ScalingAdjustment", "scalingAdjustment" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cooldown", "cooldown" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StepAdjustments", "stepAdjustments" ]
                (JD.list stepAdjustmentDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MetricAggregationType", "metricAggregationType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EstimatedInstanceWarmup", "estimatedInstanceWarmup" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Alarms", "alarms" ]
                (JD.list alarmDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetTrackingConfiguration", "targetTrackingConfiguration" ]
                targetTrackingConfigurationDecoder
            )


{-| Type of HTTP response from scheduledAct
-}
type alias ScheduledActionsType =
    { scheduledUpdateGroupActions : Maybe (List ScheduledUpdateGroupAction)
    , nextToken : Maybe String
    }


scheduledActionsTypeDecoder : JD.Decoder ScheduledActionsType
scheduledActionsTypeDecoder =
    JD.succeed ScheduledActionsType
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ScheduledUpdateGroupActions", "scheduledUpdateGroupActions" ]
                (JD.list scheduledUpdateGroupActionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-|

<p>Describes a scheduled scaling action. Used in response to <a>DescribeScheduledActions</a>. </p>

-}
type alias ScheduledUpdateGroupAction =
    { autoScalingGroupName : Maybe String
    , scheduledActionName : Maybe String
    , scheduledActionARN : Maybe String
    , time : Maybe Posix
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , recurrence : Maybe String
    , minSize : Maybe Int
    , maxSize : Maybe Int
    , desiredCapacity : Maybe Int
    }


scheduledUpdateGroupActionDecoder : JD.Decoder ScheduledUpdateGroupAction
scheduledUpdateGroupActionDecoder =
    JD.succeed ScheduledUpdateGroupAction
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoScalingGroupName", "autoScalingGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ScheduledActionName", "scheduledActionName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ScheduledActionARN", "scheduledActionARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Time", "time" ]
                JDX.datetime
            )
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
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Recurrence", "recurrence" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MinSize", "minSize" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaxSize", "maxSize" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DesiredCapacity", "desiredCapacity" ]
                JD.int
            )


{-|

<p>Describes one or more scheduled scaling action updates for a specified Auto Scaling group. Used in combination with <a>BatchPutScheduledUpdateGroupAction</a>.</p> <p>When updating a scheduled scaling action, all optional parameters are left unchanged if not specified. </p>

-}
type alias ScheduledUpdateGroupActionRequest =
    { scheduledActionName : String
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , recurrence : Maybe String
    , minSize : Maybe Int
    , maxSize : Maybe Int
    , desiredCapacity : Maybe Int
    }


scheduledUpdateGroupActionRequestDecoder : JD.Decoder ScheduledUpdateGroupActionRequest
scheduledUpdateGroupActionRequestDecoder =
    JD.succeed ScheduledUpdateGroupActionRequest
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ScheduledActionName", "scheduledActionName" ]
                JD.string
            )
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
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Recurrence", "recurrence" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MinSize", "minSize" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaxSize", "maxSize" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DesiredCapacity", "desiredCapacity" ]
                JD.int
            )


{-| Type of HTTP response from setInstanceProtecti
-}
type alias SetInstanceProtectionAnswer =
    {}


setInstanceProtectionAnswerDecoder : JD.Decoder SetInstanceProtectionAnswer
setInstanceProtectionAnswerDecoder =
    JD.succeed SetInstanceProtectionAnswer


{-|

<p>Describes an adjustment based on the difference between the value of the aggregated CloudWatch metric and the breach threshold that you've defined for the alarm. Used in combination with <a>PutScalingPolicy</a>.</p> <p>For the following examples, suppose that you have an alarm with a breach threshold of 50:</p> <ul> <li> <p>To trigger the adjustment when the metric is greater than or equal to 50 and less than 60, specify a lower bound of 0 and an upper bound of 10.</p> </li> <li> <p>To trigger the adjustment when the metric is greater than 40 and less than or equal to 50, specify a lower bound of -10 and an upper bound of 0.</p> </li> </ul> <p>There are a few rules for the step adjustments for your step policy:</p> <ul> <li> <p>The ranges of your step adjustments can't overlap or have a gap.</p> </li> <li> <p>At most, one step adjustment can have a null lower bound. If one step adjustment has a negative lower bound, then there must be a step adjustment with a null lower bound.</p> </li> <li> <p>At most, one step adjustment can have a null upper bound. If one step adjustment has a positive upper bound, then there must be a step adjustment with a null upper bound.</p> </li> <li> <p>The upper and lower bound can't be null in the same step adjustment.</p> </li> </ul>

-}
type alias StepAdjustment =
    { metricIntervalLowerBound : Maybe Float
    , metricIntervalUpperBound : Maybe Float
    , scalingAdjustment : Int
    }


stepAdjustmentDecoder : JD.Decoder StepAdjustment
stepAdjustmentDecoder =
    JD.succeed StepAdjustment
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MetricIntervalLowerBound", "metricIntervalLowerBound" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MetricIntervalUpperBound", "metricIntervalUpperBound" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ScalingAdjustment", "scalingAdjustment" ]
                JD.int
            )


{-|

<p>Describes an automatic scaling process that has been suspended. For more information, see <a>ProcessType</a>.</p>

-}
type alias SuspendedProcess =
    { processName : Maybe String
    , suspensionReason : Maybe String
    }


suspendedProcessDecoder : JD.Decoder SuspendedProcess
suspendedProcessDecoder =
    JD.succeed SuspendedProcess
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProcessName", "processName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SuspensionReason", "suspensionReason" ]
                JD.string
            )


{-|

<p>Describes a tag for an Auto Scaling group.</p>

-}
type alias Tag =
    { resourceId : Maybe String
    , resourceType : Maybe String
    , key : String
    , value : Maybe String
    , propagateAtLaunch : Maybe Bool
    }


tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceId", "resourceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceType", "resourceType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
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
                [ "PropagateAtLaunch", "propagateAtLaunch" ]
                JD.bool
            )


{-|

<p>Describes a tag for an Auto Scaling group.</p>

-}
type alias TagDescription =
    { resourceId : Maybe String
    , resourceType : Maybe String
    , key : Maybe String
    , value : Maybe String
    , propagateAtLaunch : Maybe Bool
    }


tagDescriptionDecoder : JD.Decoder TagDescription
tagDescriptionDecoder =
    JD.succeed TagDescription
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceId", "resourceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceType", "resourceType" ]
                JD.string
            )
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
                [ "PropagateAtLaunch", "propagateAtLaunch" ]
                JD.bool
            )


{-| Type of HTTP response from
-}
type alias TagsType =
    { tags : Maybe (List TagDescription)
    , nextToken : Maybe String
    }


tagsTypeDecoder : JD.Decoder TagsType
tagsTypeDecoder =
    JD.succeed TagsType
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDescriptionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-|

<p>Represents a target tracking scaling policy configuration to use with Amazon EC2 Auto Scaling.</p>

-}
type alias TargetTrackingConfiguration =
    { predefinedMetricSpecification : Maybe PredefinedMetricSpecification
    , customizedMetricSpecification : Maybe CustomizedMetricSpecification
    , targetValue : Float
    , disableScaleIn : Maybe Bool
    }


targetTrackingConfigurationDecoder : JD.Decoder TargetTrackingConfiguration
targetTrackingConfigurationDecoder =
    JD.succeed TargetTrackingConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PredefinedMetricSpecification", "predefinedMetricSpecification" ]
                predefinedMetricSpecificationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CustomizedMetricSpecification", "customizedMetricSpecification" ]
                customizedMetricSpecificationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "TargetValue", "targetValue" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DisableScaleIn", "disableScaleIn" ]
                JD.bool
            )


{-| undefined
-}
type alias AttachInstancesQuery =
    { instanceIds : Maybe (List String)
    , autoScalingGroupName : String
    }


{-| undefined
-}
type alias AttachLoadBalancerTargetGroupsType =
    { autoScalingGroupName : String
    , targetGroupARNs : List String
    }


{-| undefined
-}
type alias AttachLoadBalancersType =
    { autoScalingGroupName : String
    , loadBalancerNames : List String
    }


{-| undefined
-}
type alias AutoScalingGroupNamesType =
    { autoScalingGroupNames : Maybe (List String)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-| undefined
-}
type alias BatchDeleteScheduledActionType =
    { autoScalingGroupName : String
    , scheduledActionNames : List String
    }


{-| undefined
-}
type alias BatchPutScheduledUpdateGroupActionType =
    { autoScalingGroupName : String
    , scheduledUpdateGroupActions : List ScheduledUpdateGroupActionRequest
    }


{-| undefined
-}
type alias CompleteLifecycleActionType =
    { lifecycleHookName : String
    , autoScalingGroupName : String
    , lifecycleActionToken : Maybe String
    , lifecycleActionResult : String
    , instanceId : Maybe String
    }


{-| undefined
-}
type alias CreateAutoScalingGroupType =
    { autoScalingGroupName : String
    , launchConfigurationName : Maybe String
    , launchTemplate : Maybe LaunchTemplateSpecification
    , mixedInstancesPolicy : Maybe MixedInstancesPolicy
    , instanceId : Maybe String
    , minSize : Int
    , maxSize : Int
    , desiredCapacity : Maybe Int
    , defaultCooldown : Maybe Int
    , availabilityZones : Maybe (List String)
    , loadBalancerNames : Maybe (List String)
    , targetGroupARNs : Maybe (List String)
    , healthCheckType : Maybe String
    , healthCheckGracePeriod : Maybe Int
    , placementGroup : Maybe String
    , vPCZoneIdentifier : Maybe String
    , terminationPolicies : Maybe (List String)
    , newInstancesProtectedFromScaleIn : Maybe Bool
    , lifecycleHookSpecificationList : Maybe (List LifecycleHookSpecification)
    , tags : Maybe (List Tag)
    , serviceLinkedRoleARN : Maybe String
    }


{-| undefined
-}
type alias CreateLaunchConfigurationType =
    { launchConfigurationName : String
    , imageId : Maybe String
    , keyName : Maybe String
    , securityGroups : Maybe (List String)
    , classicLinkVPCId : Maybe String
    , classicLinkVPCSecurityGroups : Maybe (List String)
    , userData : Maybe String
    , instanceId : Maybe String
    , instanceType : Maybe String
    , kernelId : Maybe String
    , ramdiskId : Maybe String
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , instanceMonitoring : Maybe InstanceMonitoring
    , spotPrice : Maybe String
    , iamInstanceProfile : Maybe String
    , ebsOptimized : Maybe Bool
    , associatePublicIpAddress : Maybe Bool
    , placementTenancy : Maybe String
    }


{-| undefined
-}
type alias CreateOrUpdateTagsType =
    { tags : List Tag
    }


{-| undefined
-}
type alias DeleteAutoScalingGroupType =
    { autoScalingGroupName : String
    , forceDelete : Maybe Bool
    }


{-| undefined
-}
type alias DeleteLifecycleHookType =
    { lifecycleHookName : String
    , autoScalingGroupName : String
    }


{-| undefined
-}
type alias DeleteNotificationConfigurationType =
    { autoScalingGroupName : String
    , topicARN : String
    }


{-| undefined
-}
type alias DeletePolicyType =
    { autoScalingGroupName : Maybe String
    , policyName : String
    }


{-| undefined
-}
type alias DeleteScheduledActionType =
    { autoScalingGroupName : String
    , scheduledActionName : String
    }


{-| undefined
-}
type alias DeleteTagsType =
    { tags : List Tag
    }


{-| undefined
-}
type alias DescribeAutoScalingInstancesType =
    { instanceIds : Maybe (List String)
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeLifecycleHooksType =
    { autoScalingGroupName : String
    , lifecycleHookNames : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeLoadBalancerTargetGroupsRequest =
    { autoScalingGroupName : String
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-| undefined
-}
type alias DescribeLoadBalancersRequest =
    { autoScalingGroupName : String
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-| undefined
-}
type alias DescribeNotificationConfigurationsType =
    { autoScalingGroupNames : Maybe (List String)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-| undefined
-}
type alias DescribePoliciesType =
    { autoScalingGroupName : Maybe String
    , policyNames : Maybe (List String)
    , policyTypes : Maybe (List String)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-| undefined
-}
type alias DescribeScalingActivitiesType =
    { activityIds : Maybe (List String)
    , autoScalingGroupName : Maybe String
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeScheduledActionsType =
    { autoScalingGroupName : Maybe String
    , scheduledActionNames : Maybe (List String)
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-| undefined
-}
type alias DescribeTagsType =
    { filters : Maybe (List Filter)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-| undefined
-}
type alias DetachInstancesQuery =
    { instanceIds : Maybe (List String)
    , autoScalingGroupName : String
    , shouldDecrementDesiredCapacity : Bool
    }


{-| undefined
-}
type alias DetachLoadBalancerTargetGroupsType =
    { autoScalingGroupName : String
    , targetGroupARNs : List String
    }


{-| undefined
-}
type alias DetachLoadBalancersType =
    { autoScalingGroupName : String
    , loadBalancerNames : List String
    }


{-| undefined
-}
type alias DisableMetricsCollectionQuery =
    { autoScalingGroupName : String
    , metrics : Maybe (List String)
    }


{-| undefined
-}
type alias EnableMetricsCollectionQuery =
    { autoScalingGroupName : String
    , metrics : Maybe (List String)
    , granularity : String
    }


{-| undefined
-}
type alias EnterStandbyQuery =
    { instanceIds : Maybe (List String)
    , autoScalingGroupName : String
    , shouldDecrementDesiredCapacity : Bool
    }


{-| undefined
-}
type alias ExecutePolicyType =
    { autoScalingGroupName : Maybe String
    , policyName : String
    , honorCooldown : Maybe Bool
    , metricValue : Maybe Float
    , breachThreshold : Maybe Float
    }


{-| undefined
-}
type alias ExitStandbyQuery =
    { instanceIds : Maybe (List String)
    , autoScalingGroupName : String
    }


{-| undefined
-}
type alias LaunchConfigurationNameType =
    { launchConfigurationName : String
    }


{-| undefined
-}
type alias LaunchConfigurationNamesType =
    { launchConfigurationNames : Maybe (List String)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }


{-| undefined
-}
type alias PutLifecycleHookType =
    { lifecycleHookName : String
    , autoScalingGroupName : String
    , lifecycleTransition : Maybe String
    , roleARN : Maybe String
    , notificationTargetARN : Maybe String
    , notificationMetadata : Maybe String
    , heartbeatTimeout : Maybe Int
    , defaultResult : Maybe String
    }


{-| undefined
-}
type alias PutNotificationConfigurationType =
    { autoScalingGroupName : String
    , topicARN : String
    , notificationTypes : List String
    }


{-| undefined
-}
type alias PutScalingPolicyType =
    { autoScalingGroupName : String
    , policyName : String
    , policyType : Maybe String
    , adjustmentType : Maybe String
    , minAdjustmentStep : Maybe Int
    , minAdjustmentMagnitude : Maybe Int
    , scalingAdjustment : Maybe Int
    , cooldown : Maybe Int
    , metricAggregationType : Maybe String
    , stepAdjustments : Maybe (List StepAdjustment)
    , estimatedInstanceWarmup : Maybe Int
    , targetTrackingConfiguration : Maybe TargetTrackingConfiguration
    }


{-| undefined
-}
type alias PutScheduledUpdateGroupActionType =
    { autoScalingGroupName : String
    , scheduledActionName : String
    , time : Maybe Posix
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , recurrence : Maybe String
    , minSize : Maybe Int
    , maxSize : Maybe Int
    , desiredCapacity : Maybe Int
    }


{-| undefined
-}
type alias RecordLifecycleActionHeartbeatType =
    { lifecycleHookName : String
    , autoScalingGroupName : String
    , lifecycleActionToken : Maybe String
    , instanceId : Maybe String
    }


{-| undefined
-}
type alias ScalingProcessQuery =
    { autoScalingGroupName : String
    , scalingProcesses : Maybe (List String)
    }


{-| undefined
-}
type alias SetDesiredCapacityType =
    { autoScalingGroupName : String
    , desiredCapacity : Int
    , honorCooldown : Maybe Bool
    }


{-| undefined
-}
type alias SetInstanceHealthQuery =
    { instanceId : String
    , healthStatus : String
    , shouldRespectGracePeriod : Maybe Bool
    }


{-| undefined
-}
type alias SetInstanceProtectionQuery =
    { instanceIds : List String
    , autoScalingGroupName : String
    , protectedFromScaleIn : Bool
    }


{-| undefined
-}
type alias TerminateInstanceInAutoScalingGroupType =
    { instanceId : String
    , shouldDecrementDesiredCapacity : Bool
    }


{-| undefined
-}
type alias UpdateAutoScalingGroupType =
    { autoScalingGroupName : String
    , launchConfigurationName : Maybe String
    , launchTemplate : Maybe LaunchTemplateSpecification
    , mixedInstancesPolicy : Maybe MixedInstancesPolicy
    , minSize : Maybe Int
    , maxSize : Maybe Int
    , desiredCapacity : Maybe Int
    , defaultCooldown : Maybe Int
    , availabilityZones : Maybe (List String)
    , healthCheckType : Maybe String
    , healthCheckGracePeriod : Maybe Int
    , placementGroup : Maybe String
    , vPCZoneIdentifier : Maybe String
    , terminationPolicies : Maybe (List String)
    , newInstancesProtectedFromScaleIn : Maybe Bool
    , serviceLinkedRoleARN : Maybe String
    }


activitiesTypeEncoder : ActivitiesType -> List ( String, String )
activitiesTypeEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs activityEncoder "") "Activities" data.activities
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


activityEncoder : Activity -> List ( String, String )
activityEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ActivityId" data.activityId
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "Cause" data.cause
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "StartTime" data.startTime
        |> (case data.endTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EndTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs scalingActivityStatusCodeToString "StatusCode" data.statusCode
        |> (case data.statusMessage of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "StatusMessage" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.progress of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Progress" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.details of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Details" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


activityTypeEncoder : ActivityType -> List ( String, String )
activityTypeEncoder data =
    []
        |> (case data.activity of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs activityEncoder "Activity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


adjustmentTypeEncoder : AdjustmentType -> List ( String, String )
adjustmentTypeEncoder data =
    []
        |> (case data.adjustmentType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AdjustmentType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


alarmEncoder : Alarm -> List ( String, String )
alarmEncoder data =
    []
        |> (case data.alarmName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AlarmName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.alarmARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AlarmARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


attachInstancesQueryEncoder : AttachInstancesQuery -> List ( String, String )
attachInstancesQueryEncoder data =
    []
        |> (case data.instanceIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "InstanceIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName


attachLoadBalancerTargetGroupsResultTypeEncoder : AttachLoadBalancerTargetGroupsResultType -> List ( String, String )
attachLoadBalancerTargetGroupsResultTypeEncoder data =
    []


attachLoadBalancerTargetGroupsTypeEncoder : AttachLoadBalancerTargetGroupsType -> List ( String, String )
attachLoadBalancerTargetGroupsTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TargetGroupARNs" data.targetGroupARNs


attachLoadBalancersResultTypeEncoder : AttachLoadBalancersResultType -> List ( String, String )
attachLoadBalancersResultTypeEncoder data =
    []


attachLoadBalancersTypeEncoder : AttachLoadBalancersType -> List ( String, String )
attachLoadBalancersTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LoadBalancerNames" data.loadBalancerNames


autoScalingGroupEncoder : AutoScalingGroup -> List ( String, String )
autoScalingGroupEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> (case data.autoScalingGroupARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.launchConfigurationName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LaunchConfigurationName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.launchTemplate of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs launchTemplateSpecificationEncoder "LaunchTemplate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.mixedInstancesPolicy of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs mixedInstancesPolicyEncoder "MixedInstancesPolicy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinSize" data.minSize
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxSize" data.maxSize
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "DesiredCapacity" data.desiredCapacity
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "DefaultCooldown" data.defaultCooldown
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AvailabilityZones" data.availabilityZones
        |> (case data.loadBalancerNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LoadBalancerNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.targetGroupARNs of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TargetGroupARNs" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "HealthCheckType" data.healthCheckType
        |> (case data.healthCheckGracePeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "HealthCheckGracePeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.instances of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs instanceEncoder "") "Instances" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreatedTime" data.createdTime
        |> (case data.suspendedProcesses of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs suspendedProcessEncoder "") "SuspendedProcesses" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.placementGroup of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PlacementGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.vPCZoneIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "VPCZoneIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.enabledMetrics of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs enabledMetricEncoder "") "EnabledMetrics" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagDescriptionEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.terminationPolicies of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TerminationPolicies" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.newInstancesProtectedFromScaleIn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "NewInstancesProtectedFromScaleIn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceLinkedRoleARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ServiceLinkedRoleARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


autoScalingGroupNamesTypeEncoder : AutoScalingGroupNamesType -> List ( String, String )
autoScalingGroupNamesTypeEncoder data =
    []
        |> (case data.autoScalingGroupNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AutoScalingGroupNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


autoScalingGroupsTypeEncoder : AutoScalingGroupsType -> List ( String, String )
autoScalingGroupsTypeEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs autoScalingGroupEncoder "") "AutoScalingGroups" data.autoScalingGroups
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


autoScalingInstanceDetailsEncoder : AutoScalingInstanceDetails -> List ( String, String )
autoScalingInstanceDetailsEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "InstanceId" data.instanceId
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "AvailabilityZone" data.availabilityZone
        |> AWS.Core.Encode.addOneToQueryArgs identity "LifecycleState" data.lifecycleState
        |> AWS.Core.Encode.addOneToQueryArgs identity "HealthStatus" data.healthStatus
        |> (case data.launchConfigurationName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LaunchConfigurationName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.launchTemplate of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs launchTemplateSpecificationEncoder "LaunchTemplate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ProtectedFromScaleIn" data.protectedFromScaleIn


autoScalingInstancesTypeEncoder : AutoScalingInstancesType -> List ( String, String )
autoScalingInstancesTypeEncoder data =
    []
        |> (case data.autoScalingInstances of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs autoScalingInstanceDetailsEncoder "") "AutoScalingInstances" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


batchDeleteScheduledActionAnswerEncoder : BatchDeleteScheduledActionAnswer -> List ( String, String )
batchDeleteScheduledActionAnswerEncoder data =
    []
        |> (case data.failedScheduledActions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs failedScheduledUpdateGroupActionRequestEncoder "") "FailedScheduledActions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


batchDeleteScheduledActionTypeEncoder : BatchDeleteScheduledActionType -> List ( String, String )
batchDeleteScheduledActionTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ScheduledActionNames" data.scheduledActionNames


batchPutScheduledUpdateGroupActionAnswerEncoder : BatchPutScheduledUpdateGroupActionAnswer -> List ( String, String )
batchPutScheduledUpdateGroupActionAnswerEncoder data =
    []
        |> (case data.failedScheduledUpdateGroupActions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs failedScheduledUpdateGroupActionRequestEncoder "") "FailedScheduledUpdateGroupActions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


batchPutScheduledUpdateGroupActionTypeEncoder : BatchPutScheduledUpdateGroupActionType -> List ( String, String )
batchPutScheduledUpdateGroupActionTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs scheduledUpdateGroupActionRequestEncoder "") "ScheduledUpdateGroupActions" data.scheduledUpdateGroupActions


blockDeviceMappingEncoder : BlockDeviceMapping -> List ( String, String )
blockDeviceMappingEncoder data =
    []
        |> (case data.virtualName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "VirtualName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "DeviceName" data.deviceName
        |> (case data.ebs of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs ebsEncoder "Ebs" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.noDevice of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "NoDevice" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


completeLifecycleActionAnswerEncoder : CompleteLifecycleActionAnswer -> List ( String, String )
completeLifecycleActionAnswerEncoder data =
    []


completeLifecycleActionTypeEncoder : CompleteLifecycleActionType -> List ( String, String )
completeLifecycleActionTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "LifecycleHookName" data.lifecycleHookName
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> (case data.lifecycleActionToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LifecycleActionToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "LifecycleActionResult" data.lifecycleActionResult
        |> (case data.instanceId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "InstanceId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createAutoScalingGroupTypeEncoder : CreateAutoScalingGroupType -> List ( String, String )
createAutoScalingGroupTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> (case data.launchConfigurationName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LaunchConfigurationName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.launchTemplate of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs launchTemplateSpecificationEncoder "LaunchTemplate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.mixedInstancesPolicy of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs mixedInstancesPolicyEncoder "MixedInstancesPolicy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.instanceId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "InstanceId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinSize" data.minSize
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxSize" data.maxSize
        |> (case data.desiredCapacity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "DesiredCapacity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.defaultCooldown of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "DefaultCooldown" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.availabilityZones of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AvailabilityZones" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.loadBalancerNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LoadBalancerNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.targetGroupARNs of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TargetGroupARNs" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.healthCheckType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HealthCheckType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.healthCheckGracePeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "HealthCheckGracePeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.placementGroup of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PlacementGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.vPCZoneIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "VPCZoneIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.terminationPolicies of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TerminationPolicies" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.newInstancesProtectedFromScaleIn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "NewInstancesProtectedFromScaleIn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.lifecycleHookSpecificationList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs lifecycleHookSpecificationEncoder "") "LifecycleHookSpecificationList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceLinkedRoleARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ServiceLinkedRoleARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createLaunchConfigurationTypeEncoder : CreateLaunchConfigurationType -> List ( String, String )
createLaunchConfigurationTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "LaunchConfigurationName" data.launchConfigurationName
        |> (case data.imageId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ImageId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.keyName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "KeyName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.securityGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SecurityGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.classicLinkVPCId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClassicLinkVPCId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.classicLinkVPCSecurityGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ClassicLinkVPCSecurityGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.userData of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "UserData" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.instanceId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "InstanceId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.instanceType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "InstanceType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.kernelId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "KernelId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.ramdiskId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "RamdiskId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.blockDeviceMappings of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs blockDeviceMappingEncoder "") "BlockDeviceMappings" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.instanceMonitoring of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs instanceMonitoringEncoder "InstanceMonitoring" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.spotPrice of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SpotPrice" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.iamInstanceProfile of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "IamInstanceProfile" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.ebsOptimized of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EbsOptimized" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.associatePublicIpAddress of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AssociatePublicIpAddress" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.placementTenancy of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PlacementTenancy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createOrUpdateTagsTypeEncoder : CreateOrUpdateTagsType -> List ( String, String )
createOrUpdateTagsTypeEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" data.tags


customizedMetricSpecificationEncoder : CustomizedMetricSpecification -> List ( String, String )
customizedMetricSpecificationEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "MetricName" data.metricName
        |> AWS.Core.Encode.addOneToQueryArgs identity "Namespace" data.namespace
        |> (case data.dimensions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs metricDimensionEncoder "") "Dimensions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs metricStatisticToString "Statistic" data.statistic
        |> (case data.unit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Unit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deleteAutoScalingGroupTypeEncoder : DeleteAutoScalingGroupType -> List ( String, String )
deleteAutoScalingGroupTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> (case data.forceDelete of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ForceDelete" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deleteLifecycleHookAnswerEncoder : DeleteLifecycleHookAnswer -> List ( String, String )
deleteLifecycleHookAnswerEncoder data =
    []


deleteLifecycleHookTypeEncoder : DeleteLifecycleHookType -> List ( String, String )
deleteLifecycleHookTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "LifecycleHookName" data.lifecycleHookName
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName


deleteNotificationConfigurationTypeEncoder : DeleteNotificationConfigurationType -> List ( String, String )
deleteNotificationConfigurationTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "TopicARN" data.topicARN


deletePolicyTypeEncoder : DeletePolicyType -> List ( String, String )
deletePolicyTypeEncoder data =
    []
        |> (case data.autoScalingGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "PolicyName" data.policyName


deleteScheduledActionTypeEncoder : DeleteScheduledActionType -> List ( String, String )
deleteScheduledActionTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "ScheduledActionName" data.scheduledActionName


deleteTagsTypeEncoder : DeleteTagsType -> List ( String, String )
deleteTagsTypeEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" data.tags


describeAccountLimitsAnswerEncoder : DescribeAccountLimitsAnswer -> List ( String, String )
describeAccountLimitsAnswerEncoder data =
    []
        |> (case data.maxNumberOfAutoScalingGroups of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxNumberOfAutoScalingGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxNumberOfLaunchConfigurations of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxNumberOfLaunchConfigurations" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.numberOfAutoScalingGroups of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumberOfAutoScalingGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.numberOfLaunchConfigurations of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "NumberOfLaunchConfigurations" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeAdjustmentTypesAnswerEncoder : DescribeAdjustmentTypesAnswer -> List ( String, String )
describeAdjustmentTypesAnswerEncoder data =
    []
        |> (case data.adjustmentTypes of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs adjustmentTypeEncoder "") "AdjustmentTypes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeAutoScalingInstancesTypeEncoder : DescribeAutoScalingInstancesType -> List ( String, String )
describeAutoScalingInstancesTypeEncoder data =
    []
        |> (case data.instanceIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "InstanceIds" value

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


describeAutoScalingNotificationTypesAnswerEncoder : DescribeAutoScalingNotificationTypesAnswer -> List ( String, String )
describeAutoScalingNotificationTypesAnswerEncoder data =
    []
        |> (case data.autoScalingNotificationTypes of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AutoScalingNotificationTypes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeLifecycleHookTypesAnswerEncoder : DescribeLifecycleHookTypesAnswer -> List ( String, String )
describeLifecycleHookTypesAnswerEncoder data =
    []
        |> (case data.lifecycleHookTypes of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LifecycleHookTypes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeLifecycleHooksAnswerEncoder : DescribeLifecycleHooksAnswer -> List ( String, String )
describeLifecycleHooksAnswerEncoder data =
    []
        |> (case data.lifecycleHooks of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs lifecycleHookEncoder "") "LifecycleHooks" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeLifecycleHooksTypeEncoder : DescribeLifecycleHooksType -> List ( String, String )
describeLifecycleHooksTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> (case data.lifecycleHookNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LifecycleHookNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeLoadBalancerTargetGroupsRequestEncoder : DescribeLoadBalancerTargetGroupsRequest -> List ( String, String )
describeLoadBalancerTargetGroupsRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeLoadBalancerTargetGroupsResponseEncoder : DescribeLoadBalancerTargetGroupsResponse -> List ( String, String )
describeLoadBalancerTargetGroupsResponseEncoder data =
    []
        |> (case data.loadBalancerTargetGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs loadBalancerTargetGroupStateEncoder "") "LoadBalancerTargetGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeLoadBalancersRequestEncoder : DescribeLoadBalancersRequest -> List ( String, String )
describeLoadBalancersRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeLoadBalancersResponseEncoder : DescribeLoadBalancersResponse -> List ( String, String )
describeLoadBalancersResponseEncoder data =
    []
        |> (case data.loadBalancers of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs loadBalancerStateEncoder "") "LoadBalancers" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeMetricCollectionTypesAnswerEncoder : DescribeMetricCollectionTypesAnswer -> List ( String, String )
describeMetricCollectionTypesAnswerEncoder data =
    []
        |> (case data.metrics of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs metricCollectionTypeEncoder "") "Metrics" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.granularities of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs metricGranularityTypeEncoder "") "Granularities" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeNotificationConfigurationsAnswerEncoder : DescribeNotificationConfigurationsAnswer -> List ( String, String )
describeNotificationConfigurationsAnswerEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs notificationConfigurationEncoder "") "NotificationConfigurations" data.notificationConfigurations
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeNotificationConfigurationsTypeEncoder : DescribeNotificationConfigurationsType -> List ( String, String )
describeNotificationConfigurationsTypeEncoder data =
    []
        |> (case data.autoScalingGroupNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AutoScalingGroupNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describePoliciesTypeEncoder : DescribePoliciesType -> List ( String, String )
describePoliciesTypeEncoder data =
    []
        |> (case data.autoScalingGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policyNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PolicyNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policyTypes of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PolicyTypes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeScalingActivitiesTypeEncoder : DescribeScalingActivitiesType -> List ( String, String )
describeScalingActivitiesTypeEncoder data =
    []
        |> (case data.activityIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ActivityIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.autoScalingGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" value

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


describeScheduledActionsTypeEncoder : DescribeScheduledActionsType -> List ( String, String )
describeScheduledActionsTypeEncoder data =
    []
        |> (case data.autoScalingGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.scheduledActionNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ScheduledActionNames" value

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
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeTagsTypeEncoder : DescribeTagsType -> List ( String, String )
describeTagsTypeEncoder data =
    []
        |> (case data.filters of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs filterEncoder "") "Filters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeTerminationPolicyTypesAnswerEncoder : DescribeTerminationPolicyTypesAnswer -> List ( String, String )
describeTerminationPolicyTypesAnswerEncoder data =
    []
        |> (case data.terminationPolicyTypes of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TerminationPolicyTypes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


detachInstancesAnswerEncoder : DetachInstancesAnswer -> List ( String, String )
detachInstancesAnswerEncoder data =
    []
        |> (case data.activities of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs activityEncoder "") "Activities" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


detachInstancesQueryEncoder : DetachInstancesQuery -> List ( String, String )
detachInstancesQueryEncoder data =
    []
        |> (case data.instanceIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "InstanceIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ShouldDecrementDesiredCapacity" data.shouldDecrementDesiredCapacity


detachLoadBalancerTargetGroupsResultTypeEncoder : DetachLoadBalancerTargetGroupsResultType -> List ( String, String )
detachLoadBalancerTargetGroupsResultTypeEncoder data =
    []


detachLoadBalancerTargetGroupsTypeEncoder : DetachLoadBalancerTargetGroupsType -> List ( String, String )
detachLoadBalancerTargetGroupsTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TargetGroupARNs" data.targetGroupARNs


detachLoadBalancersResultTypeEncoder : DetachLoadBalancersResultType -> List ( String, String )
detachLoadBalancersResultTypeEncoder data =
    []


detachLoadBalancersTypeEncoder : DetachLoadBalancersType -> List ( String, String )
detachLoadBalancersTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LoadBalancerNames" data.loadBalancerNames


disableMetricsCollectionQueryEncoder : DisableMetricsCollectionQuery -> List ( String, String )
disableMetricsCollectionQueryEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> (case data.metrics of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Metrics" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


ebsEncoder : Ebs -> List ( String, String )
ebsEncoder data =
    []
        |> (case data.snapshotId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SnapshotId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.volumeSize of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "VolumeSize" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.volumeType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "VolumeType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.deleteOnTermination of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DeleteOnTermination" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.iops of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Iops" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.encrypted of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Encrypted" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


enableMetricsCollectionQueryEncoder : EnableMetricsCollectionQuery -> List ( String, String )
enableMetricsCollectionQueryEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> (case data.metrics of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Metrics" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "Granularity" data.granularity


enabledMetricEncoder : EnabledMetric -> List ( String, String )
enabledMetricEncoder data =
    []
        |> (case data.metric of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Metric" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.granularity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Granularity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


enterStandbyAnswerEncoder : EnterStandbyAnswer -> List ( String, String )
enterStandbyAnswerEncoder data =
    []
        |> (case data.activities of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs activityEncoder "") "Activities" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


enterStandbyQueryEncoder : EnterStandbyQuery -> List ( String, String )
enterStandbyQueryEncoder data =
    []
        |> (case data.instanceIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "InstanceIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ShouldDecrementDesiredCapacity" data.shouldDecrementDesiredCapacity


executePolicyTypeEncoder : ExecutePolicyType -> List ( String, String )
executePolicyTypeEncoder data =
    []
        |> (case data.autoScalingGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "PolicyName" data.policyName
        |> (case data.honorCooldown of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "HonorCooldown" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.metricValue of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "MetricValue" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.breachThreshold of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "BreachThreshold" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


exitStandbyAnswerEncoder : ExitStandbyAnswer -> List ( String, String )
exitStandbyAnswerEncoder data =
    []
        |> (case data.activities of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs activityEncoder "") "Activities" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


exitStandbyQueryEncoder : ExitStandbyQuery -> List ( String, String )
exitStandbyQueryEncoder data =
    []
        |> (case data.instanceIds of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "InstanceIds" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName


failedScheduledUpdateGroupActionRequestEncoder : FailedScheduledUpdateGroupActionRequest -> List ( String, String )
failedScheduledUpdateGroupActionRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ScheduledActionName" data.scheduledActionName
        |> (case data.errorCode of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ErrorCode" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.errorMessage of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ErrorMessage" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


filterEncoder : Filter -> List ( String, String )
filterEncoder data =
    []
        |> (case data.name of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Name" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.values of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Values" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


instanceEncoder : Instance -> List ( String, String )
instanceEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "InstanceId" data.instanceId
        |> AWS.Core.Encode.addOneToQueryArgs identity "AvailabilityZone" data.availabilityZone
        |> AWS.Core.Encode.addOneToQueryArgs lifecycleStateToString "LifecycleState" data.lifecycleState
        |> AWS.Core.Encode.addOneToQueryArgs identity "HealthStatus" data.healthStatus
        |> (case data.launchConfigurationName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LaunchConfigurationName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.launchTemplate of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs launchTemplateSpecificationEncoder "LaunchTemplate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ProtectedFromScaleIn" data.protectedFromScaleIn


instanceMonitoringEncoder : InstanceMonitoring -> List ( String, String )
instanceMonitoringEncoder data =
    []
        |> (case data.enabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


instancesDistributionEncoder : InstancesDistribution -> List ( String, String )
instancesDistributionEncoder data =
    []
        |> (case data.onDemandAllocationStrategy of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "OnDemandAllocationStrategy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.onDemandBaseCapacity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "OnDemandBaseCapacity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.onDemandPercentageAboveBaseCapacity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "OnDemandPercentageAboveBaseCapacity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.spotAllocationStrategy of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SpotAllocationStrategy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.spotInstancePools of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "SpotInstancePools" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.spotMaxPrice of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SpotMaxPrice" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


launchConfigurationEncoder : LaunchConfiguration -> List ( String, String )
launchConfigurationEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "LaunchConfigurationName" data.launchConfigurationName
        |> (case data.launchConfigurationARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LaunchConfigurationARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "ImageId" data.imageId
        |> (case data.keyName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "KeyName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.securityGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SecurityGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.classicLinkVPCId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ClassicLinkVPCId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.classicLinkVPCSecurityGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ClassicLinkVPCSecurityGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.userData of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "UserData" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "InstanceType" data.instanceType
        |> (case data.kernelId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "KernelId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.ramdiskId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "RamdiskId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.blockDeviceMappings of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs blockDeviceMappingEncoder "") "BlockDeviceMappings" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.instanceMonitoring of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs instanceMonitoringEncoder "InstanceMonitoring" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.spotPrice of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SpotPrice" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.iamInstanceProfile of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "IamInstanceProfile" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreatedTime" data.createdTime
        |> (case data.ebsOptimized of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EbsOptimized" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.associatePublicIpAddress of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AssociatePublicIpAddress" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.placementTenancy of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PlacementTenancy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


launchConfigurationNameTypeEncoder : LaunchConfigurationNameType -> List ( String, String )
launchConfigurationNameTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "LaunchConfigurationName" data.launchConfigurationName


launchConfigurationNamesTypeEncoder : LaunchConfigurationNamesType -> List ( String, String )
launchConfigurationNamesTypeEncoder data =
    []
        |> (case data.launchConfigurationNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LaunchConfigurationNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


launchConfigurationsTypeEncoder : LaunchConfigurationsType -> List ( String, String )
launchConfigurationsTypeEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs launchConfigurationEncoder "") "LaunchConfigurations" data.launchConfigurations
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


launchTemplateEncoder : LaunchTemplate -> List ( String, String )
launchTemplateEncoder data =
    []
        |> (case data.launchTemplateSpecification of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs launchTemplateSpecificationEncoder "LaunchTemplateSpecification" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.overrides of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs launchTemplateOverridesEncoder "") "Overrides" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


launchTemplateOverridesEncoder : LaunchTemplateOverrides -> List ( String, String )
launchTemplateOverridesEncoder data =
    []
        |> (case data.instanceType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "InstanceType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


launchTemplateSpecificationEncoder : LaunchTemplateSpecification -> List ( String, String )
launchTemplateSpecificationEncoder data =
    []
        |> (case data.launchTemplateId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LaunchTemplateId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.launchTemplateName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LaunchTemplateName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.version of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Version" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


lifecycleHookEncoder : LifecycleHook -> List ( String, String )
lifecycleHookEncoder data =
    []
        |> (case data.lifecycleHookName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LifecycleHookName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.autoScalingGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.lifecycleTransition of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LifecycleTransition" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.notificationTargetARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NotificationTargetARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.roleARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "RoleARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.notificationMetadata of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NotificationMetadata" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.heartbeatTimeout of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "HeartbeatTimeout" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.globalTimeout of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "GlobalTimeout" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.defaultResult of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DefaultResult" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


lifecycleHookSpecificationEncoder : LifecycleHookSpecification -> List ( String, String )
lifecycleHookSpecificationEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "LifecycleHookName" data.lifecycleHookName
        |> AWS.Core.Encode.addOneToQueryArgs identity "LifecycleTransition" data.lifecycleTransition
        |> (case data.notificationMetadata of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NotificationMetadata" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.heartbeatTimeout of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "HeartbeatTimeout" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.defaultResult of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DefaultResult" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.notificationTargetARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NotificationTargetARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.roleARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "RoleARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


loadBalancerStateEncoder : LoadBalancerState -> List ( String, String )
loadBalancerStateEncoder data =
    []
        |> (case data.loadBalancerName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.state of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "State" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


loadBalancerTargetGroupStateEncoder : LoadBalancerTargetGroupState -> List ( String, String )
loadBalancerTargetGroupStateEncoder data =
    []
        |> (case data.loadBalancerTargetGroupARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerTargetGroupARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.state of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "State" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


metricCollectionTypeEncoder : MetricCollectionType -> List ( String, String )
metricCollectionTypeEncoder data =
    []
        |> (case data.metric of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Metric" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


metricDimensionEncoder : MetricDimension -> List ( String, String )
metricDimensionEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Name" data.name
        |> AWS.Core.Encode.addOneToQueryArgs identity "Value" data.value


metricGranularityTypeEncoder : MetricGranularityType -> List ( String, String )
metricGranularityTypeEncoder data =
    []
        |> (case data.granularity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Granularity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


mixedInstancesPolicyEncoder : MixedInstancesPolicy -> List ( String, String )
mixedInstancesPolicyEncoder data =
    []
        |> (case data.launchTemplate of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs launchTemplateEncoder "LaunchTemplate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.instancesDistribution of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs instancesDistributionEncoder "InstancesDistribution" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


notificationConfigurationEncoder : NotificationConfiguration -> List ( String, String )
notificationConfigurationEncoder data =
    []
        |> (case data.autoScalingGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.topicARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TopicARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.notificationType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NotificationType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


policiesTypeEncoder : PoliciesType -> List ( String, String )
policiesTypeEncoder data =
    []
        |> (case data.scalingPolicies of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs scalingPolicyEncoder "") "ScalingPolicies" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


policyARNTypeEncoder : PolicyARNType -> List ( String, String )
policyARNTypeEncoder data =
    []
        |> (case data.policyARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PolicyARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.alarms of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs alarmEncoder "") "Alarms" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


predefinedMetricSpecificationEncoder : PredefinedMetricSpecification -> List ( String, String )
predefinedMetricSpecificationEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs metricTypeToString "PredefinedMetricType" data.predefinedMetricType
        |> (case data.resourceLabel of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ResourceLabel" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


processTypeEncoder : ProcessType -> List ( String, String )
processTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ProcessName" data.processName


processesTypeEncoder : ProcessesType -> List ( String, String )
processesTypeEncoder data =
    []
        |> (case data.processes of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs processTypeEncoder "") "Processes" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


putLifecycleHookAnswerEncoder : PutLifecycleHookAnswer -> List ( String, String )
putLifecycleHookAnswerEncoder data =
    []


putLifecycleHookTypeEncoder : PutLifecycleHookType -> List ( String, String )
putLifecycleHookTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "LifecycleHookName" data.lifecycleHookName
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> (case data.lifecycleTransition of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LifecycleTransition" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.roleARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "RoleARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.notificationTargetARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NotificationTargetARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.notificationMetadata of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NotificationMetadata" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.heartbeatTimeout of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "HeartbeatTimeout" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.defaultResult of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DefaultResult" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


putNotificationConfigurationTypeEncoder : PutNotificationConfigurationType -> List ( String, String )
putNotificationConfigurationTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "TopicARN" data.topicARN
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "NotificationTypes" data.notificationTypes


putScalingPolicyTypeEncoder : PutScalingPolicyType -> List ( String, String )
putScalingPolicyTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "PolicyName" data.policyName
        |> (case data.policyType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PolicyType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.adjustmentType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AdjustmentType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.minAdjustmentStep of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinAdjustmentStep" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.minAdjustmentMagnitude of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinAdjustmentMagnitude" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.scalingAdjustment of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ScalingAdjustment" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cooldown of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Cooldown" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.metricAggregationType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MetricAggregationType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.stepAdjustments of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs stepAdjustmentEncoder "") "StepAdjustments" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.estimatedInstanceWarmup of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "EstimatedInstanceWarmup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.targetTrackingConfiguration of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs targetTrackingConfigurationEncoder "TargetTrackingConfiguration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


putScheduledUpdateGroupActionTypeEncoder : PutScheduledUpdateGroupActionType -> List ( String, String )
putScheduledUpdateGroupActionTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addOneToQueryArgs identity "ScheduledActionName" data.scheduledActionName
        |> (case data.time of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Time" value

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
        |> (case data.recurrence of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Recurrence" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.minSize of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinSize" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxSize of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxSize" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.desiredCapacity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "DesiredCapacity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


recordLifecycleActionHeartbeatAnswerEncoder : RecordLifecycleActionHeartbeatAnswer -> List ( String, String )
recordLifecycleActionHeartbeatAnswerEncoder data =
    []


recordLifecycleActionHeartbeatTypeEncoder : RecordLifecycleActionHeartbeatType -> List ( String, String )
recordLifecycleActionHeartbeatTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "LifecycleHookName" data.lifecycleHookName
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> (case data.lifecycleActionToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LifecycleActionToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.instanceId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "InstanceId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


scalingPolicyEncoder : ScalingPolicy -> List ( String, String )
scalingPolicyEncoder data =
    []
        |> (case data.autoScalingGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policyName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PolicyName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policyARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PolicyARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policyType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PolicyType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.adjustmentType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AdjustmentType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.minAdjustmentStep of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinAdjustmentStep" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.minAdjustmentMagnitude of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinAdjustmentMagnitude" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.scalingAdjustment of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "ScalingAdjustment" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.cooldown of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Cooldown" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.stepAdjustments of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs stepAdjustmentEncoder "") "StepAdjustments" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.metricAggregationType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MetricAggregationType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.estimatedInstanceWarmup of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "EstimatedInstanceWarmup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.alarms of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs alarmEncoder "") "Alarms" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.targetTrackingConfiguration of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs targetTrackingConfigurationEncoder "TargetTrackingConfiguration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


scalingProcessQueryEncoder : ScalingProcessQuery -> List ( String, String )
scalingProcessQueryEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> (case data.scalingProcesses of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ScalingProcesses" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


scheduledActionsTypeEncoder : ScheduledActionsType -> List ( String, String )
scheduledActionsTypeEncoder data =
    []
        |> (case data.scheduledUpdateGroupActions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs scheduledUpdateGroupActionEncoder "") "ScheduledUpdateGroupActions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


scheduledUpdateGroupActionEncoder : ScheduledUpdateGroupAction -> List ( String, String )
scheduledUpdateGroupActionEncoder data =
    []
        |> (case data.autoScalingGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.scheduledActionName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ScheduledActionName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.scheduledActionARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ScheduledActionARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.time of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Time" value

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
        |> (case data.recurrence of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Recurrence" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.minSize of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinSize" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxSize of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxSize" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.desiredCapacity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "DesiredCapacity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


scheduledUpdateGroupActionRequestEncoder : ScheduledUpdateGroupActionRequest -> List ( String, String )
scheduledUpdateGroupActionRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ScheduledActionName" data.scheduledActionName
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
        |> (case data.recurrence of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Recurrence" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.minSize of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinSize" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxSize of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxSize" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.desiredCapacity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "DesiredCapacity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


setDesiredCapacityTypeEncoder : SetDesiredCapacityType -> List ( String, String )
setDesiredCapacityTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "DesiredCapacity" data.desiredCapacity
        |> (case data.honorCooldown of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "HonorCooldown" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


setInstanceHealthQueryEncoder : SetInstanceHealthQuery -> List ( String, String )
setInstanceHealthQueryEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "InstanceId" data.instanceId
        |> AWS.Core.Encode.addOneToQueryArgs identity "HealthStatus" data.healthStatus
        |> (case data.shouldRespectGracePeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ShouldRespectGracePeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


setInstanceProtectionAnswerEncoder : SetInstanceProtectionAnswer -> List ( String, String )
setInstanceProtectionAnswerEncoder data =
    []


setInstanceProtectionQueryEncoder : SetInstanceProtectionQuery -> List ( String, String )
setInstanceProtectionQueryEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "InstanceIds" data.instanceIds
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ProtectedFromScaleIn" data.protectedFromScaleIn


stepAdjustmentEncoder : StepAdjustment -> List ( String, String )
stepAdjustmentEncoder data =
    []
        |> (case data.metricIntervalLowerBound of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "MetricIntervalLowerBound" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.metricIntervalUpperBound of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "MetricIntervalUpperBound" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "ScalingAdjustment" data.scalingAdjustment


suspendedProcessEncoder : SuspendedProcess -> List ( String, String )
suspendedProcessEncoder data =
    []
        |> (case data.processName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ProcessName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.suspensionReason of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "SuspensionReason" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


tagEncoder : Tag -> List ( String, String )
tagEncoder data =
    []
        |> (case data.resourceId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ResourceId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resourceType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ResourceType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "Key" data.key
        |> (case data.value of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Value" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.propagateAtLaunch of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PropagateAtLaunch" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


tagDescriptionEncoder : TagDescription -> List ( String, String )
tagDescriptionEncoder data =
    []
        |> (case data.resourceId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ResourceId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resourceType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ResourceType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
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
        |> (case data.propagateAtLaunch of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PropagateAtLaunch" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


tagsTypeEncoder : TagsType -> List ( String, String )
tagsTypeEncoder data =
    []
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagDescriptionEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


targetTrackingConfigurationEncoder : TargetTrackingConfiguration -> List ( String, String )
targetTrackingConfigurationEncoder data =
    []
        |> (case data.predefinedMetricSpecification of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs predefinedMetricSpecificationEncoder "PredefinedMetricSpecification" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.customizedMetricSpecification of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs customizedMetricSpecificationEncoder "CustomizedMetricSpecification" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs String.fromFloat "TargetValue" data.targetValue
        |> (case data.disableScaleIn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DisableScaleIn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


terminateInstanceInAutoScalingGroupTypeEncoder : TerminateInstanceInAutoScalingGroupType -> List ( String, String )
terminateInstanceInAutoScalingGroupTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "InstanceId" data.instanceId
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ShouldDecrementDesiredCapacity" data.shouldDecrementDesiredCapacity


updateAutoScalingGroupTypeEncoder : UpdateAutoScalingGroupType -> List ( String, String )
updateAutoScalingGroupTypeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AutoScalingGroupName" data.autoScalingGroupName
        |> (case data.launchConfigurationName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "LaunchConfigurationName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.launchTemplate of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs launchTemplateSpecificationEncoder "LaunchTemplate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.mixedInstancesPolicy of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs mixedInstancesPolicyEncoder "MixedInstancesPolicy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.minSize of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MinSize" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxSize of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxSize" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.desiredCapacity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "DesiredCapacity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.defaultCooldown of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "DefaultCooldown" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.availabilityZones of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AvailabilityZones" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.healthCheckType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HealthCheckType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.healthCheckGracePeriod of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "HealthCheckGracePeriod" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.placementGroup of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "PlacementGroup" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.vPCZoneIdentifier of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "VPCZoneIdentifier" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.terminationPolicies of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TerminationPolicies" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.newInstancesProtectedFromScaleIn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "NewInstancesProtectedFromScaleIn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceLinkedRoleARN of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ServiceLinkedRoleARN" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
