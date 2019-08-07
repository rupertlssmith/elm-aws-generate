module AWS.ApplicationAutoScaling
    exposing
        ( service
        , deleteScalingPolicy
        , deleteScheduledAction
        , deregisterScalableTarget
        , describeScalableTargets
        , DescribeScalableTargetsOptions
        , describeScalingActivities
        , DescribeScalingActivitiesOptions
        , describeScalingPolicies
        , DescribeScalingPoliciesOptions
        , describeScheduledActions
        , DescribeScheduledActionsOptions
        , putScalingPolicy
        , PutScalingPolicyOptions
        , putScheduledAction
        , PutScheduledActionOptions
        , registerScalableTarget
        , RegisterScalableTargetOptions
        , AdjustmentType(..)
        , Alarm
        , CustomizedMetricSpecification
        , DeleteScalingPolicyResponse
        , DeleteScheduledActionResponse
        , DeregisterScalableTargetResponse
        , DescribeScalableTargetsResponse
        , DescribeScalingActivitiesResponse
        , DescribeScalingPoliciesResponse
        , DescribeScheduledActionsResponse
        , MetricAggregationType(..)
        , MetricDimension
        , MetricStatistic(..)
        , MetricType(..)
        , PolicyType(..)
        , PredefinedMetricSpecification
        , PutScalingPolicyResponse
        , PutScheduledActionResponse
        , RegisterScalableTargetResponse
        , ScalableDimension(..)
        , ScalableTarget
        , ScalableTargetAction
        , ScalingActivity
        , ScalingActivityStatusCode(..)
        , ScalingPolicy
        , ScheduledAction
        , ServiceNamespace(..)
        , StepAdjustment
        , StepScalingPolicyConfiguration
        , TargetTrackingScalingPolicyConfiguration
        )

{-| <p>With Application Auto Scaling, you can configure automatic scaling for your scalable resources. You can use Application Auto Scaling to accomplish the following tasks:</p> <ul> <li> <p>Define scaling policies to automatically scale your AWS or custom resources</p> </li> <li> <p>Scale your resources in response to CloudWatch alarms</p> </li> <li> <p>Schedule one-time or recurring scaling actions</p> </li> <li> <p>View the history of your scaling events</p> </li> </ul> <p>Application Auto Scaling can scale the following resources:</p> <ul> <li> <p>Amazon ECS services. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html">Service Auto Scaling</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </li> <li> <p>Amazon EC2 Spot fleets. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-auto-scaling.html">Automatic Scaling for Spot Fleet</a> in the <i>Amazon EC2 User Guide</i>.</p> </li> <li> <p>Amazon EMR clusters. For more information, see <a href="https://docs.aws.amazon.com/ElasticMapReduce/latest/ManagementGuide/emr-automatic-scaling.html">Using Automatic Scaling in Amazon EMR</a> in the <i>Amazon EMR Management Guide</i>.</p> </li> <li> <p>AppStream 2.0 fleets. For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/autoscaling.html">Fleet Auto Scaling for Amazon AppStream 2.0</a> in the <i>Amazon AppStream 2.0 Developer Guide</i>.</p> </li> <li> <p>Provisioned read and write capacity for Amazon DynamoDB tables and global secondary indexes. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/AutoScaling.html">Managing Throughput Capacity Automatically with DynamoDB Auto Scaling</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> </li> <li> <p>Amazon Aurora Replicas. For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Integrating.AutoScaling.html">Using Amazon Aurora Auto Scaling with Aurora Replicas</a>.</p> </li> <li> <p>Amazon SageMaker endpoint variants. For more information, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/endpoint-auto-scaling.html">Automatically Scaling Amazon SageMaker Models</a>.</p> </li> <li> <p>Custom resources provided by your own applications or services. More information is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub repository</a>. </p> </li> </ul> <p>To learn more about Application Auto Scaling, including information about granting IAM users required permissions for Application Auto Scaling actions, see the <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html">Application Auto Scaling User Guide</a>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [deleteScalingPolicy](#deleteScalingPolicy)
* [deleteScheduledAction](#deleteScheduledAction)
* [deregisterScalableTarget](#deregisterScalableTarget)
* [describeScalableTargets](#describeScalableTargets)
* [DescribeScalableTargetsOptions](#DescribeScalableTargetsOptions)
* [describeScalingActivities](#describeScalingActivities)
* [DescribeScalingActivitiesOptions](#DescribeScalingActivitiesOptions)
* [describeScalingPolicies](#describeScalingPolicies)
* [DescribeScalingPoliciesOptions](#DescribeScalingPoliciesOptions)
* [describeScheduledActions](#describeScheduledActions)
* [DescribeScheduledActionsOptions](#DescribeScheduledActionsOptions)
* [putScalingPolicy](#putScalingPolicy)
* [PutScalingPolicyOptions](#PutScalingPolicyOptions)
* [putScheduledAction](#putScheduledAction)
* [PutScheduledActionOptions](#PutScheduledActionOptions)
* [registerScalableTarget](#registerScalableTarget)
* [RegisterScalableTargetOptions](#RegisterScalableTargetOptions)


@docs deleteScalingPolicy,deleteScheduledAction,deregisterScalableTarget,describeScalableTargets,DescribeScalableTargetsOptions,describeScalingActivities,DescribeScalingActivitiesOptions,describeScalingPolicies,DescribeScalingPoliciesOptions,describeScheduledActions,DescribeScheduledActionsOptions,putScalingPolicy,PutScalingPolicyOptions,putScheduledAction,PutScheduledActionOptions,registerScalableTarget,RegisterScalableTargetOptions

## Responses

* [DeleteScalingPolicyResponse](#DeleteScalingPolicyResponse)
* [DeleteScheduledActionResponse](#DeleteScheduledActionResponse)
* [DeregisterScalableTargetResponse](#DeregisterScalableTargetResponse)
* [DescribeScalableTargetsResponse](#DescribeScalableTargetsResponse)
* [DescribeScalingActivitiesResponse](#DescribeScalingActivitiesResponse)
* [DescribeScalingPoliciesResponse](#DescribeScalingPoliciesResponse)
* [DescribeScheduledActionsResponse](#DescribeScheduledActionsResponse)
* [PutScalingPolicyResponse](#PutScalingPolicyResponse)
* [PutScheduledActionResponse](#PutScheduledActionResponse)
* [RegisterScalableTargetResponse](#RegisterScalableTargetResponse)


@docs DeleteScalingPolicyResponse,DeleteScheduledActionResponse,DeregisterScalableTargetResponse,DescribeScalableTargetsResponse,DescribeScalingActivitiesResponse,DescribeScalingPoliciesResponse,DescribeScheduledActionsResponse,PutScalingPolicyResponse,PutScheduledActionResponse,RegisterScalableTargetResponse

## Records

* [Alarm](#Alarm)
* [CustomizedMetricSpecification](#CustomizedMetricSpecification)
* [MetricDimension](#MetricDimension)
* [PredefinedMetricSpecification](#PredefinedMetricSpecification)
* [ScalableTarget](#ScalableTarget)
* [ScalableTargetAction](#ScalableTargetAction)
* [ScalingActivity](#ScalingActivity)
* [ScalingPolicy](#ScalingPolicy)
* [ScheduledAction](#ScheduledAction)
* [StepAdjustment](#StepAdjustment)
* [StepScalingPolicyConfiguration](#StepScalingPolicyConfiguration)
* [TargetTrackingScalingPolicyConfiguration](#TargetTrackingScalingPolicyConfiguration)


@docs Alarm,CustomizedMetricSpecification,MetricDimension,PredefinedMetricSpecification,ScalableTarget,ScalableTargetAction,ScalingActivity,ScalingPolicy,ScheduledAction,StepAdjustment,StepScalingPolicyConfiguration,TargetTrackingScalingPolicyConfiguration

## Unions

* [AdjustmentType](#AdjustmentType)
* [MetricAggregationType](#MetricAggregationType)
* [MetricStatistic](#MetricStatistic)
* [MetricType](#MetricType)
* [PolicyType](#PolicyType)
* [ScalableDimension](#ScalableDimension)
* [ScalingActivityStatusCode](#ScalingActivityStatusCode)
* [ServiceNamespace](#ServiceNamespace)


@docs AdjustmentType,MetricAggregationType,MetricStatistic,MetricType,PolicyType,ScalableDimension,ScalingActivityStatusCode,ServiceNamespace

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
        "autoscaling"
        "2016-02-06"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setSigningName "application-autoscaling" >> AWS.Core.Service.setTargetPrefix "AnyScaleFrontendService")



-- OPERATIONS

{-| <p>Deletes the specified Application Auto Scaling scaling policy.</p> <p>Deleting a policy deletes the underlying alarm action, but does not delete the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated action.</p> <p>To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>.</p>

__Required Parameters__

* `policyName` __:__ `String`
* `serviceNamespace` __:__ `ServiceNamespace`
* `resourceId` __:__ `String`
* `scalableDimension` __:__ `ScalableDimension`


-}

deleteScalingPolicy :
  
    String ->
  
    ServiceNamespace ->
  
    String ->
  
    ScalableDimension ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteScalingPolicyResponse)

deleteScalingPolicy policyName serviceNamespace resourceId scalableDimension =
    
    let
        requestInput = DeleteScalingPolicyRequest
            
            policyName
            
            serviceNamespace
            
            resourceId
            
            scalableDimension
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteScalingPolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteScalingPolicy"
                
                (AWS.Core.Decode.ResultDecoder "DeleteScalingPolicyResponse" deleteScalingPolicyResponseDecoder)
                
            )





{-| <p>Deletes the specified Application Auto Scaling scheduled action.</p>

__Required Parameters__

* `serviceNamespace` __:__ `ServiceNamespace`
* `scheduledActionName` __:__ `String`
* `resourceId` __:__ `String`
* `scalableDimension` __:__ `ScalableDimension`


-}

deleteScheduledAction :
  
    ServiceNamespace ->
  
    String ->
  
    String ->
  
    ScalableDimension ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteScheduledActionResponse)

deleteScheduledAction serviceNamespace scheduledActionName resourceId scalableDimension =
    
    let
        requestInput = DeleteScheduledActionRequest
            
            serviceNamespace
            
            scheduledActionName
            
            resourceId
            
            scalableDimension
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteScheduledActionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteScheduledAction"
                
                (AWS.Core.Decode.ResultDecoder "DeleteScheduledActionResponse" deleteScheduledActionResponseDecoder)
                
            )





{-| <p>Deregisters a scalable target.</p> <p>Deregistering a scalable target deletes the scaling policies that are associated with it.</p> <p>To create a scalable target or update an existing one, see <a>RegisterScalableTarget</a>. </p>

__Required Parameters__

* `serviceNamespace` __:__ `ServiceNamespace`
* `resourceId` __:__ `String`
* `scalableDimension` __:__ `ScalableDimension`


-}

deregisterScalableTarget :
  
    ServiceNamespace ->
  
    String ->
  
    ScalableDimension ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeregisterScalableTargetResponse)

deregisterScalableTarget serviceNamespace resourceId scalableDimension =
    
    let
        requestInput = DeregisterScalableTargetRequest
            
            serviceNamespace
            
            resourceId
            
            scalableDimension
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deregisterScalableTargetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeregisterScalableTarget"
                
                (AWS.Core.Decode.ResultDecoder "DeregisterScalableTargetResponse" deregisterScalableTargetResponseDecoder)
                
            )





{-| <p>Gets information about the scalable targets in the specified namespace.</p> <p>You can filter the results using the <code>ResourceIds</code> and <code>ScalableDimension</code> parameters.</p> <p>To create a scalable target or update an existing one, see <a>RegisterScalableTarget</a>. If you are no longer using a scalable target, you can deregister it using <a>DeregisterScalableTarget</a>.</p>

__Required Parameters__

* `serviceNamespace` __:__ `ServiceNamespace`


-}

describeScalableTargets :
  
    ServiceNamespace ->
  
  
    ( DescribeScalableTargetsOptions -> DescribeScalableTargetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeScalableTargetsResponse)

describeScalableTargets serviceNamespace setOptions =
    
    let
        requestInput = DescribeScalableTargetsRequest
            
            serviceNamespace
            
            options.resourceIds
            
            options.scalableDimension
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeScalableTargetsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeScalableTargetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeScalableTargets"
                
                (AWS.Core.Decode.ResultDecoder "DescribeScalableTargetsResponse" describeScalableTargetsResponseDecoder)
                
            )



{-| Options for a describeScalableTargets request
-}
type alias DescribeScalableTargetsOptions =
    {
    resourceIds : Maybe (List String),scalableDimension : Maybe ScalableDimension,maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks.</p> <p>You can filter the results using the <code>ResourceId</code> and <code>ScalableDimension</code> parameters.</p> <p>Scaling activities are triggered by CloudWatch alarms that are associated with scaling policies. To view the scaling policies for a service namespace, see <a>DescribeScalingPolicies</a>. To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>.</p>

__Required Parameters__

* `serviceNamespace` __:__ `ServiceNamespace`


-}

describeScalingActivities :
  
    ServiceNamespace ->
  
  
    ( DescribeScalingActivitiesOptions -> DescribeScalingActivitiesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeScalingActivitiesResponse)

describeScalingActivities serviceNamespace setOptions =
    
    let
        requestInput = DescribeScalingActivitiesRequest
            
            serviceNamespace
            
            options.resourceId
            
            options.scalableDimension
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeScalingActivitiesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeScalingActivitiesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeScalingActivities"
                
                (AWS.Core.Decode.ResultDecoder "DescribeScalingActivitiesResponse" describeScalingActivitiesResponseDecoder)
                
            )



{-| Options for a describeScalingActivities request
-}
type alias DescribeScalingActivitiesOptions =
    {
    resourceId : Maybe String,scalableDimension : Maybe ScalableDimension,maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Describes the scaling policies for the specified service namespace.</p> <p>You can filter the results using the <code>ResourceId</code>, <code>ScalableDimension</code>, and <code>PolicyNames</code> parameters.</p> <p>To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>. If you are no longer using a scaling policy, you can delete it using <a>DeleteScalingPolicy</a>.</p>

__Required Parameters__

* `serviceNamespace` __:__ `ServiceNamespace`


-}

describeScalingPolicies :
  
    ServiceNamespace ->
  
  
    ( DescribeScalingPoliciesOptions -> DescribeScalingPoliciesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeScalingPoliciesResponse)

describeScalingPolicies serviceNamespace setOptions =
    
    let
        requestInput = DescribeScalingPoliciesRequest
            
            options.policyNames
            
            serviceNamespace
            
            options.resourceId
            
            options.scalableDimension
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeScalingPoliciesOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeScalingPoliciesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeScalingPolicies"
                
                (AWS.Core.Decode.ResultDecoder "DescribeScalingPoliciesResponse" describeScalingPoliciesResponseDecoder)
                
            )



{-| Options for a describeScalingPolicies request
-}
type alias DescribeScalingPoliciesOptions =
    {
    policyNames : Maybe (List String),resourceId : Maybe String,scalableDimension : Maybe ScalableDimension,maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Describes the scheduled actions for the specified service namespace.</p> <p>You can filter the results using the <code>ResourceId</code>, <code>ScalableDimension</code>, and <code>ScheduledActionNames</code> parameters.</p> <p>To create a scheduled action or update an existing one, see <a>PutScheduledAction</a>. If you are no longer using a scheduled action, you can delete it using <a>DeleteScheduledAction</a>.</p>

__Required Parameters__

* `serviceNamespace` __:__ `ServiceNamespace`


-}

describeScheduledActions :
  
    ServiceNamespace ->
  
  
    ( DescribeScheduledActionsOptions -> DescribeScheduledActionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeScheduledActionsResponse)

describeScheduledActions serviceNamespace setOptions =
    
    let
        requestInput = DescribeScheduledActionsRequest
            
            options.scheduledActionNames
            
            serviceNamespace
            
            options.resourceId
            
            options.scalableDimension
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeScheduledActionsOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeScheduledActionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeScheduledActions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeScheduledActionsResponse" describeScheduledActionsResponseDecoder)
                
            )



{-| Options for a describeScheduledActions request
-}
type alias DescribeScheduledActionsOptions =
    {
    scheduledActionNames : Maybe (List String),resourceId : Maybe String,scalableDimension : Maybe ScalableDimension,maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Creates or updates a policy for an Application Auto Scaling scalable target.</p> <p>Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scaling policy applies to the scalable target identified by those three attributes. You cannot create a scaling policy until you have registered the resource as a scalable target using <a>RegisterScalableTarget</a>.</p> <p>To update a policy, specify its policy name and the parameters that you want to change. Any parameters that you don't specify are not changed by this update request.</p> <p>You can view the scaling policies for a service namespace using <a>DescribeScalingPolicies</a>. If you are no longer using a scaling policy, you can delete it using <a>DeleteScalingPolicy</a>.</p> <p>Multiple scaling policies can be in force at the same time for the same scalable target. You can have one or more target tracking scaling policies, one or more step scaling policies, or both. However, there is a chance that multiple policies could conflict, instructing the scalable target to scale out or in at the same time. Application Auto Scaling gives precedence to the policy that provides the largest capacity for both scale in and scale out. For example, if one policy increases capacity by 3, another policy increases capacity by 200 percent, and the current capacity is 10, Application Auto Scaling uses the policy with the highest calculated capacity (200% of 10 = 20) and scales out to 30. </p> <p>Learn more about how to work with scaling policies in the <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html">Application Auto Scaling User Guide</a>.</p>

__Required Parameters__

* `policyName` __:__ `String`
* `serviceNamespace` __:__ `ServiceNamespace`
* `resourceId` __:__ `String`
* `scalableDimension` __:__ `ScalableDimension`


-}

putScalingPolicy :
  
    String ->
  
    ServiceNamespace ->
  
    String ->
  
    ScalableDimension ->
  
  
    ( PutScalingPolicyOptions -> PutScalingPolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutScalingPolicyResponse)

putScalingPolicy policyName serviceNamespace resourceId scalableDimension setOptions =
    
    let
        requestInput = PutScalingPolicyRequest
            
            policyName
            
            serviceNamespace
            
            resourceId
            
            scalableDimension
            
            options.policyType
            
            options.stepScalingPolicyConfiguration
            
            options.targetTrackingScalingPolicyConfiguration
            
        
        options = setOptions (PutScalingPolicyOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putScalingPolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutScalingPolicy"
                
                (AWS.Core.Decode.ResultDecoder "PutScalingPolicyResponse" putScalingPolicyResponseDecoder)
                
            )



{-| Options for a putScalingPolicy request
-}
type alias PutScalingPolicyOptions =
    {
    policyType : Maybe PolicyType,stepScalingPolicyConfiguration : Maybe StepScalingPolicyConfiguration,targetTrackingScalingPolicyConfiguration : Maybe TargetTrackingScalingPolicyConfiguration
    }



{-| <p>Creates or updates a scheduled action for an Application Auto Scaling scalable target.</p> <p>Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scheduled action applies to the scalable target identified by those three attributes. You cannot create a scheduled action until you have registered the resource as a scalable target using <a>RegisterScalableTarget</a>. </p> <p>To update an action, specify its name and the parameters that you want to change. If you don't specify start and end times, the old values are deleted. Any other parameters that you don't specify are not changed by this update request.</p> <p>You can view the scheduled actions using <a>DescribeScheduledActions</a>. If you are no longer using a scheduled action, you can delete it using <a>DeleteScheduledAction</a>.</p> <p>Learn more about how to work with scheduled actions in the <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html">Application Auto Scaling User Guide</a>.</p>

__Required Parameters__

* `serviceNamespace` __:__ `ServiceNamespace`
* `scheduledActionName` __:__ `String`
* `resourceId` __:__ `String`
* `scalableDimension` __:__ `ScalableDimension`


-}

putScheduledAction :
  
    ServiceNamespace ->
  
    String ->
  
    String ->
  
    ScalableDimension ->
  
  
    ( PutScheduledActionOptions -> PutScheduledActionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutScheduledActionResponse)

putScheduledAction serviceNamespace scheduledActionName resourceId scalableDimension setOptions =
    
    let
        requestInput = PutScheduledActionRequest
            
            serviceNamespace
            
            options.schedule
            
            scheduledActionName
            
            resourceId
            
            scalableDimension
            
            options.startTime
            
            options.endTime
            
            options.scalableTargetAction
            
        
        options = setOptions (PutScheduledActionOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putScheduledActionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutScheduledAction"
                
                (AWS.Core.Decode.ResultDecoder "PutScheduledActionResponse" putScheduledActionResponseDecoder)
                
            )



{-| Options for a putScheduledAction request
-}
type alias PutScheduledActionOptions =
    {
    schedule : Maybe String,startTime : Maybe Posix,endTime : Maybe Posix,scalableTargetAction : Maybe ScalableTargetAction
    }



{-| <p>Registers or updates a scalable target. A scalable target is a resource that Application Auto Scaling can scale out and scale in. Each scalable target has a resource ID, scalable dimension, and namespace, as well as values for minimum and maximum capacity. </p> <p>After you register a scalable target, you do not need to register it again to use other Application Auto Scaling operations. To see which resources have been registered, use <a>DescribeScalableTargets</a>. You can also view the scaling policies for a service namespace using <a>DescribeScalableTargets</a>. </p> <p>If you no longer need a scalable target, you can deregister it using <a>DeregisterScalableTarget</a>.</p>

__Required Parameters__

* `serviceNamespace` __:__ `ServiceNamespace`
* `resourceId` __:__ `String`
* `scalableDimension` __:__ `ScalableDimension`


-}

registerScalableTarget :
  
    ServiceNamespace ->
  
    String ->
  
    ScalableDimension ->
  
  
    ( RegisterScalableTargetOptions -> RegisterScalableTargetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RegisterScalableTargetResponse)

registerScalableTarget serviceNamespace resourceId scalableDimension setOptions =
    
    let
        requestInput = RegisterScalableTargetRequest
            
            serviceNamespace
            
            resourceId
            
            scalableDimension
            
            options.minCapacity
            
            options.maxCapacity
            
            options.roleARN
            
        
        options = setOptions (RegisterScalableTargetOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> registerScalableTargetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RegisterScalableTarget"
                
                (AWS.Core.Decode.ResultDecoder "RegisterScalableTargetResponse" registerScalableTargetResponseDecoder)
                
            )



{-| Options for a registerScalableTarget request
-}
type alias RegisterScalableTargetOptions =
    {
    minCapacity : Maybe Int,maxCapacity : Maybe Int,roleARN : Maybe String
    }




{-| One of

* `AdjustmentType_ChangeInCapacity`
* `AdjustmentType_PercentChangeInCapacity`
* `AdjustmentType_ExactCapacity`

-}
type AdjustmentType
    = AdjustmentType_ChangeInCapacity
    | AdjustmentType_PercentChangeInCapacity
    | AdjustmentType_ExactCapacity



adjustmentTypeDecoder : JD.Decoder AdjustmentType
adjustmentTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ChangeInCapacity" ->
                        JD.succeed AdjustmentType_ChangeInCapacity

                    "PercentChangeInCapacity" ->
                        JD.succeed AdjustmentType_PercentChangeInCapacity

                    "ExactCapacity" ->
                        JD.succeed AdjustmentType_ExactCapacity


                    _ ->
                        JD.fail "bad thing"
            )




adjustmentTypeToString : AdjustmentType -> String
adjustmentTypeToString val =
    case val of
        AdjustmentType_ChangeInCapacity ->
            "ChangeInCapacity"

        AdjustmentType_PercentChangeInCapacity ->
            "PercentChangeInCapacity"

        AdjustmentType_ExactCapacity ->
            "ExactCapacity"




{-| <p>Represents a CloudWatch alarm associated with a scaling policy.</p>
-}
type alias Alarm =
    { alarmName : String
    , alarmARN : String
    }



alarmDecoder : JD.Decoder Alarm
alarmDecoder =
    JD.succeed Alarm
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AlarmName", "alarmName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AlarmARN", "alarmARN"]
            JD.string
        )
        




alarmToString : Alarm -> String -- List (String, String)
alarmToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "alarmName" "" -- val.alarmName
        
    --     |> Dict.insert
    --         "alarmARN" "" -- val.alarmARN
        
    --     |> Dict.toList
    ""



{-| <p>Represents a CloudWatch metric of your choosing for a target tracking scaling policy to use with Application Auto Scaling.</p> <p>To create your customized metric specification:</p> <ul> <li> <p>Add values for each required parameter from CloudWatch. You can use an existing metric, or a new metric that you create. To use your own metric, you must first publish the metric to CloudWatch. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publish Custom Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p> </li> <li> <p>Choose a metric that changes proportionally with capacity. The value of the metric should increase or decrease in inverse proportion to the number of capacity units. That is, the value of the metric should decrease when capacity increases. </p> </li> </ul> <p>For more information about CloudWatch, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html">Amazon CloudWatch Concepts</a>. </p>
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
        
        |> JDP.custom (AWS.Core.Decode.required
            ["MetricName", "metricName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Namespace", "namespace"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Dimensions", "dimensions"]
            (JD.list metricDimensionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Statistic", "statistic"]
            metricStatisticDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Unit", "unit"]
            JD.string
        )
        




customizedMetricSpecificationToString : CustomizedMetricSpecification -> String -- List (String, String)
customizedMetricSpecificationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "metricName" "" -- val.metricName
        
    --     |> Dict.insert
    --         "namespace" "" -- val.namespace
        
    --     |> Dict.insert
    --         "dimensions" "" -- val.dimensions
        
    --     |> Dict.insert
    --         "statistic" "" -- val.statistic
        
    --     |> Dict.insert
    --         "unit" "" -- val.unit
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteScalingPolicy
-}
type alias DeleteScalingPolicyResponse =
    { 
    }



deleteScalingPolicyResponseDecoder : JD.Decoder DeleteScalingPolicyResponse
deleteScalingPolicyResponseDecoder =
    JD.succeed DeleteScalingPolicyResponse
        




deleteScalingPolicyResponseToString : DeleteScalingPolicyResponse -> String -- List (String, String)
deleteScalingPolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteScheduledAction
-}
type alias DeleteScheduledActionResponse =
    { 
    }



deleteScheduledActionResponseDecoder : JD.Decoder DeleteScheduledActionResponse
deleteScheduledActionResponseDecoder =
    JD.succeed DeleteScheduledActionResponse
        




deleteScheduledActionResponseToString : DeleteScheduledActionResponse -> String -- List (String, String)
deleteScheduledActionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deregisterScalableTarget
-}
type alias DeregisterScalableTargetResponse =
    { 
    }



deregisterScalableTargetResponseDecoder : JD.Decoder DeregisterScalableTargetResponse
deregisterScalableTargetResponseDecoder =
    JD.succeed DeregisterScalableTargetResponse
        




deregisterScalableTargetResponseToString : DeregisterScalableTargetResponse -> String -- List (String, String)
deregisterScalableTargetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeScalableTargets
-}
type alias DescribeScalableTargetsResponse =
    { scalableTargets : Maybe (List ScalableTarget)
    , nextToken : Maybe String
    }



describeScalableTargetsResponseDecoder : JD.Decoder DescribeScalableTargetsResponse
describeScalableTargetsResponseDecoder =
    JD.succeed DescribeScalableTargetsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScalableTargets", "scalableTargets"]
            (JD.list scalableTargetDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeScalableTargetsResponseToString : DescribeScalableTargetsResponse -> String -- List (String, String)
describeScalableTargetsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "scalableTargets" "" -- val.scalableTargets
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeScalingActivities
-}
type alias DescribeScalingActivitiesResponse =
    { scalingActivities : Maybe (List ScalingActivity)
    , nextToken : Maybe String
    }



describeScalingActivitiesResponseDecoder : JD.Decoder DescribeScalingActivitiesResponse
describeScalingActivitiesResponseDecoder =
    JD.succeed DescribeScalingActivitiesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScalingActivities", "scalingActivities"]
            (JD.list scalingActivityDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeScalingActivitiesResponseToString : DescribeScalingActivitiesResponse -> String -- List (String, String)
describeScalingActivitiesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "scalingActivities" "" -- val.scalingActivities
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeScalingPolicies
-}
type alias DescribeScalingPoliciesResponse =
    { scalingPolicies : Maybe (List ScalingPolicy)
    , nextToken : Maybe String
    }



describeScalingPoliciesResponseDecoder : JD.Decoder DescribeScalingPoliciesResponse
describeScalingPoliciesResponseDecoder =
    JD.succeed DescribeScalingPoliciesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScalingPolicies", "scalingPolicies"]
            (JD.list scalingPolicyDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeScalingPoliciesResponseToString : DescribeScalingPoliciesResponse -> String -- List (String, String)
describeScalingPoliciesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "scalingPolicies" "" -- val.scalingPolicies
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeScheduledActions
-}
type alias DescribeScheduledActionsResponse =
    { scheduledActions : Maybe (List ScheduledAction)
    , nextToken : Maybe String
    }



describeScheduledActionsResponseDecoder : JD.Decoder DescribeScheduledActionsResponse
describeScheduledActionsResponseDecoder =
    JD.succeed DescribeScheduledActionsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScheduledActions", "scheduledActions"]
            (JD.list scheduledActionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeScheduledActionsResponseToString : DescribeScheduledActionsResponse -> String -- List (String, String)
describeScheduledActionsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "scheduledActions" "" -- val.scheduledActions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| One of

* `MetricAggregationType_Average`
* `MetricAggregationType_Minimum`
* `MetricAggregationType_Maximum`

-}
type MetricAggregationType
    = MetricAggregationType_Average
    | MetricAggregationType_Minimum
    | MetricAggregationType_Maximum



metricAggregationTypeDecoder : JD.Decoder MetricAggregationType
metricAggregationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Average" ->
                        JD.succeed MetricAggregationType_Average

                    "Minimum" ->
                        JD.succeed MetricAggregationType_Minimum

                    "Maximum" ->
                        JD.succeed MetricAggregationType_Maximum


                    _ ->
                        JD.fail "bad thing"
            )




metricAggregationTypeToString : MetricAggregationType -> String
metricAggregationTypeToString val =
    case val of
        MetricAggregationType_Average ->
            "Average"

        MetricAggregationType_Minimum ->
            "Minimum"

        MetricAggregationType_Maximum ->
            "Maximum"




{-| <p>Describes the dimension names and values associated with a metric.</p>
-}
type alias MetricDimension =
    { name : String
    , value : String
    }



metricDimensionDecoder : JD.Decoder MetricDimension
metricDimensionDecoder =
    JD.succeed MetricDimension
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Value", "value"]
            JD.string
        )
        




metricDimensionToString : MetricDimension -> String -- List (String, String)
metricDimensionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| One of

* `MetricStatistic_Average`
* `MetricStatistic_Minimum`
* `MetricStatistic_Maximum`
* `MetricStatistic_SampleCount`
* `MetricStatistic_Sum`

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

* `MetricType_DynamoDBReadCapacityUtilization`
* `MetricType_DynamoDBWriteCapacityUtilization`
* `MetricType_ALBRequestCountPerTarget`
* `MetricType_RDSReaderAverageCPUUtilization`
* `MetricType_RDSReaderAverageDatabaseConnections`
* `MetricType_EC2SpotFleetRequestAverageCPUUtilization`
* `MetricType_EC2SpotFleetRequestAverageNetworkIn`
* `MetricType_EC2SpotFleetRequestAverageNetworkOut`
* `MetricType_SageMakerVariantInvocationsPerInstance`
* `MetricType_ECSServiceAverageCPUUtilization`
* `MetricType_ECSServiceAverageMemoryUtilization`

-}
type MetricType
    = MetricType_DynamoDBReadCapacityUtilization
    | MetricType_DynamoDBWriteCapacityUtilization
    | MetricType_ALBRequestCountPerTarget
    | MetricType_RDSReaderAverageCPUUtilization
    | MetricType_RDSReaderAverageDatabaseConnections
    | MetricType_EC2SpotFleetRequestAverageCPUUtilization
    | MetricType_EC2SpotFleetRequestAverageNetworkIn
    | MetricType_EC2SpotFleetRequestAverageNetworkOut
    | MetricType_SageMakerVariantInvocationsPerInstance
    | MetricType_ECSServiceAverageCPUUtilization
    | MetricType_ECSServiceAverageMemoryUtilization



metricTypeDecoder : JD.Decoder MetricType
metricTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DynamoDBReadCapacityUtilization" ->
                        JD.succeed MetricType_DynamoDBReadCapacityUtilization

                    "DynamoDBWriteCapacityUtilization" ->
                        JD.succeed MetricType_DynamoDBWriteCapacityUtilization

                    "ALBRequestCountPerTarget" ->
                        JD.succeed MetricType_ALBRequestCountPerTarget

                    "RDSReaderAverageCPUUtilization" ->
                        JD.succeed MetricType_RDSReaderAverageCPUUtilization

                    "RDSReaderAverageDatabaseConnections" ->
                        JD.succeed MetricType_RDSReaderAverageDatabaseConnections

                    "EC2SpotFleetRequestAverageCPUUtilization" ->
                        JD.succeed MetricType_EC2SpotFleetRequestAverageCPUUtilization

                    "EC2SpotFleetRequestAverageNetworkIn" ->
                        JD.succeed MetricType_EC2SpotFleetRequestAverageNetworkIn

                    "EC2SpotFleetRequestAverageNetworkOut" ->
                        JD.succeed MetricType_EC2SpotFleetRequestAverageNetworkOut

                    "SageMakerVariantInvocationsPerInstance" ->
                        JD.succeed MetricType_SageMakerVariantInvocationsPerInstance

                    "ECSServiceAverageCPUUtilization" ->
                        JD.succeed MetricType_ECSServiceAverageCPUUtilization

                    "ECSServiceAverageMemoryUtilization" ->
                        JD.succeed MetricType_ECSServiceAverageMemoryUtilization


                    _ ->
                        JD.fail "bad thing"
            )




metricTypeToString : MetricType -> String
metricTypeToString val =
    case val of
        MetricType_DynamoDBReadCapacityUtilization ->
            "DynamoDBReadCapacityUtilization"

        MetricType_DynamoDBWriteCapacityUtilization ->
            "DynamoDBWriteCapacityUtilization"

        MetricType_ALBRequestCountPerTarget ->
            "ALBRequestCountPerTarget"

        MetricType_RDSReaderAverageCPUUtilization ->
            "RDSReaderAverageCPUUtilization"

        MetricType_RDSReaderAverageDatabaseConnections ->
            "RDSReaderAverageDatabaseConnections"

        MetricType_EC2SpotFleetRequestAverageCPUUtilization ->
            "EC2SpotFleetRequestAverageCPUUtilization"

        MetricType_EC2SpotFleetRequestAverageNetworkIn ->
            "EC2SpotFleetRequestAverageNetworkIn"

        MetricType_EC2SpotFleetRequestAverageNetworkOut ->
            "EC2SpotFleetRequestAverageNetworkOut"

        MetricType_SageMakerVariantInvocationsPerInstance ->
            "SageMakerVariantInvocationsPerInstance"

        MetricType_ECSServiceAverageCPUUtilization ->
            "ECSServiceAverageCPUUtilization"

        MetricType_ECSServiceAverageMemoryUtilization ->
            "ECSServiceAverageMemoryUtilization"




{-| One of

* `PolicyType_StepScaling`
* `PolicyType_TargetTrackingScaling`

-}
type PolicyType
    = PolicyType_StepScaling
    | PolicyType_TargetTrackingScaling



policyTypeDecoder : JD.Decoder PolicyType
policyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "StepScaling" ->
                        JD.succeed PolicyType_StepScaling

                    "TargetTrackingScaling" ->
                        JD.succeed PolicyType_TargetTrackingScaling


                    _ ->
                        JD.fail "bad thing"
            )




policyTypeToString : PolicyType -> String
policyTypeToString val =
    case val of
        PolicyType_StepScaling ->
            "StepScaling"

        PolicyType_TargetTrackingScaling ->
            "TargetTrackingScaling"




{-| <p>Represents a predefined metric for a target tracking scaling policy to use with Application Auto Scaling.</p>
-}
type alias PredefinedMetricSpecification =
    { predefinedMetricType : MetricType
    , resourceLabel : Maybe String
    }



predefinedMetricSpecificationDecoder : JD.Decoder PredefinedMetricSpecification
predefinedMetricSpecificationDecoder =
    JD.succeed PredefinedMetricSpecification
        
        |> JDP.custom (AWS.Core.Decode.required
            ["PredefinedMetricType", "predefinedMetricType"]
            metricTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceLabel", "resourceLabel"]
            JD.string
        )
        




predefinedMetricSpecificationToString : PredefinedMetricSpecification -> String -- List (String, String)
predefinedMetricSpecificationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "predefinedMetricType" "" -- val.predefinedMetricType
        
    --     |> Dict.insert
    --         "resourceLabel" "" -- val.resourceLabel
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putScalingPolicy
-}
type alias PutScalingPolicyResponse =
    { policyARN : String
    , alarms : Maybe (List Alarm)
    }



putScalingPolicyResponseDecoder : JD.Decoder PutScalingPolicyResponse
putScalingPolicyResponseDecoder =
    JD.succeed PutScalingPolicyResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["PolicyARN", "policyARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Alarms", "alarms"]
            (JD.list alarmDecoder)
        )
        




putScalingPolicyResponseToString : PutScalingPolicyResponse -> String -- List (String, String)
putScalingPolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policyARN" "" -- val.policyARN
        
    --     |> Dict.insert
    --         "alarms" "" -- val.alarms
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putScheduledAction
-}
type alias PutScheduledActionResponse =
    { 
    }



putScheduledActionResponseDecoder : JD.Decoder PutScheduledActionResponse
putScheduledActionResponseDecoder =
    JD.succeed PutScheduledActionResponse
        




putScheduledActionResponseToString : PutScheduledActionResponse -> String -- List (String, String)
putScheduledActionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from registerScalableTarget
-}
type alias RegisterScalableTargetResponse =
    { 
    }



registerScalableTargetResponseDecoder : JD.Decoder RegisterScalableTargetResponse
registerScalableTargetResponseDecoder =
    JD.succeed RegisterScalableTargetResponse
        




registerScalableTargetResponseToString : RegisterScalableTargetResponse -> String -- List (String, String)
registerScalableTargetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `ScalableDimension_ecs:service:DesiredCount`
* `ScalableDimension_ec2:spot-fleet-request:TargetCapacity`
* `ScalableDimension_elasticmapreduce:instancegroup:InstanceCount`
* `ScalableDimension_appstream:fleet:DesiredCapacity`
* `ScalableDimension_dynamodb:table:ReadCapacityUnits`
* `ScalableDimension_dynamodb:table:WriteCapacityUnits`
* `ScalableDimension_dynamodb:index:ReadCapacityUnits`
* `ScalableDimension_dynamodb:index:WriteCapacityUnits`
* `ScalableDimension_rds:cluster:ReadReplicaCount`
* `ScalableDimension_sagemaker:variant:DesiredInstanceCount`
* `ScalableDimension_custom-resource:ResourceType:Property`

-}
type ScalableDimension
    = ScalableDimension_ecs_service_DesiredCount
    | ScalableDimension_ec2_spot_fleet_request_TargetCapacity
    | ScalableDimension_elasticmapreduce_instancegroup_InstanceCount
    | ScalableDimension_appstream_fleet_DesiredCapacity
    | ScalableDimension_dynamodb_table_ReadCapacityUnits
    | ScalableDimension_dynamodb_table_WriteCapacityUnits
    | ScalableDimension_dynamodb_index_ReadCapacityUnits
    | ScalableDimension_dynamodb_index_WriteCapacityUnits
    | ScalableDimension_rds_cluster_ReadReplicaCount
    | ScalableDimension_sagemaker_variant_DesiredInstanceCount
    | ScalableDimension_custom_resource_ResourceType_Property



scalableDimensionDecoder : JD.Decoder ScalableDimension
scalableDimensionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ecs_service_DesiredCount" ->
                        JD.succeed ScalableDimension_ecs_service_DesiredCount

                    "ec2_spot_fleet_request_TargetCapacity" ->
                        JD.succeed ScalableDimension_ec2_spot_fleet_request_TargetCapacity

                    "elasticmapreduce_instancegroup_InstanceCount" ->
                        JD.succeed ScalableDimension_elasticmapreduce_instancegroup_InstanceCount

                    "appstream_fleet_DesiredCapacity" ->
                        JD.succeed ScalableDimension_appstream_fleet_DesiredCapacity

                    "dynamodb_table_ReadCapacityUnits" ->
                        JD.succeed ScalableDimension_dynamodb_table_ReadCapacityUnits

                    "dynamodb_table_WriteCapacityUnits" ->
                        JD.succeed ScalableDimension_dynamodb_table_WriteCapacityUnits

                    "dynamodb_index_ReadCapacityUnits" ->
                        JD.succeed ScalableDimension_dynamodb_index_ReadCapacityUnits

                    "dynamodb_index_WriteCapacityUnits" ->
                        JD.succeed ScalableDimension_dynamodb_index_WriteCapacityUnits

                    "rds_cluster_ReadReplicaCount" ->
                        JD.succeed ScalableDimension_rds_cluster_ReadReplicaCount

                    "sagemaker_variant_DesiredInstanceCount" ->
                        JD.succeed ScalableDimension_sagemaker_variant_DesiredInstanceCount

                    "custom_resource_ResourceType_Property" ->
                        JD.succeed ScalableDimension_custom_resource_ResourceType_Property


                    _ ->
                        JD.fail "bad thing"
            )




scalableDimensionToString : ScalableDimension -> String
scalableDimensionToString val =
    case val of
        ScalableDimension_ecs_service_DesiredCount ->
            "ecs_service_DesiredCount"

        ScalableDimension_ec2_spot_fleet_request_TargetCapacity ->
            "ec2_spot_fleet_request_TargetCapacity"

        ScalableDimension_elasticmapreduce_instancegroup_InstanceCount ->
            "elasticmapreduce_instancegroup_InstanceCount"

        ScalableDimension_appstream_fleet_DesiredCapacity ->
            "appstream_fleet_DesiredCapacity"

        ScalableDimension_dynamodb_table_ReadCapacityUnits ->
            "dynamodb_table_ReadCapacityUnits"

        ScalableDimension_dynamodb_table_WriteCapacityUnits ->
            "dynamodb_table_WriteCapacityUnits"

        ScalableDimension_dynamodb_index_ReadCapacityUnits ->
            "dynamodb_index_ReadCapacityUnits"

        ScalableDimension_dynamodb_index_WriteCapacityUnits ->
            "dynamodb_index_WriteCapacityUnits"

        ScalableDimension_rds_cluster_ReadReplicaCount ->
            "rds_cluster_ReadReplicaCount"

        ScalableDimension_sagemaker_variant_DesiredInstanceCount ->
            "sagemaker_variant_DesiredInstanceCount"

        ScalableDimension_custom_resource_ResourceType_Property ->
            "custom_resource_ResourceType_Property"




{-| <p>Represents a scalable target.</p>
-}
type alias ScalableTarget =
    { serviceNamespace : ServiceNamespace
    , resourceId : String
    , scalableDimension : ScalableDimension
    , minCapacity : Int
    , maxCapacity : Int
    , roleARN : String
    , creationTime : Posix
    }



scalableTargetDecoder : JD.Decoder ScalableTarget
scalableTargetDecoder =
    JD.succeed ScalableTarget
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ServiceNamespace", "serviceNamespace"]
            serviceNamespaceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceId", "resourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ScalableDimension", "scalableDimension"]
            scalableDimensionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["MinCapacity", "minCapacity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["MaxCapacity", "maxCapacity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        




scalableTargetToString : ScalableTarget -> String -- List (String, String)
scalableTargetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serviceNamespace" "" -- val.serviceNamespace
        
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
        
    --     |> Dict.insert
    --         "scalableDimension" "" -- val.scalableDimension
        
    --     |> Dict.insert
    --         "minCapacity" "" -- val.minCapacity
        
    --     |> Dict.insert
    --         "maxCapacity" "" -- val.maxCapacity
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.toList
    ""



{-| <p>Represents the minimum and maximum capacity for a scheduled action.</p>
-}
type alias ScalableTargetAction =
    { minCapacity : Maybe Int
    , maxCapacity : Maybe Int
    }



scalableTargetActionDecoder : JD.Decoder ScalableTargetAction
scalableTargetActionDecoder =
    JD.succeed ScalableTargetAction
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinCapacity", "minCapacity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxCapacity", "maxCapacity"]
            JD.int
        )
        




scalableTargetActionToString : ScalableTargetAction -> String -- List (String, String)
scalableTargetActionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "minCapacity" "" -- val.minCapacity
        
    --     |> Dict.insert
    --         "maxCapacity" "" -- val.maxCapacity
        
    --     |> Dict.toList
    ""



{-| <p>Represents a scaling activity.</p>
-}
type alias ScalingActivity =
    { activityId : String
    , serviceNamespace : ServiceNamespace
    , resourceId : String
    , scalableDimension : ScalableDimension
    , description : String
    , cause : String
    , startTime : Posix
    , endTime : Maybe Posix
    , statusCode : ScalingActivityStatusCode
    , statusMessage : Maybe String
    , details : Maybe String
    }



scalingActivityDecoder : JD.Decoder ScalingActivity
scalingActivityDecoder =
    JD.succeed ScalingActivity
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ActivityId", "activityId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ServiceNamespace", "serviceNamespace"]
            serviceNamespaceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceId", "resourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ScalableDimension", "scalableDimension"]
            scalableDimensionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Cause", "cause"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StartTime", "startTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndTime", "endTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StatusCode", "statusCode"]
            scalingActivityStatusCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusMessage", "statusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Details", "details"]
            JD.string
        )
        




scalingActivityToString : ScalingActivity -> String -- List (String, String)
scalingActivityToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "activityId" "" -- val.activityId
        
    --     |> Dict.insert
    --         "serviceNamespace" "" -- val.serviceNamespace
        
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
        
    --     |> Dict.insert
    --         "scalableDimension" "" -- val.scalableDimension
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "endTime" "" -- val.endTime
        
    --     |> Dict.insert
    --         "statusCode" "" -- val.statusCode
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "details" "" -- val.details
        
    --     |> Dict.toList
    ""



{-| One of

* `ScalingActivityStatusCode_Pending`
* `ScalingActivityStatusCode_InProgress`
* `ScalingActivityStatusCode_Successful`
* `ScalingActivityStatusCode_Overridden`
* `ScalingActivityStatusCode_Unfulfilled`
* `ScalingActivityStatusCode_Failed`

-}
type ScalingActivityStatusCode
    = ScalingActivityStatusCode_Pending
    | ScalingActivityStatusCode_InProgress
    | ScalingActivityStatusCode_Successful
    | ScalingActivityStatusCode_Overridden
    | ScalingActivityStatusCode_Unfulfilled
    | ScalingActivityStatusCode_Failed



scalingActivityStatusCodeDecoder : JD.Decoder ScalingActivityStatusCode
scalingActivityStatusCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed ScalingActivityStatusCode_Pending

                    "InProgress" ->
                        JD.succeed ScalingActivityStatusCode_InProgress

                    "Successful" ->
                        JD.succeed ScalingActivityStatusCode_Successful

                    "Overridden" ->
                        JD.succeed ScalingActivityStatusCode_Overridden

                    "Unfulfilled" ->
                        JD.succeed ScalingActivityStatusCode_Unfulfilled

                    "Failed" ->
                        JD.succeed ScalingActivityStatusCode_Failed


                    _ ->
                        JD.fail "bad thing"
            )




scalingActivityStatusCodeToString : ScalingActivityStatusCode -> String
scalingActivityStatusCodeToString val =
    case val of
        ScalingActivityStatusCode_Pending ->
            "Pending"

        ScalingActivityStatusCode_InProgress ->
            "InProgress"

        ScalingActivityStatusCode_Successful ->
            "Successful"

        ScalingActivityStatusCode_Overridden ->
            "Overridden"

        ScalingActivityStatusCode_Unfulfilled ->
            "Unfulfilled"

        ScalingActivityStatusCode_Failed ->
            "Failed"




{-| <p>Represents a scaling policy to use with Application Auto Scaling.</p>
-}
type alias ScalingPolicy =
    { policyARN : String
    , policyName : String
    , serviceNamespace : ServiceNamespace
    , resourceId : String
    , scalableDimension : ScalableDimension
    , policyType : PolicyType
    , stepScalingPolicyConfiguration : Maybe StepScalingPolicyConfiguration
    , targetTrackingScalingPolicyConfiguration : Maybe TargetTrackingScalingPolicyConfiguration
    , alarms : Maybe (List Alarm)
    , creationTime : Posix
    }



scalingPolicyDecoder : JD.Decoder ScalingPolicy
scalingPolicyDecoder =
    JD.succeed ScalingPolicy
        
        |> JDP.custom (AWS.Core.Decode.required
            ["PolicyARN", "policyARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["PolicyName", "policyName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ServiceNamespace", "serviceNamespace"]
            serviceNamespaceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceId", "resourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ScalableDimension", "scalableDimension"]
            scalableDimensionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["PolicyType", "policyType"]
            policyTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StepScalingPolicyConfiguration", "stepScalingPolicyConfiguration"]
            stepScalingPolicyConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetTrackingScalingPolicyConfiguration", "targetTrackingScalingPolicyConfiguration"]
            targetTrackingScalingPolicyConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Alarms", "alarms"]
            (JD.list alarmDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        




scalingPolicyToString : ScalingPolicy -> String -- List (String, String)
scalingPolicyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policyARN" "" -- val.policyARN
        
    --     |> Dict.insert
    --         "policyName" "" -- val.policyName
        
    --     |> Dict.insert
    --         "serviceNamespace" "" -- val.serviceNamespace
        
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
        
    --     |> Dict.insert
    --         "scalableDimension" "" -- val.scalableDimension
        
    --     |> Dict.insert
    --         "policyType" "" -- val.policyType
        
    --     |> Dict.insert
    --         "stepScalingPolicyConfiguration" "" -- val.stepScalingPolicyConfiguration
        
    --     |> Dict.insert
    --         "targetTrackingScalingPolicyConfiguration" "" -- val.targetTrackingScalingPolicyConfiguration
        
    --     |> Dict.insert
    --         "alarms" "" -- val.alarms
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.toList
    ""



{-| <p>Represents a scheduled action.</p>
-}
type alias ScheduledAction =
    { scheduledActionName : String
    , scheduledActionARN : String
    , serviceNamespace : ServiceNamespace
    , schedule : String
    , resourceId : String
    , scalableDimension : Maybe ScalableDimension
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , scalableTargetAction : Maybe ScalableTargetAction
    , creationTime : Posix
    }



scheduledActionDecoder : JD.Decoder ScheduledAction
scheduledActionDecoder =
    JD.succeed ScheduledAction
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ScheduledActionName", "scheduledActionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ScheduledActionARN", "scheduledActionARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ServiceNamespace", "serviceNamespace"]
            serviceNamespaceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Schedule", "schedule"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceId", "resourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScalableDimension", "scalableDimension"]
            scalableDimensionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartTime", "startTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndTime", "endTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScalableTargetAction", "scalableTargetAction"]
            scalableTargetActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        




scheduledActionToString : ScheduledAction -> String -- List (String, String)
scheduledActionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "scheduledActionName" "" -- val.scheduledActionName
        
    --     |> Dict.insert
    --         "scheduledActionARN" "" -- val.scheduledActionARN
        
    --     |> Dict.insert
    --         "serviceNamespace" "" -- val.serviceNamespace
        
    --     |> Dict.insert
    --         "schedule" "" -- val.schedule
        
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
        
    --     |> Dict.insert
    --         "scalableDimension" "" -- val.scalableDimension
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "endTime" "" -- val.endTime
        
    --     |> Dict.insert
    --         "scalableTargetAction" "" -- val.scalableTargetAction
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.toList
    ""



{-| One of

* `ServiceNamespace_ecs`
* `ServiceNamespace_elasticmapreduce`
* `ServiceNamespace_ec2`
* `ServiceNamespace_appstream`
* `ServiceNamespace_dynamodb`
* `ServiceNamespace_rds`
* `ServiceNamespace_sagemaker`
* `ServiceNamespace_custom-resource`

-}
type ServiceNamespace
    = ServiceNamespace_ecs
    | ServiceNamespace_elasticmapreduce
    | ServiceNamespace_ec2
    | ServiceNamespace_appstream
    | ServiceNamespace_dynamodb
    | ServiceNamespace_rds
    | ServiceNamespace_sagemaker
    | ServiceNamespace_custom_resource



serviceNamespaceDecoder : JD.Decoder ServiceNamespace
serviceNamespaceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ecs" ->
                        JD.succeed ServiceNamespace_ecs

                    "elasticmapreduce" ->
                        JD.succeed ServiceNamespace_elasticmapreduce

                    "ec2" ->
                        JD.succeed ServiceNamespace_ec2

                    "appstream" ->
                        JD.succeed ServiceNamespace_appstream

                    "dynamodb" ->
                        JD.succeed ServiceNamespace_dynamodb

                    "rds" ->
                        JD.succeed ServiceNamespace_rds

                    "sagemaker" ->
                        JD.succeed ServiceNamespace_sagemaker

                    "custom_resource" ->
                        JD.succeed ServiceNamespace_custom_resource


                    _ ->
                        JD.fail "bad thing"
            )




serviceNamespaceToString : ServiceNamespace -> String
serviceNamespaceToString val =
    case val of
        ServiceNamespace_ecs ->
            "ecs"

        ServiceNamespace_elasticmapreduce ->
            "elasticmapreduce"

        ServiceNamespace_ec2 ->
            "ec2"

        ServiceNamespace_appstream ->
            "appstream"

        ServiceNamespace_dynamodb ->
            "dynamodb"

        ServiceNamespace_rds ->
            "rds"

        ServiceNamespace_sagemaker ->
            "sagemaker"

        ServiceNamespace_custom_resource ->
            "custom_resource"




{-| <p>Represents a step adjustment for a <a>StepScalingPolicyConfiguration</a>. Describes an adjustment based on the difference between the value of the aggregated CloudWatch metric and the breach threshold that you've defined for the alarm. </p> <p>For the following examples, suppose that you have an alarm with a breach threshold of 50:</p> <ul> <li> <p>To trigger the adjustment when the metric is greater than or equal to 50 and less than 60, specify a lower bound of 0 and an upper bound of 10.</p> </li> <li> <p>To trigger the adjustment when the metric is greater than 40 and less than or equal to 50, specify a lower bound of -10 and an upper bound of 0.</p> </li> </ul> <p>There are a few rules for the step adjustments for your step policy:</p> <ul> <li> <p>The ranges of your step adjustments can't overlap or have a gap.</p> </li> <li> <p>At most one step adjustment can have a null lower bound. If one step adjustment has a negative lower bound, then there must be a step adjustment with a null lower bound.</p> </li> <li> <p>At most one step adjustment can have a null upper bound. If one step adjustment has a positive upper bound, then there must be a step adjustment with a null upper bound.</p> </li> <li> <p>The upper and lower bound can't be null in the same step adjustment.</p> </li> </ul>
-}
type alias StepAdjustment =
    { metricIntervalLowerBound : Maybe Float
    , metricIntervalUpperBound : Maybe Float
    , scalingAdjustment : Int
    }



stepAdjustmentDecoder : JD.Decoder StepAdjustment
stepAdjustmentDecoder =
    JD.succeed StepAdjustment
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MetricIntervalLowerBound", "metricIntervalLowerBound"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MetricIntervalUpperBound", "metricIntervalUpperBound"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ScalingAdjustment", "scalingAdjustment"]
            JD.int
        )
        




stepAdjustmentToString : StepAdjustment -> String -- List (String, String)
stepAdjustmentToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "metricIntervalLowerBound" "" -- val.metricIntervalLowerBound
        
    --     |> Dict.insert
    --         "metricIntervalUpperBound" "" -- val.metricIntervalUpperBound
        
    --     |> Dict.insert
    --         "scalingAdjustment" "" -- val.scalingAdjustment
        
    --     |> Dict.toList
    ""



{-| <p>Represents a step scaling policy configuration to use with Application Auto Scaling.</p>
-}
type alias StepScalingPolicyConfiguration =
    { adjustmentType : Maybe AdjustmentType
    , stepAdjustments : Maybe (List StepAdjustment)
    , minAdjustmentMagnitude : Maybe Int
    , cooldown : Maybe Int
    , metricAggregationType : Maybe MetricAggregationType
    }



stepScalingPolicyConfigurationDecoder : JD.Decoder StepScalingPolicyConfiguration
stepScalingPolicyConfigurationDecoder =
    JD.succeed StepScalingPolicyConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AdjustmentType", "adjustmentType"]
            adjustmentTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StepAdjustments", "stepAdjustments"]
            (JD.list stepAdjustmentDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinAdjustmentMagnitude", "minAdjustmentMagnitude"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Cooldown", "cooldown"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MetricAggregationType", "metricAggregationType"]
            metricAggregationTypeDecoder
        )
        




stepScalingPolicyConfigurationToString : StepScalingPolicyConfiguration -> String -- List (String, String)
stepScalingPolicyConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "adjustmentType" "" -- val.adjustmentType
        
    --     |> Dict.insert
    --         "stepAdjustments" "" -- val.stepAdjustments
        
    --     |> Dict.insert
    --         "minAdjustmentMagnitude" "" -- val.minAdjustmentMagnitude
        
    --     |> Dict.insert
    --         "cooldown" "" -- val.cooldown
        
    --     |> Dict.insert
    --         "metricAggregationType" "" -- val.metricAggregationType
        
    --     |> Dict.toList
    ""



{-| <p>Represents a target tracking scaling policy configuration to use with Application Auto Scaling.</p>
-}
type alias TargetTrackingScalingPolicyConfiguration =
    { targetValue : Float
    , predefinedMetricSpecification : Maybe PredefinedMetricSpecification
    , customizedMetricSpecification : Maybe CustomizedMetricSpecification
    , scaleOutCooldown : Maybe Int
    , scaleInCooldown : Maybe Int
    , disableScaleIn : Maybe Bool
    }



targetTrackingScalingPolicyConfigurationDecoder : JD.Decoder TargetTrackingScalingPolicyConfiguration
targetTrackingScalingPolicyConfigurationDecoder =
    JD.succeed TargetTrackingScalingPolicyConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TargetValue", "targetValue"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PredefinedMetricSpecification", "predefinedMetricSpecification"]
            predefinedMetricSpecificationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomizedMetricSpecification", "customizedMetricSpecification"]
            customizedMetricSpecificationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScaleOutCooldown", "scaleOutCooldown"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScaleInCooldown", "scaleInCooldown"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DisableScaleIn", "disableScaleIn"]
            JD.bool
        )
        




targetTrackingScalingPolicyConfigurationToString : TargetTrackingScalingPolicyConfiguration -> String -- List (String, String)
targetTrackingScalingPolicyConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "targetValue" "" -- val.targetValue
        
    --     |> Dict.insert
    --         "predefinedMetricSpecification" "" -- val.predefinedMetricSpecification
        
    --     |> Dict.insert
    --         "customizedMetricSpecification" "" -- val.customizedMetricSpecification
        
    --     |> Dict.insert
    --         "scaleOutCooldown" "" -- val.scaleOutCooldown
        
    --     |> Dict.insert
    --         "scaleInCooldown" "" -- val.scaleInCooldown
        
    --     |> Dict.insert
    --         "disableScaleIn" "" -- val.disableScaleIn
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias DeleteScalingPolicyRequest =
    { policyName : String
    , serviceNamespace : ServiceNamespace
    , resourceId : String
    , scalableDimension : ScalableDimension
    }


{-| undefined
-}
type alias DeleteScheduledActionRequest =
    { serviceNamespace : ServiceNamespace
    , scheduledActionName : String
    , resourceId : String
    , scalableDimension : ScalableDimension
    }


{-| undefined
-}
type alias DeregisterScalableTargetRequest =
    { serviceNamespace : ServiceNamespace
    , resourceId : String
    , scalableDimension : ScalableDimension
    }


{-| undefined
-}
type alias DescribeScalableTargetsRequest =
    { serviceNamespace : ServiceNamespace
    , resourceIds : Maybe (List String)
    , scalableDimension : Maybe ScalableDimension
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeScalingActivitiesRequest =
    { serviceNamespace : ServiceNamespace
    , resourceId : Maybe String
    , scalableDimension : Maybe ScalableDimension
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeScalingPoliciesRequest =
    { policyNames : Maybe (List String)
    , serviceNamespace : ServiceNamespace
    , resourceId : Maybe String
    , scalableDimension : Maybe ScalableDimension
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeScheduledActionsRequest =
    { scheduledActionNames : Maybe (List String)
    , serviceNamespace : ServiceNamespace
    , resourceId : Maybe String
    , scalableDimension : Maybe ScalableDimension
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias PutScalingPolicyRequest =
    { policyName : String
    , serviceNamespace : ServiceNamespace
    , resourceId : String
    , scalableDimension : ScalableDimension
    , policyType : Maybe PolicyType
    , stepScalingPolicyConfiguration : Maybe StepScalingPolicyConfiguration
    , targetTrackingScalingPolicyConfiguration : Maybe TargetTrackingScalingPolicyConfiguration
    }


{-| undefined
-}
type alias PutScheduledActionRequest =
    { serviceNamespace : ServiceNamespace
    , schedule : Maybe String
    , scheduledActionName : String
    , resourceId : String
    , scalableDimension : ScalableDimension
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , scalableTargetAction : Maybe ScalableTargetAction
    }


{-| undefined
-}
type alias RegisterScalableTargetRequest =
    { serviceNamespace : ServiceNamespace
    , resourceId : String
    , scalableDimension : ScalableDimension
    , minCapacity : Maybe Int
    , maxCapacity : Maybe Int
    , roleARN : Maybe String
    }










alarmEncoder : Alarm -> JE.Value
alarmEncoder data =
    []
        
        
        |> (::) ("AlarmName", data.alarmName |> (JE.string))
        
        
        
        |> (::) ("AlarmARN", data.alarmARN |> (JE.string))
        
        
        |> JE.object






customizedMetricSpecificationEncoder : CustomizedMetricSpecification -> JE.Value
customizedMetricSpecificationEncoder data =
    []
        
        
        |> (::) ("MetricName", data.metricName |> (JE.string))
        
        
        
        |> (::) ("Namespace", data.namespace |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (metricDimensionEncoder))
            ("Dimensions", data.dimensions)
        
        
        
        |> (::) ("Statistic", data.statistic |> (metricStatisticToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Unit", data.unit)
        
        
        |> JE.object






deleteScalingPolicyRequestEncoder : DeleteScalingPolicyRequest -> JE.Value
deleteScalingPolicyRequestEncoder data =
    []
        
        
        |> (::) ("PolicyName", data.policyName |> (JE.string))
        
        
        
        |> (::) ("ServiceNamespace", data.serviceNamespace |> (serviceNamespaceToString >> JE.string))
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("ScalableDimension", data.scalableDimension |> (scalableDimensionToString >> JE.string))
        
        
        |> JE.object






deleteScalingPolicyResponseEncoder : DeleteScalingPolicyResponse -> JE.Value
deleteScalingPolicyResponseEncoder data =
    []
        
        |> JE.object






deleteScheduledActionRequestEncoder : DeleteScheduledActionRequest -> JE.Value
deleteScheduledActionRequestEncoder data =
    []
        
        
        |> (::) ("ServiceNamespace", data.serviceNamespace |> (serviceNamespaceToString >> JE.string))
        
        
        
        |> (::) ("ScheduledActionName", data.scheduledActionName |> (JE.string))
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("ScalableDimension", data.scalableDimension |> (scalableDimensionToString >> JE.string))
        
        
        |> JE.object






deleteScheduledActionResponseEncoder : DeleteScheduledActionResponse -> JE.Value
deleteScheduledActionResponseEncoder data =
    []
        
        |> JE.object






deregisterScalableTargetRequestEncoder : DeregisterScalableTargetRequest -> JE.Value
deregisterScalableTargetRequestEncoder data =
    []
        
        
        |> (::) ("ServiceNamespace", data.serviceNamespace |> (serviceNamespaceToString >> JE.string))
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("ScalableDimension", data.scalableDimension |> (scalableDimensionToString >> JE.string))
        
        
        |> JE.object






deregisterScalableTargetResponseEncoder : DeregisterScalableTargetResponse -> JE.Value
deregisterScalableTargetResponseEncoder data =
    []
        
        |> JE.object






describeScalableTargetsRequestEncoder : DescribeScalableTargetsRequest -> JE.Value
describeScalableTargetsRequestEncoder data =
    []
        
        
        |> (::) ("ServiceNamespace", data.serviceNamespace |> (serviceNamespaceToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ResourceIds", data.resourceIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scalableDimensionToString >> JE.string)
            ("ScalableDimension", data.scalableDimension)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeScalableTargetsResponseEncoder : DescribeScalableTargetsResponse -> JE.Value
describeScalableTargetsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (scalableTargetEncoder))
            ("ScalableTargets", data.scalableTargets)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeScalingActivitiesRequestEncoder : DescribeScalingActivitiesRequest -> JE.Value
describeScalingActivitiesRequestEncoder data =
    []
        
        
        |> (::) ("ServiceNamespace", data.serviceNamespace |> (serviceNamespaceToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceId", data.resourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scalableDimensionToString >> JE.string)
            ("ScalableDimension", data.scalableDimension)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeScalingActivitiesResponseEncoder : DescribeScalingActivitiesResponse -> JE.Value
describeScalingActivitiesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (scalingActivityEncoder))
            ("ScalingActivities", data.scalingActivities)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeScalingPoliciesRequestEncoder : DescribeScalingPoliciesRequest -> JE.Value
describeScalingPoliciesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("PolicyNames", data.policyNames)
        
        
        
        |> (::) ("ServiceNamespace", data.serviceNamespace |> (serviceNamespaceToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceId", data.resourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scalableDimensionToString >> JE.string)
            ("ScalableDimension", data.scalableDimension)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeScalingPoliciesResponseEncoder : DescribeScalingPoliciesResponse -> JE.Value
describeScalingPoliciesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (scalingPolicyEncoder))
            ("ScalingPolicies", data.scalingPolicies)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeScheduledActionsRequestEncoder : DescribeScheduledActionsRequest -> JE.Value
describeScheduledActionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ScheduledActionNames", data.scheduledActionNames)
        
        
        
        |> (::) ("ServiceNamespace", data.serviceNamespace |> (serviceNamespaceToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceId", data.resourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scalableDimensionToString >> JE.string)
            ("ScalableDimension", data.scalableDimension)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeScheduledActionsResponseEncoder : DescribeScheduledActionsResponse -> JE.Value
describeScheduledActionsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (scheduledActionEncoder))
            ("ScheduledActions", data.scheduledActions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object










metricDimensionEncoder : MetricDimension -> JE.Value
metricDimensionEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("Value", data.value |> (JE.string))
        
        
        |> JE.object


















predefinedMetricSpecificationEncoder : PredefinedMetricSpecification -> JE.Value
predefinedMetricSpecificationEncoder data =
    []
        
        
        |> (::) ("PredefinedMetricType", data.predefinedMetricType |> (metricTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceLabel", data.resourceLabel)
        
        
        |> JE.object






putScalingPolicyRequestEncoder : PutScalingPolicyRequest -> JE.Value
putScalingPolicyRequestEncoder data =
    []
        
        
        |> (::) ("PolicyName", data.policyName |> (JE.string))
        
        
        
        |> (::) ("ServiceNamespace", data.serviceNamespace |> (serviceNamespaceToString >> JE.string))
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("ScalableDimension", data.scalableDimension |> (scalableDimensionToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (policyTypeToString >> JE.string)
            ("PolicyType", data.policyType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stepScalingPolicyConfigurationEncoder)
            ("StepScalingPolicyConfiguration", data.stepScalingPolicyConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (targetTrackingScalingPolicyConfigurationEncoder)
            ("TargetTrackingScalingPolicyConfiguration", data.targetTrackingScalingPolicyConfiguration)
        
        
        |> JE.object






putScalingPolicyResponseEncoder : PutScalingPolicyResponse -> JE.Value
putScalingPolicyResponseEncoder data =
    []
        
        
        |> (::) ("PolicyARN", data.policyARN |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (alarmEncoder))
            ("Alarms", data.alarms)
        
        
        |> JE.object






putScheduledActionRequestEncoder : PutScheduledActionRequest -> JE.Value
putScheduledActionRequestEncoder data =
    []
        
        
        |> (::) ("ServiceNamespace", data.serviceNamespace |> (serviceNamespaceToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Schedule", data.schedule)
        
        
        
        |> (::) ("ScheduledActionName", data.scheduledActionName |> (JE.string))
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("ScalableDimension", data.scalableDimension |> (scalableDimensionToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("EndTime", data.endTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scalableTargetActionEncoder)
            ("ScalableTargetAction", data.scalableTargetAction)
        
        
        |> JE.object






putScheduledActionResponseEncoder : PutScheduledActionResponse -> JE.Value
putScheduledActionResponseEncoder data =
    []
        
        |> JE.object






registerScalableTargetRequestEncoder : RegisterScalableTargetRequest -> JE.Value
registerScalableTargetRequestEncoder data =
    []
        
        
        |> (::) ("ServiceNamespace", data.serviceNamespace |> (serviceNamespaceToString >> JE.string))
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("ScalableDimension", data.scalableDimension |> (scalableDimensionToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MinCapacity", data.minCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxCapacity", data.maxCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        |> JE.object






registerScalableTargetResponseEncoder : RegisterScalableTargetResponse -> JE.Value
registerScalableTargetResponseEncoder data =
    []
        
        |> JE.object










scalableTargetEncoder : ScalableTarget -> JE.Value
scalableTargetEncoder data =
    []
        
        
        |> (::) ("ServiceNamespace", data.serviceNamespace |> (serviceNamespaceToString >> JE.string))
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("ScalableDimension", data.scalableDimension |> (scalableDimensionToString >> JE.string))
        
        
        
        |> (::) ("MinCapacity", data.minCapacity |> (JE.int))
        
        
        
        |> (::) ("MaxCapacity", data.maxCapacity |> (JE.int))
        
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        
        |> (::) ("CreationTime", data.creationTime |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






scalableTargetActionEncoder : ScalableTargetAction -> JE.Value
scalableTargetActionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MinCapacity", data.minCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxCapacity", data.maxCapacity)
        
        
        |> JE.object






scalingActivityEncoder : ScalingActivity -> JE.Value
scalingActivityEncoder data =
    []
        
        
        |> (::) ("ActivityId", data.activityId |> (JE.string))
        
        
        
        |> (::) ("ServiceNamespace", data.serviceNamespace |> (serviceNamespaceToString >> JE.string))
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("ScalableDimension", data.scalableDimension |> (scalableDimensionToString >> JE.string))
        
        
        
        |> (::) ("Description", data.description |> (JE.string))
        
        
        
        |> (::) ("Cause", data.cause |> (JE.string))
        
        
        
        |> (::) ("StartTime", data.startTime |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("EndTime", data.endTime)
        
        
        
        |> (::) ("StatusCode", data.statusCode |> (scalingActivityStatusCodeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusMessage", data.statusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Details", data.details)
        
        
        |> JE.object










scalingPolicyEncoder : ScalingPolicy -> JE.Value
scalingPolicyEncoder data =
    []
        
        
        |> (::) ("PolicyARN", data.policyARN |> (JE.string))
        
        
        
        |> (::) ("PolicyName", data.policyName |> (JE.string))
        
        
        
        |> (::) ("ServiceNamespace", data.serviceNamespace |> (serviceNamespaceToString >> JE.string))
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("ScalableDimension", data.scalableDimension |> (scalableDimensionToString >> JE.string))
        
        
        
        |> (::) ("PolicyType", data.policyType |> (policyTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stepScalingPolicyConfigurationEncoder)
            ("StepScalingPolicyConfiguration", data.stepScalingPolicyConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (targetTrackingScalingPolicyConfigurationEncoder)
            ("TargetTrackingScalingPolicyConfiguration", data.targetTrackingScalingPolicyConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (alarmEncoder))
            ("Alarms", data.alarms)
        
        
        
        |> (::) ("CreationTime", data.creationTime |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






scheduledActionEncoder : ScheduledAction -> JE.Value
scheduledActionEncoder data =
    []
        
        
        |> (::) ("ScheduledActionName", data.scheduledActionName |> (JE.string))
        
        
        
        |> (::) ("ScheduledActionARN", data.scheduledActionARN |> (JE.string))
        
        
        
        |> (::) ("ServiceNamespace", data.serviceNamespace |> (serviceNamespaceToString >> JE.string))
        
        
        
        |> (::) ("Schedule", data.schedule |> (JE.string))
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scalableDimensionToString >> JE.string)
            ("ScalableDimension", data.scalableDimension)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("EndTime", data.endTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scalableTargetActionEncoder)
            ("ScalableTargetAction", data.scalableTargetAction)
        
        
        
        |> (::) ("CreationTime", data.creationTime |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object










stepAdjustmentEncoder : StepAdjustment -> JE.Value
stepAdjustmentEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("MetricIntervalLowerBound", data.metricIntervalLowerBound)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("MetricIntervalUpperBound", data.metricIntervalUpperBound)
        
        
        
        |> (::) ("ScalingAdjustment", data.scalingAdjustment |> (JE.int))
        
        
        |> JE.object






stepScalingPolicyConfigurationEncoder : StepScalingPolicyConfiguration -> JE.Value
stepScalingPolicyConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (adjustmentTypeToString >> JE.string)
            ("AdjustmentType", data.adjustmentType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (stepAdjustmentEncoder))
            ("StepAdjustments", data.stepAdjustments)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MinAdjustmentMagnitude", data.minAdjustmentMagnitude)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Cooldown", data.cooldown)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (metricAggregationTypeToString >> JE.string)
            ("MetricAggregationType", data.metricAggregationType)
        
        
        |> JE.object






targetTrackingScalingPolicyConfigurationEncoder : TargetTrackingScalingPolicyConfiguration -> JE.Value
targetTrackingScalingPolicyConfigurationEncoder data =
    []
        
        
        |> (::) ("TargetValue", data.targetValue |> (JE.float))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (predefinedMetricSpecificationEncoder)
            ("PredefinedMetricSpecification", data.predefinedMetricSpecification)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (customizedMetricSpecificationEncoder)
            ("CustomizedMetricSpecification", data.customizedMetricSpecification)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ScaleOutCooldown", data.scaleOutCooldown)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ScaleInCooldown", data.scaleInCooldown)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("DisableScaleIn", data.disableScaleIn)
        
        
        |> JE.object





