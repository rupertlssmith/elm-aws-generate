module AWS.Support
    exposing
        ( service
        , addAttachmentsToSet
        , AddAttachmentsToSetOptions
        , addCommunicationToCase
        , AddCommunicationToCaseOptions
        , createCase
        , CreateCaseOptions
        , describeAttachment
        , describeCases
        , DescribeCasesOptions
        , describeCommunications
        , DescribeCommunicationsOptions
        , describeServices
        , DescribeServicesOptions
        , describeSeverityLevels
        , DescribeSeverityLevelsOptions
        , describeTrustedAdvisorCheckRefreshStatuses
        , describeTrustedAdvisorCheckResult
        , DescribeTrustedAdvisorCheckResultOptions
        , describeTrustedAdvisorCheckSummaries
        , describeTrustedAdvisorChecks
        , refreshTrustedAdvisorCheck
        , resolveCase
        , ResolveCaseOptions
        , AddAttachmentsToSetResponse
        , AddCommunicationToCaseResponse
        , Attachment
        , AttachmentDetails
        , AttachmentIdNotFound
        , AttachmentLimitExceeded
        , AttachmentSetExpired
        , AttachmentSetIdNotFound
        , AttachmentSetSizeLimitExceeded
        , CaseCreationLimitExceeded
        , CaseDetails
        , CaseIdNotFound
        , Category
        , Communication
        , CreateCaseResponse
        , DescribeAttachmentLimitExceeded
        , DescribeAttachmentResponse
        , DescribeCasesResponse
        , DescribeCommunicationsResponse
        , DescribeServicesResponse
        , DescribeSeverityLevelsResponse
        , DescribeTrustedAdvisorCheckRefreshStatusesResponse
        , DescribeTrustedAdvisorCheckResultResponse
        , DescribeTrustedAdvisorCheckSummariesResponse
        , DescribeTrustedAdvisorChecksResponse
        , InternalServerError
        , RecentCaseCommunications
        , RefreshTrustedAdvisorCheckResponse
        , ResolveCaseResponse
        , Service
        , SeverityLevel
        , TrustedAdvisorCategorySpecificSummary
        , TrustedAdvisorCheckDescription
        , TrustedAdvisorCheckRefreshStatus
        , TrustedAdvisorCheckResult
        , TrustedAdvisorCheckSummary
        , TrustedAdvisorCostOptimizingSummary
        , TrustedAdvisorResourceDetail
        , TrustedAdvisorResourcesSummary
        )

{-| <fullname>AWS Support</fullname> <p>The AWS Support API reference is intended for programmers who need detailed information about the AWS Support operations and data types. This service enables you to manage your AWS Support cases programmatically. It uses HTTP methods that return results in JSON format.</p> <p>The AWS Support service also exposes a set of <a href="http://aws.amazon.com/premiumsupport/trustedadvisor/">Trusted Advisor</a> features. You can retrieve a list of checks and their descriptions, get check results, specify checks to refresh, and get the refresh status of checks. </p> <p>The following list describes the AWS Support case management operations:</p> <ul> <li> <p> <b>Service names, issue categories, and available severity levels. </b>The <a>DescribeServices</a> and <a>DescribeSeverityLevels</a> operations return AWS service names, service codes, service categories, and problem severity levels. You use these values when you call the <a>CreateCase</a> operation. </p> </li> <li> <p> <b>Case creation, case details, and case resolution.</b> The <a>CreateCase</a>, <a>DescribeCases</a>, <a>DescribeAttachment</a>, and <a>ResolveCase</a> operations create AWS Support cases, retrieve information about cases, and resolve cases.</p> </li> <li> <p> <b>Case communication.</b> The <a>DescribeCommunications</a>, <a>AddCommunicationToCase</a>, and <a>AddAttachmentsToSet</a> operations retrieve and add communications and attachments to AWS Support cases. </p> </li> </ul> <p>The following list describes the operations available from the AWS Support service for Trusted Advisor:</p> <ul> <li> <p> <a>DescribeTrustedAdvisorChecks</a> returns the list of checks that run against your AWS resources.</p> </li> <li> <p>Using the <code>checkId</code> for a specific check returned by <a>DescribeTrustedAdvisorChecks</a>, you can call <a>DescribeTrustedAdvisorCheckResult</a> to obtain the results for the check you specified.</p> </li> <li> <p> <a>DescribeTrustedAdvisorCheckSummaries</a> returns summarized results for one or more Trusted Advisor checks.</p> </li> <li> <p> <a>RefreshTrustedAdvisorCheck</a> requests that Trusted Advisor rerun a specified check. </p> </li> <li> <p> <a>DescribeTrustedAdvisorCheckRefreshStatuses</a> reports the refresh status of one or more checks. </p> </li> </ul> <p>For authentication of requests, AWS Support uses <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a>.</p> <p>See <a href="http://docs.aws.amazon.com/awssupport/latest/user/Welcome.html">About the AWS Support API</a> in the <i>AWS Support User Guide</i> for information about how to use this service to create and manage your support cases, and how to call Trusted Advisor for results of checks on your resources. </p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Exceptions](#exceptions)

## Operations

* [addAttachmentsToSet](#addAttachmentsToSet)
* [AddAttachmentsToSetOptions](#AddAttachmentsToSetOptions)
* [addCommunicationToCase](#addCommunicationToCase)
* [AddCommunicationToCaseOptions](#AddCommunicationToCaseOptions)
* [createCase](#createCase)
* [CreateCaseOptions](#CreateCaseOptions)
* [describeAttachment](#describeAttachment)
* [describeCases](#describeCases)
* [DescribeCasesOptions](#DescribeCasesOptions)
* [describeCommunications](#describeCommunications)
* [DescribeCommunicationsOptions](#DescribeCommunicationsOptions)
* [describeServices](#describeServices)
* [DescribeServicesOptions](#DescribeServicesOptions)
* [describeSeverityLevels](#describeSeverityLevels)
* [DescribeSeverityLevelsOptions](#DescribeSeverityLevelsOptions)
* [describeTrustedAdvisorCheckRefreshStatuses](#describeTrustedAdvisorCheckRefreshStatuses)
* [describeTrustedAdvisorCheckResult](#describeTrustedAdvisorCheckResult)
* [DescribeTrustedAdvisorCheckResultOptions](#DescribeTrustedAdvisorCheckResultOptions)
* [describeTrustedAdvisorCheckSummaries](#describeTrustedAdvisorCheckSummaries)
* [describeTrustedAdvisorChecks](#describeTrustedAdvisorChecks)
* [refreshTrustedAdvisorCheck](#refreshTrustedAdvisorCheck)
* [resolveCase](#resolveCase)
* [ResolveCaseOptions](#ResolveCaseOptions)


@docs addAttachmentsToSet,AddAttachmentsToSetOptions,addCommunicationToCase,AddCommunicationToCaseOptions,createCase,CreateCaseOptions,describeAttachment,describeCases,DescribeCasesOptions,describeCommunications,DescribeCommunicationsOptions,describeServices,DescribeServicesOptions,describeSeverityLevels,DescribeSeverityLevelsOptions,describeTrustedAdvisorCheckRefreshStatuses,describeTrustedAdvisorCheckResult,DescribeTrustedAdvisorCheckResultOptions,describeTrustedAdvisorCheckSummaries,describeTrustedAdvisorChecks,refreshTrustedAdvisorCheck,resolveCase,ResolveCaseOptions

## Responses

* [AddAttachmentsToSetResponse](#AddAttachmentsToSetResponse)
* [AddCommunicationToCaseResponse](#AddCommunicationToCaseResponse)
* [CreateCaseResponse](#CreateCaseResponse)
* [DescribeAttachmentResponse](#DescribeAttachmentResponse)
* [DescribeCasesResponse](#DescribeCasesResponse)
* [DescribeCommunicationsResponse](#DescribeCommunicationsResponse)
* [DescribeServicesResponse](#DescribeServicesResponse)
* [DescribeSeverityLevelsResponse](#DescribeSeverityLevelsResponse)
* [DescribeTrustedAdvisorCheckRefreshStatusesResponse](#DescribeTrustedAdvisorCheckRefreshStatusesResponse)
* [DescribeTrustedAdvisorCheckResultResponse](#DescribeTrustedAdvisorCheckResultResponse)
* [DescribeTrustedAdvisorCheckSummariesResponse](#DescribeTrustedAdvisorCheckSummariesResponse)
* [DescribeTrustedAdvisorChecksResponse](#DescribeTrustedAdvisorChecksResponse)
* [RefreshTrustedAdvisorCheckResponse](#RefreshTrustedAdvisorCheckResponse)
* [ResolveCaseResponse](#ResolveCaseResponse)


@docs AddAttachmentsToSetResponse,AddCommunicationToCaseResponse,CreateCaseResponse,DescribeAttachmentResponse,DescribeCasesResponse,DescribeCommunicationsResponse,DescribeServicesResponse,DescribeSeverityLevelsResponse,DescribeTrustedAdvisorCheckRefreshStatusesResponse,DescribeTrustedAdvisorCheckResultResponse,DescribeTrustedAdvisorCheckSummariesResponse,DescribeTrustedAdvisorChecksResponse,RefreshTrustedAdvisorCheckResponse,ResolveCaseResponse

## Records

* [Attachment](#Attachment)
* [AttachmentDetails](#AttachmentDetails)
* [CaseDetails](#CaseDetails)
* [Category](#Category)
* [Communication](#Communication)
* [RecentCaseCommunications](#RecentCaseCommunications)
* [Service](#Service)
* [SeverityLevel](#SeverityLevel)
* [TrustedAdvisorCategorySpecificSummary](#TrustedAdvisorCategorySpecificSummary)
* [TrustedAdvisorCheckDescription](#TrustedAdvisorCheckDescription)
* [TrustedAdvisorCheckRefreshStatus](#TrustedAdvisorCheckRefreshStatus)
* [TrustedAdvisorCheckResult](#TrustedAdvisorCheckResult)
* [TrustedAdvisorCheckSummary](#TrustedAdvisorCheckSummary)
* [TrustedAdvisorCostOptimizingSummary](#TrustedAdvisorCostOptimizingSummary)
* [TrustedAdvisorResourceDetail](#TrustedAdvisorResourceDetail)
* [TrustedAdvisorResourcesSummary](#TrustedAdvisorResourcesSummary)


@docs Attachment,AttachmentDetails,CaseDetails,Category,Communication,RecentCaseCommunications,Service,SeverityLevel,TrustedAdvisorCategorySpecificSummary,TrustedAdvisorCheckDescription,TrustedAdvisorCheckRefreshStatus,TrustedAdvisorCheckResult,TrustedAdvisorCheckSummary,TrustedAdvisorCostOptimizingSummary,TrustedAdvisorResourceDetail,TrustedAdvisorResourcesSummary

## Exceptions

* [AttachmentIdNotFound](#AttachmentIdNotFound)
* [AttachmentLimitExceeded](#AttachmentLimitExceeded)
* [AttachmentSetExpired](#AttachmentSetExpired)
* [AttachmentSetIdNotFound](#AttachmentSetIdNotFound)
* [AttachmentSetSizeLimitExceeded](#AttachmentSetSizeLimitExceeded)
* [CaseCreationLimitExceeded](#CaseCreationLimitExceeded)
* [CaseIdNotFound](#CaseIdNotFound)
* [DescribeAttachmentLimitExceeded](#DescribeAttachmentLimitExceeded)
* [InternalServerError](#InternalServerError)


@docs AttachmentIdNotFound,AttachmentLimitExceeded,AttachmentSetExpired,AttachmentSetIdNotFound,AttachmentSetSizeLimitExceeded,CaseCreationLimitExceeded,CaseIdNotFound,DescribeAttachmentLimitExceeded,InternalServerError

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE



{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "support"
        "2013-04-15"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWSSupport_20130415")



-- OPERATIONS

{-| <p>Adds one or more attachments to an attachment set. If an <code>attachmentSetId</code> is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an <code>attachmentSetId</code> is specified, the attachments are added to the specified set, if it exists.</p> <p>An attachment set is a temporary container for attachments that are to be added to a case or case communication. The set is available for one hour after it is created; the <code>expiryTime</code> returned in the response indicates when the set expires. The maximum number of attachments in a set is 3, and the maximum size of any attachment in the set is 5 MB.</p>

__Required Parameters__

* `attachments` __:__ `(List Attachment)`


-}

addAttachmentsToSet :
  
    (List Attachment) ->
  
  
    ( AddAttachmentsToSetOptions -> AddAttachmentsToSetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddAttachmentsToSetResponse)

addAttachmentsToSet attachments setOptions =
    
    let
        requestInput = AddAttachmentsToSetRequest
            
            options.attachmentSetId
            
            attachments
            
        
        options = setOptions (AddAttachmentsToSetOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> addAttachmentsToSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddAttachmentsToSet"
                
                (AWS.Core.Decode.ResultDecoder "AddAttachmentsToSetResponse" addAttachmentsToSetResponseDecoder)
                
            )



{-| Options for a addAttachmentsToSet request
-}
type alias AddAttachmentsToSetOptions =
    {
    attachmentSetId : Maybe String
    }



{-| <p>Adds additional customer communication to an AWS Support case. You use the <code>caseId</code> value to identify the case to add communication to. You can list a set of email addresses to copy on the communication using the <code>ccEmailAddresses</code> value. The <code>communicationBody</code> value contains the text of the communication.</p> <p>The response indicates the success or failure of the request.</p> <p>This operation implements a subset of the features of the AWS Support Center.</p>

__Required Parameters__

* `communicationBody` __:__ `String`


-}

addCommunicationToCase :
  
    String ->
  
  
    ( AddCommunicationToCaseOptions -> AddCommunicationToCaseOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddCommunicationToCaseResponse)

addCommunicationToCase communicationBody setOptions =
    
    let
        requestInput = AddCommunicationToCaseRequest
            
            options.caseId
            
            communicationBody
            
            options.ccEmailAddresses
            
            options.attachmentSetId
            
        
        options = setOptions (AddCommunicationToCaseOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> addCommunicationToCaseRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddCommunicationToCase"
                
                (AWS.Core.Decode.ResultDecoder "AddCommunicationToCaseResponse" addCommunicationToCaseResponseDecoder)
                
            )



{-| Options for a addCommunicationToCase request
-}
type alias AddCommunicationToCaseOptions =
    {
    caseId : Maybe String,ccEmailAddresses : Maybe (List String),attachmentSetId : Maybe String
    }



{-| <p>Creates a new case in the AWS Support Center. This operation is modeled on the behavior of the AWS Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page. Its parameters require you to specify the following information: </p> <ul> <li> <p> <b>issueType.</b> The type of issue for the case. You can specify either "customer-service" or "technical." If you do not indicate a value, the default is "technical." </p> </li> <li> <p> <b>serviceCode.</b> The code for an AWS service. You obtain the <code>serviceCode</code> by calling <a>DescribeServices</a>. </p> </li> <li> <p> <b>categoryCode.</b> The category for the service defined for the <code>serviceCode</code> value. You also obtain the category code for a service by calling <a>DescribeServices</a>. Each AWS service defines its own set of category codes. </p> </li> <li> <p> <b>severityCode.</b> A value that indicates the urgency of the case, which in turn determines the response time according to your service level agreement with AWS Support. You obtain the SeverityCode by calling <a>DescribeSeverityLevels</a>.</p> </li> <li> <p> <b>subject.</b> The <b>Subject</b> field on the AWS Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page.</p> </li> <li> <p> <b>communicationBody.</b> The <b>Description</b> field on the AWS Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page.</p> </li> <li> <p> <b>attachmentSetId.</b> The ID of a set of attachments that has been created by using <a>AddAttachmentsToSet</a>.</p> </li> <li> <p> <b>language.</b> The human language in which AWS Support handles the case. English and Japanese are currently supported.</p> </li> <li> <p> <b>ccEmailAddresses.</b> The AWS Support Center <b>CC</b> field on the <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page. You can list email addresses to be copied on any correspondence about the case. The account that opens the case is already identified by passing the AWS Credentials in the HTTP POST method or in a method or function call from one of the programming languages supported by an <a href="http://aws.amazon.com/tools/">AWS SDK</a>. </p> </li> </ul> <note> <p>To add additional communication or attachments to an existing case, use <a>AddCommunicationToCase</a>.</p> </note> <p>A successful <a>CreateCase</a> request returns an AWS Support case number. Case numbers are used by the <a>DescribeCases</a> operation to retrieve existing AWS Support cases. </p>

__Required Parameters__

* `subject` __:__ `String`
* `communicationBody` __:__ `String`


-}

createCase :
  
    String ->
  
    String ->
  
  
    ( CreateCaseOptions -> CreateCaseOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateCaseResponse)

createCase subject communicationBody setOptions =
    
    let
        requestInput = CreateCaseRequest
            
            subject
            
            options.serviceCode
            
            options.severityCode
            
            options.categoryCode
            
            communicationBody
            
            options.ccEmailAddresses
            
            options.language
            
            options.issueType
            
            options.attachmentSetId
            
        
        options = setOptions (CreateCaseOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createCaseRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateCase"
                
                (AWS.Core.Decode.ResultDecoder "CreateCaseResponse" createCaseResponseDecoder)
                
            )



{-| Options for a createCase request
-}
type alias CreateCaseOptions =
    {
    serviceCode : Maybe String,severityCode : Maybe String,categoryCode : Maybe String,ccEmailAddresses : Maybe (List String),language : Maybe String,issueType : Maybe String,attachmentSetId : Maybe String
    }



{-| <p>Returns the attachment that has the specified ID. Attachment IDs are generated by the case management system when you add an attachment to a case or case communication. Attachment IDs are returned in the <a>AttachmentDetails</a> objects that are returned by the <a>DescribeCommunications</a> operation.</p>

__Required Parameters__

* `attachmentId` __:__ `String`


-}

describeAttachment :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAttachmentResponse)

describeAttachment attachmentId =
    
    let
        requestInput = DescribeAttachmentRequest
            
            attachmentId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeAttachmentRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAttachment"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAttachmentResponse" describeAttachmentResponseDecoder)
                
            )





{-| <p>Returns a list of cases that you specify by passing one or more case IDs. In addition, you can filter the cases by date by setting values for the <code>afterTime</code> and <code>beforeTime</code> request parameters. You can set values for the <code>includeResolvedCases</code> and <code>includeCommunications</code> request parameters to control how much information is returned. </p> <p>Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error.</p> <p>The response returns the following in JSON format:</p> <ul> <li> <p>One or more <a>CaseDetails</a> data types. </p> </li> <li> <p>One or more <code>nextToken</code> values, which specify where to paginate the returned records represented by the <code>CaseDetails</code> objects.</p> </li> </ul>

__Required Parameters__



-}

describeCases :
  
  
    ( DescribeCasesOptions -> DescribeCasesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeCasesResponse)

describeCases setOptions =
    
    let
        requestInput = DescribeCasesRequest
            
            options.caseIdList
            
            options.displayId
            
            options.afterTime
            
            options.beforeTime
            
            options.includeResolvedCases
            
            options.nextToken
            
            options.maxResults
            
            options.language
            
            options.includeCommunications
            
        
        options = setOptions (DescribeCasesOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeCasesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeCases"
                
                (AWS.Core.Decode.ResultDecoder "DescribeCasesResponse" describeCasesResponseDecoder)
                
            )



{-| Options for a describeCases request
-}
type alias DescribeCasesOptions =
    {
    caseIdList : Maybe (List String),displayId : Maybe String,afterTime : Maybe String,beforeTime : Maybe String,includeResolvedCases : Maybe Bool,nextToken : Maybe String,maxResults : Maybe Int,language : Maybe String,includeCommunications : Maybe Bool
    }



{-| <p>Returns communications (and attachments) for one or more support cases. You can use the <code>afterTime</code> and <code>beforeTime</code> parameters to filter by date. You can use the <code>caseId</code> parameter to restrict the results to a particular case.</p> <p>Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error.</p> <p>You can use the <code>maxResults</code> and <code>nextToken</code> parameters to control the pagination of the result set. Set <code>maxResults</code> to the number of cases you want displayed on each page, and use <code>nextToken</code> to specify the resumption of pagination.</p>

__Required Parameters__

* `caseId` __:__ `String`


-}

describeCommunications :
  
    String ->
  
  
    ( DescribeCommunicationsOptions -> DescribeCommunicationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeCommunicationsResponse)

describeCommunications caseId setOptions =
    
    let
        requestInput = DescribeCommunicationsRequest
            
            caseId
            
            options.beforeTime
            
            options.afterTime
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (DescribeCommunicationsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeCommunicationsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeCommunications"
                
                (AWS.Core.Decode.ResultDecoder "DescribeCommunicationsResponse" describeCommunicationsResponseDecoder)
                
            )



{-| Options for a describeCommunications request
-}
type alias DescribeCommunicationsOptions =
    {
    beforeTime : Maybe String,afterTime : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Returns the current list of AWS services and a list of service categories that applies to each one. You then use service names and categories in your <a>CreateCase</a> requests. Each AWS service has its own set of categories.</p> <p>The service codes and category codes correspond to the values that are displayed in the <b>Service</b> and <b>Category</b> drop-down lists on the AWS Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page. The values in those fields, however, do not necessarily match the service codes and categories returned by the <code>DescribeServices</code> request. Always use the service codes and categories obtained programmatically. This practice ensures that you always have the most recent set of service and category codes.</p>

__Required Parameters__



-}

describeServices :
  
  
    ( DescribeServicesOptions -> DescribeServicesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeServicesResponse)

describeServices setOptions =
    
    let
        requestInput = DescribeServicesRequest
            
            options.serviceCodeList
            
            options.language
            
        
        options = setOptions (DescribeServicesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeServicesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeServices"
                
                (AWS.Core.Decode.ResultDecoder "DescribeServicesResponse" describeServicesResponseDecoder)
                
            )



{-| Options for a describeServices request
-}
type alias DescribeServicesOptions =
    {
    serviceCodeList : Maybe (List String),language : Maybe String
    }



{-| <p>Returns the list of severity levels that you can assign to an AWS Support case. The severity level for a case is also a field in the <a>CaseDetails</a> data type included in any <a>CreateCase</a> request. </p>

__Required Parameters__



-}

describeSeverityLevels :
  
  
    ( DescribeSeverityLevelsOptions -> DescribeSeverityLevelsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSeverityLevelsResponse)

describeSeverityLevels setOptions =
    
    let
        requestInput = DescribeSeverityLevelsRequest
            
            options.language
            
        
        options = setOptions (DescribeSeverityLevelsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeSeverityLevelsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeSeverityLevels"
                
                (AWS.Core.Decode.ResultDecoder "DescribeSeverityLevelsResponse" describeSeverityLevelsResponseDecoder)
                
            )



{-| Options for a describeSeverityLevels request
-}
type alias DescribeSeverityLevelsOptions =
    {
    language : Maybe String
    }



{-| <p>Returns the refresh status of the Trusted Advisor checks that have the specified check IDs. Check IDs can be obtained by calling <a>DescribeTrustedAdvisorChecks</a>.</p> <note> <p>Some checks are refreshed automatically, and their refresh statuses cannot be retrieved by using this operation. Use of the <code>DescribeTrustedAdvisorCheckRefreshStatuses</code> operation for these checks causes an <code>InvalidParameterValue</code> error.</p> </note>

__Required Parameters__

* `checkIds` __:__ `(List String)`


-}

describeTrustedAdvisorCheckRefreshStatuses :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTrustedAdvisorCheckRefreshStatusesResponse)

describeTrustedAdvisorCheckRefreshStatuses checkIds =
    
    let
        requestInput = DescribeTrustedAdvisorCheckRefreshStatusesRequest
            
            checkIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeTrustedAdvisorCheckRefreshStatusesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeTrustedAdvisorCheckRefreshStatuses"
                
                (AWS.Core.Decode.ResultDecoder "DescribeTrustedAdvisorCheckRefreshStatusesResponse" describeTrustedAdvisorCheckRefreshStatusesResponseDecoder)
                
            )





{-| <p>Returns the results of the Trusted Advisor check that has the specified check ID. Check IDs can be obtained by calling <a>DescribeTrustedAdvisorChecks</a>.</p> <p>The response contains a <a>TrustedAdvisorCheckResult</a> object, which contains these three objects:</p> <ul> <li> <p> <a>TrustedAdvisorCategorySpecificSummary</a> </p> </li> <li> <p> <a>TrustedAdvisorResourceDetail</a> </p> </li> <li> <p> <a>TrustedAdvisorResourcesSummary</a> </p> </li> </ul> <p>In addition, the response contains these fields:</p> <ul> <li> <p> <b>status.</b> The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".</p> </li> <li> <p> <b>timestamp.</b> The time of the last refresh of the check.</p> </li> <li> <p> <b>checkId.</b> The unique identifier for the check.</p> </li> </ul>

__Required Parameters__

* `checkId` __:__ `String`


-}

describeTrustedAdvisorCheckResult :
  
    String ->
  
  
    ( DescribeTrustedAdvisorCheckResultOptions -> DescribeTrustedAdvisorCheckResultOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTrustedAdvisorCheckResultResponse)

describeTrustedAdvisorCheckResult checkId setOptions =
    
    let
        requestInput = DescribeTrustedAdvisorCheckResultRequest
            
            checkId
            
            options.language
            
        
        options = setOptions (DescribeTrustedAdvisorCheckResultOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeTrustedAdvisorCheckResultRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeTrustedAdvisorCheckResult"
                
                (AWS.Core.Decode.ResultDecoder "DescribeTrustedAdvisorCheckResultResponse" describeTrustedAdvisorCheckResultResponseDecoder)
                
            )



{-| Options for a describeTrustedAdvisorCheckResult request
-}
type alias DescribeTrustedAdvisorCheckResultOptions =
    {
    language : Maybe String
    }



{-| <p>Returns the summaries of the results of the Trusted Advisor checks that have the specified check IDs. Check IDs can be obtained by calling <a>DescribeTrustedAdvisorChecks</a>.</p> <p>The response contains an array of <a>TrustedAdvisorCheckSummary</a> objects.</p>

__Required Parameters__

* `checkIds` __:__ `(List String)`


-}

describeTrustedAdvisorCheckSummaries :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTrustedAdvisorCheckSummariesResponse)

describeTrustedAdvisorCheckSummaries checkIds =
    
    let
        requestInput = DescribeTrustedAdvisorCheckSummariesRequest
            
            checkIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeTrustedAdvisorCheckSummariesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeTrustedAdvisorCheckSummaries"
                
                (AWS.Core.Decode.ResultDecoder "DescribeTrustedAdvisorCheckSummariesResponse" describeTrustedAdvisorCheckSummariesResponseDecoder)
                
            )





{-| <p>Returns information about all available Trusted Advisor checks, including name, ID, category, description, and metadata. You must specify a language code; English ("en") and Japanese ("ja") are currently supported. The response contains a <a>TrustedAdvisorCheckDescription</a> for each check.</p>

__Required Parameters__

* `language` __:__ `String`


-}

describeTrustedAdvisorChecks :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTrustedAdvisorChecksResponse)

describeTrustedAdvisorChecks language =
    
    let
        requestInput = DescribeTrustedAdvisorChecksRequest
            
            language
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeTrustedAdvisorChecksRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeTrustedAdvisorChecks"
                
                (AWS.Core.Decode.ResultDecoder "DescribeTrustedAdvisorChecksResponse" describeTrustedAdvisorChecksResponseDecoder)
                
            )





{-| <p>Requests a refresh of the Trusted Advisor check that has the specified check ID. Check IDs can be obtained by calling <a>DescribeTrustedAdvisorChecks</a>.</p> <note> <p>Some checks are refreshed automatically, and they cannot be refreshed by using this operation. Use of the <code>RefreshTrustedAdvisorCheck</code> operation for these checks causes an <code>InvalidParameterValue</code> error.</p> </note> <p>The response contains a <a>TrustedAdvisorCheckRefreshStatus</a> object, which contains these fields:</p> <ul> <li> <p> <b>status.</b> The refresh status of the check: "none", "enqueued", "processing", "success", or "abandoned".</p> </li> <li> <p> <b>millisUntilNextRefreshable.</b> The amount of time, in milliseconds, until the check is eligible for refresh.</p> </li> <li> <p> <b>checkId.</b> The unique identifier for the check.</p> </li> </ul>

__Required Parameters__

* `checkId` __:__ `String`


-}

refreshTrustedAdvisorCheck :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RefreshTrustedAdvisorCheckResponse)

refreshTrustedAdvisorCheck checkId =
    
    let
        requestInput = RefreshTrustedAdvisorCheckRequest
            
            checkId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> refreshTrustedAdvisorCheckRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RefreshTrustedAdvisorCheck"
                
                (AWS.Core.Decode.ResultDecoder "RefreshTrustedAdvisorCheckResponse" refreshTrustedAdvisorCheckResponseDecoder)
                
            )





{-| <p>Takes a <code>caseId</code> and returns the initial state of the case along with the state of the case after the call to <a>ResolveCase</a> completed.</p>

__Required Parameters__



-}

resolveCase :
  
  
    ( ResolveCaseOptions -> ResolveCaseOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ResolveCaseResponse)

resolveCase setOptions =
    
    let
        requestInput = ResolveCaseRequest
            
            options.caseId
            
        
        options = setOptions (ResolveCaseOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> resolveCaseRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ResolveCase"
                
                (AWS.Core.Decode.ResultDecoder "ResolveCaseResponse" resolveCaseResponseDecoder)
                
            )



{-| Options for a resolveCase request
-}
type alias ResolveCaseOptions =
    {
    caseId : Maybe String
    }




{-| Type of HTTP response from addAttachmentsToSet
-}
type alias AddAttachmentsToSetResponse =
    { attachmentSetId : Maybe String
    , expiryTime : Maybe String
    }



addAttachmentsToSetResponseDecoder : JD.Decoder AddAttachmentsToSetResponse
addAttachmentsToSetResponseDecoder =
    JD.succeed AddAttachmentsToSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attachmentSetId", "AttachmentSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["expiryTime", "ExpiryTime"]
            JD.string
        )
        




addAttachmentsToSetResponseToString : AddAttachmentsToSetResponse -> String -- List (String, String)
addAttachmentsToSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attachmentSetId" "" -- val.attachmentSetId
        
    --     |> Dict.insert
    --         "expiryTime" "" -- val.expiryTime
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from addCommunicationToCase
-}
type alias AddCommunicationToCaseResponse =
    { result : Maybe Bool
    }



addCommunicationToCaseResponseDecoder : JD.Decoder AddCommunicationToCaseResponse
addCommunicationToCaseResponseDecoder =
    JD.succeed AddCommunicationToCaseResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["result", "Result"]
            JD.bool
        )
        




addCommunicationToCaseResponseToString : AddCommunicationToCaseResponse -> String -- List (String, String)
addCommunicationToCaseResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "result" "" -- val.result
        
    --     |> Dict.toList
    ""



{-| <p>An attachment to a case communication. The attachment consists of the file name and the content of the file.</p>
-}
type alias Attachment =
    { fileName : Maybe String
    , data : Maybe String
    }



attachmentDecoder : JD.Decoder Attachment
attachmentDecoder =
    JD.succeed Attachment
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fileName", "FileName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["data", "Data"]
            JD.string
        )
        




attachmentToString : Attachment -> String -- List (String, String)
attachmentToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fileName" "" -- val.fileName
        
    --     |> Dict.insert
    --         "data" "" -- val.data
        
    --     |> Dict.toList
    ""



{-| <p>The file name and ID of an attachment to a case communication. You can use the ID to retrieve the attachment with the <a>DescribeAttachment</a> operation.</p>
-}
type alias AttachmentDetails =
    { attachmentId : Maybe String
    , fileName : Maybe String
    }



attachmentDetailsDecoder : JD.Decoder AttachmentDetails
attachmentDetailsDecoder =
    JD.succeed AttachmentDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attachmentId", "AttachmentId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fileName", "FileName"]
            JD.string
        )
        




attachmentDetailsToString : AttachmentDetails -> String -- List (String, String)
attachmentDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attachmentId" "" -- val.attachmentId
        
    --     |> Dict.insert
    --         "fileName" "" -- val.fileName
        
    --     |> Dict.toList
    ""



{-| <p>An attachment with the specified ID could not be found.</p>
-}
type alias AttachmentIdNotFound =
    { message : Maybe String
    }



attachmentIdNotFoundDecoder : JD.Decoder AttachmentIdNotFound
attachmentIdNotFoundDecoder =
    JD.succeed AttachmentIdNotFound
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




attachmentIdNotFoundToString : AttachmentIdNotFound -> String -- List (String, String)
attachmentIdNotFoundToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The limit for the number of attachment sets created in a short period of time has been exceeded.</p>
-}
type alias AttachmentLimitExceeded =
    { message : Maybe String
    }



attachmentLimitExceededDecoder : JD.Decoder AttachmentLimitExceeded
attachmentLimitExceededDecoder =
    JD.succeed AttachmentLimitExceeded
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




attachmentLimitExceededToString : AttachmentLimitExceeded -> String -- List (String, String)
attachmentLimitExceededToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The expiration time of the attachment set has passed. The set expires 1 hour after it is created.</p>
-}
type alias AttachmentSetExpired =
    { message : Maybe String
    }



attachmentSetExpiredDecoder : JD.Decoder AttachmentSetExpired
attachmentSetExpiredDecoder =
    JD.succeed AttachmentSetExpired
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




attachmentSetExpiredToString : AttachmentSetExpired -> String -- List (String, String)
attachmentSetExpiredToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>An attachment set with the specified ID could not be found.</p>
-}
type alias AttachmentSetIdNotFound =
    { message : Maybe String
    }



attachmentSetIdNotFoundDecoder : JD.Decoder AttachmentSetIdNotFound
attachmentSetIdNotFoundDecoder =
    JD.succeed AttachmentSetIdNotFound
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




attachmentSetIdNotFoundToString : AttachmentSetIdNotFound -> String -- List (String, String)
attachmentSetIdNotFoundToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>A limit for the size of an attachment set has been exceeded. The limits are 3 attachments and 5 MB per attachment.</p>
-}
type alias AttachmentSetSizeLimitExceeded =
    { message : Maybe String
    }



attachmentSetSizeLimitExceededDecoder : JD.Decoder AttachmentSetSizeLimitExceeded
attachmentSetSizeLimitExceededDecoder =
    JD.succeed AttachmentSetSizeLimitExceeded
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




attachmentSetSizeLimitExceededToString : AttachmentSetSizeLimitExceeded -> String -- List (String, String)
attachmentSetSizeLimitExceededToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The case creation limit for the account has been exceeded.</p>
-}
type alias CaseCreationLimitExceeded =
    { message : Maybe String
    }



caseCreationLimitExceededDecoder : JD.Decoder CaseCreationLimitExceeded
caseCreationLimitExceededDecoder =
    JD.succeed CaseCreationLimitExceeded
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




caseCreationLimitExceededToString : CaseCreationLimitExceeded -> String -- List (String, String)
caseCreationLimitExceededToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>A JSON-formatted object that contains the metadata for a support case. It is contained the response from a <a>DescribeCases</a> request. <b>CaseDetails</b> contains the following fields:</p> <ul> <li> <p> <b>caseId.</b> The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>.</p> </li> <li> <p> <b>categoryCode.</b> The category of problem for the AWS Support case. Corresponds to the CategoryCode values returned by a call to <a>DescribeServices</a>.</p> </li> <li> <p> <b>displayId.</b> The identifier for the case on pages in the AWS Support Center.</p> </li> <li> <p> <b>language.</b> The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p> </li> <li> <p> <b>recentCommunications.</b> One or more <a>Communication</a> objects. Fields of these objects are <code>attachments</code>, <code>body</code>, <code>caseId</code>, <code>submittedBy</code>, and <code>timeCreated</code>.</p> </li> <li> <p> <b>nextToken.</b> A resumption point for pagination.</p> </li> <li> <p> <b>serviceCode.</b> The identifier for the AWS service that corresponds to the service code defined in the call to <a>DescribeServices</a>.</p> </li> <li> <p> <b>severityCode. </b>The severity code assigned to the case. Contains one of the values returned by the call to <a>DescribeSeverityLevels</a>.</p> </li> <li> <p> <b>status.</b> The status of the case in the AWS Support Center.</p> </li> <li> <p> <b>subject.</b> The subject line of the case.</p> </li> <li> <p> <b>submittedBy.</b> The email address of the account that submitted the case.</p> </li> <li> <p> <b>timeCreated.</b> The time the case was created, in ISO-8601 format.</p> </li> </ul>
-}
type alias CaseDetails =
    { caseId : Maybe String
    , displayId : Maybe String
    , subject : Maybe String
    , status : Maybe String
    , serviceCode : Maybe String
    , categoryCode : Maybe String
    , severityCode : Maybe String
    , submittedBy : Maybe String
    , timeCreated : Maybe String
    , recentCommunications : Maybe RecentCaseCommunications
    , ccEmailAddresses : Maybe (List String)
    , language : Maybe String
    }



caseDetailsDecoder : JD.Decoder CaseDetails
caseDetailsDecoder =
    JD.succeed CaseDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["caseId", "CaseId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["displayId", "DisplayId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["subject", "Subject"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serviceCode", "ServiceCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["categoryCode", "CategoryCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["severityCode", "SeverityCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["submittedBy", "SubmittedBy"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["timeCreated", "TimeCreated"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["recentCommunications", "RecentCommunications"]
            recentCaseCommunicationsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ccEmailAddresses", "CcEmailAddresses"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["language", "Language"]
            JD.string
        )
        




caseDetailsToString : CaseDetails -> String -- List (String, String)
caseDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "caseId" "" -- val.caseId
        
    --     |> Dict.insert
    --         "displayId" "" -- val.displayId
        
    --     |> Dict.insert
    --         "subject" "" -- val.subject
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "serviceCode" "" -- val.serviceCode
        
    --     |> Dict.insert
    --         "categoryCode" "" -- val.categoryCode
        
    --     |> Dict.insert
    --         "severityCode" "" -- val.severityCode
        
    --     |> Dict.insert
    --         "submittedBy" "" -- val.submittedBy
        
    --     |> Dict.insert
    --         "timeCreated" "" -- val.timeCreated
        
    --     |> Dict.insert
    --         "recentCommunications" "" -- val.recentCommunications
        
    --     |> Dict.insert
    --         "ccEmailAddresses" "" -- val.ccEmailAddresses
        
    --     |> Dict.insert
    --         "language" "" -- val.language
        
    --     |> Dict.toList
    ""



{-| <p>The requested <code>caseId</code> could not be located.</p>
-}
type alias CaseIdNotFound =
    { message : Maybe String
    }



caseIdNotFoundDecoder : JD.Decoder CaseIdNotFound
caseIdNotFoundDecoder =
    JD.succeed CaseIdNotFound
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




caseIdNotFoundToString : CaseIdNotFound -> String -- List (String, String)
caseIdNotFoundToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>A JSON-formatted name/value pair that represents the category name and category code of the problem, selected from the <a>DescribeServices</a> response for each AWS service.</p>
-}
type alias Category =
    { code : Maybe String
    , name : Maybe String
    }



categoryDecoder : JD.Decoder Category
categoryDecoder =
    JD.succeed Category
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["code", "Code"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        




categoryToString : Category -> String -- List (String, String)
categoryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>A communication associated with an AWS Support case. The communication consists of the case ID, the message body, attachment information, the account email address, and the date and time of the communication.</p>
-}
type alias Communication =
    { caseId : Maybe String
    , body : Maybe String
    , submittedBy : Maybe String
    , timeCreated : Maybe String
    , attachmentSet : Maybe (List AttachmentDetails)
    }



communicationDecoder : JD.Decoder Communication
communicationDecoder =
    JD.succeed Communication
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["caseId", "CaseId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["body", "Body"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["submittedBy", "SubmittedBy"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["timeCreated", "TimeCreated"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attachmentSet", "AttachmentSet"]
            (JD.list attachmentDetailsDecoder)
        )
        




communicationToString : Communication -> String -- List (String, String)
communicationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "caseId" "" -- val.caseId
        
    --     |> Dict.insert
    --         "body" "" -- val.body
        
    --     |> Dict.insert
    --         "submittedBy" "" -- val.submittedBy
        
    --     |> Dict.insert
    --         "timeCreated" "" -- val.timeCreated
        
    --     |> Dict.insert
    --         "attachmentSet" "" -- val.attachmentSet
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createCase
-}
type alias CreateCaseResponse =
    { caseId : Maybe String
    }



createCaseResponseDecoder : JD.Decoder CreateCaseResponse
createCaseResponseDecoder =
    JD.succeed CreateCaseResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["caseId", "CaseId"]
            JD.string
        )
        




createCaseResponseToString : CreateCaseResponse -> String -- List (String, String)
createCaseResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "caseId" "" -- val.caseId
        
    --     |> Dict.toList
    ""



{-| <p>The limit for the number of <a>DescribeAttachment</a> requests in a short period of time has been exceeded.</p>
-}
type alias DescribeAttachmentLimitExceeded =
    { message : Maybe String
    }



describeAttachmentLimitExceededDecoder : JD.Decoder DescribeAttachmentLimitExceeded
describeAttachmentLimitExceededDecoder =
    JD.succeed DescribeAttachmentLimitExceeded
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




describeAttachmentLimitExceededToString : DescribeAttachmentLimitExceeded -> String -- List (String, String)
describeAttachmentLimitExceededToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAttachment
-}
type alias DescribeAttachmentResponse =
    { attachment : Maybe Attachment
    }



describeAttachmentResponseDecoder : JD.Decoder DescribeAttachmentResponse
describeAttachmentResponseDecoder =
    JD.succeed DescribeAttachmentResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attachment", "Attachment"]
            attachmentDecoder
        )
        




describeAttachmentResponseToString : DescribeAttachmentResponse -> String -- List (String, String)
describeAttachmentResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attachment" "" -- val.attachment
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeCases
-}
type alias DescribeCasesResponse =
    { cases : Maybe (List CaseDetails)
    , nextToken : Maybe String
    }



describeCasesResponseDecoder : JD.Decoder DescribeCasesResponse
describeCasesResponseDecoder =
    JD.succeed DescribeCasesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cases", "Cases"]
            (JD.list caseDetailsDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeCasesResponseToString : DescribeCasesResponse -> String -- List (String, String)
describeCasesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "cases" "" -- val.cases
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeCommunications
-}
type alias DescribeCommunicationsResponse =
    { communications : Maybe (List Communication)
    , nextToken : Maybe String
    }



describeCommunicationsResponseDecoder : JD.Decoder DescribeCommunicationsResponse
describeCommunicationsResponseDecoder =
    JD.succeed DescribeCommunicationsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["communications", "Communications"]
            (JD.list communicationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeCommunicationsResponseToString : DescribeCommunicationsResponse -> String -- List (String, String)
describeCommunicationsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "communications" "" -- val.communications
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeServices
-}
type alias DescribeServicesResponse =
    { services : Maybe (List Service)
    }



describeServicesResponseDecoder : JD.Decoder DescribeServicesResponse
describeServicesResponseDecoder =
    JD.succeed DescribeServicesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["services", "Services"]
            (JD.list serviceDecoder)
        )
        




describeServicesResponseToString : DescribeServicesResponse -> String -- List (String, String)
describeServicesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "services" "" -- val.services
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeSeverityLevels
-}
type alias DescribeSeverityLevelsResponse =
    { severityLevels : Maybe (List SeverityLevel)
    }



describeSeverityLevelsResponseDecoder : JD.Decoder DescribeSeverityLevelsResponse
describeSeverityLevelsResponseDecoder =
    JD.succeed DescribeSeverityLevelsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["severityLevels", "SeverityLevels"]
            (JD.list severityLevelDecoder)
        )
        




describeSeverityLevelsResponseToString : DescribeSeverityLevelsResponse -> String -- List (String, String)
describeSeverityLevelsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "severityLevels" "" -- val.severityLevels
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeTrustedAdvisorCheckRefreshStatuses
-}
type alias DescribeTrustedAdvisorCheckRefreshStatusesResponse =
    { statuses : (List TrustedAdvisorCheckRefreshStatus)
    }



describeTrustedAdvisorCheckRefreshStatusesResponseDecoder : JD.Decoder DescribeTrustedAdvisorCheckRefreshStatusesResponse
describeTrustedAdvisorCheckRefreshStatusesResponseDecoder =
    JD.succeed DescribeTrustedAdvisorCheckRefreshStatusesResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["statuses", "Statuses"]
            (JD.list trustedAdvisorCheckRefreshStatusDecoder)
        )
        




describeTrustedAdvisorCheckRefreshStatusesResponseToString : DescribeTrustedAdvisorCheckRefreshStatusesResponse -> String -- List (String, String)
describeTrustedAdvisorCheckRefreshStatusesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "statuses" "" -- val.statuses
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeTrustedAdvisorCheckResult
-}
type alias DescribeTrustedAdvisorCheckResultResponse =
    { result : Maybe TrustedAdvisorCheckResult
    }



describeTrustedAdvisorCheckResultResponseDecoder : JD.Decoder DescribeTrustedAdvisorCheckResultResponse
describeTrustedAdvisorCheckResultResponseDecoder =
    JD.succeed DescribeTrustedAdvisorCheckResultResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["result", "Result"]
            trustedAdvisorCheckResultDecoder
        )
        




describeTrustedAdvisorCheckResultResponseToString : DescribeTrustedAdvisorCheckResultResponse -> String -- List (String, String)
describeTrustedAdvisorCheckResultResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "result" "" -- val.result
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeTrustedAdvisorCheckSummaries
-}
type alias DescribeTrustedAdvisorCheckSummariesResponse =
    { summaries : (List TrustedAdvisorCheckSummary)
    }



describeTrustedAdvisorCheckSummariesResponseDecoder : JD.Decoder DescribeTrustedAdvisorCheckSummariesResponse
describeTrustedAdvisorCheckSummariesResponseDecoder =
    JD.succeed DescribeTrustedAdvisorCheckSummariesResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["summaries", "Summaries"]
            (JD.list trustedAdvisorCheckSummaryDecoder)
        )
        




describeTrustedAdvisorCheckSummariesResponseToString : DescribeTrustedAdvisorCheckSummariesResponse -> String -- List (String, String)
describeTrustedAdvisorCheckSummariesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "summaries" "" -- val.summaries
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeTrustedAdvisorChecks
-}
type alias DescribeTrustedAdvisorChecksResponse =
    { checks : (List TrustedAdvisorCheckDescription)
    }



describeTrustedAdvisorChecksResponseDecoder : JD.Decoder DescribeTrustedAdvisorChecksResponse
describeTrustedAdvisorChecksResponseDecoder =
    JD.succeed DescribeTrustedAdvisorChecksResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["checks", "Checks"]
            (JD.list trustedAdvisorCheckDescriptionDecoder)
        )
        




describeTrustedAdvisorChecksResponseToString : DescribeTrustedAdvisorChecksResponse -> String -- List (String, String)
describeTrustedAdvisorChecksResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "checks" "" -- val.checks
        
    --     |> Dict.toList
    ""



{-| <p>An internal server error occurred.</p>
-}
type alias InternalServerError =
    { message : Maybe String
    }



internalServerErrorDecoder : JD.Decoder InternalServerError
internalServerErrorDecoder =
    JD.succeed InternalServerError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




internalServerErrorToString : InternalServerError -> String -- List (String, String)
internalServerErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The five most recent communications associated with the case.</p>
-}
type alias RecentCaseCommunications =
    { communications : Maybe (List Communication)
    , nextToken : Maybe String
    }



recentCaseCommunicationsDecoder : JD.Decoder RecentCaseCommunications
recentCaseCommunicationsDecoder =
    JD.succeed RecentCaseCommunications
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["communications", "Communications"]
            (JD.list communicationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




recentCaseCommunicationsToString : RecentCaseCommunications -> String -- List (String, String)
recentCaseCommunicationsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "communications" "" -- val.communications
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from refreshTrustedAdvisorCheck
-}
type alias RefreshTrustedAdvisorCheckResponse =
    { status : TrustedAdvisorCheckRefreshStatus
    }



refreshTrustedAdvisorCheckResponseDecoder : JD.Decoder RefreshTrustedAdvisorCheckResponse
refreshTrustedAdvisorCheckResponseDecoder =
    JD.succeed RefreshTrustedAdvisorCheckResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["status", "Status"]
            trustedAdvisorCheckRefreshStatusDecoder
        )
        




refreshTrustedAdvisorCheckResponseToString : RefreshTrustedAdvisorCheckResponse -> String -- List (String, String)
refreshTrustedAdvisorCheckResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from resolveCase
-}
type alias ResolveCaseResponse =
    { initialCaseStatus : Maybe String
    , finalCaseStatus : Maybe String
    }



resolveCaseResponseDecoder : JD.Decoder ResolveCaseResponse
resolveCaseResponseDecoder =
    JD.succeed ResolveCaseResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["initialCaseStatus", "InitialCaseStatus"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["finalCaseStatus", "FinalCaseStatus"]
            JD.string
        )
        




resolveCaseResponseToString : ResolveCaseResponse -> String -- List (String, String)
resolveCaseResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "initialCaseStatus" "" -- val.initialCaseStatus
        
    --     |> Dict.insert
    --         "finalCaseStatus" "" -- val.finalCaseStatus
        
    --     |> Dict.toList
    ""



{-| <p>Information about an AWS service returned by the <a>DescribeServices</a> operation. </p>
-}
type alias Service =
    { code : Maybe String
    , name : Maybe String
    , categories : Maybe (List Category)
    }



serviceDecoder : JD.Decoder Service
serviceDecoder =
    JD.succeed Service
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["code", "Code"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["categories", "Categories"]
            (JD.list categoryDecoder)
        )
        




serviceToString : Service -> String -- List (String, String)
serviceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "categories" "" -- val.categories
        
    --     |> Dict.toList
    ""



{-| <p>A code and name pair that represent a severity level that can be applied to a support case.</p>
-}
type alias SeverityLevel =
    { code : Maybe String
    , name : Maybe String
    }



severityLevelDecoder : JD.Decoder SeverityLevel
severityLevelDecoder =
    JD.succeed SeverityLevel
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["code", "Code"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        




severityLevelToString : SeverityLevel -> String -- List (String, String)
severityLevelToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>The container for summary information that relates to the category of the Trusted Advisor check.</p>
-}
type alias TrustedAdvisorCategorySpecificSummary =
    { costOptimizing : Maybe TrustedAdvisorCostOptimizingSummary
    }



trustedAdvisorCategorySpecificSummaryDecoder : JD.Decoder TrustedAdvisorCategorySpecificSummary
trustedAdvisorCategorySpecificSummaryDecoder =
    JD.succeed TrustedAdvisorCategorySpecificSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["costOptimizing", "CostOptimizing"]
            trustedAdvisorCostOptimizingSummaryDecoder
        )
        




trustedAdvisorCategorySpecificSummaryToString : TrustedAdvisorCategorySpecificSummary -> String -- List (String, String)
trustedAdvisorCategorySpecificSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "costOptimizing" "" -- val.costOptimizing
        
    --     |> Dict.toList
    ""



{-| <p>The description and metadata for a Trusted Advisor check.</p>
-}
type alias TrustedAdvisorCheckDescription =
    { id : String
    , name : String
    , description : String
    , category : String
    , metadata : (List String)
    }



trustedAdvisorCheckDescriptionDecoder : JD.Decoder TrustedAdvisorCheckDescription
trustedAdvisorCheckDescriptionDecoder =
    JD.succeed TrustedAdvisorCheckDescription
        
        |> JDP.custom (AWS.Core.Decode.required
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["category", "Category"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["metadata", "Metadata"]
            (JD.list JD.string)
        )
        




trustedAdvisorCheckDescriptionToString : TrustedAdvisorCheckDescription -> String -- List (String, String)
trustedAdvisorCheckDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "category" "" -- val.category
        
    --     |> Dict.insert
    --         "metadata" "" -- val.metadata
        
    --     |> Dict.toList
    ""



{-| <p>The refresh status of a Trusted Advisor check.</p>
-}
type alias TrustedAdvisorCheckRefreshStatus =
    { checkId : String
    , status : String
    , millisUntilNextRefreshable : Int
    }



trustedAdvisorCheckRefreshStatusDecoder : JD.Decoder TrustedAdvisorCheckRefreshStatus
trustedAdvisorCheckRefreshStatusDecoder =
    JD.succeed TrustedAdvisorCheckRefreshStatus
        
        |> JDP.custom (AWS.Core.Decode.required
            ["checkId", "CheckId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["status", "Status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["millisUntilNextRefreshable", "MillisUntilNextRefreshable"]
            JD.int
        )
        




trustedAdvisorCheckRefreshStatusToString : TrustedAdvisorCheckRefreshStatus -> String -- List (String, String)
trustedAdvisorCheckRefreshStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "checkId" "" -- val.checkId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "millisUntilNextRefreshable" "" -- val.millisUntilNextRefreshable
        
    --     |> Dict.toList
    ""



{-| <p>The results of a Trusted Advisor check returned by <a>DescribeTrustedAdvisorCheckResult</a>.</p>
-}
type alias TrustedAdvisorCheckResult =
    { checkId : String
    , timestamp : String
    , status : String
    , resourcesSummary : TrustedAdvisorResourcesSummary
    , categorySpecificSummary : TrustedAdvisorCategorySpecificSummary
    , flaggedResources : (List TrustedAdvisorResourceDetail)
    }



trustedAdvisorCheckResultDecoder : JD.Decoder TrustedAdvisorCheckResult
trustedAdvisorCheckResultDecoder =
    JD.succeed TrustedAdvisorCheckResult
        
        |> JDP.custom (AWS.Core.Decode.required
            ["checkId", "CheckId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["timestamp", "Timestamp"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["status", "Status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourcesSummary", "ResourcesSummary"]
            trustedAdvisorResourcesSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["categorySpecificSummary", "CategorySpecificSummary"]
            trustedAdvisorCategorySpecificSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["flaggedResources", "FlaggedResources"]
            (JD.list trustedAdvisorResourceDetailDecoder)
        )
        




trustedAdvisorCheckResultToString : TrustedAdvisorCheckResult -> String -- List (String, String)
trustedAdvisorCheckResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "checkId" "" -- val.checkId
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "resourcesSummary" "" -- val.resourcesSummary
        
    --     |> Dict.insert
    --         "categorySpecificSummary" "" -- val.categorySpecificSummary
        
    --     |> Dict.insert
    --         "flaggedResources" "" -- val.flaggedResources
        
    --     |> Dict.toList
    ""



{-| <p>A summary of a Trusted Advisor check result, including the alert status, last refresh, and number of resources examined.</p>
-}
type alias TrustedAdvisorCheckSummary =
    { checkId : String
    , timestamp : String
    , status : String
    , hasFlaggedResources : Maybe Bool
    , resourcesSummary : TrustedAdvisorResourcesSummary
    , categorySpecificSummary : TrustedAdvisorCategorySpecificSummary
    }



trustedAdvisorCheckSummaryDecoder : JD.Decoder TrustedAdvisorCheckSummary
trustedAdvisorCheckSummaryDecoder =
    JD.succeed TrustedAdvisorCheckSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["checkId", "CheckId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["timestamp", "Timestamp"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["status", "Status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hasFlaggedResources", "HasFlaggedResources"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourcesSummary", "ResourcesSummary"]
            trustedAdvisorResourcesSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["categorySpecificSummary", "CategorySpecificSummary"]
            trustedAdvisorCategorySpecificSummaryDecoder
        )
        




trustedAdvisorCheckSummaryToString : TrustedAdvisorCheckSummary -> String -- List (String, String)
trustedAdvisorCheckSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "checkId" "" -- val.checkId
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "hasFlaggedResources" "" -- val.hasFlaggedResources
        
    --     |> Dict.insert
    --         "resourcesSummary" "" -- val.resourcesSummary
        
    --     |> Dict.insert
    --         "categorySpecificSummary" "" -- val.categorySpecificSummary
        
    --     |> Dict.toList
    ""



{-| <p>The estimated cost savings that might be realized if the recommended actions are taken.</p>
-}
type alias TrustedAdvisorCostOptimizingSummary =
    { estimatedMonthlySavings : Float
    , estimatedPercentMonthlySavings : Float
    }



trustedAdvisorCostOptimizingSummaryDecoder : JD.Decoder TrustedAdvisorCostOptimizingSummary
trustedAdvisorCostOptimizingSummaryDecoder =
    JD.succeed TrustedAdvisorCostOptimizingSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["estimatedMonthlySavings", "EstimatedMonthlySavings"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["estimatedPercentMonthlySavings", "EstimatedPercentMonthlySavings"]
            JD.float
        )
        




trustedAdvisorCostOptimizingSummaryToString : TrustedAdvisorCostOptimizingSummary -> String -- List (String, String)
trustedAdvisorCostOptimizingSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "estimatedMonthlySavings" "" -- val.estimatedMonthlySavings
        
    --     |> Dict.insert
    --         "estimatedPercentMonthlySavings" "" -- val.estimatedPercentMonthlySavings
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about a resource identified by a Trusted Advisor check.</p>
-}
type alias TrustedAdvisorResourceDetail =
    { status : String
    , region : Maybe String
    , resourceId : String
    , isSuppressed : Maybe Bool
    , metadata : (List String)
    }



trustedAdvisorResourceDetailDecoder : JD.Decoder TrustedAdvisorResourceDetail
trustedAdvisorResourceDetailDecoder =
    JD.succeed TrustedAdvisorResourceDetail
        
        |> JDP.custom (AWS.Core.Decode.required
            ["status", "Status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["region", "Region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourceId", "ResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isSuppressed", "IsSuppressed"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["metadata", "Metadata"]
            (JD.list JD.string)
        )
        




trustedAdvisorResourceDetailToString : TrustedAdvisorResourceDetail -> String -- List (String, String)
trustedAdvisorResourceDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
        
    --     |> Dict.insert
    --         "isSuppressed" "" -- val.isSuppressed
        
    --     |> Dict.insert
    --         "metadata" "" -- val.metadata
        
    --     |> Dict.toList
    ""



{-| <p>Details about AWS resources that were analyzed in a call to Trusted Advisor <a>DescribeTrustedAdvisorCheckSummaries</a>. </p>
-}
type alias TrustedAdvisorResourcesSummary =
    { resourcesProcessed : Int
    , resourcesFlagged : Int
    , resourcesIgnored : Int
    , resourcesSuppressed : Int
    }



trustedAdvisorResourcesSummaryDecoder : JD.Decoder TrustedAdvisorResourcesSummary
trustedAdvisorResourcesSummaryDecoder =
    JD.succeed TrustedAdvisorResourcesSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourcesProcessed", "ResourcesProcessed"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourcesFlagged", "ResourcesFlagged"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourcesIgnored", "ResourcesIgnored"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["resourcesSuppressed", "ResourcesSuppressed"]
            JD.int
        )
        




trustedAdvisorResourcesSummaryToString : TrustedAdvisorResourcesSummary -> String -- List (String, String)
trustedAdvisorResourcesSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourcesProcessed" "" -- val.resourcesProcessed
        
    --     |> Dict.insert
    --         "resourcesFlagged" "" -- val.resourcesFlagged
        
    --     |> Dict.insert
    --         "resourcesIgnored" "" -- val.resourcesIgnored
        
    --     |> Dict.insert
    --         "resourcesSuppressed" "" -- val.resourcesSuppressed
        
    --     |> Dict.toList
    ""






{-| <p/>
-}
type alias AddAttachmentsToSetRequest =
    { attachmentSetId : Maybe String
    , attachments : (List Attachment)
    }


{-| <p>To be written.</p>
-}
type alias AddCommunicationToCaseRequest =
    { caseId : Maybe String
    , communicationBody : String
    , ccEmailAddresses : Maybe (List String)
    , attachmentSetId : Maybe String
    }


{-| <p/>
-}
type alias CreateCaseRequest =
    { subject : String
    , serviceCode : Maybe String
    , severityCode : Maybe String
    , categoryCode : Maybe String
    , communicationBody : String
    , ccEmailAddresses : Maybe (List String)
    , language : Maybe String
    , issueType : Maybe String
    , attachmentSetId : Maybe String
    }


{-| undefined
-}
type alias DescribeAttachmentRequest =
    { attachmentId : String
    }


{-| <p/>
-}
type alias DescribeCasesRequest =
    { caseIdList : Maybe (List String)
    , displayId : Maybe String
    , afterTime : Maybe String
    , beforeTime : Maybe String
    , includeResolvedCases : Maybe Bool
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , language : Maybe String
    , includeCommunications : Maybe Bool
    }


{-| <p/>
-}
type alias DescribeCommunicationsRequest =
    { caseId : String
    , beforeTime : Maybe String
    , afterTime : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| <p/>
-}
type alias DescribeServicesRequest =
    { serviceCodeList : Maybe (List String)
    , language : Maybe String
    }


{-| <p/>
-}
type alias DescribeSeverityLevelsRequest =
    { language : Maybe String
    }


{-| <p/>
-}
type alias DescribeTrustedAdvisorCheckRefreshStatusesRequest =
    { checkIds : (List String)
    }


{-| <p/>
-}
type alias DescribeTrustedAdvisorCheckResultRequest =
    { checkId : String
    , language : Maybe String
    }


{-| <p/>
-}
type alias DescribeTrustedAdvisorCheckSummariesRequest =
    { checkIds : (List String)
    }


{-| <p/>
-}
type alias DescribeTrustedAdvisorChecksRequest =
    { language : String
    }


{-| <p/>
-}
type alias RefreshTrustedAdvisorCheckRequest =
    { checkId : String
    }


{-| <p/>
-}
type alias ResolveCaseRequest =
    { caseId : Maybe String
    }






addAttachmentsToSetRequestEncoder : AddAttachmentsToSetRequest -> JE.Value
addAttachmentsToSetRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("attachmentSetId", data.attachmentSetId)
        
        
        
        |> (::) ("attachments", data.attachments |> (JE.list (attachmentEncoder)))
        
        
        |> JE.object






addAttachmentsToSetResponseEncoder : AddAttachmentsToSetResponse -> JE.Value
addAttachmentsToSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("attachmentSetId", data.attachmentSetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("expiryTime", data.expiryTime)
        
        
        |> JE.object






addCommunicationToCaseRequestEncoder : AddCommunicationToCaseRequest -> JE.Value
addCommunicationToCaseRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("caseId", data.caseId)
        
        
        
        |> (::) ("communicationBody", data.communicationBody |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ccEmailAddresses", data.ccEmailAddresses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("attachmentSetId", data.attachmentSetId)
        
        
        |> JE.object






addCommunicationToCaseResponseEncoder : AddCommunicationToCaseResponse -> JE.Value
addCommunicationToCaseResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("result", data.result)
        
        
        |> JE.object






attachmentEncoder : Attachment -> JE.Value
attachmentEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fileName", data.fileName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("data", data.data)
        
        
        |> JE.object






attachmentDetailsEncoder : AttachmentDetails -> JE.Value
attachmentDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("attachmentId", data.attachmentId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fileName", data.fileName)
        
        
        |> JE.object






attachmentIdNotFoundEncoder : AttachmentIdNotFound -> JE.Value
attachmentIdNotFoundEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






attachmentLimitExceededEncoder : AttachmentLimitExceeded -> JE.Value
attachmentLimitExceededEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






attachmentSetExpiredEncoder : AttachmentSetExpired -> JE.Value
attachmentSetExpiredEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






attachmentSetIdNotFoundEncoder : AttachmentSetIdNotFound -> JE.Value
attachmentSetIdNotFoundEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






attachmentSetSizeLimitExceededEncoder : AttachmentSetSizeLimitExceeded -> JE.Value
attachmentSetSizeLimitExceededEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






caseCreationLimitExceededEncoder : CaseCreationLimitExceeded -> JE.Value
caseCreationLimitExceededEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






caseDetailsEncoder : CaseDetails -> JE.Value
caseDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("caseId", data.caseId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("displayId", data.displayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("subject", data.subject)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("serviceCode", data.serviceCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("categoryCode", data.categoryCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("severityCode", data.severityCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("submittedBy", data.submittedBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("timeCreated", data.timeCreated)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (recentCaseCommunicationsEncoder)
            ("recentCommunications", data.recentCommunications)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ccEmailAddresses", data.ccEmailAddresses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("language", data.language)
        
        
        |> JE.object






caseIdNotFoundEncoder : CaseIdNotFound -> JE.Value
caseIdNotFoundEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






categoryEncoder : Category -> JE.Value
categoryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("code", data.code)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        |> JE.object






communicationEncoder : Communication -> JE.Value
communicationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("caseId", data.caseId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("body", data.body)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("submittedBy", data.submittedBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("timeCreated", data.timeCreated)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attachmentDetailsEncoder))
            ("attachmentSet", data.attachmentSet)
        
        
        |> JE.object






createCaseRequestEncoder : CreateCaseRequest -> JE.Value
createCaseRequestEncoder data =
    []
        
        
        |> (::) ("subject", data.subject |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("serviceCode", data.serviceCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("severityCode", data.severityCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("categoryCode", data.categoryCode)
        
        
        
        |> (::) ("communicationBody", data.communicationBody |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ccEmailAddresses", data.ccEmailAddresses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("language", data.language)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("issueType", data.issueType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("attachmentSetId", data.attachmentSetId)
        
        
        |> JE.object






createCaseResponseEncoder : CreateCaseResponse -> JE.Value
createCaseResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("caseId", data.caseId)
        
        
        |> JE.object






describeAttachmentLimitExceededEncoder : DescribeAttachmentLimitExceeded -> JE.Value
describeAttachmentLimitExceededEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






describeAttachmentRequestEncoder : DescribeAttachmentRequest -> JE.Value
describeAttachmentRequestEncoder data =
    []
        
        
        |> (::) ("attachmentId", data.attachmentId |> (JE.string))
        
        
        |> JE.object






describeAttachmentResponseEncoder : DescribeAttachmentResponse -> JE.Value
describeAttachmentResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (attachmentEncoder)
            ("attachment", data.attachment)
        
        
        |> JE.object






describeCasesRequestEncoder : DescribeCasesRequest -> JE.Value
describeCasesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("caseIdList", data.caseIdList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("displayId", data.displayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("afterTime", data.afterTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeTime", data.beforeTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("includeResolvedCases", data.includeResolvedCases)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("language", data.language)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("includeCommunications", data.includeCommunications)
        
        
        |> JE.object






describeCasesResponseEncoder : DescribeCasesResponse -> JE.Value
describeCasesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (caseDetailsEncoder))
            ("cases", data.cases)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeCommunicationsRequestEncoder : DescribeCommunicationsRequest -> JE.Value
describeCommunicationsRequestEncoder data =
    []
        
        
        |> (::) ("caseId", data.caseId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeTime", data.beforeTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("afterTime", data.afterTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






describeCommunicationsResponseEncoder : DescribeCommunicationsResponse -> JE.Value
describeCommunicationsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (communicationEncoder))
            ("communications", data.communications)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeServicesRequestEncoder : DescribeServicesRequest -> JE.Value
describeServicesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("serviceCodeList", data.serviceCodeList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("language", data.language)
        
        
        |> JE.object






describeServicesResponseEncoder : DescribeServicesResponse -> JE.Value
describeServicesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serviceEncoder))
            ("services", data.services)
        
        
        |> JE.object






describeSeverityLevelsRequestEncoder : DescribeSeverityLevelsRequest -> JE.Value
describeSeverityLevelsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("language", data.language)
        
        
        |> JE.object






describeSeverityLevelsResponseEncoder : DescribeSeverityLevelsResponse -> JE.Value
describeSeverityLevelsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (severityLevelEncoder))
            ("severityLevels", data.severityLevels)
        
        
        |> JE.object






describeTrustedAdvisorCheckRefreshStatusesRequestEncoder : DescribeTrustedAdvisorCheckRefreshStatusesRequest -> JE.Value
describeTrustedAdvisorCheckRefreshStatusesRequestEncoder data =
    []
        
        
        |> (::) ("checkIds", data.checkIds |> (JE.list (JE.string)))
        
        
        |> JE.object






describeTrustedAdvisorCheckRefreshStatusesResponseEncoder : DescribeTrustedAdvisorCheckRefreshStatusesResponse -> JE.Value
describeTrustedAdvisorCheckRefreshStatusesResponseEncoder data =
    []
        
        
        |> (::) ("statuses", data.statuses |> (JE.list (trustedAdvisorCheckRefreshStatusEncoder)))
        
        
        |> JE.object






describeTrustedAdvisorCheckResultRequestEncoder : DescribeTrustedAdvisorCheckResultRequest -> JE.Value
describeTrustedAdvisorCheckResultRequestEncoder data =
    []
        
        
        |> (::) ("checkId", data.checkId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("language", data.language)
        
        
        |> JE.object






describeTrustedAdvisorCheckResultResponseEncoder : DescribeTrustedAdvisorCheckResultResponse -> JE.Value
describeTrustedAdvisorCheckResultResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (trustedAdvisorCheckResultEncoder)
            ("result", data.result)
        
        
        |> JE.object






describeTrustedAdvisorCheckSummariesRequestEncoder : DescribeTrustedAdvisorCheckSummariesRequest -> JE.Value
describeTrustedAdvisorCheckSummariesRequestEncoder data =
    []
        
        
        |> (::) ("checkIds", data.checkIds |> (JE.list (JE.string)))
        
        
        |> JE.object






describeTrustedAdvisorCheckSummariesResponseEncoder : DescribeTrustedAdvisorCheckSummariesResponse -> JE.Value
describeTrustedAdvisorCheckSummariesResponseEncoder data =
    []
        
        
        |> (::) ("summaries", data.summaries |> (JE.list (trustedAdvisorCheckSummaryEncoder)))
        
        
        |> JE.object






describeTrustedAdvisorChecksRequestEncoder : DescribeTrustedAdvisorChecksRequest -> JE.Value
describeTrustedAdvisorChecksRequestEncoder data =
    []
        
        
        |> (::) ("language", data.language |> (JE.string))
        
        
        |> JE.object






describeTrustedAdvisorChecksResponseEncoder : DescribeTrustedAdvisorChecksResponse -> JE.Value
describeTrustedAdvisorChecksResponseEncoder data =
    []
        
        
        |> (::) ("checks", data.checks |> (JE.list (trustedAdvisorCheckDescriptionEncoder)))
        
        
        |> JE.object






internalServerErrorEncoder : InternalServerError -> JE.Value
internalServerErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






recentCaseCommunicationsEncoder : RecentCaseCommunications -> JE.Value
recentCaseCommunicationsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (communicationEncoder))
            ("communications", data.communications)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






refreshTrustedAdvisorCheckRequestEncoder : RefreshTrustedAdvisorCheckRequest -> JE.Value
refreshTrustedAdvisorCheckRequestEncoder data =
    []
        
        
        |> (::) ("checkId", data.checkId |> (JE.string))
        
        
        |> JE.object






refreshTrustedAdvisorCheckResponseEncoder : RefreshTrustedAdvisorCheckResponse -> JE.Value
refreshTrustedAdvisorCheckResponseEncoder data =
    []
        
        
        |> (::) ("status", data.status |> (trustedAdvisorCheckRefreshStatusEncoder))
        
        
        |> JE.object






resolveCaseRequestEncoder : ResolveCaseRequest -> JE.Value
resolveCaseRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("caseId", data.caseId)
        
        
        |> JE.object






resolveCaseResponseEncoder : ResolveCaseResponse -> JE.Value
resolveCaseResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("initialCaseStatus", data.initialCaseStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("finalCaseStatus", data.finalCaseStatus)
        
        
        |> JE.object






serviceEncoder : Service -> JE.Value
serviceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("code", data.code)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (categoryEncoder))
            ("categories", data.categories)
        
        
        |> JE.object






severityLevelEncoder : SeverityLevel -> JE.Value
severityLevelEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("code", data.code)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        |> JE.object






trustedAdvisorCategorySpecificSummaryEncoder : TrustedAdvisorCategorySpecificSummary -> JE.Value
trustedAdvisorCategorySpecificSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (trustedAdvisorCostOptimizingSummaryEncoder)
            ("costOptimizing", data.costOptimizing)
        
        
        |> JE.object






trustedAdvisorCheckDescriptionEncoder : TrustedAdvisorCheckDescription -> JE.Value
trustedAdvisorCheckDescriptionEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("description", data.description |> (JE.string))
        
        
        
        |> (::) ("category", data.category |> (JE.string))
        
        
        
        |> (::) ("metadata", data.metadata |> (JE.list (JE.string)))
        
        
        |> JE.object






trustedAdvisorCheckRefreshStatusEncoder : TrustedAdvisorCheckRefreshStatus -> JE.Value
trustedAdvisorCheckRefreshStatusEncoder data =
    []
        
        
        |> (::) ("checkId", data.checkId |> (JE.string))
        
        
        
        |> (::) ("status", data.status |> (JE.string))
        
        
        
        |> (::) ("millisUntilNextRefreshable", data.millisUntilNextRefreshable |> (JE.int))
        
        
        |> JE.object






trustedAdvisorCheckResultEncoder : TrustedAdvisorCheckResult -> JE.Value
trustedAdvisorCheckResultEncoder data =
    []
        
        
        |> (::) ("checkId", data.checkId |> (JE.string))
        
        
        
        |> (::) ("timestamp", data.timestamp |> (JE.string))
        
        
        
        |> (::) ("status", data.status |> (JE.string))
        
        
        
        |> (::) ("resourcesSummary", data.resourcesSummary |> (trustedAdvisorResourcesSummaryEncoder))
        
        
        
        |> (::) ("categorySpecificSummary", data.categorySpecificSummary |> (trustedAdvisorCategorySpecificSummaryEncoder))
        
        
        
        |> (::) ("flaggedResources", data.flaggedResources |> (JE.list (trustedAdvisorResourceDetailEncoder)))
        
        
        |> JE.object






trustedAdvisorCheckSummaryEncoder : TrustedAdvisorCheckSummary -> JE.Value
trustedAdvisorCheckSummaryEncoder data =
    []
        
        
        |> (::) ("checkId", data.checkId |> (JE.string))
        
        
        
        |> (::) ("timestamp", data.timestamp |> (JE.string))
        
        
        
        |> (::) ("status", data.status |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("hasFlaggedResources", data.hasFlaggedResources)
        
        
        
        |> (::) ("resourcesSummary", data.resourcesSummary |> (trustedAdvisorResourcesSummaryEncoder))
        
        
        
        |> (::) ("categorySpecificSummary", data.categorySpecificSummary |> (trustedAdvisorCategorySpecificSummaryEncoder))
        
        
        |> JE.object






trustedAdvisorCostOptimizingSummaryEncoder : TrustedAdvisorCostOptimizingSummary -> JE.Value
trustedAdvisorCostOptimizingSummaryEncoder data =
    []
        
        
        |> (::) ("estimatedMonthlySavings", data.estimatedMonthlySavings |> (JE.float))
        
        
        
        |> (::) ("estimatedPercentMonthlySavings", data.estimatedPercentMonthlySavings |> (JE.float))
        
        
        |> JE.object






trustedAdvisorResourceDetailEncoder : TrustedAdvisorResourceDetail -> JE.Value
trustedAdvisorResourceDetailEncoder data =
    []
        
        
        |> (::) ("status", data.status |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("region", data.region)
        
        
        
        |> (::) ("resourceId", data.resourceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isSuppressed", data.isSuppressed)
        
        
        
        |> (::) ("metadata", data.metadata |> (JE.list (JE.string)))
        
        
        |> JE.object






trustedAdvisorResourcesSummaryEncoder : TrustedAdvisorResourcesSummary -> JE.Value
trustedAdvisorResourcesSummaryEncoder data =
    []
        
        
        |> (::) ("resourcesProcessed", data.resourcesProcessed |> (JE.int))
        
        
        
        |> (::) ("resourcesFlagged", data.resourcesFlagged |> (JE.int))
        
        
        
        |> (::) ("resourcesIgnored", data.resourcesIgnored |> (JE.int))
        
        
        
        |> (::) ("resourcesSuppressed", data.resourcesSuppressed |> (JE.int))
        
        
        |> JE.object





