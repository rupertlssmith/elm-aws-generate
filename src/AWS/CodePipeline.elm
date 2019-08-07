module AWS.CodePipeline
    exposing
        ( service
        , acknowledgeJob
        , acknowledgeThirdPartyJob
        , createCustomActionType
        , CreateCustomActionTypeOptions
        , createPipeline
        , CreatePipelineOptions
        , deleteCustomActionType
        , deletePipeline
        , deleteWebhook
        , deregisterWebhookWithThirdParty
        , DeregisterWebhookWithThirdPartyOptions
        , disableStageTransition
        , enableStageTransition
        , getJobDetails
        , getPipeline
        , GetPipelineOptions
        , getPipelineExecution
        , getPipelineState
        , getThirdPartyJobDetails
        , listActionExecutions
        , ListActionExecutionsOptions
        , listActionTypes
        , ListActionTypesOptions
        , listPipelineExecutions
        , ListPipelineExecutionsOptions
        , listPipelines
        , ListPipelinesOptions
        , listTagsForResource
        , ListTagsForResourceOptions
        , listWebhooks
        , ListWebhooksOptions
        , pollForJobs
        , PollForJobsOptions
        , pollForThirdPartyJobs
        , PollForThirdPartyJobsOptions
        , putActionRevision
        , putApprovalResult
        , putJobFailureResult
        , putJobSuccessResult
        , PutJobSuccessResultOptions
        , putThirdPartyJobFailureResult
        , putThirdPartyJobSuccessResult
        , PutThirdPartyJobSuccessResultOptions
        , putWebhook
        , PutWebhookOptions
        , registerWebhookWithThirdParty
        , RegisterWebhookWithThirdPartyOptions
        , retryStageExecution
        , startPipelineExecution
        , StartPipelineExecutionOptions
        , tagResource
        , untagResource
        , updatePipeline
        , AWSSessionCredentials
        , AcknowledgeJobOutput
        , AcknowledgeThirdPartyJobOutput
        , ActionCategory(..)
        , ActionConfiguration
        , ActionConfigurationProperty
        , ActionConfigurationPropertyType(..)
        , ActionContext
        , ActionDeclaration
        , ActionExecution
        , ActionExecutionDetail
        , ActionExecutionFilter
        , ActionExecutionInput
        , ActionExecutionOutput
        , ActionExecutionResult
        , ActionExecutionStatus(..)
        , ActionOwner(..)
        , ActionRevision
        , ActionState
        , ActionType
        , ActionTypeId
        , ActionTypeSettings
        , ApprovalResult
        , ApprovalStatus(..)
        , Artifact
        , ArtifactDetail
        , ArtifactDetails
        , ArtifactLocation
        , ArtifactLocationType(..)
        , ArtifactRevision
        , ArtifactStore
        , ArtifactStoreType(..)
        , BlockerDeclaration
        , BlockerType(..)
        , CreateCustomActionTypeOutput
        , CreatePipelineOutput
        , CurrentRevision
        , DeleteWebhookOutput
        , DeregisterWebhookWithThirdPartyOutput
        , EncryptionKey
        , EncryptionKeyType(..)
        , ErrorDetails
        , ExecutionDetails
        , FailureDetails
        , FailureType(..)
        , GetJobDetailsOutput
        , GetPipelineExecutionOutput
        , GetPipelineOutput
        , GetPipelineStateOutput
        , GetThirdPartyJobDetailsOutput
        , InputArtifact
        , Job
        , JobData
        , JobDetails
        , JobStatus(..)
        , ListActionExecutionsOutput
        , ListActionTypesOutput
        , ListPipelineExecutionsOutput
        , ListPipelinesOutput
        , ListTagsForResourceOutput
        , ListWebhookItem
        , ListWebhooksOutput
        , OutputArtifact
        , PipelineContext
        , PipelineDeclaration
        , PipelineExecution
        , PipelineExecutionStatus(..)
        , PipelineExecutionSummary
        , PipelineMetadata
        , PipelineSummary
        , PollForJobsOutput
        , PollForThirdPartyJobsOutput
        , PutActionRevisionOutput
        , PutApprovalResultOutput
        , PutWebhookOutput
        , RegisterWebhookWithThirdPartyOutput
        , RetryStageExecutionOutput
        , S3ArtifactLocation
        , S3Location
        , SourceRevision
        , StageContext
        , StageDeclaration
        , StageExecution
        , StageExecutionStatus(..)
        , StageRetryMode(..)
        , StageState
        , StageTransitionType(..)
        , StartPipelineExecutionOutput
        , Tag
        , TagResourceOutput
        , ThirdPartyJob
        , ThirdPartyJobData
        , ThirdPartyJobDetails
        , TransitionState
        , UntagResourceOutput
        , UpdatePipelineOutput
        , WebhookAuthConfiguration
        , WebhookAuthenticationType(..)
        , WebhookDefinition
        , WebhookFilterRule
        )

{-| <fullname>AWS CodePipeline</fullname> <p> <b>Overview</b> </p> <p>This is the AWS CodePipeline API Reference. This guide provides descriptions of the actions and data types for AWS CodePipeline. Some functionality for your pipeline is only configurable through the API. For additional information, see the <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html">AWS CodePipeline User Guide</a>.</p> <p>You can use the AWS CodePipeline API to work with pipelines, stages, actions, and transitions, as described below.</p> <p> <i>Pipelines</i> are models of automated release processes. Each pipeline is uniquely named, and consists of stages, actions, and transitions. </p> <p>You can work with pipelines by calling:</p> <ul> <li> <p> <a>CreatePipeline</a>, which creates a uniquely-named pipeline.</p> </li> <li> <p> <a>DeletePipeline</a>, which deletes the specified pipeline.</p> </li> <li> <p> <a>GetPipeline</a>, which returns information about the pipeline structure and pipeline metadata, including the pipeline Amazon Resource Name (ARN).</p> </li> <li> <p> <a>GetPipelineExecution</a>, which returns information about a specific execution of a pipeline.</p> </li> <li> <p> <a>GetPipelineState</a>, which returns information about the current state of the stages and actions of a pipeline.</p> </li> <li> <p> <a>ListActionExecutions</a>, which returns action-level details for past executions. The details include full stage and action-level details, including individual action duration, status, any errors which occurred during the execution, and input and output artifact location details.</p> </li> <li> <p> <a>ListPipelines</a>, which gets a summary of all of the pipelines associated with your account.</p> </li> <li> <p> <a>ListPipelineExecutions</a>, which gets a summary of the most recent executions for a pipeline.</p> </li> <li> <p> <a>StartPipelineExecution</a>, which runs the the most recent revision of an artifact through the pipeline.</p> </li> <li> <p> <a>UpdatePipeline</a>, which updates a pipeline with edits or changes to the structure of the pipeline.</p> </li> </ul> <p>Pipelines include <i>stages</i>. Each stage contains one or more actions that must complete before the next stage begins. A stage will result in success or failure. If a stage fails, then the pipeline stops at that stage and will remain stopped until either a new version of an artifact appears in the source location, or a user takes action to re-run the most recent artifact through the pipeline. You can call <a>GetPipelineState</a>, which displays the status of a pipeline, including the status of stages in the pipeline, or <a>GetPipeline</a>, which returns the entire structure of the pipeline, including the stages of that pipeline. For more information about the structure of stages and actions, also refer to the <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-structure.html">AWS CodePipeline Pipeline Structure Reference</a>.</p> <p>Pipeline stages include <i>actions</i>, which are categorized into categories such as source or build actions performed within a stage of a pipeline. For example, you can use a source action to import artifacts into a pipeline from a source such as Amazon S3. Like stages, you do not work with actions directly in most cases, but you do define and interact with actions when working with pipeline operations such as <a>CreatePipeline</a> and <a>GetPipelineState</a>. Valid action categories are:</p> <ul> <li> <p>Source</p> </li> <li> <p>Build</p> </li> <li> <p>Test</p> </li> <li> <p>Deploy</p> </li> <li> <p>Approval</p> </li> <li> <p>Invoke</p> </li> </ul> <p>Pipelines also include <i>transitions</i>, which allow the transition of artifacts from one stage to the next in a pipeline after the actions in one stage complete.</p> <p>You can work with transitions by calling:</p> <ul> <li> <p> <a>DisableStageTransition</a>, which prevents artifacts from transitioning to the next stage in a pipeline.</p> </li> <li> <p> <a>EnableStageTransition</a>, which enables transition of artifacts between stages in a pipeline. </p> </li> </ul> <p> <b>Using the API to integrate with AWS CodePipeline</b> </p> <p>For third-party integrators or developers who want to create their own integrations with AWS CodePipeline, the expected sequence varies from the standard API user. In order to integrate with AWS CodePipeline, developers will need to work with the following items:</p> <p> <b>Jobs</b>, which are instances of an action. For example, a job for a source action might import a revision of an artifact from a source. </p> <p>You can work with jobs by calling:</p> <ul> <li> <p> <a>AcknowledgeJob</a>, which confirms whether a job worker has received the specified job,</p> </li> <li> <p> <a>GetJobDetails</a>, which returns the details of a job,</p> </li> <li> <p> <a>PollForJobs</a>, which determines whether there are any jobs to act upon, </p> </li> <li> <p> <a>PutJobFailureResult</a>, which provides details of a job failure, and</p> </li> <li> <p> <a>PutJobSuccessResult</a>, which provides details of a job success.</p> </li> </ul> <p> <b>Third party jobs</b>, which are instances of an action created by a partner action and integrated into AWS CodePipeline. Partner actions are created by members of the AWS Partner Network.</p> <p>You can work with third party jobs by calling:</p> <ul> <li> <p> <a>AcknowledgeThirdPartyJob</a>, which confirms whether a job worker has received the specified job,</p> </li> <li> <p> <a>GetThirdPartyJobDetails</a>, which requests the details of a job for a partner action,</p> </li> <li> <p> <a>PollForThirdPartyJobs</a>, which determines whether there are any jobs to act upon, </p> </li> <li> <p> <a>PutThirdPartyJobFailureResult</a>, which provides details of a job failure, and</p> </li> <li> <p> <a>PutThirdPartyJobSuccessResult</a>, which provides details of a job success.</p> </li> </ul>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [acknowledgeJob](#acknowledgeJob)
* [acknowledgeThirdPartyJob](#acknowledgeThirdPartyJob)
* [createCustomActionType](#createCustomActionType)
* [CreateCustomActionTypeOptions](#CreateCustomActionTypeOptions)
* [createPipeline](#createPipeline)
* [CreatePipelineOptions](#CreatePipelineOptions)
* [deleteCustomActionType](#deleteCustomActionType)
* [deletePipeline](#deletePipeline)
* [deleteWebhook](#deleteWebhook)
* [deregisterWebhookWithThirdParty](#deregisterWebhookWithThirdParty)
* [DeregisterWebhookWithThirdPartyOptions](#DeregisterWebhookWithThirdPartyOptions)
* [disableStageTransition](#disableStageTransition)
* [enableStageTransition](#enableStageTransition)
* [getJobDetails](#getJobDetails)
* [getPipeline](#getPipeline)
* [GetPipelineOptions](#GetPipelineOptions)
* [getPipelineExecution](#getPipelineExecution)
* [getPipelineState](#getPipelineState)
* [getThirdPartyJobDetails](#getThirdPartyJobDetails)
* [listActionExecutions](#listActionExecutions)
* [ListActionExecutionsOptions](#ListActionExecutionsOptions)
* [listActionTypes](#listActionTypes)
* [ListActionTypesOptions](#ListActionTypesOptions)
* [listPipelineExecutions](#listPipelineExecutions)
* [ListPipelineExecutionsOptions](#ListPipelineExecutionsOptions)
* [listPipelines](#listPipelines)
* [ListPipelinesOptions](#ListPipelinesOptions)
* [listTagsForResource](#listTagsForResource)
* [ListTagsForResourceOptions](#ListTagsForResourceOptions)
* [listWebhooks](#listWebhooks)
* [ListWebhooksOptions](#ListWebhooksOptions)
* [pollForJobs](#pollForJobs)
* [PollForJobsOptions](#PollForJobsOptions)
* [pollForThirdPartyJobs](#pollForThirdPartyJobs)
* [PollForThirdPartyJobsOptions](#PollForThirdPartyJobsOptions)
* [putActionRevision](#putActionRevision)
* [putApprovalResult](#putApprovalResult)
* [putJobFailureResult](#putJobFailureResult)
* [putJobSuccessResult](#putJobSuccessResult)
* [PutJobSuccessResultOptions](#PutJobSuccessResultOptions)
* [putThirdPartyJobFailureResult](#putThirdPartyJobFailureResult)
* [putThirdPartyJobSuccessResult](#putThirdPartyJobSuccessResult)
* [PutThirdPartyJobSuccessResultOptions](#PutThirdPartyJobSuccessResultOptions)
* [putWebhook](#putWebhook)
* [PutWebhookOptions](#PutWebhookOptions)
* [registerWebhookWithThirdParty](#registerWebhookWithThirdParty)
* [RegisterWebhookWithThirdPartyOptions](#RegisterWebhookWithThirdPartyOptions)
* [retryStageExecution](#retryStageExecution)
* [startPipelineExecution](#startPipelineExecution)
* [StartPipelineExecutionOptions](#StartPipelineExecutionOptions)
* [tagResource](#tagResource)
* [untagResource](#untagResource)
* [updatePipeline](#updatePipeline)


@docs acknowledgeJob,acknowledgeThirdPartyJob,createCustomActionType,CreateCustomActionTypeOptions,createPipeline,CreatePipelineOptions,deleteCustomActionType,deletePipeline,deleteWebhook,deregisterWebhookWithThirdParty,DeregisterWebhookWithThirdPartyOptions,disableStageTransition,enableStageTransition,getJobDetails,getPipeline,GetPipelineOptions,getPipelineExecution,getPipelineState,getThirdPartyJobDetails,listActionExecutions,ListActionExecutionsOptions,listActionTypes,ListActionTypesOptions,listPipelineExecutions,ListPipelineExecutionsOptions,listPipelines,ListPipelinesOptions,listTagsForResource,ListTagsForResourceOptions,listWebhooks,ListWebhooksOptions,pollForJobs,PollForJobsOptions,pollForThirdPartyJobs,PollForThirdPartyJobsOptions,putActionRevision,putApprovalResult,putJobFailureResult,putJobSuccessResult,PutJobSuccessResultOptions,putThirdPartyJobFailureResult,putThirdPartyJobSuccessResult,PutThirdPartyJobSuccessResultOptions,putWebhook,PutWebhookOptions,registerWebhookWithThirdParty,RegisterWebhookWithThirdPartyOptions,retryStageExecution,startPipelineExecution,StartPipelineExecutionOptions,tagResource,untagResource,updatePipeline

## Responses

* [AcknowledgeJobOutput](#AcknowledgeJobOutput)
* [AcknowledgeThirdPartyJobOutput](#AcknowledgeThirdPartyJobOutput)
* [CreateCustomActionTypeOutput](#CreateCustomActionTypeOutput)
* [CreatePipelineOutput](#CreatePipelineOutput)
* [DeleteWebhookOutput](#DeleteWebhookOutput)
* [DeregisterWebhookWithThirdPartyOutput](#DeregisterWebhookWithThirdPartyOutput)
* [GetJobDetailsOutput](#GetJobDetailsOutput)
* [GetPipelineExecutionOutput](#GetPipelineExecutionOutput)
* [GetPipelineOutput](#GetPipelineOutput)
* [GetPipelineStateOutput](#GetPipelineStateOutput)
* [GetThirdPartyJobDetailsOutput](#GetThirdPartyJobDetailsOutput)
* [ListActionExecutionsOutput](#ListActionExecutionsOutput)
* [ListActionTypesOutput](#ListActionTypesOutput)
* [ListPipelineExecutionsOutput](#ListPipelineExecutionsOutput)
* [ListPipelinesOutput](#ListPipelinesOutput)
* [ListTagsForResourceOutput](#ListTagsForResourceOutput)
* [ListWebhooksOutput](#ListWebhooksOutput)
* [PollForJobsOutput](#PollForJobsOutput)
* [PollForThirdPartyJobsOutput](#PollForThirdPartyJobsOutput)
* [PutActionRevisionOutput](#PutActionRevisionOutput)
* [PutApprovalResultOutput](#PutApprovalResultOutput)
* [PutWebhookOutput](#PutWebhookOutput)
* [RegisterWebhookWithThirdPartyOutput](#RegisterWebhookWithThirdPartyOutput)
* [RetryStageExecutionOutput](#RetryStageExecutionOutput)
* [StartPipelineExecutionOutput](#StartPipelineExecutionOutput)
* [TagResourceOutput](#TagResourceOutput)
* [UntagResourceOutput](#UntagResourceOutput)
* [UpdatePipelineOutput](#UpdatePipelineOutput)


@docs AcknowledgeJobOutput,AcknowledgeThirdPartyJobOutput,CreateCustomActionTypeOutput,CreatePipelineOutput,DeleteWebhookOutput,DeregisterWebhookWithThirdPartyOutput,GetJobDetailsOutput,GetPipelineExecutionOutput,GetPipelineOutput,GetPipelineStateOutput,GetThirdPartyJobDetailsOutput,ListActionExecutionsOutput,ListActionTypesOutput,ListPipelineExecutionsOutput,ListPipelinesOutput,ListTagsForResourceOutput,ListWebhooksOutput,PollForJobsOutput,PollForThirdPartyJobsOutput,PutActionRevisionOutput,PutApprovalResultOutput,PutWebhookOutput,RegisterWebhookWithThirdPartyOutput,RetryStageExecutionOutput,StartPipelineExecutionOutput,TagResourceOutput,UntagResourceOutput,UpdatePipelineOutput

## Records

* [AWSSessionCredentials](#AWSSessionCredentials)
* [ActionConfiguration](#ActionConfiguration)
* [ActionConfigurationProperty](#ActionConfigurationProperty)
* [ActionContext](#ActionContext)
* [ActionDeclaration](#ActionDeclaration)
* [ActionExecution](#ActionExecution)
* [ActionExecutionDetail](#ActionExecutionDetail)
* [ActionExecutionFilter](#ActionExecutionFilter)
* [ActionExecutionInput](#ActionExecutionInput)
* [ActionExecutionOutput](#ActionExecutionOutput)
* [ActionExecutionResult](#ActionExecutionResult)
* [ActionRevision](#ActionRevision)
* [ActionState](#ActionState)
* [ActionType](#ActionType)
* [ActionTypeId](#ActionTypeId)
* [ActionTypeSettings](#ActionTypeSettings)
* [ApprovalResult](#ApprovalResult)
* [Artifact](#Artifact)
* [ArtifactDetail](#ArtifactDetail)
* [ArtifactDetails](#ArtifactDetails)
* [ArtifactLocation](#ArtifactLocation)
* [ArtifactRevision](#ArtifactRevision)
* [ArtifactStore](#ArtifactStore)
* [BlockerDeclaration](#BlockerDeclaration)
* [CurrentRevision](#CurrentRevision)
* [EncryptionKey](#EncryptionKey)
* [ErrorDetails](#ErrorDetails)
* [ExecutionDetails](#ExecutionDetails)
* [FailureDetails](#FailureDetails)
* [InputArtifact](#InputArtifact)
* [Job](#Job)
* [JobData](#JobData)
* [JobDetails](#JobDetails)
* [ListWebhookItem](#ListWebhookItem)
* [OutputArtifact](#OutputArtifact)
* [PipelineContext](#PipelineContext)
* [PipelineDeclaration](#PipelineDeclaration)
* [PipelineExecution](#PipelineExecution)
* [PipelineExecutionSummary](#PipelineExecutionSummary)
* [PipelineMetadata](#PipelineMetadata)
* [PipelineSummary](#PipelineSummary)
* [S3ArtifactLocation](#S3ArtifactLocation)
* [S3Location](#S3Location)
* [SourceRevision](#SourceRevision)
* [StageContext](#StageContext)
* [StageDeclaration](#StageDeclaration)
* [StageExecution](#StageExecution)
* [StageState](#StageState)
* [Tag](#Tag)
* [ThirdPartyJob](#ThirdPartyJob)
* [ThirdPartyJobData](#ThirdPartyJobData)
* [ThirdPartyJobDetails](#ThirdPartyJobDetails)
* [TransitionState](#TransitionState)
* [WebhookAuthConfiguration](#WebhookAuthConfiguration)
* [WebhookDefinition](#WebhookDefinition)
* [WebhookFilterRule](#WebhookFilterRule)


@docs AWSSessionCredentials,ActionConfiguration,ActionConfigurationProperty,ActionContext,ActionDeclaration,ActionExecution,ActionExecutionDetail,ActionExecutionFilter,ActionExecutionInput,ActionExecutionOutput,ActionExecutionResult,ActionRevision,ActionState,ActionType,ActionTypeId,ActionTypeSettings,ApprovalResult,Artifact,ArtifactDetail,ArtifactDetails,ArtifactLocation,ArtifactRevision,ArtifactStore,BlockerDeclaration,CurrentRevision,EncryptionKey,ErrorDetails,ExecutionDetails,FailureDetails,InputArtifact,Job,JobData,JobDetails,ListWebhookItem,OutputArtifact,PipelineContext,PipelineDeclaration,PipelineExecution,PipelineExecutionSummary,PipelineMetadata,PipelineSummary,S3ArtifactLocation,S3Location,SourceRevision,StageContext,StageDeclaration,StageExecution,StageState,Tag,ThirdPartyJob,ThirdPartyJobData,ThirdPartyJobDetails,TransitionState,WebhookAuthConfiguration,WebhookDefinition,WebhookFilterRule

## Unions

* [ActionCategory](#ActionCategory)
* [ActionConfigurationPropertyType](#ActionConfigurationPropertyType)
* [ActionExecutionStatus](#ActionExecutionStatus)
* [ActionOwner](#ActionOwner)
* [ApprovalStatus](#ApprovalStatus)
* [ArtifactLocationType](#ArtifactLocationType)
* [ArtifactStoreType](#ArtifactStoreType)
* [BlockerType](#BlockerType)
* [EncryptionKeyType](#EncryptionKeyType)
* [FailureType](#FailureType)
* [JobStatus](#JobStatus)
* [PipelineExecutionStatus](#PipelineExecutionStatus)
* [StageExecutionStatus](#StageExecutionStatus)
* [StageRetryMode](#StageRetryMode)
* [StageTransitionType](#StageTransitionType)
* [WebhookAuthenticationType](#WebhookAuthenticationType)


@docs ActionCategory,ActionConfigurationPropertyType,ActionExecutionStatus,ActionOwner,ApprovalStatus,ArtifactLocationType,ArtifactStoreType,BlockerType,EncryptionKeyType,FailureType,JobStatus,PipelineExecutionStatus,StageExecutionStatus,StageRetryMode,StageTransitionType,WebhookAuthenticationType

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
        "codepipeline"
        "2015-07-09"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "CodePipeline_20150709")



-- OPERATIONS

{-| <p>Returns information about a specified job and whether that job has been received by the job worker. Only used for custom actions.</p>

__Required Parameters__

* `jobId` __:__ `String`
* `nonce` __:__ `String`


-}

acknowledgeJob :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AcknowledgeJobOutput)

acknowledgeJob jobId nonce =
    
    let
        requestInput = AcknowledgeJobInput
            
            jobId
            
            nonce
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> acknowledgeJobInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AcknowledgeJob"
                
                (AWS.Core.Decode.ResultDecoder "AcknowledgeJobOutput" acknowledgeJobOutputDecoder)
                
            )





{-| <p>Confirms a job worker has received the specified job. Only used for partner actions.</p>

__Required Parameters__

* `jobId` __:__ `String`
* `nonce` __:__ `String`
* `clientToken` __:__ `String`


-}

acknowledgeThirdPartyJob :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AcknowledgeThirdPartyJobOutput)

acknowledgeThirdPartyJob jobId nonce clientToken =
    
    let
        requestInput = AcknowledgeThirdPartyJobInput
            
            jobId
            
            nonce
            
            clientToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> acknowledgeThirdPartyJobInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AcknowledgeThirdPartyJob"
                
                (AWS.Core.Decode.ResultDecoder "AcknowledgeThirdPartyJobOutput" acknowledgeThirdPartyJobOutputDecoder)
                
            )





{-| <p>Creates a new custom action that can be used in all pipelines associated with the AWS account. Only used for custom actions.</p>

__Required Parameters__

* `category` __:__ `ActionCategory`
* `provider` __:__ `String`
* `version` __:__ `String`
* `inputArtifactDetails` __:__ `ArtifactDetails`
* `outputArtifactDetails` __:__ `ArtifactDetails`


-}

createCustomActionType :
  
    ActionCategory ->
  
    String ->
  
    String ->
  
    ArtifactDetails ->
  
    ArtifactDetails ->
  
  
    ( CreateCustomActionTypeOptions -> CreateCustomActionTypeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateCustomActionTypeOutput)

createCustomActionType category provider version inputArtifactDetails outputArtifactDetails setOptions =
    
    let
        requestInput = CreateCustomActionTypeInput
            
            category
            
            provider
            
            version
            
            options.settings
            
            options.configurationProperties
            
            inputArtifactDetails
            
            outputArtifactDetails
            
            options.tags
            
        
        options = setOptions (CreateCustomActionTypeOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createCustomActionTypeInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateCustomActionType"
                
                (AWS.Core.Decode.ResultDecoder "CreateCustomActionTypeOutput" createCustomActionTypeOutputDecoder)
                
            )



{-| Options for a createCustomActionType request
-}
type alias CreateCustomActionTypeOptions =
    {
    settings : Maybe ActionTypeSettings,configurationProperties : Maybe (List ActionConfigurationProperty),tags : Maybe (List Tag)
    }



{-| <p>Creates a pipeline.</p>

__Required Parameters__

* `pipeline` __:__ `PipelineDeclaration`


-}

createPipeline :
  
    PipelineDeclaration ->
  
  
    ( CreatePipelineOptions -> CreatePipelineOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreatePipelineOutput)

createPipeline pipeline setOptions =
    
    let
        requestInput = CreatePipelineInput
            
            pipeline
            
            options.tags
            
        
        options = setOptions (CreatePipelineOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createPipelineInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreatePipeline"
                
                (AWS.Core.Decode.ResultDecoder "CreatePipelineOutput" createPipelineOutputDecoder)
                
            )



{-| Options for a createPipeline request
-}
type alias CreatePipelineOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Marks a custom action as deleted. <code>PollForJobs</code> for the custom action will fail after the action is marked for deletion. Only used for custom actions.</p> <important> <p>To re-create a custom action after it has been deleted you must use a string in the version field that has never been used before. This string can be an incremented version number, for example. To restore a deleted custom action, use a JSON file that is identical to the deleted action, including the original string in the version field.</p> </important>

__Required Parameters__

* `category` __:__ `ActionCategory`
* `provider` __:__ `String`
* `version` __:__ `String`


-}

deleteCustomActionType :
  
    ActionCategory ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteCustomActionType category provider version =
    
    let
        requestInput = DeleteCustomActionTypeInput
            
            category
            
            provider
            
            version
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteCustomActionTypeInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteCustomActionType"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes the specified pipeline.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deletePipeline :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deletePipeline name =
    
    let
        requestInput = DeletePipelineInput
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deletePipelineInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeletePipeline"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a previously created webhook by name. Deleting the webhook stops AWS CodePipeline from starting a pipeline every time an external event occurs. The API will return successfully when trying to delete a webhook that is already deleted. If a deleted webhook is re-created by calling PutWebhook with the same name, it will have a different URL.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deleteWebhook :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteWebhookOutput)

deleteWebhook name =
    
    let
        requestInput = DeleteWebhookInput
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteWebhookInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteWebhook"
                
                (AWS.Core.Decode.ResultDecoder "DeleteWebhookOutput" deleteWebhookOutputDecoder)
                
            )





{-| <p>Removes the connection between the webhook that was created by CodePipeline and the external tool with events to be detected. Currently only supported for webhooks that target an action type of GitHub.</p>

__Required Parameters__



-}

deregisterWebhookWithThirdParty :
  
  
    ( DeregisterWebhookWithThirdPartyOptions -> DeregisterWebhookWithThirdPartyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeregisterWebhookWithThirdPartyOutput)

deregisterWebhookWithThirdParty setOptions =
    
    let
        requestInput = DeregisterWebhookWithThirdPartyInput
            
            options.webhookName
            
        
        options = setOptions (DeregisterWebhookWithThirdPartyOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deregisterWebhookWithThirdPartyInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeregisterWebhookWithThirdParty"
                
                (AWS.Core.Decode.ResultDecoder "DeregisterWebhookWithThirdPartyOutput" deregisterWebhookWithThirdPartyOutputDecoder)
                
            )



{-| Options for a deregisterWebhookWithThirdParty request
-}
type alias DeregisterWebhookWithThirdPartyOptions =
    {
    webhookName : Maybe String
    }



{-| <p>Prevents artifacts in a pipeline from transitioning to the next stage in the pipeline.</p>

__Required Parameters__

* `pipelineName` __:__ `String`
* `stageName` __:__ `String`
* `transitionType` __:__ `StageTransitionType`
* `reason` __:__ `String`


-}

disableStageTransition :
  
    String ->
  
    String ->
  
    StageTransitionType ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

disableStageTransition pipelineName stageName transitionType reason =
    
    let
        requestInput = DisableStageTransitionInput
            
            pipelineName
            
            stageName
            
            transitionType
            
            reason
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disableStageTransitionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisableStageTransition"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Enables artifacts in a pipeline to transition to a stage in a pipeline.</p>

__Required Parameters__

* `pipelineName` __:__ `String`
* `stageName` __:__ `String`
* `transitionType` __:__ `StageTransitionType`


-}

enableStageTransition :
  
    String ->
  
    String ->
  
    StageTransitionType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

enableStageTransition pipelineName stageName transitionType =
    
    let
        requestInput = EnableStageTransitionInput
            
            pipelineName
            
            stageName
            
            transitionType
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> enableStageTransitionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "EnableStageTransition"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Returns information about a job. Only used for custom actions.</p> <important> <p>When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action.</p> </important>

__Required Parameters__

* `jobId` __:__ `String`


-}

getJobDetails :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetJobDetailsOutput)

getJobDetails jobId =
    
    let
        requestInput = GetJobDetailsInput
            
            jobId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getJobDetailsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetJobDetails"
                
                (AWS.Core.Decode.ResultDecoder "GetJobDetailsOutput" getJobDetailsOutputDecoder)
                
            )





{-| <p>Returns the metadata, structure, stages, and actions of a pipeline. Can be used to return the entire structure of a pipeline in JSON format, which can then be modified and used to update the pipeline structure with <a>UpdatePipeline</a>.</p>

__Required Parameters__

* `name` __:__ `String`


-}

getPipeline :
  
    String ->
  
  
    ( GetPipelineOptions -> GetPipelineOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetPipelineOutput)

getPipeline name setOptions =
    
    let
        requestInput = GetPipelineInput
            
            name
            
            options.version
            
        
        options = setOptions (GetPipelineOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getPipelineInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetPipeline"
                
                (AWS.Core.Decode.ResultDecoder "GetPipelineOutput" getPipelineOutputDecoder)
                
            )



{-| Options for a getPipeline request
-}
type alias GetPipelineOptions =
    {
    version : Maybe Int
    }



{-| <p>Returns information about an execution of a pipeline, including details about artifacts, the pipeline execution ID, and the name, version, and status of the pipeline.</p>

__Required Parameters__

* `pipelineName` __:__ `String`
* `pipelineExecutionId` __:__ `String`


-}

getPipelineExecution :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetPipelineExecutionOutput)

getPipelineExecution pipelineName pipelineExecutionId =
    
    let
        requestInput = GetPipelineExecutionInput
            
            pipelineName
            
            pipelineExecutionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getPipelineExecutionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetPipelineExecution"
                
                (AWS.Core.Decode.ResultDecoder "GetPipelineExecutionOutput" getPipelineExecutionOutputDecoder)
                
            )





{-| <p>Returns information about the state of a pipeline, including the stages and actions.</p> <note> <p>Values returned in the <code>revisionId</code> and <code>revisionUrl</code> fields indicate the source revision information, such as the commit ID, for the current state.</p> </note>

__Required Parameters__

* `name` __:__ `String`


-}

getPipelineState :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetPipelineStateOutput)

getPipelineState name =
    
    let
        requestInput = GetPipelineStateInput
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getPipelineStateInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetPipelineState"
                
                (AWS.Core.Decode.ResultDecoder "GetPipelineStateOutput" getPipelineStateOutputDecoder)
                
            )





{-| <p>Requests the details of a job for a third party action. Only used for partner actions.</p> <important> <p>When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action.</p> </important>

__Required Parameters__

* `jobId` __:__ `String`
* `clientToken` __:__ `String`


-}

getThirdPartyJobDetails :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetThirdPartyJobDetailsOutput)

getThirdPartyJobDetails jobId clientToken =
    
    let
        requestInput = GetThirdPartyJobDetailsInput
            
            jobId
            
            clientToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getThirdPartyJobDetailsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetThirdPartyJobDetails"
                
                (AWS.Core.Decode.ResultDecoder "GetThirdPartyJobDetailsOutput" getThirdPartyJobDetailsOutputDecoder)
                
            )





{-| <p>Lists the action executions that have occurred in a pipeline.</p>

__Required Parameters__

* `pipelineName` __:__ `String`


-}

listActionExecutions :
  
    String ->
  
  
    ( ListActionExecutionsOptions -> ListActionExecutionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListActionExecutionsOutput)

listActionExecutions pipelineName setOptions =
    
    let
        requestInput = ListActionExecutionsInput
            
            pipelineName
            
            options.filter
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListActionExecutionsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listActionExecutionsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListActionExecutions"
                
                (AWS.Core.Decode.ResultDecoder "ListActionExecutionsOutput" listActionExecutionsOutputDecoder)
                
            )



{-| Options for a listActionExecutions request
-}
type alias ListActionExecutionsOptions =
    {
    filter : Maybe ActionExecutionFilter,maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Gets a summary of all AWS CodePipeline action types associated with your account.</p>

__Required Parameters__



-}

listActionTypes :
  
  
    ( ListActionTypesOptions -> ListActionTypesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListActionTypesOutput)

listActionTypes setOptions =
    
    let
        requestInput = ListActionTypesInput
            
            options.actionOwnerFilter
            
            options.nextToken
            
        
        options = setOptions (ListActionTypesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listActionTypesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListActionTypes"
                
                (AWS.Core.Decode.ResultDecoder "ListActionTypesOutput" listActionTypesOutputDecoder)
                
            )



{-| Options for a listActionTypes request
-}
type alias ListActionTypesOptions =
    {
    actionOwnerFilter : Maybe ActionOwner,nextToken : Maybe String
    }



{-| <p>Gets a summary of the most recent executions for a pipeline.</p>

__Required Parameters__

* `pipelineName` __:__ `String`


-}

listPipelineExecutions :
  
    String ->
  
  
    ( ListPipelineExecutionsOptions -> ListPipelineExecutionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPipelineExecutionsOutput)

listPipelineExecutions pipelineName setOptions =
    
    let
        requestInput = ListPipelineExecutionsInput
            
            pipelineName
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListPipelineExecutionsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listPipelineExecutionsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListPipelineExecutions"
                
                (AWS.Core.Decode.ResultDecoder "ListPipelineExecutionsOutput" listPipelineExecutionsOutputDecoder)
                
            )



{-| Options for a listPipelineExecutions request
-}
type alias ListPipelineExecutionsOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Gets a summary of all of the pipelines associated with your account.</p>

__Required Parameters__



-}

listPipelines :
  
  
    ( ListPipelinesOptions -> ListPipelinesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPipelinesOutput)

listPipelines setOptions =
    
    let
        requestInput = ListPipelinesInput
            
            options.nextToken
            
        
        options = setOptions (ListPipelinesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listPipelinesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListPipelines"
                
                (AWS.Core.Decode.ResultDecoder "ListPipelinesOutput" listPipelinesOutputDecoder)
                
            )



{-| Options for a listPipelines request
-}
type alias ListPipelinesOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Gets the set of key/value pairs (metadata) that are used to manage the resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

listTagsForResource :
  
    String ->
  
  
    ( ListTagsForResourceOptions -> ListTagsForResourceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceOutput)

listTagsForResource resourceArn setOptions =
    
    let
        requestInput = ListTagsForResourceInput
            
            resourceArn
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListTagsForResourceOptions Nothing Nothing)
        
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
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Gets a listing of all the webhooks in this region for this account. The output lists all webhooks and includes the webhook URL and ARN, as well the configuration for each webhook.</p>

__Required Parameters__



-}

listWebhooks :
  
  
    ( ListWebhooksOptions -> ListWebhooksOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListWebhooksOutput)

listWebhooks setOptions =
    
    let
        requestInput = ListWebhooksInput
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListWebhooksOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listWebhooksInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListWebhooks"
                
                (AWS.Core.Decode.ResultDecoder "ListWebhooksOutput" listWebhooksOutputDecoder)
                
            )



{-| Options for a listWebhooks request
-}
type alias ListWebhooksOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Returns information about any jobs for AWS CodePipeline to act upon. <code>PollForJobs</code> is only valid for action types with "Custom" in the owner field. If the action type contains "AWS" or "ThirdParty" in the owner field, the <code>PollForJobs</code> action returns an error.</p> <important> <p>When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action.</p> </important>

__Required Parameters__

* `actionTypeId` __:__ `ActionTypeId`


-}

pollForJobs :
  
    ActionTypeId ->
  
  
    ( PollForJobsOptions -> PollForJobsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PollForJobsOutput)

pollForJobs actionTypeId setOptions =
    
    let
        requestInput = PollForJobsInput
            
            actionTypeId
            
            options.maxBatchSize
            
            options.queryParam
            
        
        options = setOptions (PollForJobsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> pollForJobsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PollForJobs"
                
                (AWS.Core.Decode.ResultDecoder "PollForJobsOutput" pollForJobsOutputDecoder)
                
            )



{-| Options for a pollForJobs request
-}
type alias PollForJobsOptions =
    {
    maxBatchSize : Maybe Int,queryParam : Maybe (Dict String String)
    }



{-| <p>Determines whether there are any third party jobs for a job worker to act on. Only used for partner actions.</p> <important> <p>When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts.</p> </important>

__Required Parameters__

* `actionTypeId` __:__ `ActionTypeId`


-}

pollForThirdPartyJobs :
  
    ActionTypeId ->
  
  
    ( PollForThirdPartyJobsOptions -> PollForThirdPartyJobsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PollForThirdPartyJobsOutput)

pollForThirdPartyJobs actionTypeId setOptions =
    
    let
        requestInput = PollForThirdPartyJobsInput
            
            actionTypeId
            
            options.maxBatchSize
            
        
        options = setOptions (PollForThirdPartyJobsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> pollForThirdPartyJobsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PollForThirdPartyJobs"
                
                (AWS.Core.Decode.ResultDecoder "PollForThirdPartyJobsOutput" pollForThirdPartyJobsOutputDecoder)
                
            )



{-| Options for a pollForThirdPartyJobs request
-}
type alias PollForThirdPartyJobsOptions =
    {
    maxBatchSize : Maybe Int
    }



{-| <p>Provides information to AWS CodePipeline about new revisions to a source.</p>

__Required Parameters__

* `pipelineName` __:__ `String`
* `stageName` __:__ `String`
* `actionName` __:__ `String`
* `actionRevision` __:__ `ActionRevision`


-}

putActionRevision :
  
    String ->
  
    String ->
  
    String ->
  
    ActionRevision ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutActionRevisionOutput)

putActionRevision pipelineName stageName actionName actionRevision =
    
    let
        requestInput = PutActionRevisionInput
            
            pipelineName
            
            stageName
            
            actionName
            
            actionRevision
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putActionRevisionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutActionRevision"
                
                (AWS.Core.Decode.ResultDecoder "PutActionRevisionOutput" putActionRevisionOutputDecoder)
                
            )





{-| <p>Provides the response to a manual approval request to AWS CodePipeline. Valid responses include Approved and Rejected.</p>

__Required Parameters__

* `pipelineName` __:__ `String`
* `stageName` __:__ `String`
* `actionName` __:__ `String`
* `result` __:__ `ApprovalResult`
* `token` __:__ `String`


-}

putApprovalResult :
  
    String ->
  
    String ->
  
    String ->
  
    ApprovalResult ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutApprovalResultOutput)

putApprovalResult pipelineName stageName actionName result token =
    
    let
        requestInput = PutApprovalResultInput
            
            pipelineName
            
            stageName
            
            actionName
            
            result
            
            token
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putApprovalResultInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutApprovalResult"
                
                (AWS.Core.Decode.ResultDecoder "PutApprovalResultOutput" putApprovalResultOutputDecoder)
                
            )





{-| <p>Represents the failure of a job as returned to the pipeline by a job worker. Only used for custom actions.</p>

__Required Parameters__

* `jobId` __:__ `String`
* `failureDetails` __:__ `FailureDetails`


-}

putJobFailureResult :
  
    String ->
  
    FailureDetails ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

putJobFailureResult jobId failureDetails =
    
    let
        requestInput = PutJobFailureResultInput
            
            jobId
            
            failureDetails
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putJobFailureResultInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutJobFailureResult"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Represents the success of a job as returned to the pipeline by a job worker. Only used for custom actions.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}

putJobSuccessResult :
  
    String ->
  
  
    ( PutJobSuccessResultOptions -> PutJobSuccessResultOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

putJobSuccessResult jobId setOptions =
    
    let
        requestInput = PutJobSuccessResultInput
            
            jobId
            
            options.currentRevision
            
            options.continuationToken
            
            options.executionDetails
            
        
        options = setOptions (PutJobSuccessResultOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putJobSuccessResultInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutJobSuccessResult"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a putJobSuccessResult request
-}
type alias PutJobSuccessResultOptions =
    {
    currentRevision : Maybe CurrentRevision,continuationToken : Maybe String,executionDetails : Maybe ExecutionDetails
    }



{-| <p>Represents the failure of a third party job as returned to the pipeline by a job worker. Only used for partner actions.</p>

__Required Parameters__

* `jobId` __:__ `String`
* `clientToken` __:__ `String`
* `failureDetails` __:__ `FailureDetails`


-}

putThirdPartyJobFailureResult :
  
    String ->
  
    String ->
  
    FailureDetails ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

putThirdPartyJobFailureResult jobId clientToken failureDetails =
    
    let
        requestInput = PutThirdPartyJobFailureResultInput
            
            jobId
            
            clientToken
            
            failureDetails
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putThirdPartyJobFailureResultInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutThirdPartyJobFailureResult"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Represents the success of a third party job as returned to the pipeline by a job worker. Only used for partner actions.</p>

__Required Parameters__

* `jobId` __:__ `String`
* `clientToken` __:__ `String`


-}

putThirdPartyJobSuccessResult :
  
    String ->
  
    String ->
  
  
    ( PutThirdPartyJobSuccessResultOptions -> PutThirdPartyJobSuccessResultOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

putThirdPartyJobSuccessResult jobId clientToken setOptions =
    
    let
        requestInput = PutThirdPartyJobSuccessResultInput
            
            jobId
            
            clientToken
            
            options.currentRevision
            
            options.continuationToken
            
            options.executionDetails
            
        
        options = setOptions (PutThirdPartyJobSuccessResultOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putThirdPartyJobSuccessResultInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutThirdPartyJobSuccessResult"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a putThirdPartyJobSuccessResult request
-}
type alias PutThirdPartyJobSuccessResultOptions =
    {
    currentRevision : Maybe CurrentRevision,continuationToken : Maybe String,executionDetails : Maybe ExecutionDetails
    }



{-| <p>Defines a webhook and returns a unique webhook URL generated by CodePipeline. This URL can be supplied to third party source hosting providers to call every time there's a code change. When CodePipeline receives a POST request on this URL, the pipeline defined in the webhook is started as long as the POST request satisfied the authentication and filtering requirements supplied when defining the webhook. RegisterWebhookWithThirdParty and DeregisterWebhookWithThirdParty APIs can be used to automatically configure supported third parties to call the generated webhook URL.</p>

__Required Parameters__

* `webhook` __:__ `WebhookDefinition`


-}

putWebhook :
  
    WebhookDefinition ->
  
  
    ( PutWebhookOptions -> PutWebhookOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutWebhookOutput)

putWebhook webhook setOptions =
    
    let
        requestInput = PutWebhookInput
            
            webhook
            
            options.tags
            
        
        options = setOptions (PutWebhookOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putWebhookInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutWebhook"
                
                (AWS.Core.Decode.ResultDecoder "PutWebhookOutput" putWebhookOutputDecoder)
                
            )



{-| Options for a putWebhook request
-}
type alias PutWebhookOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Configures a connection between the webhook that was created and the external tool with events to be detected.</p>

__Required Parameters__



-}

registerWebhookWithThirdParty :
  
  
    ( RegisterWebhookWithThirdPartyOptions -> RegisterWebhookWithThirdPartyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RegisterWebhookWithThirdPartyOutput)

registerWebhookWithThirdParty setOptions =
    
    let
        requestInput = RegisterWebhookWithThirdPartyInput
            
            options.webhookName
            
        
        options = setOptions (RegisterWebhookWithThirdPartyOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> registerWebhookWithThirdPartyInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RegisterWebhookWithThirdParty"
                
                (AWS.Core.Decode.ResultDecoder "RegisterWebhookWithThirdPartyOutput" registerWebhookWithThirdPartyOutputDecoder)
                
            )



{-| Options for a registerWebhookWithThirdParty request
-}
type alias RegisterWebhookWithThirdPartyOptions =
    {
    webhookName : Maybe String
    }



{-| <p>Resumes the pipeline execution by retrying the last failed actions in a stage.</p>

__Required Parameters__

* `pipelineName` __:__ `String`
* `stageName` __:__ `String`
* `pipelineExecutionId` __:__ `String`
* `retryMode` __:__ `StageRetryMode`


-}

retryStageExecution :
  
    String ->
  
    String ->
  
    String ->
  
    StageRetryMode ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RetryStageExecutionOutput)

retryStageExecution pipelineName stageName pipelineExecutionId retryMode =
    
    let
        requestInput = RetryStageExecutionInput
            
            pipelineName
            
            stageName
            
            pipelineExecutionId
            
            retryMode
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> retryStageExecutionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RetryStageExecution"
                
                (AWS.Core.Decode.ResultDecoder "RetryStageExecutionOutput" retryStageExecutionOutputDecoder)
                
            )





{-| <p>Starts the specified pipeline. Specifically, it begins processing the latest commit to the source location specified as part of the pipeline.</p>

__Required Parameters__

* `name` __:__ `String`


-}

startPipelineExecution :
  
    String ->
  
  
    ( StartPipelineExecutionOptions -> StartPipelineExecutionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartPipelineExecutionOutput)

startPipelineExecution name setOptions =
    
    let
        requestInput = StartPipelineExecutionInput
            
            name
            
            options.clientRequestToken
            
        
        options = setOptions (StartPipelineExecutionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startPipelineExecutionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartPipelineExecution"
                
                (AWS.Core.Decode.ResultDecoder "StartPipelineExecutionOutput" startPipelineExecutionOutputDecoder)
                
            )



{-| Options for a startPipelineExecution request
-}
type alias StartPipelineExecutionOptions =
    {
    clientRequestToken : Maybe String
    }



{-| <p>Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource. </p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

tagResource :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceOutput)

tagResource resourceArn tags =
    
    let
        requestInput = TagResourceInput
            
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





{-| <p>Removes tags from an AWS resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

untagResource :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceOutput)

untagResource resourceArn tagKeys =
    
    let
        requestInput = UntagResourceInput
            
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





{-| <p>Updates a specified pipeline with edits or changes to its structure. Use a JSON file with the pipeline structure in conjunction with <code>UpdatePipeline</code> to provide the full structure of the pipeline. Updating the pipeline increases the version number of the pipeline by 1.</p>

__Required Parameters__

* `pipeline` __:__ `PipelineDeclaration`


-}

updatePipeline :
  
    PipelineDeclaration ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdatePipelineOutput)

updatePipeline pipeline =
    
    let
        requestInput = UpdatePipelineInput
            
            pipeline
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updatePipelineInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdatePipeline"
                
                (AWS.Core.Decode.ResultDecoder "UpdatePipelineOutput" updatePipelineOutputDecoder)
                
            )






{-| <p>Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the Amazon S3 bucket used to store artifact for the pipeline in AWS CodePipeline.</p>
-}
type alias AWSSessionCredentials =
    { accessKeyId : String
    , secretAccessKey : String
    , sessionToken : String
    }



aWSSessionCredentialsDecoder : JD.Decoder AWSSessionCredentials
aWSSessionCredentialsDecoder =
    JD.succeed AWSSessionCredentials
        
        |> JDP.custom (AWS.Core.Decode.required
            ["accessKeyId", "AccessKeyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["secretAccessKey", "SecretAccessKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["sessionToken", "SessionToken"]
            JD.string
        )
        




aWSSessionCredentialsToString : AWSSessionCredentials -> String -- List (String, String)
aWSSessionCredentialsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accessKeyId" "" -- val.accessKeyId
        
    --     |> Dict.insert
    --         "secretAccessKey" "" -- val.secretAccessKey
        
    --     |> Dict.insert
    --         "sessionToken" "" -- val.sessionToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from acknowledgeJ
-}
type alias AcknowledgeJobOutput =
    { status : Maybe JobStatus
    }



acknowledgeJobOutputDecoder : JD.Decoder AcknowledgeJobOutput
acknowledgeJobOutputDecoder =
    JD.succeed AcknowledgeJobOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            jobStatusDecoder
        )
        




acknowledgeJobOutputToString : AcknowledgeJobOutput -> String -- List (String, String)
acknowledgeJobOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from acknowledgeThirdPartyJ
-}
type alias AcknowledgeThirdPartyJobOutput =
    { status : Maybe JobStatus
    }



acknowledgeThirdPartyJobOutputDecoder : JD.Decoder AcknowledgeThirdPartyJobOutput
acknowledgeThirdPartyJobOutputDecoder =
    JD.succeed AcknowledgeThirdPartyJobOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            jobStatusDecoder
        )
        




acknowledgeThirdPartyJobOutputToString : AcknowledgeThirdPartyJobOutput -> String -- List (String, String)
acknowledgeThirdPartyJobOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| One of

* `ActionCategory_Source`
* `ActionCategory_Build`
* `ActionCategory_Deploy`
* `ActionCategory_Test`
* `ActionCategory_Invoke`
* `ActionCategory_Approval`

-}
type ActionCategory
    = ActionCategory_Source
    | ActionCategory_Build
    | ActionCategory_Deploy
    | ActionCategory_Test
    | ActionCategory_Invoke
    | ActionCategory_Approval



actionCategoryDecoder : JD.Decoder ActionCategory
actionCategoryDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Source" ->
                        JD.succeed ActionCategory_Source

                    "Build" ->
                        JD.succeed ActionCategory_Build

                    "Deploy" ->
                        JD.succeed ActionCategory_Deploy

                    "Test" ->
                        JD.succeed ActionCategory_Test

                    "Invoke" ->
                        JD.succeed ActionCategory_Invoke

                    "Approval" ->
                        JD.succeed ActionCategory_Approval


                    _ ->
                        JD.fail "bad thing"
            )




actionCategoryToString : ActionCategory -> String
actionCategoryToString val =
    case val of
        ActionCategory_Source ->
            "Source"

        ActionCategory_Build ->
            "Build"

        ActionCategory_Deploy ->
            "Deploy"

        ActionCategory_Test ->
            "Test"

        ActionCategory_Invoke ->
            "Invoke"

        ActionCategory_Approval ->
            "Approval"




{-| <p>Represents information about an action configuration.</p>
-}
type alias ActionConfiguration =
    { configuration : Maybe (Dict String String)
    }



actionConfigurationDecoder : JD.Decoder ActionConfiguration
actionConfigurationDecoder =
    JD.succeed ActionConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["configuration", "Configuration"]
            (AWS.Core.Decode.dict JD.string)
        )
        




actionConfigurationToString : ActionConfiguration -> String -- List (String, String)
actionConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "configuration" "" -- val.configuration
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about an action configuration property.</p>
-}
type alias ActionConfigurationProperty =
    { name : String
    , required : Bool
    , key : Bool
    , secret : Bool
    , queryable : Maybe Bool
    , description : Maybe String
    , type_ : Maybe ActionConfigurationPropertyType
    }



actionConfigurationPropertyDecoder : JD.Decoder ActionConfigurationProperty
actionConfigurationPropertyDecoder =
    JD.succeed ActionConfigurationProperty
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["required", "Required"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["key", "Key"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["secret", "Secret"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["queryable", "Queryable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            actionConfigurationPropertyTypeDecoder
        )
        




actionConfigurationPropertyToString : ActionConfigurationProperty -> String -- List (String, String)
actionConfigurationPropertyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "required" "" -- val.required
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "secret" "" -- val.secret
        
    --     |> Dict.insert
    --         "queryable" "" -- val.queryable
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.toList
    ""



{-| One of

* `ActionConfigurationPropertyType_String`
* `ActionConfigurationPropertyType_Number`
* `ActionConfigurationPropertyType_Boolean`

-}
type ActionConfigurationPropertyType
    = ActionConfigurationPropertyType_String
    | ActionConfigurationPropertyType_Number
    | ActionConfigurationPropertyType_Boolean



actionConfigurationPropertyTypeDecoder : JD.Decoder ActionConfigurationPropertyType
actionConfigurationPropertyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "String" ->
                        JD.succeed ActionConfigurationPropertyType_String

                    "Number" ->
                        JD.succeed ActionConfigurationPropertyType_Number

                    "Boolean" ->
                        JD.succeed ActionConfigurationPropertyType_Boolean


                    _ ->
                        JD.fail "bad thing"
            )




actionConfigurationPropertyTypeToString : ActionConfigurationPropertyType -> String
actionConfigurationPropertyTypeToString val =
    case val of
        ActionConfigurationPropertyType_String ->
            "String"

        ActionConfigurationPropertyType_Number ->
            "Number"

        ActionConfigurationPropertyType_Boolean ->
            "Boolean"




{-| <p>Represents the context of an action within the stage of a pipeline to a job worker.</p>
-}
type alias ActionContext =
    { name : Maybe String
    , actionExecutionId : Maybe String
    }



actionContextDecoder : JD.Decoder ActionContext
actionContextDecoder =
    JD.succeed ActionContext
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["actionExecutionId", "ActionExecutionId"]
            JD.string
        )
        




actionContextToString : ActionContext -> String -- List (String, String)
actionContextToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "actionExecutionId" "" -- val.actionExecutionId
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about an action declaration.</p>
-}
type alias ActionDeclaration =
    { name : String
    , actionTypeId : ActionTypeId
    , runOrder : Maybe Int
    , configuration : Maybe (Dict String String)
    , outputArtifacts : Maybe (List OutputArtifact)
    , inputArtifacts : Maybe (List InputArtifact)
    , roleArn : Maybe String
    , region : Maybe String
    }



actionDeclarationDecoder : JD.Decoder ActionDeclaration
actionDeclarationDecoder =
    JD.succeed ActionDeclaration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["actionTypeId", "ActionTypeId"]
            actionTypeIdDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["runOrder", "RunOrder"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["configuration", "Configuration"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["outputArtifacts", "OutputArtifacts"]
            (JD.list outputArtifactDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["inputArtifacts", "InputArtifacts"]
            (JD.list inputArtifactDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["roleArn", "RoleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["region", "Region"]
            JD.string
        )
        




actionDeclarationToString : ActionDeclaration -> String -- List (String, String)
actionDeclarationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "actionTypeId" "" -- val.actionTypeId
        
    --     |> Dict.insert
    --         "runOrder" "" -- val.runOrder
        
    --     |> Dict.insert
    --         "configuration" "" -- val.configuration
        
    --     |> Dict.insert
    --         "outputArtifacts" "" -- val.outputArtifacts
        
    --     |> Dict.insert
    --         "inputArtifacts" "" -- val.inputArtifacts
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about the run of an action.</p>
-}
type alias ActionExecution =
    { status : Maybe ActionExecutionStatus
    , summary : Maybe String
    , lastStatusChange : Maybe Posix
    , token : Maybe String
    , lastUpdatedBy : Maybe String
    , externalExecutionId : Maybe String
    , externalExecutionUrl : Maybe String
    , percentComplete : Maybe Int
    , errorDetails : Maybe ErrorDetails
    }



actionExecutionDecoder : JD.Decoder ActionExecution
actionExecutionDecoder =
    JD.succeed ActionExecution
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            actionExecutionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["summary", "Summary"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastStatusChange", "LastStatusChange"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["token", "Token"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastUpdatedBy", "LastUpdatedBy"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["externalExecutionId", "ExternalExecutionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["externalExecutionUrl", "ExternalExecutionUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["percentComplete", "PercentComplete"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errorDetails", "ErrorDetails"]
            errorDetailsDecoder
        )
        




actionExecutionToString : ActionExecution -> String -- List (String, String)
actionExecutionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "summary" "" -- val.summary
        
    --     |> Dict.insert
    --         "lastStatusChange" "" -- val.lastStatusChange
        
    --     |> Dict.insert
    --         "token" "" -- val.token
        
    --     |> Dict.insert
    --         "lastUpdatedBy" "" -- val.lastUpdatedBy
        
    --     |> Dict.insert
    --         "externalExecutionId" "" -- val.externalExecutionId
        
    --     |> Dict.insert
    --         "externalExecutionUrl" "" -- val.externalExecutionUrl
        
    --     |> Dict.insert
    --         "percentComplete" "" -- val.percentComplete
        
    --     |> Dict.insert
    --         "errorDetails" "" -- val.errorDetails
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about an execution of an action, including the action execution ID, and the name, version, and timing of the action. </p>
-}
type alias ActionExecutionDetail =
    { pipelineExecutionId : Maybe String
    , actionExecutionId : Maybe String
    , pipelineVersion : Maybe Int
    , stageName : Maybe String
    , actionName : Maybe String
    , startTime : Maybe Posix
    , lastUpdateTime : Maybe Posix
    , status : Maybe ActionExecutionStatus
    , input : Maybe ActionExecutionInput
    , output : Maybe ActionExecutionOutput
    }



actionExecutionDetailDecoder : JD.Decoder ActionExecutionDetail
actionExecutionDetailDecoder =
    JD.succeed ActionExecutionDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineExecutionId", "PipelineExecutionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["actionExecutionId", "ActionExecutionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineVersion", "PipelineVersion"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stageName", "StageName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["actionName", "ActionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["startTime", "StartTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastUpdateTime", "LastUpdateTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            actionExecutionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["input", "Input"]
            actionExecutionInputDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["output", "Output"]
            actionExecutionOutputDecoder
        )
        




actionExecutionDetailToString : ActionExecutionDetail -> String -- List (String, String)
actionExecutionDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineExecutionId" "" -- val.pipelineExecutionId
        
    --     |> Dict.insert
    --         "actionExecutionId" "" -- val.actionExecutionId
        
    --     |> Dict.insert
    --         "pipelineVersion" "" -- val.pipelineVersion
        
    --     |> Dict.insert
    --         "stageName" "" -- val.stageName
        
    --     |> Dict.insert
    --         "actionName" "" -- val.actionName
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "lastUpdateTime" "" -- val.lastUpdateTime
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "input" "" -- val.input
        
    --     |> Dict.insert
    --         "output" "" -- val.output
        
    --     |> Dict.toList
    ""



{-| <p>Filter values for the action execution.</p>
-}
type alias ActionExecutionFilter =
    { pipelineExecutionId : Maybe String
    }



actionExecutionFilterDecoder : JD.Decoder ActionExecutionFilter
actionExecutionFilterDecoder =
    JD.succeed ActionExecutionFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineExecutionId", "PipelineExecutionId"]
            JD.string
        )
        




actionExecutionFilterToString : ActionExecutionFilter -> String -- List (String, String)
actionExecutionFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineExecutionId" "" -- val.pipelineExecutionId
        
    --     |> Dict.toList
    ""



{-| <p>Input information used for an action execution.</p>
-}
type alias ActionExecutionInput =
    { actionTypeId : Maybe ActionTypeId
    , configuration : Maybe (Dict String String)
    , roleArn : Maybe String
    , region : Maybe String
    , inputArtifacts : Maybe (List ArtifactDetail)
    }



actionExecutionInputDecoder : JD.Decoder ActionExecutionInput
actionExecutionInputDecoder =
    JD.succeed ActionExecutionInput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["actionTypeId", "ActionTypeId"]
            actionTypeIdDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["configuration", "Configuration"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["roleArn", "RoleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["region", "Region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["inputArtifacts", "InputArtifacts"]
            (JD.list artifactDetailDecoder)
        )
        




actionExecutionInputToString : ActionExecutionInput -> String -- List (String, String)
actionExecutionInputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "actionTypeId" "" -- val.actionTypeId
        
    --     |> Dict.insert
    --         "configuration" "" -- val.configuration
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "inputArtifacts" "" -- val.inputArtifacts
        
    --     |> Dict.toList
    ""



{-| <p>Output details listed for an action execution, such as the action execution result.</p>
-}
type alias ActionExecutionOutput =
    { outputArtifacts : Maybe (List ArtifactDetail)
    , executionResult : Maybe ActionExecutionResult
    }



actionExecutionOutputDecoder : JD.Decoder ActionExecutionOutput
actionExecutionOutputDecoder =
    JD.succeed ActionExecutionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["outputArtifacts", "OutputArtifacts"]
            (JD.list artifactDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["executionResult", "ExecutionResult"]
            actionExecutionResultDecoder
        )
        




actionExecutionOutputToString : ActionExecutionOutput -> String -- List (String, String)
actionExecutionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "outputArtifacts" "" -- val.outputArtifacts
        
    --     |> Dict.insert
    --         "executionResult" "" -- val.executionResult
        
    --     |> Dict.toList
    ""



{-| <p>Execution result information, such as the external execution ID.</p>
-}
type alias ActionExecutionResult =
    { externalExecutionId : Maybe String
    , externalExecutionSummary : Maybe String
    , externalExecutionUrl : Maybe String
    }



actionExecutionResultDecoder : JD.Decoder ActionExecutionResult
actionExecutionResultDecoder =
    JD.succeed ActionExecutionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["externalExecutionId", "ExternalExecutionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["externalExecutionSummary", "ExternalExecutionSummary"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["externalExecutionUrl", "ExternalExecutionUrl"]
            JD.string
        )
        




actionExecutionResultToString : ActionExecutionResult -> String -- List (String, String)
actionExecutionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "externalExecutionId" "" -- val.externalExecutionId
        
    --     |> Dict.insert
    --         "externalExecutionSummary" "" -- val.externalExecutionSummary
        
    --     |> Dict.insert
    --         "externalExecutionUrl" "" -- val.externalExecutionUrl
        
    --     |> Dict.toList
    ""



{-| One of

* `ActionExecutionStatus_InProgress`
* `ActionExecutionStatus_Succeeded`
* `ActionExecutionStatus_Failed`

-}
type ActionExecutionStatus
    = ActionExecutionStatus_InProgress
    | ActionExecutionStatus_Succeeded
    | ActionExecutionStatus_Failed



actionExecutionStatusDecoder : JD.Decoder ActionExecutionStatus
actionExecutionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InProgress" ->
                        JD.succeed ActionExecutionStatus_InProgress

                    "Succeeded" ->
                        JD.succeed ActionExecutionStatus_Succeeded

                    "Failed" ->
                        JD.succeed ActionExecutionStatus_Failed


                    _ ->
                        JD.fail "bad thing"
            )




actionExecutionStatusToString : ActionExecutionStatus -> String
actionExecutionStatusToString val =
    case val of
        ActionExecutionStatus_InProgress ->
            "InProgress"

        ActionExecutionStatus_Succeeded ->
            "Succeeded"

        ActionExecutionStatus_Failed ->
            "Failed"




{-| One of

* `ActionOwner_AWS`
* `ActionOwner_ThirdParty`
* `ActionOwner_Custom`

-}
type ActionOwner
    = ActionOwner_AWS
    | ActionOwner_ThirdParty
    | ActionOwner_Custom



actionOwnerDecoder : JD.Decoder ActionOwner
actionOwnerDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AWS" ->
                        JD.succeed ActionOwner_AWS

                    "ThirdParty" ->
                        JD.succeed ActionOwner_ThirdParty

                    "Custom" ->
                        JD.succeed ActionOwner_Custom


                    _ ->
                        JD.fail "bad thing"
            )




actionOwnerToString : ActionOwner -> String
actionOwnerToString val =
    case val of
        ActionOwner_AWS ->
            "AWS"

        ActionOwner_ThirdParty ->
            "ThirdParty"

        ActionOwner_Custom ->
            "Custom"




{-| <p>Represents information about the version (or revision) of an action.</p>
-}
type alias ActionRevision =
    { revisionId : String
    , revisionChangeId : String
    , created : Posix
    }



actionRevisionDecoder : JD.Decoder ActionRevision
actionRevisionDecoder =
    JD.succeed ActionRevision
        
        |> JDP.custom (AWS.Core.Decode.required
            ["revisionId", "RevisionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["revisionChangeId", "RevisionChangeId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["created", "Created"]
            JDX.datetime
        )
        




actionRevisionToString : ActionRevision -> String -- List (String, String)
actionRevisionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "revisionId" "" -- val.revisionId
        
    --     |> Dict.insert
    --         "revisionChangeId" "" -- val.revisionChangeId
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about the state of an action.</p>
-}
type alias ActionState =
    { actionName : Maybe String
    , currentRevision : Maybe ActionRevision
    , latestExecution : Maybe ActionExecution
    , entityUrl : Maybe String
    , revisionUrl : Maybe String
    }



actionStateDecoder : JD.Decoder ActionState
actionStateDecoder =
    JD.succeed ActionState
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["actionName", "ActionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["currentRevision", "CurrentRevision"]
            actionRevisionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["latestExecution", "LatestExecution"]
            actionExecutionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["entityUrl", "EntityUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["revisionUrl", "RevisionUrl"]
            JD.string
        )
        




actionStateToString : ActionState -> String -- List (String, String)
actionStateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "actionName" "" -- val.actionName
        
    --     |> Dict.insert
    --         "currentRevision" "" -- val.currentRevision
        
    --     |> Dict.insert
    --         "latestExecution" "" -- val.latestExecution
        
    --     |> Dict.insert
    --         "entityUrl" "" -- val.entityUrl
        
    --     |> Dict.insert
    --         "revisionUrl" "" -- val.revisionUrl
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about the details of an action type.</p>
-}
type alias ActionType =
    { id : ActionTypeId
    , settings : Maybe ActionTypeSettings
    , actionConfigurationProperties : Maybe (List ActionConfigurationProperty)
    , inputArtifactDetails : ArtifactDetails
    , outputArtifactDetails : ArtifactDetails
    }



actionTypeDecoder : JD.Decoder ActionType
actionTypeDecoder =
    JD.succeed ActionType
        
        |> JDP.custom (AWS.Core.Decode.required
            ["id", "Id"]
            actionTypeIdDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["settings", "Settings"]
            actionTypeSettingsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["actionConfigurationProperties", "ActionConfigurationProperties"]
            (JD.list actionConfigurationPropertyDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["inputArtifactDetails", "InputArtifactDetails"]
            artifactDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["outputArtifactDetails", "OutputArtifactDetails"]
            artifactDetailsDecoder
        )
        




actionTypeToString : ActionType -> String -- List (String, String)
actionTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "settings" "" -- val.settings
        
    --     |> Dict.insert
    --         "actionConfigurationProperties" "" -- val.actionConfigurationProperties
        
    --     |> Dict.insert
    --         "inputArtifactDetails" "" -- val.inputArtifactDetails
        
    --     |> Dict.insert
    --         "outputArtifactDetails" "" -- val.outputArtifactDetails
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about an action type.</p>
-}
type alias ActionTypeId =
    { category : ActionCategory
    , owner : ActionOwner
    , provider : String
    , version : String
    }



actionTypeIdDecoder : JD.Decoder ActionTypeId
actionTypeIdDecoder =
    JD.succeed ActionTypeId
        
        |> JDP.custom (AWS.Core.Decode.required
            ["category", "Category"]
            actionCategoryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["owner", "Owner"]
            actionOwnerDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["provider", "Provider"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["version", "Version"]
            JD.string
        )
        




actionTypeIdToString : ActionTypeId -> String -- List (String, String)
actionTypeIdToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "category" "" -- val.category
        
    --     |> Dict.insert
    --         "owner" "" -- val.owner
        
    --     |> Dict.insert
    --         "provider" "" -- val.provider
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about the settings for an action type.</p>
-}
type alias ActionTypeSettings =
    { thirdPartyConfigurationUrl : Maybe String
    , entityUrlTemplate : Maybe String
    , executionUrlTemplate : Maybe String
    , revisionUrlTemplate : Maybe String
    }



actionTypeSettingsDecoder : JD.Decoder ActionTypeSettings
actionTypeSettingsDecoder =
    JD.succeed ActionTypeSettings
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["thirdPartyConfigurationUrl", "ThirdPartyConfigurationUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["entityUrlTemplate", "EntityUrlTemplate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["executionUrlTemplate", "ExecutionUrlTemplate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["revisionUrlTemplate", "RevisionUrlTemplate"]
            JD.string
        )
        




actionTypeSettingsToString : ActionTypeSettings -> String -- List (String, String)
actionTypeSettingsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "thirdPartyConfigurationUrl" "" -- val.thirdPartyConfigurationUrl
        
    --     |> Dict.insert
    --         "entityUrlTemplate" "" -- val.entityUrlTemplate
        
    --     |> Dict.insert
    --         "executionUrlTemplate" "" -- val.executionUrlTemplate
        
    --     |> Dict.insert
    --         "revisionUrlTemplate" "" -- val.revisionUrlTemplate
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about the result of an approval request.</p>
-}
type alias ApprovalResult =
    { summary : String
    , status : ApprovalStatus
    }



approvalResultDecoder : JD.Decoder ApprovalResult
approvalResultDecoder =
    JD.succeed ApprovalResult
        
        |> JDP.custom (AWS.Core.Decode.required
            ["summary", "Summary"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["status", "Status"]
            approvalStatusDecoder
        )
        




approvalResultToString : ApprovalResult -> String -- List (String, String)
approvalResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "summary" "" -- val.summary
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| One of

* `ApprovalStatus_Approved`
* `ApprovalStatus_Rejected`

-}
type ApprovalStatus
    = ApprovalStatus_Approved
    | ApprovalStatus_Rejected



approvalStatusDecoder : JD.Decoder ApprovalStatus
approvalStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Approved" ->
                        JD.succeed ApprovalStatus_Approved

                    "Rejected" ->
                        JD.succeed ApprovalStatus_Rejected


                    _ ->
                        JD.fail "bad thing"
            )




approvalStatusToString : ApprovalStatus -> String
approvalStatusToString val =
    case val of
        ApprovalStatus_Approved ->
            "Approved"

        ApprovalStatus_Rejected ->
            "Rejected"




{-| <p>Represents information about an artifact that will be worked upon by actions in the pipeline.</p>
-}
type alias Artifact =
    { name : Maybe String
    , revision : Maybe String
    , location : Maybe ArtifactLocation
    }



artifactDecoder : JD.Decoder Artifact
artifactDecoder =
    JD.succeed Artifact
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["revision", "Revision"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            artifactLocationDecoder
        )
        




artifactToString : Artifact -> String -- List (String, String)
artifactToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "revision" "" -- val.revision
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.toList
    ""



{-| <p>Artifact details for the action execution, such as the artifact location.</p>
-}
type alias ArtifactDetail =
    { name : Maybe String
    , s3location : Maybe S3Location
    }



artifactDetailDecoder : JD.Decoder ArtifactDetail
artifactDetailDecoder =
    JD.succeed ArtifactDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["s3location", "S3location"]
            s3LocationDecoder
        )
        




artifactDetailToString : ArtifactDetail -> String -- List (String, String)
artifactDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "s3location" "" -- val.s3location
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about the details of an artifact.</p>
-}
type alias ArtifactDetails =
    { minimumCount : Int
    , maximumCount : Int
    }



artifactDetailsDecoder : JD.Decoder ArtifactDetails
artifactDetailsDecoder =
    JD.succeed ArtifactDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["minimumCount", "MinimumCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["maximumCount", "MaximumCount"]
            JD.int
        )
        




artifactDetailsToString : ArtifactDetails -> String -- List (String, String)
artifactDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "minimumCount" "" -- val.minimumCount
        
    --     |> Dict.insert
    --         "maximumCount" "" -- val.maximumCount
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about the location of an artifact.</p>
-}
type alias ArtifactLocation =
    { type_ : Maybe ArtifactLocationType
    , s3Location : Maybe S3ArtifactLocation
    }



artifactLocationDecoder : JD.Decoder ArtifactLocation
artifactLocationDecoder =
    JD.succeed ArtifactLocation
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            artifactLocationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["s3Location", "S3Location"]
            s3ArtifactLocationDecoder
        )
        




artifactLocationToString : ArtifactLocation -> String -- List (String, String)
artifactLocationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "s3Location" "" -- val.s3Location
        
    --     |> Dict.toList
    ""



{-| One of

* `ArtifactLocationType_S3`

-}
type ArtifactLocationType
    = ArtifactLocationType_S3



artifactLocationTypeDecoder : JD.Decoder ArtifactLocationType
artifactLocationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "S3" ->
                        JD.succeed ArtifactLocationType_S3


                    _ ->
                        JD.fail "bad thing"
            )




artifactLocationTypeToString : ArtifactLocationType -> String
artifactLocationTypeToString val =
    case val of
        ArtifactLocationType_S3 ->
            "S3"




{-| <p>Represents revision details of an artifact. </p>
-}
type alias ArtifactRevision =
    { name : Maybe String
    , revisionId : Maybe String
    , revisionChangeIdentifier : Maybe String
    , revisionSummary : Maybe String
    , created : Maybe Posix
    , revisionUrl : Maybe String
    }



artifactRevisionDecoder : JD.Decoder ArtifactRevision
artifactRevisionDecoder =
    JD.succeed ArtifactRevision
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["revisionId", "RevisionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["revisionChangeIdentifier", "RevisionChangeIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["revisionSummary", "RevisionSummary"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["created", "Created"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["revisionUrl", "RevisionUrl"]
            JD.string
        )
        




artifactRevisionToString : ArtifactRevision -> String -- List (String, String)
artifactRevisionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "revisionId" "" -- val.revisionId
        
    --     |> Dict.insert
    --         "revisionChangeIdentifier" "" -- val.revisionChangeIdentifier
        
    --     |> Dict.insert
    --         "revisionSummary" "" -- val.revisionSummary
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.insert
    --         "revisionUrl" "" -- val.revisionUrl
        
    --     |> Dict.toList
    ""



{-| <p>The Amazon S3 bucket where artifacts are stored for the pipeline.</p>
-}
type alias ArtifactStore =
    { type_ : ArtifactStoreType
    , location : String
    , encryptionKey : Maybe EncryptionKey
    }



artifactStoreDecoder : JD.Decoder ArtifactStore
artifactStoreDecoder =
    JD.succeed ArtifactStore
        
        |> JDP.custom (AWS.Core.Decode.required
            ["type", "Type"]
            artifactStoreTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["location", "Location"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["encryptionKey", "EncryptionKey"]
            encryptionKeyDecoder
        )
        




artifactStoreToString : ArtifactStore -> String -- List (String, String)
artifactStoreToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "encryptionKey" "" -- val.encryptionKey
        
    --     |> Dict.toList
    ""



{-| One of

* `ArtifactStoreType_S3`

-}
type ArtifactStoreType
    = ArtifactStoreType_S3



artifactStoreTypeDecoder : JD.Decoder ArtifactStoreType
artifactStoreTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "S3" ->
                        JD.succeed ArtifactStoreType_S3


                    _ ->
                        JD.fail "bad thing"
            )




artifactStoreTypeToString : ArtifactStoreType -> String
artifactStoreTypeToString val =
    case val of
        ArtifactStoreType_S3 ->
            "S3"




{-| <p>Reserved for future use.</p>
-}
type alias BlockerDeclaration =
    { name : String
    , type_ : BlockerType
    }



blockerDeclarationDecoder : JD.Decoder BlockerDeclaration
blockerDeclarationDecoder =
    JD.succeed BlockerDeclaration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["type", "Type"]
            blockerTypeDecoder
        )
        




blockerDeclarationToString : BlockerDeclaration -> String -- List (String, String)
blockerDeclarationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.toList
    ""



{-| One of

* `BlockerType_Schedule`

-}
type BlockerType
    = BlockerType_Schedule



blockerTypeDecoder : JD.Decoder BlockerType
blockerTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Schedule" ->
                        JD.succeed BlockerType_Schedule


                    _ ->
                        JD.fail "bad thing"
            )




blockerTypeToString : BlockerType -> String
blockerTypeToString val =
    case val of
        BlockerType_Schedule ->
            "Schedule"




{-| Type of HTTP response from createCustomActionTy
-}
type alias CreateCustomActionTypeOutput =
    { actionType : ActionType
    , tags : Maybe (List Tag)
    }



createCustomActionTypeOutputDecoder : JD.Decoder CreateCustomActionTypeOutput
createCustomActionTypeOutputDecoder =
    JD.succeed CreateCustomActionTypeOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["actionType", "ActionType"]
            actionTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




createCustomActionTypeOutputToString : CreateCustomActionTypeOutput -> String -- List (String, String)
createCustomActionTypeOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "actionType" "" -- val.actionType
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createPipeli
-}
type alias CreatePipelineOutput =
    { pipeline : Maybe PipelineDeclaration
    , tags : Maybe (List Tag)
    }



createPipelineOutputDecoder : JD.Decoder CreatePipelineOutput
createPipelineOutputDecoder =
    JD.succeed CreatePipelineOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipeline", "Pipeline"]
            pipelineDeclarationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




createPipelineOutputToString : CreatePipelineOutput -> String -- List (String, String)
createPipelineOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipeline" "" -- val.pipeline
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about a current revision.</p>
-}
type alias CurrentRevision =
    { revision : String
    , changeIdentifier : String
    , created : Maybe Posix
    , revisionSummary : Maybe String
    }



currentRevisionDecoder : JD.Decoder CurrentRevision
currentRevisionDecoder =
    JD.succeed CurrentRevision
        
        |> JDP.custom (AWS.Core.Decode.required
            ["revision", "Revision"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["changeIdentifier", "ChangeIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["created", "Created"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["revisionSummary", "RevisionSummary"]
            JD.string
        )
        




currentRevisionToString : CurrentRevision -> String -- List (String, String)
currentRevisionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "revision" "" -- val.revision
        
    --     |> Dict.insert
    --         "changeIdentifier" "" -- val.changeIdentifier
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.insert
    --         "revisionSummary" "" -- val.revisionSummary
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteWebho
-}
type alias DeleteWebhookOutput =
    { 
    }



deleteWebhookOutputDecoder : JD.Decoder DeleteWebhookOutput
deleteWebhookOutputDecoder =
    JD.succeed DeleteWebhookOutput
        




deleteWebhookOutputToString : DeleteWebhookOutput -> String -- List (String, String)
deleteWebhookOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deregisterWebhookWithThirdPar
-}
type alias DeregisterWebhookWithThirdPartyOutput =
    { 
    }



deregisterWebhookWithThirdPartyOutputDecoder : JD.Decoder DeregisterWebhookWithThirdPartyOutput
deregisterWebhookWithThirdPartyOutputDecoder =
    JD.succeed DeregisterWebhookWithThirdPartyOutput
        




deregisterWebhookWithThirdPartyOutputToString : DeregisterWebhookWithThirdPartyOutput -> String -- List (String, String)
deregisterWebhookWithThirdPartyOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about the key used to encrypt data in the artifact store, such as an AWS Key Management Service (AWS KMS) key.</p>
-}
type alias EncryptionKey =
    { id : String
    , type_ : EncryptionKeyType
    }



encryptionKeyDecoder : JD.Decoder EncryptionKey
encryptionKeyDecoder =
    JD.succeed EncryptionKey
        
        |> JDP.custom (AWS.Core.Decode.required
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["type", "Type"]
            encryptionKeyTypeDecoder
        )
        




encryptionKeyToString : EncryptionKey -> String -- List (String, String)
encryptionKeyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.toList
    ""



{-| One of

* `EncryptionKeyType_KMS`

-}
type EncryptionKeyType
    = EncryptionKeyType_KMS



encryptionKeyTypeDecoder : JD.Decoder EncryptionKeyType
encryptionKeyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "KMS" ->
                        JD.succeed EncryptionKeyType_KMS


                    _ ->
                        JD.fail "bad thing"
            )




encryptionKeyTypeToString : EncryptionKeyType -> String
encryptionKeyTypeToString val =
    case val of
        EncryptionKeyType_KMS ->
            "KMS"




{-| <p>Represents information about an error in AWS CodePipeline.</p>
-}
type alias ErrorDetails =
    { code : Maybe String
    , message : Maybe String
    }



errorDetailsDecoder : JD.Decoder ErrorDetails
errorDetailsDecoder =
    JD.succeed ErrorDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["code", "Code"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




errorDetailsToString : ErrorDetails -> String -- List (String, String)
errorDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The details of the actions taken and results produced on an artifact as it passes through stages in the pipeline.</p>
-}
type alias ExecutionDetails =
    { summary : Maybe String
    , externalExecutionId : Maybe String
    , percentComplete : Maybe Int
    }



executionDetailsDecoder : JD.Decoder ExecutionDetails
executionDetailsDecoder =
    JD.succeed ExecutionDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["summary", "Summary"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["externalExecutionId", "ExternalExecutionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["percentComplete", "PercentComplete"]
            JD.int
        )
        




executionDetailsToString : ExecutionDetails -> String -- List (String, String)
executionDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "summary" "" -- val.summary
        
    --     |> Dict.insert
    --         "externalExecutionId" "" -- val.externalExecutionId
        
    --     |> Dict.insert
    --         "percentComplete" "" -- val.percentComplete
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about failure details.</p>
-}
type alias FailureDetails =
    { type_ : FailureType
    , message : String
    , externalExecutionId : Maybe String
    }



failureDetailsDecoder : JD.Decoder FailureDetails
failureDetailsDecoder =
    JD.succeed FailureDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["type", "Type"]
            failureTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["externalExecutionId", "ExternalExecutionId"]
            JD.string
        )
        




failureDetailsToString : FailureDetails -> String -- List (String, String)
failureDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "externalExecutionId" "" -- val.externalExecutionId
        
    --     |> Dict.toList
    ""



{-| One of

* `FailureType_JobFailed`
* `FailureType_ConfigurationError`
* `FailureType_PermissionError`
* `FailureType_RevisionOutOfSync`
* `FailureType_RevisionUnavailable`
* `FailureType_SystemUnavailable`

-}
type FailureType
    = FailureType_JobFailed
    | FailureType_ConfigurationError
    | FailureType_PermissionError
    | FailureType_RevisionOutOfSync
    | FailureType_RevisionUnavailable
    | FailureType_SystemUnavailable



failureTypeDecoder : JD.Decoder FailureType
failureTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "JobFailed" ->
                        JD.succeed FailureType_JobFailed

                    "ConfigurationError" ->
                        JD.succeed FailureType_ConfigurationError

                    "PermissionError" ->
                        JD.succeed FailureType_PermissionError

                    "RevisionOutOfSync" ->
                        JD.succeed FailureType_RevisionOutOfSync

                    "RevisionUnavailable" ->
                        JD.succeed FailureType_RevisionUnavailable

                    "SystemUnavailable" ->
                        JD.succeed FailureType_SystemUnavailable


                    _ ->
                        JD.fail "bad thing"
            )




failureTypeToString : FailureType -> String
failureTypeToString val =
    case val of
        FailureType_JobFailed ->
            "JobFailed"

        FailureType_ConfigurationError ->
            "ConfigurationError"

        FailureType_PermissionError ->
            "PermissionError"

        FailureType_RevisionOutOfSync ->
            "RevisionOutOfSync"

        FailureType_RevisionUnavailable ->
            "RevisionUnavailable"

        FailureType_SystemUnavailable ->
            "SystemUnavailable"




{-| Type of HTTP response from getJobDetai
-}
type alias GetJobDetailsOutput =
    { jobDetails : Maybe JobDetails
    }



getJobDetailsOutputDecoder : JD.Decoder GetJobDetailsOutput
getJobDetailsOutputDecoder =
    JD.succeed GetJobDetailsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["jobDetails", "JobDetails"]
            jobDetailsDecoder
        )
        




getJobDetailsOutputToString : GetJobDetailsOutput -> String -- List (String, String)
getJobDetailsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobDetails" "" -- val.jobDetails
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getPipelineExecuti
-}
type alias GetPipelineExecutionOutput =
    { pipelineExecution : Maybe PipelineExecution
    }



getPipelineExecutionOutputDecoder : JD.Decoder GetPipelineExecutionOutput
getPipelineExecutionOutputDecoder =
    JD.succeed GetPipelineExecutionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineExecution", "PipelineExecution"]
            pipelineExecutionDecoder
        )
        




getPipelineExecutionOutputToString : GetPipelineExecutionOutput -> String -- List (String, String)
getPipelineExecutionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineExecution" "" -- val.pipelineExecution
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getPipeli
-}
type alias GetPipelineOutput =
    { pipeline : Maybe PipelineDeclaration
    , metadata : Maybe PipelineMetadata
    }



getPipelineOutputDecoder : JD.Decoder GetPipelineOutput
getPipelineOutputDecoder =
    JD.succeed GetPipelineOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipeline", "Pipeline"]
            pipelineDeclarationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["metadata", "Metadata"]
            pipelineMetadataDecoder
        )
        




getPipelineOutputToString : GetPipelineOutput -> String -- List (String, String)
getPipelineOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipeline" "" -- val.pipeline
        
    --     |> Dict.insert
    --         "metadata" "" -- val.metadata
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getPipelineSta
-}
type alias GetPipelineStateOutput =
    { pipelineName : Maybe String
    , pipelineVersion : Maybe Int
    , stageStates : Maybe (List StageState)
    , created : Maybe Posix
    , updated : Maybe Posix
    }



getPipelineStateOutputDecoder : JD.Decoder GetPipelineStateOutput
getPipelineStateOutputDecoder =
    JD.succeed GetPipelineStateOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineName", "PipelineName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineVersion", "PipelineVersion"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stageStates", "StageStates"]
            (JD.list stageStateDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["created", "Created"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["updated", "Updated"]
            JDX.datetime
        )
        




getPipelineStateOutputToString : GetPipelineStateOutput -> String -- List (String, String)
getPipelineStateOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineName" "" -- val.pipelineName
        
    --     |> Dict.insert
    --         "pipelineVersion" "" -- val.pipelineVersion
        
    --     |> Dict.insert
    --         "stageStates" "" -- val.stageStates
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.insert
    --         "updated" "" -- val.updated
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getThirdPartyJobDetai
-}
type alias GetThirdPartyJobDetailsOutput =
    { jobDetails : Maybe ThirdPartyJobDetails
    }



getThirdPartyJobDetailsOutputDecoder : JD.Decoder GetThirdPartyJobDetailsOutput
getThirdPartyJobDetailsOutputDecoder =
    JD.succeed GetThirdPartyJobDetailsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["jobDetails", "JobDetails"]
            thirdPartyJobDetailsDecoder
        )
        




getThirdPartyJobDetailsOutputToString : GetThirdPartyJobDetailsOutput -> String -- List (String, String)
getThirdPartyJobDetailsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobDetails" "" -- val.jobDetails
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about an artifact to be worked on, such as a test or build artifact.</p>
-}
type alias InputArtifact =
    { name : String
    }



inputArtifactDecoder : JD.Decoder InputArtifact
inputArtifactDecoder =
    JD.succeed InputArtifact
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        




inputArtifactToString : InputArtifact -> String -- List (String, String)
inputArtifactToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about a job.</p>
-}
type alias Job =
    { id : Maybe String
    , data : Maybe JobData
    , nonce : Maybe String
    , accountId : Maybe String
    }



jobDecoder : JD.Decoder Job
jobDecoder =
    JD.succeed Job
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["data", "Data"]
            jobDataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nonce", "Nonce"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["accountId", "AccountId"]
            JD.string
        )
        




jobToString : Job -> String -- List (String, String)
jobToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "data" "" -- val.data
        
    --     |> Dict.insert
    --         "nonce" "" -- val.nonce
        
    --     |> Dict.insert
    --         "accountId" "" -- val.accountId
        
    --     |> Dict.toList
    ""



{-| <p>Represents additional information about a job required for a job worker to complete the job.</p>
-}
type alias JobData =
    { actionTypeId : Maybe ActionTypeId
    , actionConfiguration : Maybe ActionConfiguration
    , pipelineContext : Maybe PipelineContext
    , inputArtifacts : Maybe (List Artifact)
    , outputArtifacts : Maybe (List Artifact)
    , artifactCredentials : Maybe AWSSessionCredentials
    , continuationToken : Maybe String
    , encryptionKey : Maybe EncryptionKey
    }



jobDataDecoder : JD.Decoder JobData
jobDataDecoder =
    JD.succeed JobData
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["actionTypeId", "ActionTypeId"]
            actionTypeIdDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["actionConfiguration", "ActionConfiguration"]
            actionConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineContext", "PipelineContext"]
            pipelineContextDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["inputArtifacts", "InputArtifacts"]
            (JD.list artifactDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["outputArtifacts", "OutputArtifacts"]
            (JD.list artifactDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["artifactCredentials", "ArtifactCredentials"]
            aWSSessionCredentialsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["continuationToken", "ContinuationToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["encryptionKey", "EncryptionKey"]
            encryptionKeyDecoder
        )
        




jobDataToString : JobData -> String -- List (String, String)
jobDataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "actionTypeId" "" -- val.actionTypeId
        
    --     |> Dict.insert
    --         "actionConfiguration" "" -- val.actionConfiguration
        
    --     |> Dict.insert
    --         "pipelineContext" "" -- val.pipelineContext
        
    --     |> Dict.insert
    --         "inputArtifacts" "" -- val.inputArtifacts
        
    --     |> Dict.insert
    --         "outputArtifacts" "" -- val.outputArtifacts
        
    --     |> Dict.insert
    --         "artifactCredentials" "" -- val.artifactCredentials
        
    --     |> Dict.insert
    --         "continuationToken" "" -- val.continuationToken
        
    --     |> Dict.insert
    --         "encryptionKey" "" -- val.encryptionKey
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about the details of a job.</p>
-}
type alias JobDetails =
    { id : Maybe String
    , data : Maybe JobData
    , accountId : Maybe String
    }



jobDetailsDecoder : JD.Decoder JobDetails
jobDetailsDecoder =
    JD.succeed JobDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["data", "Data"]
            jobDataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["accountId", "AccountId"]
            JD.string
        )
        




jobDetailsToString : JobDetails -> String -- List (String, String)
jobDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "data" "" -- val.data
        
    --     |> Dict.insert
    --         "accountId" "" -- val.accountId
        
    --     |> Dict.toList
    ""



{-| One of

* `JobStatus_Created`
* `JobStatus_Queued`
* `JobStatus_Dispatched`
* `JobStatus_InProgress`
* `JobStatus_TimedOut`
* `JobStatus_Succeeded`
* `JobStatus_Failed`

-}
type JobStatus
    = JobStatus_Created
    | JobStatus_Queued
    | JobStatus_Dispatched
    | JobStatus_InProgress
    | JobStatus_TimedOut
    | JobStatus_Succeeded
    | JobStatus_Failed



jobStatusDecoder : JD.Decoder JobStatus
jobStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Created" ->
                        JD.succeed JobStatus_Created

                    "Queued" ->
                        JD.succeed JobStatus_Queued

                    "Dispatched" ->
                        JD.succeed JobStatus_Dispatched

                    "InProgress" ->
                        JD.succeed JobStatus_InProgress

                    "TimedOut" ->
                        JD.succeed JobStatus_TimedOut

                    "Succeeded" ->
                        JD.succeed JobStatus_Succeeded

                    "Failed" ->
                        JD.succeed JobStatus_Failed


                    _ ->
                        JD.fail "bad thing"
            )




jobStatusToString : JobStatus -> String
jobStatusToString val =
    case val of
        JobStatus_Created ->
            "Created"

        JobStatus_Queued ->
            "Queued"

        JobStatus_Dispatched ->
            "Dispatched"

        JobStatus_InProgress ->
            "InProgress"

        JobStatus_TimedOut ->
            "TimedOut"

        JobStatus_Succeeded ->
            "Succeeded"

        JobStatus_Failed ->
            "Failed"




{-| Type of HTTP response from listActionExecutio
-}
type alias ListActionExecutionsOutput =
    { actionExecutionDetails : Maybe (List ActionExecutionDetail)
    , nextToken : Maybe String
    }



listActionExecutionsOutputDecoder : JD.Decoder ListActionExecutionsOutput
listActionExecutionsOutputDecoder =
    JD.succeed ListActionExecutionsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["actionExecutionDetails", "ActionExecutionDetails"]
            (JD.list actionExecutionDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listActionExecutionsOutputToString : ListActionExecutionsOutput -> String -- List (String, String)
listActionExecutionsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "actionExecutionDetails" "" -- val.actionExecutionDetails
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listActionTyp
-}
type alias ListActionTypesOutput =
    { actionTypes : (List ActionType)
    , nextToken : Maybe String
    }



listActionTypesOutputDecoder : JD.Decoder ListActionTypesOutput
listActionTypesOutputDecoder =
    JD.succeed ListActionTypesOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["actionTypes", "ActionTypes"]
            (JD.list actionTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listActionTypesOutputToString : ListActionTypesOutput -> String -- List (String, String)
listActionTypesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "actionTypes" "" -- val.actionTypes
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listPipelineExecutio
-}
type alias ListPipelineExecutionsOutput =
    { pipelineExecutionSummaries : Maybe (List PipelineExecutionSummary)
    , nextToken : Maybe String
    }



listPipelineExecutionsOutputDecoder : JD.Decoder ListPipelineExecutionsOutput
listPipelineExecutionsOutputDecoder =
    JD.succeed ListPipelineExecutionsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineExecutionSummaries", "PipelineExecutionSummaries"]
            (JD.list pipelineExecutionSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listPipelineExecutionsOutputToString : ListPipelineExecutionsOutput -> String -- List (String, String)
listPipelineExecutionsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineExecutionSummaries" "" -- val.pipelineExecutionSummaries
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listPipelin
-}
type alias ListPipelinesOutput =
    { pipelines : Maybe (List PipelineSummary)
    , nextToken : Maybe String
    }



listPipelinesOutputDecoder : JD.Decoder ListPipelinesOutput
listPipelinesOutputDecoder =
    JD.succeed ListPipelinesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelines", "Pipelines"]
            (JD.list pipelineSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listPipelinesOutputToString : ListPipelinesOutput -> String -- List (String, String)
listPipelinesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelines" "" -- val.pipelines
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForResour
-}
type alias ListTagsForResourceOutput =
    { tags : Maybe (List Tag)
    , nextToken : Maybe String
    }



listTagsForResourceOutputDecoder : JD.Decoder ListTagsForResourceOutput
listTagsForResourceOutputDecoder =
    JD.succeed ListTagsForResourceOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listTagsForResourceOutputToString : ListTagsForResourceOutput -> String -- List (String, String)
listTagsForResourceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>The detail returned for each webhook after listing webhooks, such as the webhook URL, the webhook name, and the webhook ARN.</p>
-}
type alias ListWebhookItem =
    { definition : WebhookDefinition
    , url : String
    , errorMessage : Maybe String
    , errorCode : Maybe String
    , lastTriggered : Maybe Posix
    , arn : Maybe String
    , tags : Maybe (List Tag)
    }



listWebhookItemDecoder : JD.Decoder ListWebhookItem
listWebhookItemDecoder =
    JD.succeed ListWebhookItem
        
        |> JDP.custom (AWS.Core.Decode.required
            ["definition", "Definition"]
            webhookDefinitionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["url", "Url"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errorMessage", "ErrorMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errorCode", "ErrorCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastTriggered", "LastTriggered"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




listWebhookItemToString : ListWebhookItem -> String -- List (String, String)
listWebhookItemToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "definition" "" -- val.definition
        
    --     |> Dict.insert
    --         "url" "" -- val.url
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "lastTriggered" "" -- val.lastTriggered
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listWebhoo
-}
type alias ListWebhooksOutput =
    { webhooks : Maybe (List ListWebhookItem)
    , nextToken : Maybe String
    }



listWebhooksOutputDecoder : JD.Decoder ListWebhooksOutput
listWebhooksOutputDecoder =
    JD.succeed ListWebhooksOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["webhooks", "Webhooks"]
            (JD.list listWebhookItemDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listWebhooksOutputToString : ListWebhooksOutput -> String -- List (String, String)
listWebhooksOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "webhooks" "" -- val.webhooks
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about the output of an action.</p>
-}
type alias OutputArtifact =
    { name : String
    }



outputArtifactDecoder : JD.Decoder OutputArtifact
outputArtifactDecoder =
    JD.succeed OutputArtifact
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        




outputArtifactToString : OutputArtifact -> String -- List (String, String)
outputArtifactToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about a pipeline to a job worker.</p> <note> <p>PipelineContext contains <code>pipelineArn</code> and <code>pipelineExecutionId</code> for custom action jobs. The <code>pipelineArn</code> and <code>pipelineExecutionId</code> fields are not populated for ThirdParty action jobs.</p> </note>
-}
type alias PipelineContext =
    { pipelineName : Maybe String
    , stage : Maybe StageContext
    , action : Maybe ActionContext
    , pipelineArn : Maybe String
    , pipelineExecutionId : Maybe String
    }



pipelineContextDecoder : JD.Decoder PipelineContext
pipelineContextDecoder =
    JD.succeed PipelineContext
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineName", "PipelineName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stage", "Stage"]
            stageContextDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["action", "Action"]
            actionContextDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineArn", "PipelineArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineExecutionId", "PipelineExecutionId"]
            JD.string
        )
        




pipelineContextToString : PipelineContext -> String -- List (String, String)
pipelineContextToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineName" "" -- val.pipelineName
        
    --     |> Dict.insert
    --         "stage" "" -- val.stage
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "pipelineArn" "" -- val.pipelineArn
        
    --     |> Dict.insert
    --         "pipelineExecutionId" "" -- val.pipelineExecutionId
        
    --     |> Dict.toList
    ""



{-| <p>Represents the structure of actions and stages to be performed in the pipeline.</p>
-}
type alias PipelineDeclaration =
    { name : String
    , roleArn : String
    , artifactStore : Maybe ArtifactStore
    , artifactStores : Maybe (Dict String ArtifactStore)
    , stages : (List StageDeclaration)
    , version : Maybe Int
    }



pipelineDeclarationDecoder : JD.Decoder PipelineDeclaration
pipelineDeclarationDecoder =
    JD.succeed PipelineDeclaration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["roleArn", "RoleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["artifactStore", "ArtifactStore"]
            artifactStoreDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["artifactStores", "ArtifactStores"]
            (AWS.Core.Decode.dict artifactStoreDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["stages", "Stages"]
            (JD.list stageDeclarationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["version", "Version"]
            JD.int
        )
        




pipelineDeclarationToString : PipelineDeclaration -> String -- List (String, String)
pipelineDeclarationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "artifactStore" "" -- val.artifactStore
        
    --     |> Dict.insert
    --         "artifactStores" "" -- val.artifactStores
        
    --     |> Dict.insert
    --         "stages" "" -- val.stages
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about an execution of a pipeline.</p>
-}
type alias PipelineExecution =
    { pipelineName : Maybe String
    , pipelineVersion : Maybe Int
    , pipelineExecutionId : Maybe String
    , status : Maybe PipelineExecutionStatus
    , artifactRevisions : Maybe (List ArtifactRevision)
    }



pipelineExecutionDecoder : JD.Decoder PipelineExecution
pipelineExecutionDecoder =
    JD.succeed PipelineExecution
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineName", "PipelineName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineVersion", "PipelineVersion"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineExecutionId", "PipelineExecutionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            pipelineExecutionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["artifactRevisions", "ArtifactRevisions"]
            (JD.list artifactRevisionDecoder)
        )
        




pipelineExecutionToString : PipelineExecution -> String -- List (String, String)
pipelineExecutionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineName" "" -- val.pipelineName
        
    --     |> Dict.insert
    --         "pipelineVersion" "" -- val.pipelineVersion
        
    --     |> Dict.insert
    --         "pipelineExecutionId" "" -- val.pipelineExecutionId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "artifactRevisions" "" -- val.artifactRevisions
        
    --     |> Dict.toList
    ""



{-| One of

* `PipelineExecutionStatus_InProgress`
* `PipelineExecutionStatus_Succeeded`
* `PipelineExecutionStatus_Superseded`
* `PipelineExecutionStatus_Failed`

-}
type PipelineExecutionStatus
    = PipelineExecutionStatus_InProgress
    | PipelineExecutionStatus_Succeeded
    | PipelineExecutionStatus_Superseded
    | PipelineExecutionStatus_Failed



pipelineExecutionStatusDecoder : JD.Decoder PipelineExecutionStatus
pipelineExecutionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InProgress" ->
                        JD.succeed PipelineExecutionStatus_InProgress

                    "Succeeded" ->
                        JD.succeed PipelineExecutionStatus_Succeeded

                    "Superseded" ->
                        JD.succeed PipelineExecutionStatus_Superseded

                    "Failed" ->
                        JD.succeed PipelineExecutionStatus_Failed


                    _ ->
                        JD.fail "bad thing"
            )




pipelineExecutionStatusToString : PipelineExecutionStatus -> String
pipelineExecutionStatusToString val =
    case val of
        PipelineExecutionStatus_InProgress ->
            "InProgress"

        PipelineExecutionStatus_Succeeded ->
            "Succeeded"

        PipelineExecutionStatus_Superseded ->
            "Superseded"

        PipelineExecutionStatus_Failed ->
            "Failed"




{-| <p>Summary information about a pipeline execution.</p>
-}
type alias PipelineExecutionSummary =
    { pipelineExecutionId : Maybe String
    , status : Maybe PipelineExecutionStatus
    , startTime : Maybe Posix
    , lastUpdateTime : Maybe Posix
    , sourceRevisions : Maybe (List SourceRevision)
    }



pipelineExecutionSummaryDecoder : JD.Decoder PipelineExecutionSummary
pipelineExecutionSummaryDecoder =
    JD.succeed PipelineExecutionSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineExecutionId", "PipelineExecutionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            pipelineExecutionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["startTime", "StartTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastUpdateTime", "LastUpdateTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sourceRevisions", "SourceRevisions"]
            (JD.list sourceRevisionDecoder)
        )
        




pipelineExecutionSummaryToString : PipelineExecutionSummary -> String -- List (String, String)
pipelineExecutionSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineExecutionId" "" -- val.pipelineExecutionId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "lastUpdateTime" "" -- val.lastUpdateTime
        
    --     |> Dict.insert
    --         "sourceRevisions" "" -- val.sourceRevisions
        
    --     |> Dict.toList
    ""



{-| <p>Information about a pipeline.</p>
-}
type alias PipelineMetadata =
    { pipelineArn : Maybe String
    , created : Maybe Posix
    , updated : Maybe Posix
    }



pipelineMetadataDecoder : JD.Decoder PipelineMetadata
pipelineMetadataDecoder =
    JD.succeed PipelineMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineArn", "PipelineArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["created", "Created"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["updated", "Updated"]
            JDX.datetime
        )
        




pipelineMetadataToString : PipelineMetadata -> String -- List (String, String)
pipelineMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineArn" "" -- val.pipelineArn
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.insert
    --         "updated" "" -- val.updated
        
    --     |> Dict.toList
    ""



{-| <p>Returns a summary of a pipeline.</p>
-}
type alias PipelineSummary =
    { name : Maybe String
    , version : Maybe Int
    , created : Maybe Posix
    , updated : Maybe Posix
    }



pipelineSummaryDecoder : JD.Decoder PipelineSummary
pipelineSummaryDecoder =
    JD.succeed PipelineSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["version", "Version"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["created", "Created"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["updated", "Updated"]
            JDX.datetime
        )
        




pipelineSummaryToString : PipelineSummary -> String -- List (String, String)
pipelineSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.insert
    --         "updated" "" -- val.updated
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from pollForJo
-}
type alias PollForJobsOutput =
    { jobs : Maybe (List Job)
    }



pollForJobsOutputDecoder : JD.Decoder PollForJobsOutput
pollForJobsOutputDecoder =
    JD.succeed PollForJobsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["jobs", "Jobs"]
            (JD.list jobDecoder)
        )
        




pollForJobsOutputToString : PollForJobsOutput -> String -- List (String, String)
pollForJobsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobs" "" -- val.jobs
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from pollForThirdPartyJo
-}
type alias PollForThirdPartyJobsOutput =
    { jobs : Maybe (List ThirdPartyJob)
    }



pollForThirdPartyJobsOutputDecoder : JD.Decoder PollForThirdPartyJobsOutput
pollForThirdPartyJobsOutputDecoder =
    JD.succeed PollForThirdPartyJobsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["jobs", "Jobs"]
            (JD.list thirdPartyJobDecoder)
        )
        




pollForThirdPartyJobsOutputToString : PollForThirdPartyJobsOutput -> String -- List (String, String)
pollForThirdPartyJobsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobs" "" -- val.jobs
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putActionRevisi
-}
type alias PutActionRevisionOutput =
    { newRevision : Maybe Bool
    , pipelineExecutionId : Maybe String
    }



putActionRevisionOutputDecoder : JD.Decoder PutActionRevisionOutput
putActionRevisionOutputDecoder =
    JD.succeed PutActionRevisionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["newRevision", "NewRevision"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineExecutionId", "PipelineExecutionId"]
            JD.string
        )
        




putActionRevisionOutputToString : PutActionRevisionOutput -> String -- List (String, String)
putActionRevisionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "newRevision" "" -- val.newRevision
        
    --     |> Dict.insert
    --         "pipelineExecutionId" "" -- val.pipelineExecutionId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putApprovalResu
-}
type alias PutApprovalResultOutput =
    { approvedAt : Maybe Posix
    }



putApprovalResultOutputDecoder : JD.Decoder PutApprovalResultOutput
putApprovalResultOutputDecoder =
    JD.succeed PutApprovalResultOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["approvedAt", "ApprovedAt"]
            JDX.datetime
        )
        




putApprovalResultOutputToString : PutApprovalResultOutput -> String -- List (String, String)
putApprovalResultOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "approvedAt" "" -- val.approvedAt
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putWebho
-}
type alias PutWebhookOutput =
    { webhook : Maybe ListWebhookItem
    }



putWebhookOutputDecoder : JD.Decoder PutWebhookOutput
putWebhookOutputDecoder =
    JD.succeed PutWebhookOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["webhook", "Webhook"]
            listWebhookItemDecoder
        )
        




putWebhookOutputToString : PutWebhookOutput -> String -- List (String, String)
putWebhookOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "webhook" "" -- val.webhook
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from registerWebhookWithThirdPar
-}
type alias RegisterWebhookWithThirdPartyOutput =
    { 
    }



registerWebhookWithThirdPartyOutputDecoder : JD.Decoder RegisterWebhookWithThirdPartyOutput
registerWebhookWithThirdPartyOutputDecoder =
    JD.succeed RegisterWebhookWithThirdPartyOutput
        




registerWebhookWithThirdPartyOutputToString : RegisterWebhookWithThirdPartyOutput -> String -- List (String, String)
registerWebhookWithThirdPartyOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from retryStageExecuti
-}
type alias RetryStageExecutionOutput =
    { pipelineExecutionId : Maybe String
    }



retryStageExecutionOutputDecoder : JD.Decoder RetryStageExecutionOutput
retryStageExecutionOutputDecoder =
    JD.succeed RetryStageExecutionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineExecutionId", "PipelineExecutionId"]
            JD.string
        )
        




retryStageExecutionOutputToString : RetryStageExecutionOutput -> String -- List (String, String)
retryStageExecutionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineExecutionId" "" -- val.pipelineExecutionId
        
    --     |> Dict.toList
    ""



{-| <p>The location of the Amazon S3 bucket that contains a revision.</p>
-}
type alias S3ArtifactLocation =
    { bucketName : String
    , objectKey : String
    }



s3ArtifactLocationDecoder : JD.Decoder S3ArtifactLocation
s3ArtifactLocationDecoder =
    JD.succeed S3ArtifactLocation
        
        |> JDP.custom (AWS.Core.Decode.required
            ["bucketName", "BucketName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["objectKey", "ObjectKey"]
            JD.string
        )
        




s3ArtifactLocationToString : S3ArtifactLocation -> String -- List (String, String)
s3ArtifactLocationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bucketName" "" -- val.bucketName
        
    --     |> Dict.insert
    --         "objectKey" "" -- val.objectKey
        
    --     |> Dict.toList
    ""



{-| <p>The Amazon S3 artifact location for an action's artifacts.</p>
-}
type alias S3Location =
    { bucket : Maybe String
    , key : Maybe String
    }



s3LocationDecoder : JD.Decoder S3Location
s3LocationDecoder =
    JD.succeed S3Location
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bucket", "Bucket"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["key", "Key"]
            JD.string
        )
        




s3LocationToString : S3Location -> String -- List (String, String)
s3LocationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bucket" "" -- val.bucket
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.toList
    ""



{-| <p>Information about the version (or revision) of a source artifact that initiated a pipeline execution.</p>
-}
type alias SourceRevision =
    { actionName : String
    , revisionId : Maybe String
    , revisionSummary : Maybe String
    , revisionUrl : Maybe String
    }



sourceRevisionDecoder : JD.Decoder SourceRevision
sourceRevisionDecoder =
    JD.succeed SourceRevision
        
        |> JDP.custom (AWS.Core.Decode.required
            ["actionName", "ActionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["revisionId", "RevisionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["revisionSummary", "RevisionSummary"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["revisionUrl", "RevisionUrl"]
            JD.string
        )
        




sourceRevisionToString : SourceRevision -> String -- List (String, String)
sourceRevisionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "actionName" "" -- val.actionName
        
    --     |> Dict.insert
    --         "revisionId" "" -- val.revisionId
        
    --     |> Dict.insert
    --         "revisionSummary" "" -- val.revisionSummary
        
    --     |> Dict.insert
    --         "revisionUrl" "" -- val.revisionUrl
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about a stage to a job worker.</p>
-}
type alias StageContext =
    { name : Maybe String
    }



stageContextDecoder : JD.Decoder StageContext
stageContextDecoder =
    JD.succeed StageContext
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        




stageContextToString : StageContext -> String -- List (String, String)
stageContextToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about a stage and its definition.</p>
-}
type alias StageDeclaration =
    { name : String
    , blockers : Maybe (List BlockerDeclaration)
    , actions : (List ActionDeclaration)
    }



stageDeclarationDecoder : JD.Decoder StageDeclaration
stageDeclarationDecoder =
    JD.succeed StageDeclaration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["blockers", "Blockers"]
            (JD.list blockerDeclarationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["actions", "Actions"]
            (JD.list actionDeclarationDecoder)
        )
        




stageDeclarationToString : StageDeclaration -> String -- List (String, String)
stageDeclarationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "blockers" "" -- val.blockers
        
    --     |> Dict.insert
    --         "actions" "" -- val.actions
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about the run of a stage.</p>
-}
type alias StageExecution =
    { pipelineExecutionId : String
    , status : StageExecutionStatus
    }



stageExecutionDecoder : JD.Decoder StageExecution
stageExecutionDecoder =
    JD.succeed StageExecution
        
        |> JDP.custom (AWS.Core.Decode.required
            ["pipelineExecutionId", "PipelineExecutionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["status", "Status"]
            stageExecutionStatusDecoder
        )
        




stageExecutionToString : StageExecution -> String -- List (String, String)
stageExecutionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineExecutionId" "" -- val.pipelineExecutionId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| One of

* `StageExecutionStatus_InProgress`
* `StageExecutionStatus_Failed`
* `StageExecutionStatus_Succeeded`

-}
type StageExecutionStatus
    = StageExecutionStatus_InProgress
    | StageExecutionStatus_Failed
    | StageExecutionStatus_Succeeded



stageExecutionStatusDecoder : JD.Decoder StageExecutionStatus
stageExecutionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InProgress" ->
                        JD.succeed StageExecutionStatus_InProgress

                    "Failed" ->
                        JD.succeed StageExecutionStatus_Failed

                    "Succeeded" ->
                        JD.succeed StageExecutionStatus_Succeeded


                    _ ->
                        JD.fail "bad thing"
            )




stageExecutionStatusToString : StageExecutionStatus -> String
stageExecutionStatusToString val =
    case val of
        StageExecutionStatus_InProgress ->
            "InProgress"

        StageExecutionStatus_Failed ->
            "Failed"

        StageExecutionStatus_Succeeded ->
            "Succeeded"




{-| One of

* `StageRetryMode_FAILED_ACTIONS`

-}
type StageRetryMode
    = StageRetryMode_FAILED_ACTIONS



stageRetryModeDecoder : JD.Decoder StageRetryMode
stageRetryModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FAILED_ACTIONS" ->
                        JD.succeed StageRetryMode_FAILED_ACTIONS


                    _ ->
                        JD.fail "bad thing"
            )




stageRetryModeToString : StageRetryMode -> String
stageRetryModeToString val =
    case val of
        StageRetryMode_FAILED_ACTIONS ->
            "FAILED_ACTIONS"




{-| <p>Represents information about the state of the stage.</p>
-}
type alias StageState =
    { stageName : Maybe String
    , inboundTransitionState : Maybe TransitionState
    , actionStates : Maybe (List ActionState)
    , latestExecution : Maybe StageExecution
    }



stageStateDecoder : JD.Decoder StageState
stageStateDecoder =
    JD.succeed StageState
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stageName", "StageName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["inboundTransitionState", "InboundTransitionState"]
            transitionStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["actionStates", "ActionStates"]
            (JD.list actionStateDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["latestExecution", "LatestExecution"]
            stageExecutionDecoder
        )
        




stageStateToString : StageState -> String -- List (String, String)
stageStateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stageName" "" -- val.stageName
        
    --     |> Dict.insert
    --         "inboundTransitionState" "" -- val.inboundTransitionState
        
    --     |> Dict.insert
    --         "actionStates" "" -- val.actionStates
        
    --     |> Dict.insert
    --         "latestExecution" "" -- val.latestExecution
        
    --     |> Dict.toList
    ""



{-| One of

* `StageTransitionType_Inbound`
* `StageTransitionType_Outbound`

-}
type StageTransitionType
    = StageTransitionType_Inbound
    | StageTransitionType_Outbound



stageTransitionTypeDecoder : JD.Decoder StageTransitionType
stageTransitionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Inbound" ->
                        JD.succeed StageTransitionType_Inbound

                    "Outbound" ->
                        JD.succeed StageTransitionType_Outbound


                    _ ->
                        JD.fail "bad thing"
            )




stageTransitionTypeToString : StageTransitionType -> String
stageTransitionTypeToString val =
    case val of
        StageTransitionType_Inbound ->
            "Inbound"

        StageTransitionType_Outbound ->
            "Outbound"




{-| Type of HTTP response from startPipelineExecuti
-}
type alias StartPipelineExecutionOutput =
    { pipelineExecutionId : Maybe String
    }



startPipelineExecutionOutputDecoder : JD.Decoder StartPipelineExecutionOutput
startPipelineExecutionOutputDecoder =
    JD.succeed StartPipelineExecutionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineExecutionId", "PipelineExecutionId"]
            JD.string
        )
        




startPipelineExecutionOutputToString : StartPipelineExecutionOutput -> String -- List (String, String)
startPipelineExecutionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineExecutionId" "" -- val.pipelineExecutionId
        
    --     |> Dict.toList
    ""



{-| <p>A tag is a key/value pair that is used to manage the resource.</p>
-}
type alias Tag =
    { key : String
    , value : String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.required
            ["key", "Key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
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



{-| Type of HTTP response from tagResour
-}
type alias TagResourceOutput =
    { 
    }



tagResourceOutputDecoder : JD.Decoder TagResourceOutput
tagResourceOutputDecoder =
    JD.succeed TagResourceOutput
        




tagResourceOutputToString : TagResourceOutput -> String -- List (String, String)
tagResourceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>A response to a <code>PollForThirdPartyJobs </code>request returned by AWS CodePipeline when there is a job to be worked upon by a partner action.</p>
-}
type alias ThirdPartyJob =
    { clientId : Maybe String
    , jobId : Maybe String
    }



thirdPartyJobDecoder : JD.Decoder ThirdPartyJob
thirdPartyJobDecoder =
    JD.succeed ThirdPartyJob
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["clientId", "ClientId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["jobId", "JobId"]
            JD.string
        )
        




thirdPartyJobToString : ThirdPartyJob -> String -- List (String, String)
thirdPartyJobToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "clientId" "" -- val.clientId
        
    --     |> Dict.insert
    --         "jobId" "" -- val.jobId
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about the job data for a partner action.</p>
-}
type alias ThirdPartyJobData =
    { actionTypeId : Maybe ActionTypeId
    , actionConfiguration : Maybe ActionConfiguration
    , pipelineContext : Maybe PipelineContext
    , inputArtifacts : Maybe (List Artifact)
    , outputArtifacts : Maybe (List Artifact)
    , artifactCredentials : Maybe AWSSessionCredentials
    , continuationToken : Maybe String
    , encryptionKey : Maybe EncryptionKey
    }



thirdPartyJobDataDecoder : JD.Decoder ThirdPartyJobData
thirdPartyJobDataDecoder =
    JD.succeed ThirdPartyJobData
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["actionTypeId", "ActionTypeId"]
            actionTypeIdDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["actionConfiguration", "ActionConfiguration"]
            actionConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineContext", "PipelineContext"]
            pipelineContextDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["inputArtifacts", "InputArtifacts"]
            (JD.list artifactDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["outputArtifacts", "OutputArtifacts"]
            (JD.list artifactDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["artifactCredentials", "ArtifactCredentials"]
            aWSSessionCredentialsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["continuationToken", "ContinuationToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["encryptionKey", "EncryptionKey"]
            encryptionKeyDecoder
        )
        




thirdPartyJobDataToString : ThirdPartyJobData -> String -- List (String, String)
thirdPartyJobDataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "actionTypeId" "" -- val.actionTypeId
        
    --     |> Dict.insert
    --         "actionConfiguration" "" -- val.actionConfiguration
        
    --     |> Dict.insert
    --         "pipelineContext" "" -- val.pipelineContext
        
    --     |> Dict.insert
    --         "inputArtifacts" "" -- val.inputArtifacts
        
    --     |> Dict.insert
    --         "outputArtifacts" "" -- val.outputArtifacts
        
    --     |> Dict.insert
    --         "artifactCredentials" "" -- val.artifactCredentials
        
    --     |> Dict.insert
    --         "continuationToken" "" -- val.continuationToken
        
    --     |> Dict.insert
    --         "encryptionKey" "" -- val.encryptionKey
        
    --     |> Dict.toList
    ""



{-| <p>The details of a job sent in response to a <code>GetThirdPartyJobDetails</code> request.</p>
-}
type alias ThirdPartyJobDetails =
    { id : Maybe String
    , data : Maybe ThirdPartyJobData
    , nonce : Maybe String
    }



thirdPartyJobDetailsDecoder : JD.Decoder ThirdPartyJobDetails
thirdPartyJobDetailsDecoder =
    JD.succeed ThirdPartyJobDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["data", "Data"]
            thirdPartyJobDataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nonce", "Nonce"]
            JD.string
        )
        




thirdPartyJobDetailsToString : ThirdPartyJobDetails -> String -- List (String, String)
thirdPartyJobDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "data" "" -- val.data
        
    --     |> Dict.insert
    --         "nonce" "" -- val.nonce
        
    --     |> Dict.toList
    ""



{-| <p>Represents information about the state of transitions between one stage and another stage.</p>
-}
type alias TransitionState =
    { enabled : Maybe Bool
    , lastChangedBy : Maybe String
    , lastChangedAt : Maybe Posix
    , disabledReason : Maybe String
    }



transitionStateDecoder : JD.Decoder TransitionState
transitionStateDecoder =
    JD.succeed TransitionState
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["enabled", "Enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastChangedBy", "LastChangedBy"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastChangedAt", "LastChangedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["disabledReason", "DisabledReason"]
            JD.string
        )
        




transitionStateToString : TransitionState -> String -- List (String, String)
transitionStateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "lastChangedBy" "" -- val.lastChangedBy
        
    --     |> Dict.insert
    --         "lastChangedAt" "" -- val.lastChangedAt
        
    --     |> Dict.insert
    --         "disabledReason" "" -- val.disabledReason
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from untagResour
-}
type alias UntagResourceOutput =
    { 
    }



untagResourceOutputDecoder : JD.Decoder UntagResourceOutput
untagResourceOutputDecoder =
    JD.succeed UntagResourceOutput
        




untagResourceOutputToString : UntagResourceOutput -> String -- List (String, String)
untagResourceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updatePipeli
-}
type alias UpdatePipelineOutput =
    { pipeline : Maybe PipelineDeclaration
    }



updatePipelineOutputDecoder : JD.Decoder UpdatePipelineOutput
updatePipelineOutputDecoder =
    JD.succeed UpdatePipelineOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipeline", "Pipeline"]
            pipelineDeclarationDecoder
        )
        




updatePipelineOutputToString : UpdatePipelineOutput -> String -- List (String, String)
updatePipelineOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipeline" "" -- val.pipeline
        
    --     |> Dict.toList
    ""



{-| <p>The authentication applied to incoming webhook trigger requests.</p>
-}
type alias WebhookAuthConfiguration =
    { allowedIPRange : Maybe String
    , secretToken : Maybe String
    }



webhookAuthConfigurationDecoder : JD.Decoder WebhookAuthConfiguration
webhookAuthConfigurationDecoder =
    JD.succeed WebhookAuthConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowedIPRange", "allowedIPRange"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecretToken", "secretToken"]
            JD.string
        )
        




webhookAuthConfigurationToString : WebhookAuthConfiguration -> String -- List (String, String)
webhookAuthConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "allowedIPRange" "" -- val.allowedIPRange
        
    --     |> Dict.insert
    --         "secretToken" "" -- val.secretToken
        
    --     |> Dict.toList
    ""



{-| One of

* `WebhookAuthenticationType_GITHUB_HMAC`
* `WebhookAuthenticationType_IP`
* `WebhookAuthenticationType_UNAUTHENTICATED`

-}
type WebhookAuthenticationType
    = WebhookAuthenticationType_GITHUB_HMAC
    | WebhookAuthenticationType_IP
    | WebhookAuthenticationType_UNAUTHENTICATED



webhookAuthenticationTypeDecoder : JD.Decoder WebhookAuthenticationType
webhookAuthenticationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "GITHUB_HMAC" ->
                        JD.succeed WebhookAuthenticationType_GITHUB_HMAC

                    "IP" ->
                        JD.succeed WebhookAuthenticationType_IP

                    "UNAUTHENTICATED" ->
                        JD.succeed WebhookAuthenticationType_UNAUTHENTICATED


                    _ ->
                        JD.fail "bad thing"
            )




webhookAuthenticationTypeToString : WebhookAuthenticationType -> String
webhookAuthenticationTypeToString val =
    case val of
        WebhookAuthenticationType_GITHUB_HMAC ->
            "GITHUB_HMAC"

        WebhookAuthenticationType_IP ->
            "IP"

        WebhookAuthenticationType_UNAUTHENTICATED ->
            "UNAUTHENTICATED"




{-| <p>Represents information about a webhook and its definition.</p>
-}
type alias WebhookDefinition =
    { name : String
    , targetPipeline : String
    , targetAction : String
    , filters : (List WebhookFilterRule)
    , authentication : WebhookAuthenticationType
    , authenticationConfiguration : WebhookAuthConfiguration
    }



webhookDefinitionDecoder : JD.Decoder WebhookDefinition
webhookDefinitionDecoder =
    JD.succeed WebhookDefinition
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["targetPipeline", "TargetPipeline"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["targetAction", "TargetAction"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["filters", "Filters"]
            (JD.list webhookFilterRuleDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["authentication", "Authentication"]
            webhookAuthenticationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["authenticationConfiguration", "AuthenticationConfiguration"]
            webhookAuthConfigurationDecoder
        )
        




webhookDefinitionToString : WebhookDefinition -> String -- List (String, String)
webhookDefinitionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "targetPipeline" "" -- val.targetPipeline
        
    --     |> Dict.insert
    --         "targetAction" "" -- val.targetAction
        
    --     |> Dict.insert
    --         "filters" "" -- val.filters
        
    --     |> Dict.insert
    --         "authentication" "" -- val.authentication
        
    --     |> Dict.insert
    --         "authenticationConfiguration" "" -- val.authenticationConfiguration
        
    --     |> Dict.toList
    ""



{-| <p>The event criteria that specify when a webhook notification is sent to your URL.</p>
-}
type alias WebhookFilterRule =
    { jsonPath : String
    , matchEquals : Maybe String
    }



webhookFilterRuleDecoder : JD.Decoder WebhookFilterRule
webhookFilterRuleDecoder =
    JD.succeed WebhookFilterRule
        
        |> JDP.custom (AWS.Core.Decode.required
            ["jsonPath", "JsonPath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["matchEquals", "MatchEquals"]
            JD.string
        )
        




webhookFilterRuleToString : WebhookFilterRule -> String -- List (String, String)
webhookFilterRuleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jsonPath" "" -- val.jsonPath
        
    --     |> Dict.insert
    --         "matchEquals" "" -- val.matchEquals
        
    --     |> Dict.toList
    ""






{-| <p>Represents the input of an AcknowledgeJob action.</p>
-}
type alias AcknowledgeJobInput =
    { jobId : String
    , nonce : String
    }


{-| <p>Represents the input of an AcknowledgeThirdPartyJob action.</p>
-}
type alias AcknowledgeThirdPartyJobInput =
    { jobId : String
    , nonce : String
    , clientToken : String
    }


{-| <p>Represents the input of a CreateCustomActionType operation.</p>
-}
type alias CreateCustomActionTypeInput =
    { category : ActionCategory
    , provider : String
    , version : String
    , settings : Maybe ActionTypeSettings
    , configurationProperties : Maybe (List ActionConfigurationProperty)
    , inputArtifactDetails : ArtifactDetails
    , outputArtifactDetails : ArtifactDetails
    , tags : Maybe (List Tag)
    }


{-| <p>Represents the input of a <code>CreatePipeline</code> action.</p>
-}
type alias CreatePipelineInput =
    { pipeline : PipelineDeclaration
    , tags : Maybe (List Tag)
    }


{-| <p>Represents the input of a <code>DeleteCustomActionType</code> operation. The custom action will be marked as deleted.</p>
-}
type alias DeleteCustomActionTypeInput =
    { category : ActionCategory
    , provider : String
    , version : String
    }


{-| <p>Represents the input of a <code>DeletePipeline</code> action.</p>
-}
type alias DeletePipelineInput =
    { name : String
    }


{-| undefined
-}
type alias DeleteWebhookInput =
    { name : String
    }


{-| undefined
-}
type alias DeregisterWebhookWithThirdPartyInput =
    { webhookName : Maybe String
    }


{-| <p>Represents the input of a <code>DisableStageTransition</code> action.</p>
-}
type alias DisableStageTransitionInput =
    { pipelineName : String
    , stageName : String
    , transitionType : StageTransitionType
    , reason : String
    }


{-| <p>Represents the input of an <code>EnableStageTransition</code> action.</p>
-}
type alias EnableStageTransitionInput =
    { pipelineName : String
    , stageName : String
    , transitionType : StageTransitionType
    }


{-| <p>Represents the input of a <code>GetJobDetails</code> action.</p>
-}
type alias GetJobDetailsInput =
    { jobId : String
    }


{-| <p>Represents the input of a <code>GetPipelineExecution</code> action.</p>
-}
type alias GetPipelineExecutionInput =
    { pipelineName : String
    , pipelineExecutionId : String
    }


{-| <p>Represents the input of a <code>GetPipeline</code> action.</p>
-}
type alias GetPipelineInput =
    { name : String
    , version : Maybe Int
    }


{-| <p>Represents the input of a <code>GetPipelineState</code> action.</p>
-}
type alias GetPipelineStateInput =
    { name : String
    }


{-| <p>Represents the input of a <code>GetThirdPartyJobDetails</code> action.</p>
-}
type alias GetThirdPartyJobDetailsInput =
    { jobId : String
    , clientToken : String
    }


{-| undefined
-}
type alias ListActionExecutionsInput =
    { pipelineName : String
    , filter : Maybe ActionExecutionFilter
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input of a <code>ListActionTypes</code> action.</p>
-}
type alias ListActionTypesInput =
    { actionOwnerFilter : Maybe ActionOwner
    , nextToken : Maybe String
    }


{-| <p>Represents the input of a <code>ListPipelineExecutions</code> action.</p>
-}
type alias ListPipelineExecutionsInput =
    { pipelineName : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input of a <code>ListPipelines</code> action.</p>
-}
type alias ListPipelinesInput =
    { nextToken : Maybe String
    }


{-| undefined
-}
type alias ListTagsForResourceInput =
    { resourceArn : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListWebhooksInput =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| <p>Represents the input of a <code>PollForJobs</code> action.</p>
-}
type alias PollForJobsInput =
    { actionTypeId : ActionTypeId
    , maxBatchSize : Maybe Int
    , queryParam : Maybe (Dict String String)
    }


{-| <p>Represents the input of a <code>PollForThirdPartyJobs</code> action.</p>
-}
type alias PollForThirdPartyJobsInput =
    { actionTypeId : ActionTypeId
    , maxBatchSize : Maybe Int
    }


{-| <p>Represents the input of a <code>PutActionRevision</code> action.</p>
-}
type alias PutActionRevisionInput =
    { pipelineName : String
    , stageName : String
    , actionName : String
    , actionRevision : ActionRevision
    }


{-| <p>Represents the input of a <code>PutApprovalResult</code> action.</p>
-}
type alias PutApprovalResultInput =
    { pipelineName : String
    , stageName : String
    , actionName : String
    , result : ApprovalResult
    , token : String
    }


{-| <p>Represents the input of a <code>PutJobFailureResult</code> action.</p>
-}
type alias PutJobFailureResultInput =
    { jobId : String
    , failureDetails : FailureDetails
    }


{-| <p>Represents the input of a <code>PutJobSuccessResult</code> action.</p>
-}
type alias PutJobSuccessResultInput =
    { jobId : String
    , currentRevision : Maybe CurrentRevision
    , continuationToken : Maybe String
    , executionDetails : Maybe ExecutionDetails
    }


{-| <p>Represents the input of a <code>PutThirdPartyJobFailureResult</code> action.</p>
-}
type alias PutThirdPartyJobFailureResultInput =
    { jobId : String
    , clientToken : String
    , failureDetails : FailureDetails
    }


{-| <p>Represents the input of a <code>PutThirdPartyJobSuccessResult</code> action.</p>
-}
type alias PutThirdPartyJobSuccessResultInput =
    { jobId : String
    , clientToken : String
    , currentRevision : Maybe CurrentRevision
    , continuationToken : Maybe String
    , executionDetails : Maybe ExecutionDetails
    }


{-| undefined
-}
type alias PutWebhookInput =
    { webhook : WebhookDefinition
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias RegisterWebhookWithThirdPartyInput =
    { webhookName : Maybe String
    }


{-| <p>Represents the input of a <code>RetryStageExecution</code> action.</p>
-}
type alias RetryStageExecutionInput =
    { pipelineName : String
    , stageName : String
    , pipelineExecutionId : String
    , retryMode : StageRetryMode
    }


{-| <p>Represents the input of a <code>StartPipelineExecution</code> action.</p>
-}
type alias StartPipelineExecutionInput =
    { name : String
    , clientRequestToken : Maybe String
    }


{-| undefined
-}
type alias TagResourceInput =
    { resourceArn : String
    , tags : (List Tag)
    }


{-| undefined
-}
type alias UntagResourceInput =
    { resourceArn : String
    , tagKeys : (List String)
    }


{-| <p>Represents the input of an <code>UpdatePipeline</code> action.</p>
-}
type alias UpdatePipelineInput =
    { pipeline : PipelineDeclaration
    }






aWSSessionCredentialsEncoder : AWSSessionCredentials -> JE.Value
aWSSessionCredentialsEncoder data =
    []
        
        
        |> (::) ("accessKeyId", data.accessKeyId |> (JE.string))
        
        
        
        |> (::) ("secretAccessKey", data.secretAccessKey |> (JE.string))
        
        
        
        |> (::) ("sessionToken", data.sessionToken |> (JE.string))
        
        
        |> JE.object






acknowledgeJobInputEncoder : AcknowledgeJobInput -> JE.Value
acknowledgeJobInputEncoder data =
    []
        
        
        |> (::) ("jobId", data.jobId |> (JE.string))
        
        
        
        |> (::) ("nonce", data.nonce |> (JE.string))
        
        
        |> JE.object






acknowledgeJobOutputEncoder : AcknowledgeJobOutput -> JE.Value
acknowledgeJobOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (jobStatusToString >> JE.string)
            ("status", data.status)
        
        
        |> JE.object






acknowledgeThirdPartyJobInputEncoder : AcknowledgeThirdPartyJobInput -> JE.Value
acknowledgeThirdPartyJobInputEncoder data =
    []
        
        
        |> (::) ("jobId", data.jobId |> (JE.string))
        
        
        
        |> (::) ("nonce", data.nonce |> (JE.string))
        
        
        
        |> (::) ("clientToken", data.clientToken |> (JE.string))
        
        
        |> JE.object






acknowledgeThirdPartyJobOutputEncoder : AcknowledgeThirdPartyJobOutput -> JE.Value
acknowledgeThirdPartyJobOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (jobStatusToString >> JE.string)
            ("status", data.status)
        
        
        |> JE.object










actionConfigurationEncoder : ActionConfiguration -> JE.Value
actionConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("configuration", data.configuration)
        
        
        |> JE.object






actionConfigurationPropertyEncoder : ActionConfigurationProperty -> JE.Value
actionConfigurationPropertyEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("required", data.required |> (JE.bool))
        
        
        
        |> (::) ("key", data.key |> (JE.bool))
        
        
        
        |> (::) ("secret", data.secret |> (JE.bool))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("queryable", data.queryable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (actionConfigurationPropertyTypeToString >> JE.string)
            ("type", data.type_)
        
        
        |> JE.object










actionContextEncoder : ActionContext -> JE.Value
actionContextEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("actionExecutionId", data.actionExecutionId)
        
        
        |> JE.object






actionDeclarationEncoder : ActionDeclaration -> JE.Value
actionDeclarationEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("actionTypeId", data.actionTypeId |> (actionTypeIdEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("runOrder", data.runOrder)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("configuration", data.configuration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (outputArtifactEncoder))
            ("outputArtifacts", data.outputArtifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (inputArtifactEncoder))
            ("inputArtifacts", data.inputArtifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("region", data.region)
        
        
        |> JE.object






actionExecutionEncoder : ActionExecution -> JE.Value
actionExecutionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (actionExecutionStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("summary", data.summary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastStatusChange", data.lastStatusChange)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("token", data.token)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lastUpdatedBy", data.lastUpdatedBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("externalExecutionId", data.externalExecutionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("externalExecutionUrl", data.externalExecutionUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("percentComplete", data.percentComplete)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (errorDetailsEncoder)
            ("errorDetails", data.errorDetails)
        
        
        |> JE.object






actionExecutionDetailEncoder : ActionExecutionDetail -> JE.Value
actionExecutionDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pipelineExecutionId", data.pipelineExecutionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("actionExecutionId", data.actionExecutionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("pipelineVersion", data.pipelineVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("stageName", data.stageName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("actionName", data.actionName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("startTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastUpdateTime", data.lastUpdateTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (actionExecutionStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (actionExecutionInputEncoder)
            ("input", data.input)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (actionExecutionOutputEncoder)
            ("output", data.output)
        
        
        |> JE.object






actionExecutionFilterEncoder : ActionExecutionFilter -> JE.Value
actionExecutionFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pipelineExecutionId", data.pipelineExecutionId)
        
        
        |> JE.object






actionExecutionInputEncoder : ActionExecutionInput -> JE.Value
actionExecutionInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (actionTypeIdEncoder)
            ("actionTypeId", data.actionTypeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("configuration", data.configuration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (artifactDetailEncoder))
            ("inputArtifacts", data.inputArtifacts)
        
        
        |> JE.object






actionExecutionOutputEncoder : ActionExecutionOutput -> JE.Value
actionExecutionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (artifactDetailEncoder))
            ("outputArtifacts", data.outputArtifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (actionExecutionResultEncoder)
            ("executionResult", data.executionResult)
        
        
        |> JE.object






actionExecutionResultEncoder : ActionExecutionResult -> JE.Value
actionExecutionResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("externalExecutionId", data.externalExecutionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("externalExecutionSummary", data.externalExecutionSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("externalExecutionUrl", data.externalExecutionUrl)
        
        
        |> JE.object














actionRevisionEncoder : ActionRevision -> JE.Value
actionRevisionEncoder data =
    []
        
        
        |> (::) ("revisionId", data.revisionId |> (JE.string))
        
        
        
        |> (::) ("revisionChangeId", data.revisionChangeId |> (JE.string))
        
        
        
        |> (::) ("created", data.created |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






actionStateEncoder : ActionState -> JE.Value
actionStateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("actionName", data.actionName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (actionRevisionEncoder)
            ("currentRevision", data.currentRevision)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (actionExecutionEncoder)
            ("latestExecution", data.latestExecution)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("entityUrl", data.entityUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("revisionUrl", data.revisionUrl)
        
        
        |> JE.object






actionTypeEncoder : ActionType -> JE.Value
actionTypeEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (actionTypeIdEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (actionTypeSettingsEncoder)
            ("settings", data.settings)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (actionConfigurationPropertyEncoder))
            ("actionConfigurationProperties", data.actionConfigurationProperties)
        
        
        
        |> (::) ("inputArtifactDetails", data.inputArtifactDetails |> (artifactDetailsEncoder))
        
        
        
        |> (::) ("outputArtifactDetails", data.outputArtifactDetails |> (artifactDetailsEncoder))
        
        
        |> JE.object






actionTypeIdEncoder : ActionTypeId -> JE.Value
actionTypeIdEncoder data =
    []
        
        
        |> (::) ("category", data.category |> (actionCategoryToString >> JE.string))
        
        
        
        |> (::) ("owner", data.owner |> (actionOwnerToString >> JE.string))
        
        
        
        |> (::) ("provider", data.provider |> (JE.string))
        
        
        
        |> (::) ("version", data.version |> (JE.string))
        
        
        |> JE.object






actionTypeSettingsEncoder : ActionTypeSettings -> JE.Value
actionTypeSettingsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("thirdPartyConfigurationUrl", data.thirdPartyConfigurationUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("entityUrlTemplate", data.entityUrlTemplate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("executionUrlTemplate", data.executionUrlTemplate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("revisionUrlTemplate", data.revisionUrlTemplate)
        
        
        |> JE.object






approvalResultEncoder : ApprovalResult -> JE.Value
approvalResultEncoder data =
    []
        
        
        |> (::) ("summary", data.summary |> (JE.string))
        
        
        
        |> (::) ("status", data.status |> (approvalStatusToString >> JE.string))
        
        
        |> JE.object










artifactEncoder : Artifact -> JE.Value
artifactEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("revision", data.revision)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (artifactLocationEncoder)
            ("location", data.location)
        
        
        |> JE.object






artifactDetailEncoder : ArtifactDetail -> JE.Value
artifactDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3LocationEncoder)
            ("s3location", data.s3location)
        
        
        |> JE.object






artifactDetailsEncoder : ArtifactDetails -> JE.Value
artifactDetailsEncoder data =
    []
        
        
        |> (::) ("minimumCount", data.minimumCount |> (JE.int))
        
        
        
        |> (::) ("maximumCount", data.maximumCount |> (JE.int))
        
        
        |> JE.object






artifactLocationEncoder : ArtifactLocation -> JE.Value
artifactLocationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (artifactLocationTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3ArtifactLocationEncoder)
            ("s3Location", data.s3Location)
        
        
        |> JE.object










artifactRevisionEncoder : ArtifactRevision -> JE.Value
artifactRevisionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("revisionId", data.revisionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("revisionChangeIdentifier", data.revisionChangeIdentifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("revisionSummary", data.revisionSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("created", data.created)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("revisionUrl", data.revisionUrl)
        
        
        |> JE.object






artifactStoreEncoder : ArtifactStore -> JE.Value
artifactStoreEncoder data =
    []
        
        
        |> (::) ("type", data.type_ |> (artifactStoreTypeToString >> JE.string))
        
        
        
        |> (::) ("location", data.location |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (encryptionKeyEncoder)
            ("encryptionKey", data.encryptionKey)
        
        
        |> JE.object










blockerDeclarationEncoder : BlockerDeclaration -> JE.Value
blockerDeclarationEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("type", data.type_ |> (blockerTypeToString >> JE.string))
        
        
        |> JE.object










createCustomActionTypeInputEncoder : CreateCustomActionTypeInput -> JE.Value
createCustomActionTypeInputEncoder data =
    []
        
        
        |> (::) ("category", data.category |> (actionCategoryToString >> JE.string))
        
        
        
        |> (::) ("provider", data.provider |> (JE.string))
        
        
        
        |> (::) ("version", data.version |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (actionTypeSettingsEncoder)
            ("settings", data.settings)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (actionConfigurationPropertyEncoder))
            ("configurationProperties", data.configurationProperties)
        
        
        
        |> (::) ("inputArtifactDetails", data.inputArtifactDetails |> (artifactDetailsEncoder))
        
        
        
        |> (::) ("outputArtifactDetails", data.outputArtifactDetails |> (artifactDetailsEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createCustomActionTypeOutputEncoder : CreateCustomActionTypeOutput -> JE.Value
createCustomActionTypeOutputEncoder data =
    []
        
        
        |> (::) ("actionType", data.actionType |> (actionTypeEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createPipelineInputEncoder : CreatePipelineInput -> JE.Value
createPipelineInputEncoder data =
    []
        
        
        |> (::) ("pipeline", data.pipeline |> (pipelineDeclarationEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createPipelineOutputEncoder : CreatePipelineOutput -> JE.Value
createPipelineOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (pipelineDeclarationEncoder)
            ("pipeline", data.pipeline)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






currentRevisionEncoder : CurrentRevision -> JE.Value
currentRevisionEncoder data =
    []
        
        
        |> (::) ("revision", data.revision |> (JE.string))
        
        
        
        |> (::) ("changeIdentifier", data.changeIdentifier |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("created", data.created)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("revisionSummary", data.revisionSummary)
        
        
        |> JE.object






deleteCustomActionTypeInputEncoder : DeleteCustomActionTypeInput -> JE.Value
deleteCustomActionTypeInputEncoder data =
    []
        
        
        |> (::) ("category", data.category |> (actionCategoryToString >> JE.string))
        
        
        
        |> (::) ("provider", data.provider |> (JE.string))
        
        
        
        |> (::) ("version", data.version |> (JE.string))
        
        
        |> JE.object






deletePipelineInputEncoder : DeletePipelineInput -> JE.Value
deletePipelineInputEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        |> JE.object






deleteWebhookInputEncoder : DeleteWebhookInput -> JE.Value
deleteWebhookInputEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        |> JE.object






deleteWebhookOutputEncoder : DeleteWebhookOutput -> JE.Value
deleteWebhookOutputEncoder data =
    []
        
        |> JE.object






deregisterWebhookWithThirdPartyInputEncoder : DeregisterWebhookWithThirdPartyInput -> JE.Value
deregisterWebhookWithThirdPartyInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("webhookName", data.webhookName)
        
        
        |> JE.object






deregisterWebhookWithThirdPartyOutputEncoder : DeregisterWebhookWithThirdPartyOutput -> JE.Value
deregisterWebhookWithThirdPartyOutputEncoder data =
    []
        
        |> JE.object






disableStageTransitionInputEncoder : DisableStageTransitionInput -> JE.Value
disableStageTransitionInputEncoder data =
    []
        
        
        |> (::) ("pipelineName", data.pipelineName |> (JE.string))
        
        
        
        |> (::) ("stageName", data.stageName |> (JE.string))
        
        
        
        |> (::) ("transitionType", data.transitionType |> (stageTransitionTypeToString >> JE.string))
        
        
        
        |> (::) ("reason", data.reason |> (JE.string))
        
        
        |> JE.object






enableStageTransitionInputEncoder : EnableStageTransitionInput -> JE.Value
enableStageTransitionInputEncoder data =
    []
        
        
        |> (::) ("pipelineName", data.pipelineName |> (JE.string))
        
        
        
        |> (::) ("stageName", data.stageName |> (JE.string))
        
        
        
        |> (::) ("transitionType", data.transitionType |> (stageTransitionTypeToString >> JE.string))
        
        
        |> JE.object






encryptionKeyEncoder : EncryptionKey -> JE.Value
encryptionKeyEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        
        |> (::) ("type", data.type_ |> (encryptionKeyTypeToString >> JE.string))
        
        
        |> JE.object










errorDetailsEncoder : ErrorDetails -> JE.Value
errorDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("code", data.code)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






executionDetailsEncoder : ExecutionDetails -> JE.Value
executionDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("summary", data.summary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("externalExecutionId", data.externalExecutionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("percentComplete", data.percentComplete)
        
        
        |> JE.object






failureDetailsEncoder : FailureDetails -> JE.Value
failureDetailsEncoder data =
    []
        
        
        |> (::) ("type", data.type_ |> (failureTypeToString >> JE.string))
        
        
        
        |> (::) ("message", data.message |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("externalExecutionId", data.externalExecutionId)
        
        
        |> JE.object










getJobDetailsInputEncoder : GetJobDetailsInput -> JE.Value
getJobDetailsInputEncoder data =
    []
        
        
        |> (::) ("jobId", data.jobId |> (JE.string))
        
        
        |> JE.object






getJobDetailsOutputEncoder : GetJobDetailsOutput -> JE.Value
getJobDetailsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (jobDetailsEncoder)
            ("jobDetails", data.jobDetails)
        
        
        |> JE.object






getPipelineExecutionInputEncoder : GetPipelineExecutionInput -> JE.Value
getPipelineExecutionInputEncoder data =
    []
        
        
        |> (::) ("pipelineName", data.pipelineName |> (JE.string))
        
        
        
        |> (::) ("pipelineExecutionId", data.pipelineExecutionId |> (JE.string))
        
        
        |> JE.object






getPipelineExecutionOutputEncoder : GetPipelineExecutionOutput -> JE.Value
getPipelineExecutionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (pipelineExecutionEncoder)
            ("pipelineExecution", data.pipelineExecution)
        
        
        |> JE.object






getPipelineInputEncoder : GetPipelineInput -> JE.Value
getPipelineInputEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("version", data.version)
        
        
        |> JE.object






getPipelineOutputEncoder : GetPipelineOutput -> JE.Value
getPipelineOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (pipelineDeclarationEncoder)
            ("pipeline", data.pipeline)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (pipelineMetadataEncoder)
            ("metadata", data.metadata)
        
        
        |> JE.object






getPipelineStateInputEncoder : GetPipelineStateInput -> JE.Value
getPipelineStateInputEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        |> JE.object






getPipelineStateOutputEncoder : GetPipelineStateOutput -> JE.Value
getPipelineStateOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pipelineName", data.pipelineName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("pipelineVersion", data.pipelineVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (stageStateEncoder))
            ("stageStates", data.stageStates)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("created", data.created)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("updated", data.updated)
        
        
        |> JE.object






getThirdPartyJobDetailsInputEncoder : GetThirdPartyJobDetailsInput -> JE.Value
getThirdPartyJobDetailsInputEncoder data =
    []
        
        
        |> (::) ("jobId", data.jobId |> (JE.string))
        
        
        
        |> (::) ("clientToken", data.clientToken |> (JE.string))
        
        
        |> JE.object






getThirdPartyJobDetailsOutputEncoder : GetThirdPartyJobDetailsOutput -> JE.Value
getThirdPartyJobDetailsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (thirdPartyJobDetailsEncoder)
            ("jobDetails", data.jobDetails)
        
        
        |> JE.object






inputArtifactEncoder : InputArtifact -> JE.Value
inputArtifactEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        |> JE.object






jobEncoder : Job -> JE.Value
jobEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobDataEncoder)
            ("data", data.data)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nonce", data.nonce)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("accountId", data.accountId)
        
        
        |> JE.object






jobDataEncoder : JobData -> JE.Value
jobDataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (actionTypeIdEncoder)
            ("actionTypeId", data.actionTypeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (actionConfigurationEncoder)
            ("actionConfiguration", data.actionConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (pipelineContextEncoder)
            ("pipelineContext", data.pipelineContext)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (artifactEncoder))
            ("inputArtifacts", data.inputArtifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (artifactEncoder))
            ("outputArtifacts", data.outputArtifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (aWSSessionCredentialsEncoder)
            ("artifactCredentials", data.artifactCredentials)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("continuationToken", data.continuationToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (encryptionKeyEncoder)
            ("encryptionKey", data.encryptionKey)
        
        
        |> JE.object






jobDetailsEncoder : JobDetails -> JE.Value
jobDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobDataEncoder)
            ("data", data.data)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("accountId", data.accountId)
        
        
        |> JE.object










listActionExecutionsInputEncoder : ListActionExecutionsInput -> JE.Value
listActionExecutionsInputEncoder data =
    []
        
        
        |> (::) ("pipelineName", data.pipelineName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (actionExecutionFilterEncoder)
            ("filter", data.filter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listActionExecutionsOutputEncoder : ListActionExecutionsOutput -> JE.Value
listActionExecutionsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (actionExecutionDetailEncoder))
            ("actionExecutionDetails", data.actionExecutionDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listActionTypesInputEncoder : ListActionTypesInput -> JE.Value
listActionTypesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (actionOwnerToString >> JE.string)
            ("actionOwnerFilter", data.actionOwnerFilter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listActionTypesOutputEncoder : ListActionTypesOutput -> JE.Value
listActionTypesOutputEncoder data =
    []
        
        
        |> (::) ("actionTypes", data.actionTypes |> (JE.list (actionTypeEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listPipelineExecutionsInputEncoder : ListPipelineExecutionsInput -> JE.Value
listPipelineExecutionsInputEncoder data =
    []
        
        
        |> (::) ("pipelineName", data.pipelineName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listPipelineExecutionsOutputEncoder : ListPipelineExecutionsOutput -> JE.Value
listPipelineExecutionsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (pipelineExecutionSummaryEncoder))
            ("pipelineExecutionSummaries", data.pipelineExecutionSummaries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listPipelinesInputEncoder : ListPipelinesInput -> JE.Value
listPipelinesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listPipelinesOutputEncoder : ListPipelinesOutput -> JE.Value
listPipelinesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (pipelineSummaryEncoder))
            ("pipelines", data.pipelines)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listTagsForResourceInputEncoder : ListTagsForResourceInput -> JE.Value
listTagsForResourceInputEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listTagsForResourceOutputEncoder : ListTagsForResourceOutput -> JE.Value
listTagsForResourceOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listWebhookItemEncoder : ListWebhookItem -> JE.Value
listWebhookItemEncoder data =
    []
        
        
        |> (::) ("definition", data.definition |> (webhookDefinitionEncoder))
        
        
        
        |> (::) ("url", data.url |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("errorMessage", data.errorMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("errorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastTriggered", data.lastTriggered)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






listWebhooksInputEncoder : ListWebhooksInput -> JE.Value
listWebhooksInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






listWebhooksOutputEncoder : ListWebhooksOutput -> JE.Value
listWebhooksOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (listWebhookItemEncoder))
            ("webhooks", data.webhooks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






outputArtifactEncoder : OutputArtifact -> JE.Value
outputArtifactEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        |> JE.object






pipelineContextEncoder : PipelineContext -> JE.Value
pipelineContextEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pipelineName", data.pipelineName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stageContextEncoder)
            ("stage", data.stage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (actionContextEncoder)
            ("action", data.action)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pipelineArn", data.pipelineArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pipelineExecutionId", data.pipelineExecutionId)
        
        
        |> JE.object






pipelineDeclarationEncoder : PipelineDeclaration -> JE.Value
pipelineDeclarationEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("roleArn", data.roleArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (artifactStoreEncoder)
            ("artifactStore", data.artifactStore)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (artifactStoreEncoder))
            ("artifactStores", data.artifactStores)
        
        
        
        |> (::) ("stages", data.stages |> (JE.list (stageDeclarationEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("version", data.version)
        
        
        |> JE.object






pipelineExecutionEncoder : PipelineExecution -> JE.Value
pipelineExecutionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pipelineName", data.pipelineName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("pipelineVersion", data.pipelineVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pipelineExecutionId", data.pipelineExecutionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (pipelineExecutionStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (artifactRevisionEncoder))
            ("artifactRevisions", data.artifactRevisions)
        
        
        |> JE.object










pipelineExecutionSummaryEncoder : PipelineExecutionSummary -> JE.Value
pipelineExecutionSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pipelineExecutionId", data.pipelineExecutionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (pipelineExecutionStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("startTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastUpdateTime", data.lastUpdateTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (sourceRevisionEncoder))
            ("sourceRevisions", data.sourceRevisions)
        
        
        |> JE.object






pipelineMetadataEncoder : PipelineMetadata -> JE.Value
pipelineMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pipelineArn", data.pipelineArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("created", data.created)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("updated", data.updated)
        
        
        |> JE.object






pipelineSummaryEncoder : PipelineSummary -> JE.Value
pipelineSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("created", data.created)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("updated", data.updated)
        
        
        |> JE.object






pollForJobsInputEncoder : PollForJobsInput -> JE.Value
pollForJobsInputEncoder data =
    []
        
        
        |> (::) ("actionTypeId", data.actionTypeId |> (actionTypeIdEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxBatchSize", data.maxBatchSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("queryParam", data.queryParam)
        
        
        |> JE.object






pollForJobsOutputEncoder : PollForJobsOutput -> JE.Value
pollForJobsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (jobEncoder))
            ("jobs", data.jobs)
        
        
        |> JE.object






pollForThirdPartyJobsInputEncoder : PollForThirdPartyJobsInput -> JE.Value
pollForThirdPartyJobsInputEncoder data =
    []
        
        
        |> (::) ("actionTypeId", data.actionTypeId |> (actionTypeIdEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxBatchSize", data.maxBatchSize)
        
        
        |> JE.object






pollForThirdPartyJobsOutputEncoder : PollForThirdPartyJobsOutput -> JE.Value
pollForThirdPartyJobsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (thirdPartyJobEncoder))
            ("jobs", data.jobs)
        
        
        |> JE.object






putActionRevisionInputEncoder : PutActionRevisionInput -> JE.Value
putActionRevisionInputEncoder data =
    []
        
        
        |> (::) ("pipelineName", data.pipelineName |> (JE.string))
        
        
        
        |> (::) ("stageName", data.stageName |> (JE.string))
        
        
        
        |> (::) ("actionName", data.actionName |> (JE.string))
        
        
        
        |> (::) ("actionRevision", data.actionRevision |> (actionRevisionEncoder))
        
        
        |> JE.object






putActionRevisionOutputEncoder : PutActionRevisionOutput -> JE.Value
putActionRevisionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("newRevision", data.newRevision)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pipelineExecutionId", data.pipelineExecutionId)
        
        
        |> JE.object






putApprovalResultInputEncoder : PutApprovalResultInput -> JE.Value
putApprovalResultInputEncoder data =
    []
        
        
        |> (::) ("pipelineName", data.pipelineName |> (JE.string))
        
        
        
        |> (::) ("stageName", data.stageName |> (JE.string))
        
        
        
        |> (::) ("actionName", data.actionName |> (JE.string))
        
        
        
        |> (::) ("result", data.result |> (approvalResultEncoder))
        
        
        
        |> (::) ("token", data.token |> (JE.string))
        
        
        |> JE.object






putApprovalResultOutputEncoder : PutApprovalResultOutput -> JE.Value
putApprovalResultOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("approvedAt", data.approvedAt)
        
        
        |> JE.object






putJobFailureResultInputEncoder : PutJobFailureResultInput -> JE.Value
putJobFailureResultInputEncoder data =
    []
        
        
        |> (::) ("jobId", data.jobId |> (JE.string))
        
        
        
        |> (::) ("failureDetails", data.failureDetails |> (failureDetailsEncoder))
        
        
        |> JE.object






putJobSuccessResultInputEncoder : PutJobSuccessResultInput -> JE.Value
putJobSuccessResultInputEncoder data =
    []
        
        
        |> (::) ("jobId", data.jobId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (currentRevisionEncoder)
            ("currentRevision", data.currentRevision)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("continuationToken", data.continuationToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionDetailsEncoder)
            ("executionDetails", data.executionDetails)
        
        
        |> JE.object






putThirdPartyJobFailureResultInputEncoder : PutThirdPartyJobFailureResultInput -> JE.Value
putThirdPartyJobFailureResultInputEncoder data =
    []
        
        
        |> (::) ("jobId", data.jobId |> (JE.string))
        
        
        
        |> (::) ("clientToken", data.clientToken |> (JE.string))
        
        
        
        |> (::) ("failureDetails", data.failureDetails |> (failureDetailsEncoder))
        
        
        |> JE.object






putThirdPartyJobSuccessResultInputEncoder : PutThirdPartyJobSuccessResultInput -> JE.Value
putThirdPartyJobSuccessResultInputEncoder data =
    []
        
        
        |> (::) ("jobId", data.jobId |> (JE.string))
        
        
        
        |> (::) ("clientToken", data.clientToken |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (currentRevisionEncoder)
            ("currentRevision", data.currentRevision)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("continuationToken", data.continuationToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionDetailsEncoder)
            ("executionDetails", data.executionDetails)
        
        
        |> JE.object






putWebhookInputEncoder : PutWebhookInput -> JE.Value
putWebhookInputEncoder data =
    []
        
        
        |> (::) ("webhook", data.webhook |> (webhookDefinitionEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






putWebhookOutputEncoder : PutWebhookOutput -> JE.Value
putWebhookOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (listWebhookItemEncoder)
            ("webhook", data.webhook)
        
        
        |> JE.object






registerWebhookWithThirdPartyInputEncoder : RegisterWebhookWithThirdPartyInput -> JE.Value
registerWebhookWithThirdPartyInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("webhookName", data.webhookName)
        
        
        |> JE.object






registerWebhookWithThirdPartyOutputEncoder : RegisterWebhookWithThirdPartyOutput -> JE.Value
registerWebhookWithThirdPartyOutputEncoder data =
    []
        
        |> JE.object






retryStageExecutionInputEncoder : RetryStageExecutionInput -> JE.Value
retryStageExecutionInputEncoder data =
    []
        
        
        |> (::) ("pipelineName", data.pipelineName |> (JE.string))
        
        
        
        |> (::) ("stageName", data.stageName |> (JE.string))
        
        
        
        |> (::) ("pipelineExecutionId", data.pipelineExecutionId |> (JE.string))
        
        
        
        |> (::) ("retryMode", data.retryMode |> (stageRetryModeToString >> JE.string))
        
        
        |> JE.object






retryStageExecutionOutputEncoder : RetryStageExecutionOutput -> JE.Value
retryStageExecutionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pipelineExecutionId", data.pipelineExecutionId)
        
        
        |> JE.object






s3ArtifactLocationEncoder : S3ArtifactLocation -> JE.Value
s3ArtifactLocationEncoder data =
    []
        
        
        |> (::) ("bucketName", data.bucketName |> (JE.string))
        
        
        
        |> (::) ("objectKey", data.objectKey |> (JE.string))
        
        
        |> JE.object






s3LocationEncoder : S3Location -> JE.Value
s3LocationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("bucket", data.bucket)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("key", data.key)
        
        
        |> JE.object






sourceRevisionEncoder : SourceRevision -> JE.Value
sourceRevisionEncoder data =
    []
        
        
        |> (::) ("actionName", data.actionName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("revisionId", data.revisionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("revisionSummary", data.revisionSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("revisionUrl", data.revisionUrl)
        
        
        |> JE.object






stageContextEncoder : StageContext -> JE.Value
stageContextEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        |> JE.object






stageDeclarationEncoder : StageDeclaration -> JE.Value
stageDeclarationEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (blockerDeclarationEncoder))
            ("blockers", data.blockers)
        
        
        
        |> (::) ("actions", data.actions |> (JE.list (actionDeclarationEncoder)))
        
        
        |> JE.object






stageExecutionEncoder : StageExecution -> JE.Value
stageExecutionEncoder data =
    []
        
        
        |> (::) ("pipelineExecutionId", data.pipelineExecutionId |> (JE.string))
        
        
        
        |> (::) ("status", data.status |> (stageExecutionStatusToString >> JE.string))
        
        
        |> JE.object














stageStateEncoder : StageState -> JE.Value
stageStateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("stageName", data.stageName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (transitionStateEncoder)
            ("inboundTransitionState", data.inboundTransitionState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (actionStateEncoder))
            ("actionStates", data.actionStates)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stageExecutionEncoder)
            ("latestExecution", data.latestExecution)
        
        
        |> JE.object










startPipelineExecutionInputEncoder : StartPipelineExecutionInput -> JE.Value
startPipelineExecutionInputEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        |> JE.object






startPipelineExecutionOutputEncoder : StartPipelineExecutionOutput -> JE.Value
startPipelineExecutionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pipelineExecutionId", data.pipelineExecutionId)
        
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("key", data.key |> (JE.string))
        
        
        
        |> (::) ("value", data.value |> (JE.string))
        
        
        |> JE.object






tagResourceInputEncoder : TagResourceInput -> JE.Value
tagResourceInputEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object






tagResourceOutputEncoder : TagResourceOutput -> JE.Value
tagResourceOutputEncoder data =
    []
        
        |> JE.object






thirdPartyJobEncoder : ThirdPartyJob -> JE.Value
thirdPartyJobEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientId", data.clientId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("jobId", data.jobId)
        
        
        |> JE.object






thirdPartyJobDataEncoder : ThirdPartyJobData -> JE.Value
thirdPartyJobDataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (actionTypeIdEncoder)
            ("actionTypeId", data.actionTypeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (actionConfigurationEncoder)
            ("actionConfiguration", data.actionConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (pipelineContextEncoder)
            ("pipelineContext", data.pipelineContext)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (artifactEncoder))
            ("inputArtifacts", data.inputArtifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (artifactEncoder))
            ("outputArtifacts", data.outputArtifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (aWSSessionCredentialsEncoder)
            ("artifactCredentials", data.artifactCredentials)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("continuationToken", data.continuationToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (encryptionKeyEncoder)
            ("encryptionKey", data.encryptionKey)
        
        
        |> JE.object






thirdPartyJobDetailsEncoder : ThirdPartyJobDetails -> JE.Value
thirdPartyJobDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (thirdPartyJobDataEncoder)
            ("data", data.data)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nonce", data.nonce)
        
        
        |> JE.object






transitionStateEncoder : TransitionState -> JE.Value
transitionStateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("enabled", data.enabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lastChangedBy", data.lastChangedBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastChangedAt", data.lastChangedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("disabledReason", data.disabledReason)
        
        
        |> JE.object






untagResourceInputEncoder : UntagResourceInput -> JE.Value
untagResourceInputEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("tagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






untagResourceOutputEncoder : UntagResourceOutput -> JE.Value
untagResourceOutputEncoder data =
    []
        
        |> JE.object






updatePipelineInputEncoder : UpdatePipelineInput -> JE.Value
updatePipelineInputEncoder data =
    []
        
        
        |> (::) ("pipeline", data.pipeline |> (pipelineDeclarationEncoder))
        
        
        |> JE.object






updatePipelineOutputEncoder : UpdatePipelineOutput -> JE.Value
updatePipelineOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (pipelineDeclarationEncoder)
            ("pipeline", data.pipeline)
        
        
        |> JE.object






webhookAuthConfigurationEncoder : WebhookAuthConfiguration -> JE.Value
webhookAuthConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AllowedIPRange", data.allowedIPRange)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecretToken", data.secretToken)
        
        
        |> JE.object










webhookDefinitionEncoder : WebhookDefinition -> JE.Value
webhookDefinitionEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("targetPipeline", data.targetPipeline |> (JE.string))
        
        
        
        |> (::) ("targetAction", data.targetAction |> (JE.string))
        
        
        
        |> (::) ("filters", data.filters |> (JE.list (webhookFilterRuleEncoder)))
        
        
        
        |> (::) ("authentication", data.authentication |> (webhookAuthenticationTypeToString >> JE.string))
        
        
        
        |> (::) ("authenticationConfiguration", data.authenticationConfiguration |> (webhookAuthConfigurationEncoder))
        
        
        |> JE.object






webhookFilterRuleEncoder : WebhookFilterRule -> JE.Value
webhookFilterRuleEncoder data =
    []
        
        
        |> (::) ("jsonPath", data.jsonPath |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("matchEquals", data.matchEquals)
        
        
        |> JE.object





