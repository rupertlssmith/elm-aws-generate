module AWS.ElasticLoadBalancingv2
    exposing
        ( service
        , addListenerCertificates
        , addTags
        , createListener
        , CreateListenerOptions
        , createLoadBalancer
        , CreateLoadBalancerOptions
        , createRule
        , createTargetGroup
        , CreateTargetGroupOptions
        , deleteListener
        , deleteLoadBalancer
        , deleteRule
        , deleteTargetGroup
        , deregisterTargets
        , describeAccountLimits
        , DescribeAccountLimitsOptions
        , describeListenerCertificates
        , DescribeListenerCertificatesOptions
        , describeListeners
        , DescribeListenersOptions
        , describeLoadBalancerAttributes
        , describeLoadBalancers
        , DescribeLoadBalancersOptions
        , describeRules
        , DescribeRulesOptions
        , describeSSLPolicies
        , DescribeSSLPoliciesOptions
        , describeTags
        , describeTargetGroupAttributes
        , describeTargetGroups
        , DescribeTargetGroupsOptions
        , describeTargetHealth
        , DescribeTargetHealthOptions
        , modifyListener
        , ModifyListenerOptions
        , modifyLoadBalancerAttributes
        , modifyRule
        , ModifyRuleOptions
        , modifyTargetGroup
        , ModifyTargetGroupOptions
        , modifyTargetGroupAttributes
        , registerTargets
        , removeListenerCertificates
        , removeTags
        , setIpAddressType
        , setRulePriorities
        , setSecurityGroups
        , setSubnets
        , SetSubnetsOptions
        , Action
        , ActionTypeEnum(..)
        , AddListenerCertificatesOutput
        , AddTagsOutput
        , AuthenticateCognitoActionConditionalBehaviorEnum(..)
        , AuthenticateCognitoActionConfig
        , AuthenticateOidcActionConditionalBehaviorEnum(..)
        , AuthenticateOidcActionConfig
        , AvailabilityZone
        , Certificate
        , Cipher
        , CreateListenerOutput
        , CreateLoadBalancerOutput
        , CreateRuleOutput
        , CreateTargetGroupOutput
        , DeleteListenerOutput
        , DeleteLoadBalancerOutput
        , DeleteRuleOutput
        , DeleteTargetGroupOutput
        , DeregisterTargetsOutput
        , DescribeAccountLimitsOutput
        , DescribeListenerCertificatesOutput
        , DescribeListenersOutput
        , DescribeLoadBalancerAttributesOutput
        , DescribeLoadBalancersOutput
        , DescribeRulesOutput
        , DescribeSSLPoliciesOutput
        , DescribeTagsOutput
        , DescribeTargetGroupAttributesOutput
        , DescribeTargetGroupsOutput
        , DescribeTargetHealthOutput
        , FixedResponseActionConfig
        , HostHeaderConditionConfig
        , HttpHeaderConditionConfig
        , HttpRequestMethodConditionConfig
        , IpAddressType(..)
        , Limit
        , Listener
        , LoadBalancer
        , LoadBalancerAddress
        , LoadBalancerAttribute
        , LoadBalancerSchemeEnum(..)
        , LoadBalancerState
        , LoadBalancerStateEnum(..)
        , LoadBalancerTypeEnum(..)
        , Matcher
        , ModifyListenerOutput
        , ModifyLoadBalancerAttributesOutput
        , ModifyRuleOutput
        , ModifyTargetGroupAttributesOutput
        , ModifyTargetGroupOutput
        , PathPatternConditionConfig
        , ProtocolEnum(..)
        , QueryStringConditionConfig
        , QueryStringKeyValuePair
        , RedirectActionConfig
        , RedirectActionStatusCodeEnum(..)
        , RegisterTargetsOutput
        , RemoveListenerCertificatesOutput
        , RemoveTagsOutput
        , Rule
        , RuleCondition
        , RulePriorityPair
        , SetIpAddressTypeOutput
        , SetRulePrioritiesOutput
        , SetSecurityGroupsOutput
        , SetSubnetsOutput
        , SourceIpConditionConfig
        , SslPolicy
        , SubnetMapping
        , Tag
        , TagDescription
        , TargetDescription
        , TargetGroup
        , TargetGroupAttribute
        , TargetHealth
        , TargetHealthDescription
        , TargetHealthReasonEnum(..)
        , TargetHealthStateEnum(..)
        , TargetTypeEnum(..)
        )

{-| <fullname>Elastic Load Balancing</fullname> <p>A load balancer distributes incoming traffic across targets, such as your EC2 instances. This enables you to increase the availability of your application. The load balancer also monitors the health of its registered targets and ensures that it routes traffic only to healthy targets. You configure your load balancer to accept incoming traffic by specifying one or more listeners, which are configured with a protocol and port number for connections from clients to the load balancer. You configure a target group with a protocol and port number for connections from the load balancer to the targets, and with health check settings to be used when checking the health status of the targets.</p> <p>Elastic Load Balancing supports the following types of load balancers: Application Load Balancers, Network Load Balancers, and Classic Load Balancers.</p> <p>An Application Load Balancer makes routing and load balancing decisions at the application layer (HTTP/HTTPS). A Network Load Balancer makes routing and load balancing decisions at the transport layer (TCP/TLS). Both Application Load Balancers and Network Load Balancers can route requests to one or more ports on each EC2 instance or container instance in your virtual private cloud (VPC).</p> <p>A Classic Load Balancer makes routing and load balancing decisions either at the transport layer (TCP/SSL) or the application layer (HTTP/HTTPS), and supports either EC2-Classic or a VPC. For more information, see the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/">Elastic Load Balancing User Guide</a>.</p> <p>This reference covers the 2015-12-01 API, which supports Application Load Balancers and Network Load Balancers. The 2012-06-01 API supports Classic Load Balancers.</p> <p>To get started, complete the following tasks:</p> <ol> <li> <p>Create a load balancer using <a>CreateLoadBalancer</a>.</p> </li> <li> <p>Create a target group using <a>CreateTargetGroup</a>.</p> </li> <li> <p>Register targets for the target group using <a>RegisterTargets</a>.</p> </li> <li> <p>Create one or more listeners for your load balancer using <a>CreateListener</a>.</p> </li> </ol> <p>To delete a load balancer and its related resources, complete the following tasks:</p> <ol> <li> <p>Delete the load balancer using <a>DeleteLoadBalancer</a>.</p> </li> <li> <p>Delete the target group using <a>DeleteTargetGroup</a>.</p> </li> </ol> <p>All Elastic Load Balancing operations are idempotent, which means that they complete at most one time. If you repeat an operation, it succeeds.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [addListenerCertificates](#addListenerCertificates)
* [addTags](#addTags)
* [createListener](#createListener)
* [CreateListenerOptions](#CreateListenerOptions)
* [createLoadBalancer](#createLoadBalancer)
* [CreateLoadBalancerOptions](#CreateLoadBalancerOptions)
* [createRule](#createRule)
* [createTargetGroup](#createTargetGroup)
* [CreateTargetGroupOptions](#CreateTargetGroupOptions)
* [deleteListener](#deleteListener)
* [deleteLoadBalancer](#deleteLoadBalancer)
* [deleteRule](#deleteRule)
* [deleteTargetGroup](#deleteTargetGroup)
* [deregisterTargets](#deregisterTargets)
* [describeAccountLimits](#describeAccountLimits)
* [DescribeAccountLimitsOptions](#DescribeAccountLimitsOptions)
* [describeListenerCertificates](#describeListenerCertificates)
* [DescribeListenerCertificatesOptions](#DescribeListenerCertificatesOptions)
* [describeListeners](#describeListeners)
* [DescribeListenersOptions](#DescribeListenersOptions)
* [describeLoadBalancerAttributes](#describeLoadBalancerAttributes)
* [describeLoadBalancers](#describeLoadBalancers)
* [DescribeLoadBalancersOptions](#DescribeLoadBalancersOptions)
* [describeRules](#describeRules)
* [DescribeRulesOptions](#DescribeRulesOptions)
* [describeSSLPolicies](#describeSSLPolicies)
* [DescribeSSLPoliciesOptions](#DescribeSSLPoliciesOptions)
* [describeTags](#describeTags)
* [describeTargetGroupAttributes](#describeTargetGroupAttributes)
* [describeTargetGroups](#describeTargetGroups)
* [DescribeTargetGroupsOptions](#DescribeTargetGroupsOptions)
* [describeTargetHealth](#describeTargetHealth)
* [DescribeTargetHealthOptions](#DescribeTargetHealthOptions)
* [modifyListener](#modifyListener)
* [ModifyListenerOptions](#ModifyListenerOptions)
* [modifyLoadBalancerAttributes](#modifyLoadBalancerAttributes)
* [modifyRule](#modifyRule)
* [ModifyRuleOptions](#ModifyRuleOptions)
* [modifyTargetGroup](#modifyTargetGroup)
* [ModifyTargetGroupOptions](#ModifyTargetGroupOptions)
* [modifyTargetGroupAttributes](#modifyTargetGroupAttributes)
* [registerTargets](#registerTargets)
* [removeListenerCertificates](#removeListenerCertificates)
* [removeTags](#removeTags)
* [setIpAddressType](#setIpAddressType)
* [setRulePriorities](#setRulePriorities)
* [setSecurityGroups](#setSecurityGroups)
* [setSubnets](#setSubnets)
* [SetSubnetsOptions](#SetSubnetsOptions)


@docs addListenerCertificates,addTags,createListener,CreateListenerOptions,createLoadBalancer,CreateLoadBalancerOptions,createRule,createTargetGroup,CreateTargetGroupOptions,deleteListener,deleteLoadBalancer,deleteRule,deleteTargetGroup,deregisterTargets,describeAccountLimits,DescribeAccountLimitsOptions,describeListenerCertificates,DescribeListenerCertificatesOptions,describeListeners,DescribeListenersOptions,describeLoadBalancerAttributes,describeLoadBalancers,DescribeLoadBalancersOptions,describeRules,DescribeRulesOptions,describeSSLPolicies,DescribeSSLPoliciesOptions,describeTags,describeTargetGroupAttributes,describeTargetGroups,DescribeTargetGroupsOptions,describeTargetHealth,DescribeTargetHealthOptions,modifyListener,ModifyListenerOptions,modifyLoadBalancerAttributes,modifyRule,ModifyRuleOptions,modifyTargetGroup,ModifyTargetGroupOptions,modifyTargetGroupAttributes,registerTargets,removeListenerCertificates,removeTags,setIpAddressType,setRulePriorities,setSecurityGroups,setSubnets,SetSubnetsOptions

## Responses

* [AddListenerCertificatesOutput](#AddListenerCertificatesOutput)
* [AddTagsOutput](#AddTagsOutput)
* [CreateListenerOutput](#CreateListenerOutput)
* [CreateLoadBalancerOutput](#CreateLoadBalancerOutput)
* [CreateRuleOutput](#CreateRuleOutput)
* [CreateTargetGroupOutput](#CreateTargetGroupOutput)
* [DeleteListenerOutput](#DeleteListenerOutput)
* [DeleteLoadBalancerOutput](#DeleteLoadBalancerOutput)
* [DeleteRuleOutput](#DeleteRuleOutput)
* [DeleteTargetGroupOutput](#DeleteTargetGroupOutput)
* [DeregisterTargetsOutput](#DeregisterTargetsOutput)
* [DescribeAccountLimitsOutput](#DescribeAccountLimitsOutput)
* [DescribeListenerCertificatesOutput](#DescribeListenerCertificatesOutput)
* [DescribeListenersOutput](#DescribeListenersOutput)
* [DescribeLoadBalancerAttributesOutput](#DescribeLoadBalancerAttributesOutput)
* [DescribeLoadBalancersOutput](#DescribeLoadBalancersOutput)
* [DescribeRulesOutput](#DescribeRulesOutput)
* [DescribeSSLPoliciesOutput](#DescribeSSLPoliciesOutput)
* [DescribeTagsOutput](#DescribeTagsOutput)
* [DescribeTargetGroupAttributesOutput](#DescribeTargetGroupAttributesOutput)
* [DescribeTargetGroupsOutput](#DescribeTargetGroupsOutput)
* [DescribeTargetHealthOutput](#DescribeTargetHealthOutput)
* [ModifyListenerOutput](#ModifyListenerOutput)
* [ModifyLoadBalancerAttributesOutput](#ModifyLoadBalancerAttributesOutput)
* [ModifyRuleOutput](#ModifyRuleOutput)
* [ModifyTargetGroupAttributesOutput](#ModifyTargetGroupAttributesOutput)
* [ModifyTargetGroupOutput](#ModifyTargetGroupOutput)
* [RegisterTargetsOutput](#RegisterTargetsOutput)
* [RemoveListenerCertificatesOutput](#RemoveListenerCertificatesOutput)
* [RemoveTagsOutput](#RemoveTagsOutput)
* [SetIpAddressTypeOutput](#SetIpAddressTypeOutput)
* [SetRulePrioritiesOutput](#SetRulePrioritiesOutput)
* [SetSecurityGroupsOutput](#SetSecurityGroupsOutput)
* [SetSubnetsOutput](#SetSubnetsOutput)


@docs AddListenerCertificatesOutput,AddTagsOutput,CreateListenerOutput,CreateLoadBalancerOutput,CreateRuleOutput,CreateTargetGroupOutput,DeleteListenerOutput,DeleteLoadBalancerOutput,DeleteRuleOutput,DeleteTargetGroupOutput,DeregisterTargetsOutput,DescribeAccountLimitsOutput,DescribeListenerCertificatesOutput,DescribeListenersOutput,DescribeLoadBalancerAttributesOutput,DescribeLoadBalancersOutput,DescribeRulesOutput,DescribeSSLPoliciesOutput,DescribeTagsOutput,DescribeTargetGroupAttributesOutput,DescribeTargetGroupsOutput,DescribeTargetHealthOutput,ModifyListenerOutput,ModifyLoadBalancerAttributesOutput,ModifyRuleOutput,ModifyTargetGroupAttributesOutput,ModifyTargetGroupOutput,RegisterTargetsOutput,RemoveListenerCertificatesOutput,RemoveTagsOutput,SetIpAddressTypeOutput,SetRulePrioritiesOutput,SetSecurityGroupsOutput,SetSubnetsOutput

## Records

* [Action](#Action)
* [AuthenticateCognitoActionConfig](#AuthenticateCognitoActionConfig)
* [AuthenticateOidcActionConfig](#AuthenticateOidcActionConfig)
* [AvailabilityZone](#AvailabilityZone)
* [Certificate](#Certificate)
* [Cipher](#Cipher)
* [FixedResponseActionConfig](#FixedResponseActionConfig)
* [HostHeaderConditionConfig](#HostHeaderConditionConfig)
* [HttpHeaderConditionConfig](#HttpHeaderConditionConfig)
* [HttpRequestMethodConditionConfig](#HttpRequestMethodConditionConfig)
* [Limit](#Limit)
* [Listener](#Listener)
* [LoadBalancer](#LoadBalancer)
* [LoadBalancerAddress](#LoadBalancerAddress)
* [LoadBalancerAttribute](#LoadBalancerAttribute)
* [LoadBalancerState](#LoadBalancerState)
* [Matcher](#Matcher)
* [PathPatternConditionConfig](#PathPatternConditionConfig)
* [QueryStringConditionConfig](#QueryStringConditionConfig)
* [QueryStringKeyValuePair](#QueryStringKeyValuePair)
* [RedirectActionConfig](#RedirectActionConfig)
* [Rule](#Rule)
* [RuleCondition](#RuleCondition)
* [RulePriorityPair](#RulePriorityPair)
* [SourceIpConditionConfig](#SourceIpConditionConfig)
* [SslPolicy](#SslPolicy)
* [SubnetMapping](#SubnetMapping)
* [Tag](#Tag)
* [TagDescription](#TagDescription)
* [TargetDescription](#TargetDescription)
* [TargetGroup](#TargetGroup)
* [TargetGroupAttribute](#TargetGroupAttribute)
* [TargetHealth](#TargetHealth)
* [TargetHealthDescription](#TargetHealthDescription)


@docs Action,AuthenticateCognitoActionConfig,AuthenticateOidcActionConfig,AvailabilityZone,Certificate,Cipher,FixedResponseActionConfig,HostHeaderConditionConfig,HttpHeaderConditionConfig,HttpRequestMethodConditionConfig,Limit,Listener,LoadBalancer,LoadBalancerAddress,LoadBalancerAttribute,LoadBalancerState,Matcher,PathPatternConditionConfig,QueryStringConditionConfig,QueryStringKeyValuePair,RedirectActionConfig,Rule,RuleCondition,RulePriorityPair,SourceIpConditionConfig,SslPolicy,SubnetMapping,Tag,TagDescription,TargetDescription,TargetGroup,TargetGroupAttribute,TargetHealth,TargetHealthDescription

## Unions

* [ActionTypeEnum](#ActionTypeEnum)
* [AuthenticateCognitoActionConditionalBehaviorEnum](#AuthenticateCognitoActionConditionalBehaviorEnum)
* [AuthenticateOidcActionConditionalBehaviorEnum](#AuthenticateOidcActionConditionalBehaviorEnum)
* [IpAddressType](#IpAddressType)
* [LoadBalancerSchemeEnum](#LoadBalancerSchemeEnum)
* [LoadBalancerStateEnum](#LoadBalancerStateEnum)
* [LoadBalancerTypeEnum](#LoadBalancerTypeEnum)
* [ProtocolEnum](#ProtocolEnum)
* [RedirectActionStatusCodeEnum](#RedirectActionStatusCodeEnum)
* [TargetHealthReasonEnum](#TargetHealthReasonEnum)
* [TargetHealthStateEnum](#TargetHealthStateEnum)
* [TargetTypeEnum](#TargetTypeEnum)


@docs ActionTypeEnum,AuthenticateCognitoActionConditionalBehaviorEnum,AuthenticateOidcActionConditionalBehaviorEnum,IpAddressType,LoadBalancerSchemeEnum,LoadBalancerStateEnum,LoadBalancerTypeEnum,ProtocolEnum,RedirectActionStatusCodeEnum,TargetHealthReasonEnum,TargetHealthStateEnum,TargetTypeEnum

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Json.Decode as JD
import Json.Decode.Pipeline as JDP

import Dict exposing (Dict)
import Time exposing (Posix)
import Iso8601
import Json.Decode.Extra as JDX


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "elasticloadbalancing"
        "2015-12-01"
        AWS.Core.Service.query
        AWS.Core.Service.signV4
        (AWS.Core.Service.setXmlNamespace "http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/")



-- OPERATIONS

{-| <p>Adds the specified SSL server certificate to the certificate list for the specified HTTPS listener.</p> <p>If the certificate in already in the certificate list, the call is successful but the certificate is not added again.</p> <p>To get the certificate list for a listener, use <a>DescribeListenerCertificates</a>. To remove certificates from the certificate list for a listener, use <a>RemoveListenerCertificates</a>. To replace the default certificate for a listener, use <a>ModifyListener</a>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#https-listener-certificates">SSL Certificates</a> in the <i>Application Load Balancers Guide</i>.</p>

__Required Parameters__

* `listenerArn` __:__ `String`
* `certificates` __:__ `(List Certificate)`


-}

addListenerCertificates :
  
    String ->
  
    (List Certificate) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddListenerCertificatesOutput)

addListenerCertificates listenerArn certificates =
    
    let
        requestInput = AddListenerCertificatesInput
            
            listenerArn
            
            certificates
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "AddListenerCertificates")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs addListenerCertificatesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddListenerCertificates"
                
                (AWS.Core.Decode.ResultDecoder "AddListenerCertificatesResult" addListenerCertificatesOutputDecoder)
                
            )





{-| <p>Adds the specified tags to the specified Elastic Load Balancing resource. You can tag your Application Load Balancers, Network Load Balancers, and your target groups.</p> <p>Each tag consists of a key and an optional value. If a resource already has a tag with the same key, <code>AddTags</code> updates its value.</p> <p>To list the current tags for your resources, use <a>DescribeTags</a>. To remove tags from your resources, use <a>RemoveTags</a>.</p>

__Required Parameters__

* `resourceArns` __:__ `(List String)`
* `tags` __:__ `(List Tag)`


-}

addTags :
  
    (List String) ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddTagsOutput)

addTags resourceArns tags =
    
    let
        requestInput = AddTagsInput
            
            resourceArns
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "AddTags")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs addTagsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddTags"
                
                (AWS.Core.Decode.ResultDecoder "AddTagsResult" addTagsOutputDecoder)
                
            )





{-| <p>Creates a listener for the specified Application Load Balancer or Network Load Balancer.</p> <p>To update a listener, use <a>ModifyListener</a>. When you are finished with a listener, you can delete it using <a>DeleteListener</a>. If you are finished with both the listener and the load balancer, you can delete them both using <a>DeleteLoadBalancer</a>.</p> <p>This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple listeners with the same settings, each call succeeds.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html">Listeners for Your Application Load Balancers</a> in the <i>Application Load Balancers Guide</i> and <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html">Listeners for Your Network Load Balancers</a> in the <i>Network Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerArn` __:__ `String`
* `protocol` __:__ `ProtocolEnum`
* `port_` __:__ `Int`
* `defaultActions` __:__ `(List Action)`


-}

createListener :
  
    String ->
  
    ProtocolEnum ->
  
    Int ->
  
    (List Action) ->
  
  
    ( CreateListenerOptions -> CreateListenerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateListenerOutput)

createListener loadBalancerArn protocol port_ defaultActions setOptions =
    
    let
        requestInput = CreateListenerInput
            
            loadBalancerArn
            
            protocol
            
            port_
            
            options.sslPolicy
            
            options.certificates
            
            defaultActions
            
        
        options = setOptions (CreateListenerOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateListener")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createListenerInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateListener"
                
                (AWS.Core.Decode.ResultDecoder "CreateListenerResult" createListenerOutputDecoder)
                
            )



{-| Options for a createListener request
-}
type alias CreateListenerOptions =
    {
    sslPolicy : Maybe String,certificates : Maybe (List Certificate)
    }



{-| <p>Creates an Application Load Balancer or a Network Load Balancer.</p> <p>When you create a load balancer, you can specify security groups, public subnets, IP address type, and tags. Otherwise, you could do so later using <a>SetSecurityGroups</a>, <a>SetSubnets</a>, <a>SetIpAddressType</a>, and <a>AddTags</a>.</p> <p>To create listeners for your load balancer, use <a>CreateListener</a>. To describe your current load balancers, see <a>DescribeLoadBalancers</a>. When you are finished with a load balancer, you can delete it using <a>DeleteLoadBalancer</a>.</p> <p>For limit information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html">Limits for Your Application Load Balancer</a> in the <i>Application Load Balancers Guide</i> and <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html">Limits for Your Network Load Balancer</a> in the <i>Network Load Balancers Guide</i>.</p> <p>This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple load balancers with the same settings, each call succeeds.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html">Application Load Balancers</a> in the <i>Application Load Balancers Guide</i> and <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html">Network Load Balancers</a> in the <i>Network Load Balancers Guide</i>.</p>

__Required Parameters__

* `name` __:__ `String`


-}

createLoadBalancer :
  
    String ->
  
  
    ( CreateLoadBalancerOptions -> CreateLoadBalancerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateLoadBalancerOutput)

createLoadBalancer name setOptions =
    
    let
        requestInput = CreateLoadBalancerInput
            
            name
            
            options.subnets
            
            options.subnetMappings
            
            options.securityGroups
            
            options.scheme
            
            options.tags
            
            options.type_
            
            options.ipAddressType
            
        
        options = setOptions (CreateLoadBalancerOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateLoadBalancer")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createLoadBalancerInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateLoadBalancer"
                
                (AWS.Core.Decode.ResultDecoder "CreateLoadBalancerResult" createLoadBalancerOutputDecoder)
                
            )



{-| Options for a createLoadBalancer request
-}
type alias CreateLoadBalancerOptions =
    {
    subnets : Maybe (List String),subnetMappings : Maybe (List SubnetMapping),securityGroups : Maybe (List String),scheme : Maybe LoadBalancerSchemeEnum,tags : Maybe (List Tag),type_ : Maybe LoadBalancerTypeEnum,ipAddressType : Maybe IpAddressType
    }



{-| <p>Creates a rule for the specified listener. The listener must be associated with an Application Load Balancer.</p> <p>Rules are evaluated in priority order, from the lowest value to the highest value. When the conditions for a rule are met, its actions are performed. If the conditions for no rules are met, the actions for the default rule are performed. For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules">Listener Rules</a> in the <i>Application Load Balancers Guide</i>.</p> <p>To view your current rules, use <a>DescribeRules</a>. To update a rule, use <a>ModifyRule</a>. To set the priorities of your rules, use <a>SetRulePriorities</a>. To delete a rule, use <a>DeleteRule</a>.</p>

__Required Parameters__

* `listenerArn` __:__ `String`
* `conditions` __:__ `(List RuleCondition)`
* `priority` __:__ `Int`
* `actions` __:__ `(List Action)`


-}

createRule :
  
    String ->
  
    (List RuleCondition) ->
  
    Int ->
  
    (List Action) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateRuleOutput)

createRule listenerArn conditions priority actions =
    
    let
        requestInput = CreateRuleInput
            
            listenerArn
            
            conditions
            
            priority
            
            actions
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateRule")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createRuleInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateRule"
                
                (AWS.Core.Decode.ResultDecoder "CreateRuleResult" createRuleOutputDecoder)
                
            )





{-| <p>Creates a target group.</p> <p>To register targets with the target group, use <a>RegisterTargets</a>. To update the health check settings for the target group, use <a>ModifyTargetGroup</a>. To monitor the health of targets in the target group, use <a>DescribeTargetHealth</a>.</p> <p>To route traffic to the targets in a target group, specify the target group in an action using <a>CreateListener</a> or <a>CreateRule</a>.</p> <p>To delete a target group, use <a>DeleteTargetGroup</a>.</p> <p>This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple target groups with the same settings, each call succeeds.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html">Target Groups for Your Application Load Balancers</a> in the <i>Application Load Balancers Guide</i> or <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html">Target Groups for Your Network Load Balancers</a> in the <i>Network Load Balancers Guide</i>.</p>

__Required Parameters__

* `name` __:__ `String`


-}

createTargetGroup :
  
    String ->
  
  
    ( CreateTargetGroupOptions -> CreateTargetGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTargetGroupOutput)

createTargetGroup name setOptions =
    
    let
        requestInput = CreateTargetGroupInput
            
            name
            
            options.protocol
            
            options.port_
            
            options.vpcId
            
            options.healthCheckProtocol
            
            options.healthCheckPort
            
            options.healthCheckEnabled
            
            options.healthCheckPath
            
            options.healthCheckIntervalSeconds
            
            options.healthCheckTimeoutSeconds
            
            options.healthyThresholdCount
            
            options.unhealthyThresholdCount
            
            options.matcher
            
            options.targetType
            
        
        options = setOptions (CreateTargetGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateTargetGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createTargetGroupInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateTargetGroup"
                
                (AWS.Core.Decode.ResultDecoder "CreateTargetGroupResult" createTargetGroupOutputDecoder)
                
            )



{-| Options for a createTargetGroup request
-}
type alias CreateTargetGroupOptions =
    {
    protocol : Maybe ProtocolEnum,port_ : Maybe Int,vpcId : Maybe String,healthCheckProtocol : Maybe ProtocolEnum,healthCheckPort : Maybe String,healthCheckEnabled : Maybe Bool,healthCheckPath : Maybe String,healthCheckIntervalSeconds : Maybe Int,healthCheckTimeoutSeconds : Maybe Int,healthyThresholdCount : Maybe Int,unhealthyThresholdCount : Maybe Int,matcher : Maybe Matcher,targetType : Maybe TargetTypeEnum
    }



{-| <p>Deletes the specified listener.</p> <p>Alternatively, your listener is deleted when you delete the load balancer to which it is attached, using <a>DeleteLoadBalancer</a>.</p>

__Required Parameters__

* `listenerArn` __:__ `String`


-}

deleteListener :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteListenerOutput)

deleteListener listenerArn =
    
    let
        requestInput = DeleteListenerInput
            
            listenerArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteListener")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteListenerInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteListener"
                
                (AWS.Core.Decode.ResultDecoder "DeleteListenerResult" deleteListenerOutputDecoder)
                
            )





{-| <p>Deletes the specified Application Load Balancer or Network Load Balancer and its attached listeners.</p> <p>You can't delete a load balancer if deletion protection is enabled. If the load balancer does not exist or has already been deleted, the call succeeds.</p> <p>Deleting a load balancer does not affect its registered targets. For example, your EC2 instances continue to run and are still registered to their target groups. If you no longer need these EC2 instances, you can stop or terminate them.</p>

__Required Parameters__

* `loadBalancerArn` __:__ `String`


-}

deleteLoadBalancer :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteLoadBalancerOutput)

deleteLoadBalancer loadBalancerArn =
    
    let
        requestInput = DeleteLoadBalancerInput
            
            loadBalancerArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteLoadBalancer")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteLoadBalancerInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteLoadBalancer"
                
                (AWS.Core.Decode.ResultDecoder "DeleteLoadBalancerResult" deleteLoadBalancerOutputDecoder)
                
            )





{-| <p>Deletes the specified rule.</p>

__Required Parameters__

* `ruleArn` __:__ `String`


-}

deleteRule :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRuleOutput)

deleteRule ruleArn =
    
    let
        requestInput = DeleteRuleInput
            
            ruleArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteRule")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteRuleInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRule"
                
                (AWS.Core.Decode.ResultDecoder "DeleteRuleResult" deleteRuleOutputDecoder)
                
            )





{-| <p>Deletes the specified target group.</p> <p>You can delete a target group if it is not referenced by any actions. Deleting a target group also deletes any associated health checks.</p>

__Required Parameters__

* `targetGroupArn` __:__ `String`


-}

deleteTargetGroup :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTargetGroupOutput)

deleteTargetGroup targetGroupArn =
    
    let
        requestInput = DeleteTargetGroupInput
            
            targetGroupArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteTargetGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteTargetGroupInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteTargetGroup"
                
                (AWS.Core.Decode.ResultDecoder "DeleteTargetGroupResult" deleteTargetGroupOutputDecoder)
                
            )





{-| <p>Deregisters the specified targets from the specified target group. After the targets are deregistered, they no longer receive traffic from the load balancer.</p>

__Required Parameters__

* `targetGroupArn` __:__ `String`
* `targets` __:__ `(List TargetDescription)`


-}

deregisterTargets :
  
    String ->
  
    (List TargetDescription) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeregisterTargetsOutput)

deregisterTargets targetGroupArn targets =
    
    let
        requestInput = DeregisterTargetsInput
            
            targetGroupArn
            
            targets
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeregisterTargets")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deregisterTargetsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeregisterTargets"
                
                (AWS.Core.Decode.ResultDecoder "DeregisterTargetsResult" deregisterTargetsOutputDecoder)
                
            )





{-| <p>Describes the current Elastic Load Balancing resource limits for your AWS account.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html">Limits for Your Application Load Balancers</a> in the <i>Application Load Balancer Guide</i> or <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html">Limits for Your Network Load Balancers</a> in the <i>Network Load Balancers Guide</i>.</p>

__Required Parameters__



-}

describeAccountLimits :
  
  
    ( DescribeAccountLimitsOptions -> DescribeAccountLimitsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAccountLimitsOutput)

describeAccountLimits setOptions =
    
    let
        requestInput = DescribeAccountLimitsInput
            
            options.marker
            
            options.pageSize
            
        
        options = setOptions (DescribeAccountLimitsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeAccountLimits")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeAccountLimitsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAccountLimits"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAccountLimitsResult" describeAccountLimitsOutputDecoder)
                
            )



{-| Options for a describeAccountLimits request
-}
type alias DescribeAccountLimitsOptions =
    {
    marker : Maybe String,pageSize : Maybe Int
    }



{-| <p>Describes the default certificate and the certificate list for the specified HTTPS listener.</p> <p>If the default certificate is also in the certificate list, it appears twice in the results (once with <code>IsDefault</code> set to true and once with <code>IsDefault</code> set to false).</p> <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#https-listener-certificates">SSL Certificates</a> in the <i>Application Load Balancers Guide</i>.</p>

__Required Parameters__

* `listenerArn` __:__ `String`


-}

describeListenerCertificates :
  
    String ->
  
  
    ( DescribeListenerCertificatesOptions -> DescribeListenerCertificatesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeListenerCertificatesOutput)

describeListenerCertificates listenerArn setOptions =
    
    let
        requestInput = DescribeListenerCertificatesInput
            
            listenerArn
            
            options.marker
            
            options.pageSize
            
        
        options = setOptions (DescribeListenerCertificatesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeListenerCertificates")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeListenerCertificatesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeListenerCertificates"
                
                (AWS.Core.Decode.ResultDecoder "DescribeListenerCertificatesResult" describeListenerCertificatesOutputDecoder)
                
            )



{-| Options for a describeListenerCertificates request
-}
type alias DescribeListenerCertificatesOptions =
    {
    marker : Maybe String,pageSize : Maybe Int
    }



{-| <p>Describes the specified listeners or the listeners for the specified Application Load Balancer or Network Load Balancer. You must specify either a load balancer or one or more listeners.</p> <p>For an HTTPS or TLS listener, the output includes the default certificate for the listener. To describe the certificate list for the listener, use <a>DescribeListenerCertificates</a>.</p>

__Required Parameters__



-}

describeListeners :
  
  
    ( DescribeListenersOptions -> DescribeListenersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeListenersOutput)

describeListeners setOptions =
    
    let
        requestInput = DescribeListenersInput
            
            options.loadBalancerArn
            
            options.listenerArns
            
            options.marker
            
            options.pageSize
            
        
        options = setOptions (DescribeListenersOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeListeners")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeListenersInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeListeners"
                
                (AWS.Core.Decode.ResultDecoder "DescribeListenersResult" describeListenersOutputDecoder)
                
            )



{-| Options for a describeListeners request
-}
type alias DescribeListenersOptions =
    {
    loadBalancerArn : Maybe String,listenerArns : Maybe (List String),marker : Maybe String,pageSize : Maybe Int
    }



{-| <p>Describes the attributes for the specified Application Load Balancer or Network Load Balancer.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html#load-balancer-attributes">Load Balancer Attributes</a> in the <i>Application Load Balancers Guide</i> or <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#load-balancer-attributes">Load Balancer Attributes</a> in the <i>Network Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerArn` __:__ `String`


-}

describeLoadBalancerAttributes :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLoadBalancerAttributesOutput)

describeLoadBalancerAttributes loadBalancerArn =
    
    let
        requestInput = DescribeLoadBalancerAttributesInput
            
            loadBalancerArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeLoadBalancerAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeLoadBalancerAttributesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeLoadBalancerAttributes"
                
                (AWS.Core.Decode.ResultDecoder "DescribeLoadBalancerAttributesResult" describeLoadBalancerAttributesOutputDecoder)
                
            )





{-| <p>Describes the specified load balancers or all of your load balancers.</p> <p>To describe the listeners for a load balancer, use <a>DescribeListeners</a>. To describe the attributes for a load balancer, use <a>DescribeLoadBalancerAttributes</a>.</p>

__Required Parameters__



-}

describeLoadBalancers :
  
  
    ( DescribeLoadBalancersOptions -> DescribeLoadBalancersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLoadBalancersOutput)

describeLoadBalancers setOptions =
    
    let
        requestInput = DescribeLoadBalancersInput
            
            options.loadBalancerArns
            
            options.names
            
            options.marker
            
            options.pageSize
            
        
        options = setOptions (DescribeLoadBalancersOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeLoadBalancers")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeLoadBalancersInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeLoadBalancers"
                
                (AWS.Core.Decode.ResultDecoder "DescribeLoadBalancersResult" describeLoadBalancersOutputDecoder)
                
            )



{-| Options for a describeLoadBalancers request
-}
type alias DescribeLoadBalancersOptions =
    {
    loadBalancerArns : Maybe (List String),names : Maybe (List String),marker : Maybe String,pageSize : Maybe Int
    }



{-| <p>Describes the specified rules or the rules for the specified listener. You must specify either a listener or one or more rules.</p>

__Required Parameters__



-}

describeRules :
  
  
    ( DescribeRulesOptions -> DescribeRulesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeRulesOutput)

describeRules setOptions =
    
    let
        requestInput = DescribeRulesInput
            
            options.listenerArn
            
            options.ruleArns
            
            options.marker
            
            options.pageSize
            
        
        options = setOptions (DescribeRulesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeRules")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeRulesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeRules"
                
                (AWS.Core.Decode.ResultDecoder "DescribeRulesResult" describeRulesOutputDecoder)
                
            )



{-| Options for a describeRules request
-}
type alias DescribeRulesOptions =
    {
    listenerArn : Maybe String,ruleArns : Maybe (List String),marker : Maybe String,pageSize : Maybe Int
    }



{-| <p>Describes the specified policies or all policies used for SSL negotiation.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies">Security Policies</a> in the <i>Application Load Balancers Guide</i>.</p>

__Required Parameters__



-}

describeSSLPolicies :
  
  
    ( DescribeSSLPoliciesOptions -> DescribeSSLPoliciesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSSLPoliciesOutput)

describeSSLPolicies setOptions =
    
    let
        requestInput = DescribeSSLPoliciesInput
            
            options.names
            
            options.marker
            
            options.pageSize
            
        
        options = setOptions (DescribeSSLPoliciesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeSSLPolicies")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeSSLPoliciesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeSSLPolicies"
                
                (AWS.Core.Decode.ResultDecoder "DescribeSSLPoliciesResult" describeSSLPoliciesOutputDecoder)
                
            )



{-| Options for a describeSSLPolicies request
-}
type alias DescribeSSLPoliciesOptions =
    {
    names : Maybe (List String),marker : Maybe String,pageSize : Maybe Int
    }



{-| <p>Describes the tags for the specified resources. You can describe the tags for one or more Application Load Balancers, Network Load Balancers, and target groups.</p>

__Required Parameters__

* `resourceArns` __:__ `(List String)`


-}

describeTags :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTagsOutput)

describeTags resourceArns =
    
    let
        requestInput = DescribeTagsInput
            
            resourceArns
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeTags")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeTagsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeTags"
                
                (AWS.Core.Decode.ResultDecoder "DescribeTagsResult" describeTagsOutputDecoder)
                
            )





{-| <p>Describes the attributes for the specified target group.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#target-group-attributes">Target Group Attributes</a> in the <i>Application Load Balancers Guide</i> or <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#target-group-attributes">Target Group Attributes</a> in the <i>Network Load Balancers Guide</i>.</p>

__Required Parameters__

* `targetGroupArn` __:__ `String`


-}

describeTargetGroupAttributes :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTargetGroupAttributesOutput)

describeTargetGroupAttributes targetGroupArn =
    
    let
        requestInput = DescribeTargetGroupAttributesInput
            
            targetGroupArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeTargetGroupAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeTargetGroupAttributesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeTargetGroupAttributes"
                
                (AWS.Core.Decode.ResultDecoder "DescribeTargetGroupAttributesResult" describeTargetGroupAttributesOutputDecoder)
                
            )





{-| <p>Describes the specified target groups or all of your target groups. By default, all target groups are described. Alternatively, you can specify one of the following to filter the results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of one or more target groups.</p> <p>To describe the targets for a target group, use <a>DescribeTargetHealth</a>. To describe the attributes of a target group, use <a>DescribeTargetGroupAttributes</a>.</p>

__Required Parameters__



-}

describeTargetGroups :
  
  
    ( DescribeTargetGroupsOptions -> DescribeTargetGroupsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTargetGroupsOutput)

describeTargetGroups setOptions =
    
    let
        requestInput = DescribeTargetGroupsInput
            
            options.loadBalancerArn
            
            options.targetGroupArns
            
            options.names
            
            options.marker
            
            options.pageSize
            
        
        options = setOptions (DescribeTargetGroupsOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeTargetGroups")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeTargetGroupsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeTargetGroups"
                
                (AWS.Core.Decode.ResultDecoder "DescribeTargetGroupsResult" describeTargetGroupsOutputDecoder)
                
            )



{-| Options for a describeTargetGroups request
-}
type alias DescribeTargetGroupsOptions =
    {
    loadBalancerArn : Maybe String,targetGroupArns : Maybe (List String),names : Maybe (List String),marker : Maybe String,pageSize : Maybe Int
    }



{-| <p>Describes the health of the specified targets or all of your targets.</p>

__Required Parameters__

* `targetGroupArn` __:__ `String`


-}

describeTargetHealth :
  
    String ->
  
  
    ( DescribeTargetHealthOptions -> DescribeTargetHealthOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTargetHealthOutput)

describeTargetHealth targetGroupArn setOptions =
    
    let
        requestInput = DescribeTargetHealthInput
            
            targetGroupArn
            
            options.targets
            
        
        options = setOptions (DescribeTargetHealthOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeTargetHealth")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeTargetHealthInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeTargetHealth"
                
                (AWS.Core.Decode.ResultDecoder "DescribeTargetHealthResult" describeTargetHealthOutputDecoder)
                
            )



{-| Options for a describeTargetHealth request
-}
type alias DescribeTargetHealthOptions =
    {
    targets : Maybe (List TargetDescription)
    }



{-| <p>Modifies the specified properties of the specified listener.</p> <p>Any properties that you do not specify retain their current values. However, changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes the security policy and default certificate properties. If you change the protocol from HTTP to HTTPS, or from TCP to TLS, you must add the security policy and default certificate properties.</p>

__Required Parameters__

* `listenerArn` __:__ `String`


-}

modifyListener :
  
    String ->
  
  
    ( ModifyListenerOptions -> ModifyListenerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyListenerOutput)

modifyListener listenerArn setOptions =
    
    let
        requestInput = ModifyListenerInput
            
            listenerArn
            
            options.port_
            
            options.protocol
            
            options.sslPolicy
            
            options.certificates
            
            options.defaultActions
            
        
        options = setOptions (ModifyListenerOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyListener")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyListenerInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyListener"
                
                (AWS.Core.Decode.ResultDecoder "ModifyListenerResult" modifyListenerOutputDecoder)
                
            )



{-| Options for a modifyListener request
-}
type alias ModifyListenerOptions =
    {
    port_ : Maybe Int,protocol : Maybe ProtocolEnum,sslPolicy : Maybe String,certificates : Maybe (List Certificate),defaultActions : Maybe (List Action)
    }



{-| <p>Modifies the specified attributes of the specified Application Load Balancer or Network Load Balancer.</p> <p>If any of the specified attributes can't be modified as requested, the call fails. Any existing attributes that you do not modify retain their current values.</p>

__Required Parameters__

* `loadBalancerArn` __:__ `String`
* `attributes` __:__ `(List LoadBalancerAttribute)`


-}

modifyLoadBalancerAttributes :
  
    String ->
  
    (List LoadBalancerAttribute) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyLoadBalancerAttributesOutput)

modifyLoadBalancerAttributes loadBalancerArn attributes =
    
    let
        requestInput = ModifyLoadBalancerAttributesInput
            
            loadBalancerArn
            
            attributes
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyLoadBalancerAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyLoadBalancerAttributesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyLoadBalancerAttributes"
                
                (AWS.Core.Decode.ResultDecoder "ModifyLoadBalancerAttributesResult" modifyLoadBalancerAttributesOutputDecoder)
                
            )





{-| <p>Modifies the specified rule.</p> <p>Any existing properties that you do not modify retain their current values.</p> <p>To modify the actions for the default rule, use <a>ModifyListener</a>.</p>

__Required Parameters__

* `ruleArn` __:__ `String`


-}

modifyRule :
  
    String ->
  
  
    ( ModifyRuleOptions -> ModifyRuleOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyRuleOutput)

modifyRule ruleArn setOptions =
    
    let
        requestInput = ModifyRuleInput
            
            ruleArn
            
            options.conditions
            
            options.actions
            
        
        options = setOptions (ModifyRuleOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyRule")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyRuleInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyRule"
                
                (AWS.Core.Decode.ResultDecoder "ModifyRuleResult" modifyRuleOutputDecoder)
                
            )



{-| Options for a modifyRule request
-}
type alias ModifyRuleOptions =
    {
    conditions : Maybe (List RuleCondition),actions : Maybe (List Action)
    }



{-| <p>Modifies the health checks used when evaluating the health state of the targets in the specified target group.</p> <p>To monitor the health of the targets, use <a>DescribeTargetHealth</a>.</p>

__Required Parameters__

* `targetGroupArn` __:__ `String`


-}

modifyTargetGroup :
  
    String ->
  
  
    ( ModifyTargetGroupOptions -> ModifyTargetGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyTargetGroupOutput)

modifyTargetGroup targetGroupArn setOptions =
    
    let
        requestInput = ModifyTargetGroupInput
            
            targetGroupArn
            
            options.healthCheckProtocol
            
            options.healthCheckPort
            
            options.healthCheckPath
            
            options.healthCheckEnabled
            
            options.healthCheckIntervalSeconds
            
            options.healthCheckTimeoutSeconds
            
            options.healthyThresholdCount
            
            options.unhealthyThresholdCount
            
            options.matcher
            
        
        options = setOptions (ModifyTargetGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyTargetGroup")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyTargetGroupInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyTargetGroup"
                
                (AWS.Core.Decode.ResultDecoder "ModifyTargetGroupResult" modifyTargetGroupOutputDecoder)
                
            )



{-| Options for a modifyTargetGroup request
-}
type alias ModifyTargetGroupOptions =
    {
    healthCheckProtocol : Maybe ProtocolEnum,healthCheckPort : Maybe String,healthCheckPath : Maybe String,healthCheckEnabled : Maybe Bool,healthCheckIntervalSeconds : Maybe Int,healthCheckTimeoutSeconds : Maybe Int,healthyThresholdCount : Maybe Int,unhealthyThresholdCount : Maybe Int,matcher : Maybe Matcher
    }



{-| <p>Modifies the specified attributes of the specified target group.</p>

__Required Parameters__

* `targetGroupArn` __:__ `String`
* `attributes` __:__ `(List TargetGroupAttribute)`


-}

modifyTargetGroupAttributes :
  
    String ->
  
    (List TargetGroupAttribute) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyTargetGroupAttributesOutput)

modifyTargetGroupAttributes targetGroupArn attributes =
    
    let
        requestInput = ModifyTargetGroupAttributesInput
            
            targetGroupArn
            
            attributes
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ModifyTargetGroupAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs modifyTargetGroupAttributesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyTargetGroupAttributes"
                
                (AWS.Core.Decode.ResultDecoder "ModifyTargetGroupAttributesResult" modifyTargetGroupAttributesOutputDecoder)
                
            )





{-| <p>Registers the specified targets with the specified target group.</p> <p>If the target is an EC2 instance, it must be in the <code>running</code> state when you register it.</p> <p>By default, the load balancer routes requests to registered targets using the protocol and port for the target group. Alternatively, you can override the port for a target when you register it. You can register each EC2 instance or IP address with the same target group multiple times using different ports.</p> <p>With a Network Load Balancer, you cannot register instances by instance ID if they have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1. You can register instances of these types by IP address.</p> <p>To remove a target from a target group, use <a>DeregisterTargets</a>.</p>

__Required Parameters__

* `targetGroupArn` __:__ `String`
* `targets` __:__ `(List TargetDescription)`


-}

registerTargets :
  
    String ->
  
    (List TargetDescription) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RegisterTargetsOutput)

registerTargets targetGroupArn targets =
    
    let
        requestInput = RegisterTargetsInput
            
            targetGroupArn
            
            targets
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RegisterTargets")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs registerTargetsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RegisterTargets"
                
                (AWS.Core.Decode.ResultDecoder "RegisterTargetsResult" registerTargetsOutputDecoder)
                
            )





{-| <p>Removes the specified certificate from the certificate list for the specified HTTPS listener.</p> <p>You can't remove the default certificate for a listener. To replace the default certificate, call <a>ModifyListener</a>.</p> <p>To list the certificates for your listener, use <a>DescribeListenerCertificates</a>.</p>

__Required Parameters__

* `listenerArn` __:__ `String`
* `certificates` __:__ `(List Certificate)`


-}

removeListenerCertificates :
  
    String ->
  
    (List Certificate) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveListenerCertificatesOutput)

removeListenerCertificates listenerArn certificates =
    
    let
        requestInput = RemoveListenerCertificatesInput
            
            listenerArn
            
            certificates
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RemoveListenerCertificates")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs removeListenerCertificatesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemoveListenerCertificates"
                
                (AWS.Core.Decode.ResultDecoder "RemoveListenerCertificatesResult" removeListenerCertificatesOutputDecoder)
                
            )





{-| <p>Removes the specified tags from the specified Elastic Load Balancing resource.</p> <p>To list the current tags for your resources, use <a>DescribeTags</a>.</p>

__Required Parameters__

* `resourceArns` __:__ `(List String)`
* `tagKeys` __:__ `(List String)`


-}

removeTags :
  
    (List String) ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveTagsOutput)

removeTags resourceArns tagKeys =
    
    let
        requestInput = RemoveTagsInput
            
            resourceArns
            
            tagKeys
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RemoveTags")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs removeTagsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemoveTags"
                
                (AWS.Core.Decode.ResultDecoder "RemoveTagsResult" removeTagsOutputDecoder)
                
            )





{-| <p>Sets the type of IP addresses used by the subnets of the specified Application Load Balancer or Network Load Balancer.</p>

__Required Parameters__

* `loadBalancerArn` __:__ `String`
* `ipAddressType` __:__ `IpAddressType`


-}

setIpAddressType :
  
    String ->
  
    IpAddressType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetIpAddressTypeOutput)

setIpAddressType loadBalancerArn ipAddressType =
    
    let
        requestInput = SetIpAddressTypeInput
            
            loadBalancerArn
            
            ipAddressType
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SetIpAddressType")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs setIpAddressTypeInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetIpAddressType"
                
                (AWS.Core.Decode.ResultDecoder "SetIpAddressTypeResult" setIpAddressTypeOutputDecoder)
                
            )





{-| <p>Sets the priorities of the specified rules.</p> <p>You can reorder the rules as long as there are no priority conflicts in the new order. Any existing rules that you do not specify retain their current priority.</p>

__Required Parameters__

* `rulePriorities` __:__ `(List RulePriorityPair)`


-}

setRulePriorities :
  
    (List RulePriorityPair) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetRulePrioritiesOutput)

setRulePriorities rulePriorities =
    
    let
        requestInput = SetRulePrioritiesInput
            
            rulePriorities
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SetRulePriorities")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs setRulePrioritiesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetRulePriorities"
                
                (AWS.Core.Decode.ResultDecoder "SetRulePrioritiesResult" setRulePrioritiesOutputDecoder)
                
            )





{-| <p>Associates the specified security groups with the specified Application Load Balancer. The specified security groups override the previously associated security groups.</p> <p>You can't specify a security group for a Network Load Balancer.</p>

__Required Parameters__

* `loadBalancerArn` __:__ `String`
* `securityGroups` __:__ `(List String)`


-}

setSecurityGroups :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetSecurityGroupsOutput)

setSecurityGroups loadBalancerArn securityGroups =
    
    let
        requestInput = SetSecurityGroupsInput
            
            loadBalancerArn
            
            securityGroups
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SetSecurityGroups")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs setSecurityGroupsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetSecurityGroups"
                
                (AWS.Core.Decode.ResultDecoder "SetSecurityGroupsResult" setSecurityGroupsOutputDecoder)
                
            )





{-| <p>Enables the Availability Zone for the specified public subnets for the specified Application Load Balancer. The specified subnets replace the previously enabled subnets.</p> <p>You can't change the subnets for a Network Load Balancer.</p>

__Required Parameters__

* `loadBalancerArn` __:__ `String`


-}

setSubnets :
  
    String ->
  
  
    ( SetSubnetsOptions -> SetSubnetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetSubnetsOutput)

setSubnets loadBalancerArn setOptions =
    
    let
        requestInput = SetSubnetsInput
            
            loadBalancerArn
            
            options.subnets
            
            options.subnetMappings
            
        
        options = setOptions (SetSubnetsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SetSubnets")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs setSubnetsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetSubnets"
                
                (AWS.Core.Decode.ResultDecoder "SetSubnetsResult" setSubnetsOutputDecoder)
                
            )



{-| Options for a setSubnets request
-}
type alias SetSubnetsOptions =
    {
    subnets : Maybe (List String),subnetMappings : Maybe (List SubnetMapping)
    }




{-| <p>Information about an action.</p>
-}
type alias Action =
    { type_ : ActionTypeEnum
    , targetGroupArn : Maybe String
    , authenticateOidcConfig : Maybe AuthenticateOidcActionConfig
    , authenticateCognitoConfig : Maybe AuthenticateCognitoActionConfig
    , order : Maybe Int
    , redirectConfig : Maybe RedirectActionConfig
    , fixedResponseConfig : Maybe FixedResponseActionConfig
    }



actionDecoder : JD.Decoder Action
actionDecoder =
    JD.succeed Action
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Type", "type"]
            actionTypeEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetGroupArn", "targetGroupArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AuthenticateOidcConfig", "authenticateOidcConfig"]
            authenticateOidcActionConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AuthenticateCognitoConfig", "authenticateCognitoConfig"]
            authenticateCognitoActionConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Order", "order"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RedirectConfig", "redirectConfig"]
            redirectActionConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FixedResponseConfig", "fixedResponseConfig"]
            fixedResponseActionConfigDecoder
        )
        




actionToString : Action -> String -- List (String, String)
actionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "targetGroupArn" "" -- val.targetGroupArn
        
    --     |> Dict.insert
    --         "authenticateOidcConfig" "" -- val.authenticateOidcConfig
        
    --     |> Dict.insert
    --         "authenticateCognitoConfig" "" -- val.authenticateCognitoConfig
        
    --     |> Dict.insert
    --         "order" "" -- val.order
        
    --     |> Dict.insert
    --         "redirectConfig" "" -- val.redirectConfig
        
    --     |> Dict.insert
    --         "fixedResponseConfig" "" -- val.fixedResponseConfig
        
    --     |> Dict.toList
    ""



{-| One of

* `ActionTypeEnum_forward`
* `ActionTypeEnum_authenticate-oidc`
* `ActionTypeEnum_authenticate-cognito`
* `ActionTypeEnum_redirect`
* `ActionTypeEnum_fixed-response`

-}
type ActionTypeEnum
    = ActionTypeEnum_forward
    | ActionTypeEnum_authenticate_oidc
    | ActionTypeEnum_authenticate_cognito
    | ActionTypeEnum_redirect
    | ActionTypeEnum_fixed_response



actionTypeEnumDecoder : JD.Decoder ActionTypeEnum
actionTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "forward" ->
                        JD.succeed ActionTypeEnum_forward

                    "authenticate_oidc" ->
                        JD.succeed ActionTypeEnum_authenticate_oidc

                    "authenticate_cognito" ->
                        JD.succeed ActionTypeEnum_authenticate_cognito

                    "redirect" ->
                        JD.succeed ActionTypeEnum_redirect

                    "fixed_response" ->
                        JD.succeed ActionTypeEnum_fixed_response


                    _ ->
                        JD.fail "bad thing"
            )




actionTypeEnumToString : ActionTypeEnum -> String
actionTypeEnumToString val =
    case val of
        ActionTypeEnum_forward ->
            "forward"

        ActionTypeEnum_authenticate_oidc ->
            "authenticate_oidc"

        ActionTypeEnum_authenticate_cognito ->
            "authenticate_cognito"

        ActionTypeEnum_redirect ->
            "redirect"

        ActionTypeEnum_fixed_response ->
            "fixed_response"




{-| Type of HTTP response from addListenerCertificat
-}
type alias AddListenerCertificatesOutput =
    { certificates : Maybe (List Certificate)
    }



addListenerCertificatesOutputDecoder : JD.Decoder AddListenerCertificatesOutput
addListenerCertificatesOutputDecoder =
    JD.succeed AddListenerCertificatesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Certificates", "certificates"]
            (JD.list certificateDecoder)
        )
        




addListenerCertificatesOutputToString : AddListenerCertificatesOutput -> String -- List (String, String)
addListenerCertificatesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificates" "" -- val.certificates
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from addTa
-}
type alias AddTagsOutput =
    { 
    }



addTagsOutputDecoder : JD.Decoder AddTagsOutput
addTagsOutputDecoder =
    JD.succeed AddTagsOutput
        




addTagsOutputToString : AddTagsOutput -> String -- List (String, String)
addTagsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `AuthenticateCognitoActionConditionalBehaviorEnum_deny`
* `AuthenticateCognitoActionConditionalBehaviorEnum_allow`
* `AuthenticateCognitoActionConditionalBehaviorEnum_authenticate`

-}
type AuthenticateCognitoActionConditionalBehaviorEnum
    = AuthenticateCognitoActionConditionalBehaviorEnum_deny
    | AuthenticateCognitoActionConditionalBehaviorEnum_allow
    | AuthenticateCognitoActionConditionalBehaviorEnum_authenticate



authenticateCognitoActionConditionalBehaviorEnumDecoder : JD.Decoder AuthenticateCognitoActionConditionalBehaviorEnum
authenticateCognitoActionConditionalBehaviorEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "deny" ->
                        JD.succeed AuthenticateCognitoActionConditionalBehaviorEnum_deny

                    "allow" ->
                        JD.succeed AuthenticateCognitoActionConditionalBehaviorEnum_allow

                    "authenticate" ->
                        JD.succeed AuthenticateCognitoActionConditionalBehaviorEnum_authenticate


                    _ ->
                        JD.fail "bad thing"
            )




authenticateCognitoActionConditionalBehaviorEnumToString : AuthenticateCognitoActionConditionalBehaviorEnum -> String
authenticateCognitoActionConditionalBehaviorEnumToString val =
    case val of
        AuthenticateCognitoActionConditionalBehaviorEnum_deny ->
            "deny"

        AuthenticateCognitoActionConditionalBehaviorEnum_allow ->
            "allow"

        AuthenticateCognitoActionConditionalBehaviorEnum_authenticate ->
            "authenticate"




{-| <p>Request parameters to use when integrating with Amazon Cognito to authenticate users.</p>
-}
type alias AuthenticateCognitoActionConfig =
    { userPoolArn : String
    , userPoolClientId : String
    , userPoolDomain : String
    , sessionCookieName : Maybe String
    , scope : Maybe String
    , sessionTimeout : Maybe Int
    , authenticationRequestExtraParams : Maybe (Dict String String)
    , onUnauthenticatedRequest : Maybe AuthenticateCognitoActionConditionalBehaviorEnum
    }



authenticateCognitoActionConfigDecoder : JD.Decoder AuthenticateCognitoActionConfig
authenticateCognitoActionConfigDecoder =
    JD.succeed AuthenticateCognitoActionConfig
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UserPoolArn", "userPoolArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UserPoolClientId", "userPoolClientId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UserPoolDomain", "userPoolDomain"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SessionCookieName", "sessionCookieName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Scope", "scope"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SessionTimeout", "sessionTimeout"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AuthenticationRequestExtraParams", "authenticationRequestExtraParams"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OnUnauthenticatedRequest", "onUnauthenticatedRequest"]
            authenticateCognitoActionConditionalBehaviorEnumDecoder
        )
        




authenticateCognitoActionConfigToString : AuthenticateCognitoActionConfig -> String -- List (String, String)
authenticateCognitoActionConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPoolArn" "" -- val.userPoolArn
        
    --     |> Dict.insert
    --         "userPoolClientId" "" -- val.userPoolClientId
        
    --     |> Dict.insert
    --         "userPoolDomain" "" -- val.userPoolDomain
        
    --     |> Dict.insert
    --         "sessionCookieName" "" -- val.sessionCookieName
        
    --     |> Dict.insert
    --         "scope" "" -- val.scope
        
    --     |> Dict.insert
    --         "sessionTimeout" "" -- val.sessionTimeout
        
    --     |> Dict.insert
    --         "authenticationRequestExtraParams" "" -- val.authenticationRequestExtraParams
        
    --     |> Dict.insert
    --         "onUnauthenticatedRequest" "" -- val.onUnauthenticatedRequest
        
    --     |> Dict.toList
    ""



{-| One of

* `AuthenticateOidcActionConditionalBehaviorEnum_deny`
* `AuthenticateOidcActionConditionalBehaviorEnum_allow`
* `AuthenticateOidcActionConditionalBehaviorEnum_authenticate`

-}
type AuthenticateOidcActionConditionalBehaviorEnum
    = AuthenticateOidcActionConditionalBehaviorEnum_deny
    | AuthenticateOidcActionConditionalBehaviorEnum_allow
    | AuthenticateOidcActionConditionalBehaviorEnum_authenticate



authenticateOidcActionConditionalBehaviorEnumDecoder : JD.Decoder AuthenticateOidcActionConditionalBehaviorEnum
authenticateOidcActionConditionalBehaviorEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "deny" ->
                        JD.succeed AuthenticateOidcActionConditionalBehaviorEnum_deny

                    "allow" ->
                        JD.succeed AuthenticateOidcActionConditionalBehaviorEnum_allow

                    "authenticate" ->
                        JD.succeed AuthenticateOidcActionConditionalBehaviorEnum_authenticate


                    _ ->
                        JD.fail "bad thing"
            )




authenticateOidcActionConditionalBehaviorEnumToString : AuthenticateOidcActionConditionalBehaviorEnum -> String
authenticateOidcActionConditionalBehaviorEnumToString val =
    case val of
        AuthenticateOidcActionConditionalBehaviorEnum_deny ->
            "deny"

        AuthenticateOidcActionConditionalBehaviorEnum_allow ->
            "allow"

        AuthenticateOidcActionConditionalBehaviorEnum_authenticate ->
            "authenticate"




{-| <p>Request parameters when using an identity provider (IdP) that is compliant with OpenID Connect (OIDC) to authenticate users.</p>
-}
type alias AuthenticateOidcActionConfig =
    { issuer : String
    , authorizationEndpoint : String
    , tokenEndpoint : String
    , userInfoEndpoint : String
    , clientId : String
    , clientSecret : Maybe String
    , sessionCookieName : Maybe String
    , scope : Maybe String
    , sessionTimeout : Maybe Int
    , authenticationRequestExtraParams : Maybe (Dict String String)
    , onUnauthenticatedRequest : Maybe AuthenticateOidcActionConditionalBehaviorEnum
    , useExistingClientSecret : Maybe Bool
    }



authenticateOidcActionConfigDecoder : JD.Decoder AuthenticateOidcActionConfig
authenticateOidcActionConfigDecoder =
    JD.succeed AuthenticateOidcActionConfig
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Issuer", "issuer"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AuthorizationEndpoint", "authorizationEndpoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TokenEndpoint", "tokenEndpoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UserInfoEndpoint", "userInfoEndpoint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ClientId", "clientId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientSecret", "clientSecret"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SessionCookieName", "sessionCookieName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Scope", "scope"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SessionTimeout", "sessionTimeout"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AuthenticationRequestExtraParams", "authenticationRequestExtraParams"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OnUnauthenticatedRequest", "onUnauthenticatedRequest"]
            authenticateOidcActionConditionalBehaviorEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UseExistingClientSecret", "useExistingClientSecret"]
            JD.bool
        )
        




authenticateOidcActionConfigToString : AuthenticateOidcActionConfig -> String -- List (String, String)
authenticateOidcActionConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "issuer" "" -- val.issuer
        
    --     |> Dict.insert
    --         "authorizationEndpoint" "" -- val.authorizationEndpoint
        
    --     |> Dict.insert
    --         "tokenEndpoint" "" -- val.tokenEndpoint
        
    --     |> Dict.insert
    --         "userInfoEndpoint" "" -- val.userInfoEndpoint
        
    --     |> Dict.insert
    --         "clientId" "" -- val.clientId
        
    --     |> Dict.insert
    --         "clientSecret" "" -- val.clientSecret
        
    --     |> Dict.insert
    --         "sessionCookieName" "" -- val.sessionCookieName
        
    --     |> Dict.insert
    --         "scope" "" -- val.scope
        
    --     |> Dict.insert
    --         "sessionTimeout" "" -- val.sessionTimeout
        
    --     |> Dict.insert
    --         "authenticationRequestExtraParams" "" -- val.authenticationRequestExtraParams
        
    --     |> Dict.insert
    --         "onUnauthenticatedRequest" "" -- val.onUnauthenticatedRequest
        
    --     |> Dict.insert
    --         "useExistingClientSecret" "" -- val.useExistingClientSecret
        
    --     |> Dict.toList
    ""



{-| <p>Information about an Availability Zone.</p>
-}
type alias AvailabilityZone =
    { zoneName : Maybe String
    , subnetId : Maybe String
    , loadBalancerAddresses : Maybe (List LoadBalancerAddress)
    }



availabilityZoneDecoder : JD.Decoder AvailabilityZone
availabilityZoneDecoder =
    JD.succeed AvailabilityZone
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ZoneName", "zoneName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetId", "subnetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancerAddresses", "loadBalancerAddresses"]
            (JD.list loadBalancerAddressDecoder)
        )
        




availabilityZoneToString : AvailabilityZone -> String -- List (String, String)
availabilityZoneToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "zoneName" "" -- val.zoneName
        
    --     |> Dict.insert
    --         "subnetId" "" -- val.subnetId
        
    --     |> Dict.insert
    --         "loadBalancerAddresses" "" -- val.loadBalancerAddresses
        
    --     |> Dict.toList
    ""



{-| <p>Information about an SSL server certificate.</p>
-}
type alias Certificate =
    { certificateArn : Maybe String
    , isDefault : Maybe Bool
    }



certificateDecoder : JD.Decoder Certificate
certificateDecoder =
    JD.succeed Certificate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CertificateArn", "certificateArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsDefault", "isDefault"]
            JD.bool
        )
        




certificateToString : Certificate -> String -- List (String, String)
certificateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificateArn" "" -- val.certificateArn
        
    --     |> Dict.insert
    --         "isDefault" "" -- val.isDefault
        
    --     |> Dict.toList
    ""



{-| <p>Information about a cipher used in a policy.</p>
-}
type alias Cipher =
    { name : Maybe String
    , priority : Maybe Int
    }



cipherDecoder : JD.Decoder Cipher
cipherDecoder =
    JD.succeed Cipher
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Priority", "priority"]
            JD.int
        )
        




cipherToString : Cipher -> String -- List (String, String)
cipherToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "priority" "" -- val.priority
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createListen
-}
type alias CreateListenerOutput =
    { listeners : Maybe (List Listener)
    }



createListenerOutputDecoder : JD.Decoder CreateListenerOutput
createListenerOutputDecoder =
    JD.succeed CreateListenerOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Listeners", "listeners"]
            (JD.list listenerDecoder)
        )
        




createListenerOutputToString : CreateListenerOutput -> String -- List (String, String)
createListenerOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "listeners" "" -- val.listeners
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createLoadBalanc
-}
type alias CreateLoadBalancerOutput =
    { loadBalancers : Maybe (List LoadBalancer)
    }



createLoadBalancerOutputDecoder : JD.Decoder CreateLoadBalancerOutput
createLoadBalancerOutputDecoder =
    JD.succeed CreateLoadBalancerOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancers", "loadBalancers"]
            (JD.list loadBalancerDecoder)
        )
        




createLoadBalancerOutputToString : CreateLoadBalancerOutput -> String -- List (String, String)
createLoadBalancerOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loadBalancers" "" -- val.loadBalancers
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createRu
-}
type alias CreateRuleOutput =
    { rules : Maybe (List Rule)
    }



createRuleOutputDecoder : JD.Decoder CreateRuleOutput
createRuleOutputDecoder =
    JD.succeed CreateRuleOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Rules", "rules"]
            (JD.list ruleDecoder)
        )
        




createRuleOutputToString : CreateRuleOutput -> String -- List (String, String)
createRuleOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "rules" "" -- val.rules
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createTargetGro
-}
type alias CreateTargetGroupOutput =
    { targetGroups : Maybe (List TargetGroup)
    }



createTargetGroupOutputDecoder : JD.Decoder CreateTargetGroupOutput
createTargetGroupOutputDecoder =
    JD.succeed CreateTargetGroupOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetGroups", "targetGroups"]
            (JD.list targetGroupDecoder)
        )
        




createTargetGroupOutputToString : CreateTargetGroupOutput -> String -- List (String, String)
createTargetGroupOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "targetGroups" "" -- val.targetGroups
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteListen
-}
type alias DeleteListenerOutput =
    { 
    }



deleteListenerOutputDecoder : JD.Decoder DeleteListenerOutput
deleteListenerOutputDecoder =
    JD.succeed DeleteListenerOutput
        




deleteListenerOutputToString : DeleteListenerOutput -> String -- List (String, String)
deleteListenerOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteLoadBalanc
-}
type alias DeleteLoadBalancerOutput =
    { 
    }



deleteLoadBalancerOutputDecoder : JD.Decoder DeleteLoadBalancerOutput
deleteLoadBalancerOutputDecoder =
    JD.succeed DeleteLoadBalancerOutput
        




deleteLoadBalancerOutputToString : DeleteLoadBalancerOutput -> String -- List (String, String)
deleteLoadBalancerOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteRu
-}
type alias DeleteRuleOutput =
    { 
    }



deleteRuleOutputDecoder : JD.Decoder DeleteRuleOutput
deleteRuleOutputDecoder =
    JD.succeed DeleteRuleOutput
        




deleteRuleOutputToString : DeleteRuleOutput -> String -- List (String, String)
deleteRuleOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteTargetGro
-}
type alias DeleteTargetGroupOutput =
    { 
    }



deleteTargetGroupOutputDecoder : JD.Decoder DeleteTargetGroupOutput
deleteTargetGroupOutputDecoder =
    JD.succeed DeleteTargetGroupOutput
        




deleteTargetGroupOutputToString : DeleteTargetGroupOutput -> String -- List (String, String)
deleteTargetGroupOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deregisterTarge
-}
type alias DeregisterTargetsOutput =
    { 
    }



deregisterTargetsOutputDecoder : JD.Decoder DeregisterTargetsOutput
deregisterTargetsOutputDecoder =
    JD.succeed DeregisterTargetsOutput
        




deregisterTargetsOutputToString : DeregisterTargetsOutput -> String -- List (String, String)
deregisterTargetsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAccountLimi
-}
type alias DescribeAccountLimitsOutput =
    { limits : Maybe (List Limit)
    , nextMarker : Maybe String
    }



describeAccountLimitsOutputDecoder : JD.Decoder DescribeAccountLimitsOutput
describeAccountLimitsOutputDecoder =
    JD.succeed DescribeAccountLimitsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Limits", "limits"]
            (JD.list limitDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        




describeAccountLimitsOutputToString : DescribeAccountLimitsOutput -> String -- List (String, String)
describeAccountLimitsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "limits" "" -- val.limits
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeListenerCertificat
-}
type alias DescribeListenerCertificatesOutput =
    { certificates : Maybe (List Certificate)
    , nextMarker : Maybe String
    }



describeListenerCertificatesOutputDecoder : JD.Decoder DescribeListenerCertificatesOutput
describeListenerCertificatesOutputDecoder =
    JD.succeed DescribeListenerCertificatesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Certificates", "certificates"]
            (JD.list certificateDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        




describeListenerCertificatesOutputToString : DescribeListenerCertificatesOutput -> String -- List (String, String)
describeListenerCertificatesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificates" "" -- val.certificates
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeListene
-}
type alias DescribeListenersOutput =
    { listeners : Maybe (List Listener)
    , nextMarker : Maybe String
    }



describeListenersOutputDecoder : JD.Decoder DescribeListenersOutput
describeListenersOutputDecoder =
    JD.succeed DescribeListenersOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Listeners", "listeners"]
            (JD.list listenerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        




describeListenersOutputToString : DescribeListenersOutput -> String -- List (String, String)
describeListenersOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "listeners" "" -- val.listeners
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeLoadBalancerAttribut
-}
type alias DescribeLoadBalancerAttributesOutput =
    { attributes : Maybe (List LoadBalancerAttribute)
    }



describeLoadBalancerAttributesOutputDecoder : JD.Decoder DescribeLoadBalancerAttributesOutput
describeLoadBalancerAttributesOutputDecoder =
    JD.succeed DescribeLoadBalancerAttributesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (JD.list loadBalancerAttributeDecoder)
        )
        




describeLoadBalancerAttributesOutputToString : DescribeLoadBalancerAttributesOutput -> String -- List (String, String)
describeLoadBalancerAttributesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeLoadBalance
-}
type alias DescribeLoadBalancersOutput =
    { loadBalancers : Maybe (List LoadBalancer)
    , nextMarker : Maybe String
    }



describeLoadBalancersOutputDecoder : JD.Decoder DescribeLoadBalancersOutput
describeLoadBalancersOutputDecoder =
    JD.succeed DescribeLoadBalancersOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancers", "loadBalancers"]
            (JD.list loadBalancerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        




describeLoadBalancersOutputToString : DescribeLoadBalancersOutput -> String -- List (String, String)
describeLoadBalancersOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loadBalancers" "" -- val.loadBalancers
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeRul
-}
type alias DescribeRulesOutput =
    { rules : Maybe (List Rule)
    , nextMarker : Maybe String
    }



describeRulesOutputDecoder : JD.Decoder DescribeRulesOutput
describeRulesOutputDecoder =
    JD.succeed DescribeRulesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Rules", "rules"]
            (JD.list ruleDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        




describeRulesOutputToString : DescribeRulesOutput -> String -- List (String, String)
describeRulesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "rules" "" -- val.rules
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeSSLPolici
-}
type alias DescribeSSLPoliciesOutput =
    { sslPolicies : Maybe (List SslPolicy)
    , nextMarker : Maybe String
    }



describeSSLPoliciesOutputDecoder : JD.Decoder DescribeSSLPoliciesOutput
describeSSLPoliciesOutputDecoder =
    JD.succeed DescribeSSLPoliciesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SslPolicies", "sslPolicies"]
            (JD.list sslPolicyDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        




describeSSLPoliciesOutputToString : DescribeSSLPoliciesOutput -> String -- List (String, String)
describeSSLPoliciesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sslPolicies" "" -- val.sslPolicies
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeTa
-}
type alias DescribeTagsOutput =
    { tagDescriptions : Maybe (List TagDescription)
    }



describeTagsOutputDecoder : JD.Decoder DescribeTagsOutput
describeTagsOutputDecoder =
    JD.succeed DescribeTagsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TagDescriptions", "tagDescriptions"]
            (JD.list tagDescriptionDecoder)
        )
        




describeTagsOutputToString : DescribeTagsOutput -> String -- List (String, String)
describeTagsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tagDescriptions" "" -- val.tagDescriptions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeTargetGroupAttribut
-}
type alias DescribeTargetGroupAttributesOutput =
    { attributes : Maybe (List TargetGroupAttribute)
    }



describeTargetGroupAttributesOutputDecoder : JD.Decoder DescribeTargetGroupAttributesOutput
describeTargetGroupAttributesOutputDecoder =
    JD.succeed DescribeTargetGroupAttributesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (JD.list targetGroupAttributeDecoder)
        )
        




describeTargetGroupAttributesOutputToString : DescribeTargetGroupAttributesOutput -> String -- List (String, String)
describeTargetGroupAttributesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeTargetGrou
-}
type alias DescribeTargetGroupsOutput =
    { targetGroups : Maybe (List TargetGroup)
    , nextMarker : Maybe String
    }



describeTargetGroupsOutputDecoder : JD.Decoder DescribeTargetGroupsOutput
describeTargetGroupsOutputDecoder =
    JD.succeed DescribeTargetGroupsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetGroups", "targetGroups"]
            (JD.list targetGroupDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        




describeTargetGroupsOutputToString : DescribeTargetGroupsOutput -> String -- List (String, String)
describeTargetGroupsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "targetGroups" "" -- val.targetGroups
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeTargetHeal
-}
type alias DescribeTargetHealthOutput =
    { targetHealthDescriptions : Maybe (List TargetHealthDescription)
    }



describeTargetHealthOutputDecoder : JD.Decoder DescribeTargetHealthOutput
describeTargetHealthOutputDecoder =
    JD.succeed DescribeTargetHealthOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetHealthDescriptions", "targetHealthDescriptions"]
            (JD.list targetHealthDescriptionDecoder)
        )
        




describeTargetHealthOutputToString : DescribeTargetHealthOutput -> String -- List (String, String)
describeTargetHealthOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "targetHealthDescriptions" "" -- val.targetHealthDescriptions
        
    --     |> Dict.toList
    ""



{-| <p>Information about an action that returns a custom HTTP response.</p>
-}
type alias FixedResponseActionConfig =
    { messageBody : Maybe String
    , statusCode : String
    , contentType : Maybe String
    }



fixedResponseActionConfigDecoder : JD.Decoder FixedResponseActionConfig
fixedResponseActionConfigDecoder =
    JD.succeed FixedResponseActionConfig
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MessageBody", "messageBody"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StatusCode", "statusCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ContentType", "contentType"]
            JD.string
        )
        




fixedResponseActionConfigToString : FixedResponseActionConfig -> String -- List (String, String)
fixedResponseActionConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "messageBody" "" -- val.messageBody
        
    --     |> Dict.insert
    --         "statusCode" "" -- val.statusCode
        
    --     |> Dict.insert
    --         "contentType" "" -- val.contentType
        
    --     |> Dict.toList
    ""



{-| <p>Information about a host header condition.</p>
-}
type alias HostHeaderConditionConfig =
    { values : Maybe (List String)
    }



hostHeaderConditionConfigDecoder : JD.Decoder HostHeaderConditionConfig
hostHeaderConditionConfigDecoder =
    JD.succeed HostHeaderConditionConfig
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Values", "values"]
            (JD.list JD.string)
        )
        




hostHeaderConditionConfigToString : HostHeaderConditionConfig -> String -- List (String, String)
hostHeaderConditionConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| <p>Information about an HTTP header condition.</p> <p>There is a set of standard HTTP header fields. You can also define custom HTTP header fields.</p>
-}
type alias HttpHeaderConditionConfig =
    { httpHeaderName : Maybe String
    , values : Maybe (List String)
    }



httpHeaderConditionConfigDecoder : JD.Decoder HttpHeaderConditionConfig
httpHeaderConditionConfigDecoder =
    JD.succeed HttpHeaderConditionConfig
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HttpHeaderName", "httpHeaderName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Values", "values"]
            (JD.list JD.string)
        )
        




httpHeaderConditionConfigToString : HttpHeaderConditionConfig -> String -- List (String, String)
httpHeaderConditionConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "httpHeaderName" "" -- val.httpHeaderName
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| <p>Information about an HTTP method condition.</p> <p>HTTP defines a set of request methods, also referred to as HTTP verbs. For more information, see the <a href="https://www.iana.org/assignments/http-methods/http-methods.xhtml">HTTP Method Registry</a>. You can also define custom HTTP methods.</p>
-}
type alias HttpRequestMethodConditionConfig =
    { values : Maybe (List String)
    }



httpRequestMethodConditionConfigDecoder : JD.Decoder HttpRequestMethodConditionConfig
httpRequestMethodConditionConfigDecoder =
    JD.succeed HttpRequestMethodConditionConfig
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Values", "values"]
            (JD.list JD.string)
        )
        




httpRequestMethodConditionConfigToString : HttpRequestMethodConditionConfig -> String -- List (String, String)
httpRequestMethodConditionConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| One of

* `IpAddressType_ipv4`
* `IpAddressType_dualstack`

-}
type IpAddressType
    = IpAddressType_ipv4
    | IpAddressType_dualstack



ipAddressTypeDecoder : JD.Decoder IpAddressType
ipAddressTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ipv4" ->
                        JD.succeed IpAddressType_ipv4

                    "dualstack" ->
                        JD.succeed IpAddressType_dualstack


                    _ ->
                        JD.fail "bad thing"
            )




ipAddressTypeToString : IpAddressType -> String
ipAddressTypeToString val =
    case val of
        IpAddressType_ipv4 ->
            "ipv4"

        IpAddressType_dualstack ->
            "dualstack"




{-| <p>Information about an Elastic Load Balancing resource limit for your AWS account.</p>
-}
type alias Limit =
    { name : Maybe String
    , max : Maybe String
    }



limitDecoder : JD.Decoder Limit
limitDecoder =
    JD.succeed Limit
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Max", "max"]
            JD.string
        )
        




limitToString : Limit -> String -- List (String, String)
limitToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "max" "" -- val.max
        
    --     |> Dict.toList
    ""



{-| <p>Information about a listener.</p>
-}
type alias Listener =
    { listenerArn : Maybe String
    , loadBalancerArn : Maybe String
    , port_ : Maybe Int
    , protocol : Maybe ProtocolEnum
    , certificates : Maybe (List Certificate)
    , sslPolicy : Maybe String
    , defaultActions : Maybe (List Action)
    }



listenerDecoder : JD.Decoder Listener
listenerDecoder =
    JD.succeed Listener
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ListenerArn", "listenerArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancerArn", "loadBalancerArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Protocol", "protocol"]
            protocolEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Certificates", "certificates"]
            (JD.list certificateDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SslPolicy", "sslPolicy"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultActions", "defaultActions"]
            (JD.list actionDecoder)
        )
        




listenerToString : Listener -> String -- List (String, String)
listenerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "listenerArn" "" -- val.listenerArn
        
    --     |> Dict.insert
    --         "loadBalancerArn" "" -- val.loadBalancerArn
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "protocol" "" -- val.protocol
        
    --     |> Dict.insert
    --         "certificates" "" -- val.certificates
        
    --     |> Dict.insert
    --         "sslPolicy" "" -- val.sslPolicy
        
    --     |> Dict.insert
    --         "defaultActions" "" -- val.defaultActions
        
    --     |> Dict.toList
    ""



{-| <p>Information about a load balancer.</p>
-}
type alias LoadBalancer =
    { loadBalancerArn : Maybe String
    , dNSName : Maybe String
    , canonicalHostedZoneId : Maybe String
    , createdTime : Maybe Posix
    , loadBalancerName : Maybe String
    , scheme : Maybe LoadBalancerSchemeEnum
    , vpcId : Maybe String
    , state : Maybe LoadBalancerState
    , type_ : Maybe LoadBalancerTypeEnum
    , availabilityZones : Maybe (List AvailabilityZone)
    , securityGroups : Maybe (List String)
    , ipAddressType : Maybe IpAddressType
    }



loadBalancerDecoder : JD.Decoder LoadBalancer
loadBalancerDecoder =
    JD.succeed LoadBalancer
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancerArn", "loadBalancerArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DNSName", "dNSName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CanonicalHostedZoneId", "canonicalHostedZoneId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancerName", "loadBalancerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Scheme", "scheme"]
            loadBalancerSchemeEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcId", "vpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            loadBalancerStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            loadBalancerTypeEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZones", "availabilityZones"]
            (JD.list availabilityZoneDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityGroups", "securityGroups"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IpAddressType", "ipAddressType"]
            ipAddressTypeDecoder
        )
        




loadBalancerToString : LoadBalancer -> String -- List (String, String)
loadBalancerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loadBalancerArn" "" -- val.loadBalancerArn
        
    --     |> Dict.insert
    --         "dNSName" "" -- val.dNSName
        
    --     |> Dict.insert
    --         "canonicalHostedZoneId" "" -- val.canonicalHostedZoneId
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "loadBalancerName" "" -- val.loadBalancerName
        
    --     |> Dict.insert
    --         "scheme" "" -- val.scheme
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "availabilityZones" "" -- val.availabilityZones
        
    --     |> Dict.insert
    --         "securityGroups" "" -- val.securityGroups
        
    --     |> Dict.insert
    --         "ipAddressType" "" -- val.ipAddressType
        
    --     |> Dict.toList
    ""



{-| <p>Information about a static IP address for a load balancer.</p>
-}
type alias LoadBalancerAddress =
    { ipAddress : Maybe String
    , allocationId : Maybe String
    }



loadBalancerAddressDecoder : JD.Decoder LoadBalancerAddress
loadBalancerAddressDecoder =
    JD.succeed LoadBalancerAddress
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IpAddress", "ipAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllocationId", "allocationId"]
            JD.string
        )
        




loadBalancerAddressToString : LoadBalancerAddress -> String -- List (String, String)
loadBalancerAddressToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ipAddress" "" -- val.ipAddress
        
    --     |> Dict.insert
    --         "allocationId" "" -- val.allocationId
        
    --     |> Dict.toList
    ""



{-| <p>Information about a load balancer attribute.</p>
-}
type alias LoadBalancerAttribute =
    { key : Maybe String
    , value : Maybe String
    }



loadBalancerAttributeDecoder : JD.Decoder LoadBalancerAttribute
loadBalancerAttributeDecoder =
    JD.succeed LoadBalancerAttribute
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




loadBalancerAttributeToString : LoadBalancerAttribute -> String -- List (String, String)
loadBalancerAttributeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| One of

* `LoadBalancerSchemeEnum_internet-facing`
* `LoadBalancerSchemeEnum_internal`

-}
type LoadBalancerSchemeEnum
    = LoadBalancerSchemeEnum_internet_facing
    | LoadBalancerSchemeEnum_internal



loadBalancerSchemeEnumDecoder : JD.Decoder LoadBalancerSchemeEnum
loadBalancerSchemeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "internet_facing" ->
                        JD.succeed LoadBalancerSchemeEnum_internet_facing

                    "internal" ->
                        JD.succeed LoadBalancerSchemeEnum_internal


                    _ ->
                        JD.fail "bad thing"
            )




loadBalancerSchemeEnumToString : LoadBalancerSchemeEnum -> String
loadBalancerSchemeEnumToString val =
    case val of
        LoadBalancerSchemeEnum_internet_facing ->
            "internet_facing"

        LoadBalancerSchemeEnum_internal ->
            "internal"




{-| <p>Information about the state of the load balancer.</p>
-}
type alias LoadBalancerState =
    { code : Maybe LoadBalancerStateEnum
    , reason : Maybe String
    }



loadBalancerStateDecoder : JD.Decoder LoadBalancerState
loadBalancerStateDecoder =
    JD.succeed LoadBalancerState
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Code", "code"]
            loadBalancerStateEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Reason", "reason"]
            JD.string
        )
        




loadBalancerStateToString : LoadBalancerState -> String -- List (String, String)
loadBalancerStateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.insert
    --         "reason" "" -- val.reason
        
    --     |> Dict.toList
    ""



{-| One of

* `LoadBalancerStateEnum_active`
* `LoadBalancerStateEnum_provisioning`
* `LoadBalancerStateEnum_active_impaired`
* `LoadBalancerStateEnum_failed`

-}
type LoadBalancerStateEnum
    = LoadBalancerStateEnum_active
    | LoadBalancerStateEnum_provisioning
    | LoadBalancerStateEnum_active_impaired
    | LoadBalancerStateEnum_failed



loadBalancerStateEnumDecoder : JD.Decoder LoadBalancerStateEnum
loadBalancerStateEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "active" ->
                        JD.succeed LoadBalancerStateEnum_active

                    "provisioning" ->
                        JD.succeed LoadBalancerStateEnum_provisioning

                    "active_impaired" ->
                        JD.succeed LoadBalancerStateEnum_active_impaired

                    "failed" ->
                        JD.succeed LoadBalancerStateEnum_failed


                    _ ->
                        JD.fail "bad thing"
            )




loadBalancerStateEnumToString : LoadBalancerStateEnum -> String
loadBalancerStateEnumToString val =
    case val of
        LoadBalancerStateEnum_active ->
            "active"

        LoadBalancerStateEnum_provisioning ->
            "provisioning"

        LoadBalancerStateEnum_active_impaired ->
            "active_impaired"

        LoadBalancerStateEnum_failed ->
            "failed"




{-| One of

* `LoadBalancerTypeEnum_application`
* `LoadBalancerTypeEnum_network`

-}
type LoadBalancerTypeEnum
    = LoadBalancerTypeEnum_application
    | LoadBalancerTypeEnum_network



loadBalancerTypeEnumDecoder : JD.Decoder LoadBalancerTypeEnum
loadBalancerTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "application" ->
                        JD.succeed LoadBalancerTypeEnum_application

                    "network" ->
                        JD.succeed LoadBalancerTypeEnum_network


                    _ ->
                        JD.fail "bad thing"
            )




loadBalancerTypeEnumToString : LoadBalancerTypeEnum -> String
loadBalancerTypeEnumToString val =
    case val of
        LoadBalancerTypeEnum_application ->
            "application"

        LoadBalancerTypeEnum_network ->
            "network"




{-| <p>Information to use when checking for a successful response from a target.</p>
-}
type alias Matcher =
    { httpCode : String
    }



matcherDecoder : JD.Decoder Matcher
matcherDecoder =
    JD.succeed Matcher
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HttpCode", "httpCode"]
            JD.string
        )
        




matcherToString : Matcher -> String -- List (String, String)
matcherToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "httpCode" "" -- val.httpCode
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyListen
-}
type alias ModifyListenerOutput =
    { listeners : Maybe (List Listener)
    }



modifyListenerOutputDecoder : JD.Decoder ModifyListenerOutput
modifyListenerOutputDecoder =
    JD.succeed ModifyListenerOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Listeners", "listeners"]
            (JD.list listenerDecoder)
        )
        




modifyListenerOutputToString : ModifyListenerOutput -> String -- List (String, String)
modifyListenerOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "listeners" "" -- val.listeners
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyLoadBalancerAttribut
-}
type alias ModifyLoadBalancerAttributesOutput =
    { attributes : Maybe (List LoadBalancerAttribute)
    }



modifyLoadBalancerAttributesOutputDecoder : JD.Decoder ModifyLoadBalancerAttributesOutput
modifyLoadBalancerAttributesOutputDecoder =
    JD.succeed ModifyLoadBalancerAttributesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (JD.list loadBalancerAttributeDecoder)
        )
        




modifyLoadBalancerAttributesOutputToString : ModifyLoadBalancerAttributesOutput -> String -- List (String, String)
modifyLoadBalancerAttributesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyRu
-}
type alias ModifyRuleOutput =
    { rules : Maybe (List Rule)
    }



modifyRuleOutputDecoder : JD.Decoder ModifyRuleOutput
modifyRuleOutputDecoder =
    JD.succeed ModifyRuleOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Rules", "rules"]
            (JD.list ruleDecoder)
        )
        




modifyRuleOutputToString : ModifyRuleOutput -> String -- List (String, String)
modifyRuleOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "rules" "" -- val.rules
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyTargetGroupAttribut
-}
type alias ModifyTargetGroupAttributesOutput =
    { attributes : Maybe (List TargetGroupAttribute)
    }



modifyTargetGroupAttributesOutputDecoder : JD.Decoder ModifyTargetGroupAttributesOutput
modifyTargetGroupAttributesOutputDecoder =
    JD.succeed ModifyTargetGroupAttributesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (JD.list targetGroupAttributeDecoder)
        )
        




modifyTargetGroupAttributesOutputToString : ModifyTargetGroupAttributesOutput -> String -- List (String, String)
modifyTargetGroupAttributesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyTargetGro
-}
type alias ModifyTargetGroupOutput =
    { targetGroups : Maybe (List TargetGroup)
    }



modifyTargetGroupOutputDecoder : JD.Decoder ModifyTargetGroupOutput
modifyTargetGroupOutputDecoder =
    JD.succeed ModifyTargetGroupOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetGroups", "targetGroups"]
            (JD.list targetGroupDecoder)
        )
        




modifyTargetGroupOutputToString : ModifyTargetGroupOutput -> String -- List (String, String)
modifyTargetGroupOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "targetGroups" "" -- val.targetGroups
        
    --     |> Dict.toList
    ""



{-| <p>Information about a path pattern condition.</p>
-}
type alias PathPatternConditionConfig =
    { values : Maybe (List String)
    }



pathPatternConditionConfigDecoder : JD.Decoder PathPatternConditionConfig
pathPatternConditionConfigDecoder =
    JD.succeed PathPatternConditionConfig
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Values", "values"]
            (JD.list JD.string)
        )
        




pathPatternConditionConfigToString : PathPatternConditionConfig -> String -- List (String, String)
pathPatternConditionConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| One of

* `ProtocolEnum_HTTP`
* `ProtocolEnum_HTTPS`
* `ProtocolEnum_TCP`
* `ProtocolEnum_TLS`
* `ProtocolEnum_UDP`
* `ProtocolEnum_TCP_UDP`

-}
type ProtocolEnum
    = ProtocolEnum_HTTP
    | ProtocolEnum_HTTPS
    | ProtocolEnum_TCP
    | ProtocolEnum_TLS
    | ProtocolEnum_UDP
    | ProtocolEnum_TCP_UDP



protocolEnumDecoder : JD.Decoder ProtocolEnum
protocolEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HTTP" ->
                        JD.succeed ProtocolEnum_HTTP

                    "HTTPS" ->
                        JD.succeed ProtocolEnum_HTTPS

                    "TCP" ->
                        JD.succeed ProtocolEnum_TCP

                    "TLS" ->
                        JD.succeed ProtocolEnum_TLS

                    "UDP" ->
                        JD.succeed ProtocolEnum_UDP

                    "TCP_UDP" ->
                        JD.succeed ProtocolEnum_TCP_UDP


                    _ ->
                        JD.fail "bad thing"
            )




protocolEnumToString : ProtocolEnum -> String
protocolEnumToString val =
    case val of
        ProtocolEnum_HTTP ->
            "HTTP"

        ProtocolEnum_HTTPS ->
            "HTTPS"

        ProtocolEnum_TCP ->
            "TCP"

        ProtocolEnum_TLS ->
            "TLS"

        ProtocolEnum_UDP ->
            "UDP"

        ProtocolEnum_TCP_UDP ->
            "TCP_UDP"




{-| <p>Information about a query string condition.</p> <p>The query string component of a URI starts after the first '?' character and is terminated by either a '#' character or the end of the URI. A typical query string contains key/value pairs separated by '&amp;' characters. The allowed characters are specified by RFC 3986. Any character can be percentage encoded.</p>
-}
type alias QueryStringConditionConfig =
    { values : Maybe (List QueryStringKeyValuePair)
    }



queryStringConditionConfigDecoder : JD.Decoder QueryStringConditionConfig
queryStringConditionConfigDecoder =
    JD.succeed QueryStringConditionConfig
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Values", "values"]
            (JD.list queryStringKeyValuePairDecoder)
        )
        




queryStringConditionConfigToString : QueryStringConditionConfig -> String -- List (String, String)
queryStringConditionConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| <p>Information about a key/value pair.</p>
-}
type alias QueryStringKeyValuePair =
    { key : Maybe String
    , value : Maybe String
    }



queryStringKeyValuePairDecoder : JD.Decoder QueryStringKeyValuePair
queryStringKeyValuePairDecoder =
    JD.succeed QueryStringKeyValuePair
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




queryStringKeyValuePairToString : QueryStringKeyValuePair -> String -- List (String, String)
queryStringKeyValuePairToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| <p>Information about a redirect action.</p> <p>A URI consists of the following components: protocol://hostname:port/path?query. You must modify at least one of the following components to avoid a redirect loop: protocol, hostname, port, or path. Any components that you do not modify retain their original values.</p> <p>You can reuse URI components using the following reserved keywords:</p> <ul> <li> <p>#{protocol}</p> </li> <li> <p>#{host}</p> </li> <li> <p>#{port}</p> </li> <li> <p>#{path} (the leading "/" is removed)</p> </li> <li> <p>#{query}</p> </li> </ul> <p>For example, you can change the path to "/new/#{path}", the hostname to "example.#{host}", or the query to "#{query}&amp;value=xyz".</p>
-}
type alias RedirectActionConfig =
    { protocol : Maybe String
    , port_ : Maybe String
    , host : Maybe String
    , path : Maybe String
    , query : Maybe String
    , statusCode : RedirectActionStatusCodeEnum
    }



redirectActionConfigDecoder : JD.Decoder RedirectActionConfig
redirectActionConfigDecoder =
    JD.succeed RedirectActionConfig
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Protocol", "protocol"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Host", "host"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Path", "path"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Query", "query"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StatusCode", "statusCode"]
            redirectActionStatusCodeEnumDecoder
        )
        




redirectActionConfigToString : RedirectActionConfig -> String -- List (String, String)
redirectActionConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "protocol" "" -- val.protocol
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "host" "" -- val.host
        
    --     |> Dict.insert
    --         "path" "" -- val.path
        
    --     |> Dict.insert
    --         "query" "" -- val.query
        
    --     |> Dict.insert
    --         "statusCode" "" -- val.statusCode
        
    --     |> Dict.toList
    ""



{-| One of

* `RedirectActionStatusCodeEnum_HTTP_301`
* `RedirectActionStatusCodeEnum_HTTP_302`

-}
type RedirectActionStatusCodeEnum
    = RedirectActionStatusCodeEnum_HTTP_301
    | RedirectActionStatusCodeEnum_HTTP_302



redirectActionStatusCodeEnumDecoder : JD.Decoder RedirectActionStatusCodeEnum
redirectActionStatusCodeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HTTP_301" ->
                        JD.succeed RedirectActionStatusCodeEnum_HTTP_301

                    "HTTP_302" ->
                        JD.succeed RedirectActionStatusCodeEnum_HTTP_302


                    _ ->
                        JD.fail "bad thing"
            )




redirectActionStatusCodeEnumToString : RedirectActionStatusCodeEnum -> String
redirectActionStatusCodeEnumToString val =
    case val of
        RedirectActionStatusCodeEnum_HTTP_301 ->
            "HTTP_301"

        RedirectActionStatusCodeEnum_HTTP_302 ->
            "HTTP_302"




{-| Type of HTTP response from registerTarge
-}
type alias RegisterTargetsOutput =
    { 
    }



registerTargetsOutputDecoder : JD.Decoder RegisterTargetsOutput
registerTargetsOutputDecoder =
    JD.succeed RegisterTargetsOutput
        




registerTargetsOutputToString : RegisterTargetsOutput -> String -- List (String, String)
registerTargetsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from removeListenerCertificat
-}
type alias RemoveListenerCertificatesOutput =
    { 
    }



removeListenerCertificatesOutputDecoder : JD.Decoder RemoveListenerCertificatesOutput
removeListenerCertificatesOutputDecoder =
    JD.succeed RemoveListenerCertificatesOutput
        




removeListenerCertificatesOutputToString : RemoveListenerCertificatesOutput -> String -- List (String, String)
removeListenerCertificatesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from removeTa
-}
type alias RemoveTagsOutput =
    { 
    }



removeTagsOutputDecoder : JD.Decoder RemoveTagsOutput
removeTagsOutputDecoder =
    JD.succeed RemoveTagsOutput
        




removeTagsOutputToString : RemoveTagsOutput -> String -- List (String, String)
removeTagsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Information about a rule.</p>
-}
type alias Rule =
    { ruleArn : Maybe String
    , priority : Maybe String
    , conditions : Maybe (List RuleCondition)
    , actions : Maybe (List Action)
    , isDefault : Maybe Bool
    }



ruleDecoder : JD.Decoder Rule
ruleDecoder =
    JD.succeed Rule
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RuleArn", "ruleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Priority", "priority"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Conditions", "conditions"]
            (JD.list ruleConditionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Actions", "actions"]
            (JD.list actionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsDefault", "isDefault"]
            JD.bool
        )
        




ruleToString : Rule -> String -- List (String, String)
ruleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleArn" "" -- val.ruleArn
        
    --     |> Dict.insert
    --         "priority" "" -- val.priority
        
    --     |> Dict.insert
    --         "conditions" "" -- val.conditions
        
    --     |> Dict.insert
    --         "actions" "" -- val.actions
        
    --     |> Dict.insert
    --         "isDefault" "" -- val.isDefault
        
    --     |> Dict.toList
    ""



{-| <p>Information about a condition for a rule.</p>
-}
type alias RuleCondition =
    { field : Maybe String
    , values : Maybe (List String)
    , hostHeaderConfig : Maybe HostHeaderConditionConfig
    , pathPatternConfig : Maybe PathPatternConditionConfig
    , httpHeaderConfig : Maybe HttpHeaderConditionConfig
    , queryStringConfig : Maybe QueryStringConditionConfig
    , httpRequestMethodConfig : Maybe HttpRequestMethodConditionConfig
    , sourceIpConfig : Maybe SourceIpConditionConfig
    }



ruleConditionDecoder : JD.Decoder RuleCondition
ruleConditionDecoder =
    JD.succeed RuleCondition
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Field", "field"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Values", "values"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HostHeaderConfig", "hostHeaderConfig"]
            hostHeaderConditionConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PathPatternConfig", "pathPatternConfig"]
            pathPatternConditionConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HttpHeaderConfig", "httpHeaderConfig"]
            httpHeaderConditionConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QueryStringConfig", "queryStringConfig"]
            queryStringConditionConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HttpRequestMethodConfig", "httpRequestMethodConfig"]
            httpRequestMethodConditionConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceIpConfig", "sourceIpConfig"]
            sourceIpConditionConfigDecoder
        )
        




ruleConditionToString : RuleCondition -> String -- List (String, String)
ruleConditionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "field" "" -- val.field
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.insert
    --         "hostHeaderConfig" "" -- val.hostHeaderConfig
        
    --     |> Dict.insert
    --         "pathPatternConfig" "" -- val.pathPatternConfig
        
    --     |> Dict.insert
    --         "httpHeaderConfig" "" -- val.httpHeaderConfig
        
    --     |> Dict.insert
    --         "queryStringConfig" "" -- val.queryStringConfig
        
    --     |> Dict.insert
    --         "httpRequestMethodConfig" "" -- val.httpRequestMethodConfig
        
    --     |> Dict.insert
    --         "sourceIpConfig" "" -- val.sourceIpConfig
        
    --     |> Dict.toList
    ""



{-| <p>Information about the priorities for the rules for a listener.</p>
-}
type alias RulePriorityPair =
    { ruleArn : Maybe String
    , priority : Maybe Int
    }



rulePriorityPairDecoder : JD.Decoder RulePriorityPair
rulePriorityPairDecoder =
    JD.succeed RulePriorityPair
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RuleArn", "ruleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Priority", "priority"]
            JD.int
        )
        




rulePriorityPairToString : RulePriorityPair -> String -- List (String, String)
rulePriorityPairToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleArn" "" -- val.ruleArn
        
    --     |> Dict.insert
    --         "priority" "" -- val.priority
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from setIpAddressTy
-}
type alias SetIpAddressTypeOutput =
    { ipAddressType : Maybe IpAddressType
    }



setIpAddressTypeOutputDecoder : JD.Decoder SetIpAddressTypeOutput
setIpAddressTypeOutputDecoder =
    JD.succeed SetIpAddressTypeOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IpAddressType", "ipAddressType"]
            ipAddressTypeDecoder
        )
        




setIpAddressTypeOutputToString : SetIpAddressTypeOutput -> String -- List (String, String)
setIpAddressTypeOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ipAddressType" "" -- val.ipAddressType
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from setRulePrioriti
-}
type alias SetRulePrioritiesOutput =
    { rules : Maybe (List Rule)
    }



setRulePrioritiesOutputDecoder : JD.Decoder SetRulePrioritiesOutput
setRulePrioritiesOutputDecoder =
    JD.succeed SetRulePrioritiesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Rules", "rules"]
            (JD.list ruleDecoder)
        )
        




setRulePrioritiesOutputToString : SetRulePrioritiesOutput -> String -- List (String, String)
setRulePrioritiesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "rules" "" -- val.rules
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from setSecurityGrou
-}
type alias SetSecurityGroupsOutput =
    { securityGroupIds : Maybe (List String)
    }



setSecurityGroupsOutputDecoder : JD.Decoder SetSecurityGroupsOutput
setSecurityGroupsOutputDecoder =
    JD.succeed SetSecurityGroupsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityGroupIds", "securityGroupIds"]
            (JD.list JD.string)
        )
        




setSecurityGroupsOutputToString : SetSecurityGroupsOutput -> String -- List (String, String)
setSecurityGroupsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "securityGroupIds" "" -- val.securityGroupIds
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from setSubne
-}
type alias SetSubnetsOutput =
    { availabilityZones : Maybe (List AvailabilityZone)
    }



setSubnetsOutputDecoder : JD.Decoder SetSubnetsOutput
setSubnetsOutputDecoder =
    JD.succeed SetSubnetsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZones", "availabilityZones"]
            (JD.list availabilityZoneDecoder)
        )
        




setSubnetsOutputToString : SetSubnetsOutput -> String -- List (String, String)
setSubnetsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "availabilityZones" "" -- val.availabilityZones
        
    --     |> Dict.toList
    ""



{-| <p>Information about a source IP condition.</p> <p>You can use this condition to route based on the IP address of the source that connects to the load balancer. If a client is behind a proxy, this is the IP address of the proxy not the IP address of the client.</p>
-}
type alias SourceIpConditionConfig =
    { values : Maybe (List String)
    }



sourceIpConditionConfigDecoder : JD.Decoder SourceIpConditionConfig
sourceIpConditionConfigDecoder =
    JD.succeed SourceIpConditionConfig
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Values", "values"]
            (JD.list JD.string)
        )
        




sourceIpConditionConfigToString : SourceIpConditionConfig -> String -- List (String, String)
sourceIpConditionConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| <p>Information about a policy used for SSL negotiation.</p>
-}
type alias SslPolicy =
    { sslProtocols : Maybe (List String)
    , ciphers : Maybe (List Cipher)
    , name : Maybe String
    }



sslPolicyDecoder : JD.Decoder SslPolicy
sslPolicyDecoder =
    JD.succeed SslPolicy
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SslProtocols", "sslProtocols"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Ciphers", "ciphers"]
            (JD.list cipherDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




sslPolicyToString : SslPolicy -> String -- List (String, String)
sslPolicyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sslProtocols" "" -- val.sslProtocols
        
    --     |> Dict.insert
    --         "ciphers" "" -- val.ciphers
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Information about a subnet mapping.</p>
-}
type alias SubnetMapping =
    { subnetId : Maybe String
    , allocationId : Maybe String
    }



subnetMappingDecoder : JD.Decoder SubnetMapping
subnetMappingDecoder =
    JD.succeed SubnetMapping
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetId", "subnetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllocationId", "allocationId"]
            JD.string
        )
        




subnetMappingToString : SubnetMapping -> String -- List (String, String)
subnetMappingToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subnetId" "" -- val.subnetId
        
    --     |> Dict.insert
    --         "allocationId" "" -- val.allocationId
        
    --     |> Dict.toList
    ""



{-| <p>Information about a tag.</p>
-}
type alias Tag =
    { key : String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.required
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



{-| <p>The tags associated with a resource.</p>
-}
type alias TagDescription =
    { resourceArn : Maybe String
    , tags : Maybe (List Tag)
    }



tagDescriptionDecoder : JD.Decoder TagDescription
tagDescriptionDecoder =
    JD.succeed TagDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceArn", "resourceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        




tagDescriptionToString : TagDescription -> String -- List (String, String)
tagDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceArn" "" -- val.resourceArn
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>Information about a target.</p>
-}
type alias TargetDescription =
    { id : String
    , port_ : Maybe Int
    , availabilityZone : Maybe String
    }



targetDescriptionDecoder : JD.Decoder TargetDescription
targetDescriptionDecoder =
    JD.succeed TargetDescription
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZone", "availabilityZone"]
            JD.string
        )
        




targetDescriptionToString : TargetDescription -> String -- List (String, String)
targetDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.toList
    ""



{-| <p>Information about a target group.</p>
-}
type alias TargetGroup =
    { targetGroupArn : Maybe String
    , targetGroupName : Maybe String
    , protocol : Maybe ProtocolEnum
    , port_ : Maybe Int
    , vpcId : Maybe String
    , healthCheckProtocol : Maybe ProtocolEnum
    , healthCheckPort : Maybe String
    , healthCheckEnabled : Maybe Bool
    , healthCheckIntervalSeconds : Maybe Int
    , healthCheckTimeoutSeconds : Maybe Int
    , healthyThresholdCount : Maybe Int
    , unhealthyThresholdCount : Maybe Int
    , healthCheckPath : Maybe String
    , matcher : Maybe Matcher
    , loadBalancerArns : Maybe (List String)
    , targetType : Maybe TargetTypeEnum
    }



targetGroupDecoder : JD.Decoder TargetGroup
targetGroupDecoder =
    JD.succeed TargetGroup
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetGroupArn", "targetGroupArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetGroupName", "targetGroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Protocol", "protocol"]
            protocolEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcId", "vpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HealthCheckProtocol", "healthCheckProtocol"]
            protocolEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HealthCheckPort", "healthCheckPort"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HealthCheckEnabled", "healthCheckEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HealthCheckIntervalSeconds", "healthCheckIntervalSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HealthCheckTimeoutSeconds", "healthCheckTimeoutSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HealthyThresholdCount", "healthyThresholdCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UnhealthyThresholdCount", "unhealthyThresholdCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HealthCheckPath", "healthCheckPath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Matcher", "matcher"]
            matcherDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancerArns", "loadBalancerArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetType", "targetType"]
            targetTypeEnumDecoder
        )
        




targetGroupToString : TargetGroup -> String -- List (String, String)
targetGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "targetGroupArn" "" -- val.targetGroupArn
        
    --     |> Dict.insert
    --         "targetGroupName" "" -- val.targetGroupName
        
    --     |> Dict.insert
    --         "protocol" "" -- val.protocol
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "healthCheckProtocol" "" -- val.healthCheckProtocol
        
    --     |> Dict.insert
    --         "healthCheckPort" "" -- val.healthCheckPort
        
    --     |> Dict.insert
    --         "healthCheckEnabled" "" -- val.healthCheckEnabled
        
    --     |> Dict.insert
    --         "healthCheckIntervalSeconds" "" -- val.healthCheckIntervalSeconds
        
    --     |> Dict.insert
    --         "healthCheckTimeoutSeconds" "" -- val.healthCheckTimeoutSeconds
        
    --     |> Dict.insert
    --         "healthyThresholdCount" "" -- val.healthyThresholdCount
        
    --     |> Dict.insert
    --         "unhealthyThresholdCount" "" -- val.unhealthyThresholdCount
        
    --     |> Dict.insert
    --         "healthCheckPath" "" -- val.healthCheckPath
        
    --     |> Dict.insert
    --         "matcher" "" -- val.matcher
        
    --     |> Dict.insert
    --         "loadBalancerArns" "" -- val.loadBalancerArns
        
    --     |> Dict.insert
    --         "targetType" "" -- val.targetType
        
    --     |> Dict.toList
    ""



{-| <p>Information about a target group attribute.</p>
-}
type alias TargetGroupAttribute =
    { key : Maybe String
    , value : Maybe String
    }



targetGroupAttributeDecoder : JD.Decoder TargetGroupAttribute
targetGroupAttributeDecoder =
    JD.succeed TargetGroupAttribute
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




targetGroupAttributeToString : TargetGroupAttribute -> String -- List (String, String)
targetGroupAttributeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| <p>Information about the current health of a target.</p>
-}
type alias TargetHealth =
    { state : Maybe TargetHealthStateEnum
    , reason : Maybe TargetHealthReasonEnum
    , description : Maybe String
    }



targetHealthDecoder : JD.Decoder TargetHealth
targetHealthDecoder =
    JD.succeed TargetHealth
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            targetHealthStateEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Reason", "reason"]
            targetHealthReasonEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        




targetHealthToString : TargetHealth -> String -- List (String, String)
targetHealthToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "reason" "" -- val.reason
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.toList
    ""



{-| <p>Information about the health of a target.</p>
-}
type alias TargetHealthDescription =
    { target : Maybe TargetDescription
    , healthCheckPort : Maybe String
    , targetHealth : Maybe TargetHealth
    }



targetHealthDescriptionDecoder : JD.Decoder TargetHealthDescription
targetHealthDescriptionDecoder =
    JD.succeed TargetHealthDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Target", "target"]
            targetDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HealthCheckPort", "healthCheckPort"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetHealth", "targetHealth"]
            targetHealthDecoder
        )
        




targetHealthDescriptionToString : TargetHealthDescription -> String -- List (String, String)
targetHealthDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "target" "" -- val.target
        
    --     |> Dict.insert
    --         "healthCheckPort" "" -- val.healthCheckPort
        
    --     |> Dict.insert
    --         "targetHealth" "" -- val.targetHealth
        
    --     |> Dict.toList
    ""



{-| One of

* `TargetHealthReasonEnum_Elb.RegistrationInProgress`
* `TargetHealthReasonEnum_Elb.InitialHealthChecking`
* `TargetHealthReasonEnum_Target.ResponseCodeMismatch`
* `TargetHealthReasonEnum_Target.Timeout`
* `TargetHealthReasonEnum_Target.FailedHealthChecks`
* `TargetHealthReasonEnum_Target.NotRegistered`
* `TargetHealthReasonEnum_Target.NotInUse`
* `TargetHealthReasonEnum_Target.DeregistrationInProgress`
* `TargetHealthReasonEnum_Target.InvalidState`
* `TargetHealthReasonEnum_Target.IpUnusable`
* `TargetHealthReasonEnum_Target.HealthCheckDisabled`
* `TargetHealthReasonEnum_Elb.InternalError`

-}
type TargetHealthReasonEnum
    = TargetHealthReasonEnum_Elb_RegistrationInProgress
    | TargetHealthReasonEnum_Elb_InitialHealthChecking
    | TargetHealthReasonEnum_Target_ResponseCodeMismatch
    | TargetHealthReasonEnum_Target_Timeout
    | TargetHealthReasonEnum_Target_FailedHealthChecks
    | TargetHealthReasonEnum_Target_NotRegistered
    | TargetHealthReasonEnum_Target_NotInUse
    | TargetHealthReasonEnum_Target_DeregistrationInProgress
    | TargetHealthReasonEnum_Target_InvalidState
    | TargetHealthReasonEnum_Target_IpUnusable
    | TargetHealthReasonEnum_Target_HealthCheckDisabled
    | TargetHealthReasonEnum_Elb_InternalError



targetHealthReasonEnumDecoder : JD.Decoder TargetHealthReasonEnum
targetHealthReasonEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Elb_RegistrationInProgress" ->
                        JD.succeed TargetHealthReasonEnum_Elb_RegistrationInProgress

                    "Elb_InitialHealthChecking" ->
                        JD.succeed TargetHealthReasonEnum_Elb_InitialHealthChecking

                    "Target_ResponseCodeMismatch" ->
                        JD.succeed TargetHealthReasonEnum_Target_ResponseCodeMismatch

                    "Target_Timeout" ->
                        JD.succeed TargetHealthReasonEnum_Target_Timeout

                    "Target_FailedHealthChecks" ->
                        JD.succeed TargetHealthReasonEnum_Target_FailedHealthChecks

                    "Target_NotRegistered" ->
                        JD.succeed TargetHealthReasonEnum_Target_NotRegistered

                    "Target_NotInUse" ->
                        JD.succeed TargetHealthReasonEnum_Target_NotInUse

                    "Target_DeregistrationInProgress" ->
                        JD.succeed TargetHealthReasonEnum_Target_DeregistrationInProgress

                    "Target_InvalidState" ->
                        JD.succeed TargetHealthReasonEnum_Target_InvalidState

                    "Target_IpUnusable" ->
                        JD.succeed TargetHealthReasonEnum_Target_IpUnusable

                    "Target_HealthCheckDisabled" ->
                        JD.succeed TargetHealthReasonEnum_Target_HealthCheckDisabled

                    "Elb_InternalError" ->
                        JD.succeed TargetHealthReasonEnum_Elb_InternalError


                    _ ->
                        JD.fail "bad thing"
            )




targetHealthReasonEnumToString : TargetHealthReasonEnum -> String
targetHealthReasonEnumToString val =
    case val of
        TargetHealthReasonEnum_Elb_RegistrationInProgress ->
            "Elb_RegistrationInProgress"

        TargetHealthReasonEnum_Elb_InitialHealthChecking ->
            "Elb_InitialHealthChecking"

        TargetHealthReasonEnum_Target_ResponseCodeMismatch ->
            "Target_ResponseCodeMismatch"

        TargetHealthReasonEnum_Target_Timeout ->
            "Target_Timeout"

        TargetHealthReasonEnum_Target_FailedHealthChecks ->
            "Target_FailedHealthChecks"

        TargetHealthReasonEnum_Target_NotRegistered ->
            "Target_NotRegistered"

        TargetHealthReasonEnum_Target_NotInUse ->
            "Target_NotInUse"

        TargetHealthReasonEnum_Target_DeregistrationInProgress ->
            "Target_DeregistrationInProgress"

        TargetHealthReasonEnum_Target_InvalidState ->
            "Target_InvalidState"

        TargetHealthReasonEnum_Target_IpUnusable ->
            "Target_IpUnusable"

        TargetHealthReasonEnum_Target_HealthCheckDisabled ->
            "Target_HealthCheckDisabled"

        TargetHealthReasonEnum_Elb_InternalError ->
            "Elb_InternalError"




{-| One of

* `TargetHealthStateEnum_initial`
* `TargetHealthStateEnum_healthy`
* `TargetHealthStateEnum_unhealthy`
* `TargetHealthStateEnum_unused`
* `TargetHealthStateEnum_draining`
* `TargetHealthStateEnum_unavailable`

-}
type TargetHealthStateEnum
    = TargetHealthStateEnum_initial
    | TargetHealthStateEnum_healthy
    | TargetHealthStateEnum_unhealthy
    | TargetHealthStateEnum_unused
    | TargetHealthStateEnum_draining
    | TargetHealthStateEnum_unavailable



targetHealthStateEnumDecoder : JD.Decoder TargetHealthStateEnum
targetHealthStateEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "initial" ->
                        JD.succeed TargetHealthStateEnum_initial

                    "healthy" ->
                        JD.succeed TargetHealthStateEnum_healthy

                    "unhealthy" ->
                        JD.succeed TargetHealthStateEnum_unhealthy

                    "unused" ->
                        JD.succeed TargetHealthStateEnum_unused

                    "draining" ->
                        JD.succeed TargetHealthStateEnum_draining

                    "unavailable" ->
                        JD.succeed TargetHealthStateEnum_unavailable


                    _ ->
                        JD.fail "bad thing"
            )




targetHealthStateEnumToString : TargetHealthStateEnum -> String
targetHealthStateEnumToString val =
    case val of
        TargetHealthStateEnum_initial ->
            "initial"

        TargetHealthStateEnum_healthy ->
            "healthy"

        TargetHealthStateEnum_unhealthy ->
            "unhealthy"

        TargetHealthStateEnum_unused ->
            "unused"

        TargetHealthStateEnum_draining ->
            "draining"

        TargetHealthStateEnum_unavailable ->
            "unavailable"




{-| One of

* `TargetTypeEnum_instance`
* `TargetTypeEnum_ip`
* `TargetTypeEnum_lambda`

-}
type TargetTypeEnum
    = TargetTypeEnum_instance
    | TargetTypeEnum_ip
    | TargetTypeEnum_lambda



targetTypeEnumDecoder : JD.Decoder TargetTypeEnum
targetTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "instance" ->
                        JD.succeed TargetTypeEnum_instance

                    "ip" ->
                        JD.succeed TargetTypeEnum_ip

                    "lambda" ->
                        JD.succeed TargetTypeEnum_lambda


                    _ ->
                        JD.fail "bad thing"
            )




targetTypeEnumToString : TargetTypeEnum -> String
targetTypeEnumToString val =
    case val of
        TargetTypeEnum_instance ->
            "instance"

        TargetTypeEnum_ip ->
            "ip"

        TargetTypeEnum_lambda ->
            "lambda"







{-| undefined
-}
type alias AddListenerCertificatesInput =
    { listenerArn : String
    , certificates : (List Certificate)
    }


{-| undefined
-}
type alias AddTagsInput =
    { resourceArns : (List String)
    , tags : (List Tag)
    }


{-| undefined
-}
type alias CreateListenerInput =
    { loadBalancerArn : String
    , protocol : ProtocolEnum
    , port_ : Int
    , sslPolicy : Maybe String
    , certificates : Maybe (List Certificate)
    , defaultActions : (List Action)
    }


{-| undefined
-}
type alias CreateLoadBalancerInput =
    { name : String
    , subnets : Maybe (List String)
    , subnetMappings : Maybe (List SubnetMapping)
    , securityGroups : Maybe (List String)
    , scheme : Maybe LoadBalancerSchemeEnum
    , tags : Maybe (List Tag)
    , type_ : Maybe LoadBalancerTypeEnum
    , ipAddressType : Maybe IpAddressType
    }


{-| undefined
-}
type alias CreateRuleInput =
    { listenerArn : String
    , conditions : (List RuleCondition)
    , priority : Int
    , actions : (List Action)
    }


{-| undefined
-}
type alias CreateTargetGroupInput =
    { name : String
    , protocol : Maybe ProtocolEnum
    , port_ : Maybe Int
    , vpcId : Maybe String
    , healthCheckProtocol : Maybe ProtocolEnum
    , healthCheckPort : Maybe String
    , healthCheckEnabled : Maybe Bool
    , healthCheckPath : Maybe String
    , healthCheckIntervalSeconds : Maybe Int
    , healthCheckTimeoutSeconds : Maybe Int
    , healthyThresholdCount : Maybe Int
    , unhealthyThresholdCount : Maybe Int
    , matcher : Maybe Matcher
    , targetType : Maybe TargetTypeEnum
    }


{-| undefined
-}
type alias DeleteListenerInput =
    { listenerArn : String
    }


{-| undefined
-}
type alias DeleteLoadBalancerInput =
    { loadBalancerArn : String
    }


{-| undefined
-}
type alias DeleteRuleInput =
    { ruleArn : String
    }


{-| undefined
-}
type alias DeleteTargetGroupInput =
    { targetGroupArn : String
    }


{-| undefined
-}
type alias DeregisterTargetsInput =
    { targetGroupArn : String
    , targets : (List TargetDescription)
    }


{-| undefined
-}
type alias DescribeAccountLimitsInput =
    { marker : Maybe String
    , pageSize : Maybe Int
    }


{-| undefined
-}
type alias DescribeListenerCertificatesInput =
    { listenerArn : String
    , marker : Maybe String
    , pageSize : Maybe Int
    }


{-| undefined
-}
type alias DescribeListenersInput =
    { loadBalancerArn : Maybe String
    , listenerArns : Maybe (List String)
    , marker : Maybe String
    , pageSize : Maybe Int
    }


{-| undefined
-}
type alias DescribeLoadBalancerAttributesInput =
    { loadBalancerArn : String
    }


{-| undefined
-}
type alias DescribeLoadBalancersInput =
    { loadBalancerArns : Maybe (List String)
    , names : Maybe (List String)
    , marker : Maybe String
    , pageSize : Maybe Int
    }


{-| undefined
-}
type alias DescribeRulesInput =
    { listenerArn : Maybe String
    , ruleArns : Maybe (List String)
    , marker : Maybe String
    , pageSize : Maybe Int
    }


{-| undefined
-}
type alias DescribeSSLPoliciesInput =
    { names : Maybe (List String)
    , marker : Maybe String
    , pageSize : Maybe Int
    }


{-| undefined
-}
type alias DescribeTagsInput =
    { resourceArns : (List String)
    }


{-| undefined
-}
type alias DescribeTargetGroupAttributesInput =
    { targetGroupArn : String
    }


{-| undefined
-}
type alias DescribeTargetGroupsInput =
    { loadBalancerArn : Maybe String
    , targetGroupArns : Maybe (List String)
    , names : Maybe (List String)
    , marker : Maybe String
    , pageSize : Maybe Int
    }


{-| undefined
-}
type alias DescribeTargetHealthInput =
    { targetGroupArn : String
    , targets : Maybe (List TargetDescription)
    }


{-| undefined
-}
type alias ModifyListenerInput =
    { listenerArn : String
    , port_ : Maybe Int
    , protocol : Maybe ProtocolEnum
    , sslPolicy : Maybe String
    , certificates : Maybe (List Certificate)
    , defaultActions : Maybe (List Action)
    }


{-| undefined
-}
type alias ModifyLoadBalancerAttributesInput =
    { loadBalancerArn : String
    , attributes : (List LoadBalancerAttribute)
    }


{-| undefined
-}
type alias ModifyRuleInput =
    { ruleArn : String
    , conditions : Maybe (List RuleCondition)
    , actions : Maybe (List Action)
    }


{-| undefined
-}
type alias ModifyTargetGroupAttributesInput =
    { targetGroupArn : String
    , attributes : (List TargetGroupAttribute)
    }


{-| undefined
-}
type alias ModifyTargetGroupInput =
    { targetGroupArn : String
    , healthCheckProtocol : Maybe ProtocolEnum
    , healthCheckPort : Maybe String
    , healthCheckPath : Maybe String
    , healthCheckEnabled : Maybe Bool
    , healthCheckIntervalSeconds : Maybe Int
    , healthCheckTimeoutSeconds : Maybe Int
    , healthyThresholdCount : Maybe Int
    , unhealthyThresholdCount : Maybe Int
    , matcher : Maybe Matcher
    }


{-| undefined
-}
type alias RegisterTargetsInput =
    { targetGroupArn : String
    , targets : (List TargetDescription)
    }


{-| undefined
-}
type alias RemoveListenerCertificatesInput =
    { listenerArn : String
    , certificates : (List Certificate)
    }


{-| undefined
-}
type alias RemoveTagsInput =
    { resourceArns : (List String)
    , tagKeys : (List String)
    }


{-| undefined
-}
type alias SetIpAddressTypeInput =
    { loadBalancerArn : String
    , ipAddressType : IpAddressType
    }


{-| undefined
-}
type alias SetRulePrioritiesInput =
    { rulePriorities : (List RulePriorityPair)
    }


{-| undefined
-}
type alias SetSecurityGroupsInput =
    { loadBalancerArn : String
    , securityGroups : (List String)
    }


{-| undefined
-}
type alias SetSubnetsInput =
    { loadBalancerArn : String
    , subnets : Maybe (List String)
    , subnetMappings : Maybe (List SubnetMapping)
    }








actionEncoder : Action -> List (String, String)
actionEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs actionTypeEnumToString "Type" data.type_
        
        
        
        |> (case data.targetGroupArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TargetGroupArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.authenticateOidcConfig of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs authenticateOidcActionConfigEncoder "AuthenticateOidcConfig" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.authenticateCognitoConfig of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs authenticateCognitoActionConfigEncoder "AuthenticateCognitoConfig" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.order of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Order" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.redirectConfig of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs redirectActionConfigEncoder "RedirectConfig" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.fixedResponseConfig of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs fixedResponseActionConfigEncoder "FixedResponseConfig" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










addListenerCertificatesInputEncoder : AddListenerCertificatesInput -> List (String, String)
addListenerCertificatesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ListenerArn" data.listenerArn
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs certificateEncoder "") "Certificates" data.certificates
        
        






addListenerCertificatesOutputEncoder : AddListenerCertificatesOutput -> List (String, String)
addListenerCertificatesOutputEncoder data =
    []
        
        
        |> (case data.certificates of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs certificateEncoder "") "Certificates" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






addTagsInputEncoder : AddTagsInput -> List (String, String)
addTagsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ResourceArns" data.resourceArns
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" data.tags
        
        






addTagsOutputEncoder : AddTagsOutput -> List (String, String)
addTagsOutputEncoder data =
    []
        










authenticateCognitoActionConfigEncoder : AuthenticateCognitoActionConfig -> List (String, String)
authenticateCognitoActionConfigEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "UserPoolArn" data.userPoolArn
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "UserPoolClientId" data.userPoolClientId
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "UserPoolDomain" data.userPoolDomain
        
        
        
        |> (case data.sessionCookieName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SessionCookieName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.scope of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Scope" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sessionTimeout of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "SessionTimeout" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.authenticationRequestExtraParams of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "AuthenticationRequestExtraParams" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.onUnauthenticatedRequest of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs authenticateCognitoActionConditionalBehaviorEnumToString "OnUnauthenticatedRequest" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










authenticateOidcActionConfigEncoder : AuthenticateOidcActionConfig -> List (String, String)
authenticateOidcActionConfigEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Issuer" data.issuer
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "AuthorizationEndpoint" data.authorizationEndpoint
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TokenEndpoint" data.tokenEndpoint
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "UserInfoEndpoint" data.userInfoEndpoint
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ClientId" data.clientId
        
        
        
        |> (case data.clientSecret of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ClientSecret" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sessionCookieName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SessionCookieName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.scope of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Scope" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sessionTimeout of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "SessionTimeout" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.authenticationRequestExtraParams of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "AuthenticationRequestExtraParams" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.onUnauthenticatedRequest of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs authenticateOidcActionConditionalBehaviorEnumToString "OnUnauthenticatedRequest" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.useExistingClientSecret of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "UseExistingClientSecret" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






availabilityZoneEncoder : AvailabilityZone -> List (String, String)
availabilityZoneEncoder data =
    []
        
        
        |> (case data.zoneName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ZoneName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.subnetId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SubnetId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.loadBalancerAddresses of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs loadBalancerAddressEncoder "") "LoadBalancerAddresses" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






certificateEncoder : Certificate -> List (String, String)
certificateEncoder data =
    []
        
        
        |> (case data.certificateArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CertificateArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.isDefault of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsDefault" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






cipherEncoder : Cipher -> List (String, String)
cipherEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.priority of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Priority" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createListenerInputEncoder : CreateListenerInput -> List (String, String)
createListenerInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerArn" data.loadBalancerArn
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs protocolEnumToString "Protocol" data.protocol
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" data.port_
        
        
        
        |> (case data.sslPolicy of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SslPolicy" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.certificates of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs certificateEncoder "") "Certificates" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs actionEncoder "") "DefaultActions" data.defaultActions
        
        






createListenerOutputEncoder : CreateListenerOutput -> List (String, String)
createListenerOutputEncoder data =
    []
        
        
        |> (case data.listeners of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs listenerEncoder "") "Listeners" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createLoadBalancerInputEncoder : CreateLoadBalancerInput -> List (String, String)
createLoadBalancerInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Name" data.name
        
        
        
        |> (case data.subnets of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Subnets" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.subnetMappings of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs subnetMappingEncoder "") "SubnetMappings" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.securityGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SecurityGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.scheme of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs loadBalancerSchemeEnumToString "Scheme" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.type_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs loadBalancerTypeEnumToString "Type" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.ipAddressType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs ipAddressTypeToString "IpAddressType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createLoadBalancerOutputEncoder : CreateLoadBalancerOutput -> List (String, String)
createLoadBalancerOutputEncoder data =
    []
        
        
        |> (case data.loadBalancers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs loadBalancerEncoder "") "LoadBalancers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createRuleInputEncoder : CreateRuleInput -> List (String, String)
createRuleInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ListenerArn" data.listenerArn
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs ruleConditionEncoder "") "Conditions" data.conditions
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "Priority" data.priority
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs actionEncoder "") "Actions" data.actions
        
        






createRuleOutputEncoder : CreateRuleOutput -> List (String, String)
createRuleOutputEncoder data =
    []
        
        
        |> (case data.rules of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs ruleEncoder "") "Rules" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createTargetGroupInputEncoder : CreateTargetGroupInput -> List (String, String)
createTargetGroupInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Name" data.name
        
        
        
        |> (case data.protocol of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs protocolEnumToString "Protocol" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VpcId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckProtocol of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs protocolEnumToString "HealthCheckProtocol" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckPort of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "HealthCheckPort" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "HealthCheckEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckPath of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "HealthCheckPath" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckIntervalSeconds of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "HealthCheckIntervalSeconds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckTimeoutSeconds of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "HealthCheckTimeoutSeconds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthyThresholdCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "HealthyThresholdCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.unhealthyThresholdCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "UnhealthyThresholdCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.matcher of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs matcherEncoder "Matcher" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.targetType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs targetTypeEnumToString "TargetType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createTargetGroupOutputEncoder : CreateTargetGroupOutput -> List (String, String)
createTargetGroupOutputEncoder data =
    []
        
        
        |> (case data.targetGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs targetGroupEncoder "") "TargetGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteListenerInputEncoder : DeleteListenerInput -> List (String, String)
deleteListenerInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ListenerArn" data.listenerArn
        
        






deleteListenerOutputEncoder : DeleteListenerOutput -> List (String, String)
deleteListenerOutputEncoder data =
    []
        






deleteLoadBalancerInputEncoder : DeleteLoadBalancerInput -> List (String, String)
deleteLoadBalancerInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerArn" data.loadBalancerArn
        
        






deleteLoadBalancerOutputEncoder : DeleteLoadBalancerOutput -> List (String, String)
deleteLoadBalancerOutputEncoder data =
    []
        






deleteRuleInputEncoder : DeleteRuleInput -> List (String, String)
deleteRuleInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleArn" data.ruleArn
        
        






deleteRuleOutputEncoder : DeleteRuleOutput -> List (String, String)
deleteRuleOutputEncoder data =
    []
        






deleteTargetGroupInputEncoder : DeleteTargetGroupInput -> List (String, String)
deleteTargetGroupInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetGroupArn" data.targetGroupArn
        
        






deleteTargetGroupOutputEncoder : DeleteTargetGroupOutput -> List (String, String)
deleteTargetGroupOutputEncoder data =
    []
        






deregisterTargetsInputEncoder : DeregisterTargetsInput -> List (String, String)
deregisterTargetsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetGroupArn" data.targetGroupArn
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs targetDescriptionEncoder "") "Targets" data.targets
        
        






deregisterTargetsOutputEncoder : DeregisterTargetsOutput -> List (String, String)
deregisterTargetsOutputEncoder data =
    []
        






describeAccountLimitsInputEncoder : DescribeAccountLimitsInput -> List (String, String)
describeAccountLimitsInputEncoder data =
    []
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.pageSize of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PageSize" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeAccountLimitsOutputEncoder : DescribeAccountLimitsOutput -> List (String, String)
describeAccountLimitsOutputEncoder data =
    []
        
        
        |> (case data.limits of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs limitEncoder "") "Limits" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextMarker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextMarker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeListenerCertificatesInputEncoder : DescribeListenerCertificatesInput -> List (String, String)
describeListenerCertificatesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ListenerArn" data.listenerArn
        
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.pageSize of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PageSize" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeListenerCertificatesOutputEncoder : DescribeListenerCertificatesOutput -> List (String, String)
describeListenerCertificatesOutputEncoder data =
    []
        
        
        |> (case data.certificates of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs certificateEncoder "") "Certificates" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextMarker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextMarker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeListenersInputEncoder : DescribeListenersInput -> List (String, String)
describeListenersInputEncoder data =
    []
        
        
        |> (case data.loadBalancerArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.listenerArns of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ListenerArns" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.pageSize of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PageSize" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeListenersOutputEncoder : DescribeListenersOutput -> List (String, String)
describeListenersOutputEncoder data =
    []
        
        
        |> (case data.listeners of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs listenerEncoder "") "Listeners" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextMarker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextMarker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeLoadBalancerAttributesInputEncoder : DescribeLoadBalancerAttributesInput -> List (String, String)
describeLoadBalancerAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerArn" data.loadBalancerArn
        
        






describeLoadBalancerAttributesOutputEncoder : DescribeLoadBalancerAttributesOutput -> List (String, String)
describeLoadBalancerAttributesOutputEncoder data =
    []
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs loadBalancerAttributeEncoder "") "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeLoadBalancersInputEncoder : DescribeLoadBalancersInput -> List (String, String)
describeLoadBalancersInputEncoder data =
    []
        
        
        |> (case data.loadBalancerArns of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LoadBalancerArns" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.names of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Names" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.pageSize of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PageSize" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeLoadBalancersOutputEncoder : DescribeLoadBalancersOutput -> List (String, String)
describeLoadBalancersOutputEncoder data =
    []
        
        
        |> (case data.loadBalancers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs loadBalancerEncoder "") "LoadBalancers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextMarker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextMarker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeRulesInputEncoder : DescribeRulesInput -> List (String, String)
describeRulesInputEncoder data =
    []
        
        
        |> (case data.listenerArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ListenerArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.ruleArns of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "RuleArns" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.pageSize of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PageSize" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeRulesOutputEncoder : DescribeRulesOutput -> List (String, String)
describeRulesOutputEncoder data =
    []
        
        
        |> (case data.rules of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs ruleEncoder "") "Rules" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextMarker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextMarker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeSSLPoliciesInputEncoder : DescribeSSLPoliciesInput -> List (String, String)
describeSSLPoliciesInputEncoder data =
    []
        
        
        |> (case data.names of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Names" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.pageSize of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PageSize" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeSSLPoliciesOutputEncoder : DescribeSSLPoliciesOutput -> List (String, String)
describeSSLPoliciesOutputEncoder data =
    []
        
        
        |> (case data.sslPolicies of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs sslPolicyEncoder "") "SslPolicies" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextMarker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextMarker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeTagsInputEncoder : DescribeTagsInput -> List (String, String)
describeTagsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ResourceArns" data.resourceArns
        
        






describeTagsOutputEncoder : DescribeTagsOutput -> List (String, String)
describeTagsOutputEncoder data =
    []
        
        
        |> (case data.tagDescriptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagDescriptionEncoder "") "TagDescriptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeTargetGroupAttributesInputEncoder : DescribeTargetGroupAttributesInput -> List (String, String)
describeTargetGroupAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetGroupArn" data.targetGroupArn
        
        






describeTargetGroupAttributesOutputEncoder : DescribeTargetGroupAttributesOutput -> List (String, String)
describeTargetGroupAttributesOutputEncoder data =
    []
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs targetGroupAttributeEncoder "") "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeTargetGroupsInputEncoder : DescribeTargetGroupsInput -> List (String, String)
describeTargetGroupsInputEncoder data =
    []
        
        
        |> (case data.loadBalancerArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.targetGroupArns of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TargetGroupArns" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.names of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Names" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.marker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Marker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.pageSize of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "PageSize" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeTargetGroupsOutputEncoder : DescribeTargetGroupsOutput -> List (String, String)
describeTargetGroupsOutputEncoder data =
    []
        
        
        |> (case data.targetGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs targetGroupEncoder "") "TargetGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextMarker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextMarker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeTargetHealthInputEncoder : DescribeTargetHealthInput -> List (String, String)
describeTargetHealthInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetGroupArn" data.targetGroupArn
        
        
        
        |> (case data.targets of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs targetDescriptionEncoder "") "Targets" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeTargetHealthOutputEncoder : DescribeTargetHealthOutput -> List (String, String)
describeTargetHealthOutputEncoder data =
    []
        
        
        |> (case data.targetHealthDescriptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs targetHealthDescriptionEncoder "") "TargetHealthDescriptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






fixedResponseActionConfigEncoder : FixedResponseActionConfig -> List (String, String)
fixedResponseActionConfigEncoder data =
    []
        
        
        |> (case data.messageBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MessageBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StatusCode" data.statusCode
        
        
        
        |> (case data.contentType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ContentType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






hostHeaderConditionConfigEncoder : HostHeaderConditionConfig -> List (String, String)
hostHeaderConditionConfigEncoder data =
    []
        
        
        |> (case data.values of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Values" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






httpHeaderConditionConfigEncoder : HttpHeaderConditionConfig -> List (String, String)
httpHeaderConditionConfigEncoder data =
    []
        
        
        |> (case data.httpHeaderName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "HttpHeaderName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.values of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Values" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






httpRequestMethodConditionConfigEncoder : HttpRequestMethodConditionConfig -> List (String, String)
httpRequestMethodConditionConfigEncoder data =
    []
        
        
        |> (case data.values of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Values" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










limitEncoder : Limit -> List (String, String)
limitEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.max of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Max" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listenerEncoder : Listener -> List (String, String)
listenerEncoder data =
    []
        
        
        |> (case data.listenerArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ListenerArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.loadBalancerArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.protocol of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs protocolEnumToString "Protocol" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.certificates of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs certificateEncoder "") "Certificates" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sslPolicy of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SslPolicy" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.defaultActions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs actionEncoder "") "DefaultActions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






loadBalancerEncoder : LoadBalancer -> List (String, String)
loadBalancerEncoder data =
    []
        
        
        |> (case data.loadBalancerArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dNSName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DNSName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.canonicalHostedZoneId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CanonicalHostedZoneId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.createdTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreatedTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.loadBalancerName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.scheme of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs loadBalancerSchemeEnumToString "Scheme" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VpcId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.state of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs loadBalancerStateEncoder "State" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.type_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs loadBalancerTypeEnumToString "Type" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.availabilityZones of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs availabilityZoneEncoder "") "AvailabilityZones" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.securityGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SecurityGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.ipAddressType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs ipAddressTypeToString "IpAddressType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






loadBalancerAddressEncoder : LoadBalancerAddress -> List (String, String)
loadBalancerAddressEncoder data =
    []
        
        
        |> (case data.ipAddress of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "IpAddress" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.allocationId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AllocationId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






loadBalancerAttributeEncoder : LoadBalancerAttribute -> List (String, String)
loadBalancerAttributeEncoder data =
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
        
        










loadBalancerStateEncoder : LoadBalancerState -> List (String, String)
loadBalancerStateEncoder data =
    []
        
        
        |> (case data.code of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs loadBalancerStateEnumToString "Code" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.reason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Reason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        














matcherEncoder : Matcher -> List (String, String)
matcherEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "HttpCode" data.httpCode
        
        






modifyListenerInputEncoder : ModifyListenerInput -> List (String, String)
modifyListenerInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ListenerArn" data.listenerArn
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.protocol of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs protocolEnumToString "Protocol" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sslPolicy of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SslPolicy" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.certificates of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs certificateEncoder "") "Certificates" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.defaultActions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs actionEncoder "") "DefaultActions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyListenerOutputEncoder : ModifyListenerOutput -> List (String, String)
modifyListenerOutputEncoder data =
    []
        
        
        |> (case data.listeners of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs listenerEncoder "") "Listeners" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyLoadBalancerAttributesInputEncoder : ModifyLoadBalancerAttributesInput -> List (String, String)
modifyLoadBalancerAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerArn" data.loadBalancerArn
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs loadBalancerAttributeEncoder "") "Attributes" data.attributes
        
        






modifyLoadBalancerAttributesOutputEncoder : ModifyLoadBalancerAttributesOutput -> List (String, String)
modifyLoadBalancerAttributesOutputEncoder data =
    []
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs loadBalancerAttributeEncoder "") "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyRuleInputEncoder : ModifyRuleInput -> List (String, String)
modifyRuleInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "RuleArn" data.ruleArn
        
        
        
        |> (case data.conditions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs ruleConditionEncoder "") "Conditions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.actions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs actionEncoder "") "Actions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyRuleOutputEncoder : ModifyRuleOutput -> List (String, String)
modifyRuleOutputEncoder data =
    []
        
        
        |> (case data.rules of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs ruleEncoder "") "Rules" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyTargetGroupAttributesInputEncoder : ModifyTargetGroupAttributesInput -> List (String, String)
modifyTargetGroupAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetGroupArn" data.targetGroupArn
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs targetGroupAttributeEncoder "") "Attributes" data.attributes
        
        






modifyTargetGroupAttributesOutputEncoder : ModifyTargetGroupAttributesOutput -> List (String, String)
modifyTargetGroupAttributesOutputEncoder data =
    []
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs targetGroupAttributeEncoder "") "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyTargetGroupInputEncoder : ModifyTargetGroupInput -> List (String, String)
modifyTargetGroupInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetGroupArn" data.targetGroupArn
        
        
        
        |> (case data.healthCheckProtocol of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs protocolEnumToString "HealthCheckProtocol" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckPort of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "HealthCheckPort" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckPath of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "HealthCheckPath" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "HealthCheckEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckIntervalSeconds of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "HealthCheckIntervalSeconds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckTimeoutSeconds of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "HealthCheckTimeoutSeconds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthyThresholdCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "HealthyThresholdCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.unhealthyThresholdCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "UnhealthyThresholdCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.matcher of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs matcherEncoder "Matcher" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyTargetGroupOutputEncoder : ModifyTargetGroupOutput -> List (String, String)
modifyTargetGroupOutputEncoder data =
    []
        
        
        |> (case data.targetGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs targetGroupEncoder "") "TargetGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






pathPatternConditionConfigEncoder : PathPatternConditionConfig -> List (String, String)
pathPatternConditionConfigEncoder data =
    []
        
        
        |> (case data.values of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Values" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










queryStringConditionConfigEncoder : QueryStringConditionConfig -> List (String, String)
queryStringConditionConfigEncoder data =
    []
        
        
        |> (case data.values of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs queryStringKeyValuePairEncoder "") "Values" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






queryStringKeyValuePairEncoder : QueryStringKeyValuePair -> List (String, String)
queryStringKeyValuePairEncoder data =
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
        
        






redirectActionConfigEncoder : RedirectActionConfig -> List (String, String)
redirectActionConfigEncoder data =
    []
        
        
        |> (case data.protocol of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Protocol" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.host of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Host" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.path of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Path" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.query of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Query" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs redirectActionStatusCodeEnumToString "StatusCode" data.statusCode
        
        










registerTargetsInputEncoder : RegisterTargetsInput -> List (String, String)
registerTargetsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "TargetGroupArn" data.targetGroupArn
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs targetDescriptionEncoder "") "Targets" data.targets
        
        






registerTargetsOutputEncoder : RegisterTargetsOutput -> List (String, String)
registerTargetsOutputEncoder data =
    []
        






removeListenerCertificatesInputEncoder : RemoveListenerCertificatesInput -> List (String, String)
removeListenerCertificatesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ListenerArn" data.listenerArn
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs certificateEncoder "") "Certificates" data.certificates
        
        






removeListenerCertificatesOutputEncoder : RemoveListenerCertificatesOutput -> List (String, String)
removeListenerCertificatesOutputEncoder data =
    []
        






removeTagsInputEncoder : RemoveTagsInput -> List (String, String)
removeTagsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ResourceArns" data.resourceArns
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" data.tagKeys
        
        






removeTagsOutputEncoder : RemoveTagsOutput -> List (String, String)
removeTagsOutputEncoder data =
    []
        






ruleEncoder : Rule -> List (String, String)
ruleEncoder data =
    []
        
        
        |> (case data.ruleArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RuleArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.priority of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Priority" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.conditions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs ruleConditionEncoder "") "Conditions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.actions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs actionEncoder "") "Actions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.isDefault of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsDefault" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






ruleConditionEncoder : RuleCondition -> List (String, String)
ruleConditionEncoder data =
    []
        
        
        |> (case data.field of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Field" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.values of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Values" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.hostHeaderConfig of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs hostHeaderConditionConfigEncoder "HostHeaderConfig" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.pathPatternConfig of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs pathPatternConditionConfigEncoder "PathPatternConfig" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.httpHeaderConfig of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs httpHeaderConditionConfigEncoder "HttpHeaderConfig" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.queryStringConfig of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs queryStringConditionConfigEncoder "QueryStringConfig" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.httpRequestMethodConfig of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs httpRequestMethodConditionConfigEncoder "HttpRequestMethodConfig" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceIpConfig of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs sourceIpConditionConfigEncoder "SourceIpConfig" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






rulePriorityPairEncoder : RulePriorityPair -> List (String, String)
rulePriorityPairEncoder data =
    []
        
        
        |> (case data.ruleArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RuleArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.priority of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Priority" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






setIpAddressTypeInputEncoder : SetIpAddressTypeInput -> List (String, String)
setIpAddressTypeInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerArn" data.loadBalancerArn
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs ipAddressTypeToString "IpAddressType" data.ipAddressType
        
        






setIpAddressTypeOutputEncoder : SetIpAddressTypeOutput -> List (String, String)
setIpAddressTypeOutputEncoder data =
    []
        
        
        |> (case data.ipAddressType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs ipAddressTypeToString "IpAddressType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






setRulePrioritiesInputEncoder : SetRulePrioritiesInput -> List (String, String)
setRulePrioritiesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs rulePriorityPairEncoder "") "RulePriorities" data.rulePriorities
        
        






setRulePrioritiesOutputEncoder : SetRulePrioritiesOutput -> List (String, String)
setRulePrioritiesOutputEncoder data =
    []
        
        
        |> (case data.rules of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs ruleEncoder "") "Rules" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






setSecurityGroupsInputEncoder : SetSecurityGroupsInput -> List (String, String)
setSecurityGroupsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerArn" data.loadBalancerArn
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SecurityGroups" data.securityGroups
        
        






setSecurityGroupsOutputEncoder : SetSecurityGroupsOutput -> List (String, String)
setSecurityGroupsOutputEncoder data =
    []
        
        
        |> (case data.securityGroupIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SecurityGroupIds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






setSubnetsInputEncoder : SetSubnetsInput -> List (String, String)
setSubnetsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerArn" data.loadBalancerArn
        
        
        
        |> (case data.subnets of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Subnets" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.subnetMappings of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs subnetMappingEncoder "") "SubnetMappings" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






setSubnetsOutputEncoder : SetSubnetsOutput -> List (String, String)
setSubnetsOutputEncoder data =
    []
        
        
        |> (case data.availabilityZones of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs availabilityZoneEncoder "") "AvailabilityZones" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






sourceIpConditionConfigEncoder : SourceIpConditionConfig -> List (String, String)
sourceIpConditionConfigEncoder data =
    []
        
        
        |> (case data.values of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Values" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






sslPolicyEncoder : SslPolicy -> List (String, String)
sslPolicyEncoder data =
    []
        
        
        |> (case data.sslProtocols of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SslProtocols" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.ciphers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs cipherEncoder "") "Ciphers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






subnetMappingEncoder : SubnetMapping -> List (String, String)
subnetMappingEncoder data =
    []
        
        
        |> (case data.subnetId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SubnetId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.allocationId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AllocationId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






tagEncoder : Tag -> List (String, String)
tagEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Key" data.key
        
        
        
        |> (case data.value of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Value" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






tagDescriptionEncoder : TagDescription -> List (String, String)
tagDescriptionEncoder data =
    []
        
        
        |> (case data.resourceArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ResourceArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






targetDescriptionEncoder : TargetDescription -> List (String, String)
targetDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Id" data.id
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.availabilityZone of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AvailabilityZone" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






targetGroupEncoder : TargetGroup -> List (String, String)
targetGroupEncoder data =
    []
        
        
        |> (case data.targetGroupArn of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TargetGroupArn" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.targetGroupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TargetGroupName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.protocol of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs protocolEnumToString "Protocol" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.port_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Port" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vpcId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VpcId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckProtocol of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs protocolEnumToString "HealthCheckProtocol" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckPort of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "HealthCheckPort" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "HealthCheckEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckIntervalSeconds of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "HealthCheckIntervalSeconds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckTimeoutSeconds of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "HealthCheckTimeoutSeconds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthyThresholdCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "HealthyThresholdCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.unhealthyThresholdCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "UnhealthyThresholdCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckPath of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "HealthCheckPath" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.matcher of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs matcherEncoder "Matcher" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.loadBalancerArns of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LoadBalancerArns" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.targetType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs targetTypeEnumToString "TargetType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






targetGroupAttributeEncoder : TargetGroupAttribute -> List (String, String)
targetGroupAttributeEncoder data =
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
        
        






targetHealthEncoder : TargetHealth -> List (String, String)
targetHealthEncoder data =
    []
        
        
        |> (case data.state of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs targetHealthStateEnumToString "State" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.reason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs targetHealthReasonEnumToString "Reason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






targetHealthDescriptionEncoder : TargetHealthDescription -> List (String, String)
targetHealthDescriptionEncoder data =
    []
        
        
        |> (case data.target of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs targetDescriptionEncoder "Target" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheckPort of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "HealthCheckPort" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.targetHealth of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs targetHealthEncoder "TargetHealth" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        















