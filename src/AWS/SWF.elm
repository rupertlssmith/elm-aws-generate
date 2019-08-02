module AWS.SWF exposing
    ( service
    , countClosedWorkflowExecutions, CountClosedWorkflowExecutionsOptions, countOpenWorkflowExecutions, CountOpenWorkflowExecutionsOptions, countPendingActivityTasks, countPendingDecisionTasks, deprecateActivityType, deprecateDomain, deprecateWorkflowType, describeActivityType, describeDomain, describeWorkflowExecution, describeWorkflowType, getWorkflowExecutionHistory, GetWorkflowExecutionHistoryOptions, listActivityTypes, ListActivityTypesOptions, listClosedWorkflowExecutions, ListClosedWorkflowExecutionsOptions, listDomains, ListDomainsOptions, listOpenWorkflowExecutions, ListOpenWorkflowExecutionsOptions, listTagsForResource, listWorkflowTypes, ListWorkflowTypesOptions, pollForActivityTask, PollForActivityTaskOptions, pollForDecisionTask, PollForDecisionTaskOptions, recordActivityTaskHeartbeat, RecordActivityTaskHeartbeatOptions, registerActivityType, RegisterActivityTypeOptions, registerDomain, RegisterDomainOptions, registerWorkflowType, RegisterWorkflowTypeOptions, requestCancelWorkflowExecution, RequestCancelWorkflowExecutionOptions, respondActivityTaskCanceled, RespondActivityTaskCanceledOptions, respondActivityTaskCompleted, RespondActivityTaskCompletedOptions, respondActivityTaskFailed, RespondActivityTaskFailedOptions, respondDecisionTaskCompleted, RespondDecisionTaskCompletedOptions, signalWorkflowExecution, SignalWorkflowExecutionOptions, startWorkflowExecution, StartWorkflowExecutionOptions, tagResource, terminateWorkflowExecution, TerminateWorkflowExecutionOptions, undeprecateActivityType, undeprecateDomain, undeprecateWorkflowType, untagResource
    , ActivityTask, ActivityTaskStatus, ActivityTypeDetail, ActivityTypeInfos, DecisionTask, DomainDetail, DomainInfos, History, ListTagsForResourceOutput, PendingTaskCount, Run, WorkflowExecutionCount, WorkflowExecutionDetail, WorkflowExecutionInfos, WorkflowTypeDetail, WorkflowTypeInfos
    , ActivityTaskCancelRequestedEventAttributes, ActivityTaskCanceledEventAttributes, ActivityTaskCompletedEventAttributes, ActivityTaskFailedEventAttributes, ActivityTaskScheduledEventAttributes, ActivityTaskStartedEventAttributes, ActivityTaskTimedOutEventAttributes, ActivityType, ActivityTypeConfiguration, ActivityTypeInfo, CancelTimerDecisionAttributes, CancelTimerFailedEventAttributes, CancelWorkflowExecutionDecisionAttributes, CancelWorkflowExecutionFailedEventAttributes, ChildWorkflowExecutionCanceledEventAttributes, ChildWorkflowExecutionCompletedEventAttributes, ChildWorkflowExecutionFailedEventAttributes, ChildWorkflowExecutionStartedEventAttributes, ChildWorkflowExecutionTerminatedEventAttributes, ChildWorkflowExecutionTimedOutEventAttributes, CloseStatusFilter, CompleteWorkflowExecutionDecisionAttributes, CompleteWorkflowExecutionFailedEventAttributes, ContinueAsNewWorkflowExecutionDecisionAttributes, ContinueAsNewWorkflowExecutionFailedEventAttributes, Decision, DecisionTaskCompletedEventAttributes, DecisionTaskScheduledEventAttributes, DecisionTaskStartedEventAttributes, DecisionTaskTimedOutEventAttributes, DomainConfiguration, DomainInfo, ExecutionTimeFilter, ExternalWorkflowExecutionCancelRequestedEventAttributes, ExternalWorkflowExecutionSignaledEventAttributes, FailWorkflowExecutionDecisionAttributes, FailWorkflowExecutionFailedEventAttributes, HistoryEvent, LambdaFunctionCompletedEventAttributes, LambdaFunctionFailedEventAttributes, LambdaFunctionScheduledEventAttributes, LambdaFunctionStartedEventAttributes, LambdaFunctionTimedOutEventAttributes, MarkerRecordedEventAttributes, RecordMarkerDecisionAttributes, RecordMarkerFailedEventAttributes, RequestCancelActivityTaskDecisionAttributes, RequestCancelActivityTaskFailedEventAttributes, RequestCancelExternalWorkflowExecutionDecisionAttributes, RequestCancelExternalWorkflowExecutionFailedEventAttributes, RequestCancelExternalWorkflowExecutionInitiatedEventAttributes, ResourceTag, ScheduleActivityTaskDecisionAttributes, ScheduleActivityTaskFailedEventAttributes, ScheduleLambdaFunctionDecisionAttributes, ScheduleLambdaFunctionFailedEventAttributes, SignalExternalWorkflowExecutionDecisionAttributes, SignalExternalWorkflowExecutionFailedEventAttributes, SignalExternalWorkflowExecutionInitiatedEventAttributes, StartChildWorkflowExecutionDecisionAttributes, StartChildWorkflowExecutionFailedEventAttributes, StartChildWorkflowExecutionInitiatedEventAttributes, StartLambdaFunctionFailedEventAttributes, StartTimerDecisionAttributes, StartTimerFailedEventAttributes, TagFilter, TaskList, TimerCanceledEventAttributes, TimerFiredEventAttributes, TimerStartedEventAttributes, WorkflowExecution, WorkflowExecutionCancelRequestedEventAttributes, WorkflowExecutionCanceledEventAttributes, WorkflowExecutionCompletedEventAttributes, WorkflowExecutionConfiguration, WorkflowExecutionContinuedAsNewEventAttributes, WorkflowExecutionFailedEventAttributes, WorkflowExecutionFilter, WorkflowExecutionInfo, WorkflowExecutionOpenCounts, WorkflowExecutionSignaledEventAttributes, WorkflowExecutionStartedEventAttributes, WorkflowExecutionTerminatedEventAttributes, WorkflowExecutionTimedOutEventAttributes, WorkflowType, WorkflowTypeConfiguration, WorkflowTypeFilter, WorkflowTypeInfo
    , ActivityTaskTimeoutType(..), CancelTimerFailedCause(..), CancelWorkflowExecutionFailedCause(..), ChildPolicy(..), CloseStatus(..), CompleteWorkflowExecutionFailedCause(..), ContinueAsNewWorkflowExecutionFailedCause(..), DecisionTaskTimeoutType(..), DecisionType(..), EventType(..), ExecutionStatus(..), FailWorkflowExecutionFailedCause(..), LambdaFunctionTimeoutType(..), RecordMarkerFailedCause(..), RegistrationStatus(..), RequestCancelActivityTaskFailedCause(..), RequestCancelExternalWorkflowExecutionFailedCause(..), ScheduleActivityTaskFailedCause(..), ScheduleLambdaFunctionFailedCause(..), SignalExternalWorkflowExecutionFailedCause(..), StartChildWorkflowExecutionFailedCause(..), StartLambdaFunctionFailedCause(..), StartTimerFailedCause(..), WorkflowExecutionCancelRequestedCause(..), WorkflowExecutionTerminatedCause(..), WorkflowExecutionTimeoutType(..)
    )

{-| <fullname>Amazon Simple Workflow Service</fullname> <p>The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build applications that use Amazon's cloud to coordinate work across distributed components. In Amazon SWF, a <i>task</i> represents a logical unit of work that is performed by a component of your workflow. Coordinating tasks in a workflow involves managing intertask dependencies, scheduling, and concurrency in accordance with the logical flow of the application.</p> <p>Amazon SWF gives you full control over implementing tasks and coordinating them without worrying about underlying complexities such as tracking their progress and maintaining their state.</p> <p>This documentation serves as reference only. For a broader overview of the Amazon SWF programming model, see the <i> <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/">Amazon SWF Developer Guide</a> </i>.</p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [countClosedWorkflowExecutions](#countClosedWorkflowExecutions)
  - [CountClosedWorkflowExecutionsOptions](#CountClosedWorkflowExecutionsOptions)
  - [countOpenWorkflowExecutions](#countOpenWorkflowExecutions)
  - [CountOpenWorkflowExecutionsOptions](#CountOpenWorkflowExecutionsOptions)
  - [countPendingActivityTasks](#countPendingActivityTasks)
  - [countPendingDecisionTasks](#countPendingDecisionTasks)
  - [deprecateActivityType](#deprecateActivityType)
  - [deprecateDomain](#deprecateDomain)
  - [deprecateWorkflowType](#deprecateWorkflowType)
  - [describeActivityType](#describeActivityType)
  - [describeDomain](#describeDomain)
  - [describeWorkflowExecution](#describeWorkflowExecution)
  - [describeWorkflowType](#describeWorkflowType)
  - [getWorkflowExecutionHistory](#getWorkflowExecutionHistory)
  - [GetWorkflowExecutionHistoryOptions](#GetWorkflowExecutionHistoryOptions)
  - [listActivityTypes](#listActivityTypes)
  - [ListActivityTypesOptions](#ListActivityTypesOptions)
  - [listClosedWorkflowExecutions](#listClosedWorkflowExecutions)
  - [ListClosedWorkflowExecutionsOptions](#ListClosedWorkflowExecutionsOptions)
  - [listDomains](#listDomains)
  - [ListDomainsOptions](#ListDomainsOptions)
  - [listOpenWorkflowExecutions](#listOpenWorkflowExecutions)
  - [ListOpenWorkflowExecutionsOptions](#ListOpenWorkflowExecutionsOptions)
  - [listTagsForResource](#listTagsForResource)
  - [listWorkflowTypes](#listWorkflowTypes)
  - [ListWorkflowTypesOptions](#ListWorkflowTypesOptions)
  - [pollForActivityTask](#pollForActivityTask)
  - [PollForActivityTaskOptions](#PollForActivityTaskOptions)
  - [pollForDecisionTask](#pollForDecisionTask)
  - [PollForDecisionTaskOptions](#PollForDecisionTaskOptions)
  - [recordActivityTaskHeartbeat](#recordActivityTaskHeartbeat)
  - [RecordActivityTaskHeartbeatOptions](#RecordActivityTaskHeartbeatOptions)
  - [registerActivityType](#registerActivityType)
  - [RegisterActivityTypeOptions](#RegisterActivityTypeOptions)
  - [registerDomain](#registerDomain)
  - [RegisterDomainOptions](#RegisterDomainOptions)
  - [registerWorkflowType](#registerWorkflowType)
  - [RegisterWorkflowTypeOptions](#RegisterWorkflowTypeOptions)
  - [requestCancelWorkflowExecution](#requestCancelWorkflowExecution)
  - [RequestCancelWorkflowExecutionOptions](#RequestCancelWorkflowExecutionOptions)
  - [respondActivityTaskCanceled](#respondActivityTaskCanceled)
  - [RespondActivityTaskCanceledOptions](#RespondActivityTaskCanceledOptions)
  - [respondActivityTaskCompleted](#respondActivityTaskCompleted)
  - [RespondActivityTaskCompletedOptions](#RespondActivityTaskCompletedOptions)
  - [respondActivityTaskFailed](#respondActivityTaskFailed)
  - [RespondActivityTaskFailedOptions](#RespondActivityTaskFailedOptions)
  - [respondDecisionTaskCompleted](#respondDecisionTaskCompleted)
  - [RespondDecisionTaskCompletedOptions](#RespondDecisionTaskCompletedOptions)
  - [signalWorkflowExecution](#signalWorkflowExecution)
  - [SignalWorkflowExecutionOptions](#SignalWorkflowExecutionOptions)
  - [startWorkflowExecution](#startWorkflowExecution)
  - [StartWorkflowExecutionOptions](#StartWorkflowExecutionOptions)
  - [tagResource](#tagResource)
  - [terminateWorkflowExecution](#terminateWorkflowExecution)
  - [TerminateWorkflowExecutionOptions](#TerminateWorkflowExecutionOptions)
  - [undeprecateActivityType](#undeprecateActivityType)
  - [undeprecateDomain](#undeprecateDomain)
  - [undeprecateWorkflowType](#undeprecateWorkflowType)
  - [untagResource](#untagResource)

@docs countClosedWorkflowExecutions, CountClosedWorkflowExecutionsOptions, countOpenWorkflowExecutions, CountOpenWorkflowExecutionsOptions, countPendingActivityTasks, countPendingDecisionTasks, deprecateActivityType, deprecateDomain, deprecateWorkflowType, describeActivityType, describeDomain, describeWorkflowExecution, describeWorkflowType, getWorkflowExecutionHistory, GetWorkflowExecutionHistoryOptions, listActivityTypes, ListActivityTypesOptions, listClosedWorkflowExecutions, ListClosedWorkflowExecutionsOptions, listDomains, ListDomainsOptions, listOpenWorkflowExecutions, ListOpenWorkflowExecutionsOptions, listTagsForResource, listWorkflowTypes, ListWorkflowTypesOptions, pollForActivityTask, PollForActivityTaskOptions, pollForDecisionTask, PollForDecisionTaskOptions, recordActivityTaskHeartbeat, RecordActivityTaskHeartbeatOptions, registerActivityType, RegisterActivityTypeOptions, registerDomain, RegisterDomainOptions, registerWorkflowType, RegisterWorkflowTypeOptions, requestCancelWorkflowExecution, RequestCancelWorkflowExecutionOptions, respondActivityTaskCanceled, RespondActivityTaskCanceledOptions, respondActivityTaskCompleted, RespondActivityTaskCompletedOptions, respondActivityTaskFailed, RespondActivityTaskFailedOptions, respondDecisionTaskCompleted, RespondDecisionTaskCompletedOptions, signalWorkflowExecution, SignalWorkflowExecutionOptions, startWorkflowExecution, StartWorkflowExecutionOptions, tagResource, terminateWorkflowExecution, TerminateWorkflowExecutionOptions, undeprecateActivityType, undeprecateDomain, undeprecateWorkflowType, untagResource


## Responses

  - [ActivityTask](#ActivityTask)
  - [ActivityTaskStatus](#ActivityTaskStatus)
  - [ActivityTypeDetail](#ActivityTypeDetail)
  - [ActivityTypeInfos](#ActivityTypeInfos)
  - [DecisionTask](#DecisionTask)
  - [DomainDetail](#DomainDetail)
  - [DomainInfos](#DomainInfos)
  - [History](#History)
  - [ListTagsForResourceOutput](#ListTagsForResourceOutput)
  - [PendingTaskCount](#PendingTaskCount)
  - [Run](#Run)
  - [WorkflowExecutionCount](#WorkflowExecutionCount)
  - [WorkflowExecutionDetail](#WorkflowExecutionDetail)
  - [WorkflowExecutionInfos](#WorkflowExecutionInfos)
  - [WorkflowTypeDetail](#WorkflowTypeDetail)
  - [WorkflowTypeInfos](#WorkflowTypeInfos)

@docs ActivityTask, ActivityTaskStatus, ActivityTypeDetail, ActivityTypeInfos, DecisionTask, DomainDetail, DomainInfos, History, ListTagsForResourceOutput, PendingTaskCount, Run, WorkflowExecutionCount, WorkflowExecutionDetail, WorkflowExecutionInfos, WorkflowTypeDetail, WorkflowTypeInfos


## Records

  - [ActivityTaskCancelRequestedEventAttributes](#ActivityTaskCancelRequestedEventAttributes)
  - [ActivityTaskCanceledEventAttributes](#ActivityTaskCanceledEventAttributes)
  - [ActivityTaskCompletedEventAttributes](#ActivityTaskCompletedEventAttributes)
  - [ActivityTaskFailedEventAttributes](#ActivityTaskFailedEventAttributes)
  - [ActivityTaskScheduledEventAttributes](#ActivityTaskScheduledEventAttributes)
  - [ActivityTaskStartedEventAttributes](#ActivityTaskStartedEventAttributes)
  - [ActivityTaskTimedOutEventAttributes](#ActivityTaskTimedOutEventAttributes)
  - [ActivityType](#ActivityType)
  - [ActivityTypeConfiguration](#ActivityTypeConfiguration)
  - [ActivityTypeInfo](#ActivityTypeInfo)
  - [CancelTimerDecisionAttributes](#CancelTimerDecisionAttributes)
  - [CancelTimerFailedEventAttributes](#CancelTimerFailedEventAttributes)
  - [CancelWorkflowExecutionDecisionAttributes](#CancelWorkflowExecutionDecisionAttributes)
  - [CancelWorkflowExecutionFailedEventAttributes](#CancelWorkflowExecutionFailedEventAttributes)
  - [ChildWorkflowExecutionCanceledEventAttributes](#ChildWorkflowExecutionCanceledEventAttributes)
  - [ChildWorkflowExecutionCompletedEventAttributes](#ChildWorkflowExecutionCompletedEventAttributes)
  - [ChildWorkflowExecutionFailedEventAttributes](#ChildWorkflowExecutionFailedEventAttributes)
  - [ChildWorkflowExecutionStartedEventAttributes](#ChildWorkflowExecutionStartedEventAttributes)
  - [ChildWorkflowExecutionTerminatedEventAttributes](#ChildWorkflowExecutionTerminatedEventAttributes)
  - [ChildWorkflowExecutionTimedOutEventAttributes](#ChildWorkflowExecutionTimedOutEventAttributes)
  - [CloseStatusFilter](#CloseStatusFilter)
  - [CompleteWorkflowExecutionDecisionAttributes](#CompleteWorkflowExecutionDecisionAttributes)
  - [CompleteWorkflowExecutionFailedEventAttributes](#CompleteWorkflowExecutionFailedEventAttributes)
  - [ContinueAsNewWorkflowExecutionDecisionAttributes](#ContinueAsNewWorkflowExecutionDecisionAttributes)
  - [ContinueAsNewWorkflowExecutionFailedEventAttributes](#ContinueAsNewWorkflowExecutionFailedEventAttributes)
  - [Decision](#Decision)
  - [DecisionTaskCompletedEventAttributes](#DecisionTaskCompletedEventAttributes)
  - [DecisionTaskScheduledEventAttributes](#DecisionTaskScheduledEventAttributes)
  - [DecisionTaskStartedEventAttributes](#DecisionTaskStartedEventAttributes)
  - [DecisionTaskTimedOutEventAttributes](#DecisionTaskTimedOutEventAttributes)
  - [DomainConfiguration](#DomainConfiguration)
  - [DomainInfo](#DomainInfo)
  - [ExecutionTimeFilter](#ExecutionTimeFilter)
  - [ExternalWorkflowExecutionCancelRequestedEventAttributes](#ExternalWorkflowExecutionCancelRequestedEventAttributes)
  - [ExternalWorkflowExecutionSignaledEventAttributes](#ExternalWorkflowExecutionSignaledEventAttributes)
  - [FailWorkflowExecutionDecisionAttributes](#FailWorkflowExecutionDecisionAttributes)
  - [FailWorkflowExecutionFailedEventAttributes](#FailWorkflowExecutionFailedEventAttributes)
  - [HistoryEvent](#HistoryEvent)
  - [LambdaFunctionCompletedEventAttributes](#LambdaFunctionCompletedEventAttributes)
  - [LambdaFunctionFailedEventAttributes](#LambdaFunctionFailedEventAttributes)
  - [LambdaFunctionScheduledEventAttributes](#LambdaFunctionScheduledEventAttributes)
  - [LambdaFunctionStartedEventAttributes](#LambdaFunctionStartedEventAttributes)
  - [LambdaFunctionTimedOutEventAttributes](#LambdaFunctionTimedOutEventAttributes)
  - [MarkerRecordedEventAttributes](#MarkerRecordedEventAttributes)
  - [RecordMarkerDecisionAttributes](#RecordMarkerDecisionAttributes)
  - [RecordMarkerFailedEventAttributes](#RecordMarkerFailedEventAttributes)
  - [RequestCancelActivityTaskDecisionAttributes](#RequestCancelActivityTaskDecisionAttributes)
  - [RequestCancelActivityTaskFailedEventAttributes](#RequestCancelActivityTaskFailedEventAttributes)
  - [RequestCancelExternalWorkflowExecutionDecisionAttributes](#RequestCancelExternalWorkflowExecutionDecisionAttributes)
  - [RequestCancelExternalWorkflowExecutionFailedEventAttributes](#RequestCancelExternalWorkflowExecutionFailedEventAttributes)
  - [RequestCancelExternalWorkflowExecutionInitiatedEventAttributes](#RequestCancelExternalWorkflowExecutionInitiatedEventAttributes)
  - [ResourceTag](#ResourceTag)
  - [ScheduleActivityTaskDecisionAttributes](#ScheduleActivityTaskDecisionAttributes)
  - [ScheduleActivityTaskFailedEventAttributes](#ScheduleActivityTaskFailedEventAttributes)
  - [ScheduleLambdaFunctionDecisionAttributes](#ScheduleLambdaFunctionDecisionAttributes)
  - [ScheduleLambdaFunctionFailedEventAttributes](#ScheduleLambdaFunctionFailedEventAttributes)
  - [SignalExternalWorkflowExecutionDecisionAttributes](#SignalExternalWorkflowExecutionDecisionAttributes)
  - [SignalExternalWorkflowExecutionFailedEventAttributes](#SignalExternalWorkflowExecutionFailedEventAttributes)
  - [SignalExternalWorkflowExecutionInitiatedEventAttributes](#SignalExternalWorkflowExecutionInitiatedEventAttributes)
  - [StartChildWorkflowExecutionDecisionAttributes](#StartChildWorkflowExecutionDecisionAttributes)
  - [StartChildWorkflowExecutionFailedEventAttributes](#StartChildWorkflowExecutionFailedEventAttributes)
  - [StartChildWorkflowExecutionInitiatedEventAttributes](#StartChildWorkflowExecutionInitiatedEventAttributes)
  - [StartLambdaFunctionFailedEventAttributes](#StartLambdaFunctionFailedEventAttributes)
  - [StartTimerDecisionAttributes](#StartTimerDecisionAttributes)
  - [StartTimerFailedEventAttributes](#StartTimerFailedEventAttributes)
  - [TagFilter](#TagFilter)
  - [TaskList](#TaskList)
  - [TimerCanceledEventAttributes](#TimerCanceledEventAttributes)
  - [TimerFiredEventAttributes](#TimerFiredEventAttributes)
  - [TimerStartedEventAttributes](#TimerStartedEventAttributes)
  - [WorkflowExecution](#WorkflowExecution)
  - [WorkflowExecutionCancelRequestedEventAttributes](#WorkflowExecutionCancelRequestedEventAttributes)
  - [WorkflowExecutionCanceledEventAttributes](#WorkflowExecutionCanceledEventAttributes)
  - [WorkflowExecutionCompletedEventAttributes](#WorkflowExecutionCompletedEventAttributes)
  - [WorkflowExecutionConfiguration](#WorkflowExecutionConfiguration)
  - [WorkflowExecutionContinuedAsNewEventAttributes](#WorkflowExecutionContinuedAsNewEventAttributes)
  - [WorkflowExecutionFailedEventAttributes](#WorkflowExecutionFailedEventAttributes)
  - [WorkflowExecutionFilter](#WorkflowExecutionFilter)
  - [WorkflowExecutionInfo](#WorkflowExecutionInfo)
  - [WorkflowExecutionOpenCounts](#WorkflowExecutionOpenCounts)
  - [WorkflowExecutionSignaledEventAttributes](#WorkflowExecutionSignaledEventAttributes)
  - [WorkflowExecutionStartedEventAttributes](#WorkflowExecutionStartedEventAttributes)
  - [WorkflowExecutionTerminatedEventAttributes](#WorkflowExecutionTerminatedEventAttributes)
  - [WorkflowExecutionTimedOutEventAttributes](#WorkflowExecutionTimedOutEventAttributes)
  - [WorkflowType](#WorkflowType)
  - [WorkflowTypeConfiguration](#WorkflowTypeConfiguration)
  - [WorkflowTypeFilter](#WorkflowTypeFilter)
  - [WorkflowTypeInfo](#WorkflowTypeInfo)

@docs ActivityTaskCancelRequestedEventAttributes, ActivityTaskCanceledEventAttributes, ActivityTaskCompletedEventAttributes, ActivityTaskFailedEventAttributes, ActivityTaskScheduledEventAttributes, ActivityTaskStartedEventAttributes, ActivityTaskTimedOutEventAttributes, ActivityType, ActivityTypeConfiguration, ActivityTypeInfo, CancelTimerDecisionAttributes, CancelTimerFailedEventAttributes, CancelWorkflowExecutionDecisionAttributes, CancelWorkflowExecutionFailedEventAttributes, ChildWorkflowExecutionCanceledEventAttributes, ChildWorkflowExecutionCompletedEventAttributes, ChildWorkflowExecutionFailedEventAttributes, ChildWorkflowExecutionStartedEventAttributes, ChildWorkflowExecutionTerminatedEventAttributes, ChildWorkflowExecutionTimedOutEventAttributes, CloseStatusFilter, CompleteWorkflowExecutionDecisionAttributes, CompleteWorkflowExecutionFailedEventAttributes, ContinueAsNewWorkflowExecutionDecisionAttributes, ContinueAsNewWorkflowExecutionFailedEventAttributes, Decision, DecisionTaskCompletedEventAttributes, DecisionTaskScheduledEventAttributes, DecisionTaskStartedEventAttributes, DecisionTaskTimedOutEventAttributes, DomainConfiguration, DomainInfo, ExecutionTimeFilter, ExternalWorkflowExecutionCancelRequestedEventAttributes, ExternalWorkflowExecutionSignaledEventAttributes, FailWorkflowExecutionDecisionAttributes, FailWorkflowExecutionFailedEventAttributes, HistoryEvent, LambdaFunctionCompletedEventAttributes, LambdaFunctionFailedEventAttributes, LambdaFunctionScheduledEventAttributes, LambdaFunctionStartedEventAttributes, LambdaFunctionTimedOutEventAttributes, MarkerRecordedEventAttributes, RecordMarkerDecisionAttributes, RecordMarkerFailedEventAttributes, RequestCancelActivityTaskDecisionAttributes, RequestCancelActivityTaskFailedEventAttributes, RequestCancelExternalWorkflowExecutionDecisionAttributes, RequestCancelExternalWorkflowExecutionFailedEventAttributes, RequestCancelExternalWorkflowExecutionInitiatedEventAttributes, ResourceTag, ScheduleActivityTaskDecisionAttributes, ScheduleActivityTaskFailedEventAttributes, ScheduleLambdaFunctionDecisionAttributes, ScheduleLambdaFunctionFailedEventAttributes, SignalExternalWorkflowExecutionDecisionAttributes, SignalExternalWorkflowExecutionFailedEventAttributes, SignalExternalWorkflowExecutionInitiatedEventAttributes, StartChildWorkflowExecutionDecisionAttributes, StartChildWorkflowExecutionFailedEventAttributes, StartChildWorkflowExecutionInitiatedEventAttributes, StartLambdaFunctionFailedEventAttributes, StartTimerDecisionAttributes, StartTimerFailedEventAttributes, TagFilter, TaskList, TimerCanceledEventAttributes, TimerFiredEventAttributes, TimerStartedEventAttributes, WorkflowExecution, WorkflowExecutionCancelRequestedEventAttributes, WorkflowExecutionCanceledEventAttributes, WorkflowExecutionCompletedEventAttributes, WorkflowExecutionConfiguration, WorkflowExecutionContinuedAsNewEventAttributes, WorkflowExecutionFailedEventAttributes, WorkflowExecutionFilter, WorkflowExecutionInfo, WorkflowExecutionOpenCounts, WorkflowExecutionSignaledEventAttributes, WorkflowExecutionStartedEventAttributes, WorkflowExecutionTerminatedEventAttributes, WorkflowExecutionTimedOutEventAttributes, WorkflowType, WorkflowTypeConfiguration, WorkflowTypeFilter, WorkflowTypeInfo


## Unions

  - [ActivityTaskTimeoutType](#ActivityTaskTimeoutType)
  - [CancelTimerFailedCause](#CancelTimerFailedCause)
  - [CancelWorkflowExecutionFailedCause](#CancelWorkflowExecutionFailedCause)
  - [ChildPolicy](#ChildPolicy)
  - [CloseStatus](#CloseStatus)
  - [CompleteWorkflowExecutionFailedCause](#CompleteWorkflowExecutionFailedCause)
  - [ContinueAsNewWorkflowExecutionFailedCause](#ContinueAsNewWorkflowExecutionFailedCause)
  - [DecisionTaskTimeoutType](#DecisionTaskTimeoutType)
  - [DecisionType](#DecisionType)
  - [EventType](#EventType)
  - [ExecutionStatus](#ExecutionStatus)
  - [FailWorkflowExecutionFailedCause](#FailWorkflowExecutionFailedCause)
  - [LambdaFunctionTimeoutType](#LambdaFunctionTimeoutType)
  - [RecordMarkerFailedCause](#RecordMarkerFailedCause)
  - [RegistrationStatus](#RegistrationStatus)
  - [RequestCancelActivityTaskFailedCause](#RequestCancelActivityTaskFailedCause)
  - [RequestCancelExternalWorkflowExecutionFailedCause](#RequestCancelExternalWorkflowExecutionFailedCause)
  - [ScheduleActivityTaskFailedCause](#ScheduleActivityTaskFailedCause)
  - [ScheduleLambdaFunctionFailedCause](#ScheduleLambdaFunctionFailedCause)
  - [SignalExternalWorkflowExecutionFailedCause](#SignalExternalWorkflowExecutionFailedCause)
  - [StartChildWorkflowExecutionFailedCause](#StartChildWorkflowExecutionFailedCause)
  - [StartLambdaFunctionFailedCause](#StartLambdaFunctionFailedCause)
  - [StartTimerFailedCause](#StartTimerFailedCause)
  - [WorkflowExecutionCancelRequestedCause](#WorkflowExecutionCancelRequestedCause)
  - [WorkflowExecutionTerminatedCause](#WorkflowExecutionTerminatedCause)
  - [WorkflowExecutionTimeoutType](#WorkflowExecutionTimeoutType)

@docs ActivityTaskTimeoutType, CancelTimerFailedCause, CancelWorkflowExecutionFailedCause, ChildPolicy, CloseStatus, CompleteWorkflowExecutionFailedCause, ContinueAsNewWorkflowExecutionFailedCause, DecisionTaskTimeoutType, DecisionType, EventType, ExecutionStatus, FailWorkflowExecutionFailedCause, LambdaFunctionTimeoutType, RecordMarkerFailedCause, RegistrationStatus, RequestCancelActivityTaskFailedCause, RequestCancelExternalWorkflowExecutionFailedCause, ScheduleActivityTaskFailedCause, ScheduleLambdaFunctionFailedCause, SignalExternalWorkflowExecutionFailedCause, StartChildWorkflowExecutionFailedCause, StartLambdaFunctionFailedCause, StartTimerFailedCause, WorkflowExecutionCancelRequestedCause, WorkflowExecutionTerminatedCause, WorkflowExecutionTimeoutType

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
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
        "swf"
        "2012-01-25"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.0" >> AWS.Core.Service.setTargetPrefix "SimpleWorkflowService")



-- OPERATIONS


{-|

<p>Returns the number of closed workflow executions within the given domain that meet the specified filtering criteria.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</p> </li> <li> <p> <code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</p> </li> <li> <p> <code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`

-}
countClosedWorkflowExecutions :
    String
    -> (CountClosedWorkflowExecutionsOptions -> CountClosedWorkflowExecutionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper WorkflowExecutionCount)
countClosedWorkflowExecutions domain setOptions =
    let
        requestInput =
            CountClosedWorkflowExecutionsInput
                domain
                options.startTimeFilter
                options.closeTimeFilter
                options.executionFilter
                options.typeFilter
                options.tagFilter
                options.closeStatusFilter

        options =
            setOptions (CountClosedWorkflowExecutionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> countClosedWorkflowExecutionsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CountClosedWorkflowExecutions"
            (AWS.Core.Decode.ResultDecoder "WorkflowExecutionCount" workflowExecutionCountDecoder)
        )


{-| Options for a countClosedWorkflowExecutions request
-}
type alias CountClosedWorkflowExecutionsOptions =
    { startTimeFilter : Maybe ExecutionTimeFilter
    , closeTimeFilter : Maybe ExecutionTimeFilter
    , executionFilter : Maybe WorkflowExecutionFilter
    , typeFilter : Maybe WorkflowTypeFilter
    , tagFilter : Maybe TagFilter
    , closeStatusFilter : Maybe CloseStatusFilter
    }


{-|

<p>Returns the number of open workflow executions within the given domain that meet the specified filtering criteria.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</p> </li> <li> <p> <code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</p> </li> <li> <p> <code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `startTimeFilter` **:** `ExecutionTimeFilter`

-}
countOpenWorkflowExecutions :
    String
    -> ExecutionTimeFilter
    -> (CountOpenWorkflowExecutionsOptions -> CountOpenWorkflowExecutionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper WorkflowExecutionCount)
countOpenWorkflowExecutions domain startTimeFilter setOptions =
    let
        requestInput =
            CountOpenWorkflowExecutionsInput
                domain
                startTimeFilter
                options.typeFilter
                options.tagFilter
                options.executionFilter

        options =
            setOptions (CountOpenWorkflowExecutionsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> countOpenWorkflowExecutionsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CountOpenWorkflowExecutions"
            (AWS.Core.Decode.ResultDecoder "WorkflowExecutionCount" workflowExecutionCountDecoder)
        )


{-| Options for a countOpenWorkflowExecutions request
-}
type alias CountOpenWorkflowExecutionsOptions =
    { typeFilter : Maybe WorkflowTypeFilter
    , tagFilter : Maybe TagFilter
    , executionFilter : Maybe WorkflowExecutionFilter
    }


{-|

<p>Returns the estimated number of activity tasks in the specified task list. The count returned is an approximation and isn't guaranteed to be exact. If you specify a task list that no activity task was ever scheduled in then <code>0</code> is returned.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the <code>taskList.name</code> parameter by using a <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `taskList` **:** `TaskList`

-}
countPendingActivityTasks :
    String
    -> TaskList
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PendingTaskCount)
countPendingActivityTasks domain taskList =
    let
        requestInput =
            CountPendingActivityTasksInput
                domain
                taskList
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> countPendingActivityTasksInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CountPendingActivityTasks"
            (AWS.Core.Decode.ResultDecoder "PendingTaskCount" pendingTaskCountDecoder)
        )


{-|

<p>Returns the estimated number of decision tasks in the specified task list. The count returned is an approximation and isn't guaranteed to be exact. If you specify a task list that no decision task was ever scheduled in then <code>0</code> is returned.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the <code>taskList.name</code> parameter by using a <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `taskList` **:** `TaskList`

-}
countPendingDecisionTasks :
    String
    -> TaskList
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PendingTaskCount)
countPendingDecisionTasks domain taskList =
    let
        requestInput =
            CountPendingDecisionTasksInput
                domain
                taskList
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> countPendingDecisionTasksInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CountPendingDecisionTasks"
            (AWS.Core.Decode.ResultDecoder "PendingTaskCount" pendingTaskCountDecoder)
        )


{-|

<p>Deprecates the specified <i>activity type</i>. After an activity type has been deprecated, you cannot create new tasks of that activity type. Tasks of this type that were scheduled before the type was deprecated continue to run.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>activityType.name</code>: String constraint. The key is <code>swf:activityType.name</code>.</p> </li> <li> <p> <code>activityType.version</code>: String constraint. The key is <code>swf:activityType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `activityType` **:** `ActivityType`

-}
deprecateActivityType :
    String
    -> ActivityType
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deprecateActivityType domain activityType =
    let
        requestInput =
            DeprecateActivityTypeInput
                domain
                activityType
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deprecateActivityTypeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeprecateActivityType"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deprecates the specified domain. After a domain has been deprecated it cannot be used to create new workflow executions or register new types. However, you can still use visibility actions on this domain. Deprecating a domain also deprecates all activity and workflow types registered in the domain. Executions that were started before the domain was deprecated continues to run.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `name` **:** `String`

-}
deprecateDomain :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deprecateDomain name =
    let
        requestInput =
            DeprecateDomainInput
                name
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deprecateDomainInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeprecateDomain"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deprecates the specified <i>workflow type</i>. After a workflow type has been deprecated, you cannot create new executions of that type. Executions that were started before the type was deprecated continues to run. A deprecated workflow type may still be used when calling visibility actions.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `workflowType` **:** `WorkflowType`

-}
deprecateWorkflowType :
    String
    -> WorkflowType
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deprecateWorkflowType domain workflowType =
    let
        requestInput =
            DeprecateWorkflowTypeInput
                domain
                workflowType
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deprecateWorkflowTypeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeprecateWorkflowType"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Returns information about the specified activity type. This includes configuration settings provided when the type was registered and other general information about the type.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>activityType.name</code>: String constraint. The key is <code>swf:activityType.name</code>.</p> </li> <li> <p> <code>activityType.version</code>: String constraint. The key is <code>swf:activityType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `activityType` **:** `ActivityType`

-}
describeActivityType :
    String
    -> ActivityType
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ActivityTypeDetail)
describeActivityType domain activityType =
    let
        requestInput =
            DescribeActivityTypeInput
                domain
                activityType
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeActivityTypeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeActivityType"
            (AWS.Core.Decode.ResultDecoder "ActivityTypeDetail" activityTypeDetailDecoder)
        )


{-|

<p>Returns information about the specified domain, including description and status.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `name` **:** `String`

-}
describeDomain :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DomainDetail)
describeDomain name =
    let
        requestInput =
            DescribeDomainInput
                name
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeDomainInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeDomain"
            (AWS.Core.Decode.ResultDecoder "DomainDetail" domainDetailDecoder)
        )


{-|

<p>Returns information about the specified workflow execution including its type and some statistics.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `execution` **:** `WorkflowExecution`

-}
describeWorkflowExecution :
    String
    -> WorkflowExecution
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper WorkflowExecutionDetail)
describeWorkflowExecution domain execution =
    let
        requestInput =
            DescribeWorkflowExecutionInput
                domain
                execution
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeWorkflowExecutionInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeWorkflowExecution"
            (AWS.Core.Decode.ResultDecoder "WorkflowExecutionDetail" workflowExecutionDetailDecoder)
        )


{-|

<p>Returns information about the specified <i>workflow type</i>. This includes configuration settings specified when the type was registered and other information such as creation date, current status, etc.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `workflowType` **:** `WorkflowType`

-}
describeWorkflowType :
    String
    -> WorkflowType
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper WorkflowTypeDetail)
describeWorkflowType domain workflowType =
    let
        requestInput =
            DescribeWorkflowTypeInput
                domain
                workflowType
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeWorkflowTypeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeWorkflowType"
            (AWS.Core.Decode.ResultDecoder "WorkflowTypeDetail" workflowTypeDetailDecoder)
        )


{-|

<p>Returns the history of the specified workflow execution. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the <code>nextPageToken</code> returned by the initial call.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `execution` **:** `WorkflowExecution`

-}
getWorkflowExecutionHistory :
    String
    -> WorkflowExecution
    -> (GetWorkflowExecutionHistoryOptions -> GetWorkflowExecutionHistoryOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper History)
getWorkflowExecutionHistory domain execution setOptions =
    let
        requestInput =
            GetWorkflowExecutionHistoryInput
                domain
                execution
                options.nextPageToken
                options.maximumPageSize
                options.reverseOrder

        options =
            setOptions (GetWorkflowExecutionHistoryOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getWorkflowExecutionHistoryInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetWorkflowExecutionHistory"
            (AWS.Core.Decode.ResultDecoder "History" historyDecoder)
        )


{-| Options for a getWorkflowExecutionHistory request
-}
type alias GetWorkflowExecutionHistoryOptions =
    { nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }


{-|

<p>Returns information about all activities registered in the specified domain that match the specified name and registration status. The result includes information like creation date, current status of the activity, etc. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the <code>nextPageToken</code> returned by the initial call.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `registrationStatus` **:** `RegistrationStatus`

-}
listActivityTypes :
    String
    -> RegistrationStatus
    -> (ListActivityTypesOptions -> ListActivityTypesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ActivityTypeInfos)
listActivityTypes domain registrationStatus setOptions =
    let
        requestInput =
            ListActivityTypesInput
                domain
                options.name
                registrationStatus
                options.nextPageToken
                options.maximumPageSize
                options.reverseOrder

        options =
            setOptions (ListActivityTypesOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listActivityTypesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListActivityTypes"
            (AWS.Core.Decode.ResultDecoder "ActivityTypeInfos" activityTypeInfosDecoder)
        )


{-| Options for a listActivityTypes request
-}
type alias ListActivityTypesOptions =
    { name : Maybe String
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }


{-|

<p>Returns a list of closed workflow executions in the specified domain that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</p> </li> <li> <p> <code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</p> </li> <li> <p> <code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`

-}
listClosedWorkflowExecutions :
    String
    -> (ListClosedWorkflowExecutionsOptions -> ListClosedWorkflowExecutionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper WorkflowExecutionInfos)
listClosedWorkflowExecutions domain setOptions =
    let
        requestInput =
            ListClosedWorkflowExecutionsInput
                domain
                options.startTimeFilter
                options.closeTimeFilter
                options.executionFilter
                options.closeStatusFilter
                options.typeFilter
                options.tagFilter
                options.nextPageToken
                options.maximumPageSize
                options.reverseOrder

        options =
            setOptions (ListClosedWorkflowExecutionsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listClosedWorkflowExecutionsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListClosedWorkflowExecutions"
            (AWS.Core.Decode.ResultDecoder "WorkflowExecutionInfos" workflowExecutionInfosDecoder)
        )


{-| Options for a listClosedWorkflowExecutions request
-}
type alias ListClosedWorkflowExecutionsOptions =
    { startTimeFilter : Maybe ExecutionTimeFilter
    , closeTimeFilter : Maybe ExecutionTimeFilter
    , executionFilter : Maybe WorkflowExecutionFilter
    , closeStatusFilter : Maybe CloseStatusFilter
    , typeFilter : Maybe WorkflowTypeFilter
    , tagFilter : Maybe TagFilter
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }


{-|

<p>Returns the list of domains registered in the account. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains. The element must be set to <code>arn:aws:swf::AccountID:domain/*</code>, where <i>AccountID</i> is the account ID, with no dashes.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `registrationStatus` **:** `RegistrationStatus`

-}
listDomains :
    RegistrationStatus
    -> (ListDomainsOptions -> ListDomainsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DomainInfos)
listDomains registrationStatus setOptions =
    let
        requestInput =
            ListDomainsInput
                options.nextPageToken
                registrationStatus
                options.maximumPageSize
                options.reverseOrder

        options =
            setOptions (ListDomainsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listDomainsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListDomains"
            (AWS.Core.Decode.ResultDecoder "DomainInfos" domainInfosDecoder)
        )


{-| Options for a listDomains request
-}
type alias ListDomainsOptions =
    { nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }


{-|

<p>Returns a list of open workflow executions in the specified domain that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</p> </li> <li> <p> <code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</p> </li> <li> <p> <code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `startTimeFilter` **:** `ExecutionTimeFilter`

-}
listOpenWorkflowExecutions :
    String
    -> ExecutionTimeFilter
    -> (ListOpenWorkflowExecutionsOptions -> ListOpenWorkflowExecutionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper WorkflowExecutionInfos)
listOpenWorkflowExecutions domain startTimeFilter setOptions =
    let
        requestInput =
            ListOpenWorkflowExecutionsInput
                domain
                startTimeFilter
                options.typeFilter
                options.tagFilter
                options.nextPageToken
                options.maximumPageSize
                options.reverseOrder
                options.executionFilter

        options =
            setOptions (ListOpenWorkflowExecutionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listOpenWorkflowExecutionsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListOpenWorkflowExecutions"
            (AWS.Core.Decode.ResultDecoder "WorkflowExecutionInfos" workflowExecutionInfosDecoder)
        )


{-| Options for a listOpenWorkflowExecutions request
-}
type alias ListOpenWorkflowExecutionsOptions =
    { typeFilter : Maybe WorkflowTypeFilter
    , tagFilter : Maybe TagFilter
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    , executionFilter : Maybe WorkflowExecutionFilter
    }


{-|

<p>List tags for a given domain.</p>

**Required Parameters**

  - `resourceArn` **:** `String`

-}
listTagsForResource :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceOutput)
listTagsForResource resourceArn =
    let
        requestInput =
            ListTagsForResourceInput
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


{-|

<p>Returns information about workflow types in the specified domain. The results may be split into multiple pages that can be retrieved by making the call repeatedly.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `registrationStatus` **:** `RegistrationStatus`

-}
listWorkflowTypes :
    String
    -> RegistrationStatus
    -> (ListWorkflowTypesOptions -> ListWorkflowTypesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper WorkflowTypeInfos)
listWorkflowTypes domain registrationStatus setOptions =
    let
        requestInput =
            ListWorkflowTypesInput
                domain
                options.name
                registrationStatus
                options.nextPageToken
                options.maximumPageSize
                options.reverseOrder

        options =
            setOptions (ListWorkflowTypesOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listWorkflowTypesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListWorkflowTypes"
            (AWS.Core.Decode.ResultDecoder "WorkflowTypeInfos" workflowTypeInfosDecoder)
        )


{-| Options for a listWorkflowTypes request
-}
type alias ListWorkflowTypesOptions =
    { name : Maybe String
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }


{-|

<p>Used by workers to get an <a>ActivityTask</a> from the specified activity <code>taskList</code>. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available. The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns an empty result. An empty result, in this context, means that an ActivityTask is returned, but that the value of taskToken is an empty string. If a task is returned, the worker should use its type to identify and process it correctly.</p> <important> <p>Workers should set their client side socket timeout to at least 70 seconds (10 seconds higher than the maximum time service may hold the poll request).</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the <code>taskList.name</code> parameter by using a <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `taskList` **:** `TaskList`

-}
pollForActivityTask :
    String
    -> TaskList
    -> (PollForActivityTaskOptions -> PollForActivityTaskOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ActivityTask)
pollForActivityTask domain taskList setOptions =
    let
        requestInput =
            PollForActivityTaskInput
                domain
                taskList
                options.identity

        options =
            setOptions (PollForActivityTaskOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> pollForActivityTaskInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "PollForActivityTask"
            (AWS.Core.Decode.ResultDecoder "ActivityTask" activityTaskDecoder)
        )


{-| Options for a pollForActivityTask request
-}
type alias PollForActivityTaskOptions =
    { identity : Maybe String
    }


{-|

<p>Used by deciders to get a <a>DecisionTask</a> from the specified decision <code>taskList</code>. A decision task may be returned for any open workflow execution that is using the specified task list. The task includes a paginated view of the history of the workflow execution. The decider should use the workflow type and the history to determine how to properly handle the task.</p> <p>This action initiates a long poll, where the service holds the HTTP connection open and responds as soon a task becomes available. If no decision task is available in the specified task list before the timeout of 60 seconds expires, an empty result is returned. An empty result, in this context, means that a DecisionTask is returned, but that the value of taskToken is an empty string.</p> <important> <p>Deciders should set their client side socket timeout to at least 70 seconds (10 seconds higher than the timeout).</p> </important> <important> <p>Because the number of workflow history events for a single workflow execution might be very large, the result returned might be split up across a number of pages. To retrieve subsequent pages, make additional calls to <code>PollForDecisionTask</code> using the <code>nextPageToken</code> returned by the initial call. Note that you do <i>not</i> call <code>GetWorkflowExecutionHistory</code> with this <code>nextPageToken</code>. Instead, call <code>PollForDecisionTask</code> again.</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the <code>taskList.name</code> parameter by using a <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `taskList` **:** `TaskList`

-}
pollForDecisionTask :
    String
    -> TaskList
    -> (PollForDecisionTaskOptions -> PollForDecisionTaskOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DecisionTask)
pollForDecisionTask domain taskList setOptions =
    let
        requestInput =
            PollForDecisionTaskInput
                domain
                taskList
                options.identity
                options.nextPageToken
                options.maximumPageSize
                options.reverseOrder

        options =
            setOptions (PollForDecisionTaskOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> pollForDecisionTaskInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "PollForDecisionTask"
            (AWS.Core.Decode.ResultDecoder "DecisionTask" decisionTaskDecoder)
        )


{-| Options for a pollForDecisionTask request
-}
type alias PollForDecisionTaskOptions =
    { identity : Maybe String
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }


{-|

<p>Used by activity workers to report to the service that the <a>ActivityTask</a> represented by the specified <code>taskToken</code> is still making progress. The worker can also specify details of the progress, for example percent complete, using the <code>details</code> parameter. This action can also be used by the worker as a mechanism to check if cancellation is being requested for the activity task. If a cancellation is being attempted for the specified task, then the boolean <code>cancelRequested</code> flag returned by the service is set to <code>true</code>.</p> <p>This action resets the <code>taskHeartbeatTimeout</code> clock. The <code>taskHeartbeatTimeout</code> is specified in <a>RegisterActivityType</a>.</p> <p>This action doesn't in itself create an event in the workflow execution history. However, if the task times out, the workflow execution history contains a <code>ActivityTaskTimedOut</code> event that contains the information from the last heartbeat generated by the activity worker.</p> <note> <p>The <code>taskStartToCloseTimeout</code> of an activity type is the maximum duration of an activity task, regardless of the number of <a>RecordActivityTaskHeartbeat</a> requests received. The <code>taskStartToCloseTimeout</code> is also specified in <a>RegisterActivityType</a>.</p> </note> <note> <p>This operation is only useful for long-lived activities to report liveliness of the task and to determine if a cancellation is being attempted.</p> </note> <important> <p>If the <code>cancelRequested</code> flag returns <code>true</code>, a cancellation is being attempted. If the worker can cancel the activity, it should respond with <a>RespondActivityTaskCanceled</a>. Otherwise, it should ignore the cancellation request.</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `taskToken` **:** `String`

-}
recordActivityTaskHeartbeat :
    String
    -> (RecordActivityTaskHeartbeatOptions -> RecordActivityTaskHeartbeatOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ActivityTaskStatus)
recordActivityTaskHeartbeat taskToken setOptions =
    let
        requestInput =
            RecordActivityTaskHeartbeatInput
                taskToken
                options.details

        options =
            setOptions (RecordActivityTaskHeartbeatOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> recordActivityTaskHeartbeatInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RecordActivityTaskHeartbeat"
            (AWS.Core.Decode.ResultDecoder "ActivityTaskStatus" activityTaskStatusDecoder)
        )


{-| Options for a recordActivityTaskHeartbeat request
-}
type alias RecordActivityTaskHeartbeatOptions =
    { details : Maybe String
    }


{-|

<p>Registers a new <i>activity type</i> along with its configuration settings in the specified domain.</p> <important> <p>A <code>TypeAlreadyExists</code> fault is returned if the type already exists in the domain. You cannot change any configuration settings of the type after its registration, and it must be registered as a new version.</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>defaultTaskList.name</code>: String constraint. The key is <code>swf:defaultTaskList.name</code>.</p> </li> <li> <p> <code>name</code>: String constraint. The key is <code>swf:name</code>.</p> </li> <li> <p> <code>version</code>: String constraint. The key is <code>swf:version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `name` **:** `String`
  - `version` **:** `String`

-}
registerActivityType :
    String
    -> String
    -> String
    -> (RegisterActivityTypeOptions -> RegisterActivityTypeOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
registerActivityType domain name version setOptions =
    let
        requestInput =
            RegisterActivityTypeInput
                domain
                name
                version
                options.description
                options.defaultTaskStartToCloseTimeout
                options.defaultTaskHeartbeatTimeout
                options.defaultTaskList
                options.defaultTaskPriority
                options.defaultTaskScheduleToStartTimeout
                options.defaultTaskScheduleToCloseTimeout

        options =
            setOptions (RegisterActivityTypeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> registerActivityTypeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RegisterActivityType"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a registerActivityType request
-}
type alias RegisterActivityTypeOptions =
    { description : Maybe String
    , defaultTaskStartToCloseTimeout : Maybe String
    , defaultTaskHeartbeatTimeout : Maybe String
    , defaultTaskList : Maybe TaskList
    , defaultTaskPriority : Maybe String
    , defaultTaskScheduleToStartTimeout : Maybe String
    , defaultTaskScheduleToCloseTimeout : Maybe String
    }


{-|

<p>Registers a new domain.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>You cannot use an IAM policy to control domain access for this action. The name of the domain being registered is available as the resource of this action.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `name` **:** `String`
  - `workflowExecutionRetentionPeriodInDays` **:** `String`

-}
registerDomain :
    String
    -> String
    -> (RegisterDomainOptions -> RegisterDomainOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
registerDomain name workflowExecutionRetentionPeriodInDays setOptions =
    let
        requestInput =
            RegisterDomainInput
                name
                options.description
                workflowExecutionRetentionPeriodInDays
                options.tags

        options =
            setOptions (RegisterDomainOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> registerDomainInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RegisterDomain"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a registerDomain request
-}
type alias RegisterDomainOptions =
    { description : Maybe String
    , tags : Maybe (List ResourceTag)
    }


{-|

<p>Registers a new <i>workflow type</i> and its configuration settings in the specified domain.</p> <p>The retention period for the workflow history is set by the <a>RegisterDomain</a> action.</p> <important> <p>If the type already exists, then a <code>TypeAlreadyExists</code> fault is returned. You cannot change the configuration settings of a workflow type once it is registered and it must be registered as a new version.</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>defaultTaskList.name</code>: String constraint. The key is <code>swf:defaultTaskList.name</code>.</p> </li> <li> <p> <code>name</code>: String constraint. The key is <code>swf:name</code>.</p> </li> <li> <p> <code>version</code>: String constraint. The key is <code>swf:version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `name` **:** `String`
  - `version` **:** `String`

-}
registerWorkflowType :
    String
    -> String
    -> String
    -> (RegisterWorkflowTypeOptions -> RegisterWorkflowTypeOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
registerWorkflowType domain name version setOptions =
    let
        requestInput =
            RegisterWorkflowTypeInput
                domain
                name
                version
                options.description
                options.defaultTaskStartToCloseTimeout
                options.defaultExecutionStartToCloseTimeout
                options.defaultTaskList
                options.defaultTaskPriority
                options.defaultChildPolicy
                options.defaultLambdaRole

        options =
            setOptions (RegisterWorkflowTypeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> registerWorkflowTypeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RegisterWorkflowType"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a registerWorkflowType request
-}
type alias RegisterWorkflowTypeOptions =
    { description : Maybe String
    , defaultTaskStartToCloseTimeout : Maybe String
    , defaultExecutionStartToCloseTimeout : Maybe String
    , defaultTaskList : Maybe TaskList
    , defaultTaskPriority : Maybe String
    , defaultChildPolicy : Maybe ChildPolicy
    , defaultLambdaRole : Maybe String
    }


{-|

<p>Records a <code>WorkflowExecutionCancelRequested</code> event in the currently running workflow execution identified by the given domain, workflowId, and runId. This logically requests the cancellation of the workflow execution as a whole. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> <note> <p>If the runId isn't specified, the <code>WorkflowExecutionCancelRequested</code> event is recorded in the history of the current open workflow execution with the specified workflowId in the domain.</p> </note> <note> <p>Because this action allows the workflow to properly clean up and gracefully close, it should be used instead of <a>TerminateWorkflowExecution</a> when possible.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `workflowId` **:** `String`

-}
requestCancelWorkflowExecution :
    String
    -> String
    -> (RequestCancelWorkflowExecutionOptions -> RequestCancelWorkflowExecutionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
requestCancelWorkflowExecution domain workflowId setOptions =
    let
        requestInput =
            RequestCancelWorkflowExecutionInput
                domain
                workflowId
                options.runId

        options =
            setOptions (RequestCancelWorkflowExecutionOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> requestCancelWorkflowExecutionInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RequestCancelWorkflowExecution"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a requestCancelWorkflowExecution request
-}
type alias RequestCancelWorkflowExecutionOptions =
    { runId : Maybe String
    }


{-|

<p>Used by workers to tell the service that the <a>ActivityTask</a> identified by the <code>taskToken</code> was successfully canceled. Additional <code>details</code> can be provided using the <code>details</code> argument.</p> <p>These <code>details</code> (if provided) appear in the <code>ActivityTaskCanceled</code> event added to the workflow history.</p> <important> <p>Only use this operation if the <code>canceled</code> flag of a <a>RecordActivityTaskHeartbeat</a> request returns <code>true</code> and if the activity can be safely undone or abandoned.</p> </important> <p>A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to <a>RespondActivityTaskCompleted</a>, RespondActivityTaskCanceled, <a>RespondActivityTaskFailed</a>, or the task has <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed out</a>.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `taskToken` **:** `String`

-}
respondActivityTaskCanceled :
    String
    -> (RespondActivityTaskCanceledOptions -> RespondActivityTaskCanceledOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
respondActivityTaskCanceled taskToken setOptions =
    let
        requestInput =
            RespondActivityTaskCanceledInput
                taskToken
                options.details

        options =
            setOptions (RespondActivityTaskCanceledOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> respondActivityTaskCanceledInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RespondActivityTaskCanceled"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a respondActivityTaskCanceled request
-}
type alias RespondActivityTaskCanceledOptions =
    { details : Maybe String
    }


{-|

<p>Used by workers to tell the service that the <a>ActivityTask</a> identified by the <code>taskToken</code> completed successfully with a <code>result</code> (if provided). The <code>result</code> appears in the <code>ActivityTaskCompleted</code> event in the workflow history.</p> <important> <p>If the requested task doesn't complete successfully, use <a>RespondActivityTaskFailed</a> instead. If the worker finds that the task is canceled through the <code>canceled</code> flag returned by <a>RecordActivityTaskHeartbeat</a>, it should cancel the task, clean up and then call <a>RespondActivityTaskCanceled</a>.</p> </important> <p>A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to RespondActivityTaskCompleted, <a>RespondActivityTaskCanceled</a>, <a>RespondActivityTaskFailed</a>, or the task has <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed out</a>.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `taskToken` **:** `String`

-}
respondActivityTaskCompleted :
    String
    -> (RespondActivityTaskCompletedOptions -> RespondActivityTaskCompletedOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
respondActivityTaskCompleted taskToken setOptions =
    let
        requestInput =
            RespondActivityTaskCompletedInput
                taskToken
                options.result

        options =
            setOptions (RespondActivityTaskCompletedOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> respondActivityTaskCompletedInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RespondActivityTaskCompleted"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a respondActivityTaskCompleted request
-}
type alias RespondActivityTaskCompletedOptions =
    { result : Maybe String
    }


{-|

<p>Used by workers to tell the service that the <a>ActivityTask</a> identified by the <code>taskToken</code> has failed with <code>reason</code> (if specified). The <code>reason</code> and <code>details</code> appear in the <code>ActivityTaskFailed</code> event added to the workflow history.</p> <p>A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to <a>RespondActivityTaskCompleted</a>, <a>RespondActivityTaskCanceled</a>, RespondActivityTaskFailed, or the task has <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed out</a>.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `taskToken` **:** `String`

-}
respondActivityTaskFailed :
    String
    -> (RespondActivityTaskFailedOptions -> RespondActivityTaskFailedOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
respondActivityTaskFailed taskToken setOptions =
    let
        requestInput =
            RespondActivityTaskFailedInput
                taskToken
                options.reason
                options.details

        options =
            setOptions (RespondActivityTaskFailedOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> respondActivityTaskFailedInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RespondActivityTaskFailed"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a respondActivityTaskFailed request
-}
type alias RespondActivityTaskFailedOptions =
    { reason : Maybe String
    , details : Maybe String
    }


{-|

<p>Used by deciders to tell the service that the <a>DecisionTask</a> identified by the <code>taskToken</code> has successfully completed. The <code>decisions</code> argument specifies the list of decisions made while processing the task.</p> <p>A <code>DecisionTaskCompleted</code> event is added to the workflow history. The <code>executionContext</code> specified is attached to the event in the workflow execution history.</p> <p> <b>Access Control</b> </p> <p>If an IAM policy grants permission to use <code>RespondDecisionTaskCompleted</code>, it can express permissions for the list of decisions in the <code>decisions</code> parameter. Each of the decisions has one or more parameters, much like a regular API call. To allow for policies to be as readable as possible, you can express permissions on decisions as if they were actual API calls, including applying conditions to some parameters. For more information, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `taskToken` **:** `String`

-}
respondDecisionTaskCompleted :
    String
    -> (RespondDecisionTaskCompletedOptions -> RespondDecisionTaskCompletedOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
respondDecisionTaskCompleted taskToken setOptions =
    let
        requestInput =
            RespondDecisionTaskCompletedInput
                taskToken
                options.decisions
                options.executionContext

        options =
            setOptions (RespondDecisionTaskCompletedOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> respondDecisionTaskCompletedInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RespondDecisionTaskCompleted"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a respondDecisionTaskCompleted request
-}
type alias RespondDecisionTaskCompletedOptions =
    { decisions : Maybe (List Decision)
    , executionContext : Maybe String
    }


{-|

<p>Records a <code>WorkflowExecutionSignaled</code> event in the workflow execution history and creates a decision task for the workflow execution identified by the given domain, workflowId and runId. The event is recorded with the specified user defined signalName and input (if provided).</p> <note> <p>If a runId isn't specified, then the <code>WorkflowExecutionSignaled</code> event is recorded in the history of the current open workflow with the matching workflowId in the domain.</p> </note> <note> <p>If the specified workflow execution isn't open, this method fails with <code>UnknownResource</code>.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `workflowId` **:** `String`
  - `signalName` **:** `String`

-}
signalWorkflowExecution :
    String
    -> String
    -> String
    -> (SignalWorkflowExecutionOptions -> SignalWorkflowExecutionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
signalWorkflowExecution domain workflowId signalName setOptions =
    let
        requestInput =
            SignalWorkflowExecutionInput
                domain
                workflowId
                options.runId
                signalName
                options.input

        options =
            setOptions (SignalWorkflowExecutionOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> signalWorkflowExecutionInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "SignalWorkflowExecution"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a signalWorkflowExecution request
-}
type alias SignalWorkflowExecutionOptions =
    { runId : Maybe String
    , input : Maybe String
    }


{-|

<p>Starts an execution of the workflow type in the specified domain using the provided <code>workflowId</code> and input data.</p> <p>This action returns the newly started workflow execution.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagList.member.0</code>: The key is <code>swf:tagList.member.0</code>.</p> </li> <li> <p> <code>tagList.member.1</code>: The key is <code>swf:tagList.member.1</code>.</p> </li> <li> <p> <code>tagList.member.2</code>: The key is <code>swf:tagList.member.2</code>.</p> </li> <li> <p> <code>tagList.member.3</code>: The key is <code>swf:tagList.member.3</code>.</p> </li> <li> <p> <code>tagList.member.4</code>: The key is <code>swf:tagList.member.4</code>.</p> </li> <li> <p> <code>taskList</code>: String constraint. The key is <code>swf:taskList.name</code>.</p> </li> <li> <p> <code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `workflowId` **:** `String`
  - `workflowType` **:** `WorkflowType`

-}
startWorkflowExecution :
    String
    -> String
    -> WorkflowType
    -> (StartWorkflowExecutionOptions -> StartWorkflowExecutionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Run)
startWorkflowExecution domain workflowId workflowType setOptions =
    let
        requestInput =
            StartWorkflowExecutionInput
                domain
                workflowId
                workflowType
                options.taskList
                options.taskPriority
                options.input
                options.executionStartToCloseTimeout
                options.tagList
                options.taskStartToCloseTimeout
                options.childPolicy
                options.lambdaRole

        options =
            setOptions (StartWorkflowExecutionOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> startWorkflowExecutionInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StartWorkflowExecution"
            (AWS.Core.Decode.ResultDecoder "Run" runDecoder)
        )


{-| Options for a startWorkflowExecution request
-}
type alias StartWorkflowExecutionOptions =
    { taskList : Maybe TaskList
    , taskPriority : Maybe String
    , input : Maybe String
    , executionStartToCloseTimeout : Maybe String
    , tagList : Maybe (List String)
    , taskStartToCloseTimeout : Maybe String
    , childPolicy : Maybe ChildPolicy
    , lambdaRole : Maybe String
    }


{-|

<p>Add a tag to a Amazon SWF domain.</p> <note> <p>Amazon SWF supports a maximum of 50 tags per resource.</p> </note>

**Required Parameters**

  - `resourceArn` **:** `String`
  - `tags` **:** `(List ResourceTag)`

-}
tagResource :
    String
    -> List ResourceTag
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
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
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Records a <code>WorkflowExecutionTerminated</code> event and forces closure of the workflow execution identified by the given domain, runId, and workflowId. The child policy, registered with the workflow type or specified when starting this execution, is applied to any open child workflow executions of this workflow execution.</p> <important> <p>If the identified workflow execution was in progress, it is terminated immediately.</p> </important> <note> <p>If a runId isn't specified, then the <code>WorkflowExecutionTerminated</code> event is recorded in the history of the current open workflow with the matching workflowId in the domain.</p> </note> <note> <p>You should consider using <a>RequestCancelWorkflowExecution</a> action instead because it allows the workflow to gracefully close while <a>TerminateWorkflowExecution</a> doesn't.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `workflowId` **:** `String`

-}
terminateWorkflowExecution :
    String
    -> String
    -> (TerminateWorkflowExecutionOptions -> TerminateWorkflowExecutionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
terminateWorkflowExecution domain workflowId setOptions =
    let
        requestInput =
            TerminateWorkflowExecutionInput
                domain
                workflowId
                options.runId
                options.reason
                options.details
                options.childPolicy

        options =
            setOptions (TerminateWorkflowExecutionOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> terminateWorkflowExecutionInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "TerminateWorkflowExecution"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a terminateWorkflowExecution request
-}
type alias TerminateWorkflowExecutionOptions =
    { runId : Maybe String
    , reason : Maybe String
    , details : Maybe String
    , childPolicy : Maybe ChildPolicy
    }


{-|

<p>Undeprecates a previously deprecated <i>activity type</i>. After an activity type has been undeprecated, you can create new tasks of that activity type.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>activityType.name</code>: String constraint. The key is <code>swf:activityType.name</code>.</p> </li> <li> <p> <code>activityType.version</code>: String constraint. The key is <code>swf:activityType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `activityType` **:** `ActivityType`

-}
undeprecateActivityType :
    String
    -> ActivityType
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
undeprecateActivityType domain activityType =
    let
        requestInput =
            UndeprecateActivityTypeInput
                domain
                activityType
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> undeprecateActivityTypeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UndeprecateActivityType"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Undeprecates a previously deprecated domain. After a domain has been undeprecated it can be used to create new workflow executions or register new types.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `name` **:** `String`

-}
undeprecateDomain :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
undeprecateDomain name =
    let
        requestInput =
            UndeprecateDomainInput
                name
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> undeprecateDomainInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UndeprecateDomain"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Undeprecates a previously deprecated <i>workflow type</i>. After a workflow type has been undeprecated, you can create new executions of that type. </p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

**Required Parameters**

  - `domain` **:** `String`
  - `workflowType` **:** `WorkflowType`

-}
undeprecateWorkflowType :
    String
    -> WorkflowType
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
undeprecateWorkflowType domain workflowType =
    let
        requestInput =
            UndeprecateWorkflowTypeInput
                domain
                workflowType
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> undeprecateWorkflowTypeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UndeprecateWorkflowType"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Remove a tag from a Amazon SWF domain.</p>

**Required Parameters**

  - `resourceArn` **:** `String`
  - `tagKeys` **:** `(List String)`

-}
untagResource :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
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
            (AWS.Core.Decode.FixedResult ())
        )


{-| Type of HTTP response from acti
-}
type alias ActivityTask =
    { taskToken : String
    , activityId : String
    , startedEventId : Int
    , workflowExecution : WorkflowExecution
    , activityType : ActivityType
    , input : Maybe String
    }


activityTaskDecoder : JD.Decoder ActivityTask
activityTaskDecoder =
    JD.succeed ActivityTask
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "taskToken", "TaskToken" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "activityId", "ActivityId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowExecution", "WorkflowExecution" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "activityType", "ActivityType" ]
                activityTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "input", "Input" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>ActivityTaskCancelRequested</code> event.</p>

-}
type alias ActivityTaskCancelRequestedEventAttributes =
    { decisionTaskCompletedEventId : Int
    , activityId : String
    }


activityTaskCancelRequestedEventAttributesDecoder : JD.Decoder ActivityTaskCancelRequestedEventAttributes
activityTaskCancelRequestedEventAttributesDecoder =
    JD.succeed ActivityTaskCancelRequestedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "activityId", "ActivityId" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>ActivityTaskCanceled</code> event.</p>

-}
type alias ActivityTaskCanceledEventAttributes =
    { details : Maybe String
    , scheduledEventId : Int
    , startedEventId : Int
    , latestCancelRequestedEventId : Maybe Int
    }


activityTaskCanceledEventAttributesDecoder : JD.Decoder ActivityTaskCanceledEventAttributes
activityTaskCanceledEventAttributesDecoder =
    JD.succeed ActivityTaskCanceledEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "details", "Details" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "scheduledEventId", "ScheduledEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "latestCancelRequestedEventId", "LatestCancelRequestedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>ActivityTaskCompleted</code> event.</p>

-}
type alias ActivityTaskCompletedEventAttributes =
    { result : Maybe String
    , scheduledEventId : Int
    , startedEventId : Int
    }


activityTaskCompletedEventAttributesDecoder : JD.Decoder ActivityTaskCompletedEventAttributes
activityTaskCompletedEventAttributesDecoder =
    JD.succeed ActivityTaskCompletedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "result", "Result" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "scheduledEventId", "ScheduledEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>ActivityTaskFailed</code> event.</p>

-}
type alias ActivityTaskFailedEventAttributes =
    { reason : Maybe String
    , details : Maybe String
    , scheduledEventId : Int
    , startedEventId : Int
    }


activityTaskFailedEventAttributesDecoder : JD.Decoder ActivityTaskFailedEventAttributes
activityTaskFailedEventAttributesDecoder =
    JD.succeed ActivityTaskFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "reason", "Reason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "details", "Details" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "scheduledEventId", "ScheduledEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>ActivityTaskScheduled</code> event.</p>

-}
type alias ActivityTaskScheduledEventAttributes =
    { activityType : ActivityType
    , activityId : String
    , input : Maybe String
    , control : Maybe String
    , scheduleToStartTimeout : Maybe String
    , scheduleToCloseTimeout : Maybe String
    , startToCloseTimeout : Maybe String
    , taskList : TaskList
    , taskPriority : Maybe String
    , decisionTaskCompletedEventId : Int
    , heartbeatTimeout : Maybe String
    }


activityTaskScheduledEventAttributesDecoder : JD.Decoder ActivityTaskScheduledEventAttributes
activityTaskScheduledEventAttributesDecoder =
    JD.succeed ActivityTaskScheduledEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "activityType", "ActivityType" ]
                activityTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "activityId", "ActivityId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "input", "Input" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "scheduleToStartTimeout", "ScheduleToStartTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "scheduleToCloseTimeout", "ScheduleToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "startToCloseTimeout", "StartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "taskList", "TaskList" ]
                taskListDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskPriority", "TaskPriority" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "heartbeatTimeout", "HeartbeatTimeout" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>ActivityTaskStarted</code> event.</p>

-}
type alias ActivityTaskStartedEventAttributes =
    { identity : Maybe String
    , scheduledEventId : Int
    }


activityTaskStartedEventAttributesDecoder : JD.Decoder ActivityTaskStartedEventAttributes
activityTaskStartedEventAttributesDecoder =
    JD.succeed ActivityTaskStartedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "identity", "Identity" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "scheduledEventId", "ScheduledEventId" ]
                JD.int
            )


{-| Type of HTTP response from activityTa
-}
type alias ActivityTaskStatus =
    { cancelRequested : Bool
    }


activityTaskStatusDecoder : JD.Decoder ActivityTaskStatus
activityTaskStatusDecoder =
    JD.succeed ActivityTaskStatus
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "cancelRequested", "CancelRequested" ]
                JD.bool
            )


{-|

<p>Provides the details of the <code>ActivityTaskTimedOut</code> event.</p>

-}
type alias ActivityTaskTimedOutEventAttributes =
    { timeoutType : ActivityTaskTimeoutType
    , scheduledEventId : Int
    , startedEventId : Int
    , details : Maybe String
    }


activityTaskTimedOutEventAttributesDecoder : JD.Decoder ActivityTaskTimedOutEventAttributes
activityTaskTimedOutEventAttributesDecoder =
    JD.succeed ActivityTaskTimedOutEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "timeoutType", "TimeoutType" ]
                activityTaskTimeoutTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "scheduledEventId", "ScheduledEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "details", "Details" ]
                JD.string
            )


{-| One of

  - `ActivityTaskTimeoutType_START_TO_CLOSE`
  - `ActivityTaskTimeoutType_SCHEDULE_TO_START`
  - `ActivityTaskTimeoutType_SCHEDULE_TO_CLOSE`
  - `ActivityTaskTimeoutType_HEARTBEAT`

-}
type ActivityTaskTimeoutType
    = ActivityTaskTimeoutType_START_TO_CLOSE
    | ActivityTaskTimeoutType_SCHEDULE_TO_START
    | ActivityTaskTimeoutType_SCHEDULE_TO_CLOSE
    | ActivityTaskTimeoutType_HEARTBEAT


activityTaskTimeoutTypeDecoder : JD.Decoder ActivityTaskTimeoutType
activityTaskTimeoutTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "START_TO_CLOSE" ->
                        JD.succeed ActivityTaskTimeoutType_START_TO_CLOSE

                    "SCHEDULE_TO_START" ->
                        JD.succeed ActivityTaskTimeoutType_SCHEDULE_TO_START

                    "SCHEDULE_TO_CLOSE" ->
                        JD.succeed ActivityTaskTimeoutType_SCHEDULE_TO_CLOSE

                    "HEARTBEAT" ->
                        JD.succeed ActivityTaskTimeoutType_HEARTBEAT

                    _ ->
                        JD.fail "bad thing"
            )


activityTaskTimeoutTypeToString : ActivityTaskTimeoutType -> String
activityTaskTimeoutTypeToString val =
    case val of
        ActivityTaskTimeoutType_START_TO_CLOSE ->
            "START_TO_CLOSE"

        ActivityTaskTimeoutType_SCHEDULE_TO_START ->
            "SCHEDULE_TO_START"

        ActivityTaskTimeoutType_SCHEDULE_TO_CLOSE ->
            "SCHEDULE_TO_CLOSE"

        ActivityTaskTimeoutType_HEARTBEAT ->
            "HEARTBEAT"


{-|

<p>Represents an activity type.</p>

-}
type alias ActivityType =
    { name : String
    , version : String
    }


activityTypeDecoder : JD.Decoder ActivityType
activityTypeDecoder =
    JD.succeed ActivityType
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "name", "Name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "version", "Version" ]
                JD.string
            )


{-|

<p>Configuration settings registered with the activity type.</p>

-}
type alias ActivityTypeConfiguration =
    { defaultTaskStartToCloseTimeout : Maybe String
    , defaultTaskHeartbeatTimeout : Maybe String
    , defaultTaskList : Maybe TaskList
    , defaultTaskPriority : Maybe String
    , defaultTaskScheduleToStartTimeout : Maybe String
    , defaultTaskScheduleToCloseTimeout : Maybe String
    }


activityTypeConfigurationDecoder : JD.Decoder ActivityTypeConfiguration
activityTypeConfigurationDecoder =
    JD.succeed ActivityTypeConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "defaultTaskStartToCloseTimeout", "DefaultTaskStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "defaultTaskHeartbeatTimeout", "DefaultTaskHeartbeatTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "defaultTaskList", "DefaultTaskList" ]
                taskListDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "defaultTaskPriority", "DefaultTaskPriority" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "defaultTaskScheduleToStartTimeout", "DefaultTaskScheduleToStartTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "defaultTaskScheduleToCloseTimeout", "DefaultTaskScheduleToCloseTimeout" ]
                JD.string
            )


{-| Type of HTTP response from activityTy
-}
type alias ActivityTypeDetail =
    { typeInfo : ActivityTypeInfo
    , configuration : ActivityTypeConfiguration
    }


activityTypeDetailDecoder : JD.Decoder ActivityTypeDetail
activityTypeDetailDecoder =
    JD.succeed ActivityTypeDetail
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "typeInfo", "TypeInfo" ]
                activityTypeInfoDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "configuration", "Configuration" ]
                activityTypeConfigurationDecoder
            )


{-|

<p>Detailed information about an activity type.</p>

-}
type alias ActivityTypeInfo =
    { activityType : ActivityType
    , status : RegistrationStatus
    , description : Maybe String
    , creationDate : Posix
    , deprecationDate : Maybe Posix
    }


activityTypeInfoDecoder : JD.Decoder ActivityTypeInfo
activityTypeInfoDecoder =
    JD.succeed ActivityTypeInfo
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "activityType", "ActivityType" ]
                activityTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "status", "Status" ]
                registrationStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "description", "Description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "creationDate", "CreationDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deprecationDate", "DeprecationDate" ]
                JDX.datetime
            )


{-| Type of HTTP response from activityT
-}
type alias ActivityTypeInfos =
    { typeInfos : List ActivityTypeInfo
    , nextPageToken : Maybe String
    }


activityTypeInfosDecoder : JD.Decoder ActivityTypeInfos
activityTypeInfosDecoder =
    JD.succeed ActivityTypeInfos
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "typeInfos", "TypeInfos" ]
                (JD.list activityTypeInfoDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextPageToken", "NextPageToken" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>CancelTimer</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

-}
type alias CancelTimerDecisionAttributes =
    { timerId : String
    }


cancelTimerDecisionAttributesDecoder : JD.Decoder CancelTimerDecisionAttributes
cancelTimerDecisionAttributesDecoder =
    JD.succeed CancelTimerDecisionAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "timerId", "TimerId" ]
                JD.string
            )


{-| One of

  - `CancelTimerFailedCause_TIMER_ID_UNKNOWN`
  - `CancelTimerFailedCause_OPERATION_NOT_PERMITTED`

-}
type CancelTimerFailedCause
    = CancelTimerFailedCause_TIMER_ID_UNKNOWN
    | CancelTimerFailedCause_OPERATION_NOT_PERMITTED


cancelTimerFailedCauseDecoder : JD.Decoder CancelTimerFailedCause
cancelTimerFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TIMER_ID_UNKNOWN" ->
                        JD.succeed CancelTimerFailedCause_TIMER_ID_UNKNOWN

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed CancelTimerFailedCause_OPERATION_NOT_PERMITTED

                    _ ->
                        JD.fail "bad thing"
            )


cancelTimerFailedCauseToString : CancelTimerFailedCause -> String
cancelTimerFailedCauseToString val =
    case val of
        CancelTimerFailedCause_TIMER_ID_UNKNOWN ->
            "TIMER_ID_UNKNOWN"

        CancelTimerFailedCause_OPERATION_NOT_PERMITTED ->
            "OPERATION_NOT_PERMITTED"


{-|

<p>Provides the details of the <code>CancelTimerFailed</code> event.</p>

-}
type alias CancelTimerFailedEventAttributes =
    { timerId : String
    , cause : CancelTimerFailedCause
    , decisionTaskCompletedEventId : Int
    }


cancelTimerFailedEventAttributesDecoder : JD.Decoder CancelTimerFailedEventAttributes
cancelTimerFailedEventAttributesDecoder =
    JD.succeed CancelTimerFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "timerId", "TimerId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "cause", "Cause" ]
                cancelTimerFailedCauseDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>CancelWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

-}
type alias CancelWorkflowExecutionDecisionAttributes =
    { details : Maybe String
    }


cancelWorkflowExecutionDecisionAttributesDecoder : JD.Decoder CancelWorkflowExecutionDecisionAttributes
cancelWorkflowExecutionDecisionAttributesDecoder =
    JD.succeed CancelWorkflowExecutionDecisionAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "details", "Details" ]
                JD.string
            )


{-| One of

  - `CancelWorkflowExecutionFailedCause_UNHANDLED_DECISION`
  - `CancelWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED`

-}
type CancelWorkflowExecutionFailedCause
    = CancelWorkflowExecutionFailedCause_UNHANDLED_DECISION
    | CancelWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED


cancelWorkflowExecutionFailedCauseDecoder : JD.Decoder CancelWorkflowExecutionFailedCause
cancelWorkflowExecutionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNHANDLED_DECISION" ->
                        JD.succeed CancelWorkflowExecutionFailedCause_UNHANDLED_DECISION

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed CancelWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED

                    _ ->
                        JD.fail "bad thing"
            )


cancelWorkflowExecutionFailedCauseToString : CancelWorkflowExecutionFailedCause -> String
cancelWorkflowExecutionFailedCauseToString val =
    case val of
        CancelWorkflowExecutionFailedCause_UNHANDLED_DECISION ->
            "UNHANDLED_DECISION"

        CancelWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED ->
            "OPERATION_NOT_PERMITTED"


{-|

<p>Provides the details of the <code>CancelWorkflowExecutionFailed</code> event.</p>

-}
type alias CancelWorkflowExecutionFailedEventAttributes =
    { cause : CancelWorkflowExecutionFailedCause
    , decisionTaskCompletedEventId : Int
    }


cancelWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder CancelWorkflowExecutionFailedEventAttributes
cancelWorkflowExecutionFailedEventAttributesDecoder =
    JD.succeed CancelWorkflowExecutionFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "cause", "Cause" ]
                cancelWorkflowExecutionFailedCauseDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-| One of

  - `ChildPolicy_TERMINATE`
  - `ChildPolicy_REQUEST_CANCEL`
  - `ChildPolicy_ABANDON`

-}
type ChildPolicy
    = ChildPolicy_TERMINATE
    | ChildPolicy_REQUEST_CANCEL
    | ChildPolicy_ABANDON


childPolicyDecoder : JD.Decoder ChildPolicy
childPolicyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TERMINATE" ->
                        JD.succeed ChildPolicy_TERMINATE

                    "REQUEST_CANCEL" ->
                        JD.succeed ChildPolicy_REQUEST_CANCEL

                    "ABANDON" ->
                        JD.succeed ChildPolicy_ABANDON

                    _ ->
                        JD.fail "bad thing"
            )


childPolicyToString : ChildPolicy -> String
childPolicyToString val =
    case val of
        ChildPolicy_TERMINATE ->
            "TERMINATE"

        ChildPolicy_REQUEST_CANCEL ->
            "REQUEST_CANCEL"

        ChildPolicy_ABANDON ->
            "ABANDON"


{-|

<p>Provide details of the <code>ChildWorkflowExecutionCanceled</code> event.</p>

-}
type alias ChildWorkflowExecutionCanceledEventAttributes =
    { workflowExecution : WorkflowExecution
    , workflowType : WorkflowType
    , details : Maybe String
    , initiatedEventId : Int
    , startedEventId : Int
    }


childWorkflowExecutionCanceledEventAttributesDecoder : JD.Decoder ChildWorkflowExecutionCanceledEventAttributes
childWorkflowExecutionCanceledEventAttributesDecoder =
    JD.succeed ChildWorkflowExecutionCanceledEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowExecution", "WorkflowExecution" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowType", "WorkflowType" ]
                workflowTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "details", "Details" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "initiatedEventId", "InitiatedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>ChildWorkflowExecutionCompleted</code> event.</p>

-}
type alias ChildWorkflowExecutionCompletedEventAttributes =
    { workflowExecution : WorkflowExecution
    , workflowType : WorkflowType
    , result : Maybe String
    , initiatedEventId : Int
    , startedEventId : Int
    }


childWorkflowExecutionCompletedEventAttributesDecoder : JD.Decoder ChildWorkflowExecutionCompletedEventAttributes
childWorkflowExecutionCompletedEventAttributesDecoder =
    JD.succeed ChildWorkflowExecutionCompletedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowExecution", "WorkflowExecution" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowType", "WorkflowType" ]
                workflowTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "result", "Result" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "initiatedEventId", "InitiatedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>ChildWorkflowExecutionFailed</code> event.</p>

-}
type alias ChildWorkflowExecutionFailedEventAttributes =
    { workflowExecution : WorkflowExecution
    , workflowType : WorkflowType
    , reason : Maybe String
    , details : Maybe String
    , initiatedEventId : Int
    , startedEventId : Int
    }


childWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder ChildWorkflowExecutionFailedEventAttributes
childWorkflowExecutionFailedEventAttributesDecoder =
    JD.succeed ChildWorkflowExecutionFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowExecution", "WorkflowExecution" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowType", "WorkflowType" ]
                workflowTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "reason", "Reason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "details", "Details" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "initiatedEventId", "InitiatedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>ChildWorkflowExecutionStarted</code> event.</p>

-}
type alias ChildWorkflowExecutionStartedEventAttributes =
    { workflowExecution : WorkflowExecution
    , workflowType : WorkflowType
    , initiatedEventId : Int
    }


childWorkflowExecutionStartedEventAttributesDecoder : JD.Decoder ChildWorkflowExecutionStartedEventAttributes
childWorkflowExecutionStartedEventAttributesDecoder =
    JD.succeed ChildWorkflowExecutionStartedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowExecution", "WorkflowExecution" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowType", "WorkflowType" ]
                workflowTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "initiatedEventId", "InitiatedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>ChildWorkflowExecutionTerminated</code> event.</p>

-}
type alias ChildWorkflowExecutionTerminatedEventAttributes =
    { workflowExecution : WorkflowExecution
    , workflowType : WorkflowType
    , initiatedEventId : Int
    , startedEventId : Int
    }


childWorkflowExecutionTerminatedEventAttributesDecoder : JD.Decoder ChildWorkflowExecutionTerminatedEventAttributes
childWorkflowExecutionTerminatedEventAttributesDecoder =
    JD.succeed ChildWorkflowExecutionTerminatedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowExecution", "WorkflowExecution" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowType", "WorkflowType" ]
                workflowTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "initiatedEventId", "InitiatedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>ChildWorkflowExecutionTimedOut</code> event.</p>

-}
type alias ChildWorkflowExecutionTimedOutEventAttributes =
    { workflowExecution : WorkflowExecution
    , workflowType : WorkflowType
    , timeoutType : WorkflowExecutionTimeoutType
    , initiatedEventId : Int
    , startedEventId : Int
    }


childWorkflowExecutionTimedOutEventAttributesDecoder : JD.Decoder ChildWorkflowExecutionTimedOutEventAttributes
childWorkflowExecutionTimedOutEventAttributesDecoder =
    JD.succeed ChildWorkflowExecutionTimedOutEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowExecution", "WorkflowExecution" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowType", "WorkflowType" ]
                workflowTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "timeoutType", "TimeoutType" ]
                workflowExecutionTimeoutTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "initiatedEventId", "InitiatedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )


{-| One of

  - `CloseStatus_COMPLETED`
  - `CloseStatus_FAILED`
  - `CloseStatus_CANCELED`
  - `CloseStatus_TERMINATED`
  - `CloseStatus_CONTINUED_AS_NEW`
  - `CloseStatus_TIMED_OUT`

-}
type CloseStatus
    = CloseStatus_COMPLETED
    | CloseStatus_FAILED
    | CloseStatus_CANCELED
    | CloseStatus_TERMINATED
    | CloseStatus_CONTINUED_AS_NEW
    | CloseStatus_TIMED_OUT


closeStatusDecoder : JD.Decoder CloseStatus
closeStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "COMPLETED" ->
                        JD.succeed CloseStatus_COMPLETED

                    "FAILED" ->
                        JD.succeed CloseStatus_FAILED

                    "CANCELED" ->
                        JD.succeed CloseStatus_CANCELED

                    "TERMINATED" ->
                        JD.succeed CloseStatus_TERMINATED

                    "CONTINUED_AS_NEW" ->
                        JD.succeed CloseStatus_CONTINUED_AS_NEW

                    "TIMED_OUT" ->
                        JD.succeed CloseStatus_TIMED_OUT

                    _ ->
                        JD.fail "bad thing"
            )


closeStatusToString : CloseStatus -> String
closeStatusToString val =
    case val of
        CloseStatus_COMPLETED ->
            "COMPLETED"

        CloseStatus_FAILED ->
            "FAILED"

        CloseStatus_CANCELED ->
            "CANCELED"

        CloseStatus_TERMINATED ->
            "TERMINATED"

        CloseStatus_CONTINUED_AS_NEW ->
            "CONTINUED_AS_NEW"

        CloseStatus_TIMED_OUT ->
            "TIMED_OUT"


{-|

<p>Used to filter the closed workflow executions in visibility APIs by their close status.</p>

-}
type alias CloseStatusFilter =
    { status : CloseStatus
    }


closeStatusFilterDecoder : JD.Decoder CloseStatusFilter
closeStatusFilterDecoder =
    JD.succeed CloseStatusFilter
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "status", "Status" ]
                closeStatusDecoder
            )


{-|

<p>Provides the details of the <code>CompleteWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

-}
type alias CompleteWorkflowExecutionDecisionAttributes =
    { result : Maybe String
    }


completeWorkflowExecutionDecisionAttributesDecoder : JD.Decoder CompleteWorkflowExecutionDecisionAttributes
completeWorkflowExecutionDecisionAttributesDecoder =
    JD.succeed CompleteWorkflowExecutionDecisionAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "result", "Result" ]
                JD.string
            )


{-| One of

  - `CompleteWorkflowExecutionFailedCause_UNHANDLED_DECISION`
  - `CompleteWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED`

-}
type CompleteWorkflowExecutionFailedCause
    = CompleteWorkflowExecutionFailedCause_UNHANDLED_DECISION
    | CompleteWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED


completeWorkflowExecutionFailedCauseDecoder : JD.Decoder CompleteWorkflowExecutionFailedCause
completeWorkflowExecutionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNHANDLED_DECISION" ->
                        JD.succeed CompleteWorkflowExecutionFailedCause_UNHANDLED_DECISION

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed CompleteWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED

                    _ ->
                        JD.fail "bad thing"
            )


completeWorkflowExecutionFailedCauseToString : CompleteWorkflowExecutionFailedCause -> String
completeWorkflowExecutionFailedCauseToString val =
    case val of
        CompleteWorkflowExecutionFailedCause_UNHANDLED_DECISION ->
            "UNHANDLED_DECISION"

        CompleteWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED ->
            "OPERATION_NOT_PERMITTED"


{-|

<p>Provides the details of the <code>CompleteWorkflowExecutionFailed</code> event.</p>

-}
type alias CompleteWorkflowExecutionFailedEventAttributes =
    { cause : CompleteWorkflowExecutionFailedCause
    , decisionTaskCompletedEventId : Int
    }


completeWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder CompleteWorkflowExecutionFailedEventAttributes
completeWorkflowExecutionFailedEventAttributesDecoder =
    JD.succeed CompleteWorkflowExecutionFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "cause", "Cause" ]
                completeWorkflowExecutionFailedCauseDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>ContinueAsNewWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tag</code> – A tag used to identify the workflow execution</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> <li> <p> <code>workflowType.version</code> – String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

-}
type alias ContinueAsNewWorkflowExecutionDecisionAttributes =
    { input : Maybe String
    , executionStartToCloseTimeout : Maybe String
    , taskList : Maybe TaskList
    , taskPriority : Maybe String
    , taskStartToCloseTimeout : Maybe String
    , childPolicy : Maybe ChildPolicy
    , tagList : Maybe (List String)
    , workflowTypeVersion : Maybe String
    , lambdaRole : Maybe String
    }


continueAsNewWorkflowExecutionDecisionAttributesDecoder : JD.Decoder ContinueAsNewWorkflowExecutionDecisionAttributes
continueAsNewWorkflowExecutionDecisionAttributesDecoder =
    JD.succeed ContinueAsNewWorkflowExecutionDecisionAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "input", "Input" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "executionStartToCloseTimeout", "ExecutionStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskList", "TaskList" ]
                taskListDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskPriority", "TaskPriority" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskStartToCloseTimeout", "TaskStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "childPolicy", "ChildPolicy" ]
                childPolicyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "tagList", "TagList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "workflowTypeVersion", "WorkflowTypeVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lambdaRole", "LambdaRole" ]
                JD.string
            )


{-| One of

  - `ContinueAsNewWorkflowExecutionFailedCause_UNHANDLED_DECISION`
  - `ContinueAsNewWorkflowExecutionFailedCause_WORKFLOW_TYPE_DEPRECATED`
  - `ContinueAsNewWorkflowExecutionFailedCause_WORKFLOW_TYPE_DOES_NOT_EXIST`
  - `ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED`
  - `ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED`
  - `ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_TASK_LIST_UNDEFINED`
  - `ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_CHILD_POLICY_UNDEFINED`
  - `ContinueAsNewWorkflowExecutionFailedCause_CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED`
  - `ContinueAsNewWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED`

-}
type ContinueAsNewWorkflowExecutionFailedCause
    = ContinueAsNewWorkflowExecutionFailedCause_UNHANDLED_DECISION
    | ContinueAsNewWorkflowExecutionFailedCause_WORKFLOW_TYPE_DEPRECATED
    | ContinueAsNewWorkflowExecutionFailedCause_WORKFLOW_TYPE_DOES_NOT_EXIST
    | ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED
    | ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED
    | ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_TASK_LIST_UNDEFINED
    | ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_CHILD_POLICY_UNDEFINED
    | ContinueAsNewWorkflowExecutionFailedCause_CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED
    | ContinueAsNewWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED


continueAsNewWorkflowExecutionFailedCauseDecoder : JD.Decoder ContinueAsNewWorkflowExecutionFailedCause
continueAsNewWorkflowExecutionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNHANDLED_DECISION" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_UNHANDLED_DECISION

                    "WORKFLOW_TYPE_DEPRECATED" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_WORKFLOW_TYPE_DEPRECATED

                    "WORKFLOW_TYPE_DOES_NOT_EXIST" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_WORKFLOW_TYPE_DOES_NOT_EXIST

                    "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED

                    "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED

                    "DEFAULT_TASK_LIST_UNDEFINED" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_TASK_LIST_UNDEFINED

                    "DEFAULT_CHILD_POLICY_UNDEFINED" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_CHILD_POLICY_UNDEFINED

                    "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED

                    _ ->
                        JD.fail "bad thing"
            )


continueAsNewWorkflowExecutionFailedCauseToString : ContinueAsNewWorkflowExecutionFailedCause -> String
continueAsNewWorkflowExecutionFailedCauseToString val =
    case val of
        ContinueAsNewWorkflowExecutionFailedCause_UNHANDLED_DECISION ->
            "UNHANDLED_DECISION"

        ContinueAsNewWorkflowExecutionFailedCause_WORKFLOW_TYPE_DEPRECATED ->
            "WORKFLOW_TYPE_DEPRECATED"

        ContinueAsNewWorkflowExecutionFailedCause_WORKFLOW_TYPE_DOES_NOT_EXIST ->
            "WORKFLOW_TYPE_DOES_NOT_EXIST"

        ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED ->
            "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED"

        ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED ->
            "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED"

        ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_TASK_LIST_UNDEFINED ->
            "DEFAULT_TASK_LIST_UNDEFINED"

        ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_CHILD_POLICY_UNDEFINED ->
            "DEFAULT_CHILD_POLICY_UNDEFINED"

        ContinueAsNewWorkflowExecutionFailedCause_CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED ->
            "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED"

        ContinueAsNewWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED ->
            "OPERATION_NOT_PERMITTED"


{-|

<p>Provides the details of the <code>ContinueAsNewWorkflowExecutionFailed</code> event.</p>

-}
type alias ContinueAsNewWorkflowExecutionFailedEventAttributes =
    { cause : ContinueAsNewWorkflowExecutionFailedCause
    , decisionTaskCompletedEventId : Int
    }


continueAsNewWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder ContinueAsNewWorkflowExecutionFailedEventAttributes
continueAsNewWorkflowExecutionFailedEventAttributesDecoder =
    JD.succeed ContinueAsNewWorkflowExecutionFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "cause", "Cause" ]
                continueAsNewWorkflowExecutionFailedCauseDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-|

<p>Specifies a decision made by the decider. A decision can be one of these types:</p> <ul> <li> <p> <code>CancelTimer</code> – Cancels a previously started timer and records a <code>TimerCanceled</code> event in the history.</p> </li> <li> <p> <code>CancelWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionCanceled</code> event in the history.</p> </li> <li> <p> <code>CompleteWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionCompleted</code> event in the history .</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecution</code> – Closes the workflow execution and starts a new workflow execution of the same type using the same workflow ID and a unique run Id. A <code>WorkflowExecutionContinuedAsNew</code> event is recorded in the history.</p> </li> <li> <p> <code>FailWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionFailed</code> event in the history.</p> </li> <li> <p> <code>RecordMarker</code> – Records a <code>MarkerRecorded</code> event in the history. Markers can be used for adding custom information in the history for instance to let deciders know that they don't need to look at the history beyond the marker event.</p> </li> <li> <p> <code>RequestCancelActivityTask</code> – Attempts to cancel a previously scheduled activity task. If the activity task was scheduled but has not been assigned to a worker, then it is canceled. If the activity task was already assigned to a worker, then the worker is informed that cancellation has been requested in the response to <a>RecordActivityTaskHeartbeat</a>.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecution</code> – Requests that a request be made to cancel the specified external workflow execution and records a <code>RequestCancelExternalWorkflowExecutionInitiated</code> event in the history.</p> </li> <li> <p> <code>ScheduleActivityTask</code> – Schedules an activity task.</p> </li> <li> <p> <code>SignalExternalWorkflowExecution</code> – Requests a signal to be delivered to the specified external workflow execution and records a <code>SignalExternalWorkflowExecutionInitiated</code> event in the history.</p> </li> <li> <p> <code>StartChildWorkflowExecution</code> – Requests that a child workflow execution be started and records a <code>StartChildWorkflowExecutionInitiated</code> event in the history. The child workflow execution is a separate workflow execution with its own history.</p> </li> <li> <p> <code>StartTimer</code> – Starts a timer for this workflow execution and records a <code>TimerStarted</code> event in the history. This timer fires after the specified delay and record a <code>TimerFired</code> event.</p> </li> </ul> <p> <b>Access Control</b> </p> <p>If you grant permission to use <code>RespondDecisionTaskCompleted</code>, you can use IAM policies to express permissions for the list of decisions returned by this action as if they were members of the API. Treating decisions as a pseudo API maintains a uniform conceptual model and helps keep policies readable. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> <p> <b>Decision Failure</b> </p> <p>Decisions can fail for several reasons</p> <ul> <li> <p>The ordering of decisions should follow a logical flow. Some decisions might not make sense in the current context of the workflow execution and therefore fails.</p> </li> <li> <p>A limit on your account was reached.</p> </li> <li> <p>The decision lacks sufficient permissions.</p> </li> </ul> <p>One of the following events might be added to the history to indicate an error. The event attribute's <code>cause</code> parameter indicates the cause. If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> <ul> <li> <p> <code>ScheduleActivityTaskFailed</code> – A <code>ScheduleActivityTask</code> decision failed. This could happen if the activity type specified in the decision isn't registered, is in a deprecated state, or the decision isn't properly configured.</p> </li> <li> <p> <code>RequestCancelActivityTaskFailed</code> – A <code>RequestCancelActivityTask</code> decision failed. This could happen if there is no open activity task with the specified activityId.</p> </li> <li> <p> <code>StartTimerFailed</code> – A <code>StartTimer</code> decision failed. This could happen if there is another open timer with the same timerId.</p> </li> <li> <p> <code>CancelTimerFailed</code> – A <code>CancelTimer</code> decision failed. This could happen if there is no open timer with the specified timerId.</p> </li> <li> <p> <code>StartChildWorkflowExecutionFailed</code> – A <code>StartChildWorkflowExecution</code> decision failed. This could happen if the workflow type specified isn't registered, is deprecated, or the decision isn't properly configured.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionFailed</code> – A <code>SignalExternalWorkflowExecution</code> decision failed. This could happen if the <code>workflowID</code> specified in the decision was incorrect.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionFailed</code> – A <code>RequestCancelExternalWorkflowExecution</code> decision failed. This could happen if the <code>workflowID</code> specified in the decision was incorrect.</p> </li> <li> <p> <code>CancelWorkflowExecutionFailed</code> – A <code>CancelWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> <li> <p> <code>CompleteWorkflowExecutionFailed</code> – A <code>CompleteWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecutionFailed</code> – A <code>ContinueAsNewWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution or the ContinueAsNewWorkflowExecution decision was not configured correctly.</p> </li> <li> <p> <code>FailWorkflowExecutionFailed</code> – A <code>FailWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> </ul> <p>The preceding error events might occur due to an error in the decider logic, which might put the workflow execution in an unstable state The cause field in the event structure for the error event indicates the cause of the error.</p> <note> <p>A workflow execution may be closed by the decider by returning one of the following decisions when completing a decision task: <code>CompleteWorkflowExecution</code>, <code>FailWorkflowExecution</code>, <code>CancelWorkflowExecution</code> and <code>ContinueAsNewWorkflowExecution</code>. An <code>UnhandledDecision</code> fault is returned if a workflow closing decision is specified and a signal or activity event had been added to the history while the decision task was being performed by the decider. Unlike the above situations which are logic issues, this fault is always possible because of race conditions in a distributed system. The right action here is to call <a>RespondDecisionTaskCompleted</a> without any decisions. This would result in another decision task with these new events included in the history. The decider should handle the new events and may decide to close the workflow execution.</p> </note> <p> <b>How to Code a Decision</b> </p> <p>You code a decision by first setting the decision type field to one of the above decision values, and then set the corresponding attributes field shown below:</p> <ul> <li> <p> <code> <a>ScheduleActivityTaskDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RequestCancelActivityTaskDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CompleteWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>FailWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CancelWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>ContinueAsNewWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RecordMarkerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>StartTimerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CancelTimerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>SignalExternalWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RequestCancelExternalWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>StartChildWorkflowExecutionDecisionAttributes</a> </code> </p> </li> </ul>

-}
type alias Decision =
    { decisionType : DecisionType
    , scheduleActivityTaskDecisionAttributes : Maybe ScheduleActivityTaskDecisionAttributes
    , requestCancelActivityTaskDecisionAttributes : Maybe RequestCancelActivityTaskDecisionAttributes
    , completeWorkflowExecutionDecisionAttributes : Maybe CompleteWorkflowExecutionDecisionAttributes
    , failWorkflowExecutionDecisionAttributes : Maybe FailWorkflowExecutionDecisionAttributes
    , cancelWorkflowExecutionDecisionAttributes : Maybe CancelWorkflowExecutionDecisionAttributes
    , continueAsNewWorkflowExecutionDecisionAttributes : Maybe ContinueAsNewWorkflowExecutionDecisionAttributes
    , recordMarkerDecisionAttributes : Maybe RecordMarkerDecisionAttributes
    , startTimerDecisionAttributes : Maybe StartTimerDecisionAttributes
    , cancelTimerDecisionAttributes : Maybe CancelTimerDecisionAttributes
    , signalExternalWorkflowExecutionDecisionAttributes : Maybe SignalExternalWorkflowExecutionDecisionAttributes
    , requestCancelExternalWorkflowExecutionDecisionAttributes : Maybe RequestCancelExternalWorkflowExecutionDecisionAttributes
    , startChildWorkflowExecutionDecisionAttributes : Maybe StartChildWorkflowExecutionDecisionAttributes
    , scheduleLambdaFunctionDecisionAttributes : Maybe ScheduleLambdaFunctionDecisionAttributes
    }


decisionDecoder : JD.Decoder Decision
decisionDecoder =
    JD.succeed Decision
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionType", "DecisionType" ]
                decisionTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "scheduleActivityTaskDecisionAttributes", "ScheduleActivityTaskDecisionAttributes" ]
                scheduleActivityTaskDecisionAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "requestCancelActivityTaskDecisionAttributes", "RequestCancelActivityTaskDecisionAttributes" ]
                requestCancelActivityTaskDecisionAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "completeWorkflowExecutionDecisionAttributes", "CompleteWorkflowExecutionDecisionAttributes" ]
                completeWorkflowExecutionDecisionAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "failWorkflowExecutionDecisionAttributes", "FailWorkflowExecutionDecisionAttributes" ]
                failWorkflowExecutionDecisionAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "cancelWorkflowExecutionDecisionAttributes", "CancelWorkflowExecutionDecisionAttributes" ]
                cancelWorkflowExecutionDecisionAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "continueAsNewWorkflowExecutionDecisionAttributes", "ContinueAsNewWorkflowExecutionDecisionAttributes" ]
                continueAsNewWorkflowExecutionDecisionAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "recordMarkerDecisionAttributes", "RecordMarkerDecisionAttributes" ]
                recordMarkerDecisionAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "startTimerDecisionAttributes", "StartTimerDecisionAttributes" ]
                startTimerDecisionAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "cancelTimerDecisionAttributes", "CancelTimerDecisionAttributes" ]
                cancelTimerDecisionAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "signalExternalWorkflowExecutionDecisionAttributes", "SignalExternalWorkflowExecutionDecisionAttributes" ]
                signalExternalWorkflowExecutionDecisionAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "requestCancelExternalWorkflowExecutionDecisionAttributes", "RequestCancelExternalWorkflowExecutionDecisionAttributes" ]
                requestCancelExternalWorkflowExecutionDecisionAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "startChildWorkflowExecutionDecisionAttributes", "StartChildWorkflowExecutionDecisionAttributes" ]
                startChildWorkflowExecutionDecisionAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "scheduleLambdaFunctionDecisionAttributes", "ScheduleLambdaFunctionDecisionAttributes" ]
                scheduleLambdaFunctionDecisionAttributesDecoder
            )


{-| Type of HTTP response from deci
-}
type alias DecisionTask =
    { taskToken : String
    , startedEventId : Int
    , workflowExecution : WorkflowExecution
    , workflowType : WorkflowType
    , events : List HistoryEvent
    , nextPageToken : Maybe String
    , previousStartedEventId : Maybe Int
    }


decisionTaskDecoder : JD.Decoder DecisionTask
decisionTaskDecoder =
    JD.succeed DecisionTask
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "taskToken", "TaskToken" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowExecution", "WorkflowExecution" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowType", "WorkflowType" ]
                workflowTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "events", "Events" ]
                (JD.list historyEventDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextPageToken", "NextPageToken" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "previousStartedEventId", "PreviousStartedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>DecisionTaskCompleted</code> event.</p>

-}
type alias DecisionTaskCompletedEventAttributes =
    { executionContext : Maybe String
    , scheduledEventId : Int
    , startedEventId : Int
    }


decisionTaskCompletedEventAttributesDecoder : JD.Decoder DecisionTaskCompletedEventAttributes
decisionTaskCompletedEventAttributesDecoder =
    JD.succeed DecisionTaskCompletedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "executionContext", "ExecutionContext" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "scheduledEventId", "ScheduledEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )


{-|

<p>Provides details about the <code>DecisionTaskScheduled</code> event.</p>

-}
type alias DecisionTaskScheduledEventAttributes =
    { taskList : TaskList
    , taskPriority : Maybe String
    , startToCloseTimeout : Maybe String
    }


decisionTaskScheduledEventAttributesDecoder : JD.Decoder DecisionTaskScheduledEventAttributes
decisionTaskScheduledEventAttributesDecoder =
    JD.succeed DecisionTaskScheduledEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "taskList", "TaskList" ]
                taskListDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskPriority", "TaskPriority" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "startToCloseTimeout", "StartToCloseTimeout" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>DecisionTaskStarted</code> event.</p>

-}
type alias DecisionTaskStartedEventAttributes =
    { identity : Maybe String
    , scheduledEventId : Int
    }


decisionTaskStartedEventAttributesDecoder : JD.Decoder DecisionTaskStartedEventAttributes
decisionTaskStartedEventAttributesDecoder =
    JD.succeed DecisionTaskStartedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "identity", "Identity" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "scheduledEventId", "ScheduledEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>DecisionTaskTimedOut</code> event.</p>

-}
type alias DecisionTaskTimedOutEventAttributes =
    { timeoutType : DecisionTaskTimeoutType
    , scheduledEventId : Int
    , startedEventId : Int
    }


decisionTaskTimedOutEventAttributesDecoder : JD.Decoder DecisionTaskTimedOutEventAttributes
decisionTaskTimedOutEventAttributesDecoder =
    JD.succeed DecisionTaskTimedOutEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "timeoutType", "TimeoutType" ]
                decisionTaskTimeoutTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "scheduledEventId", "ScheduledEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )


{-| One of

  - `DecisionTaskTimeoutType_START_TO_CLOSE`

-}
type DecisionTaskTimeoutType
    = DecisionTaskTimeoutType_START_TO_CLOSE


decisionTaskTimeoutTypeDecoder : JD.Decoder DecisionTaskTimeoutType
decisionTaskTimeoutTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "START_TO_CLOSE" ->
                        JD.succeed DecisionTaskTimeoutType_START_TO_CLOSE

                    _ ->
                        JD.fail "bad thing"
            )


decisionTaskTimeoutTypeToString : DecisionTaskTimeoutType -> String
decisionTaskTimeoutTypeToString val =
    case val of
        DecisionTaskTimeoutType_START_TO_CLOSE ->
            "START_TO_CLOSE"


{-| One of

  - `DecisionType_ScheduleActivityTask`
  - `DecisionType_RequestCancelActivityTask`
  - `DecisionType_CompleteWorkflowExecution`
  - `DecisionType_FailWorkflowExecution`
  - `DecisionType_CancelWorkflowExecution`
  - `DecisionType_ContinueAsNewWorkflowExecution`
  - `DecisionType_RecordMarker`
  - `DecisionType_StartTimer`
  - `DecisionType_CancelTimer`
  - `DecisionType_SignalExternalWorkflowExecution`
  - `DecisionType_RequestCancelExternalWorkflowExecution`
  - `DecisionType_StartChildWorkflowExecution`
  - `DecisionType_ScheduleLambdaFunction`

-}
type DecisionType
    = DecisionType_ScheduleActivityTask
    | DecisionType_RequestCancelActivityTask
    | DecisionType_CompleteWorkflowExecution
    | DecisionType_FailWorkflowExecution
    | DecisionType_CancelWorkflowExecution
    | DecisionType_ContinueAsNewWorkflowExecution
    | DecisionType_RecordMarker
    | DecisionType_StartTimer
    | DecisionType_CancelTimer
    | DecisionType_SignalExternalWorkflowExecution
    | DecisionType_RequestCancelExternalWorkflowExecution
    | DecisionType_StartChildWorkflowExecution
    | DecisionType_ScheduleLambdaFunction


decisionTypeDecoder : JD.Decoder DecisionType
decisionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ScheduleActivityTask" ->
                        JD.succeed DecisionType_ScheduleActivityTask

                    "RequestCancelActivityTask" ->
                        JD.succeed DecisionType_RequestCancelActivityTask

                    "CompleteWorkflowExecution" ->
                        JD.succeed DecisionType_CompleteWorkflowExecution

                    "FailWorkflowExecution" ->
                        JD.succeed DecisionType_FailWorkflowExecution

                    "CancelWorkflowExecution" ->
                        JD.succeed DecisionType_CancelWorkflowExecution

                    "ContinueAsNewWorkflowExecution" ->
                        JD.succeed DecisionType_ContinueAsNewWorkflowExecution

                    "RecordMarker" ->
                        JD.succeed DecisionType_RecordMarker

                    "StartTimer" ->
                        JD.succeed DecisionType_StartTimer

                    "CancelTimer" ->
                        JD.succeed DecisionType_CancelTimer

                    "SignalExternalWorkflowExecution" ->
                        JD.succeed DecisionType_SignalExternalWorkflowExecution

                    "RequestCancelExternalWorkflowExecution" ->
                        JD.succeed DecisionType_RequestCancelExternalWorkflowExecution

                    "StartChildWorkflowExecution" ->
                        JD.succeed DecisionType_StartChildWorkflowExecution

                    "ScheduleLambdaFunction" ->
                        JD.succeed DecisionType_ScheduleLambdaFunction

                    _ ->
                        JD.fail "bad thing"
            )


decisionTypeToString : DecisionType -> String
decisionTypeToString val =
    case val of
        DecisionType_ScheduleActivityTask ->
            "ScheduleActivityTask"

        DecisionType_RequestCancelActivityTask ->
            "RequestCancelActivityTask"

        DecisionType_CompleteWorkflowExecution ->
            "CompleteWorkflowExecution"

        DecisionType_FailWorkflowExecution ->
            "FailWorkflowExecution"

        DecisionType_CancelWorkflowExecution ->
            "CancelWorkflowExecution"

        DecisionType_ContinueAsNewWorkflowExecution ->
            "ContinueAsNewWorkflowExecution"

        DecisionType_RecordMarker ->
            "RecordMarker"

        DecisionType_StartTimer ->
            "StartTimer"

        DecisionType_CancelTimer ->
            "CancelTimer"

        DecisionType_SignalExternalWorkflowExecution ->
            "SignalExternalWorkflowExecution"

        DecisionType_RequestCancelExternalWorkflowExecution ->
            "RequestCancelExternalWorkflowExecution"

        DecisionType_StartChildWorkflowExecution ->
            "StartChildWorkflowExecution"

        DecisionType_ScheduleLambdaFunction ->
            "ScheduleLambdaFunction"


{-|

<p>Contains the configuration settings of a domain.</p>

-}
type alias DomainConfiguration =
    { workflowExecutionRetentionPeriodInDays : String
    }


domainConfigurationDecoder : JD.Decoder DomainConfiguration
domainConfigurationDecoder =
    JD.succeed DomainConfiguration
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowExecutionRetentionPeriodInDays", "WorkflowExecutionRetentionPeriodInDays" ]
                JD.string
            )


{-| Type of HTTP response from doma
-}
type alias DomainDetail =
    { domainInfo : DomainInfo
    , configuration : DomainConfiguration
    }


domainDetailDecoder : JD.Decoder DomainDetail
domainDetailDecoder =
    JD.succeed DomainDetail
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "domainInfo", "DomainInfo" ]
                domainInfoDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "configuration", "Configuration" ]
                domainConfigurationDecoder
            )


{-|

<p>Contains general information about a domain.</p>

-}
type alias DomainInfo =
    { name : String
    , status : RegistrationStatus
    , description : Maybe String
    , arn : Maybe String
    }


domainInfoDecoder : JD.Decoder DomainInfo
domainInfoDecoder =
    JD.succeed DomainInfo
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "name", "Name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "status", "Status" ]
                registrationStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "description", "Description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "arn", "Arn" ]
                JD.string
            )


{-| Type of HTTP response from dom
-}
type alias DomainInfos =
    { domainInfos : List DomainInfo
    , nextPageToken : Maybe String
    }


domainInfosDecoder : JD.Decoder DomainInfos
domainInfosDecoder =
    JD.succeed DomainInfos
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "domainInfos", "DomainInfos" ]
                (JD.list domainInfoDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextPageToken", "NextPageToken" ]
                JD.string
            )


{-| One of

  - `EventType_WorkflowExecutionStarted`
  - `EventType_WorkflowExecutionCancelRequested`
  - `EventType_WorkflowExecutionCompleted`
  - `EventType_CompleteWorkflowExecutionFailed`
  - `EventType_WorkflowExecutionFailed`
  - `EventType_FailWorkflowExecutionFailed`
  - `EventType_WorkflowExecutionTimedOut`
  - `EventType_WorkflowExecutionCanceled`
  - `EventType_CancelWorkflowExecutionFailed`
  - `EventType_WorkflowExecutionContinuedAsNew`
  - `EventType_ContinueAsNewWorkflowExecutionFailed`
  - `EventType_WorkflowExecutionTerminated`
  - `EventType_DecisionTaskScheduled`
  - `EventType_DecisionTaskStarted`
  - `EventType_DecisionTaskCompleted`
  - `EventType_DecisionTaskTimedOut`
  - `EventType_ActivityTaskScheduled`
  - `EventType_ScheduleActivityTaskFailed`
  - `EventType_ActivityTaskStarted`
  - `EventType_ActivityTaskCompleted`
  - `EventType_ActivityTaskFailed`
  - `EventType_ActivityTaskTimedOut`
  - `EventType_ActivityTaskCanceled`
  - `EventType_ActivityTaskCancelRequested`
  - `EventType_RequestCancelActivityTaskFailed`
  - `EventType_WorkflowExecutionSignaled`
  - `EventType_MarkerRecorded`
  - `EventType_RecordMarkerFailed`
  - `EventType_TimerStarted`
  - `EventType_StartTimerFailed`
  - `EventType_TimerFired`
  - `EventType_TimerCanceled`
  - `EventType_CancelTimerFailed`
  - `EventType_StartChildWorkflowExecutionInitiated`
  - `EventType_StartChildWorkflowExecutionFailed`
  - `EventType_ChildWorkflowExecutionStarted`
  - `EventType_ChildWorkflowExecutionCompleted`
  - `EventType_ChildWorkflowExecutionFailed`
  - `EventType_ChildWorkflowExecutionTimedOut`
  - `EventType_ChildWorkflowExecutionCanceled`
  - `EventType_ChildWorkflowExecutionTerminated`
  - `EventType_SignalExternalWorkflowExecutionInitiated`
  - `EventType_SignalExternalWorkflowExecutionFailed`
  - `EventType_ExternalWorkflowExecutionSignaled`
  - `EventType_RequestCancelExternalWorkflowExecutionInitiated`
  - `EventType_RequestCancelExternalWorkflowExecutionFailed`
  - `EventType_ExternalWorkflowExecutionCancelRequested`
  - `EventType_LambdaFunctionScheduled`
  - `EventType_LambdaFunctionStarted`
  - `EventType_LambdaFunctionCompleted`
  - `EventType_LambdaFunctionFailed`
  - `EventType_LambdaFunctionTimedOut`
  - `EventType_ScheduleLambdaFunctionFailed`
  - `EventType_StartLambdaFunctionFailed`

-}
type EventType
    = EventType_WorkflowExecutionStarted
    | EventType_WorkflowExecutionCancelRequested
    | EventType_WorkflowExecutionCompleted
    | EventType_CompleteWorkflowExecutionFailed
    | EventType_WorkflowExecutionFailed
    | EventType_FailWorkflowExecutionFailed
    | EventType_WorkflowExecutionTimedOut
    | EventType_WorkflowExecutionCanceled
    | EventType_CancelWorkflowExecutionFailed
    | EventType_WorkflowExecutionContinuedAsNew
    | EventType_ContinueAsNewWorkflowExecutionFailed
    | EventType_WorkflowExecutionTerminated
    | EventType_DecisionTaskScheduled
    | EventType_DecisionTaskStarted
    | EventType_DecisionTaskCompleted
    | EventType_DecisionTaskTimedOut
    | EventType_ActivityTaskScheduled
    | EventType_ScheduleActivityTaskFailed
    | EventType_ActivityTaskStarted
    | EventType_ActivityTaskCompleted
    | EventType_ActivityTaskFailed
    | EventType_ActivityTaskTimedOut
    | EventType_ActivityTaskCanceled
    | EventType_ActivityTaskCancelRequested
    | EventType_RequestCancelActivityTaskFailed
    | EventType_WorkflowExecutionSignaled
    | EventType_MarkerRecorded
    | EventType_RecordMarkerFailed
    | EventType_TimerStarted
    | EventType_StartTimerFailed
    | EventType_TimerFired
    | EventType_TimerCanceled
    | EventType_CancelTimerFailed
    | EventType_StartChildWorkflowExecutionInitiated
    | EventType_StartChildWorkflowExecutionFailed
    | EventType_ChildWorkflowExecutionStarted
    | EventType_ChildWorkflowExecutionCompleted
    | EventType_ChildWorkflowExecutionFailed
    | EventType_ChildWorkflowExecutionTimedOut
    | EventType_ChildWorkflowExecutionCanceled
    | EventType_ChildWorkflowExecutionTerminated
    | EventType_SignalExternalWorkflowExecutionInitiated
    | EventType_SignalExternalWorkflowExecutionFailed
    | EventType_ExternalWorkflowExecutionSignaled
    | EventType_RequestCancelExternalWorkflowExecutionInitiated
    | EventType_RequestCancelExternalWorkflowExecutionFailed
    | EventType_ExternalWorkflowExecutionCancelRequested
    | EventType_LambdaFunctionScheduled
    | EventType_LambdaFunctionStarted
    | EventType_LambdaFunctionCompleted
    | EventType_LambdaFunctionFailed
    | EventType_LambdaFunctionTimedOut
    | EventType_ScheduleLambdaFunctionFailed
    | EventType_StartLambdaFunctionFailed


eventTypeDecoder : JD.Decoder EventType
eventTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "WorkflowExecutionStarted" ->
                        JD.succeed EventType_WorkflowExecutionStarted

                    "WorkflowExecutionCancelRequested" ->
                        JD.succeed EventType_WorkflowExecutionCancelRequested

                    "WorkflowExecutionCompleted" ->
                        JD.succeed EventType_WorkflowExecutionCompleted

                    "CompleteWorkflowExecutionFailed" ->
                        JD.succeed EventType_CompleteWorkflowExecutionFailed

                    "WorkflowExecutionFailed" ->
                        JD.succeed EventType_WorkflowExecutionFailed

                    "FailWorkflowExecutionFailed" ->
                        JD.succeed EventType_FailWorkflowExecutionFailed

                    "WorkflowExecutionTimedOut" ->
                        JD.succeed EventType_WorkflowExecutionTimedOut

                    "WorkflowExecutionCanceled" ->
                        JD.succeed EventType_WorkflowExecutionCanceled

                    "CancelWorkflowExecutionFailed" ->
                        JD.succeed EventType_CancelWorkflowExecutionFailed

                    "WorkflowExecutionContinuedAsNew" ->
                        JD.succeed EventType_WorkflowExecutionContinuedAsNew

                    "ContinueAsNewWorkflowExecutionFailed" ->
                        JD.succeed EventType_ContinueAsNewWorkflowExecutionFailed

                    "WorkflowExecutionTerminated" ->
                        JD.succeed EventType_WorkflowExecutionTerminated

                    "DecisionTaskScheduled" ->
                        JD.succeed EventType_DecisionTaskScheduled

                    "DecisionTaskStarted" ->
                        JD.succeed EventType_DecisionTaskStarted

                    "DecisionTaskCompleted" ->
                        JD.succeed EventType_DecisionTaskCompleted

                    "DecisionTaskTimedOut" ->
                        JD.succeed EventType_DecisionTaskTimedOut

                    "ActivityTaskScheduled" ->
                        JD.succeed EventType_ActivityTaskScheduled

                    "ScheduleActivityTaskFailed" ->
                        JD.succeed EventType_ScheduleActivityTaskFailed

                    "ActivityTaskStarted" ->
                        JD.succeed EventType_ActivityTaskStarted

                    "ActivityTaskCompleted" ->
                        JD.succeed EventType_ActivityTaskCompleted

                    "ActivityTaskFailed" ->
                        JD.succeed EventType_ActivityTaskFailed

                    "ActivityTaskTimedOut" ->
                        JD.succeed EventType_ActivityTaskTimedOut

                    "ActivityTaskCanceled" ->
                        JD.succeed EventType_ActivityTaskCanceled

                    "ActivityTaskCancelRequested" ->
                        JD.succeed EventType_ActivityTaskCancelRequested

                    "RequestCancelActivityTaskFailed" ->
                        JD.succeed EventType_RequestCancelActivityTaskFailed

                    "WorkflowExecutionSignaled" ->
                        JD.succeed EventType_WorkflowExecutionSignaled

                    "MarkerRecorded" ->
                        JD.succeed EventType_MarkerRecorded

                    "RecordMarkerFailed" ->
                        JD.succeed EventType_RecordMarkerFailed

                    "TimerStarted" ->
                        JD.succeed EventType_TimerStarted

                    "StartTimerFailed" ->
                        JD.succeed EventType_StartTimerFailed

                    "TimerFired" ->
                        JD.succeed EventType_TimerFired

                    "TimerCanceled" ->
                        JD.succeed EventType_TimerCanceled

                    "CancelTimerFailed" ->
                        JD.succeed EventType_CancelTimerFailed

                    "StartChildWorkflowExecutionInitiated" ->
                        JD.succeed EventType_StartChildWorkflowExecutionInitiated

                    "StartChildWorkflowExecutionFailed" ->
                        JD.succeed EventType_StartChildWorkflowExecutionFailed

                    "ChildWorkflowExecutionStarted" ->
                        JD.succeed EventType_ChildWorkflowExecutionStarted

                    "ChildWorkflowExecutionCompleted" ->
                        JD.succeed EventType_ChildWorkflowExecutionCompleted

                    "ChildWorkflowExecutionFailed" ->
                        JD.succeed EventType_ChildWorkflowExecutionFailed

                    "ChildWorkflowExecutionTimedOut" ->
                        JD.succeed EventType_ChildWorkflowExecutionTimedOut

                    "ChildWorkflowExecutionCanceled" ->
                        JD.succeed EventType_ChildWorkflowExecutionCanceled

                    "ChildWorkflowExecutionTerminated" ->
                        JD.succeed EventType_ChildWorkflowExecutionTerminated

                    "SignalExternalWorkflowExecutionInitiated" ->
                        JD.succeed EventType_SignalExternalWorkflowExecutionInitiated

                    "SignalExternalWorkflowExecutionFailed" ->
                        JD.succeed EventType_SignalExternalWorkflowExecutionFailed

                    "ExternalWorkflowExecutionSignaled" ->
                        JD.succeed EventType_ExternalWorkflowExecutionSignaled

                    "RequestCancelExternalWorkflowExecutionInitiated" ->
                        JD.succeed EventType_RequestCancelExternalWorkflowExecutionInitiated

                    "RequestCancelExternalWorkflowExecutionFailed" ->
                        JD.succeed EventType_RequestCancelExternalWorkflowExecutionFailed

                    "ExternalWorkflowExecutionCancelRequested" ->
                        JD.succeed EventType_ExternalWorkflowExecutionCancelRequested

                    "LambdaFunctionScheduled" ->
                        JD.succeed EventType_LambdaFunctionScheduled

                    "LambdaFunctionStarted" ->
                        JD.succeed EventType_LambdaFunctionStarted

                    "LambdaFunctionCompleted" ->
                        JD.succeed EventType_LambdaFunctionCompleted

                    "LambdaFunctionFailed" ->
                        JD.succeed EventType_LambdaFunctionFailed

                    "LambdaFunctionTimedOut" ->
                        JD.succeed EventType_LambdaFunctionTimedOut

                    "ScheduleLambdaFunctionFailed" ->
                        JD.succeed EventType_ScheduleLambdaFunctionFailed

                    "StartLambdaFunctionFailed" ->
                        JD.succeed EventType_StartLambdaFunctionFailed

                    _ ->
                        JD.fail "bad thing"
            )


eventTypeToString : EventType -> String
eventTypeToString val =
    case val of
        EventType_WorkflowExecutionStarted ->
            "WorkflowExecutionStarted"

        EventType_WorkflowExecutionCancelRequested ->
            "WorkflowExecutionCancelRequested"

        EventType_WorkflowExecutionCompleted ->
            "WorkflowExecutionCompleted"

        EventType_CompleteWorkflowExecutionFailed ->
            "CompleteWorkflowExecutionFailed"

        EventType_WorkflowExecutionFailed ->
            "WorkflowExecutionFailed"

        EventType_FailWorkflowExecutionFailed ->
            "FailWorkflowExecutionFailed"

        EventType_WorkflowExecutionTimedOut ->
            "WorkflowExecutionTimedOut"

        EventType_WorkflowExecutionCanceled ->
            "WorkflowExecutionCanceled"

        EventType_CancelWorkflowExecutionFailed ->
            "CancelWorkflowExecutionFailed"

        EventType_WorkflowExecutionContinuedAsNew ->
            "WorkflowExecutionContinuedAsNew"

        EventType_ContinueAsNewWorkflowExecutionFailed ->
            "ContinueAsNewWorkflowExecutionFailed"

        EventType_WorkflowExecutionTerminated ->
            "WorkflowExecutionTerminated"

        EventType_DecisionTaskScheduled ->
            "DecisionTaskScheduled"

        EventType_DecisionTaskStarted ->
            "DecisionTaskStarted"

        EventType_DecisionTaskCompleted ->
            "DecisionTaskCompleted"

        EventType_DecisionTaskTimedOut ->
            "DecisionTaskTimedOut"

        EventType_ActivityTaskScheduled ->
            "ActivityTaskScheduled"

        EventType_ScheduleActivityTaskFailed ->
            "ScheduleActivityTaskFailed"

        EventType_ActivityTaskStarted ->
            "ActivityTaskStarted"

        EventType_ActivityTaskCompleted ->
            "ActivityTaskCompleted"

        EventType_ActivityTaskFailed ->
            "ActivityTaskFailed"

        EventType_ActivityTaskTimedOut ->
            "ActivityTaskTimedOut"

        EventType_ActivityTaskCanceled ->
            "ActivityTaskCanceled"

        EventType_ActivityTaskCancelRequested ->
            "ActivityTaskCancelRequested"

        EventType_RequestCancelActivityTaskFailed ->
            "RequestCancelActivityTaskFailed"

        EventType_WorkflowExecutionSignaled ->
            "WorkflowExecutionSignaled"

        EventType_MarkerRecorded ->
            "MarkerRecorded"

        EventType_RecordMarkerFailed ->
            "RecordMarkerFailed"

        EventType_TimerStarted ->
            "TimerStarted"

        EventType_StartTimerFailed ->
            "StartTimerFailed"

        EventType_TimerFired ->
            "TimerFired"

        EventType_TimerCanceled ->
            "TimerCanceled"

        EventType_CancelTimerFailed ->
            "CancelTimerFailed"

        EventType_StartChildWorkflowExecutionInitiated ->
            "StartChildWorkflowExecutionInitiated"

        EventType_StartChildWorkflowExecutionFailed ->
            "StartChildWorkflowExecutionFailed"

        EventType_ChildWorkflowExecutionStarted ->
            "ChildWorkflowExecutionStarted"

        EventType_ChildWorkflowExecutionCompleted ->
            "ChildWorkflowExecutionCompleted"

        EventType_ChildWorkflowExecutionFailed ->
            "ChildWorkflowExecutionFailed"

        EventType_ChildWorkflowExecutionTimedOut ->
            "ChildWorkflowExecutionTimedOut"

        EventType_ChildWorkflowExecutionCanceled ->
            "ChildWorkflowExecutionCanceled"

        EventType_ChildWorkflowExecutionTerminated ->
            "ChildWorkflowExecutionTerminated"

        EventType_SignalExternalWorkflowExecutionInitiated ->
            "SignalExternalWorkflowExecutionInitiated"

        EventType_SignalExternalWorkflowExecutionFailed ->
            "SignalExternalWorkflowExecutionFailed"

        EventType_ExternalWorkflowExecutionSignaled ->
            "ExternalWorkflowExecutionSignaled"

        EventType_RequestCancelExternalWorkflowExecutionInitiated ->
            "RequestCancelExternalWorkflowExecutionInitiated"

        EventType_RequestCancelExternalWorkflowExecutionFailed ->
            "RequestCancelExternalWorkflowExecutionFailed"

        EventType_ExternalWorkflowExecutionCancelRequested ->
            "ExternalWorkflowExecutionCancelRequested"

        EventType_LambdaFunctionScheduled ->
            "LambdaFunctionScheduled"

        EventType_LambdaFunctionStarted ->
            "LambdaFunctionStarted"

        EventType_LambdaFunctionCompleted ->
            "LambdaFunctionCompleted"

        EventType_LambdaFunctionFailed ->
            "LambdaFunctionFailed"

        EventType_LambdaFunctionTimedOut ->
            "LambdaFunctionTimedOut"

        EventType_ScheduleLambdaFunctionFailed ->
            "ScheduleLambdaFunctionFailed"

        EventType_StartLambdaFunctionFailed ->
            "StartLambdaFunctionFailed"


{-| One of

  - `ExecutionStatus_OPEN`
  - `ExecutionStatus_CLOSED`

-}
type ExecutionStatus
    = ExecutionStatus_OPEN
    | ExecutionStatus_CLOSED


executionStatusDecoder : JD.Decoder ExecutionStatus
executionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OPEN" ->
                        JD.succeed ExecutionStatus_OPEN

                    "CLOSED" ->
                        JD.succeed ExecutionStatus_CLOSED

                    _ ->
                        JD.fail "bad thing"
            )


executionStatusToString : ExecutionStatus -> String
executionStatusToString val =
    case val of
        ExecutionStatus_OPEN ->
            "OPEN"

        ExecutionStatus_CLOSED ->
            "CLOSED"


{-|

<p>Used to filter the workflow executions in visibility APIs by various time-based rules. Each parameter, if specified, defines a rule that must be satisfied by each returned query result. The parameter values are in the <a href="https://en.wikipedia.org/wiki/Unix_time">Unix Time format</a>. For example: <code>"oldestDate": 1325376070.</code> </p>

-}
type alias ExecutionTimeFilter =
    { oldestDate : Posix
    , latestDate : Maybe Posix
    }


executionTimeFilterDecoder : JD.Decoder ExecutionTimeFilter
executionTimeFilterDecoder =
    JD.succeed ExecutionTimeFilter
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "oldestDate", "OldestDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "latestDate", "LatestDate" ]
                JDX.datetime
            )


{-|

<p>Provides the details of the <code>ExternalWorkflowExecutionCancelRequested</code> event.</p>

-}
type alias ExternalWorkflowExecutionCancelRequestedEventAttributes =
    { workflowExecution : WorkflowExecution
    , initiatedEventId : Int
    }


externalWorkflowExecutionCancelRequestedEventAttributesDecoder : JD.Decoder ExternalWorkflowExecutionCancelRequestedEventAttributes
externalWorkflowExecutionCancelRequestedEventAttributesDecoder =
    JD.succeed ExternalWorkflowExecutionCancelRequestedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowExecution", "WorkflowExecution" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "initiatedEventId", "InitiatedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>ExternalWorkflowExecutionSignaled</code> event.</p>

-}
type alias ExternalWorkflowExecutionSignaledEventAttributes =
    { workflowExecution : WorkflowExecution
    , initiatedEventId : Int
    }


externalWorkflowExecutionSignaledEventAttributesDecoder : JD.Decoder ExternalWorkflowExecutionSignaledEventAttributes
externalWorkflowExecutionSignaledEventAttributesDecoder =
    JD.succeed ExternalWorkflowExecutionSignaledEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowExecution", "WorkflowExecution" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "initiatedEventId", "InitiatedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>FailWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

-}
type alias FailWorkflowExecutionDecisionAttributes =
    { reason : Maybe String
    , details : Maybe String
    }


failWorkflowExecutionDecisionAttributesDecoder : JD.Decoder FailWorkflowExecutionDecisionAttributes
failWorkflowExecutionDecisionAttributesDecoder =
    JD.succeed FailWorkflowExecutionDecisionAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "reason", "Reason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "details", "Details" ]
                JD.string
            )


{-| One of

  - `FailWorkflowExecutionFailedCause_UNHANDLED_DECISION`
  - `FailWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED`

-}
type FailWorkflowExecutionFailedCause
    = FailWorkflowExecutionFailedCause_UNHANDLED_DECISION
    | FailWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED


failWorkflowExecutionFailedCauseDecoder : JD.Decoder FailWorkflowExecutionFailedCause
failWorkflowExecutionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNHANDLED_DECISION" ->
                        JD.succeed FailWorkflowExecutionFailedCause_UNHANDLED_DECISION

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed FailWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED

                    _ ->
                        JD.fail "bad thing"
            )


failWorkflowExecutionFailedCauseToString : FailWorkflowExecutionFailedCause -> String
failWorkflowExecutionFailedCauseToString val =
    case val of
        FailWorkflowExecutionFailedCause_UNHANDLED_DECISION ->
            "UNHANDLED_DECISION"

        FailWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED ->
            "OPERATION_NOT_PERMITTED"


{-|

<p>Provides the details of the <code>FailWorkflowExecutionFailed</code> event.</p>

-}
type alias FailWorkflowExecutionFailedEventAttributes =
    { cause : FailWorkflowExecutionFailedCause
    , decisionTaskCompletedEventId : Int
    }


failWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder FailWorkflowExecutionFailedEventAttributes
failWorkflowExecutionFailedEventAttributesDecoder =
    JD.succeed FailWorkflowExecutionFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "cause", "Cause" ]
                failWorkflowExecutionFailedCauseDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-| Type of HTTP response from histor
-}
type alias History =
    { events : List HistoryEvent
    , nextPageToken : Maybe String
    }


historyDecoder : JD.Decoder History
historyDecoder =
    JD.succeed History
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "events", "Events" ]
                (JD.list historyEventDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextPageToken", "NextPageToken" ]
                JD.string
            )


{-|

<p>Event within a workflow execution. A history event can be one of these types:</p> <ul> <li> <p> <code>ActivityTaskCancelRequested</code> – A <code>RequestCancelActivityTask</code> decision was received by the system.</p> </li> <li> <p> <code>ActivityTaskCanceled</code> – The activity task was successfully canceled.</p> </li> <li> <p> <code>ActivityTaskCompleted</code> – An activity worker successfully completed an activity task by calling <a>RespondActivityTaskCompleted</a>.</p> </li> <li> <p> <code>ActivityTaskFailed</code> – An activity worker failed an activity task by calling <a>RespondActivityTaskFailed</a>.</p> </li> <li> <p> <code>ActivityTaskScheduled</code> – An activity task was scheduled for execution.</p> </li> <li> <p> <code>ActivityTaskStarted</code> – The scheduled activity task was dispatched to a worker.</p> </li> <li> <p> <code>ActivityTaskTimedOut</code> – The activity task timed out.</p> </li> <li> <p> <code>CancelTimerFailed</code> – Failed to process CancelTimer decision. This happens when the decision isn't configured properly, for example no timer exists with the specified timer Id.</p> </li> <li> <p> <code>CancelWorkflowExecutionFailed</code> – A request to cancel a workflow execution failed.</p> </li> <li> <p> <code>ChildWorkflowExecutionCanceled</code> – A child workflow execution, started by this workflow execution, was canceled and closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionCompleted</code> – A child workflow execution, started by this workflow execution, completed successfully and was closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionFailed</code> – A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionStarted</code> – A child workflow execution was successfully started.</p> </li> <li> <p> <code>ChildWorkflowExecutionTerminated</code> – A child workflow execution, started by this workflow execution, was terminated.</p> </li> <li> <p> <code>ChildWorkflowExecutionTimedOut</code> – A child workflow execution, started by this workflow execution, timed out and was closed.</p> </li> <li> <p> <code>CompleteWorkflowExecutionFailed</code> – The workflow execution failed to complete.</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecutionFailed</code> – The workflow execution failed to complete after being continued as a new workflow execution.</p> </li> <li> <p> <code>DecisionTaskCompleted</code> – The decider successfully completed a decision task by calling <a>RespondDecisionTaskCompleted</a>.</p> </li> <li> <p> <code>DecisionTaskScheduled</code> – A decision task was scheduled for the workflow execution.</p> </li> <li> <p> <code>DecisionTaskStarted</code> – The decision task was dispatched to a decider.</p> </li> <li> <p> <code>DecisionTaskTimedOut</code> – The decision task timed out.</p> </li> <li> <p> <code>ExternalWorkflowExecutionCancelRequested</code> – Request to cancel an external workflow execution was successfully delivered to the target execution.</p> </li> <li> <p> <code>ExternalWorkflowExecutionSignaled</code> – A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.</p> </li> <li> <p> <code>FailWorkflowExecutionFailed</code> – A request to mark a workflow execution as failed, itself failed.</p> </li> <li> <p> <code>MarkerRecorded</code> – A marker was recorded in the workflow history as the result of a <code>RecordMarker</code> decision.</p> </li> <li> <p> <code>RecordMarkerFailed</code> – A <code>RecordMarker</code> decision was returned as failed.</p> </li> <li> <p> <code>RequestCancelActivityTaskFailed</code> – Failed to process RequestCancelActivityTask decision. This happens when the decision isn't configured properly.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionFailed</code> – Request to cancel an external workflow execution failed.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionInitiated</code> – A request was made to request the cancellation of an external workflow execution.</p> </li> <li> <p> <code>ScheduleActivityTaskFailed</code> – Failed to process ScheduleActivityTask decision. This happens when the decision isn't configured properly, for example the activity type specified isn't registered.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionFailed</code> – The request to signal an external workflow execution failed.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionInitiated</code> – A request to signal an external workflow was made.</p> </li> <li> <p> <code>StartActivityTaskFailed</code> – A scheduled activity task failed to start.</p> </li> <li> <p> <code>StartChildWorkflowExecutionFailed</code> – Failed to process StartChildWorkflowExecution decision. This happens when the decision isn't configured properly, for example the workflow type specified isn't registered.</p> </li> <li> <p> <code>StartChildWorkflowExecutionInitiated</code> – A request was made to start a child workflow execution.</p> </li> <li> <p> <code>StartTimerFailed</code> – Failed to process StartTimer decision. This happens when the decision isn't configured properly, for example a timer already exists with the specified timer Id.</p> </li> <li> <p> <code>TimerCanceled</code> – A timer, previously started for this workflow execution, was successfully canceled.</p> </li> <li> <p> <code>TimerFired</code> – A timer, previously started for this workflow execution, fired.</p> </li> <li> <p> <code>TimerStarted</code> – A timer was started for the workflow execution due to a <code>StartTimer</code> decision.</p> </li> <li> <p> <code>WorkflowExecutionCancelRequested</code> – A request to cancel this workflow execution was made.</p> </li> <li> <p> <code>WorkflowExecutionCanceled</code> – The workflow execution was successfully canceled and closed.</p> </li> <li> <p> <code>WorkflowExecutionCompleted</code> – The workflow execution was closed due to successful completion.</p> </li> <li> <p> <code>WorkflowExecutionContinuedAsNew</code> – The workflow execution was closed and a new execution of the same type was created with the same workflowId.</p> </li> <li> <p> <code>WorkflowExecutionFailed</code> – The workflow execution closed due to a failure.</p> </li> <li> <p> <code>WorkflowExecutionSignaled</code> – An external signal was received for the workflow execution.</p> </li> <li> <p> <code>WorkflowExecutionStarted</code> – The workflow execution was started.</p> </li> <li> <p> <code>WorkflowExecutionTerminated</code> – The workflow execution was terminated.</p> </li> <li> <p> <code>WorkflowExecutionTimedOut</code> – The workflow execution was closed because a time out was exceeded.</p> </li> </ul>

-}
type alias HistoryEvent =
    { eventTimestamp : Posix
    , eventType : EventType
    , eventId : Int
    , workflowExecutionStartedEventAttributes : Maybe WorkflowExecutionStartedEventAttributes
    , workflowExecutionCompletedEventAttributes : Maybe WorkflowExecutionCompletedEventAttributes
    , completeWorkflowExecutionFailedEventAttributes : Maybe CompleteWorkflowExecutionFailedEventAttributes
    , workflowExecutionFailedEventAttributes : Maybe WorkflowExecutionFailedEventAttributes
    , failWorkflowExecutionFailedEventAttributes : Maybe FailWorkflowExecutionFailedEventAttributes
    , workflowExecutionTimedOutEventAttributes : Maybe WorkflowExecutionTimedOutEventAttributes
    , workflowExecutionCanceledEventAttributes : Maybe WorkflowExecutionCanceledEventAttributes
    , cancelWorkflowExecutionFailedEventAttributes : Maybe CancelWorkflowExecutionFailedEventAttributes
    , workflowExecutionContinuedAsNewEventAttributes : Maybe WorkflowExecutionContinuedAsNewEventAttributes
    , continueAsNewWorkflowExecutionFailedEventAttributes : Maybe ContinueAsNewWorkflowExecutionFailedEventAttributes
    , workflowExecutionTerminatedEventAttributes : Maybe WorkflowExecutionTerminatedEventAttributes
    , workflowExecutionCancelRequestedEventAttributes : Maybe WorkflowExecutionCancelRequestedEventAttributes
    , decisionTaskScheduledEventAttributes : Maybe DecisionTaskScheduledEventAttributes
    , decisionTaskStartedEventAttributes : Maybe DecisionTaskStartedEventAttributes
    , decisionTaskCompletedEventAttributes : Maybe DecisionTaskCompletedEventAttributes
    , decisionTaskTimedOutEventAttributes : Maybe DecisionTaskTimedOutEventAttributes
    , activityTaskScheduledEventAttributes : Maybe ActivityTaskScheduledEventAttributes
    , activityTaskStartedEventAttributes : Maybe ActivityTaskStartedEventAttributes
    , activityTaskCompletedEventAttributes : Maybe ActivityTaskCompletedEventAttributes
    , activityTaskFailedEventAttributes : Maybe ActivityTaskFailedEventAttributes
    , activityTaskTimedOutEventAttributes : Maybe ActivityTaskTimedOutEventAttributes
    , activityTaskCanceledEventAttributes : Maybe ActivityTaskCanceledEventAttributes
    , activityTaskCancelRequestedEventAttributes : Maybe ActivityTaskCancelRequestedEventAttributes
    , workflowExecutionSignaledEventAttributes : Maybe WorkflowExecutionSignaledEventAttributes
    , markerRecordedEventAttributes : Maybe MarkerRecordedEventAttributes
    , recordMarkerFailedEventAttributes : Maybe RecordMarkerFailedEventAttributes
    , timerStartedEventAttributes : Maybe TimerStartedEventAttributes
    , timerFiredEventAttributes : Maybe TimerFiredEventAttributes
    , timerCanceledEventAttributes : Maybe TimerCanceledEventAttributes
    , startChildWorkflowExecutionInitiatedEventAttributes : Maybe StartChildWorkflowExecutionInitiatedEventAttributes
    , childWorkflowExecutionStartedEventAttributes : Maybe ChildWorkflowExecutionStartedEventAttributes
    , childWorkflowExecutionCompletedEventAttributes : Maybe ChildWorkflowExecutionCompletedEventAttributes
    , childWorkflowExecutionFailedEventAttributes : Maybe ChildWorkflowExecutionFailedEventAttributes
    , childWorkflowExecutionTimedOutEventAttributes : Maybe ChildWorkflowExecutionTimedOutEventAttributes
    , childWorkflowExecutionCanceledEventAttributes : Maybe ChildWorkflowExecutionCanceledEventAttributes
    , childWorkflowExecutionTerminatedEventAttributes : Maybe ChildWorkflowExecutionTerminatedEventAttributes
    , signalExternalWorkflowExecutionInitiatedEventAttributes : Maybe SignalExternalWorkflowExecutionInitiatedEventAttributes
    , externalWorkflowExecutionSignaledEventAttributes : Maybe ExternalWorkflowExecutionSignaledEventAttributes
    , signalExternalWorkflowExecutionFailedEventAttributes : Maybe SignalExternalWorkflowExecutionFailedEventAttributes
    , externalWorkflowExecutionCancelRequestedEventAttributes : Maybe ExternalWorkflowExecutionCancelRequestedEventAttributes
    , requestCancelExternalWorkflowExecutionInitiatedEventAttributes : Maybe RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
    , requestCancelExternalWorkflowExecutionFailedEventAttributes : Maybe RequestCancelExternalWorkflowExecutionFailedEventAttributes
    , scheduleActivityTaskFailedEventAttributes : Maybe ScheduleActivityTaskFailedEventAttributes
    , requestCancelActivityTaskFailedEventAttributes : Maybe RequestCancelActivityTaskFailedEventAttributes
    , startTimerFailedEventAttributes : Maybe StartTimerFailedEventAttributes
    , cancelTimerFailedEventAttributes : Maybe CancelTimerFailedEventAttributes
    , startChildWorkflowExecutionFailedEventAttributes : Maybe StartChildWorkflowExecutionFailedEventAttributes
    , lambdaFunctionScheduledEventAttributes : Maybe LambdaFunctionScheduledEventAttributes
    , lambdaFunctionStartedEventAttributes : Maybe LambdaFunctionStartedEventAttributes
    , lambdaFunctionCompletedEventAttributes : Maybe LambdaFunctionCompletedEventAttributes
    , lambdaFunctionFailedEventAttributes : Maybe LambdaFunctionFailedEventAttributes
    , lambdaFunctionTimedOutEventAttributes : Maybe LambdaFunctionTimedOutEventAttributes
    , scheduleLambdaFunctionFailedEventAttributes : Maybe ScheduleLambdaFunctionFailedEventAttributes
    , startLambdaFunctionFailedEventAttributes : Maybe StartLambdaFunctionFailedEventAttributes
    }


historyEventDecoder : JD.Decoder HistoryEvent
historyEventDecoder =
    JD.succeed HistoryEvent
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "eventTimestamp", "EventTimestamp" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "eventType", "EventType" ]
                eventTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "eventId", "EventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "workflowExecutionStartedEventAttributes", "WorkflowExecutionStartedEventAttributes" ]
                workflowExecutionStartedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "workflowExecutionCompletedEventAttributes", "WorkflowExecutionCompletedEventAttributes" ]
                workflowExecutionCompletedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "completeWorkflowExecutionFailedEventAttributes", "CompleteWorkflowExecutionFailedEventAttributes" ]
                completeWorkflowExecutionFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "workflowExecutionFailedEventAttributes", "WorkflowExecutionFailedEventAttributes" ]
                workflowExecutionFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "failWorkflowExecutionFailedEventAttributes", "FailWorkflowExecutionFailedEventAttributes" ]
                failWorkflowExecutionFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "workflowExecutionTimedOutEventAttributes", "WorkflowExecutionTimedOutEventAttributes" ]
                workflowExecutionTimedOutEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "workflowExecutionCanceledEventAttributes", "WorkflowExecutionCanceledEventAttributes" ]
                workflowExecutionCanceledEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "cancelWorkflowExecutionFailedEventAttributes", "CancelWorkflowExecutionFailedEventAttributes" ]
                cancelWorkflowExecutionFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "workflowExecutionContinuedAsNewEventAttributes", "WorkflowExecutionContinuedAsNewEventAttributes" ]
                workflowExecutionContinuedAsNewEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "continueAsNewWorkflowExecutionFailedEventAttributes", "ContinueAsNewWorkflowExecutionFailedEventAttributes" ]
                continueAsNewWorkflowExecutionFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "workflowExecutionTerminatedEventAttributes", "WorkflowExecutionTerminatedEventAttributes" ]
                workflowExecutionTerminatedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "workflowExecutionCancelRequestedEventAttributes", "WorkflowExecutionCancelRequestedEventAttributes" ]
                workflowExecutionCancelRequestedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "decisionTaskScheduledEventAttributes", "DecisionTaskScheduledEventAttributes" ]
                decisionTaskScheduledEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "decisionTaskStartedEventAttributes", "DecisionTaskStartedEventAttributes" ]
                decisionTaskStartedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "decisionTaskCompletedEventAttributes", "DecisionTaskCompletedEventAttributes" ]
                decisionTaskCompletedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "decisionTaskTimedOutEventAttributes", "DecisionTaskTimedOutEventAttributes" ]
                decisionTaskTimedOutEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "activityTaskScheduledEventAttributes", "ActivityTaskScheduledEventAttributes" ]
                activityTaskScheduledEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "activityTaskStartedEventAttributes", "ActivityTaskStartedEventAttributes" ]
                activityTaskStartedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "activityTaskCompletedEventAttributes", "ActivityTaskCompletedEventAttributes" ]
                activityTaskCompletedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "activityTaskFailedEventAttributes", "ActivityTaskFailedEventAttributes" ]
                activityTaskFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "activityTaskTimedOutEventAttributes", "ActivityTaskTimedOutEventAttributes" ]
                activityTaskTimedOutEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "activityTaskCanceledEventAttributes", "ActivityTaskCanceledEventAttributes" ]
                activityTaskCanceledEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "activityTaskCancelRequestedEventAttributes", "ActivityTaskCancelRequestedEventAttributes" ]
                activityTaskCancelRequestedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "workflowExecutionSignaledEventAttributes", "WorkflowExecutionSignaledEventAttributes" ]
                workflowExecutionSignaledEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "markerRecordedEventAttributes", "MarkerRecordedEventAttributes" ]
                markerRecordedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "recordMarkerFailedEventAttributes", "RecordMarkerFailedEventAttributes" ]
                recordMarkerFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "timerStartedEventAttributes", "TimerStartedEventAttributes" ]
                timerStartedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "timerFiredEventAttributes", "TimerFiredEventAttributes" ]
                timerFiredEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "timerCanceledEventAttributes", "TimerCanceledEventAttributes" ]
                timerCanceledEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "startChildWorkflowExecutionInitiatedEventAttributes", "StartChildWorkflowExecutionInitiatedEventAttributes" ]
                startChildWorkflowExecutionInitiatedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "childWorkflowExecutionStartedEventAttributes", "ChildWorkflowExecutionStartedEventAttributes" ]
                childWorkflowExecutionStartedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "childWorkflowExecutionCompletedEventAttributes", "ChildWorkflowExecutionCompletedEventAttributes" ]
                childWorkflowExecutionCompletedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "childWorkflowExecutionFailedEventAttributes", "ChildWorkflowExecutionFailedEventAttributes" ]
                childWorkflowExecutionFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "childWorkflowExecutionTimedOutEventAttributes", "ChildWorkflowExecutionTimedOutEventAttributes" ]
                childWorkflowExecutionTimedOutEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "childWorkflowExecutionCanceledEventAttributes", "ChildWorkflowExecutionCanceledEventAttributes" ]
                childWorkflowExecutionCanceledEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "childWorkflowExecutionTerminatedEventAttributes", "ChildWorkflowExecutionTerminatedEventAttributes" ]
                childWorkflowExecutionTerminatedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "signalExternalWorkflowExecutionInitiatedEventAttributes", "SignalExternalWorkflowExecutionInitiatedEventAttributes" ]
                signalExternalWorkflowExecutionInitiatedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "externalWorkflowExecutionSignaledEventAttributes", "ExternalWorkflowExecutionSignaledEventAttributes" ]
                externalWorkflowExecutionSignaledEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "signalExternalWorkflowExecutionFailedEventAttributes", "SignalExternalWorkflowExecutionFailedEventAttributes" ]
                signalExternalWorkflowExecutionFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "externalWorkflowExecutionCancelRequestedEventAttributes", "ExternalWorkflowExecutionCancelRequestedEventAttributes" ]
                externalWorkflowExecutionCancelRequestedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "requestCancelExternalWorkflowExecutionInitiatedEventAttributes", "RequestCancelExternalWorkflowExecutionInitiatedEventAttributes" ]
                requestCancelExternalWorkflowExecutionInitiatedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "requestCancelExternalWorkflowExecutionFailedEventAttributes", "RequestCancelExternalWorkflowExecutionFailedEventAttributes" ]
                requestCancelExternalWorkflowExecutionFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "scheduleActivityTaskFailedEventAttributes", "ScheduleActivityTaskFailedEventAttributes" ]
                scheduleActivityTaskFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "requestCancelActivityTaskFailedEventAttributes", "RequestCancelActivityTaskFailedEventAttributes" ]
                requestCancelActivityTaskFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "startTimerFailedEventAttributes", "StartTimerFailedEventAttributes" ]
                startTimerFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "cancelTimerFailedEventAttributes", "CancelTimerFailedEventAttributes" ]
                cancelTimerFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "startChildWorkflowExecutionFailedEventAttributes", "StartChildWorkflowExecutionFailedEventAttributes" ]
                startChildWorkflowExecutionFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lambdaFunctionScheduledEventAttributes", "LambdaFunctionScheduledEventAttributes" ]
                lambdaFunctionScheduledEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lambdaFunctionStartedEventAttributes", "LambdaFunctionStartedEventAttributes" ]
                lambdaFunctionStartedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lambdaFunctionCompletedEventAttributes", "LambdaFunctionCompletedEventAttributes" ]
                lambdaFunctionCompletedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lambdaFunctionFailedEventAttributes", "LambdaFunctionFailedEventAttributes" ]
                lambdaFunctionFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lambdaFunctionTimedOutEventAttributes", "LambdaFunctionTimedOutEventAttributes" ]
                lambdaFunctionTimedOutEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "scheduleLambdaFunctionFailedEventAttributes", "ScheduleLambdaFunctionFailedEventAttributes" ]
                scheduleLambdaFunctionFailedEventAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "startLambdaFunctionFailedEventAttributes", "StartLambdaFunctionFailedEventAttributes" ]
                startLambdaFunctionFailedEventAttributesDecoder
            )


{-|

<p>Provides the details of the <code>LambdaFunctionCompleted</code> event. It isn't set for other event types.</p>

-}
type alias LambdaFunctionCompletedEventAttributes =
    { scheduledEventId : Int
    , startedEventId : Int
    , result : Maybe String
    }


lambdaFunctionCompletedEventAttributesDecoder : JD.Decoder LambdaFunctionCompletedEventAttributes
lambdaFunctionCompletedEventAttributesDecoder =
    JD.succeed LambdaFunctionCompletedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "scheduledEventId", "ScheduledEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "result", "Result" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>LambdaFunctionFailed</code> event. It isn't set for other event types.</p>

-}
type alias LambdaFunctionFailedEventAttributes =
    { scheduledEventId : Int
    , startedEventId : Int
    , reason : Maybe String
    , details : Maybe String
    }


lambdaFunctionFailedEventAttributesDecoder : JD.Decoder LambdaFunctionFailedEventAttributes
lambdaFunctionFailedEventAttributesDecoder =
    JD.succeed LambdaFunctionFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "scheduledEventId", "ScheduledEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "reason", "Reason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "details", "Details" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>LambdaFunctionScheduled</code> event. It isn't set for other event types.</p>

-}
type alias LambdaFunctionScheduledEventAttributes =
    { id : String
    , name : String
    , control : Maybe String
    , input : Maybe String
    , startToCloseTimeout : Maybe String
    , decisionTaskCompletedEventId : Int
    }


lambdaFunctionScheduledEventAttributesDecoder : JD.Decoder LambdaFunctionScheduledEventAttributes
lambdaFunctionScheduledEventAttributesDecoder =
    JD.succeed LambdaFunctionScheduledEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "id", "Id" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "name", "Name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "input", "Input" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "startToCloseTimeout", "StartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>LambdaFunctionStarted</code> event. It isn't set for other event types.</p>

-}
type alias LambdaFunctionStartedEventAttributes =
    { scheduledEventId : Int
    }


lambdaFunctionStartedEventAttributesDecoder : JD.Decoder LambdaFunctionStartedEventAttributes
lambdaFunctionStartedEventAttributesDecoder =
    JD.succeed LambdaFunctionStartedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "scheduledEventId", "ScheduledEventId" ]
                JD.int
            )


{-|

<p>Provides details of the <code>LambdaFunctionTimedOut</code> event.</p>

-}
type alias LambdaFunctionTimedOutEventAttributes =
    { scheduledEventId : Int
    , startedEventId : Int
    , timeoutType : Maybe LambdaFunctionTimeoutType
    }


lambdaFunctionTimedOutEventAttributesDecoder : JD.Decoder LambdaFunctionTimedOutEventAttributes
lambdaFunctionTimedOutEventAttributesDecoder =
    JD.succeed LambdaFunctionTimedOutEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "scheduledEventId", "ScheduledEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "timeoutType", "TimeoutType" ]
                lambdaFunctionTimeoutTypeDecoder
            )


{-| One of

  - `LambdaFunctionTimeoutType_START_TO_CLOSE`

-}
type LambdaFunctionTimeoutType
    = LambdaFunctionTimeoutType_START_TO_CLOSE


lambdaFunctionTimeoutTypeDecoder : JD.Decoder LambdaFunctionTimeoutType
lambdaFunctionTimeoutTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "START_TO_CLOSE" ->
                        JD.succeed LambdaFunctionTimeoutType_START_TO_CLOSE

                    _ ->
                        JD.fail "bad thing"
            )


lambdaFunctionTimeoutTypeToString : LambdaFunctionTimeoutType -> String
lambdaFunctionTimeoutTypeToString val =
    case val of
        LambdaFunctionTimeoutType_START_TO_CLOSE ->
            "START_TO_CLOSE"


{-| Type of HTTP response from listTagsForResour
-}
type alias ListTagsForResourceOutput =
    { tags : Maybe (List ResourceTag)
    }


listTagsForResourceOutputDecoder : JD.Decoder ListTagsForResourceOutput
listTagsForResourceOutputDecoder =
    JD.succeed ListTagsForResourceOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "tags", "Tags" ]
                (JD.list resourceTagDecoder)
            )


{-|

<p>Provides the details of the <code>MarkerRecorded</code> event.</p>

-}
type alias MarkerRecordedEventAttributes =
    { markerName : String
    , details : Maybe String
    , decisionTaskCompletedEventId : Int
    }


markerRecordedEventAttributesDecoder : JD.Decoder MarkerRecordedEventAttributes
markerRecordedEventAttributesDecoder =
    JD.succeed MarkerRecordedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "markerName", "MarkerName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "details", "Details" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-| Type of HTTP response from pendingT
-}
type alias PendingTaskCount =
    { count : Int
    , truncated : Maybe Bool
    }


pendingTaskCountDecoder : JD.Decoder PendingTaskCount
pendingTaskCountDecoder =
    JD.succeed PendingTaskCount
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "count", "Count" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "truncated", "Truncated" ]
                JD.bool
            )


{-|

<p>Provides the details of the <code>RecordMarker</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

-}
type alias RecordMarkerDecisionAttributes =
    { markerName : String
    , details : Maybe String
    }


recordMarkerDecisionAttributesDecoder : JD.Decoder RecordMarkerDecisionAttributes
recordMarkerDecisionAttributesDecoder =
    JD.succeed RecordMarkerDecisionAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "markerName", "MarkerName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "details", "Details" ]
                JD.string
            )


{-| One of

  - `RecordMarkerFailedCause_OPERATION_NOT_PERMITTED`

-}
type RecordMarkerFailedCause
    = RecordMarkerFailedCause_OPERATION_NOT_PERMITTED


recordMarkerFailedCauseDecoder : JD.Decoder RecordMarkerFailedCause
recordMarkerFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed RecordMarkerFailedCause_OPERATION_NOT_PERMITTED

                    _ ->
                        JD.fail "bad thing"
            )


recordMarkerFailedCauseToString : RecordMarkerFailedCause -> String
recordMarkerFailedCauseToString val =
    case val of
        RecordMarkerFailedCause_OPERATION_NOT_PERMITTED ->
            "OPERATION_NOT_PERMITTED"


{-|

<p>Provides the details of the <code>RecordMarkerFailed</code> event.</p>

-}
type alias RecordMarkerFailedEventAttributes =
    { markerName : String
    , cause : RecordMarkerFailedCause
    , decisionTaskCompletedEventId : Int
    }


recordMarkerFailedEventAttributesDecoder : JD.Decoder RecordMarkerFailedEventAttributes
recordMarkerFailedEventAttributesDecoder =
    JD.succeed RecordMarkerFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "markerName", "MarkerName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "cause", "Cause" ]
                recordMarkerFailedCauseDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-| One of

  - `RegistrationStatus_REGISTERED`
  - `RegistrationStatus_DEPRECATED`

-}
type RegistrationStatus
    = RegistrationStatus_REGISTERED
    | RegistrationStatus_DEPRECATED


registrationStatusDecoder : JD.Decoder RegistrationStatus
registrationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "REGISTERED" ->
                        JD.succeed RegistrationStatus_REGISTERED

                    "DEPRECATED" ->
                        JD.succeed RegistrationStatus_DEPRECATED

                    _ ->
                        JD.fail "bad thing"
            )


registrationStatusToString : RegistrationStatus -> String
registrationStatusToString val =
    case val of
        RegistrationStatus_REGISTERED ->
            "REGISTERED"

        RegistrationStatus_DEPRECATED ->
            "DEPRECATED"


{-|

<p>Provides the details of the <code>RequestCancelActivityTask</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

-}
type alias RequestCancelActivityTaskDecisionAttributes =
    { activityId : String
    }


requestCancelActivityTaskDecisionAttributesDecoder : JD.Decoder RequestCancelActivityTaskDecisionAttributes
requestCancelActivityTaskDecisionAttributesDecoder =
    JD.succeed RequestCancelActivityTaskDecisionAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "activityId", "ActivityId" ]
                JD.string
            )


{-| One of

  - `RequestCancelActivityTaskFailedCause_ACTIVITY_ID_UNKNOWN`
  - `RequestCancelActivityTaskFailedCause_OPERATION_NOT_PERMITTED`

-}
type RequestCancelActivityTaskFailedCause
    = RequestCancelActivityTaskFailedCause_ACTIVITY_ID_UNKNOWN
    | RequestCancelActivityTaskFailedCause_OPERATION_NOT_PERMITTED


requestCancelActivityTaskFailedCauseDecoder : JD.Decoder RequestCancelActivityTaskFailedCause
requestCancelActivityTaskFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVITY_ID_UNKNOWN" ->
                        JD.succeed RequestCancelActivityTaskFailedCause_ACTIVITY_ID_UNKNOWN

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed RequestCancelActivityTaskFailedCause_OPERATION_NOT_PERMITTED

                    _ ->
                        JD.fail "bad thing"
            )


requestCancelActivityTaskFailedCauseToString : RequestCancelActivityTaskFailedCause -> String
requestCancelActivityTaskFailedCauseToString val =
    case val of
        RequestCancelActivityTaskFailedCause_ACTIVITY_ID_UNKNOWN ->
            "ACTIVITY_ID_UNKNOWN"

        RequestCancelActivityTaskFailedCause_OPERATION_NOT_PERMITTED ->
            "OPERATION_NOT_PERMITTED"


{-|

<p>Provides the details of the <code>RequestCancelActivityTaskFailed</code> event.</p>

-}
type alias RequestCancelActivityTaskFailedEventAttributes =
    { activityId : String
    , cause : RequestCancelActivityTaskFailedCause
    , decisionTaskCompletedEventId : Int
    }


requestCancelActivityTaskFailedEventAttributesDecoder : JD.Decoder RequestCancelActivityTaskFailedEventAttributes
requestCancelActivityTaskFailedEventAttributesDecoder =
    JD.succeed RequestCancelActivityTaskFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "activityId", "ActivityId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "cause", "Cause" ]
                requestCancelActivityTaskFailedCauseDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>RequestCancelExternalWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

-}
type alias RequestCancelExternalWorkflowExecutionDecisionAttributes =
    { workflowId : String
    , runId : Maybe String
    , control : Maybe String
    }


requestCancelExternalWorkflowExecutionDecisionAttributesDecoder : JD.Decoder RequestCancelExternalWorkflowExecutionDecisionAttributes
requestCancelExternalWorkflowExecutionDecisionAttributesDecoder =
    JD.succeed RequestCancelExternalWorkflowExecutionDecisionAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowId", "WorkflowId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "runId", "RunId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )


{-| One of

  - `RequestCancelExternalWorkflowExecutionFailedCause_UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION`
  - `RequestCancelExternalWorkflowExecutionFailedCause_REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED`
  - `RequestCancelExternalWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED`

-}
type RequestCancelExternalWorkflowExecutionFailedCause
    = RequestCancelExternalWorkflowExecutionFailedCause_UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION
    | RequestCancelExternalWorkflowExecutionFailedCause_REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED
    | RequestCancelExternalWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED


requestCancelExternalWorkflowExecutionFailedCauseDecoder : JD.Decoder RequestCancelExternalWorkflowExecutionFailedCause
requestCancelExternalWorkflowExecutionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION" ->
                        JD.succeed RequestCancelExternalWorkflowExecutionFailedCause_UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION

                    "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED" ->
                        JD.succeed RequestCancelExternalWorkflowExecutionFailedCause_REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed RequestCancelExternalWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED

                    _ ->
                        JD.fail "bad thing"
            )


requestCancelExternalWorkflowExecutionFailedCauseToString : RequestCancelExternalWorkflowExecutionFailedCause -> String
requestCancelExternalWorkflowExecutionFailedCauseToString val =
    case val of
        RequestCancelExternalWorkflowExecutionFailedCause_UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION ->
            "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION"

        RequestCancelExternalWorkflowExecutionFailedCause_REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED ->
            "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED"

        RequestCancelExternalWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED ->
            "OPERATION_NOT_PERMITTED"


{-|

<p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionFailed</code> event.</p>

-}
type alias RequestCancelExternalWorkflowExecutionFailedEventAttributes =
    { workflowId : String
    , runId : Maybe String
    , cause : RequestCancelExternalWorkflowExecutionFailedCause
    , initiatedEventId : Int
    , decisionTaskCompletedEventId : Int
    , control : Maybe String
    }


requestCancelExternalWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder RequestCancelExternalWorkflowExecutionFailedEventAttributes
requestCancelExternalWorkflowExecutionFailedEventAttributesDecoder =
    JD.succeed RequestCancelExternalWorkflowExecutionFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowId", "WorkflowId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "runId", "RunId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "cause", "Cause" ]
                requestCancelExternalWorkflowExecutionFailedCauseDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "initiatedEventId", "InitiatedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event.</p>

-}
type alias RequestCancelExternalWorkflowExecutionInitiatedEventAttributes =
    { workflowId : String
    , runId : Maybe String
    , decisionTaskCompletedEventId : Int
    , control : Maybe String
    }


requestCancelExternalWorkflowExecutionInitiatedEventAttributesDecoder : JD.Decoder RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
requestCancelExternalWorkflowExecutionInitiatedEventAttributesDecoder =
    JD.succeed RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowId", "WorkflowId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "runId", "RunId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )


{-|

<p>Tags are key-value pairs that can be associated with Amazon SWF state machines and activities.</p> <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>

-}
type alias ResourceTag =
    { key : String
    , value : Maybe String
    }


resourceTagDecoder : JD.Decoder ResourceTag
resourceTagDecoder =
    JD.succeed ResourceTag
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "key", "Key" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "value", "Value" ]
                JD.string
            )


{-| Type of HTTP response from
-}
type alias Run =
    { runId : Maybe String
    }


runDecoder : JD.Decoder Run
runDecoder =
    JD.succeed Run
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "runId", "RunId" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>ScheduleActivityTask</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>activityType.name</code> – String constraint. The key is <code>swf:activityType.name</code>.</p> </li> <li> <p> <code>activityType.version</code> – String constraint. The key is <code>swf:activityType.version</code>.</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

-}
type alias ScheduleActivityTaskDecisionAttributes =
    { activityType : ActivityType
    , activityId : String
    , control : Maybe String
    , input : Maybe String
    , scheduleToCloseTimeout : Maybe String
    , taskList : Maybe TaskList
    , taskPriority : Maybe String
    , scheduleToStartTimeout : Maybe String
    , startToCloseTimeout : Maybe String
    , heartbeatTimeout : Maybe String
    }


scheduleActivityTaskDecisionAttributesDecoder : JD.Decoder ScheduleActivityTaskDecisionAttributes
scheduleActivityTaskDecisionAttributesDecoder =
    JD.succeed ScheduleActivityTaskDecisionAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "activityType", "ActivityType" ]
                activityTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "activityId", "ActivityId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "input", "Input" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "scheduleToCloseTimeout", "ScheduleToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskList", "TaskList" ]
                taskListDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskPriority", "TaskPriority" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "scheduleToStartTimeout", "ScheduleToStartTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "startToCloseTimeout", "StartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "heartbeatTimeout", "HeartbeatTimeout" ]
                JD.string
            )


{-| One of

  - `ScheduleActivityTaskFailedCause_ACTIVITY_TYPE_DEPRECATED`
  - `ScheduleActivityTaskFailedCause_ACTIVITY_TYPE_DOES_NOT_EXIST`
  - `ScheduleActivityTaskFailedCause_ACTIVITY_ID_ALREADY_IN_USE`
  - `ScheduleActivityTaskFailedCause_OPEN_ACTIVITIES_LIMIT_EXCEEDED`
  - `ScheduleActivityTaskFailedCause_ACTIVITY_CREATION_RATE_EXCEEDED`
  - `ScheduleActivityTaskFailedCause_DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED`
  - `ScheduleActivityTaskFailedCause_DEFAULT_TASK_LIST_UNDEFINED`
  - `ScheduleActivityTaskFailedCause_DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED`
  - `ScheduleActivityTaskFailedCause_DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED`
  - `ScheduleActivityTaskFailedCause_DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED`
  - `ScheduleActivityTaskFailedCause_OPERATION_NOT_PERMITTED`

-}
type ScheduleActivityTaskFailedCause
    = ScheduleActivityTaskFailedCause_ACTIVITY_TYPE_DEPRECATED
    | ScheduleActivityTaskFailedCause_ACTIVITY_TYPE_DOES_NOT_EXIST
    | ScheduleActivityTaskFailedCause_ACTIVITY_ID_ALREADY_IN_USE
    | ScheduleActivityTaskFailedCause_OPEN_ACTIVITIES_LIMIT_EXCEEDED
    | ScheduleActivityTaskFailedCause_ACTIVITY_CREATION_RATE_EXCEEDED
    | ScheduleActivityTaskFailedCause_DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED
    | ScheduleActivityTaskFailedCause_DEFAULT_TASK_LIST_UNDEFINED
    | ScheduleActivityTaskFailedCause_DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED
    | ScheduleActivityTaskFailedCause_DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED
    | ScheduleActivityTaskFailedCause_DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED
    | ScheduleActivityTaskFailedCause_OPERATION_NOT_PERMITTED


scheduleActivityTaskFailedCauseDecoder : JD.Decoder ScheduleActivityTaskFailedCause
scheduleActivityTaskFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVITY_TYPE_DEPRECATED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_ACTIVITY_TYPE_DEPRECATED

                    "ACTIVITY_TYPE_DOES_NOT_EXIST" ->
                        JD.succeed ScheduleActivityTaskFailedCause_ACTIVITY_TYPE_DOES_NOT_EXIST

                    "ACTIVITY_ID_ALREADY_IN_USE" ->
                        JD.succeed ScheduleActivityTaskFailedCause_ACTIVITY_ID_ALREADY_IN_USE

                    "OPEN_ACTIVITIES_LIMIT_EXCEEDED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_OPEN_ACTIVITIES_LIMIT_EXCEEDED

                    "ACTIVITY_CREATION_RATE_EXCEEDED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_ACTIVITY_CREATION_RATE_EXCEEDED

                    "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED

                    "DEFAULT_TASK_LIST_UNDEFINED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_DEFAULT_TASK_LIST_UNDEFINED

                    "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED

                    "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED

                    "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_OPERATION_NOT_PERMITTED

                    _ ->
                        JD.fail "bad thing"
            )


scheduleActivityTaskFailedCauseToString : ScheduleActivityTaskFailedCause -> String
scheduleActivityTaskFailedCauseToString val =
    case val of
        ScheduleActivityTaskFailedCause_ACTIVITY_TYPE_DEPRECATED ->
            "ACTIVITY_TYPE_DEPRECATED"

        ScheduleActivityTaskFailedCause_ACTIVITY_TYPE_DOES_NOT_EXIST ->
            "ACTIVITY_TYPE_DOES_NOT_EXIST"

        ScheduleActivityTaskFailedCause_ACTIVITY_ID_ALREADY_IN_USE ->
            "ACTIVITY_ID_ALREADY_IN_USE"

        ScheduleActivityTaskFailedCause_OPEN_ACTIVITIES_LIMIT_EXCEEDED ->
            "OPEN_ACTIVITIES_LIMIT_EXCEEDED"

        ScheduleActivityTaskFailedCause_ACTIVITY_CREATION_RATE_EXCEEDED ->
            "ACTIVITY_CREATION_RATE_EXCEEDED"

        ScheduleActivityTaskFailedCause_DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED ->
            "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED"

        ScheduleActivityTaskFailedCause_DEFAULT_TASK_LIST_UNDEFINED ->
            "DEFAULT_TASK_LIST_UNDEFINED"

        ScheduleActivityTaskFailedCause_DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED ->
            "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED"

        ScheduleActivityTaskFailedCause_DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED ->
            "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED"

        ScheduleActivityTaskFailedCause_DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED ->
            "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED"

        ScheduleActivityTaskFailedCause_OPERATION_NOT_PERMITTED ->
            "OPERATION_NOT_PERMITTED"


{-|

<p>Provides the details of the <code>ScheduleActivityTaskFailed</code> event.</p>

-}
type alias ScheduleActivityTaskFailedEventAttributes =
    { activityType : ActivityType
    , activityId : String
    , cause : ScheduleActivityTaskFailedCause
    , decisionTaskCompletedEventId : Int
    }


scheduleActivityTaskFailedEventAttributesDecoder : JD.Decoder ScheduleActivityTaskFailedEventAttributes
scheduleActivityTaskFailedEventAttributesDecoder =
    JD.succeed ScheduleActivityTaskFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "activityType", "ActivityType" ]
                activityTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "activityId", "ActivityId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "cause", "Cause" ]
                scheduleActivityTaskFailedCauseDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-|

<p>Decision attributes specified in <code>scheduleLambdaFunctionDecisionAttributes</code> within the list of decisions <code>decisions</code> passed to <a>RespondDecisionTaskCompleted</a>.</p>

-}
type alias ScheduleLambdaFunctionDecisionAttributes =
    { id : String
    , name : String
    , control : Maybe String
    , input : Maybe String
    , startToCloseTimeout : Maybe String
    }


scheduleLambdaFunctionDecisionAttributesDecoder : JD.Decoder ScheduleLambdaFunctionDecisionAttributes
scheduleLambdaFunctionDecisionAttributesDecoder =
    JD.succeed ScheduleLambdaFunctionDecisionAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "id", "Id" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "name", "Name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "input", "Input" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "startToCloseTimeout", "StartToCloseTimeout" ]
                JD.string
            )


{-| One of

  - `ScheduleLambdaFunctionFailedCause_ID_ALREADY_IN_USE`
  - `ScheduleLambdaFunctionFailedCause_OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED`
  - `ScheduleLambdaFunctionFailedCause_LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED`
  - `ScheduleLambdaFunctionFailedCause_LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION`

-}
type ScheduleLambdaFunctionFailedCause
    = ScheduleLambdaFunctionFailedCause_ID_ALREADY_IN_USE
    | ScheduleLambdaFunctionFailedCause_OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED
    | ScheduleLambdaFunctionFailedCause_LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED
    | ScheduleLambdaFunctionFailedCause_LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION


scheduleLambdaFunctionFailedCauseDecoder : JD.Decoder ScheduleLambdaFunctionFailedCause
scheduleLambdaFunctionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ID_ALREADY_IN_USE" ->
                        JD.succeed ScheduleLambdaFunctionFailedCause_ID_ALREADY_IN_USE

                    "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED" ->
                        JD.succeed ScheduleLambdaFunctionFailedCause_OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED

                    "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED" ->
                        JD.succeed ScheduleLambdaFunctionFailedCause_LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED

                    "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION" ->
                        JD.succeed ScheduleLambdaFunctionFailedCause_LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION

                    _ ->
                        JD.fail "bad thing"
            )


scheduleLambdaFunctionFailedCauseToString : ScheduleLambdaFunctionFailedCause -> String
scheduleLambdaFunctionFailedCauseToString val =
    case val of
        ScheduleLambdaFunctionFailedCause_ID_ALREADY_IN_USE ->
            "ID_ALREADY_IN_USE"

        ScheduleLambdaFunctionFailedCause_OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED ->
            "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED"

        ScheduleLambdaFunctionFailedCause_LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED ->
            "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED"

        ScheduleLambdaFunctionFailedCause_LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION ->
            "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION"


{-|

<p>Provides the details of the <code>ScheduleLambdaFunctionFailed</code> event. It isn't set for other event types.</p>

-}
type alias ScheduleLambdaFunctionFailedEventAttributes =
    { id : String
    , name : String
    , cause : ScheduleLambdaFunctionFailedCause
    , decisionTaskCompletedEventId : Int
    }


scheduleLambdaFunctionFailedEventAttributesDecoder : JD.Decoder ScheduleLambdaFunctionFailedEventAttributes
scheduleLambdaFunctionFailedEventAttributesDecoder =
    JD.succeed ScheduleLambdaFunctionFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "id", "Id" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "name", "Name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "cause", "Cause" ]
                scheduleLambdaFunctionFailedCauseDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>SignalExternalWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

-}
type alias SignalExternalWorkflowExecutionDecisionAttributes =
    { workflowId : String
    , runId : Maybe String
    , signalName : String
    , input : Maybe String
    , control : Maybe String
    }


signalExternalWorkflowExecutionDecisionAttributesDecoder : JD.Decoder SignalExternalWorkflowExecutionDecisionAttributes
signalExternalWorkflowExecutionDecisionAttributesDecoder =
    JD.succeed SignalExternalWorkflowExecutionDecisionAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowId", "WorkflowId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "runId", "RunId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "signalName", "SignalName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "input", "Input" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )


{-| One of

  - `SignalExternalWorkflowExecutionFailedCause_UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION`
  - `SignalExternalWorkflowExecutionFailedCause_SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED`
  - `SignalExternalWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED`

-}
type SignalExternalWorkflowExecutionFailedCause
    = SignalExternalWorkflowExecutionFailedCause_UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION
    | SignalExternalWorkflowExecutionFailedCause_SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED
    | SignalExternalWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED


signalExternalWorkflowExecutionFailedCauseDecoder : JD.Decoder SignalExternalWorkflowExecutionFailedCause
signalExternalWorkflowExecutionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION" ->
                        JD.succeed SignalExternalWorkflowExecutionFailedCause_UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION

                    "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED" ->
                        JD.succeed SignalExternalWorkflowExecutionFailedCause_SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed SignalExternalWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED

                    _ ->
                        JD.fail "bad thing"
            )


signalExternalWorkflowExecutionFailedCauseToString : SignalExternalWorkflowExecutionFailedCause -> String
signalExternalWorkflowExecutionFailedCauseToString val =
    case val of
        SignalExternalWorkflowExecutionFailedCause_UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION ->
            "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION"

        SignalExternalWorkflowExecutionFailedCause_SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED ->
            "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED"

        SignalExternalWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED ->
            "OPERATION_NOT_PERMITTED"


{-|

<p>Provides the details of the <code>SignalExternalWorkflowExecutionFailed</code> event.</p>

-}
type alias SignalExternalWorkflowExecutionFailedEventAttributes =
    { workflowId : String
    , runId : Maybe String
    , cause : SignalExternalWorkflowExecutionFailedCause
    , initiatedEventId : Int
    , decisionTaskCompletedEventId : Int
    , control : Maybe String
    }


signalExternalWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder SignalExternalWorkflowExecutionFailedEventAttributes
signalExternalWorkflowExecutionFailedEventAttributesDecoder =
    JD.succeed SignalExternalWorkflowExecutionFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowId", "WorkflowId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "runId", "RunId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "cause", "Cause" ]
                signalExternalWorkflowExecutionFailedCauseDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "initiatedEventId", "InitiatedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>SignalExternalWorkflowExecutionInitiated</code> event.</p>

-}
type alias SignalExternalWorkflowExecutionInitiatedEventAttributes =
    { workflowId : String
    , runId : Maybe String
    , signalName : String
    , input : Maybe String
    , decisionTaskCompletedEventId : Int
    , control : Maybe String
    }


signalExternalWorkflowExecutionInitiatedEventAttributesDecoder : JD.Decoder SignalExternalWorkflowExecutionInitiatedEventAttributes
signalExternalWorkflowExecutionInitiatedEventAttributesDecoder =
    JD.succeed SignalExternalWorkflowExecutionInitiatedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowId", "WorkflowId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "runId", "RunId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "signalName", "SignalName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "input", "Input" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>StartChildWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagList.member.N</code> – The key is "swf:tagList.N" where N is the tag number from 0 to 4, inclusive.</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> <li> <p> <code>workflowType.name</code> – String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code> – String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

-}
type alias StartChildWorkflowExecutionDecisionAttributes =
    { workflowType : WorkflowType
    , workflowId : String
    , control : Maybe String
    , input : Maybe String
    , executionStartToCloseTimeout : Maybe String
    , taskList : Maybe TaskList
    , taskPriority : Maybe String
    , taskStartToCloseTimeout : Maybe String
    , childPolicy : Maybe ChildPolicy
    , tagList : Maybe (List String)
    , lambdaRole : Maybe String
    }


startChildWorkflowExecutionDecisionAttributesDecoder : JD.Decoder StartChildWorkflowExecutionDecisionAttributes
startChildWorkflowExecutionDecisionAttributesDecoder =
    JD.succeed StartChildWorkflowExecutionDecisionAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowType", "WorkflowType" ]
                workflowTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowId", "WorkflowId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "input", "Input" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "executionStartToCloseTimeout", "ExecutionStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskList", "TaskList" ]
                taskListDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskPriority", "TaskPriority" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskStartToCloseTimeout", "TaskStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "childPolicy", "ChildPolicy" ]
                childPolicyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "tagList", "TagList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lambdaRole", "LambdaRole" ]
                JD.string
            )


{-| One of

  - `StartChildWorkflowExecutionFailedCause_WORKFLOW_TYPE_DOES_NOT_EXIST`
  - `StartChildWorkflowExecutionFailedCause_WORKFLOW_TYPE_DEPRECATED`
  - `StartChildWorkflowExecutionFailedCause_OPEN_CHILDREN_LIMIT_EXCEEDED`
  - `StartChildWorkflowExecutionFailedCause_OPEN_WORKFLOWS_LIMIT_EXCEEDED`
  - `StartChildWorkflowExecutionFailedCause_CHILD_CREATION_RATE_EXCEEDED`
  - `StartChildWorkflowExecutionFailedCause_WORKFLOW_ALREADY_RUNNING`
  - `StartChildWorkflowExecutionFailedCause_DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED`
  - `StartChildWorkflowExecutionFailedCause_DEFAULT_TASK_LIST_UNDEFINED`
  - `StartChildWorkflowExecutionFailedCause_DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED`
  - `StartChildWorkflowExecutionFailedCause_DEFAULT_CHILD_POLICY_UNDEFINED`
  - `StartChildWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED`

-}
type StartChildWorkflowExecutionFailedCause
    = StartChildWorkflowExecutionFailedCause_WORKFLOW_TYPE_DOES_NOT_EXIST
    | StartChildWorkflowExecutionFailedCause_WORKFLOW_TYPE_DEPRECATED
    | StartChildWorkflowExecutionFailedCause_OPEN_CHILDREN_LIMIT_EXCEEDED
    | StartChildWorkflowExecutionFailedCause_OPEN_WORKFLOWS_LIMIT_EXCEEDED
    | StartChildWorkflowExecutionFailedCause_CHILD_CREATION_RATE_EXCEEDED
    | StartChildWorkflowExecutionFailedCause_WORKFLOW_ALREADY_RUNNING
    | StartChildWorkflowExecutionFailedCause_DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED
    | StartChildWorkflowExecutionFailedCause_DEFAULT_TASK_LIST_UNDEFINED
    | StartChildWorkflowExecutionFailedCause_DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED
    | StartChildWorkflowExecutionFailedCause_DEFAULT_CHILD_POLICY_UNDEFINED
    | StartChildWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED


startChildWorkflowExecutionFailedCauseDecoder : JD.Decoder StartChildWorkflowExecutionFailedCause
startChildWorkflowExecutionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "WORKFLOW_TYPE_DOES_NOT_EXIST" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_WORKFLOW_TYPE_DOES_NOT_EXIST

                    "WORKFLOW_TYPE_DEPRECATED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_WORKFLOW_TYPE_DEPRECATED

                    "OPEN_CHILDREN_LIMIT_EXCEEDED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_OPEN_CHILDREN_LIMIT_EXCEEDED

                    "OPEN_WORKFLOWS_LIMIT_EXCEEDED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_OPEN_WORKFLOWS_LIMIT_EXCEEDED

                    "CHILD_CREATION_RATE_EXCEEDED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_CHILD_CREATION_RATE_EXCEEDED

                    "WORKFLOW_ALREADY_RUNNING" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_WORKFLOW_ALREADY_RUNNING

                    "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED

                    "DEFAULT_TASK_LIST_UNDEFINED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_DEFAULT_TASK_LIST_UNDEFINED

                    "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED

                    "DEFAULT_CHILD_POLICY_UNDEFINED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_DEFAULT_CHILD_POLICY_UNDEFINED

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED

                    _ ->
                        JD.fail "bad thing"
            )


startChildWorkflowExecutionFailedCauseToString : StartChildWorkflowExecutionFailedCause -> String
startChildWorkflowExecutionFailedCauseToString val =
    case val of
        StartChildWorkflowExecutionFailedCause_WORKFLOW_TYPE_DOES_NOT_EXIST ->
            "WORKFLOW_TYPE_DOES_NOT_EXIST"

        StartChildWorkflowExecutionFailedCause_WORKFLOW_TYPE_DEPRECATED ->
            "WORKFLOW_TYPE_DEPRECATED"

        StartChildWorkflowExecutionFailedCause_OPEN_CHILDREN_LIMIT_EXCEEDED ->
            "OPEN_CHILDREN_LIMIT_EXCEEDED"

        StartChildWorkflowExecutionFailedCause_OPEN_WORKFLOWS_LIMIT_EXCEEDED ->
            "OPEN_WORKFLOWS_LIMIT_EXCEEDED"

        StartChildWorkflowExecutionFailedCause_CHILD_CREATION_RATE_EXCEEDED ->
            "CHILD_CREATION_RATE_EXCEEDED"

        StartChildWorkflowExecutionFailedCause_WORKFLOW_ALREADY_RUNNING ->
            "WORKFLOW_ALREADY_RUNNING"

        StartChildWorkflowExecutionFailedCause_DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED ->
            "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED"

        StartChildWorkflowExecutionFailedCause_DEFAULT_TASK_LIST_UNDEFINED ->
            "DEFAULT_TASK_LIST_UNDEFINED"

        StartChildWorkflowExecutionFailedCause_DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED ->
            "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED"

        StartChildWorkflowExecutionFailedCause_DEFAULT_CHILD_POLICY_UNDEFINED ->
            "DEFAULT_CHILD_POLICY_UNDEFINED"

        StartChildWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED ->
            "OPERATION_NOT_PERMITTED"


{-|

<p>Provides the details of the <code>StartChildWorkflowExecutionFailed</code> event.</p>

-}
type alias StartChildWorkflowExecutionFailedEventAttributes =
    { workflowType : WorkflowType
    , cause : StartChildWorkflowExecutionFailedCause
    , workflowId : String
    , initiatedEventId : Int
    , decisionTaskCompletedEventId : Int
    , control : Maybe String
    }


startChildWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder StartChildWorkflowExecutionFailedEventAttributes
startChildWorkflowExecutionFailedEventAttributesDecoder =
    JD.succeed StartChildWorkflowExecutionFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowType", "WorkflowType" ]
                workflowTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "cause", "Cause" ]
                startChildWorkflowExecutionFailedCauseDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowId", "WorkflowId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "initiatedEventId", "InitiatedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>StartChildWorkflowExecutionInitiated</code> event.</p>

-}
type alias StartChildWorkflowExecutionInitiatedEventAttributes =
    { workflowId : String
    , workflowType : WorkflowType
    , control : Maybe String
    , input : Maybe String
    , executionStartToCloseTimeout : Maybe String
    , taskList : TaskList
    , taskPriority : Maybe String
    , decisionTaskCompletedEventId : Int
    , childPolicy : ChildPolicy
    , taskStartToCloseTimeout : Maybe String
    , tagList : Maybe (List String)
    , lambdaRole : Maybe String
    }


startChildWorkflowExecutionInitiatedEventAttributesDecoder : JD.Decoder StartChildWorkflowExecutionInitiatedEventAttributes
startChildWorkflowExecutionInitiatedEventAttributesDecoder =
    JD.succeed StartChildWorkflowExecutionInitiatedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowId", "WorkflowId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowType", "WorkflowType" ]
                workflowTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "input", "Input" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "executionStartToCloseTimeout", "ExecutionStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "taskList", "TaskList" ]
                taskListDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskPriority", "TaskPriority" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "childPolicy", "ChildPolicy" ]
                childPolicyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskStartToCloseTimeout", "TaskStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "tagList", "TagList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lambdaRole", "LambdaRole" ]
                JD.string
            )


{-| One of

  - `StartLambdaFunctionFailedCause_ASSUME_ROLE_FAILED`

-}
type StartLambdaFunctionFailedCause
    = StartLambdaFunctionFailedCause_ASSUME_ROLE_FAILED


startLambdaFunctionFailedCauseDecoder : JD.Decoder StartLambdaFunctionFailedCause
startLambdaFunctionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASSUME_ROLE_FAILED" ->
                        JD.succeed StartLambdaFunctionFailedCause_ASSUME_ROLE_FAILED

                    _ ->
                        JD.fail "bad thing"
            )


startLambdaFunctionFailedCauseToString : StartLambdaFunctionFailedCause -> String
startLambdaFunctionFailedCauseToString val =
    case val of
        StartLambdaFunctionFailedCause_ASSUME_ROLE_FAILED ->
            "ASSUME_ROLE_FAILED"


{-|

<p>Provides the details of the <code>StartLambdaFunctionFailed</code> event. It isn't set for other event types.</p>

-}
type alias StartLambdaFunctionFailedEventAttributes =
    { scheduledEventId : Maybe Int
    , cause : Maybe StartLambdaFunctionFailedCause
    , message : Maybe String
    }


startLambdaFunctionFailedEventAttributesDecoder : JD.Decoder StartLambdaFunctionFailedEventAttributes
startLambdaFunctionFailedEventAttributesDecoder =
    JD.succeed StartLambdaFunctionFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "scheduledEventId", "ScheduledEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "cause", "Cause" ]
                startLambdaFunctionFailedCauseDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "message", "Message" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>StartTimer</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

-}
type alias StartTimerDecisionAttributes =
    { timerId : String
    , control : Maybe String
    , startToFireTimeout : String
    }


startTimerDecisionAttributesDecoder : JD.Decoder StartTimerDecisionAttributes
startTimerDecisionAttributesDecoder =
    JD.succeed StartTimerDecisionAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "timerId", "TimerId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startToFireTimeout", "StartToFireTimeout" ]
                JD.string
            )


{-| One of

  - `StartTimerFailedCause_TIMER_ID_ALREADY_IN_USE`
  - `StartTimerFailedCause_OPEN_TIMERS_LIMIT_EXCEEDED`
  - `StartTimerFailedCause_TIMER_CREATION_RATE_EXCEEDED`
  - `StartTimerFailedCause_OPERATION_NOT_PERMITTED`

-}
type StartTimerFailedCause
    = StartTimerFailedCause_TIMER_ID_ALREADY_IN_USE
    | StartTimerFailedCause_OPEN_TIMERS_LIMIT_EXCEEDED
    | StartTimerFailedCause_TIMER_CREATION_RATE_EXCEEDED
    | StartTimerFailedCause_OPERATION_NOT_PERMITTED


startTimerFailedCauseDecoder : JD.Decoder StartTimerFailedCause
startTimerFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TIMER_ID_ALREADY_IN_USE" ->
                        JD.succeed StartTimerFailedCause_TIMER_ID_ALREADY_IN_USE

                    "OPEN_TIMERS_LIMIT_EXCEEDED" ->
                        JD.succeed StartTimerFailedCause_OPEN_TIMERS_LIMIT_EXCEEDED

                    "TIMER_CREATION_RATE_EXCEEDED" ->
                        JD.succeed StartTimerFailedCause_TIMER_CREATION_RATE_EXCEEDED

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed StartTimerFailedCause_OPERATION_NOT_PERMITTED

                    _ ->
                        JD.fail "bad thing"
            )


startTimerFailedCauseToString : StartTimerFailedCause -> String
startTimerFailedCauseToString val =
    case val of
        StartTimerFailedCause_TIMER_ID_ALREADY_IN_USE ->
            "TIMER_ID_ALREADY_IN_USE"

        StartTimerFailedCause_OPEN_TIMERS_LIMIT_EXCEEDED ->
            "OPEN_TIMERS_LIMIT_EXCEEDED"

        StartTimerFailedCause_TIMER_CREATION_RATE_EXCEEDED ->
            "TIMER_CREATION_RATE_EXCEEDED"

        StartTimerFailedCause_OPERATION_NOT_PERMITTED ->
            "OPERATION_NOT_PERMITTED"


{-|

<p>Provides the details of the <code>StartTimerFailed</code> event.</p>

-}
type alias StartTimerFailedEventAttributes =
    { timerId : String
    , cause : StartTimerFailedCause
    , decisionTaskCompletedEventId : Int
    }


startTimerFailedEventAttributesDecoder : JD.Decoder StartTimerFailedEventAttributes
startTimerFailedEventAttributesDecoder =
    JD.succeed StartTimerFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "timerId", "TimerId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "cause", "Cause" ]
                startTimerFailedCauseDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-|

<p>Used to filter the workflow executions in visibility APIs based on a tag.</p>

-}
type alias TagFilter =
    { tag : String
    }


tagFilterDecoder : JD.Decoder TagFilter
tagFilterDecoder =
    JD.succeed TagFilter
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "tag", "Tag" ]
                JD.string
            )


{-|

<p>Represents a task list.</p>

-}
type alias TaskList =
    { name : String
    }


taskListDecoder : JD.Decoder TaskList
taskListDecoder =
    JD.succeed TaskList
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "name", "Name" ]
                JD.string
            )


{-|

<p> Provides the details of the <code>TimerCanceled</code> event. </p>

-}
type alias TimerCanceledEventAttributes =
    { timerId : String
    , startedEventId : Int
    , decisionTaskCompletedEventId : Int
    }


timerCanceledEventAttributesDecoder : JD.Decoder TimerCanceledEventAttributes
timerCanceledEventAttributesDecoder =
    JD.succeed TimerCanceledEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "timerId", "TimerId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>TimerFired</code> event.</p>

-}
type alias TimerFiredEventAttributes =
    { timerId : String
    , startedEventId : Int
    }


timerFiredEventAttributesDecoder : JD.Decoder TimerFiredEventAttributes
timerFiredEventAttributesDecoder =
    JD.succeed TimerFiredEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "timerId", "TimerId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startedEventId", "StartedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>TimerStarted</code> event.</p>

-}
type alias TimerStartedEventAttributes =
    { timerId : String
    , control : Maybe String
    , startToFireTimeout : String
    , decisionTaskCompletedEventId : Int
    }


timerStartedEventAttributesDecoder : JD.Decoder TimerStartedEventAttributes
timerStartedEventAttributesDecoder =
    JD.succeed TimerStartedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "timerId", "TimerId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "control", "Control" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startToFireTimeout", "StartToFireTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-|

<p>Represents a workflow execution.</p>

-}
type alias WorkflowExecution =
    { workflowId : String
    , runId : String
    }


workflowExecutionDecoder : JD.Decoder WorkflowExecution
workflowExecutionDecoder =
    JD.succeed WorkflowExecution
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowId", "WorkflowId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "runId", "RunId" ]
                JD.string
            )


{-| One of

  - `WorkflowExecutionCancelRequestedCause_CHILD_POLICY_APPLIED`

-}
type WorkflowExecutionCancelRequestedCause
    = WorkflowExecutionCancelRequestedCause_CHILD_POLICY_APPLIED


workflowExecutionCancelRequestedCauseDecoder : JD.Decoder WorkflowExecutionCancelRequestedCause
workflowExecutionCancelRequestedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CHILD_POLICY_APPLIED" ->
                        JD.succeed WorkflowExecutionCancelRequestedCause_CHILD_POLICY_APPLIED

                    _ ->
                        JD.fail "bad thing"
            )


workflowExecutionCancelRequestedCauseToString : WorkflowExecutionCancelRequestedCause -> String
workflowExecutionCancelRequestedCauseToString val =
    case val of
        WorkflowExecutionCancelRequestedCause_CHILD_POLICY_APPLIED ->
            "CHILD_POLICY_APPLIED"


{-|

<p>Provides the details of the <code>WorkflowExecutionCancelRequested</code> event.</p>

-}
type alias WorkflowExecutionCancelRequestedEventAttributes =
    { externalWorkflowExecution : Maybe WorkflowExecution
    , externalInitiatedEventId : Maybe Int
    , cause : Maybe WorkflowExecutionCancelRequestedCause
    }


workflowExecutionCancelRequestedEventAttributesDecoder : JD.Decoder WorkflowExecutionCancelRequestedEventAttributes
workflowExecutionCancelRequestedEventAttributesDecoder =
    JD.succeed WorkflowExecutionCancelRequestedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "externalWorkflowExecution", "ExternalWorkflowExecution" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "externalInitiatedEventId", "ExternalInitiatedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "cause", "Cause" ]
                workflowExecutionCancelRequestedCauseDecoder
            )


{-|

<p>Provides the details of the <code>WorkflowExecutionCanceled</code> event.</p>

-}
type alias WorkflowExecutionCanceledEventAttributes =
    { details : Maybe String
    , decisionTaskCompletedEventId : Int
    }


workflowExecutionCanceledEventAttributesDecoder : JD.Decoder WorkflowExecutionCanceledEventAttributes
workflowExecutionCanceledEventAttributesDecoder =
    JD.succeed WorkflowExecutionCanceledEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "details", "Details" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>WorkflowExecutionCompleted</code> event.</p>

-}
type alias WorkflowExecutionCompletedEventAttributes =
    { result : Maybe String
    , decisionTaskCompletedEventId : Int
    }


workflowExecutionCompletedEventAttributesDecoder : JD.Decoder WorkflowExecutionCompletedEventAttributes
workflowExecutionCompletedEventAttributesDecoder =
    JD.succeed WorkflowExecutionCompletedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "result", "Result" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-|

<p>The configuration settings for a workflow execution including timeout values, tasklist etc. These configuration settings are determined from the defaults specified when registering the workflow type and those specified when starting the workflow execution.</p>

-}
type alias WorkflowExecutionConfiguration =
    { taskStartToCloseTimeout : String
    , executionStartToCloseTimeout : String
    , taskList : TaskList
    , taskPriority : Maybe String
    , childPolicy : ChildPolicy
    , lambdaRole : Maybe String
    }


workflowExecutionConfigurationDecoder : JD.Decoder WorkflowExecutionConfiguration
workflowExecutionConfigurationDecoder =
    JD.succeed WorkflowExecutionConfiguration
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "taskStartToCloseTimeout", "TaskStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "executionStartToCloseTimeout", "ExecutionStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "taskList", "TaskList" ]
                taskListDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskPriority", "TaskPriority" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "childPolicy", "ChildPolicy" ]
                childPolicyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lambdaRole", "LambdaRole" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>WorkflowExecutionContinuedAsNew</code> event.</p>

-}
type alias WorkflowExecutionContinuedAsNewEventAttributes =
    { input : Maybe String
    , decisionTaskCompletedEventId : Int
    , newExecutionRunId : String
    , executionStartToCloseTimeout : Maybe String
    , taskList : TaskList
    , taskPriority : Maybe String
    , taskStartToCloseTimeout : Maybe String
    , childPolicy : ChildPolicy
    , tagList : Maybe (List String)
    , workflowType : WorkflowType
    , lambdaRole : Maybe String
    }


workflowExecutionContinuedAsNewEventAttributesDecoder : JD.Decoder WorkflowExecutionContinuedAsNewEventAttributes
workflowExecutionContinuedAsNewEventAttributesDecoder =
    JD.succeed WorkflowExecutionContinuedAsNewEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "input", "Input" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "newExecutionRunId", "NewExecutionRunId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "executionStartToCloseTimeout", "ExecutionStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "taskList", "TaskList" ]
                taskListDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskPriority", "TaskPriority" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskStartToCloseTimeout", "TaskStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "childPolicy", "ChildPolicy" ]
                childPolicyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "tagList", "TagList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowType", "WorkflowType" ]
                workflowTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lambdaRole", "LambdaRole" ]
                JD.string
            )


{-| Type of HTTP response from workflowExecut
-}
type alias WorkflowExecutionCount =
    { count : Int
    , truncated : Maybe Bool
    }


workflowExecutionCountDecoder : JD.Decoder WorkflowExecutionCount
workflowExecutionCountDecoder =
    JD.succeed WorkflowExecutionCount
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "count", "Count" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "truncated", "Truncated" ]
                JD.bool
            )


{-| Type of HTTP response from workflowExecuti
-}
type alias WorkflowExecutionDetail =
    { executionInfo : WorkflowExecutionInfo
    , executionConfiguration : WorkflowExecutionConfiguration
    , openCounts : WorkflowExecutionOpenCounts
    , latestActivityTaskTimestamp : Maybe Posix
    , latestExecutionContext : Maybe String
    }


workflowExecutionDetailDecoder : JD.Decoder WorkflowExecutionDetail
workflowExecutionDetailDecoder =
    JD.succeed WorkflowExecutionDetail
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "executionInfo", "ExecutionInfo" ]
                workflowExecutionInfoDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "executionConfiguration", "ExecutionConfiguration" ]
                workflowExecutionConfigurationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "openCounts", "OpenCounts" ]
                workflowExecutionOpenCountsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "latestActivityTaskTimestamp", "LatestActivityTaskTimestamp" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "latestExecutionContext", "LatestExecutionContext" ]
                JD.string
            )


{-|

<p>Provides the details of the <code>WorkflowExecutionFailed</code> event.</p>

-}
type alias WorkflowExecutionFailedEventAttributes =
    { reason : Maybe String
    , details : Maybe String
    , decisionTaskCompletedEventId : Int
    }


workflowExecutionFailedEventAttributesDecoder : JD.Decoder WorkflowExecutionFailedEventAttributes
workflowExecutionFailedEventAttributesDecoder =
    JD.succeed WorkflowExecutionFailedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "reason", "Reason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "details", "Details" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "decisionTaskCompletedEventId", "DecisionTaskCompletedEventId" ]
                JD.int
            )


{-|

<p>Used to filter the workflow executions in visibility APIs by their <code>workflowId</code>.</p>

-}
type alias WorkflowExecutionFilter =
    { workflowId : String
    }


workflowExecutionFilterDecoder : JD.Decoder WorkflowExecutionFilter
workflowExecutionFilterDecoder =
    JD.succeed WorkflowExecutionFilter
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowId", "WorkflowId" ]
                JD.string
            )


{-|

<p>Contains information about a workflow execution.</p>

-}
type alias WorkflowExecutionInfo =
    { execution : WorkflowExecution
    , workflowType : WorkflowType
    , startTimestamp : Posix
    , closeTimestamp : Maybe Posix
    , executionStatus : ExecutionStatus
    , closeStatus : Maybe CloseStatus
    , parent : Maybe WorkflowExecution
    , tagList : Maybe (List String)
    , cancelRequested : Maybe Bool
    }


workflowExecutionInfoDecoder : JD.Decoder WorkflowExecutionInfo
workflowExecutionInfoDecoder =
    JD.succeed WorkflowExecutionInfo
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "execution", "Execution" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowType", "WorkflowType" ]
                workflowTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "startTimestamp", "StartTimestamp" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "closeTimestamp", "CloseTimestamp" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "executionStatus", "ExecutionStatus" ]
                executionStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "closeStatus", "CloseStatus" ]
                closeStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "parent", "Parent" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "tagList", "TagList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "cancelRequested", "CancelRequested" ]
                JD.bool
            )


{-| Type of HTTP response from workflowExecut
-}
type alias WorkflowExecutionInfos =
    { executionInfos : List WorkflowExecutionInfo
    , nextPageToken : Maybe String
    }


workflowExecutionInfosDecoder : JD.Decoder WorkflowExecutionInfos
workflowExecutionInfosDecoder =
    JD.succeed WorkflowExecutionInfos
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "executionInfos", "ExecutionInfos" ]
                (JD.list workflowExecutionInfoDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextPageToken", "NextPageToken" ]
                JD.string
            )


{-|

<p>Contains the counts of open tasks, child workflow executions and timers for a workflow execution.</p>

-}
type alias WorkflowExecutionOpenCounts =
    { openActivityTasks : Int
    , openDecisionTasks : Int
    , openTimers : Int
    , openChildWorkflowExecutions : Int
    , openLambdaFunctions : Maybe Int
    }


workflowExecutionOpenCountsDecoder : JD.Decoder WorkflowExecutionOpenCounts
workflowExecutionOpenCountsDecoder =
    JD.succeed WorkflowExecutionOpenCounts
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "openActivityTasks", "OpenActivityTasks" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "openDecisionTasks", "OpenDecisionTasks" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "openTimers", "OpenTimers" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "openChildWorkflowExecutions", "OpenChildWorkflowExecutions" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "openLambdaFunctions", "OpenLambdaFunctions" ]
                JD.int
            )


{-|

<p>Provides the details of the <code>WorkflowExecutionSignaled</code> event.</p>

-}
type alias WorkflowExecutionSignaledEventAttributes =
    { signalName : String
    , input : Maybe String
    , externalWorkflowExecution : Maybe WorkflowExecution
    , externalInitiatedEventId : Maybe Int
    }


workflowExecutionSignaledEventAttributesDecoder : JD.Decoder WorkflowExecutionSignaledEventAttributes
workflowExecutionSignaledEventAttributesDecoder =
    JD.succeed WorkflowExecutionSignaledEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "signalName", "SignalName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "input", "Input" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "externalWorkflowExecution", "ExternalWorkflowExecution" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "externalInitiatedEventId", "ExternalInitiatedEventId" ]
                JD.int
            )


{-|

<p>Provides details of <code>WorkflowExecutionStarted</code> event.</p>

-}
type alias WorkflowExecutionStartedEventAttributes =
    { input : Maybe String
    , executionStartToCloseTimeout : Maybe String
    , taskStartToCloseTimeout : Maybe String
    , childPolicy : ChildPolicy
    , taskList : TaskList
    , taskPriority : Maybe String
    , workflowType : WorkflowType
    , tagList : Maybe (List String)
    , continuedExecutionRunId : Maybe String
    , parentWorkflowExecution : Maybe WorkflowExecution
    , parentInitiatedEventId : Maybe Int
    , lambdaRole : Maybe String
    }


workflowExecutionStartedEventAttributesDecoder : JD.Decoder WorkflowExecutionStartedEventAttributes
workflowExecutionStartedEventAttributesDecoder =
    JD.succeed WorkflowExecutionStartedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "input", "Input" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "executionStartToCloseTimeout", "ExecutionStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskStartToCloseTimeout", "TaskStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "childPolicy", "ChildPolicy" ]
                childPolicyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "taskList", "TaskList" ]
                taskListDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "taskPriority", "TaskPriority" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowType", "WorkflowType" ]
                workflowTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "tagList", "TagList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "continuedExecutionRunId", "ContinuedExecutionRunId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "parentWorkflowExecution", "ParentWorkflowExecution" ]
                workflowExecutionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "parentInitiatedEventId", "ParentInitiatedEventId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "lambdaRole", "LambdaRole" ]
                JD.string
            )


{-| One of

  - `WorkflowExecutionTerminatedCause_CHILD_POLICY_APPLIED`
  - `WorkflowExecutionTerminatedCause_EVENT_LIMIT_EXCEEDED`
  - `WorkflowExecutionTerminatedCause_OPERATOR_INITIATED`

-}
type WorkflowExecutionTerminatedCause
    = WorkflowExecutionTerminatedCause_CHILD_POLICY_APPLIED
    | WorkflowExecutionTerminatedCause_EVENT_LIMIT_EXCEEDED
    | WorkflowExecutionTerminatedCause_OPERATOR_INITIATED


workflowExecutionTerminatedCauseDecoder : JD.Decoder WorkflowExecutionTerminatedCause
workflowExecutionTerminatedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CHILD_POLICY_APPLIED" ->
                        JD.succeed WorkflowExecutionTerminatedCause_CHILD_POLICY_APPLIED

                    "EVENT_LIMIT_EXCEEDED" ->
                        JD.succeed WorkflowExecutionTerminatedCause_EVENT_LIMIT_EXCEEDED

                    "OPERATOR_INITIATED" ->
                        JD.succeed WorkflowExecutionTerminatedCause_OPERATOR_INITIATED

                    _ ->
                        JD.fail "bad thing"
            )


workflowExecutionTerminatedCauseToString : WorkflowExecutionTerminatedCause -> String
workflowExecutionTerminatedCauseToString val =
    case val of
        WorkflowExecutionTerminatedCause_CHILD_POLICY_APPLIED ->
            "CHILD_POLICY_APPLIED"

        WorkflowExecutionTerminatedCause_EVENT_LIMIT_EXCEEDED ->
            "EVENT_LIMIT_EXCEEDED"

        WorkflowExecutionTerminatedCause_OPERATOR_INITIATED ->
            "OPERATOR_INITIATED"


{-|

<p>Provides the details of the <code>WorkflowExecutionTerminated</code> event.</p>

-}
type alias WorkflowExecutionTerminatedEventAttributes =
    { reason : Maybe String
    , details : Maybe String
    , childPolicy : ChildPolicy
    , cause : Maybe WorkflowExecutionTerminatedCause
    }


workflowExecutionTerminatedEventAttributesDecoder : JD.Decoder WorkflowExecutionTerminatedEventAttributes
workflowExecutionTerminatedEventAttributesDecoder =
    JD.succeed WorkflowExecutionTerminatedEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "reason", "Reason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "details", "Details" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "childPolicy", "ChildPolicy" ]
                childPolicyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "cause", "Cause" ]
                workflowExecutionTerminatedCauseDecoder
            )


{-|

<p>Provides the details of the <code>WorkflowExecutionTimedOut</code> event.</p>

-}
type alias WorkflowExecutionTimedOutEventAttributes =
    { timeoutType : WorkflowExecutionTimeoutType
    , childPolicy : ChildPolicy
    }


workflowExecutionTimedOutEventAttributesDecoder : JD.Decoder WorkflowExecutionTimedOutEventAttributes
workflowExecutionTimedOutEventAttributesDecoder =
    JD.succeed WorkflowExecutionTimedOutEventAttributes
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "timeoutType", "TimeoutType" ]
                workflowExecutionTimeoutTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "childPolicy", "ChildPolicy" ]
                childPolicyDecoder
            )


{-| One of

  - `WorkflowExecutionTimeoutType_START_TO_CLOSE`

-}
type WorkflowExecutionTimeoutType
    = WorkflowExecutionTimeoutType_START_TO_CLOSE


workflowExecutionTimeoutTypeDecoder : JD.Decoder WorkflowExecutionTimeoutType
workflowExecutionTimeoutTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "START_TO_CLOSE" ->
                        JD.succeed WorkflowExecutionTimeoutType_START_TO_CLOSE

                    _ ->
                        JD.fail "bad thing"
            )


workflowExecutionTimeoutTypeToString : WorkflowExecutionTimeoutType -> String
workflowExecutionTimeoutTypeToString val =
    case val of
        WorkflowExecutionTimeoutType_START_TO_CLOSE ->
            "START_TO_CLOSE"


{-|

<p>Represents a workflow type.</p>

-}
type alias WorkflowType =
    { name : String
    , version : String
    }


workflowTypeDecoder : JD.Decoder WorkflowType
workflowTypeDecoder =
    JD.succeed WorkflowType
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "name", "Name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "version", "Version" ]
                JD.string
            )


{-|

<p>The configuration settings of a workflow type.</p>

-}
type alias WorkflowTypeConfiguration =
    { defaultTaskStartToCloseTimeout : Maybe String
    , defaultExecutionStartToCloseTimeout : Maybe String
    , defaultTaskList : Maybe TaskList
    , defaultTaskPriority : Maybe String
    , defaultChildPolicy : Maybe ChildPolicy
    , defaultLambdaRole : Maybe String
    }


workflowTypeConfigurationDecoder : JD.Decoder WorkflowTypeConfiguration
workflowTypeConfigurationDecoder =
    JD.succeed WorkflowTypeConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "defaultTaskStartToCloseTimeout", "DefaultTaskStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "defaultExecutionStartToCloseTimeout", "DefaultExecutionStartToCloseTimeout" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "defaultTaskList", "DefaultTaskList" ]
                taskListDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "defaultTaskPriority", "DefaultTaskPriority" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "defaultChildPolicy", "DefaultChildPolicy" ]
                childPolicyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "defaultLambdaRole", "DefaultLambdaRole" ]
                JD.string
            )


{-| Type of HTTP response from workflowTy
-}
type alias WorkflowTypeDetail =
    { typeInfo : WorkflowTypeInfo
    , configuration : WorkflowTypeConfiguration
    }


workflowTypeDetailDecoder : JD.Decoder WorkflowTypeDetail
workflowTypeDetailDecoder =
    JD.succeed WorkflowTypeDetail
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "typeInfo", "TypeInfo" ]
                workflowTypeInfoDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "configuration", "Configuration" ]
                workflowTypeConfigurationDecoder
            )


{-|

<p>Used to filter workflow execution query results by type. Each parameter, if specified, defines a rule that must be satisfied by each returned result.</p>

-}
type alias WorkflowTypeFilter =
    { name : String
    , version : Maybe String
    }


workflowTypeFilterDecoder : JD.Decoder WorkflowTypeFilter
workflowTypeFilterDecoder =
    JD.succeed WorkflowTypeFilter
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "name", "Name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "version", "Version" ]
                JD.string
            )


{-|

<p>Contains information about a workflow type.</p>

-}
type alias WorkflowTypeInfo =
    { workflowType : WorkflowType
    , status : RegistrationStatus
    , description : Maybe String
    , creationDate : Posix
    , deprecationDate : Maybe Posix
    }


workflowTypeInfoDecoder : JD.Decoder WorkflowTypeInfo
workflowTypeInfoDecoder =
    JD.succeed WorkflowTypeInfo
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "workflowType", "WorkflowType" ]
                workflowTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "status", "Status" ]
                registrationStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "description", "Description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "creationDate", "CreationDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "deprecationDate", "DeprecationDate" ]
                JDX.datetime
            )


{-| Type of HTTP response from workflowT
-}
type alias WorkflowTypeInfos =
    { typeInfos : List WorkflowTypeInfo
    , nextPageToken : Maybe String
    }


workflowTypeInfosDecoder : JD.Decoder WorkflowTypeInfos
workflowTypeInfosDecoder =
    JD.succeed WorkflowTypeInfos
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "typeInfos", "TypeInfos" ]
                (JD.list workflowTypeInfoDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "nextPageToken", "NextPageToken" ]
                JD.string
            )


{-| undefined
-}
type alias CountClosedWorkflowExecutionsInput =
    { domain : String
    , startTimeFilter : Maybe ExecutionTimeFilter
    , closeTimeFilter : Maybe ExecutionTimeFilter
    , executionFilter : Maybe WorkflowExecutionFilter
    , typeFilter : Maybe WorkflowTypeFilter
    , tagFilter : Maybe TagFilter
    , closeStatusFilter : Maybe CloseStatusFilter
    }


{-| undefined
-}
type alias CountOpenWorkflowExecutionsInput =
    { domain : String
    , startTimeFilter : ExecutionTimeFilter
    , typeFilter : Maybe WorkflowTypeFilter
    , tagFilter : Maybe TagFilter
    , executionFilter : Maybe WorkflowExecutionFilter
    }


{-| undefined
-}
type alias CountPendingActivityTasksInput =
    { domain : String
    , taskList : TaskList
    }


{-| undefined
-}
type alias CountPendingDecisionTasksInput =
    { domain : String
    , taskList : TaskList
    }


{-| undefined
-}
type alias DeprecateActivityTypeInput =
    { domain : String
    , activityType : ActivityType
    }


{-| undefined
-}
type alias DeprecateDomainInput =
    { name : String
    }


{-| undefined
-}
type alias DeprecateWorkflowTypeInput =
    { domain : String
    , workflowType : WorkflowType
    }


{-| undefined
-}
type alias DescribeActivityTypeInput =
    { domain : String
    , activityType : ActivityType
    }


{-| undefined
-}
type alias DescribeDomainInput =
    { name : String
    }


{-| undefined
-}
type alias DescribeWorkflowExecutionInput =
    { domain : String
    , execution : WorkflowExecution
    }


{-| undefined
-}
type alias DescribeWorkflowTypeInput =
    { domain : String
    , workflowType : WorkflowType
    }


{-| undefined
-}
type alias GetWorkflowExecutionHistoryInput =
    { domain : String
    , execution : WorkflowExecution
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }


{-| undefined
-}
type alias ListActivityTypesInput =
    { domain : String
    , name : Maybe String
    , registrationStatus : RegistrationStatus
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }


{-| undefined
-}
type alias ListClosedWorkflowExecutionsInput =
    { domain : String
    , startTimeFilter : Maybe ExecutionTimeFilter
    , closeTimeFilter : Maybe ExecutionTimeFilter
    , executionFilter : Maybe WorkflowExecutionFilter
    , closeStatusFilter : Maybe CloseStatusFilter
    , typeFilter : Maybe WorkflowTypeFilter
    , tagFilter : Maybe TagFilter
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }


{-| undefined
-}
type alias ListDomainsInput =
    { nextPageToken : Maybe String
    , registrationStatus : RegistrationStatus
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }


{-| undefined
-}
type alias ListOpenWorkflowExecutionsInput =
    { domain : String
    , startTimeFilter : ExecutionTimeFilter
    , typeFilter : Maybe WorkflowTypeFilter
    , tagFilter : Maybe TagFilter
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    , executionFilter : Maybe WorkflowExecutionFilter
    }


{-| undefined
-}
type alias ListTagsForResourceInput =
    { resourceArn : String
    }


{-| undefined
-}
type alias ListWorkflowTypesInput =
    { domain : String
    , name : Maybe String
    , registrationStatus : RegistrationStatus
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }


{-| undefined
-}
type alias PollForActivityTaskInput =
    { domain : String
    , taskList : TaskList
    , identity : Maybe String
    }


{-| undefined
-}
type alias PollForDecisionTaskInput =
    { domain : String
    , taskList : TaskList
    , identity : Maybe String
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }


{-| undefined
-}
type alias RecordActivityTaskHeartbeatInput =
    { taskToken : String
    , details : Maybe String
    }


{-| undefined
-}
type alias RegisterActivityTypeInput =
    { domain : String
    , name : String
    , version : String
    , description : Maybe String
    , defaultTaskStartToCloseTimeout : Maybe String
    , defaultTaskHeartbeatTimeout : Maybe String
    , defaultTaskList : Maybe TaskList
    , defaultTaskPriority : Maybe String
    , defaultTaskScheduleToStartTimeout : Maybe String
    , defaultTaskScheduleToCloseTimeout : Maybe String
    }


{-| undefined
-}
type alias RegisterDomainInput =
    { name : String
    , description : Maybe String
    , workflowExecutionRetentionPeriodInDays : String
    , tags : Maybe (List ResourceTag)
    }


{-| undefined
-}
type alias RegisterWorkflowTypeInput =
    { domain : String
    , name : String
    , version : String
    , description : Maybe String
    , defaultTaskStartToCloseTimeout : Maybe String
    , defaultExecutionStartToCloseTimeout : Maybe String
    , defaultTaskList : Maybe TaskList
    , defaultTaskPriority : Maybe String
    , defaultChildPolicy : Maybe ChildPolicy
    , defaultLambdaRole : Maybe String
    }


{-| undefined
-}
type alias RequestCancelWorkflowExecutionInput =
    { domain : String
    , workflowId : String
    , runId : Maybe String
    }


{-| undefined
-}
type alias RespondActivityTaskCanceledInput =
    { taskToken : String
    , details : Maybe String
    }


{-| undefined
-}
type alias RespondActivityTaskCompletedInput =
    { taskToken : String
    , result : Maybe String
    }


{-| undefined
-}
type alias RespondActivityTaskFailedInput =
    { taskToken : String
    , reason : Maybe String
    , details : Maybe String
    }


{-|

<p>Input data for a TaskCompleted response to a decision task.</p>

-}
type alias RespondDecisionTaskCompletedInput =
    { taskToken : String
    , decisions : Maybe (List Decision)
    , executionContext : Maybe String
    }


{-| undefined
-}
type alias SignalWorkflowExecutionInput =
    { domain : String
    , workflowId : String
    , runId : Maybe String
    , signalName : String
    , input : Maybe String
    }


{-| undefined
-}
type alias StartWorkflowExecutionInput =
    { domain : String
    , workflowId : String
    , workflowType : WorkflowType
    , taskList : Maybe TaskList
    , taskPriority : Maybe String
    , input : Maybe String
    , executionStartToCloseTimeout : Maybe String
    , tagList : Maybe (List String)
    , taskStartToCloseTimeout : Maybe String
    , childPolicy : Maybe ChildPolicy
    , lambdaRole : Maybe String
    }


{-| undefined
-}
type alias TagResourceInput =
    { resourceArn : String
    , tags : List ResourceTag
    }


{-| undefined
-}
type alias TerminateWorkflowExecutionInput =
    { domain : String
    , workflowId : String
    , runId : Maybe String
    , reason : Maybe String
    , details : Maybe String
    , childPolicy : Maybe ChildPolicy
    }


{-| undefined
-}
type alias UndeprecateActivityTypeInput =
    { domain : String
    , activityType : ActivityType
    }


{-| undefined
-}
type alias UndeprecateDomainInput =
    { name : String
    }


{-| undefined
-}
type alias UndeprecateWorkflowTypeInput =
    { domain : String
    , workflowType : WorkflowType
    }


{-| undefined
-}
type alias UntagResourceInput =
    { resourceArn : String
    , tagKeys : List String
    }


activityTaskEncoder : ActivityTask -> JE.Value
activityTaskEncoder data =
    []
        |> (::) ( "taskToken", data.taskToken |> JE.string )
        |> (::) ( "activityId", data.activityId |> JE.string )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> (::) ( "workflowExecution", data.workflowExecution |> workflowExecutionEncoder )
        |> (::) ( "activityType", data.activityType |> activityTypeEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> JE.object


activityTaskCancelRequestedEventAttributesEncoder : ActivityTaskCancelRequestedEventAttributes -> JE.Value
activityTaskCancelRequestedEventAttributesEncoder data =
    []
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> (::) ( "activityId", data.activityId |> JE.string )
        |> JE.object


activityTaskCanceledEventAttributesEncoder : ActivityTaskCanceledEventAttributes -> JE.Value
activityTaskCanceledEventAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> (::) ( "scheduledEventId", data.scheduledEventId |> JE.int )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "latestCancelRequestedEventId", data.latestCancelRequestedEventId )
        |> JE.object


activityTaskCompletedEventAttributesEncoder : ActivityTaskCompletedEventAttributes -> JE.Value
activityTaskCompletedEventAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "result", data.result )
        |> (::) ( "scheduledEventId", data.scheduledEventId |> JE.int )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> JE.object


activityTaskFailedEventAttributesEncoder : ActivityTaskFailedEventAttributes -> JE.Value
activityTaskFailedEventAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "reason", data.reason )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> (::) ( "scheduledEventId", data.scheduledEventId |> JE.int )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> JE.object


activityTaskScheduledEventAttributesEncoder : ActivityTaskScheduledEventAttributes -> JE.Value
activityTaskScheduledEventAttributesEncoder data =
    []
        |> (::) ( "activityType", data.activityType |> activityTypeEncoder )
        |> (::) ( "activityId", data.activityId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "scheduleToStartTimeout", data.scheduleToStartTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "scheduleToCloseTimeout", data.scheduleToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "startToCloseTimeout", data.startToCloseTimeout )
        |> (::) ( "taskList", data.taskList |> taskListEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskPriority", data.taskPriority )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "heartbeatTimeout", data.heartbeatTimeout )
        |> JE.object


activityTaskStartedEventAttributesEncoder : ActivityTaskStartedEventAttributes -> JE.Value
activityTaskStartedEventAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "identity", data.identity )
        |> (::) ( "scheduledEventId", data.scheduledEventId |> JE.int )
        |> JE.object


activityTaskStatusEncoder : ActivityTaskStatus -> JE.Value
activityTaskStatusEncoder data =
    []
        |> (::) ( "cancelRequested", data.cancelRequested |> JE.bool )
        |> JE.object


activityTaskTimedOutEventAttributesEncoder : ActivityTaskTimedOutEventAttributes -> JE.Value
activityTaskTimedOutEventAttributesEncoder data =
    []
        |> (::) ( "timeoutType", data.timeoutType |> (activityTaskTimeoutTypeToString >> JE.string) )
        |> (::) ( "scheduledEventId", data.scheduledEventId |> JE.int )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> JE.object


activityTypeEncoder : ActivityType -> JE.Value
activityTypeEncoder data =
    []
        |> (::) ( "name", data.name |> JE.string )
        |> (::) ( "version", data.version |> JE.string )
        |> JE.object


activityTypeConfigurationEncoder : ActivityTypeConfiguration -> JE.Value
activityTypeConfigurationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultTaskStartToCloseTimeout", data.defaultTaskStartToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultTaskHeartbeatTimeout", data.defaultTaskHeartbeatTimeout )
        |> AWS.Core.Encode.optionalMember
            taskListEncoder
            ( "defaultTaskList", data.defaultTaskList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultTaskPriority", data.defaultTaskPriority )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultTaskScheduleToStartTimeout", data.defaultTaskScheduleToStartTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultTaskScheduleToCloseTimeout", data.defaultTaskScheduleToCloseTimeout )
        |> JE.object


activityTypeDetailEncoder : ActivityTypeDetail -> JE.Value
activityTypeDetailEncoder data =
    []
        |> (::) ( "typeInfo", data.typeInfo |> activityTypeInfoEncoder )
        |> (::) ( "configuration", data.configuration |> activityTypeConfigurationEncoder )
        |> JE.object


activityTypeInfoEncoder : ActivityTypeInfo -> JE.Value
activityTypeInfoEncoder data =
    []
        |> (::) ( "activityType", data.activityType |> activityTypeEncoder )
        |> (::) ( "status", data.status |> (registrationStatusToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "description", data.description )
        |> (::) ( "creationDate", data.creationDate |> (Iso8601.fromTime >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "deprecationDate", data.deprecationDate )
        |> JE.object


activityTypeInfosEncoder : ActivityTypeInfos -> JE.Value
activityTypeInfosEncoder data =
    []
        |> (::) ( "typeInfos", data.typeInfos |> JE.list activityTypeInfoEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextPageToken", data.nextPageToken )
        |> JE.object


cancelTimerDecisionAttributesEncoder : CancelTimerDecisionAttributes -> JE.Value
cancelTimerDecisionAttributesEncoder data =
    []
        |> (::) ( "timerId", data.timerId |> JE.string )
        |> JE.object


cancelTimerFailedEventAttributesEncoder : CancelTimerFailedEventAttributes -> JE.Value
cancelTimerFailedEventAttributesEncoder data =
    []
        |> (::) ( "timerId", data.timerId |> JE.string )
        |> (::) ( "cause", data.cause |> (cancelTimerFailedCauseToString >> JE.string) )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


cancelWorkflowExecutionDecisionAttributesEncoder : CancelWorkflowExecutionDecisionAttributes -> JE.Value
cancelWorkflowExecutionDecisionAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> JE.object


cancelWorkflowExecutionFailedEventAttributesEncoder : CancelWorkflowExecutionFailedEventAttributes -> JE.Value
cancelWorkflowExecutionFailedEventAttributesEncoder data =
    []
        |> (::) ( "cause", data.cause |> (cancelWorkflowExecutionFailedCauseToString >> JE.string) )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


childWorkflowExecutionCanceledEventAttributesEncoder : ChildWorkflowExecutionCanceledEventAttributes -> JE.Value
childWorkflowExecutionCanceledEventAttributesEncoder data =
    []
        |> (::) ( "workflowExecution", data.workflowExecution |> workflowExecutionEncoder )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> (::) ( "initiatedEventId", data.initiatedEventId |> JE.int )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> JE.object


childWorkflowExecutionCompletedEventAttributesEncoder : ChildWorkflowExecutionCompletedEventAttributes -> JE.Value
childWorkflowExecutionCompletedEventAttributesEncoder data =
    []
        |> (::) ( "workflowExecution", data.workflowExecution |> workflowExecutionEncoder )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "result", data.result )
        |> (::) ( "initiatedEventId", data.initiatedEventId |> JE.int )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> JE.object


childWorkflowExecutionFailedEventAttributesEncoder : ChildWorkflowExecutionFailedEventAttributes -> JE.Value
childWorkflowExecutionFailedEventAttributesEncoder data =
    []
        |> (::) ( "workflowExecution", data.workflowExecution |> workflowExecutionEncoder )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "reason", data.reason )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> (::) ( "initiatedEventId", data.initiatedEventId |> JE.int )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> JE.object


childWorkflowExecutionStartedEventAttributesEncoder : ChildWorkflowExecutionStartedEventAttributes -> JE.Value
childWorkflowExecutionStartedEventAttributesEncoder data =
    []
        |> (::) ( "workflowExecution", data.workflowExecution |> workflowExecutionEncoder )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> (::) ( "initiatedEventId", data.initiatedEventId |> JE.int )
        |> JE.object


childWorkflowExecutionTerminatedEventAttributesEncoder : ChildWorkflowExecutionTerminatedEventAttributes -> JE.Value
childWorkflowExecutionTerminatedEventAttributesEncoder data =
    []
        |> (::) ( "workflowExecution", data.workflowExecution |> workflowExecutionEncoder )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> (::) ( "initiatedEventId", data.initiatedEventId |> JE.int )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> JE.object


childWorkflowExecutionTimedOutEventAttributesEncoder : ChildWorkflowExecutionTimedOutEventAttributes -> JE.Value
childWorkflowExecutionTimedOutEventAttributesEncoder data =
    []
        |> (::) ( "workflowExecution", data.workflowExecution |> workflowExecutionEncoder )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> (::) ( "timeoutType", data.timeoutType |> (workflowExecutionTimeoutTypeToString >> JE.string) )
        |> (::) ( "initiatedEventId", data.initiatedEventId |> JE.int )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> JE.object


closeStatusFilterEncoder : CloseStatusFilter -> JE.Value
closeStatusFilterEncoder data =
    []
        |> (::) ( "status", data.status |> (closeStatusToString >> JE.string) )
        |> JE.object


completeWorkflowExecutionDecisionAttributesEncoder : CompleteWorkflowExecutionDecisionAttributes -> JE.Value
completeWorkflowExecutionDecisionAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "result", data.result )
        |> JE.object


completeWorkflowExecutionFailedEventAttributesEncoder : CompleteWorkflowExecutionFailedEventAttributes -> JE.Value
completeWorkflowExecutionFailedEventAttributesEncoder data =
    []
        |> (::) ( "cause", data.cause |> (completeWorkflowExecutionFailedCauseToString >> JE.string) )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


continueAsNewWorkflowExecutionDecisionAttributesEncoder : ContinueAsNewWorkflowExecutionDecisionAttributes -> JE.Value
continueAsNewWorkflowExecutionDecisionAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "executionStartToCloseTimeout", data.executionStartToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            taskListEncoder
            ( "taskList", data.taskList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskPriority", data.taskPriority )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskStartToCloseTimeout", data.taskStartToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            (childPolicyToString >> JE.string)
            ( "childPolicy", data.childPolicy )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "tagList", data.tagList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "workflowTypeVersion", data.workflowTypeVersion )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lambdaRole", data.lambdaRole )
        |> JE.object


continueAsNewWorkflowExecutionFailedEventAttributesEncoder : ContinueAsNewWorkflowExecutionFailedEventAttributes -> JE.Value
continueAsNewWorkflowExecutionFailedEventAttributesEncoder data =
    []
        |> (::) ( "cause", data.cause |> (continueAsNewWorkflowExecutionFailedCauseToString >> JE.string) )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


countClosedWorkflowExecutionsInputEncoder : CountClosedWorkflowExecutionsInput -> JE.Value
countClosedWorkflowExecutionsInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> AWS.Core.Encode.optionalMember
            executionTimeFilterEncoder
            ( "startTimeFilter", data.startTimeFilter )
        |> AWS.Core.Encode.optionalMember
            executionTimeFilterEncoder
            ( "closeTimeFilter", data.closeTimeFilter )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionFilterEncoder
            ( "executionFilter", data.executionFilter )
        |> AWS.Core.Encode.optionalMember
            workflowTypeFilterEncoder
            ( "typeFilter", data.typeFilter )
        |> AWS.Core.Encode.optionalMember
            tagFilterEncoder
            ( "tagFilter", data.tagFilter )
        |> AWS.Core.Encode.optionalMember
            closeStatusFilterEncoder
            ( "closeStatusFilter", data.closeStatusFilter )
        |> JE.object


countOpenWorkflowExecutionsInputEncoder : CountOpenWorkflowExecutionsInput -> JE.Value
countOpenWorkflowExecutionsInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "startTimeFilter", data.startTimeFilter |> executionTimeFilterEncoder )
        |> AWS.Core.Encode.optionalMember
            workflowTypeFilterEncoder
            ( "typeFilter", data.typeFilter )
        |> AWS.Core.Encode.optionalMember
            tagFilterEncoder
            ( "tagFilter", data.tagFilter )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionFilterEncoder
            ( "executionFilter", data.executionFilter )
        |> JE.object


countPendingActivityTasksInputEncoder : CountPendingActivityTasksInput -> JE.Value
countPendingActivityTasksInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "taskList", data.taskList |> taskListEncoder )
        |> JE.object


countPendingDecisionTasksInputEncoder : CountPendingDecisionTasksInput -> JE.Value
countPendingDecisionTasksInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "taskList", data.taskList |> taskListEncoder )
        |> JE.object


decisionEncoder : Decision -> JE.Value
decisionEncoder data =
    []
        |> (::) ( "decisionType", data.decisionType |> (decisionTypeToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            scheduleActivityTaskDecisionAttributesEncoder
            ( "scheduleActivityTaskDecisionAttributes", data.scheduleActivityTaskDecisionAttributes )
        |> AWS.Core.Encode.optionalMember
            requestCancelActivityTaskDecisionAttributesEncoder
            ( "requestCancelActivityTaskDecisionAttributes", data.requestCancelActivityTaskDecisionAttributes )
        |> AWS.Core.Encode.optionalMember
            completeWorkflowExecutionDecisionAttributesEncoder
            ( "completeWorkflowExecutionDecisionAttributes", data.completeWorkflowExecutionDecisionAttributes )
        |> AWS.Core.Encode.optionalMember
            failWorkflowExecutionDecisionAttributesEncoder
            ( "failWorkflowExecutionDecisionAttributes", data.failWorkflowExecutionDecisionAttributes )
        |> AWS.Core.Encode.optionalMember
            cancelWorkflowExecutionDecisionAttributesEncoder
            ( "cancelWorkflowExecutionDecisionAttributes", data.cancelWorkflowExecutionDecisionAttributes )
        |> AWS.Core.Encode.optionalMember
            continueAsNewWorkflowExecutionDecisionAttributesEncoder
            ( "continueAsNewWorkflowExecutionDecisionAttributes", data.continueAsNewWorkflowExecutionDecisionAttributes )
        |> AWS.Core.Encode.optionalMember
            recordMarkerDecisionAttributesEncoder
            ( "recordMarkerDecisionAttributes", data.recordMarkerDecisionAttributes )
        |> AWS.Core.Encode.optionalMember
            startTimerDecisionAttributesEncoder
            ( "startTimerDecisionAttributes", data.startTimerDecisionAttributes )
        |> AWS.Core.Encode.optionalMember
            cancelTimerDecisionAttributesEncoder
            ( "cancelTimerDecisionAttributes", data.cancelTimerDecisionAttributes )
        |> AWS.Core.Encode.optionalMember
            signalExternalWorkflowExecutionDecisionAttributesEncoder
            ( "signalExternalWorkflowExecutionDecisionAttributes", data.signalExternalWorkflowExecutionDecisionAttributes )
        |> AWS.Core.Encode.optionalMember
            requestCancelExternalWorkflowExecutionDecisionAttributesEncoder
            ( "requestCancelExternalWorkflowExecutionDecisionAttributes", data.requestCancelExternalWorkflowExecutionDecisionAttributes )
        |> AWS.Core.Encode.optionalMember
            startChildWorkflowExecutionDecisionAttributesEncoder
            ( "startChildWorkflowExecutionDecisionAttributes", data.startChildWorkflowExecutionDecisionAttributes )
        |> AWS.Core.Encode.optionalMember
            scheduleLambdaFunctionDecisionAttributesEncoder
            ( "scheduleLambdaFunctionDecisionAttributes", data.scheduleLambdaFunctionDecisionAttributes )
        |> JE.object


decisionTaskEncoder : DecisionTask -> JE.Value
decisionTaskEncoder data =
    []
        |> (::) ( "taskToken", data.taskToken |> JE.string )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> (::) ( "workflowExecution", data.workflowExecution |> workflowExecutionEncoder )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> (::) ( "events", data.events |> JE.list historyEventEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextPageToken", data.nextPageToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "previousStartedEventId", data.previousStartedEventId )
        |> JE.object


decisionTaskCompletedEventAttributesEncoder : DecisionTaskCompletedEventAttributes -> JE.Value
decisionTaskCompletedEventAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "executionContext", data.executionContext )
        |> (::) ( "scheduledEventId", data.scheduledEventId |> JE.int )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> JE.object


decisionTaskScheduledEventAttributesEncoder : DecisionTaskScheduledEventAttributes -> JE.Value
decisionTaskScheduledEventAttributesEncoder data =
    []
        |> (::) ( "taskList", data.taskList |> taskListEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskPriority", data.taskPriority )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "startToCloseTimeout", data.startToCloseTimeout )
        |> JE.object


decisionTaskStartedEventAttributesEncoder : DecisionTaskStartedEventAttributes -> JE.Value
decisionTaskStartedEventAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "identity", data.identity )
        |> (::) ( "scheduledEventId", data.scheduledEventId |> JE.int )
        |> JE.object


decisionTaskTimedOutEventAttributesEncoder : DecisionTaskTimedOutEventAttributes -> JE.Value
decisionTaskTimedOutEventAttributesEncoder data =
    []
        |> (::) ( "timeoutType", data.timeoutType |> (decisionTaskTimeoutTypeToString >> JE.string) )
        |> (::) ( "scheduledEventId", data.scheduledEventId |> JE.int )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> JE.object


deprecateActivityTypeInputEncoder : DeprecateActivityTypeInput -> JE.Value
deprecateActivityTypeInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "activityType", data.activityType |> activityTypeEncoder )
        |> JE.object


deprecateDomainInputEncoder : DeprecateDomainInput -> JE.Value
deprecateDomainInputEncoder data =
    []
        |> (::) ( "name", data.name |> JE.string )
        |> JE.object


deprecateWorkflowTypeInputEncoder : DeprecateWorkflowTypeInput -> JE.Value
deprecateWorkflowTypeInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> JE.object


describeActivityTypeInputEncoder : DescribeActivityTypeInput -> JE.Value
describeActivityTypeInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "activityType", data.activityType |> activityTypeEncoder )
        |> JE.object


describeDomainInputEncoder : DescribeDomainInput -> JE.Value
describeDomainInputEncoder data =
    []
        |> (::) ( "name", data.name |> JE.string )
        |> JE.object


describeWorkflowExecutionInputEncoder : DescribeWorkflowExecutionInput -> JE.Value
describeWorkflowExecutionInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "execution", data.execution |> workflowExecutionEncoder )
        |> JE.object


describeWorkflowTypeInputEncoder : DescribeWorkflowTypeInput -> JE.Value
describeWorkflowTypeInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> JE.object


domainConfigurationEncoder : DomainConfiguration -> JE.Value
domainConfigurationEncoder data =
    []
        |> (::) ( "workflowExecutionRetentionPeriodInDays", data.workflowExecutionRetentionPeriodInDays |> JE.string )
        |> JE.object


domainDetailEncoder : DomainDetail -> JE.Value
domainDetailEncoder data =
    []
        |> (::) ( "domainInfo", data.domainInfo |> domainInfoEncoder )
        |> (::) ( "configuration", data.configuration |> domainConfigurationEncoder )
        |> JE.object


domainInfoEncoder : DomainInfo -> JE.Value
domainInfoEncoder data =
    []
        |> (::) ( "name", data.name |> JE.string )
        |> (::) ( "status", data.status |> (registrationStatusToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "description", data.description )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "arn", data.arn )
        |> JE.object


domainInfosEncoder : DomainInfos -> JE.Value
domainInfosEncoder data =
    []
        |> (::) ( "domainInfos", data.domainInfos |> JE.list domainInfoEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextPageToken", data.nextPageToken )
        |> JE.object


executionTimeFilterEncoder : ExecutionTimeFilter -> JE.Value
executionTimeFilterEncoder data =
    []
        |> (::) ( "oldestDate", data.oldestDate |> (Iso8601.fromTime >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "latestDate", data.latestDate )
        |> JE.object


externalWorkflowExecutionCancelRequestedEventAttributesEncoder : ExternalWorkflowExecutionCancelRequestedEventAttributes -> JE.Value
externalWorkflowExecutionCancelRequestedEventAttributesEncoder data =
    []
        |> (::) ( "workflowExecution", data.workflowExecution |> workflowExecutionEncoder )
        |> (::) ( "initiatedEventId", data.initiatedEventId |> JE.int )
        |> JE.object


externalWorkflowExecutionSignaledEventAttributesEncoder : ExternalWorkflowExecutionSignaledEventAttributes -> JE.Value
externalWorkflowExecutionSignaledEventAttributesEncoder data =
    []
        |> (::) ( "workflowExecution", data.workflowExecution |> workflowExecutionEncoder )
        |> (::) ( "initiatedEventId", data.initiatedEventId |> JE.int )
        |> JE.object


failWorkflowExecutionDecisionAttributesEncoder : FailWorkflowExecutionDecisionAttributes -> JE.Value
failWorkflowExecutionDecisionAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "reason", data.reason )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> JE.object


failWorkflowExecutionFailedEventAttributesEncoder : FailWorkflowExecutionFailedEventAttributes -> JE.Value
failWorkflowExecutionFailedEventAttributesEncoder data =
    []
        |> (::) ( "cause", data.cause |> (failWorkflowExecutionFailedCauseToString >> JE.string) )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


getWorkflowExecutionHistoryInputEncoder : GetWorkflowExecutionHistoryInput -> JE.Value
getWorkflowExecutionHistoryInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "execution", data.execution |> workflowExecutionEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextPageToken", data.nextPageToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "maximumPageSize", data.maximumPageSize )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "reverseOrder", data.reverseOrder )
        |> JE.object


historyEncoder : History -> JE.Value
historyEncoder data =
    []
        |> (::) ( "events", data.events |> JE.list historyEventEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextPageToken", data.nextPageToken )
        |> JE.object


historyEventEncoder : HistoryEvent -> JE.Value
historyEventEncoder data =
    []
        |> (::) ( "eventTimestamp", data.eventTimestamp |> (Iso8601.fromTime >> JE.string) )
        |> (::) ( "eventType", data.eventType |> (eventTypeToString >> JE.string) )
        |> (::) ( "eventId", data.eventId |> JE.int )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionStartedEventAttributesEncoder
            ( "workflowExecutionStartedEventAttributes", data.workflowExecutionStartedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionCompletedEventAttributesEncoder
            ( "workflowExecutionCompletedEventAttributes", data.workflowExecutionCompletedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            completeWorkflowExecutionFailedEventAttributesEncoder
            ( "completeWorkflowExecutionFailedEventAttributes", data.completeWorkflowExecutionFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionFailedEventAttributesEncoder
            ( "workflowExecutionFailedEventAttributes", data.workflowExecutionFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            failWorkflowExecutionFailedEventAttributesEncoder
            ( "failWorkflowExecutionFailedEventAttributes", data.failWorkflowExecutionFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionTimedOutEventAttributesEncoder
            ( "workflowExecutionTimedOutEventAttributes", data.workflowExecutionTimedOutEventAttributes )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionCanceledEventAttributesEncoder
            ( "workflowExecutionCanceledEventAttributes", data.workflowExecutionCanceledEventAttributes )
        |> AWS.Core.Encode.optionalMember
            cancelWorkflowExecutionFailedEventAttributesEncoder
            ( "cancelWorkflowExecutionFailedEventAttributes", data.cancelWorkflowExecutionFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionContinuedAsNewEventAttributesEncoder
            ( "workflowExecutionContinuedAsNewEventAttributes", data.workflowExecutionContinuedAsNewEventAttributes )
        |> AWS.Core.Encode.optionalMember
            continueAsNewWorkflowExecutionFailedEventAttributesEncoder
            ( "continueAsNewWorkflowExecutionFailedEventAttributes", data.continueAsNewWorkflowExecutionFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionTerminatedEventAttributesEncoder
            ( "workflowExecutionTerminatedEventAttributes", data.workflowExecutionTerminatedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionCancelRequestedEventAttributesEncoder
            ( "workflowExecutionCancelRequestedEventAttributes", data.workflowExecutionCancelRequestedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            decisionTaskScheduledEventAttributesEncoder
            ( "decisionTaskScheduledEventAttributes", data.decisionTaskScheduledEventAttributes )
        |> AWS.Core.Encode.optionalMember
            decisionTaskStartedEventAttributesEncoder
            ( "decisionTaskStartedEventAttributes", data.decisionTaskStartedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            decisionTaskCompletedEventAttributesEncoder
            ( "decisionTaskCompletedEventAttributes", data.decisionTaskCompletedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            decisionTaskTimedOutEventAttributesEncoder
            ( "decisionTaskTimedOutEventAttributes", data.decisionTaskTimedOutEventAttributes )
        |> AWS.Core.Encode.optionalMember
            activityTaskScheduledEventAttributesEncoder
            ( "activityTaskScheduledEventAttributes", data.activityTaskScheduledEventAttributes )
        |> AWS.Core.Encode.optionalMember
            activityTaskStartedEventAttributesEncoder
            ( "activityTaskStartedEventAttributes", data.activityTaskStartedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            activityTaskCompletedEventAttributesEncoder
            ( "activityTaskCompletedEventAttributes", data.activityTaskCompletedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            activityTaskFailedEventAttributesEncoder
            ( "activityTaskFailedEventAttributes", data.activityTaskFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            activityTaskTimedOutEventAttributesEncoder
            ( "activityTaskTimedOutEventAttributes", data.activityTaskTimedOutEventAttributes )
        |> AWS.Core.Encode.optionalMember
            activityTaskCanceledEventAttributesEncoder
            ( "activityTaskCanceledEventAttributes", data.activityTaskCanceledEventAttributes )
        |> AWS.Core.Encode.optionalMember
            activityTaskCancelRequestedEventAttributesEncoder
            ( "activityTaskCancelRequestedEventAttributes", data.activityTaskCancelRequestedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionSignaledEventAttributesEncoder
            ( "workflowExecutionSignaledEventAttributes", data.workflowExecutionSignaledEventAttributes )
        |> AWS.Core.Encode.optionalMember
            markerRecordedEventAttributesEncoder
            ( "markerRecordedEventAttributes", data.markerRecordedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            recordMarkerFailedEventAttributesEncoder
            ( "recordMarkerFailedEventAttributes", data.recordMarkerFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            timerStartedEventAttributesEncoder
            ( "timerStartedEventAttributes", data.timerStartedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            timerFiredEventAttributesEncoder
            ( "timerFiredEventAttributes", data.timerFiredEventAttributes )
        |> AWS.Core.Encode.optionalMember
            timerCanceledEventAttributesEncoder
            ( "timerCanceledEventAttributes", data.timerCanceledEventAttributes )
        |> AWS.Core.Encode.optionalMember
            startChildWorkflowExecutionInitiatedEventAttributesEncoder
            ( "startChildWorkflowExecutionInitiatedEventAttributes", data.startChildWorkflowExecutionInitiatedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            childWorkflowExecutionStartedEventAttributesEncoder
            ( "childWorkflowExecutionStartedEventAttributes", data.childWorkflowExecutionStartedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            childWorkflowExecutionCompletedEventAttributesEncoder
            ( "childWorkflowExecutionCompletedEventAttributes", data.childWorkflowExecutionCompletedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            childWorkflowExecutionFailedEventAttributesEncoder
            ( "childWorkflowExecutionFailedEventAttributes", data.childWorkflowExecutionFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            childWorkflowExecutionTimedOutEventAttributesEncoder
            ( "childWorkflowExecutionTimedOutEventAttributes", data.childWorkflowExecutionTimedOutEventAttributes )
        |> AWS.Core.Encode.optionalMember
            childWorkflowExecutionCanceledEventAttributesEncoder
            ( "childWorkflowExecutionCanceledEventAttributes", data.childWorkflowExecutionCanceledEventAttributes )
        |> AWS.Core.Encode.optionalMember
            childWorkflowExecutionTerminatedEventAttributesEncoder
            ( "childWorkflowExecutionTerminatedEventAttributes", data.childWorkflowExecutionTerminatedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            signalExternalWorkflowExecutionInitiatedEventAttributesEncoder
            ( "signalExternalWorkflowExecutionInitiatedEventAttributes", data.signalExternalWorkflowExecutionInitiatedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            externalWorkflowExecutionSignaledEventAttributesEncoder
            ( "externalWorkflowExecutionSignaledEventAttributes", data.externalWorkflowExecutionSignaledEventAttributes )
        |> AWS.Core.Encode.optionalMember
            signalExternalWorkflowExecutionFailedEventAttributesEncoder
            ( "signalExternalWorkflowExecutionFailedEventAttributes", data.signalExternalWorkflowExecutionFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            externalWorkflowExecutionCancelRequestedEventAttributesEncoder
            ( "externalWorkflowExecutionCancelRequestedEventAttributes", data.externalWorkflowExecutionCancelRequestedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            requestCancelExternalWorkflowExecutionInitiatedEventAttributesEncoder
            ( "requestCancelExternalWorkflowExecutionInitiatedEventAttributes", data.requestCancelExternalWorkflowExecutionInitiatedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            requestCancelExternalWorkflowExecutionFailedEventAttributesEncoder
            ( "requestCancelExternalWorkflowExecutionFailedEventAttributes", data.requestCancelExternalWorkflowExecutionFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            scheduleActivityTaskFailedEventAttributesEncoder
            ( "scheduleActivityTaskFailedEventAttributes", data.scheduleActivityTaskFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            requestCancelActivityTaskFailedEventAttributesEncoder
            ( "requestCancelActivityTaskFailedEventAttributes", data.requestCancelActivityTaskFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            startTimerFailedEventAttributesEncoder
            ( "startTimerFailedEventAttributes", data.startTimerFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            cancelTimerFailedEventAttributesEncoder
            ( "cancelTimerFailedEventAttributes", data.cancelTimerFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            startChildWorkflowExecutionFailedEventAttributesEncoder
            ( "startChildWorkflowExecutionFailedEventAttributes", data.startChildWorkflowExecutionFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            lambdaFunctionScheduledEventAttributesEncoder
            ( "lambdaFunctionScheduledEventAttributes", data.lambdaFunctionScheduledEventAttributes )
        |> AWS.Core.Encode.optionalMember
            lambdaFunctionStartedEventAttributesEncoder
            ( "lambdaFunctionStartedEventAttributes", data.lambdaFunctionStartedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            lambdaFunctionCompletedEventAttributesEncoder
            ( "lambdaFunctionCompletedEventAttributes", data.lambdaFunctionCompletedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            lambdaFunctionFailedEventAttributesEncoder
            ( "lambdaFunctionFailedEventAttributes", data.lambdaFunctionFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            lambdaFunctionTimedOutEventAttributesEncoder
            ( "lambdaFunctionTimedOutEventAttributes", data.lambdaFunctionTimedOutEventAttributes )
        |> AWS.Core.Encode.optionalMember
            scheduleLambdaFunctionFailedEventAttributesEncoder
            ( "scheduleLambdaFunctionFailedEventAttributes", data.scheduleLambdaFunctionFailedEventAttributes )
        |> AWS.Core.Encode.optionalMember
            startLambdaFunctionFailedEventAttributesEncoder
            ( "startLambdaFunctionFailedEventAttributes", data.startLambdaFunctionFailedEventAttributes )
        |> JE.object


lambdaFunctionCompletedEventAttributesEncoder : LambdaFunctionCompletedEventAttributes -> JE.Value
lambdaFunctionCompletedEventAttributesEncoder data =
    []
        |> (::) ( "scheduledEventId", data.scheduledEventId |> JE.int )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "result", data.result )
        |> JE.object


lambdaFunctionFailedEventAttributesEncoder : LambdaFunctionFailedEventAttributes -> JE.Value
lambdaFunctionFailedEventAttributesEncoder data =
    []
        |> (::) ( "scheduledEventId", data.scheduledEventId |> JE.int )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "reason", data.reason )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> JE.object


lambdaFunctionScheduledEventAttributesEncoder : LambdaFunctionScheduledEventAttributes -> JE.Value
lambdaFunctionScheduledEventAttributesEncoder data =
    []
        |> (::) ( "id", data.id |> JE.string )
        |> (::) ( "name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "startToCloseTimeout", data.startToCloseTimeout )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


lambdaFunctionStartedEventAttributesEncoder : LambdaFunctionStartedEventAttributes -> JE.Value
lambdaFunctionStartedEventAttributesEncoder data =
    []
        |> (::) ( "scheduledEventId", data.scheduledEventId |> JE.int )
        |> JE.object


lambdaFunctionTimedOutEventAttributesEncoder : LambdaFunctionTimedOutEventAttributes -> JE.Value
lambdaFunctionTimedOutEventAttributesEncoder data =
    []
        |> (::) ( "scheduledEventId", data.scheduledEventId |> JE.int )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> AWS.Core.Encode.optionalMember
            (lambdaFunctionTimeoutTypeToString >> JE.string)
            ( "timeoutType", data.timeoutType )
        |> JE.object


listActivityTypesInputEncoder : ListActivityTypesInput -> JE.Value
listActivityTypesInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "name", data.name )
        |> (::) ( "registrationStatus", data.registrationStatus |> (registrationStatusToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextPageToken", data.nextPageToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "maximumPageSize", data.maximumPageSize )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "reverseOrder", data.reverseOrder )
        |> JE.object


listClosedWorkflowExecutionsInputEncoder : ListClosedWorkflowExecutionsInput -> JE.Value
listClosedWorkflowExecutionsInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> AWS.Core.Encode.optionalMember
            executionTimeFilterEncoder
            ( "startTimeFilter", data.startTimeFilter )
        |> AWS.Core.Encode.optionalMember
            executionTimeFilterEncoder
            ( "closeTimeFilter", data.closeTimeFilter )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionFilterEncoder
            ( "executionFilter", data.executionFilter )
        |> AWS.Core.Encode.optionalMember
            closeStatusFilterEncoder
            ( "closeStatusFilter", data.closeStatusFilter )
        |> AWS.Core.Encode.optionalMember
            workflowTypeFilterEncoder
            ( "typeFilter", data.typeFilter )
        |> AWS.Core.Encode.optionalMember
            tagFilterEncoder
            ( "tagFilter", data.tagFilter )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextPageToken", data.nextPageToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "maximumPageSize", data.maximumPageSize )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "reverseOrder", data.reverseOrder )
        |> JE.object


listDomainsInputEncoder : ListDomainsInput -> JE.Value
listDomainsInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextPageToken", data.nextPageToken )
        |> (::) ( "registrationStatus", data.registrationStatus |> (registrationStatusToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "maximumPageSize", data.maximumPageSize )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "reverseOrder", data.reverseOrder )
        |> JE.object


listOpenWorkflowExecutionsInputEncoder : ListOpenWorkflowExecutionsInput -> JE.Value
listOpenWorkflowExecutionsInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "startTimeFilter", data.startTimeFilter |> executionTimeFilterEncoder )
        |> AWS.Core.Encode.optionalMember
            workflowTypeFilterEncoder
            ( "typeFilter", data.typeFilter )
        |> AWS.Core.Encode.optionalMember
            tagFilterEncoder
            ( "tagFilter", data.tagFilter )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextPageToken", data.nextPageToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "maximumPageSize", data.maximumPageSize )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "reverseOrder", data.reverseOrder )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionFilterEncoder
            ( "executionFilter", data.executionFilter )
        |> JE.object


listTagsForResourceInputEncoder : ListTagsForResourceInput -> JE.Value
listTagsForResourceInputEncoder data =
    []
        |> (::) ( "resourceArn", data.resourceArn |> JE.string )
        |> JE.object


listTagsForResourceOutputEncoder : ListTagsForResourceOutput -> JE.Value
listTagsForResourceOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list resourceTagEncoder)
            ( "tags", data.tags )
        |> JE.object


listWorkflowTypesInputEncoder : ListWorkflowTypesInput -> JE.Value
listWorkflowTypesInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "name", data.name )
        |> (::) ( "registrationStatus", data.registrationStatus |> (registrationStatusToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextPageToken", data.nextPageToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "maximumPageSize", data.maximumPageSize )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "reverseOrder", data.reverseOrder )
        |> JE.object


markerRecordedEventAttributesEncoder : MarkerRecordedEventAttributes -> JE.Value
markerRecordedEventAttributesEncoder data =
    []
        |> (::) ( "markerName", data.markerName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


pendingTaskCountEncoder : PendingTaskCount -> JE.Value
pendingTaskCountEncoder data =
    []
        |> (::) ( "count", data.count |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "truncated", data.truncated )
        |> JE.object


pollForActivityTaskInputEncoder : PollForActivityTaskInput -> JE.Value
pollForActivityTaskInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "taskList", data.taskList |> taskListEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "identity", data.identity )
        |> JE.object


pollForDecisionTaskInputEncoder : PollForDecisionTaskInput -> JE.Value
pollForDecisionTaskInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "taskList", data.taskList |> taskListEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "identity", data.identity )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextPageToken", data.nextPageToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "maximumPageSize", data.maximumPageSize )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "reverseOrder", data.reverseOrder )
        |> JE.object


recordActivityTaskHeartbeatInputEncoder : RecordActivityTaskHeartbeatInput -> JE.Value
recordActivityTaskHeartbeatInputEncoder data =
    []
        |> (::) ( "taskToken", data.taskToken |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> JE.object


recordMarkerDecisionAttributesEncoder : RecordMarkerDecisionAttributes -> JE.Value
recordMarkerDecisionAttributesEncoder data =
    []
        |> (::) ( "markerName", data.markerName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> JE.object


recordMarkerFailedEventAttributesEncoder : RecordMarkerFailedEventAttributes -> JE.Value
recordMarkerFailedEventAttributesEncoder data =
    []
        |> (::) ( "markerName", data.markerName |> JE.string )
        |> (::) ( "cause", data.cause |> (recordMarkerFailedCauseToString >> JE.string) )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


registerActivityTypeInputEncoder : RegisterActivityTypeInput -> JE.Value
registerActivityTypeInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "name", data.name |> JE.string )
        |> (::) ( "version", data.version |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "description", data.description )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultTaskStartToCloseTimeout", data.defaultTaskStartToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultTaskHeartbeatTimeout", data.defaultTaskHeartbeatTimeout )
        |> AWS.Core.Encode.optionalMember
            taskListEncoder
            ( "defaultTaskList", data.defaultTaskList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultTaskPriority", data.defaultTaskPriority )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultTaskScheduleToStartTimeout", data.defaultTaskScheduleToStartTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultTaskScheduleToCloseTimeout", data.defaultTaskScheduleToCloseTimeout )
        |> JE.object


registerDomainInputEncoder : RegisterDomainInput -> JE.Value
registerDomainInputEncoder data =
    []
        |> (::) ( "name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "description", data.description )
        |> (::) ( "workflowExecutionRetentionPeriodInDays", data.workflowExecutionRetentionPeriodInDays |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list resourceTagEncoder)
            ( "tags", data.tags )
        |> JE.object


registerWorkflowTypeInputEncoder : RegisterWorkflowTypeInput -> JE.Value
registerWorkflowTypeInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "name", data.name |> JE.string )
        |> (::) ( "version", data.version |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "description", data.description )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultTaskStartToCloseTimeout", data.defaultTaskStartToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultExecutionStartToCloseTimeout", data.defaultExecutionStartToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            taskListEncoder
            ( "defaultTaskList", data.defaultTaskList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultTaskPriority", data.defaultTaskPriority )
        |> AWS.Core.Encode.optionalMember
            (childPolicyToString >> JE.string)
            ( "defaultChildPolicy", data.defaultChildPolicy )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultLambdaRole", data.defaultLambdaRole )
        |> JE.object


requestCancelActivityTaskDecisionAttributesEncoder : RequestCancelActivityTaskDecisionAttributes -> JE.Value
requestCancelActivityTaskDecisionAttributesEncoder data =
    []
        |> (::) ( "activityId", data.activityId |> JE.string )
        |> JE.object


requestCancelActivityTaskFailedEventAttributesEncoder : RequestCancelActivityTaskFailedEventAttributes -> JE.Value
requestCancelActivityTaskFailedEventAttributesEncoder data =
    []
        |> (::) ( "activityId", data.activityId |> JE.string )
        |> (::) ( "cause", data.cause |> (requestCancelActivityTaskFailedCauseToString >> JE.string) )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


requestCancelExternalWorkflowExecutionDecisionAttributesEncoder : RequestCancelExternalWorkflowExecutionDecisionAttributes -> JE.Value
requestCancelExternalWorkflowExecutionDecisionAttributesEncoder data =
    []
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "runId", data.runId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> JE.object


requestCancelExternalWorkflowExecutionFailedEventAttributesEncoder : RequestCancelExternalWorkflowExecutionFailedEventAttributes -> JE.Value
requestCancelExternalWorkflowExecutionFailedEventAttributesEncoder data =
    []
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "runId", data.runId )
        |> (::) ( "cause", data.cause |> (requestCancelExternalWorkflowExecutionFailedCauseToString >> JE.string) )
        |> (::) ( "initiatedEventId", data.initiatedEventId |> JE.int )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> JE.object


requestCancelExternalWorkflowExecutionInitiatedEventAttributesEncoder : RequestCancelExternalWorkflowExecutionInitiatedEventAttributes -> JE.Value
requestCancelExternalWorkflowExecutionInitiatedEventAttributesEncoder data =
    []
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "runId", data.runId )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> JE.object


requestCancelWorkflowExecutionInputEncoder : RequestCancelWorkflowExecutionInput -> JE.Value
requestCancelWorkflowExecutionInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "runId", data.runId )
        |> JE.object


resourceTagEncoder : ResourceTag -> JE.Value
resourceTagEncoder data =
    []
        |> (::) ( "key", data.key |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "value", data.value )
        |> JE.object


respondActivityTaskCanceledInputEncoder : RespondActivityTaskCanceledInput -> JE.Value
respondActivityTaskCanceledInputEncoder data =
    []
        |> (::) ( "taskToken", data.taskToken |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> JE.object


respondActivityTaskCompletedInputEncoder : RespondActivityTaskCompletedInput -> JE.Value
respondActivityTaskCompletedInputEncoder data =
    []
        |> (::) ( "taskToken", data.taskToken |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "result", data.result )
        |> JE.object


respondActivityTaskFailedInputEncoder : RespondActivityTaskFailedInput -> JE.Value
respondActivityTaskFailedInputEncoder data =
    []
        |> (::) ( "taskToken", data.taskToken |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "reason", data.reason )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> JE.object


respondDecisionTaskCompletedInputEncoder : RespondDecisionTaskCompletedInput -> JE.Value
respondDecisionTaskCompletedInputEncoder data =
    []
        |> (::) ( "taskToken", data.taskToken |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list decisionEncoder)
            ( "decisions", data.decisions )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "executionContext", data.executionContext )
        |> JE.object


runEncoder : Run -> JE.Value
runEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "runId", data.runId )
        |> JE.object


scheduleActivityTaskDecisionAttributesEncoder : ScheduleActivityTaskDecisionAttributes -> JE.Value
scheduleActivityTaskDecisionAttributesEncoder data =
    []
        |> (::) ( "activityType", data.activityType |> activityTypeEncoder )
        |> (::) ( "activityId", data.activityId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "scheduleToCloseTimeout", data.scheduleToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            taskListEncoder
            ( "taskList", data.taskList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskPriority", data.taskPriority )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "scheduleToStartTimeout", data.scheduleToStartTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "startToCloseTimeout", data.startToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "heartbeatTimeout", data.heartbeatTimeout )
        |> JE.object


scheduleActivityTaskFailedEventAttributesEncoder : ScheduleActivityTaskFailedEventAttributes -> JE.Value
scheduleActivityTaskFailedEventAttributesEncoder data =
    []
        |> (::) ( "activityType", data.activityType |> activityTypeEncoder )
        |> (::) ( "activityId", data.activityId |> JE.string )
        |> (::) ( "cause", data.cause |> (scheduleActivityTaskFailedCauseToString >> JE.string) )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


scheduleLambdaFunctionDecisionAttributesEncoder : ScheduleLambdaFunctionDecisionAttributes -> JE.Value
scheduleLambdaFunctionDecisionAttributesEncoder data =
    []
        |> (::) ( "id", data.id |> JE.string )
        |> (::) ( "name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "startToCloseTimeout", data.startToCloseTimeout )
        |> JE.object


scheduleLambdaFunctionFailedEventAttributesEncoder : ScheduleLambdaFunctionFailedEventAttributes -> JE.Value
scheduleLambdaFunctionFailedEventAttributesEncoder data =
    []
        |> (::) ( "id", data.id |> JE.string )
        |> (::) ( "name", data.name |> JE.string )
        |> (::) ( "cause", data.cause |> (scheduleLambdaFunctionFailedCauseToString >> JE.string) )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


signalExternalWorkflowExecutionDecisionAttributesEncoder : SignalExternalWorkflowExecutionDecisionAttributes -> JE.Value
signalExternalWorkflowExecutionDecisionAttributesEncoder data =
    []
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "runId", data.runId )
        |> (::) ( "signalName", data.signalName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> JE.object


signalExternalWorkflowExecutionFailedEventAttributesEncoder : SignalExternalWorkflowExecutionFailedEventAttributes -> JE.Value
signalExternalWorkflowExecutionFailedEventAttributesEncoder data =
    []
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "runId", data.runId )
        |> (::) ( "cause", data.cause |> (signalExternalWorkflowExecutionFailedCauseToString >> JE.string) )
        |> (::) ( "initiatedEventId", data.initiatedEventId |> JE.int )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> JE.object


signalExternalWorkflowExecutionInitiatedEventAttributesEncoder : SignalExternalWorkflowExecutionInitiatedEventAttributes -> JE.Value
signalExternalWorkflowExecutionInitiatedEventAttributesEncoder data =
    []
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "runId", data.runId )
        |> (::) ( "signalName", data.signalName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> JE.object


signalWorkflowExecutionInputEncoder : SignalWorkflowExecutionInput -> JE.Value
signalWorkflowExecutionInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "runId", data.runId )
        |> (::) ( "signalName", data.signalName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> JE.object


startChildWorkflowExecutionDecisionAttributesEncoder : StartChildWorkflowExecutionDecisionAttributes -> JE.Value
startChildWorkflowExecutionDecisionAttributesEncoder data =
    []
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "executionStartToCloseTimeout", data.executionStartToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            taskListEncoder
            ( "taskList", data.taskList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskPriority", data.taskPriority )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskStartToCloseTimeout", data.taskStartToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            (childPolicyToString >> JE.string)
            ( "childPolicy", data.childPolicy )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "tagList", data.tagList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lambdaRole", data.lambdaRole )
        |> JE.object


startChildWorkflowExecutionFailedEventAttributesEncoder : StartChildWorkflowExecutionFailedEventAttributes -> JE.Value
startChildWorkflowExecutionFailedEventAttributesEncoder data =
    []
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> (::) ( "cause", data.cause |> (startChildWorkflowExecutionFailedCauseToString >> JE.string) )
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> (::) ( "initiatedEventId", data.initiatedEventId |> JE.int )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> JE.object


startChildWorkflowExecutionInitiatedEventAttributesEncoder : StartChildWorkflowExecutionInitiatedEventAttributes -> JE.Value
startChildWorkflowExecutionInitiatedEventAttributesEncoder data =
    []
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "executionStartToCloseTimeout", data.executionStartToCloseTimeout )
        |> (::) ( "taskList", data.taskList |> taskListEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskPriority", data.taskPriority )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> (::) ( "childPolicy", data.childPolicy |> (childPolicyToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskStartToCloseTimeout", data.taskStartToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "tagList", data.tagList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lambdaRole", data.lambdaRole )
        |> JE.object


startLambdaFunctionFailedEventAttributesEncoder : StartLambdaFunctionFailedEventAttributes -> JE.Value
startLambdaFunctionFailedEventAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "scheduledEventId", data.scheduledEventId )
        |> AWS.Core.Encode.optionalMember
            (startLambdaFunctionFailedCauseToString >> JE.string)
            ( "cause", data.cause )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "message", data.message )
        |> JE.object


startTimerDecisionAttributesEncoder : StartTimerDecisionAttributes -> JE.Value
startTimerDecisionAttributesEncoder data =
    []
        |> (::) ( "timerId", data.timerId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> (::) ( "startToFireTimeout", data.startToFireTimeout |> JE.string )
        |> JE.object


startTimerFailedEventAttributesEncoder : StartTimerFailedEventAttributes -> JE.Value
startTimerFailedEventAttributesEncoder data =
    []
        |> (::) ( "timerId", data.timerId |> JE.string )
        |> (::) ( "cause", data.cause |> (startTimerFailedCauseToString >> JE.string) )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


startWorkflowExecutionInputEncoder : StartWorkflowExecutionInput -> JE.Value
startWorkflowExecutionInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> AWS.Core.Encode.optionalMember
            taskListEncoder
            ( "taskList", data.taskList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskPriority", data.taskPriority )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "executionStartToCloseTimeout", data.executionStartToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "tagList", data.tagList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskStartToCloseTimeout", data.taskStartToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            (childPolicyToString >> JE.string)
            ( "childPolicy", data.childPolicy )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lambdaRole", data.lambdaRole )
        |> JE.object


tagFilterEncoder : TagFilter -> JE.Value
tagFilterEncoder data =
    []
        |> (::) ( "tag", data.tag |> JE.string )
        |> JE.object


tagResourceInputEncoder : TagResourceInput -> JE.Value
tagResourceInputEncoder data =
    []
        |> (::) ( "resourceArn", data.resourceArn |> JE.string )
        |> (::) ( "tags", data.tags |> JE.list resourceTagEncoder )
        |> JE.object


taskListEncoder : TaskList -> JE.Value
taskListEncoder data =
    []
        |> (::) ( "name", data.name |> JE.string )
        |> JE.object


terminateWorkflowExecutionInputEncoder : TerminateWorkflowExecutionInput -> JE.Value
terminateWorkflowExecutionInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "runId", data.runId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "reason", data.reason )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> AWS.Core.Encode.optionalMember
            (childPolicyToString >> JE.string)
            ( "childPolicy", data.childPolicy )
        |> JE.object


timerCanceledEventAttributesEncoder : TimerCanceledEventAttributes -> JE.Value
timerCanceledEventAttributesEncoder data =
    []
        |> (::) ( "timerId", data.timerId |> JE.string )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


timerFiredEventAttributesEncoder : TimerFiredEventAttributes -> JE.Value
timerFiredEventAttributesEncoder data =
    []
        |> (::) ( "timerId", data.timerId |> JE.string )
        |> (::) ( "startedEventId", data.startedEventId |> JE.int )
        |> JE.object


timerStartedEventAttributesEncoder : TimerStartedEventAttributes -> JE.Value
timerStartedEventAttributesEncoder data =
    []
        |> (::) ( "timerId", data.timerId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "control", data.control )
        |> (::) ( "startToFireTimeout", data.startToFireTimeout |> JE.string )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


undeprecateActivityTypeInputEncoder : UndeprecateActivityTypeInput -> JE.Value
undeprecateActivityTypeInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "activityType", data.activityType |> activityTypeEncoder )
        |> JE.object


undeprecateDomainInputEncoder : UndeprecateDomainInput -> JE.Value
undeprecateDomainInputEncoder data =
    []
        |> (::) ( "name", data.name |> JE.string )
        |> JE.object


undeprecateWorkflowTypeInputEncoder : UndeprecateWorkflowTypeInput -> JE.Value
undeprecateWorkflowTypeInputEncoder data =
    []
        |> (::) ( "domain", data.domain |> JE.string )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> JE.object


untagResourceInputEncoder : UntagResourceInput -> JE.Value
untagResourceInputEncoder data =
    []
        |> (::) ( "resourceArn", data.resourceArn |> JE.string )
        |> (::) ( "tagKeys", data.tagKeys |> JE.list JE.string )
        |> JE.object


workflowExecutionEncoder : WorkflowExecution -> JE.Value
workflowExecutionEncoder data =
    []
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> (::) ( "runId", data.runId |> JE.string )
        |> JE.object


workflowExecutionCancelRequestedEventAttributesEncoder : WorkflowExecutionCancelRequestedEventAttributes -> JE.Value
workflowExecutionCancelRequestedEventAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            workflowExecutionEncoder
            ( "externalWorkflowExecution", data.externalWorkflowExecution )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "externalInitiatedEventId", data.externalInitiatedEventId )
        |> AWS.Core.Encode.optionalMember
            (workflowExecutionCancelRequestedCauseToString >> JE.string)
            ( "cause", data.cause )
        |> JE.object


workflowExecutionCanceledEventAttributesEncoder : WorkflowExecutionCanceledEventAttributes -> JE.Value
workflowExecutionCanceledEventAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


workflowExecutionCompletedEventAttributesEncoder : WorkflowExecutionCompletedEventAttributes -> JE.Value
workflowExecutionCompletedEventAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "result", data.result )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


workflowExecutionConfigurationEncoder : WorkflowExecutionConfiguration -> JE.Value
workflowExecutionConfigurationEncoder data =
    []
        |> (::) ( "taskStartToCloseTimeout", data.taskStartToCloseTimeout |> JE.string )
        |> (::) ( "executionStartToCloseTimeout", data.executionStartToCloseTimeout |> JE.string )
        |> (::) ( "taskList", data.taskList |> taskListEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskPriority", data.taskPriority )
        |> (::) ( "childPolicy", data.childPolicy |> (childPolicyToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lambdaRole", data.lambdaRole )
        |> JE.object


workflowExecutionContinuedAsNewEventAttributesEncoder : WorkflowExecutionContinuedAsNewEventAttributes -> JE.Value
workflowExecutionContinuedAsNewEventAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> (::) ( "newExecutionRunId", data.newExecutionRunId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "executionStartToCloseTimeout", data.executionStartToCloseTimeout )
        |> (::) ( "taskList", data.taskList |> taskListEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskPriority", data.taskPriority )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskStartToCloseTimeout", data.taskStartToCloseTimeout )
        |> (::) ( "childPolicy", data.childPolicy |> (childPolicyToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "tagList", data.tagList )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lambdaRole", data.lambdaRole )
        |> JE.object


workflowExecutionCountEncoder : WorkflowExecutionCount -> JE.Value
workflowExecutionCountEncoder data =
    []
        |> (::) ( "count", data.count |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "truncated", data.truncated )
        |> JE.object


workflowExecutionDetailEncoder : WorkflowExecutionDetail -> JE.Value
workflowExecutionDetailEncoder data =
    []
        |> (::) ( "executionInfo", data.executionInfo |> workflowExecutionInfoEncoder )
        |> (::) ( "executionConfiguration", data.executionConfiguration |> workflowExecutionConfigurationEncoder )
        |> (::) ( "openCounts", data.openCounts |> workflowExecutionOpenCountsEncoder )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "latestActivityTaskTimestamp", data.latestActivityTaskTimestamp )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "latestExecutionContext", data.latestExecutionContext )
        |> JE.object


workflowExecutionFailedEventAttributesEncoder : WorkflowExecutionFailedEventAttributes -> JE.Value
workflowExecutionFailedEventAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "reason", data.reason )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> (::) ( "decisionTaskCompletedEventId", data.decisionTaskCompletedEventId |> JE.int )
        |> JE.object


workflowExecutionFilterEncoder : WorkflowExecutionFilter -> JE.Value
workflowExecutionFilterEncoder data =
    []
        |> (::) ( "workflowId", data.workflowId |> JE.string )
        |> JE.object


workflowExecutionInfoEncoder : WorkflowExecutionInfo -> JE.Value
workflowExecutionInfoEncoder data =
    []
        |> (::) ( "execution", data.execution |> workflowExecutionEncoder )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> (::) ( "startTimestamp", data.startTimestamp |> (Iso8601.fromTime >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "closeTimestamp", data.closeTimestamp )
        |> (::) ( "executionStatus", data.executionStatus |> (executionStatusToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            (closeStatusToString >> JE.string)
            ( "closeStatus", data.closeStatus )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionEncoder
            ( "parent", data.parent )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "tagList", data.tagList )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "cancelRequested", data.cancelRequested )
        |> JE.object


workflowExecutionInfosEncoder : WorkflowExecutionInfos -> JE.Value
workflowExecutionInfosEncoder data =
    []
        |> (::) ( "executionInfos", data.executionInfos |> JE.list workflowExecutionInfoEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextPageToken", data.nextPageToken )
        |> JE.object


workflowExecutionOpenCountsEncoder : WorkflowExecutionOpenCounts -> JE.Value
workflowExecutionOpenCountsEncoder data =
    []
        |> (::) ( "openActivityTasks", data.openActivityTasks |> JE.int )
        |> (::) ( "openDecisionTasks", data.openDecisionTasks |> JE.int )
        |> (::) ( "openTimers", data.openTimers |> JE.int )
        |> (::) ( "openChildWorkflowExecutions", data.openChildWorkflowExecutions |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "openLambdaFunctions", data.openLambdaFunctions )
        |> JE.object


workflowExecutionSignaledEventAttributesEncoder : WorkflowExecutionSignaledEventAttributes -> JE.Value
workflowExecutionSignaledEventAttributesEncoder data =
    []
        |> (::) ( "signalName", data.signalName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionEncoder
            ( "externalWorkflowExecution", data.externalWorkflowExecution )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "externalInitiatedEventId", data.externalInitiatedEventId )
        |> JE.object


workflowExecutionStartedEventAttributesEncoder : WorkflowExecutionStartedEventAttributes -> JE.Value
workflowExecutionStartedEventAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "input", data.input )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "executionStartToCloseTimeout", data.executionStartToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskStartToCloseTimeout", data.taskStartToCloseTimeout )
        |> (::) ( "childPolicy", data.childPolicy |> (childPolicyToString >> JE.string) )
        |> (::) ( "taskList", data.taskList |> taskListEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "taskPriority", data.taskPriority )
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "tagList", data.tagList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "continuedExecutionRunId", data.continuedExecutionRunId )
        |> AWS.Core.Encode.optionalMember
            workflowExecutionEncoder
            ( "parentWorkflowExecution", data.parentWorkflowExecution )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "parentInitiatedEventId", data.parentInitiatedEventId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "lambdaRole", data.lambdaRole )
        |> JE.object


workflowExecutionTerminatedEventAttributesEncoder : WorkflowExecutionTerminatedEventAttributes -> JE.Value
workflowExecutionTerminatedEventAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "reason", data.reason )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "details", data.details )
        |> (::) ( "childPolicy", data.childPolicy |> (childPolicyToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            (workflowExecutionTerminatedCauseToString >> JE.string)
            ( "cause", data.cause )
        |> JE.object


workflowExecutionTimedOutEventAttributesEncoder : WorkflowExecutionTimedOutEventAttributes -> JE.Value
workflowExecutionTimedOutEventAttributesEncoder data =
    []
        |> (::) ( "timeoutType", data.timeoutType |> (workflowExecutionTimeoutTypeToString >> JE.string) )
        |> (::) ( "childPolicy", data.childPolicy |> (childPolicyToString >> JE.string) )
        |> JE.object


workflowTypeEncoder : WorkflowType -> JE.Value
workflowTypeEncoder data =
    []
        |> (::) ( "name", data.name |> JE.string )
        |> (::) ( "version", data.version |> JE.string )
        |> JE.object


workflowTypeConfigurationEncoder : WorkflowTypeConfiguration -> JE.Value
workflowTypeConfigurationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultTaskStartToCloseTimeout", data.defaultTaskStartToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultExecutionStartToCloseTimeout", data.defaultExecutionStartToCloseTimeout )
        |> AWS.Core.Encode.optionalMember
            taskListEncoder
            ( "defaultTaskList", data.defaultTaskList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultTaskPriority", data.defaultTaskPriority )
        |> AWS.Core.Encode.optionalMember
            (childPolicyToString >> JE.string)
            ( "defaultChildPolicy", data.defaultChildPolicy )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "defaultLambdaRole", data.defaultLambdaRole )
        |> JE.object


workflowTypeDetailEncoder : WorkflowTypeDetail -> JE.Value
workflowTypeDetailEncoder data =
    []
        |> (::) ( "typeInfo", data.typeInfo |> workflowTypeInfoEncoder )
        |> (::) ( "configuration", data.configuration |> workflowTypeConfigurationEncoder )
        |> JE.object


workflowTypeFilterEncoder : WorkflowTypeFilter -> JE.Value
workflowTypeFilterEncoder data =
    []
        |> (::) ( "name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "version", data.version )
        |> JE.object


workflowTypeInfoEncoder : WorkflowTypeInfo -> JE.Value
workflowTypeInfoEncoder data =
    []
        |> (::) ( "workflowType", data.workflowType |> workflowTypeEncoder )
        |> (::) ( "status", data.status |> (registrationStatusToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "description", data.description )
        |> (::) ( "creationDate", data.creationDate |> (Iso8601.fromTime >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "deprecationDate", data.deprecationDate )
        |> JE.object


workflowTypeInfosEncoder : WorkflowTypeInfos -> JE.Value
workflowTypeInfosEncoder data =
    []
        |> (::) ( "typeInfos", data.typeInfos |> JE.list workflowTypeInfoEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "nextPageToken", data.nextPageToken )
        |> JE.object
