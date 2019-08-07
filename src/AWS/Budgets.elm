module AWS.Budgets
    exposing
        ( service
        , createBudget
        , CreateBudgetOptions
        , createNotification
        , createSubscriber
        , deleteBudget
        , deleteNotification
        , deleteSubscriber
        , describeBudget
        , describeBudgetPerformanceHistory
        , DescribeBudgetPerformanceHistoryOptions
        , describeBudgets
        , DescribeBudgetsOptions
        , describeNotificationsForBudget
        , DescribeNotificationsForBudgetOptions
        , describeSubscribersForNotification
        , DescribeSubscribersForNotificationOptions
        , updateBudget
        , updateNotification
        , updateSubscriber
        , Budget
        , BudgetPerformanceHistory
        , BudgetType(..)
        , BudgetedAndActualAmounts
        , CalculatedSpend
        , ComparisonOperator(..)
        , CostTypes
        , CreateBudgetResponse
        , CreateNotificationResponse
        , CreateSubscriberResponse
        , DeleteBudgetResponse
        , DeleteNotificationResponse
        , DeleteSubscriberResponse
        , DescribeBudgetPerformanceHistoryResponse
        , DescribeBudgetResponse
        , DescribeBudgetsResponse
        , DescribeNotificationsForBudgetResponse
        , DescribeSubscribersForNotificationResponse
        , Notification
        , NotificationState(..)
        , NotificationType(..)
        , NotificationWithSubscribers
        , Spend
        , Subscriber
        , SubscriptionType(..)
        , ThresholdType(..)
        , TimePeriod
        , TimeUnit(..)
        , UpdateBudgetResponse
        , UpdateNotificationResponse
        , UpdateSubscriberResponse
        )

{-| <p>The AWS Budgets API enables you to use AWS Budgets to plan your service usage, service costs, and instance reservations. The API reference provides descriptions, syntax, and usage examples for each of the actions and data types for AWS Budgets. </p> <p>Budgets provide you with a way to see the following information:</p> <ul> <li> <p>How close your plan is to your budgeted amount or to the free tier limits</p> </li> <li> <p>Your usage-to-date, including how much you've used of your Reserved Instances (RIs)</p> </li> <li> <p>Your current estimated charges from AWS, and how much your predicted usage will accrue in charges by the end of the month</p> </li> <li> <p>How much of your budget has been used</p> </li> </ul> <p>AWS updates your budget status several times a day. Budgets track your unblended costs, subscriptions, refunds, and RIs. You can create the following types of budgets:</p> <ul> <li> <p> <b>Cost budgets</b> - Plan how much you want to spend on a service.</p> </li> <li> <p> <b>Usage budgets</b> - Plan how much you want to use one or more services.</p> </li> <li> <p> <b>RI utilization budgets</b> - Define a utilization threshold, and receive alerts when your RI usage falls below that threshold. This lets you see if your RIs are unused or under-utilized.</p> </li> <li> <p> <b>RI coverage budgets</b> - Define a coverage threshold, and receive alerts when the number of your instance hours that are covered by RIs fall below that threshold. This lets you see how much of your instance usage is covered by a reservation.</p> </li> </ul> <p>Service Endpoint</p> <p>The AWS Budgets API provides the following endpoint:</p> <ul> <li> <p>https://budgets.amazonaws.com</p> </li> </ul> <p>For information about costs that are associated with the AWS Budgets API, see <a href="https://aws.amazon.com/aws-cost-management/pricing/">AWS Cost Management Pricing</a>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [createBudget](#createBudget)
* [CreateBudgetOptions](#CreateBudgetOptions)
* [createNotification](#createNotification)
* [createSubscriber](#createSubscriber)
* [deleteBudget](#deleteBudget)
* [deleteNotification](#deleteNotification)
* [deleteSubscriber](#deleteSubscriber)
* [describeBudget](#describeBudget)
* [describeBudgetPerformanceHistory](#describeBudgetPerformanceHistory)
* [DescribeBudgetPerformanceHistoryOptions](#DescribeBudgetPerformanceHistoryOptions)
* [describeBudgets](#describeBudgets)
* [DescribeBudgetsOptions](#DescribeBudgetsOptions)
* [describeNotificationsForBudget](#describeNotificationsForBudget)
* [DescribeNotificationsForBudgetOptions](#DescribeNotificationsForBudgetOptions)
* [describeSubscribersForNotification](#describeSubscribersForNotification)
* [DescribeSubscribersForNotificationOptions](#DescribeSubscribersForNotificationOptions)
* [updateBudget](#updateBudget)
* [updateNotification](#updateNotification)
* [updateSubscriber](#updateSubscriber)


@docs createBudget,CreateBudgetOptions,createNotification,createSubscriber,deleteBudget,deleteNotification,deleteSubscriber,describeBudget,describeBudgetPerformanceHistory,DescribeBudgetPerformanceHistoryOptions,describeBudgets,DescribeBudgetsOptions,describeNotificationsForBudget,DescribeNotificationsForBudgetOptions,describeSubscribersForNotification,DescribeSubscribersForNotificationOptions,updateBudget,updateNotification,updateSubscriber

## Responses

* [CreateBudgetResponse](#CreateBudgetResponse)
* [CreateNotificationResponse](#CreateNotificationResponse)
* [CreateSubscriberResponse](#CreateSubscriberResponse)
* [DeleteBudgetResponse](#DeleteBudgetResponse)
* [DeleteNotificationResponse](#DeleteNotificationResponse)
* [DeleteSubscriberResponse](#DeleteSubscriberResponse)
* [DescribeBudgetPerformanceHistoryResponse](#DescribeBudgetPerformanceHistoryResponse)
* [DescribeBudgetResponse](#DescribeBudgetResponse)
* [DescribeBudgetsResponse](#DescribeBudgetsResponse)
* [DescribeNotificationsForBudgetResponse](#DescribeNotificationsForBudgetResponse)
* [DescribeSubscribersForNotificationResponse](#DescribeSubscribersForNotificationResponse)
* [UpdateBudgetResponse](#UpdateBudgetResponse)
* [UpdateNotificationResponse](#UpdateNotificationResponse)
* [UpdateSubscriberResponse](#UpdateSubscriberResponse)


@docs CreateBudgetResponse,CreateNotificationResponse,CreateSubscriberResponse,DeleteBudgetResponse,DeleteNotificationResponse,DeleteSubscriberResponse,DescribeBudgetPerformanceHistoryResponse,DescribeBudgetResponse,DescribeBudgetsResponse,DescribeNotificationsForBudgetResponse,DescribeSubscribersForNotificationResponse,UpdateBudgetResponse,UpdateNotificationResponse,UpdateSubscriberResponse

## Records

* [Budget](#Budget)
* [BudgetPerformanceHistory](#BudgetPerformanceHistory)
* [BudgetedAndActualAmounts](#BudgetedAndActualAmounts)
* [CalculatedSpend](#CalculatedSpend)
* [CostTypes](#CostTypes)
* [Notification](#Notification)
* [NotificationWithSubscribers](#NotificationWithSubscribers)
* [Spend](#Spend)
* [Subscriber](#Subscriber)
* [TimePeriod](#TimePeriod)


@docs Budget,BudgetPerformanceHistory,BudgetedAndActualAmounts,CalculatedSpend,CostTypes,Notification,NotificationWithSubscribers,Spend,Subscriber,TimePeriod

## Unions

* [BudgetType](#BudgetType)
* [ComparisonOperator](#ComparisonOperator)
* [NotificationState](#NotificationState)
* [NotificationType](#NotificationType)
* [SubscriptionType](#SubscriptionType)
* [ThresholdType](#ThresholdType)
* [TimeUnit](#TimeUnit)


@docs BudgetType,ComparisonOperator,NotificationState,NotificationType,SubscriptionType,ThresholdType,TimeUnit

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
        "budgets"
        "2016-10-20"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWSBudgetServiceGateway")



-- OPERATIONS

{-| <p>Creates a budget and, if included, notifications and subscribers. </p> <important> <p>Only one of <code>BudgetLimit</code> or <code>PlannedBudgetLimits</code> can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_CreateBudget.html#API_CreateBudget_Examples">Examples</a> section. </p> </important>

__Required Parameters__

* `accountId` __:__ `String`
* `budget` __:__ `Budget`


-}

createBudget :
  
    String ->
  
    Budget ->
  
  
    ( CreateBudgetOptions -> CreateBudgetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateBudgetResponse)

createBudget accountId budget setOptions =
    
    let
        requestInput = CreateBudgetRequest
            
            accountId
            
            budget
            
            options.notificationsWithSubscribers
            
        
        options = setOptions (CreateBudgetOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createBudgetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateBudget"
                
                (AWS.Core.Decode.ResultDecoder "CreateBudgetResponse" createBudgetResponseDecoder)
                
            )



{-| Options for a createBudget request
-}
type alias CreateBudgetOptions =
    {
    notificationsWithSubscribers : Maybe (List NotificationWithSubscribers)
    }



{-| <p>Creates a notification. You must create the budget before you create the associated notification.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`
* `notification` __:__ `Notification`
* `subscribers` __:__ `(List Subscriber)`


-}

createNotification :
  
    String ->
  
    String ->
  
    Notification ->
  
    (List Subscriber) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateNotificationResponse)

createNotification accountId budgetName notification subscribers =
    
    let
        requestInput = CreateNotificationRequest
            
            accountId
            
            budgetName
            
            notification
            
            subscribers
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createNotificationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateNotification"
                
                (AWS.Core.Decode.ResultDecoder "CreateNotificationResponse" createNotificationResponseDecoder)
                
            )





{-| <p>Creates a subscriber. You must create the associated budget and notification before you create the subscriber.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`
* `notification` __:__ `Notification`
* `subscriber` __:__ `Subscriber`


-}

createSubscriber :
  
    String ->
  
    String ->
  
    Notification ->
  
    Subscriber ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateSubscriberResponse)

createSubscriber accountId budgetName notification subscriber =
    
    let
        requestInput = CreateSubscriberRequest
            
            accountId
            
            budgetName
            
            notification
            
            subscriber
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createSubscriberRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateSubscriber"
                
                (AWS.Core.Decode.ResultDecoder "CreateSubscriberResponse" createSubscriberResponseDecoder)
                
            )





{-| <p>Deletes a budget. You can delete your budget at any time.</p> <important> <p>Deleting a budget also deletes the notifications and subscribers that are associated with that budget.</p> </important>

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`


-}

deleteBudget :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteBudgetResponse)

deleteBudget accountId budgetName =
    
    let
        requestInput = DeleteBudgetRequest
            
            accountId
            
            budgetName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteBudgetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteBudget"
                
                (AWS.Core.Decode.ResultDecoder "DeleteBudgetResponse" deleteBudgetResponseDecoder)
                
            )





{-| <p>Deletes a notification.</p> <important> <p>Deleting a notification also deletes the subscribers that are associated with the notification.</p> </important>

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`
* `notification` __:__ `Notification`


-}

deleteNotification :
  
    String ->
  
    String ->
  
    Notification ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteNotificationResponse)

deleteNotification accountId budgetName notification =
    
    let
        requestInput = DeleteNotificationRequest
            
            accountId
            
            budgetName
            
            notification
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteNotificationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteNotification"
                
                (AWS.Core.Decode.ResultDecoder "DeleteNotificationResponse" deleteNotificationResponseDecoder)
                
            )





{-| <p>Deletes a subscriber.</p> <important> <p>Deleting the last subscriber to a notification also deletes the notification.</p> </important>

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`
* `notification` __:__ `Notification`
* `subscriber` __:__ `Subscriber`


-}

deleteSubscriber :
  
    String ->
  
    String ->
  
    Notification ->
  
    Subscriber ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteSubscriberResponse)

deleteSubscriber accountId budgetName notification subscriber =
    
    let
        requestInput = DeleteSubscriberRequest
            
            accountId
            
            budgetName
            
            notification
            
            subscriber
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteSubscriberRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteSubscriber"
                
                (AWS.Core.Decode.ResultDecoder "DeleteSubscriberResponse" deleteSubscriberResponseDecoder)
                
            )





{-| <p>Describes a budget.</p> <important> <p>The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudget.html#API_DescribeBudget_Examples">Examples</a> section. </p> </important>

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`


-}

describeBudget :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeBudgetResponse)

describeBudget accountId budgetName =
    
    let
        requestInput = DescribeBudgetRequest
            
            accountId
            
            budgetName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeBudgetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeBudget"
                
                (AWS.Core.Decode.ResultDecoder "DescribeBudgetResponse" describeBudgetResponseDecoder)
                
            )





{-| <p>Describes the history for <code>DAILY</code>, <code>MONTHLY</code>, and <code>QUARTERLY</code> budgets. Budget history isn't available for <code>ANNUAL</code> budgets.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`


-}

describeBudgetPerformanceHistory :
  
    String ->
  
    String ->
  
  
    ( DescribeBudgetPerformanceHistoryOptions -> DescribeBudgetPerformanceHistoryOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeBudgetPerformanceHistoryResponse)

describeBudgetPerformanceHistory accountId budgetName setOptions =
    
    let
        requestInput = DescribeBudgetPerformanceHistoryRequest
            
            accountId
            
            budgetName
            
            options.timePeriod
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeBudgetPerformanceHistoryOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeBudgetPerformanceHistoryRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeBudgetPerformanceHistory"
                
                (AWS.Core.Decode.ResultDecoder "DescribeBudgetPerformanceHistoryResponse" describeBudgetPerformanceHistoryResponseDecoder)
                
            )



{-| Options for a describeBudgetPerformanceHistory request
-}
type alias DescribeBudgetPerformanceHistoryOptions =
    {
    timePeriod : Maybe TimePeriod,maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Lists the budgets that are associated with an account.</p> <important> <p>The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudgets.html#API_DescribeBudgets_Examples">Examples</a> section. </p> </important>

__Required Parameters__

* `accountId` __:__ `String`


-}

describeBudgets :
  
    String ->
  
  
    ( DescribeBudgetsOptions -> DescribeBudgetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeBudgetsResponse)

describeBudgets accountId setOptions =
    
    let
        requestInput = DescribeBudgetsRequest
            
            accountId
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeBudgetsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeBudgetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeBudgets"
                
                (AWS.Core.Decode.ResultDecoder "DescribeBudgetsResponse" describeBudgetsResponseDecoder)
                
            )



{-| Options for a describeBudgets request
-}
type alias DescribeBudgetsOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Lists the notifications that are associated with a budget.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`


-}

describeNotificationsForBudget :
  
    String ->
  
    String ->
  
  
    ( DescribeNotificationsForBudgetOptions -> DescribeNotificationsForBudgetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeNotificationsForBudgetResponse)

describeNotificationsForBudget accountId budgetName setOptions =
    
    let
        requestInput = DescribeNotificationsForBudgetRequest
            
            accountId
            
            budgetName
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeNotificationsForBudgetOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeNotificationsForBudgetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeNotificationsForBudget"
                
                (AWS.Core.Decode.ResultDecoder "DescribeNotificationsForBudgetResponse" describeNotificationsForBudgetResponseDecoder)
                
            )



{-| Options for a describeNotificationsForBudget request
-}
type alias DescribeNotificationsForBudgetOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Lists the subscribers that are associated with a notification.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`
* `notification` __:__ `Notification`


-}

describeSubscribersForNotification :
  
    String ->
  
    String ->
  
    Notification ->
  
  
    ( DescribeSubscribersForNotificationOptions -> DescribeSubscribersForNotificationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSubscribersForNotificationResponse)

describeSubscribersForNotification accountId budgetName notification setOptions =
    
    let
        requestInput = DescribeSubscribersForNotificationRequest
            
            accountId
            
            budgetName
            
            notification
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeSubscribersForNotificationOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeSubscribersForNotificationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeSubscribersForNotification"
                
                (AWS.Core.Decode.ResultDecoder "DescribeSubscribersForNotificationResponse" describeSubscribersForNotificationResponseDecoder)
                
            )



{-| Options for a describeSubscribersForNotification request
-}
type alias DescribeSubscribersForNotificationOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Updates a budget. You can change every part of a budget except for the <code>budgetName</code> and the <code>calculatedSpend</code>. When you modify a budget, the <code>calculatedSpend</code> drops to zero until AWS has new usage data to use for forecasting.</p> <important> <p>Only one of <code>BudgetLimit</code> or <code>PlannedBudgetLimits</code> can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_UpdateBudget.html#API_UpdateBudget_Examples">Examples</a> section. </p> </important>

__Required Parameters__

* `accountId` __:__ `String`
* `newBudget` __:__ `Budget`


-}

updateBudget :
  
    String ->
  
    Budget ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateBudgetResponse)

updateBudget accountId newBudget =
    
    let
        requestInput = UpdateBudgetRequest
            
            accountId
            
            newBudget
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateBudgetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateBudget"
                
                (AWS.Core.Decode.ResultDecoder "UpdateBudgetResponse" updateBudgetResponseDecoder)
                
            )





{-| <p>Updates a notification.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`
* `oldNotification` __:__ `Notification`
* `newNotification` __:__ `Notification`


-}

updateNotification :
  
    String ->
  
    String ->
  
    Notification ->
  
    Notification ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateNotificationResponse)

updateNotification accountId budgetName oldNotification newNotification =
    
    let
        requestInput = UpdateNotificationRequest
            
            accountId
            
            budgetName
            
            oldNotification
            
            newNotification
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateNotificationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateNotification"
                
                (AWS.Core.Decode.ResultDecoder "UpdateNotificationResponse" updateNotificationResponseDecoder)
                
            )





{-| <p>Updates a subscriber.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`
* `notification` __:__ `Notification`
* `oldSubscriber` __:__ `Subscriber`
* `newSubscriber` __:__ `Subscriber`


-}

updateSubscriber :
  
    String ->
  
    String ->
  
    Notification ->
  
    Subscriber ->
  
    Subscriber ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateSubscriberResponse)

updateSubscriber accountId budgetName notification oldSubscriber newSubscriber =
    
    let
        requestInput = UpdateSubscriberRequest
            
            accountId
            
            budgetName
            
            notification
            
            oldSubscriber
            
            newSubscriber
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateSubscriberRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateSubscriber"
                
                (AWS.Core.Decode.ResultDecoder "UpdateSubscriberResponse" updateSubscriberResponseDecoder)
                
            )






{-| <p>Represents the output of the <code>CreateBudget</code> operation. The content consists of the detailed metadata and data file information, and the current status of the <code>budget</code> object.</p> <p>This is the ARN pattern for a budget: </p> <p> <code>arn:aws:budgetservice::AccountId:budget/budgetName</code> </p>
-}
type alias Budget =
    { budgetName : String
    , budgetLimit : Maybe Spend
    , plannedBudgetLimits : Maybe (Dict String Spend)
    , costFilters : Maybe (Dict String (List String))
    , costTypes : Maybe CostTypes
    , timeUnit : TimeUnit
    , timePeriod : Maybe TimePeriod
    , calculatedSpend : Maybe CalculatedSpend
    , budgetType : BudgetType
    , lastUpdatedTime : Maybe Posix
    }



budgetDecoder : JD.Decoder Budget
budgetDecoder =
    JD.succeed Budget
        
        |> JDP.custom (AWS.Core.Decode.required
            ["BudgetName", "budgetName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BudgetLimit", "budgetLimit"]
            spendDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlannedBudgetLimits", "plannedBudgetLimits"]
            (AWS.Core.Decode.dict spendDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CostFilters", "costFilters"]
            (AWS.Core.Decode.dict (JD.list JD.string))
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CostTypes", "costTypes"]
            costTypesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TimeUnit", "timeUnit"]
            timeUnitDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimePeriod", "timePeriod"]
            timePeriodDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CalculatedSpend", "calculatedSpend"]
            calculatedSpendDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["BudgetType", "budgetType"]
            budgetTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdatedTime", "lastUpdatedTime"]
            JDX.datetime
        )
        




budgetToString : Budget -> String -- List (String, String)
budgetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "budgetName" "" -- val.budgetName
        
    --     |> Dict.insert
    --         "budgetLimit" "" -- val.budgetLimit
        
    --     |> Dict.insert
    --         "plannedBudgetLimits" "" -- val.plannedBudgetLimits
        
    --     |> Dict.insert
    --         "costFilters" "" -- val.costFilters
        
    --     |> Dict.insert
    --         "costTypes" "" -- val.costTypes
        
    --     |> Dict.insert
    --         "timeUnit" "" -- val.timeUnit
        
    --     |> Dict.insert
    --         "timePeriod" "" -- val.timePeriod
        
    --     |> Dict.insert
    --         "calculatedSpend" "" -- val.calculatedSpend
        
    --     |> Dict.insert
    --         "budgetType" "" -- val.budgetType
        
    --     |> Dict.insert
    --         "lastUpdatedTime" "" -- val.lastUpdatedTime
        
    --     |> Dict.toList
    ""



{-| <p>A history of the state of a budget at the end of the budget's specified time period.</p>
-}
type alias BudgetPerformanceHistory =
    { budgetName : Maybe String
    , budgetType : Maybe BudgetType
    , costFilters : Maybe (Dict String (List String))
    , costTypes : Maybe CostTypes
    , timeUnit : Maybe TimeUnit
    , budgetedAndActualAmountsList : Maybe (List BudgetedAndActualAmounts)
    }



budgetPerformanceHistoryDecoder : JD.Decoder BudgetPerformanceHistory
budgetPerformanceHistoryDecoder =
    JD.succeed BudgetPerformanceHistory
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BudgetName", "budgetName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BudgetType", "budgetType"]
            budgetTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CostFilters", "costFilters"]
            (AWS.Core.Decode.dict (JD.list JD.string))
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CostTypes", "costTypes"]
            costTypesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimeUnit", "timeUnit"]
            timeUnitDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BudgetedAndActualAmountsList", "budgetedAndActualAmountsList"]
            (JD.list budgetedAndActualAmountsDecoder)
        )
        




budgetPerformanceHistoryToString : BudgetPerformanceHistory -> String -- List (String, String)
budgetPerformanceHistoryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "budgetName" "" -- val.budgetName
        
    --     |> Dict.insert
    --         "budgetType" "" -- val.budgetType
        
    --     |> Dict.insert
    --         "costFilters" "" -- val.costFilters
        
    --     |> Dict.insert
    --         "costTypes" "" -- val.costTypes
        
    --     |> Dict.insert
    --         "timeUnit" "" -- val.timeUnit
        
    --     |> Dict.insert
    --         "budgetedAndActualAmountsList" "" -- val.budgetedAndActualAmountsList
        
    --     |> Dict.toList
    ""



{-| One of

* `BudgetType_USAGE`
* `BudgetType_COST`
* `BudgetType_RI_UTILIZATION`
* `BudgetType_RI_COVERAGE`

-}
type BudgetType
    = BudgetType_USAGE
    | BudgetType_COST
    | BudgetType_RI_UTILIZATION
    | BudgetType_RI_COVERAGE



budgetTypeDecoder : JD.Decoder BudgetType
budgetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "USAGE" ->
                        JD.succeed BudgetType_USAGE

                    "COST" ->
                        JD.succeed BudgetType_COST

                    "RI_UTILIZATION" ->
                        JD.succeed BudgetType_RI_UTILIZATION

                    "RI_COVERAGE" ->
                        JD.succeed BudgetType_RI_COVERAGE


                    _ ->
                        JD.fail "bad thing"
            )




budgetTypeToString : BudgetType -> String
budgetTypeToString val =
    case val of
        BudgetType_USAGE ->
            "USAGE"

        BudgetType_COST ->
            "COST"

        BudgetType_RI_UTILIZATION ->
            "RI_UTILIZATION"

        BudgetType_RI_COVERAGE ->
            "RI_COVERAGE"




{-| <p>The amount of cost or usage that you created the budget for, compared to your actual costs or usage.</p>
-}
type alias BudgetedAndActualAmounts =
    { budgetedAmount : Maybe Spend
    , actualAmount : Maybe Spend
    , timePeriod : Maybe TimePeriod
    }



budgetedAndActualAmountsDecoder : JD.Decoder BudgetedAndActualAmounts
budgetedAndActualAmountsDecoder =
    JD.succeed BudgetedAndActualAmounts
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BudgetedAmount", "budgetedAmount"]
            spendDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActualAmount", "actualAmount"]
            spendDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimePeriod", "timePeriod"]
            timePeriodDecoder
        )
        




budgetedAndActualAmountsToString : BudgetedAndActualAmounts -> String -- List (String, String)
budgetedAndActualAmountsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "budgetedAmount" "" -- val.budgetedAmount
        
    --     |> Dict.insert
    --         "actualAmount" "" -- val.actualAmount
        
    --     |> Dict.insert
    --         "timePeriod" "" -- val.timePeriod
        
    --     |> Dict.toList
    ""



{-| <p>The spend objects that are associated with this budget. The <code>actualSpend</code> tracks how much you've used, cost, usage, or RI units, and the <code>forecastedSpend</code> tracks how much you are predicted to spend if your current usage remains steady.</p> <p>For example, if it is the 20th of the month and you have spent <code>50</code> dollars on Amazon EC2, your <code>actualSpend</code> is <code>50 USD</code>, and your <code>forecastedSpend</code> is <code>75 USD</code>.</p>
-}
type alias CalculatedSpend =
    { actualSpend : Spend
    , forecastedSpend : Maybe Spend
    }



calculatedSpendDecoder : JD.Decoder CalculatedSpend
calculatedSpendDecoder =
    JD.succeed CalculatedSpend
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ActualSpend", "actualSpend"]
            spendDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ForecastedSpend", "forecastedSpend"]
            spendDecoder
        )
        




calculatedSpendToString : CalculatedSpend -> String -- List (String, String)
calculatedSpendToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "actualSpend" "" -- val.actualSpend
        
    --     |> Dict.insert
    --         "forecastedSpend" "" -- val.forecastedSpend
        
    --     |> Dict.toList
    ""



{-| One of

* `ComparisonOperator_GREATER_THAN`
* `ComparisonOperator_LESS_THAN`
* `ComparisonOperator_EQUAL_TO`

-}
type ComparisonOperator
    = ComparisonOperator_GREATER_THAN
    | ComparisonOperator_LESS_THAN
    | ComparisonOperator_EQUAL_TO



comparisonOperatorDecoder : JD.Decoder ComparisonOperator
comparisonOperatorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "GREATER_THAN" ->
                        JD.succeed ComparisonOperator_GREATER_THAN

                    "LESS_THAN" ->
                        JD.succeed ComparisonOperator_LESS_THAN

                    "EQUAL_TO" ->
                        JD.succeed ComparisonOperator_EQUAL_TO


                    _ ->
                        JD.fail "bad thing"
            )




comparisonOperatorToString : ComparisonOperator -> String
comparisonOperatorToString val =
    case val of
        ComparisonOperator_GREATER_THAN ->
            "GREATER_THAN"

        ComparisonOperator_LESS_THAN ->
            "LESS_THAN"

        ComparisonOperator_EQUAL_TO ->
            "EQUAL_TO"




{-| <p>The types of cost that are included in a <code>COST</code> budget, such as tax and subscriptions.</p> <p> <code>USAGE</code>, <code>RI_UTILIZATION</code>, and <code>RI_COVERAGE</code> budgets do not have <code>CostTypes</code>.</p>
-}
type alias CostTypes =
    { includeTax : Maybe Bool
    , includeSubscription : Maybe Bool
    , useBlended : Maybe Bool
    , includeRefund : Maybe Bool
    , includeCredit : Maybe Bool
    , includeUpfront : Maybe Bool
    , includeRecurring : Maybe Bool
    , includeOtherSubscription : Maybe Bool
    , includeSupport : Maybe Bool
    , includeDiscount : Maybe Bool
    , useAmortized : Maybe Bool
    }



costTypesDecoder : JD.Decoder CostTypes
costTypesDecoder =
    JD.succeed CostTypes
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IncludeTax", "includeTax"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IncludeSubscription", "includeSubscription"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UseBlended", "useBlended"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IncludeRefund", "includeRefund"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IncludeCredit", "includeCredit"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IncludeUpfront", "includeUpfront"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IncludeRecurring", "includeRecurring"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IncludeOtherSubscription", "includeOtherSubscription"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IncludeSupport", "includeSupport"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IncludeDiscount", "includeDiscount"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UseAmortized", "useAmortized"]
            JD.bool
        )
        




costTypesToString : CostTypes -> String -- List (String, String)
costTypesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "includeTax" "" -- val.includeTax
        
    --     |> Dict.insert
    --         "includeSubscription" "" -- val.includeSubscription
        
    --     |> Dict.insert
    --         "useBlended" "" -- val.useBlended
        
    --     |> Dict.insert
    --         "includeRefund" "" -- val.includeRefund
        
    --     |> Dict.insert
    --         "includeCredit" "" -- val.includeCredit
        
    --     |> Dict.insert
    --         "includeUpfront" "" -- val.includeUpfront
        
    --     |> Dict.insert
    --         "includeRecurring" "" -- val.includeRecurring
        
    --     |> Dict.insert
    --         "includeOtherSubscription" "" -- val.includeOtherSubscription
        
    --     |> Dict.insert
    --         "includeSupport" "" -- val.includeSupport
        
    --     |> Dict.insert
    --         "includeDiscount" "" -- val.includeDiscount
        
    --     |> Dict.insert
    --         "useAmortized" "" -- val.useAmortized
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createBudget
-}
type alias CreateBudgetResponse =
    { 
    }



createBudgetResponseDecoder : JD.Decoder CreateBudgetResponse
createBudgetResponseDecoder =
    JD.succeed CreateBudgetResponse
        




createBudgetResponseToString : CreateBudgetResponse -> String -- List (String, String)
createBudgetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createNotification
-}
type alias CreateNotificationResponse =
    { 
    }



createNotificationResponseDecoder : JD.Decoder CreateNotificationResponse
createNotificationResponseDecoder =
    JD.succeed CreateNotificationResponse
        




createNotificationResponseToString : CreateNotificationResponse -> String -- List (String, String)
createNotificationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createSubscriber
-}
type alias CreateSubscriberResponse =
    { 
    }



createSubscriberResponseDecoder : JD.Decoder CreateSubscriberResponse
createSubscriberResponseDecoder =
    JD.succeed CreateSubscriberResponse
        




createSubscriberResponseToString : CreateSubscriberResponse -> String -- List (String, String)
createSubscriberResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteBudget
-}
type alias DeleteBudgetResponse =
    { 
    }



deleteBudgetResponseDecoder : JD.Decoder DeleteBudgetResponse
deleteBudgetResponseDecoder =
    JD.succeed DeleteBudgetResponse
        




deleteBudgetResponseToString : DeleteBudgetResponse -> String -- List (String, String)
deleteBudgetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteNotification
-}
type alias DeleteNotificationResponse =
    { 
    }



deleteNotificationResponseDecoder : JD.Decoder DeleteNotificationResponse
deleteNotificationResponseDecoder =
    JD.succeed DeleteNotificationResponse
        




deleteNotificationResponseToString : DeleteNotificationResponse -> String -- List (String, String)
deleteNotificationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteSubscriber
-}
type alias DeleteSubscriberResponse =
    { 
    }



deleteSubscriberResponseDecoder : JD.Decoder DeleteSubscriberResponse
deleteSubscriberResponseDecoder =
    JD.succeed DeleteSubscriberResponse
        




deleteSubscriberResponseToString : DeleteSubscriberResponse -> String -- List (String, String)
deleteSubscriberResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeBudgetPerformanceHistory
-}
type alias DescribeBudgetPerformanceHistoryResponse =
    { budgetPerformanceHistory : Maybe BudgetPerformanceHistory
    , nextToken : Maybe String
    }



describeBudgetPerformanceHistoryResponseDecoder : JD.Decoder DescribeBudgetPerformanceHistoryResponse
describeBudgetPerformanceHistoryResponseDecoder =
    JD.succeed DescribeBudgetPerformanceHistoryResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BudgetPerformanceHistory", "budgetPerformanceHistory"]
            budgetPerformanceHistoryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeBudgetPerformanceHistoryResponseToString : DescribeBudgetPerformanceHistoryResponse -> String -- List (String, String)
describeBudgetPerformanceHistoryResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "budgetPerformanceHistory" "" -- val.budgetPerformanceHistory
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeBudget
-}
type alias DescribeBudgetResponse =
    { budget : Maybe Budget
    }



describeBudgetResponseDecoder : JD.Decoder DescribeBudgetResponse
describeBudgetResponseDecoder =
    JD.succeed DescribeBudgetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Budget", "budget"]
            budgetDecoder
        )
        




describeBudgetResponseToString : DescribeBudgetResponse -> String -- List (String, String)
describeBudgetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "budget" "" -- val.budget
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeBudgets
-}
type alias DescribeBudgetsResponse =
    { budgets : Maybe (List Budget)
    , nextToken : Maybe String
    }



describeBudgetsResponseDecoder : JD.Decoder DescribeBudgetsResponse
describeBudgetsResponseDecoder =
    JD.succeed DescribeBudgetsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Budgets", "budgets"]
            (JD.list budgetDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeBudgetsResponseToString : DescribeBudgetsResponse -> String -- List (String, String)
describeBudgetsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "budgets" "" -- val.budgets
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeNotificationsForBudget
-}
type alias DescribeNotificationsForBudgetResponse =
    { notifications : Maybe (List Notification)
    , nextToken : Maybe String
    }



describeNotificationsForBudgetResponseDecoder : JD.Decoder DescribeNotificationsForBudgetResponse
describeNotificationsForBudgetResponseDecoder =
    JD.succeed DescribeNotificationsForBudgetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Notifications", "notifications"]
            (JD.list notificationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeNotificationsForBudgetResponseToString : DescribeNotificationsForBudgetResponse -> String -- List (String, String)
describeNotificationsForBudgetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "notifications" "" -- val.notifications
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeSubscribersForNotification
-}
type alias DescribeSubscribersForNotificationResponse =
    { subscribers : Maybe (List Subscriber)
    , nextToken : Maybe String
    }



describeSubscribersForNotificationResponseDecoder : JD.Decoder DescribeSubscribersForNotificationResponse
describeSubscribersForNotificationResponseDecoder =
    JD.succeed DescribeSubscribersForNotificationResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Subscribers", "subscribers"]
            (JD.list subscriberDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeSubscribersForNotificationResponseToString : DescribeSubscribersForNotificationResponse -> String -- List (String, String)
describeSubscribersForNotificationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subscribers" "" -- val.subscribers
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>A notification that is associated with a budget. A budget can have up to five notifications. </p> <p>Each notification must have at least one subscriber. A notification can have one SNS subscriber and up to 10 email subscribers, for a total of 11 subscribers.</p> <p>For example, if you have a budget for 200 dollars and you want to be notified when you go over 160 dollars, create a notification with the following parameters:</p> <ul> <li> <p>A notificationType of <code>ACTUAL</code> </p> </li> <li> <p>A <code>thresholdType</code> of <code>PERCENTAGE</code> </p> </li> <li> <p>A <code>comparisonOperator</code> of <code>GREATER_THAN</code> </p> </li> <li> <p>A notification <code>threshold</code> of <code>80</code> </p> </li> </ul>
-}
type alias Notification =
    { notificationType : NotificationType
    , comparisonOperator : ComparisonOperator
    , threshold : Float
    , thresholdType : Maybe ThresholdType
    , notificationState : Maybe NotificationState
    }



notificationDecoder : JD.Decoder Notification
notificationDecoder =
    JD.succeed Notification
        
        |> JDP.custom (AWS.Core.Decode.required
            ["NotificationType", "notificationType"]
            notificationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ComparisonOperator", "comparisonOperator"]
            comparisonOperatorDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Threshold", "threshold"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ThresholdType", "thresholdType"]
            thresholdTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotificationState", "notificationState"]
            notificationStateDecoder
        )
        




notificationToString : Notification -> String -- List (String, String)
notificationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "notificationType" "" -- val.notificationType
        
    --     |> Dict.insert
    --         "comparisonOperator" "" -- val.comparisonOperator
        
    --     |> Dict.insert
    --         "threshold" "" -- val.threshold
        
    --     |> Dict.insert
    --         "thresholdType" "" -- val.thresholdType
        
    --     |> Dict.insert
    --         "notificationState" "" -- val.notificationState
        
    --     |> Dict.toList
    ""



{-| One of

* `NotificationState_OK`
* `NotificationState_ALARM`

-}
type NotificationState
    = NotificationState_OK
    | NotificationState_ALARM



notificationStateDecoder : JD.Decoder NotificationState
notificationStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OK" ->
                        JD.succeed NotificationState_OK

                    "ALARM" ->
                        JD.succeed NotificationState_ALARM


                    _ ->
                        JD.fail "bad thing"
            )




notificationStateToString : NotificationState -> String
notificationStateToString val =
    case val of
        NotificationState_OK ->
            "OK"

        NotificationState_ALARM ->
            "ALARM"




{-| One of

* `NotificationType_ACTUAL`
* `NotificationType_FORECASTED`

-}
type NotificationType
    = NotificationType_ACTUAL
    | NotificationType_FORECASTED



notificationTypeDecoder : JD.Decoder NotificationType
notificationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTUAL" ->
                        JD.succeed NotificationType_ACTUAL

                    "FORECASTED" ->
                        JD.succeed NotificationType_FORECASTED


                    _ ->
                        JD.fail "bad thing"
            )




notificationTypeToString : NotificationType -> String
notificationTypeToString val =
    case val of
        NotificationType_ACTUAL ->
            "ACTUAL"

        NotificationType_FORECASTED ->
            "FORECASTED"




{-| <p>A notification with subscribers. A notification can have one SNS subscriber and up to 10 email subscribers, for a total of 11 subscribers.</p>
-}
type alias NotificationWithSubscribers =
    { notification : Notification
    , subscribers : (List Subscriber)
    }



notificationWithSubscribersDecoder : JD.Decoder NotificationWithSubscribers
notificationWithSubscribersDecoder =
    JD.succeed NotificationWithSubscribers
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Notification", "notification"]
            notificationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Subscribers", "subscribers"]
            (JD.list subscriberDecoder)
        )
        




notificationWithSubscribersToString : NotificationWithSubscribers -> String -- List (String, String)
notificationWithSubscribersToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "notification" "" -- val.notification
        
    --     |> Dict.insert
    --         "subscribers" "" -- val.subscribers
        
    --     |> Dict.toList
    ""



{-| <p>The amount of cost or usage that is measured for a budget.</p> <p>For example, a <code>Spend</code> for <code>3 GB</code> of S3 usage would have the following parameters:</p> <ul> <li> <p>An <code>Amount</code> of <code>3</code> </p> </li> <li> <p>A <code>unit</code> of <code>GB</code> </p> </li> </ul>
-}
type alias Spend =
    { amount : String
    , unit : String
    }



spendDecoder : JD.Decoder Spend
spendDecoder =
    JD.succeed Spend
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Amount", "amount"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Unit", "unit"]
            JD.string
        )
        




spendToString : Spend -> String -- List (String, String)
spendToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "amount" "" -- val.amount
        
    --     |> Dict.insert
    --         "unit" "" -- val.unit
        
    --     |> Dict.toList
    ""



{-| <p>The subscriber to a budget notification. The subscriber consists of a subscription type and either an Amazon SNS topic or an email address.</p> <p>For example, an email subscriber would have the following parameters:</p> <ul> <li> <p>A <code>subscriptionType</code> of <code>EMAIL</code> </p> </li> <li> <p>An <code>address</code> of <code>example@example.com</code> </p> </li> </ul>
-}
type alias Subscriber =
    { subscriptionType : SubscriptionType
    , address : String
    }



subscriberDecoder : JD.Decoder Subscriber
subscriberDecoder =
    JD.succeed Subscriber
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SubscriptionType", "subscriptionType"]
            subscriptionTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Address", "address"]
            JD.string
        )
        




subscriberToString : Subscriber -> String -- List (String, String)
subscriberToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subscriptionType" "" -- val.subscriptionType
        
    --     |> Dict.insert
    --         "address" "" -- val.address
        
    --     |> Dict.toList
    ""



{-| One of

* `SubscriptionType_SNS`
* `SubscriptionType_EMAIL`

-}
type SubscriptionType
    = SubscriptionType_SNS
    | SubscriptionType_EMAIL



subscriptionTypeDecoder : JD.Decoder SubscriptionType
subscriptionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SNS" ->
                        JD.succeed SubscriptionType_SNS

                    "EMAIL" ->
                        JD.succeed SubscriptionType_EMAIL


                    _ ->
                        JD.fail "bad thing"
            )




subscriptionTypeToString : SubscriptionType -> String
subscriptionTypeToString val =
    case val of
        SubscriptionType_SNS ->
            "SNS"

        SubscriptionType_EMAIL ->
            "EMAIL"




{-| One of

* `ThresholdType_PERCENTAGE`
* `ThresholdType_ABSOLUTE_VALUE`

-}
type ThresholdType
    = ThresholdType_PERCENTAGE
    | ThresholdType_ABSOLUTE_VALUE



thresholdTypeDecoder : JD.Decoder ThresholdType
thresholdTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PERCENTAGE" ->
                        JD.succeed ThresholdType_PERCENTAGE

                    "ABSOLUTE_VALUE" ->
                        JD.succeed ThresholdType_ABSOLUTE_VALUE


                    _ ->
                        JD.fail "bad thing"
            )




thresholdTypeToString : ThresholdType -> String
thresholdTypeToString val =
    case val of
        ThresholdType_PERCENTAGE ->
            "PERCENTAGE"

        ThresholdType_ABSOLUTE_VALUE ->
            "ABSOLUTE_VALUE"




{-| <p>The period of time that is covered by a budget. The period has a start date and an end date. The start date must come before the end date. There are no restrictions on the end date. </p>
-}
type alias TimePeriod =
    { start : Maybe Posix
    , end : Maybe Posix
    }



timePeriodDecoder : JD.Decoder TimePeriod
timePeriodDecoder =
    JD.succeed TimePeriod
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Start", "start"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["End", "end"]
            JDX.datetime
        )
        




timePeriodToString : TimePeriod -> String -- List (String, String)
timePeriodToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "start" "" -- val.start
        
    --     |> Dict.insert
    --         "end" "" -- val.end
        
    --     |> Dict.toList
    ""



{-| One of

* `TimeUnit_DAILY`
* `TimeUnit_MONTHLY`
* `TimeUnit_QUARTERLY`
* `TimeUnit_ANNUALLY`

-}
type TimeUnit
    = TimeUnit_DAILY
    | TimeUnit_MONTHLY
    | TimeUnit_QUARTERLY
    | TimeUnit_ANNUALLY



timeUnitDecoder : JD.Decoder TimeUnit
timeUnitDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DAILY" ->
                        JD.succeed TimeUnit_DAILY

                    "MONTHLY" ->
                        JD.succeed TimeUnit_MONTHLY

                    "QUARTERLY" ->
                        JD.succeed TimeUnit_QUARTERLY

                    "ANNUALLY" ->
                        JD.succeed TimeUnit_ANNUALLY


                    _ ->
                        JD.fail "bad thing"
            )




timeUnitToString : TimeUnit -> String
timeUnitToString val =
    case val of
        TimeUnit_DAILY ->
            "DAILY"

        TimeUnit_MONTHLY ->
            "MONTHLY"

        TimeUnit_QUARTERLY ->
            "QUARTERLY"

        TimeUnit_ANNUALLY ->
            "ANNUALLY"




{-| Type of HTTP response from updateBudget
-}
type alias UpdateBudgetResponse =
    { 
    }



updateBudgetResponseDecoder : JD.Decoder UpdateBudgetResponse
updateBudgetResponseDecoder =
    JD.succeed UpdateBudgetResponse
        




updateBudgetResponseToString : UpdateBudgetResponse -> String -- List (String, String)
updateBudgetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateNotification
-}
type alias UpdateNotificationResponse =
    { 
    }



updateNotificationResponseDecoder : JD.Decoder UpdateNotificationResponse
updateNotificationResponseDecoder =
    JD.succeed UpdateNotificationResponse
        




updateNotificationResponseToString : UpdateNotificationResponse -> String -- List (String, String)
updateNotificationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateSubscriber
-}
type alias UpdateSubscriberResponse =
    { 
    }



updateSubscriberResponseDecoder : JD.Decoder UpdateSubscriberResponse
updateSubscriberResponseDecoder =
    JD.succeed UpdateSubscriberResponse
        




updateSubscriberResponseToString : UpdateSubscriberResponse -> String -- List (String, String)
updateSubscriberResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""






{-| <p> Request of CreateBudget </p>
-}
type alias CreateBudgetRequest =
    { accountId : String
    , budget : Budget
    , notificationsWithSubscribers : Maybe (List NotificationWithSubscribers)
    }


{-| <p> Request of CreateNotification </p>
-}
type alias CreateNotificationRequest =
    { accountId : String
    , budgetName : String
    , notification : Notification
    , subscribers : (List Subscriber)
    }


{-| <p> Request of CreateSubscriber </p>
-}
type alias CreateSubscriberRequest =
    { accountId : String
    , budgetName : String
    , notification : Notification
    , subscriber : Subscriber
    }


{-| <p> Request of DeleteBudget </p>
-}
type alias DeleteBudgetRequest =
    { accountId : String
    , budgetName : String
    }


{-| <p> Request of DeleteNotification </p>
-}
type alias DeleteNotificationRequest =
    { accountId : String
    , budgetName : String
    , notification : Notification
    }


{-| <p> Request of DeleteSubscriber </p>
-}
type alias DeleteSubscriberRequest =
    { accountId : String
    , budgetName : String
    , notification : Notification
    , subscriber : Subscriber
    }


{-| undefined
-}
type alias DescribeBudgetPerformanceHistoryRequest =
    { accountId : String
    , budgetName : String
    , timePeriod : Maybe TimePeriod
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| <p> Request of DescribeBudget </p>
-}
type alias DescribeBudgetRequest =
    { accountId : String
    , budgetName : String
    }


{-| <p> Request of DescribeBudgets </p>
-}
type alias DescribeBudgetsRequest =
    { accountId : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| <p> Request of DescribeNotificationsForBudget </p>
-}
type alias DescribeNotificationsForBudgetRequest =
    { accountId : String
    , budgetName : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| <p> Request of DescribeSubscribersForNotification </p>
-}
type alias DescribeSubscribersForNotificationRequest =
    { accountId : String
    , budgetName : String
    , notification : Notification
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| <p> Request of UpdateBudget </p>
-}
type alias UpdateBudgetRequest =
    { accountId : String
    , newBudget : Budget
    }


{-| <p> Request of UpdateNotification </p>
-}
type alias UpdateNotificationRequest =
    { accountId : String
    , budgetName : String
    , oldNotification : Notification
    , newNotification : Notification
    }


{-| <p> Request of UpdateSubscriber </p>
-}
type alias UpdateSubscriberRequest =
    { accountId : String
    , budgetName : String
    , notification : Notification
    , oldSubscriber : Subscriber
    , newSubscriber : Subscriber
    }






budgetEncoder : Budget -> JE.Value
budgetEncoder data =
    []
        
        
        |> (::) ("BudgetName", data.budgetName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (spendEncoder)
            ("BudgetLimit", data.budgetLimit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (spendEncoder))
            ("PlannedBudgetLimits", data.plannedBudgetLimits)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.list (JE.string)))
            ("CostFilters", data.costFilters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (costTypesEncoder)
            ("CostTypes", data.costTypes)
        
        
        
        |> (::) ("TimeUnit", data.timeUnit |> (timeUnitToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (timePeriodEncoder)
            ("TimePeriod", data.timePeriod)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (calculatedSpendEncoder)
            ("CalculatedSpend", data.calculatedSpend)
        
        
        
        |> (::) ("BudgetType", data.budgetType |> (budgetTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdatedTime", data.lastUpdatedTime)
        
        
        |> JE.object






budgetPerformanceHistoryEncoder : BudgetPerformanceHistory -> JE.Value
budgetPerformanceHistoryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BudgetName", data.budgetName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (budgetTypeToString >> JE.string)
            ("BudgetType", data.budgetType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.list (JE.string)))
            ("CostFilters", data.costFilters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (costTypesEncoder)
            ("CostTypes", data.costTypes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (timeUnitToString >> JE.string)
            ("TimeUnit", data.timeUnit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (budgetedAndActualAmountsEncoder))
            ("BudgetedAndActualAmountsList", data.budgetedAndActualAmountsList)
        
        
        |> JE.object










budgetedAndActualAmountsEncoder : BudgetedAndActualAmounts -> JE.Value
budgetedAndActualAmountsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (spendEncoder)
            ("BudgetedAmount", data.budgetedAmount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (spendEncoder)
            ("ActualAmount", data.actualAmount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (timePeriodEncoder)
            ("TimePeriod", data.timePeriod)
        
        
        |> JE.object






calculatedSpendEncoder : CalculatedSpend -> JE.Value
calculatedSpendEncoder data =
    []
        
        
        |> (::) ("ActualSpend", data.actualSpend |> (spendEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (spendEncoder)
            ("ForecastedSpend", data.forecastedSpend)
        
        
        |> JE.object










costTypesEncoder : CostTypes -> JE.Value
costTypesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IncludeTax", data.includeTax)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IncludeSubscription", data.includeSubscription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UseBlended", data.useBlended)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IncludeRefund", data.includeRefund)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IncludeCredit", data.includeCredit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IncludeUpfront", data.includeUpfront)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IncludeRecurring", data.includeRecurring)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IncludeOtherSubscription", data.includeOtherSubscription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IncludeSupport", data.includeSupport)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IncludeDiscount", data.includeDiscount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UseAmortized", data.useAmortized)
        
        
        |> JE.object






createBudgetRequestEncoder : CreateBudgetRequest -> JE.Value
createBudgetRequestEncoder data =
    []
        
        
        |> (::) ("AccountId", data.accountId |> (JE.string))
        
        
        
        |> (::) ("Budget", data.budget |> (budgetEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (notificationWithSubscribersEncoder))
            ("NotificationsWithSubscribers", data.notificationsWithSubscribers)
        
        
        |> JE.object






createBudgetResponseEncoder : CreateBudgetResponse -> JE.Value
createBudgetResponseEncoder data =
    []
        
        |> JE.object






createNotificationRequestEncoder : CreateNotificationRequest -> JE.Value
createNotificationRequestEncoder data =
    []
        
        
        |> (::) ("AccountId", data.accountId |> (JE.string))
        
        
        
        |> (::) ("BudgetName", data.budgetName |> (JE.string))
        
        
        
        |> (::) ("Notification", data.notification |> (notificationEncoder))
        
        
        
        |> (::) ("Subscribers", data.subscribers |> (JE.list (subscriberEncoder)))
        
        
        |> JE.object






createNotificationResponseEncoder : CreateNotificationResponse -> JE.Value
createNotificationResponseEncoder data =
    []
        
        |> JE.object






createSubscriberRequestEncoder : CreateSubscriberRequest -> JE.Value
createSubscriberRequestEncoder data =
    []
        
        
        |> (::) ("AccountId", data.accountId |> (JE.string))
        
        
        
        |> (::) ("BudgetName", data.budgetName |> (JE.string))
        
        
        
        |> (::) ("Notification", data.notification |> (notificationEncoder))
        
        
        
        |> (::) ("Subscriber", data.subscriber |> (subscriberEncoder))
        
        
        |> JE.object






createSubscriberResponseEncoder : CreateSubscriberResponse -> JE.Value
createSubscriberResponseEncoder data =
    []
        
        |> JE.object






deleteBudgetRequestEncoder : DeleteBudgetRequest -> JE.Value
deleteBudgetRequestEncoder data =
    []
        
        
        |> (::) ("AccountId", data.accountId |> (JE.string))
        
        
        
        |> (::) ("BudgetName", data.budgetName |> (JE.string))
        
        
        |> JE.object






deleteBudgetResponseEncoder : DeleteBudgetResponse -> JE.Value
deleteBudgetResponseEncoder data =
    []
        
        |> JE.object






deleteNotificationRequestEncoder : DeleteNotificationRequest -> JE.Value
deleteNotificationRequestEncoder data =
    []
        
        
        |> (::) ("AccountId", data.accountId |> (JE.string))
        
        
        
        |> (::) ("BudgetName", data.budgetName |> (JE.string))
        
        
        
        |> (::) ("Notification", data.notification |> (notificationEncoder))
        
        
        |> JE.object






deleteNotificationResponseEncoder : DeleteNotificationResponse -> JE.Value
deleteNotificationResponseEncoder data =
    []
        
        |> JE.object






deleteSubscriberRequestEncoder : DeleteSubscriberRequest -> JE.Value
deleteSubscriberRequestEncoder data =
    []
        
        
        |> (::) ("AccountId", data.accountId |> (JE.string))
        
        
        
        |> (::) ("BudgetName", data.budgetName |> (JE.string))
        
        
        
        |> (::) ("Notification", data.notification |> (notificationEncoder))
        
        
        
        |> (::) ("Subscriber", data.subscriber |> (subscriberEncoder))
        
        
        |> JE.object






deleteSubscriberResponseEncoder : DeleteSubscriberResponse -> JE.Value
deleteSubscriberResponseEncoder data =
    []
        
        |> JE.object






describeBudgetPerformanceHistoryRequestEncoder : DescribeBudgetPerformanceHistoryRequest -> JE.Value
describeBudgetPerformanceHistoryRequestEncoder data =
    []
        
        
        |> (::) ("AccountId", data.accountId |> (JE.string))
        
        
        
        |> (::) ("BudgetName", data.budgetName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (timePeriodEncoder)
            ("TimePeriod", data.timePeriod)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeBudgetPerformanceHistoryResponseEncoder : DescribeBudgetPerformanceHistoryResponse -> JE.Value
describeBudgetPerformanceHistoryResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (budgetPerformanceHistoryEncoder)
            ("BudgetPerformanceHistory", data.budgetPerformanceHistory)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeBudgetRequestEncoder : DescribeBudgetRequest -> JE.Value
describeBudgetRequestEncoder data =
    []
        
        
        |> (::) ("AccountId", data.accountId |> (JE.string))
        
        
        
        |> (::) ("BudgetName", data.budgetName |> (JE.string))
        
        
        |> JE.object






describeBudgetResponseEncoder : DescribeBudgetResponse -> JE.Value
describeBudgetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (budgetEncoder)
            ("Budget", data.budget)
        
        
        |> JE.object






describeBudgetsRequestEncoder : DescribeBudgetsRequest -> JE.Value
describeBudgetsRequestEncoder data =
    []
        
        
        |> (::) ("AccountId", data.accountId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeBudgetsResponseEncoder : DescribeBudgetsResponse -> JE.Value
describeBudgetsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (budgetEncoder))
            ("Budgets", data.budgets)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeNotificationsForBudgetRequestEncoder : DescribeNotificationsForBudgetRequest -> JE.Value
describeNotificationsForBudgetRequestEncoder data =
    []
        
        
        |> (::) ("AccountId", data.accountId |> (JE.string))
        
        
        
        |> (::) ("BudgetName", data.budgetName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeNotificationsForBudgetResponseEncoder : DescribeNotificationsForBudgetResponse -> JE.Value
describeNotificationsForBudgetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (notificationEncoder))
            ("Notifications", data.notifications)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeSubscribersForNotificationRequestEncoder : DescribeSubscribersForNotificationRequest -> JE.Value
describeSubscribersForNotificationRequestEncoder data =
    []
        
        
        |> (::) ("AccountId", data.accountId |> (JE.string))
        
        
        
        |> (::) ("BudgetName", data.budgetName |> (JE.string))
        
        
        
        |> (::) ("Notification", data.notification |> (notificationEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeSubscribersForNotificationResponseEncoder : DescribeSubscribersForNotificationResponse -> JE.Value
describeSubscribersForNotificationResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (subscriberEncoder))
            ("Subscribers", data.subscribers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






notificationEncoder : Notification -> JE.Value
notificationEncoder data =
    []
        
        
        |> (::) ("NotificationType", data.notificationType |> (notificationTypeToString >> JE.string))
        
        
        
        |> (::) ("ComparisonOperator", data.comparisonOperator |> (comparisonOperatorToString >> JE.string))
        
        
        
        |> (::) ("Threshold", data.threshold |> (JE.float))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (thresholdTypeToString >> JE.string)
            ("ThresholdType", data.thresholdType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationStateToString >> JE.string)
            ("NotificationState", data.notificationState)
        
        
        |> JE.object














notificationWithSubscribersEncoder : NotificationWithSubscribers -> JE.Value
notificationWithSubscribersEncoder data =
    []
        
        
        |> (::) ("Notification", data.notification |> (notificationEncoder))
        
        
        
        |> (::) ("Subscribers", data.subscribers |> (JE.list (subscriberEncoder)))
        
        
        |> JE.object






spendEncoder : Spend -> JE.Value
spendEncoder data =
    []
        
        
        |> (::) ("Amount", data.amount |> (JE.string))
        
        
        
        |> (::) ("Unit", data.unit |> (JE.string))
        
        
        |> JE.object






subscriberEncoder : Subscriber -> JE.Value
subscriberEncoder data =
    []
        
        
        |> (::) ("SubscriptionType", data.subscriptionType |> (subscriptionTypeToString >> JE.string))
        
        
        
        |> (::) ("Address", data.address |> (JE.string))
        
        
        |> JE.object














timePeriodEncoder : TimePeriod -> JE.Value
timePeriodEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("Start", data.start)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("End", data.end)
        
        
        |> JE.object










updateBudgetRequestEncoder : UpdateBudgetRequest -> JE.Value
updateBudgetRequestEncoder data =
    []
        
        
        |> (::) ("AccountId", data.accountId |> (JE.string))
        
        
        
        |> (::) ("NewBudget", data.newBudget |> (budgetEncoder))
        
        
        |> JE.object






updateBudgetResponseEncoder : UpdateBudgetResponse -> JE.Value
updateBudgetResponseEncoder data =
    []
        
        |> JE.object






updateNotificationRequestEncoder : UpdateNotificationRequest -> JE.Value
updateNotificationRequestEncoder data =
    []
        
        
        |> (::) ("AccountId", data.accountId |> (JE.string))
        
        
        
        |> (::) ("BudgetName", data.budgetName |> (JE.string))
        
        
        
        |> (::) ("OldNotification", data.oldNotification |> (notificationEncoder))
        
        
        
        |> (::) ("NewNotification", data.newNotification |> (notificationEncoder))
        
        
        |> JE.object






updateNotificationResponseEncoder : UpdateNotificationResponse -> JE.Value
updateNotificationResponseEncoder data =
    []
        
        |> JE.object






updateSubscriberRequestEncoder : UpdateSubscriberRequest -> JE.Value
updateSubscriberRequestEncoder data =
    []
        
        
        |> (::) ("AccountId", data.accountId |> (JE.string))
        
        
        
        |> (::) ("BudgetName", data.budgetName |> (JE.string))
        
        
        
        |> (::) ("Notification", data.notification |> (notificationEncoder))
        
        
        
        |> (::) ("OldSubscriber", data.oldSubscriber |> (subscriberEncoder))
        
        
        
        |> (::) ("NewSubscriber", data.newSubscriber |> (subscriberEncoder))
        
        
        |> JE.object






updateSubscriberResponseEncoder : UpdateSubscriberResponse -> JE.Value
updateSubscriberResponseEncoder data =
    []
        
        |> JE.object





