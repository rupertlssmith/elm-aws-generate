module AWS.ElasticLoadBalancing
    exposing
        ( service
        , addTags
        , applySecurityGroupsToLoadBalancer
        , attachLoadBalancerToSubnets
        , configureHealthCheck
        , createAppCookieStickinessPolicy
        , createLBCookieStickinessPolicy
        , CreateLBCookieStickinessPolicyOptions
        , createLoadBalancer
        , CreateLoadBalancerOptions
        , createLoadBalancerListeners
        , createLoadBalancerPolicy
        , CreateLoadBalancerPolicyOptions
        , deleteLoadBalancer
        , deleteLoadBalancerListeners
        , deleteLoadBalancerPolicy
        , deregisterInstancesFromLoadBalancer
        , describeAccountLimits
        , DescribeAccountLimitsOptions
        , describeInstanceHealth
        , DescribeInstanceHealthOptions
        , describeLoadBalancerAttributes
        , describeLoadBalancerPolicies
        , DescribeLoadBalancerPoliciesOptions
        , describeLoadBalancerPolicyTypes
        , DescribeLoadBalancerPolicyTypesOptions
        , describeLoadBalancers
        , DescribeLoadBalancersOptions
        , describeTags
        , detachLoadBalancerFromSubnets
        , disableAvailabilityZonesForLoadBalancer
        , enableAvailabilityZonesForLoadBalancer
        , modifyLoadBalancerAttributes
        , registerInstancesWithLoadBalancer
        , removeTags
        , setLoadBalancerListenerSSLCertificate
        , setLoadBalancerPoliciesForBackendServer
        , setLoadBalancerPoliciesOfListener
        , AccessLog
        , AddAvailabilityZonesOutput
        , AddTagsOutput
        , AdditionalAttribute
        , AppCookieStickinessPolicy
        , ApplySecurityGroupsToLoadBalancerOutput
        , AttachLoadBalancerToSubnetsOutput
        , BackendServerDescription
        , ConfigureHealthCheckOutput
        , ConnectionDraining
        , ConnectionSettings
        , CreateAccessPointOutput
        , CreateAppCookieStickinessPolicyOutput
        , CreateLBCookieStickinessPolicyOutput
        , CreateLoadBalancerListenerOutput
        , CreateLoadBalancerPolicyOutput
        , CrossZoneLoadBalancing
        , DeleteAccessPointOutput
        , DeleteLoadBalancerListenerOutput
        , DeleteLoadBalancerPolicyOutput
        , DeregisterEndPointsOutput
        , DescribeAccessPointsOutput
        , DescribeAccountLimitsOutput
        , DescribeEndPointStateOutput
        , DescribeLoadBalancerAttributesOutput
        , DescribeLoadBalancerPoliciesOutput
        , DescribeLoadBalancerPolicyTypesOutput
        , DescribeTagsOutput
        , DetachLoadBalancerFromSubnetsOutput
        , HealthCheck
        , Instance
        , InstanceState
        , LBCookieStickinessPolicy
        , Limit
        , Listener
        , ListenerDescription
        , LoadBalancerAttributes
        , LoadBalancerDescription
        , ModifyLoadBalancerAttributesOutput
        , Policies
        , PolicyAttribute
        , PolicyAttributeDescription
        , PolicyAttributeTypeDescription
        , PolicyDescription
        , PolicyTypeDescription
        , RegisterEndPointsOutput
        , RemoveAvailabilityZonesOutput
        , RemoveTagsOutput
        , SetLoadBalancerListenerSSLCertificateOutput
        , SetLoadBalancerPoliciesForBackendServerOutput
        , SetLoadBalancerPoliciesOfListenerOutput
        , SourceSecurityGroup
        , Tag
        , TagDescription
        , TagKeyOnly
        )

{-| <fullname>Elastic Load Balancing</fullname> <p>A load balancer can distribute incoming traffic across your EC2 instances. This enables you to increase the availability of your application. The load balancer also monitors the health of its registered instances and ensures that it routes traffic only to healthy instances. You configure your load balancer to accept incoming traffic by specifying one or more listeners, which are configured with a protocol and port number for connections from clients to the load balancer and a protocol and port number for connections from the load balancer to the instances.</p> <p>Elastic Load Balancing supports three types of load balancers: Application Load Balancers, Network Load Balancers, and Classic Load Balancers. You can select a load balancer based on your application needs. For more information, see the <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/">Elastic Load Balancing User Guide</a>.</p> <p>This reference covers the 2012-06-01 API, which supports Classic Load Balancers. The 2015-12-01 API supports Application Load Balancers and Network Load Balancers.</p> <p>To get started, create a load balancer with one or more listeners using <a>CreateLoadBalancer</a>. Register your instances with the load balancer using <a>RegisterInstancesWithLoadBalancer</a>.</p> <p>All Elastic Load Balancing operations are <i>idempotent</i>, which means that they complete at most one time. If you repeat an operation, it succeeds with a 200 OK response code.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)

## Operations

* [addTags](#addTags)
* [applySecurityGroupsToLoadBalancer](#applySecurityGroupsToLoadBalancer)
* [attachLoadBalancerToSubnets](#attachLoadBalancerToSubnets)
* [configureHealthCheck](#configureHealthCheck)
* [createAppCookieStickinessPolicy](#createAppCookieStickinessPolicy)
* [createLBCookieStickinessPolicy](#createLBCookieStickinessPolicy)
* [CreateLBCookieStickinessPolicyOptions](#CreateLBCookieStickinessPolicyOptions)
* [createLoadBalancer](#createLoadBalancer)
* [CreateLoadBalancerOptions](#CreateLoadBalancerOptions)
* [createLoadBalancerListeners](#createLoadBalancerListeners)
* [createLoadBalancerPolicy](#createLoadBalancerPolicy)
* [CreateLoadBalancerPolicyOptions](#CreateLoadBalancerPolicyOptions)
* [deleteLoadBalancer](#deleteLoadBalancer)
* [deleteLoadBalancerListeners](#deleteLoadBalancerListeners)
* [deleteLoadBalancerPolicy](#deleteLoadBalancerPolicy)
* [deregisterInstancesFromLoadBalancer](#deregisterInstancesFromLoadBalancer)
* [describeAccountLimits](#describeAccountLimits)
* [DescribeAccountLimitsOptions](#DescribeAccountLimitsOptions)
* [describeInstanceHealth](#describeInstanceHealth)
* [DescribeInstanceHealthOptions](#DescribeInstanceHealthOptions)
* [describeLoadBalancerAttributes](#describeLoadBalancerAttributes)
* [describeLoadBalancerPolicies](#describeLoadBalancerPolicies)
* [DescribeLoadBalancerPoliciesOptions](#DescribeLoadBalancerPoliciesOptions)
* [describeLoadBalancerPolicyTypes](#describeLoadBalancerPolicyTypes)
* [DescribeLoadBalancerPolicyTypesOptions](#DescribeLoadBalancerPolicyTypesOptions)
* [describeLoadBalancers](#describeLoadBalancers)
* [DescribeLoadBalancersOptions](#DescribeLoadBalancersOptions)
* [describeTags](#describeTags)
* [detachLoadBalancerFromSubnets](#detachLoadBalancerFromSubnets)
* [disableAvailabilityZonesForLoadBalancer](#disableAvailabilityZonesForLoadBalancer)
* [enableAvailabilityZonesForLoadBalancer](#enableAvailabilityZonesForLoadBalancer)
* [modifyLoadBalancerAttributes](#modifyLoadBalancerAttributes)
* [registerInstancesWithLoadBalancer](#registerInstancesWithLoadBalancer)
* [removeTags](#removeTags)
* [setLoadBalancerListenerSSLCertificate](#setLoadBalancerListenerSSLCertificate)
* [setLoadBalancerPoliciesForBackendServer](#setLoadBalancerPoliciesForBackendServer)
* [setLoadBalancerPoliciesOfListener](#setLoadBalancerPoliciesOfListener)


@docs addTags,applySecurityGroupsToLoadBalancer,attachLoadBalancerToSubnets,configureHealthCheck,createAppCookieStickinessPolicy,createLBCookieStickinessPolicy,CreateLBCookieStickinessPolicyOptions,createLoadBalancer,CreateLoadBalancerOptions,createLoadBalancerListeners,createLoadBalancerPolicy,CreateLoadBalancerPolicyOptions,deleteLoadBalancer,deleteLoadBalancerListeners,deleteLoadBalancerPolicy,deregisterInstancesFromLoadBalancer,describeAccountLimits,DescribeAccountLimitsOptions,describeInstanceHealth,DescribeInstanceHealthOptions,describeLoadBalancerAttributes,describeLoadBalancerPolicies,DescribeLoadBalancerPoliciesOptions,describeLoadBalancerPolicyTypes,DescribeLoadBalancerPolicyTypesOptions,describeLoadBalancers,DescribeLoadBalancersOptions,describeTags,detachLoadBalancerFromSubnets,disableAvailabilityZonesForLoadBalancer,enableAvailabilityZonesForLoadBalancer,modifyLoadBalancerAttributes,registerInstancesWithLoadBalancer,removeTags,setLoadBalancerListenerSSLCertificate,setLoadBalancerPoliciesForBackendServer,setLoadBalancerPoliciesOfListener

## Responses

* [AddAvailabilityZonesOutput](#AddAvailabilityZonesOutput)
* [AddTagsOutput](#AddTagsOutput)
* [ApplySecurityGroupsToLoadBalancerOutput](#ApplySecurityGroupsToLoadBalancerOutput)
* [AttachLoadBalancerToSubnetsOutput](#AttachLoadBalancerToSubnetsOutput)
* [ConfigureHealthCheckOutput](#ConfigureHealthCheckOutput)
* [CreateAccessPointOutput](#CreateAccessPointOutput)
* [CreateAppCookieStickinessPolicyOutput](#CreateAppCookieStickinessPolicyOutput)
* [CreateLBCookieStickinessPolicyOutput](#CreateLBCookieStickinessPolicyOutput)
* [CreateLoadBalancerListenerOutput](#CreateLoadBalancerListenerOutput)
* [CreateLoadBalancerPolicyOutput](#CreateLoadBalancerPolicyOutput)
* [DeleteAccessPointOutput](#DeleteAccessPointOutput)
* [DeleteLoadBalancerListenerOutput](#DeleteLoadBalancerListenerOutput)
* [DeleteLoadBalancerPolicyOutput](#DeleteLoadBalancerPolicyOutput)
* [DeregisterEndPointsOutput](#DeregisterEndPointsOutput)
* [DescribeAccessPointsOutput](#DescribeAccessPointsOutput)
* [DescribeAccountLimitsOutput](#DescribeAccountLimitsOutput)
* [DescribeEndPointStateOutput](#DescribeEndPointStateOutput)
* [DescribeLoadBalancerAttributesOutput](#DescribeLoadBalancerAttributesOutput)
* [DescribeLoadBalancerPoliciesOutput](#DescribeLoadBalancerPoliciesOutput)
* [DescribeLoadBalancerPolicyTypesOutput](#DescribeLoadBalancerPolicyTypesOutput)
* [DescribeTagsOutput](#DescribeTagsOutput)
* [DetachLoadBalancerFromSubnetsOutput](#DetachLoadBalancerFromSubnetsOutput)
* [ModifyLoadBalancerAttributesOutput](#ModifyLoadBalancerAttributesOutput)
* [RegisterEndPointsOutput](#RegisterEndPointsOutput)
* [RemoveAvailabilityZonesOutput](#RemoveAvailabilityZonesOutput)
* [RemoveTagsOutput](#RemoveTagsOutput)
* [SetLoadBalancerListenerSSLCertificateOutput](#SetLoadBalancerListenerSSLCertificateOutput)
* [SetLoadBalancerPoliciesForBackendServerOutput](#SetLoadBalancerPoliciesForBackendServerOutput)
* [SetLoadBalancerPoliciesOfListenerOutput](#SetLoadBalancerPoliciesOfListenerOutput)


@docs AddAvailabilityZonesOutput,AddTagsOutput,ApplySecurityGroupsToLoadBalancerOutput,AttachLoadBalancerToSubnetsOutput,ConfigureHealthCheckOutput,CreateAccessPointOutput,CreateAppCookieStickinessPolicyOutput,CreateLBCookieStickinessPolicyOutput,CreateLoadBalancerListenerOutput,CreateLoadBalancerPolicyOutput,DeleteAccessPointOutput,DeleteLoadBalancerListenerOutput,DeleteLoadBalancerPolicyOutput,DeregisterEndPointsOutput,DescribeAccessPointsOutput,DescribeAccountLimitsOutput,DescribeEndPointStateOutput,DescribeLoadBalancerAttributesOutput,DescribeLoadBalancerPoliciesOutput,DescribeLoadBalancerPolicyTypesOutput,DescribeTagsOutput,DetachLoadBalancerFromSubnetsOutput,ModifyLoadBalancerAttributesOutput,RegisterEndPointsOutput,RemoveAvailabilityZonesOutput,RemoveTagsOutput,SetLoadBalancerListenerSSLCertificateOutput,SetLoadBalancerPoliciesForBackendServerOutput,SetLoadBalancerPoliciesOfListenerOutput

## Records

* [AccessLog](#AccessLog)
* [AdditionalAttribute](#AdditionalAttribute)
* [AppCookieStickinessPolicy](#AppCookieStickinessPolicy)
* [BackendServerDescription](#BackendServerDescription)
* [ConnectionDraining](#ConnectionDraining)
* [ConnectionSettings](#ConnectionSettings)
* [CrossZoneLoadBalancing](#CrossZoneLoadBalancing)
* [HealthCheck](#HealthCheck)
* [Instance](#Instance)
* [InstanceState](#InstanceState)
* [LBCookieStickinessPolicy](#LBCookieStickinessPolicy)
* [Limit](#Limit)
* [Listener](#Listener)
* [ListenerDescription](#ListenerDescription)
* [LoadBalancerAttributes](#LoadBalancerAttributes)
* [LoadBalancerDescription](#LoadBalancerDescription)
* [Policies](#Policies)
* [PolicyAttribute](#PolicyAttribute)
* [PolicyAttributeDescription](#PolicyAttributeDescription)
* [PolicyAttributeTypeDescription](#PolicyAttributeTypeDescription)
* [PolicyDescription](#PolicyDescription)
* [PolicyTypeDescription](#PolicyTypeDescription)
* [SourceSecurityGroup](#SourceSecurityGroup)
* [Tag](#Tag)
* [TagDescription](#TagDescription)
* [TagKeyOnly](#TagKeyOnly)


@docs AccessLog,AdditionalAttribute,AppCookieStickinessPolicy,BackendServerDescription,ConnectionDraining,ConnectionSettings,CrossZoneLoadBalancing,HealthCheck,Instance,InstanceState,LBCookieStickinessPolicy,Limit,Listener,ListenerDescription,LoadBalancerAttributes,LoadBalancerDescription,Policies,PolicyAttribute,PolicyAttributeDescription,PolicyAttributeTypeDescription,PolicyDescription,PolicyTypeDescription,SourceSecurityGroup,Tag,TagDescription,TagKeyOnly

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
        "elasticloadbalancing"
        "2012-06-01"
        AWS.Core.Service.query
        AWS.Core.Service.signV4
        (AWS.Core.Service.setXmlNamespace "http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/")



-- OPERATIONS

{-| <p>Adds the specified tags to the specified load balancer. Each load balancer can have a maximum of 10 tags.</p> <p>Each tag consists of a key and an optional value. If a tag with the same key is already associated with the load balancer, <code>AddTags</code> updates its value.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html">Tag Your Classic Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerNames` __:__ `(List String)`
* `tags` __:__ `(List Tag)`


-}

addTags :
  
    (List String) ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddTagsOutput)

addTags loadBalancerNames tags =
    
    let
        requestInput = AddTagsInput
            
            loadBalancerNames
            
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





{-| <p>Associates one or more security groups with your load balancer in a virtual private cloud (VPC). The specified security groups override the previously associated security groups.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-groups.html#elb-vpc-security-groups">Security Groups for Load Balancers in a VPC</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `securityGroups` __:__ `(List String)`


-}

applySecurityGroupsToLoadBalancer :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ApplySecurityGroupsToLoadBalancerOutput)

applySecurityGroupsToLoadBalancer loadBalancerName securityGroups =
    
    let
        requestInput = ApplySecurityGroupsToLoadBalancerInput
            
            loadBalancerName
            
            securityGroups
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ApplySecurityGroupsToLoadBalancer")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs applySecurityGroupsToLoadBalancerInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ApplySecurityGroupsToLoadBalancer"
                
                (AWS.Core.Decode.ResultDecoder "ApplySecurityGroupsToLoadBalancerResult" applySecurityGroupsToLoadBalancerOutputDecoder)
                
            )





{-| <p>Adds one or more subnets to the set of configured subnets for the specified load balancer.</p> <p>The load balancer evenly distributes requests across all registered subnets. For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-manage-subnets.html">Add or Remove Subnets for Your Load Balancer in a VPC</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `subnets` __:__ `(List String)`


-}

attachLoadBalancerToSubnets :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AttachLoadBalancerToSubnetsOutput)

attachLoadBalancerToSubnets loadBalancerName subnets =
    
    let
        requestInput = AttachLoadBalancerToSubnetsInput
            
            loadBalancerName
            
            subnets
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "AttachLoadBalancerToSubnets")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs attachLoadBalancerToSubnetsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AttachLoadBalancerToSubnets"
                
                (AWS.Core.Decode.ResultDecoder "AttachLoadBalancerToSubnetsResult" attachLoadBalancerToSubnetsOutputDecoder)
                
            )





{-| <p>Specifies the health check settings to use when evaluating the health state of your EC2 instances.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-healthchecks.html">Configure Health Checks for Your Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `healthCheck` __:__ `HealthCheck`


-}

configureHealthCheck :
  
    String ->
  
    HealthCheck ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConfigureHealthCheckOutput)

configureHealthCheck loadBalancerName healthCheck =
    
    let
        requestInput = ConfigureHealthCheckInput
            
            loadBalancerName
            
            healthCheck
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ConfigureHealthCheck")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs configureHealthCheckInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ConfigureHealthCheck"
                
                (AWS.Core.Decode.ResultDecoder "ConfigureHealthCheckResult" configureHealthCheckOutputDecoder)
                
            )





{-| <p>Generates a stickiness policy with sticky session lifetimes that follow that of an application-generated cookie. This policy can be associated only with HTTP/HTTPS listeners.</p> <p>This policy is similar to the policy created by <a>CreateLBCookieStickinessPolicy</a>, except that the lifetime of the special Elastic Load Balancing cookie, <code>AWSELB</code>, follows the lifetime of the application-generated cookie specified in the policy configuration. The load balancer only inserts a new stickiness cookie when the application response includes a new application cookie.</p> <p>If the application cookie is explicitly removed or expires, the session stops being sticky until a new application cookie is issued.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application">Application-Controlled Session Stickiness</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `policyName` __:__ `String`
* `cookieName` __:__ `String`


-}

createAppCookieStickinessPolicy :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateAppCookieStickinessPolicyOutput)

createAppCookieStickinessPolicy loadBalancerName policyName cookieName =
    
    let
        requestInput = CreateAppCookieStickinessPolicyInput
            
            loadBalancerName
            
            policyName
            
            cookieName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateAppCookieStickinessPolicy")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createAppCookieStickinessPolicyInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateAppCookieStickinessPolicy"
                
                (AWS.Core.Decode.ResultDecoder "CreateAppCookieStickinessPolicyResult" createAppCookieStickinessPolicyOutputDecoder)
                
            )





{-| <p>Generates a stickiness policy with sticky session lifetimes controlled by the lifetime of the browser (user-agent) or a specified expiration period. This policy can be associated only with HTTP/HTTPS listeners.</p> <p>When a load balancer implements this policy, the load balancer uses a special cookie to track the instance for each request. When the load balancer receives a request, it first checks to see if this cookie is present in the request. If so, the load balancer sends the request to the application server specified in the cookie. If not, the load balancer sends the request to a server that is chosen based on the existing load-balancing algorithm.</p> <p>A cookie is inserted into the response for binding subsequent requests from the same user to that server. The validity of the cookie is based on the cookie expiration time, which is specified in the policy configuration.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration">Duration-Based Session Stickiness</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `policyName` __:__ `String`


-}

createLBCookieStickinessPolicy :
  
    String ->
  
    String ->
  
  
    ( CreateLBCookieStickinessPolicyOptions -> CreateLBCookieStickinessPolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateLBCookieStickinessPolicyOutput)

createLBCookieStickinessPolicy loadBalancerName policyName setOptions =
    
    let
        requestInput = CreateLBCookieStickinessPolicyInput
            
            loadBalancerName
            
            policyName
            
            options.cookieExpirationPeriod
            
        
        options = setOptions (CreateLBCookieStickinessPolicyOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateLBCookieStickinessPolicy")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createLBCookieStickinessPolicyInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateLBCookieStickinessPolicy"
                
                (AWS.Core.Decode.ResultDecoder "CreateLBCookieStickinessPolicyResult" createLBCookieStickinessPolicyOutputDecoder)
                
            )



{-| Options for a createLBCookieStickinessPolicy request
-}
type alias CreateLBCookieStickinessPolicyOptions =
    {
    cookieExpirationPeriod : Maybe Int
    }



{-| <p>Creates a Classic Load Balancer.</p> <p>You can add listeners, security groups, subnets, and tags when you create your load balancer, or you can add them later using <a>CreateLoadBalancerListeners</a>, <a>ApplySecurityGroupsToLoadBalancer</a>, <a>AttachLoadBalancerToSubnets</a>, and <a>AddTags</a>.</p> <p>To describe your current load balancers, see <a>DescribeLoadBalancers</a>. When you are finished with a load balancer, you can delete it using <a>DeleteLoadBalancer</a>.</p> <p>You can create up to 20 load balancers per region per account. You can request an increase for the number of load balancers for your account. For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html">Limits for Your Classic Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `listeners` __:__ `(List Listener)`


-}

createLoadBalancer :
  
    String ->
  
    (List Listener) ->
  
  
    ( CreateLoadBalancerOptions -> CreateLoadBalancerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateAccessPointOutput)

createLoadBalancer loadBalancerName listeners setOptions =
    
    let
        requestInput = CreateAccessPointInput
            
            loadBalancerName
            
            listeners
            
            options.availabilityZones
            
            options.subnets
            
            options.securityGroups
            
            options.scheme
            
            options.tags
            
        
        options = setOptions (CreateLoadBalancerOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateLoadBalancer")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createAccessPointInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateLoadBalancer"
                
                (AWS.Core.Decode.ResultDecoder "CreateLoadBalancerResult" createAccessPointOutputDecoder)
                
            )



{-| Options for a createLoadBalancer request
-}
type alias CreateLoadBalancerOptions =
    {
    availabilityZones : Maybe (List String),subnets : Maybe (List String),securityGroups : Maybe (List String),scheme : Maybe String,tags : Maybe (List Tag)
    }



{-| <p>Creates one or more listeners for the specified load balancer. If a listener with the specified port does not already exist, it is created; otherwise, the properties of the new listener must match the properties of the existing listener.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html">Listeners for Your Classic Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `listeners` __:__ `(List Listener)`


-}

createLoadBalancerListeners :
  
    String ->
  
    (List Listener) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateLoadBalancerListenerOutput)

createLoadBalancerListeners loadBalancerName listeners =
    
    let
        requestInput = CreateLoadBalancerListenerInput
            
            loadBalancerName
            
            listeners
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateLoadBalancerListeners")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createLoadBalancerListenerInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateLoadBalancerListeners"
                
                (AWS.Core.Decode.ResultDecoder "CreateLoadBalancerListenersResult" createLoadBalancerListenerOutputDecoder)
                
            )





{-| <p>Creates a policy with the specified attributes for the specified load balancer.</p> <p>Policies are settings that are saved for your load balancer and that can be applied to the listener or the application server, depending on the policy type.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `policyName` __:__ `String`
* `policyTypeName` __:__ `String`


-}

createLoadBalancerPolicy :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateLoadBalancerPolicyOptions -> CreateLoadBalancerPolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateLoadBalancerPolicyOutput)

createLoadBalancerPolicy loadBalancerName policyName policyTypeName setOptions =
    
    let
        requestInput = CreateLoadBalancerPolicyInput
            
            loadBalancerName
            
            policyName
            
            policyTypeName
            
            options.policyAttributes
            
        
        options = setOptions (CreateLoadBalancerPolicyOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateLoadBalancerPolicy")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createLoadBalancerPolicyInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateLoadBalancerPolicy"
                
                (AWS.Core.Decode.ResultDecoder "CreateLoadBalancerPolicyResult" createLoadBalancerPolicyOutputDecoder)
                
            )



{-| Options for a createLoadBalancerPolicy request
-}
type alias CreateLoadBalancerPolicyOptions =
    {
    policyAttributes : Maybe (List PolicyAttribute)
    }



{-| <p>Deletes the specified load balancer.</p> <p>If you are attempting to recreate a load balancer, you must reconfigure all settings. The DNS name associated with a deleted load balancer are no longer usable. The name and associated DNS record of the deleted load balancer no longer exist and traffic sent to any of its IP addresses is no longer delivered to your instances.</p> <p>If the load balancer does not exist or has already been deleted, the call to <code>DeleteLoadBalancer</code> still succeeds.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`


-}

deleteLoadBalancer :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteAccessPointOutput)

deleteLoadBalancer loadBalancerName =
    
    let
        requestInput = DeleteAccessPointInput
            
            loadBalancerName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteLoadBalancer")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteAccessPointInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteLoadBalancer"
                
                (AWS.Core.Decode.ResultDecoder "DeleteLoadBalancerResult" deleteAccessPointOutputDecoder)
                
            )





{-| <p>Deletes the specified listeners from the specified load balancer.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `loadBalancerPorts` __:__ `(List Int)`


-}

deleteLoadBalancerListeners :
  
    String ->
  
    (List Int) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteLoadBalancerListenerOutput)

deleteLoadBalancerListeners loadBalancerName loadBalancerPorts =
    
    let
        requestInput = DeleteLoadBalancerListenerInput
            
            loadBalancerName
            
            loadBalancerPorts
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteLoadBalancerListeners")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteLoadBalancerListenerInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteLoadBalancerListeners"
                
                (AWS.Core.Decode.ResultDecoder "DeleteLoadBalancerListenersResult" deleteLoadBalancerListenerOutputDecoder)
                
            )





{-| <p>Deletes the specified policy from the specified load balancer. This policy must not be enabled for any listeners.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `policyName` __:__ `String`


-}

deleteLoadBalancerPolicy :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteLoadBalancerPolicyOutput)

deleteLoadBalancerPolicy loadBalancerName policyName =
    
    let
        requestInput = DeleteLoadBalancerPolicyInput
            
            loadBalancerName
            
            policyName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteLoadBalancerPolicy")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteLoadBalancerPolicyInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteLoadBalancerPolicy"
                
                (AWS.Core.Decode.ResultDecoder "DeleteLoadBalancerPolicyResult" deleteLoadBalancerPolicyOutputDecoder)
                
            )





{-| <p>Deregisters the specified instances from the specified load balancer. After the instance is deregistered, it no longer receives traffic from the load balancer.</p> <p>You can use <a>DescribeLoadBalancers</a> to verify that the instance is deregistered from the load balancer.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html">Register or De-Register EC2 Instances</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `instances` __:__ `(List Instance)`


-}

deregisterInstancesFromLoadBalancer :
  
    String ->
  
    (List Instance) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeregisterEndPointsOutput)

deregisterInstancesFromLoadBalancer loadBalancerName instances =
    
    let
        requestInput = DeregisterEndPointsInput
            
            loadBalancerName
            
            instances
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeregisterInstancesFromLoadBalancer")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deregisterEndPointsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeregisterInstancesFromLoadBalancer"
                
                (AWS.Core.Decode.ResultDecoder "DeregisterInstancesFromLoadBalancerResult" deregisterEndPointsOutputDecoder)
                
            )





{-| <p>Describes the current Elastic Load Balancing resource limits for your AWS account.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html">Limits for Your Classic Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>

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



{-| <p>Describes the state of the specified instances with respect to the specified load balancer. If no instances are specified, the call describes the state of all instances that are currently registered with the load balancer. If instances are specified, their state is returned even if they are no longer registered with the load balancer. The state of terminated instances is not returned.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`


-}

describeInstanceHealth :
  
    String ->
  
  
    ( DescribeInstanceHealthOptions -> DescribeInstanceHealthOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEndPointStateOutput)

describeInstanceHealth loadBalancerName setOptions =
    
    let
        requestInput = DescribeEndPointStateInput
            
            loadBalancerName
            
            options.instances
            
        
        options = setOptions (DescribeInstanceHealthOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeInstanceHealth")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeEndPointStateInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeInstanceHealth"
                
                (AWS.Core.Decode.ResultDecoder "DescribeInstanceHealthResult" describeEndPointStateOutputDecoder)
                
            )



{-| Options for a describeInstanceHealth request
-}
type alias DescribeInstanceHealthOptions =
    {
    instances : Maybe (List Instance)
    }



{-| <p>Describes the attributes for the specified load balancer.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`


-}

describeLoadBalancerAttributes :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLoadBalancerAttributesOutput)

describeLoadBalancerAttributes loadBalancerName =
    
    let
        requestInput = DescribeLoadBalancerAttributesInput
            
            loadBalancerName
            
        
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





{-| <p>Describes the specified policies.</p> <p>If you specify a load balancer name, the action returns the descriptions of all policies created for the load balancer. If you specify a policy name associated with your load balancer, the action returns the description of that policy. If you don't specify a load balancer name, the action returns descriptions of the specified sample policies, or descriptions of all sample policies. The names of the sample policies have the <code>ELBSample-</code> prefix.</p>

__Required Parameters__



-}

describeLoadBalancerPolicies :
  
  
    ( DescribeLoadBalancerPoliciesOptions -> DescribeLoadBalancerPoliciesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLoadBalancerPoliciesOutput)

describeLoadBalancerPolicies setOptions =
    
    let
        requestInput = DescribeLoadBalancerPoliciesInput
            
            options.loadBalancerName
            
            options.policyNames
            
        
        options = setOptions (DescribeLoadBalancerPoliciesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeLoadBalancerPolicies")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeLoadBalancerPoliciesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeLoadBalancerPolicies"
                
                (AWS.Core.Decode.ResultDecoder "DescribeLoadBalancerPoliciesResult" describeLoadBalancerPoliciesOutputDecoder)
                
            )



{-| Options for a describeLoadBalancerPolicies request
-}
type alias DescribeLoadBalancerPoliciesOptions =
    {
    loadBalancerName : Maybe String,policyNames : Maybe (List String)
    }



{-| <p>Describes the specified load balancer policy types or all load balancer policy types.</p> <p>The description of each type indicates how it can be used. For example, some policies can be used only with layer 7 listeners, some policies can be used only with layer 4 listeners, and some policies can be used only with your EC2 instances.</p> <p>You can use <a>CreateLoadBalancerPolicy</a> to create a policy configuration for any of these policy types. Then, depending on the policy type, use either <a>SetLoadBalancerPoliciesOfListener</a> or <a>SetLoadBalancerPoliciesForBackendServer</a> to set the policy.</p>

__Required Parameters__



-}

describeLoadBalancerPolicyTypes :
  
  
    ( DescribeLoadBalancerPolicyTypesOptions -> DescribeLoadBalancerPolicyTypesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLoadBalancerPolicyTypesOutput)

describeLoadBalancerPolicyTypes setOptions =
    
    let
        requestInput = DescribeLoadBalancerPolicyTypesInput
            
            options.policyTypeNames
            
        
        options = setOptions (DescribeLoadBalancerPolicyTypesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeLoadBalancerPolicyTypes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeLoadBalancerPolicyTypesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeLoadBalancerPolicyTypes"
                
                (AWS.Core.Decode.ResultDecoder "DescribeLoadBalancerPolicyTypesResult" describeLoadBalancerPolicyTypesOutputDecoder)
                
            )



{-| Options for a describeLoadBalancerPolicyTypes request
-}
type alias DescribeLoadBalancerPolicyTypesOptions =
    {
    policyTypeNames : Maybe (List String)
    }



{-| <p>Describes the specified the load balancers. If no load balancers are specified, the call describes all of your load balancers.</p>

__Required Parameters__



-}

describeLoadBalancers :
  
  
    ( DescribeLoadBalancersOptions -> DescribeLoadBalancersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAccessPointsOutput)

describeLoadBalancers setOptions =
    
    let
        requestInput = DescribeAccessPointsInput
            
            options.loadBalancerNames
            
            options.marker
            
            options.pageSize
            
        
        options = setOptions (DescribeLoadBalancersOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeLoadBalancers")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeAccessPointsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeLoadBalancers"
                
                (AWS.Core.Decode.ResultDecoder "DescribeLoadBalancersResult" describeAccessPointsOutputDecoder)
                
            )



{-| Options for a describeLoadBalancers request
-}
type alias DescribeLoadBalancersOptions =
    {
    loadBalancerNames : Maybe (List String),marker : Maybe String,pageSize : Maybe Int
    }



{-| <p>Describes the tags associated with the specified load balancers.</p>

__Required Parameters__

* `loadBalancerNames` __:__ `(List String)`


-}

describeTags :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTagsOutput)

describeTags loadBalancerNames =
    
    let
        requestInput = DescribeTagsInput
            
            loadBalancerNames
            
        
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





{-| <p>Removes the specified subnets from the set of configured subnets for the load balancer.</p> <p>After a subnet is removed, all EC2 instances registered with the load balancer in the removed subnet go into the <code>OutOfService</code> state. Then, the load balancer balances the traffic among the remaining routable subnets.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `subnets` __:__ `(List String)`


-}

detachLoadBalancerFromSubnets :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetachLoadBalancerFromSubnetsOutput)

detachLoadBalancerFromSubnets loadBalancerName subnets =
    
    let
        requestInput = DetachLoadBalancerFromSubnetsInput
            
            loadBalancerName
            
            subnets
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DetachLoadBalancerFromSubnets")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs detachLoadBalancerFromSubnetsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DetachLoadBalancerFromSubnets"
                
                (AWS.Core.Decode.ResultDecoder "DetachLoadBalancerFromSubnetsResult" detachLoadBalancerFromSubnetsOutputDecoder)
                
            )





{-| <p>Removes the specified Availability Zones from the set of Availability Zones for the specified load balancer in EC2-Classic or a default VPC.</p> <p>For load balancers in a non-default VPC, use <a>DetachLoadBalancerFromSubnets</a>.</p> <p>There must be at least one Availability Zone registered with a load balancer at all times. After an Availability Zone is removed, all instances registered with the load balancer that are in the removed Availability Zone go into the <code>OutOfService</code> state. Then, the load balancer attempts to equally balance the traffic among its remaining Availability Zones.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html">Add or Remove Availability Zones</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `availabilityZones` __:__ `(List String)`


-}

disableAvailabilityZonesForLoadBalancer :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveAvailabilityZonesOutput)

disableAvailabilityZonesForLoadBalancer loadBalancerName availabilityZones =
    
    let
        requestInput = RemoveAvailabilityZonesInput
            
            loadBalancerName
            
            availabilityZones
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DisableAvailabilityZonesForLoadBalancer")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs removeAvailabilityZonesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisableAvailabilityZonesForLoadBalancer"
                
                (AWS.Core.Decode.ResultDecoder "DisableAvailabilityZonesForLoadBalancerResult" removeAvailabilityZonesOutputDecoder)
                
            )





{-| <p>Adds the specified Availability Zones to the set of Availability Zones for the specified load balancer in EC2-Classic or a default VPC.</p> <p>For load balancers in a non-default VPC, use <a>AttachLoadBalancerToSubnets</a>.</p> <p>The load balancer evenly distributes requests across all its registered Availability Zones that contain instances. For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html">Add or Remove Availability Zones</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `availabilityZones` __:__ `(List String)`


-}

enableAvailabilityZonesForLoadBalancer :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddAvailabilityZonesOutput)

enableAvailabilityZonesForLoadBalancer loadBalancerName availabilityZones =
    
    let
        requestInput = AddAvailabilityZonesInput
            
            loadBalancerName
            
            availabilityZones
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "EnableAvailabilityZonesForLoadBalancer")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs addAvailabilityZonesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "EnableAvailabilityZonesForLoadBalancer"
                
                (AWS.Core.Decode.ResultDecoder "EnableAvailabilityZonesForLoadBalancerResult" addAvailabilityZonesOutputDecoder)
                
            )





{-| <p>Modifies the attributes of the specified load balancer.</p> <p>You can modify the load balancer attributes, such as <code>AccessLogs</code>, <code>ConnectionDraining</code>, and <code>CrossZoneLoadBalancing</code> by either enabling or disabling them. Or, you can modify the load balancer attribute <code>ConnectionSettings</code> by specifying an idle connection timeout value for your load balancer.</p> <p>For more information, see the following in the <i>Classic Load Balancers Guide</i>:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html">Cross-Zone Load Balancing</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html">Connection Draining</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/access-log-collection.html">Access Logs</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html">Idle Connection Timeout</a> </p> </li> </ul>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `loadBalancerAttributes` __:__ `LoadBalancerAttributes`


-}

modifyLoadBalancerAttributes :
  
    String ->
  
    LoadBalancerAttributes ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyLoadBalancerAttributesOutput)

modifyLoadBalancerAttributes loadBalancerName loadBalancerAttributes =
    
    let
        requestInput = ModifyLoadBalancerAttributesInput
            
            loadBalancerName
            
            loadBalancerAttributes
            
        
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





{-| <p>Adds the specified instances to the specified load balancer.</p> <p>The instance must be a running instance in the same network as the load balancer (EC2-Classic or the same VPC). If you have EC2-Classic instances and a load balancer in a VPC with ClassicLink enabled, you can link the EC2-Classic instances to that VPC and then register the linked EC2-Classic instances with the load balancer in the VPC.</p> <p>Note that <code>RegisterInstanceWithLoadBalancer</code> completes when the request has been registered. Instance registration takes a little time to complete. To check the state of the registered instances, use <a>DescribeLoadBalancers</a> or <a>DescribeInstanceHealth</a>.</p> <p>After the instance is registered, it starts receiving traffic and requests from the load balancer. Any instance that is not in one of the Availability Zones registered for the load balancer is moved to the <code>OutOfService</code> state. If an Availability Zone is added to the load balancer later, any instances registered with the load balancer move to the <code>InService</code> state.</p> <p>To deregister instances from a load balancer, use <a>DeregisterInstancesFromLoadBalancer</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html">Register or De-Register EC2 Instances</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `instances` __:__ `(List Instance)`


-}

registerInstancesWithLoadBalancer :
  
    String ->
  
    (List Instance) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RegisterEndPointsOutput)

registerInstancesWithLoadBalancer loadBalancerName instances =
    
    let
        requestInput = RegisterEndPointsInput
            
            loadBalancerName
            
            instances
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RegisterInstancesWithLoadBalancer")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs registerEndPointsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RegisterInstancesWithLoadBalancer"
                
                (AWS.Core.Decode.ResultDecoder "RegisterInstancesWithLoadBalancerResult" registerEndPointsOutputDecoder)
                
            )





{-| <p>Removes one or more tags from the specified load balancer.</p>

__Required Parameters__

* `loadBalancerNames` __:__ `(List String)`
* `tags` __:__ `(List TagKeyOnly)`


-}

removeTags :
  
    (List String) ->
  
    (List TagKeyOnly) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveTagsOutput)

removeTags loadBalancerNames tags =
    
    let
        requestInput = RemoveTagsInput
            
            loadBalancerNames
            
            tags
            
        
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





{-| <p>Sets the certificate that terminates the specified listener's SSL connections. The specified certificate replaces any prior certificate that was used on the same load balancer and port.</p> <p>For more information about updating your SSL certificate, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-update-ssl-cert.html">Replace the SSL Certificate for Your Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `loadBalancerPort` __:__ `Int`
* `sSLCertificateId` __:__ `String`


-}

setLoadBalancerListenerSSLCertificate :
  
    String ->
  
    Int ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetLoadBalancerListenerSSLCertificateOutput)

setLoadBalancerListenerSSLCertificate loadBalancerName loadBalancerPort sSLCertificateId =
    
    let
        requestInput = SetLoadBalancerListenerSSLCertificateInput
            
            loadBalancerName
            
            loadBalancerPort
            
            sSLCertificateId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SetLoadBalancerListenerSSLCertificate")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs setLoadBalancerListenerSSLCertificateInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetLoadBalancerListenerSSLCertificate"
                
                (AWS.Core.Decode.ResultDecoder "SetLoadBalancerListenerSSLCertificateResult" setLoadBalancerListenerSSLCertificateOutputDecoder)
                
            )





{-| <p>Replaces the set of policies associated with the specified port on which the EC2 instance is listening with a new set of policies. At this time, only the back-end server authentication policy type can be applied to the instance ports; this policy type is composed of multiple public key policies.</p> <p>Each time you use <code>SetLoadBalancerPoliciesForBackendServer</code> to enable the policies, use the <code>PolicyNames</code> parameter to list the policies that you want to enable.</p> <p>You can use <a>DescribeLoadBalancers</a> or <a>DescribeLoadBalancerPolicies</a> to verify that the policy is associated with the EC2 instance.</p> <p>For more information about enabling back-end instance authentication, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-create-https-ssl-load-balancer.html#configure_backendauth_clt">Configure Back-end Instance Authentication</a> in the <i>Classic Load Balancers Guide</i>. For more information about Proxy Protocol, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-proxy-protocol.html">Configure Proxy Protocol Support</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `instancePort` __:__ `Int`
* `policyNames` __:__ `(List String)`


-}

setLoadBalancerPoliciesForBackendServer :
  
    String ->
  
    Int ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetLoadBalancerPoliciesForBackendServerOutput)

setLoadBalancerPoliciesForBackendServer loadBalancerName instancePort policyNames =
    
    let
        requestInput = SetLoadBalancerPoliciesForBackendServerInput
            
            loadBalancerName
            
            instancePort
            
            policyNames
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SetLoadBalancerPoliciesForBackendServer")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs setLoadBalancerPoliciesForBackendServerInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetLoadBalancerPoliciesForBackendServer"
                
                (AWS.Core.Decode.ResultDecoder "SetLoadBalancerPoliciesForBackendServerResult" setLoadBalancerPoliciesForBackendServerOutputDecoder)
                
            )





{-| <p>Replaces the current set of policies for the specified load balancer port with the specified set of policies.</p> <p>To enable back-end server authentication, use <a>SetLoadBalancerPoliciesForBackendServer</a>.</p> <p>For more information about setting policies, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/ssl-config-update.html">Update the SSL Negotiation Configuration</a>, <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration">Duration-Based Session Stickiness</a>, and <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application">Application-Controlled Session Stickiness</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `loadBalancerPort` __:__ `Int`
* `policyNames` __:__ `(List String)`


-}

setLoadBalancerPoliciesOfListener :
  
    String ->
  
    Int ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetLoadBalancerPoliciesOfListenerOutput)

setLoadBalancerPoliciesOfListener loadBalancerName loadBalancerPort policyNames =
    
    let
        requestInput = SetLoadBalancerPoliciesOfListenerInput
            
            loadBalancerName
            
            loadBalancerPort
            
            policyNames
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SetLoadBalancerPoliciesOfListener")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs setLoadBalancerPoliciesOfListenerInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetLoadBalancerPoliciesOfListener"
                
                (AWS.Core.Decode.ResultDecoder "SetLoadBalancerPoliciesOfListenerResult" setLoadBalancerPoliciesOfListenerOutputDecoder)
                
            )






{-| <p>Information about the <code>AccessLog</code> attribute.</p>
-}
type alias AccessLog =
    { enabled : Bool
    , s3BucketName : Maybe String
    , emitInterval : Maybe Int
    , s3BucketPrefix : Maybe String
    }



accessLogDecoder : JD.Decoder AccessLog
accessLogDecoder =
    JD.succeed AccessLog
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BucketName", "s3BucketName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EmitInterval", "emitInterval"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BucketPrefix", "s3BucketPrefix"]
            JD.string
        )
        




accessLogToString : AccessLog -> String -- List (String, String)
accessLogToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "s3BucketName" "" -- val.s3BucketName
        
    --     |> Dict.insert
    --         "emitInterval" "" -- val.emitInterval
        
    --     |> Dict.insert
    --         "s3BucketPrefix" "" -- val.s3BucketPrefix
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from addAvailabilityZon
-}
type alias AddAvailabilityZonesOutput =
    { availabilityZones : Maybe (List String)
    }



addAvailabilityZonesOutputDecoder : JD.Decoder AddAvailabilityZonesOutput
addAvailabilityZonesOutputDecoder =
    JD.succeed AddAvailabilityZonesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZones", "availabilityZones"]
            (JD.list JD.string)
        )
        




addAvailabilityZonesOutputToString : AddAvailabilityZonesOutput -> String -- List (String, String)
addAvailabilityZonesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "availabilityZones" "" -- val.availabilityZones
        
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



{-| <p>This data type is reserved.</p>
-}
type alias AdditionalAttribute =
    { key : Maybe String
    , value : Maybe String
    }



additionalAttributeDecoder : JD.Decoder AdditionalAttribute
additionalAttributeDecoder =
    JD.succeed AdditionalAttribute
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




additionalAttributeToString : AdditionalAttribute -> String -- List (String, String)
additionalAttributeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| <p>Information about a policy for application-controlled session stickiness.</p>
-}
type alias AppCookieStickinessPolicy =
    { policyName : Maybe String
    , cookieName : Maybe String
    }



appCookieStickinessPolicyDecoder : JD.Decoder AppCookieStickinessPolicy
appCookieStickinessPolicyDecoder =
    JD.succeed AppCookieStickinessPolicy
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyName", "policyName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CookieName", "cookieName"]
            JD.string
        )
        




appCookieStickinessPolicyToString : AppCookieStickinessPolicy -> String -- List (String, String)
appCookieStickinessPolicyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policyName" "" -- val.policyName
        
    --     |> Dict.insert
    --         "cookieName" "" -- val.cookieName
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from applySecurityGroupsToLoadBalanc
-}
type alias ApplySecurityGroupsToLoadBalancerOutput =
    { securityGroups : Maybe (List String)
    }



applySecurityGroupsToLoadBalancerOutputDecoder : JD.Decoder ApplySecurityGroupsToLoadBalancerOutput
applySecurityGroupsToLoadBalancerOutputDecoder =
    JD.succeed ApplySecurityGroupsToLoadBalancerOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityGroups", "securityGroups"]
            (JD.list JD.string)
        )
        




applySecurityGroupsToLoadBalancerOutputToString : ApplySecurityGroupsToLoadBalancerOutput -> String -- List (String, String)
applySecurityGroupsToLoadBalancerOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "securityGroups" "" -- val.securityGroups
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from attachLoadBalancerToSubne
-}
type alias AttachLoadBalancerToSubnetsOutput =
    { subnets : Maybe (List String)
    }



attachLoadBalancerToSubnetsOutputDecoder : JD.Decoder AttachLoadBalancerToSubnetsOutput
attachLoadBalancerToSubnetsOutputDecoder =
    JD.succeed AttachLoadBalancerToSubnetsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Subnets", "subnets"]
            (JD.list JD.string)
        )
        




attachLoadBalancerToSubnetsOutputToString : AttachLoadBalancerToSubnetsOutput -> String -- List (String, String)
attachLoadBalancerToSubnetsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subnets" "" -- val.subnets
        
    --     |> Dict.toList
    ""



{-| <p>Information about the configuration of an EC2 instance.</p>
-}
type alias BackendServerDescription =
    { instancePort : Maybe Int
    , policyNames : Maybe (List String)
    }



backendServerDescriptionDecoder : JD.Decoder BackendServerDescription
backendServerDescriptionDecoder =
    JD.succeed BackendServerDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstancePort", "instancePort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyNames", "policyNames"]
            (JD.list JD.string)
        )
        




backendServerDescriptionToString : BackendServerDescription -> String -- List (String, String)
backendServerDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instancePort" "" -- val.instancePort
        
    --     |> Dict.insert
    --         "policyNames" "" -- val.policyNames
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from configureHealthChe
-}
type alias ConfigureHealthCheckOutput =
    { healthCheck : Maybe HealthCheck
    }



configureHealthCheckOutputDecoder : JD.Decoder ConfigureHealthCheckOutput
configureHealthCheckOutputDecoder =
    JD.succeed ConfigureHealthCheckOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HealthCheck", "healthCheck"]
            healthCheckDecoder
        )
        




configureHealthCheckOutputToString : ConfigureHealthCheckOutput -> String -- List (String, String)
configureHealthCheckOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "healthCheck" "" -- val.healthCheck
        
    --     |> Dict.toList
    ""



{-| <p>Information about the <code>ConnectionDraining</code> attribute.</p>
-}
type alias ConnectionDraining =
    { enabled : Bool
    , timeout : Maybe Int
    }



connectionDrainingDecoder : JD.Decoder ConnectionDraining
connectionDrainingDecoder =
    JD.succeed ConnectionDraining
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timeout", "timeout"]
            JD.int
        )
        




connectionDrainingToString : ConnectionDraining -> String -- List (String, String)
connectionDrainingToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "timeout" "" -- val.timeout
        
    --     |> Dict.toList
    ""



{-| <p>Information about the <code>ConnectionSettings</code> attribute.</p>
-}
type alias ConnectionSettings =
    { idleTimeout : Int
    }



connectionSettingsDecoder : JD.Decoder ConnectionSettings
connectionSettingsDecoder =
    JD.succeed ConnectionSettings
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IdleTimeout", "idleTimeout"]
            JD.int
        )
        




connectionSettingsToString : ConnectionSettings -> String -- List (String, String)
connectionSettingsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "idleTimeout" "" -- val.idleTimeout
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createAccessPoi
-}
type alias CreateAccessPointOutput =
    { dNSName : Maybe String
    }



createAccessPointOutputDecoder : JD.Decoder CreateAccessPointOutput
createAccessPointOutputDecoder =
    JD.succeed CreateAccessPointOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DNSName", "dNSName"]
            JD.string
        )
        




createAccessPointOutputToString : CreateAccessPointOutput -> String -- List (String, String)
createAccessPointOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dNSName" "" -- val.dNSName
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createAppCookieStickinessPoli
-}
type alias CreateAppCookieStickinessPolicyOutput =
    { 
    }



createAppCookieStickinessPolicyOutputDecoder : JD.Decoder CreateAppCookieStickinessPolicyOutput
createAppCookieStickinessPolicyOutputDecoder =
    JD.succeed CreateAppCookieStickinessPolicyOutput
        




createAppCookieStickinessPolicyOutputToString : CreateAppCookieStickinessPolicyOutput -> String -- List (String, String)
createAppCookieStickinessPolicyOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createLBCookieStickinessPoli
-}
type alias CreateLBCookieStickinessPolicyOutput =
    { 
    }



createLBCookieStickinessPolicyOutputDecoder : JD.Decoder CreateLBCookieStickinessPolicyOutput
createLBCookieStickinessPolicyOutputDecoder =
    JD.succeed CreateLBCookieStickinessPolicyOutput
        




createLBCookieStickinessPolicyOutputToString : CreateLBCookieStickinessPolicyOutput -> String -- List (String, String)
createLBCookieStickinessPolicyOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createLoadBalancerListen
-}
type alias CreateLoadBalancerListenerOutput =
    { 
    }



createLoadBalancerListenerOutputDecoder : JD.Decoder CreateLoadBalancerListenerOutput
createLoadBalancerListenerOutputDecoder =
    JD.succeed CreateLoadBalancerListenerOutput
        




createLoadBalancerListenerOutputToString : CreateLoadBalancerListenerOutput -> String -- List (String, String)
createLoadBalancerListenerOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createLoadBalancerPoli
-}
type alias CreateLoadBalancerPolicyOutput =
    { 
    }



createLoadBalancerPolicyOutputDecoder : JD.Decoder CreateLoadBalancerPolicyOutput
createLoadBalancerPolicyOutputDecoder =
    JD.succeed CreateLoadBalancerPolicyOutput
        




createLoadBalancerPolicyOutputToString : CreateLoadBalancerPolicyOutput -> String -- List (String, String)
createLoadBalancerPolicyOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Information about the <code>CrossZoneLoadBalancing</code> attribute.</p>
-}
type alias CrossZoneLoadBalancing =
    { enabled : Bool
    }



crossZoneLoadBalancingDecoder : JD.Decoder CrossZoneLoadBalancing
crossZoneLoadBalancingDecoder =
    JD.succeed CrossZoneLoadBalancing
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Enabled", "enabled"]
            JD.bool
        )
        




crossZoneLoadBalancingToString : CrossZoneLoadBalancing -> String -- List (String, String)
crossZoneLoadBalancingToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteAccessPoi
-}
type alias DeleteAccessPointOutput =
    { 
    }



deleteAccessPointOutputDecoder : JD.Decoder DeleteAccessPointOutput
deleteAccessPointOutputDecoder =
    JD.succeed DeleteAccessPointOutput
        




deleteAccessPointOutputToString : DeleteAccessPointOutput -> String -- List (String, String)
deleteAccessPointOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteLoadBalancerListen
-}
type alias DeleteLoadBalancerListenerOutput =
    { 
    }



deleteLoadBalancerListenerOutputDecoder : JD.Decoder DeleteLoadBalancerListenerOutput
deleteLoadBalancerListenerOutputDecoder =
    JD.succeed DeleteLoadBalancerListenerOutput
        




deleteLoadBalancerListenerOutputToString : DeleteLoadBalancerListenerOutput -> String -- List (String, String)
deleteLoadBalancerListenerOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteLoadBalancerPoli
-}
type alias DeleteLoadBalancerPolicyOutput =
    { 
    }



deleteLoadBalancerPolicyOutputDecoder : JD.Decoder DeleteLoadBalancerPolicyOutput
deleteLoadBalancerPolicyOutputDecoder =
    JD.succeed DeleteLoadBalancerPolicyOutput
        




deleteLoadBalancerPolicyOutputToString : DeleteLoadBalancerPolicyOutput -> String -- List (String, String)
deleteLoadBalancerPolicyOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deregisterEndPoin
-}
type alias DeregisterEndPointsOutput =
    { instances : Maybe (List Instance)
    }



deregisterEndPointsOutputDecoder : JD.Decoder DeregisterEndPointsOutput
deregisterEndPointsOutputDecoder =
    JD.succeed DeregisterEndPointsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Instances", "instances"]
            (JD.list instanceDecoder)
        )
        




deregisterEndPointsOutputToString : DeregisterEndPointsOutput -> String -- List (String, String)
deregisterEndPointsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instances" "" -- val.instances
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAccessPoin
-}
type alias DescribeAccessPointsOutput =
    { loadBalancerDescriptions : Maybe (List LoadBalancerDescription)
    , nextMarker : Maybe String
    }



describeAccessPointsOutputDecoder : JD.Decoder DescribeAccessPointsOutput
describeAccessPointsOutputDecoder =
    JD.succeed DescribeAccessPointsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancerDescriptions", "loadBalancerDescriptions"]
            (JD.list loadBalancerDescriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        




describeAccessPointsOutputToString : DescribeAccessPointsOutput -> String -- List (String, String)
describeAccessPointsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loadBalancerDescriptions" "" -- val.loadBalancerDescriptions
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
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



{-| Type of HTTP response from describeEndPointSta
-}
type alias DescribeEndPointStateOutput =
    { instanceStates : Maybe (List InstanceState)
    }



describeEndPointStateOutputDecoder : JD.Decoder DescribeEndPointStateOutput
describeEndPointStateOutputDecoder =
    JD.succeed DescribeEndPointStateOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceStates", "instanceStates"]
            (JD.list instanceStateDecoder)
        )
        




describeEndPointStateOutputToString : DescribeEndPointStateOutput -> String -- List (String, String)
describeEndPointStateOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceStates" "" -- val.instanceStates
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeLoadBalancerAttribut
-}
type alias DescribeLoadBalancerAttributesOutput =
    { loadBalancerAttributes : Maybe LoadBalancerAttributes
    }



describeLoadBalancerAttributesOutputDecoder : JD.Decoder DescribeLoadBalancerAttributesOutput
describeLoadBalancerAttributesOutputDecoder =
    JD.succeed DescribeLoadBalancerAttributesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancerAttributes", "loadBalancerAttributes"]
            loadBalancerAttributesDecoder
        )
        




describeLoadBalancerAttributesOutputToString : DescribeLoadBalancerAttributesOutput -> String -- List (String, String)
describeLoadBalancerAttributesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loadBalancerAttributes" "" -- val.loadBalancerAttributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeLoadBalancerPolici
-}
type alias DescribeLoadBalancerPoliciesOutput =
    { policyDescriptions : Maybe (List PolicyDescription)
    }



describeLoadBalancerPoliciesOutputDecoder : JD.Decoder DescribeLoadBalancerPoliciesOutput
describeLoadBalancerPoliciesOutputDecoder =
    JD.succeed DescribeLoadBalancerPoliciesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyDescriptions", "policyDescriptions"]
            (JD.list policyDescriptionDecoder)
        )
        




describeLoadBalancerPoliciesOutputToString : DescribeLoadBalancerPoliciesOutput -> String -- List (String, String)
describeLoadBalancerPoliciesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policyDescriptions" "" -- val.policyDescriptions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeLoadBalancerPolicyTyp
-}
type alias DescribeLoadBalancerPolicyTypesOutput =
    { policyTypeDescriptions : Maybe (List PolicyTypeDescription)
    }



describeLoadBalancerPolicyTypesOutputDecoder : JD.Decoder DescribeLoadBalancerPolicyTypesOutput
describeLoadBalancerPolicyTypesOutputDecoder =
    JD.succeed DescribeLoadBalancerPolicyTypesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyTypeDescriptions", "policyTypeDescriptions"]
            (JD.list policyTypeDescriptionDecoder)
        )
        




describeLoadBalancerPolicyTypesOutputToString : DescribeLoadBalancerPolicyTypesOutput -> String -- List (String, String)
describeLoadBalancerPolicyTypesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policyTypeDescriptions" "" -- val.policyTypeDescriptions
        
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



{-| Type of HTTP response from detachLoadBalancerFromSubne
-}
type alias DetachLoadBalancerFromSubnetsOutput =
    { subnets : Maybe (List String)
    }



detachLoadBalancerFromSubnetsOutputDecoder : JD.Decoder DetachLoadBalancerFromSubnetsOutput
detachLoadBalancerFromSubnetsOutputDecoder =
    JD.succeed DetachLoadBalancerFromSubnetsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Subnets", "subnets"]
            (JD.list JD.string)
        )
        




detachLoadBalancerFromSubnetsOutputToString : DetachLoadBalancerFromSubnetsOutput -> String -- List (String, String)
detachLoadBalancerFromSubnetsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subnets" "" -- val.subnets
        
    --     |> Dict.toList
    ""



{-| <p>Information about a health check.</p>
-}
type alias HealthCheck =
    { target : String
    , interval : Int
    , timeout : Int
    , unhealthyThreshold : Int
    , healthyThreshold : Int
    }



healthCheckDecoder : JD.Decoder HealthCheck
healthCheckDecoder =
    JD.succeed HealthCheck
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Target", "target"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Interval", "interval"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Timeout", "timeout"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UnhealthyThreshold", "unhealthyThreshold"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HealthyThreshold", "healthyThreshold"]
            JD.int
        )
        




healthCheckToString : HealthCheck -> String -- List (String, String)
healthCheckToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "target" "" -- val.target
        
    --     |> Dict.insert
    --         "interval" "" -- val.interval
        
    --     |> Dict.insert
    --         "timeout" "" -- val.timeout
        
    --     |> Dict.insert
    --         "unhealthyThreshold" "" -- val.unhealthyThreshold
        
    --     |> Dict.insert
    --         "healthyThreshold" "" -- val.healthyThreshold
        
    --     |> Dict.toList
    ""



{-| <p>The ID of an EC2 instance.</p>
-}
type alias Instance =
    { instanceId : Maybe String
    }



instanceDecoder : JD.Decoder Instance
instanceDecoder =
    JD.succeed Instance
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        




instanceToString : Instance -> String -- List (String, String)
instanceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.toList
    ""



{-| <p>Information about the state of an EC2 instance.</p>
-}
type alias InstanceState =
    { instanceId : Maybe String
    , state : Maybe String
    , reasonCode : Maybe String
    , description : Maybe String
    }



instanceStateDecoder : JD.Decoder InstanceState
instanceStateDecoder =
    JD.succeed InstanceState
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReasonCode", "reasonCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        




instanceStateToString : InstanceState -> String -- List (String, String)
instanceStateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "reasonCode" "" -- val.reasonCode
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.toList
    ""



{-| <p>Information about a policy for duration-based session stickiness.</p>
-}
type alias LBCookieStickinessPolicy =
    { policyName : Maybe String
    , cookieExpirationPeriod : Maybe Int
    }



lBCookieStickinessPolicyDecoder : JD.Decoder LBCookieStickinessPolicy
lBCookieStickinessPolicyDecoder =
    JD.succeed LBCookieStickinessPolicy
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyName", "policyName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CookieExpirationPeriod", "cookieExpirationPeriod"]
            JD.int
        )
        




lBCookieStickinessPolicyToString : LBCookieStickinessPolicy -> String -- List (String, String)
lBCookieStickinessPolicyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policyName" "" -- val.policyName
        
    --     |> Dict.insert
    --         "cookieExpirationPeriod" "" -- val.cookieExpirationPeriod
        
    --     |> Dict.toList
    ""



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



{-| <p>Information about a listener.</p> <p>For information about the protocols and the ports supported by Elastic Load Balancing, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html">Listeners for Your Classic Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>
-}
type alias Listener =
    { protocol : String
    , loadBalancerPort : Int
    , instanceProtocol : Maybe String
    , instancePort : Int
    , sSLCertificateId : Maybe String
    }



listenerDecoder : JD.Decoder Listener
listenerDecoder =
    JD.succeed Listener
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Protocol", "protocol"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["LoadBalancerPort", "loadBalancerPort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceProtocol", "instanceProtocol"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["InstancePort", "instancePort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SSLCertificateId", "sSLCertificateId"]
            JD.string
        )
        




listenerToString : Listener -> String -- List (String, String)
listenerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "protocol" "" -- val.protocol
        
    --     |> Dict.insert
    --         "loadBalancerPort" "" -- val.loadBalancerPort
        
    --     |> Dict.insert
    --         "instanceProtocol" "" -- val.instanceProtocol
        
    --     |> Dict.insert
    --         "instancePort" "" -- val.instancePort
        
    --     |> Dict.insert
    --         "sSLCertificateId" "" -- val.sSLCertificateId
        
    --     |> Dict.toList
    ""



{-| <p>The policies enabled for a listener.</p>
-}
type alias ListenerDescription =
    { listener : Maybe Listener
    , policyNames : Maybe (List String)
    }



listenerDescriptionDecoder : JD.Decoder ListenerDescription
listenerDescriptionDecoder =
    JD.succeed ListenerDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Listener", "listener"]
            listenerDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyNames", "policyNames"]
            (JD.list JD.string)
        )
        




listenerDescriptionToString : ListenerDescription -> String -- List (String, String)
listenerDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "listener" "" -- val.listener
        
    --     |> Dict.insert
    --         "policyNames" "" -- val.policyNames
        
    --     |> Dict.toList
    ""



{-| <p>The attributes for a load balancer.</p>
-}
type alias LoadBalancerAttributes =
    { crossZoneLoadBalancing : Maybe CrossZoneLoadBalancing
    , accessLog : Maybe AccessLog
    , connectionDraining : Maybe ConnectionDraining
    , connectionSettings : Maybe ConnectionSettings
    , additionalAttributes : Maybe (List AdditionalAttribute)
    }



loadBalancerAttributesDecoder : JD.Decoder LoadBalancerAttributes
loadBalancerAttributesDecoder =
    JD.succeed LoadBalancerAttributes
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CrossZoneLoadBalancing", "crossZoneLoadBalancing"]
            crossZoneLoadBalancingDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AccessLog", "accessLog"]
            accessLogDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConnectionDraining", "connectionDraining"]
            connectionDrainingDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConnectionSettings", "connectionSettings"]
            connectionSettingsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AdditionalAttributes", "additionalAttributes"]
            (JD.list additionalAttributeDecoder)
        )
        




loadBalancerAttributesToString : LoadBalancerAttributes -> String -- List (String, String)
loadBalancerAttributesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "crossZoneLoadBalancing" "" -- val.crossZoneLoadBalancing
        
    --     |> Dict.insert
    --         "accessLog" "" -- val.accessLog
        
    --     |> Dict.insert
    --         "connectionDraining" "" -- val.connectionDraining
        
    --     |> Dict.insert
    --         "connectionSettings" "" -- val.connectionSettings
        
    --     |> Dict.insert
    --         "additionalAttributes" "" -- val.additionalAttributes
        
    --     |> Dict.toList
    ""



{-| <p>Information about a load balancer.</p>
-}
type alias LoadBalancerDescription =
    { loadBalancerName : Maybe String
    , dNSName : Maybe String
    , canonicalHostedZoneName : Maybe String
    , canonicalHostedZoneNameID : Maybe String
    , listenerDescriptions : Maybe (List ListenerDescription)
    , policies : Maybe Policies
    , backendServerDescriptions : Maybe (List BackendServerDescription)
    , availabilityZones : Maybe (List String)
    , subnets : Maybe (List String)
    , vPCId : Maybe String
    , instances : Maybe (List Instance)
    , healthCheck : Maybe HealthCheck
    , sourceSecurityGroup : Maybe SourceSecurityGroup
    , securityGroups : Maybe (List String)
    , createdTime : Maybe Posix
    , scheme : Maybe String
    }



loadBalancerDescriptionDecoder : JD.Decoder LoadBalancerDescription
loadBalancerDescriptionDecoder =
    JD.succeed LoadBalancerDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancerName", "loadBalancerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DNSName", "dNSName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CanonicalHostedZoneName", "canonicalHostedZoneName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CanonicalHostedZoneNameID", "canonicalHostedZoneNameID"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ListenerDescriptions", "listenerDescriptions"]
            (JD.list listenerDescriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Policies", "policies"]
            policiesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BackendServerDescriptions", "backendServerDescriptions"]
            (JD.list backendServerDescriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZones", "availabilityZones"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Subnets", "subnets"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VPCId", "vPCId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Instances", "instances"]
            (JD.list instanceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HealthCheck", "healthCheck"]
            healthCheckDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceSecurityGroup", "sourceSecurityGroup"]
            sourceSecurityGroupDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityGroups", "securityGroups"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Scheme", "scheme"]
            JD.string
        )
        




loadBalancerDescriptionToString : LoadBalancerDescription -> String -- List (String, String)
loadBalancerDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loadBalancerName" "" -- val.loadBalancerName
        
    --     |> Dict.insert
    --         "dNSName" "" -- val.dNSName
        
    --     |> Dict.insert
    --         "canonicalHostedZoneName" "" -- val.canonicalHostedZoneName
        
    --     |> Dict.insert
    --         "canonicalHostedZoneNameID" "" -- val.canonicalHostedZoneNameID
        
    --     |> Dict.insert
    --         "listenerDescriptions" "" -- val.listenerDescriptions
        
    --     |> Dict.insert
    --         "policies" "" -- val.policies
        
    --     |> Dict.insert
    --         "backendServerDescriptions" "" -- val.backendServerDescriptions
        
    --     |> Dict.insert
    --         "availabilityZones" "" -- val.availabilityZones
        
    --     |> Dict.insert
    --         "subnets" "" -- val.subnets
        
    --     |> Dict.insert
    --         "vPCId" "" -- val.vPCId
        
    --     |> Dict.insert
    --         "instances" "" -- val.instances
        
    --     |> Dict.insert
    --         "healthCheck" "" -- val.healthCheck
        
    --     |> Dict.insert
    --         "sourceSecurityGroup" "" -- val.sourceSecurityGroup
        
    --     |> Dict.insert
    --         "securityGroups" "" -- val.securityGroups
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "scheme" "" -- val.scheme
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyLoadBalancerAttribut
-}
type alias ModifyLoadBalancerAttributesOutput =
    { loadBalancerName : Maybe String
    , loadBalancerAttributes : Maybe LoadBalancerAttributes
    }



modifyLoadBalancerAttributesOutputDecoder : JD.Decoder ModifyLoadBalancerAttributesOutput
modifyLoadBalancerAttributesOutputDecoder =
    JD.succeed ModifyLoadBalancerAttributesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancerName", "loadBalancerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancerAttributes", "loadBalancerAttributes"]
            loadBalancerAttributesDecoder
        )
        




modifyLoadBalancerAttributesOutputToString : ModifyLoadBalancerAttributesOutput -> String -- List (String, String)
modifyLoadBalancerAttributesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loadBalancerName" "" -- val.loadBalancerName
        
    --     |> Dict.insert
    --         "loadBalancerAttributes" "" -- val.loadBalancerAttributes
        
    --     |> Dict.toList
    ""



{-| <p>The policies for a load balancer.</p>
-}
type alias Policies =
    { appCookieStickinessPolicies : Maybe (List AppCookieStickinessPolicy)
    , lBCookieStickinessPolicies : Maybe (List LBCookieStickinessPolicy)
    , otherPolicies : Maybe (List String)
    }



policiesDecoder : JD.Decoder Policies
policiesDecoder =
    JD.succeed Policies
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AppCookieStickinessPolicies", "appCookieStickinessPolicies"]
            (JD.list appCookieStickinessPolicyDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LBCookieStickinessPolicies", "lBCookieStickinessPolicies"]
            (JD.list lBCookieStickinessPolicyDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OtherPolicies", "otherPolicies"]
            (JD.list JD.string)
        )
        




policiesToString : Policies -> String -- List (String, String)
policiesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "appCookieStickinessPolicies" "" -- val.appCookieStickinessPolicies
        
    --     |> Dict.insert
    --         "lBCookieStickinessPolicies" "" -- val.lBCookieStickinessPolicies
        
    --     |> Dict.insert
    --         "otherPolicies" "" -- val.otherPolicies
        
    --     |> Dict.toList
    ""



{-| <p>Information about a policy attribute.</p>
-}
type alias PolicyAttribute =
    { attributeName : Maybe String
    , attributeValue : Maybe String
    }



policyAttributeDecoder : JD.Decoder PolicyAttribute
policyAttributeDecoder =
    JD.succeed PolicyAttribute
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AttributeName", "attributeName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AttributeValue", "attributeValue"]
            JD.string
        )
        




policyAttributeToString : PolicyAttribute -> String -- List (String, String)
policyAttributeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributeName" "" -- val.attributeName
        
    --     |> Dict.insert
    --         "attributeValue" "" -- val.attributeValue
        
    --     |> Dict.toList
    ""



{-| <p>Information about a policy attribute.</p>
-}
type alias PolicyAttributeDescription =
    { attributeName : Maybe String
    , attributeValue : Maybe String
    }



policyAttributeDescriptionDecoder : JD.Decoder PolicyAttributeDescription
policyAttributeDescriptionDecoder =
    JD.succeed PolicyAttributeDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AttributeName", "attributeName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AttributeValue", "attributeValue"]
            JD.string
        )
        




policyAttributeDescriptionToString : PolicyAttributeDescription -> String -- List (String, String)
policyAttributeDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributeName" "" -- val.attributeName
        
    --     |> Dict.insert
    --         "attributeValue" "" -- val.attributeValue
        
    --     |> Dict.toList
    ""



{-| <p>Information about a policy attribute type.</p>
-}
type alias PolicyAttributeTypeDescription =
    { attributeName : Maybe String
    , attributeType : Maybe String
    , description : Maybe String
    , defaultValue : Maybe String
    , cardinality : Maybe String
    }



policyAttributeTypeDescriptionDecoder : JD.Decoder PolicyAttributeTypeDescription
policyAttributeTypeDescriptionDecoder =
    JD.succeed PolicyAttributeTypeDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AttributeName", "attributeName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AttributeType", "attributeType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Cardinality", "cardinality"]
            JD.string
        )
        




policyAttributeTypeDescriptionToString : PolicyAttributeTypeDescription -> String -- List (String, String)
policyAttributeTypeDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributeName" "" -- val.attributeName
        
    --     |> Dict.insert
    --         "attributeType" "" -- val.attributeType
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "cardinality" "" -- val.cardinality
        
    --     |> Dict.toList
    ""



{-| <p>Information about a policy.</p>
-}
type alias PolicyDescription =
    { policyName : Maybe String
    , policyTypeName : Maybe String
    , policyAttributeDescriptions : Maybe (List PolicyAttributeDescription)
    }



policyDescriptionDecoder : JD.Decoder PolicyDescription
policyDescriptionDecoder =
    JD.succeed PolicyDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyName", "policyName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyTypeName", "policyTypeName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyAttributeDescriptions", "policyAttributeDescriptions"]
            (JD.list policyAttributeDescriptionDecoder)
        )
        




policyDescriptionToString : PolicyDescription -> String -- List (String, String)
policyDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policyName" "" -- val.policyName
        
    --     |> Dict.insert
    --         "policyTypeName" "" -- val.policyTypeName
        
    --     |> Dict.insert
    --         "policyAttributeDescriptions" "" -- val.policyAttributeDescriptions
        
    --     |> Dict.toList
    ""



{-| <p>Information about a policy type.</p>
-}
type alias PolicyTypeDescription =
    { policyTypeName : Maybe String
    , description : Maybe String
    , policyAttributeTypeDescriptions : Maybe (List PolicyAttributeTypeDescription)
    }



policyTypeDescriptionDecoder : JD.Decoder PolicyTypeDescription
policyTypeDescriptionDecoder =
    JD.succeed PolicyTypeDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyTypeName", "policyTypeName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyAttributeTypeDescriptions", "policyAttributeTypeDescriptions"]
            (JD.list policyAttributeTypeDescriptionDecoder)
        )
        




policyTypeDescriptionToString : PolicyTypeDescription -> String -- List (String, String)
policyTypeDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policyTypeName" "" -- val.policyTypeName
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "policyAttributeTypeDescriptions" "" -- val.policyAttributeTypeDescriptions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from registerEndPoin
-}
type alias RegisterEndPointsOutput =
    { instances : Maybe (List Instance)
    }



registerEndPointsOutputDecoder : JD.Decoder RegisterEndPointsOutput
registerEndPointsOutputDecoder =
    JD.succeed RegisterEndPointsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Instances", "instances"]
            (JD.list instanceDecoder)
        )
        




registerEndPointsOutputToString : RegisterEndPointsOutput -> String -- List (String, String)
registerEndPointsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instances" "" -- val.instances
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from removeAvailabilityZon
-}
type alias RemoveAvailabilityZonesOutput =
    { availabilityZones : Maybe (List String)
    }



removeAvailabilityZonesOutputDecoder : JD.Decoder RemoveAvailabilityZonesOutput
removeAvailabilityZonesOutputDecoder =
    JD.succeed RemoveAvailabilityZonesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZones", "availabilityZones"]
            (JD.list JD.string)
        )
        




removeAvailabilityZonesOutputToString : RemoveAvailabilityZonesOutput -> String -- List (String, String)
removeAvailabilityZonesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "availabilityZones" "" -- val.availabilityZones
        
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



{-| Type of HTTP response from setLoadBalancerListenerSSLCertifica
-}
type alias SetLoadBalancerListenerSSLCertificateOutput =
    { 
    }



setLoadBalancerListenerSSLCertificateOutputDecoder : JD.Decoder SetLoadBalancerListenerSSLCertificateOutput
setLoadBalancerListenerSSLCertificateOutputDecoder =
    JD.succeed SetLoadBalancerListenerSSLCertificateOutput
        




setLoadBalancerListenerSSLCertificateOutputToString : SetLoadBalancerListenerSSLCertificateOutput -> String -- List (String, String)
setLoadBalancerListenerSSLCertificateOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from setLoadBalancerPoliciesForBackendServ
-}
type alias SetLoadBalancerPoliciesForBackendServerOutput =
    { 
    }



setLoadBalancerPoliciesForBackendServerOutputDecoder : JD.Decoder SetLoadBalancerPoliciesForBackendServerOutput
setLoadBalancerPoliciesForBackendServerOutputDecoder =
    JD.succeed SetLoadBalancerPoliciesForBackendServerOutput
        




setLoadBalancerPoliciesForBackendServerOutputToString : SetLoadBalancerPoliciesForBackendServerOutput -> String -- List (String, String)
setLoadBalancerPoliciesForBackendServerOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from setLoadBalancerPoliciesOfListen
-}
type alias SetLoadBalancerPoliciesOfListenerOutput =
    { 
    }



setLoadBalancerPoliciesOfListenerOutputDecoder : JD.Decoder SetLoadBalancerPoliciesOfListenerOutput
setLoadBalancerPoliciesOfListenerOutputDecoder =
    JD.succeed SetLoadBalancerPoliciesOfListenerOutput
        




setLoadBalancerPoliciesOfListenerOutputToString : SetLoadBalancerPoliciesOfListenerOutput -> String -- List (String, String)
setLoadBalancerPoliciesOfListenerOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Information about a source security group.</p>
-}
type alias SourceSecurityGroup =
    { ownerAlias : Maybe String
    , groupName : Maybe String
    }



sourceSecurityGroupDecoder : JD.Decoder SourceSecurityGroup
sourceSecurityGroupDecoder =
    JD.succeed SourceSecurityGroup
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OwnerAlias", "ownerAlias"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GroupName", "groupName"]
            JD.string
        )
        




sourceSecurityGroupToString : SourceSecurityGroup -> String -- List (String, String)
sourceSecurityGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ownerAlias" "" -- val.ownerAlias
        
    --     |> Dict.insert
    --         "groupName" "" -- val.groupName
        
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



{-| <p>The tags associated with a load balancer.</p>
-}
type alias TagDescription =
    { loadBalancerName : Maybe String
    , tags : Maybe (List Tag)
    }



tagDescriptionDecoder : JD.Decoder TagDescription
tagDescriptionDecoder =
    JD.succeed TagDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoadBalancerName", "loadBalancerName"]
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
    --         "loadBalancerName" "" -- val.loadBalancerName
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>The key of a tag.</p>
-}
type alias TagKeyOnly =
    { key : Maybe String
    }



tagKeyOnlyDecoder : JD.Decoder TagKeyOnly
tagKeyOnlyDecoder =
    JD.succeed TagKeyOnly
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        




tagKeyOnlyToString : TagKeyOnly -> String -- List (String, String)
tagKeyOnlyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.toList
    ""






{-| <p>Contains the parameters for EnableAvailabilityZonesForLoadBalancer.</p>
-}
type alias AddAvailabilityZonesInput =
    { loadBalancerName : String
    , availabilityZones : (List String)
    }


{-| <p>Contains the parameters for AddTags.</p>
-}
type alias AddTagsInput =
    { loadBalancerNames : (List String)
    , tags : (List Tag)
    }


{-| <p>Contains the parameters for ApplySecurityGroupsToLoadBalancer.</p>
-}
type alias ApplySecurityGroupsToLoadBalancerInput =
    { loadBalancerName : String
    , securityGroups : (List String)
    }


{-| <p>Contains the parameters for AttachLoaBalancerToSubnets.</p>
-}
type alias AttachLoadBalancerToSubnetsInput =
    { loadBalancerName : String
    , subnets : (List String)
    }


{-| <p>Contains the parameters for ConfigureHealthCheck.</p>
-}
type alias ConfigureHealthCheckInput =
    { loadBalancerName : String
    , healthCheck : HealthCheck
    }


{-| <p>Contains the parameters for CreateLoadBalancer.</p>
-}
type alias CreateAccessPointInput =
    { loadBalancerName : String
    , listeners : (List Listener)
    , availabilityZones : Maybe (List String)
    , subnets : Maybe (List String)
    , securityGroups : Maybe (List String)
    , scheme : Maybe String
    , tags : Maybe (List Tag)
    }


{-| <p>Contains the parameters for CreateAppCookieStickinessPolicy.</p>
-}
type alias CreateAppCookieStickinessPolicyInput =
    { loadBalancerName : String
    , policyName : String
    , cookieName : String
    }


{-| <p>Contains the parameters for CreateLBCookieStickinessPolicy.</p>
-}
type alias CreateLBCookieStickinessPolicyInput =
    { loadBalancerName : String
    , policyName : String
    , cookieExpirationPeriod : Maybe Int
    }


{-| <p>Contains the parameters for CreateLoadBalancerListeners.</p>
-}
type alias CreateLoadBalancerListenerInput =
    { loadBalancerName : String
    , listeners : (List Listener)
    }


{-| <p>Contains the parameters for CreateLoadBalancerPolicy.</p>
-}
type alias CreateLoadBalancerPolicyInput =
    { loadBalancerName : String
    , policyName : String
    , policyTypeName : String
    , policyAttributes : Maybe (List PolicyAttribute)
    }


{-| <p>Contains the parameters for DeleteLoadBalancer.</p>
-}
type alias DeleteAccessPointInput =
    { loadBalancerName : String
    }


{-| <p>Contains the parameters for DeleteLoadBalancerListeners.</p>
-}
type alias DeleteLoadBalancerListenerInput =
    { loadBalancerName : String
    , loadBalancerPorts : (List Int)
    }


{-| <p>Contains the parameters for DeleteLoadBalancerPolicy.</p>
-}
type alias DeleteLoadBalancerPolicyInput =
    { loadBalancerName : String
    , policyName : String
    }


{-| <p>Contains the parameters for DeregisterInstancesFromLoadBalancer.</p>
-}
type alias DeregisterEndPointsInput =
    { loadBalancerName : String
    , instances : (List Instance)
    }


{-| <p>Contains the parameters for DescribeLoadBalancers.</p>
-}
type alias DescribeAccessPointsInput =
    { loadBalancerNames : Maybe (List String)
    , marker : Maybe String
    , pageSize : Maybe Int
    }


{-| undefined
-}
type alias DescribeAccountLimitsInput =
    { marker : Maybe String
    , pageSize : Maybe Int
    }


{-| <p>Contains the parameters for DescribeInstanceHealth.</p>
-}
type alias DescribeEndPointStateInput =
    { loadBalancerName : String
    , instances : Maybe (List Instance)
    }


{-| <p>Contains the parameters for DescribeLoadBalancerAttributes.</p>
-}
type alias DescribeLoadBalancerAttributesInput =
    { loadBalancerName : String
    }


{-| <p>Contains the parameters for DescribeLoadBalancerPolicies.</p>
-}
type alias DescribeLoadBalancerPoliciesInput =
    { loadBalancerName : Maybe String
    , policyNames : Maybe (List String)
    }


{-| <p>Contains the parameters for DescribeLoadBalancerPolicyTypes.</p>
-}
type alias DescribeLoadBalancerPolicyTypesInput =
    { policyTypeNames : Maybe (List String)
    }


{-| <p>Contains the parameters for DescribeTags.</p>
-}
type alias DescribeTagsInput =
    { loadBalancerNames : (List String)
    }


{-| <p>Contains the parameters for DetachLoadBalancerFromSubnets.</p>
-}
type alias DetachLoadBalancerFromSubnetsInput =
    { loadBalancerName : String
    , subnets : (List String)
    }


{-| <p>Contains the parameters for ModifyLoadBalancerAttributes.</p>
-}
type alias ModifyLoadBalancerAttributesInput =
    { loadBalancerName : String
    , loadBalancerAttributes : LoadBalancerAttributes
    }


{-| <p>Contains the parameters for RegisterInstancesWithLoadBalancer.</p>
-}
type alias RegisterEndPointsInput =
    { loadBalancerName : String
    , instances : (List Instance)
    }


{-| <p>Contains the parameters for DisableAvailabilityZonesForLoadBalancer.</p>
-}
type alias RemoveAvailabilityZonesInput =
    { loadBalancerName : String
    , availabilityZones : (List String)
    }


{-| <p>Contains the parameters for RemoveTags.</p>
-}
type alias RemoveTagsInput =
    { loadBalancerNames : (List String)
    , tags : (List TagKeyOnly)
    }


{-| <p>Contains the parameters for SetLoadBalancerListenerSSLCertificate.</p>
-}
type alias SetLoadBalancerListenerSSLCertificateInput =
    { loadBalancerName : String
    , loadBalancerPort : Int
    , sSLCertificateId : String
    }


{-| <p>Contains the parameters for SetLoadBalancerPoliciesForBackendServer.</p>
-}
type alias SetLoadBalancerPoliciesForBackendServerInput =
    { loadBalancerName : String
    , instancePort : Int
    , policyNames : (List String)
    }


{-| <p>Contains the parameters for SetLoadBalancePoliciesOfListener.</p>
-}
type alias SetLoadBalancerPoliciesOfListenerInput =
    { loadBalancerName : String
    , loadBalancerPort : Int
    , policyNames : (List String)
    }








accessLogEncoder : AccessLog -> List (String, String)
accessLogEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" data.enabled
        
        
        
        |> (case data.s3BucketName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "S3BucketName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.emitInterval of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "EmitInterval" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.s3BucketPrefix of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "S3BucketPrefix" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






addAvailabilityZonesInputEncoder : AddAvailabilityZonesInput -> List (String, String)
addAvailabilityZonesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AvailabilityZones" data.availabilityZones
        
        






addAvailabilityZonesOutputEncoder : AddAvailabilityZonesOutput -> List (String, String)
addAvailabilityZonesOutputEncoder data =
    []
        
        
        |> (case data.availabilityZones of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AvailabilityZones" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






addTagsInputEncoder : AddTagsInput -> List (String, String)
addTagsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LoadBalancerNames" data.loadBalancerNames
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" data.tags
        
        






addTagsOutputEncoder : AddTagsOutput -> List (String, String)
addTagsOutputEncoder data =
    []
        






additionalAttributeEncoder : AdditionalAttribute -> List (String, String)
additionalAttributeEncoder data =
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
        
        






appCookieStickinessPolicyEncoder : AppCookieStickinessPolicy -> List (String, String)
appCookieStickinessPolicyEncoder data =
    []
        
        
        |> (case data.policyName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PolicyName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.cookieName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CookieName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






applySecurityGroupsToLoadBalancerInputEncoder : ApplySecurityGroupsToLoadBalancerInput -> List (String, String)
applySecurityGroupsToLoadBalancerInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SecurityGroups" data.securityGroups
        
        






applySecurityGroupsToLoadBalancerOutputEncoder : ApplySecurityGroupsToLoadBalancerOutput -> List (String, String)
applySecurityGroupsToLoadBalancerOutputEncoder data =
    []
        
        
        |> (case data.securityGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SecurityGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






attachLoadBalancerToSubnetsInputEncoder : AttachLoadBalancerToSubnetsInput -> List (String, String)
attachLoadBalancerToSubnetsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Subnets" data.subnets
        
        






attachLoadBalancerToSubnetsOutputEncoder : AttachLoadBalancerToSubnetsOutput -> List (String, String)
attachLoadBalancerToSubnetsOutputEncoder data =
    []
        
        
        |> (case data.subnets of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Subnets" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






backendServerDescriptionEncoder : BackendServerDescription -> List (String, String)
backendServerDescriptionEncoder data =
    []
        
        
        |> (case data.instancePort of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "InstancePort" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.policyNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PolicyNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






configureHealthCheckInputEncoder : ConfigureHealthCheckInput -> List (String, String)
configureHealthCheckInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs healthCheckEncoder "HealthCheck" data.healthCheck
        
        






configureHealthCheckOutputEncoder : ConfigureHealthCheckOutput -> List (String, String)
configureHealthCheckOutputEncoder data =
    []
        
        
        |> (case data.healthCheck of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs healthCheckEncoder "HealthCheck" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






connectionDrainingEncoder : ConnectionDraining -> List (String, String)
connectionDrainingEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" data.enabled
        
        
        
        |> (case data.timeout of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Timeout" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






connectionSettingsEncoder : ConnectionSettings -> List (String, String)
connectionSettingsEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "IdleTimeout" data.idleTimeout
        
        






createAccessPointInputEncoder : CreateAccessPointInput -> List (String, String)
createAccessPointInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs listenerEncoder "") "Listeners" data.listeners
        
        
        
        |> (case data.availabilityZones of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AvailabilityZones" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.subnets of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Subnets" value
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
                AWS.Core.Encode.addOneToQueryArgs identity "Scheme" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createAccessPointOutputEncoder : CreateAccessPointOutput -> List (String, String)
createAccessPointOutputEncoder data =
    []
        
        
        |> (case data.dNSName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DNSName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createAppCookieStickinessPolicyInputEncoder : CreateAppCookieStickinessPolicyInput -> List (String, String)
createAppCookieStickinessPolicyInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "PolicyName" data.policyName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "CookieName" data.cookieName
        
        






createAppCookieStickinessPolicyOutputEncoder : CreateAppCookieStickinessPolicyOutput -> List (String, String)
createAppCookieStickinessPolicyOutputEncoder data =
    []
        






createLBCookieStickinessPolicyInputEncoder : CreateLBCookieStickinessPolicyInput -> List (String, String)
createLBCookieStickinessPolicyInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "PolicyName" data.policyName
        
        
        
        |> (case data.cookieExpirationPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "CookieExpirationPeriod" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createLBCookieStickinessPolicyOutputEncoder : CreateLBCookieStickinessPolicyOutput -> List (String, String)
createLBCookieStickinessPolicyOutputEncoder data =
    []
        






createLoadBalancerListenerInputEncoder : CreateLoadBalancerListenerInput -> List (String, String)
createLoadBalancerListenerInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs listenerEncoder "") "Listeners" data.listeners
        
        






createLoadBalancerListenerOutputEncoder : CreateLoadBalancerListenerOutput -> List (String, String)
createLoadBalancerListenerOutputEncoder data =
    []
        






createLoadBalancerPolicyInputEncoder : CreateLoadBalancerPolicyInput -> List (String, String)
createLoadBalancerPolicyInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "PolicyName" data.policyName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "PolicyTypeName" data.policyTypeName
        
        
        
        |> (case data.policyAttributes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyAttributeEncoder "") "PolicyAttributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createLoadBalancerPolicyOutputEncoder : CreateLoadBalancerPolicyOutput -> List (String, String)
createLoadBalancerPolicyOutputEncoder data =
    []
        






crossZoneLoadBalancingEncoder : CrossZoneLoadBalancing -> List (String, String)
crossZoneLoadBalancingEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Enabled" data.enabled
        
        






deleteAccessPointInputEncoder : DeleteAccessPointInput -> List (String, String)
deleteAccessPointInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        






deleteAccessPointOutputEncoder : DeleteAccessPointOutput -> List (String, String)
deleteAccessPointOutputEncoder data =
    []
        






deleteLoadBalancerListenerInputEncoder : DeleteLoadBalancerListenerInput -> List (String, String)
deleteLoadBalancerListenerInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs String.fromInt "") "LoadBalancerPorts" data.loadBalancerPorts
        
        






deleteLoadBalancerListenerOutputEncoder : DeleteLoadBalancerListenerOutput -> List (String, String)
deleteLoadBalancerListenerOutputEncoder data =
    []
        






deleteLoadBalancerPolicyInputEncoder : DeleteLoadBalancerPolicyInput -> List (String, String)
deleteLoadBalancerPolicyInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "PolicyName" data.policyName
        
        






deleteLoadBalancerPolicyOutputEncoder : DeleteLoadBalancerPolicyOutput -> List (String, String)
deleteLoadBalancerPolicyOutputEncoder data =
    []
        






deregisterEndPointsInputEncoder : DeregisterEndPointsInput -> List (String, String)
deregisterEndPointsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs instanceEncoder "") "Instances" data.instances
        
        






deregisterEndPointsOutputEncoder : DeregisterEndPointsOutput -> List (String, String)
deregisterEndPointsOutputEncoder data =
    []
        
        
        |> (case data.instances of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs instanceEncoder "") "Instances" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeAccessPointsInputEncoder : DescribeAccessPointsInput -> List (String, String)
describeAccessPointsInputEncoder data =
    []
        
        
        |> (case data.loadBalancerNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LoadBalancerNames" value
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
        
        






describeAccessPointsOutputEncoder : DescribeAccessPointsOutput -> List (String, String)
describeAccessPointsOutputEncoder data =
    []
        
        
        |> (case data.loadBalancerDescriptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs loadBalancerDescriptionEncoder "") "LoadBalancerDescriptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextMarker of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextMarker" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






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
        
        






describeEndPointStateInputEncoder : DescribeEndPointStateInput -> List (String, String)
describeEndPointStateInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> (case data.instances of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs instanceEncoder "") "Instances" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeEndPointStateOutputEncoder : DescribeEndPointStateOutput -> List (String, String)
describeEndPointStateOutputEncoder data =
    []
        
        
        |> (case data.instanceStates of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs instanceStateEncoder "") "InstanceStates" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeLoadBalancerAttributesInputEncoder : DescribeLoadBalancerAttributesInput -> List (String, String)
describeLoadBalancerAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        






describeLoadBalancerAttributesOutputEncoder : DescribeLoadBalancerAttributesOutput -> List (String, String)
describeLoadBalancerAttributesOutputEncoder data =
    []
        
        
        |> (case data.loadBalancerAttributes of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs loadBalancerAttributesEncoder "LoadBalancerAttributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeLoadBalancerPoliciesInputEncoder : DescribeLoadBalancerPoliciesInput -> List (String, String)
describeLoadBalancerPoliciesInputEncoder data =
    []
        
        
        |> (case data.loadBalancerName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.policyNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PolicyNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeLoadBalancerPoliciesOutputEncoder : DescribeLoadBalancerPoliciesOutput -> List (String, String)
describeLoadBalancerPoliciesOutputEncoder data =
    []
        
        
        |> (case data.policyDescriptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyDescriptionEncoder "") "PolicyDescriptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeLoadBalancerPolicyTypesInputEncoder : DescribeLoadBalancerPolicyTypesInput -> List (String, String)
describeLoadBalancerPolicyTypesInputEncoder data =
    []
        
        
        |> (case data.policyTypeNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PolicyTypeNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeLoadBalancerPolicyTypesOutputEncoder : DescribeLoadBalancerPolicyTypesOutput -> List (String, String)
describeLoadBalancerPolicyTypesOutputEncoder data =
    []
        
        
        |> (case data.policyTypeDescriptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyTypeDescriptionEncoder "") "PolicyTypeDescriptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeTagsInputEncoder : DescribeTagsInput -> List (String, String)
describeTagsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LoadBalancerNames" data.loadBalancerNames
        
        






describeTagsOutputEncoder : DescribeTagsOutput -> List (String, String)
describeTagsOutputEncoder data =
    []
        
        
        |> (case data.tagDescriptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagDescriptionEncoder "") "TagDescriptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






detachLoadBalancerFromSubnetsInputEncoder : DetachLoadBalancerFromSubnetsInput -> List (String, String)
detachLoadBalancerFromSubnetsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Subnets" data.subnets
        
        






detachLoadBalancerFromSubnetsOutputEncoder : DetachLoadBalancerFromSubnetsOutput -> List (String, String)
detachLoadBalancerFromSubnetsOutputEncoder data =
    []
        
        
        |> (case data.subnets of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Subnets" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






healthCheckEncoder : HealthCheck -> List (String, String)
healthCheckEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Target" data.target
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "Interval" data.interval
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "Timeout" data.timeout
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "UnhealthyThreshold" data.unhealthyThreshold
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "HealthyThreshold" data.healthyThreshold
        
        






instanceEncoder : Instance -> List (String, String)
instanceEncoder data =
    []
        
        
        |> (case data.instanceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "InstanceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






instanceStateEncoder : InstanceState -> List (String, String)
instanceStateEncoder data =
    []
        
        
        |> (case data.instanceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "InstanceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.state of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "State" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.reasonCode of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReasonCode" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






lBCookieStickinessPolicyEncoder : LBCookieStickinessPolicy -> List (String, String)
lBCookieStickinessPolicyEncoder data =
    []
        
        
        |> (case data.policyName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PolicyName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.cookieExpirationPeriod of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "CookieExpirationPeriod" value
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
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Protocol" data.protocol
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "LoadBalancerPort" data.loadBalancerPort
        
        
        
        |> (case data.instanceProtocol of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "InstanceProtocol" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "InstancePort" data.instancePort
        
        
        
        |> (case data.sSLCertificateId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SSLCertificateId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listenerDescriptionEncoder : ListenerDescription -> List (String, String)
listenerDescriptionEncoder data =
    []
        
        
        |> (case data.listener of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs listenerEncoder "Listener" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.policyNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PolicyNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






loadBalancerAttributesEncoder : LoadBalancerAttributes -> List (String, String)
loadBalancerAttributesEncoder data =
    []
        
        
        |> (case data.crossZoneLoadBalancing of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs crossZoneLoadBalancingEncoder "CrossZoneLoadBalancing" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.accessLog of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs accessLogEncoder "AccessLog" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.connectionDraining of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs connectionDrainingEncoder "ConnectionDraining" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.connectionSettings of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs connectionSettingsEncoder "ConnectionSettings" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.additionalAttributes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs additionalAttributeEncoder "") "AdditionalAttributes" value
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
        
        
        
        |> (case data.dNSName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DNSName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.canonicalHostedZoneName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CanonicalHostedZoneName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.canonicalHostedZoneNameID of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CanonicalHostedZoneNameID" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.listenerDescriptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs listenerDescriptionEncoder "") "ListenerDescriptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.policies of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs policiesEncoder "Policies" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.backendServerDescriptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs backendServerDescriptionEncoder "") "BackendServerDescriptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.availabilityZones of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AvailabilityZones" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.subnets of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Subnets" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.vPCId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "VPCId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.instances of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs instanceEncoder "") "Instances" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.healthCheck of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs healthCheckEncoder "HealthCheck" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceSecurityGroup of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs sourceSecurityGroupEncoder "SourceSecurityGroup" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.securityGroups of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SecurityGroups" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.createdTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreatedTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.scheme of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Scheme" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






modifyLoadBalancerAttributesInputEncoder : ModifyLoadBalancerAttributesInput -> List (String, String)
modifyLoadBalancerAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs loadBalancerAttributesEncoder "LoadBalancerAttributes" data.loadBalancerAttributes
        
        






modifyLoadBalancerAttributesOutputEncoder : ModifyLoadBalancerAttributesOutput -> List (String, String)
modifyLoadBalancerAttributesOutputEncoder data =
    []
        
        
        |> (case data.loadBalancerName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.loadBalancerAttributes of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs loadBalancerAttributesEncoder "LoadBalancerAttributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






policiesEncoder : Policies -> List (String, String)
policiesEncoder data =
    []
        
        
        |> (case data.appCookieStickinessPolicies of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs appCookieStickinessPolicyEncoder "") "AppCookieStickinessPolicies" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.lBCookieStickinessPolicies of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs lBCookieStickinessPolicyEncoder "") "LBCookieStickinessPolicies" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.otherPolicies of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "OtherPolicies" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






policyAttributeEncoder : PolicyAttribute -> List (String, String)
policyAttributeEncoder data =
    []
        
        
        |> (case data.attributeName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AttributeName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.attributeValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AttributeValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






policyAttributeDescriptionEncoder : PolicyAttributeDescription -> List (String, String)
policyAttributeDescriptionEncoder data =
    []
        
        
        |> (case data.attributeName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AttributeName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.attributeValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AttributeValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






policyAttributeTypeDescriptionEncoder : PolicyAttributeTypeDescription -> List (String, String)
policyAttributeTypeDescriptionEncoder data =
    []
        
        
        |> (case data.attributeName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AttributeName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.attributeType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AttributeType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.cardinality of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Cardinality" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






policyDescriptionEncoder : PolicyDescription -> List (String, String)
policyDescriptionEncoder data =
    []
        
        
        |> (case data.policyName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PolicyName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.policyTypeName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PolicyTypeName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.policyAttributeDescriptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyAttributeDescriptionEncoder "") "PolicyAttributeDescriptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






policyTypeDescriptionEncoder : PolicyTypeDescription -> List (String, String)
policyTypeDescriptionEncoder data =
    []
        
        
        |> (case data.policyTypeName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PolicyTypeName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.policyAttributeTypeDescriptions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyAttributeTypeDescriptionEncoder "") "PolicyAttributeTypeDescriptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






registerEndPointsInputEncoder : RegisterEndPointsInput -> List (String, String)
registerEndPointsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs instanceEncoder "") "Instances" data.instances
        
        






registerEndPointsOutputEncoder : RegisterEndPointsOutput -> List (String, String)
registerEndPointsOutputEncoder data =
    []
        
        
        |> (case data.instances of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs instanceEncoder "") "Instances" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






removeAvailabilityZonesInputEncoder : RemoveAvailabilityZonesInput -> List (String, String)
removeAvailabilityZonesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AvailabilityZones" data.availabilityZones
        
        






removeAvailabilityZonesOutputEncoder : RemoveAvailabilityZonesOutput -> List (String, String)
removeAvailabilityZonesOutputEncoder data =
    []
        
        
        |> (case data.availabilityZones of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AvailabilityZones" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






removeTagsInputEncoder : RemoveTagsInput -> List (String, String)
removeTagsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LoadBalancerNames" data.loadBalancerNames
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagKeyOnlyEncoder "") "Tags" data.tags
        
        






removeTagsOutputEncoder : RemoveTagsOutput -> List (String, String)
removeTagsOutputEncoder data =
    []
        






setLoadBalancerListenerSSLCertificateInputEncoder : SetLoadBalancerListenerSSLCertificateInput -> List (String, String)
setLoadBalancerListenerSSLCertificateInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "LoadBalancerPort" data.loadBalancerPort
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SSLCertificateId" data.sSLCertificateId
        
        






setLoadBalancerListenerSSLCertificateOutputEncoder : SetLoadBalancerListenerSSLCertificateOutput -> List (String, String)
setLoadBalancerListenerSSLCertificateOutputEncoder data =
    []
        






setLoadBalancerPoliciesForBackendServerInputEncoder : SetLoadBalancerPoliciesForBackendServerInput -> List (String, String)
setLoadBalancerPoliciesForBackendServerInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "InstancePort" data.instancePort
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PolicyNames" data.policyNames
        
        






setLoadBalancerPoliciesForBackendServerOutputEncoder : SetLoadBalancerPoliciesForBackendServerOutput -> List (String, String)
setLoadBalancerPoliciesForBackendServerOutputEncoder data =
    []
        






setLoadBalancerPoliciesOfListenerInputEncoder : SetLoadBalancerPoliciesOfListenerInput -> List (String, String)
setLoadBalancerPoliciesOfListenerInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" data.loadBalancerName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "LoadBalancerPort" data.loadBalancerPort
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "PolicyNames" data.policyNames
        
        






setLoadBalancerPoliciesOfListenerOutputEncoder : SetLoadBalancerPoliciesOfListenerOutput -> List (String, String)
setLoadBalancerPoliciesOfListenerOutputEncoder data =
    []
        






sourceSecurityGroupEncoder : SourceSecurityGroup -> List (String, String)
sourceSecurityGroupEncoder data =
    []
        
        
        |> (case data.ownerAlias of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OwnerAlias" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.groupName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "GroupName" value
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
        
        
        |> (case data.loadBalancerName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LoadBalancerName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






tagKeyOnlyEncoder : TagKeyOnly -> List (String, String)
tagKeyOnlyEncoder data =
    []
        
        
        |> (case data.key of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Key" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        



