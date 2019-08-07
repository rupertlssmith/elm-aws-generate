module AWS.Inspector
    exposing
        ( service
        , addAttributesToFindings
        , createAssessmentTarget
        , CreateAssessmentTargetOptions
        , createAssessmentTemplate
        , CreateAssessmentTemplateOptions
        , createExclusionsPreview
        , createResourceGroup
        , deleteAssessmentRun
        , deleteAssessmentTarget
        , deleteAssessmentTemplate
        , describeAssessmentRuns
        , describeAssessmentTargets
        , describeAssessmentTemplates
        , describeCrossAccountAccessRole
        , describeExclusions
        , DescribeExclusionsOptions
        , describeFindings
        , DescribeFindingsOptions
        , describeResourceGroups
        , describeRulesPackages
        , DescribeRulesPackagesOptions
        , getAssessmentReport
        , getExclusionsPreview
        , GetExclusionsPreviewOptions
        , getTelemetryMetadata
        , listAssessmentRunAgents
        , ListAssessmentRunAgentsOptions
        , listAssessmentRuns
        , ListAssessmentRunsOptions
        , listAssessmentTargets
        , ListAssessmentTargetsOptions
        , listAssessmentTemplates
        , ListAssessmentTemplatesOptions
        , listEventSubscriptions
        , ListEventSubscriptionsOptions
        , listExclusions
        , ListExclusionsOptions
        , listFindings
        , ListFindingsOptions
        , listRulesPackages
        , ListRulesPackagesOptions
        , listTagsForResource
        , previewAgents
        , PreviewAgentsOptions
        , registerCrossAccountAccessRole
        , removeAttributesFromFindings
        , setTagsForResource
        , SetTagsForResourceOptions
        , startAssessmentRun
        , StartAssessmentRunOptions
        , stopAssessmentRun
        , StopAssessmentRunOptions
        , subscribeToEvent
        , unsubscribeFromEvent
        , updateAssessmentTarget
        , UpdateAssessmentTargetOptions
        , AddAttributesToFindingsResponse
        , AgentFilter
        , AgentHealth(..)
        , AgentHealthCode(..)
        , AgentPreview
        , AssessmentRun
        , AssessmentRunAgent
        , AssessmentRunFilter
        , AssessmentRunNotification
        , AssessmentRunNotificationSnsStatusCode(..)
        , AssessmentRunState(..)
        , AssessmentRunStateChange
        , AssessmentTarget
        , AssessmentTargetFilter
        , AssessmentTemplate
        , AssessmentTemplateFilter
        , AssetAttributes
        , AssetType(..)
        , Attribute
        , CreateAssessmentTargetResponse
        , CreateAssessmentTemplateResponse
        , CreateExclusionsPreviewResponse
        , CreateResourceGroupResponse
        , DescribeAssessmentRunsResponse
        , DescribeAssessmentTargetsResponse
        , DescribeAssessmentTemplatesResponse
        , DescribeCrossAccountAccessRoleResponse
        , DescribeExclusionsResponse
        , DescribeFindingsResponse
        , DescribeResourceGroupsResponse
        , DescribeRulesPackagesResponse
        , DurationRange
        , EventSubscription
        , Exclusion
        , ExclusionPreview
        , FailedItemDetails
        , FailedItemErrorCode(..)
        , Finding
        , FindingFilter
        , GetAssessmentReportResponse
        , GetExclusionsPreviewResponse
        , GetTelemetryMetadataResponse
        , InspectorEvent(..)
        , InspectorServiceAttributes
        , ListAssessmentRunAgentsResponse
        , ListAssessmentRunsResponse
        , ListAssessmentTargetsResponse
        , ListAssessmentTemplatesResponse
        , ListEventSubscriptionsResponse
        , ListExclusionsResponse
        , ListFindingsResponse
        , ListRulesPackagesResponse
        , ListTagsForResourceResponse
        , Locale(..)
        , NetworkInterface
        , PreviewAgentsResponse
        , PreviewStatus(..)
        , PrivateIp
        , RemoveAttributesFromFindingsResponse
        , ReportFileFormat(..)
        , ReportStatus(..)
        , ReportType(..)
        , ResourceGroup
        , ResourceGroupTag
        , RulesPackage
        , Scope
        , ScopeType(..)
        , SecurityGroup
        , Severity(..)
        , StartAssessmentRunResponse
        , StopAction(..)
        , Subscription
        , Tag
        , TelemetryMetadata
        , TimestampRange
        )

{-| <fullname>Amazon Inspector</fullname> <p>Amazon Inspector enables you to analyze the behavior of your AWS resources and to identify potential security issues. For more information, see <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html"> Amazon Inspector User Guide</a>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [addAttributesToFindings](#addAttributesToFindings)
* [createAssessmentTarget](#createAssessmentTarget)
* [CreateAssessmentTargetOptions](#CreateAssessmentTargetOptions)
* [createAssessmentTemplate](#createAssessmentTemplate)
* [CreateAssessmentTemplateOptions](#CreateAssessmentTemplateOptions)
* [createExclusionsPreview](#createExclusionsPreview)
* [createResourceGroup](#createResourceGroup)
* [deleteAssessmentRun](#deleteAssessmentRun)
* [deleteAssessmentTarget](#deleteAssessmentTarget)
* [deleteAssessmentTemplate](#deleteAssessmentTemplate)
* [describeAssessmentRuns](#describeAssessmentRuns)
* [describeAssessmentTargets](#describeAssessmentTargets)
* [describeAssessmentTemplates](#describeAssessmentTemplates)
* [describeCrossAccountAccessRole](#describeCrossAccountAccessRole)
* [describeExclusions](#describeExclusions)
* [DescribeExclusionsOptions](#DescribeExclusionsOptions)
* [describeFindings](#describeFindings)
* [DescribeFindingsOptions](#DescribeFindingsOptions)
* [describeResourceGroups](#describeResourceGroups)
* [describeRulesPackages](#describeRulesPackages)
* [DescribeRulesPackagesOptions](#DescribeRulesPackagesOptions)
* [getAssessmentReport](#getAssessmentReport)
* [getExclusionsPreview](#getExclusionsPreview)
* [GetExclusionsPreviewOptions](#GetExclusionsPreviewOptions)
* [getTelemetryMetadata](#getTelemetryMetadata)
* [listAssessmentRunAgents](#listAssessmentRunAgents)
* [ListAssessmentRunAgentsOptions](#ListAssessmentRunAgentsOptions)
* [listAssessmentRuns](#listAssessmentRuns)
* [ListAssessmentRunsOptions](#ListAssessmentRunsOptions)
* [listAssessmentTargets](#listAssessmentTargets)
* [ListAssessmentTargetsOptions](#ListAssessmentTargetsOptions)
* [listAssessmentTemplates](#listAssessmentTemplates)
* [ListAssessmentTemplatesOptions](#ListAssessmentTemplatesOptions)
* [listEventSubscriptions](#listEventSubscriptions)
* [ListEventSubscriptionsOptions](#ListEventSubscriptionsOptions)
* [listExclusions](#listExclusions)
* [ListExclusionsOptions](#ListExclusionsOptions)
* [listFindings](#listFindings)
* [ListFindingsOptions](#ListFindingsOptions)
* [listRulesPackages](#listRulesPackages)
* [ListRulesPackagesOptions](#ListRulesPackagesOptions)
* [listTagsForResource](#listTagsForResource)
* [previewAgents](#previewAgents)
* [PreviewAgentsOptions](#PreviewAgentsOptions)
* [registerCrossAccountAccessRole](#registerCrossAccountAccessRole)
* [removeAttributesFromFindings](#removeAttributesFromFindings)
* [setTagsForResource](#setTagsForResource)
* [SetTagsForResourceOptions](#SetTagsForResourceOptions)
* [startAssessmentRun](#startAssessmentRun)
* [StartAssessmentRunOptions](#StartAssessmentRunOptions)
* [stopAssessmentRun](#stopAssessmentRun)
* [StopAssessmentRunOptions](#StopAssessmentRunOptions)
* [subscribeToEvent](#subscribeToEvent)
* [unsubscribeFromEvent](#unsubscribeFromEvent)
* [updateAssessmentTarget](#updateAssessmentTarget)
* [UpdateAssessmentTargetOptions](#UpdateAssessmentTargetOptions)


@docs addAttributesToFindings,createAssessmentTarget,CreateAssessmentTargetOptions,createAssessmentTemplate,CreateAssessmentTemplateOptions,createExclusionsPreview,createResourceGroup,deleteAssessmentRun,deleteAssessmentTarget,deleteAssessmentTemplate,describeAssessmentRuns,describeAssessmentTargets,describeAssessmentTemplates,describeCrossAccountAccessRole,describeExclusions,DescribeExclusionsOptions,describeFindings,DescribeFindingsOptions,describeResourceGroups,describeRulesPackages,DescribeRulesPackagesOptions,getAssessmentReport,getExclusionsPreview,GetExclusionsPreviewOptions,getTelemetryMetadata,listAssessmentRunAgents,ListAssessmentRunAgentsOptions,listAssessmentRuns,ListAssessmentRunsOptions,listAssessmentTargets,ListAssessmentTargetsOptions,listAssessmentTemplates,ListAssessmentTemplatesOptions,listEventSubscriptions,ListEventSubscriptionsOptions,listExclusions,ListExclusionsOptions,listFindings,ListFindingsOptions,listRulesPackages,ListRulesPackagesOptions,listTagsForResource,previewAgents,PreviewAgentsOptions,registerCrossAccountAccessRole,removeAttributesFromFindings,setTagsForResource,SetTagsForResourceOptions,startAssessmentRun,StartAssessmentRunOptions,stopAssessmentRun,StopAssessmentRunOptions,subscribeToEvent,unsubscribeFromEvent,updateAssessmentTarget,UpdateAssessmentTargetOptions

## Responses

* [AddAttributesToFindingsResponse](#AddAttributesToFindingsResponse)
* [CreateAssessmentTargetResponse](#CreateAssessmentTargetResponse)
* [CreateAssessmentTemplateResponse](#CreateAssessmentTemplateResponse)
* [CreateExclusionsPreviewResponse](#CreateExclusionsPreviewResponse)
* [CreateResourceGroupResponse](#CreateResourceGroupResponse)
* [DescribeAssessmentRunsResponse](#DescribeAssessmentRunsResponse)
* [DescribeAssessmentTargetsResponse](#DescribeAssessmentTargetsResponse)
* [DescribeAssessmentTemplatesResponse](#DescribeAssessmentTemplatesResponse)
* [DescribeCrossAccountAccessRoleResponse](#DescribeCrossAccountAccessRoleResponse)
* [DescribeExclusionsResponse](#DescribeExclusionsResponse)
* [DescribeFindingsResponse](#DescribeFindingsResponse)
* [DescribeResourceGroupsResponse](#DescribeResourceGroupsResponse)
* [DescribeRulesPackagesResponse](#DescribeRulesPackagesResponse)
* [GetAssessmentReportResponse](#GetAssessmentReportResponse)
* [GetExclusionsPreviewResponse](#GetExclusionsPreviewResponse)
* [GetTelemetryMetadataResponse](#GetTelemetryMetadataResponse)
* [ListAssessmentRunAgentsResponse](#ListAssessmentRunAgentsResponse)
* [ListAssessmentRunsResponse](#ListAssessmentRunsResponse)
* [ListAssessmentTargetsResponse](#ListAssessmentTargetsResponse)
* [ListAssessmentTemplatesResponse](#ListAssessmentTemplatesResponse)
* [ListEventSubscriptionsResponse](#ListEventSubscriptionsResponse)
* [ListExclusionsResponse](#ListExclusionsResponse)
* [ListFindingsResponse](#ListFindingsResponse)
* [ListRulesPackagesResponse](#ListRulesPackagesResponse)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [PreviewAgentsResponse](#PreviewAgentsResponse)
* [RemoveAttributesFromFindingsResponse](#RemoveAttributesFromFindingsResponse)
* [StartAssessmentRunResponse](#StartAssessmentRunResponse)


@docs AddAttributesToFindingsResponse,CreateAssessmentTargetResponse,CreateAssessmentTemplateResponse,CreateExclusionsPreviewResponse,CreateResourceGroupResponse,DescribeAssessmentRunsResponse,DescribeAssessmentTargetsResponse,DescribeAssessmentTemplatesResponse,DescribeCrossAccountAccessRoleResponse,DescribeExclusionsResponse,DescribeFindingsResponse,DescribeResourceGroupsResponse,DescribeRulesPackagesResponse,GetAssessmentReportResponse,GetExclusionsPreviewResponse,GetTelemetryMetadataResponse,ListAssessmentRunAgentsResponse,ListAssessmentRunsResponse,ListAssessmentTargetsResponse,ListAssessmentTemplatesResponse,ListEventSubscriptionsResponse,ListExclusionsResponse,ListFindingsResponse,ListRulesPackagesResponse,ListTagsForResourceResponse,PreviewAgentsResponse,RemoveAttributesFromFindingsResponse,StartAssessmentRunResponse

## Records

* [AgentFilter](#AgentFilter)
* [AgentPreview](#AgentPreview)
* [AssessmentRun](#AssessmentRun)
* [AssessmentRunAgent](#AssessmentRunAgent)
* [AssessmentRunFilter](#AssessmentRunFilter)
* [AssessmentRunNotification](#AssessmentRunNotification)
* [AssessmentRunStateChange](#AssessmentRunStateChange)
* [AssessmentTarget](#AssessmentTarget)
* [AssessmentTargetFilter](#AssessmentTargetFilter)
* [AssessmentTemplate](#AssessmentTemplate)
* [AssessmentTemplateFilter](#AssessmentTemplateFilter)
* [AssetAttributes](#AssetAttributes)
* [Attribute](#Attribute)
* [DurationRange](#DurationRange)
* [EventSubscription](#EventSubscription)
* [Exclusion](#Exclusion)
* [ExclusionPreview](#ExclusionPreview)
* [FailedItemDetails](#FailedItemDetails)
* [Finding](#Finding)
* [FindingFilter](#FindingFilter)
* [InspectorServiceAttributes](#InspectorServiceAttributes)
* [NetworkInterface](#NetworkInterface)
* [PrivateIp](#PrivateIp)
* [ResourceGroup](#ResourceGroup)
* [ResourceGroupTag](#ResourceGroupTag)
* [RulesPackage](#RulesPackage)
* [Scope](#Scope)
* [SecurityGroup](#SecurityGroup)
* [Subscription](#Subscription)
* [Tag](#Tag)
* [TelemetryMetadata](#TelemetryMetadata)
* [TimestampRange](#TimestampRange)


@docs AgentFilter,AgentPreview,AssessmentRun,AssessmentRunAgent,AssessmentRunFilter,AssessmentRunNotification,AssessmentRunStateChange,AssessmentTarget,AssessmentTargetFilter,AssessmentTemplate,AssessmentTemplateFilter,AssetAttributes,Attribute,DurationRange,EventSubscription,Exclusion,ExclusionPreview,FailedItemDetails,Finding,FindingFilter,InspectorServiceAttributes,NetworkInterface,PrivateIp,ResourceGroup,ResourceGroupTag,RulesPackage,Scope,SecurityGroup,Subscription,Tag,TelemetryMetadata,TimestampRange

## Unions

* [AgentHealth](#AgentHealth)
* [AgentHealthCode](#AgentHealthCode)
* [AssessmentRunNotificationSnsStatusCode](#AssessmentRunNotificationSnsStatusCode)
* [AssessmentRunState](#AssessmentRunState)
* [AssetType](#AssetType)
* [FailedItemErrorCode](#FailedItemErrorCode)
* [InspectorEvent](#InspectorEvent)
* [Locale](#Locale)
* [PreviewStatus](#PreviewStatus)
* [ReportFileFormat](#ReportFileFormat)
* [ReportStatus](#ReportStatus)
* [ReportType](#ReportType)
* [ScopeType](#ScopeType)
* [Severity](#Severity)
* [StopAction](#StopAction)


@docs AgentHealth,AgentHealthCode,AssessmentRunNotificationSnsStatusCode,AssessmentRunState,AssetType,FailedItemErrorCode,InspectorEvent,Locale,PreviewStatus,ReportFileFormat,ReportStatus,ReportType,ScopeType,Severity,StopAction

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
        "inspector"
        "2016-02-16"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "InspectorService")



-- OPERATIONS

{-| <p>Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings.</p>

__Required Parameters__

* `findingArns` __:__ `(List String)`
* `attributes` __:__ `(List Attribute)`


-}

addAttributesToFindings :
  
    (List String) ->
  
    (List Attribute) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddAttributesToFindingsResponse)

addAttributesToFindings findingArns attributes =
    
    let
        requestInput = AddAttributesToFindingsRequest
            
            findingArns
            
            attributes
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> addAttributesToFindingsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddAttributesToFindings"
                
                (AWS.Core.Decode.ResultDecoder "AddAttributesToFindingsResponse" addAttributesToFindingsResponseDecoder)
                
            )





{-| <p>Creates a new assessment target using the ARN of the resource group that is generated by <a>CreateResourceGroup</a>. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target. If the <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html">service-linked role</a> isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments. You can create up to 50 assessment targets per AWS account. You can run up to 500 concurrent agents per AWS account. For more information, see <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html"> Amazon Inspector Assessment Targets</a>.</p>

__Required Parameters__

* `assessmentTargetName` __:__ `String`


-}

createAssessmentTarget :
  
    String ->
  
  
    ( CreateAssessmentTargetOptions -> CreateAssessmentTargetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateAssessmentTargetResponse)

createAssessmentTarget assessmentTargetName setOptions =
    
    let
        requestInput = CreateAssessmentTargetRequest
            
            assessmentTargetName
            
            options.resourceGroupArn
            
        
        options = setOptions (CreateAssessmentTargetOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createAssessmentTargetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateAssessmentTarget"
                
                (AWS.Core.Decode.ResultDecoder "CreateAssessmentTargetResponse" createAssessmentTargetResponseDecoder)
                
            )



{-| Options for a createAssessmentTarget request
-}
type alias CreateAssessmentTargetOptions =
    {
    resourceGroupArn : Maybe String
    }



{-| <p>Creates an assessment template for the assessment target that is specified by the ARN of the assessment target. If the <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html">service-linked role</a> isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments.</p>

__Required Parameters__

* `assessmentTargetArn` __:__ `String`
* `assessmentTemplateName` __:__ `String`
* `durationInSeconds` __:__ `Int`
* `rulesPackageArns` __:__ `(List String)`


-}

createAssessmentTemplate :
  
    String ->
  
    String ->
  
    Int ->
  
    (List String) ->
  
  
    ( CreateAssessmentTemplateOptions -> CreateAssessmentTemplateOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateAssessmentTemplateResponse)

createAssessmentTemplate assessmentTargetArn assessmentTemplateName durationInSeconds rulesPackageArns setOptions =
    
    let
        requestInput = CreateAssessmentTemplateRequest
            
            assessmentTargetArn
            
            assessmentTemplateName
            
            durationInSeconds
            
            rulesPackageArns
            
            options.userAttributesForFindings
            
        
        options = setOptions (CreateAssessmentTemplateOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createAssessmentTemplateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateAssessmentTemplate"
                
                (AWS.Core.Decode.ResultDecoder "CreateAssessmentTemplateResponse" createAssessmentTemplateResponseDecoder)
                
            )



{-| Options for a createAssessmentTemplate request
-}
type alias CreateAssessmentTemplateOptions =
    {
    userAttributesForFindings : Maybe (List Attribute)
    }



{-| <p>Starts the generation of an exclusions preview for the specified assessment template. The exclusions preview lists the potential exclusions (ExclusionPreview) that Inspector can detect before it runs the assessment. </p>

__Required Parameters__

* `assessmentTemplateArn` __:__ `String`


-}

createExclusionsPreview :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateExclusionsPreviewResponse)

createExclusionsPreview assessmentTemplateArn =
    
    let
        requestInput = CreateExclusionsPreviewRequest
            
            assessmentTemplateArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createExclusionsPreviewRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateExclusionsPreview"
                
                (AWS.Core.Decode.ResultDecoder "CreateExclusionsPreviewResponse" createExclusionsPreviewResponseDecoder)
                
            )





{-| <p>Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target. The created resource group is then used to create an Amazon Inspector assessment target. For more information, see <a>CreateAssessmentTarget</a>.</p>

__Required Parameters__

* `resourceGroupTags` __:__ `(List ResourceGroupTag)`


-}

createResourceGroup :
  
    (List ResourceGroupTag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateResourceGroupResponse)

createResourceGroup resourceGroupTags =
    
    let
        requestInput = CreateResourceGroupRequest
            
            resourceGroupTags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createResourceGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateResourceGroup"
                
                (AWS.Core.Decode.ResultDecoder "CreateResourceGroupResponse" createResourceGroupResponseDecoder)
                
            )





{-| <p>Deletes the assessment run that is specified by the ARN of the assessment run.</p>

__Required Parameters__

* `assessmentRunArn` __:__ `String`


-}

deleteAssessmentRun :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteAssessmentRun assessmentRunArn =
    
    let
        requestInput = DeleteAssessmentRunRequest
            
            assessmentRunArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteAssessmentRunRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteAssessmentRun"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes the assessment target that is specified by the ARN of the assessment target.</p>

__Required Parameters__

* `assessmentTargetArn` __:__ `String`


-}

deleteAssessmentTarget :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteAssessmentTarget assessmentTargetArn =
    
    let
        requestInput = DeleteAssessmentTargetRequest
            
            assessmentTargetArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteAssessmentTargetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteAssessmentTarget"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes the assessment template that is specified by the ARN of the assessment template.</p>

__Required Parameters__

* `assessmentTemplateArn` __:__ `String`


-}

deleteAssessmentTemplate :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteAssessmentTemplate assessmentTemplateArn =
    
    let
        requestInput = DeleteAssessmentTemplateRequest
            
            assessmentTemplateArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteAssessmentTemplateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteAssessmentTemplate"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Describes the assessment runs that are specified by the ARNs of the assessment runs.</p>

__Required Parameters__

* `assessmentRunArns` __:__ `(List String)`


-}

describeAssessmentRuns :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAssessmentRunsResponse)

describeAssessmentRuns assessmentRunArns =
    
    let
        requestInput = DescribeAssessmentRunsRequest
            
            assessmentRunArns
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeAssessmentRunsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAssessmentRuns"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAssessmentRunsResponse" describeAssessmentRunsResponseDecoder)
                
            )





{-| <p>Describes the assessment targets that are specified by the ARNs of the assessment targets.</p>

__Required Parameters__

* `assessmentTargetArns` __:__ `(List String)`


-}

describeAssessmentTargets :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAssessmentTargetsResponse)

describeAssessmentTargets assessmentTargetArns =
    
    let
        requestInput = DescribeAssessmentTargetsRequest
            
            assessmentTargetArns
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeAssessmentTargetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAssessmentTargets"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAssessmentTargetsResponse" describeAssessmentTargetsResponseDecoder)
                
            )





{-| <p>Describes the assessment templates that are specified by the ARNs of the assessment templates.</p>

__Required Parameters__

* `assessmentTemplateArns` __:__ `(List String)`


-}

describeAssessmentTemplates :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAssessmentTemplatesResponse)

describeAssessmentTemplates assessmentTemplateArns =
    
    let
        requestInput = DescribeAssessmentTemplatesRequest
            
            assessmentTemplateArns
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeAssessmentTemplatesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAssessmentTemplates"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAssessmentTemplatesResponse" describeAssessmentTemplatesResponseDecoder)
                
            )





{-| <p>Describes the IAM role that enables Amazon Inspector to access your AWS account.</p>

__Required Parameters__



-}

describeCrossAccountAccessRole :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeCrossAccountAccessRoleResponse)

describeCrossAccountAccessRole =
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeCrossAccountAccessRole"
                
                (AWS.Core.Decode.ResultDecoder "DescribeCrossAccountAccessRoleResponse" describeCrossAccountAccessRoleResponseDecoder)
                
            )





{-| <p>Describes the exclusions that are specified by the exclusions' ARNs.</p>

__Required Parameters__

* `exclusionArns` __:__ `(List String)`


-}

describeExclusions :
  
    (List String) ->
  
  
    ( DescribeExclusionsOptions -> DescribeExclusionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeExclusionsResponse)

describeExclusions exclusionArns setOptions =
    
    let
        requestInput = DescribeExclusionsRequest
            
            exclusionArns
            
            options.locale
            
        
        options = setOptions (DescribeExclusionsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeExclusionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeExclusions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeExclusionsResponse" describeExclusionsResponseDecoder)
                
            )



{-| Options for a describeExclusions request
-}
type alias DescribeExclusionsOptions =
    {
    locale : Maybe Locale
    }



{-| <p>Describes the findings that are specified by the ARNs of the findings.</p>

__Required Parameters__

* `findingArns` __:__ `(List String)`


-}

describeFindings :
  
    (List String) ->
  
  
    ( DescribeFindingsOptions -> DescribeFindingsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeFindingsResponse)

describeFindings findingArns setOptions =
    
    let
        requestInput = DescribeFindingsRequest
            
            findingArns
            
            options.locale
            
        
        options = setOptions (DescribeFindingsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeFindingsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeFindings"
                
                (AWS.Core.Decode.ResultDecoder "DescribeFindingsResponse" describeFindingsResponseDecoder)
                
            )



{-| Options for a describeFindings request
-}
type alias DescribeFindingsOptions =
    {
    locale : Maybe Locale
    }



{-| <p>Describes the resource groups that are specified by the ARNs of the resource groups.</p>

__Required Parameters__

* `resourceGroupArns` __:__ `(List String)`


-}

describeResourceGroups :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeResourceGroupsResponse)

describeResourceGroups resourceGroupArns =
    
    let
        requestInput = DescribeResourceGroupsRequest
            
            resourceGroupArns
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeResourceGroupsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeResourceGroups"
                
                (AWS.Core.Decode.ResultDecoder "DescribeResourceGroupsResponse" describeResourceGroupsResponseDecoder)
                
            )





{-| <p>Describes the rules packages that are specified by the ARNs of the rules packages.</p>

__Required Parameters__

* `rulesPackageArns` __:__ `(List String)`


-}

describeRulesPackages :
  
    (List String) ->
  
  
    ( DescribeRulesPackagesOptions -> DescribeRulesPackagesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeRulesPackagesResponse)

describeRulesPackages rulesPackageArns setOptions =
    
    let
        requestInput = DescribeRulesPackagesRequest
            
            rulesPackageArns
            
            options.locale
            
        
        options = setOptions (DescribeRulesPackagesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeRulesPackagesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeRulesPackages"
                
                (AWS.Core.Decode.ResultDecoder "DescribeRulesPackagesResponse" describeRulesPackagesResponseDecoder)
                
            )



{-| Options for a describeRulesPackages request
-}
type alias DescribeRulesPackagesOptions =
    {
    locale : Maybe Locale
    }



{-| <p>Produces an assessment report that includes detailed and comprehensive results of a specified assessment run. </p>

__Required Parameters__

* `assessmentRunArn` __:__ `String`
* `reportFileFormat` __:__ `ReportFileFormat`
* `reportType` __:__ `ReportType`


-}

getAssessmentReport :
  
    String ->
  
    ReportFileFormat ->
  
    ReportType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAssessmentReportResponse)

getAssessmentReport assessmentRunArn reportFileFormat reportType =
    
    let
        requestInput = GetAssessmentReportRequest
            
            assessmentRunArn
            
            reportFileFormat
            
            reportType
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getAssessmentReportRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetAssessmentReport"
                
                (AWS.Core.Decode.ResultDecoder "GetAssessmentReportResponse" getAssessmentReportResponseDecoder)
                
            )





{-| <p>Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token. You can obtain the preview token by running the CreateExclusionsPreview API.</p>

__Required Parameters__

* `assessmentTemplateArn` __:__ `String`
* `previewToken` __:__ `String`


-}

getExclusionsPreview :
  
    String ->
  
    String ->
  
  
    ( GetExclusionsPreviewOptions -> GetExclusionsPreviewOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetExclusionsPreviewResponse)

getExclusionsPreview assessmentTemplateArn previewToken setOptions =
    
    let
        requestInput = GetExclusionsPreviewRequest
            
            assessmentTemplateArn
            
            previewToken
            
            options.nextToken
            
            options.maxResults
            
            options.locale
            
        
        options = setOptions (GetExclusionsPreviewOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getExclusionsPreviewRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetExclusionsPreview"
                
                (AWS.Core.Decode.ResultDecoder "GetExclusionsPreviewResponse" getExclusionsPreviewResponseDecoder)
                
            )



{-| Options for a getExclusionsPreview request
-}
type alias GetExclusionsPreviewOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int,locale : Maybe Locale
    }



{-| <p>Information about the data that is collected for the specified assessment run.</p>

__Required Parameters__

* `assessmentRunArn` __:__ `String`


-}

getTelemetryMetadata :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTelemetryMetadataResponse)

getTelemetryMetadata assessmentRunArn =
    
    let
        requestInput = GetTelemetryMetadataRequest
            
            assessmentRunArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getTelemetryMetadataRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetTelemetryMetadata"
                
                (AWS.Core.Decode.ResultDecoder "GetTelemetryMetadataResponse" getTelemetryMetadataResponseDecoder)
                
            )





{-| <p>Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.</p>

__Required Parameters__

* `assessmentRunArn` __:__ `String`


-}

listAssessmentRunAgents :
  
    String ->
  
  
    ( ListAssessmentRunAgentsOptions -> ListAssessmentRunAgentsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAssessmentRunAgentsResponse)

listAssessmentRunAgents assessmentRunArn setOptions =
    
    let
        requestInput = ListAssessmentRunAgentsRequest
            
            assessmentRunArn
            
            options.filter
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListAssessmentRunAgentsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listAssessmentRunAgentsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListAssessmentRunAgents"
                
                (AWS.Core.Decode.ResultDecoder "ListAssessmentRunAgentsResponse" listAssessmentRunAgentsResponseDecoder)
                
            )



{-| Options for a listAssessmentRunAgents request
-}
type alias ListAssessmentRunAgentsOptions =
    {
    filter : Maybe AgentFilter,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.</p>

__Required Parameters__



-}

listAssessmentRuns :
  
  
    ( ListAssessmentRunsOptions -> ListAssessmentRunsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAssessmentRunsResponse)

listAssessmentRuns setOptions =
    
    let
        requestInput = ListAssessmentRunsRequest
            
            options.assessmentTemplateArns
            
            options.filter
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListAssessmentRunsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listAssessmentRunsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListAssessmentRuns"
                
                (AWS.Core.Decode.ResultDecoder "ListAssessmentRunsResponse" listAssessmentRunsResponseDecoder)
                
            )



{-| Options for a listAssessmentRuns request
-}
type alias ListAssessmentRunsOptions =
    {
    assessmentTemplateArns : Maybe (List String),filter : Maybe AssessmentRunFilter,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html">Amazon Inspector Assessment Targets</a>.</p>

__Required Parameters__



-}

listAssessmentTargets :
  
  
    ( ListAssessmentTargetsOptions -> ListAssessmentTargetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAssessmentTargetsResponse)

listAssessmentTargets setOptions =
    
    let
        requestInput = ListAssessmentTargetsRequest
            
            options.filter
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListAssessmentTargetsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listAssessmentTargetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListAssessmentTargets"
                
                (AWS.Core.Decode.ResultDecoder "ListAssessmentTargetsResponse" listAssessmentTargetsResponseDecoder)
                
            )



{-| Options for a listAssessmentTargets request
-}
type alias ListAssessmentTargetsOptions =
    {
    filter : Maybe AssessmentTargetFilter,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.</p>

__Required Parameters__



-}

listAssessmentTemplates :
  
  
    ( ListAssessmentTemplatesOptions -> ListAssessmentTemplatesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAssessmentTemplatesResponse)

listAssessmentTemplates setOptions =
    
    let
        requestInput = ListAssessmentTemplatesRequest
            
            options.assessmentTargetArns
            
            options.filter
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListAssessmentTemplatesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listAssessmentTemplatesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListAssessmentTemplates"
                
                (AWS.Core.Decode.ResultDecoder "ListAssessmentTemplatesResponse" listAssessmentTemplatesResponseDecoder)
                
            )



{-| Options for a listAssessmentTemplates request
-}
type alias ListAssessmentTemplatesOptions =
    {
    assessmentTargetArns : Maybe (List String),filter : Maybe AssessmentTemplateFilter,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see <a>SubscribeToEvent</a> and <a>UnsubscribeFromEvent</a>.</p>

__Required Parameters__



-}

listEventSubscriptions :
  
  
    ( ListEventSubscriptionsOptions -> ListEventSubscriptionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListEventSubscriptionsResponse)

listEventSubscriptions setOptions =
    
    let
        requestInput = ListEventSubscriptionsRequest
            
            options.resourceArn
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListEventSubscriptionsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listEventSubscriptionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListEventSubscriptions"
                
                (AWS.Core.Decode.ResultDecoder "ListEventSubscriptionsResponse" listEventSubscriptionsResponseDecoder)
                
            )



{-| Options for a listEventSubscriptions request
-}
type alias ListEventSubscriptionsOptions =
    {
    resourceArn : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>List exclusions that are generated by the assessment run.</p>

__Required Parameters__

* `assessmentRunArn` __:__ `String`


-}

listExclusions :
  
    String ->
  
  
    ( ListExclusionsOptions -> ListExclusionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListExclusionsResponse)

listExclusions assessmentRunArn setOptions =
    
    let
        requestInput = ListExclusionsRequest
            
            assessmentRunArn
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListExclusionsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listExclusionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListExclusions"
                
                (AWS.Core.Decode.ResultDecoder "ListExclusionsResponse" listExclusionsResponseDecoder)
                
            )



{-| Options for a listExclusions request
-}
type alias ListExclusionsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.</p>

__Required Parameters__



-}

listFindings :
  
  
    ( ListFindingsOptions -> ListFindingsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListFindingsResponse)

listFindings setOptions =
    
    let
        requestInput = ListFindingsRequest
            
            options.assessmentRunArns
            
            options.filter
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListFindingsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listFindingsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListFindings"
                
                (AWS.Core.Decode.ResultDecoder "ListFindingsResponse" listFindingsResponseDecoder)
                
            )



{-| Options for a listFindings request
-}
type alias ListFindingsOptions =
    {
    assessmentRunArns : Maybe (List String),filter : Maybe FindingFilter,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Lists all available Amazon Inspector rules packages.</p>

__Required Parameters__



-}

listRulesPackages :
  
  
    ( ListRulesPackagesOptions -> ListRulesPackagesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRulesPackagesResponse)

listRulesPackages setOptions =
    
    let
        requestInput = ListRulesPackagesRequest
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListRulesPackagesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listRulesPackagesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListRulesPackages"
                
                (AWS.Core.Decode.ResultDecoder "ListRulesPackagesResponse" listRulesPackagesResponseDecoder)
                
            )



{-| Options for a listRulesPackages request
-}
type alias ListRulesPackagesOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Lists all tags associated with an assessment template.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

listTagsForResource :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceResponse)

listTagsForResource resourceArn =
    
    let
        requestInput = ListTagsForResourceRequest
            
            resourceArn
            
        
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





{-| <p>Previews the agents installed on the EC2 instances that are part of the specified assessment target.</p>

__Required Parameters__

* `previewAgentsArn` __:__ `String`


-}

previewAgents :
  
    String ->
  
  
    ( PreviewAgentsOptions -> PreviewAgentsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PreviewAgentsResponse)

previewAgents previewAgentsArn setOptions =
    
    let
        requestInput = PreviewAgentsRequest
            
            previewAgentsArn
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (PreviewAgentsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> previewAgentsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PreviewAgents"
                
                (AWS.Core.Decode.ResultDecoder "PreviewAgentsResponse" previewAgentsResponseDecoder)
                
            )



{-| Options for a previewAgents request
-}
type alias PreviewAgentsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Registers the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments.</p>

__Required Parameters__

* `roleArn` __:__ `String`


-}

registerCrossAccountAccessRole :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

registerCrossAccountAccessRole roleArn =
    
    let
        requestInput = RegisterCrossAccountAccessRoleRequest
            
            roleArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> registerCrossAccountAccessRoleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RegisterCrossAccountAccessRole"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists.</p>

__Required Parameters__

* `findingArns` __:__ `(List String)`
* `attributeKeys` __:__ `(List String)`


-}

removeAttributesFromFindings :
  
    (List String) ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveAttributesFromFindingsResponse)

removeAttributesFromFindings findingArns attributeKeys =
    
    let
        requestInput = RemoveAttributesFromFindingsRequest
            
            findingArns
            
            attributeKeys
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> removeAttributesFromFindingsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemoveAttributesFromFindings"
                
                (AWS.Core.Decode.ResultDecoder "RemoveAttributesFromFindingsResponse" removeAttributesFromFindingsResponseDecoder)
                
            )





{-| <p>Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

setTagsForResource :
  
    String ->
  
  
    ( SetTagsForResourceOptions -> SetTagsForResourceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

setTagsForResource resourceArn setOptions =
    
    let
        requestInput = SetTagsForResourceRequest
            
            resourceArn
            
            options.tags
            
        
        options = setOptions (SetTagsForResourceOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> setTagsForResourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetTagsForResource"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a setTagsForResource request
-}
type alias SetTagsForResourceOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Starts the assessment run specified by the ARN of the assessment template. For this API to function properly, you must not exceed the limit of running up to 500 concurrent agents per AWS account.</p>

__Required Parameters__

* `assessmentTemplateArn` __:__ `String`


-}

startAssessmentRun :
  
    String ->
  
  
    ( StartAssessmentRunOptions -> StartAssessmentRunOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartAssessmentRunResponse)

startAssessmentRun assessmentTemplateArn setOptions =
    
    let
        requestInput = StartAssessmentRunRequest
            
            assessmentTemplateArn
            
            options.assessmentRunName
            
        
        options = setOptions (StartAssessmentRunOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startAssessmentRunRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartAssessmentRun"
                
                (AWS.Core.Decode.ResultDecoder "StartAssessmentRunResponse" startAssessmentRunResponseDecoder)
                
            )



{-| Options for a startAssessmentRun request
-}
type alias StartAssessmentRunOptions =
    {
    assessmentRunName : Maybe String
    }



{-| <p>Stops the assessment run that is specified by the ARN of the assessment run.</p>

__Required Parameters__

* `assessmentRunArn` __:__ `String`


-}

stopAssessmentRun :
  
    String ->
  
  
    ( StopAssessmentRunOptions -> StopAssessmentRunOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

stopAssessmentRun assessmentRunArn setOptions =
    
    let
        requestInput = StopAssessmentRunRequest
            
            assessmentRunArn
            
            options.stopAction
            
        
        options = setOptions (StopAssessmentRunOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopAssessmentRunRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopAssessmentRun"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a stopAssessmentRun request
-}
type alias StopAssessmentRunOptions =
    {
    stopAction : Maybe StopAction
    }



{-| <p>Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `event` __:__ `InspectorEvent`
* `topicArn` __:__ `String`


-}

subscribeToEvent :
  
    String ->
  
    InspectorEvent ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

subscribeToEvent resourceArn event topicArn =
    
    let
        requestInput = SubscribeToEventRequest
            
            resourceArn
            
            event
            
            topicArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> subscribeToEventRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SubscribeToEvent"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `event` __:__ `InspectorEvent`
* `topicArn` __:__ `String`


-}

unsubscribeFromEvent :
  
    String ->
  
    InspectorEvent ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

unsubscribeFromEvent resourceArn event topicArn =
    
    let
        requestInput = UnsubscribeFromEventRequest
            
            resourceArn
            
            event
            
            topicArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> unsubscribeFromEventRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UnsubscribeFromEvent"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Updates the assessment target that is specified by the ARN of the assessment target.</p> <p>If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target.</p>

__Required Parameters__

* `assessmentTargetArn` __:__ `String`
* `assessmentTargetName` __:__ `String`


-}

updateAssessmentTarget :
  
    String ->
  
    String ->
  
  
    ( UpdateAssessmentTargetOptions -> UpdateAssessmentTargetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateAssessmentTarget assessmentTargetArn assessmentTargetName setOptions =
    
    let
        requestInput = UpdateAssessmentTargetRequest
            
            assessmentTargetArn
            
            assessmentTargetName
            
            options.resourceGroupArn
            
        
        options = setOptions (UpdateAssessmentTargetOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateAssessmentTargetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateAssessmentTarget"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a updateAssessmentTarget request
-}
type alias UpdateAssessmentTargetOptions =
    {
    resourceGroupArn : Maybe String
    }




{-| Type of HTTP response from addAttributesToFindings
-}
type alias AddAttributesToFindingsResponse =
    { failedItems : (Dict String FailedItemDetails)
    }



addAttributesToFindingsResponseDecoder : JD.Decoder AddAttributesToFindingsResponse
addAttributesToFindingsResponseDecoder =
    JD.succeed AddAttributesToFindingsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["failedItems", "FailedItems"]
            (AWS.Core.Decode.dict failedItemDetailsDecoder)
        )
        




addAttributesToFindingsResponseToString : AddAttributesToFindingsResponse -> String -- List (String, String)
addAttributesToFindingsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedItems" "" -- val.failedItems
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about an Amazon Inspector agent. This data type is used as a request parameter in the <a>ListAssessmentRunAgents</a> action.</p>
-}
type alias AgentFilter =
    { agentHealths : (List AgentHealth)
    , agentHealthCodes : (List AgentHealthCode)
    }



agentFilterDecoder : JD.Decoder AgentFilter
agentFilterDecoder =
    JD.succeed AgentFilter
        
        |> JDP.custom (AWS.Core.Decode.required
            ["agentHealths", "AgentHealths"]
            (JD.list agentHealthDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["agentHealthCodes", "AgentHealthCodes"]
            (JD.list agentHealthCodeDecoder)
        )
        




agentFilterToString : AgentFilter -> String -- List (String, String)
agentFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "agentHealths" "" -- val.agentHealths
        
    --     |> Dict.insert
    --         "agentHealthCodes" "" -- val.agentHealthCodes
        
    --     |> Dict.toList
    ""



{-| One of

* `AgentHealth_HEALTHY`
* `AgentHealth_UNHEALTHY`
* `AgentHealth_UNKNOWN`

-}
type AgentHealth
    = AgentHealth_HEALTHY
    | AgentHealth_UNHEALTHY
    | AgentHealth_UNKNOWN



agentHealthDecoder : JD.Decoder AgentHealth
agentHealthDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HEALTHY" ->
                        JD.succeed AgentHealth_HEALTHY

                    "UNHEALTHY" ->
                        JD.succeed AgentHealth_UNHEALTHY

                    "UNKNOWN" ->
                        JD.succeed AgentHealth_UNKNOWN


                    _ ->
                        JD.fail "bad thing"
            )




agentHealthToString : AgentHealth -> String
agentHealthToString val =
    case val of
        AgentHealth_HEALTHY ->
            "HEALTHY"

        AgentHealth_UNHEALTHY ->
            "UNHEALTHY"

        AgentHealth_UNKNOWN ->
            "UNKNOWN"




{-| One of

* `AgentHealthCode_IDLE`
* `AgentHealthCode_RUNNING`
* `AgentHealthCode_SHUTDOWN`
* `AgentHealthCode_UNHEALTHY`
* `AgentHealthCode_THROTTLED`
* `AgentHealthCode_UNKNOWN`

-}
type AgentHealthCode
    = AgentHealthCode_IDLE
    | AgentHealthCode_RUNNING
    | AgentHealthCode_SHUTDOWN
    | AgentHealthCode_UNHEALTHY
    | AgentHealthCode_THROTTLED
    | AgentHealthCode_UNKNOWN



agentHealthCodeDecoder : JD.Decoder AgentHealthCode
agentHealthCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IDLE" ->
                        JD.succeed AgentHealthCode_IDLE

                    "RUNNING" ->
                        JD.succeed AgentHealthCode_RUNNING

                    "SHUTDOWN" ->
                        JD.succeed AgentHealthCode_SHUTDOWN

                    "UNHEALTHY" ->
                        JD.succeed AgentHealthCode_UNHEALTHY

                    "THROTTLED" ->
                        JD.succeed AgentHealthCode_THROTTLED

                    "UNKNOWN" ->
                        JD.succeed AgentHealthCode_UNKNOWN


                    _ ->
                        JD.fail "bad thing"
            )




agentHealthCodeToString : AgentHealthCode -> String
agentHealthCodeToString val =
    case val of
        AgentHealthCode_IDLE ->
            "IDLE"

        AgentHealthCode_RUNNING ->
            "RUNNING"

        AgentHealthCode_SHUTDOWN ->
            "SHUTDOWN"

        AgentHealthCode_UNHEALTHY ->
            "UNHEALTHY"

        AgentHealthCode_THROTTLED ->
            "THROTTLED"

        AgentHealthCode_UNKNOWN ->
            "UNKNOWN"




{-| <p>Used as a response element in the <a>PreviewAgents</a> action.</p>
-}
type alias AgentPreview =
    { hostname : Maybe String
    , agentId : String
    , autoScalingGroup : Maybe String
    , agentHealth : Maybe AgentHealth
    , agentVersion : Maybe String
    , operatingSystem : Maybe String
    , kernelVersion : Maybe String
    , ipv4Address : Maybe String
    }



agentPreviewDecoder : JD.Decoder AgentPreview
agentPreviewDecoder =
    JD.succeed AgentPreview
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hostname", "Hostname"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["agentId", "AgentId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["autoScalingGroup", "AutoScalingGroup"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["agentHealth", "AgentHealth"]
            agentHealthDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["agentVersion", "AgentVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operatingSystem", "OperatingSystem"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["kernelVersion", "KernelVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ipv4Address", "Ipv4Address"]
            JD.string
        )
        




agentPreviewToString : AgentPreview -> String -- List (String, String)
agentPreviewToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hostname" "" -- val.hostname
        
    --     |> Dict.insert
    --         "agentId" "" -- val.agentId
        
    --     |> Dict.insert
    --         "autoScalingGroup" "" -- val.autoScalingGroup
        
    --     |> Dict.insert
    --         "agentHealth" "" -- val.agentHealth
        
    --     |> Dict.insert
    --         "agentVersion" "" -- val.agentVersion
        
    --     |> Dict.insert
    --         "operatingSystem" "" -- val.operatingSystem
        
    --     |> Dict.insert
    --         "kernelVersion" "" -- val.kernelVersion
        
    --     |> Dict.insert
    --         "ipv4Address" "" -- val.ipv4Address
        
    --     |> Dict.toList
    ""



{-| <p>A snapshot of an Amazon Inspector assessment run that contains the findings of the assessment run .</p> <p>Used as the response element in the <a>DescribeAssessmentRuns</a> action.</p>
-}
type alias AssessmentRun =
    { arn : String
    , name : String
    , assessmentTemplateArn : String
    , state : AssessmentRunState
    , durationInSeconds : Int
    , rulesPackageArns : (List String)
    , userAttributesForFindings : (List Attribute)
    , createdAt : Posix
    , startedAt : Maybe Posix
    , completedAt : Maybe Posix
    , stateChangedAt : Posix
    , dataCollected : Bool
    , stateChanges : (List AssessmentRunStateChange)
    , notifications : (List AssessmentRunNotification)
    , findingCounts : (Dict String Int)
    }



assessmentRunDecoder : JD.Decoder AssessmentRun
assessmentRunDecoder =
    JD.succeed AssessmentRun
        
        |> JDP.custom (AWS.Core.Decode.required
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["assessmentTemplateArn", "AssessmentTemplateArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["state", "State"]
            assessmentRunStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["durationInSeconds", "DurationInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["rulesPackageArns", "RulesPackageArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["userAttributesForFindings", "UserAttributesForFindings"]
            (JD.list attributeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["startedAt", "StartedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["completedAt", "CompletedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["stateChangedAt", "StateChangedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["dataCollected", "DataCollected"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["stateChanges", "StateChanges"]
            (JD.list assessmentRunStateChangeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["notifications", "Notifications"]
            (JD.list assessmentRunNotificationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["findingCounts", "FindingCounts"]
            (AWS.Core.Decode.dict JD.int)
        )
        




assessmentRunToString : AssessmentRun -> String -- List (String, String)
assessmentRunToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "assessmentTemplateArn" "" -- val.assessmentTemplateArn
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "durationInSeconds" "" -- val.durationInSeconds
        
    --     |> Dict.insert
    --         "rulesPackageArns" "" -- val.rulesPackageArns
        
    --     |> Dict.insert
    --         "userAttributesForFindings" "" -- val.userAttributesForFindings
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "startedAt" "" -- val.startedAt
        
    --     |> Dict.insert
    --         "completedAt" "" -- val.completedAt
        
    --     |> Dict.insert
    --         "stateChangedAt" "" -- val.stateChangedAt
        
    --     |> Dict.insert
    --         "dataCollected" "" -- val.dataCollected
        
    --     |> Dict.insert
    --         "stateChanges" "" -- val.stateChanges
        
    --     |> Dict.insert
    --         "notifications" "" -- val.notifications
        
    --     |> Dict.insert
    --         "findingCounts" "" -- val.findingCounts
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about an Amazon Inspector agent. This data type is used as a response element in the <a>ListAssessmentRunAgents</a> action.</p>
-}
type alias AssessmentRunAgent =
    { agentId : String
    , assessmentRunArn : String
    , agentHealth : AgentHealth
    , agentHealthCode : AgentHealthCode
    , agentHealthDetails : Maybe String
    , autoScalingGroup : Maybe String
    , telemetryMetadata : (List TelemetryMetadata)
    }



assessmentRunAgentDecoder : JD.Decoder AssessmentRunAgent
assessmentRunAgentDecoder =
    JD.succeed AssessmentRunAgent
        
        |> JDP.custom (AWS.Core.Decode.required
            ["agentId", "AgentId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["assessmentRunArn", "AssessmentRunArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["agentHealth", "AgentHealth"]
            agentHealthDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["agentHealthCode", "AgentHealthCode"]
            agentHealthCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["agentHealthDetails", "AgentHealthDetails"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["autoScalingGroup", "AutoScalingGroup"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["telemetryMetadata", "TelemetryMetadata"]
            (JD.list telemetryMetadataDecoder)
        )
        




assessmentRunAgentToString : AssessmentRunAgent -> String -- List (String, String)
assessmentRunAgentToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "agentId" "" -- val.agentId
        
    --     |> Dict.insert
    --         "assessmentRunArn" "" -- val.assessmentRunArn
        
    --     |> Dict.insert
    --         "agentHealth" "" -- val.agentHealth
        
    --     |> Dict.insert
    --         "agentHealthCode" "" -- val.agentHealthCode
        
    --     |> Dict.insert
    --         "agentHealthDetails" "" -- val.agentHealthDetails
        
    --     |> Dict.insert
    --         "autoScalingGroup" "" -- val.autoScalingGroup
        
    --     |> Dict.insert
    --         "telemetryMetadata" "" -- val.telemetryMetadata
        
    --     |> Dict.toList
    ""



{-| <p>Used as the request parameter in the <a>ListAssessmentRuns</a> action.</p>
-}
type alias AssessmentRunFilter =
    { namePattern : Maybe String
    , states : Maybe (List AssessmentRunState)
    , durationRange : Maybe DurationRange
    , rulesPackageArns : Maybe (List String)
    , startTimeRange : Maybe TimestampRange
    , completionTimeRange : Maybe TimestampRange
    , stateChangeTimeRange : Maybe TimestampRange
    }



assessmentRunFilterDecoder : JD.Decoder AssessmentRunFilter
assessmentRunFilterDecoder =
    JD.succeed AssessmentRunFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["namePattern", "NamePattern"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["states", "States"]
            (JD.list assessmentRunStateDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["durationRange", "DurationRange"]
            durationRangeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["rulesPackageArns", "RulesPackageArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["startTimeRange", "StartTimeRange"]
            timestampRangeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["completionTimeRange", "CompletionTimeRange"]
            timestampRangeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stateChangeTimeRange", "StateChangeTimeRange"]
            timestampRangeDecoder
        )
        




assessmentRunFilterToString : AssessmentRunFilter -> String -- List (String, String)
assessmentRunFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "namePattern" "" -- val.namePattern
        
    --     |> Dict.insert
    --         "states" "" -- val.states
        
    --     |> Dict.insert
    --         "durationRange" "" -- val.durationRange
        
    --     |> Dict.insert
    --         "rulesPackageArns" "" -- val.rulesPackageArns
        
    --     |> Dict.insert
    --         "startTimeRange" "" -- val.startTimeRange
        
    --     |> Dict.insert
    --         "completionTimeRange" "" -- val.completionTimeRange
        
    --     |> Dict.insert
    --         "stateChangeTimeRange" "" -- val.stateChangeTimeRange
        
    --     |> Dict.toList
    ""



{-| <p>Used as one of the elements of the <a>AssessmentRun</a> data type.</p>
-}
type alias AssessmentRunNotification =
    { date : Posix
    , event : InspectorEvent
    , message : Maybe String
    , error : Bool
    , snsTopicArn : Maybe String
    , snsPublishStatusCode : Maybe AssessmentRunNotificationSnsStatusCode
    }



assessmentRunNotificationDecoder : JD.Decoder AssessmentRunNotification
assessmentRunNotificationDecoder =
    JD.succeed AssessmentRunNotification
        
        |> JDP.custom (AWS.Core.Decode.required
            ["date", "Date"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["event", "Event"]
            inspectorEventDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["error", "Error"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["snsTopicArn", "SnsTopicArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["snsPublishStatusCode", "SnsPublishStatusCode"]
            assessmentRunNotificationSnsStatusCodeDecoder
        )
        




assessmentRunNotificationToString : AssessmentRunNotification -> String -- List (String, String)
assessmentRunNotificationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "date" "" -- val.date
        
    --     |> Dict.insert
    --         "event" "" -- val.event
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "snsTopicArn" "" -- val.snsTopicArn
        
    --     |> Dict.insert
    --         "snsPublishStatusCode" "" -- val.snsPublishStatusCode
        
    --     |> Dict.toList
    ""



{-| One of

* `AssessmentRunNotificationSnsStatusCode_SUCCESS`
* `AssessmentRunNotificationSnsStatusCode_TOPIC_DOES_NOT_EXIST`
* `AssessmentRunNotificationSnsStatusCode_ACCESS_DENIED`
* `AssessmentRunNotificationSnsStatusCode_INTERNAL_ERROR`

-}
type AssessmentRunNotificationSnsStatusCode
    = AssessmentRunNotificationSnsStatusCode_SUCCESS
    | AssessmentRunNotificationSnsStatusCode_TOPIC_DOES_NOT_EXIST
    | AssessmentRunNotificationSnsStatusCode_ACCESS_DENIED
    | AssessmentRunNotificationSnsStatusCode_INTERNAL_ERROR



assessmentRunNotificationSnsStatusCodeDecoder : JD.Decoder AssessmentRunNotificationSnsStatusCode
assessmentRunNotificationSnsStatusCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCESS" ->
                        JD.succeed AssessmentRunNotificationSnsStatusCode_SUCCESS

                    "TOPIC_DOES_NOT_EXIST" ->
                        JD.succeed AssessmentRunNotificationSnsStatusCode_TOPIC_DOES_NOT_EXIST

                    "ACCESS_DENIED" ->
                        JD.succeed AssessmentRunNotificationSnsStatusCode_ACCESS_DENIED

                    "INTERNAL_ERROR" ->
                        JD.succeed AssessmentRunNotificationSnsStatusCode_INTERNAL_ERROR


                    _ ->
                        JD.fail "bad thing"
            )




assessmentRunNotificationSnsStatusCodeToString : AssessmentRunNotificationSnsStatusCode -> String
assessmentRunNotificationSnsStatusCodeToString val =
    case val of
        AssessmentRunNotificationSnsStatusCode_SUCCESS ->
            "SUCCESS"

        AssessmentRunNotificationSnsStatusCode_TOPIC_DOES_NOT_EXIST ->
            "TOPIC_DOES_NOT_EXIST"

        AssessmentRunNotificationSnsStatusCode_ACCESS_DENIED ->
            "ACCESS_DENIED"

        AssessmentRunNotificationSnsStatusCode_INTERNAL_ERROR ->
            "INTERNAL_ERROR"




{-| One of

* `AssessmentRunState_CREATED`
* `AssessmentRunState_START_DATA_COLLECTION_PENDING`
* `AssessmentRunState_START_DATA_COLLECTION_IN_PROGRESS`
* `AssessmentRunState_COLLECTING_DATA`
* `AssessmentRunState_STOP_DATA_COLLECTION_PENDING`
* `AssessmentRunState_DATA_COLLECTED`
* `AssessmentRunState_START_EVALUATING_RULES_PENDING`
* `AssessmentRunState_EVALUATING_RULES`
* `AssessmentRunState_FAILED`
* `AssessmentRunState_ERROR`
* `AssessmentRunState_COMPLETED`
* `AssessmentRunState_COMPLETED_WITH_ERRORS`
* `AssessmentRunState_CANCELED`

-}
type AssessmentRunState
    = AssessmentRunState_CREATED
    | AssessmentRunState_START_DATA_COLLECTION_PENDING
    | AssessmentRunState_START_DATA_COLLECTION_IN_PROGRESS
    | AssessmentRunState_COLLECTING_DATA
    | AssessmentRunState_STOP_DATA_COLLECTION_PENDING
    | AssessmentRunState_DATA_COLLECTED
    | AssessmentRunState_START_EVALUATING_RULES_PENDING
    | AssessmentRunState_EVALUATING_RULES
    | AssessmentRunState_FAILED
    | AssessmentRunState_ERROR
    | AssessmentRunState_COMPLETED
    | AssessmentRunState_COMPLETED_WITH_ERRORS
    | AssessmentRunState_CANCELED



assessmentRunStateDecoder : JD.Decoder AssessmentRunState
assessmentRunStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATED" ->
                        JD.succeed AssessmentRunState_CREATED

                    "START_DATA_COLLECTION_PENDING" ->
                        JD.succeed AssessmentRunState_START_DATA_COLLECTION_PENDING

                    "START_DATA_COLLECTION_IN_PROGRESS" ->
                        JD.succeed AssessmentRunState_START_DATA_COLLECTION_IN_PROGRESS

                    "COLLECTING_DATA" ->
                        JD.succeed AssessmentRunState_COLLECTING_DATA

                    "STOP_DATA_COLLECTION_PENDING" ->
                        JD.succeed AssessmentRunState_STOP_DATA_COLLECTION_PENDING

                    "DATA_COLLECTED" ->
                        JD.succeed AssessmentRunState_DATA_COLLECTED

                    "START_EVALUATING_RULES_PENDING" ->
                        JD.succeed AssessmentRunState_START_EVALUATING_RULES_PENDING

                    "EVALUATING_RULES" ->
                        JD.succeed AssessmentRunState_EVALUATING_RULES

                    "FAILED" ->
                        JD.succeed AssessmentRunState_FAILED

                    "ERROR" ->
                        JD.succeed AssessmentRunState_ERROR

                    "COMPLETED" ->
                        JD.succeed AssessmentRunState_COMPLETED

                    "COMPLETED_WITH_ERRORS" ->
                        JD.succeed AssessmentRunState_COMPLETED_WITH_ERRORS

                    "CANCELED" ->
                        JD.succeed AssessmentRunState_CANCELED


                    _ ->
                        JD.fail "bad thing"
            )




assessmentRunStateToString : AssessmentRunState -> String
assessmentRunStateToString val =
    case val of
        AssessmentRunState_CREATED ->
            "CREATED"

        AssessmentRunState_START_DATA_COLLECTION_PENDING ->
            "START_DATA_COLLECTION_PENDING"

        AssessmentRunState_START_DATA_COLLECTION_IN_PROGRESS ->
            "START_DATA_COLLECTION_IN_PROGRESS"

        AssessmentRunState_COLLECTING_DATA ->
            "COLLECTING_DATA"

        AssessmentRunState_STOP_DATA_COLLECTION_PENDING ->
            "STOP_DATA_COLLECTION_PENDING"

        AssessmentRunState_DATA_COLLECTED ->
            "DATA_COLLECTED"

        AssessmentRunState_START_EVALUATING_RULES_PENDING ->
            "START_EVALUATING_RULES_PENDING"

        AssessmentRunState_EVALUATING_RULES ->
            "EVALUATING_RULES"

        AssessmentRunState_FAILED ->
            "FAILED"

        AssessmentRunState_ERROR ->
            "ERROR"

        AssessmentRunState_COMPLETED ->
            "COMPLETED"

        AssessmentRunState_COMPLETED_WITH_ERRORS ->
            "COMPLETED_WITH_ERRORS"

        AssessmentRunState_CANCELED ->
            "CANCELED"




{-| <p>Used as one of the elements of the <a>AssessmentRun</a> data type.</p>
-}
type alias AssessmentRunStateChange =
    { stateChangedAt : Posix
    , state : AssessmentRunState
    }



assessmentRunStateChangeDecoder : JD.Decoder AssessmentRunStateChange
assessmentRunStateChangeDecoder =
    JD.succeed AssessmentRunStateChange
        
        |> JDP.custom (AWS.Core.Decode.required
            ["stateChangedAt", "StateChangedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["state", "State"]
            assessmentRunStateDecoder
        )
        




assessmentRunStateChangeToString : AssessmentRunStateChange -> String -- List (String, String)
assessmentRunStateChangeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stateChangedAt" "" -- val.stateChangedAt
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about an Amazon Inspector application. This data type is used as the response element in the <a>DescribeAssessmentTargets</a> action.</p>
-}
type alias AssessmentTarget =
    { arn : String
    , name : String
    , resourceGroupArn : Maybe String
    , createdAt : Posix
    , updatedAt : Posix
    }



assessmentTargetDecoder : JD.Decoder AssessmentTarget
assessmentTargetDecoder =
    JD.succeed AssessmentTarget
        
        |> JDP.custom (AWS.Core.Decode.required
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceGroupArn", "ResourceGroupArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["updatedAt", "UpdatedAt"]
            JDX.datetime
        )
        




assessmentTargetToString : AssessmentTarget -> String -- List (String, String)
assessmentTargetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "resourceGroupArn" "" -- val.resourceGroupArn
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "updatedAt" "" -- val.updatedAt
        
    --     |> Dict.toList
    ""



{-| <p>Used as the request parameter in the <a>ListAssessmentTargets</a> action.</p>
-}
type alias AssessmentTargetFilter =
    { assessmentTargetNamePattern : Maybe String
    }



assessmentTargetFilterDecoder : JD.Decoder AssessmentTargetFilter
assessmentTargetFilterDecoder =
    JD.succeed AssessmentTargetFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["assessmentTargetNamePattern", "AssessmentTargetNamePattern"]
            JD.string
        )
        




assessmentTargetFilterToString : AssessmentTargetFilter -> String -- List (String, String)
assessmentTargetFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "assessmentTargetNamePattern" "" -- val.assessmentTargetNamePattern
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about an Amazon Inspector assessment template. This data type is used as the response element in the <a>DescribeAssessmentTemplates</a> action.</p>
-}
type alias AssessmentTemplate =
    { arn : String
    , name : String
    , assessmentTargetArn : String
    , durationInSeconds : Int
    , rulesPackageArns : (List String)
    , userAttributesForFindings : (List Attribute)
    , lastAssessmentRunArn : Maybe String
    , assessmentRunCount : Int
    , createdAt : Posix
    }



assessmentTemplateDecoder : JD.Decoder AssessmentTemplate
assessmentTemplateDecoder =
    JD.succeed AssessmentTemplate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["assessmentTargetArn", "AssessmentTargetArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["durationInSeconds", "DurationInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["rulesPackageArns", "RulesPackageArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["userAttributesForFindings", "UserAttributesForFindings"]
            (JD.list attributeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastAssessmentRunArn", "LastAssessmentRunArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["assessmentRunCount", "AssessmentRunCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        




assessmentTemplateToString : AssessmentTemplate -> String -- List (String, String)
assessmentTemplateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "assessmentTargetArn" "" -- val.assessmentTargetArn
        
    --     |> Dict.insert
    --         "durationInSeconds" "" -- val.durationInSeconds
        
    --     |> Dict.insert
    --         "rulesPackageArns" "" -- val.rulesPackageArns
        
    --     |> Dict.insert
    --         "userAttributesForFindings" "" -- val.userAttributesForFindings
        
    --     |> Dict.insert
    --         "lastAssessmentRunArn" "" -- val.lastAssessmentRunArn
        
    --     |> Dict.insert
    --         "assessmentRunCount" "" -- val.assessmentRunCount
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.toList
    ""



{-| <p>Used as the request parameter in the <a>ListAssessmentTemplates</a> action.</p>
-}
type alias AssessmentTemplateFilter =
    { namePattern : Maybe String
    , durationRange : Maybe DurationRange
    , rulesPackageArns : Maybe (List String)
    }



assessmentTemplateFilterDecoder : JD.Decoder AssessmentTemplateFilter
assessmentTemplateFilterDecoder =
    JD.succeed AssessmentTemplateFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["namePattern", "NamePattern"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["durationRange", "DurationRange"]
            durationRangeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["rulesPackageArns", "RulesPackageArns"]
            (JD.list JD.string)
        )
        




assessmentTemplateFilterToString : AssessmentTemplateFilter -> String -- List (String, String)
assessmentTemplateFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "namePattern" "" -- val.namePattern
        
    --     |> Dict.insert
    --         "durationRange" "" -- val.durationRange
        
    --     |> Dict.insert
    --         "rulesPackageArns" "" -- val.rulesPackageArns
        
    --     |> Dict.toList
    ""



{-| <p>A collection of attributes of the host from which the finding is generated.</p>
-}
type alias AssetAttributes =
    { schemaVersion : Int
    , agentId : Maybe String
    , autoScalingGroup : Maybe String
    , amiId : Maybe String
    , hostname : Maybe String
    , ipv4Addresses : Maybe (List String)
    , tags : Maybe (List Tag)
    , networkInterfaces : Maybe (List NetworkInterface)
    }



assetAttributesDecoder : JD.Decoder AssetAttributes
assetAttributesDecoder =
    JD.succeed AssetAttributes
        
        |> JDP.custom (AWS.Core.Decode.required
            ["schemaVersion", "SchemaVersion"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["agentId", "AgentId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["autoScalingGroup", "AutoScalingGroup"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["amiId", "AmiId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hostname", "Hostname"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ipv4Addresses", "Ipv4Addresses"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["networkInterfaces", "NetworkInterfaces"]
            (JD.list networkInterfaceDecoder)
        )
        




assetAttributesToString : AssetAttributes -> String -- List (String, String)
assetAttributesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "schemaVersion" "" -- val.schemaVersion
        
    --     |> Dict.insert
    --         "agentId" "" -- val.agentId
        
    --     |> Dict.insert
    --         "autoScalingGroup" "" -- val.autoScalingGroup
        
    --     |> Dict.insert
    --         "amiId" "" -- val.amiId
        
    --     |> Dict.insert
    --         "hostname" "" -- val.hostname
        
    --     |> Dict.insert
    --         "ipv4Addresses" "" -- val.ipv4Addresses
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "networkInterfaces" "" -- val.networkInterfaces
        
    --     |> Dict.toList
    ""



{-| One of

* `AssetType_ec2-instance`

-}
type AssetType
    = AssetType_ec2_instance



assetTypeDecoder : JD.Decoder AssetType
assetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ec2_instance" ->
                        JD.succeed AssetType_ec2_instance


                    _ ->
                        JD.fail "bad thing"
            )




assetTypeToString : AssetType -> String
assetTypeToString val =
    case val of
        AssetType_ec2_instance ->
            "ec2_instance"




{-| <p>This data type is used as a request parameter in the <a>AddAttributesToFindings</a> and <a>CreateAssessmentTemplate</a> actions.</p>
-}
type alias Attribute =
    { key : String
    , value : Maybe String
    }



attributeDecoder : JD.Decoder Attribute
attributeDecoder =
    JD.succeed Attribute
        
        |> JDP.custom (AWS.Core.Decode.required
            ["key", "Key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["value", "Value"]
            JD.string
        )
        




attributeToString : Attribute -> String -- List (String, String)
attributeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createAssessmentTarget
-}
type alias CreateAssessmentTargetResponse =
    { assessmentTargetArn : String
    }



createAssessmentTargetResponseDecoder : JD.Decoder CreateAssessmentTargetResponse
createAssessmentTargetResponseDecoder =
    JD.succeed CreateAssessmentTargetResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["assessmentTargetArn", "AssessmentTargetArn"]
            JD.string
        )
        




createAssessmentTargetResponseToString : CreateAssessmentTargetResponse -> String -- List (String, String)
createAssessmentTargetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "assessmentTargetArn" "" -- val.assessmentTargetArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createAssessmentTemplate
-}
type alias CreateAssessmentTemplateResponse =
    { assessmentTemplateArn : String
    }



createAssessmentTemplateResponseDecoder : JD.Decoder CreateAssessmentTemplateResponse
createAssessmentTemplateResponseDecoder =
    JD.succeed CreateAssessmentTemplateResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["assessmentTemplateArn", "AssessmentTemplateArn"]
            JD.string
        )
        




createAssessmentTemplateResponseToString : CreateAssessmentTemplateResponse -> String -- List (String, String)
createAssessmentTemplateResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "assessmentTemplateArn" "" -- val.assessmentTemplateArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createExclusionsPreview
-}
type alias CreateExclusionsPreviewResponse =
    { previewToken : String
    }



createExclusionsPreviewResponseDecoder : JD.Decoder CreateExclusionsPreviewResponse
createExclusionsPreviewResponseDecoder =
    JD.succeed CreateExclusionsPreviewResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["previewToken", "PreviewToken"]
            JD.string
        )
        




createExclusionsPreviewResponseToString : CreateExclusionsPreviewResponse -> String -- List (String, String)
createExclusionsPreviewResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "previewToken" "" -- val.previewToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createResourceGroup
-}
type alias CreateResourceGroupResponse =
    { resourceGroupArn : String
    }



createResourceGroupResponseDecoder : JD.Decoder CreateResourceGroupResponse
createResourceGroupResponseDecoder =
    JD.succeed CreateResourceGroupResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourceGroupArn", "ResourceGroupArn"]
            JD.string
        )
        




createResourceGroupResponseToString : CreateResourceGroupResponse -> String -- List (String, String)
createResourceGroupResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceGroupArn" "" -- val.resourceGroupArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAssessmentRuns
-}
type alias DescribeAssessmentRunsResponse =
    { assessmentRuns : (List AssessmentRun)
    , failedItems : (Dict String FailedItemDetails)
    }



describeAssessmentRunsResponseDecoder : JD.Decoder DescribeAssessmentRunsResponse
describeAssessmentRunsResponseDecoder =
    JD.succeed DescribeAssessmentRunsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["assessmentRuns", "AssessmentRuns"]
            (JD.list assessmentRunDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["failedItems", "FailedItems"]
            (AWS.Core.Decode.dict failedItemDetailsDecoder)
        )
        




describeAssessmentRunsResponseToString : DescribeAssessmentRunsResponse -> String -- List (String, String)
describeAssessmentRunsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "assessmentRuns" "" -- val.assessmentRuns
        
    --     |> Dict.insert
    --         "failedItems" "" -- val.failedItems
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAssessmentTargets
-}
type alias DescribeAssessmentTargetsResponse =
    { assessmentTargets : (List AssessmentTarget)
    , failedItems : (Dict String FailedItemDetails)
    }



describeAssessmentTargetsResponseDecoder : JD.Decoder DescribeAssessmentTargetsResponse
describeAssessmentTargetsResponseDecoder =
    JD.succeed DescribeAssessmentTargetsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["assessmentTargets", "AssessmentTargets"]
            (JD.list assessmentTargetDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["failedItems", "FailedItems"]
            (AWS.Core.Decode.dict failedItemDetailsDecoder)
        )
        




describeAssessmentTargetsResponseToString : DescribeAssessmentTargetsResponse -> String -- List (String, String)
describeAssessmentTargetsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "assessmentTargets" "" -- val.assessmentTargets
        
    --     |> Dict.insert
    --         "failedItems" "" -- val.failedItems
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAssessmentTemplates
-}
type alias DescribeAssessmentTemplatesResponse =
    { assessmentTemplates : (List AssessmentTemplate)
    , failedItems : (Dict String FailedItemDetails)
    }



describeAssessmentTemplatesResponseDecoder : JD.Decoder DescribeAssessmentTemplatesResponse
describeAssessmentTemplatesResponseDecoder =
    JD.succeed DescribeAssessmentTemplatesResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["assessmentTemplates", "AssessmentTemplates"]
            (JD.list assessmentTemplateDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["failedItems", "FailedItems"]
            (AWS.Core.Decode.dict failedItemDetailsDecoder)
        )
        




describeAssessmentTemplatesResponseToString : DescribeAssessmentTemplatesResponse -> String -- List (String, String)
describeAssessmentTemplatesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "assessmentTemplates" "" -- val.assessmentTemplates
        
    --     |> Dict.insert
    --         "failedItems" "" -- val.failedItems
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeCrossAccountAccessRole
-}
type alias DescribeCrossAccountAccessRoleResponse =
    { roleArn : String
    , valid : Bool
    , registeredAt : Posix
    }



describeCrossAccountAccessRoleResponseDecoder : JD.Decoder DescribeCrossAccountAccessRoleResponse
describeCrossAccountAccessRoleResponseDecoder =
    JD.succeed DescribeCrossAccountAccessRoleResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["roleArn", "RoleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["valid", "Valid"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["registeredAt", "RegisteredAt"]
            JDX.datetime
        )
        




describeCrossAccountAccessRoleResponseToString : DescribeCrossAccountAccessRoleResponse -> String -- List (String, String)
describeCrossAccountAccessRoleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "valid" "" -- val.valid
        
    --     |> Dict.insert
    --         "registeredAt" "" -- val.registeredAt
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeExclusions
-}
type alias DescribeExclusionsResponse =
    { exclusions : (Dict String Exclusion)
    , failedItems : (Dict String FailedItemDetails)
    }



describeExclusionsResponseDecoder : JD.Decoder DescribeExclusionsResponse
describeExclusionsResponseDecoder =
    JD.succeed DescribeExclusionsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["exclusions", "Exclusions"]
            (AWS.Core.Decode.dict exclusionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["failedItems", "FailedItems"]
            (AWS.Core.Decode.dict failedItemDetailsDecoder)
        )
        




describeExclusionsResponseToString : DescribeExclusionsResponse -> String -- List (String, String)
describeExclusionsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "exclusions" "" -- val.exclusions
        
    --     |> Dict.insert
    --         "failedItems" "" -- val.failedItems
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeFindings
-}
type alias DescribeFindingsResponse =
    { findings : (List Finding)
    , failedItems : (Dict String FailedItemDetails)
    }



describeFindingsResponseDecoder : JD.Decoder DescribeFindingsResponse
describeFindingsResponseDecoder =
    JD.succeed DescribeFindingsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["findings", "Findings"]
            (JD.list findingDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["failedItems", "FailedItems"]
            (AWS.Core.Decode.dict failedItemDetailsDecoder)
        )
        




describeFindingsResponseToString : DescribeFindingsResponse -> String -- List (String, String)
describeFindingsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "findings" "" -- val.findings
        
    --     |> Dict.insert
    --         "failedItems" "" -- val.failedItems
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeResourceGroups
-}
type alias DescribeResourceGroupsResponse =
    { resourceGroups : (List ResourceGroup)
    , failedItems : (Dict String FailedItemDetails)
    }



describeResourceGroupsResponseDecoder : JD.Decoder DescribeResourceGroupsResponse
describeResourceGroupsResponseDecoder =
    JD.succeed DescribeResourceGroupsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourceGroups", "ResourceGroups"]
            (JD.list resourceGroupDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["failedItems", "FailedItems"]
            (AWS.Core.Decode.dict failedItemDetailsDecoder)
        )
        




describeResourceGroupsResponseToString : DescribeResourceGroupsResponse -> String -- List (String, String)
describeResourceGroupsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceGroups" "" -- val.resourceGroups
        
    --     |> Dict.insert
    --         "failedItems" "" -- val.failedItems
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeRulesPackages
-}
type alias DescribeRulesPackagesResponse =
    { rulesPackages : (List RulesPackage)
    , failedItems : (Dict String FailedItemDetails)
    }



describeRulesPackagesResponseDecoder : JD.Decoder DescribeRulesPackagesResponse
describeRulesPackagesResponseDecoder =
    JD.succeed DescribeRulesPackagesResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["rulesPackages", "RulesPackages"]
            (JD.list rulesPackageDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["failedItems", "FailedItems"]
            (AWS.Core.Decode.dict failedItemDetailsDecoder)
        )
        




describeRulesPackagesResponseToString : DescribeRulesPackagesResponse -> String -- List (String, String)
describeRulesPackagesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "rulesPackages" "" -- val.rulesPackages
        
    --     |> Dict.insert
    --         "failedItems" "" -- val.failedItems
        
    --     |> Dict.toList
    ""



{-| <p>This data type is used in the <a>AssessmentTemplateFilter</a> data type.</p>
-}
type alias DurationRange =
    { minSeconds : Maybe Int
    , maxSeconds : Maybe Int
    }



durationRangeDecoder : JD.Decoder DurationRange
durationRangeDecoder =
    JD.succeed DurationRange
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["minSeconds", "MinSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["maxSeconds", "MaxSeconds"]
            JD.int
        )
        




durationRangeToString : DurationRange -> String -- List (String, String)
durationRangeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "minSeconds" "" -- val.minSeconds
        
    --     |> Dict.insert
    --         "maxSeconds" "" -- val.maxSeconds
        
    --     |> Dict.toList
    ""



{-| <p>This data type is used in the <a>Subscription</a> data type.</p>
-}
type alias EventSubscription =
    { event : InspectorEvent
    , subscribedAt : Posix
    }



eventSubscriptionDecoder : JD.Decoder EventSubscription
eventSubscriptionDecoder =
    JD.succeed EventSubscription
        
        |> JDP.custom (AWS.Core.Decode.required
            ["event", "Event"]
            inspectorEventDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["subscribedAt", "SubscribedAt"]
            JDX.datetime
        )
        




eventSubscriptionToString : EventSubscription -> String -- List (String, String)
eventSubscriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "event" "" -- val.event
        
    --     |> Dict.insert
    --         "subscribedAt" "" -- val.subscribedAt
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about what was excluded from an assessment run.</p>
-}
type alias Exclusion =
    { arn : String
    , title : String
    , description : String
    , recommendation : String
    , scopes : (List Scope)
    , attributes : Maybe (List Attribute)
    }



exclusionDecoder : JD.Decoder Exclusion
exclusionDecoder =
    JD.succeed Exclusion
        
        |> JDP.custom (AWS.Core.Decode.required
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["title", "Title"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["recommendation", "Recommendation"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["scopes", "Scopes"]
            (JD.list scopeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attributes", "Attributes"]
            (JD.list attributeDecoder)
        )
        




exclusionToString : Exclusion -> String -- List (String, String)
exclusionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "title" "" -- val.title
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "recommendation" "" -- val.recommendation
        
    --     |> Dict.insert
    --         "scopes" "" -- val.scopes
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about what is excluded from an assessment run given the current state of the assessment template.</p>
-}
type alias ExclusionPreview =
    { title : String
    , description : String
    , recommendation : String
    , scopes : (List Scope)
    , attributes : Maybe (List Attribute)
    }



exclusionPreviewDecoder : JD.Decoder ExclusionPreview
exclusionPreviewDecoder =
    JD.succeed ExclusionPreview
        
        |> JDP.custom (AWS.Core.Decode.required
            ["title", "Title"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["recommendation", "Recommendation"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["scopes", "Scopes"]
            (JD.list scopeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attributes", "Attributes"]
            (JD.list attributeDecoder)
        )
        




exclusionPreviewToString : ExclusionPreview -> String -- List (String, String)
exclusionPreviewToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "title" "" -- val.title
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "recommendation" "" -- val.recommendation
        
    --     |> Dict.insert
    --         "scopes" "" -- val.scopes
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| <p>Includes details about the failed items.</p>
-}
type alias FailedItemDetails =
    { failureCode : FailedItemErrorCode
    , retryable : Bool
    }



failedItemDetailsDecoder : JD.Decoder FailedItemDetails
failedItemDetailsDecoder =
    JD.succeed FailedItemDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["failureCode", "FailureCode"]
            failedItemErrorCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["retryable", "Retryable"]
            JD.bool
        )
        




failedItemDetailsToString : FailedItemDetails -> String -- List (String, String)
failedItemDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failureCode" "" -- val.failureCode
        
    --     |> Dict.insert
    --         "retryable" "" -- val.retryable
        
    --     |> Dict.toList
    ""



{-| One of

* `FailedItemErrorCode_INVALID_ARN`
* `FailedItemErrorCode_DUPLICATE_ARN`
* `FailedItemErrorCode_ITEM_DOES_NOT_EXIST`
* `FailedItemErrorCode_ACCESS_DENIED`
* `FailedItemErrorCode_LIMIT_EXCEEDED`
* `FailedItemErrorCode_INTERNAL_ERROR`

-}
type FailedItemErrorCode
    = FailedItemErrorCode_INVALID_ARN
    | FailedItemErrorCode_DUPLICATE_ARN
    | FailedItemErrorCode_ITEM_DOES_NOT_EXIST
    | FailedItemErrorCode_ACCESS_DENIED
    | FailedItemErrorCode_LIMIT_EXCEEDED
    | FailedItemErrorCode_INTERNAL_ERROR



failedItemErrorCodeDecoder : JD.Decoder FailedItemErrorCode
failedItemErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INVALID_ARN" ->
                        JD.succeed FailedItemErrorCode_INVALID_ARN

                    "DUPLICATE_ARN" ->
                        JD.succeed FailedItemErrorCode_DUPLICATE_ARN

                    "ITEM_DOES_NOT_EXIST" ->
                        JD.succeed FailedItemErrorCode_ITEM_DOES_NOT_EXIST

                    "ACCESS_DENIED" ->
                        JD.succeed FailedItemErrorCode_ACCESS_DENIED

                    "LIMIT_EXCEEDED" ->
                        JD.succeed FailedItemErrorCode_LIMIT_EXCEEDED

                    "INTERNAL_ERROR" ->
                        JD.succeed FailedItemErrorCode_INTERNAL_ERROR


                    _ ->
                        JD.fail "bad thing"
            )




failedItemErrorCodeToString : FailedItemErrorCode -> String
failedItemErrorCodeToString val =
    case val of
        FailedItemErrorCode_INVALID_ARN ->
            "INVALID_ARN"

        FailedItemErrorCode_DUPLICATE_ARN ->
            "DUPLICATE_ARN"

        FailedItemErrorCode_ITEM_DOES_NOT_EXIST ->
            "ITEM_DOES_NOT_EXIST"

        FailedItemErrorCode_ACCESS_DENIED ->
            "ACCESS_DENIED"

        FailedItemErrorCode_LIMIT_EXCEEDED ->
            "LIMIT_EXCEEDED"

        FailedItemErrorCode_INTERNAL_ERROR ->
            "INTERNAL_ERROR"




{-| <p>Contains information about an Amazon Inspector finding. This data type is used as the response element in the <a>DescribeFindings</a> action.</p>
-}
type alias Finding =
    { arn : String
    , schemaVersion : Maybe Int
    , service : Maybe String
    , serviceAttributes : Maybe InspectorServiceAttributes
    , assetType : Maybe AssetType
    , assetAttributes : Maybe AssetAttributes
    , id : Maybe String
    , title : Maybe String
    , description : Maybe String
    , recommendation : Maybe String
    , severity : Maybe Severity
    , numericSeverity : Maybe Float
    , confidence : Maybe Int
    , indicatorOfCompromise : Maybe Bool
    , attributes : (List Attribute)
    , userAttributes : (List Attribute)
    , createdAt : Posix
    , updatedAt : Posix
    }



findingDecoder : JD.Decoder Finding
findingDecoder =
    JD.succeed Finding
        
        |> JDP.custom (AWS.Core.Decode.required
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["schemaVersion", "SchemaVersion"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["service", "Service"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serviceAttributes", "ServiceAttributes"]
            inspectorServiceAttributesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["assetType", "AssetType"]
            assetTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["assetAttributes", "AssetAttributes"]
            assetAttributesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["title", "Title"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["recommendation", "Recommendation"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["severity", "Severity"]
            severityDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["numericSeverity", "NumericSeverity"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["confidence", "Confidence"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["indicatorOfCompromise", "IndicatorOfCompromise"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["attributes", "Attributes"]
            (JD.list attributeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["userAttributes", "UserAttributes"]
            (JD.list attributeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["updatedAt", "UpdatedAt"]
            JDX.datetime
        )
        




findingToString : Finding -> String -- List (String, String)
findingToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "schemaVersion" "" -- val.schemaVersion
        
    --     |> Dict.insert
    --         "service" "" -- val.service
        
    --     |> Dict.insert
    --         "serviceAttributes" "" -- val.serviceAttributes
        
    --     |> Dict.insert
    --         "assetType" "" -- val.assetType
        
    --     |> Dict.insert
    --         "assetAttributes" "" -- val.assetAttributes
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "title" "" -- val.title
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "recommendation" "" -- val.recommendation
        
    --     |> Dict.insert
    --         "severity" "" -- val.severity
        
    --     |> Dict.insert
    --         "numericSeverity" "" -- val.numericSeverity
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.insert
    --         "indicatorOfCompromise" "" -- val.indicatorOfCompromise
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.insert
    --         "userAttributes" "" -- val.userAttributes
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "updatedAt" "" -- val.updatedAt
        
    --     |> Dict.toList
    ""



{-| <p>This data type is used as a request parameter in the <a>ListFindings</a> action.</p>
-}
type alias FindingFilter =
    { agentIds : Maybe (List String)
    , autoScalingGroups : Maybe (List String)
    , ruleNames : Maybe (List String)
    , severities : Maybe (List Severity)
    , rulesPackageArns : Maybe (List String)
    , attributes : Maybe (List Attribute)
    , userAttributes : Maybe (List Attribute)
    , creationTimeRange : Maybe TimestampRange
    }



findingFilterDecoder : JD.Decoder FindingFilter
findingFilterDecoder =
    JD.succeed FindingFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["agentIds", "AgentIds"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["autoScalingGroups", "AutoScalingGroups"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ruleNames", "RuleNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["severities", "Severities"]
            (JD.list severityDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["rulesPackageArns", "RulesPackageArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attributes", "Attributes"]
            (JD.list attributeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["userAttributes", "UserAttributes"]
            (JD.list attributeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["creationTimeRange", "CreationTimeRange"]
            timestampRangeDecoder
        )
        




findingFilterToString : FindingFilter -> String -- List (String, String)
findingFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "agentIds" "" -- val.agentIds
        
    --     |> Dict.insert
    --         "autoScalingGroups" "" -- val.autoScalingGroups
        
    --     |> Dict.insert
    --         "ruleNames" "" -- val.ruleNames
        
    --     |> Dict.insert
    --         "severities" "" -- val.severities
        
    --     |> Dict.insert
    --         "rulesPackageArns" "" -- val.rulesPackageArns
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.insert
    --         "userAttributes" "" -- val.userAttributes
        
    --     |> Dict.insert
    --         "creationTimeRange" "" -- val.creationTimeRange
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getAssessmentReport
-}
type alias GetAssessmentReportResponse =
    { status : ReportStatus
    , url : Maybe String
    }



getAssessmentReportResponseDecoder : JD.Decoder GetAssessmentReportResponse
getAssessmentReportResponseDecoder =
    JD.succeed GetAssessmentReportResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["status", "Status"]
            reportStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["url", "Url"]
            JD.string
        )
        




getAssessmentReportResponseToString : GetAssessmentReportResponse -> String -- List (String, String)
getAssessmentReportResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "url" "" -- val.url
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getExclusionsPreview
-}
type alias GetExclusionsPreviewResponse =
    { previewStatus : PreviewStatus
    , exclusionPreviews : Maybe (List ExclusionPreview)
    , nextToken : Maybe String
    }



getExclusionsPreviewResponseDecoder : JD.Decoder GetExclusionsPreviewResponse
getExclusionsPreviewResponseDecoder =
    JD.succeed GetExclusionsPreviewResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["previewStatus", "PreviewStatus"]
            previewStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["exclusionPreviews", "ExclusionPreviews"]
            (JD.list exclusionPreviewDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




getExclusionsPreviewResponseToString : GetExclusionsPreviewResponse -> String -- List (String, String)
getExclusionsPreviewResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "previewStatus" "" -- val.previewStatus
        
    --     |> Dict.insert
    --         "exclusionPreviews" "" -- val.exclusionPreviews
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getTelemetryMetadata
-}
type alias GetTelemetryMetadataResponse =
    { telemetryMetadata : (List TelemetryMetadata)
    }



getTelemetryMetadataResponseDecoder : JD.Decoder GetTelemetryMetadataResponse
getTelemetryMetadataResponseDecoder =
    JD.succeed GetTelemetryMetadataResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["telemetryMetadata", "TelemetryMetadata"]
            (JD.list telemetryMetadataDecoder)
        )
        




getTelemetryMetadataResponseToString : GetTelemetryMetadataResponse -> String -- List (String, String)
getTelemetryMetadataResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "telemetryMetadata" "" -- val.telemetryMetadata
        
    --     |> Dict.toList
    ""



{-| One of

* `InspectorEvent_ASSESSMENT_RUN_STARTED`
* `InspectorEvent_ASSESSMENT_RUN_COMPLETED`
* `InspectorEvent_ASSESSMENT_RUN_STATE_CHANGED`
* `InspectorEvent_FINDING_REPORTED`
* `InspectorEvent_OTHER`

-}
type InspectorEvent
    = InspectorEvent_ASSESSMENT_RUN_STARTED
    | InspectorEvent_ASSESSMENT_RUN_COMPLETED
    | InspectorEvent_ASSESSMENT_RUN_STATE_CHANGED
    | InspectorEvent_FINDING_REPORTED
    | InspectorEvent_OTHER



inspectorEventDecoder : JD.Decoder InspectorEvent
inspectorEventDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASSESSMENT_RUN_STARTED" ->
                        JD.succeed InspectorEvent_ASSESSMENT_RUN_STARTED

                    "ASSESSMENT_RUN_COMPLETED" ->
                        JD.succeed InspectorEvent_ASSESSMENT_RUN_COMPLETED

                    "ASSESSMENT_RUN_STATE_CHANGED" ->
                        JD.succeed InspectorEvent_ASSESSMENT_RUN_STATE_CHANGED

                    "FINDING_REPORTED" ->
                        JD.succeed InspectorEvent_FINDING_REPORTED

                    "OTHER" ->
                        JD.succeed InspectorEvent_OTHER


                    _ ->
                        JD.fail "bad thing"
            )




inspectorEventToString : InspectorEvent -> String
inspectorEventToString val =
    case val of
        InspectorEvent_ASSESSMENT_RUN_STARTED ->
            "ASSESSMENT_RUN_STARTED"

        InspectorEvent_ASSESSMENT_RUN_COMPLETED ->
            "ASSESSMENT_RUN_COMPLETED"

        InspectorEvent_ASSESSMENT_RUN_STATE_CHANGED ->
            "ASSESSMENT_RUN_STATE_CHANGED"

        InspectorEvent_FINDING_REPORTED ->
            "FINDING_REPORTED"

        InspectorEvent_OTHER ->
            "OTHER"




{-| <p>This data type is used in the <a>Finding</a> data type.</p>
-}
type alias InspectorServiceAttributes =
    { schemaVersion : Int
    , assessmentRunArn : Maybe String
    , rulesPackageArn : Maybe String
    }



inspectorServiceAttributesDecoder : JD.Decoder InspectorServiceAttributes
inspectorServiceAttributesDecoder =
    JD.succeed InspectorServiceAttributes
        
        |> JDP.custom (AWS.Core.Decode.required
            ["schemaVersion", "SchemaVersion"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["assessmentRunArn", "AssessmentRunArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["rulesPackageArn", "RulesPackageArn"]
            JD.string
        )
        




inspectorServiceAttributesToString : InspectorServiceAttributes -> String -- List (String, String)
inspectorServiceAttributesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "schemaVersion" "" -- val.schemaVersion
        
    --     |> Dict.insert
    --         "assessmentRunArn" "" -- val.assessmentRunArn
        
    --     |> Dict.insert
    --         "rulesPackageArn" "" -- val.rulesPackageArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listAssessmentRunAgents
-}
type alias ListAssessmentRunAgentsResponse =
    { assessmentRunAgents : (List AssessmentRunAgent)
    , nextToken : Maybe String
    }



listAssessmentRunAgentsResponseDecoder : JD.Decoder ListAssessmentRunAgentsResponse
listAssessmentRunAgentsResponseDecoder =
    JD.succeed ListAssessmentRunAgentsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["assessmentRunAgents", "AssessmentRunAgents"]
            (JD.list assessmentRunAgentDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listAssessmentRunAgentsResponseToString : ListAssessmentRunAgentsResponse -> String -- List (String, String)
listAssessmentRunAgentsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "assessmentRunAgents" "" -- val.assessmentRunAgents
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listAssessmentRuns
-}
type alias ListAssessmentRunsResponse =
    { assessmentRunArns : (List String)
    , nextToken : Maybe String
    }



listAssessmentRunsResponseDecoder : JD.Decoder ListAssessmentRunsResponse
listAssessmentRunsResponseDecoder =
    JD.succeed ListAssessmentRunsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["assessmentRunArns", "AssessmentRunArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listAssessmentRunsResponseToString : ListAssessmentRunsResponse -> String -- List (String, String)
listAssessmentRunsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "assessmentRunArns" "" -- val.assessmentRunArns
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listAssessmentTargets
-}
type alias ListAssessmentTargetsResponse =
    { assessmentTargetArns : (List String)
    , nextToken : Maybe String
    }



listAssessmentTargetsResponseDecoder : JD.Decoder ListAssessmentTargetsResponse
listAssessmentTargetsResponseDecoder =
    JD.succeed ListAssessmentTargetsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["assessmentTargetArns", "AssessmentTargetArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listAssessmentTargetsResponseToString : ListAssessmentTargetsResponse -> String -- List (String, String)
listAssessmentTargetsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "assessmentTargetArns" "" -- val.assessmentTargetArns
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listAssessmentTemplates
-}
type alias ListAssessmentTemplatesResponse =
    { assessmentTemplateArns : (List String)
    , nextToken : Maybe String
    }



listAssessmentTemplatesResponseDecoder : JD.Decoder ListAssessmentTemplatesResponse
listAssessmentTemplatesResponseDecoder =
    JD.succeed ListAssessmentTemplatesResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["assessmentTemplateArns", "AssessmentTemplateArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listAssessmentTemplatesResponseToString : ListAssessmentTemplatesResponse -> String -- List (String, String)
listAssessmentTemplatesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "assessmentTemplateArns" "" -- val.assessmentTemplateArns
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listEventSubscriptions
-}
type alias ListEventSubscriptionsResponse =
    { subscriptions : (List Subscription)
    , nextToken : Maybe String
    }



listEventSubscriptionsResponseDecoder : JD.Decoder ListEventSubscriptionsResponse
listEventSubscriptionsResponseDecoder =
    JD.succeed ListEventSubscriptionsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["subscriptions", "Subscriptions"]
            (JD.list subscriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listEventSubscriptionsResponseToString : ListEventSubscriptionsResponse -> String -- List (String, String)
listEventSubscriptionsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subscriptions" "" -- val.subscriptions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listExclusions
-}
type alias ListExclusionsResponse =
    { exclusionArns : (List String)
    , nextToken : Maybe String
    }



listExclusionsResponseDecoder : JD.Decoder ListExclusionsResponse
listExclusionsResponseDecoder =
    JD.succeed ListExclusionsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["exclusionArns", "ExclusionArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listExclusionsResponseToString : ListExclusionsResponse -> String -- List (String, String)
listExclusionsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "exclusionArns" "" -- val.exclusionArns
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listFindings
-}
type alias ListFindingsResponse =
    { findingArns : (List String)
    , nextToken : Maybe String
    }



listFindingsResponseDecoder : JD.Decoder ListFindingsResponse
listFindingsResponseDecoder =
    JD.succeed ListFindingsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["findingArns", "FindingArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listFindingsResponseToString : ListFindingsResponse -> String -- List (String, String)
listFindingsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "findingArns" "" -- val.findingArns
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listRulesPackages
-}
type alias ListRulesPackagesResponse =
    { rulesPackageArns : (List String)
    , nextToken : Maybe String
    }



listRulesPackagesResponseDecoder : JD.Decoder ListRulesPackagesResponse
listRulesPackagesResponseDecoder =
    JD.succeed ListRulesPackagesResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["rulesPackageArns", "RulesPackageArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listRulesPackagesResponseToString : ListRulesPackagesResponse -> String -- List (String, String)
listRulesPackagesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "rulesPackageArns" "" -- val.rulesPackageArns
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { tags : (List Tag)
    }



listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JD.succeed ListTagsForResourceResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




listTagsForResourceResponseToString : ListTagsForResourceResponse -> String -- List (String, String)
listTagsForResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| One of

* `Locale_EN_US`

-}
type Locale
    = Locale_EN_US



localeDecoder : JD.Decoder Locale
localeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EN_US" ->
                        JD.succeed Locale_EN_US


                    _ ->
                        JD.fail "bad thing"
            )




localeToString : Locale -> String
localeToString val =
    case val of
        Locale_EN_US ->
            "EN_US"




{-| <p>Contains information about the network interfaces interacting with an EC2 instance. This data type is used as one of the elements of the <a>AssetAttributes</a> data type.</p>
-}
type alias NetworkInterface =
    { networkInterfaceId : Maybe String
    , subnetId : Maybe String
    , vpcId : Maybe String
    , privateDnsName : Maybe String
    , privateIpAddress : Maybe String
    , privateIpAddresses : Maybe (List PrivateIp)
    , publicDnsName : Maybe String
    , publicIp : Maybe String
    , ipv6Addresses : Maybe (List String)
    , securityGroups : Maybe (List SecurityGroup)
    }



networkInterfaceDecoder : JD.Decoder NetworkInterface
networkInterfaceDecoder =
    JD.succeed NetworkInterface
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["networkInterfaceId", "NetworkInterfaceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["subnetId", "SubnetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vpcId", "VpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["privateDnsName", "PrivateDnsName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["privateIpAddress", "PrivateIpAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["privateIpAddresses", "PrivateIpAddresses"]
            (JD.list privateIpDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["publicDnsName", "PublicDnsName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["publicIp", "PublicIp"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ipv6Addresses", "Ipv6Addresses"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["securityGroups", "SecurityGroups"]
            (JD.list securityGroupDecoder)
        )
        




networkInterfaceToString : NetworkInterface -> String -- List (String, String)
networkInterfaceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "networkInterfaceId" "" -- val.networkInterfaceId
        
    --     |> Dict.insert
    --         "subnetId" "" -- val.subnetId
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "privateDnsName" "" -- val.privateDnsName
        
    --     |> Dict.insert
    --         "privateIpAddress" "" -- val.privateIpAddress
        
    --     |> Dict.insert
    --         "privateIpAddresses" "" -- val.privateIpAddresses
        
    --     |> Dict.insert
    --         "publicDnsName" "" -- val.publicDnsName
        
    --     |> Dict.insert
    --         "publicIp" "" -- val.publicIp
        
    --     |> Dict.insert
    --         "ipv6Addresses" "" -- val.ipv6Addresses
        
    --     |> Dict.insert
    --         "securityGroups" "" -- val.securityGroups
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from previewAgents
-}
type alias PreviewAgentsResponse =
    { agentPreviews : (List AgentPreview)
    , nextToken : Maybe String
    }



previewAgentsResponseDecoder : JD.Decoder PreviewAgentsResponse
previewAgentsResponseDecoder =
    JD.succeed PreviewAgentsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["agentPreviews", "AgentPreviews"]
            (JD.list agentPreviewDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




previewAgentsResponseToString : PreviewAgentsResponse -> String -- List (String, String)
previewAgentsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "agentPreviews" "" -- val.agentPreviews
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| One of

* `PreviewStatus_WORK_IN_PROGRESS`
* `PreviewStatus_COMPLETED`

-}
type PreviewStatus
    = PreviewStatus_WORK_IN_PROGRESS
    | PreviewStatus_COMPLETED



previewStatusDecoder : JD.Decoder PreviewStatus
previewStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "WORK_IN_PROGRESS" ->
                        JD.succeed PreviewStatus_WORK_IN_PROGRESS

                    "COMPLETED" ->
                        JD.succeed PreviewStatus_COMPLETED


                    _ ->
                        JD.fail "bad thing"
            )




previewStatusToString : PreviewStatus -> String
previewStatusToString val =
    case val of
        PreviewStatus_WORK_IN_PROGRESS ->
            "WORK_IN_PROGRESS"

        PreviewStatus_COMPLETED ->
            "COMPLETED"




{-| <p>Contains information about a private IP address associated with a network interface. This data type is used as a response element in the <a>DescribeFindings</a> action.</p>
-}
type alias PrivateIp =
    { privateDnsName : Maybe String
    , privateIpAddress : Maybe String
    }



privateIpDecoder : JD.Decoder PrivateIp
privateIpDecoder =
    JD.succeed PrivateIp
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["privateDnsName", "PrivateDnsName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["privateIpAddress", "PrivateIpAddress"]
            JD.string
        )
        




privateIpToString : PrivateIp -> String -- List (String, String)
privateIpToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "privateDnsName" "" -- val.privateDnsName
        
    --     |> Dict.insert
    --         "privateIpAddress" "" -- val.privateIpAddress
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from removeAttributesFromFindings
-}
type alias RemoveAttributesFromFindingsResponse =
    { failedItems : (Dict String FailedItemDetails)
    }



removeAttributesFromFindingsResponseDecoder : JD.Decoder RemoveAttributesFromFindingsResponse
removeAttributesFromFindingsResponseDecoder =
    JD.succeed RemoveAttributesFromFindingsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["failedItems", "FailedItems"]
            (AWS.Core.Decode.dict failedItemDetailsDecoder)
        )
        




removeAttributesFromFindingsResponseToString : RemoveAttributesFromFindingsResponse -> String -- List (String, String)
removeAttributesFromFindingsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedItems" "" -- val.failedItems
        
    --     |> Dict.toList
    ""



{-| One of

* `ReportFileFormat_HTML`
* `ReportFileFormat_PDF`

-}
type ReportFileFormat
    = ReportFileFormat_HTML
    | ReportFileFormat_PDF



reportFileFormatDecoder : JD.Decoder ReportFileFormat
reportFileFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HTML" ->
                        JD.succeed ReportFileFormat_HTML

                    "PDF" ->
                        JD.succeed ReportFileFormat_PDF


                    _ ->
                        JD.fail "bad thing"
            )




reportFileFormatToString : ReportFileFormat -> String
reportFileFormatToString val =
    case val of
        ReportFileFormat_HTML ->
            "HTML"

        ReportFileFormat_PDF ->
            "PDF"




{-| One of

* `ReportStatus_WORK_IN_PROGRESS`
* `ReportStatus_FAILED`
* `ReportStatus_COMPLETED`

-}
type ReportStatus
    = ReportStatus_WORK_IN_PROGRESS
    | ReportStatus_FAILED
    | ReportStatus_COMPLETED



reportStatusDecoder : JD.Decoder ReportStatus
reportStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "WORK_IN_PROGRESS" ->
                        JD.succeed ReportStatus_WORK_IN_PROGRESS

                    "FAILED" ->
                        JD.succeed ReportStatus_FAILED

                    "COMPLETED" ->
                        JD.succeed ReportStatus_COMPLETED


                    _ ->
                        JD.fail "bad thing"
            )




reportStatusToString : ReportStatus -> String
reportStatusToString val =
    case val of
        ReportStatus_WORK_IN_PROGRESS ->
            "WORK_IN_PROGRESS"

        ReportStatus_FAILED ->
            "FAILED"

        ReportStatus_COMPLETED ->
            "COMPLETED"




{-| One of

* `ReportType_FINDING`
* `ReportType_FULL`

-}
type ReportType
    = ReportType_FINDING
    | ReportType_FULL



reportTypeDecoder : JD.Decoder ReportType
reportTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FINDING" ->
                        JD.succeed ReportType_FINDING

                    "FULL" ->
                        JD.succeed ReportType_FULL


                    _ ->
                        JD.fail "bad thing"
            )




reportTypeToString : ReportType -> String
reportTypeToString val =
    case val of
        ReportType_FINDING ->
            "FINDING"

        ReportType_FULL ->
            "FULL"




{-| <p>Contains information about a resource group. The resource group defines a set of tags that, when queried, identify the AWS resources that make up the assessment target. This data type is used as the response element in the <a>DescribeResourceGroups</a> action.</p>
-}
type alias ResourceGroup =
    { arn : String
    , tags : (List ResourceGroupTag)
    , createdAt : Posix
    }



resourceGroupDecoder : JD.Decoder ResourceGroup
resourceGroupDecoder =
    JD.succeed ResourceGroup
        
        |> JDP.custom (AWS.Core.Decode.required
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["tags", "Tags"]
            (JD.list resourceGroupTagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        




resourceGroupToString : ResourceGroup -> String -- List (String, String)
resourceGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.toList
    ""



{-| <p>This data type is used as one of the elements of the <a>ResourceGroup</a> data type.</p>
-}
type alias ResourceGroupTag =
    { key : String
    , value : Maybe String
    }



resourceGroupTagDecoder : JD.Decoder ResourceGroupTag
resourceGroupTagDecoder =
    JD.succeed ResourceGroupTag
        
        |> JDP.custom (AWS.Core.Decode.required
            ["key", "Key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["value", "Value"]
            JD.string
        )
        




resourceGroupTagToString : ResourceGroupTag -> String -- List (String, String)
resourceGroupTagToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about an Amazon Inspector rules package. This data type is used as the response element in the <a>DescribeRulesPackages</a> action.</p>
-}
type alias RulesPackage =
    { arn : String
    , name : String
    , version : String
    , provider : String
    , description : Maybe String
    }



rulesPackageDecoder : JD.Decoder RulesPackage
rulesPackageDecoder =
    JD.succeed RulesPackage
        
        |> JDP.custom (AWS.Core.Decode.required
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["version", "Version"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["provider", "Provider"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        




rulesPackageToString : RulesPackage -> String -- List (String, String)
rulesPackageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "provider" "" -- val.provider
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.toList
    ""



{-| <p>This data type contains key-value pairs that identify various Amazon resources.</p>
-}
type alias Scope =
    { key : Maybe ScopeType
    , value : Maybe String
    }



scopeDecoder : JD.Decoder Scope
scopeDecoder =
    JD.succeed Scope
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["key", "Key"]
            scopeTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["value", "Value"]
            JD.string
        )
        




scopeToString : Scope -> String -- List (String, String)
scopeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| One of

* `ScopeType_INSTANCE_ID`
* `ScopeType_RULES_PACKAGE_ARN`

-}
type ScopeType
    = ScopeType_INSTANCE_ID
    | ScopeType_RULES_PACKAGE_ARN



scopeTypeDecoder : JD.Decoder ScopeType
scopeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INSTANCE_ID" ->
                        JD.succeed ScopeType_INSTANCE_ID

                    "RULES_PACKAGE_ARN" ->
                        JD.succeed ScopeType_RULES_PACKAGE_ARN


                    _ ->
                        JD.fail "bad thing"
            )




scopeTypeToString : ScopeType -> String
scopeTypeToString val =
    case val of
        ScopeType_INSTANCE_ID ->
            "INSTANCE_ID"

        ScopeType_RULES_PACKAGE_ARN ->
            "RULES_PACKAGE_ARN"




{-| <p>Contains information about a security group associated with a network interface. This data type is used as one of the elements of the <a>NetworkInterface</a> data type.</p>
-}
type alias SecurityGroup =
    { groupName : Maybe String
    , groupId : Maybe String
    }



securityGroupDecoder : JD.Decoder SecurityGroup
securityGroupDecoder =
    JD.succeed SecurityGroup
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["groupName", "GroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["groupId", "GroupId"]
            JD.string
        )
        




securityGroupToString : SecurityGroup -> String -- List (String, String)
securityGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "groupName" "" -- val.groupName
        
    --     |> Dict.insert
    --         "groupId" "" -- val.groupId
        
    --     |> Dict.toList
    ""



{-| One of

* `Severity_Low`
* `Severity_Medium`
* `Severity_High`
* `Severity_Informational`
* `Severity_Undefined`

-}
type Severity
    = Severity_Low
    | Severity_Medium
    | Severity_High
    | Severity_Informational
    | Severity_Undefined



severityDecoder : JD.Decoder Severity
severityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Low" ->
                        JD.succeed Severity_Low

                    "Medium" ->
                        JD.succeed Severity_Medium

                    "High" ->
                        JD.succeed Severity_High

                    "Informational" ->
                        JD.succeed Severity_Informational

                    "Undefined" ->
                        JD.succeed Severity_Undefined


                    _ ->
                        JD.fail "bad thing"
            )




severityToString : Severity -> String
severityToString val =
    case val of
        Severity_Low ->
            "Low"

        Severity_Medium ->
            "Medium"

        Severity_High ->
            "High"

        Severity_Informational ->
            "Informational"

        Severity_Undefined ->
            "Undefined"




{-| Type of HTTP response from startAssessmentRun
-}
type alias StartAssessmentRunResponse =
    { assessmentRunArn : String
    }



startAssessmentRunResponseDecoder : JD.Decoder StartAssessmentRunResponse
startAssessmentRunResponseDecoder =
    JD.succeed StartAssessmentRunResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["assessmentRunArn", "AssessmentRunArn"]
            JD.string
        )
        




startAssessmentRunResponseToString : StartAssessmentRunResponse -> String -- List (String, String)
startAssessmentRunResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "assessmentRunArn" "" -- val.assessmentRunArn
        
    --     |> Dict.toList
    ""



{-| One of

* `StopAction_START_EVALUATION`
* `StopAction_SKIP_EVALUATION`

-}
type StopAction
    = StopAction_START_EVALUATION
    | StopAction_SKIP_EVALUATION



stopActionDecoder : JD.Decoder StopAction
stopActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "START_EVALUATION" ->
                        JD.succeed StopAction_START_EVALUATION

                    "SKIP_EVALUATION" ->
                        JD.succeed StopAction_SKIP_EVALUATION


                    _ ->
                        JD.fail "bad thing"
            )




stopActionToString : StopAction -> String
stopActionToString val =
    case val of
        StopAction_START_EVALUATION ->
            "START_EVALUATION"

        StopAction_SKIP_EVALUATION ->
            "SKIP_EVALUATION"




{-| <p>This data type is used as a response element in the <a>ListEventSubscriptions</a> action.</p>
-}
type alias Subscription =
    { resourceArn : String
    , topicArn : String
    , eventSubscriptions : (List EventSubscription)
    }



subscriptionDecoder : JD.Decoder Subscription
subscriptionDecoder =
    JD.succeed Subscription
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourceArn", "ResourceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["topicArn", "TopicArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["eventSubscriptions", "EventSubscriptions"]
            (JD.list eventSubscriptionDecoder)
        )
        




subscriptionToString : Subscription -> String -- List (String, String)
subscriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceArn" "" -- val.resourceArn
        
    --     |> Dict.insert
    --         "topicArn" "" -- val.topicArn
        
    --     |> Dict.insert
    --         "eventSubscriptions" "" -- val.eventSubscriptions
        
    --     |> Dict.toList
    ""



{-| <p>A key and value pair. This data type is used as a request parameter in the <a>SetTagsForResource</a> action and a response element in the <a>ListTagsForResource</a> action.</p>
-}
type alias Tag =
    { key : String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.required
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



{-| <p>The metadata about the Amazon Inspector application data metrics collected by the agent. This data type is used as the response element in the <a>GetTelemetryMetadata</a> action.</p>
-}
type alias TelemetryMetadata =
    { messageType : String
    , count : Int
    , dataSize : Maybe Int
    }



telemetryMetadataDecoder : JD.Decoder TelemetryMetadata
telemetryMetadataDecoder =
    JD.succeed TelemetryMetadata
        
        |> JDP.custom (AWS.Core.Decode.required
            ["messageType", "MessageType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["count", "Count"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["dataSize", "DataSize"]
            JD.int
        )
        




telemetryMetadataToString : TelemetryMetadata -> String -- List (String, String)
telemetryMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "messageType" "" -- val.messageType
        
    --     |> Dict.insert
    --         "count" "" -- val.count
        
    --     |> Dict.insert
    --         "dataSize" "" -- val.dataSize
        
    --     |> Dict.toList
    ""



{-| <p>This data type is used in the <a>AssessmentRunFilter</a> data type.</p>
-}
type alias TimestampRange =
    { beginDate : Maybe Posix
    , endDate : Maybe Posix
    }



timestampRangeDecoder : JD.Decoder TimestampRange
timestampRangeDecoder =
    JD.succeed TimestampRange
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["beginDate", "BeginDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["endDate", "EndDate"]
            JDX.datetime
        )
        




timestampRangeToString : TimestampRange -> String -- List (String, String)
timestampRangeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "beginDate" "" -- val.beginDate
        
    --     |> Dict.insert
    --         "endDate" "" -- val.endDate
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias AddAttributesToFindingsRequest =
    { findingArns : (List String)
    , attributes : (List Attribute)
    }


{-| undefined
-}
type alias CreateAssessmentTargetRequest =
    { assessmentTargetName : String
    , resourceGroupArn : Maybe String
    }


{-| undefined
-}
type alias CreateAssessmentTemplateRequest =
    { assessmentTargetArn : String
    , assessmentTemplateName : String
    , durationInSeconds : Int
    , rulesPackageArns : (List String)
    , userAttributesForFindings : Maybe (List Attribute)
    }


{-| undefined
-}
type alias CreateExclusionsPreviewRequest =
    { assessmentTemplateArn : String
    }


{-| undefined
-}
type alias CreateResourceGroupRequest =
    { resourceGroupTags : (List ResourceGroupTag)
    }


{-| undefined
-}
type alias DeleteAssessmentRunRequest =
    { assessmentRunArn : String
    }


{-| undefined
-}
type alias DeleteAssessmentTargetRequest =
    { assessmentTargetArn : String
    }


{-| undefined
-}
type alias DeleteAssessmentTemplateRequest =
    { assessmentTemplateArn : String
    }


{-| undefined
-}
type alias DescribeAssessmentRunsRequest =
    { assessmentRunArns : (List String)
    }


{-| undefined
-}
type alias DescribeAssessmentTargetsRequest =
    { assessmentTargetArns : (List String)
    }


{-| undefined
-}
type alias DescribeAssessmentTemplatesRequest =
    { assessmentTemplateArns : (List String)
    }


{-| undefined
-}
type alias DescribeExclusionsRequest =
    { exclusionArns : (List String)
    , locale : Maybe Locale
    }


{-| undefined
-}
type alias DescribeFindingsRequest =
    { findingArns : (List String)
    , locale : Maybe Locale
    }


{-| undefined
-}
type alias DescribeResourceGroupsRequest =
    { resourceGroupArns : (List String)
    }


{-| undefined
-}
type alias DescribeRulesPackagesRequest =
    { rulesPackageArns : (List String)
    , locale : Maybe Locale
    }


{-| undefined
-}
type alias GetAssessmentReportRequest =
    { assessmentRunArn : String
    , reportFileFormat : ReportFileFormat
    , reportType : ReportType
    }


{-| undefined
-}
type alias GetExclusionsPreviewRequest =
    { assessmentTemplateArn : String
    , previewToken : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , locale : Maybe Locale
    }


{-| undefined
-}
type alias GetTelemetryMetadataRequest =
    { assessmentRunArn : String
    }


{-| undefined
-}
type alias ListAssessmentRunAgentsRequest =
    { assessmentRunArn : String
    , filter : Maybe AgentFilter
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListAssessmentRunsRequest =
    { assessmentTemplateArns : Maybe (List String)
    , filter : Maybe AssessmentRunFilter
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListAssessmentTargetsRequest =
    { filter : Maybe AssessmentTargetFilter
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListAssessmentTemplatesRequest =
    { assessmentTargetArns : Maybe (List String)
    , filter : Maybe AssessmentTemplateFilter
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListEventSubscriptionsRequest =
    { resourceArn : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListExclusionsRequest =
    { assessmentRunArn : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListFindingsRequest =
    { assessmentRunArns : Maybe (List String)
    , filter : Maybe FindingFilter
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListRulesPackagesRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListTagsForResourceRequest =
    { resourceArn : String
    }


{-| undefined
-}
type alias PreviewAgentsRequest =
    { previewAgentsArn : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias RegisterCrossAccountAccessRoleRequest =
    { roleArn : String
    }


{-| undefined
-}
type alias RemoveAttributesFromFindingsRequest =
    { findingArns : (List String)
    , attributeKeys : (List String)
    }


{-| undefined
-}
type alias SetTagsForResourceRequest =
    { resourceArn : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias StartAssessmentRunRequest =
    { assessmentTemplateArn : String
    , assessmentRunName : Maybe String
    }


{-| undefined
-}
type alias StopAssessmentRunRequest =
    { assessmentRunArn : String
    , stopAction : Maybe StopAction
    }


{-| undefined
-}
type alias SubscribeToEventRequest =
    { resourceArn : String
    , event : InspectorEvent
    , topicArn : String
    }


{-| undefined
-}
type alias UnsubscribeFromEventRequest =
    { resourceArn : String
    , event : InspectorEvent
    , topicArn : String
    }


{-| undefined
-}
type alias UpdateAssessmentTargetRequest =
    { assessmentTargetArn : String
    , assessmentTargetName : String
    , resourceGroupArn : Maybe String
    }






addAttributesToFindingsRequestEncoder : AddAttributesToFindingsRequest -> JE.Value
addAttributesToFindingsRequestEncoder data =
    []
        
        
        |> (::) ("findingArns", data.findingArns |> (JE.list (JE.string)))
        
        
        
        |> (::) ("attributes", data.attributes |> (JE.list (attributeEncoder)))
        
        
        |> JE.object






addAttributesToFindingsResponseEncoder : AddAttributesToFindingsResponse -> JE.Value
addAttributesToFindingsResponseEncoder data =
    []
        
        
        |> (::) ("failedItems", data.failedItems |> (JE.dict identity (failedItemDetailsEncoder)))
        
        
        |> JE.object






agentFilterEncoder : AgentFilter -> JE.Value
agentFilterEncoder data =
    []
        
        
        |> (::) ("agentHealths", data.agentHealths |> (JE.list (agentHealthToString >> JE.string)))
        
        
        
        |> (::) ("agentHealthCodes", data.agentHealthCodes |> (JE.list (agentHealthCodeToString >> JE.string)))
        
        
        |> JE.object














agentPreviewEncoder : AgentPreview -> JE.Value
agentPreviewEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("hostname", data.hostname)
        
        
        
        |> (::) ("agentId", data.agentId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("autoScalingGroup", data.autoScalingGroup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (agentHealthToString >> JE.string)
            ("agentHealth", data.agentHealth)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("agentVersion", data.agentVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("operatingSystem", data.operatingSystem)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("kernelVersion", data.kernelVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ipv4Address", data.ipv4Address)
        
        
        |> JE.object






assessmentRunEncoder : AssessmentRun -> JE.Value
assessmentRunEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("assessmentTemplateArn", data.assessmentTemplateArn |> (JE.string))
        
        
        
        |> (::) ("state", data.state |> (assessmentRunStateToString >> JE.string))
        
        
        
        |> (::) ("durationInSeconds", data.durationInSeconds |> (JE.int))
        
        
        
        |> (::) ("rulesPackageArns", data.rulesPackageArns |> (JE.list (JE.string)))
        
        
        
        |> (::) ("userAttributesForFindings", data.userAttributesForFindings |> (JE.list (attributeEncoder)))
        
        
        
        |> (::) ("createdAt", data.createdAt |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("startedAt", data.startedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("completedAt", data.completedAt)
        
        
        
        |> (::) ("stateChangedAt", data.stateChangedAt |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("dataCollected", data.dataCollected |> (JE.bool))
        
        
        
        |> (::) ("stateChanges", data.stateChanges |> (JE.list (assessmentRunStateChangeEncoder)))
        
        
        
        |> (::) ("notifications", data.notifications |> (JE.list (assessmentRunNotificationEncoder)))
        
        
        
        |> (::) ("findingCounts", data.findingCounts |> (JE.dict identity (JE.int)))
        
        
        |> JE.object






assessmentRunAgentEncoder : AssessmentRunAgent -> JE.Value
assessmentRunAgentEncoder data =
    []
        
        
        |> (::) ("agentId", data.agentId |> (JE.string))
        
        
        
        |> (::) ("assessmentRunArn", data.assessmentRunArn |> (JE.string))
        
        
        
        |> (::) ("agentHealth", data.agentHealth |> (agentHealthToString >> JE.string))
        
        
        
        |> (::) ("agentHealthCode", data.agentHealthCode |> (agentHealthCodeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("agentHealthDetails", data.agentHealthDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("autoScalingGroup", data.autoScalingGroup)
        
        
        
        |> (::) ("telemetryMetadata", data.telemetryMetadata |> (JE.list (telemetryMetadataEncoder)))
        
        
        |> JE.object






assessmentRunFilterEncoder : AssessmentRunFilter -> JE.Value
assessmentRunFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("namePattern", data.namePattern)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (assessmentRunStateToString >> JE.string))
            ("states", data.states)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (durationRangeEncoder)
            ("durationRange", data.durationRange)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("rulesPackageArns", data.rulesPackageArns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (timestampRangeEncoder)
            ("startTimeRange", data.startTimeRange)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (timestampRangeEncoder)
            ("completionTimeRange", data.completionTimeRange)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (timestampRangeEncoder)
            ("stateChangeTimeRange", data.stateChangeTimeRange)
        
        
        |> JE.object






assessmentRunNotificationEncoder : AssessmentRunNotification -> JE.Value
assessmentRunNotificationEncoder data =
    []
        
        
        |> (::) ("date", data.date |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("event", data.event |> (inspectorEventToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> (::) ("error", data.error |> (JE.bool))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("snsTopicArn", data.snsTopicArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (assessmentRunNotificationSnsStatusCodeToString >> JE.string)
            ("snsPublishStatusCode", data.snsPublishStatusCode)
        
        
        |> JE.object














assessmentRunStateChangeEncoder : AssessmentRunStateChange -> JE.Value
assessmentRunStateChangeEncoder data =
    []
        
        
        |> (::) ("stateChangedAt", data.stateChangedAt |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("state", data.state |> (assessmentRunStateToString >> JE.string))
        
        
        |> JE.object






assessmentTargetEncoder : AssessmentTarget -> JE.Value
assessmentTargetEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("resourceGroupArn", data.resourceGroupArn)
        
        
        
        |> (::) ("createdAt", data.createdAt |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("updatedAt", data.updatedAt |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






assessmentTargetFilterEncoder : AssessmentTargetFilter -> JE.Value
assessmentTargetFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("assessmentTargetNamePattern", data.assessmentTargetNamePattern)
        
        
        |> JE.object






assessmentTemplateEncoder : AssessmentTemplate -> JE.Value
assessmentTemplateEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("assessmentTargetArn", data.assessmentTargetArn |> (JE.string))
        
        
        
        |> (::) ("durationInSeconds", data.durationInSeconds |> (JE.int))
        
        
        
        |> (::) ("rulesPackageArns", data.rulesPackageArns |> (JE.list (JE.string)))
        
        
        
        |> (::) ("userAttributesForFindings", data.userAttributesForFindings |> (JE.list (attributeEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lastAssessmentRunArn", data.lastAssessmentRunArn)
        
        
        
        |> (::) ("assessmentRunCount", data.assessmentRunCount |> (JE.int))
        
        
        
        |> (::) ("createdAt", data.createdAt |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






assessmentTemplateFilterEncoder : AssessmentTemplateFilter -> JE.Value
assessmentTemplateFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("namePattern", data.namePattern)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (durationRangeEncoder)
            ("durationRange", data.durationRange)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("rulesPackageArns", data.rulesPackageArns)
        
        
        |> JE.object






assetAttributesEncoder : AssetAttributes -> JE.Value
assetAttributesEncoder data =
    []
        
        
        |> (::) ("schemaVersion", data.schemaVersion |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("agentId", data.agentId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("autoScalingGroup", data.autoScalingGroup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("amiId", data.amiId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("hostname", data.hostname)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ipv4Addresses", data.ipv4Addresses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (networkInterfaceEncoder))
            ("networkInterfaces", data.networkInterfaces)
        
        
        |> JE.object










attributeEncoder : Attribute -> JE.Value
attributeEncoder data =
    []
        
        
        |> (::) ("key", data.key |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("value", data.value)
        
        
        |> JE.object






createAssessmentTargetRequestEncoder : CreateAssessmentTargetRequest -> JE.Value
createAssessmentTargetRequestEncoder data =
    []
        
        
        |> (::) ("assessmentTargetName", data.assessmentTargetName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("resourceGroupArn", data.resourceGroupArn)
        
        
        |> JE.object






createAssessmentTargetResponseEncoder : CreateAssessmentTargetResponse -> JE.Value
createAssessmentTargetResponseEncoder data =
    []
        
        
        |> (::) ("assessmentTargetArn", data.assessmentTargetArn |> (JE.string))
        
        
        |> JE.object






createAssessmentTemplateRequestEncoder : CreateAssessmentTemplateRequest -> JE.Value
createAssessmentTemplateRequestEncoder data =
    []
        
        
        |> (::) ("assessmentTargetArn", data.assessmentTargetArn |> (JE.string))
        
        
        
        |> (::) ("assessmentTemplateName", data.assessmentTemplateName |> (JE.string))
        
        
        
        |> (::) ("durationInSeconds", data.durationInSeconds |> (JE.int))
        
        
        
        |> (::) ("rulesPackageArns", data.rulesPackageArns |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attributeEncoder))
            ("userAttributesForFindings", data.userAttributesForFindings)
        
        
        |> JE.object






createAssessmentTemplateResponseEncoder : CreateAssessmentTemplateResponse -> JE.Value
createAssessmentTemplateResponseEncoder data =
    []
        
        
        |> (::) ("assessmentTemplateArn", data.assessmentTemplateArn |> (JE.string))
        
        
        |> JE.object






createExclusionsPreviewRequestEncoder : CreateExclusionsPreviewRequest -> JE.Value
createExclusionsPreviewRequestEncoder data =
    []
        
        
        |> (::) ("assessmentTemplateArn", data.assessmentTemplateArn |> (JE.string))
        
        
        |> JE.object






createExclusionsPreviewResponseEncoder : CreateExclusionsPreviewResponse -> JE.Value
createExclusionsPreviewResponseEncoder data =
    []
        
        
        |> (::) ("previewToken", data.previewToken |> (JE.string))
        
        
        |> JE.object






createResourceGroupRequestEncoder : CreateResourceGroupRequest -> JE.Value
createResourceGroupRequestEncoder data =
    []
        
        
        |> (::) ("resourceGroupTags", data.resourceGroupTags |> (JE.list (resourceGroupTagEncoder)))
        
        
        |> JE.object






createResourceGroupResponseEncoder : CreateResourceGroupResponse -> JE.Value
createResourceGroupResponseEncoder data =
    []
        
        
        |> (::) ("resourceGroupArn", data.resourceGroupArn |> (JE.string))
        
        
        |> JE.object






deleteAssessmentRunRequestEncoder : DeleteAssessmentRunRequest -> JE.Value
deleteAssessmentRunRequestEncoder data =
    []
        
        
        |> (::) ("assessmentRunArn", data.assessmentRunArn |> (JE.string))
        
        
        |> JE.object






deleteAssessmentTargetRequestEncoder : DeleteAssessmentTargetRequest -> JE.Value
deleteAssessmentTargetRequestEncoder data =
    []
        
        
        |> (::) ("assessmentTargetArn", data.assessmentTargetArn |> (JE.string))
        
        
        |> JE.object






deleteAssessmentTemplateRequestEncoder : DeleteAssessmentTemplateRequest -> JE.Value
deleteAssessmentTemplateRequestEncoder data =
    []
        
        
        |> (::) ("assessmentTemplateArn", data.assessmentTemplateArn |> (JE.string))
        
        
        |> JE.object






describeAssessmentRunsRequestEncoder : DescribeAssessmentRunsRequest -> JE.Value
describeAssessmentRunsRequestEncoder data =
    []
        
        
        |> (::) ("assessmentRunArns", data.assessmentRunArns |> (JE.list (JE.string)))
        
        
        |> JE.object






describeAssessmentRunsResponseEncoder : DescribeAssessmentRunsResponse -> JE.Value
describeAssessmentRunsResponseEncoder data =
    []
        
        
        |> (::) ("assessmentRuns", data.assessmentRuns |> (JE.list (assessmentRunEncoder)))
        
        
        
        |> (::) ("failedItems", data.failedItems |> (JE.dict identity (failedItemDetailsEncoder)))
        
        
        |> JE.object






describeAssessmentTargetsRequestEncoder : DescribeAssessmentTargetsRequest -> JE.Value
describeAssessmentTargetsRequestEncoder data =
    []
        
        
        |> (::) ("assessmentTargetArns", data.assessmentTargetArns |> (JE.list (JE.string)))
        
        
        |> JE.object






describeAssessmentTargetsResponseEncoder : DescribeAssessmentTargetsResponse -> JE.Value
describeAssessmentTargetsResponseEncoder data =
    []
        
        
        |> (::) ("assessmentTargets", data.assessmentTargets |> (JE.list (assessmentTargetEncoder)))
        
        
        
        |> (::) ("failedItems", data.failedItems |> (JE.dict identity (failedItemDetailsEncoder)))
        
        
        |> JE.object






describeAssessmentTemplatesRequestEncoder : DescribeAssessmentTemplatesRequest -> JE.Value
describeAssessmentTemplatesRequestEncoder data =
    []
        
        
        |> (::) ("assessmentTemplateArns", data.assessmentTemplateArns |> (JE.list (JE.string)))
        
        
        |> JE.object






describeAssessmentTemplatesResponseEncoder : DescribeAssessmentTemplatesResponse -> JE.Value
describeAssessmentTemplatesResponseEncoder data =
    []
        
        
        |> (::) ("assessmentTemplates", data.assessmentTemplates |> (JE.list (assessmentTemplateEncoder)))
        
        
        
        |> (::) ("failedItems", data.failedItems |> (JE.dict identity (failedItemDetailsEncoder)))
        
        
        |> JE.object






describeCrossAccountAccessRoleResponseEncoder : DescribeCrossAccountAccessRoleResponse -> JE.Value
describeCrossAccountAccessRoleResponseEncoder data =
    []
        
        
        |> (::) ("roleArn", data.roleArn |> (JE.string))
        
        
        
        |> (::) ("valid", data.valid |> (JE.bool))
        
        
        
        |> (::) ("registeredAt", data.registeredAt |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






describeExclusionsRequestEncoder : DescribeExclusionsRequest -> JE.Value
describeExclusionsRequestEncoder data =
    []
        
        
        |> (::) ("exclusionArns", data.exclusionArns |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (localeToString >> JE.string)
            ("locale", data.locale)
        
        
        |> JE.object






describeExclusionsResponseEncoder : DescribeExclusionsResponse -> JE.Value
describeExclusionsResponseEncoder data =
    []
        
        
        |> (::) ("exclusions", data.exclusions |> (JE.dict identity (exclusionEncoder)))
        
        
        
        |> (::) ("failedItems", data.failedItems |> (JE.dict identity (failedItemDetailsEncoder)))
        
        
        |> JE.object






describeFindingsRequestEncoder : DescribeFindingsRequest -> JE.Value
describeFindingsRequestEncoder data =
    []
        
        
        |> (::) ("findingArns", data.findingArns |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (localeToString >> JE.string)
            ("locale", data.locale)
        
        
        |> JE.object






describeFindingsResponseEncoder : DescribeFindingsResponse -> JE.Value
describeFindingsResponseEncoder data =
    []
        
        
        |> (::) ("findings", data.findings |> (JE.list (findingEncoder)))
        
        
        
        |> (::) ("failedItems", data.failedItems |> (JE.dict identity (failedItemDetailsEncoder)))
        
        
        |> JE.object






describeResourceGroupsRequestEncoder : DescribeResourceGroupsRequest -> JE.Value
describeResourceGroupsRequestEncoder data =
    []
        
        
        |> (::) ("resourceGroupArns", data.resourceGroupArns |> (JE.list (JE.string)))
        
        
        |> JE.object






describeResourceGroupsResponseEncoder : DescribeResourceGroupsResponse -> JE.Value
describeResourceGroupsResponseEncoder data =
    []
        
        
        |> (::) ("resourceGroups", data.resourceGroups |> (JE.list (resourceGroupEncoder)))
        
        
        
        |> (::) ("failedItems", data.failedItems |> (JE.dict identity (failedItemDetailsEncoder)))
        
        
        |> JE.object






describeRulesPackagesRequestEncoder : DescribeRulesPackagesRequest -> JE.Value
describeRulesPackagesRequestEncoder data =
    []
        
        
        |> (::) ("rulesPackageArns", data.rulesPackageArns |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (localeToString >> JE.string)
            ("locale", data.locale)
        
        
        |> JE.object






describeRulesPackagesResponseEncoder : DescribeRulesPackagesResponse -> JE.Value
describeRulesPackagesResponseEncoder data =
    []
        
        
        |> (::) ("rulesPackages", data.rulesPackages |> (JE.list (rulesPackageEncoder)))
        
        
        
        |> (::) ("failedItems", data.failedItems |> (JE.dict identity (failedItemDetailsEncoder)))
        
        
        |> JE.object






durationRangeEncoder : DurationRange -> JE.Value
durationRangeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("minSeconds", data.minSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxSeconds", data.maxSeconds)
        
        
        |> JE.object






eventSubscriptionEncoder : EventSubscription -> JE.Value
eventSubscriptionEncoder data =
    []
        
        
        |> (::) ("event", data.event |> (inspectorEventToString >> JE.string))
        
        
        
        |> (::) ("subscribedAt", data.subscribedAt |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






exclusionEncoder : Exclusion -> JE.Value
exclusionEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> (::) ("title", data.title |> (JE.string))
        
        
        
        |> (::) ("description", data.description |> (JE.string))
        
        
        
        |> (::) ("recommendation", data.recommendation |> (JE.string))
        
        
        
        |> (::) ("scopes", data.scopes |> (JE.list (scopeEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attributeEncoder))
            ("attributes", data.attributes)
        
        
        |> JE.object






exclusionPreviewEncoder : ExclusionPreview -> JE.Value
exclusionPreviewEncoder data =
    []
        
        
        |> (::) ("title", data.title |> (JE.string))
        
        
        
        |> (::) ("description", data.description |> (JE.string))
        
        
        
        |> (::) ("recommendation", data.recommendation |> (JE.string))
        
        
        
        |> (::) ("scopes", data.scopes |> (JE.list (scopeEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attributeEncoder))
            ("attributes", data.attributes)
        
        
        |> JE.object






failedItemDetailsEncoder : FailedItemDetails -> JE.Value
failedItemDetailsEncoder data =
    []
        
        
        |> (::) ("failureCode", data.failureCode |> (failedItemErrorCodeToString >> JE.string))
        
        
        
        |> (::) ("retryable", data.retryable |> (JE.bool))
        
        
        |> JE.object










findingEncoder : Finding -> JE.Value
findingEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("schemaVersion", data.schemaVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("service", data.service)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (inspectorServiceAttributesEncoder)
            ("serviceAttributes", data.serviceAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (assetTypeToString >> JE.string)
            ("assetType", data.assetType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (assetAttributesEncoder)
            ("assetAttributes", data.assetAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("title", data.title)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("recommendation", data.recommendation)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (severityToString >> JE.string)
            ("severity", data.severity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("numericSeverity", data.numericSeverity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("confidence", data.confidence)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("indicatorOfCompromise", data.indicatorOfCompromise)
        
        
        
        |> (::) ("attributes", data.attributes |> (JE.list (attributeEncoder)))
        
        
        
        |> (::) ("userAttributes", data.userAttributes |> (JE.list (attributeEncoder)))
        
        
        
        |> (::) ("createdAt", data.createdAt |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("updatedAt", data.updatedAt |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






findingFilterEncoder : FindingFilter -> JE.Value
findingFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("agentIds", data.agentIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("autoScalingGroups", data.autoScalingGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ruleNames", data.ruleNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (severityToString >> JE.string))
            ("severities", data.severities)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("rulesPackageArns", data.rulesPackageArns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attributeEncoder))
            ("attributes", data.attributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attributeEncoder))
            ("userAttributes", data.userAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (timestampRangeEncoder)
            ("creationTimeRange", data.creationTimeRange)
        
        
        |> JE.object






getAssessmentReportRequestEncoder : GetAssessmentReportRequest -> JE.Value
getAssessmentReportRequestEncoder data =
    []
        
        
        |> (::) ("assessmentRunArn", data.assessmentRunArn |> (JE.string))
        
        
        
        |> (::) ("reportFileFormat", data.reportFileFormat |> (reportFileFormatToString >> JE.string))
        
        
        
        |> (::) ("reportType", data.reportType |> (reportTypeToString >> JE.string))
        
        
        |> JE.object






getAssessmentReportResponseEncoder : GetAssessmentReportResponse -> JE.Value
getAssessmentReportResponseEncoder data =
    []
        
        
        |> (::) ("status", data.status |> (reportStatusToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("url", data.url)
        
        
        |> JE.object






getExclusionsPreviewRequestEncoder : GetExclusionsPreviewRequest -> JE.Value
getExclusionsPreviewRequestEncoder data =
    []
        
        
        |> (::) ("assessmentTemplateArn", data.assessmentTemplateArn |> (JE.string))
        
        
        
        |> (::) ("previewToken", data.previewToken |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (localeToString >> JE.string)
            ("locale", data.locale)
        
        
        |> JE.object






getExclusionsPreviewResponseEncoder : GetExclusionsPreviewResponse -> JE.Value
getExclusionsPreviewResponseEncoder data =
    []
        
        
        |> (::) ("previewStatus", data.previewStatus |> (previewStatusToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (exclusionPreviewEncoder))
            ("exclusionPreviews", data.exclusionPreviews)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






getTelemetryMetadataRequestEncoder : GetTelemetryMetadataRequest -> JE.Value
getTelemetryMetadataRequestEncoder data =
    []
        
        
        |> (::) ("assessmentRunArn", data.assessmentRunArn |> (JE.string))
        
        
        |> JE.object






getTelemetryMetadataResponseEncoder : GetTelemetryMetadataResponse -> JE.Value
getTelemetryMetadataResponseEncoder data =
    []
        
        
        |> (::) ("telemetryMetadata", data.telemetryMetadata |> (JE.list (telemetryMetadataEncoder)))
        
        
        |> JE.object










inspectorServiceAttributesEncoder : InspectorServiceAttributes -> JE.Value
inspectorServiceAttributesEncoder data =
    []
        
        
        |> (::) ("schemaVersion", data.schemaVersion |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("assessmentRunArn", data.assessmentRunArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("rulesPackageArn", data.rulesPackageArn)
        
        
        |> JE.object






listAssessmentRunAgentsRequestEncoder : ListAssessmentRunAgentsRequest -> JE.Value
listAssessmentRunAgentsRequestEncoder data =
    []
        
        
        |> (::) ("assessmentRunArn", data.assessmentRunArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (agentFilterEncoder)
            ("filter", data.filter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listAssessmentRunAgentsResponseEncoder : ListAssessmentRunAgentsResponse -> JE.Value
listAssessmentRunAgentsResponseEncoder data =
    []
        
        
        |> (::) ("assessmentRunAgents", data.assessmentRunAgents |> (JE.list (assessmentRunAgentEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listAssessmentRunsRequestEncoder : ListAssessmentRunsRequest -> JE.Value
listAssessmentRunsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("assessmentTemplateArns", data.assessmentTemplateArns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (assessmentRunFilterEncoder)
            ("filter", data.filter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listAssessmentRunsResponseEncoder : ListAssessmentRunsResponse -> JE.Value
listAssessmentRunsResponseEncoder data =
    []
        
        
        |> (::) ("assessmentRunArns", data.assessmentRunArns |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listAssessmentTargetsRequestEncoder : ListAssessmentTargetsRequest -> JE.Value
listAssessmentTargetsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (assessmentTargetFilterEncoder)
            ("filter", data.filter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listAssessmentTargetsResponseEncoder : ListAssessmentTargetsResponse -> JE.Value
listAssessmentTargetsResponseEncoder data =
    []
        
        
        |> (::) ("assessmentTargetArns", data.assessmentTargetArns |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listAssessmentTemplatesRequestEncoder : ListAssessmentTemplatesRequest -> JE.Value
listAssessmentTemplatesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("assessmentTargetArns", data.assessmentTargetArns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (assessmentTemplateFilterEncoder)
            ("filter", data.filter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listAssessmentTemplatesResponseEncoder : ListAssessmentTemplatesResponse -> JE.Value
listAssessmentTemplatesResponseEncoder data =
    []
        
        
        |> (::) ("assessmentTemplateArns", data.assessmentTemplateArns |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listEventSubscriptionsRequestEncoder : ListEventSubscriptionsRequest -> JE.Value
listEventSubscriptionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("resourceArn", data.resourceArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listEventSubscriptionsResponseEncoder : ListEventSubscriptionsResponse -> JE.Value
listEventSubscriptionsResponseEncoder data =
    []
        
        
        |> (::) ("subscriptions", data.subscriptions |> (JE.list (subscriptionEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listExclusionsRequestEncoder : ListExclusionsRequest -> JE.Value
listExclusionsRequestEncoder data =
    []
        
        
        |> (::) ("assessmentRunArn", data.assessmentRunArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listExclusionsResponseEncoder : ListExclusionsResponse -> JE.Value
listExclusionsResponseEncoder data =
    []
        
        
        |> (::) ("exclusionArns", data.exclusionArns |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listFindingsRequestEncoder : ListFindingsRequest -> JE.Value
listFindingsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("assessmentRunArns", data.assessmentRunArns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (findingFilterEncoder)
            ("filter", data.filter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listFindingsResponseEncoder : ListFindingsResponse -> JE.Value
listFindingsResponseEncoder data =
    []
        
        
        |> (::) ("findingArns", data.findingArns |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listRulesPackagesRequestEncoder : ListRulesPackagesRequest -> JE.Value
listRulesPackagesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listRulesPackagesResponseEncoder : ListRulesPackagesResponse -> JE.Value
listRulesPackagesResponseEncoder data =
    []
        
        
        |> (::) ("rulesPackageArns", data.rulesPackageArns |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listTagsForResourceRequestEncoder : ListTagsForResourceRequest -> JE.Value
listTagsForResourceRequestEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        |> JE.object






listTagsForResourceResponseEncoder : ListTagsForResourceResponse -> JE.Value
listTagsForResourceResponseEncoder data =
    []
        
        
        |> (::) ("tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object










networkInterfaceEncoder : NetworkInterface -> JE.Value
networkInterfaceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("networkInterfaceId", data.networkInterfaceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("subnetId", data.subnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vpcId", data.vpcId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("privateDnsName", data.privateDnsName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("privateIpAddress", data.privateIpAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (privateIpEncoder))
            ("privateIpAddresses", data.privateIpAddresses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("publicDnsName", data.publicDnsName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("publicIp", data.publicIp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ipv6Addresses", data.ipv6Addresses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (securityGroupEncoder))
            ("securityGroups", data.securityGroups)
        
        
        |> JE.object






previewAgentsRequestEncoder : PreviewAgentsRequest -> JE.Value
previewAgentsRequestEncoder data =
    []
        
        
        |> (::) ("previewAgentsArn", data.previewAgentsArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






previewAgentsResponseEncoder : PreviewAgentsResponse -> JE.Value
previewAgentsResponseEncoder data =
    []
        
        
        |> (::) ("agentPreviews", data.agentPreviews |> (JE.list (agentPreviewEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object










privateIpEncoder : PrivateIp -> JE.Value
privateIpEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("privateDnsName", data.privateDnsName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("privateIpAddress", data.privateIpAddress)
        
        
        |> JE.object






registerCrossAccountAccessRoleRequestEncoder : RegisterCrossAccountAccessRoleRequest -> JE.Value
registerCrossAccountAccessRoleRequestEncoder data =
    []
        
        
        |> (::) ("roleArn", data.roleArn |> (JE.string))
        
        
        |> JE.object






removeAttributesFromFindingsRequestEncoder : RemoveAttributesFromFindingsRequest -> JE.Value
removeAttributesFromFindingsRequestEncoder data =
    []
        
        
        |> (::) ("findingArns", data.findingArns |> (JE.list (JE.string)))
        
        
        
        |> (::) ("attributeKeys", data.attributeKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






removeAttributesFromFindingsResponseEncoder : RemoveAttributesFromFindingsResponse -> JE.Value
removeAttributesFromFindingsResponseEncoder data =
    []
        
        
        |> (::) ("failedItems", data.failedItems |> (JE.dict identity (failedItemDetailsEncoder)))
        
        
        |> JE.object


















resourceGroupEncoder : ResourceGroup -> JE.Value
resourceGroupEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> (::) ("tags", data.tags |> (JE.list (resourceGroupTagEncoder)))
        
        
        
        |> (::) ("createdAt", data.createdAt |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






resourceGroupTagEncoder : ResourceGroupTag -> JE.Value
resourceGroupTagEncoder data =
    []
        
        
        |> (::) ("key", data.key |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("value", data.value)
        
        
        |> JE.object






rulesPackageEncoder : RulesPackage -> JE.Value
rulesPackageEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("version", data.version |> (JE.string))
        
        
        
        |> (::) ("provider", data.provider |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        |> JE.object






scopeEncoder : Scope -> JE.Value
scopeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (scopeTypeToString >> JE.string)
            ("key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("value", data.value)
        
        
        |> JE.object










securityGroupEncoder : SecurityGroup -> JE.Value
securityGroupEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("groupName", data.groupName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("groupId", data.groupId)
        
        
        |> JE.object






setTagsForResourceRequestEncoder : SetTagsForResourceRequest -> JE.Value
setTagsForResourceRequestEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object










startAssessmentRunRequestEncoder : StartAssessmentRunRequest -> JE.Value
startAssessmentRunRequestEncoder data =
    []
        
        
        |> (::) ("assessmentTemplateArn", data.assessmentTemplateArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("assessmentRunName", data.assessmentRunName)
        
        
        |> JE.object






startAssessmentRunResponseEncoder : StartAssessmentRunResponse -> JE.Value
startAssessmentRunResponseEncoder data =
    []
        
        
        |> (::) ("assessmentRunArn", data.assessmentRunArn |> (JE.string))
        
        
        |> JE.object










stopAssessmentRunRequestEncoder : StopAssessmentRunRequest -> JE.Value
stopAssessmentRunRequestEncoder data =
    []
        
        
        |> (::) ("assessmentRunArn", data.assessmentRunArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stopActionToString >> JE.string)
            ("stopAction", data.stopAction)
        
        
        |> JE.object






subscribeToEventRequestEncoder : SubscribeToEventRequest -> JE.Value
subscribeToEventRequestEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("event", data.event |> (inspectorEventToString >> JE.string))
        
        
        
        |> (::) ("topicArn", data.topicArn |> (JE.string))
        
        
        |> JE.object






subscriptionEncoder : Subscription -> JE.Value
subscriptionEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("topicArn", data.topicArn |> (JE.string))
        
        
        
        |> (::) ("eventSubscriptions", data.eventSubscriptions |> (JE.list (eventSubscriptionEncoder)))
        
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("key", data.key |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("value", data.value)
        
        
        |> JE.object






telemetryMetadataEncoder : TelemetryMetadata -> JE.Value
telemetryMetadataEncoder data =
    []
        
        
        |> (::) ("messageType", data.messageType |> (JE.string))
        
        
        
        |> (::) ("count", data.count |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("dataSize", data.dataSize)
        
        
        |> JE.object






timestampRangeEncoder : TimestampRange -> JE.Value
timestampRangeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("beginDate", data.beginDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("endDate", data.endDate)
        
        
        |> JE.object






unsubscribeFromEventRequestEncoder : UnsubscribeFromEventRequest -> JE.Value
unsubscribeFromEventRequestEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("event", data.event |> (inspectorEventToString >> JE.string))
        
        
        
        |> (::) ("topicArn", data.topicArn |> (JE.string))
        
        
        |> JE.object






updateAssessmentTargetRequestEncoder : UpdateAssessmentTargetRequest -> JE.Value
updateAssessmentTargetRequestEncoder data =
    []
        
        
        |> (::) ("assessmentTargetArn", data.assessmentTargetArn |> (JE.string))
        
        
        
        |> (::) ("assessmentTargetName", data.assessmentTargetName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("resourceGroupArn", data.resourceGroupArn)
        
        
        |> JE.object





