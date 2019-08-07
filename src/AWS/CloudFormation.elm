module AWS.CloudFormation
    exposing
        ( service
        , cancelUpdateStack
        , CancelUpdateStackOptions
        , continueUpdateRollback
        , ContinueUpdateRollbackOptions
        , createChangeSet
        , CreateChangeSetOptions
        , createStack
        , CreateStackOptions
        , createStackInstances
        , CreateStackInstancesOptions
        , createStackSet
        , CreateStackSetOptions
        , deleteChangeSet
        , DeleteChangeSetOptions
        , deleteStack
        , DeleteStackOptions
        , deleteStackInstances
        , DeleteStackInstancesOptions
        , deleteStackSet
        , describeAccountLimits
        , DescribeAccountLimitsOptions
        , describeChangeSet
        , DescribeChangeSetOptions
        , describeStackDriftDetectionStatus
        , describeStackEvents
        , DescribeStackEventsOptions
        , describeStackInstance
        , describeStackResource
        , describeStackResourceDrifts
        , DescribeStackResourceDriftsOptions
        , describeStackResources
        , DescribeStackResourcesOptions
        , describeStackSet
        , describeStackSetOperation
        , describeStacks
        , DescribeStacksOptions
        , detectStackDrift
        , DetectStackDriftOptions
        , detectStackResourceDrift
        , estimateTemplateCost
        , EstimateTemplateCostOptions
        , executeChangeSet
        , ExecuteChangeSetOptions
        , getStackPolicy
        , getTemplate
        , GetTemplateOptions
        , getTemplateSummary
        , GetTemplateSummaryOptions
        , listChangeSets
        , ListChangeSetsOptions
        , listExports
        , ListExportsOptions
        , listImports
        , ListImportsOptions
        , listStackInstances
        , ListStackInstancesOptions
        , listStackResources
        , ListStackResourcesOptions
        , listStackSetOperationResults
        , ListStackSetOperationResultsOptions
        , listStackSetOperations
        , ListStackSetOperationsOptions
        , listStackSets
        , ListStackSetsOptions
        , listStacks
        , ListStacksOptions
        , setStackPolicy
        , SetStackPolicyOptions
        , signalResource
        , stopStackSetOperation
        , updateStack
        , UpdateStackOptions
        , updateStackInstances
        , UpdateStackInstancesOptions
        , updateStackSet
        , UpdateStackSetOptions
        , updateTerminationProtection
        , validateTemplate
        , ValidateTemplateOptions
        , AccountGateResult
        , AccountGateStatus(..)
        , AccountLimit
        , Capability(..)
        , Change
        , ChangeAction(..)
        , ChangeSetStatus(..)
        , ChangeSetSummary
        , ChangeSetType(..)
        , ChangeSource(..)
        , ChangeType(..)
        , ContinueUpdateRollbackOutput
        , CreateChangeSetOutput
        , CreateStackInstancesOutput
        , CreateStackOutput
        , CreateStackSetOutput
        , DeleteChangeSetOutput
        , DeleteStackInstancesOutput
        , DeleteStackSetOutput
        , DescribeAccountLimitsOutput
        , DescribeChangeSetOutput
        , DescribeStackDriftDetectionStatusOutput
        , DescribeStackEventsOutput
        , DescribeStackInstanceOutput
        , DescribeStackResourceDriftsOutput
        , DescribeStackResourceOutput
        , DescribeStackResourcesOutput
        , DescribeStackSetOperationOutput
        , DescribeStackSetOutput
        , DescribeStacksOutput
        , DetectStackDriftOutput
        , DetectStackResourceDriftOutput
        , DifferenceType(..)
        , EstimateTemplateCostOutput
        , EvaluationType(..)
        , ExecuteChangeSetOutput
        , ExecutionStatus(..)
        , Export
        , GetStackPolicyOutput
        , GetTemplateOutput
        , GetTemplateSummaryOutput
        , ListChangeSetsOutput
        , ListExportsOutput
        , ListImportsOutput
        , ListStackInstancesOutput
        , ListStackResourcesOutput
        , ListStackSetOperationResultsOutput
        , ListStackSetOperationsOutput
        , ListStackSetsOutput
        , ListStacksOutput
        , OnFailure(..)
        , Output
        , Parameter
        , ParameterConstraints
        , ParameterDeclaration
        , PhysicalResourceIdContextKeyValuePair
        , PropertyDifference
        , Replacement(..)
        , RequiresRecreation(..)
        , ResourceAttribute(..)
        , ResourceChange
        , ResourceChangeDetail
        , ResourceSignalStatus(..)
        , ResourceStatus(..)
        , ResourceTargetDefinition
        , RollbackConfiguration
        , RollbackTrigger
        , Stack
        , StackDriftDetectionStatus(..)
        , StackDriftInformation
        , StackDriftInformationSummary
        , StackDriftStatus(..)
        , StackEvent
        , StackInstance
        , StackInstanceStatus(..)
        , StackInstanceSummary
        , StackResource
        , StackResourceDetail
        , StackResourceDrift
        , StackResourceDriftInformation
        , StackResourceDriftInformationSummary
        , StackResourceDriftStatus(..)
        , StackResourceSummary
        , StackSet
        , StackSetOperation
        , StackSetOperationAction(..)
        , StackSetOperationPreferences
        , StackSetOperationResultStatus(..)
        , StackSetOperationResultSummary
        , StackSetOperationStatus(..)
        , StackSetOperationSummary
        , StackSetStatus(..)
        , StackSetSummary
        , StackStatus(..)
        , StackSummary
        , StopStackSetOperationOutput
        , Tag
        , TemplateParameter
        , TemplateStage(..)
        , UpdateStackInstancesOutput
        , UpdateStackOutput
        , UpdateStackSetOutput
        , UpdateTerminationProtectionOutput
        , ValidateTemplateOutput
        )

{-| <fullname>AWS CloudFormation</fullname> <p>AWS CloudFormation allows you to create and manage AWS infrastructure deployments predictably and repeatedly. You can use AWS CloudFormation to leverage AWS products, such as Amazon Elastic Compute Cloud, Amazon Elastic Block Store, Amazon Simple Notification Service, Elastic Load Balancing, and Auto Scaling to build highly-reliable, highly scalable, cost-effective applications without creating or configuring the underlying AWS infrastructure.</p> <p>With AWS CloudFormation, you declare all of your resources and dependencies in a template file. The template defines a collection of resources as a single unit called a stack. AWS CloudFormation creates and deletes all member resources of the stack together and manages all dependencies between the resources for you.</p> <p>For more information about AWS CloudFormation, see the <a href="http://aws.amazon.com/cloudformation/">AWS CloudFormation Product Page</a>.</p> <p>Amazon CloudFormation makes use of other AWS products. If you need additional technical information about a specific AWS product, you can find the product's technical documentation at <a href="https://docs.aws.amazon.com/">docs.aws.amazon.com</a>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [cancelUpdateStack](#cancelUpdateStack)
* [CancelUpdateStackOptions](#CancelUpdateStackOptions)
* [continueUpdateRollback](#continueUpdateRollback)
* [ContinueUpdateRollbackOptions](#ContinueUpdateRollbackOptions)
* [createChangeSet](#createChangeSet)
* [CreateChangeSetOptions](#CreateChangeSetOptions)
* [createStack](#createStack)
* [CreateStackOptions](#CreateStackOptions)
* [createStackInstances](#createStackInstances)
* [CreateStackInstancesOptions](#CreateStackInstancesOptions)
* [createStackSet](#createStackSet)
* [CreateStackSetOptions](#CreateStackSetOptions)
* [deleteChangeSet](#deleteChangeSet)
* [DeleteChangeSetOptions](#DeleteChangeSetOptions)
* [deleteStack](#deleteStack)
* [DeleteStackOptions](#DeleteStackOptions)
* [deleteStackInstances](#deleteStackInstances)
* [DeleteStackInstancesOptions](#DeleteStackInstancesOptions)
* [deleteStackSet](#deleteStackSet)
* [describeAccountLimits](#describeAccountLimits)
* [DescribeAccountLimitsOptions](#DescribeAccountLimitsOptions)
* [describeChangeSet](#describeChangeSet)
* [DescribeChangeSetOptions](#DescribeChangeSetOptions)
* [describeStackDriftDetectionStatus](#describeStackDriftDetectionStatus)
* [describeStackEvents](#describeStackEvents)
* [DescribeStackEventsOptions](#DescribeStackEventsOptions)
* [describeStackInstance](#describeStackInstance)
* [describeStackResource](#describeStackResource)
* [describeStackResourceDrifts](#describeStackResourceDrifts)
* [DescribeStackResourceDriftsOptions](#DescribeStackResourceDriftsOptions)
* [describeStackResources](#describeStackResources)
* [DescribeStackResourcesOptions](#DescribeStackResourcesOptions)
* [describeStackSet](#describeStackSet)
* [describeStackSetOperation](#describeStackSetOperation)
* [describeStacks](#describeStacks)
* [DescribeStacksOptions](#DescribeStacksOptions)
* [detectStackDrift](#detectStackDrift)
* [DetectStackDriftOptions](#DetectStackDriftOptions)
* [detectStackResourceDrift](#detectStackResourceDrift)
* [estimateTemplateCost](#estimateTemplateCost)
* [EstimateTemplateCostOptions](#EstimateTemplateCostOptions)
* [executeChangeSet](#executeChangeSet)
* [ExecuteChangeSetOptions](#ExecuteChangeSetOptions)
* [getStackPolicy](#getStackPolicy)
* [getTemplate](#getTemplate)
* [GetTemplateOptions](#GetTemplateOptions)
* [getTemplateSummary](#getTemplateSummary)
* [GetTemplateSummaryOptions](#GetTemplateSummaryOptions)
* [listChangeSets](#listChangeSets)
* [ListChangeSetsOptions](#ListChangeSetsOptions)
* [listExports](#listExports)
* [ListExportsOptions](#ListExportsOptions)
* [listImports](#listImports)
* [ListImportsOptions](#ListImportsOptions)
* [listStackInstances](#listStackInstances)
* [ListStackInstancesOptions](#ListStackInstancesOptions)
* [listStackResources](#listStackResources)
* [ListStackResourcesOptions](#ListStackResourcesOptions)
* [listStackSetOperationResults](#listStackSetOperationResults)
* [ListStackSetOperationResultsOptions](#ListStackSetOperationResultsOptions)
* [listStackSetOperations](#listStackSetOperations)
* [ListStackSetOperationsOptions](#ListStackSetOperationsOptions)
* [listStackSets](#listStackSets)
* [ListStackSetsOptions](#ListStackSetsOptions)
* [listStacks](#listStacks)
* [ListStacksOptions](#ListStacksOptions)
* [setStackPolicy](#setStackPolicy)
* [SetStackPolicyOptions](#SetStackPolicyOptions)
* [signalResource](#signalResource)
* [stopStackSetOperation](#stopStackSetOperation)
* [updateStack](#updateStack)
* [UpdateStackOptions](#UpdateStackOptions)
* [updateStackInstances](#updateStackInstances)
* [UpdateStackInstancesOptions](#UpdateStackInstancesOptions)
* [updateStackSet](#updateStackSet)
* [UpdateStackSetOptions](#UpdateStackSetOptions)
* [updateTerminationProtection](#updateTerminationProtection)
* [validateTemplate](#validateTemplate)
* [ValidateTemplateOptions](#ValidateTemplateOptions)


@docs cancelUpdateStack,CancelUpdateStackOptions,continueUpdateRollback,ContinueUpdateRollbackOptions,createChangeSet,CreateChangeSetOptions,createStack,CreateStackOptions,createStackInstances,CreateStackInstancesOptions,createStackSet,CreateStackSetOptions,deleteChangeSet,DeleteChangeSetOptions,deleteStack,DeleteStackOptions,deleteStackInstances,DeleteStackInstancesOptions,deleteStackSet,describeAccountLimits,DescribeAccountLimitsOptions,describeChangeSet,DescribeChangeSetOptions,describeStackDriftDetectionStatus,describeStackEvents,DescribeStackEventsOptions,describeStackInstance,describeStackResource,describeStackResourceDrifts,DescribeStackResourceDriftsOptions,describeStackResources,DescribeStackResourcesOptions,describeStackSet,describeStackSetOperation,describeStacks,DescribeStacksOptions,detectStackDrift,DetectStackDriftOptions,detectStackResourceDrift,estimateTemplateCost,EstimateTemplateCostOptions,executeChangeSet,ExecuteChangeSetOptions,getStackPolicy,getTemplate,GetTemplateOptions,getTemplateSummary,GetTemplateSummaryOptions,listChangeSets,ListChangeSetsOptions,listExports,ListExportsOptions,listImports,ListImportsOptions,listStackInstances,ListStackInstancesOptions,listStackResources,ListStackResourcesOptions,listStackSetOperationResults,ListStackSetOperationResultsOptions,listStackSetOperations,ListStackSetOperationsOptions,listStackSets,ListStackSetsOptions,listStacks,ListStacksOptions,setStackPolicy,SetStackPolicyOptions,signalResource,stopStackSetOperation,updateStack,UpdateStackOptions,updateStackInstances,UpdateStackInstancesOptions,updateStackSet,UpdateStackSetOptions,updateTerminationProtection,validateTemplate,ValidateTemplateOptions

## Responses

* [ContinueUpdateRollbackOutput](#ContinueUpdateRollbackOutput)
* [CreateChangeSetOutput](#CreateChangeSetOutput)
* [CreateStackInstancesOutput](#CreateStackInstancesOutput)
* [CreateStackOutput](#CreateStackOutput)
* [CreateStackSetOutput](#CreateStackSetOutput)
* [DeleteChangeSetOutput](#DeleteChangeSetOutput)
* [DeleteStackInstancesOutput](#DeleteStackInstancesOutput)
* [DeleteStackSetOutput](#DeleteStackSetOutput)
* [DescribeAccountLimitsOutput](#DescribeAccountLimitsOutput)
* [DescribeChangeSetOutput](#DescribeChangeSetOutput)
* [DescribeStackDriftDetectionStatusOutput](#DescribeStackDriftDetectionStatusOutput)
* [DescribeStackEventsOutput](#DescribeStackEventsOutput)
* [DescribeStackInstanceOutput](#DescribeStackInstanceOutput)
* [DescribeStackResourceDriftsOutput](#DescribeStackResourceDriftsOutput)
* [DescribeStackResourceOutput](#DescribeStackResourceOutput)
* [DescribeStackResourcesOutput](#DescribeStackResourcesOutput)
* [DescribeStackSetOperationOutput](#DescribeStackSetOperationOutput)
* [DescribeStackSetOutput](#DescribeStackSetOutput)
* [DescribeStacksOutput](#DescribeStacksOutput)
* [DetectStackDriftOutput](#DetectStackDriftOutput)
* [DetectStackResourceDriftOutput](#DetectStackResourceDriftOutput)
* [EstimateTemplateCostOutput](#EstimateTemplateCostOutput)
* [ExecuteChangeSetOutput](#ExecuteChangeSetOutput)
* [GetStackPolicyOutput](#GetStackPolicyOutput)
* [GetTemplateOutput](#GetTemplateOutput)
* [GetTemplateSummaryOutput](#GetTemplateSummaryOutput)
* [ListChangeSetsOutput](#ListChangeSetsOutput)
* [ListExportsOutput](#ListExportsOutput)
* [ListImportsOutput](#ListImportsOutput)
* [ListStackInstancesOutput](#ListStackInstancesOutput)
* [ListStackResourcesOutput](#ListStackResourcesOutput)
* [ListStackSetOperationResultsOutput](#ListStackSetOperationResultsOutput)
* [ListStackSetOperationsOutput](#ListStackSetOperationsOutput)
* [ListStackSetsOutput](#ListStackSetsOutput)
* [ListStacksOutput](#ListStacksOutput)
* [StopStackSetOperationOutput](#StopStackSetOperationOutput)
* [UpdateStackInstancesOutput](#UpdateStackInstancesOutput)
* [UpdateStackOutput](#UpdateStackOutput)
* [UpdateStackSetOutput](#UpdateStackSetOutput)
* [UpdateTerminationProtectionOutput](#UpdateTerminationProtectionOutput)
* [ValidateTemplateOutput](#ValidateTemplateOutput)


@docs ContinueUpdateRollbackOutput,CreateChangeSetOutput,CreateStackInstancesOutput,CreateStackOutput,CreateStackSetOutput,DeleteChangeSetOutput,DeleteStackInstancesOutput,DeleteStackSetOutput,DescribeAccountLimitsOutput,DescribeChangeSetOutput,DescribeStackDriftDetectionStatusOutput,DescribeStackEventsOutput,DescribeStackInstanceOutput,DescribeStackResourceDriftsOutput,DescribeStackResourceOutput,DescribeStackResourcesOutput,DescribeStackSetOperationOutput,DescribeStackSetOutput,DescribeStacksOutput,DetectStackDriftOutput,DetectStackResourceDriftOutput,EstimateTemplateCostOutput,ExecuteChangeSetOutput,GetStackPolicyOutput,GetTemplateOutput,GetTemplateSummaryOutput,ListChangeSetsOutput,ListExportsOutput,ListImportsOutput,ListStackInstancesOutput,ListStackResourcesOutput,ListStackSetOperationResultsOutput,ListStackSetOperationsOutput,ListStackSetsOutput,ListStacksOutput,StopStackSetOperationOutput,UpdateStackInstancesOutput,UpdateStackOutput,UpdateStackSetOutput,UpdateTerminationProtectionOutput,ValidateTemplateOutput

## Records

* [AccountGateResult](#AccountGateResult)
* [AccountLimit](#AccountLimit)
* [Change](#Change)
* [ChangeSetSummary](#ChangeSetSummary)
* [Export](#Export)
* [Output](#Output)
* [Parameter](#Parameter)
* [ParameterConstraints](#ParameterConstraints)
* [ParameterDeclaration](#ParameterDeclaration)
* [PhysicalResourceIdContextKeyValuePair](#PhysicalResourceIdContextKeyValuePair)
* [PropertyDifference](#PropertyDifference)
* [ResourceChange](#ResourceChange)
* [ResourceChangeDetail](#ResourceChangeDetail)
* [ResourceTargetDefinition](#ResourceTargetDefinition)
* [RollbackConfiguration](#RollbackConfiguration)
* [RollbackTrigger](#RollbackTrigger)
* [Stack](#Stack)
* [StackDriftInformation](#StackDriftInformation)
* [StackDriftInformationSummary](#StackDriftInformationSummary)
* [StackEvent](#StackEvent)
* [StackInstance](#StackInstance)
* [StackInstanceSummary](#StackInstanceSummary)
* [StackResource](#StackResource)
* [StackResourceDetail](#StackResourceDetail)
* [StackResourceDrift](#StackResourceDrift)
* [StackResourceDriftInformation](#StackResourceDriftInformation)
* [StackResourceDriftInformationSummary](#StackResourceDriftInformationSummary)
* [StackResourceSummary](#StackResourceSummary)
* [StackSet](#StackSet)
* [StackSetOperation](#StackSetOperation)
* [StackSetOperationPreferences](#StackSetOperationPreferences)
* [StackSetOperationResultSummary](#StackSetOperationResultSummary)
* [StackSetOperationSummary](#StackSetOperationSummary)
* [StackSetSummary](#StackSetSummary)
* [StackSummary](#StackSummary)
* [Tag](#Tag)
* [TemplateParameter](#TemplateParameter)


@docs AccountGateResult,AccountLimit,Change,ChangeSetSummary,Export,Output,Parameter,ParameterConstraints,ParameterDeclaration,PhysicalResourceIdContextKeyValuePair,PropertyDifference,ResourceChange,ResourceChangeDetail,ResourceTargetDefinition,RollbackConfiguration,RollbackTrigger,Stack,StackDriftInformation,StackDriftInformationSummary,StackEvent,StackInstance,StackInstanceSummary,StackResource,StackResourceDetail,StackResourceDrift,StackResourceDriftInformation,StackResourceDriftInformationSummary,StackResourceSummary,StackSet,StackSetOperation,StackSetOperationPreferences,StackSetOperationResultSummary,StackSetOperationSummary,StackSetSummary,StackSummary,Tag,TemplateParameter

## Unions

* [AccountGateStatus](#AccountGateStatus)
* [Capability](#Capability)
* [ChangeAction](#ChangeAction)
* [ChangeSetStatus](#ChangeSetStatus)
* [ChangeSetType](#ChangeSetType)
* [ChangeSource](#ChangeSource)
* [ChangeType](#ChangeType)
* [DifferenceType](#DifferenceType)
* [EvaluationType](#EvaluationType)
* [ExecutionStatus](#ExecutionStatus)
* [OnFailure](#OnFailure)
* [Replacement](#Replacement)
* [RequiresRecreation](#RequiresRecreation)
* [ResourceAttribute](#ResourceAttribute)
* [ResourceSignalStatus](#ResourceSignalStatus)
* [ResourceStatus](#ResourceStatus)
* [StackDriftDetectionStatus](#StackDriftDetectionStatus)
* [StackDriftStatus](#StackDriftStatus)
* [StackInstanceStatus](#StackInstanceStatus)
* [StackResourceDriftStatus](#StackResourceDriftStatus)
* [StackSetOperationAction](#StackSetOperationAction)
* [StackSetOperationResultStatus](#StackSetOperationResultStatus)
* [StackSetOperationStatus](#StackSetOperationStatus)
* [StackSetStatus](#StackSetStatus)
* [StackStatus](#StackStatus)
* [TemplateStage](#TemplateStage)


@docs AccountGateStatus,Capability,ChangeAction,ChangeSetStatus,ChangeSetType,ChangeSource,ChangeType,DifferenceType,EvaluationType,ExecutionStatus,OnFailure,Replacement,RequiresRecreation,ResourceAttribute,ResourceSignalStatus,ResourceStatus,StackDriftDetectionStatus,StackDriftStatus,StackInstanceStatus,StackResourceDriftStatus,StackSetOperationAction,StackSetOperationResultStatus,StackSetOperationStatus,StackSetStatus,StackStatus,TemplateStage

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
        "cloudformation"
        "2010-05-15"
        AWS.Core.Service.query
        AWS.Core.Service.signV4
        (AWS.Core.Service.setXmlNamespace "http://cloudformation.amazonaws.com/doc/2010-05-15/")



-- OPERATIONS

{-| <p>Cancels an update on the specified stack. If the call completes successfully, the stack rolls back the update and reverts to the previous stack configuration.</p> <note> <p>You can cancel only stacks that are in the UPDATE_IN_PROGRESS state.</p> </note>

__Required Parameters__

* `stackName` __:__ `String`


-}

cancelUpdateStack :
  
    String ->
  
  
    ( CancelUpdateStackOptions -> CancelUpdateStackOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

cancelUpdateStack stackName setOptions =
    
    let
        requestInput = CancelUpdateStackInput
            
            stackName
            
            options.clientRequestToken
            
        
        options = setOptions (CancelUpdateStackOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CancelUpdateStack")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs cancelUpdateStackInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CancelUpdateStack"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a cancelUpdateStack request
-}
type alias CancelUpdateStackOptions =
    {
    clientRequestToken : Maybe String
    }



{-| <p>For a specified stack that is in the <code>UPDATE_ROLLBACK_FAILED</code> state, continues rolling it back to the <code>UPDATE_ROLLBACK_COMPLETE</code> state. Depending on the cause of the failure, you can manually <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed"> fix the error</a> and continue the rollback. By continuing the rollback, you can return your stack to a working state (the <code>UPDATE_ROLLBACK_COMPLETE</code> state), and then try to update the stack again.</p> <p>A stack goes into the <code>UPDATE_ROLLBACK_FAILED</code> state when AWS CloudFormation cannot roll back all changes after a failed stack update. For example, you might have a stack that is rolling back to an old database instance that was deleted outside of AWS CloudFormation. Because AWS CloudFormation doesn't know the database was deleted, it assumes that the database instance still exists and attempts to roll back to it, causing the update rollback to fail.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}

continueUpdateRollback :
  
    String ->
  
  
    ( ContinueUpdateRollbackOptions -> ContinueUpdateRollbackOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ContinueUpdateRollbackOutput)

continueUpdateRollback stackName setOptions =
    
    let
        requestInput = ContinueUpdateRollbackInput
            
            stackName
            
            options.roleARN
            
            options.resourcesToSkip
            
            options.clientRequestToken
            
        
        options = setOptions (ContinueUpdateRollbackOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ContinueUpdateRollback")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs continueUpdateRollbackInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ContinueUpdateRollback"
                
                (AWS.Core.Decode.ResultDecoder "ContinueUpdateRollbackResult" continueUpdateRollbackOutputDecoder)
                
            )



{-| Options for a continueUpdateRollback request
-}
type alias ContinueUpdateRollbackOptions =
    {
    roleARN : Maybe String,resourcesToSkip : Maybe (List String),clientRequestToken : Maybe String
    }



{-| <p>Creates a list of changes that will be applied to a stack so that you can review the changes before executing them. You can create a change set for a stack that doesn't exist or an existing stack. If you create a change set for a stack that doesn't exist, the change set shows all of the resources that AWS CloudFormation will create. If you create a change set for an existing stack, AWS CloudFormation compares the stack's information with the information that you submit in the change set and lists the differences. Use change sets to understand which resources AWS CloudFormation will create or change, and how it will change resources in an existing stack, before you create or update a stack.</p> <p>To create a change set for a stack that doesn't exist, for the <code>ChangeSetType</code> parameter, specify <code>CREATE</code>. To create a change set for an existing stack, specify <code>UPDATE</code> for the <code>ChangeSetType</code> parameter. After the <code>CreateChangeSet</code> call successfully completes, AWS CloudFormation starts creating the change set. To check the status of the change set or to review it, use the <a>DescribeChangeSet</a> action.</p> <p>When you are satisfied with the changes the change set will make, execute the change set by using the <a>ExecuteChangeSet</a> action. AWS CloudFormation doesn't make changes until you execute the change set.</p>

__Required Parameters__

* `stackName` __:__ `String`
* `changeSetName` __:__ `String`


-}

createChangeSet :
  
    String ->
  
    String ->
  
  
    ( CreateChangeSetOptions -> CreateChangeSetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateChangeSetOutput)

createChangeSet stackName changeSetName setOptions =
    
    let
        requestInput = CreateChangeSetInput
            
            stackName
            
            options.templateBody
            
            options.templateURL
            
            options.usePreviousTemplate
            
            options.parameters
            
            options.capabilities
            
            options.resourceTypes
            
            options.roleARN
            
            options.rollbackConfiguration
            
            options.notificationARNs
            
            options.tags
            
            changeSetName
            
            options.clientToken
            
            options.description
            
            options.changeSetType
            
        
        options = setOptions (CreateChangeSetOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateChangeSet")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createChangeSetInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateChangeSet"
                
                (AWS.Core.Decode.ResultDecoder "CreateChangeSetResult" createChangeSetOutputDecoder)
                
            )



{-| Options for a createChangeSet request
-}
type alias CreateChangeSetOptions =
    {
    templateBody : Maybe String,templateURL : Maybe String,usePreviousTemplate : Maybe Bool,parameters : Maybe (List Parameter),capabilities : Maybe (List Capability),resourceTypes : Maybe (List String),roleARN : Maybe String,rollbackConfiguration : Maybe RollbackConfiguration,notificationARNs : Maybe (List String),tags : Maybe (List Tag),clientToken : Maybe String,description : Maybe String,changeSetType : Maybe ChangeSetType
    }



{-| <p>Creates a stack as specified in the template. After the call completes successfully, the stack creation starts. You can check the status of the stack via the <a>DescribeStacks</a> API.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}

createStack :
  
    String ->
  
  
    ( CreateStackOptions -> CreateStackOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateStackOutput)

createStack stackName setOptions =
    
    let
        requestInput = CreateStackInput
            
            stackName
            
            options.templateBody
            
            options.templateURL
            
            options.parameters
            
            options.disableRollback
            
            options.rollbackConfiguration
            
            options.timeoutInMinutes
            
            options.notificationARNs
            
            options.capabilities
            
            options.resourceTypes
            
            options.roleARN
            
            options.onFailure
            
            options.stackPolicyBody
            
            options.stackPolicyURL
            
            options.tags
            
            options.clientRequestToken
            
            options.enableTerminationProtection
            
        
        options = setOptions (CreateStackOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateStack")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createStackInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateStack"
                
                (AWS.Core.Decode.ResultDecoder "CreateStackResult" createStackOutputDecoder)
                
            )



{-| Options for a createStack request
-}
type alias CreateStackOptions =
    {
    templateBody : Maybe String,templateURL : Maybe String,parameters : Maybe (List Parameter),disableRollback : Maybe Bool,rollbackConfiguration : Maybe RollbackConfiguration,timeoutInMinutes : Maybe Int,notificationARNs : Maybe (List String),capabilities : Maybe (List Capability),resourceTypes : Maybe (List String),roleARN : Maybe String,onFailure : Maybe OnFailure,stackPolicyBody : Maybe String,stackPolicyURL : Maybe String,tags : Maybe (List Tag),clientRequestToken : Maybe String,enableTerminationProtection : Maybe Bool
    }



{-| <p>Creates stack instances for the specified accounts, within the specified regions. A stack instance refers to a stack in a specific account and region. <code>Accounts</code> and <code>Regions</code> are required parameters—you must specify at least one account and one region. </p>

__Required Parameters__

* `stackSetName` __:__ `String`
* `accounts` __:__ `(List String)`
* `regions` __:__ `(List String)`


-}

createStackInstances :
  
    String ->
  
    (List String) ->
  
    (List String) ->
  
  
    ( CreateStackInstancesOptions -> CreateStackInstancesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateStackInstancesOutput)

createStackInstances stackSetName accounts regions setOptions =
    
    let
        requestInput = CreateStackInstancesInput
            
            stackSetName
            
            accounts
            
            regions
            
            options.parameterOverrides
            
            options.operationPreferences
            
            options.operationId
            
        
        options = setOptions (CreateStackInstancesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateStackInstances")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createStackInstancesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateStackInstances"
                
                (AWS.Core.Decode.ResultDecoder "CreateStackInstancesResult" createStackInstancesOutputDecoder)
                
            )



{-| Options for a createStackInstances request
-}
type alias CreateStackInstancesOptions =
    {
    parameterOverrides : Maybe (List Parameter),operationPreferences : Maybe StackSetOperationPreferences,operationId : Maybe String
    }



{-| <p>Creates a stack set.</p>

__Required Parameters__

* `stackSetName` __:__ `String`


-}

createStackSet :
  
    String ->
  
  
    ( CreateStackSetOptions -> CreateStackSetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateStackSetOutput)

createStackSet stackSetName setOptions =
    
    let
        requestInput = CreateStackSetInput
            
            stackSetName
            
            options.description
            
            options.templateBody
            
            options.templateURL
            
            options.parameters
            
            options.capabilities
            
            options.tags
            
            options.administrationRoleARN
            
            options.executionRoleName
            
            options.clientRequestToken
            
        
        options = setOptions (CreateStackSetOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateStackSet")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createStackSetInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateStackSet"
                
                (AWS.Core.Decode.ResultDecoder "CreateStackSetResult" createStackSetOutputDecoder)
                
            )



{-| Options for a createStackSet request
-}
type alias CreateStackSetOptions =
    {
    description : Maybe String,templateBody : Maybe String,templateURL : Maybe String,parameters : Maybe (List Parameter),capabilities : Maybe (List Capability),tags : Maybe (List Tag),administrationRoleARN : Maybe String,executionRoleName : Maybe String,clientRequestToken : Maybe String
    }



{-| <p>Deletes the specified change set. Deleting change sets ensures that no one executes the wrong change set.</p> <p>If the call successfully completes, AWS CloudFormation successfully deleted the change set.</p>

__Required Parameters__

* `changeSetName` __:__ `String`


-}

deleteChangeSet :
  
    String ->
  
  
    ( DeleteChangeSetOptions -> DeleteChangeSetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteChangeSetOutput)

deleteChangeSet changeSetName setOptions =
    
    let
        requestInput = DeleteChangeSetInput
            
            changeSetName
            
            options.stackName
            
        
        options = setOptions (DeleteChangeSetOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteChangeSet")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteChangeSetInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteChangeSet"
                
                (AWS.Core.Decode.ResultDecoder "DeleteChangeSetResult" deleteChangeSetOutputDecoder)
                
            )



{-| Options for a deleteChangeSet request
-}
type alias DeleteChangeSetOptions =
    {
    stackName : Maybe String
    }



{-| <p>Deletes a specified stack. Once the call completes successfully, stack deletion starts. Deleted stacks do not show up in the <a>DescribeStacks</a> API if the deletion has been completed successfully.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}

deleteStack :
  
    String ->
  
  
    ( DeleteStackOptions -> DeleteStackOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteStack stackName setOptions =
    
    let
        requestInput = DeleteStackInput
            
            stackName
            
            options.retainResources
            
            options.roleARN
            
            options.clientRequestToken
            
        
        options = setOptions (DeleteStackOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteStack")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteStackInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteStack"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a deleteStack request
-}
type alias DeleteStackOptions =
    {
    retainResources : Maybe (List String),roleARN : Maybe String,clientRequestToken : Maybe String
    }



{-| <p>Deletes stack instances for the specified accounts, in the specified regions. </p>

__Required Parameters__

* `stackSetName` __:__ `String`
* `accounts` __:__ `(List String)`
* `regions` __:__ `(List String)`
* `retainStacks` __:__ `Bool`


-}

deleteStackInstances :
  
    String ->
  
    (List String) ->
  
    (List String) ->
  
    Bool ->
  
  
    ( DeleteStackInstancesOptions -> DeleteStackInstancesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteStackInstancesOutput)

deleteStackInstances stackSetName accounts regions retainStacks setOptions =
    
    let
        requestInput = DeleteStackInstancesInput
            
            stackSetName
            
            accounts
            
            regions
            
            options.operationPreferences
            
            retainStacks
            
            options.operationId
            
        
        options = setOptions (DeleteStackInstancesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteStackInstances")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteStackInstancesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteStackInstances"
                
                (AWS.Core.Decode.ResultDecoder "DeleteStackInstancesResult" deleteStackInstancesOutputDecoder)
                
            )



{-| Options for a deleteStackInstances request
-}
type alias DeleteStackInstancesOptions =
    {
    operationPreferences : Maybe StackSetOperationPreferences,operationId : Maybe String
    }



{-| <p>Deletes a stack set. Before you can delete a stack set, all of its member stack instances must be deleted. For more information about how to do this, see <a>DeleteStackInstances</a>. </p>

__Required Parameters__

* `stackSetName` __:__ `String`


-}

deleteStackSet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteStackSetOutput)

deleteStackSet stackSetName =
    
    let
        requestInput = DeleteStackSetInput
            
            stackSetName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteStackSet")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteStackSetInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteStackSet"
                
                (AWS.Core.Decode.ResultDecoder "DeleteStackSetResult" deleteStackSetOutputDecoder)
                
            )





{-| <p>Retrieves your account's AWS CloudFormation limits, such as the maximum number of stacks that you can create in your account. For more information about account limits, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html">AWS CloudFormation Limits</a> in the <i>AWS CloudFormation User Guide</i>.</p>

__Required Parameters__



-}

describeAccountLimits :
  
  
    ( DescribeAccountLimitsOptions -> DescribeAccountLimitsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAccountLimitsOutput)

describeAccountLimits setOptions =
    
    let
        requestInput = DescribeAccountLimitsInput
            
            options.nextToken
            
        
        options = setOptions (DescribeAccountLimitsOptions Nothing)
        
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
    nextToken : Maybe String
    }



{-| <p>Returns the inputs for the change set and a list of changes that AWS CloudFormation will make if you execute the change set. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html">Updating Stacks Using Change Sets</a> in the AWS CloudFormation User Guide.</p>

__Required Parameters__

* `changeSetName` __:__ `String`


-}

describeChangeSet :
  
    String ->
  
  
    ( DescribeChangeSetOptions -> DescribeChangeSetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeChangeSetOutput)

describeChangeSet changeSetName setOptions =
    
    let
        requestInput = DescribeChangeSetInput
            
            changeSetName
            
            options.stackName
            
            options.nextToken
            
        
        options = setOptions (DescribeChangeSetOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeChangeSet")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeChangeSetInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeChangeSet"
                
                (AWS.Core.Decode.ResultDecoder "DescribeChangeSetResult" describeChangeSetOutputDecoder)
                
            )



{-| Options for a describeChangeSet request
-}
type alias DescribeChangeSetOptions =
    {
    stackName : Maybe String,nextToken : Maybe String
    }



{-| <p>Returns information about a stack drift detection operation. A stack drift detection operation detects whether a stack's actual configuration differs, or has <i>drifted</i>, from it's expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted. For more information on stack and resource drift, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting Unregulated Configuration Changes to Stacks and Resources</a>.</p> <p>Use <a>DetectStackDrift</a> to initiate a stack drift detection operation. <code>DetectStackDrift</code> returns a <code>StackDriftDetectionId</code> you can use to monitor the progress of the operation using <code>DescribeStackDriftDetectionStatus</code>. Once the drift detection operation has completed, use <a>DescribeStackResourceDrifts</a> to return drift information about the stack and its resources.</p>

__Required Parameters__

* `stackDriftDetectionId` __:__ `String`


-}

describeStackDriftDetectionStatus :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackDriftDetectionStatusOutput)

describeStackDriftDetectionStatus stackDriftDetectionId =
    
    let
        requestInput = DescribeStackDriftDetectionStatusInput
            
            stackDriftDetectionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeStackDriftDetectionStatus")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeStackDriftDetectionStatusInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackDriftDetectionStatus"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStackDriftDetectionStatusResult" describeStackDriftDetectionStatusOutputDecoder)
                
            )





{-| <p>Returns all stack related events for a specified stack in reverse chronological order. For more information about a stack's event history, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html">Stacks</a> in the AWS CloudFormation User Guide.</p> <note> <p>You can list events for stacks that have failed to create or have been deleted by specifying the unique stack identifier (stack ID).</p> </note>

__Required Parameters__



-}

describeStackEvents :
  
  
    ( DescribeStackEventsOptions -> DescribeStackEventsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackEventsOutput)

describeStackEvents setOptions =
    
    let
        requestInput = DescribeStackEventsInput
            
            options.stackName
            
            options.nextToken
            
        
        options = setOptions (DescribeStackEventsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeStackEvents")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeStackEventsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackEvents"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStackEventsResult" describeStackEventsOutputDecoder)
                
            )



{-| Options for a describeStackEvents request
-}
type alias DescribeStackEventsOptions =
    {
    stackName : Maybe String,nextToken : Maybe String
    }



{-| <p>Returns the stack instance that's associated with the specified stack set, AWS account, and region.</p> <p>For a list of stack instances that are associated with a specific stack set, use <a>ListStackInstances</a>.</p>

__Required Parameters__

* `stackSetName` __:__ `String`
* `stackInstanceAccount` __:__ `String`
* `stackInstanceRegion` __:__ `String`


-}

describeStackInstance :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackInstanceOutput)

describeStackInstance stackSetName stackInstanceAccount stackInstanceRegion =
    
    let
        requestInput = DescribeStackInstanceInput
            
            stackSetName
            
            stackInstanceAccount
            
            stackInstanceRegion
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeStackInstance")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeStackInstanceInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackInstance"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStackInstanceResult" describeStackInstanceOutputDecoder)
                
            )





{-| <p>Returns a description of the specified resource in the specified stack.</p> <p>For deleted stacks, DescribeStackResource returns resource information for up to 90 days after the stack has been deleted.</p>

__Required Parameters__

* `stackName` __:__ `String`
* `logicalResourceId` __:__ `String`


-}

describeStackResource :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackResourceOutput)

describeStackResource stackName logicalResourceId =
    
    let
        requestInput = DescribeStackResourceInput
            
            stackName
            
            logicalResourceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeStackResource")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeStackResourceInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackResource"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStackResourceResult" describeStackResourceOutputDecoder)
                
            )





{-| <p>Returns drift information for the resources that have been checked for drift in the specified stack. This includes actual and expected configuration values for resources where AWS CloudFormation detects configuration drift.</p> <p>For a given stack, there will be one <code>StackResourceDrift</code> for each stack resource that has been checked for drift. Resources that have not yet been checked for drift are not included. Resources that do not currently support drift detection are not checked, and so not included. For a list of resources that support drift detection, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html">Resources that Support Drift Detection</a>.</p> <p>Use <a>DetectStackResourceDrift</a> to detect drift on individual resources, or <a>DetectStackDrift</a> to detect drift on all supported resources for a given stack.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}

describeStackResourceDrifts :
  
    String ->
  
  
    ( DescribeStackResourceDriftsOptions -> DescribeStackResourceDriftsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackResourceDriftsOutput)

describeStackResourceDrifts stackName setOptions =
    
    let
        requestInput = DescribeStackResourceDriftsInput
            
            stackName
            
            options.stackResourceDriftStatusFilters
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (DescribeStackResourceDriftsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeStackResourceDrifts")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeStackResourceDriftsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackResourceDrifts"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStackResourceDriftsResult" describeStackResourceDriftsOutputDecoder)
                
            )



{-| Options for a describeStackResourceDrifts request
-}
type alias DescribeStackResourceDriftsOptions =
    {
    stackResourceDriftStatusFilters : Maybe (List StackResourceDriftStatus),nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Returns AWS resource descriptions for running and deleted stacks. If <code>StackName</code> is specified, all the associated resources that are part of the stack are returned. If <code>PhysicalResourceId</code> is specified, the associated resources of the stack that the resource belongs to are returned.</p> <note> <p>Only the first 100 resources will be returned. If your stack has more resources than this, you should use <code>ListStackResources</code> instead.</p> </note> <p>For deleted stacks, <code>DescribeStackResources</code> returns resource information for up to 90 days after the stack has been deleted.</p> <p>You must specify either <code>StackName</code> or <code>PhysicalResourceId</code>, but not both. In addition, you can specify <code>LogicalResourceId</code> to filter the returned result. For more information about resources, the <code>LogicalResourceId</code> and <code>PhysicalResourceId</code>, go to the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/">AWS CloudFormation User Guide</a>.</p> <note> <p>A <code>ValidationError</code> is returned if you specify both <code>StackName</code> and <code>PhysicalResourceId</code> in the same request.</p> </note>

__Required Parameters__



-}

describeStackResources :
  
  
    ( DescribeStackResourcesOptions -> DescribeStackResourcesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackResourcesOutput)

describeStackResources setOptions =
    
    let
        requestInput = DescribeStackResourcesInput
            
            options.stackName
            
            options.logicalResourceId
            
            options.physicalResourceId
            
        
        options = setOptions (DescribeStackResourcesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeStackResources")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeStackResourcesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackResources"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStackResourcesResult" describeStackResourcesOutputDecoder)
                
            )



{-| Options for a describeStackResources request
-}
type alias DescribeStackResourcesOptions =
    {
    stackName : Maybe String,logicalResourceId : Maybe String,physicalResourceId : Maybe String
    }



{-| <p>Returns the description of the specified stack set. </p>

__Required Parameters__

* `stackSetName` __:__ `String`


-}

describeStackSet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackSetOutput)

describeStackSet stackSetName =
    
    let
        requestInput = DescribeStackSetInput
            
            stackSetName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeStackSet")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeStackSetInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackSet"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStackSetResult" describeStackSetOutputDecoder)
                
            )





{-| <p>Returns the description of the specified stack set operation. </p>

__Required Parameters__

* `stackSetName` __:__ `String`
* `operationId` __:__ `String`


-}

describeStackSetOperation :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackSetOperationOutput)

describeStackSetOperation stackSetName operationId =
    
    let
        requestInput = DescribeStackSetOperationInput
            
            stackSetName
            
            operationId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeStackSetOperation")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeStackSetOperationInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackSetOperation"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStackSetOperationResult" describeStackSetOperationOutputDecoder)
                
            )





{-| <p>Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created.</p> <note> <p>If the stack does not exist, an <code>AmazonCloudFormationException</code> is returned.</p> </note>

__Required Parameters__



-}

describeStacks :
  
  
    ( DescribeStacksOptions -> DescribeStacksOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStacksOutput)

describeStacks setOptions =
    
    let
        requestInput = DescribeStacksInput
            
            options.stackName
            
            options.nextToken
            
        
        options = setOptions (DescribeStacksOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeStacks")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeStacksInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStacks"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStacksResult" describeStacksOutputDecoder)
                
            )



{-| Options for a describeStacks request
-}
type alias DescribeStacksOptions =
    {
    stackName : Maybe String,nextToken : Maybe String
    }



{-| <p>Detects whether a stack's actual configuration differs, or has <i>drifted</i>, from it's expected configuration, as defined in the stack template and any values specified as template parameters. For each resource in the stack that supports drift detection, AWS CloudFormation compares the actual configuration of the resource with its expected template configuration. Only resource properties explicitly defined in the stack template are checked for drift. A stack is considered to have drifted if one or more of its resources differ from their expected template configurations. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting Unregulated Configuration Changes to Stacks and Resources</a>.</p> <p>Use <code>DetectStackDrift</code> to detect drift on all supported resources for a given stack, or <a>DetectStackResourceDrift</a> to detect drift on individual resources.</p> <p>For a list of stack resources that currently support drift detection, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html">Resources that Support Drift Detection</a>.</p> <p> <code>DetectStackDrift</code> can take up to several minutes, depending on the number of resources contained within the stack. Use <a>DescribeStackDriftDetectionStatus</a> to monitor the progress of a detect stack drift operation. Once the drift detection operation has completed, use <a>DescribeStackResourceDrifts</a> to return drift information about the stack and its resources.</p> <p>When detecting drift on a stack, AWS CloudFormation does not detect drift on any nested stacks belonging to that stack. Perform <code>DetectStackDrift</code> directly on the nested stack itself.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}

detectStackDrift :
  
    String ->
  
  
    ( DetectStackDriftOptions -> DetectStackDriftOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetectStackDriftOutput)

detectStackDrift stackName setOptions =
    
    let
        requestInput = DetectStackDriftInput
            
            stackName
            
            options.logicalResourceIds
            
        
        options = setOptions (DetectStackDriftOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DetectStackDrift")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs detectStackDriftInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DetectStackDrift"
                
                (AWS.Core.Decode.ResultDecoder "DetectStackDriftResult" detectStackDriftOutputDecoder)
                
            )



{-| Options for a detectStackDrift request
-}
type alias DetectStackDriftOptions =
    {
    logicalResourceIds : Maybe (List String)
    }



{-| <p>Returns information about whether a resource's actual configuration differs, or has <i>drifted</i>, from it's expected configuration, as defined in the stack template and any values specified as template parameters. This information includes actual and expected property values for resources in which AWS CloudFormation detects drift. Only resource properties explicitly defined in the stack template are checked for drift. For more information about stack and resource drift, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting Unregulated Configuration Changes to Stacks and Resources</a>.</p> <p>Use <code>DetectStackResourceDrift</code> to detect drift on individual resources, or <a>DetectStackDrift</a> to detect drift on all resources in a given stack that support drift detection.</p> <p>Resources that do not currently support drift detection cannot be checked. For a list of resources that support drift detection, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html">Resources that Support Drift Detection</a>.</p>

__Required Parameters__

* `stackName` __:__ `String`
* `logicalResourceId` __:__ `String`


-}

detectStackResourceDrift :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetectStackResourceDriftOutput)

detectStackResourceDrift stackName logicalResourceId =
    
    let
        requestInput = DetectStackResourceDriftInput
            
            stackName
            
            logicalResourceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DetectStackResourceDrift")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs detectStackResourceDriftInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DetectStackResourceDrift"
                
                (AWS.Core.Decode.ResultDecoder "DetectStackResourceDriftResult" detectStackResourceDriftOutputDecoder)
                
            )





{-| <p>Returns the estimated monthly cost of a template. The return value is an AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.</p>

__Required Parameters__



-}

estimateTemplateCost :
  
  
    ( EstimateTemplateCostOptions -> EstimateTemplateCostOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EstimateTemplateCostOutput)

estimateTemplateCost setOptions =
    
    let
        requestInput = EstimateTemplateCostInput
            
            options.templateBody
            
            options.templateURL
            
            options.parameters
            
        
        options = setOptions (EstimateTemplateCostOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "EstimateTemplateCost")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs estimateTemplateCostInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "EstimateTemplateCost"
                
                (AWS.Core.Decode.ResultDecoder "EstimateTemplateCostResult" estimateTemplateCostOutputDecoder)
                
            )



{-| Options for a estimateTemplateCost request
-}
type alias EstimateTemplateCostOptions =
    {
    templateBody : Maybe String,templateURL : Maybe String,parameters : Maybe (List Parameter)
    }



{-| <p>Updates a stack using the input information that was provided when the specified change set was created. After the call successfully completes, AWS CloudFormation starts updating the stack. Use the <a>DescribeStacks</a> action to view the status of the update.</p> <p>When you execute a change set, AWS CloudFormation deletes all other change sets associated with the stack because they aren't valid for the updated stack.</p> <p>If a stack policy is associated with the stack, AWS CloudFormation enforces the policy during the update. You can't specify a temporary stack policy that overrides the current policy.</p>

__Required Parameters__

* `changeSetName` __:__ `String`


-}

executeChangeSet :
  
    String ->
  
  
    ( ExecuteChangeSetOptions -> ExecuteChangeSetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ExecuteChangeSetOutput)

executeChangeSet changeSetName setOptions =
    
    let
        requestInput = ExecuteChangeSetInput
            
            changeSetName
            
            options.stackName
            
            options.clientRequestToken
            
        
        options = setOptions (ExecuteChangeSetOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ExecuteChangeSet")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs executeChangeSetInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ExecuteChangeSet"
                
                (AWS.Core.Decode.ResultDecoder "ExecuteChangeSetResult" executeChangeSetOutputDecoder)
                
            )



{-| Options for a executeChangeSet request
-}
type alias ExecuteChangeSetOptions =
    {
    stackName : Maybe String,clientRequestToken : Maybe String
    }



{-| <p>Returns the stack policy for a specified stack. If a stack doesn't have a policy, a null value is returned.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}

getStackPolicy :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetStackPolicyOutput)

getStackPolicy stackName =
    
    let
        requestInput = GetStackPolicyInput
            
            stackName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "GetStackPolicy")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs getStackPolicyInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetStackPolicy"
                
                (AWS.Core.Decode.ResultDecoder "GetStackPolicyResult" getStackPolicyOutputDecoder)
                
            )





{-| <p>Returns the template body for a specified stack. You can get the template for running or deleted stacks.</p> <p>For deleted stacks, GetTemplate returns the template for up to 90 days after the stack has been deleted.</p> <note> <p> If the template does not exist, a <code>ValidationError</code> is returned. </p> </note>

__Required Parameters__



-}

getTemplate :
  
  
    ( GetTemplateOptions -> GetTemplateOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTemplateOutput)

getTemplate setOptions =
    
    let
        requestInput = GetTemplateInput
            
            options.stackName
            
            options.changeSetName
            
            options.templateStage
            
        
        options = setOptions (GetTemplateOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "GetTemplate")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs getTemplateInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetTemplate"
                
                (AWS.Core.Decode.ResultDecoder "GetTemplateResult" getTemplateOutputDecoder)
                
            )



{-| Options for a getTemplate request
-}
type alias GetTemplateOptions =
    {
    stackName : Maybe String,changeSetName : Maybe String,templateStage : Maybe TemplateStage
    }



{-| <p>Returns information about a new or existing template. The <code>GetTemplateSummary</code> action is useful for viewing parameter information, such as default parameter values and parameter types, before you create or update a stack or stack set.</p> <p>You can use the <code>GetTemplateSummary</code> action when you submit a template, or you can get template information for a stack set, or a running or deleted stack.</p> <p>For deleted stacks, <code>GetTemplateSummary</code> returns the template information for up to 90 days after the stack has been deleted. If the template does not exist, a <code>ValidationError</code> is returned.</p>

__Required Parameters__



-}

getTemplateSummary :
  
  
    ( GetTemplateSummaryOptions -> GetTemplateSummaryOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTemplateSummaryOutput)

getTemplateSummary setOptions =
    
    let
        requestInput = GetTemplateSummaryInput
            
            options.templateBody
            
            options.templateURL
            
            options.stackName
            
            options.stackSetName
            
        
        options = setOptions (GetTemplateSummaryOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "GetTemplateSummary")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs getTemplateSummaryInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetTemplateSummary"
                
                (AWS.Core.Decode.ResultDecoder "GetTemplateSummaryResult" getTemplateSummaryOutputDecoder)
                
            )



{-| Options for a getTemplateSummary request
-}
type alias GetTemplateSummaryOptions =
    {
    templateBody : Maybe String,templateURL : Maybe String,stackName : Maybe String,stackSetName : Maybe String
    }



{-| <p>Returns the ID and status of each active change set for a stack. For example, AWS CloudFormation lists change sets that are in the <code>CREATE_IN_PROGRESS</code> or <code>CREATE_PENDING</code> state.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}

listChangeSets :
  
    String ->
  
  
    ( ListChangeSetsOptions -> ListChangeSetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListChangeSetsOutput)

listChangeSets stackName setOptions =
    
    let
        requestInput = ListChangeSetsInput
            
            stackName
            
            options.nextToken
            
        
        options = setOptions (ListChangeSetsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListChangeSets")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listChangeSetsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListChangeSets"
                
                (AWS.Core.Decode.ResultDecoder "ListChangeSetsResult" listChangeSetsOutputDecoder)
                
            )



{-| Options for a listChangeSets request
-}
type alias ListChangeSetsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Lists all exported output values in the account and region in which you call this action. Use this action to see the exported output values that you can import into other stacks. To import values, use the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html"> <code>Fn::ImportValue</code> </a> function. </p> <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html"> AWS CloudFormation Export Stack Output Values</a>.</p>

__Required Parameters__



-}

listExports :
  
  
    ( ListExportsOptions -> ListExportsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListExportsOutput)

listExports setOptions =
    
    let
        requestInput = ListExportsInput
            
            options.nextToken
            
        
        options = setOptions (ListExportsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListExports")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listExportsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListExports"
                
                (AWS.Core.Decode.ResultDecoder "ListExportsResult" listExportsOutputDecoder)
                
            )



{-| Options for a listExports request
-}
type alias ListExportsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see <a>ListExports</a>. </p> <p>For more information about importing an exported output value, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html"> <code>Fn::ImportValue</code> </a> function. </p>

__Required Parameters__

* `exportName` __:__ `String`


-}

listImports :
  
    String ->
  
  
    ( ListImportsOptions -> ListImportsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListImportsOutput)

listImports exportName setOptions =
    
    let
        requestInput = ListImportsInput
            
            exportName
            
            options.nextToken
            
        
        options = setOptions (ListImportsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListImports")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listImportsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListImports"
                
                (AWS.Core.Decode.ResultDecoder "ListImportsResult" listImportsOutputDecoder)
                
            )



{-| Options for a listImports request
-}
type alias ListImportsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Returns summary information about stack instances that are associated with the specified stack set. You can filter for stack instances that are associated with a specific AWS account name or region.</p>

__Required Parameters__

* `stackSetName` __:__ `String`


-}

listStackInstances :
  
    String ->
  
  
    ( ListStackInstancesOptions -> ListStackInstancesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStackInstancesOutput)

listStackInstances stackSetName setOptions =
    
    let
        requestInput = ListStackInstancesInput
            
            stackSetName
            
            options.nextToken
            
            options.maxResults
            
            options.stackInstanceAccount
            
            options.stackInstanceRegion
            
        
        options = setOptions (ListStackInstancesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListStackInstances")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listStackInstancesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListStackInstances"
                
                (AWS.Core.Decode.ResultDecoder "ListStackInstancesResult" listStackInstancesOutputDecoder)
                
            )



{-| Options for a listStackInstances request
-}
type alias ListStackInstancesOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int,stackInstanceAccount : Maybe String,stackInstanceRegion : Maybe String
    }



{-| <p>Returns descriptions of all resources of the specified stack.</p> <p>For deleted stacks, ListStackResources returns resource information for up to 90 days after the stack has been deleted.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}

listStackResources :
  
    String ->
  
  
    ( ListStackResourcesOptions -> ListStackResourcesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStackResourcesOutput)

listStackResources stackName setOptions =
    
    let
        requestInput = ListStackResourcesInput
            
            stackName
            
            options.nextToken
            
        
        options = setOptions (ListStackResourcesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListStackResources")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listStackResourcesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListStackResources"
                
                (AWS.Core.Decode.ResultDecoder "ListStackResourcesResult" listStackResourcesOutputDecoder)
                
            )



{-| Options for a listStackResources request
-}
type alias ListStackResourcesOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Returns summary information about the results of a stack set operation. </p>

__Required Parameters__

* `stackSetName` __:__ `String`
* `operationId` __:__ `String`


-}

listStackSetOperationResults :
  
    String ->
  
    String ->
  
  
    ( ListStackSetOperationResultsOptions -> ListStackSetOperationResultsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStackSetOperationResultsOutput)

listStackSetOperationResults stackSetName operationId setOptions =
    
    let
        requestInput = ListStackSetOperationResultsInput
            
            stackSetName
            
            operationId
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListStackSetOperationResultsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListStackSetOperationResults")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listStackSetOperationResultsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListStackSetOperationResults"
                
                (AWS.Core.Decode.ResultDecoder "ListStackSetOperationResultsResult" listStackSetOperationResultsOutputDecoder)
                
            )



{-| Options for a listStackSetOperationResults request
-}
type alias ListStackSetOperationResultsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Returns summary information about operations performed on a stack set. </p>

__Required Parameters__

* `stackSetName` __:__ `String`


-}

listStackSetOperations :
  
    String ->
  
  
    ( ListStackSetOperationsOptions -> ListStackSetOperationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStackSetOperationsOutput)

listStackSetOperations stackSetName setOptions =
    
    let
        requestInput = ListStackSetOperationsInput
            
            stackSetName
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListStackSetOperationsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListStackSetOperations")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listStackSetOperationsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListStackSetOperations"
                
                (AWS.Core.Decode.ResultDecoder "ListStackSetOperationsResult" listStackSetOperationsOutputDecoder)
                
            )



{-| Options for a listStackSetOperations request
-}
type alias ListStackSetOperationsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Returns summary information about stack sets that are associated with the user.</p>

__Required Parameters__



-}

listStackSets :
  
  
    ( ListStackSetsOptions -> ListStackSetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStackSetsOutput)

listStackSets setOptions =
    
    let
        requestInput = ListStackSetsInput
            
            options.nextToken
            
            options.maxResults
            
            options.status
            
        
        options = setOptions (ListStackSetsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListStackSets")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listStackSetsInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListStackSets"
                
                (AWS.Core.Decode.ResultDecoder "ListStackSetsResult" listStackSetsOutputDecoder)
                
            )



{-| Options for a listStackSets request
-}
type alias ListStackSetsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int,status : Maybe StackSetStatus
    }



{-| <p>Returns the summary information for stacks whose status matches the specified StackStatusFilter. Summary information for stacks that have been deleted is kept for 90 days after the stack is deleted. If no StackStatusFilter is specified, summary information for all stacks is returned (including existing stacks and stacks that have been deleted).</p>

__Required Parameters__



-}

listStacks :
  
  
    ( ListStacksOptions -> ListStacksOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStacksOutput)

listStacks setOptions =
    
    let
        requestInput = ListStacksInput
            
            options.nextToken
            
            options.stackStatusFilter
            
        
        options = setOptions (ListStacksOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListStacks")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listStacksInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListStacks"
                
                (AWS.Core.Decode.ResultDecoder "ListStacksResult" listStacksOutputDecoder)
                
            )



{-| Options for a listStacks request
-}
type alias ListStacksOptions =
    {
    nextToken : Maybe String,stackStatusFilter : Maybe (List StackStatus)
    }



{-| <p>Sets a stack policy for a specified stack.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}

setStackPolicy :
  
    String ->
  
  
    ( SetStackPolicyOptions -> SetStackPolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

setStackPolicy stackName setOptions =
    
    let
        requestInput = SetStackPolicyInput
            
            stackName
            
            options.stackPolicyBody
            
            options.stackPolicyURL
            
        
        options = setOptions (SetStackPolicyOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SetStackPolicy")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs setStackPolicyInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetStackPolicy"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a setStackPolicy request
-}
type alias SetStackPolicyOptions =
    {
    stackPolicyBody : Maybe String,stackPolicyURL : Maybe String
    }



{-| <p>Sends a signal to the specified resource with a success or failure status. You can use the SignalResource API in conjunction with a creation policy or update policy. AWS CloudFormation doesn't proceed with a stack creation or update until resources receive the required number of signals or the timeout period is exceeded. The SignalResource API is useful in cases where you want to send signals from anywhere other than an Amazon EC2 instance.</p>

__Required Parameters__

* `stackName` __:__ `String`
* `logicalResourceId` __:__ `String`
* `uniqueId` __:__ `String`
* `status` __:__ `ResourceSignalStatus`


-}

signalResource :
  
    String ->
  
    String ->
  
    String ->
  
    ResourceSignalStatus ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

signalResource stackName logicalResourceId uniqueId status =
    
    let
        requestInput = SignalResourceInput
            
            stackName
            
            logicalResourceId
            
            uniqueId
            
            status
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SignalResource")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs signalResourceInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SignalResource"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Stops an in-progress operation on a stack set and its associated stack instances. </p>

__Required Parameters__

* `stackSetName` __:__ `String`
* `operationId` __:__ `String`


-}

stopStackSetOperation :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopStackSetOperationOutput)

stopStackSetOperation stackSetName operationId =
    
    let
        requestInput = StopStackSetOperationInput
            
            stackSetName
            
            operationId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "StopStackSetOperation")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs stopStackSetOperationInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopStackSetOperation"
                
                (AWS.Core.Decode.ResultDecoder "StopStackSetOperationResult" stopStackSetOperationOutputDecoder)
                
            )





{-| <p>Updates a stack as specified in the template. After the call completes successfully, the stack update starts. You can check the status of the stack via the <a>DescribeStacks</a> action.</p> <p>To get a copy of the template for an existing stack, you can use the <a>GetTemplate</a> action.</p> <p>For more information about creating an update template, updating a stack, and monitoring the progress of the update, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html">Updating a Stack</a>.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}

updateStack :
  
    String ->
  
  
    ( UpdateStackOptions -> UpdateStackOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateStackOutput)

updateStack stackName setOptions =
    
    let
        requestInput = UpdateStackInput
            
            stackName
            
            options.templateBody
            
            options.templateURL
            
            options.usePreviousTemplate
            
            options.stackPolicyDuringUpdateBody
            
            options.stackPolicyDuringUpdateURL
            
            options.parameters
            
            options.capabilities
            
            options.resourceTypes
            
            options.roleARN
            
            options.rollbackConfiguration
            
            options.stackPolicyBody
            
            options.stackPolicyURL
            
            options.notificationARNs
            
            options.tags
            
            options.clientRequestToken
            
        
        options = setOptions (UpdateStackOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UpdateStack")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs updateStackInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateStack"
                
                (AWS.Core.Decode.ResultDecoder "UpdateStackResult" updateStackOutputDecoder)
                
            )



{-| Options for a updateStack request
-}
type alias UpdateStackOptions =
    {
    templateBody : Maybe String,templateURL : Maybe String,usePreviousTemplate : Maybe Bool,stackPolicyDuringUpdateBody : Maybe String,stackPolicyDuringUpdateURL : Maybe String,parameters : Maybe (List Parameter),capabilities : Maybe (List Capability),resourceTypes : Maybe (List String),roleARN : Maybe String,rollbackConfiguration : Maybe RollbackConfiguration,stackPolicyBody : Maybe String,stackPolicyURL : Maybe String,notificationARNs : Maybe (List String),tags : Maybe (List Tag),clientRequestToken : Maybe String
    }



{-| <p>Updates the parameter values for stack instances for the specified accounts, within the specified regions. A stack instance refers to a stack in a specific account and region. </p> <p>You can only update stack instances in regions and accounts where they already exist; to create additional stack instances, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html">CreateStackInstances</a>. </p> <p>During stack set updates, any parameters overridden for a stack instance are not updated, but retain their overridden value.</p> <p>You can only update the parameter <i>values</i> that are specified in the stack set; to add or delete a parameter itself, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a> to update the stack set template. If you add a parameter to a template, before you can override the parameter value specified in the stack set you must first use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a> to update all stack instances with the updated template and parameter value specified in the stack set. Once a stack instance has been updated with the new parameter, you can then override the parameter value using <code>UpdateStackInstances</code>.</p>

__Required Parameters__

* `stackSetName` __:__ `String`
* `accounts` __:__ `(List String)`
* `regions` __:__ `(List String)`


-}

updateStackInstances :
  
    String ->
  
    (List String) ->
  
    (List String) ->
  
  
    ( UpdateStackInstancesOptions -> UpdateStackInstancesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateStackInstancesOutput)

updateStackInstances stackSetName accounts regions setOptions =
    
    let
        requestInput = UpdateStackInstancesInput
            
            stackSetName
            
            accounts
            
            regions
            
            options.parameterOverrides
            
            options.operationPreferences
            
            options.operationId
            
        
        options = setOptions (UpdateStackInstancesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UpdateStackInstances")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs updateStackInstancesInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateStackInstances"
                
                (AWS.Core.Decode.ResultDecoder "UpdateStackInstancesResult" updateStackInstancesOutputDecoder)
                
            )



{-| Options for a updateStackInstances request
-}
type alias UpdateStackInstancesOptions =
    {
    parameterOverrides : Maybe (List Parameter),operationPreferences : Maybe StackSetOperationPreferences,operationId : Maybe String
    }



{-| <p>Updates the stack set, and associated stack instances in the specified accounts and regions.</p> <p>Even if the stack set operation created by updating the stack set fails (completely or partially, below or above a specified failure tolerance), the stack set is updated with your changes. Subsequent <a>CreateStackInstances</a> calls on the specified stack set use the updated stack set.</p>

__Required Parameters__

* `stackSetName` __:__ `String`


-}

updateStackSet :
  
    String ->
  
  
    ( UpdateStackSetOptions -> UpdateStackSetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateStackSetOutput)

updateStackSet stackSetName setOptions =
    
    let
        requestInput = UpdateStackSetInput
            
            stackSetName
            
            options.description
            
            options.templateBody
            
            options.templateURL
            
            options.usePreviousTemplate
            
            options.parameters
            
            options.capabilities
            
            options.tags
            
            options.operationPreferences
            
            options.administrationRoleARN
            
            options.executionRoleName
            
            options.operationId
            
            options.accounts
            
            options.regions
            
        
        options = setOptions (UpdateStackSetOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UpdateStackSet")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs updateStackSetInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateStackSet"
                
                (AWS.Core.Decode.ResultDecoder "UpdateStackSetResult" updateStackSetOutputDecoder)
                
            )



{-| Options for a updateStackSet request
-}
type alias UpdateStackSetOptions =
    {
    description : Maybe String,templateBody : Maybe String,templateURL : Maybe String,usePreviousTemplate : Maybe Bool,parameters : Maybe (List Parameter),capabilities : Maybe (List Capability),tags : Maybe (List Tag),operationPreferences : Maybe StackSetOperationPreferences,administrationRoleARN : Maybe String,executionRoleName : Maybe String,operationId : Maybe String,accounts : Maybe (List String),regions : Maybe (List String)
    }



{-| <p>Updates termination protection for the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see <a href="AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html">Protecting a Stack From Being Deleted</a> in the <i>AWS CloudFormation User Guide</i>.</p> <p> For <a href="AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">nested stacks</a>, termination protection is set on the root stack and cannot be changed directly on the nested stack.</p>

__Required Parameters__

* `enableTerminationProtection` __:__ `Bool`
* `stackName` __:__ `String`


-}

updateTerminationProtection :
  
    Bool ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTerminationProtectionOutput)

updateTerminationProtection enableTerminationProtection stackName =
    
    let
        requestInput = UpdateTerminationProtectionInput
            
            enableTerminationProtection
            
            stackName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UpdateTerminationProtection")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs updateTerminationProtectionInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateTerminationProtection"
                
                (AWS.Core.Decode.ResultDecoder "UpdateTerminationProtectionResult" updateTerminationProtectionOutputDecoder)
                
            )





{-| <p>Validates a specified template. AWS CloudFormation first checks if the template is valid JSON. If it isn't, AWS CloudFormation checks if the template is valid YAML. If both these checks fail, AWS CloudFormation returns a template validation error.</p>

__Required Parameters__



-}

validateTemplate :
  
  
    ( ValidateTemplateOptions -> ValidateTemplateOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ValidateTemplateOutput)

validateTemplate setOptions =
    
    let
        requestInput = ValidateTemplateInput
            
            options.templateBody
            
            options.templateURL
            
        
        options = setOptions (ValidateTemplateOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ValidateTemplate")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs validateTemplateInputEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ValidateTemplate"
                
                (AWS.Core.Decode.ResultDecoder "ValidateTemplateResult" validateTemplateOutputDecoder)
                
            )



{-| Options for a validateTemplate request
-}
type alias ValidateTemplateOptions =
    {
    templateBody : Maybe String,templateURL : Maybe String
    }




{-| <p>Structure that contains the results of the account gate function which AWS CloudFormation invokes, if present, before proceeding with a stack set operation in an account and region.</p> <p>For each account and region, AWS CloudFormation lets you specify a Lamdba function that encapsulates any requirements that must be met before CloudFormation can proceed with a stack set operation in that account and region. CloudFormation invokes the function each time a stack set operation is requested for that account and region; if the function returns <code>FAILED</code>, CloudFormation cancels the operation in that account and region, and sets the stack set operation result status for that account and region to <code>FAILED</code>. </p> <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-account-gating.html">Configuring a target account gate</a>.</p>
-}
type alias AccountGateResult =
    { status : Maybe AccountGateStatus
    , statusReason : Maybe String
    }



accountGateResultDecoder : JD.Decoder AccountGateResult
accountGateResultDecoder =
    JD.succeed AccountGateResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            accountGateStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusReason", "statusReason"]
            JD.string
        )
        




accountGateResultToString : AccountGateResult -> String -- List (String, String)
accountGateResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusReason" "" -- val.statusReason
        
    --     |> Dict.toList
    ""



{-| One of

* `AccountGateStatus_SUCCEEDED`
* `AccountGateStatus_FAILED`
* `AccountGateStatus_SKIPPED`

-}
type AccountGateStatus
    = AccountGateStatus_SUCCEEDED
    | AccountGateStatus_FAILED
    | AccountGateStatus_SKIPPED



accountGateStatusDecoder : JD.Decoder AccountGateStatus
accountGateStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCEEDED" ->
                        JD.succeed AccountGateStatus_SUCCEEDED

                    "FAILED" ->
                        JD.succeed AccountGateStatus_FAILED

                    "SKIPPED" ->
                        JD.succeed AccountGateStatus_SKIPPED


                    _ ->
                        JD.fail "bad thing"
            )




accountGateStatusToString : AccountGateStatus -> String
accountGateStatusToString val =
    case val of
        AccountGateStatus_SUCCEEDED ->
            "SUCCEEDED"

        AccountGateStatus_FAILED ->
            "FAILED"

        AccountGateStatus_SKIPPED ->
            "SKIPPED"




{-| <p>The AccountLimit data type. For more information about account limits, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html">AWS CloudFormation Limits</a> in the <i>AWS CloudFormation User Guide</i>.</p>
-}
type alias AccountLimit =
    { name : Maybe String
    , value : Maybe Int
    }



accountLimitDecoder : JD.Decoder AccountLimit
accountLimitDecoder =
    JD.succeed AccountLimit
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.int
        )
        




accountLimitToString : AccountLimit -> String -- List (String, String)
accountLimitToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| One of

* `Capability_CAPABILITY_IAM`
* `Capability_CAPABILITY_NAMED_IAM`
* `Capability_CAPABILITY_AUTO_EXPAND`

-}
type Capability
    = Capability_CAPABILITY_IAM
    | Capability_CAPABILITY_NAMED_IAM
    | Capability_CAPABILITY_AUTO_EXPAND



capabilityDecoder : JD.Decoder Capability
capabilityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CAPABILITY_IAM" ->
                        JD.succeed Capability_CAPABILITY_IAM

                    "CAPABILITY_NAMED_IAM" ->
                        JD.succeed Capability_CAPABILITY_NAMED_IAM

                    "CAPABILITY_AUTO_EXPAND" ->
                        JD.succeed Capability_CAPABILITY_AUTO_EXPAND


                    _ ->
                        JD.fail "bad thing"
            )




capabilityToString : Capability -> String
capabilityToString val =
    case val of
        Capability_CAPABILITY_IAM ->
            "CAPABILITY_IAM"

        Capability_CAPABILITY_NAMED_IAM ->
            "CAPABILITY_NAMED_IAM"

        Capability_CAPABILITY_AUTO_EXPAND ->
            "CAPABILITY_AUTO_EXPAND"




{-| <p>The <code>Change</code> structure describes the changes AWS CloudFormation will perform if you execute the change set.</p>
-}
type alias Change =
    { type_ : Maybe ChangeType
    , resourceChange : Maybe ResourceChange
    }



changeDecoder : JD.Decoder Change
changeDecoder =
    JD.succeed Change
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            changeTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceChange", "resourceChange"]
            resourceChangeDecoder
        )
        




changeToString : Change -> String -- List (String, String)
changeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "resourceChange" "" -- val.resourceChange
        
    --     |> Dict.toList
    ""



{-| One of

* `ChangeAction_Add`
* `ChangeAction_Modify`
* `ChangeAction_Remove`

-}
type ChangeAction
    = ChangeAction_Add
    | ChangeAction_Modify
    | ChangeAction_Remove



changeActionDecoder : JD.Decoder ChangeAction
changeActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Add" ->
                        JD.succeed ChangeAction_Add

                    "Modify" ->
                        JD.succeed ChangeAction_Modify

                    "Remove" ->
                        JD.succeed ChangeAction_Remove


                    _ ->
                        JD.fail "bad thing"
            )




changeActionToString : ChangeAction -> String
changeActionToString val =
    case val of
        ChangeAction_Add ->
            "Add"

        ChangeAction_Modify ->
            "Modify"

        ChangeAction_Remove ->
            "Remove"




{-| One of

* `ChangeSetStatus_CREATE_PENDING`
* `ChangeSetStatus_CREATE_IN_PROGRESS`
* `ChangeSetStatus_CREATE_COMPLETE`
* `ChangeSetStatus_DELETE_COMPLETE`
* `ChangeSetStatus_FAILED`

-}
type ChangeSetStatus
    = ChangeSetStatus_CREATE_PENDING
    | ChangeSetStatus_CREATE_IN_PROGRESS
    | ChangeSetStatus_CREATE_COMPLETE
    | ChangeSetStatus_DELETE_COMPLETE
    | ChangeSetStatus_FAILED



changeSetStatusDecoder : JD.Decoder ChangeSetStatus
changeSetStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_PENDING" ->
                        JD.succeed ChangeSetStatus_CREATE_PENDING

                    "CREATE_IN_PROGRESS" ->
                        JD.succeed ChangeSetStatus_CREATE_IN_PROGRESS

                    "CREATE_COMPLETE" ->
                        JD.succeed ChangeSetStatus_CREATE_COMPLETE

                    "DELETE_COMPLETE" ->
                        JD.succeed ChangeSetStatus_DELETE_COMPLETE

                    "FAILED" ->
                        JD.succeed ChangeSetStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




changeSetStatusToString : ChangeSetStatus -> String
changeSetStatusToString val =
    case val of
        ChangeSetStatus_CREATE_PENDING ->
            "CREATE_PENDING"

        ChangeSetStatus_CREATE_IN_PROGRESS ->
            "CREATE_IN_PROGRESS"

        ChangeSetStatus_CREATE_COMPLETE ->
            "CREATE_COMPLETE"

        ChangeSetStatus_DELETE_COMPLETE ->
            "DELETE_COMPLETE"

        ChangeSetStatus_FAILED ->
            "FAILED"




{-| <p>The <code>ChangeSetSummary</code> structure describes a change set, its status, and the stack with which it's associated.</p>
-}
type alias ChangeSetSummary =
    { stackId : Maybe String
    , stackName : Maybe String
    , changeSetId : Maybe String
    , changeSetName : Maybe String
    , executionStatus : Maybe ExecutionStatus
    , status : Maybe ChangeSetStatus
    , statusReason : Maybe String
    , creationTime : Maybe Posix
    , description : Maybe String
    }



changeSetSummaryDecoder : JD.Decoder ChangeSetSummary
changeSetSummaryDecoder =
    JD.succeed ChangeSetSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackName", "stackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeSetId", "changeSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeSetName", "changeSetName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExecutionStatus", "executionStatus"]
            executionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            changeSetStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusReason", "statusReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        




changeSetSummaryToString : ChangeSetSummary -> String -- List (String, String)
changeSetSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "stackName" "" -- val.stackName
        
    --     |> Dict.insert
    --         "changeSetId" "" -- val.changeSetId
        
    --     |> Dict.insert
    --         "changeSetName" "" -- val.changeSetName
        
    --     |> Dict.insert
    --         "executionStatus" "" -- val.executionStatus
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusReason" "" -- val.statusReason
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.toList
    ""



{-| One of

* `ChangeSetType_CREATE`
* `ChangeSetType_UPDATE`

-}
type ChangeSetType
    = ChangeSetType_CREATE
    | ChangeSetType_UPDATE



changeSetTypeDecoder : JD.Decoder ChangeSetType
changeSetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE" ->
                        JD.succeed ChangeSetType_CREATE

                    "UPDATE" ->
                        JD.succeed ChangeSetType_UPDATE


                    _ ->
                        JD.fail "bad thing"
            )




changeSetTypeToString : ChangeSetType -> String
changeSetTypeToString val =
    case val of
        ChangeSetType_CREATE ->
            "CREATE"

        ChangeSetType_UPDATE ->
            "UPDATE"




{-| One of

* `ChangeSource_ResourceReference`
* `ChangeSource_ParameterReference`
* `ChangeSource_ResourceAttribute`
* `ChangeSource_DirectModification`
* `ChangeSource_Automatic`

-}
type ChangeSource
    = ChangeSource_ResourceReference
    | ChangeSource_ParameterReference
    | ChangeSource_ResourceAttribute
    | ChangeSource_DirectModification
    | ChangeSource_Automatic



changeSourceDecoder : JD.Decoder ChangeSource
changeSourceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ResourceReference" ->
                        JD.succeed ChangeSource_ResourceReference

                    "ParameterReference" ->
                        JD.succeed ChangeSource_ParameterReference

                    "ResourceAttribute" ->
                        JD.succeed ChangeSource_ResourceAttribute

                    "DirectModification" ->
                        JD.succeed ChangeSource_DirectModification

                    "Automatic" ->
                        JD.succeed ChangeSource_Automatic


                    _ ->
                        JD.fail "bad thing"
            )




changeSourceToString : ChangeSource -> String
changeSourceToString val =
    case val of
        ChangeSource_ResourceReference ->
            "ResourceReference"

        ChangeSource_ParameterReference ->
            "ParameterReference"

        ChangeSource_ResourceAttribute ->
            "ResourceAttribute"

        ChangeSource_DirectModification ->
            "DirectModification"

        ChangeSource_Automatic ->
            "Automatic"




{-| One of

* `ChangeType_Resource`

-}
type ChangeType
    = ChangeType_Resource



changeTypeDecoder : JD.Decoder ChangeType
changeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Resource" ->
                        JD.succeed ChangeType_Resource


                    _ ->
                        JD.fail "bad thing"
            )




changeTypeToString : ChangeType -> String
changeTypeToString val =
    case val of
        ChangeType_Resource ->
            "Resource"




{-| Type of HTTP response from continueUpdateRollba
-}
type alias ContinueUpdateRollbackOutput =
    { 
    }



continueUpdateRollbackOutputDecoder : JD.Decoder ContinueUpdateRollbackOutput
continueUpdateRollbackOutputDecoder =
    JD.succeed ContinueUpdateRollbackOutput
        




continueUpdateRollbackOutputToString : ContinueUpdateRollbackOutput -> String -- List (String, String)
continueUpdateRollbackOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createChangeS
-}
type alias CreateChangeSetOutput =
    { id : Maybe String
    , stackId : Maybe String
    }



createChangeSetOutputDecoder : JD.Decoder CreateChangeSetOutput
createChangeSetOutputDecoder =
    JD.succeed CreateChangeSetOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        




createChangeSetOutputToString : CreateChangeSetOutput -> String -- List (String, String)
createChangeSetOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createStackInstanc
-}
type alias CreateStackInstancesOutput =
    { operationId : Maybe String
    }



createStackInstancesOutputDecoder : JD.Decoder CreateStackInstancesOutput
createStackInstancesOutputDecoder =
    JD.succeed CreateStackInstancesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperationId", "operationId"]
            JD.string
        )
        




createStackInstancesOutputToString : CreateStackInstancesOutput -> String -- List (String, String)
createStackInstancesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operationId" "" -- val.operationId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createSta
-}
type alias CreateStackOutput =
    { stackId : Maybe String
    }



createStackOutputDecoder : JD.Decoder CreateStackOutput
createStackOutputDecoder =
    JD.succeed CreateStackOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        




createStackOutputToString : CreateStackOutput -> String -- List (String, String)
createStackOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createStackS
-}
type alias CreateStackSetOutput =
    { stackSetId : Maybe String
    }



createStackSetOutputDecoder : JD.Decoder CreateStackSetOutput
createStackSetOutputDecoder =
    JD.succeed CreateStackSetOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetId", "stackSetId"]
            JD.string
        )
        




createStackSetOutputToString : CreateStackSetOutput -> String -- List (String, String)
createStackSetOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackSetId" "" -- val.stackSetId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteChangeS
-}
type alias DeleteChangeSetOutput =
    { 
    }



deleteChangeSetOutputDecoder : JD.Decoder DeleteChangeSetOutput
deleteChangeSetOutputDecoder =
    JD.succeed DeleteChangeSetOutput
        




deleteChangeSetOutputToString : DeleteChangeSetOutput -> String -- List (String, String)
deleteChangeSetOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteStackInstanc
-}
type alias DeleteStackInstancesOutput =
    { operationId : Maybe String
    }



deleteStackInstancesOutputDecoder : JD.Decoder DeleteStackInstancesOutput
deleteStackInstancesOutputDecoder =
    JD.succeed DeleteStackInstancesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperationId", "operationId"]
            JD.string
        )
        




deleteStackInstancesOutputToString : DeleteStackInstancesOutput -> String -- List (String, String)
deleteStackInstancesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operationId" "" -- val.operationId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteStackS
-}
type alias DeleteStackSetOutput =
    { 
    }



deleteStackSetOutputDecoder : JD.Decoder DeleteStackSetOutput
deleteStackSetOutputDecoder =
    JD.succeed DeleteStackSetOutput
        




deleteStackSetOutputToString : DeleteStackSetOutput -> String -- List (String, String)
deleteStackSetOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAccountLimi
-}
type alias DescribeAccountLimitsOutput =
    { accountLimits : Maybe (List AccountLimit)
    , nextToken : Maybe String
    }



describeAccountLimitsOutputDecoder : JD.Decoder DescribeAccountLimitsOutput
describeAccountLimitsOutputDecoder =
    JD.succeed DescribeAccountLimitsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AccountLimits", "accountLimits"]
            (JD.list accountLimitDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeAccountLimitsOutputToString : DescribeAccountLimitsOutput -> String -- List (String, String)
describeAccountLimitsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accountLimits" "" -- val.accountLimits
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeChangeS
-}
type alias DescribeChangeSetOutput =
    { changeSetName : Maybe String
    , changeSetId : Maybe String
    , stackId : Maybe String
    , stackName : Maybe String
    , description : Maybe String
    , parameters : Maybe (List Parameter)
    , creationTime : Maybe Posix
    , executionStatus : Maybe ExecutionStatus
    , status : Maybe ChangeSetStatus
    , statusReason : Maybe String
    , notificationARNs : Maybe (List String)
    , rollbackConfiguration : Maybe RollbackConfiguration
    , capabilities : Maybe (List Capability)
    , tags : Maybe (List Tag)
    , changes : Maybe (List Change)
    , nextToken : Maybe String
    }



describeChangeSetOutputDecoder : JD.Decoder DescribeChangeSetOutput
describeChangeSetOutputDecoder =
    JD.succeed DescribeChangeSetOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeSetName", "changeSetName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeSetId", "changeSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackName", "stackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (JD.list parameterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExecutionStatus", "executionStatus"]
            executionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            changeSetStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusReason", "statusReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotificationARNs", "notificationARNs"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RollbackConfiguration", "rollbackConfiguration"]
            rollbackConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Capabilities", "capabilities"]
            (JD.list capabilityDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Changes", "changes"]
            (JD.list changeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeChangeSetOutputToString : DescribeChangeSetOutput -> String -- List (String, String)
describeChangeSetOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeSetName" "" -- val.changeSetName
        
    --     |> Dict.insert
    --         "changeSetId" "" -- val.changeSetId
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "stackName" "" -- val.stackName
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "executionStatus" "" -- val.executionStatus
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusReason" "" -- val.statusReason
        
    --     |> Dict.insert
    --         "notificationARNs" "" -- val.notificationARNs
        
    --     |> Dict.insert
    --         "rollbackConfiguration" "" -- val.rollbackConfiguration
        
    --     |> Dict.insert
    --         "capabilities" "" -- val.capabilities
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "changes" "" -- val.changes
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStackDriftDetectionStat
-}
type alias DescribeStackDriftDetectionStatusOutput =
    { stackId : String
    , stackDriftDetectionId : String
    , stackDriftStatus : Maybe StackDriftStatus
    , detectionStatus : StackDriftDetectionStatus
    , detectionStatusReason : Maybe String
    , driftedStackResourceCount : Maybe Int
    , timestamp : Posix
    }



describeStackDriftDetectionStatusOutputDecoder : JD.Decoder DescribeStackDriftDetectionStatusOutput
describeStackDriftDetectionStatusOutputDecoder =
    JD.succeed DescribeStackDriftDetectionStatusOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackDriftDetectionId", "stackDriftDetectionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackDriftStatus", "stackDriftStatus"]
            stackDriftStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DetectionStatus", "detectionStatus"]
            stackDriftDetectionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DetectionStatusReason", "detectionStatusReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DriftedStackResourceCount", "driftedStackResourceCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Timestamp", "timestamp"]
            JDX.datetime
        )
        




describeStackDriftDetectionStatusOutputToString : DescribeStackDriftDetectionStatusOutput -> String -- List (String, String)
describeStackDriftDetectionStatusOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "stackDriftDetectionId" "" -- val.stackDriftDetectionId
        
    --     |> Dict.insert
    --         "stackDriftStatus" "" -- val.stackDriftStatus
        
    --     |> Dict.insert
    --         "detectionStatus" "" -- val.detectionStatus
        
    --     |> Dict.insert
    --         "detectionStatusReason" "" -- val.detectionStatusReason
        
    --     |> Dict.insert
    --         "driftedStackResourceCount" "" -- val.driftedStackResourceCount
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStackEven
-}
type alias DescribeStackEventsOutput =
    { stackEvents : Maybe (List StackEvent)
    , nextToken : Maybe String
    }



describeStackEventsOutputDecoder : JD.Decoder DescribeStackEventsOutput
describeStackEventsOutputDecoder =
    JD.succeed DescribeStackEventsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackEvents", "stackEvents"]
            (JD.list stackEventDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeStackEventsOutputToString : DescribeStackEventsOutput -> String -- List (String, String)
describeStackEventsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackEvents" "" -- val.stackEvents
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStackInstan
-}
type alias DescribeStackInstanceOutput =
    { stackInstance : Maybe StackInstance
    }



describeStackInstanceOutputDecoder : JD.Decoder DescribeStackInstanceOutput
describeStackInstanceOutputDecoder =
    JD.succeed DescribeStackInstanceOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackInstance", "stackInstance"]
            stackInstanceDecoder
        )
        




describeStackInstanceOutputToString : DescribeStackInstanceOutput -> String -- List (String, String)
describeStackInstanceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackInstance" "" -- val.stackInstance
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStackResourceDrif
-}
type alias DescribeStackResourceDriftsOutput =
    { stackResourceDrifts : (List StackResourceDrift)
    , nextToken : Maybe String
    }



describeStackResourceDriftsOutputDecoder : JD.Decoder DescribeStackResourceDriftsOutput
describeStackResourceDriftsOutputDecoder =
    JD.succeed DescribeStackResourceDriftsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackResourceDrifts", "stackResourceDrifts"]
            (JD.list stackResourceDriftDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeStackResourceDriftsOutputToString : DescribeStackResourceDriftsOutput -> String -- List (String, String)
describeStackResourceDriftsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackResourceDrifts" "" -- val.stackResourceDrifts
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStackResour
-}
type alias DescribeStackResourceOutput =
    { stackResourceDetail : Maybe StackResourceDetail
    }



describeStackResourceOutputDecoder : JD.Decoder DescribeStackResourceOutput
describeStackResourceOutputDecoder =
    JD.succeed DescribeStackResourceOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackResourceDetail", "stackResourceDetail"]
            stackResourceDetailDecoder
        )
        




describeStackResourceOutputToString : DescribeStackResourceOutput -> String -- List (String, String)
describeStackResourceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackResourceDetail" "" -- val.stackResourceDetail
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStackResourc
-}
type alias DescribeStackResourcesOutput =
    { stackResources : Maybe (List StackResource)
    }



describeStackResourcesOutputDecoder : JD.Decoder DescribeStackResourcesOutput
describeStackResourcesOutputDecoder =
    JD.succeed DescribeStackResourcesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackResources", "stackResources"]
            (JD.list stackResourceDecoder)
        )
        




describeStackResourcesOutputToString : DescribeStackResourcesOutput -> String -- List (String, String)
describeStackResourcesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackResources" "" -- val.stackResources
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStackSetOperati
-}
type alias DescribeStackSetOperationOutput =
    { stackSetOperation : Maybe StackSetOperation
    }



describeStackSetOperationOutputDecoder : JD.Decoder DescribeStackSetOperationOutput
describeStackSetOperationOutputDecoder =
    JD.succeed DescribeStackSetOperationOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetOperation", "stackSetOperation"]
            stackSetOperationDecoder
        )
        




describeStackSetOperationOutputToString : DescribeStackSetOperationOutput -> String -- List (String, String)
describeStackSetOperationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackSetOperation" "" -- val.stackSetOperation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStackS
-}
type alias DescribeStackSetOutput =
    { stackSet : Maybe StackSet
    }



describeStackSetOutputDecoder : JD.Decoder DescribeStackSetOutput
describeStackSetOutputDecoder =
    JD.succeed DescribeStackSetOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSet", "stackSet"]
            stackSetDecoder
        )
        




describeStackSetOutputToString : DescribeStackSetOutput -> String -- List (String, String)
describeStackSetOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackSet" "" -- val.stackSet
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStac
-}
type alias DescribeStacksOutput =
    { stacks : Maybe (List Stack)
    , nextToken : Maybe String
    }



describeStacksOutputDecoder : JD.Decoder DescribeStacksOutput
describeStacksOutputDecoder =
    JD.succeed DescribeStacksOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Stacks", "stacks"]
            (JD.list stackDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeStacksOutputToString : DescribeStacksOutput -> String -- List (String, String)
describeStacksOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stacks" "" -- val.stacks
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from detectStackDri
-}
type alias DetectStackDriftOutput =
    { stackDriftDetectionId : String
    }



detectStackDriftOutputDecoder : JD.Decoder DetectStackDriftOutput
detectStackDriftOutputDecoder =
    JD.succeed DetectStackDriftOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackDriftDetectionId", "stackDriftDetectionId"]
            JD.string
        )
        




detectStackDriftOutputToString : DetectStackDriftOutput -> String -- List (String, String)
detectStackDriftOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackDriftDetectionId" "" -- val.stackDriftDetectionId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from detectStackResourceDri
-}
type alias DetectStackResourceDriftOutput =
    { stackResourceDrift : StackResourceDrift
    }



detectStackResourceDriftOutputDecoder : JD.Decoder DetectStackResourceDriftOutput
detectStackResourceDriftOutputDecoder =
    JD.succeed DetectStackResourceDriftOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackResourceDrift", "stackResourceDrift"]
            stackResourceDriftDecoder
        )
        




detectStackResourceDriftOutputToString : DetectStackResourceDriftOutput -> String -- List (String, String)
detectStackResourceDriftOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackResourceDrift" "" -- val.stackResourceDrift
        
    --     |> Dict.toList
    ""



{-| One of

* `DifferenceType_ADD`
* `DifferenceType_REMOVE`
* `DifferenceType_NOT_EQUAL`

-}
type DifferenceType
    = DifferenceType_ADD
    | DifferenceType_REMOVE
    | DifferenceType_NOT_EQUAL



differenceTypeDecoder : JD.Decoder DifferenceType
differenceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ADD" ->
                        JD.succeed DifferenceType_ADD

                    "REMOVE" ->
                        JD.succeed DifferenceType_REMOVE

                    "NOT_EQUAL" ->
                        JD.succeed DifferenceType_NOT_EQUAL


                    _ ->
                        JD.fail "bad thing"
            )




differenceTypeToString : DifferenceType -> String
differenceTypeToString val =
    case val of
        DifferenceType_ADD ->
            "ADD"

        DifferenceType_REMOVE ->
            "REMOVE"

        DifferenceType_NOT_EQUAL ->
            "NOT_EQUAL"




{-| Type of HTTP response from estimateTemplateCo
-}
type alias EstimateTemplateCostOutput =
    { url : Maybe String
    }



estimateTemplateCostOutputDecoder : JD.Decoder EstimateTemplateCostOutput
estimateTemplateCostOutputDecoder =
    JD.succeed EstimateTemplateCostOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Url", "url"]
            JD.string
        )
        




estimateTemplateCostOutputToString : EstimateTemplateCostOutput -> String -- List (String, String)
estimateTemplateCostOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "url" "" -- val.url
        
    --     |> Dict.toList
    ""



{-| One of

* `EvaluationType_Static`
* `EvaluationType_Dynamic`

-}
type EvaluationType
    = EvaluationType_Static
    | EvaluationType_Dynamic



evaluationTypeDecoder : JD.Decoder EvaluationType
evaluationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Static" ->
                        JD.succeed EvaluationType_Static

                    "Dynamic" ->
                        JD.succeed EvaluationType_Dynamic


                    _ ->
                        JD.fail "bad thing"
            )




evaluationTypeToString : EvaluationType -> String
evaluationTypeToString val =
    case val of
        EvaluationType_Static ->
            "Static"

        EvaluationType_Dynamic ->
            "Dynamic"




{-| Type of HTTP response from executeChangeS
-}
type alias ExecuteChangeSetOutput =
    { 
    }



executeChangeSetOutputDecoder : JD.Decoder ExecuteChangeSetOutput
executeChangeSetOutputDecoder =
    JD.succeed ExecuteChangeSetOutput
        




executeChangeSetOutputToString : ExecuteChangeSetOutput -> String -- List (String, String)
executeChangeSetOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `ExecutionStatus_UNAVAILABLE`
* `ExecutionStatus_AVAILABLE`
* `ExecutionStatus_EXECUTE_IN_PROGRESS`
* `ExecutionStatus_EXECUTE_COMPLETE`
* `ExecutionStatus_EXECUTE_FAILED`
* `ExecutionStatus_OBSOLETE`

-}
type ExecutionStatus
    = ExecutionStatus_UNAVAILABLE
    | ExecutionStatus_AVAILABLE
    | ExecutionStatus_EXECUTE_IN_PROGRESS
    | ExecutionStatus_EXECUTE_COMPLETE
    | ExecutionStatus_EXECUTE_FAILED
    | ExecutionStatus_OBSOLETE



executionStatusDecoder : JD.Decoder ExecutionStatus
executionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNAVAILABLE" ->
                        JD.succeed ExecutionStatus_UNAVAILABLE

                    "AVAILABLE" ->
                        JD.succeed ExecutionStatus_AVAILABLE

                    "EXECUTE_IN_PROGRESS" ->
                        JD.succeed ExecutionStatus_EXECUTE_IN_PROGRESS

                    "EXECUTE_COMPLETE" ->
                        JD.succeed ExecutionStatus_EXECUTE_COMPLETE

                    "EXECUTE_FAILED" ->
                        JD.succeed ExecutionStatus_EXECUTE_FAILED

                    "OBSOLETE" ->
                        JD.succeed ExecutionStatus_OBSOLETE


                    _ ->
                        JD.fail "bad thing"
            )




executionStatusToString : ExecutionStatus -> String
executionStatusToString val =
    case val of
        ExecutionStatus_UNAVAILABLE ->
            "UNAVAILABLE"

        ExecutionStatus_AVAILABLE ->
            "AVAILABLE"

        ExecutionStatus_EXECUTE_IN_PROGRESS ->
            "EXECUTE_IN_PROGRESS"

        ExecutionStatus_EXECUTE_COMPLETE ->
            "EXECUTE_COMPLETE"

        ExecutionStatus_EXECUTE_FAILED ->
            "EXECUTE_FAILED"

        ExecutionStatus_OBSOLETE ->
            "OBSOLETE"




{-| <p>The <code>Export</code> structure describes the exported output values for a stack.</p>
-}
type alias Export =
    { exportingStackId : Maybe String
    , name : Maybe String
    , value : Maybe String
    }



exportDecoder : JD.Decoder Export
exportDecoder =
    JD.succeed Export
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExportingStackId", "exportingStackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




exportToString : Export -> String -- List (String, String)
exportToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "exportingStackId" "" -- val.exportingStackId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getStackPoli
-}
type alias GetStackPolicyOutput =
    { stackPolicyBody : Maybe String
    }



getStackPolicyOutputDecoder : JD.Decoder GetStackPolicyOutput
getStackPolicyOutputDecoder =
    JD.succeed GetStackPolicyOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackPolicyBody", "stackPolicyBody"]
            JD.string
        )
        




getStackPolicyOutputToString : GetStackPolicyOutput -> String -- List (String, String)
getStackPolicyOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackPolicyBody" "" -- val.stackPolicyBody
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getTempla
-}
type alias GetTemplateOutput =
    { templateBody : Maybe String
    , stagesAvailable : Maybe (List TemplateStage)
    }



getTemplateOutputDecoder : JD.Decoder GetTemplateOutput
getTemplateOutputDecoder =
    JD.succeed GetTemplateOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TemplateBody", "templateBody"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StagesAvailable", "stagesAvailable"]
            (JD.list templateStageDecoder)
        )
        




getTemplateOutputToString : GetTemplateOutput -> String -- List (String, String)
getTemplateOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "templateBody" "" -- val.templateBody
        
    --     |> Dict.insert
    --         "stagesAvailable" "" -- val.stagesAvailable
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getTemplateSumma
-}
type alias GetTemplateSummaryOutput =
    { parameters : Maybe (List ParameterDeclaration)
    , description : Maybe String
    , capabilities : Maybe (List Capability)
    , capabilitiesReason : Maybe String
    , resourceTypes : Maybe (List String)
    , version : Maybe String
    , metadata : Maybe String
    , declaredTransforms : Maybe (List String)
    }



getTemplateSummaryOutputDecoder : JD.Decoder GetTemplateSummaryOutput
getTemplateSummaryOutputDecoder =
    JD.succeed GetTemplateSummaryOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (JD.list parameterDeclarationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Capabilities", "capabilities"]
            (JD.list capabilityDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CapabilitiesReason", "capabilitiesReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceTypes", "resourceTypes"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Metadata", "metadata"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeclaredTransforms", "declaredTransforms"]
            (JD.list JD.string)
        )
        




getTemplateSummaryOutputToString : GetTemplateSummaryOutput -> String -- List (String, String)
getTemplateSummaryOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "capabilities" "" -- val.capabilities
        
    --     |> Dict.insert
    --         "capabilitiesReason" "" -- val.capabilitiesReason
        
    --     |> Dict.insert
    --         "resourceTypes" "" -- val.resourceTypes
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "metadata" "" -- val.metadata
        
    --     |> Dict.insert
    --         "declaredTransforms" "" -- val.declaredTransforms
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listChangeSe
-}
type alias ListChangeSetsOutput =
    { summaries : Maybe (List ChangeSetSummary)
    , nextToken : Maybe String
    }



listChangeSetsOutputDecoder : JD.Decoder ListChangeSetsOutput
listChangeSetsOutputDecoder =
    JD.succeed ListChangeSetsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Summaries", "summaries"]
            (JD.list changeSetSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listChangeSetsOutputToString : ListChangeSetsOutput -> String -- List (String, String)
listChangeSetsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "summaries" "" -- val.summaries
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listExpor
-}
type alias ListExportsOutput =
    { exports : Maybe (List Export)
    , nextToken : Maybe String
    }



listExportsOutputDecoder : JD.Decoder ListExportsOutput
listExportsOutputDecoder =
    JD.succeed ListExportsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Exports", "exports"]
            (JD.list exportDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listExportsOutputToString : ListExportsOutput -> String -- List (String, String)
listExportsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "exports" "" -- val.exports
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listImpor
-}
type alias ListImportsOutput =
    { imports : Maybe (List String)
    , nextToken : Maybe String
    }



listImportsOutputDecoder : JD.Decoder ListImportsOutput
listImportsOutputDecoder =
    JD.succeed ListImportsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Imports", "imports"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listImportsOutputToString : ListImportsOutput -> String -- List (String, String)
listImportsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imports" "" -- val.imports
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listStackInstanc
-}
type alias ListStackInstancesOutput =
    { summaries : Maybe (List StackInstanceSummary)
    , nextToken : Maybe String
    }



listStackInstancesOutputDecoder : JD.Decoder ListStackInstancesOutput
listStackInstancesOutputDecoder =
    JD.succeed ListStackInstancesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Summaries", "summaries"]
            (JD.list stackInstanceSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listStackInstancesOutputToString : ListStackInstancesOutput -> String -- List (String, String)
listStackInstancesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "summaries" "" -- val.summaries
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listStackResourc
-}
type alias ListStackResourcesOutput =
    { stackResourceSummaries : Maybe (List StackResourceSummary)
    , nextToken : Maybe String
    }



listStackResourcesOutputDecoder : JD.Decoder ListStackResourcesOutput
listStackResourcesOutputDecoder =
    JD.succeed ListStackResourcesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackResourceSummaries", "stackResourceSummaries"]
            (JD.list stackResourceSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listStackResourcesOutputToString : ListStackResourcesOutput -> String -- List (String, String)
listStackResourcesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackResourceSummaries" "" -- val.stackResourceSummaries
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listStackSetOperationResul
-}
type alias ListStackSetOperationResultsOutput =
    { summaries : Maybe (List StackSetOperationResultSummary)
    , nextToken : Maybe String
    }



listStackSetOperationResultsOutputDecoder : JD.Decoder ListStackSetOperationResultsOutput
listStackSetOperationResultsOutputDecoder =
    JD.succeed ListStackSetOperationResultsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Summaries", "summaries"]
            (JD.list stackSetOperationResultSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listStackSetOperationResultsOutputToString : ListStackSetOperationResultsOutput -> String -- List (String, String)
listStackSetOperationResultsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "summaries" "" -- val.summaries
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listStackSetOperatio
-}
type alias ListStackSetOperationsOutput =
    { summaries : Maybe (List StackSetOperationSummary)
    , nextToken : Maybe String
    }



listStackSetOperationsOutputDecoder : JD.Decoder ListStackSetOperationsOutput
listStackSetOperationsOutputDecoder =
    JD.succeed ListStackSetOperationsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Summaries", "summaries"]
            (JD.list stackSetOperationSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listStackSetOperationsOutputToString : ListStackSetOperationsOutput -> String -- List (String, String)
listStackSetOperationsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "summaries" "" -- val.summaries
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listStackSe
-}
type alias ListStackSetsOutput =
    { summaries : Maybe (List StackSetSummary)
    , nextToken : Maybe String
    }



listStackSetsOutputDecoder : JD.Decoder ListStackSetsOutput
listStackSetsOutputDecoder =
    JD.succeed ListStackSetsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Summaries", "summaries"]
            (JD.list stackSetSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listStackSetsOutputToString : ListStackSetsOutput -> String -- List (String, String)
listStackSetsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "summaries" "" -- val.summaries
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listStac
-}
type alias ListStacksOutput =
    { stackSummaries : Maybe (List StackSummary)
    , nextToken : Maybe String
    }



listStacksOutputDecoder : JD.Decoder ListStacksOutput
listStacksOutputDecoder =
    JD.succeed ListStacksOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSummaries", "stackSummaries"]
            (JD.list stackSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listStacksOutputToString : ListStacksOutput -> String -- List (String, String)
listStacksOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackSummaries" "" -- val.stackSummaries
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| One of

* `OnFailure_DO_NOTHING`
* `OnFailure_ROLLBACK`
* `OnFailure_DELETE`

-}
type OnFailure
    = OnFailure_DO_NOTHING
    | OnFailure_ROLLBACK
    | OnFailure_DELETE



onFailureDecoder : JD.Decoder OnFailure
onFailureDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DO_NOTHING" ->
                        JD.succeed OnFailure_DO_NOTHING

                    "ROLLBACK" ->
                        JD.succeed OnFailure_ROLLBACK

                    "DELETE" ->
                        JD.succeed OnFailure_DELETE


                    _ ->
                        JD.fail "bad thing"
            )




onFailureToString : OnFailure -> String
onFailureToString val =
    case val of
        OnFailure_DO_NOTHING ->
            "DO_NOTHING"

        OnFailure_ROLLBACK ->
            "ROLLBACK"

        OnFailure_DELETE ->
            "DELETE"




{-| <p>The Output data type.</p>
-}
type alias Output =
    { outputKey : Maybe String
    , outputValue : Maybe String
    , description : Maybe String
    , exportName : Maybe String
    }



outputDecoder : JD.Decoder Output
outputDecoder =
    JD.succeed Output
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OutputKey", "outputKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OutputValue", "outputValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExportName", "exportName"]
            JD.string
        )
        




outputToString : Output -> String -- List (String, String)
outputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "outputKey" "" -- val.outputKey
        
    --     |> Dict.insert
    --         "outputValue" "" -- val.outputValue
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "exportName" "" -- val.exportName
        
    --     |> Dict.toList
    ""



{-| <p>The Parameter data type.</p>
-}
type alias Parameter =
    { parameterKey : Maybe String
    , parameterValue : Maybe String
    , usePreviousValue : Maybe Bool
    , resolvedValue : Maybe String
    }



parameterDecoder : JD.Decoder Parameter
parameterDecoder =
    JD.succeed Parameter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParameterKey", "parameterKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParameterValue", "parameterValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UsePreviousValue", "usePreviousValue"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResolvedValue", "resolvedValue"]
            JD.string
        )
        




parameterToString : Parameter -> String -- List (String, String)
parameterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "parameterKey" "" -- val.parameterKey
        
    --     |> Dict.insert
    --         "parameterValue" "" -- val.parameterValue
        
    --     |> Dict.insert
    --         "usePreviousValue" "" -- val.usePreviousValue
        
    --     |> Dict.insert
    --         "resolvedValue" "" -- val.resolvedValue
        
    --     |> Dict.toList
    ""



{-| <p>A set of criteria that AWS CloudFormation uses to validate parameter values. Although other constraints might be defined in the stack template, AWS CloudFormation returns only the <code>AllowedValues</code> property.</p>
-}
type alias ParameterConstraints =
    { allowedValues : Maybe (List String)
    }



parameterConstraintsDecoder : JD.Decoder ParameterConstraints
parameterConstraintsDecoder =
    JD.succeed ParameterConstraints
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowedValues", "allowedValues"]
            (JD.list JD.string)
        )
        




parameterConstraintsToString : ParameterConstraints -> String -- List (String, String)
parameterConstraintsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "allowedValues" "" -- val.allowedValues
        
    --     |> Dict.toList
    ""



{-| <p>The ParameterDeclaration data type.</p>
-}
type alias ParameterDeclaration =
    { parameterKey : Maybe String
    , defaultValue : Maybe String
    , parameterType : Maybe String
    , noEcho : Maybe Bool
    , description : Maybe String
    , parameterConstraints : Maybe ParameterConstraints
    }



parameterDeclarationDecoder : JD.Decoder ParameterDeclaration
parameterDeclarationDecoder =
    JD.succeed ParameterDeclaration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParameterKey", "parameterKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParameterType", "parameterType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NoEcho", "noEcho"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParameterConstraints", "parameterConstraints"]
            parameterConstraintsDecoder
        )
        




parameterDeclarationToString : ParameterDeclaration -> String -- List (String, String)
parameterDeclarationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "parameterKey" "" -- val.parameterKey
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "parameterType" "" -- val.parameterType
        
    --     |> Dict.insert
    --         "noEcho" "" -- val.noEcho
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "parameterConstraints" "" -- val.parameterConstraints
        
    --     |> Dict.toList
    ""



{-| <p>Context information that enables AWS CloudFormation to uniquely identify a resource. AWS CloudFormation uses context key-value pairs in cases where a resource's logical and physical IDs are not enough to uniquely identify that resource. Each context key-value pair specifies a resource that contains the targeted resource.</p>
-}
type alias PhysicalResourceIdContextKeyValuePair =
    { key : String
    , value : String
    }



physicalResourceIdContextKeyValuePairDecoder : JD.Decoder PhysicalResourceIdContextKeyValuePair
physicalResourceIdContextKeyValuePairDecoder =
    JD.succeed PhysicalResourceIdContextKeyValuePair
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Value", "value"]
            JD.string
        )
        




physicalResourceIdContextKeyValuePairToString : PhysicalResourceIdContextKeyValuePair -> String -- List (String, String)
physicalResourceIdContextKeyValuePairToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| <p>Information about a resource property whose actual value differs from its expected value, as defined in the stack template and any values specified as template parameters. These will be present only for resources whose <code>StackResourceDriftStatus</code> is <code>MODIFIED</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting Unregulated Configuration Changes to Stacks and Resources</a>.</p>
-}
type alias PropertyDifference =
    { propertyPath : String
    , expectedValue : String
    , actualValue : String
    , differenceType : DifferenceType
    }



propertyDifferenceDecoder : JD.Decoder PropertyDifference
propertyDifferenceDecoder =
    JD.succeed PropertyDifference
        
        |> JDP.custom (AWS.Core.Decode.required
            ["PropertyPath", "propertyPath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ExpectedValue", "expectedValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ActualValue", "actualValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DifferenceType", "differenceType"]
            differenceTypeDecoder
        )
        




propertyDifferenceToString : PropertyDifference -> String -- List (String, String)
propertyDifferenceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "propertyPath" "" -- val.propertyPath
        
    --     |> Dict.insert
    --         "expectedValue" "" -- val.expectedValue
        
    --     |> Dict.insert
    --         "actualValue" "" -- val.actualValue
        
    --     |> Dict.insert
    --         "differenceType" "" -- val.differenceType
        
    --     |> Dict.toList
    ""



{-| One of

* `Replacement_True`
* `Replacement_False`
* `Replacement_Conditional`

-}
type Replacement
    = Replacement_True
    | Replacement_False
    | Replacement_Conditional



replacementDecoder : JD.Decoder Replacement
replacementDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "True" ->
                        JD.succeed Replacement_True

                    "False" ->
                        JD.succeed Replacement_False

                    "Conditional" ->
                        JD.succeed Replacement_Conditional


                    _ ->
                        JD.fail "bad thing"
            )




replacementToString : Replacement -> String
replacementToString val =
    case val of
        Replacement_True ->
            "True"

        Replacement_False ->
            "False"

        Replacement_Conditional ->
            "Conditional"




{-| One of

* `RequiresRecreation_Never`
* `RequiresRecreation_Conditionally`
* `RequiresRecreation_Always`

-}
type RequiresRecreation
    = RequiresRecreation_Never
    | RequiresRecreation_Conditionally
    | RequiresRecreation_Always



requiresRecreationDecoder : JD.Decoder RequiresRecreation
requiresRecreationDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Never" ->
                        JD.succeed RequiresRecreation_Never

                    "Conditionally" ->
                        JD.succeed RequiresRecreation_Conditionally

                    "Always" ->
                        JD.succeed RequiresRecreation_Always


                    _ ->
                        JD.fail "bad thing"
            )




requiresRecreationToString : RequiresRecreation -> String
requiresRecreationToString val =
    case val of
        RequiresRecreation_Never ->
            "Never"

        RequiresRecreation_Conditionally ->
            "Conditionally"

        RequiresRecreation_Always ->
            "Always"




{-| One of

* `ResourceAttribute_Properties`
* `ResourceAttribute_Metadata`
* `ResourceAttribute_CreationPolicy`
* `ResourceAttribute_UpdatePolicy`
* `ResourceAttribute_DeletionPolicy`
* `ResourceAttribute_Tags`

-}
type ResourceAttribute
    = ResourceAttribute_Properties
    | ResourceAttribute_Metadata
    | ResourceAttribute_CreationPolicy
    | ResourceAttribute_UpdatePolicy
    | ResourceAttribute_DeletionPolicy
    | ResourceAttribute_Tags



resourceAttributeDecoder : JD.Decoder ResourceAttribute
resourceAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Properties" ->
                        JD.succeed ResourceAttribute_Properties

                    "Metadata" ->
                        JD.succeed ResourceAttribute_Metadata

                    "CreationPolicy" ->
                        JD.succeed ResourceAttribute_CreationPolicy

                    "UpdatePolicy" ->
                        JD.succeed ResourceAttribute_UpdatePolicy

                    "DeletionPolicy" ->
                        JD.succeed ResourceAttribute_DeletionPolicy

                    "Tags" ->
                        JD.succeed ResourceAttribute_Tags


                    _ ->
                        JD.fail "bad thing"
            )




resourceAttributeToString : ResourceAttribute -> String
resourceAttributeToString val =
    case val of
        ResourceAttribute_Properties ->
            "Properties"

        ResourceAttribute_Metadata ->
            "Metadata"

        ResourceAttribute_CreationPolicy ->
            "CreationPolicy"

        ResourceAttribute_UpdatePolicy ->
            "UpdatePolicy"

        ResourceAttribute_DeletionPolicy ->
            "DeletionPolicy"

        ResourceAttribute_Tags ->
            "Tags"




{-| <p>The <code>ResourceChange</code> structure describes the resource and the action that AWS CloudFormation will perform on it if you execute this change set.</p>
-}
type alias ResourceChange =
    { action : Maybe ChangeAction
    , logicalResourceId : Maybe String
    , physicalResourceId : Maybe String
    , resourceType : Maybe String
    , replacement : Maybe Replacement
    , scope : Maybe (List ResourceAttribute)
    , details : Maybe (List ResourceChangeDetail)
    }



resourceChangeDecoder : JD.Decoder ResourceChange
resourceChangeDecoder =
    JD.succeed ResourceChange
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Action", "action"]
            changeActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogicalResourceId", "logicalResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PhysicalResourceId", "physicalResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceType", "resourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Replacement", "replacement"]
            replacementDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Scope", "scope"]
            (JD.list resourceAttributeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Details", "details"]
            (JD.list resourceChangeDetailDecoder)
        )
        




resourceChangeToString : ResourceChange -> String -- List (String, String)
resourceChangeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "logicalResourceId" "" -- val.logicalResourceId
        
    --     |> Dict.insert
    --         "physicalResourceId" "" -- val.physicalResourceId
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "replacement" "" -- val.replacement
        
    --     |> Dict.insert
    --         "scope" "" -- val.scope
        
    --     |> Dict.insert
    --         "details" "" -- val.details
        
    --     |> Dict.toList
    ""



{-| <p>For a resource with <code>Modify</code> as the action, the <code>ResourceChange</code> structure describes the changes AWS CloudFormation will make to that resource.</p>
-}
type alias ResourceChangeDetail =
    { target : Maybe ResourceTargetDefinition
    , evaluation : Maybe EvaluationType
    , changeSource : Maybe ChangeSource
    , causingEntity : Maybe String
    }



resourceChangeDetailDecoder : JD.Decoder ResourceChangeDetail
resourceChangeDetailDecoder =
    JD.succeed ResourceChangeDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Target", "target"]
            resourceTargetDefinitionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Evaluation", "evaluation"]
            evaluationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeSource", "changeSource"]
            changeSourceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CausingEntity", "causingEntity"]
            JD.string
        )
        




resourceChangeDetailToString : ResourceChangeDetail -> String -- List (String, String)
resourceChangeDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "target" "" -- val.target
        
    --     |> Dict.insert
    --         "evaluation" "" -- val.evaluation
        
    --     |> Dict.insert
    --         "changeSource" "" -- val.changeSource
        
    --     |> Dict.insert
    --         "causingEntity" "" -- val.causingEntity
        
    --     |> Dict.toList
    ""



{-| One of

* `ResourceSignalStatus_SUCCESS`
* `ResourceSignalStatus_FAILURE`

-}
type ResourceSignalStatus
    = ResourceSignalStatus_SUCCESS
    | ResourceSignalStatus_FAILURE



resourceSignalStatusDecoder : JD.Decoder ResourceSignalStatus
resourceSignalStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCESS" ->
                        JD.succeed ResourceSignalStatus_SUCCESS

                    "FAILURE" ->
                        JD.succeed ResourceSignalStatus_FAILURE


                    _ ->
                        JD.fail "bad thing"
            )




resourceSignalStatusToString : ResourceSignalStatus -> String
resourceSignalStatusToString val =
    case val of
        ResourceSignalStatus_SUCCESS ->
            "SUCCESS"

        ResourceSignalStatus_FAILURE ->
            "FAILURE"




{-| One of

* `ResourceStatus_CREATE_IN_PROGRESS`
* `ResourceStatus_CREATE_FAILED`
* `ResourceStatus_CREATE_COMPLETE`
* `ResourceStatus_DELETE_IN_PROGRESS`
* `ResourceStatus_DELETE_FAILED`
* `ResourceStatus_DELETE_COMPLETE`
* `ResourceStatus_DELETE_SKIPPED`
* `ResourceStatus_UPDATE_IN_PROGRESS`
* `ResourceStatus_UPDATE_FAILED`
* `ResourceStatus_UPDATE_COMPLETE`

-}
type ResourceStatus
    = ResourceStatus_CREATE_IN_PROGRESS
    | ResourceStatus_CREATE_FAILED
    | ResourceStatus_CREATE_COMPLETE
    | ResourceStatus_DELETE_IN_PROGRESS
    | ResourceStatus_DELETE_FAILED
    | ResourceStatus_DELETE_COMPLETE
    | ResourceStatus_DELETE_SKIPPED
    | ResourceStatus_UPDATE_IN_PROGRESS
    | ResourceStatus_UPDATE_FAILED
    | ResourceStatus_UPDATE_COMPLETE



resourceStatusDecoder : JD.Decoder ResourceStatus
resourceStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_IN_PROGRESS" ->
                        JD.succeed ResourceStatus_CREATE_IN_PROGRESS

                    "CREATE_FAILED" ->
                        JD.succeed ResourceStatus_CREATE_FAILED

                    "CREATE_COMPLETE" ->
                        JD.succeed ResourceStatus_CREATE_COMPLETE

                    "DELETE_IN_PROGRESS" ->
                        JD.succeed ResourceStatus_DELETE_IN_PROGRESS

                    "DELETE_FAILED" ->
                        JD.succeed ResourceStatus_DELETE_FAILED

                    "DELETE_COMPLETE" ->
                        JD.succeed ResourceStatus_DELETE_COMPLETE

                    "DELETE_SKIPPED" ->
                        JD.succeed ResourceStatus_DELETE_SKIPPED

                    "UPDATE_IN_PROGRESS" ->
                        JD.succeed ResourceStatus_UPDATE_IN_PROGRESS

                    "UPDATE_FAILED" ->
                        JD.succeed ResourceStatus_UPDATE_FAILED

                    "UPDATE_COMPLETE" ->
                        JD.succeed ResourceStatus_UPDATE_COMPLETE


                    _ ->
                        JD.fail "bad thing"
            )




resourceStatusToString : ResourceStatus -> String
resourceStatusToString val =
    case val of
        ResourceStatus_CREATE_IN_PROGRESS ->
            "CREATE_IN_PROGRESS"

        ResourceStatus_CREATE_FAILED ->
            "CREATE_FAILED"

        ResourceStatus_CREATE_COMPLETE ->
            "CREATE_COMPLETE"

        ResourceStatus_DELETE_IN_PROGRESS ->
            "DELETE_IN_PROGRESS"

        ResourceStatus_DELETE_FAILED ->
            "DELETE_FAILED"

        ResourceStatus_DELETE_COMPLETE ->
            "DELETE_COMPLETE"

        ResourceStatus_DELETE_SKIPPED ->
            "DELETE_SKIPPED"

        ResourceStatus_UPDATE_IN_PROGRESS ->
            "UPDATE_IN_PROGRESS"

        ResourceStatus_UPDATE_FAILED ->
            "UPDATE_FAILED"

        ResourceStatus_UPDATE_COMPLETE ->
            "UPDATE_COMPLETE"




{-| <p>The field that AWS CloudFormation will change, such as the name of a resource's property, and whether the resource will be recreated.</p>
-}
type alias ResourceTargetDefinition =
    { attribute : Maybe ResourceAttribute
    , name : Maybe String
    , requiresRecreation : Maybe RequiresRecreation
    }



resourceTargetDefinitionDecoder : JD.Decoder ResourceTargetDefinition
resourceTargetDefinitionDecoder =
    JD.succeed ResourceTargetDefinition
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attribute", "attribute"]
            resourceAttributeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RequiresRecreation", "requiresRecreation"]
            requiresRecreationDecoder
        )
        




resourceTargetDefinitionToString : ResourceTargetDefinition -> String -- List (String, String)
resourceTargetDefinitionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attribute" "" -- val.attribute
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "requiresRecreation" "" -- val.requiresRecreation
        
    --     |> Dict.toList
    ""



{-| <p>Structure containing the rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.</p> <p>Rollback triggers enable you to have AWS CloudFormation monitor the state of your application during stack creation and updating, and to roll back that operation if the application breaches the threshold of any of the alarms you've specified. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-rollback-triggers.html">Monitor and Roll Back Stack Operations</a>.</p>
-}
type alias RollbackConfiguration =
    { rollbackTriggers : Maybe (List RollbackTrigger)
    , monitoringTimeInMinutes : Maybe Int
    }



rollbackConfigurationDecoder : JD.Decoder RollbackConfiguration
rollbackConfigurationDecoder =
    JD.succeed RollbackConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RollbackTriggers", "rollbackTriggers"]
            (JD.list rollbackTriggerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MonitoringTimeInMinutes", "monitoringTimeInMinutes"]
            JD.int
        )
        




rollbackConfigurationToString : RollbackConfiguration -> String -- List (String, String)
rollbackConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "rollbackTriggers" "" -- val.rollbackTriggers
        
    --     |> Dict.insert
    --         "monitoringTimeInMinutes" "" -- val.monitoringTimeInMinutes
        
    --     |> Dict.toList
    ""



{-| <p>A rollback trigger AWS CloudFormation monitors during creation and updating of stacks. If any of the alarms you specify goes to ALARM state during the stack operation or within the specified monitoring period afterwards, CloudFormation rolls back the entire stack operation. </p>
-}
type alias RollbackTrigger =
    { arn : String
    , type_ : String
    }



rollbackTriggerDecoder : JD.Decoder RollbackTrigger
rollbackTriggerDecoder =
    JD.succeed RollbackTrigger
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Type", "type"]
            JD.string
        )
        




rollbackTriggerToString : RollbackTrigger -> String -- List (String, String)
rollbackTriggerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.toList
    ""



{-| <p>The Stack data type.</p>
-}
type alias Stack =
    { stackId : Maybe String
    , stackName : String
    , changeSetId : Maybe String
    , description : Maybe String
    , parameters : Maybe (List Parameter)
    , creationTime : Posix
    , deletionTime : Maybe Posix
    , lastUpdatedTime : Maybe Posix
    , rollbackConfiguration : Maybe RollbackConfiguration
    , stackStatus : StackStatus
    , stackStatusReason : Maybe String
    , disableRollback : Maybe Bool
    , notificationARNs : Maybe (List String)
    , timeoutInMinutes : Maybe Int
    , capabilities : Maybe (List Capability)
    , outputs : Maybe (List Output)
    , roleARN : Maybe String
    , tags : Maybe (List Tag)
    , enableTerminationProtection : Maybe Bool
    , parentId : Maybe String
    , rootId : Maybe String
    , driftInformation : Maybe StackDriftInformation
    }



stackDecoder : JD.Decoder Stack
stackDecoder =
    JD.succeed Stack
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackName", "stackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeSetId", "changeSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (JD.list parameterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeletionTime", "deletionTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdatedTime", "lastUpdatedTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RollbackConfiguration", "rollbackConfiguration"]
            rollbackConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackStatus", "stackStatus"]
            stackStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackStatusReason", "stackStatusReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DisableRollback", "disableRollback"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotificationARNs", "notificationARNs"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimeoutInMinutes", "timeoutInMinutes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Capabilities", "capabilities"]
            (JD.list capabilityDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Outputs", "outputs"]
            (JD.list outputDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnableTerminationProtection", "enableTerminationProtection"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParentId", "parentId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RootId", "rootId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DriftInformation", "driftInformation"]
            stackDriftInformationDecoder
        )
        




stackToString : Stack -> String -- List (String, String)
stackToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "stackName" "" -- val.stackName
        
    --     |> Dict.insert
    --         "changeSetId" "" -- val.changeSetId
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "deletionTime" "" -- val.deletionTime
        
    --     |> Dict.insert
    --         "lastUpdatedTime" "" -- val.lastUpdatedTime
        
    --     |> Dict.insert
    --         "rollbackConfiguration" "" -- val.rollbackConfiguration
        
    --     |> Dict.insert
    --         "stackStatus" "" -- val.stackStatus
        
    --     |> Dict.insert
    --         "stackStatusReason" "" -- val.stackStatusReason
        
    --     |> Dict.insert
    --         "disableRollback" "" -- val.disableRollback
        
    --     |> Dict.insert
    --         "notificationARNs" "" -- val.notificationARNs
        
    --     |> Dict.insert
    --         "timeoutInMinutes" "" -- val.timeoutInMinutes
        
    --     |> Dict.insert
    --         "capabilities" "" -- val.capabilities
        
    --     |> Dict.insert
    --         "outputs" "" -- val.outputs
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "enableTerminationProtection" "" -- val.enableTerminationProtection
        
    --     |> Dict.insert
    --         "parentId" "" -- val.parentId
        
    --     |> Dict.insert
    --         "rootId" "" -- val.rootId
        
    --     |> Dict.insert
    --         "driftInformation" "" -- val.driftInformation
        
    --     |> Dict.toList
    ""



{-| One of

* `StackDriftDetectionStatus_DETECTION_IN_PROGRESS`
* `StackDriftDetectionStatus_DETECTION_FAILED`
* `StackDriftDetectionStatus_DETECTION_COMPLETE`

-}
type StackDriftDetectionStatus
    = StackDriftDetectionStatus_DETECTION_IN_PROGRESS
    | StackDriftDetectionStatus_DETECTION_FAILED
    | StackDriftDetectionStatus_DETECTION_COMPLETE



stackDriftDetectionStatusDecoder : JD.Decoder StackDriftDetectionStatus
stackDriftDetectionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DETECTION_IN_PROGRESS" ->
                        JD.succeed StackDriftDetectionStatus_DETECTION_IN_PROGRESS

                    "DETECTION_FAILED" ->
                        JD.succeed StackDriftDetectionStatus_DETECTION_FAILED

                    "DETECTION_COMPLETE" ->
                        JD.succeed StackDriftDetectionStatus_DETECTION_COMPLETE


                    _ ->
                        JD.fail "bad thing"
            )




stackDriftDetectionStatusToString : StackDriftDetectionStatus -> String
stackDriftDetectionStatusToString val =
    case val of
        StackDriftDetectionStatus_DETECTION_IN_PROGRESS ->
            "DETECTION_IN_PROGRESS"

        StackDriftDetectionStatus_DETECTION_FAILED ->
            "DETECTION_FAILED"

        StackDriftDetectionStatus_DETECTION_COMPLETE ->
            "DETECTION_COMPLETE"




{-| <p>Contains information about whether the stack's actual configuration differs, or has <i>drifted</i>, from its expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted.</p>
-}
type alias StackDriftInformation =
    { stackDriftStatus : StackDriftStatus
    , lastCheckTimestamp : Maybe Posix
    }



stackDriftInformationDecoder : JD.Decoder StackDriftInformation
stackDriftInformationDecoder =
    JD.succeed StackDriftInformation
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackDriftStatus", "stackDriftStatus"]
            stackDriftStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastCheckTimestamp", "lastCheckTimestamp"]
            JDX.datetime
        )
        




stackDriftInformationToString : StackDriftInformation -> String -- List (String, String)
stackDriftInformationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackDriftStatus" "" -- val.stackDriftStatus
        
    --     |> Dict.insert
    --         "lastCheckTimestamp" "" -- val.lastCheckTimestamp
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about whether the stack's actual configuration differs, or has <i>drifted</i>, from its expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted.</p>
-}
type alias StackDriftInformationSummary =
    { stackDriftStatus : StackDriftStatus
    , lastCheckTimestamp : Maybe Posix
    }



stackDriftInformationSummaryDecoder : JD.Decoder StackDriftInformationSummary
stackDriftInformationSummaryDecoder =
    JD.succeed StackDriftInformationSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackDriftStatus", "stackDriftStatus"]
            stackDriftStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastCheckTimestamp", "lastCheckTimestamp"]
            JDX.datetime
        )
        




stackDriftInformationSummaryToString : StackDriftInformationSummary -> String -- List (String, String)
stackDriftInformationSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackDriftStatus" "" -- val.stackDriftStatus
        
    --     |> Dict.insert
    --         "lastCheckTimestamp" "" -- val.lastCheckTimestamp
        
    --     |> Dict.toList
    ""



{-| One of

* `StackDriftStatus_DRIFTED`
* `StackDriftStatus_IN_SYNC`
* `StackDriftStatus_UNKNOWN`
* `StackDriftStatus_NOT_CHECKED`

-}
type StackDriftStatus
    = StackDriftStatus_DRIFTED
    | StackDriftStatus_IN_SYNC
    | StackDriftStatus_UNKNOWN
    | StackDriftStatus_NOT_CHECKED



stackDriftStatusDecoder : JD.Decoder StackDriftStatus
stackDriftStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DRIFTED" ->
                        JD.succeed StackDriftStatus_DRIFTED

                    "IN_SYNC" ->
                        JD.succeed StackDriftStatus_IN_SYNC

                    "UNKNOWN" ->
                        JD.succeed StackDriftStatus_UNKNOWN

                    "NOT_CHECKED" ->
                        JD.succeed StackDriftStatus_NOT_CHECKED


                    _ ->
                        JD.fail "bad thing"
            )




stackDriftStatusToString : StackDriftStatus -> String
stackDriftStatusToString val =
    case val of
        StackDriftStatus_DRIFTED ->
            "DRIFTED"

        StackDriftStatus_IN_SYNC ->
            "IN_SYNC"

        StackDriftStatus_UNKNOWN ->
            "UNKNOWN"

        StackDriftStatus_NOT_CHECKED ->
            "NOT_CHECKED"




{-| <p>The StackEvent data type.</p>
-}
type alias StackEvent =
    { stackId : String
    , eventId : String
    , stackName : String
    , logicalResourceId : Maybe String
    , physicalResourceId : Maybe String
    , resourceType : Maybe String
    , timestamp : Posix
    , resourceStatus : Maybe ResourceStatus
    , resourceStatusReason : Maybe String
    , resourceProperties : Maybe String
    , clientRequestToken : Maybe String
    }



stackEventDecoder : JD.Decoder StackEvent
stackEventDecoder =
    JD.succeed StackEvent
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["EventId", "eventId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackName", "stackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogicalResourceId", "logicalResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PhysicalResourceId", "physicalResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceType", "resourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Timestamp", "timestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceStatus", "resourceStatus"]
            resourceStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceStatusReason", "resourceStatusReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceProperties", "resourceProperties"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientRequestToken", "clientRequestToken"]
            JD.string
        )
        




stackEventToString : StackEvent -> String -- List (String, String)
stackEventToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "eventId" "" -- val.eventId
        
    --     |> Dict.insert
    --         "stackName" "" -- val.stackName
        
    --     |> Dict.insert
    --         "logicalResourceId" "" -- val.logicalResourceId
        
    --     |> Dict.insert
    --         "physicalResourceId" "" -- val.physicalResourceId
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "resourceStatus" "" -- val.resourceStatus
        
    --     |> Dict.insert
    --         "resourceStatusReason" "" -- val.resourceStatusReason
        
    --     |> Dict.insert
    --         "resourceProperties" "" -- val.resourceProperties
        
    --     |> Dict.insert
    --         "clientRequestToken" "" -- val.clientRequestToken
        
    --     |> Dict.toList
    ""



{-| <p>An AWS CloudFormation stack, in a specific account and region, that's part of a stack set operation. A stack instance is a reference to an attempted or actual stack in a given account within a given region. A stack instance can exist without a stack—for example, if the stack couldn't be created for some reason. A stack instance is associated with only one stack set. Each stack instance contains the ID of its associated stack set, as well as the ID of the actual stack and the stack status.</p>
-}
type alias StackInstance =
    { stackSetId : Maybe String
    , region : Maybe String
    , account : Maybe String
    , stackId : Maybe String
    , parameterOverrides : Maybe (List Parameter)
    , status : Maybe StackInstanceStatus
    , statusReason : Maybe String
    }



stackInstanceDecoder : JD.Decoder StackInstance
stackInstanceDecoder =
    JD.succeed StackInstance
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetId", "stackSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Region", "region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Account", "account"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParameterOverrides", "parameterOverrides"]
            (JD.list parameterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            stackInstanceStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusReason", "statusReason"]
            JD.string
        )
        




stackInstanceToString : StackInstance -> String -- List (String, String)
stackInstanceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackSetId" "" -- val.stackSetId
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "account" "" -- val.account
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "parameterOverrides" "" -- val.parameterOverrides
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusReason" "" -- val.statusReason
        
    --     |> Dict.toList
    ""



{-| One of

* `StackInstanceStatus_CURRENT`
* `StackInstanceStatus_OUTDATED`
* `StackInstanceStatus_INOPERABLE`

-}
type StackInstanceStatus
    = StackInstanceStatus_CURRENT
    | StackInstanceStatus_OUTDATED
    | StackInstanceStatus_INOPERABLE



stackInstanceStatusDecoder : JD.Decoder StackInstanceStatus
stackInstanceStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CURRENT" ->
                        JD.succeed StackInstanceStatus_CURRENT

                    "OUTDATED" ->
                        JD.succeed StackInstanceStatus_OUTDATED

                    "INOPERABLE" ->
                        JD.succeed StackInstanceStatus_INOPERABLE


                    _ ->
                        JD.fail "bad thing"
            )




stackInstanceStatusToString : StackInstanceStatus -> String
stackInstanceStatusToString val =
    case val of
        StackInstanceStatus_CURRENT ->
            "CURRENT"

        StackInstanceStatus_OUTDATED ->
            "OUTDATED"

        StackInstanceStatus_INOPERABLE ->
            "INOPERABLE"




{-| <p>The structure that contains summary information about a stack instance.</p>
-}
type alias StackInstanceSummary =
    { stackSetId : Maybe String
    , region : Maybe String
    , account : Maybe String
    , stackId : Maybe String
    , status : Maybe StackInstanceStatus
    , statusReason : Maybe String
    }



stackInstanceSummaryDecoder : JD.Decoder StackInstanceSummary
stackInstanceSummaryDecoder =
    JD.succeed StackInstanceSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetId", "stackSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Region", "region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Account", "account"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            stackInstanceStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusReason", "statusReason"]
            JD.string
        )
        




stackInstanceSummaryToString : StackInstanceSummary -> String -- List (String, String)
stackInstanceSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackSetId" "" -- val.stackSetId
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "account" "" -- val.account
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusReason" "" -- val.statusReason
        
    --     |> Dict.toList
    ""



{-| <p>The StackResource data type.</p>
-}
type alias StackResource =
    { stackName : Maybe String
    , stackId : Maybe String
    , logicalResourceId : String
    , physicalResourceId : Maybe String
    , resourceType : String
    , timestamp : Posix
    , resourceStatus : ResourceStatus
    , resourceStatusReason : Maybe String
    , description : Maybe String
    , driftInformation : Maybe StackResourceDriftInformation
    }



stackResourceDecoder : JD.Decoder StackResource
stackResourceDecoder =
    JD.succeed StackResource
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackName", "stackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["LogicalResourceId", "logicalResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PhysicalResourceId", "physicalResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceType", "resourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Timestamp", "timestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceStatus", "resourceStatus"]
            resourceStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceStatusReason", "resourceStatusReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DriftInformation", "driftInformation"]
            stackResourceDriftInformationDecoder
        )
        




stackResourceToString : StackResource -> String -- List (String, String)
stackResourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackName" "" -- val.stackName
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "logicalResourceId" "" -- val.logicalResourceId
        
    --     |> Dict.insert
    --         "physicalResourceId" "" -- val.physicalResourceId
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "resourceStatus" "" -- val.resourceStatus
        
    --     |> Dict.insert
    --         "resourceStatusReason" "" -- val.resourceStatusReason
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "driftInformation" "" -- val.driftInformation
        
    --     |> Dict.toList
    ""



{-| <p>Contains detailed information about the specified stack resource.</p>
-}
type alias StackResourceDetail =
    { stackName : Maybe String
    , stackId : Maybe String
    , logicalResourceId : String
    , physicalResourceId : Maybe String
    , resourceType : String
    , lastUpdatedTimestamp : Posix
    , resourceStatus : ResourceStatus
    , resourceStatusReason : Maybe String
    , description : Maybe String
    , metadata : Maybe String
    , driftInformation : Maybe StackResourceDriftInformation
    }



stackResourceDetailDecoder : JD.Decoder StackResourceDetail
stackResourceDetailDecoder =
    JD.succeed StackResourceDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackName", "stackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["LogicalResourceId", "logicalResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PhysicalResourceId", "physicalResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceType", "resourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["LastUpdatedTimestamp", "lastUpdatedTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceStatus", "resourceStatus"]
            resourceStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceStatusReason", "resourceStatusReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Metadata", "metadata"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DriftInformation", "driftInformation"]
            stackResourceDriftInformationDecoder
        )
        




stackResourceDetailToString : StackResourceDetail -> String -- List (String, String)
stackResourceDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackName" "" -- val.stackName
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "logicalResourceId" "" -- val.logicalResourceId
        
    --     |> Dict.insert
    --         "physicalResourceId" "" -- val.physicalResourceId
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "lastUpdatedTimestamp" "" -- val.lastUpdatedTimestamp
        
    --     |> Dict.insert
    --         "resourceStatus" "" -- val.resourceStatus
        
    --     |> Dict.insert
    --         "resourceStatusReason" "" -- val.resourceStatusReason
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "metadata" "" -- val.metadata
        
    --     |> Dict.insert
    --         "driftInformation" "" -- val.driftInformation
        
    --     |> Dict.toList
    ""



{-| <p>Contains the drift information for a resource that has been checked for drift. This includes actual and expected property values for resources in which AWS CloudFormation has detected drift. Only resource properties explicitly defined in the stack template are checked for drift. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting Unregulated Configuration Changes to Stacks and Resources</a>.</p> <p>Resources that do not currently support drift detection cannot be checked. For a list of resources that support drift detection, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html">Resources that Support Drift Detection</a>.</p> <p>Use <a>DetectStackResourceDrift</a> to detect drift on individual resources, or <a>DetectStackDrift</a> to detect drift on all resources in a given stack that support drift detection.</p>
-}
type alias StackResourceDrift =
    { stackId : String
    , logicalResourceId : String
    , physicalResourceId : Maybe String
    , physicalResourceIdContext : Maybe (List PhysicalResourceIdContextKeyValuePair)
    , resourceType : String
    , expectedProperties : Maybe String
    , actualProperties : Maybe String
    , propertyDifferences : Maybe (List PropertyDifference)
    , stackResourceDriftStatus : StackResourceDriftStatus
    , timestamp : Posix
    }



stackResourceDriftDecoder : JD.Decoder StackResourceDrift
stackResourceDriftDecoder =
    JD.succeed StackResourceDrift
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["LogicalResourceId", "logicalResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PhysicalResourceId", "physicalResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PhysicalResourceIdContext", "physicalResourceIdContext"]
            (JD.list physicalResourceIdContextKeyValuePairDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceType", "resourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExpectedProperties", "expectedProperties"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActualProperties", "actualProperties"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PropertyDifferences", "propertyDifferences"]
            (JD.list propertyDifferenceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackResourceDriftStatus", "stackResourceDriftStatus"]
            stackResourceDriftStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Timestamp", "timestamp"]
            JDX.datetime
        )
        




stackResourceDriftToString : StackResourceDrift -> String -- List (String, String)
stackResourceDriftToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "logicalResourceId" "" -- val.logicalResourceId
        
    --     |> Dict.insert
    --         "physicalResourceId" "" -- val.physicalResourceId
        
    --     |> Dict.insert
    --         "physicalResourceIdContext" "" -- val.physicalResourceIdContext
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "expectedProperties" "" -- val.expectedProperties
        
    --     |> Dict.insert
    --         "actualProperties" "" -- val.actualProperties
        
    --     |> Dict.insert
    --         "propertyDifferences" "" -- val.propertyDifferences
        
    --     |> Dict.insert
    --         "stackResourceDriftStatus" "" -- val.stackResourceDriftStatus
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about whether the resource's actual configuration differs, or has <i>drifted</i>, from its expected configuration.</p>
-}
type alias StackResourceDriftInformation =
    { stackResourceDriftStatus : StackResourceDriftStatus
    , lastCheckTimestamp : Maybe Posix
    }



stackResourceDriftInformationDecoder : JD.Decoder StackResourceDriftInformation
stackResourceDriftInformationDecoder =
    JD.succeed StackResourceDriftInformation
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackResourceDriftStatus", "stackResourceDriftStatus"]
            stackResourceDriftStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastCheckTimestamp", "lastCheckTimestamp"]
            JDX.datetime
        )
        




stackResourceDriftInformationToString : StackResourceDriftInformation -> String -- List (String, String)
stackResourceDriftInformationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackResourceDriftStatus" "" -- val.stackResourceDriftStatus
        
    --     |> Dict.insert
    --         "lastCheckTimestamp" "" -- val.lastCheckTimestamp
        
    --     |> Dict.toList
    ""



{-| <p>Summarizes information about whether the resource's actual configuration differs, or has <i>drifted</i>, from its expected configuration.</p>
-}
type alias StackResourceDriftInformationSummary =
    { stackResourceDriftStatus : StackResourceDriftStatus
    , lastCheckTimestamp : Maybe Posix
    }



stackResourceDriftInformationSummaryDecoder : JD.Decoder StackResourceDriftInformationSummary
stackResourceDriftInformationSummaryDecoder =
    JD.succeed StackResourceDriftInformationSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackResourceDriftStatus", "stackResourceDriftStatus"]
            stackResourceDriftStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastCheckTimestamp", "lastCheckTimestamp"]
            JDX.datetime
        )
        




stackResourceDriftInformationSummaryToString : StackResourceDriftInformationSummary -> String -- List (String, String)
stackResourceDriftInformationSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackResourceDriftStatus" "" -- val.stackResourceDriftStatus
        
    --     |> Dict.insert
    --         "lastCheckTimestamp" "" -- val.lastCheckTimestamp
        
    --     |> Dict.toList
    ""



{-| One of

* `StackResourceDriftStatus_IN_SYNC`
* `StackResourceDriftStatus_MODIFIED`
* `StackResourceDriftStatus_DELETED`
* `StackResourceDriftStatus_NOT_CHECKED`

-}
type StackResourceDriftStatus
    = StackResourceDriftStatus_IN_SYNC
    | StackResourceDriftStatus_MODIFIED
    | StackResourceDriftStatus_DELETED
    | StackResourceDriftStatus_NOT_CHECKED



stackResourceDriftStatusDecoder : JD.Decoder StackResourceDriftStatus
stackResourceDriftStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IN_SYNC" ->
                        JD.succeed StackResourceDriftStatus_IN_SYNC

                    "MODIFIED" ->
                        JD.succeed StackResourceDriftStatus_MODIFIED

                    "DELETED" ->
                        JD.succeed StackResourceDriftStatus_DELETED

                    "NOT_CHECKED" ->
                        JD.succeed StackResourceDriftStatus_NOT_CHECKED


                    _ ->
                        JD.fail "bad thing"
            )




stackResourceDriftStatusToString : StackResourceDriftStatus -> String
stackResourceDriftStatusToString val =
    case val of
        StackResourceDriftStatus_IN_SYNC ->
            "IN_SYNC"

        StackResourceDriftStatus_MODIFIED ->
            "MODIFIED"

        StackResourceDriftStatus_DELETED ->
            "DELETED"

        StackResourceDriftStatus_NOT_CHECKED ->
            "NOT_CHECKED"




{-| <p>Contains high-level information about the specified stack resource.</p>
-}
type alias StackResourceSummary =
    { logicalResourceId : String
    , physicalResourceId : Maybe String
    , resourceType : String
    , lastUpdatedTimestamp : Posix
    , resourceStatus : ResourceStatus
    , resourceStatusReason : Maybe String
    , driftInformation : Maybe StackResourceDriftInformationSummary
    }



stackResourceSummaryDecoder : JD.Decoder StackResourceSummary
stackResourceSummaryDecoder =
    JD.succeed StackResourceSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["LogicalResourceId", "logicalResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PhysicalResourceId", "physicalResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceType", "resourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["LastUpdatedTimestamp", "lastUpdatedTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceStatus", "resourceStatus"]
            resourceStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceStatusReason", "resourceStatusReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DriftInformation", "driftInformation"]
            stackResourceDriftInformationSummaryDecoder
        )
        




stackResourceSummaryToString : StackResourceSummary -> String -- List (String, String)
stackResourceSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logicalResourceId" "" -- val.logicalResourceId
        
    --     |> Dict.insert
    --         "physicalResourceId" "" -- val.physicalResourceId
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "lastUpdatedTimestamp" "" -- val.lastUpdatedTimestamp
        
    --     |> Dict.insert
    --         "resourceStatus" "" -- val.resourceStatus
        
    --     |> Dict.insert
    --         "resourceStatusReason" "" -- val.resourceStatusReason
        
    --     |> Dict.insert
    --         "driftInformation" "" -- val.driftInformation
        
    --     |> Dict.toList
    ""



{-| <p>A structure that contains information about a stack set. A stack set enables you to provision stacks into AWS accounts and across regions by using a single CloudFormation template. In the stack set, you specify the template to use, as well as any parameters and capabilities that the template requires. </p>
-}
type alias StackSet =
    { stackSetName : Maybe String
    , stackSetId : Maybe String
    , description : Maybe String
    , status : Maybe StackSetStatus
    , templateBody : Maybe String
    , parameters : Maybe (List Parameter)
    , capabilities : Maybe (List Capability)
    , tags : Maybe (List Tag)
    , stackSetARN : Maybe String
    , administrationRoleARN : Maybe String
    , executionRoleName : Maybe String
    }



stackSetDecoder : JD.Decoder StackSet
stackSetDecoder =
    JD.succeed StackSet
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetName", "stackSetName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetId", "stackSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            stackSetStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TemplateBody", "templateBody"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (JD.list parameterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Capabilities", "capabilities"]
            (JD.list capabilityDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetARN", "stackSetARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AdministrationRoleARN", "administrationRoleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExecutionRoleName", "executionRoleName"]
            JD.string
        )
        




stackSetToString : StackSet -> String -- List (String, String)
stackSetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackSetName" "" -- val.stackSetName
        
    --     |> Dict.insert
    --         "stackSetId" "" -- val.stackSetId
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "templateBody" "" -- val.templateBody
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "capabilities" "" -- val.capabilities
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "stackSetARN" "" -- val.stackSetARN
        
    --     |> Dict.insert
    --         "administrationRoleARN" "" -- val.administrationRoleARN
        
    --     |> Dict.insert
    --         "executionRoleName" "" -- val.executionRoleName
        
    --     |> Dict.toList
    ""



{-| <p>The structure that contains information about a stack set operation. </p>
-}
type alias StackSetOperation =
    { operationId : Maybe String
    , stackSetId : Maybe String
    , action : Maybe StackSetOperationAction
    , status : Maybe StackSetOperationStatus
    , operationPreferences : Maybe StackSetOperationPreferences
    , retainStacks : Maybe Bool
    , administrationRoleARN : Maybe String
    , executionRoleName : Maybe String
    , creationTimestamp : Maybe Posix
    , endTimestamp : Maybe Posix
    }



stackSetOperationDecoder : JD.Decoder StackSetOperation
stackSetOperationDecoder =
    JD.succeed StackSetOperation
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperationId", "operationId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetId", "stackSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Action", "action"]
            stackSetOperationActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            stackSetOperationStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperationPreferences", "operationPreferences"]
            stackSetOperationPreferencesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RetainStacks", "retainStacks"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AdministrationRoleARN", "administrationRoleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExecutionRoleName", "executionRoleName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTimestamp", "creationTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndTimestamp", "endTimestamp"]
            JDX.datetime
        )
        




stackSetOperationToString : StackSetOperation -> String -- List (String, String)
stackSetOperationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operationId" "" -- val.operationId
        
    --     |> Dict.insert
    --         "stackSetId" "" -- val.stackSetId
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "operationPreferences" "" -- val.operationPreferences
        
    --     |> Dict.insert
    --         "retainStacks" "" -- val.retainStacks
        
    --     |> Dict.insert
    --         "administrationRoleARN" "" -- val.administrationRoleARN
        
    --     |> Dict.insert
    --         "executionRoleName" "" -- val.executionRoleName
        
    --     |> Dict.insert
    --         "creationTimestamp" "" -- val.creationTimestamp
        
    --     |> Dict.insert
    --         "endTimestamp" "" -- val.endTimestamp
        
    --     |> Dict.toList
    ""



{-| One of

* `StackSetOperationAction_CREATE`
* `StackSetOperationAction_UPDATE`
* `StackSetOperationAction_DELETE`

-}
type StackSetOperationAction
    = StackSetOperationAction_CREATE
    | StackSetOperationAction_UPDATE
    | StackSetOperationAction_DELETE



stackSetOperationActionDecoder : JD.Decoder StackSetOperationAction
stackSetOperationActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE" ->
                        JD.succeed StackSetOperationAction_CREATE

                    "UPDATE" ->
                        JD.succeed StackSetOperationAction_UPDATE

                    "DELETE" ->
                        JD.succeed StackSetOperationAction_DELETE


                    _ ->
                        JD.fail "bad thing"
            )




stackSetOperationActionToString : StackSetOperationAction -> String
stackSetOperationActionToString val =
    case val of
        StackSetOperationAction_CREATE ->
            "CREATE"

        StackSetOperationAction_UPDATE ->
            "UPDATE"

        StackSetOperationAction_DELETE ->
            "DELETE"




{-| <p>The user-specified preferences for how AWS CloudFormation performs a stack set operation. </p> <p>For more information on maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">Stack set operation options</a>.</p>
-}
type alias StackSetOperationPreferences =
    { regionOrder : Maybe (List String)
    , failureToleranceCount : Maybe Int
    , failureTolerancePercentage : Maybe Int
    , maxConcurrentCount : Maybe Int
    , maxConcurrentPercentage : Maybe Int
    }



stackSetOperationPreferencesDecoder : JD.Decoder StackSetOperationPreferences
stackSetOperationPreferencesDecoder =
    JD.succeed StackSetOperationPreferences
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RegionOrder", "regionOrder"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailureToleranceCount", "failureToleranceCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailureTolerancePercentage", "failureTolerancePercentage"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxConcurrentCount", "maxConcurrentCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxConcurrentPercentage", "maxConcurrentPercentage"]
            JD.int
        )
        




stackSetOperationPreferencesToString : StackSetOperationPreferences -> String -- List (String, String)
stackSetOperationPreferencesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "regionOrder" "" -- val.regionOrder
        
    --     |> Dict.insert
    --         "failureToleranceCount" "" -- val.failureToleranceCount
        
    --     |> Dict.insert
    --         "failureTolerancePercentage" "" -- val.failureTolerancePercentage
        
    --     |> Dict.insert
    --         "maxConcurrentCount" "" -- val.maxConcurrentCount
        
    --     |> Dict.insert
    --         "maxConcurrentPercentage" "" -- val.maxConcurrentPercentage
        
    --     |> Dict.toList
    ""



{-| One of

* `StackSetOperationResultStatus_PENDING`
* `StackSetOperationResultStatus_RUNNING`
* `StackSetOperationResultStatus_SUCCEEDED`
* `StackSetOperationResultStatus_FAILED`
* `StackSetOperationResultStatus_CANCELLED`

-}
type StackSetOperationResultStatus
    = StackSetOperationResultStatus_PENDING
    | StackSetOperationResultStatus_RUNNING
    | StackSetOperationResultStatus_SUCCEEDED
    | StackSetOperationResultStatus_FAILED
    | StackSetOperationResultStatus_CANCELLED



stackSetOperationResultStatusDecoder : JD.Decoder StackSetOperationResultStatus
stackSetOperationResultStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed StackSetOperationResultStatus_PENDING

                    "RUNNING" ->
                        JD.succeed StackSetOperationResultStatus_RUNNING

                    "SUCCEEDED" ->
                        JD.succeed StackSetOperationResultStatus_SUCCEEDED

                    "FAILED" ->
                        JD.succeed StackSetOperationResultStatus_FAILED

                    "CANCELLED" ->
                        JD.succeed StackSetOperationResultStatus_CANCELLED


                    _ ->
                        JD.fail "bad thing"
            )




stackSetOperationResultStatusToString : StackSetOperationResultStatus -> String
stackSetOperationResultStatusToString val =
    case val of
        StackSetOperationResultStatus_PENDING ->
            "PENDING"

        StackSetOperationResultStatus_RUNNING ->
            "RUNNING"

        StackSetOperationResultStatus_SUCCEEDED ->
            "SUCCEEDED"

        StackSetOperationResultStatus_FAILED ->
            "FAILED"

        StackSetOperationResultStatus_CANCELLED ->
            "CANCELLED"




{-| <p>The structure that contains information about a specified operation's results for a given account in a given region.</p>
-}
type alias StackSetOperationResultSummary =
    { account : Maybe String
    , region : Maybe String
    , status : Maybe StackSetOperationResultStatus
    , statusReason : Maybe String
    , accountGateResult : Maybe AccountGateResult
    }



stackSetOperationResultSummaryDecoder : JD.Decoder StackSetOperationResultSummary
stackSetOperationResultSummaryDecoder =
    JD.succeed StackSetOperationResultSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Account", "account"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Region", "region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            stackSetOperationResultStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusReason", "statusReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AccountGateResult", "accountGateResult"]
            accountGateResultDecoder
        )
        




stackSetOperationResultSummaryToString : StackSetOperationResultSummary -> String -- List (String, String)
stackSetOperationResultSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "account" "" -- val.account
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusReason" "" -- val.statusReason
        
    --     |> Dict.insert
    --         "accountGateResult" "" -- val.accountGateResult
        
    --     |> Dict.toList
    ""



{-| One of

* `StackSetOperationStatus_RUNNING`
* `StackSetOperationStatus_SUCCEEDED`
* `StackSetOperationStatus_FAILED`
* `StackSetOperationStatus_STOPPING`
* `StackSetOperationStatus_STOPPED`

-}
type StackSetOperationStatus
    = StackSetOperationStatus_RUNNING
    | StackSetOperationStatus_SUCCEEDED
    | StackSetOperationStatus_FAILED
    | StackSetOperationStatus_STOPPING
    | StackSetOperationStatus_STOPPED



stackSetOperationStatusDecoder : JD.Decoder StackSetOperationStatus
stackSetOperationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RUNNING" ->
                        JD.succeed StackSetOperationStatus_RUNNING

                    "SUCCEEDED" ->
                        JD.succeed StackSetOperationStatus_SUCCEEDED

                    "FAILED" ->
                        JD.succeed StackSetOperationStatus_FAILED

                    "STOPPING" ->
                        JD.succeed StackSetOperationStatus_STOPPING

                    "STOPPED" ->
                        JD.succeed StackSetOperationStatus_STOPPED


                    _ ->
                        JD.fail "bad thing"
            )




stackSetOperationStatusToString : StackSetOperationStatus -> String
stackSetOperationStatusToString val =
    case val of
        StackSetOperationStatus_RUNNING ->
            "RUNNING"

        StackSetOperationStatus_SUCCEEDED ->
            "SUCCEEDED"

        StackSetOperationStatus_FAILED ->
            "FAILED"

        StackSetOperationStatus_STOPPING ->
            "STOPPING"

        StackSetOperationStatus_STOPPED ->
            "STOPPED"




{-| <p>The structures that contain summary information about the specified operation.</p>
-}
type alias StackSetOperationSummary =
    { operationId : Maybe String
    , action : Maybe StackSetOperationAction
    , status : Maybe StackSetOperationStatus
    , creationTimestamp : Maybe Posix
    , endTimestamp : Maybe Posix
    }



stackSetOperationSummaryDecoder : JD.Decoder StackSetOperationSummary
stackSetOperationSummaryDecoder =
    JD.succeed StackSetOperationSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperationId", "operationId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Action", "action"]
            stackSetOperationActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            stackSetOperationStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTimestamp", "creationTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndTimestamp", "endTimestamp"]
            JDX.datetime
        )
        




stackSetOperationSummaryToString : StackSetOperationSummary -> String -- List (String, String)
stackSetOperationSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operationId" "" -- val.operationId
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "creationTimestamp" "" -- val.creationTimestamp
        
    --     |> Dict.insert
    --         "endTimestamp" "" -- val.endTimestamp
        
    --     |> Dict.toList
    ""



{-| One of

* `StackSetStatus_ACTIVE`
* `StackSetStatus_DELETED`

-}
type StackSetStatus
    = StackSetStatus_ACTIVE
    | StackSetStatus_DELETED



stackSetStatusDecoder : JD.Decoder StackSetStatus
stackSetStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed StackSetStatus_ACTIVE

                    "DELETED" ->
                        JD.succeed StackSetStatus_DELETED


                    _ ->
                        JD.fail "bad thing"
            )




stackSetStatusToString : StackSetStatus -> String
stackSetStatusToString val =
    case val of
        StackSetStatus_ACTIVE ->
            "ACTIVE"

        StackSetStatus_DELETED ->
            "DELETED"




{-| <p>The structures that contain summary information about the specified stack set.</p>
-}
type alias StackSetSummary =
    { stackSetName : Maybe String
    , stackSetId : Maybe String
    , description : Maybe String
    , status : Maybe StackSetStatus
    }



stackSetSummaryDecoder : JD.Decoder StackSetSummary
stackSetSummaryDecoder =
    JD.succeed StackSetSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetName", "stackSetName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetId", "stackSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            stackSetStatusDecoder
        )
        




stackSetSummaryToString : StackSetSummary -> String -- List (String, String)
stackSetSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackSetName" "" -- val.stackSetName
        
    --     |> Dict.insert
    --         "stackSetId" "" -- val.stackSetId
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| One of

* `StackStatus_CREATE_IN_PROGRESS`
* `StackStatus_CREATE_FAILED`
* `StackStatus_CREATE_COMPLETE`
* `StackStatus_ROLLBACK_IN_PROGRESS`
* `StackStatus_ROLLBACK_FAILED`
* `StackStatus_ROLLBACK_COMPLETE`
* `StackStatus_DELETE_IN_PROGRESS`
* `StackStatus_DELETE_FAILED`
* `StackStatus_DELETE_COMPLETE`
* `StackStatus_UPDATE_IN_PROGRESS`
* `StackStatus_UPDATE_COMPLETE_CLEANUP_IN_PROGRESS`
* `StackStatus_UPDATE_COMPLETE`
* `StackStatus_UPDATE_ROLLBACK_IN_PROGRESS`
* `StackStatus_UPDATE_ROLLBACK_FAILED`
* `StackStatus_UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS`
* `StackStatus_UPDATE_ROLLBACK_COMPLETE`
* `StackStatus_REVIEW_IN_PROGRESS`

-}
type StackStatus
    = StackStatus_CREATE_IN_PROGRESS
    | StackStatus_CREATE_FAILED
    | StackStatus_CREATE_COMPLETE
    | StackStatus_ROLLBACK_IN_PROGRESS
    | StackStatus_ROLLBACK_FAILED
    | StackStatus_ROLLBACK_COMPLETE
    | StackStatus_DELETE_IN_PROGRESS
    | StackStatus_DELETE_FAILED
    | StackStatus_DELETE_COMPLETE
    | StackStatus_UPDATE_IN_PROGRESS
    | StackStatus_UPDATE_COMPLETE_CLEANUP_IN_PROGRESS
    | StackStatus_UPDATE_COMPLETE
    | StackStatus_UPDATE_ROLLBACK_IN_PROGRESS
    | StackStatus_UPDATE_ROLLBACK_FAILED
    | StackStatus_UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS
    | StackStatus_UPDATE_ROLLBACK_COMPLETE
    | StackStatus_REVIEW_IN_PROGRESS



stackStatusDecoder : JD.Decoder StackStatus
stackStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_IN_PROGRESS" ->
                        JD.succeed StackStatus_CREATE_IN_PROGRESS

                    "CREATE_FAILED" ->
                        JD.succeed StackStatus_CREATE_FAILED

                    "CREATE_COMPLETE" ->
                        JD.succeed StackStatus_CREATE_COMPLETE

                    "ROLLBACK_IN_PROGRESS" ->
                        JD.succeed StackStatus_ROLLBACK_IN_PROGRESS

                    "ROLLBACK_FAILED" ->
                        JD.succeed StackStatus_ROLLBACK_FAILED

                    "ROLLBACK_COMPLETE" ->
                        JD.succeed StackStatus_ROLLBACK_COMPLETE

                    "DELETE_IN_PROGRESS" ->
                        JD.succeed StackStatus_DELETE_IN_PROGRESS

                    "DELETE_FAILED" ->
                        JD.succeed StackStatus_DELETE_FAILED

                    "DELETE_COMPLETE" ->
                        JD.succeed StackStatus_DELETE_COMPLETE

                    "UPDATE_IN_PROGRESS" ->
                        JD.succeed StackStatus_UPDATE_IN_PROGRESS

                    "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS" ->
                        JD.succeed StackStatus_UPDATE_COMPLETE_CLEANUP_IN_PROGRESS

                    "UPDATE_COMPLETE" ->
                        JD.succeed StackStatus_UPDATE_COMPLETE

                    "UPDATE_ROLLBACK_IN_PROGRESS" ->
                        JD.succeed StackStatus_UPDATE_ROLLBACK_IN_PROGRESS

                    "UPDATE_ROLLBACK_FAILED" ->
                        JD.succeed StackStatus_UPDATE_ROLLBACK_FAILED

                    "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS" ->
                        JD.succeed StackStatus_UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS

                    "UPDATE_ROLLBACK_COMPLETE" ->
                        JD.succeed StackStatus_UPDATE_ROLLBACK_COMPLETE

                    "REVIEW_IN_PROGRESS" ->
                        JD.succeed StackStatus_REVIEW_IN_PROGRESS


                    _ ->
                        JD.fail "bad thing"
            )




stackStatusToString : StackStatus -> String
stackStatusToString val =
    case val of
        StackStatus_CREATE_IN_PROGRESS ->
            "CREATE_IN_PROGRESS"

        StackStatus_CREATE_FAILED ->
            "CREATE_FAILED"

        StackStatus_CREATE_COMPLETE ->
            "CREATE_COMPLETE"

        StackStatus_ROLLBACK_IN_PROGRESS ->
            "ROLLBACK_IN_PROGRESS"

        StackStatus_ROLLBACK_FAILED ->
            "ROLLBACK_FAILED"

        StackStatus_ROLLBACK_COMPLETE ->
            "ROLLBACK_COMPLETE"

        StackStatus_DELETE_IN_PROGRESS ->
            "DELETE_IN_PROGRESS"

        StackStatus_DELETE_FAILED ->
            "DELETE_FAILED"

        StackStatus_DELETE_COMPLETE ->
            "DELETE_COMPLETE"

        StackStatus_UPDATE_IN_PROGRESS ->
            "UPDATE_IN_PROGRESS"

        StackStatus_UPDATE_COMPLETE_CLEANUP_IN_PROGRESS ->
            "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS"

        StackStatus_UPDATE_COMPLETE ->
            "UPDATE_COMPLETE"

        StackStatus_UPDATE_ROLLBACK_IN_PROGRESS ->
            "UPDATE_ROLLBACK_IN_PROGRESS"

        StackStatus_UPDATE_ROLLBACK_FAILED ->
            "UPDATE_ROLLBACK_FAILED"

        StackStatus_UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS ->
            "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS"

        StackStatus_UPDATE_ROLLBACK_COMPLETE ->
            "UPDATE_ROLLBACK_COMPLETE"

        StackStatus_REVIEW_IN_PROGRESS ->
            "REVIEW_IN_PROGRESS"




{-| <p>The StackSummary Data Type</p>
-}
type alias StackSummary =
    { stackId : Maybe String
    , stackName : String
    , templateDescription : Maybe String
    , creationTime : Posix
    , lastUpdatedTime : Maybe Posix
    , deletionTime : Maybe Posix
    , stackStatus : StackStatus
    , stackStatusReason : Maybe String
    , parentId : Maybe String
    , rootId : Maybe String
    , driftInformation : Maybe StackDriftInformationSummary
    }



stackSummaryDecoder : JD.Decoder StackSummary
stackSummaryDecoder =
    JD.succeed StackSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackName", "stackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TemplateDescription", "templateDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdatedTime", "lastUpdatedTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeletionTime", "deletionTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackStatus", "stackStatus"]
            stackStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackStatusReason", "stackStatusReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParentId", "parentId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RootId", "rootId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DriftInformation", "driftInformation"]
            stackDriftInformationSummaryDecoder
        )
        




stackSummaryToString : StackSummary -> String -- List (String, String)
stackSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "stackName" "" -- val.stackName
        
    --     |> Dict.insert
    --         "templateDescription" "" -- val.templateDescription
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "lastUpdatedTime" "" -- val.lastUpdatedTime
        
    --     |> Dict.insert
    --         "deletionTime" "" -- val.deletionTime
        
    --     |> Dict.insert
    --         "stackStatus" "" -- val.stackStatus
        
    --     |> Dict.insert
    --         "stackStatusReason" "" -- val.stackStatusReason
        
    --     |> Dict.insert
    --         "parentId" "" -- val.parentId
        
    --     |> Dict.insert
    --         "rootId" "" -- val.rootId
        
    --     |> Dict.insert
    --         "driftInformation" "" -- val.driftInformation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopStackSetOperati
-}
type alias StopStackSetOperationOutput =
    { 
    }



stopStackSetOperationOutputDecoder : JD.Decoder StopStackSetOperationOutput
stopStackSetOperationOutputDecoder =
    JD.succeed StopStackSetOperationOutput
        




stopStackSetOperationOutputToString : StopStackSetOperationOutput -> String -- List (String, String)
stopStackSetOperationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>The Tag type enables you to specify a key-value pair that can be used to store information about an AWS CloudFormation stack.</p>
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



{-| <p>The TemplateParameter data type.</p>
-}
type alias TemplateParameter =
    { parameterKey : Maybe String
    , defaultValue : Maybe String
    , noEcho : Maybe Bool
    , description : Maybe String
    }



templateParameterDecoder : JD.Decoder TemplateParameter
templateParameterDecoder =
    JD.succeed TemplateParameter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParameterKey", "parameterKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NoEcho", "noEcho"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        




templateParameterToString : TemplateParameter -> String -- List (String, String)
templateParameterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "parameterKey" "" -- val.parameterKey
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "noEcho" "" -- val.noEcho
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.toList
    ""



{-| One of

* `TemplateStage_Original`
* `TemplateStage_Processed`

-}
type TemplateStage
    = TemplateStage_Original
    | TemplateStage_Processed



templateStageDecoder : JD.Decoder TemplateStage
templateStageDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Original" ->
                        JD.succeed TemplateStage_Original

                    "Processed" ->
                        JD.succeed TemplateStage_Processed


                    _ ->
                        JD.fail "bad thing"
            )




templateStageToString : TemplateStage -> String
templateStageToString val =
    case val of
        TemplateStage_Original ->
            "Original"

        TemplateStage_Processed ->
            "Processed"




{-| Type of HTTP response from updateStackInstanc
-}
type alias UpdateStackInstancesOutput =
    { operationId : Maybe String
    }



updateStackInstancesOutputDecoder : JD.Decoder UpdateStackInstancesOutput
updateStackInstancesOutputDecoder =
    JD.succeed UpdateStackInstancesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperationId", "operationId"]
            JD.string
        )
        




updateStackInstancesOutputToString : UpdateStackInstancesOutput -> String -- List (String, String)
updateStackInstancesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operationId" "" -- val.operationId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateSta
-}
type alias UpdateStackOutput =
    { stackId : Maybe String
    }



updateStackOutputDecoder : JD.Decoder UpdateStackOutput
updateStackOutputDecoder =
    JD.succeed UpdateStackOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        




updateStackOutputToString : UpdateStackOutput -> String -- List (String, String)
updateStackOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateStackS
-}
type alias UpdateStackSetOutput =
    { operationId : Maybe String
    }



updateStackSetOutputDecoder : JD.Decoder UpdateStackSetOutput
updateStackSetOutputDecoder =
    JD.succeed UpdateStackSetOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperationId", "operationId"]
            JD.string
        )
        




updateStackSetOutputToString : UpdateStackSetOutput -> String -- List (String, String)
updateStackSetOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operationId" "" -- val.operationId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateTerminationProtecti
-}
type alias UpdateTerminationProtectionOutput =
    { stackId : Maybe String
    }



updateTerminationProtectionOutputDecoder : JD.Decoder UpdateTerminationProtectionOutput
updateTerminationProtectionOutputDecoder =
    JD.succeed UpdateTerminationProtectionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackId", "stackId"]
            JD.string
        )
        




updateTerminationProtectionOutputToString : UpdateTerminationProtectionOutput -> String -- List (String, String)
updateTerminationProtectionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from validateTempla
-}
type alias ValidateTemplateOutput =
    { parameters : Maybe (List TemplateParameter)
    , description : Maybe String
    , capabilities : Maybe (List Capability)
    , capabilitiesReason : Maybe String
    , declaredTransforms : Maybe (List String)
    }



validateTemplateOutputDecoder : JD.Decoder ValidateTemplateOutput
validateTemplateOutputDecoder =
    JD.succeed ValidateTemplateOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (JD.list templateParameterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Capabilities", "capabilities"]
            (JD.list capabilityDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CapabilitiesReason", "capabilitiesReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeclaredTransforms", "declaredTransforms"]
            (JD.list JD.string)
        )
        




validateTemplateOutputToString : ValidateTemplateOutput -> String -- List (String, String)
validateTemplateOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "capabilities" "" -- val.capabilities
        
    --     |> Dict.insert
    --         "capabilitiesReason" "" -- val.capabilitiesReason
        
    --     |> Dict.insert
    --         "declaredTransforms" "" -- val.declaredTransforms
        
    --     |> Dict.toList
    ""






{-| <p>The input for the <a>CancelUpdateStack</a> action.</p>
-}
type alias CancelUpdateStackInput =
    { stackName : String
    , clientRequestToken : Maybe String
    }


{-| <p>The input for the <a>ContinueUpdateRollback</a> action.</p>
-}
type alias ContinueUpdateRollbackInput =
    { stackName : String
    , roleARN : Maybe String
    , resourcesToSkip : Maybe (List String)
    , clientRequestToken : Maybe String
    }


{-| <p>The input for the <a>CreateChangeSet</a> action.</p>
-}
type alias CreateChangeSetInput =
    { stackName : String
    , templateBody : Maybe String
    , templateURL : Maybe String
    , usePreviousTemplate : Maybe Bool
    , parameters : Maybe (List Parameter)
    , capabilities : Maybe (List Capability)
    , resourceTypes : Maybe (List String)
    , roleARN : Maybe String
    , rollbackConfiguration : Maybe RollbackConfiguration
    , notificationARNs : Maybe (List String)
    , tags : Maybe (List Tag)
    , changeSetName : String
    , clientToken : Maybe String
    , description : Maybe String
    , changeSetType : Maybe ChangeSetType
    }


{-| <p>The input for <a>CreateStack</a> action.</p>
-}
type alias CreateStackInput =
    { stackName : String
    , templateBody : Maybe String
    , templateURL : Maybe String
    , parameters : Maybe (List Parameter)
    , disableRollback : Maybe Bool
    , rollbackConfiguration : Maybe RollbackConfiguration
    , timeoutInMinutes : Maybe Int
    , notificationARNs : Maybe (List String)
    , capabilities : Maybe (List Capability)
    , resourceTypes : Maybe (List String)
    , roleARN : Maybe String
    , onFailure : Maybe OnFailure
    , stackPolicyBody : Maybe String
    , stackPolicyURL : Maybe String
    , tags : Maybe (List Tag)
    , clientRequestToken : Maybe String
    , enableTerminationProtection : Maybe Bool
    }


{-| undefined
-}
type alias CreateStackInstancesInput =
    { stackSetName : String
    , accounts : (List String)
    , regions : (List String)
    , parameterOverrides : Maybe (List Parameter)
    , operationPreferences : Maybe StackSetOperationPreferences
    , operationId : Maybe String
    }


{-| undefined
-}
type alias CreateStackSetInput =
    { stackSetName : String
    , description : Maybe String
    , templateBody : Maybe String
    , templateURL : Maybe String
    , parameters : Maybe (List Parameter)
    , capabilities : Maybe (List Capability)
    , tags : Maybe (List Tag)
    , administrationRoleARN : Maybe String
    , executionRoleName : Maybe String
    , clientRequestToken : Maybe String
    }


{-| <p>The input for the <a>DeleteChangeSet</a> action.</p>
-}
type alias DeleteChangeSetInput =
    { changeSetName : String
    , stackName : Maybe String
    }


{-| <p>The input for <a>DeleteStack</a> action.</p>
-}
type alias DeleteStackInput =
    { stackName : String
    , retainResources : Maybe (List String)
    , roleARN : Maybe String
    , clientRequestToken : Maybe String
    }


{-| undefined
-}
type alias DeleteStackInstancesInput =
    { stackSetName : String
    , accounts : (List String)
    , regions : (List String)
    , operationPreferences : Maybe StackSetOperationPreferences
    , retainStacks : Bool
    , operationId : Maybe String
    }


{-| undefined
-}
type alias DeleteStackSetInput =
    { stackSetName : String
    }


{-| <p>The input for the <a>DescribeAccountLimits</a> action.</p>
-}
type alias DescribeAccountLimitsInput =
    { nextToken : Maybe String
    }


{-| <p>The input for the <a>DescribeChangeSet</a> action.</p>
-}
type alias DescribeChangeSetInput =
    { changeSetName : String
    , stackName : Maybe String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeStackDriftDetectionStatusInput =
    { stackDriftDetectionId : String
    }


{-| <p>The input for <a>DescribeStackEvents</a> action.</p>
-}
type alias DescribeStackEventsInput =
    { stackName : Maybe String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeStackInstanceInput =
    { stackSetName : String
    , stackInstanceAccount : String
    , stackInstanceRegion : String
    }


{-| undefined
-}
type alias DescribeStackResourceDriftsInput =
    { stackName : String
    , stackResourceDriftStatusFilters : Maybe (List StackResourceDriftStatus)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| <p>The input for <a>DescribeStackResource</a> action.</p>
-}
type alias DescribeStackResourceInput =
    { stackName : String
    , logicalResourceId : String
    }


{-| <p>The input for <a>DescribeStackResources</a> action.</p>
-}
type alias DescribeStackResourcesInput =
    { stackName : Maybe String
    , logicalResourceId : Maybe String
    , physicalResourceId : Maybe String
    }


{-| undefined
-}
type alias DescribeStackSetInput =
    { stackSetName : String
    }


{-| undefined
-}
type alias DescribeStackSetOperationInput =
    { stackSetName : String
    , operationId : String
    }


{-| <p>The input for <a>DescribeStacks</a> action.</p>
-}
type alias DescribeStacksInput =
    { stackName : Maybe String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DetectStackDriftInput =
    { stackName : String
    , logicalResourceIds : Maybe (List String)
    }


{-| undefined
-}
type alias DetectStackResourceDriftInput =
    { stackName : String
    , logicalResourceId : String
    }


{-| <p>The input for an <a>EstimateTemplateCost</a> action.</p>
-}
type alias EstimateTemplateCostInput =
    { templateBody : Maybe String
    , templateURL : Maybe String
    , parameters : Maybe (List Parameter)
    }


{-| <p>The input for the <a>ExecuteChangeSet</a> action.</p>
-}
type alias ExecuteChangeSetInput =
    { changeSetName : String
    , stackName : Maybe String
    , clientRequestToken : Maybe String
    }


{-| <p>The input for the <a>GetStackPolicy</a> action.</p>
-}
type alias GetStackPolicyInput =
    { stackName : String
    }


{-| <p>The input for a <a>GetTemplate</a> action.</p>
-}
type alias GetTemplateInput =
    { stackName : Maybe String
    , changeSetName : Maybe String
    , templateStage : Maybe TemplateStage
    }


{-| <p>The input for the <a>GetTemplateSummary</a> action.</p>
-}
type alias GetTemplateSummaryInput =
    { templateBody : Maybe String
    , templateURL : Maybe String
    , stackName : Maybe String
    , stackSetName : Maybe String
    }


{-| <p>The input for the <a>ListChangeSets</a> action.</p>
-}
type alias ListChangeSetsInput =
    { stackName : String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListExportsInput =
    { nextToken : Maybe String
    }


{-| undefined
-}
type alias ListImportsInput =
    { exportName : String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListStackInstancesInput =
    { stackSetName : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , stackInstanceAccount : Maybe String
    , stackInstanceRegion : Maybe String
    }


{-| <p>The input for the <a>ListStackResource</a> action.</p>
-}
type alias ListStackResourcesInput =
    { stackName : String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListStackSetOperationResultsInput =
    { stackSetName : String
    , operationId : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListStackSetOperationsInput =
    { stackSetName : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListStackSetsInput =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , status : Maybe StackSetStatus
    }


{-| <p>The input for <a>ListStacks</a> action.</p>
-}
type alias ListStacksInput =
    { nextToken : Maybe String
    , stackStatusFilter : Maybe (List StackStatus)
    }


{-| <p>The input for the <a>SetStackPolicy</a> action.</p>
-}
type alias SetStackPolicyInput =
    { stackName : String
    , stackPolicyBody : Maybe String
    , stackPolicyURL : Maybe String
    }


{-| <p>The input for the <a>SignalResource</a> action.</p>
-}
type alias SignalResourceInput =
    { stackName : String
    , logicalResourceId : String
    , uniqueId : String
    , status : ResourceSignalStatus
    }


{-| undefined
-}
type alias StopStackSetOperationInput =
    { stackSetName : String
    , operationId : String
    }


{-| <p>The input for an <a>UpdateStack</a> action.</p>
-}
type alias UpdateStackInput =
    { stackName : String
    , templateBody : Maybe String
    , templateURL : Maybe String
    , usePreviousTemplate : Maybe Bool
    , stackPolicyDuringUpdateBody : Maybe String
    , stackPolicyDuringUpdateURL : Maybe String
    , parameters : Maybe (List Parameter)
    , capabilities : Maybe (List Capability)
    , resourceTypes : Maybe (List String)
    , roleARN : Maybe String
    , rollbackConfiguration : Maybe RollbackConfiguration
    , stackPolicyBody : Maybe String
    , stackPolicyURL : Maybe String
    , notificationARNs : Maybe (List String)
    , tags : Maybe (List Tag)
    , clientRequestToken : Maybe String
    }


{-| undefined
-}
type alias UpdateStackInstancesInput =
    { stackSetName : String
    , accounts : (List String)
    , regions : (List String)
    , parameterOverrides : Maybe (List Parameter)
    , operationPreferences : Maybe StackSetOperationPreferences
    , operationId : Maybe String
    }


{-| undefined
-}
type alias UpdateStackSetInput =
    { stackSetName : String
    , description : Maybe String
    , templateBody : Maybe String
    , templateURL : Maybe String
    , usePreviousTemplate : Maybe Bool
    , parameters : Maybe (List Parameter)
    , capabilities : Maybe (List Capability)
    , tags : Maybe (List Tag)
    , operationPreferences : Maybe StackSetOperationPreferences
    , administrationRoleARN : Maybe String
    , executionRoleName : Maybe String
    , operationId : Maybe String
    , accounts : Maybe (List String)
    , regions : Maybe (List String)
    }


{-| undefined
-}
type alias UpdateTerminationProtectionInput =
    { enableTerminationProtection : Bool
    , stackName : String
    }


{-| <p>The input for <a>ValidateTemplate</a> action.</p>
-}
type alias ValidateTemplateInput =
    { templateBody : Maybe String
    , templateURL : Maybe String
    }








accountGateResultEncoder : AccountGateResult -> List (String, String)
accountGateResultEncoder data =
    []
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs accountGateStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.statusReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StatusReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










accountLimitEncoder : AccountLimit -> List (String, String)
accountLimitEncoder data =
    []
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.value of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "Value" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






cancelUpdateStackInputEncoder : CancelUpdateStackInput -> List (String, String)
cancelUpdateStackInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> (case data.clientRequestToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ClientRequestToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










changeEncoder : Change -> List (String, String)
changeEncoder data =
    []
        
        
        |> (case data.type_ of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs changeTypeToString "Type" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resourceChange of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs resourceChangeEncoder "ResourceChange" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        














changeSetSummaryEncoder : ChangeSetSummary -> List (String, String)
changeSetSummaryEncoder data =
    []
        
        
        |> (case data.stackId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.changeSetId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ChangeSetId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.changeSetName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ChangeSetName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.executionStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs executionStatusToString "ExecutionStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs changeSetStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.statusReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StatusReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.creationTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreationTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        


















continueUpdateRollbackInputEncoder : ContinueUpdateRollbackInput -> List (String, String)
continueUpdateRollbackInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> (case data.roleARN of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RoleARN" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resourcesToSkip of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ResourcesToSkip" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.clientRequestToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ClientRequestToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






continueUpdateRollbackOutputEncoder : ContinueUpdateRollbackOutput -> List (String, String)
continueUpdateRollbackOutputEncoder data =
    []
        






createChangeSetInputEncoder : CreateChangeSetInput -> List (String, String)
createChangeSetInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> (case data.templateBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateURL of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateURL" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.usePreviousTemplate of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "UsePreviousTemplate" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parameters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.capabilities of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs capabilityToString "") "Capabilities" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resourceTypes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ResourceTypes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.roleARN of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RoleARN" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.rollbackConfiguration of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs rollbackConfigurationEncoder "RollbackConfiguration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.notificationARNs of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "NotificationARNs" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ChangeSetName" data.changeSetName
        
        
        
        |> (case data.clientToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ClientToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.changeSetType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs changeSetTypeToString "ChangeSetType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createChangeSetOutputEncoder : CreateChangeSetOutput -> List (String, String)
createChangeSetOutputEncoder data =
    []
        
        
        |> (case data.id of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Id" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createStackInputEncoder : CreateStackInput -> List (String, String)
createStackInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> (case data.templateBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateURL of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateURL" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parameters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.disableRollback of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DisableRollback" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.rollbackConfiguration of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs rollbackConfigurationEncoder "RollbackConfiguration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.timeoutInMinutes of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "TimeoutInMinutes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.notificationARNs of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "NotificationARNs" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.capabilities of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs capabilityToString "") "Capabilities" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resourceTypes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ResourceTypes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.roleARN of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RoleARN" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.onFailure of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs onFailureToString "OnFailure" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackPolicyBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackPolicyBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackPolicyURL of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackPolicyURL" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.clientRequestToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ClientRequestToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableTerminationProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableTerminationProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createStackInstancesInputEncoder : CreateStackInstancesInput -> List (String, String)
createStackInstancesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" data.stackSetName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Accounts" data.accounts
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Regions" data.regions
        
        
        
        |> (case data.parameterOverrides of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "ParameterOverrides" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.operationPreferences of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs stackSetOperationPreferencesEncoder "OperationPreferences" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.operationId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OperationId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createStackInstancesOutputEncoder : CreateStackInstancesOutput -> List (String, String)
createStackInstancesOutputEncoder data =
    []
        
        
        |> (case data.operationId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OperationId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createStackOutputEncoder : CreateStackOutput -> List (String, String)
createStackOutputEncoder data =
    []
        
        
        |> (case data.stackId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createStackSetInputEncoder : CreateStackSetInput -> List (String, String)
createStackSetInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" data.stackSetName
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateURL of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateURL" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parameters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.capabilities of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs capabilityToString "") "Capabilities" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.administrationRoleARN of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AdministrationRoleARN" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.executionRoleName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ExecutionRoleName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.clientRequestToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ClientRequestToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createStackSetOutputEncoder : CreateStackSetOutput -> List (String, String)
createStackSetOutputEncoder data =
    []
        
        
        |> (case data.stackSetId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackSetId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteChangeSetInputEncoder : DeleteChangeSetInput -> List (String, String)
deleteChangeSetInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ChangeSetName" data.changeSetName
        
        
        
        |> (case data.stackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteChangeSetOutputEncoder : DeleteChangeSetOutput -> List (String, String)
deleteChangeSetOutputEncoder data =
    []
        






deleteStackInputEncoder : DeleteStackInput -> List (String, String)
deleteStackInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> (case data.retainResources of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "RetainResources" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.roleARN of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RoleARN" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.clientRequestToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ClientRequestToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteStackInstancesInputEncoder : DeleteStackInstancesInput -> List (String, String)
deleteStackInstancesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" data.stackSetName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Accounts" data.accounts
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Regions" data.regions
        
        
        
        |> (case data.operationPreferences of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs stackSetOperationPreferencesEncoder "OperationPreferences" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "RetainStacks" data.retainStacks
        
        
        
        |> (case data.operationId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OperationId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteStackInstancesOutputEncoder : DeleteStackInstancesOutput -> List (String, String)
deleteStackInstancesOutputEncoder data =
    []
        
        
        |> (case data.operationId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OperationId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteStackSetInputEncoder : DeleteStackSetInput -> List (String, String)
deleteStackSetInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" data.stackSetName
        
        






deleteStackSetOutputEncoder : DeleteStackSetOutput -> List (String, String)
deleteStackSetOutputEncoder data =
    []
        






describeAccountLimitsInputEncoder : DescribeAccountLimitsInput -> List (String, String)
describeAccountLimitsInputEncoder data =
    []
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeAccountLimitsOutputEncoder : DescribeAccountLimitsOutput -> List (String, String)
describeAccountLimitsOutputEncoder data =
    []
        
        
        |> (case data.accountLimits of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs accountLimitEncoder "") "AccountLimits" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeChangeSetInputEncoder : DescribeChangeSetInput -> List (String, String)
describeChangeSetInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ChangeSetName" data.changeSetName
        
        
        
        |> (case data.stackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeChangeSetOutputEncoder : DescribeChangeSetOutput -> List (String, String)
describeChangeSetOutputEncoder data =
    []
        
        
        |> (case data.changeSetName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ChangeSetName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.changeSetId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ChangeSetId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parameters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.creationTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreationTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.executionStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs executionStatusToString "ExecutionStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs changeSetStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.statusReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StatusReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.notificationARNs of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "NotificationARNs" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.rollbackConfiguration of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs rollbackConfigurationEncoder "RollbackConfiguration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.capabilities of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs capabilityToString "") "Capabilities" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.changes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs changeEncoder "") "Changes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeStackDriftDetectionStatusInputEncoder : DescribeStackDriftDetectionStatusInput -> List (String, String)
describeStackDriftDetectionStatusInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackDriftDetectionId" data.stackDriftDetectionId
        
        






describeStackDriftDetectionStatusOutputEncoder : DescribeStackDriftDetectionStatusOutput -> List (String, String)
describeStackDriftDetectionStatusOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackId" data.stackId
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackDriftDetectionId" data.stackDriftDetectionId
        
        
        
        |> (case data.stackDriftStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs stackDriftStatusToString "StackDriftStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs stackDriftDetectionStatusToString "DetectionStatus" data.detectionStatus
        
        
        
        |> (case data.detectionStatusReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DetectionStatusReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.driftedStackResourceCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "DriftedStackResourceCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Timestamp" data.timestamp
        
        






describeStackEventsInputEncoder : DescribeStackEventsInput -> List (String, String)
describeStackEventsInputEncoder data =
    []
        
        
        |> (case data.stackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeStackEventsOutputEncoder : DescribeStackEventsOutput -> List (String, String)
describeStackEventsOutputEncoder data =
    []
        
        
        |> (case data.stackEvents of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs stackEventEncoder "") "StackEvents" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeStackInstanceInputEncoder : DescribeStackInstanceInput -> List (String, String)
describeStackInstanceInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" data.stackSetName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackInstanceAccount" data.stackInstanceAccount
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackInstanceRegion" data.stackInstanceRegion
        
        






describeStackInstanceOutputEncoder : DescribeStackInstanceOutput -> List (String, String)
describeStackInstanceOutputEncoder data =
    []
        
        
        |> (case data.stackInstance of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs stackInstanceEncoder "StackInstance" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeStackResourceDriftsInputEncoder : DescribeStackResourceDriftsInput -> List (String, String)
describeStackResourceDriftsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> (case data.stackResourceDriftStatusFilters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs stackResourceDriftStatusToString "") "StackResourceDriftStatusFilters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxResults of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxResults" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeStackResourceDriftsOutputEncoder : DescribeStackResourceDriftsOutput -> List (String, String)
describeStackResourceDriftsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs stackResourceDriftEncoder "") "StackResourceDrifts" data.stackResourceDrifts
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeStackResourceInputEncoder : DescribeStackResourceInput -> List (String, String)
describeStackResourceInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LogicalResourceId" data.logicalResourceId
        
        






describeStackResourceOutputEncoder : DescribeStackResourceOutput -> List (String, String)
describeStackResourceOutputEncoder data =
    []
        
        
        |> (case data.stackResourceDetail of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs stackResourceDetailEncoder "StackResourceDetail" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeStackResourcesInputEncoder : DescribeStackResourcesInput -> List (String, String)
describeStackResourcesInputEncoder data =
    []
        
        
        |> (case data.stackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.logicalResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LogicalResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.physicalResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PhysicalResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeStackResourcesOutputEncoder : DescribeStackResourcesOutput -> List (String, String)
describeStackResourcesOutputEncoder data =
    []
        
        
        |> (case data.stackResources of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs stackResourceEncoder "") "StackResources" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeStackSetInputEncoder : DescribeStackSetInput -> List (String, String)
describeStackSetInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" data.stackSetName
        
        






describeStackSetOperationInputEncoder : DescribeStackSetOperationInput -> List (String, String)
describeStackSetOperationInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" data.stackSetName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "OperationId" data.operationId
        
        






describeStackSetOperationOutputEncoder : DescribeStackSetOperationOutput -> List (String, String)
describeStackSetOperationOutputEncoder data =
    []
        
        
        |> (case data.stackSetOperation of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs stackSetOperationEncoder "StackSetOperation" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeStackSetOutputEncoder : DescribeStackSetOutput -> List (String, String)
describeStackSetOutputEncoder data =
    []
        
        
        |> (case data.stackSet of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs stackSetEncoder "StackSet" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeStacksInputEncoder : DescribeStacksInput -> List (String, String)
describeStacksInputEncoder data =
    []
        
        
        |> (case data.stackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeStacksOutputEncoder : DescribeStacksOutput -> List (String, String)
describeStacksOutputEncoder data =
    []
        
        
        |> (case data.stacks of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs stackEncoder "") "Stacks" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






detectStackDriftInputEncoder : DetectStackDriftInput -> List (String, String)
detectStackDriftInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> (case data.logicalResourceIds of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "LogicalResourceIds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






detectStackDriftOutputEncoder : DetectStackDriftOutput -> List (String, String)
detectStackDriftOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackDriftDetectionId" data.stackDriftDetectionId
        
        






detectStackResourceDriftInputEncoder : DetectStackResourceDriftInput -> List (String, String)
detectStackResourceDriftInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LogicalResourceId" data.logicalResourceId
        
        






detectStackResourceDriftOutputEncoder : DetectStackResourceDriftOutput -> List (String, String)
detectStackResourceDriftOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs stackResourceDriftEncoder "StackResourceDrift" data.stackResourceDrift
        
        










estimateTemplateCostInputEncoder : EstimateTemplateCostInput -> List (String, String)
estimateTemplateCostInputEncoder data =
    []
        
        
        |> (case data.templateBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateURL of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateURL" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parameters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






estimateTemplateCostOutputEncoder : EstimateTemplateCostOutput -> List (String, String)
estimateTemplateCostOutputEncoder data =
    []
        
        
        |> (case data.url of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Url" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










executeChangeSetInputEncoder : ExecuteChangeSetInput -> List (String, String)
executeChangeSetInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ChangeSetName" data.changeSetName
        
        
        
        |> (case data.stackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.clientRequestToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ClientRequestToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






executeChangeSetOutputEncoder : ExecuteChangeSetOutput -> List (String, String)
executeChangeSetOutputEncoder data =
    []
        










exportEncoder : Export -> List (String, String)
exportEncoder data =
    []
        
        
        |> (case data.exportingStackId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ExportingStackId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.value of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Value" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






getStackPolicyInputEncoder : GetStackPolicyInput -> List (String, String)
getStackPolicyInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        






getStackPolicyOutputEncoder : GetStackPolicyOutput -> List (String, String)
getStackPolicyOutputEncoder data =
    []
        
        
        |> (case data.stackPolicyBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackPolicyBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






getTemplateInputEncoder : GetTemplateInput -> List (String, String)
getTemplateInputEncoder data =
    []
        
        
        |> (case data.stackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.changeSetName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ChangeSetName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateStage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs templateStageToString "TemplateStage" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






getTemplateOutputEncoder : GetTemplateOutput -> List (String, String)
getTemplateOutputEncoder data =
    []
        
        
        |> (case data.templateBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stagesAvailable of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs templateStageToString "") "StagesAvailable" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






getTemplateSummaryInputEncoder : GetTemplateSummaryInput -> List (String, String)
getTemplateSummaryInputEncoder data =
    []
        
        
        |> (case data.templateBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateURL of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateURL" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackSetName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






getTemplateSummaryOutputEncoder : GetTemplateSummaryOutput -> List (String, String)
getTemplateSummaryOutputEncoder data =
    []
        
        
        |> (case data.parameters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterDeclarationEncoder "") "Parameters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.capabilities of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs capabilityToString "") "Capabilities" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.capabilitiesReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CapabilitiesReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resourceTypes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ResourceTypes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.version of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Version" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.metadata of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Metadata" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.declaredTransforms of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "DeclaredTransforms" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listChangeSetsInputEncoder : ListChangeSetsInput -> List (String, String)
listChangeSetsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listChangeSetsOutputEncoder : ListChangeSetsOutput -> List (String, String)
listChangeSetsOutputEncoder data =
    []
        
        
        |> (case data.summaries of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs changeSetSummaryEncoder "") "Summaries" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listExportsInputEncoder : ListExportsInput -> List (String, String)
listExportsInputEncoder data =
    []
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listExportsOutputEncoder : ListExportsOutput -> List (String, String)
listExportsOutputEncoder data =
    []
        
        
        |> (case data.exports of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs exportEncoder "") "Exports" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listImportsInputEncoder : ListImportsInput -> List (String, String)
listImportsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ExportName" data.exportName
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listImportsOutputEncoder : ListImportsOutput -> List (String, String)
listImportsOutputEncoder data =
    []
        
        
        |> (case data.imports of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Imports" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listStackInstancesInputEncoder : ListStackInstancesInput -> List (String, String)
listStackInstancesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" data.stackSetName
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxResults of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxResults" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackInstanceAccount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackInstanceAccount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackInstanceRegion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackInstanceRegion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listStackInstancesOutputEncoder : ListStackInstancesOutput -> List (String, String)
listStackInstancesOutputEncoder data =
    []
        
        
        |> (case data.summaries of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs stackInstanceSummaryEncoder "") "Summaries" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listStackResourcesInputEncoder : ListStackResourcesInput -> List (String, String)
listStackResourcesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listStackResourcesOutputEncoder : ListStackResourcesOutput -> List (String, String)
listStackResourcesOutputEncoder data =
    []
        
        
        |> (case data.stackResourceSummaries of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs stackResourceSummaryEncoder "") "StackResourceSummaries" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listStackSetOperationResultsInputEncoder : ListStackSetOperationResultsInput -> List (String, String)
listStackSetOperationResultsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" data.stackSetName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "OperationId" data.operationId
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxResults of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxResults" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listStackSetOperationResultsOutputEncoder : ListStackSetOperationResultsOutput -> List (String, String)
listStackSetOperationResultsOutputEncoder data =
    []
        
        
        |> (case data.summaries of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs stackSetOperationResultSummaryEncoder "") "Summaries" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listStackSetOperationsInputEncoder : ListStackSetOperationsInput -> List (String, String)
listStackSetOperationsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" data.stackSetName
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxResults of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxResults" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listStackSetOperationsOutputEncoder : ListStackSetOperationsOutput -> List (String, String)
listStackSetOperationsOutputEncoder data =
    []
        
        
        |> (case data.summaries of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs stackSetOperationSummaryEncoder "") "Summaries" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listStackSetsInputEncoder : ListStackSetsInput -> List (String, String)
listStackSetsInputEncoder data =
    []
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxResults of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxResults" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs stackSetStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listStackSetsOutputEncoder : ListStackSetsOutput -> List (String, String)
listStackSetsOutputEncoder data =
    []
        
        
        |> (case data.summaries of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs stackSetSummaryEncoder "") "Summaries" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listStacksInputEncoder : ListStacksInput -> List (String, String)
listStacksInputEncoder data =
    []
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackStatusFilter of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs stackStatusToString "") "StackStatusFilter" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listStacksOutputEncoder : ListStacksOutput -> List (String, String)
listStacksOutputEncoder data =
    []
        
        
        |> (case data.stackSummaries of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs stackSummaryEncoder "") "StackSummaries" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.nextToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










outputEncoder : Output -> List (String, String)
outputEncoder data =
    []
        
        
        |> (case data.outputKey of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OutputKey" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.outputValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OutputValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.exportName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ExportName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






parameterEncoder : Parameter -> List (String, String)
parameterEncoder data =
    []
        
        
        |> (case data.parameterKey of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ParameterKey" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parameterValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ParameterValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.usePreviousValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "UsePreviousValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resolvedValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ResolvedValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






parameterConstraintsEncoder : ParameterConstraints -> List (String, String)
parameterConstraintsEncoder data =
    []
        
        
        |> (case data.allowedValues of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AllowedValues" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






parameterDeclarationEncoder : ParameterDeclaration -> List (String, String)
parameterDeclarationEncoder data =
    []
        
        
        |> (case data.parameterKey of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ParameterKey" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parameterType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ParameterType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.noEcho of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "NoEcho" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parameterConstraints of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs parameterConstraintsEncoder "ParameterConstraints" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






physicalResourceIdContextKeyValuePairEncoder : PhysicalResourceIdContextKeyValuePair -> List (String, String)
physicalResourceIdContextKeyValuePairEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Key" data.key
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Value" data.value
        
        






propertyDifferenceEncoder : PropertyDifference -> List (String, String)
propertyDifferenceEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "PropertyPath" data.propertyPath
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ExpectedValue" data.expectedValue
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ActualValue" data.actualValue
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs differenceTypeToString "DifferenceType" data.differenceType
        
        


















resourceChangeEncoder : ResourceChange -> List (String, String)
resourceChangeEncoder data =
    []
        
        
        |> (case data.action of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs changeActionToString "Action" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.logicalResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LogicalResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.physicalResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PhysicalResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resourceType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ResourceType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.replacement of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs replacementToString "Replacement" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.scope of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs resourceAttributeToString "") "Scope" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.details of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs resourceChangeDetailEncoder "") "Details" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






resourceChangeDetailEncoder : ResourceChangeDetail -> List (String, String)
resourceChangeDetailEncoder data =
    []
        
        
        |> (case data.target of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs resourceTargetDefinitionEncoder "Target" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.evaluation of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs evaluationTypeToString "Evaluation" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.changeSource of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs changeSourceToString "ChangeSource" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.causingEntity of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CausingEntity" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        














resourceTargetDefinitionEncoder : ResourceTargetDefinition -> List (String, String)
resourceTargetDefinitionEncoder data =
    []
        
        
        |> (case data.attribute of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs resourceAttributeToString "Attribute" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.name of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Name" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.requiresRecreation of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs requiresRecreationToString "RequiresRecreation" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






rollbackConfigurationEncoder : RollbackConfiguration -> List (String, String)
rollbackConfigurationEncoder data =
    []
        
        
        |> (case data.rollbackTriggers of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs rollbackTriggerEncoder "") "RollbackTriggers" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.monitoringTimeInMinutes of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MonitoringTimeInMinutes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






rollbackTriggerEncoder : RollbackTrigger -> List (String, String)
rollbackTriggerEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Arn" data.arn
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Type" data.type_
        
        






setStackPolicyInputEncoder : SetStackPolicyInput -> List (String, String)
setStackPolicyInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> (case data.stackPolicyBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackPolicyBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackPolicyURL of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackPolicyURL" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






signalResourceInputEncoder : SignalResourceInput -> List (String, String)
signalResourceInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LogicalResourceId" data.logicalResourceId
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "UniqueId" data.uniqueId
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs resourceSignalStatusToString "Status" data.status
        
        






stackEncoder : Stack -> List (String, String)
stackEncoder data =
    []
        
        
        |> (case data.stackId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> (case data.changeSetId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ChangeSetId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parameters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreationTime" data.creationTime
        
        
        
        |> (case data.deletionTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DeletionTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.lastUpdatedTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastUpdatedTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.rollbackConfiguration of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs rollbackConfigurationEncoder "RollbackConfiguration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs stackStatusToString "StackStatus" data.stackStatus
        
        
        
        |> (case data.stackStatusReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackStatusReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.disableRollback of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "DisableRollback" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.notificationARNs of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "NotificationARNs" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.timeoutInMinutes of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "TimeoutInMinutes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.capabilities of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs capabilityToString "") "Capabilities" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.outputs of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs outputEncoder "") "Outputs" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.roleARN of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RoleARN" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.enableTerminationProtection of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableTerminationProtection" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ParentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.rootId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RootId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.driftInformation of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs stackDriftInformationEncoder "DriftInformation" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










stackDriftInformationEncoder : StackDriftInformation -> List (String, String)
stackDriftInformationEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs stackDriftStatusToString "StackDriftStatus" data.stackDriftStatus
        
        
        
        |> (case data.lastCheckTimestamp of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastCheckTimestamp" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






stackDriftInformationSummaryEncoder : StackDriftInformationSummary -> List (String, String)
stackDriftInformationSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs stackDriftStatusToString "StackDriftStatus" data.stackDriftStatus
        
        
        
        |> (case data.lastCheckTimestamp of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastCheckTimestamp" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










stackEventEncoder : StackEvent -> List (String, String)
stackEventEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackId" data.stackId
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "EventId" data.eventId
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> (case data.logicalResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "LogicalResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.physicalResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PhysicalResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resourceType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ResourceType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Timestamp" data.timestamp
        
        
        
        |> (case data.resourceStatus of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs resourceStatusToString "ResourceStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resourceStatusReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ResourceStatusReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resourceProperties of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ResourceProperties" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.clientRequestToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ClientRequestToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






stackInstanceEncoder : StackInstance -> List (String, String)
stackInstanceEncoder data =
    []
        
        
        |> (case data.stackSetId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackSetId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.region of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Region" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.account of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Account" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parameterOverrides of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "ParameterOverrides" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs stackInstanceStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.statusReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StatusReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










stackInstanceSummaryEncoder : StackInstanceSummary -> List (String, String)
stackInstanceSummaryEncoder data =
    []
        
        
        |> (case data.stackSetId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackSetId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.region of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Region" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.account of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Account" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs stackInstanceStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.statusReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StatusReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






stackResourceEncoder : StackResource -> List (String, String)
stackResourceEncoder data =
    []
        
        
        |> (case data.stackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LogicalResourceId" data.logicalResourceId
        
        
        
        |> (case data.physicalResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PhysicalResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceType" data.resourceType
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Timestamp" data.timestamp
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs resourceStatusToString "ResourceStatus" data.resourceStatus
        
        
        
        |> (case data.resourceStatusReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ResourceStatusReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.driftInformation of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs stackResourceDriftInformationEncoder "DriftInformation" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






stackResourceDetailEncoder : StackResourceDetail -> List (String, String)
stackResourceDetailEncoder data =
    []
        
        
        |> (case data.stackName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LogicalResourceId" data.logicalResourceId
        
        
        
        |> (case data.physicalResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PhysicalResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceType" data.resourceType
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastUpdatedTimestamp" data.lastUpdatedTimestamp
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs resourceStatusToString "ResourceStatus" data.resourceStatus
        
        
        
        |> (case data.resourceStatusReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ResourceStatusReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.metadata of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Metadata" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.driftInformation of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs stackResourceDriftInformationEncoder "DriftInformation" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






stackResourceDriftEncoder : StackResourceDrift -> List (String, String)
stackResourceDriftEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackId" data.stackId
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LogicalResourceId" data.logicalResourceId
        
        
        
        |> (case data.physicalResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PhysicalResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.physicalResourceIdContext of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs physicalResourceIdContextKeyValuePairEncoder "") "PhysicalResourceIdContext" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceType" data.resourceType
        
        
        
        |> (case data.expectedProperties of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ExpectedProperties" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.actualProperties of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ActualProperties" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.propertyDifferences of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs propertyDifferenceEncoder "") "PropertyDifferences" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs stackResourceDriftStatusToString "StackResourceDriftStatus" data.stackResourceDriftStatus
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Timestamp" data.timestamp
        
        






stackResourceDriftInformationEncoder : StackResourceDriftInformation -> List (String, String)
stackResourceDriftInformationEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs stackResourceDriftStatusToString "StackResourceDriftStatus" data.stackResourceDriftStatus
        
        
        
        |> (case data.lastCheckTimestamp of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastCheckTimestamp" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






stackResourceDriftInformationSummaryEncoder : StackResourceDriftInformationSummary -> List (String, String)
stackResourceDriftInformationSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs stackResourceDriftStatusToString "StackResourceDriftStatus" data.stackResourceDriftStatus
        
        
        
        |> (case data.lastCheckTimestamp of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastCheckTimestamp" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










stackResourceSummaryEncoder : StackResourceSummary -> List (String, String)
stackResourceSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "LogicalResourceId" data.logicalResourceId
        
        
        
        |> (case data.physicalResourceId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "PhysicalResourceId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceType" data.resourceType
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastUpdatedTimestamp" data.lastUpdatedTimestamp
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs resourceStatusToString "ResourceStatus" data.resourceStatus
        
        
        
        |> (case data.resourceStatusReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ResourceStatusReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.driftInformation of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs stackResourceDriftInformationSummaryEncoder "DriftInformation" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






stackSetEncoder : StackSet -> List (String, String)
stackSetEncoder data =
    []
        
        
        |> (case data.stackSetName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackSetId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackSetId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs stackSetStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parameters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.capabilities of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs capabilityToString "") "Capabilities" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackSetARN of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackSetARN" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.administrationRoleARN of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AdministrationRoleARN" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.executionRoleName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ExecutionRoleName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






stackSetOperationEncoder : StackSetOperation -> List (String, String)
stackSetOperationEncoder data =
    []
        
        
        |> (case data.operationId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OperationId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackSetId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackSetId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.action of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs stackSetOperationActionToString "Action" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs stackSetOperationStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.operationPreferences of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs stackSetOperationPreferencesEncoder "OperationPreferences" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.retainStacks of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "RetainStacks" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.administrationRoleARN of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AdministrationRoleARN" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.executionRoleName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ExecutionRoleName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.creationTimestamp of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreationTimestamp" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.endTimestamp of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EndTimestamp" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










stackSetOperationPreferencesEncoder : StackSetOperationPreferences -> List (String, String)
stackSetOperationPreferencesEncoder data =
    []
        
        
        |> (case data.regionOrder of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "RegionOrder" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.failureToleranceCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "FailureToleranceCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.failureTolerancePercentage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "FailureTolerancePercentage" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxConcurrentCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxConcurrentCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxConcurrentPercentage of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxConcurrentPercentage" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










stackSetOperationResultSummaryEncoder : StackSetOperationResultSummary -> List (String, String)
stackSetOperationResultSummaryEncoder data =
    []
        
        
        |> (case data.account of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Account" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.region of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Region" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs stackSetOperationResultStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.statusReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StatusReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.accountGateResult of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs accountGateResultEncoder "AccountGateResult" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










stackSetOperationSummaryEncoder : StackSetOperationSummary -> List (String, String)
stackSetOperationSummaryEncoder data =
    []
        
        
        |> (case data.operationId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OperationId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.action of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs stackSetOperationActionToString "Action" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs stackSetOperationStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.creationTimestamp of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreationTimestamp" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.endTimestamp of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EndTimestamp" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










stackSetSummaryEncoder : StackSetSummary -> List (String, String)
stackSetSummaryEncoder data =
    []
        
        
        |> (case data.stackSetName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackSetId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackSetId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.status of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs stackSetStatusToString "Status" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










stackSummaryEncoder : StackSummary -> List (String, String)
stackSummaryEncoder data =
    []
        
        
        |> (case data.stackId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> (case data.templateDescription of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateDescription" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreationTime" data.creationTime
        
        
        
        |> (case data.lastUpdatedTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastUpdatedTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deletionTime of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "DeletionTime" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs stackStatusToString "StackStatus" data.stackStatus
        
        
        
        |> (case data.stackStatusReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackStatusReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parentId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ParentId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.rootId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RootId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.driftInformation of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs stackDriftInformationSummaryEncoder "DriftInformation" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






stopStackSetOperationInputEncoder : StopStackSetOperationInput -> List (String, String)
stopStackSetOperationInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" data.stackSetName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "OperationId" data.operationId
        
        






stopStackSetOperationOutputEncoder : StopStackSetOperationOutput -> List (String, String)
stopStackSetOperationOutputEncoder data =
    []
        






tagEncoder : Tag -> List (String, String)
tagEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Key" data.key
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Value" data.value
        
        






templateParameterEncoder : TemplateParameter -> List (String, String)
templateParameterEncoder data =
    []
        
        
        |> (case data.parameterKey of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ParameterKey" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.noEcho of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "NoEcho" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










updateStackInputEncoder : UpdateStackInput -> List (String, String)
updateStackInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        
        
        |> (case data.templateBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateURL of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateURL" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.usePreviousTemplate of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "UsePreviousTemplate" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackPolicyDuringUpdateBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackPolicyDuringUpdateBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackPolicyDuringUpdateURL of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackPolicyDuringUpdateURL" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parameters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.capabilities of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs capabilityToString "") "Capabilities" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.resourceTypes of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ResourceTypes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.roleARN of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "RoleARN" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.rollbackConfiguration of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs rollbackConfigurationEncoder "RollbackConfiguration" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackPolicyBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackPolicyBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stackPolicyURL of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackPolicyURL" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.notificationARNs of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "NotificationARNs" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.clientRequestToken of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ClientRequestToken" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






updateStackInstancesInputEncoder : UpdateStackInstancesInput -> List (String, String)
updateStackInstancesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" data.stackSetName
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Accounts" data.accounts
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Regions" data.regions
        
        
        
        |> (case data.parameterOverrides of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "ParameterOverrides" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.operationPreferences of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs stackSetOperationPreferencesEncoder "OperationPreferences" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.operationId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OperationId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






updateStackInstancesOutputEncoder : UpdateStackInstancesOutput -> List (String, String)
updateStackInstancesOutputEncoder data =
    []
        
        
        |> (case data.operationId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OperationId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






updateStackOutputEncoder : UpdateStackOutput -> List (String, String)
updateStackOutputEncoder data =
    []
        
        
        |> (case data.stackId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






updateStackSetInputEncoder : UpdateStackSetInput -> List (String, String)
updateStackSetInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackSetName" data.stackSetName
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateURL of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateURL" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.usePreviousTemplate of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "UsePreviousTemplate" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.parameters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs parameterEncoder "") "Parameters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.capabilities of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs capabilityToString "") "Capabilities" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.operationPreferences of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs stackSetOperationPreferencesEncoder "OperationPreferences" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.administrationRoleARN of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AdministrationRoleARN" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.executionRoleName of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ExecutionRoleName" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.operationId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OperationId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.accounts of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Accounts" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.regions of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "Regions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






updateStackSetOutputEncoder : UpdateStackSetOutput -> List (String, String)
updateStackSetOutputEncoder data =
    []
        
        
        |> (case data.operationId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "OperationId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






updateTerminationProtectionInputEncoder : UpdateTerminationProtectionInput -> List (String, String)
updateTerminationProtectionInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "EnableTerminationProtection" data.enableTerminationProtection
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "StackName" data.stackName
        
        






updateTerminationProtectionOutputEncoder : UpdateTerminationProtectionOutput -> List (String, String)
updateTerminationProtectionOutputEncoder data =
    []
        
        
        |> (case data.stackId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StackId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






validateTemplateInputEncoder : ValidateTemplateInput -> List (String, String)
validateTemplateInputEncoder data =
    []
        
        
        |> (case data.templateBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.templateURL of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "TemplateURL" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






validateTemplateOutputEncoder : ValidateTemplateOutput -> List (String, String)
validateTemplateOutputEncoder data =
    []
        
        
        |> (case data.parameters of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs templateParameterEncoder "") "Parameters" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.description of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Description" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.capabilities of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs capabilityToString "") "Capabilities" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.capabilitiesReason of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "CapabilitiesReason" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.declaredTransforms of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "DeclaredTransforms" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        



