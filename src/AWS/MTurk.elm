module AWS.MTurk
    exposing
        ( service
        , acceptQualificationRequest
        , AcceptQualificationRequestOptions
        , approveAssignment
        , ApproveAssignmentOptions
        , associateQualificationWithWorker
        , AssociateQualificationWithWorkerOptions
        , createAdditionalAssignmentsForHIT
        , CreateAdditionalAssignmentsForHITOptions
        , createHIT
        , CreateHITOptions
        , createHITType
        , CreateHITTypeOptions
        , createHITWithHITType
        , CreateHITWithHITTypeOptions
        , createQualificationType
        , CreateQualificationTypeOptions
        , createWorkerBlock
        , deleteHIT
        , deleteQualificationType
        , deleteWorkerBlock
        , DeleteWorkerBlockOptions
        , disassociateQualificationFromWorker
        , DisassociateQualificationFromWorkerOptions
        , getAccountBalance
        , getAssignment
        , getFileUploadURL
        , getHIT
        , getQualificationScore
        , getQualificationType
        , listAssignmentsForHIT
        , ListAssignmentsForHITOptions
        , listBonusPayments
        , ListBonusPaymentsOptions
        , listHITs
        , ListHITsOptions
        , listHITsForQualificationType
        , ListHITsForQualificationTypeOptions
        , listQualificationRequests
        , ListQualificationRequestsOptions
        , listQualificationTypes
        , ListQualificationTypesOptions
        , listReviewPolicyResultsForHIT
        , ListReviewPolicyResultsForHITOptions
        , listReviewableHITs
        , ListReviewableHITsOptions
        , listWorkerBlocks
        , ListWorkerBlocksOptions
        , listWorkersWithQualificationType
        , ListWorkersWithQualificationTypeOptions
        , notifyWorkers
        , rejectAssignment
        , rejectQualificationRequest
        , RejectQualificationRequestOptions
        , sendBonus
        , SendBonusOptions
        , sendTestEventNotification
        , updateExpirationForHIT
        , updateHITReviewStatus
        , UpdateHITReviewStatusOptions
        , updateHITTypeOfHIT
        , updateNotificationSettings
        , UpdateNotificationSettingsOptions
        , updateQualificationType
        , UpdateQualificationTypeOptions
        , AcceptQualificationRequestResponse
        , ApproveAssignmentResponse
        , Assignment
        , AssignmentStatus(..)
        , AssociateQualificationWithWorkerResponse
        , BonusPayment
        , Comparator(..)
        , CreateAdditionalAssignmentsForHITResponse
        , CreateHITResponse
        , CreateHITTypeResponse
        , CreateHITWithHITTypeResponse
        , CreateQualificationTypeResponse
        , CreateWorkerBlockResponse
        , DeleteHITResponse
        , DeleteQualificationTypeResponse
        , DeleteWorkerBlockResponse
        , DisassociateQualificationFromWorkerResponse
        , EventType(..)
        , GetAccountBalanceResponse
        , GetAssignmentResponse
        , GetFileUploadURLResponse
        , GetHITResponse
        , GetQualificationScoreResponse
        , GetQualificationTypeResponse
        , HIT
        , HITAccessActions(..)
        , HITLayoutParameter
        , HITReviewStatus(..)
        , HITStatus(..)
        , ListAssignmentsForHITResponse
        , ListBonusPaymentsResponse
        , ListHITsForQualificationTypeResponse
        , ListHITsResponse
        , ListQualificationRequestsResponse
        , ListQualificationTypesResponse
        , ListReviewPolicyResultsForHITResponse
        , ListReviewableHITsResponse
        , ListWorkerBlocksResponse
        , ListWorkersWithQualificationTypeResponse
        , Locale
        , NotificationSpecification
        , NotificationTransport(..)
        , NotifyWorkersFailureCode(..)
        , NotifyWorkersFailureStatus
        , NotifyWorkersResponse
        , ParameterMapEntry
        , PolicyParameter
        , Qualification
        , QualificationRequest
        , QualificationRequirement
        , QualificationStatus(..)
        , QualificationType
        , QualificationTypeStatus(..)
        , RejectAssignmentResponse
        , RejectQualificationRequestResponse
        , RequestError
        , ReviewActionDetail
        , ReviewActionStatus(..)
        , ReviewPolicy
        , ReviewPolicyLevel(..)
        , ReviewReport
        , ReviewResultDetail
        , ReviewableHITStatus(..)
        , SendBonusResponse
        , SendTestEventNotificationResponse
        , ServiceFault
        , UpdateExpirationForHITResponse
        , UpdateHITReviewStatusResponse
        , UpdateHITTypeOfHITResponse
        , UpdateNotificationSettingsResponse
        , UpdateQualificationTypeResponse
        , WorkerBlock
        )

{-| <fullname>Amazon Mechanical Turk API Reference</fullname>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [acceptQualificationRequest](#acceptQualificationRequest)
* [AcceptQualificationRequestOptions](#AcceptQualificationRequestOptions)
* [approveAssignment](#approveAssignment)
* [ApproveAssignmentOptions](#ApproveAssignmentOptions)
* [associateQualificationWithWorker](#associateQualificationWithWorker)
* [AssociateQualificationWithWorkerOptions](#AssociateQualificationWithWorkerOptions)
* [createAdditionalAssignmentsForHIT](#createAdditionalAssignmentsForHIT)
* [CreateAdditionalAssignmentsForHITOptions](#CreateAdditionalAssignmentsForHITOptions)
* [createHIT](#createHIT)
* [CreateHITOptions](#CreateHITOptions)
* [createHITType](#createHITType)
* [CreateHITTypeOptions](#CreateHITTypeOptions)
* [createHITWithHITType](#createHITWithHITType)
* [CreateHITWithHITTypeOptions](#CreateHITWithHITTypeOptions)
* [createQualificationType](#createQualificationType)
* [CreateQualificationTypeOptions](#CreateQualificationTypeOptions)
* [createWorkerBlock](#createWorkerBlock)
* [deleteHIT](#deleteHIT)
* [deleteQualificationType](#deleteQualificationType)
* [deleteWorkerBlock](#deleteWorkerBlock)
* [DeleteWorkerBlockOptions](#DeleteWorkerBlockOptions)
* [disassociateQualificationFromWorker](#disassociateQualificationFromWorker)
* [DisassociateQualificationFromWorkerOptions](#DisassociateQualificationFromWorkerOptions)
* [getAccountBalance](#getAccountBalance)
* [getAssignment](#getAssignment)
* [getFileUploadURL](#getFileUploadURL)
* [getHIT](#getHIT)
* [getQualificationScore](#getQualificationScore)
* [getQualificationType](#getQualificationType)
* [listAssignmentsForHIT](#listAssignmentsForHIT)
* [ListAssignmentsForHITOptions](#ListAssignmentsForHITOptions)
* [listBonusPayments](#listBonusPayments)
* [ListBonusPaymentsOptions](#ListBonusPaymentsOptions)
* [listHITs](#listHITs)
* [ListHITsOptions](#ListHITsOptions)
* [listHITsForQualificationType](#listHITsForQualificationType)
* [ListHITsForQualificationTypeOptions](#ListHITsForQualificationTypeOptions)
* [listQualificationRequests](#listQualificationRequests)
* [ListQualificationRequestsOptions](#ListQualificationRequestsOptions)
* [listQualificationTypes](#listQualificationTypes)
* [ListQualificationTypesOptions](#ListQualificationTypesOptions)
* [listReviewPolicyResultsForHIT](#listReviewPolicyResultsForHIT)
* [ListReviewPolicyResultsForHITOptions](#ListReviewPolicyResultsForHITOptions)
* [listReviewableHITs](#listReviewableHITs)
* [ListReviewableHITsOptions](#ListReviewableHITsOptions)
* [listWorkerBlocks](#listWorkerBlocks)
* [ListWorkerBlocksOptions](#ListWorkerBlocksOptions)
* [listWorkersWithQualificationType](#listWorkersWithQualificationType)
* [ListWorkersWithQualificationTypeOptions](#ListWorkersWithQualificationTypeOptions)
* [notifyWorkers](#notifyWorkers)
* [rejectAssignment](#rejectAssignment)
* [rejectQualificationRequest](#rejectQualificationRequest)
* [RejectQualificationRequestOptions](#RejectQualificationRequestOptions)
* [sendBonus](#sendBonus)
* [SendBonusOptions](#SendBonusOptions)
* [sendTestEventNotification](#sendTestEventNotification)
* [updateExpirationForHIT](#updateExpirationForHIT)
* [updateHITReviewStatus](#updateHITReviewStatus)
* [UpdateHITReviewStatusOptions](#UpdateHITReviewStatusOptions)
* [updateHITTypeOfHIT](#updateHITTypeOfHIT)
* [updateNotificationSettings](#updateNotificationSettings)
* [UpdateNotificationSettingsOptions](#UpdateNotificationSettingsOptions)
* [updateQualificationType](#updateQualificationType)
* [UpdateQualificationTypeOptions](#UpdateQualificationTypeOptions)


@docs acceptQualificationRequest,AcceptQualificationRequestOptions,approveAssignment,ApproveAssignmentOptions,associateQualificationWithWorker,AssociateQualificationWithWorkerOptions,createAdditionalAssignmentsForHIT,CreateAdditionalAssignmentsForHITOptions,createHIT,CreateHITOptions,createHITType,CreateHITTypeOptions,createHITWithHITType,CreateHITWithHITTypeOptions,createQualificationType,CreateQualificationTypeOptions,createWorkerBlock,deleteHIT,deleteQualificationType,deleteWorkerBlock,DeleteWorkerBlockOptions,disassociateQualificationFromWorker,DisassociateQualificationFromWorkerOptions,getAccountBalance,getAssignment,getFileUploadURL,getHIT,getQualificationScore,getQualificationType,listAssignmentsForHIT,ListAssignmentsForHITOptions,listBonusPayments,ListBonusPaymentsOptions,listHITs,ListHITsOptions,listHITsForQualificationType,ListHITsForQualificationTypeOptions,listQualificationRequests,ListQualificationRequestsOptions,listQualificationTypes,ListQualificationTypesOptions,listReviewPolicyResultsForHIT,ListReviewPolicyResultsForHITOptions,listReviewableHITs,ListReviewableHITsOptions,listWorkerBlocks,ListWorkerBlocksOptions,listWorkersWithQualificationType,ListWorkersWithQualificationTypeOptions,notifyWorkers,rejectAssignment,rejectQualificationRequest,RejectQualificationRequestOptions,sendBonus,SendBonusOptions,sendTestEventNotification,updateExpirationForHIT,updateHITReviewStatus,UpdateHITReviewStatusOptions,updateHITTypeOfHIT,updateNotificationSettings,UpdateNotificationSettingsOptions,updateQualificationType,UpdateQualificationTypeOptions

## Responses

* [AcceptQualificationRequestResponse](#AcceptQualificationRequestResponse)
* [ApproveAssignmentResponse](#ApproveAssignmentResponse)
* [AssociateQualificationWithWorkerResponse](#AssociateQualificationWithWorkerResponse)
* [CreateAdditionalAssignmentsForHITResponse](#CreateAdditionalAssignmentsForHITResponse)
* [CreateHITResponse](#CreateHITResponse)
* [CreateHITTypeResponse](#CreateHITTypeResponse)
* [CreateHITWithHITTypeResponse](#CreateHITWithHITTypeResponse)
* [CreateQualificationTypeResponse](#CreateQualificationTypeResponse)
* [CreateWorkerBlockResponse](#CreateWorkerBlockResponse)
* [DeleteHITResponse](#DeleteHITResponse)
* [DeleteQualificationTypeResponse](#DeleteQualificationTypeResponse)
* [DeleteWorkerBlockResponse](#DeleteWorkerBlockResponse)
* [DisassociateQualificationFromWorkerResponse](#DisassociateQualificationFromWorkerResponse)
* [GetAccountBalanceResponse](#GetAccountBalanceResponse)
* [GetAssignmentResponse](#GetAssignmentResponse)
* [GetFileUploadURLResponse](#GetFileUploadURLResponse)
* [GetHITResponse](#GetHITResponse)
* [GetQualificationScoreResponse](#GetQualificationScoreResponse)
* [GetQualificationTypeResponse](#GetQualificationTypeResponse)
* [ListAssignmentsForHITResponse](#ListAssignmentsForHITResponse)
* [ListBonusPaymentsResponse](#ListBonusPaymentsResponse)
* [ListHITsForQualificationTypeResponse](#ListHITsForQualificationTypeResponse)
* [ListHITsResponse](#ListHITsResponse)
* [ListQualificationRequestsResponse](#ListQualificationRequestsResponse)
* [ListQualificationTypesResponse](#ListQualificationTypesResponse)
* [ListReviewPolicyResultsForHITResponse](#ListReviewPolicyResultsForHITResponse)
* [ListReviewableHITsResponse](#ListReviewableHITsResponse)
* [ListWorkerBlocksResponse](#ListWorkerBlocksResponse)
* [ListWorkersWithQualificationTypeResponse](#ListWorkersWithQualificationTypeResponse)
* [NotifyWorkersResponse](#NotifyWorkersResponse)
* [RejectAssignmentResponse](#RejectAssignmentResponse)
* [RejectQualificationRequestResponse](#RejectQualificationRequestResponse)
* [SendBonusResponse](#SendBonusResponse)
* [SendTestEventNotificationResponse](#SendTestEventNotificationResponse)
* [UpdateExpirationForHITResponse](#UpdateExpirationForHITResponse)
* [UpdateHITReviewStatusResponse](#UpdateHITReviewStatusResponse)
* [UpdateHITTypeOfHITResponse](#UpdateHITTypeOfHITResponse)
* [UpdateNotificationSettingsResponse](#UpdateNotificationSettingsResponse)
* [UpdateQualificationTypeResponse](#UpdateQualificationTypeResponse)


@docs AcceptQualificationRequestResponse,ApproveAssignmentResponse,AssociateQualificationWithWorkerResponse,CreateAdditionalAssignmentsForHITResponse,CreateHITResponse,CreateHITTypeResponse,CreateHITWithHITTypeResponse,CreateQualificationTypeResponse,CreateWorkerBlockResponse,DeleteHITResponse,DeleteQualificationTypeResponse,DeleteWorkerBlockResponse,DisassociateQualificationFromWorkerResponse,GetAccountBalanceResponse,GetAssignmentResponse,GetFileUploadURLResponse,GetHITResponse,GetQualificationScoreResponse,GetQualificationTypeResponse,ListAssignmentsForHITResponse,ListBonusPaymentsResponse,ListHITsForQualificationTypeResponse,ListHITsResponse,ListQualificationRequestsResponse,ListQualificationTypesResponse,ListReviewPolicyResultsForHITResponse,ListReviewableHITsResponse,ListWorkerBlocksResponse,ListWorkersWithQualificationTypeResponse,NotifyWorkersResponse,RejectAssignmentResponse,RejectQualificationRequestResponse,SendBonusResponse,SendTestEventNotificationResponse,UpdateExpirationForHITResponse,UpdateHITReviewStatusResponse,UpdateHITTypeOfHITResponse,UpdateNotificationSettingsResponse,UpdateQualificationTypeResponse

## Records

* [Assignment](#Assignment)
* [BonusPayment](#BonusPayment)
* [HIT](#HIT)
* [HITLayoutParameter](#HITLayoutParameter)
* [Locale](#Locale)
* [NotificationSpecification](#NotificationSpecification)
* [NotifyWorkersFailureStatus](#NotifyWorkersFailureStatus)
* [ParameterMapEntry](#ParameterMapEntry)
* [PolicyParameter](#PolicyParameter)
* [Qualification](#Qualification)
* [QualificationRequest](#QualificationRequest)
* [QualificationRequirement](#QualificationRequirement)
* [QualificationType](#QualificationType)
* [ReviewActionDetail](#ReviewActionDetail)
* [ReviewPolicy](#ReviewPolicy)
* [ReviewReport](#ReviewReport)
* [ReviewResultDetail](#ReviewResultDetail)
* [WorkerBlock](#WorkerBlock)


@docs Assignment,BonusPayment,HIT,HITLayoutParameter,Locale,NotificationSpecification,NotifyWorkersFailureStatus,ParameterMapEntry,PolicyParameter,Qualification,QualificationRequest,QualificationRequirement,QualificationType,ReviewActionDetail,ReviewPolicy,ReviewReport,ReviewResultDetail,WorkerBlock

## Unions

* [AssignmentStatus](#AssignmentStatus)
* [Comparator](#Comparator)
* [EventType](#EventType)
* [HITAccessActions](#HITAccessActions)
* [HITReviewStatus](#HITReviewStatus)
* [HITStatus](#HITStatus)
* [NotificationTransport](#NotificationTransport)
* [NotifyWorkersFailureCode](#NotifyWorkersFailureCode)
* [QualificationStatus](#QualificationStatus)
* [QualificationTypeStatus](#QualificationTypeStatus)
* [ReviewActionStatus](#ReviewActionStatus)
* [ReviewPolicyLevel](#ReviewPolicyLevel)
* [ReviewableHITStatus](#ReviewableHITStatus)


@docs AssignmentStatus,Comparator,EventType,HITAccessActions,HITReviewStatus,HITStatus,NotificationTransport,NotifyWorkersFailureCode,QualificationStatus,QualificationTypeStatus,ReviewActionStatus,ReviewPolicyLevel,ReviewableHITStatus

## Exceptions

* [RequestError](#RequestError)
* [ServiceFault](#ServiceFault)


@docs RequestError,ServiceFault

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
        "mturk-requester"
        "2017-01-17"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "MTurkRequesterServiceV20170117")



-- OPERATIONS

{-| <p> The <code>AcceptQualificationRequest</code> operation approves a Worker's request for a Qualification. </p> <p> Only the owner of the Qualification type can grant a Qualification request for that type. </p> <p> A successful request for the <code>AcceptQualificationRequest</code> operation returns with no errors and an empty body. </p>

__Required Parameters__

* `qualificationRequestId` __:__ `String`


-}

acceptQualificationRequest :
  
    String ->
  
  
    ( AcceptQualificationRequestOptions -> AcceptQualificationRequestOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AcceptQualificationRequestResponse)

acceptQualificationRequest qualificationRequestId setOptions =
    
    let
        requestInput = AcceptQualificationRequestRequest
            
            qualificationRequestId
            
            options.integerValue
            
        
        options = setOptions (AcceptQualificationRequestOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> acceptQualificationRequestRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AcceptQualificationRequest"
                
                (AWS.Core.Decode.ResultDecoder "AcceptQualificationRequestResponse" acceptQualificationRequestResponseDecoder)
                
            )



{-| Options for a acceptQualificationRequest request
-}
type alias AcceptQualificationRequestOptions =
    {
    integerValue : Maybe Int
    }



{-| <p> The <code>ApproveAssignment</code> operation approves the results of a completed assignment. </p> <p> Approving an assignment initiates two payments from the Requester's Amazon.com account </p> <ul> <li> <p> The Worker who submitted the results is paid the reward specified in the HIT. </p> </li> <li> <p> Amazon Mechanical Turk fees are debited. </p> </li> </ul> <p> If the Requester's account does not have adequate funds for these payments, the call to ApproveAssignment returns an exception, and the approval is not processed. You can include an optional feedback message with the approval, which the Worker can see in the Status section of the web site. </p> <p> You can also call this operation for assignments that were previous rejected and approve them by explicitly overriding the previous rejection. This only works on rejected assignments that were submitted within the previous 30 days and only if the assignment's related HIT has not been deleted. </p>

__Required Parameters__

* `assignmentId` __:__ `String`


-}

approveAssignment :
  
    String ->
  
  
    ( ApproveAssignmentOptions -> ApproveAssignmentOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ApproveAssignmentResponse)

approveAssignment assignmentId setOptions =
    
    let
        requestInput = ApproveAssignmentRequest
            
            assignmentId
            
            options.requesterFeedback
            
            options.overrideRejection
            
        
        options = setOptions (ApproveAssignmentOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> approveAssignmentRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ApproveAssignment"
                
                (AWS.Core.Decode.ResultDecoder "ApproveAssignmentResponse" approveAssignmentResponseDecoder)
                
            )



{-| Options for a approveAssignment request
-}
type alias ApproveAssignmentOptions =
    {
    requesterFeedback : Maybe String,overrideRejection : Maybe Bool
    }



{-| <p> The <code>AssociateQualificationWithWorker</code> operation gives a Worker a Qualification. <code>AssociateQualificationWithWorker</code> does not require that the Worker submit a Qualification request. It gives the Qualification directly to the Worker. </p> <p> You can only assign a Qualification of a Qualification type that you created (using the <code>CreateQualificationType</code> operation). </p> <note> <p> Note: <code>AssociateQualificationWithWorker</code> does not affect any pending Qualification requests for the Qualification by the Worker. If you assign a Qualification to a Worker, then later grant a Qualification request made by the Worker, the granting of the request may modify the Qualification score. To resolve a pending Qualification request without affecting the Qualification the Worker already has, reject the request with the <code>RejectQualificationRequest</code> operation. </p> </note>

__Required Parameters__

* `qualificationTypeId` __:__ `String`
* `workerId` __:__ `String`


-}

associateQualificationWithWorker :
  
    String ->
  
    String ->
  
  
    ( AssociateQualificationWithWorkerOptions -> AssociateQualificationWithWorkerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateQualificationWithWorkerResponse)

associateQualificationWithWorker qualificationTypeId workerId setOptions =
    
    let
        requestInput = AssociateQualificationWithWorkerRequest
            
            qualificationTypeId
            
            workerId
            
            options.integerValue
            
            options.sendNotification
            
        
        options = setOptions (AssociateQualificationWithWorkerOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateQualificationWithWorkerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateQualificationWithWorker"
                
                (AWS.Core.Decode.ResultDecoder "AssociateQualificationWithWorkerResponse" associateQualificationWithWorkerResponseDecoder)
                
            )



{-| Options for a associateQualificationWithWorker request
-}
type alias AssociateQualificationWithWorkerOptions =
    {
    integerValue : Maybe Int,sendNotification : Maybe Bool
    }



{-| <p> The <code>CreateAdditionalAssignmentsForHIT</code> operation increases the maximum number of assignments of an existing HIT. </p> <p> To extend the maximum number of assignments, specify the number of additional assignments.</p> <note> <ul> <li> <p>HITs created with fewer than 10 assignments cannot be extended to have 10 or more assignments. Attempting to add assignments in a way that brings the total number of assignments for a HIT from fewer than 10 assignments to 10 or more assignments will result in an <code>AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease</code> exception.</p> </li> <li> <p>HITs that were created before July 22, 2015 cannot be extended. Attempting to extend HITs that were created before July 22, 2015 will result in an <code>AWS.MechanicalTurk.HITTooOldForExtension</code> exception. </p> </li> </ul> </note>

__Required Parameters__

* `hITId` __:__ `String`
* `numberOfAdditionalAssignments` __:__ `Int`


-}

createAdditionalAssignmentsForHIT :
  
    String ->
  
    Int ->
  
  
    ( CreateAdditionalAssignmentsForHITOptions -> CreateAdditionalAssignmentsForHITOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateAdditionalAssignmentsForHITResponse)

createAdditionalAssignmentsForHIT hITId numberOfAdditionalAssignments setOptions =
    
    let
        requestInput = CreateAdditionalAssignmentsForHITRequest
            
            hITId
            
            numberOfAdditionalAssignments
            
            options.uniqueRequestToken
            
        
        options = setOptions (CreateAdditionalAssignmentsForHITOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createAdditionalAssignmentsForHITRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateAdditionalAssignmentsForHIT"
                
                (AWS.Core.Decode.ResultDecoder "CreateAdditionalAssignmentsForHITResponse" createAdditionalAssignmentsForHITResponseDecoder)
                
            )



{-| Options for a createAdditionalAssignmentsForHIT request
-}
type alias CreateAdditionalAssignmentsForHITOptions =
    {
    uniqueRequestToken : Maybe String
    }



{-| <p>The <code>CreateHIT</code> operation creates a new Human Intelligence Task (HIT). The new HIT is made available for Workers to find and accept on the Amazon Mechanical Turk website. </p> <p> This operation allows you to specify a new HIT by passing in values for the properties of the HIT, such as its title, reward amount and number of assignments. When you pass these values to <code>CreateHIT</code>, a new HIT is created for you, with a new <code>HITTypeID</code>. The HITTypeID can be used to create additional HITs in the future without needing to specify common parameters such as the title, description and reward amount each time.</p> <p> An alternative way to create HITs is to first generate a HITTypeID using the <code>CreateHITType</code> operation and then call the <code>CreateHITWithHITType</code> operation. This is the recommended best practice for Requesters who are creating large numbers of HITs. </p> <p>CreateHIT also supports several ways to provide question data: by providing a value for the <code>Question</code> parameter that fully specifies the contents of the HIT, or by providing a <code>HitLayoutId</code> and associated <code>HitLayoutParameters</code>. </p> <note> <p> If a HIT is created with 10 or more maximum assignments, there is an additional fee. For more information, see <a href="https://requester.mturk.com/pricing">Amazon Mechanical Turk Pricing</a>.</p> </note>

__Required Parameters__

* `lifetimeInSeconds` __:__ `Int`
* `assignmentDurationInSeconds` __:__ `Int`
* `reward` __:__ `String`
* `title` __:__ `String`
* `description` __:__ `String`


-}

createHIT :
  
    Int ->
  
    Int ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateHITOptions -> CreateHITOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateHITResponse)

createHIT lifetimeInSeconds assignmentDurationInSeconds reward title description setOptions =
    
    let
        requestInput = CreateHITRequest
            
            options.maxAssignments
            
            options.autoApprovalDelayInSeconds
            
            lifetimeInSeconds
            
            assignmentDurationInSeconds
            
            reward
            
            title
            
            options.keywords
            
            description
            
            options.question
            
            options.requesterAnnotation
            
            options.qualificationRequirements
            
            options.uniqueRequestToken
            
            options.assignmentReviewPolicy
            
            options.hITReviewPolicy
            
            options.hITLayoutId
            
            options.hITLayoutParameters
            
        
        options = setOptions (CreateHITOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createHITRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateHIT"
                
                (AWS.Core.Decode.ResultDecoder "CreateHITResponse" createHITResponseDecoder)
                
            )



{-| Options for a createHIT request
-}
type alias CreateHITOptions =
    {
    maxAssignments : Maybe Int,autoApprovalDelayInSeconds : Maybe Int,keywords : Maybe String,question : Maybe String,requesterAnnotation : Maybe String,qualificationRequirements : Maybe (List QualificationRequirement),uniqueRequestToken : Maybe String,assignmentReviewPolicy : Maybe ReviewPolicy,hITReviewPolicy : Maybe ReviewPolicy,hITLayoutId : Maybe String,hITLayoutParameters : Maybe (List HITLayoutParameter)
    }



{-| <p> The <code>CreateHITType</code> operation creates a new HIT type. This operation allows you to define a standard set of HIT properties to use when creating HITs. If you register a HIT type with values that match an existing HIT type, the HIT type ID of the existing type will be returned. </p>

__Required Parameters__

* `assignmentDurationInSeconds` __:__ `Int`
* `reward` __:__ `String`
* `title` __:__ `String`
* `description` __:__ `String`


-}

createHITType :
  
    Int ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateHITTypeOptions -> CreateHITTypeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateHITTypeResponse)

createHITType assignmentDurationInSeconds reward title description setOptions =
    
    let
        requestInput = CreateHITTypeRequest
            
            options.autoApprovalDelayInSeconds
            
            assignmentDurationInSeconds
            
            reward
            
            title
            
            options.keywords
            
            description
            
            options.qualificationRequirements
            
        
        options = setOptions (CreateHITTypeOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createHITTypeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateHITType"
                
                (AWS.Core.Decode.ResultDecoder "CreateHITTypeResponse" createHITTypeResponseDecoder)
                
            )



{-| Options for a createHITType request
-}
type alias CreateHITTypeOptions =
    {
    autoApprovalDelayInSeconds : Maybe Int,keywords : Maybe String,qualificationRequirements : Maybe (List QualificationRequirement)
    }



{-| <p> The <code>CreateHITWithHITType</code> operation creates a new Human Intelligence Task (HIT) using an existing HITTypeID generated by the <code>CreateHITType</code> operation. </p> <p> This is an alternative way to create HITs from the <code>CreateHIT</code> operation. This is the recommended best practice for Requesters who are creating large numbers of HITs. </p> <p>CreateHITWithHITType also supports several ways to provide question data: by providing a value for the <code>Question</code> parameter that fully specifies the contents of the HIT, or by providing a <code>HitLayoutId</code> and associated <code>HitLayoutParameters</code>. </p> <note> <p> If a HIT is created with 10 or more maximum assignments, there is an additional fee. For more information, see <a href="https://requester.mturk.com/pricing">Amazon Mechanical Turk Pricing</a>. </p> </note>

__Required Parameters__

* `hITTypeId` __:__ `String`
* `lifetimeInSeconds` __:__ `Int`


-}

createHITWithHITType :
  
    String ->
  
    Int ->
  
  
    ( CreateHITWithHITTypeOptions -> CreateHITWithHITTypeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateHITWithHITTypeResponse)

createHITWithHITType hITTypeId lifetimeInSeconds setOptions =
    
    let
        requestInput = CreateHITWithHITTypeRequest
            
            hITTypeId
            
            options.maxAssignments
            
            lifetimeInSeconds
            
            options.question
            
            options.requesterAnnotation
            
            options.uniqueRequestToken
            
            options.assignmentReviewPolicy
            
            options.hITReviewPolicy
            
            options.hITLayoutId
            
            options.hITLayoutParameters
            
        
        options = setOptions (CreateHITWithHITTypeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createHITWithHITTypeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateHITWithHITType"
                
                (AWS.Core.Decode.ResultDecoder "CreateHITWithHITTypeResponse" createHITWithHITTypeResponseDecoder)
                
            )



{-| Options for a createHITWithHITType request
-}
type alias CreateHITWithHITTypeOptions =
    {
    maxAssignments : Maybe Int,question : Maybe String,requesterAnnotation : Maybe String,uniqueRequestToken : Maybe String,assignmentReviewPolicy : Maybe ReviewPolicy,hITReviewPolicy : Maybe ReviewPolicy,hITLayoutId : Maybe String,hITLayoutParameters : Maybe (List HITLayoutParameter)
    }



{-| <p> The <code>CreateQualificationType</code> operation creates a new Qualification type, which is represented by a <code>QualificationType</code> data structure. </p>

__Required Parameters__

* `name` __:__ `String`
* `description` __:__ `String`
* `qualificationTypeStatus` __:__ `QualificationTypeStatus`


-}

createQualificationType :
  
    String ->
  
    String ->
  
    QualificationTypeStatus ->
  
  
    ( CreateQualificationTypeOptions -> CreateQualificationTypeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateQualificationTypeResponse)

createQualificationType name description qualificationTypeStatus setOptions =
    
    let
        requestInput = CreateQualificationTypeRequest
            
            name
            
            options.keywords
            
            description
            
            qualificationTypeStatus
            
            options.retryDelayInSeconds
            
            options.test
            
            options.answerKey
            
            options.testDurationInSeconds
            
            options.autoGranted
            
            options.autoGrantedValue
            
        
        options = setOptions (CreateQualificationTypeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createQualificationTypeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateQualificationType"
                
                (AWS.Core.Decode.ResultDecoder "CreateQualificationTypeResponse" createQualificationTypeResponseDecoder)
                
            )



{-| Options for a createQualificationType request
-}
type alias CreateQualificationTypeOptions =
    {
    keywords : Maybe String,retryDelayInSeconds : Maybe Int,test : Maybe String,answerKey : Maybe String,testDurationInSeconds : Maybe Int,autoGranted : Maybe Bool,autoGrantedValue : Maybe Int
    }



{-| <p>The <code>CreateWorkerBlock</code> operation allows you to prevent a Worker from working on your HITs. For example, you can block a Worker who is producing poor quality work. You can block up to 100,000 Workers.</p>

__Required Parameters__

* `workerId` __:__ `String`
* `reason` __:__ `String`


-}

createWorkerBlock :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateWorkerBlockResponse)

createWorkerBlock workerId reason =
    
    let
        requestInput = CreateWorkerBlockRequest
            
            workerId
            
            reason
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createWorkerBlockRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateWorkerBlock"
                
                (AWS.Core.Decode.ResultDecoder "CreateWorkerBlockResponse" createWorkerBlockResponseDecoder)
                
            )





{-| <p> The <code>DeleteHIT</code> operation is used to delete HIT that is no longer needed. Only the Requester who created the HIT can delete it. </p> <p> You can only dispose of HITs that are in the <code>Reviewable</code> state, with all of their submitted assignments already either approved or rejected. If you call the DeleteHIT operation on a HIT that is not in the <code>Reviewable</code> state (for example, that has not expired, or still has active assignments), or on a HIT that is Reviewable but without all of its submitted assignments already approved or rejected, the service will return an error. </p> <note> <ul> <li> <p> HITs are automatically disposed of after 120 days. </p> </li> <li> <p> After you dispose of a HIT, you can no longer approve the HIT's rejected assignments. </p> </li> <li> <p> Disposed HITs are not returned in results for the ListHITs operation. </p> </li> <li> <p> Disposing HITs can improve the performance of operations such as ListReviewableHITs and ListHITs. </p> </li> </ul> </note>

__Required Parameters__

* `hITId` __:__ `String`


-}

deleteHIT :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteHITResponse)

deleteHIT hITId =
    
    let
        requestInput = DeleteHITRequest
            
            hITId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteHITRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteHIT"
                
                (AWS.Core.Decode.ResultDecoder "DeleteHITResponse" deleteHITResponseDecoder)
                
            )





{-| <p> The <code>DeleteQualificationType</code> deletes a Qualification type and deletes any HIT types that are associated with the Qualification type. </p> <p>This operation does not revoke Qualifications already assigned to Workers because the Qualifications might be needed for active HITs. If there are any pending requests for the Qualification type, Amazon Mechanical Turk rejects those requests. After you delete a Qualification type, you can no longer use it to create HITs or HIT types.</p> <note> <p>DeleteQualificationType must wait for all the HITs that use the deleted Qualification type to be deleted before completing. It may take up to 48 hours before DeleteQualificationType completes and the unique name of the Qualification type is available for reuse with CreateQualificationType.</p> </note>

__Required Parameters__

* `qualificationTypeId` __:__ `String`


-}

deleteQualificationType :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteQualificationTypeResponse)

deleteQualificationType qualificationTypeId =
    
    let
        requestInput = DeleteQualificationTypeRequest
            
            qualificationTypeId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteQualificationTypeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteQualificationType"
                
                (AWS.Core.Decode.ResultDecoder "DeleteQualificationTypeResponse" deleteQualificationTypeResponseDecoder)
                
            )





{-| <p>The <code>DeleteWorkerBlock</code> operation allows you to reinstate a blocked Worker to work on your HITs. This operation reverses the effects of the CreateWorkerBlock operation. You need the Worker ID to use this operation. If the Worker ID is missing or invalid, this operation fails and returns the message “WorkerId is invalid.” If the specified Worker is not blocked, this operation returns successfully.</p>

__Required Parameters__

* `workerId` __:__ `String`


-}

deleteWorkerBlock :
  
    String ->
  
  
    ( DeleteWorkerBlockOptions -> DeleteWorkerBlockOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteWorkerBlockResponse)

deleteWorkerBlock workerId setOptions =
    
    let
        requestInput = DeleteWorkerBlockRequest
            
            workerId
            
            options.reason
            
        
        options = setOptions (DeleteWorkerBlockOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteWorkerBlockRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteWorkerBlock"
                
                (AWS.Core.Decode.ResultDecoder "DeleteWorkerBlockResponse" deleteWorkerBlockResponseDecoder)
                
            )



{-| Options for a deleteWorkerBlock request
-}
type alias DeleteWorkerBlockOptions =
    {
    reason : Maybe String
    }



{-| <p> The <code>DisassociateQualificationFromWorker</code> revokes a previously granted Qualification from a user. </p> <p> You can provide a text message explaining why the Qualification was revoked. The user who had the Qualification can see this message. </p>

__Required Parameters__

* `workerId` __:__ `String`
* `qualificationTypeId` __:__ `String`


-}

disassociateQualificationFromWorker :
  
    String ->
  
    String ->
  
  
    ( DisassociateQualificationFromWorkerOptions -> DisassociateQualificationFromWorkerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateQualificationFromWorkerResponse)

disassociateQualificationFromWorker workerId qualificationTypeId setOptions =
    
    let
        requestInput = DisassociateQualificationFromWorkerRequest
            
            workerId
            
            qualificationTypeId
            
            options.reason
            
        
        options = setOptions (DisassociateQualificationFromWorkerOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disassociateQualificationFromWorkerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisassociateQualificationFromWorker"
                
                (AWS.Core.Decode.ResultDecoder "DisassociateQualificationFromWorkerResponse" disassociateQualificationFromWorkerResponseDecoder)
                
            )



{-| Options for a disassociateQualificationFromWorker request
-}
type alias DisassociateQualificationFromWorkerOptions =
    {
    reason : Maybe String
    }



{-| <p>The <code>GetAccountBalance</code> operation retrieves the amount of money in your Amazon Mechanical Turk account.</p>

__Required Parameters__



-}

getAccountBalance :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAccountBalanceResponse)

getAccountBalance =
    
    let
        requestInput = GetAccountBalanceRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getAccountBalanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetAccountBalance"
                
                (AWS.Core.Decode.ResultDecoder "GetAccountBalanceResponse" getAccountBalanceResponseDecoder)
                
            )





{-| <p> The <code>GetAssignment</code> operation retrieves the details of the specified Assignment. </p>

__Required Parameters__

* `assignmentId` __:__ `String`


-}

getAssignment :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAssignmentResponse)

getAssignment assignmentId =
    
    let
        requestInput = GetAssignmentRequest
            
            assignmentId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getAssignmentRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetAssignment"
                
                (AWS.Core.Decode.ResultDecoder "GetAssignmentResponse" getAssignmentResponseDecoder)
                
            )





{-| <p> The <code>GetFileUploadURL</code> operation generates and returns a temporary URL. You use the temporary URL to retrieve a file uploaded by a Worker as an answer to a FileUploadAnswer question for a HIT. The temporary URL is generated the instant the GetFileUploadURL operation is called, and is valid for 60 seconds. You can get a temporary file upload URL any time until the HIT is disposed. After the HIT is disposed, any uploaded files are deleted, and cannot be retrieved. Pending Deprecation on December 12, 2017. The Answer Specification structure will no longer support the <code>FileUploadAnswer</code> element to be used for the QuestionForm data structure. Instead, we recommend that Requesters who want to create HITs asking Workers to upload files to use Amazon S3. </p>

__Required Parameters__

* `assignmentId` __:__ `String`
* `questionIdentifier` __:__ `String`


-}

getFileUploadURL :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetFileUploadURLResponse)

getFileUploadURL assignmentId questionIdentifier =
    
    let
        requestInput = GetFileUploadURLRequest
            
            assignmentId
            
            questionIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getFileUploadURLRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetFileUploadURL"
                
                (AWS.Core.Decode.ResultDecoder "GetFileUploadURLResponse" getFileUploadURLResponseDecoder)
                
            )





{-| <p> The <code>GetHIT</code> operation retrieves the details of the specified HIT. </p>

__Required Parameters__

* `hITId` __:__ `String`


-}

getHIT :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetHITResponse)

getHIT hITId =
    
    let
        requestInput = GetHITRequest
            
            hITId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getHITRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetHIT"
                
                (AWS.Core.Decode.ResultDecoder "GetHITResponse" getHITResponseDecoder)
                
            )





{-| <p> The <code>GetQualificationScore</code> operation returns the value of a Worker's Qualification for a given Qualification type. </p> <p> To get a Worker's Qualification, you must know the Worker's ID. The Worker's ID is included in the assignment data returned by the <code>ListAssignmentsForHIT</code> operation. </p> <p>Only the owner of a Qualification type can query the value of a Worker's Qualification of that type.</p>

__Required Parameters__

* `qualificationTypeId` __:__ `String`
* `workerId` __:__ `String`


-}

getQualificationScore :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetQualificationScoreResponse)

getQualificationScore qualificationTypeId workerId =
    
    let
        requestInput = GetQualificationScoreRequest
            
            qualificationTypeId
            
            workerId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getQualificationScoreRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetQualificationScore"
                
                (AWS.Core.Decode.ResultDecoder "GetQualificationScoreResponse" getQualificationScoreResponseDecoder)
                
            )





{-| <p> The <code>GetQualificationType</code>operation retrieves information about a Qualification type using its ID. </p>

__Required Parameters__

* `qualificationTypeId` __:__ `String`


-}

getQualificationType :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetQualificationTypeResponse)

getQualificationType qualificationTypeId =
    
    let
        requestInput = GetQualificationTypeRequest
            
            qualificationTypeId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getQualificationTypeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetQualificationType"
                
                (AWS.Core.Decode.ResultDecoder "GetQualificationTypeResponse" getQualificationTypeResponseDecoder)
                
            )





{-| <p> The <code>ListAssignmentsForHIT</code> operation retrieves completed assignments for a HIT. You can use this operation to retrieve the results for a HIT. </p> <p> You can get assignments for a HIT at any time, even if the HIT is not yet Reviewable. If a HIT requested multiple assignments, and has received some results but has not yet become Reviewable, you can still retrieve the partial results with this operation. </p> <p> Use the AssignmentStatus parameter to control which set of assignments for a HIT are returned. The ListAssignmentsForHIT operation can return submitted assignments awaiting approval, or it can return assignments that have already been approved or rejected. You can set AssignmentStatus=Approved,Rejected to get assignments that have already been approved and rejected together in one result set. </p> <p> Only the Requester who created the HIT can retrieve the assignments for that HIT. </p> <p> Results are sorted and divided into numbered pages and the operation returns a single page of results. You can use the parameters of the operation to control sorting and pagination. </p>

__Required Parameters__

* `hITId` __:__ `String`


-}

listAssignmentsForHIT :
  
    String ->
  
  
    ( ListAssignmentsForHITOptions -> ListAssignmentsForHITOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAssignmentsForHITResponse)

listAssignmentsForHIT hITId setOptions =
    
    let
        requestInput = ListAssignmentsForHITRequest
            
            hITId
            
            options.nextToken
            
            options.maxResults
            
            options.assignmentStatuses
            
        
        options = setOptions (ListAssignmentsForHITOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listAssignmentsForHITRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListAssignmentsForHIT"
                
                (AWS.Core.Decode.ResultDecoder "ListAssignmentsForHITResponse" listAssignmentsForHITResponseDecoder)
                
            )



{-| Options for a listAssignmentsForHIT request
-}
type alias ListAssignmentsForHITOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int,assignmentStatuses : Maybe (List AssignmentStatus)
    }



{-| <p> The <code>ListBonusPayments</code> operation retrieves the amounts of bonuses you have paid to Workers for a given HIT or assignment. </p>

__Required Parameters__



-}

listBonusPayments :
  
  
    ( ListBonusPaymentsOptions -> ListBonusPaymentsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListBonusPaymentsResponse)

listBonusPayments setOptions =
    
    let
        requestInput = ListBonusPaymentsRequest
            
            options.hITId
            
            options.assignmentId
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListBonusPaymentsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listBonusPaymentsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListBonusPayments"
                
                (AWS.Core.Decode.ResultDecoder "ListBonusPaymentsResponse" listBonusPaymentsResponseDecoder)
                
            )



{-| Options for a listBonusPayments request
-}
type alias ListBonusPaymentsOptions =
    {
    hITId : Maybe String,assignmentId : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p> The <code>ListHITs</code> operation returns all of a Requester's HITs. The operation returns HITs of any status, except for HITs that have been deleted of with the DeleteHIT operation or that have been auto-deleted. </p>

__Required Parameters__



-}

listHITs :
  
  
    ( ListHITsOptions -> ListHITsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListHITsResponse)

listHITs setOptions =
    
    let
        requestInput = ListHITsRequest
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListHITsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listHITsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListHITs"
                
                (AWS.Core.Decode.ResultDecoder "ListHITsResponse" listHITsResponseDecoder)
                
            )



{-| Options for a listHITs request
-}
type alias ListHITsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p> The <code>ListHITsForQualificationType</code> operation returns the HITs that use the given Qualification type for a Qualification requirement. The operation returns HITs of any status, except for HITs that have been deleted with the <code>DeleteHIT</code> operation or that have been auto-deleted. </p>

__Required Parameters__

* `qualificationTypeId` __:__ `String`


-}

listHITsForQualificationType :
  
    String ->
  
  
    ( ListHITsForQualificationTypeOptions -> ListHITsForQualificationTypeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListHITsForQualificationTypeResponse)

listHITsForQualificationType qualificationTypeId setOptions =
    
    let
        requestInput = ListHITsForQualificationTypeRequest
            
            qualificationTypeId
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListHITsForQualificationTypeOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listHITsForQualificationTypeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListHITsForQualificationType"
                
                (AWS.Core.Decode.ResultDecoder "ListHITsForQualificationTypeResponse" listHITsForQualificationTypeResponseDecoder)
                
            )



{-| Options for a listHITsForQualificationType request
-}
type alias ListHITsForQualificationTypeOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p> The <code>ListQualificationRequests</code> operation retrieves requests for Qualifications of a particular Qualification type. The owner of the Qualification type calls this operation to poll for pending requests, and accepts them using the AcceptQualification operation. </p>

__Required Parameters__



-}

listQualificationRequests :
  
  
    ( ListQualificationRequestsOptions -> ListQualificationRequestsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListQualificationRequestsResponse)

listQualificationRequests setOptions =
    
    let
        requestInput = ListQualificationRequestsRequest
            
            options.qualificationTypeId
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListQualificationRequestsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listQualificationRequestsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListQualificationRequests"
                
                (AWS.Core.Decode.ResultDecoder "ListQualificationRequestsResponse" listQualificationRequestsResponseDecoder)
                
            )



{-| Options for a listQualificationRequests request
-}
type alias ListQualificationRequestsOptions =
    {
    qualificationTypeId : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p> The <code>ListQualificationTypes</code> operation returns a list of Qualification types, filtered by an optional search term. </p>

__Required Parameters__

* `mustBeRequestable` __:__ `Bool`


-}

listQualificationTypes :
  
    Bool ->
  
  
    ( ListQualificationTypesOptions -> ListQualificationTypesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListQualificationTypesResponse)

listQualificationTypes mustBeRequestable setOptions =
    
    let
        requestInput = ListQualificationTypesRequest
            
            options.query
            
            mustBeRequestable
            
            options.mustBeOwnedByCaller
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListQualificationTypesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listQualificationTypesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListQualificationTypes"
                
                (AWS.Core.Decode.ResultDecoder "ListQualificationTypesResponse" listQualificationTypesResponseDecoder)
                
            )



{-| Options for a listQualificationTypes request
-}
type alias ListQualificationTypesOptions =
    {
    query : Maybe String,mustBeOwnedByCaller : Maybe Bool,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p> The <code>ListReviewPolicyResultsForHIT</code> operation retrieves the computed results and the actions taken in the course of executing your Review Policies for a given HIT. For information about how to specify Review Policies when you call CreateHIT, see Review Policies. The ListReviewPolicyResultsForHIT operation can return results for both Assignment-level and HIT-level review results. </p>

__Required Parameters__

* `hITId` __:__ `String`


-}

listReviewPolicyResultsForHIT :
  
    String ->
  
  
    ( ListReviewPolicyResultsForHITOptions -> ListReviewPolicyResultsForHITOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListReviewPolicyResultsForHITResponse)

listReviewPolicyResultsForHIT hITId setOptions =
    
    let
        requestInput = ListReviewPolicyResultsForHITRequest
            
            hITId
            
            options.policyLevels
            
            options.retrieveActions
            
            options.retrieveResults
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListReviewPolicyResultsForHITOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listReviewPolicyResultsForHITRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListReviewPolicyResultsForHIT"
                
                (AWS.Core.Decode.ResultDecoder "ListReviewPolicyResultsForHITResponse" listReviewPolicyResultsForHITResponseDecoder)
                
            )



{-| Options for a listReviewPolicyResultsForHIT request
-}
type alias ListReviewPolicyResultsForHITOptions =
    {
    policyLevels : Maybe (List ReviewPolicyLevel),retrieveActions : Maybe Bool,retrieveResults : Maybe Bool,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p> The <code>ListReviewableHITs</code> operation retrieves the HITs with Status equal to Reviewable or Status equal to Reviewing that belong to the Requester calling the operation. </p>

__Required Parameters__



-}

listReviewableHITs :
  
  
    ( ListReviewableHITsOptions -> ListReviewableHITsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListReviewableHITsResponse)

listReviewableHITs setOptions =
    
    let
        requestInput = ListReviewableHITsRequest
            
            options.hITTypeId
            
            options.status
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListReviewableHITsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listReviewableHITsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListReviewableHITs"
                
                (AWS.Core.Decode.ResultDecoder "ListReviewableHITsResponse" listReviewableHITsResponseDecoder)
                
            )



{-| Options for a listReviewableHITs request
-}
type alias ListReviewableHITsOptions =
    {
    hITTypeId : Maybe String,status : Maybe ReviewableHITStatus,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>The <code>ListWorkersBlocks</code> operation retrieves a list of Workers who are blocked from working on your HITs.</p>

__Required Parameters__



-}

listWorkerBlocks :
  
  
    ( ListWorkerBlocksOptions -> ListWorkerBlocksOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListWorkerBlocksResponse)

listWorkerBlocks setOptions =
    
    let
        requestInput = ListWorkerBlocksRequest
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListWorkerBlocksOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listWorkerBlocksRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListWorkerBlocks"
                
                (AWS.Core.Decode.ResultDecoder "ListWorkerBlocksResponse" listWorkerBlocksResponseDecoder)
                
            )



{-| Options for a listWorkerBlocks request
-}
type alias ListWorkerBlocksOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p> The <code>ListWorkersWithQualificationType</code> operation returns all of the Workers that have been associated with a given Qualification type. </p>

__Required Parameters__

* `qualificationTypeId` __:__ `String`


-}

listWorkersWithQualificationType :
  
    String ->
  
  
    ( ListWorkersWithQualificationTypeOptions -> ListWorkersWithQualificationTypeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListWorkersWithQualificationTypeResponse)

listWorkersWithQualificationType qualificationTypeId setOptions =
    
    let
        requestInput = ListWorkersWithQualificationTypeRequest
            
            qualificationTypeId
            
            options.status
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListWorkersWithQualificationTypeOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listWorkersWithQualificationTypeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListWorkersWithQualificationType"
                
                (AWS.Core.Decode.ResultDecoder "ListWorkersWithQualificationTypeResponse" listWorkersWithQualificationTypeResponseDecoder)
                
            )



{-| Options for a listWorkersWithQualificationType request
-}
type alias ListWorkersWithQualificationTypeOptions =
    {
    status : Maybe QualificationStatus,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p> The <code>NotifyWorkers</code> operation sends an email to one or more Workers that you specify with the Worker ID. You can specify up to 100 Worker IDs to send the same message with a single call to the NotifyWorkers operation. The NotifyWorkers operation will send a notification email to a Worker only if you have previously approved or rejected work from the Worker. </p>

__Required Parameters__

* `subject` __:__ `String`
* `messageText` __:__ `String`
* `workerIds` __:__ `(List String)`


-}

notifyWorkers :
  
    String ->
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper NotifyWorkersResponse)

notifyWorkers subject messageText workerIds =
    
    let
        requestInput = NotifyWorkersRequest
            
            subject
            
            messageText
            
            workerIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> notifyWorkersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "NotifyWorkers"
                
                (AWS.Core.Decode.ResultDecoder "NotifyWorkersResponse" notifyWorkersResponseDecoder)
                
            )





{-| <p> The <code>RejectAssignment</code> operation rejects the results of a completed assignment. </p> <p> You can include an optional feedback message with the rejection, which the Worker can see in the Status section of the web site. When you include a feedback message with the rejection, it helps the Worker understand why the assignment was rejected, and can improve the quality of the results the Worker submits in the future. </p> <p> Only the Requester who created the HIT can reject an assignment for the HIT. </p>

__Required Parameters__

* `assignmentId` __:__ `String`
* `requesterFeedback` __:__ `String`


-}

rejectAssignment :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RejectAssignmentResponse)

rejectAssignment assignmentId requesterFeedback =
    
    let
        requestInput = RejectAssignmentRequest
            
            assignmentId
            
            requesterFeedback
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> rejectAssignmentRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RejectAssignment"
                
                (AWS.Core.Decode.ResultDecoder "RejectAssignmentResponse" rejectAssignmentResponseDecoder)
                
            )





{-| <p> The <code>RejectQualificationRequest</code> operation rejects a user's request for a Qualification. </p> <p> You can provide a text message explaining why the request was rejected. The Worker who made the request can see this message.</p>

__Required Parameters__

* `qualificationRequestId` __:__ `String`


-}

rejectQualificationRequest :
  
    String ->
  
  
    ( RejectQualificationRequestOptions -> RejectQualificationRequestOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RejectQualificationRequestResponse)

rejectQualificationRequest qualificationRequestId setOptions =
    
    let
        requestInput = RejectQualificationRequestRequest
            
            qualificationRequestId
            
            options.reason
            
        
        options = setOptions (RejectQualificationRequestOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> rejectQualificationRequestRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RejectQualificationRequest"
                
                (AWS.Core.Decode.ResultDecoder "RejectQualificationRequestResponse" rejectQualificationRequestResponseDecoder)
                
            )



{-| Options for a rejectQualificationRequest request
-}
type alias RejectQualificationRequestOptions =
    {
    reason : Maybe String
    }



{-| <p> The <code>SendBonus</code> operation issues a payment of money from your account to a Worker. This payment happens separately from the reward you pay to the Worker when you approve the Worker's assignment. The SendBonus operation requires the Worker's ID and the assignment ID as parameters to initiate payment of the bonus. You must include a message that explains the reason for the bonus payment, as the Worker may not be expecting the payment. Amazon Mechanical Turk collects a fee for bonus payments, similar to the HIT listing fee. This operation fails if your account does not have enough funds to pay for both the bonus and the fees. </p>

__Required Parameters__

* `workerId` __:__ `String`
* `bonusAmount` __:__ `String`
* `assignmentId` __:__ `String`
* `reason` __:__ `String`


-}

sendBonus :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( SendBonusOptions -> SendBonusOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SendBonusResponse)

sendBonus workerId bonusAmount assignmentId reason setOptions =
    
    let
        requestInput = SendBonusRequest
            
            workerId
            
            bonusAmount
            
            assignmentId
            
            reason
            
            options.uniqueRequestToken
            
        
        options = setOptions (SendBonusOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> sendBonusRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SendBonus"
                
                (AWS.Core.Decode.ResultDecoder "SendBonusResponse" sendBonusResponseDecoder)
                
            )



{-| Options for a sendBonus request
-}
type alias SendBonusOptions =
    {
    uniqueRequestToken : Maybe String
    }



{-| <p> The <code>SendTestEventNotification</code> operation causes Amazon Mechanical Turk to send a notification message as if a HIT event occurred, according to the provided notification specification. This allows you to test notifications without setting up notifications for a real HIT type and trying to trigger them using the website. When you call this operation, the service attempts to send the test notification immediately. </p>

__Required Parameters__

* `notification` __:__ `NotificationSpecification`
* `testEventType` __:__ `EventType`


-}

sendTestEventNotification :
  
    NotificationSpecification ->
  
    EventType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SendTestEventNotificationResponse)

sendTestEventNotification notification testEventType =
    
    let
        requestInput = SendTestEventNotificationRequest
            
            notification
            
            testEventType
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> sendTestEventNotificationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SendTestEventNotification"
                
                (AWS.Core.Decode.ResultDecoder "SendTestEventNotificationResponse" sendTestEventNotificationResponseDecoder)
                
            )





{-| <p> The <code>UpdateExpirationForHIT</code> operation allows you update the expiration time of a HIT. If you update it to a time in the past, the HIT will be immediately expired. </p>

__Required Parameters__

* `hITId` __:__ `String`
* `expireAt` __:__ `Posix`


-}

updateExpirationForHIT :
  
    String ->
  
    Posix ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateExpirationForHITResponse)

updateExpirationForHIT hITId expireAt =
    
    let
        requestInput = UpdateExpirationForHITRequest
            
            hITId
            
            expireAt
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateExpirationForHITRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateExpirationForHIT"
                
                (AWS.Core.Decode.ResultDecoder "UpdateExpirationForHITResponse" updateExpirationForHITResponseDecoder)
                
            )





{-| <p> The <code>UpdateHITReviewStatus</code> operation updates the status of a HIT. If the status is Reviewable, this operation can update the status to Reviewing, or it can revert a Reviewing HIT back to the Reviewable status. </p>

__Required Parameters__

* `hITId` __:__ `String`


-}

updateHITReviewStatus :
  
    String ->
  
  
    ( UpdateHITReviewStatusOptions -> UpdateHITReviewStatusOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateHITReviewStatusResponse)

updateHITReviewStatus hITId setOptions =
    
    let
        requestInput = UpdateHITReviewStatusRequest
            
            hITId
            
            options.revert
            
        
        options = setOptions (UpdateHITReviewStatusOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateHITReviewStatusRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateHITReviewStatus"
                
                (AWS.Core.Decode.ResultDecoder "UpdateHITReviewStatusResponse" updateHITReviewStatusResponseDecoder)
                
            )



{-| Options for a updateHITReviewStatus request
-}
type alias UpdateHITReviewStatusOptions =
    {
    revert : Maybe Bool
    }



{-| <p> The <code>UpdateHITTypeOfHIT</code> operation allows you to change the HITType properties of a HIT. This operation disassociates the HIT from its old HITType properties and associates it with the new HITType properties. The HIT takes on the properties of the new HITType in place of the old ones. </p>

__Required Parameters__

* `hITId` __:__ `String`
* `hITTypeId` __:__ `String`


-}

updateHITTypeOfHIT :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateHITTypeOfHITResponse)

updateHITTypeOfHIT hITId hITTypeId =
    
    let
        requestInput = UpdateHITTypeOfHITRequest
            
            hITId
            
            hITTypeId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateHITTypeOfHITRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateHITTypeOfHIT"
                
                (AWS.Core.Decode.ResultDecoder "UpdateHITTypeOfHITResponse" updateHITTypeOfHITResponseDecoder)
                
            )





{-| <p> The <code>UpdateNotificationSettings</code> operation creates, updates, disables or re-enables notifications for a HIT type. If you call the UpdateNotificationSettings operation for a HIT type that already has a notification specification, the operation replaces the old specification with a new one. You can call the UpdateNotificationSettings operation to enable or disable notifications for the HIT type, without having to modify the notification specification itself by providing updates to the Active status without specifying a new notification specification. To change the Active status of a HIT type's notifications, the HIT type must already have a notification specification, or one must be provided in the same call to <code>UpdateNotificationSettings</code>. </p>

__Required Parameters__

* `hITTypeId` __:__ `String`


-}

updateNotificationSettings :
  
    String ->
  
  
    ( UpdateNotificationSettingsOptions -> UpdateNotificationSettingsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateNotificationSettingsResponse)

updateNotificationSettings hITTypeId setOptions =
    
    let
        requestInput = UpdateNotificationSettingsRequest
            
            hITTypeId
            
            options.notification
            
            options.active
            
        
        options = setOptions (UpdateNotificationSettingsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateNotificationSettingsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateNotificationSettings"
                
                (AWS.Core.Decode.ResultDecoder "UpdateNotificationSettingsResponse" updateNotificationSettingsResponseDecoder)
                
            )



{-| Options for a updateNotificationSettings request
-}
type alias UpdateNotificationSettingsOptions =
    {
    notification : Maybe NotificationSpecification,active : Maybe Bool
    }



{-| <p> The <code>UpdateQualificationType</code> operation modifies the attributes of an existing Qualification type, which is represented by a QualificationType data structure. Only the owner of a Qualification type can modify its attributes. </p> <p> Most attributes of a Qualification type can be changed after the type has been created. However, the Name and Keywords fields cannot be modified. The RetryDelayInSeconds parameter can be modified or added to change the delay or to enable retries, but RetryDelayInSeconds cannot be used to disable retries. </p> <p> You can use this operation to update the test for a Qualification type. The test is updated based on the values specified for the Test, TestDurationInSeconds and AnswerKey parameters. All three parameters specify the updated test. If you are updating the test for a type, you must specify the Test and TestDurationInSeconds parameters. The AnswerKey parameter is optional; omitting it specifies that the updated test does not have an answer key. </p> <p> If you omit the Test parameter, the test for the Qualification type is unchanged. There is no way to remove a test from a Qualification type that has one. If the type already has a test, you cannot update it to be AutoGranted. If the Qualification type does not have a test and one is provided by an update, the type will henceforth have a test. </p> <p> If you want to update the test duration or answer key for an existing test without changing the questions, you must specify a Test parameter with the original questions, along with the updated values. </p> <p> If you provide an updated Test but no AnswerKey, the new test will not have an answer key. Requests for such Qualifications must be granted manually. </p> <p> You can also update the AutoGranted and AutoGrantedValue attributes of the Qualification type.</p>

__Required Parameters__

* `qualificationTypeId` __:__ `String`


-}

updateQualificationType :
  
    String ->
  
  
    ( UpdateQualificationTypeOptions -> UpdateQualificationTypeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateQualificationTypeResponse)

updateQualificationType qualificationTypeId setOptions =
    
    let
        requestInput = UpdateQualificationTypeRequest
            
            qualificationTypeId
            
            options.description
            
            options.qualificationTypeStatus
            
            options.test
            
            options.answerKey
            
            options.testDurationInSeconds
            
            options.retryDelayInSeconds
            
            options.autoGranted
            
            options.autoGrantedValue
            
        
        options = setOptions (UpdateQualificationTypeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateQualificationTypeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateQualificationType"
                
                (AWS.Core.Decode.ResultDecoder "UpdateQualificationTypeResponse" updateQualificationTypeResponseDecoder)
                
            )



{-| Options for a updateQualificationType request
-}
type alias UpdateQualificationTypeOptions =
    {
    description : Maybe String,qualificationTypeStatus : Maybe QualificationTypeStatus,test : Maybe String,answerKey : Maybe String,testDurationInSeconds : Maybe Int,retryDelayInSeconds : Maybe Int,autoGranted : Maybe Bool,autoGrantedValue : Maybe Int
    }




{-| Type of HTTP response from acceptQualificationRequest
-}
type alias AcceptQualificationRequestResponse =
    { 
    }



acceptQualificationRequestResponseDecoder : JD.Decoder AcceptQualificationRequestResponse
acceptQualificationRequestResponseDecoder =
    JD.succeed AcceptQualificationRequestResponse
        




acceptQualificationRequestResponseToString : AcceptQualificationRequestResponse -> String -- List (String, String)
acceptQualificationRequestResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from approveAssignment
-}
type alias ApproveAssignmentResponse =
    { 
    }



approveAssignmentResponseDecoder : JD.Decoder ApproveAssignmentResponse
approveAssignmentResponseDecoder =
    JD.succeed ApproveAssignmentResponse
        




approveAssignmentResponseToString : ApproveAssignmentResponse -> String -- List (String, String)
approveAssignmentResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p> The Assignment data structure represents a single assignment of a HIT to a Worker. The assignment tracks the Worker's efforts to complete the HIT, and contains the results for later retrieval. </p>
-}
type alias Assignment =
    { assignmentId : Maybe String
    , workerId : Maybe String
    , hITId : Maybe String
    , assignmentStatus : Maybe AssignmentStatus
    , autoApprovalTime : Maybe Posix
    , acceptTime : Maybe Posix
    , submitTime : Maybe Posix
    , approvalTime : Maybe Posix
    , rejectionTime : Maybe Posix
    , deadline : Maybe Posix
    , answer : Maybe String
    , requesterFeedback : Maybe String
    }



assignmentDecoder : JD.Decoder Assignment
assignmentDecoder =
    JD.succeed Assignment
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AssignmentId", "assignmentId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkerId", "workerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HITId", "hITId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AssignmentStatus", "assignmentStatus"]
            assignmentStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoApprovalTime", "autoApprovalTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AcceptTime", "acceptTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubmitTime", "submitTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApprovalTime", "approvalTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RejectionTime", "rejectionTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Deadline", "deadline"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Answer", "answer"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RequesterFeedback", "requesterFeedback"]
            JD.string
        )
        




assignmentToString : Assignment -> String -- List (String, String)
assignmentToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "assignmentId" "" -- val.assignmentId
        
    --     |> Dict.insert
    --         "workerId" "" -- val.workerId
        
    --     |> Dict.insert
    --         "hITId" "" -- val.hITId
        
    --     |> Dict.insert
    --         "assignmentStatus" "" -- val.assignmentStatus
        
    --     |> Dict.insert
    --         "autoApprovalTime" "" -- val.autoApprovalTime
        
    --     |> Dict.insert
    --         "acceptTime" "" -- val.acceptTime
        
    --     |> Dict.insert
    --         "submitTime" "" -- val.submitTime
        
    --     |> Dict.insert
    --         "approvalTime" "" -- val.approvalTime
        
    --     |> Dict.insert
    --         "rejectionTime" "" -- val.rejectionTime
        
    --     |> Dict.insert
    --         "deadline" "" -- val.deadline
        
    --     |> Dict.insert
    --         "answer" "" -- val.answer
        
    --     |> Dict.insert
    --         "requesterFeedback" "" -- val.requesterFeedback
        
    --     |> Dict.toList
    ""



{-| One of

* `AssignmentStatus_Submitted`
* `AssignmentStatus_Approved`
* `AssignmentStatus_Rejected`

-}
type AssignmentStatus
    = AssignmentStatus_Submitted
    | AssignmentStatus_Approved
    | AssignmentStatus_Rejected



assignmentStatusDecoder : JD.Decoder AssignmentStatus
assignmentStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Submitted" ->
                        JD.succeed AssignmentStatus_Submitted

                    "Approved" ->
                        JD.succeed AssignmentStatus_Approved

                    "Rejected" ->
                        JD.succeed AssignmentStatus_Rejected


                    _ ->
                        JD.fail "bad thing"
            )




assignmentStatusToString : AssignmentStatus -> String
assignmentStatusToString val =
    case val of
        AssignmentStatus_Submitted ->
            "Submitted"

        AssignmentStatus_Approved ->
            "Approved"

        AssignmentStatus_Rejected ->
            "Rejected"




{-| Type of HTTP response from associateQualificationWithWorker
-}
type alias AssociateQualificationWithWorkerResponse =
    { 
    }



associateQualificationWithWorkerResponseDecoder : JD.Decoder AssociateQualificationWithWorkerResponse
associateQualificationWithWorkerResponseDecoder =
    JD.succeed AssociateQualificationWithWorkerResponse
        




associateQualificationWithWorkerResponseToString : AssociateQualificationWithWorkerResponse -> String -- List (String, String)
associateQualificationWithWorkerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>An object representing a Bonus payment paid to a Worker.</p>
-}
type alias BonusPayment =
    { workerId : Maybe String
    , bonusAmount : Maybe String
    , assignmentId : Maybe String
    , reason : Maybe String
    , grantTime : Maybe Posix
    }



bonusPaymentDecoder : JD.Decoder BonusPayment
bonusPaymentDecoder =
    JD.succeed BonusPayment
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkerId", "workerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BonusAmount", "bonusAmount"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AssignmentId", "assignmentId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Reason", "reason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GrantTime", "grantTime"]
            JDX.datetime
        )
        




bonusPaymentToString : BonusPayment -> String -- List (String, String)
bonusPaymentToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workerId" "" -- val.workerId
        
    --     |> Dict.insert
    --         "bonusAmount" "" -- val.bonusAmount
        
    --     |> Dict.insert
    --         "assignmentId" "" -- val.assignmentId
        
    --     |> Dict.insert
    --         "reason" "" -- val.reason
        
    --     |> Dict.insert
    --         "grantTime" "" -- val.grantTime
        
    --     |> Dict.toList
    ""



{-| One of

* `Comparator_LessThan`
* `Comparator_LessThanOrEqualTo`
* `Comparator_GreaterThan`
* `Comparator_GreaterThanOrEqualTo`
* `Comparator_EqualTo`
* `Comparator_NotEqualTo`
* `Comparator_Exists`
* `Comparator_DoesNotExist`
* `Comparator_In`
* `Comparator_NotIn`

-}
type Comparator
    = Comparator_LessThan
    | Comparator_LessThanOrEqualTo
    | Comparator_GreaterThan
    | Comparator_GreaterThanOrEqualTo
    | Comparator_EqualTo
    | Comparator_NotEqualTo
    | Comparator_Exists
    | Comparator_DoesNotExist
    | Comparator_In
    | Comparator_NotIn



comparatorDecoder : JD.Decoder Comparator
comparatorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "LessThan" ->
                        JD.succeed Comparator_LessThan

                    "LessThanOrEqualTo" ->
                        JD.succeed Comparator_LessThanOrEqualTo

                    "GreaterThan" ->
                        JD.succeed Comparator_GreaterThan

                    "GreaterThanOrEqualTo" ->
                        JD.succeed Comparator_GreaterThanOrEqualTo

                    "EqualTo" ->
                        JD.succeed Comparator_EqualTo

                    "NotEqualTo" ->
                        JD.succeed Comparator_NotEqualTo

                    "Exists" ->
                        JD.succeed Comparator_Exists

                    "DoesNotExist" ->
                        JD.succeed Comparator_DoesNotExist

                    "In" ->
                        JD.succeed Comparator_In

                    "NotIn" ->
                        JD.succeed Comparator_NotIn


                    _ ->
                        JD.fail "bad thing"
            )




comparatorToString : Comparator -> String
comparatorToString val =
    case val of
        Comparator_LessThan ->
            "LessThan"

        Comparator_LessThanOrEqualTo ->
            "LessThanOrEqualTo"

        Comparator_GreaterThan ->
            "GreaterThan"

        Comparator_GreaterThanOrEqualTo ->
            "GreaterThanOrEqualTo"

        Comparator_EqualTo ->
            "EqualTo"

        Comparator_NotEqualTo ->
            "NotEqualTo"

        Comparator_Exists ->
            "Exists"

        Comparator_DoesNotExist ->
            "DoesNotExist"

        Comparator_In ->
            "In"

        Comparator_NotIn ->
            "NotIn"




{-| Type of HTTP response from createAdditionalAssignmentsForHIT
-}
type alias CreateAdditionalAssignmentsForHITResponse =
    { 
    }



createAdditionalAssignmentsForHITResponseDecoder : JD.Decoder CreateAdditionalAssignmentsForHITResponse
createAdditionalAssignmentsForHITResponseDecoder =
    JD.succeed CreateAdditionalAssignmentsForHITResponse
        




createAdditionalAssignmentsForHITResponseToString : CreateAdditionalAssignmentsForHITResponse -> String -- List (String, String)
createAdditionalAssignmentsForHITResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createHIT
-}
type alias CreateHITResponse =
    { hIT : Maybe HIT
    }



createHITResponseDecoder : JD.Decoder CreateHITResponse
createHITResponseDecoder =
    JD.succeed CreateHITResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HIT", "hIT"]
            hITDecoder
        )
        




createHITResponseToString : CreateHITResponse -> String -- List (String, String)
createHITResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hIT" "" -- val.hIT
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createHITType
-}
type alias CreateHITTypeResponse =
    { hITTypeId : Maybe String
    }



createHITTypeResponseDecoder : JD.Decoder CreateHITTypeResponse
createHITTypeResponseDecoder =
    JD.succeed CreateHITTypeResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HITTypeId", "hITTypeId"]
            JD.string
        )
        




createHITTypeResponseToString : CreateHITTypeResponse -> String -- List (String, String)
createHITTypeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hITTypeId" "" -- val.hITTypeId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createHITWithHITType
-}
type alias CreateHITWithHITTypeResponse =
    { hIT : Maybe HIT
    }



createHITWithHITTypeResponseDecoder : JD.Decoder CreateHITWithHITTypeResponse
createHITWithHITTypeResponseDecoder =
    JD.succeed CreateHITWithHITTypeResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HIT", "hIT"]
            hITDecoder
        )
        




createHITWithHITTypeResponseToString : CreateHITWithHITTypeResponse -> String -- List (String, String)
createHITWithHITTypeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hIT" "" -- val.hIT
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createQualificationType
-}
type alias CreateQualificationTypeResponse =
    { qualificationType : Maybe QualificationType
    }



createQualificationTypeResponseDecoder : JD.Decoder CreateQualificationTypeResponse
createQualificationTypeResponseDecoder =
    JD.succeed CreateQualificationTypeResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QualificationType", "qualificationType"]
            qualificationTypeDecoder
        )
        




createQualificationTypeResponseToString : CreateQualificationTypeResponse -> String -- List (String, String)
createQualificationTypeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "qualificationType" "" -- val.qualificationType
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createWorkerBlock
-}
type alias CreateWorkerBlockResponse =
    { 
    }



createWorkerBlockResponseDecoder : JD.Decoder CreateWorkerBlockResponse
createWorkerBlockResponseDecoder =
    JD.succeed CreateWorkerBlockResponse
        




createWorkerBlockResponseToString : CreateWorkerBlockResponse -> String -- List (String, String)
createWorkerBlockResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteHIT
-}
type alias DeleteHITResponse =
    { 
    }



deleteHITResponseDecoder : JD.Decoder DeleteHITResponse
deleteHITResponseDecoder =
    JD.succeed DeleteHITResponse
        




deleteHITResponseToString : DeleteHITResponse -> String -- List (String, String)
deleteHITResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteQualificationType
-}
type alias DeleteQualificationTypeResponse =
    { 
    }



deleteQualificationTypeResponseDecoder : JD.Decoder DeleteQualificationTypeResponse
deleteQualificationTypeResponseDecoder =
    JD.succeed DeleteQualificationTypeResponse
        




deleteQualificationTypeResponseToString : DeleteQualificationTypeResponse -> String -- List (String, String)
deleteQualificationTypeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteWorkerBlock
-}
type alias DeleteWorkerBlockResponse =
    { 
    }



deleteWorkerBlockResponseDecoder : JD.Decoder DeleteWorkerBlockResponse
deleteWorkerBlockResponseDecoder =
    JD.succeed DeleteWorkerBlockResponse
        




deleteWorkerBlockResponseToString : DeleteWorkerBlockResponse -> String -- List (String, String)
deleteWorkerBlockResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from disassociateQualificationFromWorker
-}
type alias DisassociateQualificationFromWorkerResponse =
    { 
    }



disassociateQualificationFromWorkerResponseDecoder : JD.Decoder DisassociateQualificationFromWorkerResponse
disassociateQualificationFromWorkerResponseDecoder =
    JD.succeed DisassociateQualificationFromWorkerResponse
        




disassociateQualificationFromWorkerResponseToString : DisassociateQualificationFromWorkerResponse -> String -- List (String, String)
disassociateQualificationFromWorkerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `EventType_AssignmentAccepted`
* `EventType_AssignmentAbandoned`
* `EventType_AssignmentReturned`
* `EventType_AssignmentSubmitted`
* `EventType_AssignmentRejected`
* `EventType_AssignmentApproved`
* `EventType_HITCreated`
* `EventType_HITExpired`
* `EventType_HITReviewable`
* `EventType_HITExtended`
* `EventType_HITDisposed`
* `EventType_Ping`

-}
type EventType
    = EventType_AssignmentAccepted
    | EventType_AssignmentAbandoned
    | EventType_AssignmentReturned
    | EventType_AssignmentSubmitted
    | EventType_AssignmentRejected
    | EventType_AssignmentApproved
    | EventType_HITCreated
    | EventType_HITExpired
    | EventType_HITReviewable
    | EventType_HITExtended
    | EventType_HITDisposed
    | EventType_Ping



eventTypeDecoder : JD.Decoder EventType
eventTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AssignmentAccepted" ->
                        JD.succeed EventType_AssignmentAccepted

                    "AssignmentAbandoned" ->
                        JD.succeed EventType_AssignmentAbandoned

                    "AssignmentReturned" ->
                        JD.succeed EventType_AssignmentReturned

                    "AssignmentSubmitted" ->
                        JD.succeed EventType_AssignmentSubmitted

                    "AssignmentRejected" ->
                        JD.succeed EventType_AssignmentRejected

                    "AssignmentApproved" ->
                        JD.succeed EventType_AssignmentApproved

                    "HITCreated" ->
                        JD.succeed EventType_HITCreated

                    "HITExpired" ->
                        JD.succeed EventType_HITExpired

                    "HITReviewable" ->
                        JD.succeed EventType_HITReviewable

                    "HITExtended" ->
                        JD.succeed EventType_HITExtended

                    "HITDisposed" ->
                        JD.succeed EventType_HITDisposed

                    "Ping" ->
                        JD.succeed EventType_Ping


                    _ ->
                        JD.fail "bad thing"
            )




eventTypeToString : EventType -> String
eventTypeToString val =
    case val of
        EventType_AssignmentAccepted ->
            "AssignmentAccepted"

        EventType_AssignmentAbandoned ->
            "AssignmentAbandoned"

        EventType_AssignmentReturned ->
            "AssignmentReturned"

        EventType_AssignmentSubmitted ->
            "AssignmentSubmitted"

        EventType_AssignmentRejected ->
            "AssignmentRejected"

        EventType_AssignmentApproved ->
            "AssignmentApproved"

        EventType_HITCreated ->
            "HITCreated"

        EventType_HITExpired ->
            "HITExpired"

        EventType_HITReviewable ->
            "HITReviewable"

        EventType_HITExtended ->
            "HITExtended"

        EventType_HITDisposed ->
            "HITDisposed"

        EventType_Ping ->
            "Ping"




{-| Type of HTTP response from getAccountBalance
-}
type alias GetAccountBalanceResponse =
    { availableBalance : Maybe String
    , onHoldBalance : Maybe String
    }



getAccountBalanceResponseDecoder : JD.Decoder GetAccountBalanceResponse
getAccountBalanceResponseDecoder =
    JD.succeed GetAccountBalanceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailableBalance", "availableBalance"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OnHoldBalance", "onHoldBalance"]
            JD.string
        )
        




getAccountBalanceResponseToString : GetAccountBalanceResponse -> String -- List (String, String)
getAccountBalanceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "availableBalance" "" -- val.availableBalance
        
    --     |> Dict.insert
    --         "onHoldBalance" "" -- val.onHoldBalance
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getAssignment
-}
type alias GetAssignmentResponse =
    { assignment : Maybe Assignment
    , hIT : Maybe HIT
    }



getAssignmentResponseDecoder : JD.Decoder GetAssignmentResponse
getAssignmentResponseDecoder =
    JD.succeed GetAssignmentResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Assignment", "assignment"]
            assignmentDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HIT", "hIT"]
            hITDecoder
        )
        




getAssignmentResponseToString : GetAssignmentResponse -> String -- List (String, String)
getAssignmentResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "assignment" "" -- val.assignment
        
    --     |> Dict.insert
    --         "hIT" "" -- val.hIT
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getFileUploadURL
-}
type alias GetFileUploadURLResponse =
    { fileUploadURL : Maybe String
    }



getFileUploadURLResponseDecoder : JD.Decoder GetFileUploadURLResponse
getFileUploadURLResponseDecoder =
    JD.succeed GetFileUploadURLResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FileUploadURL", "fileUploadURL"]
            JD.string
        )
        




getFileUploadURLResponseToString : GetFileUploadURLResponse -> String -- List (String, String)
getFileUploadURLResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fileUploadURL" "" -- val.fileUploadURL
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getHIT
-}
type alias GetHITResponse =
    { hIT : Maybe HIT
    }



getHITResponseDecoder : JD.Decoder GetHITResponse
getHITResponseDecoder =
    JD.succeed GetHITResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HIT", "hIT"]
            hITDecoder
        )
        




getHITResponseToString : GetHITResponse -> String -- List (String, String)
getHITResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hIT" "" -- val.hIT
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getQualificationScore
-}
type alias GetQualificationScoreResponse =
    { qualification : Maybe Qualification
    }



getQualificationScoreResponseDecoder : JD.Decoder GetQualificationScoreResponse
getQualificationScoreResponseDecoder =
    JD.succeed GetQualificationScoreResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Qualification", "qualification"]
            qualificationDecoder
        )
        




getQualificationScoreResponseToString : GetQualificationScoreResponse -> String -- List (String, String)
getQualificationScoreResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "qualification" "" -- val.qualification
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getQualificationType
-}
type alias GetQualificationTypeResponse =
    { qualificationType : Maybe QualificationType
    }



getQualificationTypeResponseDecoder : JD.Decoder GetQualificationTypeResponse
getQualificationTypeResponseDecoder =
    JD.succeed GetQualificationTypeResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QualificationType", "qualificationType"]
            qualificationTypeDecoder
        )
        




getQualificationTypeResponseToString : GetQualificationTypeResponse -> String -- List (String, String)
getQualificationTypeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "qualificationType" "" -- val.qualificationType
        
    --     |> Dict.toList
    ""



{-| <p> The HIT data structure represents a single HIT, including all the information necessary for a Worker to accept and complete the HIT.</p>
-}
type alias HIT =
    { hITId : Maybe String
    , hITTypeId : Maybe String
    , hITGroupId : Maybe String
    , hITLayoutId : Maybe String
    , creationTime : Maybe Posix
    , title : Maybe String
    , description : Maybe String
    , question : Maybe String
    , keywords : Maybe String
    , hITStatus : Maybe HITStatus
    , maxAssignments : Maybe Int
    , reward : Maybe String
    , autoApprovalDelayInSeconds : Maybe Int
    , expiration : Maybe Posix
    , assignmentDurationInSeconds : Maybe Int
    , requesterAnnotation : Maybe String
    , qualificationRequirements : Maybe (List QualificationRequirement)
    , hITReviewStatus : Maybe HITReviewStatus
    , numberOfAssignmentsPending : Maybe Int
    , numberOfAssignmentsAvailable : Maybe Int
    , numberOfAssignmentsCompleted : Maybe Int
    }



hITDecoder : JD.Decoder HIT
hITDecoder =
    JD.succeed HIT
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HITId", "hITId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HITTypeId", "hITTypeId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HITGroupId", "hITGroupId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HITLayoutId", "hITLayoutId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Title", "title"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Question", "question"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Keywords", "keywords"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HITStatus", "hITStatus"]
            hITStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxAssignments", "maxAssignments"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Reward", "reward"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoApprovalDelayInSeconds", "autoApprovalDelayInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Expiration", "expiration"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AssignmentDurationInSeconds", "assignmentDurationInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RequesterAnnotation", "requesterAnnotation"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QualificationRequirements", "qualificationRequirements"]
            (JD.list qualificationRequirementDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HITReviewStatus", "hITReviewStatus"]
            hITReviewStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberOfAssignmentsPending", "numberOfAssignmentsPending"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberOfAssignmentsAvailable", "numberOfAssignmentsAvailable"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberOfAssignmentsCompleted", "numberOfAssignmentsCompleted"]
            JD.int
        )
        




hITToString : HIT -> String -- List (String, String)
hITToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hITId" "" -- val.hITId
        
    --     |> Dict.insert
    --         "hITTypeId" "" -- val.hITTypeId
        
    --     |> Dict.insert
    --         "hITGroupId" "" -- val.hITGroupId
        
    --     |> Dict.insert
    --         "hITLayoutId" "" -- val.hITLayoutId
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "title" "" -- val.title
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "question" "" -- val.question
        
    --     |> Dict.insert
    --         "keywords" "" -- val.keywords
        
    --     |> Dict.insert
    --         "hITStatus" "" -- val.hITStatus
        
    --     |> Dict.insert
    --         "maxAssignments" "" -- val.maxAssignments
        
    --     |> Dict.insert
    --         "reward" "" -- val.reward
        
    --     |> Dict.insert
    --         "autoApprovalDelayInSeconds" "" -- val.autoApprovalDelayInSeconds
        
    --     |> Dict.insert
    --         "expiration" "" -- val.expiration
        
    --     |> Dict.insert
    --         "assignmentDurationInSeconds" "" -- val.assignmentDurationInSeconds
        
    --     |> Dict.insert
    --         "requesterAnnotation" "" -- val.requesterAnnotation
        
    --     |> Dict.insert
    --         "qualificationRequirements" "" -- val.qualificationRequirements
        
    --     |> Dict.insert
    --         "hITReviewStatus" "" -- val.hITReviewStatus
        
    --     |> Dict.insert
    --         "numberOfAssignmentsPending" "" -- val.numberOfAssignmentsPending
        
    --     |> Dict.insert
    --         "numberOfAssignmentsAvailable" "" -- val.numberOfAssignmentsAvailable
        
    --     |> Dict.insert
    --         "numberOfAssignmentsCompleted" "" -- val.numberOfAssignmentsCompleted
        
    --     |> Dict.toList
    ""



{-| One of

* `HITAccessActions_Accept`
* `HITAccessActions_PreviewAndAccept`
* `HITAccessActions_DiscoverPreviewAndAccept`

-}
type HITAccessActions
    = HITAccessActions_Accept
    | HITAccessActions_PreviewAndAccept
    | HITAccessActions_DiscoverPreviewAndAccept



hITAccessActionsDecoder : JD.Decoder HITAccessActions
hITAccessActionsDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Accept" ->
                        JD.succeed HITAccessActions_Accept

                    "PreviewAndAccept" ->
                        JD.succeed HITAccessActions_PreviewAndAccept

                    "DiscoverPreviewAndAccept" ->
                        JD.succeed HITAccessActions_DiscoverPreviewAndAccept


                    _ ->
                        JD.fail "bad thing"
            )




hITAccessActionsToString : HITAccessActions -> String
hITAccessActionsToString val =
    case val of
        HITAccessActions_Accept ->
            "Accept"

        HITAccessActions_PreviewAndAccept ->
            "PreviewAndAccept"

        HITAccessActions_DiscoverPreviewAndAccept ->
            "DiscoverPreviewAndAccept"




{-| <p> The HITLayoutParameter data structure defines parameter values used with a HITLayout. A HITLayout is a reusable Amazon Mechanical Turk project template used to provide Human Intelligence Task (HIT) question data for CreateHIT. </p>
-}
type alias HITLayoutParameter =
    { name : String
    , value : String
    }



hITLayoutParameterDecoder : JD.Decoder HITLayoutParameter
hITLayoutParameterDecoder =
    JD.succeed HITLayoutParameter
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Value", "value"]
            JD.string
        )
        




hITLayoutParameterToString : HITLayoutParameter -> String -- List (String, String)
hITLayoutParameterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| One of

* `HITReviewStatus_NotReviewed`
* `HITReviewStatus_MarkedForReview`
* `HITReviewStatus_ReviewedAppropriate`
* `HITReviewStatus_ReviewedInappropriate`

-}
type HITReviewStatus
    = HITReviewStatus_NotReviewed
    | HITReviewStatus_MarkedForReview
    | HITReviewStatus_ReviewedAppropriate
    | HITReviewStatus_ReviewedInappropriate



hITReviewStatusDecoder : JD.Decoder HITReviewStatus
hITReviewStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NotReviewed" ->
                        JD.succeed HITReviewStatus_NotReviewed

                    "MarkedForReview" ->
                        JD.succeed HITReviewStatus_MarkedForReview

                    "ReviewedAppropriate" ->
                        JD.succeed HITReviewStatus_ReviewedAppropriate

                    "ReviewedInappropriate" ->
                        JD.succeed HITReviewStatus_ReviewedInappropriate


                    _ ->
                        JD.fail "bad thing"
            )




hITReviewStatusToString : HITReviewStatus -> String
hITReviewStatusToString val =
    case val of
        HITReviewStatus_NotReviewed ->
            "NotReviewed"

        HITReviewStatus_MarkedForReview ->
            "MarkedForReview"

        HITReviewStatus_ReviewedAppropriate ->
            "ReviewedAppropriate"

        HITReviewStatus_ReviewedInappropriate ->
            "ReviewedInappropriate"




{-| One of

* `HITStatus_Assignable`
* `HITStatus_Unassignable`
* `HITStatus_Reviewable`
* `HITStatus_Reviewing`
* `HITStatus_Disposed`

-}
type HITStatus
    = HITStatus_Assignable
    | HITStatus_Unassignable
    | HITStatus_Reviewable
    | HITStatus_Reviewing
    | HITStatus_Disposed



hITStatusDecoder : JD.Decoder HITStatus
hITStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Assignable" ->
                        JD.succeed HITStatus_Assignable

                    "Unassignable" ->
                        JD.succeed HITStatus_Unassignable

                    "Reviewable" ->
                        JD.succeed HITStatus_Reviewable

                    "Reviewing" ->
                        JD.succeed HITStatus_Reviewing

                    "Disposed" ->
                        JD.succeed HITStatus_Disposed


                    _ ->
                        JD.fail "bad thing"
            )




hITStatusToString : HITStatus -> String
hITStatusToString val =
    case val of
        HITStatus_Assignable ->
            "Assignable"

        HITStatus_Unassignable ->
            "Unassignable"

        HITStatus_Reviewable ->
            "Reviewable"

        HITStatus_Reviewing ->
            "Reviewing"

        HITStatus_Disposed ->
            "Disposed"




{-| Type of HTTP response from listAssignmentsForHIT
-}
type alias ListAssignmentsForHITResponse =
    { nextToken : Maybe String
    , numResults : Maybe Int
    , assignments : Maybe (List Assignment)
    }



listAssignmentsForHITResponseDecoder : JD.Decoder ListAssignmentsForHITResponse
listAssignmentsForHITResponseDecoder =
    JD.succeed ListAssignmentsForHITResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumResults", "numResults"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Assignments", "assignments"]
            (JD.list assignmentDecoder)
        )
        




listAssignmentsForHITResponseToString : ListAssignmentsForHITResponse -> String -- List (String, String)
listAssignmentsForHITResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "numResults" "" -- val.numResults
        
    --     |> Dict.insert
    --         "assignments" "" -- val.assignments
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listBonusPayments
-}
type alias ListBonusPaymentsResponse =
    { numResults : Maybe Int
    , nextToken : Maybe String
    , bonusPayments : Maybe (List BonusPayment)
    }



listBonusPaymentsResponseDecoder : JD.Decoder ListBonusPaymentsResponse
listBonusPaymentsResponseDecoder =
    JD.succeed ListBonusPaymentsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumResults", "numResults"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BonusPayments", "bonusPayments"]
            (JD.list bonusPaymentDecoder)
        )
        




listBonusPaymentsResponseToString : ListBonusPaymentsResponse -> String -- List (String, String)
listBonusPaymentsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "numResults" "" -- val.numResults
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "bonusPayments" "" -- val.bonusPayments
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listHITsForQualificationType
-}
type alias ListHITsForQualificationTypeResponse =
    { nextToken : Maybe String
    , numResults : Maybe Int
    , hITs : Maybe (List HIT)
    }



listHITsForQualificationTypeResponseDecoder : JD.Decoder ListHITsForQualificationTypeResponse
listHITsForQualificationTypeResponseDecoder =
    JD.succeed ListHITsForQualificationTypeResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumResults", "numResults"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HITs", "hITs"]
            (JD.list hITDecoder)
        )
        




listHITsForQualificationTypeResponseToString : ListHITsForQualificationTypeResponse -> String -- List (String, String)
listHITsForQualificationTypeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "numResults" "" -- val.numResults
        
    --     |> Dict.insert
    --         "hITs" "" -- val.hITs
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listHITs
-}
type alias ListHITsResponse =
    { nextToken : Maybe String
    , numResults : Maybe Int
    , hITs : Maybe (List HIT)
    }



listHITsResponseDecoder : JD.Decoder ListHITsResponse
listHITsResponseDecoder =
    JD.succeed ListHITsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumResults", "numResults"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HITs", "hITs"]
            (JD.list hITDecoder)
        )
        




listHITsResponseToString : ListHITsResponse -> String -- List (String, String)
listHITsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "numResults" "" -- val.numResults
        
    --     |> Dict.insert
    --         "hITs" "" -- val.hITs
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listQualificationRequests
-}
type alias ListQualificationRequestsResponse =
    { numResults : Maybe Int
    , nextToken : Maybe String
    , qualificationRequests : Maybe (List QualificationRequest)
    }



listQualificationRequestsResponseDecoder : JD.Decoder ListQualificationRequestsResponse
listQualificationRequestsResponseDecoder =
    JD.succeed ListQualificationRequestsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumResults", "numResults"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QualificationRequests", "qualificationRequests"]
            (JD.list qualificationRequestDecoder)
        )
        




listQualificationRequestsResponseToString : ListQualificationRequestsResponse -> String -- List (String, String)
listQualificationRequestsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "numResults" "" -- val.numResults
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "qualificationRequests" "" -- val.qualificationRequests
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listQualificationTypes
-}
type alias ListQualificationTypesResponse =
    { numResults : Maybe Int
    , nextToken : Maybe String
    , qualificationTypes : Maybe (List QualificationType)
    }



listQualificationTypesResponseDecoder : JD.Decoder ListQualificationTypesResponse
listQualificationTypesResponseDecoder =
    JD.succeed ListQualificationTypesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumResults", "numResults"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QualificationTypes", "qualificationTypes"]
            (JD.list qualificationTypeDecoder)
        )
        




listQualificationTypesResponseToString : ListQualificationTypesResponse -> String -- List (String, String)
listQualificationTypesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "numResults" "" -- val.numResults
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "qualificationTypes" "" -- val.qualificationTypes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listReviewPolicyResultsForHIT
-}
type alias ListReviewPolicyResultsForHITResponse =
    { hITId : Maybe String
    , assignmentReviewPolicy : Maybe ReviewPolicy
    , hITReviewPolicy : Maybe ReviewPolicy
    , assignmentReviewReport : Maybe ReviewReport
    , hITReviewReport : Maybe ReviewReport
    , nextToken : Maybe String
    }



listReviewPolicyResultsForHITResponseDecoder : JD.Decoder ListReviewPolicyResultsForHITResponse
listReviewPolicyResultsForHITResponseDecoder =
    JD.succeed ListReviewPolicyResultsForHITResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HITId", "hITId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AssignmentReviewPolicy", "assignmentReviewPolicy"]
            reviewPolicyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HITReviewPolicy", "hITReviewPolicy"]
            reviewPolicyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AssignmentReviewReport", "assignmentReviewReport"]
            reviewReportDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HITReviewReport", "hITReviewReport"]
            reviewReportDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listReviewPolicyResultsForHITResponseToString : ListReviewPolicyResultsForHITResponse -> String -- List (String, String)
listReviewPolicyResultsForHITResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hITId" "" -- val.hITId
        
    --     |> Dict.insert
    --         "assignmentReviewPolicy" "" -- val.assignmentReviewPolicy
        
    --     |> Dict.insert
    --         "hITReviewPolicy" "" -- val.hITReviewPolicy
        
    --     |> Dict.insert
    --         "assignmentReviewReport" "" -- val.assignmentReviewReport
        
    --     |> Dict.insert
    --         "hITReviewReport" "" -- val.hITReviewReport
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listReviewableHITs
-}
type alias ListReviewableHITsResponse =
    { nextToken : Maybe String
    , numResults : Maybe Int
    , hITs : Maybe (List HIT)
    }



listReviewableHITsResponseDecoder : JD.Decoder ListReviewableHITsResponse
listReviewableHITsResponseDecoder =
    JD.succeed ListReviewableHITsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumResults", "numResults"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HITs", "hITs"]
            (JD.list hITDecoder)
        )
        




listReviewableHITsResponseToString : ListReviewableHITsResponse -> String -- List (String, String)
listReviewableHITsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "numResults" "" -- val.numResults
        
    --     |> Dict.insert
    --         "hITs" "" -- val.hITs
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listWorkerBlocks
-}
type alias ListWorkerBlocksResponse =
    { nextToken : Maybe String
    , numResults : Maybe Int
    , workerBlocks : Maybe (List WorkerBlock)
    }



listWorkerBlocksResponseDecoder : JD.Decoder ListWorkerBlocksResponse
listWorkerBlocksResponseDecoder =
    JD.succeed ListWorkerBlocksResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumResults", "numResults"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkerBlocks", "workerBlocks"]
            (JD.list workerBlockDecoder)
        )
        




listWorkerBlocksResponseToString : ListWorkerBlocksResponse -> String -- List (String, String)
listWorkerBlocksResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "numResults" "" -- val.numResults
        
    --     |> Dict.insert
    --         "workerBlocks" "" -- val.workerBlocks
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listWorkersWithQualificationType
-}
type alias ListWorkersWithQualificationTypeResponse =
    { nextToken : Maybe String
    , numResults : Maybe Int
    , qualifications : Maybe (List Qualification)
    }



listWorkersWithQualificationTypeResponseDecoder : JD.Decoder ListWorkersWithQualificationTypeResponse
listWorkersWithQualificationTypeResponseDecoder =
    JD.succeed ListWorkersWithQualificationTypeResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumResults", "numResults"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Qualifications", "qualifications"]
            (JD.list qualificationDecoder)
        )
        




listWorkersWithQualificationTypeResponseToString : ListWorkersWithQualificationTypeResponse -> String -- List (String, String)
listWorkersWithQualificationTypeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "numResults" "" -- val.numResults
        
    --     |> Dict.insert
    --         "qualifications" "" -- val.qualifications
        
    --     |> Dict.toList
    ""



{-| <p>The Locale data structure represents a geographical region or location.</p>
-}
type alias Locale =
    { country : String
    , subdivision : Maybe String
    }



localeDecoder : JD.Decoder Locale
localeDecoder =
    JD.succeed Locale
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Country", "country"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Subdivision", "subdivision"]
            JD.string
        )
        




localeToString : Locale -> String -- List (String, String)
localeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "country" "" -- val.country
        
    --     |> Dict.insert
    --         "subdivision" "" -- val.subdivision
        
    --     |> Dict.toList
    ""



{-| <p>The NotificationSpecification data structure describes a HIT event notification for a HIT type.</p>
-}
type alias NotificationSpecification =
    { destination : String
    , transport : NotificationTransport
    , version : String
    , eventTypes : (List EventType)
    }



notificationSpecificationDecoder : JD.Decoder NotificationSpecification
notificationSpecificationDecoder =
    JD.succeed NotificationSpecification
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Destination", "destination"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Transport", "transport"]
            notificationTransportDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Version", "version"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["EventTypes", "eventTypes"]
            (JD.list eventTypeDecoder)
        )
        




notificationSpecificationToString : NotificationSpecification -> String -- List (String, String)
notificationSpecificationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "destination" "" -- val.destination
        
    --     |> Dict.insert
    --         "transport" "" -- val.transport
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "eventTypes" "" -- val.eventTypes
        
    --     |> Dict.toList
    ""



{-| One of

* `NotificationTransport_Email`
* `NotificationTransport_SQS`
* `NotificationTransport_SNS`

-}
type NotificationTransport
    = NotificationTransport_Email
    | NotificationTransport_SQS
    | NotificationTransport_SNS



notificationTransportDecoder : JD.Decoder NotificationTransport
notificationTransportDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Email" ->
                        JD.succeed NotificationTransport_Email

                    "SQS" ->
                        JD.succeed NotificationTransport_SQS

                    "SNS" ->
                        JD.succeed NotificationTransport_SNS


                    _ ->
                        JD.fail "bad thing"
            )




notificationTransportToString : NotificationTransport -> String
notificationTransportToString val =
    case val of
        NotificationTransport_Email ->
            "Email"

        NotificationTransport_SQS ->
            "SQS"

        NotificationTransport_SNS ->
            "SNS"




{-| One of

* `NotifyWorkersFailureCode_SoftFailure`
* `NotifyWorkersFailureCode_HardFailure`

-}
type NotifyWorkersFailureCode
    = NotifyWorkersFailureCode_SoftFailure
    | NotifyWorkersFailureCode_HardFailure



notifyWorkersFailureCodeDecoder : JD.Decoder NotifyWorkersFailureCode
notifyWorkersFailureCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SoftFailure" ->
                        JD.succeed NotifyWorkersFailureCode_SoftFailure

                    "HardFailure" ->
                        JD.succeed NotifyWorkersFailureCode_HardFailure


                    _ ->
                        JD.fail "bad thing"
            )




notifyWorkersFailureCodeToString : NotifyWorkersFailureCode -> String
notifyWorkersFailureCodeToString val =
    case val of
        NotifyWorkersFailureCode_SoftFailure ->
            "SoftFailure"

        NotifyWorkersFailureCode_HardFailure ->
            "HardFailure"




{-| <p> When MTurk encounters an issue with notifying the Workers you specified, it returns back this object with failure details. </p>
-}
type alias NotifyWorkersFailureStatus =
    { notifyWorkersFailureCode : Maybe NotifyWorkersFailureCode
    , notifyWorkersFailureMessage : Maybe String
    , workerId : Maybe String
    }



notifyWorkersFailureStatusDecoder : JD.Decoder NotifyWorkersFailureStatus
notifyWorkersFailureStatusDecoder =
    JD.succeed NotifyWorkersFailureStatus
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotifyWorkersFailureCode", "notifyWorkersFailureCode"]
            notifyWorkersFailureCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotifyWorkersFailureMessage", "notifyWorkersFailureMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkerId", "workerId"]
            JD.string
        )
        




notifyWorkersFailureStatusToString : NotifyWorkersFailureStatus -> String -- List (String, String)
notifyWorkersFailureStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "notifyWorkersFailureCode" "" -- val.notifyWorkersFailureCode
        
    --     |> Dict.insert
    --         "notifyWorkersFailureMessage" "" -- val.notifyWorkersFailureMessage
        
    --     |> Dict.insert
    --         "workerId" "" -- val.workerId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from notifyWorkers
-}
type alias NotifyWorkersResponse =
    { notifyWorkersFailureStatuses : Maybe (List NotifyWorkersFailureStatus)
    }



notifyWorkersResponseDecoder : JD.Decoder NotifyWorkersResponse
notifyWorkersResponseDecoder =
    JD.succeed NotifyWorkersResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotifyWorkersFailureStatuses", "notifyWorkersFailureStatuses"]
            (JD.list notifyWorkersFailureStatusDecoder)
        )
        




notifyWorkersResponseToString : NotifyWorkersResponse -> String -- List (String, String)
notifyWorkersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "notifyWorkersFailureStatuses" "" -- val.notifyWorkersFailureStatuses
        
    --     |> Dict.toList
    ""



{-| <p> This data structure is the data type for the AnswerKey parameter of the ScoreMyKnownAnswers/2011-09-01 Review Policy. </p>
-}
type alias ParameterMapEntry =
    { key : Maybe String
    , values : Maybe (List String)
    }



parameterMapEntryDecoder : JD.Decoder ParameterMapEntry
parameterMapEntryDecoder =
    JD.succeed ParameterMapEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Values", "values"]
            (JD.list JD.string)
        )
        




parameterMapEntryToString : ParameterMapEntry -> String -- List (String, String)
parameterMapEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| <p> Name of the parameter from the Review policy. </p>
-}
type alias PolicyParameter =
    { key : Maybe String
    , values : Maybe (List String)
    , mapEntries : Maybe (List ParameterMapEntry)
    }



policyParameterDecoder : JD.Decoder PolicyParameter
policyParameterDecoder =
    JD.succeed PolicyParameter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Values", "values"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MapEntries", "mapEntries"]
            (JD.list parameterMapEntryDecoder)
        )
        




policyParameterToString : PolicyParameter -> String -- List (String, String)
policyParameterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.insert
    --         "mapEntries" "" -- val.mapEntries
        
    --     |> Dict.toList
    ""



{-| <p>The Qualification data structure represents a Qualification assigned to a user, including the Qualification type and the value (score).</p>
-}
type alias Qualification =
    { qualificationTypeId : Maybe String
    , workerId : Maybe String
    , grantTime : Maybe Posix
    , integerValue : Maybe Int
    , localeValue : Maybe Locale
    , status : Maybe QualificationStatus
    }



qualificationDecoder : JD.Decoder Qualification
qualificationDecoder =
    JD.succeed Qualification
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QualificationTypeId", "qualificationTypeId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkerId", "workerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GrantTime", "grantTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IntegerValue", "integerValue"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LocaleValue", "localeValue"]
            localeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            qualificationStatusDecoder
        )
        




qualificationToString : Qualification -> String -- List (String, String)
qualificationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "qualificationTypeId" "" -- val.qualificationTypeId
        
    --     |> Dict.insert
    --         "workerId" "" -- val.workerId
        
    --     |> Dict.insert
    --         "grantTime" "" -- val.grantTime
        
    --     |> Dict.insert
    --         "integerValue" "" -- val.integerValue
        
    --     |> Dict.insert
    --         "localeValue" "" -- val.localeValue
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| <p> The QualificationRequest data structure represents a request a Worker has made for a Qualification. </p>
-}
type alias QualificationRequest =
    { qualificationRequestId : Maybe String
    , qualificationTypeId : Maybe String
    , workerId : Maybe String
    , test : Maybe String
    , answer : Maybe String
    , submitTime : Maybe Posix
    }



qualificationRequestDecoder : JD.Decoder QualificationRequest
qualificationRequestDecoder =
    JD.succeed QualificationRequest
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QualificationRequestId", "qualificationRequestId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QualificationTypeId", "qualificationTypeId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkerId", "workerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Test", "test"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Answer", "answer"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubmitTime", "submitTime"]
            JDX.datetime
        )
        




qualificationRequestToString : QualificationRequest -> String -- List (String, String)
qualificationRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "qualificationRequestId" "" -- val.qualificationRequestId
        
    --     |> Dict.insert
    --         "qualificationTypeId" "" -- val.qualificationTypeId
        
    --     |> Dict.insert
    --         "workerId" "" -- val.workerId
        
    --     |> Dict.insert
    --         "test" "" -- val.test
        
    --     |> Dict.insert
    --         "answer" "" -- val.answer
        
    --     |> Dict.insert
    --         "submitTime" "" -- val.submitTime
        
    --     |> Dict.toList
    ""



{-| <p> The QualificationRequirement data structure describes a Qualification that a Worker must have before the Worker is allowed to accept a HIT. A requirement may optionally state that a Worker must have the Qualification in order to preview the HIT, or see the HIT in search results. </p>
-}
type alias QualificationRequirement =
    { qualificationTypeId : String
    , comparator : Comparator
    , integerValues : Maybe (List Int)
    , localeValues : Maybe (List Locale)
    , requiredToPreview : Maybe Bool
    , actionsGuarded : Maybe HITAccessActions
    }



qualificationRequirementDecoder : JD.Decoder QualificationRequirement
qualificationRequirementDecoder =
    JD.succeed QualificationRequirement
        
        |> JDP.custom (AWS.Core.Decode.required
            ["QualificationTypeId", "qualificationTypeId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Comparator", "comparator"]
            comparatorDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IntegerValues", "integerValues"]
            (JD.list JD.int)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LocaleValues", "localeValues"]
            (JD.list localeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RequiredToPreview", "requiredToPreview"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActionsGuarded", "actionsGuarded"]
            hITAccessActionsDecoder
        )
        




qualificationRequirementToString : QualificationRequirement -> String -- List (String, String)
qualificationRequirementToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "qualificationTypeId" "" -- val.qualificationTypeId
        
    --     |> Dict.insert
    --         "comparator" "" -- val.comparator
        
    --     |> Dict.insert
    --         "integerValues" "" -- val.integerValues
        
    --     |> Dict.insert
    --         "localeValues" "" -- val.localeValues
        
    --     |> Dict.insert
    --         "requiredToPreview" "" -- val.requiredToPreview
        
    --     |> Dict.insert
    --         "actionsGuarded" "" -- val.actionsGuarded
        
    --     |> Dict.toList
    ""



{-| One of

* `QualificationStatus_Granted`
* `QualificationStatus_Revoked`

-}
type QualificationStatus
    = QualificationStatus_Granted
    | QualificationStatus_Revoked



qualificationStatusDecoder : JD.Decoder QualificationStatus
qualificationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Granted" ->
                        JD.succeed QualificationStatus_Granted

                    "Revoked" ->
                        JD.succeed QualificationStatus_Revoked


                    _ ->
                        JD.fail "bad thing"
            )




qualificationStatusToString : QualificationStatus -> String
qualificationStatusToString val =
    case val of
        QualificationStatus_Granted ->
            "Granted"

        QualificationStatus_Revoked ->
            "Revoked"




{-| <p> The QualificationType data structure represents a Qualification type, a description of a property of a Worker that must match the requirements of a HIT for the Worker to be able to accept the HIT. The type also describes how a Worker can obtain a Qualification of that type, such as through a Qualification test. </p>
-}
type alias QualificationType =
    { qualificationTypeId : Maybe String
    , creationTime : Maybe Posix
    , name : Maybe String
    , description : Maybe String
    , keywords : Maybe String
    , qualificationTypeStatus : Maybe QualificationTypeStatus
    , test : Maybe String
    , testDurationInSeconds : Maybe Int
    , answerKey : Maybe String
    , retryDelayInSeconds : Maybe Int
    , isRequestable : Maybe Bool
    , autoGranted : Maybe Bool
    , autoGrantedValue : Maybe Int
    }



qualificationTypeDecoder : JD.Decoder QualificationType
qualificationTypeDecoder =
    JD.succeed QualificationType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QualificationTypeId", "qualificationTypeId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Keywords", "keywords"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QualificationTypeStatus", "qualificationTypeStatus"]
            qualificationTypeStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Test", "test"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TestDurationInSeconds", "testDurationInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AnswerKey", "answerKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RetryDelayInSeconds", "retryDelayInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsRequestable", "isRequestable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoGranted", "autoGranted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoGrantedValue", "autoGrantedValue"]
            JD.int
        )
        




qualificationTypeToString : QualificationType -> String -- List (String, String)
qualificationTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "qualificationTypeId" "" -- val.qualificationTypeId
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "keywords" "" -- val.keywords
        
    --     |> Dict.insert
    --         "qualificationTypeStatus" "" -- val.qualificationTypeStatus
        
    --     |> Dict.insert
    --         "test" "" -- val.test
        
    --     |> Dict.insert
    --         "testDurationInSeconds" "" -- val.testDurationInSeconds
        
    --     |> Dict.insert
    --         "answerKey" "" -- val.answerKey
        
    --     |> Dict.insert
    --         "retryDelayInSeconds" "" -- val.retryDelayInSeconds
        
    --     |> Dict.insert
    --         "isRequestable" "" -- val.isRequestable
        
    --     |> Dict.insert
    --         "autoGranted" "" -- val.autoGranted
        
    --     |> Dict.insert
    --         "autoGrantedValue" "" -- val.autoGrantedValue
        
    --     |> Dict.toList
    ""



{-| One of

* `QualificationTypeStatus_Active`
* `QualificationTypeStatus_Inactive`

-}
type QualificationTypeStatus
    = QualificationTypeStatus_Active
    | QualificationTypeStatus_Inactive



qualificationTypeStatusDecoder : JD.Decoder QualificationTypeStatus
qualificationTypeStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Active" ->
                        JD.succeed QualificationTypeStatus_Active

                    "Inactive" ->
                        JD.succeed QualificationTypeStatus_Inactive


                    _ ->
                        JD.fail "bad thing"
            )




qualificationTypeStatusToString : QualificationTypeStatus -> String
qualificationTypeStatusToString val =
    case val of
        QualificationTypeStatus_Active ->
            "Active"

        QualificationTypeStatus_Inactive ->
            "Inactive"




{-| Type of HTTP response from rejectAssignment
-}
type alias RejectAssignmentResponse =
    { 
    }



rejectAssignmentResponseDecoder : JD.Decoder RejectAssignmentResponse
rejectAssignmentResponseDecoder =
    JD.succeed RejectAssignmentResponse
        




rejectAssignmentResponseToString : RejectAssignmentResponse -> String -- List (String, String)
rejectAssignmentResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from rejectQualificationRequest
-}
type alias RejectQualificationRequestResponse =
    { 
    }



rejectQualificationRequestResponseDecoder : JD.Decoder RejectQualificationRequestResponse
rejectQualificationRequestResponseDecoder =
    JD.succeed RejectQualificationRequestResponse
        




rejectQualificationRequestResponseToString : RejectQualificationRequestResponse -> String -- List (String, String)
rejectQualificationRequestResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Your request is invalid.</p>
-}
type alias RequestError =
    { message : Maybe String
    , turkErrorCode : Maybe String
    }



requestErrorDecoder : JD.Decoder RequestError
requestErrorDecoder =
    JD.succeed RequestError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TurkErrorCode", "turkErrorCode"]
            JD.string
        )
        




requestErrorToString : RequestError -> String -- List (String, String)
requestErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "turkErrorCode" "" -- val.turkErrorCode
        
    --     |> Dict.toList
    ""



{-| <p> Both the AssignmentReviewReport and the HITReviewReport elements contains the ReviewActionDetail data structure. This structure is returned multiple times for each action specified in the Review Policy. </p>
-}
type alias ReviewActionDetail =
    { actionId : Maybe String
    , actionName : Maybe String
    , targetId : Maybe String
    , targetType : Maybe String
    , status : Maybe ReviewActionStatus
    , completeTime : Maybe Posix
    , result : Maybe String
    , errorCode : Maybe String
    }



reviewActionDetailDecoder : JD.Decoder ReviewActionDetail
reviewActionDetailDecoder =
    JD.succeed ReviewActionDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActionId", "actionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActionName", "actionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetId", "targetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetType", "targetType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            reviewActionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CompleteTime", "completeTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Result", "result"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            JD.string
        )
        




reviewActionDetailToString : ReviewActionDetail -> String -- List (String, String)
reviewActionDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "actionId" "" -- val.actionId
        
    --     |> Dict.insert
    --         "actionName" "" -- val.actionName
        
    --     |> Dict.insert
    --         "targetId" "" -- val.targetId
        
    --     |> Dict.insert
    --         "targetType" "" -- val.targetType
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "completeTime" "" -- val.completeTime
        
    --     |> Dict.insert
    --         "result" "" -- val.result
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.toList
    ""



{-| One of

* `ReviewActionStatus_Intended`
* `ReviewActionStatus_Succeeded`
* `ReviewActionStatus_Failed`
* `ReviewActionStatus_Cancelled`

-}
type ReviewActionStatus
    = ReviewActionStatus_Intended
    | ReviewActionStatus_Succeeded
    | ReviewActionStatus_Failed
    | ReviewActionStatus_Cancelled



reviewActionStatusDecoder : JD.Decoder ReviewActionStatus
reviewActionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Intended" ->
                        JD.succeed ReviewActionStatus_Intended

                    "Succeeded" ->
                        JD.succeed ReviewActionStatus_Succeeded

                    "Failed" ->
                        JD.succeed ReviewActionStatus_Failed

                    "Cancelled" ->
                        JD.succeed ReviewActionStatus_Cancelled


                    _ ->
                        JD.fail "bad thing"
            )




reviewActionStatusToString : ReviewActionStatus -> String
reviewActionStatusToString val =
    case val of
        ReviewActionStatus_Intended ->
            "Intended"

        ReviewActionStatus_Succeeded ->
            "Succeeded"

        ReviewActionStatus_Failed ->
            "Failed"

        ReviewActionStatus_Cancelled ->
            "Cancelled"




{-| <p> HIT Review Policy data structures represent HIT review policies, which you specify when you create a HIT. </p>
-}
type alias ReviewPolicy =
    { policyName : String
    , parameters : Maybe (List PolicyParameter)
    }



reviewPolicyDecoder : JD.Decoder ReviewPolicy
reviewPolicyDecoder =
    JD.succeed ReviewPolicy
        
        |> JDP.custom (AWS.Core.Decode.required
            ["PolicyName", "policyName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            (JD.list policyParameterDecoder)
        )
        




reviewPolicyToString : ReviewPolicy -> String -- List (String, String)
reviewPolicyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policyName" "" -- val.policyName
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.toList
    ""



{-| One of

* `ReviewPolicyLevel_Assignment`
* `ReviewPolicyLevel_HIT`

-}
type ReviewPolicyLevel
    = ReviewPolicyLevel_Assignment
    | ReviewPolicyLevel_HIT



reviewPolicyLevelDecoder : JD.Decoder ReviewPolicyLevel
reviewPolicyLevelDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Assignment" ->
                        JD.succeed ReviewPolicyLevel_Assignment

                    "HIT" ->
                        JD.succeed ReviewPolicyLevel_HIT


                    _ ->
                        JD.fail "bad thing"
            )




reviewPolicyLevelToString : ReviewPolicyLevel -> String
reviewPolicyLevelToString val =
    case val of
        ReviewPolicyLevel_Assignment ->
            "Assignment"

        ReviewPolicyLevel_HIT ->
            "HIT"




{-| <p> Contains both ReviewResult and ReviewAction elements for a particular HIT. </p>
-}
type alias ReviewReport =
    { reviewResults : Maybe (List ReviewResultDetail)
    , reviewActions : Maybe (List ReviewActionDetail)
    }



reviewReportDecoder : JD.Decoder ReviewReport
reviewReportDecoder =
    JD.succeed ReviewReport
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReviewResults", "reviewResults"]
            (JD.list reviewResultDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReviewActions", "reviewActions"]
            (JD.list reviewActionDetailDecoder)
        )
        




reviewReportToString : ReviewReport -> String -- List (String, String)
reviewReportToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "reviewResults" "" -- val.reviewResults
        
    --     |> Dict.insert
    --         "reviewActions" "" -- val.reviewActions
        
    --     |> Dict.toList
    ""



{-| <p> This data structure is returned multiple times for each result specified in the Review Policy. </p>
-}
type alias ReviewResultDetail =
    { actionId : Maybe String
    , subjectId : Maybe String
    , subjectType : Maybe String
    , questionId : Maybe String
    , key : Maybe String
    , value : Maybe String
    }



reviewResultDetailDecoder : JD.Decoder ReviewResultDetail
reviewResultDetailDecoder =
    JD.succeed ReviewResultDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActionId", "actionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubjectId", "subjectId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubjectType", "subjectType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QuestionId", "questionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




reviewResultDetailToString : ReviewResultDetail -> String -- List (String, String)
reviewResultDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "actionId" "" -- val.actionId
        
    --     |> Dict.insert
    --         "subjectId" "" -- val.subjectId
        
    --     |> Dict.insert
    --         "subjectType" "" -- val.subjectType
        
    --     |> Dict.insert
    --         "questionId" "" -- val.questionId
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| One of

* `ReviewableHITStatus_Reviewable`
* `ReviewableHITStatus_Reviewing`

-}
type ReviewableHITStatus
    = ReviewableHITStatus_Reviewable
    | ReviewableHITStatus_Reviewing



reviewableHITStatusDecoder : JD.Decoder ReviewableHITStatus
reviewableHITStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Reviewable" ->
                        JD.succeed ReviewableHITStatus_Reviewable

                    "Reviewing" ->
                        JD.succeed ReviewableHITStatus_Reviewing


                    _ ->
                        JD.fail "bad thing"
            )




reviewableHITStatusToString : ReviewableHITStatus -> String
reviewableHITStatusToString val =
    case val of
        ReviewableHITStatus_Reviewable ->
            "Reviewable"

        ReviewableHITStatus_Reviewing ->
            "Reviewing"




{-| Type of HTTP response from sendBonus
-}
type alias SendBonusResponse =
    { 
    }



sendBonusResponseDecoder : JD.Decoder SendBonusResponse
sendBonusResponseDecoder =
    JD.succeed SendBonusResponse
        




sendBonusResponseToString : SendBonusResponse -> String -- List (String, String)
sendBonusResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from sendTestEventNotification
-}
type alias SendTestEventNotificationResponse =
    { 
    }



sendTestEventNotificationResponseDecoder : JD.Decoder SendTestEventNotificationResponse
sendTestEventNotificationResponseDecoder =
    JD.succeed SendTestEventNotificationResponse
        




sendTestEventNotificationResponseToString : SendTestEventNotificationResponse -> String -- List (String, String)
sendTestEventNotificationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Amazon Mechanical Turk is temporarily unable to process your request. Try your call again.</p>
-}
type alias ServiceFault =
    { message : Maybe String
    , turkErrorCode : Maybe String
    }



serviceFaultDecoder : JD.Decoder ServiceFault
serviceFaultDecoder =
    JD.succeed ServiceFault
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TurkErrorCode", "turkErrorCode"]
            JD.string
        )
        




serviceFaultToString : ServiceFault -> String -- List (String, String)
serviceFaultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "turkErrorCode" "" -- val.turkErrorCode
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateExpirationForHIT
-}
type alias UpdateExpirationForHITResponse =
    { 
    }



updateExpirationForHITResponseDecoder : JD.Decoder UpdateExpirationForHITResponse
updateExpirationForHITResponseDecoder =
    JD.succeed UpdateExpirationForHITResponse
        




updateExpirationForHITResponseToString : UpdateExpirationForHITResponse -> String -- List (String, String)
updateExpirationForHITResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateHITReviewStatus
-}
type alias UpdateHITReviewStatusResponse =
    { 
    }



updateHITReviewStatusResponseDecoder : JD.Decoder UpdateHITReviewStatusResponse
updateHITReviewStatusResponseDecoder =
    JD.succeed UpdateHITReviewStatusResponse
        




updateHITReviewStatusResponseToString : UpdateHITReviewStatusResponse -> String -- List (String, String)
updateHITReviewStatusResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateHITTypeOfHIT
-}
type alias UpdateHITTypeOfHITResponse =
    { 
    }



updateHITTypeOfHITResponseDecoder : JD.Decoder UpdateHITTypeOfHITResponse
updateHITTypeOfHITResponseDecoder =
    JD.succeed UpdateHITTypeOfHITResponse
        




updateHITTypeOfHITResponseToString : UpdateHITTypeOfHITResponse -> String -- List (String, String)
updateHITTypeOfHITResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateNotificationSettings
-}
type alias UpdateNotificationSettingsResponse =
    { 
    }



updateNotificationSettingsResponseDecoder : JD.Decoder UpdateNotificationSettingsResponse
updateNotificationSettingsResponseDecoder =
    JD.succeed UpdateNotificationSettingsResponse
        




updateNotificationSettingsResponseToString : UpdateNotificationSettingsResponse -> String -- List (String, String)
updateNotificationSettingsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateQualificationType
-}
type alias UpdateQualificationTypeResponse =
    { qualificationType : Maybe QualificationType
    }



updateQualificationTypeResponseDecoder : JD.Decoder UpdateQualificationTypeResponse
updateQualificationTypeResponseDecoder =
    JD.succeed UpdateQualificationTypeResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QualificationType", "qualificationType"]
            qualificationTypeDecoder
        )
        




updateQualificationTypeResponseToString : UpdateQualificationTypeResponse -> String -- List (String, String)
updateQualificationTypeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "qualificationType" "" -- val.qualificationType
        
    --     |> Dict.toList
    ""



{-| <p> The WorkerBlock data structure represents a Worker who has been blocked. It has two elements: the WorkerId and the Reason for the block. </p>
-}
type alias WorkerBlock =
    { workerId : Maybe String
    , reason : Maybe String
    }



workerBlockDecoder : JD.Decoder WorkerBlock
workerBlockDecoder =
    JD.succeed WorkerBlock
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkerId", "workerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Reason", "reason"]
            JD.string
        )
        




workerBlockToString : WorkerBlock -> String -- List (String, String)
workerBlockToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workerId" "" -- val.workerId
        
    --     |> Dict.insert
    --         "reason" "" -- val.reason
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias AcceptQualificationRequestRequest =
    { qualificationRequestId : String
    , integerValue : Maybe Int
    }


{-| undefined
-}
type alias ApproveAssignmentRequest =
    { assignmentId : String
    , requesterFeedback : Maybe String
    , overrideRejection : Maybe Bool
    }


{-| undefined
-}
type alias AssociateQualificationWithWorkerRequest =
    { qualificationTypeId : String
    , workerId : String
    , integerValue : Maybe Int
    , sendNotification : Maybe Bool
    }


{-| undefined
-}
type alias CreateAdditionalAssignmentsForHITRequest =
    { hITId : String
    , numberOfAdditionalAssignments : Int
    , uniqueRequestToken : Maybe String
    }


{-| undefined
-}
type alias CreateHITRequest =
    { maxAssignments : Maybe Int
    , autoApprovalDelayInSeconds : Maybe Int
    , lifetimeInSeconds : Int
    , assignmentDurationInSeconds : Int
    , reward : String
    , title : String
    , keywords : Maybe String
    , description : String
    , question : Maybe String
    , requesterAnnotation : Maybe String
    , qualificationRequirements : Maybe (List QualificationRequirement)
    , uniqueRequestToken : Maybe String
    , assignmentReviewPolicy : Maybe ReviewPolicy
    , hITReviewPolicy : Maybe ReviewPolicy
    , hITLayoutId : Maybe String
    , hITLayoutParameters : Maybe (List HITLayoutParameter)
    }


{-| undefined
-}
type alias CreateHITTypeRequest =
    { autoApprovalDelayInSeconds : Maybe Int
    , assignmentDurationInSeconds : Int
    , reward : String
    , title : String
    , keywords : Maybe String
    , description : String
    , qualificationRequirements : Maybe (List QualificationRequirement)
    }


{-| undefined
-}
type alias CreateHITWithHITTypeRequest =
    { hITTypeId : String
    , maxAssignments : Maybe Int
    , lifetimeInSeconds : Int
    , question : Maybe String
    , requesterAnnotation : Maybe String
    , uniqueRequestToken : Maybe String
    , assignmentReviewPolicy : Maybe ReviewPolicy
    , hITReviewPolicy : Maybe ReviewPolicy
    , hITLayoutId : Maybe String
    , hITLayoutParameters : Maybe (List HITLayoutParameter)
    }


{-| undefined
-}
type alias CreateQualificationTypeRequest =
    { name : String
    , keywords : Maybe String
    , description : String
    , qualificationTypeStatus : QualificationTypeStatus
    , retryDelayInSeconds : Maybe Int
    , test : Maybe String
    , answerKey : Maybe String
    , testDurationInSeconds : Maybe Int
    , autoGranted : Maybe Bool
    , autoGrantedValue : Maybe Int
    }


{-| undefined
-}
type alias CreateWorkerBlockRequest =
    { workerId : String
    , reason : String
    }


{-| undefined
-}
type alias DeleteHITRequest =
    { hITId : String
    }


{-| undefined
-}
type alias DeleteQualificationTypeRequest =
    { qualificationTypeId : String
    }


{-| undefined
-}
type alias DeleteWorkerBlockRequest =
    { workerId : String
    , reason : Maybe String
    }


{-| undefined
-}
type alias DisassociateQualificationFromWorkerRequest =
    { workerId : String
    , qualificationTypeId : String
    , reason : Maybe String
    }


{-| undefined
-}
type alias GetAccountBalanceRequest =
    { 
    }


{-| undefined
-}
type alias GetAssignmentRequest =
    { assignmentId : String
    }


{-| undefined
-}
type alias GetFileUploadURLRequest =
    { assignmentId : String
    , questionIdentifier : String
    }


{-| undefined
-}
type alias GetHITRequest =
    { hITId : String
    }


{-| undefined
-}
type alias GetQualificationScoreRequest =
    { qualificationTypeId : String
    , workerId : String
    }


{-| undefined
-}
type alias GetQualificationTypeRequest =
    { qualificationTypeId : String
    }


{-| undefined
-}
type alias ListAssignmentsForHITRequest =
    { hITId : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , assignmentStatuses : Maybe (List AssignmentStatus)
    }


{-| undefined
-}
type alias ListBonusPaymentsRequest =
    { hITId : Maybe String
    , assignmentId : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListHITsForQualificationTypeRequest =
    { qualificationTypeId : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListHITsRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListQualificationRequestsRequest =
    { qualificationTypeId : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListQualificationTypesRequest =
    { query : Maybe String
    , mustBeRequestable : Bool
    , mustBeOwnedByCaller : Maybe Bool
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListReviewPolicyResultsForHITRequest =
    { hITId : String
    , policyLevels : Maybe (List ReviewPolicyLevel)
    , retrieveActions : Maybe Bool
    , retrieveResults : Maybe Bool
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListReviewableHITsRequest =
    { hITTypeId : Maybe String
    , status : Maybe ReviewableHITStatus
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListWorkerBlocksRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListWorkersWithQualificationTypeRequest =
    { qualificationTypeId : String
    , status : Maybe QualificationStatus
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias NotifyWorkersRequest =
    { subject : String
    , messageText : String
    , workerIds : (List String)
    }


{-| undefined
-}
type alias RejectAssignmentRequest =
    { assignmentId : String
    , requesterFeedback : String
    }


{-| undefined
-}
type alias RejectQualificationRequestRequest =
    { qualificationRequestId : String
    , reason : Maybe String
    }


{-| undefined
-}
type alias SendBonusRequest =
    { workerId : String
    , bonusAmount : String
    , assignmentId : String
    , reason : String
    , uniqueRequestToken : Maybe String
    }


{-| undefined
-}
type alias SendTestEventNotificationRequest =
    { notification : NotificationSpecification
    , testEventType : EventType
    }


{-| undefined
-}
type alias UpdateExpirationForHITRequest =
    { hITId : String
    , expireAt : Posix
    }


{-| undefined
-}
type alias UpdateHITReviewStatusRequest =
    { hITId : String
    , revert : Maybe Bool
    }


{-| undefined
-}
type alias UpdateHITTypeOfHITRequest =
    { hITId : String
    , hITTypeId : String
    }


{-| undefined
-}
type alias UpdateNotificationSettingsRequest =
    { hITTypeId : String
    , notification : Maybe NotificationSpecification
    , active : Maybe Bool
    }


{-| undefined
-}
type alias UpdateQualificationTypeRequest =
    { qualificationTypeId : String
    , description : Maybe String
    , qualificationTypeStatus : Maybe QualificationTypeStatus
    , test : Maybe String
    , answerKey : Maybe String
    , testDurationInSeconds : Maybe Int
    , retryDelayInSeconds : Maybe Int
    , autoGranted : Maybe Bool
    , autoGrantedValue : Maybe Int
    }






acceptQualificationRequestRequestEncoder : AcceptQualificationRequestRequest -> JE.Value
acceptQualificationRequestRequestEncoder data =
    []
        
        
        |> (::) ("QualificationRequestId", data.qualificationRequestId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("IntegerValue", data.integerValue)
        
        
        |> JE.object






acceptQualificationRequestResponseEncoder : AcceptQualificationRequestResponse -> JE.Value
acceptQualificationRequestResponseEncoder data =
    []
        
        |> JE.object






approveAssignmentRequestEncoder : ApproveAssignmentRequest -> JE.Value
approveAssignmentRequestEncoder data =
    []
        
        
        |> (::) ("AssignmentId", data.assignmentId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RequesterFeedback", data.requesterFeedback)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("OverrideRejection", data.overrideRejection)
        
        
        |> JE.object






approveAssignmentResponseEncoder : ApproveAssignmentResponse -> JE.Value
approveAssignmentResponseEncoder data =
    []
        
        |> JE.object






assignmentEncoder : Assignment -> JE.Value
assignmentEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AssignmentId", data.assignmentId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkerId", data.workerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HITId", data.hITId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (assignmentStatusToString >> JE.string)
            ("AssignmentStatus", data.assignmentStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("AutoApprovalTime", data.autoApprovalTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("AcceptTime", data.acceptTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("SubmitTime", data.submitTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ApprovalTime", data.approvalTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("RejectionTime", data.rejectionTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("Deadline", data.deadline)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Answer", data.answer)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RequesterFeedback", data.requesterFeedback)
        
        
        |> JE.object










associateQualificationWithWorkerRequestEncoder : AssociateQualificationWithWorkerRequest -> JE.Value
associateQualificationWithWorkerRequestEncoder data =
    []
        
        
        |> (::) ("QualificationTypeId", data.qualificationTypeId |> (JE.string))
        
        
        
        |> (::) ("WorkerId", data.workerId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("IntegerValue", data.integerValue)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("SendNotification", data.sendNotification)
        
        
        |> JE.object






associateQualificationWithWorkerResponseEncoder : AssociateQualificationWithWorkerResponse -> JE.Value
associateQualificationWithWorkerResponseEncoder data =
    []
        
        |> JE.object






bonusPaymentEncoder : BonusPayment -> JE.Value
bonusPaymentEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkerId", data.workerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BonusAmount", data.bonusAmount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AssignmentId", data.assignmentId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Reason", data.reason)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("GrantTime", data.grantTime)
        
        
        |> JE.object










createAdditionalAssignmentsForHITRequestEncoder : CreateAdditionalAssignmentsForHITRequest -> JE.Value
createAdditionalAssignmentsForHITRequestEncoder data =
    []
        
        
        |> (::) ("HITId", data.hITId |> (JE.string))
        
        
        
        |> (::) ("NumberOfAdditionalAssignments", data.numberOfAdditionalAssignments |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UniqueRequestToken", data.uniqueRequestToken)
        
        
        |> JE.object






createAdditionalAssignmentsForHITResponseEncoder : CreateAdditionalAssignmentsForHITResponse -> JE.Value
createAdditionalAssignmentsForHITResponseEncoder data =
    []
        
        |> JE.object






createHITRequestEncoder : CreateHITRequest -> JE.Value
createHITRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxAssignments", data.maxAssignments)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AutoApprovalDelayInSeconds", data.autoApprovalDelayInSeconds)
        
        
        
        |> (::) ("LifetimeInSeconds", data.lifetimeInSeconds |> (JE.int))
        
        
        
        |> (::) ("AssignmentDurationInSeconds", data.assignmentDurationInSeconds |> (JE.int))
        
        
        
        |> (::) ("Reward", data.reward |> (JE.string))
        
        
        
        |> (::) ("Title", data.title |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Keywords", data.keywords)
        
        
        
        |> (::) ("Description", data.description |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Question", data.question)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RequesterAnnotation", data.requesterAnnotation)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (qualificationRequirementEncoder))
            ("QualificationRequirements", data.qualificationRequirements)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UniqueRequestToken", data.uniqueRequestToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (reviewPolicyEncoder)
            ("AssignmentReviewPolicy", data.assignmentReviewPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (reviewPolicyEncoder)
            ("HITReviewPolicy", data.hITReviewPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HITLayoutId", data.hITLayoutId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (hITLayoutParameterEncoder))
            ("HITLayoutParameters", data.hITLayoutParameters)
        
        
        |> JE.object






createHITResponseEncoder : CreateHITResponse -> JE.Value
createHITResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (hITEncoder)
            ("HIT", data.hIT)
        
        
        |> JE.object






createHITTypeRequestEncoder : CreateHITTypeRequest -> JE.Value
createHITTypeRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AutoApprovalDelayInSeconds", data.autoApprovalDelayInSeconds)
        
        
        
        |> (::) ("AssignmentDurationInSeconds", data.assignmentDurationInSeconds |> (JE.int))
        
        
        
        |> (::) ("Reward", data.reward |> (JE.string))
        
        
        
        |> (::) ("Title", data.title |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Keywords", data.keywords)
        
        
        
        |> (::) ("Description", data.description |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (qualificationRequirementEncoder))
            ("QualificationRequirements", data.qualificationRequirements)
        
        
        |> JE.object






createHITTypeResponseEncoder : CreateHITTypeResponse -> JE.Value
createHITTypeResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HITTypeId", data.hITTypeId)
        
        
        |> JE.object






createHITWithHITTypeRequestEncoder : CreateHITWithHITTypeRequest -> JE.Value
createHITWithHITTypeRequestEncoder data =
    []
        
        
        |> (::) ("HITTypeId", data.hITTypeId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxAssignments", data.maxAssignments)
        
        
        
        |> (::) ("LifetimeInSeconds", data.lifetimeInSeconds |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Question", data.question)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RequesterAnnotation", data.requesterAnnotation)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UniqueRequestToken", data.uniqueRequestToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (reviewPolicyEncoder)
            ("AssignmentReviewPolicy", data.assignmentReviewPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (reviewPolicyEncoder)
            ("HITReviewPolicy", data.hITReviewPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HITLayoutId", data.hITLayoutId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (hITLayoutParameterEncoder))
            ("HITLayoutParameters", data.hITLayoutParameters)
        
        
        |> JE.object






createHITWithHITTypeResponseEncoder : CreateHITWithHITTypeResponse -> JE.Value
createHITWithHITTypeResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (hITEncoder)
            ("HIT", data.hIT)
        
        
        |> JE.object






createQualificationTypeRequestEncoder : CreateQualificationTypeRequest -> JE.Value
createQualificationTypeRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Keywords", data.keywords)
        
        
        
        |> (::) ("Description", data.description |> (JE.string))
        
        
        
        |> (::) ("QualificationTypeStatus", data.qualificationTypeStatus |> (qualificationTypeStatusToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RetryDelayInSeconds", data.retryDelayInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Test", data.test)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AnswerKey", data.answerKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TestDurationInSeconds", data.testDurationInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AutoGranted", data.autoGranted)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AutoGrantedValue", data.autoGrantedValue)
        
        
        |> JE.object






createQualificationTypeResponseEncoder : CreateQualificationTypeResponse -> JE.Value
createQualificationTypeResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (qualificationTypeEncoder)
            ("QualificationType", data.qualificationType)
        
        
        |> JE.object






createWorkerBlockRequestEncoder : CreateWorkerBlockRequest -> JE.Value
createWorkerBlockRequestEncoder data =
    []
        
        
        |> (::) ("WorkerId", data.workerId |> (JE.string))
        
        
        
        |> (::) ("Reason", data.reason |> (JE.string))
        
        
        |> JE.object






createWorkerBlockResponseEncoder : CreateWorkerBlockResponse -> JE.Value
createWorkerBlockResponseEncoder data =
    []
        
        |> JE.object






deleteHITRequestEncoder : DeleteHITRequest -> JE.Value
deleteHITRequestEncoder data =
    []
        
        
        |> (::) ("HITId", data.hITId |> (JE.string))
        
        
        |> JE.object






deleteHITResponseEncoder : DeleteHITResponse -> JE.Value
deleteHITResponseEncoder data =
    []
        
        |> JE.object






deleteQualificationTypeRequestEncoder : DeleteQualificationTypeRequest -> JE.Value
deleteQualificationTypeRequestEncoder data =
    []
        
        
        |> (::) ("QualificationTypeId", data.qualificationTypeId |> (JE.string))
        
        
        |> JE.object






deleteQualificationTypeResponseEncoder : DeleteQualificationTypeResponse -> JE.Value
deleteQualificationTypeResponseEncoder data =
    []
        
        |> JE.object






deleteWorkerBlockRequestEncoder : DeleteWorkerBlockRequest -> JE.Value
deleteWorkerBlockRequestEncoder data =
    []
        
        
        |> (::) ("WorkerId", data.workerId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Reason", data.reason)
        
        
        |> JE.object






deleteWorkerBlockResponseEncoder : DeleteWorkerBlockResponse -> JE.Value
deleteWorkerBlockResponseEncoder data =
    []
        
        |> JE.object






disassociateQualificationFromWorkerRequestEncoder : DisassociateQualificationFromWorkerRequest -> JE.Value
disassociateQualificationFromWorkerRequestEncoder data =
    []
        
        
        |> (::) ("WorkerId", data.workerId |> (JE.string))
        
        
        
        |> (::) ("QualificationTypeId", data.qualificationTypeId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Reason", data.reason)
        
        
        |> JE.object






disassociateQualificationFromWorkerResponseEncoder : DisassociateQualificationFromWorkerResponse -> JE.Value
disassociateQualificationFromWorkerResponseEncoder data =
    []
        
        |> JE.object










getAccountBalanceRequestEncoder : GetAccountBalanceRequest -> JE.Value
getAccountBalanceRequestEncoder data =
    []
        
        |> JE.object






getAccountBalanceResponseEncoder : GetAccountBalanceResponse -> JE.Value
getAccountBalanceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AvailableBalance", data.availableBalance)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("OnHoldBalance", data.onHoldBalance)
        
        
        |> JE.object






getAssignmentRequestEncoder : GetAssignmentRequest -> JE.Value
getAssignmentRequestEncoder data =
    []
        
        
        |> (::) ("AssignmentId", data.assignmentId |> (JE.string))
        
        
        |> JE.object






getAssignmentResponseEncoder : GetAssignmentResponse -> JE.Value
getAssignmentResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (assignmentEncoder)
            ("Assignment", data.assignment)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (hITEncoder)
            ("HIT", data.hIT)
        
        
        |> JE.object






getFileUploadURLRequestEncoder : GetFileUploadURLRequest -> JE.Value
getFileUploadURLRequestEncoder data =
    []
        
        
        |> (::) ("AssignmentId", data.assignmentId |> (JE.string))
        
        
        
        |> (::) ("QuestionIdentifier", data.questionIdentifier |> (JE.string))
        
        
        |> JE.object






getFileUploadURLResponseEncoder : GetFileUploadURLResponse -> JE.Value
getFileUploadURLResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FileUploadURL", data.fileUploadURL)
        
        
        |> JE.object






getHITRequestEncoder : GetHITRequest -> JE.Value
getHITRequestEncoder data =
    []
        
        
        |> (::) ("HITId", data.hITId |> (JE.string))
        
        
        |> JE.object






getHITResponseEncoder : GetHITResponse -> JE.Value
getHITResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (hITEncoder)
            ("HIT", data.hIT)
        
        
        |> JE.object






getQualificationScoreRequestEncoder : GetQualificationScoreRequest -> JE.Value
getQualificationScoreRequestEncoder data =
    []
        
        
        |> (::) ("QualificationTypeId", data.qualificationTypeId |> (JE.string))
        
        
        
        |> (::) ("WorkerId", data.workerId |> (JE.string))
        
        
        |> JE.object






getQualificationScoreResponseEncoder : GetQualificationScoreResponse -> JE.Value
getQualificationScoreResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (qualificationEncoder)
            ("Qualification", data.qualification)
        
        
        |> JE.object






getQualificationTypeRequestEncoder : GetQualificationTypeRequest -> JE.Value
getQualificationTypeRequestEncoder data =
    []
        
        
        |> (::) ("QualificationTypeId", data.qualificationTypeId |> (JE.string))
        
        
        |> JE.object






getQualificationTypeResponseEncoder : GetQualificationTypeResponse -> JE.Value
getQualificationTypeResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (qualificationTypeEncoder)
            ("QualificationType", data.qualificationType)
        
        
        |> JE.object






hITEncoder : HIT -> JE.Value
hITEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HITId", data.hITId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HITTypeId", data.hITTypeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HITGroupId", data.hITGroupId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HITLayoutId", data.hITLayoutId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Title", data.title)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Question", data.question)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Keywords", data.keywords)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (hITStatusToString >> JE.string)
            ("HITStatus", data.hITStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxAssignments", data.maxAssignments)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Reward", data.reward)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AutoApprovalDelayInSeconds", data.autoApprovalDelayInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("Expiration", data.expiration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AssignmentDurationInSeconds", data.assignmentDurationInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RequesterAnnotation", data.requesterAnnotation)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (qualificationRequirementEncoder))
            ("QualificationRequirements", data.qualificationRequirements)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (hITReviewStatusToString >> JE.string)
            ("HITReviewStatus", data.hITReviewStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfAssignmentsPending", data.numberOfAssignmentsPending)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfAssignmentsAvailable", data.numberOfAssignmentsAvailable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfAssignmentsCompleted", data.numberOfAssignmentsCompleted)
        
        
        |> JE.object










hITLayoutParameterEncoder : HITLayoutParameter -> JE.Value
hITLayoutParameterEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("Value", data.value |> (JE.string))
        
        
        |> JE.object














listAssignmentsForHITRequestEncoder : ListAssignmentsForHITRequest -> JE.Value
listAssignmentsForHITRequestEncoder data =
    []
        
        
        |> (::) ("HITId", data.hITId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (assignmentStatusToString >> JE.string))
            ("AssignmentStatuses", data.assignmentStatuses)
        
        
        |> JE.object






listAssignmentsForHITResponseEncoder : ListAssignmentsForHITResponse -> JE.Value
listAssignmentsForHITResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumResults", data.numResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (assignmentEncoder))
            ("Assignments", data.assignments)
        
        
        |> JE.object






listBonusPaymentsRequestEncoder : ListBonusPaymentsRequest -> JE.Value
listBonusPaymentsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HITId", data.hITId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AssignmentId", data.assignmentId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






listBonusPaymentsResponseEncoder : ListBonusPaymentsResponse -> JE.Value
listBonusPaymentsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumResults", data.numResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (bonusPaymentEncoder))
            ("BonusPayments", data.bonusPayments)
        
        
        |> JE.object






listHITsForQualificationTypeRequestEncoder : ListHITsForQualificationTypeRequest -> JE.Value
listHITsForQualificationTypeRequestEncoder data =
    []
        
        
        |> (::) ("QualificationTypeId", data.qualificationTypeId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






listHITsForQualificationTypeResponseEncoder : ListHITsForQualificationTypeResponse -> JE.Value
listHITsForQualificationTypeResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumResults", data.numResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (hITEncoder))
            ("HITs", data.hITs)
        
        
        |> JE.object






listHITsRequestEncoder : ListHITsRequest -> JE.Value
listHITsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






listHITsResponseEncoder : ListHITsResponse -> JE.Value
listHITsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumResults", data.numResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (hITEncoder))
            ("HITs", data.hITs)
        
        
        |> JE.object






listQualificationRequestsRequestEncoder : ListQualificationRequestsRequest -> JE.Value
listQualificationRequestsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("QualificationTypeId", data.qualificationTypeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






listQualificationRequestsResponseEncoder : ListQualificationRequestsResponse -> JE.Value
listQualificationRequestsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumResults", data.numResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (qualificationRequestEncoder))
            ("QualificationRequests", data.qualificationRequests)
        
        
        |> JE.object






listQualificationTypesRequestEncoder : ListQualificationTypesRequest -> JE.Value
listQualificationTypesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Query", data.query)
        
        
        
        |> (::) ("MustBeRequestable", data.mustBeRequestable |> (JE.bool))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("MustBeOwnedByCaller", data.mustBeOwnedByCaller)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






listQualificationTypesResponseEncoder : ListQualificationTypesResponse -> JE.Value
listQualificationTypesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumResults", data.numResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (qualificationTypeEncoder))
            ("QualificationTypes", data.qualificationTypes)
        
        
        |> JE.object






listReviewPolicyResultsForHITRequestEncoder : ListReviewPolicyResultsForHITRequest -> JE.Value
listReviewPolicyResultsForHITRequestEncoder data =
    []
        
        
        |> (::) ("HITId", data.hITId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (reviewPolicyLevelToString >> JE.string))
            ("PolicyLevels", data.policyLevels)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("RetrieveActions", data.retrieveActions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("RetrieveResults", data.retrieveResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






listReviewPolicyResultsForHITResponseEncoder : ListReviewPolicyResultsForHITResponse -> JE.Value
listReviewPolicyResultsForHITResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HITId", data.hITId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (reviewPolicyEncoder)
            ("AssignmentReviewPolicy", data.assignmentReviewPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (reviewPolicyEncoder)
            ("HITReviewPolicy", data.hITReviewPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (reviewReportEncoder)
            ("AssignmentReviewReport", data.assignmentReviewReport)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (reviewReportEncoder)
            ("HITReviewReport", data.hITReviewReport)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listReviewableHITsRequestEncoder : ListReviewableHITsRequest -> JE.Value
listReviewableHITsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HITTypeId", data.hITTypeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (reviewableHITStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






listReviewableHITsResponseEncoder : ListReviewableHITsResponse -> JE.Value
listReviewableHITsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumResults", data.numResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (hITEncoder))
            ("HITs", data.hITs)
        
        
        |> JE.object






listWorkerBlocksRequestEncoder : ListWorkerBlocksRequest -> JE.Value
listWorkerBlocksRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






listWorkerBlocksResponseEncoder : ListWorkerBlocksResponse -> JE.Value
listWorkerBlocksResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumResults", data.numResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (workerBlockEncoder))
            ("WorkerBlocks", data.workerBlocks)
        
        
        |> JE.object






listWorkersWithQualificationTypeRequestEncoder : ListWorkersWithQualificationTypeRequest -> JE.Value
listWorkersWithQualificationTypeRequestEncoder data =
    []
        
        
        |> (::) ("QualificationTypeId", data.qualificationTypeId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (qualificationStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






listWorkersWithQualificationTypeResponseEncoder : ListWorkersWithQualificationTypeResponse -> JE.Value
listWorkersWithQualificationTypeResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumResults", data.numResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (qualificationEncoder))
            ("Qualifications", data.qualifications)
        
        
        |> JE.object






localeEncoder : Locale -> JE.Value
localeEncoder data =
    []
        
        
        |> (::) ("Country", data.country |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Subdivision", data.subdivision)
        
        
        |> JE.object






notificationSpecificationEncoder : NotificationSpecification -> JE.Value
notificationSpecificationEncoder data =
    []
        
        
        |> (::) ("Destination", data.destination |> (JE.string))
        
        
        
        |> (::) ("Transport", data.transport |> (notificationTransportToString >> JE.string))
        
        
        
        |> (::) ("Version", data.version |> (JE.string))
        
        
        
        |> (::) ("EventTypes", data.eventTypes |> (JE.list (eventTypeToString >> JE.string)))
        
        
        |> JE.object














notifyWorkersFailureStatusEncoder : NotifyWorkersFailureStatus -> JE.Value
notifyWorkersFailureStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (notifyWorkersFailureCodeToString >> JE.string)
            ("NotifyWorkersFailureCode", data.notifyWorkersFailureCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NotifyWorkersFailureMessage", data.notifyWorkersFailureMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkerId", data.workerId)
        
        
        |> JE.object






notifyWorkersRequestEncoder : NotifyWorkersRequest -> JE.Value
notifyWorkersRequestEncoder data =
    []
        
        
        |> (::) ("Subject", data.subject |> (JE.string))
        
        
        
        |> (::) ("MessageText", data.messageText |> (JE.string))
        
        
        
        |> (::) ("WorkerIds", data.workerIds |> (JE.list (JE.string)))
        
        
        |> JE.object






notifyWorkersResponseEncoder : NotifyWorkersResponse -> JE.Value
notifyWorkersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (notifyWorkersFailureStatusEncoder))
            ("NotifyWorkersFailureStatuses", data.notifyWorkersFailureStatuses)
        
        
        |> JE.object






parameterMapEntryEncoder : ParameterMapEntry -> JE.Value
parameterMapEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Values", data.values)
        
        
        |> JE.object






policyParameterEncoder : PolicyParameter -> JE.Value
policyParameterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Values", data.values)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (parameterMapEntryEncoder))
            ("MapEntries", data.mapEntries)
        
        
        |> JE.object






qualificationEncoder : Qualification -> JE.Value
qualificationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("QualificationTypeId", data.qualificationTypeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkerId", data.workerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("GrantTime", data.grantTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("IntegerValue", data.integerValue)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (localeEncoder)
            ("LocaleValue", data.localeValue)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (qualificationStatusToString >> JE.string)
            ("Status", data.status)
        
        
        |> JE.object






qualificationRequestEncoder : QualificationRequest -> JE.Value
qualificationRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("QualificationRequestId", data.qualificationRequestId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("QualificationTypeId", data.qualificationTypeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkerId", data.workerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Test", data.test)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Answer", data.answer)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("SubmitTime", data.submitTime)
        
        
        |> JE.object






qualificationRequirementEncoder : QualificationRequirement -> JE.Value
qualificationRequirementEncoder data =
    []
        
        
        |> (::) ("QualificationTypeId", data.qualificationTypeId |> (JE.string))
        
        
        
        |> (::) ("Comparator", data.comparator |> (comparatorToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.int))
            ("IntegerValues", data.integerValues)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (localeEncoder))
            ("LocaleValues", data.localeValues)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("RequiredToPreview", data.requiredToPreview)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (hITAccessActionsToString >> JE.string)
            ("ActionsGuarded", data.actionsGuarded)
        
        
        |> JE.object










qualificationTypeEncoder : QualificationType -> JE.Value
qualificationTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("QualificationTypeId", data.qualificationTypeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Keywords", data.keywords)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (qualificationTypeStatusToString >> JE.string)
            ("QualificationTypeStatus", data.qualificationTypeStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Test", data.test)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TestDurationInSeconds", data.testDurationInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AnswerKey", data.answerKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RetryDelayInSeconds", data.retryDelayInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IsRequestable", data.isRequestable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AutoGranted", data.autoGranted)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AutoGrantedValue", data.autoGrantedValue)
        
        
        |> JE.object










rejectAssignmentRequestEncoder : RejectAssignmentRequest -> JE.Value
rejectAssignmentRequestEncoder data =
    []
        
        
        |> (::) ("AssignmentId", data.assignmentId |> (JE.string))
        
        
        
        |> (::) ("RequesterFeedback", data.requesterFeedback |> (JE.string))
        
        
        |> JE.object






rejectAssignmentResponseEncoder : RejectAssignmentResponse -> JE.Value
rejectAssignmentResponseEncoder data =
    []
        
        |> JE.object






rejectQualificationRequestRequestEncoder : RejectQualificationRequestRequest -> JE.Value
rejectQualificationRequestRequestEncoder data =
    []
        
        
        |> (::) ("QualificationRequestId", data.qualificationRequestId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Reason", data.reason)
        
        
        |> JE.object






rejectQualificationRequestResponseEncoder : RejectQualificationRequestResponse -> JE.Value
rejectQualificationRequestResponseEncoder data =
    []
        
        |> JE.object






requestErrorEncoder : RequestError -> JE.Value
requestErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TurkErrorCode", data.turkErrorCode)
        
        
        |> JE.object






reviewActionDetailEncoder : ReviewActionDetail -> JE.Value
reviewActionDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ActionId", data.actionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ActionName", data.actionName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TargetId", data.targetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TargetType", data.targetType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (reviewActionStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CompleteTime", data.completeTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Result", data.result)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorCode", data.errorCode)
        
        
        |> JE.object










reviewPolicyEncoder : ReviewPolicy -> JE.Value
reviewPolicyEncoder data =
    []
        
        
        |> (::) ("PolicyName", data.policyName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (policyParameterEncoder))
            ("Parameters", data.parameters)
        
        
        |> JE.object










reviewReportEncoder : ReviewReport -> JE.Value
reviewReportEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (reviewResultDetailEncoder))
            ("ReviewResults", data.reviewResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (reviewActionDetailEncoder))
            ("ReviewActions", data.reviewActions)
        
        
        |> JE.object






reviewResultDetailEncoder : ReviewResultDetail -> JE.Value
reviewResultDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ActionId", data.actionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SubjectId", data.subjectId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SubjectType", data.subjectType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("QuestionId", data.questionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object










sendBonusRequestEncoder : SendBonusRequest -> JE.Value
sendBonusRequestEncoder data =
    []
        
        
        |> (::) ("WorkerId", data.workerId |> (JE.string))
        
        
        
        |> (::) ("BonusAmount", data.bonusAmount |> (JE.string))
        
        
        
        |> (::) ("AssignmentId", data.assignmentId |> (JE.string))
        
        
        
        |> (::) ("Reason", data.reason |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UniqueRequestToken", data.uniqueRequestToken)
        
        
        |> JE.object






sendBonusResponseEncoder : SendBonusResponse -> JE.Value
sendBonusResponseEncoder data =
    []
        
        |> JE.object






sendTestEventNotificationRequestEncoder : SendTestEventNotificationRequest -> JE.Value
sendTestEventNotificationRequestEncoder data =
    []
        
        
        |> (::) ("Notification", data.notification |> (notificationSpecificationEncoder))
        
        
        
        |> (::) ("TestEventType", data.testEventType |> (eventTypeToString >> JE.string))
        
        
        |> JE.object






sendTestEventNotificationResponseEncoder : SendTestEventNotificationResponse -> JE.Value
sendTestEventNotificationResponseEncoder data =
    []
        
        |> JE.object






serviceFaultEncoder : ServiceFault -> JE.Value
serviceFaultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TurkErrorCode", data.turkErrorCode)
        
        
        |> JE.object






updateExpirationForHITRequestEncoder : UpdateExpirationForHITRequest -> JE.Value
updateExpirationForHITRequestEncoder data =
    []
        
        
        |> (::) ("HITId", data.hITId |> (JE.string))
        
        
        
        |> (::) ("ExpireAt", data.expireAt |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






updateExpirationForHITResponseEncoder : UpdateExpirationForHITResponse -> JE.Value
updateExpirationForHITResponseEncoder data =
    []
        
        |> JE.object






updateHITReviewStatusRequestEncoder : UpdateHITReviewStatusRequest -> JE.Value
updateHITReviewStatusRequestEncoder data =
    []
        
        
        |> (::) ("HITId", data.hITId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Revert", data.revert)
        
        
        |> JE.object






updateHITReviewStatusResponseEncoder : UpdateHITReviewStatusResponse -> JE.Value
updateHITReviewStatusResponseEncoder data =
    []
        
        |> JE.object






updateHITTypeOfHITRequestEncoder : UpdateHITTypeOfHITRequest -> JE.Value
updateHITTypeOfHITRequestEncoder data =
    []
        
        
        |> (::) ("HITId", data.hITId |> (JE.string))
        
        
        
        |> (::) ("HITTypeId", data.hITTypeId |> (JE.string))
        
        
        |> JE.object






updateHITTypeOfHITResponseEncoder : UpdateHITTypeOfHITResponse -> JE.Value
updateHITTypeOfHITResponseEncoder data =
    []
        
        |> JE.object






updateNotificationSettingsRequestEncoder : UpdateNotificationSettingsRequest -> JE.Value
updateNotificationSettingsRequestEncoder data =
    []
        
        
        |> (::) ("HITTypeId", data.hITTypeId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationSpecificationEncoder)
            ("Notification", data.notification)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Active", data.active)
        
        
        |> JE.object






updateNotificationSettingsResponseEncoder : UpdateNotificationSettingsResponse -> JE.Value
updateNotificationSettingsResponseEncoder data =
    []
        
        |> JE.object






updateQualificationTypeRequestEncoder : UpdateQualificationTypeRequest -> JE.Value
updateQualificationTypeRequestEncoder data =
    []
        
        
        |> (::) ("QualificationTypeId", data.qualificationTypeId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (qualificationTypeStatusToString >> JE.string)
            ("QualificationTypeStatus", data.qualificationTypeStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Test", data.test)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AnswerKey", data.answerKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TestDurationInSeconds", data.testDurationInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RetryDelayInSeconds", data.retryDelayInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AutoGranted", data.autoGranted)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AutoGrantedValue", data.autoGrantedValue)
        
        
        |> JE.object






updateQualificationTypeResponseEncoder : UpdateQualificationTypeResponse -> JE.Value
updateQualificationTypeResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (qualificationTypeEncoder)
            ("QualificationType", data.qualificationType)
        
        
        |> JE.object






workerBlockEncoder : WorkerBlock -> JE.Value
workerBlockEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkerId", data.workerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Reason", data.reason)
        
        
        |> JE.object





