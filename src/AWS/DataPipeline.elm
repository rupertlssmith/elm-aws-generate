module AWS.DataPipeline
    exposing
        ( service
        , activatePipeline
        , ActivatePipelineOptions
        , addTags
        , createPipeline
        , CreatePipelineOptions
        , deactivatePipeline
        , DeactivatePipelineOptions
        , deletePipeline
        , describeObjects
        , DescribeObjectsOptions
        , describePipelines
        , evaluateExpression
        , getPipelineDefinition
        , GetPipelineDefinitionOptions
        , listPipelines
        , ListPipelinesOptions
        , pollForTask
        , PollForTaskOptions
        , putPipelineDefinition
        , PutPipelineDefinitionOptions
        , queryObjects
        , QueryObjectsOptions
        , removeTags
        , reportTaskProgress
        , ReportTaskProgressOptions
        , reportTaskRunnerHeartbeat
        , ReportTaskRunnerHeartbeatOptions
        , setStatus
        , setTaskStatus
        , SetTaskStatusOptions
        , validatePipelineDefinition
        , ValidatePipelineDefinitionOptions
        , ActivatePipelineOutput
        , AddTagsOutput
        , CreatePipelineOutput
        , DeactivatePipelineOutput
        , DescribeObjectsOutput
        , DescribePipelinesOutput
        , EvaluateExpressionOutput
        , Field
        , GetPipelineDefinitionOutput
        , InstanceIdentity
        , InternalServiceError
        , InvalidRequestException
        , ListPipelinesOutput
        , Operator
        , OperatorType(..)
        , ParameterAttribute
        , ParameterObject
        , ParameterValue
        , PipelineDeletedException
        , PipelineDescription
        , PipelineIdName
        , PipelineNotFoundException
        , PipelineObject
        , PollForTaskOutput
        , PutPipelineDefinitionOutput
        , Query
        , QueryObjectsOutput
        , RemoveTagsOutput
        , ReportTaskProgressOutput
        , ReportTaskRunnerHeartbeatOutput
        , Selector
        , SetTaskStatusOutput
        , Tag
        , TaskNotFoundException
        , TaskObject
        , TaskStatus(..)
        , ValidatePipelineDefinitionOutput
        , ValidationError
        , ValidationWarning
        )

{-| <p>AWS Data Pipeline configures and manages a data-driven workflow called a pipeline. AWS Data Pipeline handles the details of scheduling and ensuring that data dependencies are met so that your application can focus on processing the data.</p> <p>AWS Data Pipeline provides a JAR implementation of a task runner called AWS Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides logic for common data management scenarios, such as performing database queries and running data analysis using Amazon Elastic MapReduce (Amazon EMR). You can use AWS Data Pipeline Task Runner as your task runner, or you can write your own task runner to provide custom data management.</p> <p>AWS Data Pipeline implements two main sets of functionality. Use the first set to create a pipeline and define data sources, schedules, dependencies, and the transforms to be performed on the data. Use the second set in your task runner application to receive the next task ready for processing. The logic for performing the task, such as querying the data, running data analysis, or converting the data from one format to another, is contained within the task runner. The task runner performs the task assigned to it by the web service, reporting progress to the web service as it does so. When the task is done, the task runner reports the final success or failure of the task to the web service.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [activatePipeline](#activatePipeline)
* [ActivatePipelineOptions](#ActivatePipelineOptions)
* [addTags](#addTags)
* [createPipeline](#createPipeline)
* [CreatePipelineOptions](#CreatePipelineOptions)
* [deactivatePipeline](#deactivatePipeline)
* [DeactivatePipelineOptions](#DeactivatePipelineOptions)
* [deletePipeline](#deletePipeline)
* [describeObjects](#describeObjects)
* [DescribeObjectsOptions](#DescribeObjectsOptions)
* [describePipelines](#describePipelines)
* [evaluateExpression](#evaluateExpression)
* [getPipelineDefinition](#getPipelineDefinition)
* [GetPipelineDefinitionOptions](#GetPipelineDefinitionOptions)
* [listPipelines](#listPipelines)
* [ListPipelinesOptions](#ListPipelinesOptions)
* [pollForTask](#pollForTask)
* [PollForTaskOptions](#PollForTaskOptions)
* [putPipelineDefinition](#putPipelineDefinition)
* [PutPipelineDefinitionOptions](#PutPipelineDefinitionOptions)
* [queryObjects](#queryObjects)
* [QueryObjectsOptions](#QueryObjectsOptions)
* [removeTags](#removeTags)
* [reportTaskProgress](#reportTaskProgress)
* [ReportTaskProgressOptions](#ReportTaskProgressOptions)
* [reportTaskRunnerHeartbeat](#reportTaskRunnerHeartbeat)
* [ReportTaskRunnerHeartbeatOptions](#ReportTaskRunnerHeartbeatOptions)
* [setStatus](#setStatus)
* [setTaskStatus](#setTaskStatus)
* [SetTaskStatusOptions](#SetTaskStatusOptions)
* [validatePipelineDefinition](#validatePipelineDefinition)
* [ValidatePipelineDefinitionOptions](#ValidatePipelineDefinitionOptions)


@docs activatePipeline,ActivatePipelineOptions,addTags,createPipeline,CreatePipelineOptions,deactivatePipeline,DeactivatePipelineOptions,deletePipeline,describeObjects,DescribeObjectsOptions,describePipelines,evaluateExpression,getPipelineDefinition,GetPipelineDefinitionOptions,listPipelines,ListPipelinesOptions,pollForTask,PollForTaskOptions,putPipelineDefinition,PutPipelineDefinitionOptions,queryObjects,QueryObjectsOptions,removeTags,reportTaskProgress,ReportTaskProgressOptions,reportTaskRunnerHeartbeat,ReportTaskRunnerHeartbeatOptions,setStatus,setTaskStatus,SetTaskStatusOptions,validatePipelineDefinition,ValidatePipelineDefinitionOptions

## Responses

* [ActivatePipelineOutput](#ActivatePipelineOutput)
* [AddTagsOutput](#AddTagsOutput)
* [CreatePipelineOutput](#CreatePipelineOutput)
* [DeactivatePipelineOutput](#DeactivatePipelineOutput)
* [DescribeObjectsOutput](#DescribeObjectsOutput)
* [DescribePipelinesOutput](#DescribePipelinesOutput)
* [EvaluateExpressionOutput](#EvaluateExpressionOutput)
* [GetPipelineDefinitionOutput](#GetPipelineDefinitionOutput)
* [ListPipelinesOutput](#ListPipelinesOutput)
* [PollForTaskOutput](#PollForTaskOutput)
* [PutPipelineDefinitionOutput](#PutPipelineDefinitionOutput)
* [QueryObjectsOutput](#QueryObjectsOutput)
* [RemoveTagsOutput](#RemoveTagsOutput)
* [ReportTaskProgressOutput](#ReportTaskProgressOutput)
* [ReportTaskRunnerHeartbeatOutput](#ReportTaskRunnerHeartbeatOutput)
* [SetTaskStatusOutput](#SetTaskStatusOutput)
* [ValidatePipelineDefinitionOutput](#ValidatePipelineDefinitionOutput)


@docs ActivatePipelineOutput,AddTagsOutput,CreatePipelineOutput,DeactivatePipelineOutput,DescribeObjectsOutput,DescribePipelinesOutput,EvaluateExpressionOutput,GetPipelineDefinitionOutput,ListPipelinesOutput,PollForTaskOutput,PutPipelineDefinitionOutput,QueryObjectsOutput,RemoveTagsOutput,ReportTaskProgressOutput,ReportTaskRunnerHeartbeatOutput,SetTaskStatusOutput,ValidatePipelineDefinitionOutput

## Records

* [Field](#Field)
* [InstanceIdentity](#InstanceIdentity)
* [Operator](#Operator)
* [ParameterAttribute](#ParameterAttribute)
* [ParameterObject](#ParameterObject)
* [ParameterValue](#ParameterValue)
* [PipelineDescription](#PipelineDescription)
* [PipelineIdName](#PipelineIdName)
* [PipelineObject](#PipelineObject)
* [Query](#Query)
* [Selector](#Selector)
* [Tag](#Tag)
* [TaskObject](#TaskObject)
* [ValidationError](#ValidationError)
* [ValidationWarning](#ValidationWarning)


@docs Field,InstanceIdentity,Operator,ParameterAttribute,ParameterObject,ParameterValue,PipelineDescription,PipelineIdName,PipelineObject,Query,Selector,Tag,TaskObject,ValidationError,ValidationWarning

## Unions

* [OperatorType](#OperatorType)
* [TaskStatus](#TaskStatus)


@docs OperatorType,TaskStatus

## Exceptions

* [InternalServiceError](#InternalServiceError)
* [InvalidRequestException](#InvalidRequestException)
* [PipelineDeletedException](#PipelineDeletedException)
* [PipelineNotFoundException](#PipelineNotFoundException)
* [TaskNotFoundException](#TaskNotFoundException)


@docs InternalServiceError,InvalidRequestException,PipelineDeletedException,PipelineNotFoundException,TaskNotFoundException

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
        "datapipeline"
        "2012-10-29"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "DataPipeline")



-- OPERATIONS

{-| <p>Validates the specified pipeline and starts processing pipeline tasks. If the pipeline does not pass validation, activation fails.</p> <p>If you need to pause the pipeline to investigate an issue with a component, such as a data source or script, call <a>DeactivatePipeline</a>.</p> <p>To activate a finished pipeline, modify the end date for the pipeline and then activate it.</p>

__Required Parameters__

* `pipelineId` __:__ `String`


-}

activatePipeline :
  
    String ->
  
  
    ( ActivatePipelineOptions -> ActivatePipelineOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ActivatePipelineOutput)

activatePipeline pipelineId setOptions =
    
    let
        requestInput = ActivatePipelineInput
            
            pipelineId
            
            options.parameterValues
            
            options.startTimestamp
            
        
        options = setOptions (ActivatePipelineOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> activatePipelineInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ActivatePipeline"
                
                (AWS.Core.Decode.ResultDecoder "ActivatePipelineOutput" activatePipelineOutputDecoder)
                
            )



{-| Options for a activatePipeline request
-}
type alias ActivatePipelineOptions =
    {
    parameterValues : Maybe (List ParameterValue),startTimestamp : Maybe Posix
    }



{-| <p>Adds or modifies tags for the specified pipeline.</p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

addTags :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddTagsOutput)

addTags pipelineId tags =
    
    let
        requestInput = AddTagsInput
            
            pipelineId
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> addTagsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddTags"
                
                (AWS.Core.Decode.ResultDecoder "AddTagsOutput" addTagsOutputDecoder)
                
            )





{-| <p>Creates a new, empty pipeline. Use <a>PutPipelineDefinition</a> to populate the pipeline.</p>

__Required Parameters__

* `name` __:__ `String`
* `uniqueId` __:__ `String`


-}

createPipeline :
  
    String ->
  
    String ->
  
  
    ( CreatePipelineOptions -> CreatePipelineOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreatePipelineOutput)

createPipeline name uniqueId setOptions =
    
    let
        requestInput = CreatePipelineInput
            
            name
            
            uniqueId
            
            options.description
            
            options.tags
            
        
        options = setOptions (CreatePipelineOptions Nothing Nothing)
        
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
    description : Maybe String,tags : Maybe (List Tag)
    }



{-| <p>Deactivates the specified running pipeline. The pipeline is set to the <code>DEACTIVATING</code> state until the deactivation process completes.</p> <p>To resume a deactivated pipeline, use <a>ActivatePipeline</a>. By default, the pipeline resumes from the last completed execution. Optionally, you can specify the date and time to resume the pipeline.</p>

__Required Parameters__

* `pipelineId` __:__ `String`


-}

deactivatePipeline :
  
    String ->
  
  
    ( DeactivatePipelineOptions -> DeactivatePipelineOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeactivatePipelineOutput)

deactivatePipeline pipelineId setOptions =
    
    let
        requestInput = DeactivatePipelineInput
            
            pipelineId
            
            options.cancelActive
            
        
        options = setOptions (DeactivatePipelineOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deactivatePipelineInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeactivatePipeline"
                
                (AWS.Core.Decode.ResultDecoder "DeactivatePipelineOutput" deactivatePipelineOutputDecoder)
                
            )



{-| Options for a deactivatePipeline request
-}
type alias DeactivatePipelineOptions =
    {
    cancelActive : Maybe Bool
    }



{-| <p>Deletes a pipeline, its pipeline definition, and its run history. AWS Data Pipeline attempts to cancel instances associated with the pipeline that are currently being processed by task runners.</p> <p>Deleting a pipeline cannot be undone. You cannot query or restore a deleted pipeline. To temporarily pause a pipeline instead of deleting it, call <a>SetStatus</a> with the status set to <code>PAUSE</code> on individual components. Components that are paused by <a>SetStatus</a> can be resumed.</p>

__Required Parameters__

* `pipelineId` __:__ `String`


-}

deletePipeline :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deletePipeline pipelineId =
    
    let
        requestInput = DeletePipelineInput
            
            pipelineId
            
        
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





{-| <p>Gets the object definitions for a set of objects associated with the pipeline. Object definitions are composed of a set of fields that define the properties of the object.</p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `objectIds` __:__ `(List String)`


-}

describeObjects :
  
    String ->
  
    (List String) ->
  
  
    ( DescribeObjectsOptions -> DescribeObjectsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeObjectsOutput)

describeObjects pipelineId objectIds setOptions =
    
    let
        requestInput = DescribeObjectsInput
            
            pipelineId
            
            objectIds
            
            options.evaluateExpressions
            
            options.marker
            
        
        options = setOptions (DescribeObjectsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeObjectsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeObjects"
                
                (AWS.Core.Decode.ResultDecoder "DescribeObjectsOutput" describeObjectsOutputDecoder)
                
            )



{-| Options for a describeObjects request
-}
type alias DescribeObjectsOptions =
    {
    evaluateExpressions : Maybe Bool,marker : Maybe String
    }



{-| <p>Retrieves metadata about one or more pipelines. The information retrieved includes the name of the pipeline, the pipeline identifier, its current state, and the user account that owns the pipeline. Using account credentials, you can retrieve metadata about pipelines that you or your IAM users have created. If you are using an IAM user account, you can retrieve metadata about only those pipelines for which you have read permissions.</p> <p>To retrieve the full pipeline definition instead of metadata about the pipeline, call <a>GetPipelineDefinition</a>.</p>

__Required Parameters__

* `pipelineIds` __:__ `(List String)`


-}

describePipelines :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribePipelinesOutput)

describePipelines pipelineIds =
    
    let
        requestInput = DescribePipelinesInput
            
            pipelineIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describePipelinesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribePipelines"
                
                (AWS.Core.Decode.ResultDecoder "DescribePipelinesOutput" describePipelinesOutputDecoder)
                
            )





{-| <p>Task runners call <code>EvaluateExpression</code> to evaluate a string in the context of the specified object. For example, a task runner can evaluate SQL queries stored in Amazon S3.</p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `objectId` __:__ `String`
* `expression` __:__ `String`


-}

evaluateExpression :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EvaluateExpressionOutput)

evaluateExpression pipelineId objectId expression =
    
    let
        requestInput = EvaluateExpressionInput
            
            pipelineId
            
            objectId
            
            expression
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> evaluateExpressionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "EvaluateExpression"
                
                (AWS.Core.Decode.ResultDecoder "EvaluateExpressionOutput" evaluateExpressionOutputDecoder)
                
            )





{-| <p>Gets the definition of the specified pipeline. You can call <code>GetPipelineDefinition</code> to retrieve the pipeline definition that you provided using <a>PutPipelineDefinition</a>.</p>

__Required Parameters__

* `pipelineId` __:__ `String`


-}

getPipelineDefinition :
  
    String ->
  
  
    ( GetPipelineDefinitionOptions -> GetPipelineDefinitionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetPipelineDefinitionOutput)

getPipelineDefinition pipelineId setOptions =
    
    let
        requestInput = GetPipelineDefinitionInput
            
            pipelineId
            
            options.version
            
        
        options = setOptions (GetPipelineDefinitionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getPipelineDefinitionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetPipelineDefinition"
                
                (AWS.Core.Decode.ResultDecoder "GetPipelineDefinitionOutput" getPipelineDefinitionOutputDecoder)
                
            )



{-| Options for a getPipelineDefinition request
-}
type alias GetPipelineDefinitionOptions =
    {
    version : Maybe String
    }



{-| <p>Lists the pipeline identifiers for all active pipelines that you have permission to access.</p>

__Required Parameters__



-}

listPipelines :
  
  
    ( ListPipelinesOptions -> ListPipelinesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPipelinesOutput)

listPipelines setOptions =
    
    let
        requestInput = ListPipelinesInput
            
            options.marker
            
        
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
    marker : Maybe String
    }



{-| <p>Task runners call <code>PollForTask</code> to receive a task to perform from AWS Data Pipeline. The task runner specifies which tasks it can perform by setting a value for the <code>workerGroup</code> parameter. The task returned can come from any of the pipelines that match the <code>workerGroup</code> value passed in by the task runner and that was launched using the IAM user credentials specified by the task runner.</p> <p>If tasks are ready in the work queue, <code>PollForTask</code> returns a response immediately. If no tasks are available in the queue, <code>PollForTask</code> uses long-polling and holds on to a poll connection for up to a 90 seconds, during which time the first newly scheduled task is handed to the task runner. To accomodate this, set the socket timeout in your task runner to 90 seconds. The task runner should not call <code>PollForTask</code> again on the same <code>workerGroup</code> until it receives a response, and this can take up to 90 seconds. </p>

__Required Parameters__

* `workerGroup` __:__ `String`


-}

pollForTask :
  
    String ->
  
  
    ( PollForTaskOptions -> PollForTaskOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PollForTaskOutput)

pollForTask workerGroup setOptions =
    
    let
        requestInput = PollForTaskInput
            
            workerGroup
            
            options.hostname
            
            options.instanceIdentity
            
        
        options = setOptions (PollForTaskOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> pollForTaskInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PollForTask"
                
                (AWS.Core.Decode.ResultDecoder "PollForTaskOutput" pollForTaskOutputDecoder)
                
            )



{-| Options for a pollForTask request
-}
type alias PollForTaskOptions =
    {
    hostname : Maybe String,instanceIdentity : Maybe InstanceIdentity
    }



{-| <p>Adds tasks, schedules, and preconditions to the specified pipeline. You can use <code>PutPipelineDefinition</code> to populate a new pipeline.</p> <p> <code>PutPipelineDefinition</code> also validates the configuration as it adds it to the pipeline. Changes to the pipeline are saved unless one of the following three validation errors exists in the pipeline. </p> <ol> <li>An object is missing a name or identifier field.</li> <li>A string or reference field is empty.</li> <li>The number of objects in the pipeline exceeds the maximum allowed objects.</li> <li>The pipeline is in a FINISHED state.</li> </ol> <p> Pipeline object definitions are passed to the <code>PutPipelineDefinition</code> action and returned by the <a>GetPipelineDefinition</a> action. </p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `pipelineObjects` __:__ `(List PipelineObject)`


-}

putPipelineDefinition :
  
    String ->
  
    (List PipelineObject) ->
  
  
    ( PutPipelineDefinitionOptions -> PutPipelineDefinitionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutPipelineDefinitionOutput)

putPipelineDefinition pipelineId pipelineObjects setOptions =
    
    let
        requestInput = PutPipelineDefinitionInput
            
            pipelineId
            
            pipelineObjects
            
            options.parameterObjects
            
            options.parameterValues
            
        
        options = setOptions (PutPipelineDefinitionOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putPipelineDefinitionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutPipelineDefinition"
                
                (AWS.Core.Decode.ResultDecoder "PutPipelineDefinitionOutput" putPipelineDefinitionOutputDecoder)
                
            )



{-| Options for a putPipelineDefinition request
-}
type alias PutPipelineDefinitionOptions =
    {
    parameterObjects : Maybe (List ParameterObject),parameterValues : Maybe (List ParameterValue)
    }



{-| <p>Queries the specified pipeline for the names of objects that match the specified set of conditions.</p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `sphere` __:__ `String`


-}

queryObjects :
  
    String ->
  
    String ->
  
  
    ( QueryObjectsOptions -> QueryObjectsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper QueryObjectsOutput)

queryObjects pipelineId sphere setOptions =
    
    let
        requestInput = QueryObjectsInput
            
            pipelineId
            
            options.query
            
            sphere
            
            options.marker
            
            options.limit
            
        
        options = setOptions (QueryObjectsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> queryObjectsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "QueryObjects"
                
                (AWS.Core.Decode.ResultDecoder "QueryObjectsOutput" queryObjectsOutputDecoder)
                
            )



{-| Options for a queryObjects request
-}
type alias QueryObjectsOptions =
    {
    query : Maybe Query,marker : Maybe String,limit : Maybe Int
    }



{-| <p>Removes existing tags from the specified pipeline.</p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

removeTags :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveTagsOutput)

removeTags pipelineId tagKeys =
    
    let
        requestInput = RemoveTagsInput
            
            pipelineId
            
            tagKeys
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> removeTagsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemoveTags"
                
                (AWS.Core.Decode.ResultDecoder "RemoveTagsOutput" removeTagsOutputDecoder)
                
            )





{-| <p>Task runners call <code>ReportTaskProgress</code> when assigned a task to acknowledge that it has the task. If the web service does not receive this acknowledgement within 2 minutes, it assigns the task in a subsequent <a>PollForTask</a> call. After this initial acknowledgement, the task runner only needs to report progress every 15 minutes to maintain its ownership of the task. You can change this reporting time from 15 minutes by specifying a <code>reportProgressTimeout</code> field in your pipeline.</p> <p>If a task runner does not report its status after 5 minutes, AWS Data Pipeline assumes that the task runner is unable to process the task and reassigns the task in a subsequent response to <a>PollForTask</a>. Task runners should call <code>ReportTaskProgress</code> every 60 seconds.</p>

__Required Parameters__

* `taskId` __:__ `String`


-}

reportTaskProgress :
  
    String ->
  
  
    ( ReportTaskProgressOptions -> ReportTaskProgressOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReportTaskProgressOutput)

reportTaskProgress taskId setOptions =
    
    let
        requestInput = ReportTaskProgressInput
            
            taskId
            
            options.fields
            
        
        options = setOptions (ReportTaskProgressOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> reportTaskProgressInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ReportTaskProgress"
                
                (AWS.Core.Decode.ResultDecoder "ReportTaskProgressOutput" reportTaskProgressOutputDecoder)
                
            )



{-| Options for a reportTaskProgress request
-}
type alias ReportTaskProgressOptions =
    {
    fields : Maybe (List Field)
    }



{-| <p>Task runners call <code>ReportTaskRunnerHeartbeat</code> every 15 minutes to indicate that they are operational. If the AWS Data Pipeline Task Runner is launched on a resource managed by AWS Data Pipeline, the web service can use this call to detect when the task runner application has failed and restart a new instance.</p>

__Required Parameters__

* `taskrunnerId` __:__ `String`


-}

reportTaskRunnerHeartbeat :
  
    String ->
  
  
    ( ReportTaskRunnerHeartbeatOptions -> ReportTaskRunnerHeartbeatOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReportTaskRunnerHeartbeatOutput)

reportTaskRunnerHeartbeat taskrunnerId setOptions =
    
    let
        requestInput = ReportTaskRunnerHeartbeatInput
            
            taskrunnerId
            
            options.workerGroup
            
            options.hostname
            
        
        options = setOptions (ReportTaskRunnerHeartbeatOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> reportTaskRunnerHeartbeatInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ReportTaskRunnerHeartbeat"
                
                (AWS.Core.Decode.ResultDecoder "ReportTaskRunnerHeartbeatOutput" reportTaskRunnerHeartbeatOutputDecoder)
                
            )



{-| Options for a reportTaskRunnerHeartbeat request
-}
type alias ReportTaskRunnerHeartbeatOptions =
    {
    workerGroup : Maybe String,hostname : Maybe String
    }



{-| <p>Requests that the status of the specified physical or logical pipeline objects be updated in the specified pipeline. This update might not occur immediately, but is eventually consistent. The status that can be set depends on the type of object (for example, DataNode or Activity). You cannot perform this operation on <code>FINISHED</code> pipelines and attempting to do so returns <code>InvalidRequestException</code>.</p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `objectIds` __:__ `(List String)`
* `status` __:__ `String`


-}

setStatus :
  
    String ->
  
    (List String) ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

setStatus pipelineId objectIds status =
    
    let
        requestInput = SetStatusInput
            
            pipelineId
            
            objectIds
            
            status
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> setStatusInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetStatus"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Task runners call <code>SetTaskStatus</code> to notify AWS Data Pipeline that a task is completed and provide information about the final status. A task runner makes this call regardless of whether the task was sucessful. A task runner does not need to call <code>SetTaskStatus</code> for tasks that are canceled by the web service during a call to <a>ReportTaskProgress</a>.</p>

__Required Parameters__

* `taskId` __:__ `String`
* `taskStatus` __:__ `TaskStatus`


-}

setTaskStatus :
  
    String ->
  
    TaskStatus ->
  
  
    ( SetTaskStatusOptions -> SetTaskStatusOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetTaskStatusOutput)

setTaskStatus taskId taskStatus setOptions =
    
    let
        requestInput = SetTaskStatusInput
            
            taskId
            
            taskStatus
            
            options.errorId
            
            options.errorMessage
            
            options.errorStackTrace
            
        
        options = setOptions (SetTaskStatusOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> setTaskStatusInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetTaskStatus"
                
                (AWS.Core.Decode.ResultDecoder "SetTaskStatusOutput" setTaskStatusOutputDecoder)
                
            )



{-| Options for a setTaskStatus request
-}
type alias SetTaskStatusOptions =
    {
    errorId : Maybe String,errorMessage : Maybe String,errorStackTrace : Maybe String
    }



{-| <p>Validates the specified pipeline definition to ensure that it is well formed and can be run without error.</p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `pipelineObjects` __:__ `(List PipelineObject)`


-}

validatePipelineDefinition :
  
    String ->
  
    (List PipelineObject) ->
  
  
    ( ValidatePipelineDefinitionOptions -> ValidatePipelineDefinitionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ValidatePipelineDefinitionOutput)

validatePipelineDefinition pipelineId pipelineObjects setOptions =
    
    let
        requestInput = ValidatePipelineDefinitionInput
            
            pipelineId
            
            pipelineObjects
            
            options.parameterObjects
            
            options.parameterValues
            
        
        options = setOptions (ValidatePipelineDefinitionOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> validatePipelineDefinitionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ValidatePipelineDefinition"
                
                (AWS.Core.Decode.ResultDecoder "ValidatePipelineDefinitionOutput" validatePipelineDefinitionOutputDecoder)
                
            )



{-| Options for a validatePipelineDefinition request
-}
type alias ValidatePipelineDefinitionOptions =
    {
    parameterObjects : Maybe (List ParameterObject),parameterValues : Maybe (List ParameterValue)
    }




{-| Type of HTTP response from activatePipeli
-}
type alias ActivatePipelineOutput =
    { 
    }



activatePipelineOutputDecoder : JD.Decoder ActivatePipelineOutput
activatePipelineOutputDecoder =
    JD.succeed ActivatePipelineOutput
        




activatePipelineOutputToString : ActivatePipelineOutput -> String -- List (String, String)
activatePipelineOutputToString val =
    -- Dict.empty
        
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



{-| Type of HTTP response from createPipeli
-}
type alias CreatePipelineOutput =
    { pipelineId : String
    }



createPipelineOutputDecoder : JD.Decoder CreatePipelineOutput
createPipelineOutputDecoder =
    JD.succeed CreatePipelineOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["pipelineId", "PipelineId"]
            JD.string
        )
        




createPipelineOutputToString : CreatePipelineOutput -> String -- List (String, String)
createPipelineOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineId" "" -- val.pipelineId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deactivatePipeli
-}
type alias DeactivatePipelineOutput =
    { 
    }



deactivatePipelineOutputDecoder : JD.Decoder DeactivatePipelineOutput
deactivatePipelineOutputDecoder =
    JD.succeed DeactivatePipelineOutput
        




deactivatePipelineOutputToString : DeactivatePipelineOutput -> String -- List (String, String)
deactivatePipelineOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeObjec
-}
type alias DescribeObjectsOutput =
    { pipelineObjects : (List PipelineObject)
    , marker : Maybe String
    , hasMoreResults : Maybe Bool
    }



describeObjectsOutputDecoder : JD.Decoder DescribeObjectsOutput
describeObjectsOutputDecoder =
    JD.succeed DescribeObjectsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["pipelineObjects", "PipelineObjects"]
            (JD.list pipelineObjectDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["marker", "Marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hasMoreResults", "HasMoreResults"]
            JD.bool
        )
        




describeObjectsOutputToString : DescribeObjectsOutput -> String -- List (String, String)
describeObjectsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineObjects" "" -- val.pipelineObjects
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "hasMoreResults" "" -- val.hasMoreResults
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describePipelin
-}
type alias DescribePipelinesOutput =
    { pipelineDescriptionList : (List PipelineDescription)
    }



describePipelinesOutputDecoder : JD.Decoder DescribePipelinesOutput
describePipelinesOutputDecoder =
    JD.succeed DescribePipelinesOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["pipelineDescriptionList", "PipelineDescriptionList"]
            (JD.list pipelineDescriptionDecoder)
        )
        




describePipelinesOutputToString : DescribePipelinesOutput -> String -- List (String, String)
describePipelinesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineDescriptionList" "" -- val.pipelineDescriptionList
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from evaluateExpressi
-}
type alias EvaluateExpressionOutput =
    { evaluatedExpression : String
    }



evaluateExpressionOutputDecoder : JD.Decoder EvaluateExpressionOutput
evaluateExpressionOutputDecoder =
    JD.succeed EvaluateExpressionOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["evaluatedExpression", "EvaluatedExpression"]
            JD.string
        )
        




evaluateExpressionOutputToString : EvaluateExpressionOutput -> String -- List (String, String)
evaluateExpressionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "evaluatedExpression" "" -- val.evaluatedExpression
        
    --     |> Dict.toList
    ""



{-| <p>A key-value pair that describes a property of a pipeline object. The value is specified as either a string value (<code>StringValue</code>) or a reference to another object (<code>RefValue</code>) but not as both.</p>
-}
type alias Field =
    { key : String
    , stringValue : Maybe String
    , refValue : Maybe String
    }



fieldDecoder : JD.Decoder Field
fieldDecoder =
    JD.succeed Field
        
        |> JDP.custom (AWS.Core.Decode.required
            ["key", "Key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stringValue", "StringValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["refValue", "RefValue"]
            JD.string
        )
        




fieldToString : Field -> String -- List (String, String)
fieldToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "stringValue" "" -- val.stringValue
        
    --     |> Dict.insert
    --         "refValue" "" -- val.refValue
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getPipelineDefiniti
-}
type alias GetPipelineDefinitionOutput =
    { pipelineObjects : Maybe (List PipelineObject)
    , parameterObjects : Maybe (List ParameterObject)
    , parameterValues : Maybe (List ParameterValue)
    }



getPipelineDefinitionOutputDecoder : JD.Decoder GetPipelineDefinitionOutput
getPipelineDefinitionOutputDecoder =
    JD.succeed GetPipelineDefinitionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineObjects", "PipelineObjects"]
            (JD.list pipelineObjectDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["parameterObjects", "ParameterObjects"]
            (JD.list parameterObjectDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["parameterValues", "ParameterValues"]
            (JD.list parameterValueDecoder)
        )
        




getPipelineDefinitionOutputToString : GetPipelineDefinitionOutput -> String -- List (String, String)
getPipelineDefinitionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineObjects" "" -- val.pipelineObjects
        
    --     |> Dict.insert
    --         "parameterObjects" "" -- val.parameterObjects
        
    --     |> Dict.insert
    --         "parameterValues" "" -- val.parameterValues
        
    --     |> Dict.toList
    ""



{-| <p><p>Identity information for the EC2 instance that is hosting the task runner. You can get this value by calling a metadata URI from the EC2 instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p></p>
-}
type alias InstanceIdentity =
    { document : Maybe String
    , signature : Maybe String
    }



instanceIdentityDecoder : JD.Decoder InstanceIdentity
instanceIdentityDecoder =
    JD.succeed InstanceIdentity
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["document", "Document"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["signature", "Signature"]
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



{-| <p>An internal service error occurred.</p>
-}
type alias InternalServiceError =
    { message : Maybe String
    }



internalServiceErrorDecoder : JD.Decoder InternalServiceError
internalServiceErrorDecoder =
    JD.succeed InternalServiceError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




internalServiceErrorToString : InternalServiceError -> String -- List (String, String)
internalServiceErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>
-}
type alias InvalidRequestException =
    { message : Maybe String
    }



invalidRequestExceptionDecoder : JD.Decoder InvalidRequestException
invalidRequestExceptionDecoder =
    JD.succeed InvalidRequestException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




invalidRequestExceptionToString : InvalidRequestException -> String -- List (String, String)
invalidRequestExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listPipelin
-}
type alias ListPipelinesOutput =
    { pipelineIdList : (List PipelineIdName)
    , marker : Maybe String
    , hasMoreResults : Maybe Bool
    }



listPipelinesOutputDecoder : JD.Decoder ListPipelinesOutput
listPipelinesOutputDecoder =
    JD.succeed ListPipelinesOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["pipelineIdList", "PipelineIdList"]
            (JD.list pipelineIdNameDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["marker", "Marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hasMoreResults", "HasMoreResults"]
            JD.bool
        )
        




listPipelinesOutputToString : ListPipelinesOutput -> String -- List (String, String)
listPipelinesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineIdList" "" -- val.pipelineIdList
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "hasMoreResults" "" -- val.hasMoreResults
        
    --     |> Dict.toList
    ""



{-| <p>Contains a logical operation for comparing the value of a field with a specified value.</p>
-}
type alias Operator =
    { type_ : Maybe OperatorType
    , values : Maybe (List String)
    }



operatorDecoder : JD.Decoder Operator
operatorDecoder =
    JD.succeed Operator
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            operatorTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["values", "Values"]
            (JD.list JD.string)
        )
        




operatorToString : Operator -> String -- List (String, String)
operatorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| One of

* `OperatorType_EQ`
* `OperatorType_REF_EQ`
* `OperatorType_LE`
* `OperatorType_GE`
* `OperatorType_BETWEEN`

-}
type OperatorType
    = OperatorType_EQ
    | OperatorType_REF_EQ
    | OperatorType_LE
    | OperatorType_GE
    | OperatorType_BETWEEN



operatorTypeDecoder : JD.Decoder OperatorType
operatorTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EQ" ->
                        JD.succeed OperatorType_EQ

                    "REF_EQ" ->
                        JD.succeed OperatorType_REF_EQ

                    "LE" ->
                        JD.succeed OperatorType_LE

                    "GE" ->
                        JD.succeed OperatorType_GE

                    "BETWEEN" ->
                        JD.succeed OperatorType_BETWEEN


                    _ ->
                        JD.fail "bad thing"
            )




operatorTypeToString : OperatorType -> String
operatorTypeToString val =
    case val of
        OperatorType_EQ ->
            "EQ"

        OperatorType_REF_EQ ->
            "REF_EQ"

        OperatorType_LE ->
            "LE"

        OperatorType_GE ->
            "GE"

        OperatorType_BETWEEN ->
            "BETWEEN"




{-| <p>The attributes allowed or specified with a parameter object.</p>
-}
type alias ParameterAttribute =
    { key : String
    , stringValue : String
    }



parameterAttributeDecoder : JD.Decoder ParameterAttribute
parameterAttributeDecoder =
    JD.succeed ParameterAttribute
        
        |> JDP.custom (AWS.Core.Decode.required
            ["key", "Key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["stringValue", "StringValue"]
            JD.string
        )
        




parameterAttributeToString : ParameterAttribute -> String -- List (String, String)
parameterAttributeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "stringValue" "" -- val.stringValue
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about a parameter object.</p>
-}
type alias ParameterObject =
    { id : String
    , attributes : (List ParameterAttribute)
    }



parameterObjectDecoder : JD.Decoder ParameterObject
parameterObjectDecoder =
    JD.succeed ParameterObject
        
        |> JDP.custom (AWS.Core.Decode.required
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["attributes", "Attributes"]
            (JD.list parameterAttributeDecoder)
        )
        




parameterObjectToString : ParameterObject -> String -- List (String, String)
parameterObjectToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| <p>A value or list of parameter values. </p>
-}
type alias ParameterValue =
    { id : String
    , stringValue : String
    }



parameterValueDecoder : JD.Decoder ParameterValue
parameterValueDecoder =
    JD.succeed ParameterValue
        
        |> JDP.custom (AWS.Core.Decode.required
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["stringValue", "StringValue"]
            JD.string
        )
        




parameterValueToString : ParameterValue -> String -- List (String, String)
parameterValueToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "stringValue" "" -- val.stringValue
        
    --     |> Dict.toList
    ""



{-| <p>The specified pipeline has been deleted.</p>
-}
type alias PipelineDeletedException =
    { message : Maybe String
    }



pipelineDeletedExceptionDecoder : JD.Decoder PipelineDeletedException
pipelineDeletedExceptionDecoder =
    JD.succeed PipelineDeletedException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




pipelineDeletedExceptionToString : PipelineDeletedException -> String -- List (String, String)
pipelineDeletedExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>Contains pipeline metadata.</p>
-}
type alias PipelineDescription =
    { pipelineId : String
    , name : String
    , fields : (List Field)
    , description : Maybe String
    , tags : Maybe (List Tag)
    }



pipelineDescriptionDecoder : JD.Decoder PipelineDescription
pipelineDescriptionDecoder =
    JD.succeed PipelineDescription
        
        |> JDP.custom (AWS.Core.Decode.required
            ["pipelineId", "PipelineId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["fields", "Fields"]
            (JD.list fieldDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




pipelineDescriptionToString : PipelineDescription -> String -- List (String, String)
pipelineDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pipelineId" "" -- val.pipelineId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "fields" "" -- val.fields
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>Contains the name and identifier of a pipeline.</p>
-}
type alias PipelineIdName =
    { id : Maybe String
    , name : Maybe String
    }



pipelineIdNameDecoder : JD.Decoder PipelineIdName
pipelineIdNameDecoder =
    JD.succeed PipelineIdName
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        




pipelineIdNameToString : PipelineIdName -> String -- List (String, String)
pipelineIdNameToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>
-}
type alias PipelineNotFoundException =
    { message : Maybe String
    }



pipelineNotFoundExceptionDecoder : JD.Decoder PipelineNotFoundException
pipelineNotFoundExceptionDecoder =
    JD.succeed PipelineNotFoundException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




pipelineNotFoundExceptionToString : PipelineNotFoundException -> String -- List (String, String)
pipelineNotFoundExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about a pipeline object. This can be a logical, physical, or physical attempt pipeline object. The complete set of components of a pipeline defines the pipeline.</p>
-}
type alias PipelineObject =
    { id : String
    , name : String
    , fields : (List Field)
    }



pipelineObjectDecoder : JD.Decoder PipelineObject
pipelineObjectDecoder =
    JD.succeed PipelineObject
        
        |> JDP.custom (AWS.Core.Decode.required
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["fields", "Fields"]
            (JD.list fieldDecoder)
        )
        




pipelineObjectToString : PipelineObject -> String -- List (String, String)
pipelineObjectToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "fields" "" -- val.fields
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from pollForTa
-}
type alias PollForTaskOutput =
    { taskObject : Maybe TaskObject
    }



pollForTaskOutputDecoder : JD.Decoder PollForTaskOutput
pollForTaskOutputDecoder =
    JD.succeed PollForTaskOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["taskObject", "TaskObject"]
            taskObjectDecoder
        )
        




pollForTaskOutputToString : PollForTaskOutput -> String -- List (String, String)
pollForTaskOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "taskObject" "" -- val.taskObject
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putPipelineDefiniti
-}
type alias PutPipelineDefinitionOutput =
    { validationErrors : Maybe (List ValidationError)
    , validationWarnings : Maybe (List ValidationWarning)
    , errored : Bool
    }



putPipelineDefinitionOutputDecoder : JD.Decoder PutPipelineDefinitionOutput
putPipelineDefinitionOutputDecoder =
    JD.succeed PutPipelineDefinitionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["validationErrors", "ValidationErrors"]
            (JD.list validationErrorDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["validationWarnings", "ValidationWarnings"]
            (JD.list validationWarningDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["errored", "Errored"]
            JD.bool
        )
        




putPipelineDefinitionOutputToString : PutPipelineDefinitionOutput -> String -- List (String, String)
putPipelineDefinitionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "validationErrors" "" -- val.validationErrors
        
    --     |> Dict.insert
    --         "validationWarnings" "" -- val.validationWarnings
        
    --     |> Dict.insert
    --         "errored" "" -- val.errored
        
    --     |> Dict.toList
    ""



{-| <p>Defines the query to run against an object.</p>
-}
type alias Query =
    { selectors : Maybe (List Selector)
    }



queryDecoder : JD.Decoder Query
queryDecoder =
    JD.succeed Query
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["selectors", "Selectors"]
            (JD.list selectorDecoder)
        )
        




queryToString : Query -> String -- List (String, String)
queryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "selectors" "" -- val.selectors
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from queryObjec
-}
type alias QueryObjectsOutput =
    { ids : Maybe (List String)
    , marker : Maybe String
    , hasMoreResults : Maybe Bool
    }



queryObjectsOutputDecoder : JD.Decoder QueryObjectsOutput
queryObjectsOutputDecoder =
    JD.succeed QueryObjectsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ids", "Ids"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["marker", "Marker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hasMoreResults", "HasMoreResults"]
            JD.bool
        )
        




queryObjectsOutputToString : QueryObjectsOutput -> String -- List (String, String)
queryObjectsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ids" "" -- val.ids
        
    --     |> Dict.insert
    --         "marker" "" -- val.marker
        
    --     |> Dict.insert
    --         "hasMoreResults" "" -- val.hasMoreResults
        
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



{-| Type of HTTP response from reportTaskProgre
-}
type alias ReportTaskProgressOutput =
    { canceled : Bool
    }



reportTaskProgressOutputDecoder : JD.Decoder ReportTaskProgressOutput
reportTaskProgressOutputDecoder =
    JD.succeed ReportTaskProgressOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["canceled", "Canceled"]
            JD.bool
        )
        




reportTaskProgressOutputToString : ReportTaskProgressOutput -> String -- List (String, String)
reportTaskProgressOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "canceled" "" -- val.canceled
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from reportTaskRunnerHeartbe
-}
type alias ReportTaskRunnerHeartbeatOutput =
    { terminate : Bool
    }



reportTaskRunnerHeartbeatOutputDecoder : JD.Decoder ReportTaskRunnerHeartbeatOutput
reportTaskRunnerHeartbeatOutputDecoder =
    JD.succeed ReportTaskRunnerHeartbeatOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["terminate", "Terminate"]
            JD.bool
        )
        




reportTaskRunnerHeartbeatOutputToString : ReportTaskRunnerHeartbeatOutput -> String -- List (String, String)
reportTaskRunnerHeartbeatOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "terminate" "" -- val.terminate
        
    --     |> Dict.toList
    ""



{-| <p>A comparision that is used to determine whether a query should return this object.</p>
-}
type alias Selector =
    { fieldName : Maybe String
    , operator : Maybe Operator
    }



selectorDecoder : JD.Decoder Selector
selectorDecoder =
    JD.succeed Selector
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fieldName", "FieldName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operator", "Operator"]
            operatorDecoder
        )
        




selectorToString : Selector -> String -- List (String, String)
selectorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fieldName" "" -- val.fieldName
        
    --     |> Dict.insert
    --         "operator" "" -- val.operator
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from setTaskStat
-}
type alias SetTaskStatusOutput =
    { 
    }



setTaskStatusOutputDecoder : JD.Decoder SetTaskStatusOutput
setTaskStatusOutputDecoder =
    JD.succeed SetTaskStatusOutput
        




setTaskStatusOutputToString : SetTaskStatusOutput -> String -- List (String, String)
setTaskStatusOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Tags are key/value pairs defined by a user and associated with a pipeline to control access. AWS Data Pipeline allows you to associate ten tags per pipeline. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
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



{-| <p>The specified task was not found. </p>
-}
type alias TaskNotFoundException =
    { message : Maybe String
    }



taskNotFoundExceptionDecoder : JD.Decoder TaskNotFoundException
taskNotFoundExceptionDecoder =
    JD.succeed TaskNotFoundException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




taskNotFoundExceptionToString : TaskNotFoundException -> String -- List (String, String)
taskNotFoundExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about a pipeline task that is assigned to a task runner.</p>
-}
type alias TaskObject =
    { taskId : Maybe String
    , pipelineId : Maybe String
    , attemptId : Maybe String
    , objects : Maybe (Dict String PipelineObject)
    }



taskObjectDecoder : JD.Decoder TaskObject
taskObjectDecoder =
    JD.succeed TaskObject
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["taskId", "TaskId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pipelineId", "PipelineId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attemptId", "AttemptId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["objects", "Objects"]
            (AWS.Core.Decode.dict pipelineObjectDecoder)
        )
        




taskObjectToString : TaskObject -> String -- List (String, String)
taskObjectToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "taskId" "" -- val.taskId
        
    --     |> Dict.insert
    --         "pipelineId" "" -- val.pipelineId
        
    --     |> Dict.insert
    --         "attemptId" "" -- val.attemptId
        
    --     |> Dict.insert
    --         "objects" "" -- val.objects
        
    --     |> Dict.toList
    ""



{-| One of

* `TaskStatus_FINISHED`
* `TaskStatus_FAILED`
* `TaskStatus_FALSE`

-}
type TaskStatus
    = TaskStatus_FINISHED
    | TaskStatus_FAILED
    | TaskStatus_FALSE



taskStatusDecoder : JD.Decoder TaskStatus
taskStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FINISHED" ->
                        JD.succeed TaskStatus_FINISHED

                    "FAILED" ->
                        JD.succeed TaskStatus_FAILED

                    "FALSE" ->
                        JD.succeed TaskStatus_FALSE


                    _ ->
                        JD.fail "bad thing"
            )




taskStatusToString : TaskStatus -> String
taskStatusToString val =
    case val of
        TaskStatus_FINISHED ->
            "FINISHED"

        TaskStatus_FAILED ->
            "FAILED"

        TaskStatus_FALSE ->
            "FALSE"




{-| Type of HTTP response from validatePipelineDefiniti
-}
type alias ValidatePipelineDefinitionOutput =
    { validationErrors : Maybe (List ValidationError)
    , validationWarnings : Maybe (List ValidationWarning)
    , errored : Bool
    }



validatePipelineDefinitionOutputDecoder : JD.Decoder ValidatePipelineDefinitionOutput
validatePipelineDefinitionOutputDecoder =
    JD.succeed ValidatePipelineDefinitionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["validationErrors", "ValidationErrors"]
            (JD.list validationErrorDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["validationWarnings", "ValidationWarnings"]
            (JD.list validationWarningDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["errored", "Errored"]
            JD.bool
        )
        




validatePipelineDefinitionOutputToString : ValidatePipelineDefinitionOutput -> String -- List (String, String)
validatePipelineDefinitionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "validationErrors" "" -- val.validationErrors
        
    --     |> Dict.insert
    --         "validationWarnings" "" -- val.validationWarnings
        
    --     |> Dict.insert
    --         "errored" "" -- val.errored
        
    --     |> Dict.toList
    ""



{-| <p>Defines a validation error. Validation errors prevent pipeline activation. The set of validation errors that can be returned are defined by AWS Data Pipeline.</p>
-}
type alias ValidationError =
    { id : Maybe String
    , errors : Maybe (List String)
    }



validationErrorDecoder : JD.Decoder ValidationError
validationErrorDecoder =
    JD.succeed ValidationError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errors", "Errors"]
            (JD.list JD.string)
        )
        




validationErrorToString : ValidationError -> String -- List (String, String)
validationErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "errors" "" -- val.errors
        
    --     |> Dict.toList
    ""



{-| <p>Defines a validation warning. Validation warnings do not prevent pipeline activation. The set of validation warnings that can be returned are defined by AWS Data Pipeline.</p>
-}
type alias ValidationWarning =
    { id : Maybe String
    , warnings : Maybe (List String)
    }



validationWarningDecoder : JD.Decoder ValidationWarning
validationWarningDecoder =
    JD.succeed ValidationWarning
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["warnings", "Warnings"]
            (JD.list JD.string)
        )
        




validationWarningToString : ValidationWarning -> String -- List (String, String)
validationWarningToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "warnings" "" -- val.warnings
        
    --     |> Dict.toList
    ""






{-| <p>Contains the parameters for ActivatePipeline.</p>
-}
type alias ActivatePipelineInput =
    { pipelineId : String
    , parameterValues : Maybe (List ParameterValue)
    , startTimestamp : Maybe Posix
    }


{-| <p>Contains the parameters for AddTags.</p>
-}
type alias AddTagsInput =
    { pipelineId : String
    , tags : (List Tag)
    }


{-| <p>Contains the parameters for CreatePipeline.</p>
-}
type alias CreatePipelineInput =
    { name : String
    , uniqueId : String
    , description : Maybe String
    , tags : Maybe (List Tag)
    }


{-| <p>Contains the parameters for DeactivatePipeline.</p>
-}
type alias DeactivatePipelineInput =
    { pipelineId : String
    , cancelActive : Maybe Bool
    }


{-| <p>Contains the parameters for DeletePipeline.</p>
-}
type alias DeletePipelineInput =
    { pipelineId : String
    }


{-| <p>Contains the parameters for DescribeObjects.</p>
-}
type alias DescribeObjectsInput =
    { pipelineId : String
    , objectIds : (List String)
    , evaluateExpressions : Maybe Bool
    , marker : Maybe String
    }


{-| <p>Contains the parameters for DescribePipelines.</p>
-}
type alias DescribePipelinesInput =
    { pipelineIds : (List String)
    }


{-| <p>Contains the parameters for EvaluateExpression.</p>
-}
type alias EvaluateExpressionInput =
    { pipelineId : String
    , objectId : String
    , expression : String
    }


{-| <p>Contains the parameters for GetPipelineDefinition.</p>
-}
type alias GetPipelineDefinitionInput =
    { pipelineId : String
    , version : Maybe String
    }


{-| <p>Contains the parameters for ListPipelines.</p>
-}
type alias ListPipelinesInput =
    { marker : Maybe String
    }


{-| <p>Contains the parameters for PollForTask.</p>
-}
type alias PollForTaskInput =
    { workerGroup : String
    , hostname : Maybe String
    , instanceIdentity : Maybe InstanceIdentity
    }


{-| <p>Contains the parameters for PutPipelineDefinition.</p>
-}
type alias PutPipelineDefinitionInput =
    { pipelineId : String
    , pipelineObjects : (List PipelineObject)
    , parameterObjects : Maybe (List ParameterObject)
    , parameterValues : Maybe (List ParameterValue)
    }


{-| <p>Contains the parameters for QueryObjects.</p>
-}
type alias QueryObjectsInput =
    { pipelineId : String
    , query : Maybe Query
    , sphere : String
    , marker : Maybe String
    , limit : Maybe Int
    }


{-| <p>Contains the parameters for RemoveTags.</p>
-}
type alias RemoveTagsInput =
    { pipelineId : String
    , tagKeys : (List String)
    }


{-| <p>Contains the parameters for ReportTaskProgress.</p>
-}
type alias ReportTaskProgressInput =
    { taskId : String
    , fields : Maybe (List Field)
    }


{-| <p>Contains the parameters for ReportTaskRunnerHeartbeat.</p>
-}
type alias ReportTaskRunnerHeartbeatInput =
    { taskrunnerId : String
    , workerGroup : Maybe String
    , hostname : Maybe String
    }


{-| <p>Contains the parameters for SetStatus.</p>
-}
type alias SetStatusInput =
    { pipelineId : String
    , objectIds : (List String)
    , status : String
    }


{-| <p>Contains the parameters for SetTaskStatus.</p>
-}
type alias SetTaskStatusInput =
    { taskId : String
    , taskStatus : TaskStatus
    , errorId : Maybe String
    , errorMessage : Maybe String
    , errorStackTrace : Maybe String
    }


{-| <p>Contains the parameters for ValidatePipelineDefinition.</p>
-}
type alias ValidatePipelineDefinitionInput =
    { pipelineId : String
    , pipelineObjects : (List PipelineObject)
    , parameterObjects : Maybe (List ParameterObject)
    , parameterValues : Maybe (List ParameterValue)
    }






activatePipelineInputEncoder : ActivatePipelineInput -> JE.Value
activatePipelineInputEncoder data =
    []
        
        
        |> (::) ("pipelineId", data.pipelineId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (parameterValueEncoder))
            ("parameterValues", data.parameterValues)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("startTimestamp", data.startTimestamp)
        
        
        |> JE.object






activatePipelineOutputEncoder : ActivatePipelineOutput -> JE.Value
activatePipelineOutputEncoder data =
    []
        
        |> JE.object






addTagsInputEncoder : AddTagsInput -> JE.Value
addTagsInputEncoder data =
    []
        
        
        |> (::) ("pipelineId", data.pipelineId |> (JE.string))
        
        
        
        |> (::) ("tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object






addTagsOutputEncoder : AddTagsOutput -> JE.Value
addTagsOutputEncoder data =
    []
        
        |> JE.object






createPipelineInputEncoder : CreatePipelineInput -> JE.Value
createPipelineInputEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("uniqueId", data.uniqueId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createPipelineOutputEncoder : CreatePipelineOutput -> JE.Value
createPipelineOutputEncoder data =
    []
        
        
        |> (::) ("pipelineId", data.pipelineId |> (JE.string))
        
        
        |> JE.object






deactivatePipelineInputEncoder : DeactivatePipelineInput -> JE.Value
deactivatePipelineInputEncoder data =
    []
        
        
        |> (::) ("pipelineId", data.pipelineId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("cancelActive", data.cancelActive)
        
        
        |> JE.object






deactivatePipelineOutputEncoder : DeactivatePipelineOutput -> JE.Value
deactivatePipelineOutputEncoder data =
    []
        
        |> JE.object






deletePipelineInputEncoder : DeletePipelineInput -> JE.Value
deletePipelineInputEncoder data =
    []
        
        
        |> (::) ("pipelineId", data.pipelineId |> (JE.string))
        
        
        |> JE.object






describeObjectsInputEncoder : DescribeObjectsInput -> JE.Value
describeObjectsInputEncoder data =
    []
        
        
        |> (::) ("pipelineId", data.pipelineId |> (JE.string))
        
        
        
        |> (::) ("objectIds", data.objectIds |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("evaluateExpressions", data.evaluateExpressions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("marker", data.marker)
        
        
        |> JE.object






describeObjectsOutputEncoder : DescribeObjectsOutput -> JE.Value
describeObjectsOutputEncoder data =
    []
        
        
        |> (::) ("pipelineObjects", data.pipelineObjects |> (JE.list (pipelineObjectEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("marker", data.marker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("hasMoreResults", data.hasMoreResults)
        
        
        |> JE.object






describePipelinesInputEncoder : DescribePipelinesInput -> JE.Value
describePipelinesInputEncoder data =
    []
        
        
        |> (::) ("pipelineIds", data.pipelineIds |> (JE.list (JE.string)))
        
        
        |> JE.object






describePipelinesOutputEncoder : DescribePipelinesOutput -> JE.Value
describePipelinesOutputEncoder data =
    []
        
        
        |> (::) ("pipelineDescriptionList", data.pipelineDescriptionList |> (JE.list (pipelineDescriptionEncoder)))
        
        
        |> JE.object






evaluateExpressionInputEncoder : EvaluateExpressionInput -> JE.Value
evaluateExpressionInputEncoder data =
    []
        
        
        |> (::) ("pipelineId", data.pipelineId |> (JE.string))
        
        
        
        |> (::) ("objectId", data.objectId |> (JE.string))
        
        
        
        |> (::) ("expression", data.expression |> (JE.string))
        
        
        |> JE.object






evaluateExpressionOutputEncoder : EvaluateExpressionOutput -> JE.Value
evaluateExpressionOutputEncoder data =
    []
        
        
        |> (::) ("evaluatedExpression", data.evaluatedExpression |> (JE.string))
        
        
        |> JE.object






fieldEncoder : Field -> JE.Value
fieldEncoder data =
    []
        
        
        |> (::) ("key", data.key |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("stringValue", data.stringValue)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("refValue", data.refValue)
        
        
        |> JE.object






getPipelineDefinitionInputEncoder : GetPipelineDefinitionInput -> JE.Value
getPipelineDefinitionInputEncoder data =
    []
        
        
        |> (::) ("pipelineId", data.pipelineId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("version", data.version)
        
        
        |> JE.object






getPipelineDefinitionOutputEncoder : GetPipelineDefinitionOutput -> JE.Value
getPipelineDefinitionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (pipelineObjectEncoder))
            ("pipelineObjects", data.pipelineObjects)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (parameterObjectEncoder))
            ("parameterObjects", data.parameterObjects)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (parameterValueEncoder))
            ("parameterValues", data.parameterValues)
        
        
        |> JE.object






instanceIdentityEncoder : InstanceIdentity -> JE.Value
instanceIdentityEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("document", data.document)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("signature", data.signature)
        
        
        |> JE.object






internalServiceErrorEncoder : InternalServiceError -> JE.Value
internalServiceErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






invalidRequestExceptionEncoder : InvalidRequestException -> JE.Value
invalidRequestExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






listPipelinesInputEncoder : ListPipelinesInput -> JE.Value
listPipelinesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("marker", data.marker)
        
        
        |> JE.object






listPipelinesOutputEncoder : ListPipelinesOutput -> JE.Value
listPipelinesOutputEncoder data =
    []
        
        
        |> (::) ("pipelineIdList", data.pipelineIdList |> (JE.list (pipelineIdNameEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("marker", data.marker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("hasMoreResults", data.hasMoreResults)
        
        
        |> JE.object






operatorEncoder : Operator -> JE.Value
operatorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (operatorTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("values", data.values)
        
        
        |> JE.object










parameterAttributeEncoder : ParameterAttribute -> JE.Value
parameterAttributeEncoder data =
    []
        
        
        |> (::) ("key", data.key |> (JE.string))
        
        
        
        |> (::) ("stringValue", data.stringValue |> (JE.string))
        
        
        |> JE.object






parameterObjectEncoder : ParameterObject -> JE.Value
parameterObjectEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        
        |> (::) ("attributes", data.attributes |> (JE.list (parameterAttributeEncoder)))
        
        
        |> JE.object






parameterValueEncoder : ParameterValue -> JE.Value
parameterValueEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        
        |> (::) ("stringValue", data.stringValue |> (JE.string))
        
        
        |> JE.object






pipelineDeletedExceptionEncoder : PipelineDeletedException -> JE.Value
pipelineDeletedExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






pipelineDescriptionEncoder : PipelineDescription -> JE.Value
pipelineDescriptionEncoder data =
    []
        
        
        |> (::) ("pipelineId", data.pipelineId |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("fields", data.fields |> (JE.list (fieldEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






pipelineIdNameEncoder : PipelineIdName -> JE.Value
pipelineIdNameEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        |> JE.object






pipelineNotFoundExceptionEncoder : PipelineNotFoundException -> JE.Value
pipelineNotFoundExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






pipelineObjectEncoder : PipelineObject -> JE.Value
pipelineObjectEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("fields", data.fields |> (JE.list (fieldEncoder)))
        
        
        |> JE.object






pollForTaskInputEncoder : PollForTaskInput -> JE.Value
pollForTaskInputEncoder data =
    []
        
        
        |> (::) ("workerGroup", data.workerGroup |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("hostname", data.hostname)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceIdentityEncoder)
            ("instanceIdentity", data.instanceIdentity)
        
        
        |> JE.object






pollForTaskOutputEncoder : PollForTaskOutput -> JE.Value
pollForTaskOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (taskObjectEncoder)
            ("taskObject", data.taskObject)
        
        
        |> JE.object






putPipelineDefinitionInputEncoder : PutPipelineDefinitionInput -> JE.Value
putPipelineDefinitionInputEncoder data =
    []
        
        
        |> (::) ("pipelineId", data.pipelineId |> (JE.string))
        
        
        
        |> (::) ("pipelineObjects", data.pipelineObjects |> (JE.list (pipelineObjectEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (parameterObjectEncoder))
            ("parameterObjects", data.parameterObjects)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (parameterValueEncoder))
            ("parameterValues", data.parameterValues)
        
        
        |> JE.object






putPipelineDefinitionOutputEncoder : PutPipelineDefinitionOutput -> JE.Value
putPipelineDefinitionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (validationErrorEncoder))
            ("validationErrors", data.validationErrors)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (validationWarningEncoder))
            ("validationWarnings", data.validationWarnings)
        
        
        
        |> (::) ("errored", data.errored |> (JE.bool))
        
        
        |> JE.object






queryEncoder : Query -> JE.Value
queryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (selectorEncoder))
            ("selectors", data.selectors)
        
        
        |> JE.object






queryObjectsInputEncoder : QueryObjectsInput -> JE.Value
queryObjectsInputEncoder data =
    []
        
        
        |> (::) ("pipelineId", data.pipelineId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (queryEncoder)
            ("query", data.query)
        
        
        
        |> (::) ("sphere", data.sphere |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("marker", data.marker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("limit", data.limit)
        
        
        |> JE.object






queryObjectsOutputEncoder : QueryObjectsOutput -> JE.Value
queryObjectsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ids", data.ids)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("marker", data.marker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("hasMoreResults", data.hasMoreResults)
        
        
        |> JE.object






removeTagsInputEncoder : RemoveTagsInput -> JE.Value
removeTagsInputEncoder data =
    []
        
        
        |> (::) ("pipelineId", data.pipelineId |> (JE.string))
        
        
        
        |> (::) ("tagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






removeTagsOutputEncoder : RemoveTagsOutput -> JE.Value
removeTagsOutputEncoder data =
    []
        
        |> JE.object






reportTaskProgressInputEncoder : ReportTaskProgressInput -> JE.Value
reportTaskProgressInputEncoder data =
    []
        
        
        |> (::) ("taskId", data.taskId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (fieldEncoder))
            ("fields", data.fields)
        
        
        |> JE.object






reportTaskProgressOutputEncoder : ReportTaskProgressOutput -> JE.Value
reportTaskProgressOutputEncoder data =
    []
        
        
        |> (::) ("canceled", data.canceled |> (JE.bool))
        
        
        |> JE.object






reportTaskRunnerHeartbeatInputEncoder : ReportTaskRunnerHeartbeatInput -> JE.Value
reportTaskRunnerHeartbeatInputEncoder data =
    []
        
        
        |> (::) ("taskrunnerId", data.taskrunnerId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("workerGroup", data.workerGroup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("hostname", data.hostname)
        
        
        |> JE.object






reportTaskRunnerHeartbeatOutputEncoder : ReportTaskRunnerHeartbeatOutput -> JE.Value
reportTaskRunnerHeartbeatOutputEncoder data =
    []
        
        
        |> (::) ("terminate", data.terminate |> (JE.bool))
        
        
        |> JE.object






selectorEncoder : Selector -> JE.Value
selectorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fieldName", data.fieldName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (operatorEncoder)
            ("operator", data.operator)
        
        
        |> JE.object






setStatusInputEncoder : SetStatusInput -> JE.Value
setStatusInputEncoder data =
    []
        
        
        |> (::) ("pipelineId", data.pipelineId |> (JE.string))
        
        
        
        |> (::) ("objectIds", data.objectIds |> (JE.list (JE.string)))
        
        
        
        |> (::) ("status", data.status |> (JE.string))
        
        
        |> JE.object






setTaskStatusInputEncoder : SetTaskStatusInput -> JE.Value
setTaskStatusInputEncoder data =
    []
        
        
        |> (::) ("taskId", data.taskId |> (JE.string))
        
        
        
        |> (::) ("taskStatus", data.taskStatus |> (taskStatusToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("errorId", data.errorId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("errorMessage", data.errorMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("errorStackTrace", data.errorStackTrace)
        
        
        |> JE.object






setTaskStatusOutputEncoder : SetTaskStatusOutput -> JE.Value
setTaskStatusOutputEncoder data =
    []
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("key", data.key |> (JE.string))
        
        
        
        |> (::) ("value", data.value |> (JE.string))
        
        
        |> JE.object






taskNotFoundExceptionEncoder : TaskNotFoundException -> JE.Value
taskNotFoundExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






taskObjectEncoder : TaskObject -> JE.Value
taskObjectEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("taskId", data.taskId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pipelineId", data.pipelineId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("attemptId", data.attemptId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (pipelineObjectEncoder))
            ("objects", data.objects)
        
        
        |> JE.object










validatePipelineDefinitionInputEncoder : ValidatePipelineDefinitionInput -> JE.Value
validatePipelineDefinitionInputEncoder data =
    []
        
        
        |> (::) ("pipelineId", data.pipelineId |> (JE.string))
        
        
        
        |> (::) ("pipelineObjects", data.pipelineObjects |> (JE.list (pipelineObjectEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (parameterObjectEncoder))
            ("parameterObjects", data.parameterObjects)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (parameterValueEncoder))
            ("parameterValues", data.parameterValues)
        
        
        |> JE.object






validatePipelineDefinitionOutputEncoder : ValidatePipelineDefinitionOutput -> JE.Value
validatePipelineDefinitionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (validationErrorEncoder))
            ("validationErrors", data.validationErrors)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (validationWarningEncoder))
            ("validationWarnings", data.validationWarnings)
        
        
        
        |> (::) ("errored", data.errored |> (JE.bool))
        
        
        |> JE.object






validationErrorEncoder : ValidationError -> JE.Value
validationErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("errors", data.errors)
        
        
        |> JE.object






validationWarningEncoder : ValidationWarning -> JE.Value
validationWarningEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("warnings", data.warnings)
        
        
        |> JE.object





