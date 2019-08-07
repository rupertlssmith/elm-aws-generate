module AWS.SFN
    exposing
        ( service
        , createActivity
        , CreateActivityOptions
        , createStateMachine
        , CreateStateMachineOptions
        , deleteActivity
        , deleteStateMachine
        , describeActivity
        , describeExecution
        , describeStateMachine
        , describeStateMachineForExecution
        , getActivityTask
        , GetActivityTaskOptions
        , getExecutionHistory
        , GetExecutionHistoryOptions
        , listActivities
        , ListActivitiesOptions
        , listExecutions
        , ListExecutionsOptions
        , listStateMachines
        , ListStateMachinesOptions
        , listTagsForResource
        , sendTaskFailure
        , SendTaskFailureOptions
        , sendTaskHeartbeat
        , sendTaskSuccess
        , startExecution
        , StartExecutionOptions
        , stopExecution
        , StopExecutionOptions
        , tagResource
        , untagResource
        , updateStateMachine
        , UpdateStateMachineOptions
        , ActivityFailedEventDetails
        , ActivityListItem
        , ActivityScheduleFailedEventDetails
        , ActivityScheduledEventDetails
        , ActivityStartedEventDetails
        , ActivitySucceededEventDetails
        , ActivityTimedOutEventDetails
        , CreateActivityOutput
        , CreateStateMachineOutput
        , DeleteActivityOutput
        , DeleteStateMachineOutput
        , DescribeActivityOutput
        , DescribeExecutionOutput
        , DescribeStateMachineForExecutionOutput
        , DescribeStateMachineOutput
        , ExecutionAbortedEventDetails
        , ExecutionFailedEventDetails
        , ExecutionListItem
        , ExecutionStartedEventDetails
        , ExecutionStatus(..)
        , ExecutionSucceededEventDetails
        , ExecutionTimedOutEventDetails
        , GetActivityTaskOutput
        , GetExecutionHistoryOutput
        , HistoryEvent
        , HistoryEventType(..)
        , LambdaFunctionFailedEventDetails
        , LambdaFunctionScheduleFailedEventDetails
        , LambdaFunctionScheduledEventDetails
        , LambdaFunctionStartFailedEventDetails
        , LambdaFunctionSucceededEventDetails
        , LambdaFunctionTimedOutEventDetails
        , ListActivitiesOutput
        , ListExecutionsOutput
        , ListStateMachinesOutput
        , ListTagsForResourceOutput
        , SendTaskFailureOutput
        , SendTaskHeartbeatOutput
        , SendTaskSuccessOutput
        , StartExecutionOutput
        , StateEnteredEventDetails
        , StateExitedEventDetails
        , StateMachineListItem
        , StateMachineStatus(..)
        , StopExecutionOutput
        , Tag
        , TagResourceOutput
        , TaskFailedEventDetails
        , TaskScheduledEventDetails
        , TaskStartFailedEventDetails
        , TaskStartedEventDetails
        , TaskSubmitFailedEventDetails
        , TaskSubmittedEventDetails
        , TaskSucceededEventDetails
        , TaskTimedOutEventDetails
        , UntagResourceOutput
        , UpdateStateMachineOutput
        )

{-| <fullname>AWS Step Functions</fullname> <p>AWS Step Functions is a service that lets you coordinate the components of distributed applications and microservices using visual workflows.</p> <p>You can use Step Functions to build applications from individual components, each of which performs a discrete function, or <i>task</i>, allowing you to scale and change applications quickly. Step Functions provides a console that helps visualize the components of your application as a series of steps. Step Functions automatically triggers and tracks each step, and retries steps when there are errors, so your application executes predictably and in the right order every time. Step Functions logs the state of each step, so you can quickly diagnose and debug any issues.</p> <p>Step Functions manages operations and underlying infrastructure to ensure your application is available at any scale. You can run tasks on AWS, your own servers, or any system that has access to AWS. You can access and use Step Functions using the console, the AWS SDKs, or an HTTP API. For more information about Step Functions, see the <i> <a href="https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html">AWS Step Functions Developer Guide</a> </i>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [createActivity](#createActivity)
* [CreateActivityOptions](#CreateActivityOptions)
* [createStateMachine](#createStateMachine)
* [CreateStateMachineOptions](#CreateStateMachineOptions)
* [deleteActivity](#deleteActivity)
* [deleteStateMachine](#deleteStateMachine)
* [describeActivity](#describeActivity)
* [describeExecution](#describeExecution)
* [describeStateMachine](#describeStateMachine)
* [describeStateMachineForExecution](#describeStateMachineForExecution)
* [getActivityTask](#getActivityTask)
* [GetActivityTaskOptions](#GetActivityTaskOptions)
* [getExecutionHistory](#getExecutionHistory)
* [GetExecutionHistoryOptions](#GetExecutionHistoryOptions)
* [listActivities](#listActivities)
* [ListActivitiesOptions](#ListActivitiesOptions)
* [listExecutions](#listExecutions)
* [ListExecutionsOptions](#ListExecutionsOptions)
* [listStateMachines](#listStateMachines)
* [ListStateMachinesOptions](#ListStateMachinesOptions)
* [listTagsForResource](#listTagsForResource)
* [sendTaskFailure](#sendTaskFailure)
* [SendTaskFailureOptions](#SendTaskFailureOptions)
* [sendTaskHeartbeat](#sendTaskHeartbeat)
* [sendTaskSuccess](#sendTaskSuccess)
* [startExecution](#startExecution)
* [StartExecutionOptions](#StartExecutionOptions)
* [stopExecution](#stopExecution)
* [StopExecutionOptions](#StopExecutionOptions)
* [tagResource](#tagResource)
* [untagResource](#untagResource)
* [updateStateMachine](#updateStateMachine)
* [UpdateStateMachineOptions](#UpdateStateMachineOptions)


@docs createActivity,CreateActivityOptions,createStateMachine,CreateStateMachineOptions,deleteActivity,deleteStateMachine,describeActivity,describeExecution,describeStateMachine,describeStateMachineForExecution,getActivityTask,GetActivityTaskOptions,getExecutionHistory,GetExecutionHistoryOptions,listActivities,ListActivitiesOptions,listExecutions,ListExecutionsOptions,listStateMachines,ListStateMachinesOptions,listTagsForResource,sendTaskFailure,SendTaskFailureOptions,sendTaskHeartbeat,sendTaskSuccess,startExecution,StartExecutionOptions,stopExecution,StopExecutionOptions,tagResource,untagResource,updateStateMachine,UpdateStateMachineOptions

## Responses

* [CreateActivityOutput](#CreateActivityOutput)
* [CreateStateMachineOutput](#CreateStateMachineOutput)
* [DeleteActivityOutput](#DeleteActivityOutput)
* [DeleteStateMachineOutput](#DeleteStateMachineOutput)
* [DescribeActivityOutput](#DescribeActivityOutput)
* [DescribeExecutionOutput](#DescribeExecutionOutput)
* [DescribeStateMachineForExecutionOutput](#DescribeStateMachineForExecutionOutput)
* [DescribeStateMachineOutput](#DescribeStateMachineOutput)
* [GetActivityTaskOutput](#GetActivityTaskOutput)
* [GetExecutionHistoryOutput](#GetExecutionHistoryOutput)
* [ListActivitiesOutput](#ListActivitiesOutput)
* [ListExecutionsOutput](#ListExecutionsOutput)
* [ListStateMachinesOutput](#ListStateMachinesOutput)
* [ListTagsForResourceOutput](#ListTagsForResourceOutput)
* [SendTaskFailureOutput](#SendTaskFailureOutput)
* [SendTaskHeartbeatOutput](#SendTaskHeartbeatOutput)
* [SendTaskSuccessOutput](#SendTaskSuccessOutput)
* [StartExecutionOutput](#StartExecutionOutput)
* [StopExecutionOutput](#StopExecutionOutput)
* [TagResourceOutput](#TagResourceOutput)
* [UntagResourceOutput](#UntagResourceOutput)
* [UpdateStateMachineOutput](#UpdateStateMachineOutput)


@docs CreateActivityOutput,CreateStateMachineOutput,DeleteActivityOutput,DeleteStateMachineOutput,DescribeActivityOutput,DescribeExecutionOutput,DescribeStateMachineForExecutionOutput,DescribeStateMachineOutput,GetActivityTaskOutput,GetExecutionHistoryOutput,ListActivitiesOutput,ListExecutionsOutput,ListStateMachinesOutput,ListTagsForResourceOutput,SendTaskFailureOutput,SendTaskHeartbeatOutput,SendTaskSuccessOutput,StartExecutionOutput,StopExecutionOutput,TagResourceOutput,UntagResourceOutput,UpdateStateMachineOutput

## Records

* [ActivityFailedEventDetails](#ActivityFailedEventDetails)
* [ActivityListItem](#ActivityListItem)
* [ActivityScheduleFailedEventDetails](#ActivityScheduleFailedEventDetails)
* [ActivityScheduledEventDetails](#ActivityScheduledEventDetails)
* [ActivityStartedEventDetails](#ActivityStartedEventDetails)
* [ActivitySucceededEventDetails](#ActivitySucceededEventDetails)
* [ActivityTimedOutEventDetails](#ActivityTimedOutEventDetails)
* [ExecutionAbortedEventDetails](#ExecutionAbortedEventDetails)
* [ExecutionFailedEventDetails](#ExecutionFailedEventDetails)
* [ExecutionListItem](#ExecutionListItem)
* [ExecutionStartedEventDetails](#ExecutionStartedEventDetails)
* [ExecutionSucceededEventDetails](#ExecutionSucceededEventDetails)
* [ExecutionTimedOutEventDetails](#ExecutionTimedOutEventDetails)
* [HistoryEvent](#HistoryEvent)
* [LambdaFunctionFailedEventDetails](#LambdaFunctionFailedEventDetails)
* [LambdaFunctionScheduleFailedEventDetails](#LambdaFunctionScheduleFailedEventDetails)
* [LambdaFunctionScheduledEventDetails](#LambdaFunctionScheduledEventDetails)
* [LambdaFunctionStartFailedEventDetails](#LambdaFunctionStartFailedEventDetails)
* [LambdaFunctionSucceededEventDetails](#LambdaFunctionSucceededEventDetails)
* [LambdaFunctionTimedOutEventDetails](#LambdaFunctionTimedOutEventDetails)
* [StateEnteredEventDetails](#StateEnteredEventDetails)
* [StateExitedEventDetails](#StateExitedEventDetails)
* [StateMachineListItem](#StateMachineListItem)
* [Tag](#Tag)
* [TaskFailedEventDetails](#TaskFailedEventDetails)
* [TaskScheduledEventDetails](#TaskScheduledEventDetails)
* [TaskStartFailedEventDetails](#TaskStartFailedEventDetails)
* [TaskStartedEventDetails](#TaskStartedEventDetails)
* [TaskSubmitFailedEventDetails](#TaskSubmitFailedEventDetails)
* [TaskSubmittedEventDetails](#TaskSubmittedEventDetails)
* [TaskSucceededEventDetails](#TaskSucceededEventDetails)
* [TaskTimedOutEventDetails](#TaskTimedOutEventDetails)


@docs ActivityFailedEventDetails,ActivityListItem,ActivityScheduleFailedEventDetails,ActivityScheduledEventDetails,ActivityStartedEventDetails,ActivitySucceededEventDetails,ActivityTimedOutEventDetails,ExecutionAbortedEventDetails,ExecutionFailedEventDetails,ExecutionListItem,ExecutionStartedEventDetails,ExecutionSucceededEventDetails,ExecutionTimedOutEventDetails,HistoryEvent,LambdaFunctionFailedEventDetails,LambdaFunctionScheduleFailedEventDetails,LambdaFunctionScheduledEventDetails,LambdaFunctionStartFailedEventDetails,LambdaFunctionSucceededEventDetails,LambdaFunctionTimedOutEventDetails,StateEnteredEventDetails,StateExitedEventDetails,StateMachineListItem,Tag,TaskFailedEventDetails,TaskScheduledEventDetails,TaskStartFailedEventDetails,TaskStartedEventDetails,TaskSubmitFailedEventDetails,TaskSubmittedEventDetails,TaskSucceededEventDetails,TaskTimedOutEventDetails

## Unions

* [ExecutionStatus](#ExecutionStatus)
* [HistoryEventType](#HistoryEventType)
* [StateMachineStatus](#StateMachineStatus)


@docs ExecutionStatus,HistoryEventType,StateMachineStatus

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
        "states"
        "2016-11-23"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.0" >> AWS.Core.Service.setTargetPrefix "AWSStepFunctions")



-- OPERATIONS

{-| <p>Creates an activity. An activity is a task that you write in any programming language and host on any machine that has access to AWS Step Functions. Activities must poll Step Functions using the <code>GetActivityTask</code> API action and respond using <code>SendTask*</code> API actions. This function lets Step Functions know the existence of your activity and returns an identifier for use in a state machine and when polling from the activity.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note>

__Required Parameters__

* `name` __:__ `String`


-}

createActivity :
  
    String ->
  
  
    ( CreateActivityOptions -> CreateActivityOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateActivityOutput)

createActivity name setOptions =
    
    let
        requestInput = CreateActivityInput
            
            name
            
            options.tags
            
        
        options = setOptions (CreateActivityOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createActivityInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateActivity"
                
                (AWS.Core.Decode.ResultDecoder "CreateActivityOutput" createActivityOutputDecoder)
                
            )



{-| Options for a createActivity request
-}
type alias CreateActivityOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates a state machine. A state machine consists of a collection of states that can do work (<code>Task</code> states), determine to which states to transition next (<code>Choice</code> states), stop an execution with an error (<code>Fail</code> states), and so on. State machines are specified using a JSON-based, structured language.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note>

__Required Parameters__

* `name` __:__ `String`
* `definition` __:__ `String`
* `roleArn` __:__ `String`


-}

createStateMachine :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateStateMachineOptions -> CreateStateMachineOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateStateMachineOutput)

createStateMachine name definition roleArn setOptions =
    
    let
        requestInput = CreateStateMachineInput
            
            name
            
            definition
            
            roleArn
            
            options.tags
            
        
        options = setOptions (CreateStateMachineOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createStateMachineInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateStateMachine"
                
                (AWS.Core.Decode.ResultDecoder "CreateStateMachineOutput" createStateMachineOutputDecoder)
                
            )



{-| Options for a createStateMachine request
-}
type alias CreateStateMachineOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Deletes an activity.</p>

__Required Parameters__

* `activityArn` __:__ `String`


-}

deleteActivity :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteActivityOutput)

deleteActivity activityArn =
    
    let
        requestInput = DeleteActivityInput
            
            activityArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteActivityInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteActivity"
                
                (AWS.Core.Decode.ResultDecoder "DeleteActivityOutput" deleteActivityOutputDecoder)
                
            )





{-| <p>Deletes a state machine. This is an asynchronous operation: It sets the state machine's status to <code>DELETING</code> and begins the deletion process. Each state machine execution is deleted the next time it makes a state transition.</p> <note> <p>The state machine itself is deleted after all executions are completed or deleted.</p> </note>

__Required Parameters__

* `stateMachineArn` __:__ `String`


-}

deleteStateMachine :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteStateMachineOutput)

deleteStateMachine stateMachineArn =
    
    let
        requestInput = DeleteStateMachineInput
            
            stateMachineArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteStateMachineInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteStateMachine"
                
                (AWS.Core.Decode.ResultDecoder "DeleteStateMachineOutput" deleteStateMachineOutputDecoder)
                
            )





{-| <p>Describes an activity.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note>

__Required Parameters__

* `activityArn` __:__ `String`


-}

describeActivity :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeActivityOutput)

describeActivity activityArn =
    
    let
        requestInput = DescribeActivityInput
            
            activityArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeActivityInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeActivity"
                
                (AWS.Core.Decode.ResultDecoder "DescribeActivityOutput" describeActivityOutputDecoder)
                
            )





{-| <p>Describes an execution.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note>

__Required Parameters__

* `executionArn` __:__ `String`


-}

describeExecution :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeExecutionOutput)

describeExecution executionArn =
    
    let
        requestInput = DescribeExecutionInput
            
            executionArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeExecutionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeExecution"
                
                (AWS.Core.Decode.ResultDecoder "DescribeExecutionOutput" describeExecutionOutputDecoder)
                
            )





{-| <p>Describes a state machine.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note>

__Required Parameters__

* `stateMachineArn` __:__ `String`


-}

describeStateMachine :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStateMachineOutput)

describeStateMachine stateMachineArn =
    
    let
        requestInput = DescribeStateMachineInput
            
            stateMachineArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeStateMachineInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStateMachine"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStateMachineOutput" describeStateMachineOutputDecoder)
                
            )





{-| <p>Describes the state machine associated with a specific execution.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note>

__Required Parameters__

* `executionArn` __:__ `String`


-}

describeStateMachineForExecution :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStateMachineForExecutionOutput)

describeStateMachineForExecution executionArn =
    
    let
        requestInput = DescribeStateMachineForExecutionInput
            
            executionArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeStateMachineForExecutionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStateMachineForExecution"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStateMachineForExecutionOutput" describeStateMachineForExecutionOutputDecoder)
                
            )





{-| <p>Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns a <code>taskToken</code> with a null string.</p> <important> <p>Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request).</p> <p>Polling with <code>GetActivityTask</code> can cause latency in some implementations. See <a href="https://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html">Avoid Latency When Polling for Activity Tasks</a> in the Step Functions Developer Guide.</p> </important>

__Required Parameters__

* `activityArn` __:__ `String`


-}

getActivityTask :
  
    String ->
  
  
    ( GetActivityTaskOptions -> GetActivityTaskOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetActivityTaskOutput)

getActivityTask activityArn setOptions =
    
    let
        requestInput = GetActivityTaskInput
            
            activityArn
            
            options.workerName
            
        
        options = setOptions (GetActivityTaskOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getActivityTaskInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetActivityTask"
                
                (AWS.Core.Decode.ResultDecoder "GetActivityTaskOutput" getActivityTaskOutputDecoder)
                
            )



{-| Options for a getActivityTask request
-}
type alias GetActivityTaskOptions =
    {
    workerName : Maybe String
    }



{-| <p>Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the <code>timeStamp</code> of the events. Use the <code>reverseOrder</code> parameter to get the latest events first.</p> <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>

__Required Parameters__

* `executionArn` __:__ `String`


-}

getExecutionHistory :
  
    String ->
  
  
    ( GetExecutionHistoryOptions -> GetExecutionHistoryOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetExecutionHistoryOutput)

getExecutionHistory executionArn setOptions =
    
    let
        requestInput = GetExecutionHistoryInput
            
            executionArn
            
            options.maxResults
            
            options.reverseOrder
            
            options.nextToken
            
        
        options = setOptions (GetExecutionHistoryOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getExecutionHistoryInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetExecutionHistory"
                
                (AWS.Core.Decode.ResultDecoder "GetExecutionHistoryOutput" getExecutionHistoryOutputDecoder)
                
            )



{-| Options for a getExecutionHistory request
-}
type alias GetExecutionHistoryOptions =
    {
    maxResults : Maybe Int,reverseOrder : Maybe Bool,nextToken : Maybe String
    }



{-| <p>Lists the existing activities.</p> <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note>

__Required Parameters__



-}

listActivities :
  
  
    ( ListActivitiesOptions -> ListActivitiesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListActivitiesOutput)

listActivities setOptions =
    
    let
        requestInput = ListActivitiesInput
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListActivitiesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listActivitiesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListActivities"
                
                (AWS.Core.Decode.ResultDecoder "ListActivitiesOutput" listActivitiesOutputDecoder)
                
            )



{-| Options for a listActivities request
-}
type alias ListActivitiesOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Lists the executions of a state machine that meet the filtering criteria. Results are sorted by time, with the most recent execution first.</p> <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note>

__Required Parameters__

* `stateMachineArn` __:__ `String`


-}

listExecutions :
  
    String ->
  
  
    ( ListExecutionsOptions -> ListExecutionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListExecutionsOutput)

listExecutions stateMachineArn setOptions =
    
    let
        requestInput = ListExecutionsInput
            
            stateMachineArn
            
            options.statusFilter
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListExecutionsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listExecutionsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListExecutions"
                
                (AWS.Core.Decode.ResultDecoder "ListExecutionsOutput" listExecutionsOutputDecoder)
                
            )



{-| Options for a listExecutions request
-}
type alias ListExecutionsOptions =
    {
    statusFilter : Maybe ExecutionStatus,maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Lists the existing state machines.</p> <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note>

__Required Parameters__



-}

listStateMachines :
  
  
    ( ListStateMachinesOptions -> ListStateMachinesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStateMachinesOutput)

listStateMachines setOptions =
    
    let
        requestInput = ListStateMachinesInput
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListStateMachinesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listStateMachinesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListStateMachines"
                
                (AWS.Core.Decode.ResultDecoder "ListStateMachinesOutput" listStateMachinesOutputDecoder)
                
            )



{-| Options for a listStateMachines request
-}
type alias ListStateMachinesOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>List tags for a given resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

listTagsForResource :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceOutput)

listTagsForResource resourceArn =
    
    let
        requestInput = ListTagsForResourceInput
            
            resourceArn
            
        
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





{-| <p>Used by workers to report that the task identified by the <code>taskToken</code> failed.</p>

__Required Parameters__

* `taskToken` __:__ `String`


-}

sendTaskFailure :
  
    String ->
  
  
    ( SendTaskFailureOptions -> SendTaskFailureOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SendTaskFailureOutput)

sendTaskFailure taskToken setOptions =
    
    let
        requestInput = SendTaskFailureInput
            
            taskToken
            
            options.error
            
            options.cause
            
        
        options = setOptions (SendTaskFailureOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> sendTaskFailureInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SendTaskFailure"
                
                (AWS.Core.Decode.ResultDecoder "SendTaskFailureOutput" sendTaskFailureOutputDecoder)
                
            )



{-| Options for a sendTaskFailure request
-}
type alias SendTaskFailureOptions =
    {
    error : Maybe String,cause : Maybe String
    }



{-| <p>Used by workers to report to the service that the task represented by the specified <code>taskToken</code> is still making progress. This action resets the <code>Heartbeat</code> clock. The <code>Heartbeat</code> threshold is specified in the state machine's Amazon States Language definition. This action does not in itself create an event in the execution history. However, if the task times out, the execution history contains an <code>ActivityTimedOut</code> event.</p> <note> <p>The <code>Timeout</code> of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of <a>SendTaskHeartbeat</a> requests received.</p> </note> <note> <p>This operation is only useful for long-lived tasks to report the liveliness of the task.</p> </note>

__Required Parameters__

* `taskToken` __:__ `String`


-}

sendTaskHeartbeat :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SendTaskHeartbeatOutput)

sendTaskHeartbeat taskToken =
    
    let
        requestInput = SendTaskHeartbeatInput
            
            taskToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> sendTaskHeartbeatInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SendTaskHeartbeat"
                
                (AWS.Core.Decode.ResultDecoder "SendTaskHeartbeatOutput" sendTaskHeartbeatOutputDecoder)
                
            )





{-| <p>Used by workers to report that the task identified by the <code>taskToken</code> completed successfully.</p>

__Required Parameters__

* `taskToken` __:__ `String`
* `output` __:__ `String`


-}

sendTaskSuccess :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SendTaskSuccessOutput)

sendTaskSuccess taskToken output =
    
    let
        requestInput = SendTaskSuccessInput
            
            taskToken
            
            output
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> sendTaskSuccessInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SendTaskSuccess"
                
                (AWS.Core.Decode.ResultDecoder "SendTaskSuccessOutput" sendTaskSuccessOutputDecoder)
                
            )





{-| <p>Starts a state machine execution.</p> <note> <p> <code>StartExecution</code> is idempotent. If <code>StartExecution</code> is called with the same name and input as a running execution, the call will succeed and return the same response as the original request. If the execution is closed or if the input is different, it will return a 400 <code>ExecutionAlreadyExists</code> error. Names can be reused after 90 days. </p> </note>

__Required Parameters__

* `stateMachineArn` __:__ `String`


-}

startExecution :
  
    String ->
  
  
    ( StartExecutionOptions -> StartExecutionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartExecutionOutput)

startExecution stateMachineArn setOptions =
    
    let
        requestInput = StartExecutionInput
            
            stateMachineArn
            
            options.name
            
            options.input
            
        
        options = setOptions (StartExecutionOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startExecutionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartExecution"
                
                (AWS.Core.Decode.ResultDecoder "StartExecutionOutput" startExecutionOutputDecoder)
                
            )



{-| Options for a startExecution request
-}
type alias StartExecutionOptions =
    {
    name : Maybe String,input : Maybe String
    }



{-| <p>Stops an execution.</p>

__Required Parameters__

* `executionArn` __:__ `String`


-}

stopExecution :
  
    String ->
  
  
    ( StopExecutionOptions -> StopExecutionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopExecutionOutput)

stopExecution executionArn setOptions =
    
    let
        requestInput = StopExecutionInput
            
            executionArn
            
            options.error
            
            options.cause
            
        
        options = setOptions (StopExecutionOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopExecutionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopExecution"
                
                (AWS.Core.Decode.ResultDecoder "StopExecutionOutput" stopExecutionOutputDecoder)
                
            )



{-| Options for a stopExecution request
-}
type alias StopExecutionOptions =
    {
    error : Maybe String,cause : Maybe String
    }



{-| <p>Add a tag to a Step Functions resource.</p>

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





{-| <p>Remove a tag from a Step Functions resource</p>

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





{-| <p>Updates an existing state machine by modifying its <code>definition</code> and/or <code>roleArn</code>. Running executions will continue to use the previous <code>definition</code> and <code>roleArn</code>. You must include at least one of <code>definition</code> or <code>roleArn</code> or you will receive a <code>MissingRequiredParameter</code> error.</p> <note> <p>All <code>StartExecution</code> calls within a few seconds will use the updated <code>definition</code> and <code>roleArn</code>. Executions started immediately after calling <code>UpdateStateMachine</code> may use the previous state machine <code>definition</code> and <code>roleArn</code>. </p> </note>

__Required Parameters__

* `stateMachineArn` __:__ `String`


-}

updateStateMachine :
  
    String ->
  
  
    ( UpdateStateMachineOptions -> UpdateStateMachineOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateStateMachineOutput)

updateStateMachine stateMachineArn setOptions =
    
    let
        requestInput = UpdateStateMachineInput
            
            stateMachineArn
            
            options.definition
            
            options.roleArn
            
        
        options = setOptions (UpdateStateMachineOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateStateMachineInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateStateMachine"
                
                (AWS.Core.Decode.ResultDecoder "UpdateStateMachineOutput" updateStateMachineOutputDecoder)
                
            )



{-| Options for a updateStateMachine request
-}
type alias UpdateStateMachineOptions =
    {
    definition : Maybe String,roleArn : Maybe String
    }




{-| <p>Contains details about an activity that failed during an execution.</p>
-}
type alias ActivityFailedEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



activityFailedEventDetailsDecoder : JD.Decoder ActivityFailedEventDetails
activityFailedEventDetailsDecoder =
    JD.succeed ActivityFailedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["error", "Error"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cause", "Cause"]
            JD.string
        )
        




activityFailedEventDetailsToString : ActivityFailedEventDetails -> String -- List (String, String)
activityFailedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about an activity.</p>
-}
type alias ActivityListItem =
    { activityArn : String
    , name : String
    , creationDate : Posix
    }



activityListItemDecoder : JD.Decoder ActivityListItem
activityListItemDecoder =
    JD.succeed ActivityListItem
        
        |> JDP.custom (AWS.Core.Decode.required
            ["activityArn", "ActivityArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["creationDate", "CreationDate"]
            JDX.datetime
        )
        




activityListItemToString : ActivityListItem -> String -- List (String, String)
activityListItemToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "activityArn" "" -- val.activityArn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about an activity schedule failure that occurred during an execution.</p>
-}
type alias ActivityScheduleFailedEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



activityScheduleFailedEventDetailsDecoder : JD.Decoder ActivityScheduleFailedEventDetails
activityScheduleFailedEventDetailsDecoder =
    JD.succeed ActivityScheduleFailedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["error", "Error"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cause", "Cause"]
            JD.string
        )
        




activityScheduleFailedEventDetailsToString : ActivityScheduleFailedEventDetails -> String -- List (String, String)
activityScheduleFailedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about an activity scheduled during an execution.</p>
-}
type alias ActivityScheduledEventDetails =
    { resource : String
    , input : Maybe String
    , timeoutInSeconds : Maybe Int
    , heartbeatInSeconds : Maybe Int
    }



activityScheduledEventDetailsDecoder : JD.Decoder ActivityScheduledEventDetails
activityScheduledEventDetailsDecoder =
    JD.succeed ActivityScheduledEventDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resource", "Resource"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["input", "Input"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["timeoutInSeconds", "TimeoutInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["heartbeatInSeconds", "HeartbeatInSeconds"]
            JD.int
        )
        




activityScheduledEventDetailsToString : ActivityScheduledEventDetails -> String -- List (String, String)
activityScheduledEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resource" "" -- val.resource
        
    --     |> Dict.insert
    --         "input" "" -- val.input
        
    --     |> Dict.insert
    --         "timeoutInSeconds" "" -- val.timeoutInSeconds
        
    --     |> Dict.insert
    --         "heartbeatInSeconds" "" -- val.heartbeatInSeconds
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about the start of an activity during an execution.</p>
-}
type alias ActivityStartedEventDetails =
    { workerName : Maybe String
    }



activityStartedEventDetailsDecoder : JD.Decoder ActivityStartedEventDetails
activityStartedEventDetailsDecoder =
    JD.succeed ActivityStartedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["workerName", "WorkerName"]
            JD.string
        )
        




activityStartedEventDetailsToString : ActivityStartedEventDetails -> String -- List (String, String)
activityStartedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workerName" "" -- val.workerName
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about an activity that successfully terminated during an execution.</p>
-}
type alias ActivitySucceededEventDetails =
    { output : Maybe String
    }



activitySucceededEventDetailsDecoder : JD.Decoder ActivitySucceededEventDetails
activitySucceededEventDetailsDecoder =
    JD.succeed ActivitySucceededEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["output", "Output"]
            JD.string
        )
        




activitySucceededEventDetailsToString : ActivitySucceededEventDetails -> String -- List (String, String)
activitySucceededEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "output" "" -- val.output
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about an activity timeout that occurred during an execution.</p>
-}
type alias ActivityTimedOutEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



activityTimedOutEventDetailsDecoder : JD.Decoder ActivityTimedOutEventDetails
activityTimedOutEventDetailsDecoder =
    JD.succeed ActivityTimedOutEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["error", "Error"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cause", "Cause"]
            JD.string
        )
        




activityTimedOutEventDetailsToString : ActivityTimedOutEventDetails -> String -- List (String, String)
activityTimedOutEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createActivi
-}
type alias CreateActivityOutput =
    { activityArn : String
    , creationDate : Posix
    }



createActivityOutputDecoder : JD.Decoder CreateActivityOutput
createActivityOutputDecoder =
    JD.succeed CreateActivityOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["activityArn", "ActivityArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["creationDate", "CreationDate"]
            JDX.datetime
        )
        




createActivityOutputToString : CreateActivityOutput -> String -- List (String, String)
createActivityOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "activityArn" "" -- val.activityArn
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createStateMachi
-}
type alias CreateStateMachineOutput =
    { stateMachineArn : String
    , creationDate : Posix
    }



createStateMachineOutputDecoder : JD.Decoder CreateStateMachineOutput
createStateMachineOutputDecoder =
    JD.succeed CreateStateMachineOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["stateMachineArn", "StateMachineArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["creationDate", "CreationDate"]
            JDX.datetime
        )
        




createStateMachineOutputToString : CreateStateMachineOutput -> String -- List (String, String)
createStateMachineOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stateMachineArn" "" -- val.stateMachineArn
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteActivi
-}
type alias DeleteActivityOutput =
    { 
    }



deleteActivityOutputDecoder : JD.Decoder DeleteActivityOutput
deleteActivityOutputDecoder =
    JD.succeed DeleteActivityOutput
        




deleteActivityOutputToString : DeleteActivityOutput -> String -- List (String, String)
deleteActivityOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteStateMachi
-}
type alias DeleteStateMachineOutput =
    { 
    }



deleteStateMachineOutputDecoder : JD.Decoder DeleteStateMachineOutput
deleteStateMachineOutputDecoder =
    JD.succeed DeleteStateMachineOutput
        




deleteStateMachineOutputToString : DeleteStateMachineOutput -> String -- List (String, String)
deleteStateMachineOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeActivi
-}
type alias DescribeActivityOutput =
    { activityArn : String
    , name : String
    , creationDate : Posix
    }



describeActivityOutputDecoder : JD.Decoder DescribeActivityOutput
describeActivityOutputDecoder =
    JD.succeed DescribeActivityOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["activityArn", "ActivityArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["creationDate", "CreationDate"]
            JDX.datetime
        )
        




describeActivityOutputToString : DescribeActivityOutput -> String -- List (String, String)
describeActivityOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "activityArn" "" -- val.activityArn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeExecuti
-}
type alias DescribeExecutionOutput =
    { executionArn : String
    , stateMachineArn : String
    , name : Maybe String
    , status : ExecutionStatus
    , startDate : Posix
    , stopDate : Maybe Posix
    , input : String
    , output : Maybe String
    }



describeExecutionOutputDecoder : JD.Decoder DescribeExecutionOutput
describeExecutionOutputDecoder =
    JD.succeed DescribeExecutionOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["executionArn", "ExecutionArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["stateMachineArn", "StateMachineArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["status", "Status"]
            executionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["startDate", "StartDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stopDate", "StopDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["input", "Input"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["output", "Output"]
            JD.string
        )
        




describeExecutionOutputToString : DescribeExecutionOutput -> String -- List (String, String)
describeExecutionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "executionArn" "" -- val.executionArn
        
    --     |> Dict.insert
    --         "stateMachineArn" "" -- val.stateMachineArn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "startDate" "" -- val.startDate
        
    --     |> Dict.insert
    --         "stopDate" "" -- val.stopDate
        
    --     |> Dict.insert
    --         "input" "" -- val.input
        
    --     |> Dict.insert
    --         "output" "" -- val.output
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStateMachineForExecuti
-}
type alias DescribeStateMachineForExecutionOutput =
    { stateMachineArn : String
    , name : String
    , definition : String
    , roleArn : String
    , updateDate : Posix
    }



describeStateMachineForExecutionOutputDecoder : JD.Decoder DescribeStateMachineForExecutionOutput
describeStateMachineForExecutionOutputDecoder =
    JD.succeed DescribeStateMachineForExecutionOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["stateMachineArn", "StateMachineArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["definition", "Definition"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["roleArn", "RoleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["updateDate", "UpdateDate"]
            JDX.datetime
        )
        




describeStateMachineForExecutionOutputToString : DescribeStateMachineForExecutionOutput -> String -- List (String, String)
describeStateMachineForExecutionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stateMachineArn" "" -- val.stateMachineArn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "definition" "" -- val.definition
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "updateDate" "" -- val.updateDate
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStateMachi
-}
type alias DescribeStateMachineOutput =
    { stateMachineArn : String
    , name : String
    , status : Maybe StateMachineStatus
    , definition : String
    , roleArn : String
    , creationDate : Posix
    }



describeStateMachineOutputDecoder : JD.Decoder DescribeStateMachineOutput
describeStateMachineOutputDecoder =
    JD.succeed DescribeStateMachineOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["stateMachineArn", "StateMachineArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            stateMachineStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["definition", "Definition"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["roleArn", "RoleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["creationDate", "CreationDate"]
            JDX.datetime
        )
        




describeStateMachineOutputToString : DescribeStateMachineOutput -> String -- List (String, String)
describeStateMachineOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stateMachineArn" "" -- val.stateMachineArn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "definition" "" -- val.definition
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about an abort of an execution.</p>
-}
type alias ExecutionAbortedEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



executionAbortedEventDetailsDecoder : JD.Decoder ExecutionAbortedEventDetails
executionAbortedEventDetailsDecoder =
    JD.succeed ExecutionAbortedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["error", "Error"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cause", "Cause"]
            JD.string
        )
        




executionAbortedEventDetailsToString : ExecutionAbortedEventDetails -> String -- List (String, String)
executionAbortedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about an execution failure event.</p>
-}
type alias ExecutionFailedEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



executionFailedEventDetailsDecoder : JD.Decoder ExecutionFailedEventDetails
executionFailedEventDetailsDecoder =
    JD.succeed ExecutionFailedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["error", "Error"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cause", "Cause"]
            JD.string
        )
        




executionFailedEventDetailsToString : ExecutionFailedEventDetails -> String -- List (String, String)
executionFailedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about an execution.</p>
-}
type alias ExecutionListItem =
    { executionArn : String
    , stateMachineArn : String
    , name : String
    , status : ExecutionStatus
    , startDate : Posix
    , stopDate : Maybe Posix
    }



executionListItemDecoder : JD.Decoder ExecutionListItem
executionListItemDecoder =
    JD.succeed ExecutionListItem
        
        |> JDP.custom (AWS.Core.Decode.required
            ["executionArn", "ExecutionArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["stateMachineArn", "StateMachineArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["status", "Status"]
            executionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["startDate", "StartDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stopDate", "StopDate"]
            JDX.datetime
        )
        




executionListItemToString : ExecutionListItem -> String -- List (String, String)
executionListItemToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "executionArn" "" -- val.executionArn
        
    --     |> Dict.insert
    --         "stateMachineArn" "" -- val.stateMachineArn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "startDate" "" -- val.startDate
        
    --     |> Dict.insert
    --         "stopDate" "" -- val.stopDate
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about the start of the execution.</p>
-}
type alias ExecutionStartedEventDetails =
    { input : Maybe String
    , roleArn : Maybe String
    }



executionStartedEventDetailsDecoder : JD.Decoder ExecutionStartedEventDetails
executionStartedEventDetailsDecoder =
    JD.succeed ExecutionStartedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["input", "Input"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["roleArn", "RoleArn"]
            JD.string
        )
        




executionStartedEventDetailsToString : ExecutionStartedEventDetails -> String -- List (String, String)
executionStartedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "input" "" -- val.input
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.toList
    ""



{-| One of

* `ExecutionStatus_RUNNING`
* `ExecutionStatus_SUCCEEDED`
* `ExecutionStatus_FAILED`
* `ExecutionStatus_TIMED_OUT`
* `ExecutionStatus_ABORTED`

-}
type ExecutionStatus
    = ExecutionStatus_RUNNING
    | ExecutionStatus_SUCCEEDED
    | ExecutionStatus_FAILED
    | ExecutionStatus_TIMED_OUT
    | ExecutionStatus_ABORTED



executionStatusDecoder : JD.Decoder ExecutionStatus
executionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RUNNING" ->
                        JD.succeed ExecutionStatus_RUNNING

                    "SUCCEEDED" ->
                        JD.succeed ExecutionStatus_SUCCEEDED

                    "FAILED" ->
                        JD.succeed ExecutionStatus_FAILED

                    "TIMED_OUT" ->
                        JD.succeed ExecutionStatus_TIMED_OUT

                    "ABORTED" ->
                        JD.succeed ExecutionStatus_ABORTED


                    _ ->
                        JD.fail "bad thing"
            )




executionStatusToString : ExecutionStatus -> String
executionStatusToString val =
    case val of
        ExecutionStatus_RUNNING ->
            "RUNNING"

        ExecutionStatus_SUCCEEDED ->
            "SUCCEEDED"

        ExecutionStatus_FAILED ->
            "FAILED"

        ExecutionStatus_TIMED_OUT ->
            "TIMED_OUT"

        ExecutionStatus_ABORTED ->
            "ABORTED"




{-| <p>Contains details about the successful termination of the execution.</p>
-}
type alias ExecutionSucceededEventDetails =
    { output : Maybe String
    }



executionSucceededEventDetailsDecoder : JD.Decoder ExecutionSucceededEventDetails
executionSucceededEventDetailsDecoder =
    JD.succeed ExecutionSucceededEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["output", "Output"]
            JD.string
        )
        




executionSucceededEventDetailsToString : ExecutionSucceededEventDetails -> String -- List (String, String)
executionSucceededEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "output" "" -- val.output
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about the execution timeout that occurred during the execution.</p>
-}
type alias ExecutionTimedOutEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



executionTimedOutEventDetailsDecoder : JD.Decoder ExecutionTimedOutEventDetails
executionTimedOutEventDetailsDecoder =
    JD.succeed ExecutionTimedOutEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["error", "Error"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cause", "Cause"]
            JD.string
        )
        




executionTimedOutEventDetailsToString : ExecutionTimedOutEventDetails -> String -- List (String, String)
executionTimedOutEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getActivityTa
-}
type alias GetActivityTaskOutput =
    { taskToken : Maybe String
    , input : Maybe String
    }



getActivityTaskOutputDecoder : JD.Decoder GetActivityTaskOutput
getActivityTaskOutputDecoder =
    JD.succeed GetActivityTaskOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["taskToken", "TaskToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["input", "Input"]
            JD.string
        )
        




getActivityTaskOutputToString : GetActivityTaskOutput -> String -- List (String, String)
getActivityTaskOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "taskToken" "" -- val.taskToken
        
    --     |> Dict.insert
    --         "input" "" -- val.input
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getExecutionHisto
-}
type alias GetExecutionHistoryOutput =
    { events : (List HistoryEvent)
    , nextToken : Maybe String
    }



getExecutionHistoryOutputDecoder : JD.Decoder GetExecutionHistoryOutput
getExecutionHistoryOutputDecoder =
    JD.succeed GetExecutionHistoryOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["events", "Events"]
            (JD.list historyEventDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




getExecutionHistoryOutputToString : GetExecutionHistoryOutput -> String -- List (String, String)
getExecutionHistoryOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "events" "" -- val.events
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about the events of an execution.</p>
-}
type alias HistoryEvent =
    { timestamp : Posix
    , type_ : HistoryEventType
    , id : Int
    , previousEventId : Maybe Int
    , activityFailedEventDetails : Maybe ActivityFailedEventDetails
    , activityScheduleFailedEventDetails : Maybe ActivityScheduleFailedEventDetails
    , activityScheduledEventDetails : Maybe ActivityScheduledEventDetails
    , activityStartedEventDetails : Maybe ActivityStartedEventDetails
    , activitySucceededEventDetails : Maybe ActivitySucceededEventDetails
    , activityTimedOutEventDetails : Maybe ActivityTimedOutEventDetails
    , taskFailedEventDetails : Maybe TaskFailedEventDetails
    , taskScheduledEventDetails : Maybe TaskScheduledEventDetails
    , taskStartFailedEventDetails : Maybe TaskStartFailedEventDetails
    , taskStartedEventDetails : Maybe TaskStartedEventDetails
    , taskSubmitFailedEventDetails : Maybe TaskSubmitFailedEventDetails
    , taskSubmittedEventDetails : Maybe TaskSubmittedEventDetails
    , taskSucceededEventDetails : Maybe TaskSucceededEventDetails
    , taskTimedOutEventDetails : Maybe TaskTimedOutEventDetails
    , executionFailedEventDetails : Maybe ExecutionFailedEventDetails
    , executionStartedEventDetails : Maybe ExecutionStartedEventDetails
    , executionSucceededEventDetails : Maybe ExecutionSucceededEventDetails
    , executionAbortedEventDetails : Maybe ExecutionAbortedEventDetails
    , executionTimedOutEventDetails : Maybe ExecutionTimedOutEventDetails
    , lambdaFunctionFailedEventDetails : Maybe LambdaFunctionFailedEventDetails
    , lambdaFunctionScheduleFailedEventDetails : Maybe LambdaFunctionScheduleFailedEventDetails
    , lambdaFunctionScheduledEventDetails : Maybe LambdaFunctionScheduledEventDetails
    , lambdaFunctionStartFailedEventDetails : Maybe LambdaFunctionStartFailedEventDetails
    , lambdaFunctionSucceededEventDetails : Maybe LambdaFunctionSucceededEventDetails
    , lambdaFunctionTimedOutEventDetails : Maybe LambdaFunctionTimedOutEventDetails
    , stateEnteredEventDetails : Maybe StateEnteredEventDetails
    , stateExitedEventDetails : Maybe StateExitedEventDetails
    }



historyEventDecoder : JD.Decoder HistoryEvent
historyEventDecoder =
    JD.succeed HistoryEvent
        
        |> JDP.custom (AWS.Core.Decode.required
            ["timestamp", "Timestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["type", "Type"]
            historyEventTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["id", "Id"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["previousEventId", "PreviousEventId"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["activityFailedEventDetails", "ActivityFailedEventDetails"]
            activityFailedEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["activityScheduleFailedEventDetails", "ActivityScheduleFailedEventDetails"]
            activityScheduleFailedEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["activityScheduledEventDetails", "ActivityScheduledEventDetails"]
            activityScheduledEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["activityStartedEventDetails", "ActivityStartedEventDetails"]
            activityStartedEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["activitySucceededEventDetails", "ActivitySucceededEventDetails"]
            activitySucceededEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["activityTimedOutEventDetails", "ActivityTimedOutEventDetails"]
            activityTimedOutEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["taskFailedEventDetails", "TaskFailedEventDetails"]
            taskFailedEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["taskScheduledEventDetails", "TaskScheduledEventDetails"]
            taskScheduledEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["taskStartFailedEventDetails", "TaskStartFailedEventDetails"]
            taskStartFailedEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["taskStartedEventDetails", "TaskStartedEventDetails"]
            taskStartedEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["taskSubmitFailedEventDetails", "TaskSubmitFailedEventDetails"]
            taskSubmitFailedEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["taskSubmittedEventDetails", "TaskSubmittedEventDetails"]
            taskSubmittedEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["taskSucceededEventDetails", "TaskSucceededEventDetails"]
            taskSucceededEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["taskTimedOutEventDetails", "TaskTimedOutEventDetails"]
            taskTimedOutEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["executionFailedEventDetails", "ExecutionFailedEventDetails"]
            executionFailedEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["executionStartedEventDetails", "ExecutionStartedEventDetails"]
            executionStartedEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["executionSucceededEventDetails", "ExecutionSucceededEventDetails"]
            executionSucceededEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["executionAbortedEventDetails", "ExecutionAbortedEventDetails"]
            executionAbortedEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["executionTimedOutEventDetails", "ExecutionTimedOutEventDetails"]
            executionTimedOutEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lambdaFunctionFailedEventDetails", "LambdaFunctionFailedEventDetails"]
            lambdaFunctionFailedEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lambdaFunctionScheduleFailedEventDetails", "LambdaFunctionScheduleFailedEventDetails"]
            lambdaFunctionScheduleFailedEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lambdaFunctionScheduledEventDetails", "LambdaFunctionScheduledEventDetails"]
            lambdaFunctionScheduledEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lambdaFunctionStartFailedEventDetails", "LambdaFunctionStartFailedEventDetails"]
            lambdaFunctionStartFailedEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lambdaFunctionSucceededEventDetails", "LambdaFunctionSucceededEventDetails"]
            lambdaFunctionSucceededEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lambdaFunctionTimedOutEventDetails", "LambdaFunctionTimedOutEventDetails"]
            lambdaFunctionTimedOutEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stateEnteredEventDetails", "StateEnteredEventDetails"]
            stateEnteredEventDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stateExitedEventDetails", "StateExitedEventDetails"]
            stateExitedEventDetailsDecoder
        )
        




historyEventToString : HistoryEvent -> String -- List (String, String)
historyEventToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "previousEventId" "" -- val.previousEventId
        
    --     |> Dict.insert
    --         "activityFailedEventDetails" "" -- val.activityFailedEventDetails
        
    --     |> Dict.insert
    --         "activityScheduleFailedEventDetails" "" -- val.activityScheduleFailedEventDetails
        
    --     |> Dict.insert
    --         "activityScheduledEventDetails" "" -- val.activityScheduledEventDetails
        
    --     |> Dict.insert
    --         "activityStartedEventDetails" "" -- val.activityStartedEventDetails
        
    --     |> Dict.insert
    --         "activitySucceededEventDetails" "" -- val.activitySucceededEventDetails
        
    --     |> Dict.insert
    --         "activityTimedOutEventDetails" "" -- val.activityTimedOutEventDetails
        
    --     |> Dict.insert
    --         "taskFailedEventDetails" "" -- val.taskFailedEventDetails
        
    --     |> Dict.insert
    --         "taskScheduledEventDetails" "" -- val.taskScheduledEventDetails
        
    --     |> Dict.insert
    --         "taskStartFailedEventDetails" "" -- val.taskStartFailedEventDetails
        
    --     |> Dict.insert
    --         "taskStartedEventDetails" "" -- val.taskStartedEventDetails
        
    --     |> Dict.insert
    --         "taskSubmitFailedEventDetails" "" -- val.taskSubmitFailedEventDetails
        
    --     |> Dict.insert
    --         "taskSubmittedEventDetails" "" -- val.taskSubmittedEventDetails
        
    --     |> Dict.insert
    --         "taskSucceededEventDetails" "" -- val.taskSucceededEventDetails
        
    --     |> Dict.insert
    --         "taskTimedOutEventDetails" "" -- val.taskTimedOutEventDetails
        
    --     |> Dict.insert
    --         "executionFailedEventDetails" "" -- val.executionFailedEventDetails
        
    --     |> Dict.insert
    --         "executionStartedEventDetails" "" -- val.executionStartedEventDetails
        
    --     |> Dict.insert
    --         "executionSucceededEventDetails" "" -- val.executionSucceededEventDetails
        
    --     |> Dict.insert
    --         "executionAbortedEventDetails" "" -- val.executionAbortedEventDetails
        
    --     |> Dict.insert
    --         "executionTimedOutEventDetails" "" -- val.executionTimedOutEventDetails
        
    --     |> Dict.insert
    --         "lambdaFunctionFailedEventDetails" "" -- val.lambdaFunctionFailedEventDetails
        
    --     |> Dict.insert
    --         "lambdaFunctionScheduleFailedEventDetails" "" -- val.lambdaFunctionScheduleFailedEventDetails
        
    --     |> Dict.insert
    --         "lambdaFunctionScheduledEventDetails" "" -- val.lambdaFunctionScheduledEventDetails
        
    --     |> Dict.insert
    --         "lambdaFunctionStartFailedEventDetails" "" -- val.lambdaFunctionStartFailedEventDetails
        
    --     |> Dict.insert
    --         "lambdaFunctionSucceededEventDetails" "" -- val.lambdaFunctionSucceededEventDetails
        
    --     |> Dict.insert
    --         "lambdaFunctionTimedOutEventDetails" "" -- val.lambdaFunctionTimedOutEventDetails
        
    --     |> Dict.insert
    --         "stateEnteredEventDetails" "" -- val.stateEnteredEventDetails
        
    --     |> Dict.insert
    --         "stateExitedEventDetails" "" -- val.stateExitedEventDetails
        
    --     |> Dict.toList
    ""



{-| One of

* `HistoryEventType_ActivityFailed`
* `HistoryEventType_ActivityScheduleFailed`
* `HistoryEventType_ActivityScheduled`
* `HistoryEventType_ActivityStarted`
* `HistoryEventType_ActivitySucceeded`
* `HistoryEventType_ActivityTimedOut`
* `HistoryEventType_ChoiceStateEntered`
* `HistoryEventType_ChoiceStateExited`
* `HistoryEventType_TaskFailed`
* `HistoryEventType_TaskScheduled`
* `HistoryEventType_TaskStartFailed`
* `HistoryEventType_TaskStarted`
* `HistoryEventType_TaskSubmitFailed`
* `HistoryEventType_TaskSubmitted`
* `HistoryEventType_TaskSucceeded`
* `HistoryEventType_TaskTimedOut`
* `HistoryEventType_ExecutionFailed`
* `HistoryEventType_ExecutionStarted`
* `HistoryEventType_ExecutionSucceeded`
* `HistoryEventType_ExecutionAborted`
* `HistoryEventType_ExecutionTimedOut`
* `HistoryEventType_FailStateEntered`
* `HistoryEventType_LambdaFunctionFailed`
* `HistoryEventType_LambdaFunctionScheduleFailed`
* `HistoryEventType_LambdaFunctionScheduled`
* `HistoryEventType_LambdaFunctionStartFailed`
* `HistoryEventType_LambdaFunctionStarted`
* `HistoryEventType_LambdaFunctionSucceeded`
* `HistoryEventType_LambdaFunctionTimedOut`
* `HistoryEventType_SucceedStateEntered`
* `HistoryEventType_SucceedStateExited`
* `HistoryEventType_TaskStateAborted`
* `HistoryEventType_TaskStateEntered`
* `HistoryEventType_TaskStateExited`
* `HistoryEventType_PassStateEntered`
* `HistoryEventType_PassStateExited`
* `HistoryEventType_ParallelStateAborted`
* `HistoryEventType_ParallelStateEntered`
* `HistoryEventType_ParallelStateExited`
* `HistoryEventType_ParallelStateFailed`
* `HistoryEventType_ParallelStateStarted`
* `HistoryEventType_ParallelStateSucceeded`
* `HistoryEventType_WaitStateAborted`
* `HistoryEventType_WaitStateEntered`
* `HistoryEventType_WaitStateExited`

-}
type HistoryEventType
    = HistoryEventType_ActivityFailed
    | HistoryEventType_ActivityScheduleFailed
    | HistoryEventType_ActivityScheduled
    | HistoryEventType_ActivityStarted
    | HistoryEventType_ActivitySucceeded
    | HistoryEventType_ActivityTimedOut
    | HistoryEventType_ChoiceStateEntered
    | HistoryEventType_ChoiceStateExited
    | HistoryEventType_TaskFailed
    | HistoryEventType_TaskScheduled
    | HistoryEventType_TaskStartFailed
    | HistoryEventType_TaskStarted
    | HistoryEventType_TaskSubmitFailed
    | HistoryEventType_TaskSubmitted
    | HistoryEventType_TaskSucceeded
    | HistoryEventType_TaskTimedOut
    | HistoryEventType_ExecutionFailed
    | HistoryEventType_ExecutionStarted
    | HistoryEventType_ExecutionSucceeded
    | HistoryEventType_ExecutionAborted
    | HistoryEventType_ExecutionTimedOut
    | HistoryEventType_FailStateEntered
    | HistoryEventType_LambdaFunctionFailed
    | HistoryEventType_LambdaFunctionScheduleFailed
    | HistoryEventType_LambdaFunctionScheduled
    | HistoryEventType_LambdaFunctionStartFailed
    | HistoryEventType_LambdaFunctionStarted
    | HistoryEventType_LambdaFunctionSucceeded
    | HistoryEventType_LambdaFunctionTimedOut
    | HistoryEventType_SucceedStateEntered
    | HistoryEventType_SucceedStateExited
    | HistoryEventType_TaskStateAborted
    | HistoryEventType_TaskStateEntered
    | HistoryEventType_TaskStateExited
    | HistoryEventType_PassStateEntered
    | HistoryEventType_PassStateExited
    | HistoryEventType_ParallelStateAborted
    | HistoryEventType_ParallelStateEntered
    | HistoryEventType_ParallelStateExited
    | HistoryEventType_ParallelStateFailed
    | HistoryEventType_ParallelStateStarted
    | HistoryEventType_ParallelStateSucceeded
    | HistoryEventType_WaitStateAborted
    | HistoryEventType_WaitStateEntered
    | HistoryEventType_WaitStateExited



historyEventTypeDecoder : JD.Decoder HistoryEventType
historyEventTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ActivityFailed" ->
                        JD.succeed HistoryEventType_ActivityFailed

                    "ActivityScheduleFailed" ->
                        JD.succeed HistoryEventType_ActivityScheduleFailed

                    "ActivityScheduled" ->
                        JD.succeed HistoryEventType_ActivityScheduled

                    "ActivityStarted" ->
                        JD.succeed HistoryEventType_ActivityStarted

                    "ActivitySucceeded" ->
                        JD.succeed HistoryEventType_ActivitySucceeded

                    "ActivityTimedOut" ->
                        JD.succeed HistoryEventType_ActivityTimedOut

                    "ChoiceStateEntered" ->
                        JD.succeed HistoryEventType_ChoiceStateEntered

                    "ChoiceStateExited" ->
                        JD.succeed HistoryEventType_ChoiceStateExited

                    "TaskFailed" ->
                        JD.succeed HistoryEventType_TaskFailed

                    "TaskScheduled" ->
                        JD.succeed HistoryEventType_TaskScheduled

                    "TaskStartFailed" ->
                        JD.succeed HistoryEventType_TaskStartFailed

                    "TaskStarted" ->
                        JD.succeed HistoryEventType_TaskStarted

                    "TaskSubmitFailed" ->
                        JD.succeed HistoryEventType_TaskSubmitFailed

                    "TaskSubmitted" ->
                        JD.succeed HistoryEventType_TaskSubmitted

                    "TaskSucceeded" ->
                        JD.succeed HistoryEventType_TaskSucceeded

                    "TaskTimedOut" ->
                        JD.succeed HistoryEventType_TaskTimedOut

                    "ExecutionFailed" ->
                        JD.succeed HistoryEventType_ExecutionFailed

                    "ExecutionStarted" ->
                        JD.succeed HistoryEventType_ExecutionStarted

                    "ExecutionSucceeded" ->
                        JD.succeed HistoryEventType_ExecutionSucceeded

                    "ExecutionAborted" ->
                        JD.succeed HistoryEventType_ExecutionAborted

                    "ExecutionTimedOut" ->
                        JD.succeed HistoryEventType_ExecutionTimedOut

                    "FailStateEntered" ->
                        JD.succeed HistoryEventType_FailStateEntered

                    "LambdaFunctionFailed" ->
                        JD.succeed HistoryEventType_LambdaFunctionFailed

                    "LambdaFunctionScheduleFailed" ->
                        JD.succeed HistoryEventType_LambdaFunctionScheduleFailed

                    "LambdaFunctionScheduled" ->
                        JD.succeed HistoryEventType_LambdaFunctionScheduled

                    "LambdaFunctionStartFailed" ->
                        JD.succeed HistoryEventType_LambdaFunctionStartFailed

                    "LambdaFunctionStarted" ->
                        JD.succeed HistoryEventType_LambdaFunctionStarted

                    "LambdaFunctionSucceeded" ->
                        JD.succeed HistoryEventType_LambdaFunctionSucceeded

                    "LambdaFunctionTimedOut" ->
                        JD.succeed HistoryEventType_LambdaFunctionTimedOut

                    "SucceedStateEntered" ->
                        JD.succeed HistoryEventType_SucceedStateEntered

                    "SucceedStateExited" ->
                        JD.succeed HistoryEventType_SucceedStateExited

                    "TaskStateAborted" ->
                        JD.succeed HistoryEventType_TaskStateAborted

                    "TaskStateEntered" ->
                        JD.succeed HistoryEventType_TaskStateEntered

                    "TaskStateExited" ->
                        JD.succeed HistoryEventType_TaskStateExited

                    "PassStateEntered" ->
                        JD.succeed HistoryEventType_PassStateEntered

                    "PassStateExited" ->
                        JD.succeed HistoryEventType_PassStateExited

                    "ParallelStateAborted" ->
                        JD.succeed HistoryEventType_ParallelStateAborted

                    "ParallelStateEntered" ->
                        JD.succeed HistoryEventType_ParallelStateEntered

                    "ParallelStateExited" ->
                        JD.succeed HistoryEventType_ParallelStateExited

                    "ParallelStateFailed" ->
                        JD.succeed HistoryEventType_ParallelStateFailed

                    "ParallelStateStarted" ->
                        JD.succeed HistoryEventType_ParallelStateStarted

                    "ParallelStateSucceeded" ->
                        JD.succeed HistoryEventType_ParallelStateSucceeded

                    "WaitStateAborted" ->
                        JD.succeed HistoryEventType_WaitStateAborted

                    "WaitStateEntered" ->
                        JD.succeed HistoryEventType_WaitStateEntered

                    "WaitStateExited" ->
                        JD.succeed HistoryEventType_WaitStateExited


                    _ ->
                        JD.fail "bad thing"
            )




historyEventTypeToString : HistoryEventType -> String
historyEventTypeToString val =
    case val of
        HistoryEventType_ActivityFailed ->
            "ActivityFailed"

        HistoryEventType_ActivityScheduleFailed ->
            "ActivityScheduleFailed"

        HistoryEventType_ActivityScheduled ->
            "ActivityScheduled"

        HistoryEventType_ActivityStarted ->
            "ActivityStarted"

        HistoryEventType_ActivitySucceeded ->
            "ActivitySucceeded"

        HistoryEventType_ActivityTimedOut ->
            "ActivityTimedOut"

        HistoryEventType_ChoiceStateEntered ->
            "ChoiceStateEntered"

        HistoryEventType_ChoiceStateExited ->
            "ChoiceStateExited"

        HistoryEventType_TaskFailed ->
            "TaskFailed"

        HistoryEventType_TaskScheduled ->
            "TaskScheduled"

        HistoryEventType_TaskStartFailed ->
            "TaskStartFailed"

        HistoryEventType_TaskStarted ->
            "TaskStarted"

        HistoryEventType_TaskSubmitFailed ->
            "TaskSubmitFailed"

        HistoryEventType_TaskSubmitted ->
            "TaskSubmitted"

        HistoryEventType_TaskSucceeded ->
            "TaskSucceeded"

        HistoryEventType_TaskTimedOut ->
            "TaskTimedOut"

        HistoryEventType_ExecutionFailed ->
            "ExecutionFailed"

        HistoryEventType_ExecutionStarted ->
            "ExecutionStarted"

        HistoryEventType_ExecutionSucceeded ->
            "ExecutionSucceeded"

        HistoryEventType_ExecutionAborted ->
            "ExecutionAborted"

        HistoryEventType_ExecutionTimedOut ->
            "ExecutionTimedOut"

        HistoryEventType_FailStateEntered ->
            "FailStateEntered"

        HistoryEventType_LambdaFunctionFailed ->
            "LambdaFunctionFailed"

        HistoryEventType_LambdaFunctionScheduleFailed ->
            "LambdaFunctionScheduleFailed"

        HistoryEventType_LambdaFunctionScheduled ->
            "LambdaFunctionScheduled"

        HistoryEventType_LambdaFunctionStartFailed ->
            "LambdaFunctionStartFailed"

        HistoryEventType_LambdaFunctionStarted ->
            "LambdaFunctionStarted"

        HistoryEventType_LambdaFunctionSucceeded ->
            "LambdaFunctionSucceeded"

        HistoryEventType_LambdaFunctionTimedOut ->
            "LambdaFunctionTimedOut"

        HistoryEventType_SucceedStateEntered ->
            "SucceedStateEntered"

        HistoryEventType_SucceedStateExited ->
            "SucceedStateExited"

        HistoryEventType_TaskStateAborted ->
            "TaskStateAborted"

        HistoryEventType_TaskStateEntered ->
            "TaskStateEntered"

        HistoryEventType_TaskStateExited ->
            "TaskStateExited"

        HistoryEventType_PassStateEntered ->
            "PassStateEntered"

        HistoryEventType_PassStateExited ->
            "PassStateExited"

        HistoryEventType_ParallelStateAborted ->
            "ParallelStateAborted"

        HistoryEventType_ParallelStateEntered ->
            "ParallelStateEntered"

        HistoryEventType_ParallelStateExited ->
            "ParallelStateExited"

        HistoryEventType_ParallelStateFailed ->
            "ParallelStateFailed"

        HistoryEventType_ParallelStateStarted ->
            "ParallelStateStarted"

        HistoryEventType_ParallelStateSucceeded ->
            "ParallelStateSucceeded"

        HistoryEventType_WaitStateAborted ->
            "WaitStateAborted"

        HistoryEventType_WaitStateEntered ->
            "WaitStateEntered"

        HistoryEventType_WaitStateExited ->
            "WaitStateExited"




{-| <p>Contains details about a lambda function that failed during an execution.</p>
-}
type alias LambdaFunctionFailedEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



lambdaFunctionFailedEventDetailsDecoder : JD.Decoder LambdaFunctionFailedEventDetails
lambdaFunctionFailedEventDetailsDecoder =
    JD.succeed LambdaFunctionFailedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["error", "Error"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cause", "Cause"]
            JD.string
        )
        




lambdaFunctionFailedEventDetailsToString : LambdaFunctionFailedEventDetails -> String -- List (String, String)
lambdaFunctionFailedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about a failed lambda function schedule event that occurred during an execution.</p>
-}
type alias LambdaFunctionScheduleFailedEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



lambdaFunctionScheduleFailedEventDetailsDecoder : JD.Decoder LambdaFunctionScheduleFailedEventDetails
lambdaFunctionScheduleFailedEventDetailsDecoder =
    JD.succeed LambdaFunctionScheduleFailedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["error", "Error"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cause", "Cause"]
            JD.string
        )
        




lambdaFunctionScheduleFailedEventDetailsToString : LambdaFunctionScheduleFailedEventDetails -> String -- List (String, String)
lambdaFunctionScheduleFailedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about a lambda function scheduled during an execution.</p>
-}
type alias LambdaFunctionScheduledEventDetails =
    { resource : String
    , input : Maybe String
    , timeoutInSeconds : Maybe Int
    }



lambdaFunctionScheduledEventDetailsDecoder : JD.Decoder LambdaFunctionScheduledEventDetails
lambdaFunctionScheduledEventDetailsDecoder =
    JD.succeed LambdaFunctionScheduledEventDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resource", "Resource"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["input", "Input"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["timeoutInSeconds", "TimeoutInSeconds"]
            JD.int
        )
        




lambdaFunctionScheduledEventDetailsToString : LambdaFunctionScheduledEventDetails -> String -- List (String, String)
lambdaFunctionScheduledEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resource" "" -- val.resource
        
    --     |> Dict.insert
    --         "input" "" -- val.input
        
    --     |> Dict.insert
    --         "timeoutInSeconds" "" -- val.timeoutInSeconds
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about a lambda function that failed to start during an execution.</p>
-}
type alias LambdaFunctionStartFailedEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



lambdaFunctionStartFailedEventDetailsDecoder : JD.Decoder LambdaFunctionStartFailedEventDetails
lambdaFunctionStartFailedEventDetailsDecoder =
    JD.succeed LambdaFunctionStartFailedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["error", "Error"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cause", "Cause"]
            JD.string
        )
        




lambdaFunctionStartFailedEventDetailsToString : LambdaFunctionStartFailedEventDetails -> String -- List (String, String)
lambdaFunctionStartFailedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about a lambda function that successfully terminated during an execution.</p>
-}
type alias LambdaFunctionSucceededEventDetails =
    { output : Maybe String
    }



lambdaFunctionSucceededEventDetailsDecoder : JD.Decoder LambdaFunctionSucceededEventDetails
lambdaFunctionSucceededEventDetailsDecoder =
    JD.succeed LambdaFunctionSucceededEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["output", "Output"]
            JD.string
        )
        




lambdaFunctionSucceededEventDetailsToString : LambdaFunctionSucceededEventDetails -> String -- List (String, String)
lambdaFunctionSucceededEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "output" "" -- val.output
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about a lambda function timeout that occurred during an execution.</p>
-}
type alias LambdaFunctionTimedOutEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



lambdaFunctionTimedOutEventDetailsDecoder : JD.Decoder LambdaFunctionTimedOutEventDetails
lambdaFunctionTimedOutEventDetailsDecoder =
    JD.succeed LambdaFunctionTimedOutEventDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["error", "Error"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cause", "Cause"]
            JD.string
        )
        




lambdaFunctionTimedOutEventDetailsToString : LambdaFunctionTimedOutEventDetails -> String -- List (String, String)
lambdaFunctionTimedOutEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listActiviti
-}
type alias ListActivitiesOutput =
    { activities : (List ActivityListItem)
    , nextToken : Maybe String
    }



listActivitiesOutputDecoder : JD.Decoder ListActivitiesOutput
listActivitiesOutputDecoder =
    JD.succeed ListActivitiesOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["activities", "Activities"]
            (JD.list activityListItemDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listActivitiesOutputToString : ListActivitiesOutput -> String -- List (String, String)
listActivitiesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "activities" "" -- val.activities
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listExecutio
-}
type alias ListExecutionsOutput =
    { executions : (List ExecutionListItem)
    , nextToken : Maybe String
    }



listExecutionsOutputDecoder : JD.Decoder ListExecutionsOutput
listExecutionsOutputDecoder =
    JD.succeed ListExecutionsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["executions", "Executions"]
            (JD.list executionListItemDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listExecutionsOutputToString : ListExecutionsOutput -> String -- List (String, String)
listExecutionsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "executions" "" -- val.executions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listStateMachin
-}
type alias ListStateMachinesOutput =
    { stateMachines : (List StateMachineListItem)
    , nextToken : Maybe String
    }



listStateMachinesOutputDecoder : JD.Decoder ListStateMachinesOutput
listStateMachinesOutputDecoder =
    JD.succeed ListStateMachinesOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["stateMachines", "StateMachines"]
            (JD.list stateMachineListItemDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listStateMachinesOutputToString : ListStateMachinesOutput -> String -- List (String, String)
listStateMachinesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stateMachines" "" -- val.stateMachines
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForResour
-}
type alias ListTagsForResourceOutput =
    { tags : Maybe (List Tag)
    }



listTagsForResourceOutputDecoder : JD.Decoder ListTagsForResourceOutput
listTagsForResourceOutputDecoder =
    JD.succeed ListTagsForResourceOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




listTagsForResourceOutputToString : ListTagsForResourceOutput -> String -- List (String, String)
listTagsForResourceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from sendTaskFailu
-}
type alias SendTaskFailureOutput =
    { 
    }



sendTaskFailureOutputDecoder : JD.Decoder SendTaskFailureOutput
sendTaskFailureOutputDecoder =
    JD.succeed SendTaskFailureOutput
        




sendTaskFailureOutputToString : SendTaskFailureOutput -> String -- List (String, String)
sendTaskFailureOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from sendTaskHeartbe
-}
type alias SendTaskHeartbeatOutput =
    { 
    }



sendTaskHeartbeatOutputDecoder : JD.Decoder SendTaskHeartbeatOutput
sendTaskHeartbeatOutputDecoder =
    JD.succeed SendTaskHeartbeatOutput
        




sendTaskHeartbeatOutputToString : SendTaskHeartbeatOutput -> String -- List (String, String)
sendTaskHeartbeatOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from sendTaskSucce
-}
type alias SendTaskSuccessOutput =
    { 
    }



sendTaskSuccessOutputDecoder : JD.Decoder SendTaskSuccessOutput
sendTaskSuccessOutputDecoder =
    JD.succeed SendTaskSuccessOutput
        




sendTaskSuccessOutputToString : SendTaskSuccessOutput -> String -- List (String, String)
sendTaskSuccessOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startExecuti
-}
type alias StartExecutionOutput =
    { executionArn : String
    , startDate : Posix
    }



startExecutionOutputDecoder : JD.Decoder StartExecutionOutput
startExecutionOutputDecoder =
    JD.succeed StartExecutionOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["executionArn", "ExecutionArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["startDate", "StartDate"]
            JDX.datetime
        )
        




startExecutionOutputToString : StartExecutionOutput -> String -- List (String, String)
startExecutionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "executionArn" "" -- val.executionArn
        
    --     |> Dict.insert
    --         "startDate" "" -- val.startDate
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about a state entered during an execution.</p>
-}
type alias StateEnteredEventDetails =
    { name : String
    , input : Maybe String
    }



stateEnteredEventDetailsDecoder : JD.Decoder StateEnteredEventDetails
stateEnteredEventDetailsDecoder =
    JD.succeed StateEnteredEventDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["input", "Input"]
            JD.string
        )
        




stateEnteredEventDetailsToString : StateEnteredEventDetails -> String -- List (String, String)
stateEnteredEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "input" "" -- val.input
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about an exit from a state during an execution.</p>
-}
type alias StateExitedEventDetails =
    { name : String
    , output : Maybe String
    }



stateExitedEventDetailsDecoder : JD.Decoder StateExitedEventDetails
stateExitedEventDetailsDecoder =
    JD.succeed StateExitedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["output", "Output"]
            JD.string
        )
        




stateExitedEventDetailsToString : StateExitedEventDetails -> String -- List (String, String)
stateExitedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "output" "" -- val.output
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about the state machine.</p>
-}
type alias StateMachineListItem =
    { stateMachineArn : String
    , name : String
    , creationDate : Posix
    }



stateMachineListItemDecoder : JD.Decoder StateMachineListItem
stateMachineListItemDecoder =
    JD.succeed StateMachineListItem
        
        |> JDP.custom (AWS.Core.Decode.required
            ["stateMachineArn", "StateMachineArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["creationDate", "CreationDate"]
            JDX.datetime
        )
        




stateMachineListItemToString : StateMachineListItem -> String -- List (String, String)
stateMachineListItemToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stateMachineArn" "" -- val.stateMachineArn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.toList
    ""



{-| One of

* `StateMachineStatus_ACTIVE`
* `StateMachineStatus_DELETING`

-}
type StateMachineStatus
    = StateMachineStatus_ACTIVE
    | StateMachineStatus_DELETING



stateMachineStatusDecoder : JD.Decoder StateMachineStatus
stateMachineStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed StateMachineStatus_ACTIVE

                    "DELETING" ->
                        JD.succeed StateMachineStatus_DELETING


                    _ ->
                        JD.fail "bad thing"
            )




stateMachineStatusToString : StateMachineStatus -> String
stateMachineStatusToString val =
    case val of
        StateMachineStatus_ACTIVE ->
            "ACTIVE"

        StateMachineStatus_DELETING ->
            "DELETING"




{-| Type of HTTP response from stopExecuti
-}
type alias StopExecutionOutput =
    { stopDate : Posix
    }



stopExecutionOutputDecoder : JD.Decoder StopExecutionOutput
stopExecutionOutputDecoder =
    JD.succeed StopExecutionOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["stopDate", "StopDate"]
            JDX.datetime
        )
        




stopExecutionOutputToString : StopExecutionOutput -> String -- List (String, String)
stopExecutionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stopDate" "" -- val.stopDate
        
    --     |> Dict.toList
    ""



{-| <p>Tags are key-value pairs that can be associated with Step Functions state machines and activities.</p>
-}
type alias Tag =
    { key : Maybe String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.optional
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



{-| <p>Contains details about a task failure event.</p>
-}
type alias TaskFailedEventDetails =
    { resourceType : String
    , resource : String
    , error : Maybe String
    , cause : Maybe String
    }



taskFailedEventDetailsDecoder : JD.Decoder TaskFailedEventDetails
taskFailedEventDetailsDecoder =
    JD.succeed TaskFailedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourceType", "ResourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resource", "Resource"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["error", "Error"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cause", "Cause"]
            JD.string
        )
        




taskFailedEventDetailsToString : TaskFailedEventDetails -> String -- List (String, String)
taskFailedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "resource" "" -- val.resource
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about a task scheduled during an execution.</p>
-}
type alias TaskScheduledEventDetails =
    { resourceType : String
    , resource : String
    , region : String
    , parameters : String
    , timeoutInSeconds : Maybe Int
    }



taskScheduledEventDetailsDecoder : JD.Decoder TaskScheduledEventDetails
taskScheduledEventDetailsDecoder =
    JD.succeed TaskScheduledEventDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourceType", "ResourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resource", "Resource"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["region", "Region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["parameters", "Parameters"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["timeoutInSeconds", "TimeoutInSeconds"]
            JD.int
        )
        




taskScheduledEventDetailsToString : TaskScheduledEventDetails -> String -- List (String, String)
taskScheduledEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "resource" "" -- val.resource
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "timeoutInSeconds" "" -- val.timeoutInSeconds
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about a task that failed to start during an execution.</p>
-}
type alias TaskStartFailedEventDetails =
    { resourceType : String
    , resource : String
    , error : Maybe String
    , cause : Maybe String
    }



taskStartFailedEventDetailsDecoder : JD.Decoder TaskStartFailedEventDetails
taskStartFailedEventDetailsDecoder =
    JD.succeed TaskStartFailedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourceType", "ResourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resource", "Resource"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["error", "Error"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cause", "Cause"]
            JD.string
        )
        




taskStartFailedEventDetailsToString : TaskStartFailedEventDetails -> String -- List (String, String)
taskStartFailedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "resource" "" -- val.resource
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about the start of a task during an execution.</p>
-}
type alias TaskStartedEventDetails =
    { resourceType : String
    , resource : String
    }



taskStartedEventDetailsDecoder : JD.Decoder TaskStartedEventDetails
taskStartedEventDetailsDecoder =
    JD.succeed TaskStartedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourceType", "ResourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resource", "Resource"]
            JD.string
        )
        




taskStartedEventDetailsToString : TaskStartedEventDetails -> String -- List (String, String)
taskStartedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "resource" "" -- val.resource
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about a task that failed to submit during an execution.</p>
-}
type alias TaskSubmitFailedEventDetails =
    { resourceType : String
    , resource : String
    , error : Maybe String
    , cause : Maybe String
    }



taskSubmitFailedEventDetailsDecoder : JD.Decoder TaskSubmitFailedEventDetails
taskSubmitFailedEventDetailsDecoder =
    JD.succeed TaskSubmitFailedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourceType", "ResourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resource", "Resource"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["error", "Error"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cause", "Cause"]
            JD.string
        )
        




taskSubmitFailedEventDetailsToString : TaskSubmitFailedEventDetails -> String -- List (String, String)
taskSubmitFailedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "resource" "" -- val.resource
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about a task submitted to a resource .</p>
-}
type alias TaskSubmittedEventDetails =
    { resourceType : String
    , resource : String
    , output : Maybe String
    }



taskSubmittedEventDetailsDecoder : JD.Decoder TaskSubmittedEventDetails
taskSubmittedEventDetailsDecoder =
    JD.succeed TaskSubmittedEventDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourceType", "ResourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resource", "Resource"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["output", "Output"]
            JD.string
        )
        




taskSubmittedEventDetailsToString : TaskSubmittedEventDetails -> String -- List (String, String)
taskSubmittedEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "resource" "" -- val.resource
        
    --     |> Dict.insert
    --         "output" "" -- val.output
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about the successful completion of a task state.</p>
-}
type alias TaskSucceededEventDetails =
    { resourceType : String
    , resource : String
    , output : Maybe String
    }



taskSucceededEventDetailsDecoder : JD.Decoder TaskSucceededEventDetails
taskSucceededEventDetailsDecoder =
    JD.succeed TaskSucceededEventDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourceType", "ResourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resource", "Resource"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["output", "Output"]
            JD.string
        )
        




taskSucceededEventDetailsToString : TaskSucceededEventDetails -> String -- List (String, String)
taskSucceededEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "resource" "" -- val.resource
        
    --     |> Dict.insert
    --         "output" "" -- val.output
        
    --     |> Dict.toList
    ""



{-| <p>Contains details about a resource timeout that occurred during an execution.</p>
-}
type alias TaskTimedOutEventDetails =
    { resourceType : String
    , resource : String
    , error : Maybe String
    , cause : Maybe String
    }



taskTimedOutEventDetailsDecoder : JD.Decoder TaskTimedOutEventDetails
taskTimedOutEventDetailsDecoder =
    JD.succeed TaskTimedOutEventDetails
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourceType", "ResourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resource", "Resource"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["error", "Error"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cause", "Cause"]
            JD.string
        )
        




taskTimedOutEventDetailsToString : TaskTimedOutEventDetails -> String -- List (String, String)
taskTimedOutEventDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "resource" "" -- val.resource
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.insert
    --         "cause" "" -- val.cause
        
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



{-| Type of HTTP response from updateStateMachi
-}
type alias UpdateStateMachineOutput =
    { updateDate : Posix
    }



updateStateMachineOutputDecoder : JD.Decoder UpdateStateMachineOutput
updateStateMachineOutputDecoder =
    JD.succeed UpdateStateMachineOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["updateDate", "UpdateDate"]
            JDX.datetime
        )
        




updateStateMachineOutputToString : UpdateStateMachineOutput -> String -- List (String, String)
updateStateMachineOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "updateDate" "" -- val.updateDate
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias CreateActivityInput =
    { name : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateStateMachineInput =
    { name : String
    , definition : String
    , roleArn : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias DeleteActivityInput =
    { activityArn : String
    }


{-| undefined
-}
type alias DeleteStateMachineInput =
    { stateMachineArn : String
    }


{-| undefined
-}
type alias DescribeActivityInput =
    { activityArn : String
    }


{-| undefined
-}
type alias DescribeExecutionInput =
    { executionArn : String
    }


{-| undefined
-}
type alias DescribeStateMachineForExecutionInput =
    { executionArn : String
    }


{-| undefined
-}
type alias DescribeStateMachineInput =
    { stateMachineArn : String
    }


{-| undefined
-}
type alias GetActivityTaskInput =
    { activityArn : String
    , workerName : Maybe String
    }


{-| undefined
-}
type alias GetExecutionHistoryInput =
    { executionArn : String
    , maxResults : Maybe Int
    , reverseOrder : Maybe Bool
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListActivitiesInput =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListExecutionsInput =
    { stateMachineArn : String
    , statusFilter : Maybe ExecutionStatus
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListStateMachinesInput =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListTagsForResourceInput =
    { resourceArn : String
    }


{-| undefined
-}
type alias SendTaskFailureInput =
    { taskToken : String
    , error : Maybe String
    , cause : Maybe String
    }


{-| undefined
-}
type alias SendTaskHeartbeatInput =
    { taskToken : String
    }


{-| undefined
-}
type alias SendTaskSuccessInput =
    { taskToken : String
    , output : String
    }


{-| undefined
-}
type alias StartExecutionInput =
    { stateMachineArn : String
    , name : Maybe String
    , input : Maybe String
    }


{-| undefined
-}
type alias StopExecutionInput =
    { executionArn : String
    , error : Maybe String
    , cause : Maybe String
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


{-| undefined
-}
type alias UpdateStateMachineInput =
    { stateMachineArn : String
    , definition : Maybe String
    , roleArn : Maybe String
    }






activityFailedEventDetailsEncoder : ActivityFailedEventDetails -> JE.Value
activityFailedEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






activityListItemEncoder : ActivityListItem -> JE.Value
activityListItemEncoder data =
    []
        
        
        |> (::) ("activityArn", data.activityArn |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("creationDate", data.creationDate |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






activityScheduleFailedEventDetailsEncoder : ActivityScheduleFailedEventDetails -> JE.Value
activityScheduleFailedEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






activityScheduledEventDetailsEncoder : ActivityScheduledEventDetails -> JE.Value
activityScheduledEventDetailsEncoder data =
    []
        
        
        |> (::) ("resource", data.resource |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("input", data.input)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("timeoutInSeconds", data.timeoutInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("heartbeatInSeconds", data.heartbeatInSeconds)
        
        
        |> JE.object






activityStartedEventDetailsEncoder : ActivityStartedEventDetails -> JE.Value
activityStartedEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("workerName", data.workerName)
        
        
        |> JE.object






activitySucceededEventDetailsEncoder : ActivitySucceededEventDetails -> JE.Value
activitySucceededEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("output", data.output)
        
        
        |> JE.object






activityTimedOutEventDetailsEncoder : ActivityTimedOutEventDetails -> JE.Value
activityTimedOutEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






createActivityInputEncoder : CreateActivityInput -> JE.Value
createActivityInputEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createActivityOutputEncoder : CreateActivityOutput -> JE.Value
createActivityOutputEncoder data =
    []
        
        
        |> (::) ("activityArn", data.activityArn |> (JE.string))
        
        
        
        |> (::) ("creationDate", data.creationDate |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






createStateMachineInputEncoder : CreateStateMachineInput -> JE.Value
createStateMachineInputEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("definition", data.definition |> (JE.string))
        
        
        
        |> (::) ("roleArn", data.roleArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createStateMachineOutputEncoder : CreateStateMachineOutput -> JE.Value
createStateMachineOutputEncoder data =
    []
        
        
        |> (::) ("stateMachineArn", data.stateMachineArn |> (JE.string))
        
        
        
        |> (::) ("creationDate", data.creationDate |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






deleteActivityInputEncoder : DeleteActivityInput -> JE.Value
deleteActivityInputEncoder data =
    []
        
        
        |> (::) ("activityArn", data.activityArn |> (JE.string))
        
        
        |> JE.object






deleteActivityOutputEncoder : DeleteActivityOutput -> JE.Value
deleteActivityOutputEncoder data =
    []
        
        |> JE.object






deleteStateMachineInputEncoder : DeleteStateMachineInput -> JE.Value
deleteStateMachineInputEncoder data =
    []
        
        
        |> (::) ("stateMachineArn", data.stateMachineArn |> (JE.string))
        
        
        |> JE.object






deleteStateMachineOutputEncoder : DeleteStateMachineOutput -> JE.Value
deleteStateMachineOutputEncoder data =
    []
        
        |> JE.object






describeActivityInputEncoder : DescribeActivityInput -> JE.Value
describeActivityInputEncoder data =
    []
        
        
        |> (::) ("activityArn", data.activityArn |> (JE.string))
        
        
        |> JE.object






describeActivityOutputEncoder : DescribeActivityOutput -> JE.Value
describeActivityOutputEncoder data =
    []
        
        
        |> (::) ("activityArn", data.activityArn |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("creationDate", data.creationDate |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






describeExecutionInputEncoder : DescribeExecutionInput -> JE.Value
describeExecutionInputEncoder data =
    []
        
        
        |> (::) ("executionArn", data.executionArn |> (JE.string))
        
        
        |> JE.object






describeExecutionOutputEncoder : DescribeExecutionOutput -> JE.Value
describeExecutionOutputEncoder data =
    []
        
        
        |> (::) ("executionArn", data.executionArn |> (JE.string))
        
        
        
        |> (::) ("stateMachineArn", data.stateMachineArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> (::) ("status", data.status |> (executionStatusToString >> JE.string))
        
        
        
        |> (::) ("startDate", data.startDate |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("stopDate", data.stopDate)
        
        
        
        |> (::) ("input", data.input |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("output", data.output)
        
        
        |> JE.object






describeStateMachineForExecutionInputEncoder : DescribeStateMachineForExecutionInput -> JE.Value
describeStateMachineForExecutionInputEncoder data =
    []
        
        
        |> (::) ("executionArn", data.executionArn |> (JE.string))
        
        
        |> JE.object






describeStateMachineForExecutionOutputEncoder : DescribeStateMachineForExecutionOutput -> JE.Value
describeStateMachineForExecutionOutputEncoder data =
    []
        
        
        |> (::) ("stateMachineArn", data.stateMachineArn |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("definition", data.definition |> (JE.string))
        
        
        
        |> (::) ("roleArn", data.roleArn |> (JE.string))
        
        
        
        |> (::) ("updateDate", data.updateDate |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






describeStateMachineInputEncoder : DescribeStateMachineInput -> JE.Value
describeStateMachineInputEncoder data =
    []
        
        
        |> (::) ("stateMachineArn", data.stateMachineArn |> (JE.string))
        
        
        |> JE.object






describeStateMachineOutputEncoder : DescribeStateMachineOutput -> JE.Value
describeStateMachineOutputEncoder data =
    []
        
        
        |> (::) ("stateMachineArn", data.stateMachineArn |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stateMachineStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> (::) ("definition", data.definition |> (JE.string))
        
        
        
        |> (::) ("roleArn", data.roleArn |> (JE.string))
        
        
        
        |> (::) ("creationDate", data.creationDate |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






executionAbortedEventDetailsEncoder : ExecutionAbortedEventDetails -> JE.Value
executionAbortedEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






executionFailedEventDetailsEncoder : ExecutionFailedEventDetails -> JE.Value
executionFailedEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






executionListItemEncoder : ExecutionListItem -> JE.Value
executionListItemEncoder data =
    []
        
        
        |> (::) ("executionArn", data.executionArn |> (JE.string))
        
        
        
        |> (::) ("stateMachineArn", data.stateMachineArn |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("status", data.status |> (executionStatusToString >> JE.string))
        
        
        
        |> (::) ("startDate", data.startDate |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("stopDate", data.stopDate)
        
        
        |> JE.object






executionStartedEventDetailsEncoder : ExecutionStartedEventDetails -> JE.Value
executionStartedEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("input", data.input)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleArn", data.roleArn)
        
        
        |> JE.object










executionSucceededEventDetailsEncoder : ExecutionSucceededEventDetails -> JE.Value
executionSucceededEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("output", data.output)
        
        
        |> JE.object






executionTimedOutEventDetailsEncoder : ExecutionTimedOutEventDetails -> JE.Value
executionTimedOutEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






getActivityTaskInputEncoder : GetActivityTaskInput -> JE.Value
getActivityTaskInputEncoder data =
    []
        
        
        |> (::) ("activityArn", data.activityArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("workerName", data.workerName)
        
        
        |> JE.object






getActivityTaskOutputEncoder : GetActivityTaskOutput -> JE.Value
getActivityTaskOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("taskToken", data.taskToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("input", data.input)
        
        
        |> JE.object






getExecutionHistoryInputEncoder : GetExecutionHistoryInput -> JE.Value
getExecutionHistoryInputEncoder data =
    []
        
        
        |> (::) ("executionArn", data.executionArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("reverseOrder", data.reverseOrder)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






getExecutionHistoryOutputEncoder : GetExecutionHistoryOutput -> JE.Value
getExecutionHistoryOutputEncoder data =
    []
        
        
        |> (::) ("events", data.events |> (JE.list (historyEventEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






historyEventEncoder : HistoryEvent -> JE.Value
historyEventEncoder data =
    []
        
        
        |> (::) ("timestamp", data.timestamp |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("type", data.type_ |> (historyEventTypeToString >> JE.string))
        
        
        
        |> (::) ("id", data.id |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("previousEventId", data.previousEventId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (activityFailedEventDetailsEncoder)
            ("activityFailedEventDetails", data.activityFailedEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (activityScheduleFailedEventDetailsEncoder)
            ("activityScheduleFailedEventDetails", data.activityScheduleFailedEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (activityScheduledEventDetailsEncoder)
            ("activityScheduledEventDetails", data.activityScheduledEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (activityStartedEventDetailsEncoder)
            ("activityStartedEventDetails", data.activityStartedEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (activitySucceededEventDetailsEncoder)
            ("activitySucceededEventDetails", data.activitySucceededEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (activityTimedOutEventDetailsEncoder)
            ("activityTimedOutEventDetails", data.activityTimedOutEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (taskFailedEventDetailsEncoder)
            ("taskFailedEventDetails", data.taskFailedEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (taskScheduledEventDetailsEncoder)
            ("taskScheduledEventDetails", data.taskScheduledEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (taskStartFailedEventDetailsEncoder)
            ("taskStartFailedEventDetails", data.taskStartFailedEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (taskStartedEventDetailsEncoder)
            ("taskStartedEventDetails", data.taskStartedEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (taskSubmitFailedEventDetailsEncoder)
            ("taskSubmitFailedEventDetails", data.taskSubmitFailedEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (taskSubmittedEventDetailsEncoder)
            ("taskSubmittedEventDetails", data.taskSubmittedEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (taskSucceededEventDetailsEncoder)
            ("taskSucceededEventDetails", data.taskSucceededEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (taskTimedOutEventDetailsEncoder)
            ("taskTimedOutEventDetails", data.taskTimedOutEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionFailedEventDetailsEncoder)
            ("executionFailedEventDetails", data.executionFailedEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionStartedEventDetailsEncoder)
            ("executionStartedEventDetails", data.executionStartedEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionSucceededEventDetailsEncoder)
            ("executionSucceededEventDetails", data.executionSucceededEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionAbortedEventDetailsEncoder)
            ("executionAbortedEventDetails", data.executionAbortedEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionTimedOutEventDetailsEncoder)
            ("executionTimedOutEventDetails", data.executionTimedOutEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lambdaFunctionFailedEventDetailsEncoder)
            ("lambdaFunctionFailedEventDetails", data.lambdaFunctionFailedEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lambdaFunctionScheduleFailedEventDetailsEncoder)
            ("lambdaFunctionScheduleFailedEventDetails", data.lambdaFunctionScheduleFailedEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lambdaFunctionScheduledEventDetailsEncoder)
            ("lambdaFunctionScheduledEventDetails", data.lambdaFunctionScheduledEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lambdaFunctionStartFailedEventDetailsEncoder)
            ("lambdaFunctionStartFailedEventDetails", data.lambdaFunctionStartFailedEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lambdaFunctionSucceededEventDetailsEncoder)
            ("lambdaFunctionSucceededEventDetails", data.lambdaFunctionSucceededEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lambdaFunctionTimedOutEventDetailsEncoder)
            ("lambdaFunctionTimedOutEventDetails", data.lambdaFunctionTimedOutEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stateEnteredEventDetailsEncoder)
            ("stateEnteredEventDetails", data.stateEnteredEventDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stateExitedEventDetailsEncoder)
            ("stateExitedEventDetails", data.stateExitedEventDetails)
        
        
        |> JE.object










lambdaFunctionFailedEventDetailsEncoder : LambdaFunctionFailedEventDetails -> JE.Value
lambdaFunctionFailedEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






lambdaFunctionScheduleFailedEventDetailsEncoder : LambdaFunctionScheduleFailedEventDetails -> JE.Value
lambdaFunctionScheduleFailedEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






lambdaFunctionScheduledEventDetailsEncoder : LambdaFunctionScheduledEventDetails -> JE.Value
lambdaFunctionScheduledEventDetailsEncoder data =
    []
        
        
        |> (::) ("resource", data.resource |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("input", data.input)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("timeoutInSeconds", data.timeoutInSeconds)
        
        
        |> JE.object






lambdaFunctionStartFailedEventDetailsEncoder : LambdaFunctionStartFailedEventDetails -> JE.Value
lambdaFunctionStartFailedEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






lambdaFunctionSucceededEventDetailsEncoder : LambdaFunctionSucceededEventDetails -> JE.Value
lambdaFunctionSucceededEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("output", data.output)
        
        
        |> JE.object






lambdaFunctionTimedOutEventDetailsEncoder : LambdaFunctionTimedOutEventDetails -> JE.Value
lambdaFunctionTimedOutEventDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






listActivitiesInputEncoder : ListActivitiesInput -> JE.Value
listActivitiesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listActivitiesOutputEncoder : ListActivitiesOutput -> JE.Value
listActivitiesOutputEncoder data =
    []
        
        
        |> (::) ("activities", data.activities |> (JE.list (activityListItemEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listExecutionsInputEncoder : ListExecutionsInput -> JE.Value
listExecutionsInputEncoder data =
    []
        
        
        |> (::) ("stateMachineArn", data.stateMachineArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (executionStatusToString >> JE.string)
            ("statusFilter", data.statusFilter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listExecutionsOutputEncoder : ListExecutionsOutput -> JE.Value
listExecutionsOutputEncoder data =
    []
        
        
        |> (::) ("executions", data.executions |> (JE.list (executionListItemEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listStateMachinesInputEncoder : ListStateMachinesInput -> JE.Value
listStateMachinesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listStateMachinesOutputEncoder : ListStateMachinesOutput -> JE.Value
listStateMachinesOutputEncoder data =
    []
        
        
        |> (::) ("stateMachines", data.stateMachines |> (JE.list (stateMachineListItemEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listTagsForResourceInputEncoder : ListTagsForResourceInput -> JE.Value
listTagsForResourceInputEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        |> JE.object






listTagsForResourceOutputEncoder : ListTagsForResourceOutput -> JE.Value
listTagsForResourceOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






sendTaskFailureInputEncoder : SendTaskFailureInput -> JE.Value
sendTaskFailureInputEncoder data =
    []
        
        
        |> (::) ("taskToken", data.taskToken |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






sendTaskFailureOutputEncoder : SendTaskFailureOutput -> JE.Value
sendTaskFailureOutputEncoder data =
    []
        
        |> JE.object






sendTaskHeartbeatInputEncoder : SendTaskHeartbeatInput -> JE.Value
sendTaskHeartbeatInputEncoder data =
    []
        
        
        |> (::) ("taskToken", data.taskToken |> (JE.string))
        
        
        |> JE.object






sendTaskHeartbeatOutputEncoder : SendTaskHeartbeatOutput -> JE.Value
sendTaskHeartbeatOutputEncoder data =
    []
        
        |> JE.object






sendTaskSuccessInputEncoder : SendTaskSuccessInput -> JE.Value
sendTaskSuccessInputEncoder data =
    []
        
        
        |> (::) ("taskToken", data.taskToken |> (JE.string))
        
        
        
        |> (::) ("output", data.output |> (JE.string))
        
        
        |> JE.object






sendTaskSuccessOutputEncoder : SendTaskSuccessOutput -> JE.Value
sendTaskSuccessOutputEncoder data =
    []
        
        |> JE.object






startExecutionInputEncoder : StartExecutionInput -> JE.Value
startExecutionInputEncoder data =
    []
        
        
        |> (::) ("stateMachineArn", data.stateMachineArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("input", data.input)
        
        
        |> JE.object






startExecutionOutputEncoder : StartExecutionOutput -> JE.Value
startExecutionOutputEncoder data =
    []
        
        
        |> (::) ("executionArn", data.executionArn |> (JE.string))
        
        
        
        |> (::) ("startDate", data.startDate |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






stateEnteredEventDetailsEncoder : StateEnteredEventDetails -> JE.Value
stateEnteredEventDetailsEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("input", data.input)
        
        
        |> JE.object






stateExitedEventDetailsEncoder : StateExitedEventDetails -> JE.Value
stateExitedEventDetailsEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("output", data.output)
        
        
        |> JE.object






stateMachineListItemEncoder : StateMachineListItem -> JE.Value
stateMachineListItemEncoder data =
    []
        
        
        |> (::) ("stateMachineArn", data.stateMachineArn |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("creationDate", data.creationDate |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object










stopExecutionInputEncoder : StopExecutionInput -> JE.Value
stopExecutionInputEncoder data =
    []
        
        
        |> (::) ("executionArn", data.executionArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






stopExecutionOutputEncoder : StopExecutionOutput -> JE.Value
stopExecutionOutputEncoder data =
    []
        
        
        |> (::) ("stopDate", data.stopDate |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("value", data.value)
        
        
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






taskFailedEventDetailsEncoder : TaskFailedEventDetails -> JE.Value
taskFailedEventDetailsEncoder data =
    []
        
        
        |> (::) ("resourceType", data.resourceType |> (JE.string))
        
        
        
        |> (::) ("resource", data.resource |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






taskScheduledEventDetailsEncoder : TaskScheduledEventDetails -> JE.Value
taskScheduledEventDetailsEncoder data =
    []
        
        
        |> (::) ("resourceType", data.resourceType |> (JE.string))
        
        
        
        |> (::) ("resource", data.resource |> (JE.string))
        
        
        
        |> (::) ("region", data.region |> (JE.string))
        
        
        
        |> (::) ("parameters", data.parameters |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("timeoutInSeconds", data.timeoutInSeconds)
        
        
        |> JE.object






taskStartFailedEventDetailsEncoder : TaskStartFailedEventDetails -> JE.Value
taskStartFailedEventDetailsEncoder data =
    []
        
        
        |> (::) ("resourceType", data.resourceType |> (JE.string))
        
        
        
        |> (::) ("resource", data.resource |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






taskStartedEventDetailsEncoder : TaskStartedEventDetails -> JE.Value
taskStartedEventDetailsEncoder data =
    []
        
        
        |> (::) ("resourceType", data.resourceType |> (JE.string))
        
        
        
        |> (::) ("resource", data.resource |> (JE.string))
        
        
        |> JE.object






taskSubmitFailedEventDetailsEncoder : TaskSubmitFailedEventDetails -> JE.Value
taskSubmitFailedEventDetailsEncoder data =
    []
        
        
        |> (::) ("resourceType", data.resourceType |> (JE.string))
        
        
        
        |> (::) ("resource", data.resource |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
        |> JE.object






taskSubmittedEventDetailsEncoder : TaskSubmittedEventDetails -> JE.Value
taskSubmittedEventDetailsEncoder data =
    []
        
        
        |> (::) ("resourceType", data.resourceType |> (JE.string))
        
        
        
        |> (::) ("resource", data.resource |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("output", data.output)
        
        
        |> JE.object






taskSucceededEventDetailsEncoder : TaskSucceededEventDetails -> JE.Value
taskSucceededEventDetailsEncoder data =
    []
        
        
        |> (::) ("resourceType", data.resourceType |> (JE.string))
        
        
        
        |> (::) ("resource", data.resource |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("output", data.output)
        
        
        |> JE.object






taskTimedOutEventDetailsEncoder : TaskTimedOutEventDetails -> JE.Value
taskTimedOutEventDetailsEncoder data =
    []
        
        
        |> (::) ("resourceType", data.resourceType |> (JE.string))
        
        
        
        |> (::) ("resource", data.resource |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("error", data.error)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cause", data.cause)
        
        
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






updateStateMachineInputEncoder : UpdateStateMachineInput -> JE.Value
updateStateMachineInputEncoder data =
    []
        
        
        |> (::) ("stateMachineArn", data.stateMachineArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("definition", data.definition)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleArn", data.roleArn)
        
        
        |> JE.object






updateStateMachineOutputEncoder : UpdateStateMachineOutput -> JE.Value
updateStateMachineOutputEncoder data =
    []
        
        
        |> (::) ("updateDate", data.updateDate |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object





