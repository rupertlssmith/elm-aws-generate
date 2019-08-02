module AWS.Route53Domains exposing
    ( service
    , checkDomainAvailability, CheckDomainAvailabilityOptions, checkDomainTransferability, CheckDomainTransferabilityOptions, deleteTagsForDomain, disableDomainAutoRenew, disableDomainTransferLock, enableDomainAutoRenew, enableDomainTransferLock, getContactReachabilityStatus, GetContactReachabilityStatusOptions, getDomainDetail, getDomainSuggestions, getOperationDetail, listDomains, ListDomainsOptions, listOperations, ListOperationsOptions, listTagsForDomain, registerDomain, RegisterDomainOptions, renewDomain, RenewDomainOptions, resendContactReachabilityEmail, ResendContactReachabilityEmailOptions, retrieveDomainAuthCode, transferDomain, TransferDomainOptions, updateDomainContact, UpdateDomainContactOptions, updateDomainContactPrivacy, UpdateDomainContactPrivacyOptions, updateDomainNameservers, UpdateDomainNameserversOptions, updateTagsForDomain, UpdateTagsForDomainOptions, viewBilling, ViewBillingOptions
    , CheckDomainAvailabilityResponse, CheckDomainTransferabilityResponse, DeleteTagsForDomainResponse, DisableDomainAutoRenewResponse, DisableDomainTransferLockResponse, EnableDomainAutoRenewResponse, EnableDomainTransferLockResponse, GetContactReachabilityStatusResponse, GetDomainDetailResponse, GetDomainSuggestionsResponse, GetOperationDetailResponse, ListDomainsResponse, ListOperationsResponse, ListTagsForDomainResponse, RegisterDomainResponse, RenewDomainResponse, ResendContactReachabilityEmailResponse, RetrieveDomainAuthCodeResponse, TransferDomainResponse, UpdateDomainContactPrivacyResponse, UpdateDomainContactResponse, UpdateDomainNameserversResponse, UpdateTagsForDomainResponse, ViewBillingResponse
    , BillingRecord, ContactDetail, DomainSuggestion, DomainSummary, DomainTransferability, ExtraParam, Nameserver, OperationSummary, Tag
    , ContactType(..), CountryCode(..), DomainAvailability(..), ExtraParamName(..), OperationStatus(..), OperationType(..), ReachabilityStatus(..), Transferable(..)
    , DomainLimitExceeded, DuplicateRequest, InvalidInput, OperationLimitExceeded, TLDRulesViolation, UnsupportedTLD
    )

{-|

<p>Amazon Route 53 API actions let you register domain names and perform related operations.</p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)
  - [Exceptions](#exceptions)


## Operations

  - [checkDomainAvailability](#checkDomainAvailability)
  - [CheckDomainAvailabilityOptions](#CheckDomainAvailabilityOptions)
  - [checkDomainTransferability](#checkDomainTransferability)
  - [CheckDomainTransferabilityOptions](#CheckDomainTransferabilityOptions)
  - [deleteTagsForDomain](#deleteTagsForDomain)
  - [disableDomainAutoRenew](#disableDomainAutoRenew)
  - [disableDomainTransferLock](#disableDomainTransferLock)
  - [enableDomainAutoRenew](#enableDomainAutoRenew)
  - [enableDomainTransferLock](#enableDomainTransferLock)
  - [getContactReachabilityStatus](#getContactReachabilityStatus)
  - [GetContactReachabilityStatusOptions](#GetContactReachabilityStatusOptions)
  - [getDomainDetail](#getDomainDetail)
  - [getDomainSuggestions](#getDomainSuggestions)
  - [getOperationDetail](#getOperationDetail)
  - [listDomains](#listDomains)
  - [ListDomainsOptions](#ListDomainsOptions)
  - [listOperations](#listOperations)
  - [ListOperationsOptions](#ListOperationsOptions)
  - [listTagsForDomain](#listTagsForDomain)
  - [registerDomain](#registerDomain)
  - [RegisterDomainOptions](#RegisterDomainOptions)
  - [renewDomain](#renewDomain)
  - [RenewDomainOptions](#RenewDomainOptions)
  - [resendContactReachabilityEmail](#resendContactReachabilityEmail)
  - [ResendContactReachabilityEmailOptions](#ResendContactReachabilityEmailOptions)
  - [retrieveDomainAuthCode](#retrieveDomainAuthCode)
  - [transferDomain](#transferDomain)
  - [TransferDomainOptions](#TransferDomainOptions)
  - [updateDomainContact](#updateDomainContact)
  - [UpdateDomainContactOptions](#UpdateDomainContactOptions)
  - [updateDomainContactPrivacy](#updateDomainContactPrivacy)
  - [UpdateDomainContactPrivacyOptions](#UpdateDomainContactPrivacyOptions)
  - [updateDomainNameservers](#updateDomainNameservers)
  - [UpdateDomainNameserversOptions](#UpdateDomainNameserversOptions)
  - [updateTagsForDomain](#updateTagsForDomain)
  - [UpdateTagsForDomainOptions](#UpdateTagsForDomainOptions)
  - [viewBilling](#viewBilling)
  - [ViewBillingOptions](#ViewBillingOptions)

@docs checkDomainAvailability, CheckDomainAvailabilityOptions, checkDomainTransferability, CheckDomainTransferabilityOptions, deleteTagsForDomain, disableDomainAutoRenew, disableDomainTransferLock, enableDomainAutoRenew, enableDomainTransferLock, getContactReachabilityStatus, GetContactReachabilityStatusOptions, getDomainDetail, getDomainSuggestions, getOperationDetail, listDomains, ListDomainsOptions, listOperations, ListOperationsOptions, listTagsForDomain, registerDomain, RegisterDomainOptions, renewDomain, RenewDomainOptions, resendContactReachabilityEmail, ResendContactReachabilityEmailOptions, retrieveDomainAuthCode, transferDomain, TransferDomainOptions, updateDomainContact, UpdateDomainContactOptions, updateDomainContactPrivacy, UpdateDomainContactPrivacyOptions, updateDomainNameservers, UpdateDomainNameserversOptions, updateTagsForDomain, UpdateTagsForDomainOptions, viewBilling, ViewBillingOptions


## Responses

  - [CheckDomainAvailabilityResponse](#CheckDomainAvailabilityResponse)
  - [CheckDomainTransferabilityResponse](#CheckDomainTransferabilityResponse)
  - [DeleteTagsForDomainResponse](#DeleteTagsForDomainResponse)
  - [DisableDomainAutoRenewResponse](#DisableDomainAutoRenewResponse)
  - [DisableDomainTransferLockResponse](#DisableDomainTransferLockResponse)
  - [EnableDomainAutoRenewResponse](#EnableDomainAutoRenewResponse)
  - [EnableDomainTransferLockResponse](#EnableDomainTransferLockResponse)
  - [GetContactReachabilityStatusResponse](#GetContactReachabilityStatusResponse)
  - [GetDomainDetailResponse](#GetDomainDetailResponse)
  - [GetDomainSuggestionsResponse](#GetDomainSuggestionsResponse)
  - [GetOperationDetailResponse](#GetOperationDetailResponse)
  - [ListDomainsResponse](#ListDomainsResponse)
  - [ListOperationsResponse](#ListOperationsResponse)
  - [ListTagsForDomainResponse](#ListTagsForDomainResponse)
  - [RegisterDomainResponse](#RegisterDomainResponse)
  - [RenewDomainResponse](#RenewDomainResponse)
  - [ResendContactReachabilityEmailResponse](#ResendContactReachabilityEmailResponse)
  - [RetrieveDomainAuthCodeResponse](#RetrieveDomainAuthCodeResponse)
  - [TransferDomainResponse](#TransferDomainResponse)
  - [UpdateDomainContactPrivacyResponse](#UpdateDomainContactPrivacyResponse)
  - [UpdateDomainContactResponse](#UpdateDomainContactResponse)
  - [UpdateDomainNameserversResponse](#UpdateDomainNameserversResponse)
  - [UpdateTagsForDomainResponse](#UpdateTagsForDomainResponse)
  - [ViewBillingResponse](#ViewBillingResponse)

@docs CheckDomainAvailabilityResponse, CheckDomainTransferabilityResponse, DeleteTagsForDomainResponse, DisableDomainAutoRenewResponse, DisableDomainTransferLockResponse, EnableDomainAutoRenewResponse, EnableDomainTransferLockResponse, GetContactReachabilityStatusResponse, GetDomainDetailResponse, GetDomainSuggestionsResponse, GetOperationDetailResponse, ListDomainsResponse, ListOperationsResponse, ListTagsForDomainResponse, RegisterDomainResponse, RenewDomainResponse, ResendContactReachabilityEmailResponse, RetrieveDomainAuthCodeResponse, TransferDomainResponse, UpdateDomainContactPrivacyResponse, UpdateDomainContactResponse, UpdateDomainNameserversResponse, UpdateTagsForDomainResponse, ViewBillingResponse


## Records

  - [BillingRecord](#BillingRecord)
  - [ContactDetail](#ContactDetail)
  - [DomainSuggestion](#DomainSuggestion)
  - [DomainSummary](#DomainSummary)
  - [DomainTransferability](#DomainTransferability)
  - [ExtraParam](#ExtraParam)
  - [Nameserver](#Nameserver)
  - [OperationSummary](#OperationSummary)
  - [Tag](#Tag)

@docs BillingRecord, ContactDetail, DomainSuggestion, DomainSummary, DomainTransferability, ExtraParam, Nameserver, OperationSummary, Tag


## Unions

  - [ContactType](#ContactType)
  - [CountryCode](#CountryCode)
  - [DomainAvailability](#DomainAvailability)
  - [ExtraParamName](#ExtraParamName)
  - [OperationStatus](#OperationStatus)
  - [OperationType](#OperationType)
  - [ReachabilityStatus](#ReachabilityStatus)
  - [Transferable](#Transferable)

@docs ContactType, CountryCode, DomainAvailability, ExtraParamName, OperationStatus, OperationType, ReachabilityStatus, Transferable


## Exceptions

  - [DomainLimitExceeded](#DomainLimitExceeded)
  - [DuplicateRequest](#DuplicateRequest)
  - [InvalidInput](#InvalidInput)
  - [OperationLimitExceeded](#OperationLimitExceeded)
  - [TLDRulesViolation](#TLDRulesViolation)
  - [UnsupportedTLD](#UnsupportedTLD)

@docs DomainLimitExceeded, DuplicateRequest, InvalidInput, OperationLimitExceeded, TLDRulesViolation, UnsupportedTLD

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
        "route53domains"
        "2014-05-15"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "Route53Domains_v20140515")



-- OPERATIONS


{-|

<p>This operation checks the availability of one domain name. Note that if the availability status of a domain is pending, you must submit another request to determine the availability of the domain name.</p>

**Required Parameters**

  - `domainName` **:** `String`

-}
checkDomainAvailability :
    String
    -> (CheckDomainAvailabilityOptions -> CheckDomainAvailabilityOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CheckDomainAvailabilityResponse)
checkDomainAvailability domainName setOptions =
    let
        requestInput =
            CheckDomainAvailabilityRequest
                domainName
                options.idnLangCode

        options =
            setOptions (CheckDomainAvailabilityOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> checkDomainAvailabilityRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CheckDomainAvailability"
            (AWS.Core.Decode.ResultDecoder "CheckDomainAvailabilityResponse" checkDomainAvailabilityResponseDecoder)
        )


{-| Options for a checkDomainAvailability request
-}
type alias CheckDomainAvailabilityOptions =
    { idnLangCode : Maybe String
    }


{-|

<p>Checks whether a domain name can be transferred to Amazon Route 53. </p>

**Required Parameters**

  - `domainName` **:** `String`

-}
checkDomainTransferability :
    String
    -> (CheckDomainTransferabilityOptions -> CheckDomainTransferabilityOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CheckDomainTransferabilityResponse)
checkDomainTransferability domainName setOptions =
    let
        requestInput =
            CheckDomainTransferabilityRequest
                domainName
                options.authCode

        options =
            setOptions (CheckDomainTransferabilityOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> checkDomainTransferabilityRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CheckDomainTransferability"
            (AWS.Core.Decode.ResultDecoder "CheckDomainTransferabilityResponse" checkDomainTransferabilityResponseDecoder)
        )


{-| Options for a checkDomainTransferability request
-}
type alias CheckDomainTransferabilityOptions =
    { authCode : Maybe String
    }


{-|

<p>This operation deletes the specified tags for a domain.</p> <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>

**Required Parameters**

  - `domainName` **:** `String`
  - `tagsToDelete` **:** `(List String)`

-}
deleteTagsForDomain :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTagsForDomainResponse)
deleteTagsForDomain domainName tagsToDelete =
    let
        requestInput =
            DeleteTagsForDomainRequest
                domainName
                tagsToDelete
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteTagsForDomainRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteTagsForDomain"
            (AWS.Core.Decode.ResultDecoder "DeleteTagsForDomainResponse" deleteTagsForDomainResponseDecoder)
        )


{-|

<p>This operation disables automatic renewal of domain registration for the specified domain.</p>

**Required Parameters**

  - `domainName` **:** `String`

-}
disableDomainAutoRenew :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisableDomainAutoRenewResponse)
disableDomainAutoRenew domainName =
    let
        requestInput =
            DisableDomainAutoRenewRequest
                domainName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> disableDomainAutoRenewRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DisableDomainAutoRenew"
            (AWS.Core.Decode.ResultDecoder "DisableDomainAutoRenewResponse" disableDomainAutoRenewResponseDecoder)
        )


{-|

<p>This operation removes the transfer lock on the domain (specifically the <code>clientTransferProhibited</code> status) to allow domain transfers. We recommend you refrain from performing this action unless you intend to transfer the domain to a different registrar. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>

**Required Parameters**

  - `domainName` **:** `String`

-}
disableDomainTransferLock :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisableDomainTransferLockResponse)
disableDomainTransferLock domainName =
    let
        requestInput =
            DisableDomainTransferLockRequest
                domainName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> disableDomainTransferLockRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DisableDomainTransferLock"
            (AWS.Core.Decode.ResultDecoder "DisableDomainTransferLockResponse" disableDomainTransferLockResponseDecoder)
        )


{-|

<p>This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires. The cost of renewing your domain registration is billed to your AWS account.</p> <p>The period during which you can renew a domain name varies by TLD. For a list of TLDs and their renewal policies, see <a href="http://wiki.gandi.net/en/domains/renew#renewal_restoration_and_deletion_times">"Renewal, restoration, and deletion times"</a> on the website for our registrar associate, Gandi. Amazon Route 53 requires that you renew before the end of the renewal period that is listed on the Gandi website so we can complete processing before the deadline.</p>

**Required Parameters**

  - `domainName` **:** `String`

-}
enableDomainAutoRenew :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnableDomainAutoRenewResponse)
enableDomainAutoRenew domainName =
    let
        requestInput =
            EnableDomainAutoRenewRequest
                domainName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> enableDomainAutoRenewRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "EnableDomainAutoRenew"
            (AWS.Core.Decode.ResultDecoder "EnableDomainAutoRenewResponse" enableDomainAutoRenewResponseDecoder)
        )


{-|

<p>This operation sets the transfer lock on the domain (specifically the <code>clientTransferProhibited</code> status) to prevent domain transfers. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>

**Required Parameters**

  - `domainName` **:** `String`

-}
enableDomainTransferLock :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnableDomainTransferLockResponse)
enableDomainTransferLock domainName =
    let
        requestInput =
            EnableDomainTransferLockRequest
                domainName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> enableDomainTransferLockRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "EnableDomainTransferLock"
            (AWS.Core.Decode.ResultDecoder "EnableDomainTransferLockResponse" enableDomainTransferLockResponseDecoder)
        )


{-|

<p>For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded.</p> <p>If you want us to resend the email, use the <code>ResendContactReachabilityEmail</code> operation.</p>

**Required Parameters**

-}
getContactReachabilityStatus :
    (GetContactReachabilityStatusOptions -> GetContactReachabilityStatusOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetContactReachabilityStatusResponse)
getContactReachabilityStatus setOptions =
    let
        requestInput =
            GetContactReachabilityStatusRequest
                options.domainName

        options =
            setOptions (GetContactReachabilityStatusOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getContactReachabilityStatusRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetContactReachabilityStatus"
            (AWS.Core.Decode.ResultDecoder "GetContactReachabilityStatusResponse" getContactReachabilityStatusResponseDecoder)
        )


{-| Options for a getContactReachabilityStatus request
-}
type alias GetContactReachabilityStatusOptions =
    { domainName : Maybe String
    }


{-|

<p>This operation returns detailed information about a specified domain that is associated with the current AWS account. Contact information for the domain is also returned as part of the output.</p>

**Required Parameters**

  - `domainName` **:** `String`

-}
getDomainDetail :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDomainDetailResponse)
getDomainDetail domainName =
    let
        requestInput =
            GetDomainDetailRequest
                domainName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getDomainDetailRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetDomainDetail"
            (AWS.Core.Decode.ResultDecoder "GetDomainDetailResponse" getDomainDetailResponseDecoder)
        )


{-|

<p>The GetDomainSuggestions operation returns a list of suggested domain names given a string, which can either be a domain name or simply a word or phrase (without spaces).</p>

**Required Parameters**

  - `domainName` **:** `String`
  - `suggestionCount` **:** `Int`
  - `onlyAvailable` **:** `Bool`

-}
getDomainSuggestions :
    String
    -> Int
    -> Bool
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDomainSuggestionsResponse)
getDomainSuggestions domainName suggestionCount onlyAvailable =
    let
        requestInput =
            GetDomainSuggestionsRequest
                domainName
                suggestionCount
                onlyAvailable
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getDomainSuggestionsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetDomainSuggestions"
            (AWS.Core.Decode.ResultDecoder "GetDomainSuggestionsResponse" getDomainSuggestionsResponseDecoder)
        )


{-|

<p>This operation returns the current status of an operation that is not completed.</p>

**Required Parameters**

  - `operationId` **:** `String`

-}
getOperationDetail :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetOperationDetailResponse)
getOperationDetail operationId =
    let
        requestInput =
            GetOperationDetailRequest
                operationId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getOperationDetailRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetOperationDetail"
            (AWS.Core.Decode.ResultDecoder "GetOperationDetailResponse" getOperationDetailResponseDecoder)
        )


{-|

<p>This operation returns all the domain names registered with Amazon Route 53 for the current AWS account.</p>

**Required Parameters**

-}
listDomains :
    (ListDomainsOptions -> ListDomainsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDomainsResponse)
listDomains setOptions =
    let
        requestInput =
            ListDomainsRequest
                options.marker
                options.maxItems

        options =
            setOptions (ListDomainsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listDomainsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListDomains"
            (AWS.Core.Decode.ResultDecoder "ListDomainsResponse" listDomainsResponseDecoder)
        )


{-| Options for a listDomains request
-}
type alias ListDomainsOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>This operation returns the operation IDs of operations that are not yet complete.</p>

**Required Parameters**

-}
listOperations :
    (ListOperationsOptions -> ListOperationsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListOperationsResponse)
listOperations setOptions =
    let
        requestInput =
            ListOperationsRequest
                options.submittedSince
                options.marker
                options.maxItems

        options =
            setOptions (ListOperationsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listOperationsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListOperations"
            (AWS.Core.Decode.ResultDecoder "ListOperationsResponse" listOperationsResponseDecoder)
        )


{-| Options for a listOperations request
-}
type alias ListOperationsOptions =
    { submittedSince : Maybe Posix
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>This operation returns all of the tags that are associated with the specified domain.</p> <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>

**Required Parameters**

  - `domainName` **:** `String`

-}
listTagsForDomain :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForDomainResponse)
listTagsForDomain domainName =
    let
        requestInput =
            ListTagsForDomainRequest
                domainName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listTagsForDomainRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListTagsForDomain"
            (AWS.Core.Decode.ResultDecoder "ListTagsForDomainResponse" listTagsForDomainResponseDecoder)
        )


{-|

<p>This operation registers a domain. Domains are registered either by Amazon Registrar (for .com, .net, and .org domains) or by our registrar associate, Gandi (for all other domains). For some top-level domains (TLDs), this operation requires extra parameters.</p> <p>When you register a domain, Amazon Route 53 does the following:</p> <ul> <li> <p>Creates a Amazon Route 53 hosted zone that has the same name as the domain. Amazon Route 53 assigns four name servers to your hosted zone and automatically updates your domain registration with the names of these name servers.</p> </li> <li> <p>Enables autorenew, so your domain registration will renew automatically each year. We'll notify you in advance of the renewal date so you can choose whether to renew the registration.</p> </li> <li> <p>Optionally enables privacy protection, so WHOIS queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you don't enable privacy protection, WHOIS queries return the information that you entered for the registrant, admin, and tech contacts.</p> </li> <li> <p>If registration is successful, returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant is notified by email.</p> </li> <li> <p>Charges your AWS account an amount based on the top-level domain. For more information, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53 Pricing</a>.</p> </li> </ul>

**Required Parameters**

  - `domainName` **:** `String`
  - `durationInYears` **:** `Int`
  - `adminContact` **:** `ContactDetail`
  - `registrantContact` **:** `ContactDetail`
  - `techContact` **:** `ContactDetail`

-}
registerDomain :
    String
    -> Int
    -> ContactDetail
    -> ContactDetail
    -> ContactDetail
    -> (RegisterDomainOptions -> RegisterDomainOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RegisterDomainResponse)
registerDomain domainName durationInYears adminContact registrantContact techContact setOptions =
    let
        requestInput =
            RegisterDomainRequest
                domainName
                options.idnLangCode
                durationInYears
                options.autoRenew
                adminContact
                registrantContact
                techContact
                options.privacyProtectAdminContact
                options.privacyProtectRegistrantContact
                options.privacyProtectTechContact

        options =
            setOptions (RegisterDomainOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> registerDomainRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RegisterDomain"
            (AWS.Core.Decode.ResultDecoder "RegisterDomainResponse" registerDomainResponseDecoder)
        )


{-| Options for a registerDomain request
-}
type alias RegisterDomainOptions =
    { idnLangCode : Maybe String
    , autoRenew : Maybe Bool
    , privacyProtectAdminContact : Maybe Bool
    , privacyProtectRegistrantContact : Maybe Bool
    , privacyProtectTechContact : Maybe Bool
    }


{-|

<p>This operation renews a domain for the specified number of years. The cost of renewing your domain is billed to your AWS account.</p> <p>We recommend that you renew your domain several weeks before the expiration date. Some TLD registries delete domains before the expiration date if you haven't renewed far enough in advance. For more information about renewing domain registration, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html">Renewing Registration for a Domain</a> in the Amazon Route 53 Developer Guide.</p>

**Required Parameters**

  - `domainName` **:** `String`
  - `currentExpiryYear` **:** `Int`

-}
renewDomain :
    String
    -> Int
    -> (RenewDomainOptions -> RenewDomainOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RenewDomainResponse)
renewDomain domainName currentExpiryYear setOptions =
    let
        requestInput =
            RenewDomainRequest
                domainName
                options.durationInYears
                currentExpiryYear

        options =
            setOptions (RenewDomainOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> renewDomainRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RenewDomain"
            (AWS.Core.Decode.ResultDecoder "RenewDomainResponse" renewDomainResponseDecoder)
        )


{-| Options for a renewDomain request
-}
type alias RenewDomainOptions =
    { durationInYears : Maybe Int
    }


{-|

<p>For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact.</p>

**Required Parameters**

-}
resendContactReachabilityEmail :
    (ResendContactReachabilityEmailOptions -> ResendContactReachabilityEmailOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ResendContactReachabilityEmailResponse)
resendContactReachabilityEmail setOptions =
    let
        requestInput =
            ResendContactReachabilityEmailRequest
                options.domainName

        options =
            setOptions (ResendContactReachabilityEmailOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> resendContactReachabilityEmailRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ResendContactReachabilityEmail"
            (AWS.Core.Decode.ResultDecoder "ResendContactReachabilityEmailResponse" resendContactReachabilityEmailResponseDecoder)
        )


{-| Options for a resendContactReachabilityEmail request
-}
type alias ResendContactReachabilityEmailOptions =
    { domainName : Maybe String
    }


{-|

<p>This operation returns the AuthCode for the domain. To transfer a domain to another registrar, you provide this value to the new registrar.</p>

**Required Parameters**

  - `domainName` **:** `String`

-}
retrieveDomainAuthCode :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RetrieveDomainAuthCodeResponse)
retrieveDomainAuthCode domainName =
    let
        requestInput =
            RetrieveDomainAuthCodeRequest
                domainName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> retrieveDomainAuthCodeRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RetrieveDomainAuthCode"
            (AWS.Core.Decode.ResultDecoder "RetrieveDomainAuthCodeResponse" retrieveDomainAuthCodeResponseDecoder)
        )


{-|

<p>This operation transfers a domain from another registrar to Amazon Route 53. When the transfer is complete, the domain is registered either with Amazon Registrar (for .com, .net, and .org domains) or with our registrar associate, Gandi (for all other TLDs).</p> <p>For transfer requirements, a detailed procedure, and information about viewing the status of a domain transfer, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html">Transferring Registration for a Domain to Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>If the registrar for your domain is also the DNS service provider for the domain, we highly recommend that you consider transferring your DNS service to Amazon Route 53 or to another DNS service provider before you transfer your registration. Some registrars provide free DNS service when you purchase a domain registration. When you transfer the registration, the previous registrar will not renew your domain registration and could end your DNS service at any time.</p> <important> <p>If the registrar for your domain is also the DNS service provider for the domain and you don't transfer DNS service to another provider, your website, email, and the web applications associated with the domain might become unavailable.</p> </important> <p>If the transfer is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the transfer doesn't complete successfully, the domain registrant will be notified by email.</p>

**Required Parameters**

  - `domainName` **:** `String`
  - `durationInYears` **:** `Int`
  - `adminContact` **:** `ContactDetail`
  - `registrantContact` **:** `ContactDetail`
  - `techContact` **:** `ContactDetail`

-}
transferDomain :
    String
    -> Int
    -> ContactDetail
    -> ContactDetail
    -> ContactDetail
    -> (TransferDomainOptions -> TransferDomainOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TransferDomainResponse)
transferDomain domainName durationInYears adminContact registrantContact techContact setOptions =
    let
        requestInput =
            TransferDomainRequest
                domainName
                options.idnLangCode
                durationInYears
                options.nameservers
                options.authCode
                options.autoRenew
                adminContact
                registrantContact
                techContact
                options.privacyProtectAdminContact
                options.privacyProtectRegistrantContact
                options.privacyProtectTechContact

        options =
            setOptions (TransferDomainOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> transferDomainRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "TransferDomain"
            (AWS.Core.Decode.ResultDecoder "TransferDomainResponse" transferDomainResponseDecoder)
        )


{-| Options for a transferDomain request
-}
type alias TransferDomainOptions =
    { idnLangCode : Maybe String
    , nameservers : Maybe (List Nameserver)
    , authCode : Maybe String
    , autoRenew : Maybe Bool
    , privacyProtectAdminContact : Maybe Bool
    , privacyProtectRegistrantContact : Maybe Bool
    , privacyProtectTechContact : Maybe Bool
    }


{-|

<p>This operation updates the contact information for a particular domain. You must specify information for at least one contact: registrant, administrator, or technical.</p> <p>If the update is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>

**Required Parameters**

  - `domainName` **:** `String`

-}
updateDomainContact :
    String
    -> (UpdateDomainContactOptions -> UpdateDomainContactOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateDomainContactResponse)
updateDomainContact domainName setOptions =
    let
        requestInput =
            UpdateDomainContactRequest
                domainName
                options.adminContact
                options.registrantContact
                options.techContact

        options =
            setOptions (UpdateDomainContactOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateDomainContactRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateDomainContact"
            (AWS.Core.Decode.ResultDecoder "UpdateDomainContactResponse" updateDomainContactResponseDecoder)
        )


{-| Options for a updateDomainContact request
-}
type alias UpdateDomainContactOptions =
    { adminContact : Maybe ContactDetail
    , registrantContact : Maybe ContactDetail
    , techContact : Maybe ContactDetail
    }


{-|

<p>This operation updates the specified domain contact's privacy setting. When privacy protection is enabled, contact information such as email address is replaced either with contact information for Amazon Registrar (for .com, .net, and .org domains) or with contact information for our registrar associate, Gandi.</p> <p>This operation affects only the contact information for the specified contact type (registrant, administrator, or tech). If the request succeeds, Amazon Route 53 returns an operation ID that you can use with <a>GetOperationDetail</a> to track the progress and completion of the action. If the request doesn't complete successfully, the domain registrant will be notified by email.</p>

**Required Parameters**

  - `domainName` **:** `String`

-}
updateDomainContactPrivacy :
    String
    -> (UpdateDomainContactPrivacyOptions -> UpdateDomainContactPrivacyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateDomainContactPrivacyResponse)
updateDomainContactPrivacy domainName setOptions =
    let
        requestInput =
            UpdateDomainContactPrivacyRequest
                domainName
                options.adminPrivacy
                options.registrantPrivacy
                options.techPrivacy

        options =
            setOptions (UpdateDomainContactPrivacyOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateDomainContactPrivacyRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateDomainContactPrivacy"
            (AWS.Core.Decode.ResultDecoder "UpdateDomainContactPrivacyResponse" updateDomainContactPrivacyResponseDecoder)
        )


{-| Options for a updateDomainContactPrivacy request
-}
type alias UpdateDomainContactPrivacyOptions =
    { adminPrivacy : Maybe Bool
    , registrantPrivacy : Maybe Bool
    , techPrivacy : Maybe Bool
    }


{-|

<p>This operation replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain.</p> <p>If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>

**Required Parameters**

  - `domainName` **:** `String`
  - `nameservers` **:** `(List Nameserver)`

-}
updateDomainNameservers :
    String
    -> List Nameserver
    -> (UpdateDomainNameserversOptions -> UpdateDomainNameserversOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateDomainNameserversResponse)
updateDomainNameservers domainName nameservers setOptions =
    let
        requestInput =
            UpdateDomainNameserversRequest
                domainName
                options.fIAuthKey
                nameservers

        options =
            setOptions (UpdateDomainNameserversOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateDomainNameserversRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateDomainNameservers"
            (AWS.Core.Decode.ResultDecoder "UpdateDomainNameserversResponse" updateDomainNameserversResponseDecoder)
        )


{-| Options for a updateDomainNameservers request
-}
type alias UpdateDomainNameserversOptions =
    { fIAuthKey : Maybe String
    }


{-|

<p>This operation adds or updates tags for a specified domain.</p> <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>

**Required Parameters**

  - `domainName` **:** `String`

-}
updateTagsForDomain :
    String
    -> (UpdateTagsForDomainOptions -> UpdateTagsForDomainOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTagsForDomainResponse)
updateTagsForDomain domainName setOptions =
    let
        requestInput =
            UpdateTagsForDomainRequest
                domainName
                options.tagsToUpdate

        options =
            setOptions (UpdateTagsForDomainOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateTagsForDomainRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateTagsForDomain"
            (AWS.Core.Decode.ResultDecoder "UpdateTagsForDomainResponse" updateTagsForDomainResponseDecoder)
        )


{-| Options for a updateTagsForDomain request
-}
type alias UpdateTagsForDomainOptions =
    { tagsToUpdate : Maybe (List Tag)
    }


{-|

<p>Returns all the domain-related billing records for the current AWS account for a specified period</p>

**Required Parameters**

-}
viewBilling :
    (ViewBillingOptions -> ViewBillingOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ViewBillingResponse)
viewBilling setOptions =
    let
        requestInput =
            ViewBillingRequest
                options.start
                options.end
                options.marker
                options.maxItems

        options =
            setOptions (ViewBillingOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> viewBillingRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ViewBilling"
            (AWS.Core.Decode.ResultDecoder "ViewBillingResponse" viewBillingResponseDecoder)
        )


{-| Options for a viewBilling request
-}
type alias ViewBillingOptions =
    { start : Maybe Posix
    , end : Maybe Posix
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Information for one billing record.</p>

-}
type alias BillingRecord =
    { domainName : Maybe String
    , operation : Maybe OperationType
    , invoiceId : Maybe String
    , billDate : Maybe Posix
    , price : Maybe Float
    }


billingRecordDecoder : JD.Decoder BillingRecord
billingRecordDecoder =
    JD.succeed BillingRecord
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DomainName", "domainName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Operation", "operation" ]
                operationTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InvoiceId", "invoiceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BillDate", "billDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Price", "price" ]
                JD.float
            )


{-| Type of HTTP response from checkDomainAvailability
-}
type alias CheckDomainAvailabilityResponse =
    { availability : DomainAvailability
    }


checkDomainAvailabilityResponseDecoder : JD.Decoder CheckDomainAvailabilityResponse
checkDomainAvailabilityResponseDecoder =
    JD.succeed CheckDomainAvailabilityResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Availability", "availability" ]
                domainAvailabilityDecoder
            )


{-| Type of HTTP response from checkDomainTransferability
-}
type alias CheckDomainTransferabilityResponse =
    { transferability : DomainTransferability
    }


checkDomainTransferabilityResponseDecoder : JD.Decoder CheckDomainTransferabilityResponse
checkDomainTransferabilityResponseDecoder =
    JD.succeed CheckDomainTransferabilityResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Transferability", "transferability" ]
                domainTransferabilityDecoder
            )


{-|

<p>ContactDetail includes the following elements.</p>

-}
type alias ContactDetail =
    { firstName : Maybe String
    , lastName : Maybe String
    , contactType : Maybe ContactType
    , organizationName : Maybe String
    , addressLine1 : Maybe String
    , addressLine2 : Maybe String
    , city : Maybe String
    , state : Maybe String
    , countryCode : Maybe CountryCode
    , zipCode : Maybe String
    , phoneNumber : Maybe String
    , email : Maybe String
    , fax : Maybe String
    , extraParams : Maybe (List ExtraParam)
    }


contactDetailDecoder : JD.Decoder ContactDetail
contactDetailDecoder =
    JD.succeed ContactDetail
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FirstName", "firstName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastName", "lastName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ContactType", "contactType" ]
                contactTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OrganizationName", "organizationName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AddressLine1", "addressLine1" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AddressLine2", "addressLine2" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "City", "city" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "State", "state" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CountryCode", "countryCode" ]
                countryCodeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ZipCode", "zipCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PhoneNumber", "phoneNumber" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Email", "email" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Fax", "fax" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExtraParams", "extraParams" ]
                (JD.list extraParamDecoder)
            )


{-| One of

  - `ContactType_PERSON`
  - `ContactType_COMPANY`
  - `ContactType_ASSOCIATION`
  - `ContactType_PUBLIC_BODY`
  - `ContactType_RESELLER`

-}
type ContactType
    = ContactType_PERSON
    | ContactType_COMPANY
    | ContactType_ASSOCIATION
    | ContactType_PUBLIC_BODY
    | ContactType_RESELLER


contactTypeDecoder : JD.Decoder ContactType
contactTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PERSON" ->
                        JD.succeed ContactType_PERSON

                    "COMPANY" ->
                        JD.succeed ContactType_COMPANY

                    "ASSOCIATION" ->
                        JD.succeed ContactType_ASSOCIATION

                    "PUBLIC_BODY" ->
                        JD.succeed ContactType_PUBLIC_BODY

                    "RESELLER" ->
                        JD.succeed ContactType_RESELLER

                    _ ->
                        JD.fail "bad thing"
            )


contactTypeToString : ContactType -> String
contactTypeToString val =
    case val of
        ContactType_PERSON ->
            "PERSON"

        ContactType_COMPANY ->
            "COMPANY"

        ContactType_ASSOCIATION ->
            "ASSOCIATION"

        ContactType_PUBLIC_BODY ->
            "PUBLIC_BODY"

        ContactType_RESELLER ->
            "RESELLER"


{-| One of

  - `CountryCode_AD`
  - `CountryCode_AE`
  - `CountryCode_AF`
  - `CountryCode_AG`
  - `CountryCode_AI`
  - `CountryCode_AL`
  - `CountryCode_AM`
  - `CountryCode_AN`
  - `CountryCode_AO`
  - `CountryCode_AQ`
  - `CountryCode_AR`
  - `CountryCode_AS`
  - `CountryCode_AT`
  - `CountryCode_AU`
  - `CountryCode_AW`
  - `CountryCode_AZ`
  - `CountryCode_BA`
  - `CountryCode_BB`
  - `CountryCode_BD`
  - `CountryCode_BE`
  - `CountryCode_BF`
  - `CountryCode_BG`
  - `CountryCode_BH`
  - `CountryCode_BI`
  - `CountryCode_BJ`
  - `CountryCode_BL`
  - `CountryCode_BM`
  - `CountryCode_BN`
  - `CountryCode_BO`
  - `CountryCode_BR`
  - `CountryCode_BS`
  - `CountryCode_BT`
  - `CountryCode_BW`
  - `CountryCode_BY`
  - `CountryCode_BZ`
  - `CountryCode_CA`
  - `CountryCode_CC`
  - `CountryCode_CD`
  - `CountryCode_CF`
  - `CountryCode_CG`
  - `CountryCode_CH`
  - `CountryCode_CI`
  - `CountryCode_CK`
  - `CountryCode_CL`
  - `CountryCode_CM`
  - `CountryCode_CN`
  - `CountryCode_CO`
  - `CountryCode_CR`
  - `CountryCode_CU`
  - `CountryCode_CV`
  - `CountryCode_CX`
  - `CountryCode_CY`
  - `CountryCode_CZ`
  - `CountryCode_DE`
  - `CountryCode_DJ`
  - `CountryCode_DK`
  - `CountryCode_DM`
  - `CountryCode_DO`
  - `CountryCode_DZ`
  - `CountryCode_EC`
  - `CountryCode_EE`
  - `CountryCode_EG`
  - `CountryCode_ER`
  - `CountryCode_ES`
  - `CountryCode_ET`
  - `CountryCode_FI`
  - `CountryCode_FJ`
  - `CountryCode_FK`
  - `CountryCode_FM`
  - `CountryCode_FO`
  - `CountryCode_FR`
  - `CountryCode_GA`
  - `CountryCode_GB`
  - `CountryCode_GD`
  - `CountryCode_GE`
  - `CountryCode_GH`
  - `CountryCode_GI`
  - `CountryCode_GL`
  - `CountryCode_GM`
  - `CountryCode_GN`
  - `CountryCode_GQ`
  - `CountryCode_GR`
  - `CountryCode_GT`
  - `CountryCode_GU`
  - `CountryCode_GW`
  - `CountryCode_GY`
  - `CountryCode_HK`
  - `CountryCode_HN`
  - `CountryCode_HR`
  - `CountryCode_HT`
  - `CountryCode_HU`
  - `CountryCode_ID`
  - `CountryCode_IE`
  - `CountryCode_IL`
  - `CountryCode_IM`
  - `CountryCode_IN`
  - `CountryCode_IQ`
  - `CountryCode_IR`
  - `CountryCode_IS`
  - `CountryCode_IT`
  - `CountryCode_JM`
  - `CountryCode_JO`
  - `CountryCode_JP`
  - `CountryCode_KE`
  - `CountryCode_KG`
  - `CountryCode_KH`
  - `CountryCode_KI`
  - `CountryCode_KM`
  - `CountryCode_KN`
  - `CountryCode_KP`
  - `CountryCode_KR`
  - `CountryCode_KW`
  - `CountryCode_KY`
  - `CountryCode_KZ`
  - `CountryCode_LA`
  - `CountryCode_LB`
  - `CountryCode_LC`
  - `CountryCode_LI`
  - `CountryCode_LK`
  - `CountryCode_LR`
  - `CountryCode_LS`
  - `CountryCode_LT`
  - `CountryCode_LU`
  - `CountryCode_LV`
  - `CountryCode_LY`
  - `CountryCode_MA`
  - `CountryCode_MC`
  - `CountryCode_MD`
  - `CountryCode_ME`
  - `CountryCode_MF`
  - `CountryCode_MG`
  - `CountryCode_MH`
  - `CountryCode_MK`
  - `CountryCode_ML`
  - `CountryCode_MM`
  - `CountryCode_MN`
  - `CountryCode_MO`
  - `CountryCode_MP`
  - `CountryCode_MR`
  - `CountryCode_MS`
  - `CountryCode_MT`
  - `CountryCode_MU`
  - `CountryCode_MV`
  - `CountryCode_MW`
  - `CountryCode_MX`
  - `CountryCode_MY`
  - `CountryCode_MZ`
  - `CountryCode_NA`
  - `CountryCode_NC`
  - `CountryCode_NE`
  - `CountryCode_NG`
  - `CountryCode_NI`
  - `CountryCode_NL`
  - `CountryCode_NO`
  - `CountryCode_NP`
  - `CountryCode_NR`
  - `CountryCode_NU`
  - `CountryCode_NZ`
  - `CountryCode_OM`
  - `CountryCode_PA`
  - `CountryCode_PE`
  - `CountryCode_PF`
  - `CountryCode_PG`
  - `CountryCode_PH`
  - `CountryCode_PK`
  - `CountryCode_PL`
  - `CountryCode_PM`
  - `CountryCode_PN`
  - `CountryCode_PR`
  - `CountryCode_PT`
  - `CountryCode_PW`
  - `CountryCode_PY`
  - `CountryCode_QA`
  - `CountryCode_RO`
  - `CountryCode_RS`
  - `CountryCode_RU`
  - `CountryCode_RW`
  - `CountryCode_SA`
  - `CountryCode_SB`
  - `CountryCode_SC`
  - `CountryCode_SD`
  - `CountryCode_SE`
  - `CountryCode_SG`
  - `CountryCode_SH`
  - `CountryCode_SI`
  - `CountryCode_SK`
  - `CountryCode_SL`
  - `CountryCode_SM`
  - `CountryCode_SN`
  - `CountryCode_SO`
  - `CountryCode_SR`
  - `CountryCode_ST`
  - `CountryCode_SV`
  - `CountryCode_SY`
  - `CountryCode_SZ`
  - `CountryCode_TC`
  - `CountryCode_TD`
  - `CountryCode_TG`
  - `CountryCode_TH`
  - `CountryCode_TJ`
  - `CountryCode_TK`
  - `CountryCode_TL`
  - `CountryCode_TM`
  - `CountryCode_TN`
  - `CountryCode_TO`
  - `CountryCode_TR`
  - `CountryCode_TT`
  - `CountryCode_TV`
  - `CountryCode_TW`
  - `CountryCode_TZ`
  - `CountryCode_UA`
  - `CountryCode_UG`
  - `CountryCode_US`
  - `CountryCode_UY`
  - `CountryCode_UZ`
  - `CountryCode_VA`
  - `CountryCode_VC`
  - `CountryCode_VE`
  - `CountryCode_VG`
  - `CountryCode_VI`
  - `CountryCode_VN`
  - `CountryCode_VU`
  - `CountryCode_WF`
  - `CountryCode_WS`
  - `CountryCode_YE`
  - `CountryCode_YT`
  - `CountryCode_ZA`
  - `CountryCode_ZM`
  - `CountryCode_ZW`

-}
type CountryCode
    = CountryCode_AD
    | CountryCode_AE
    | CountryCode_AF
    | CountryCode_AG
    | CountryCode_AI
    | CountryCode_AL
    | CountryCode_AM
    | CountryCode_AN
    | CountryCode_AO
    | CountryCode_AQ
    | CountryCode_AR
    | CountryCode_AS
    | CountryCode_AT
    | CountryCode_AU
    | CountryCode_AW
    | CountryCode_AZ
    | CountryCode_BA
    | CountryCode_BB
    | CountryCode_BD
    | CountryCode_BE
    | CountryCode_BF
    | CountryCode_BG
    | CountryCode_BH
    | CountryCode_BI
    | CountryCode_BJ
    | CountryCode_BL
    | CountryCode_BM
    | CountryCode_BN
    | CountryCode_BO
    | CountryCode_BR
    | CountryCode_BS
    | CountryCode_BT
    | CountryCode_BW
    | CountryCode_BY
    | CountryCode_BZ
    | CountryCode_CA
    | CountryCode_CC
    | CountryCode_CD
    | CountryCode_CF
    | CountryCode_CG
    | CountryCode_CH
    | CountryCode_CI
    | CountryCode_CK
    | CountryCode_CL
    | CountryCode_CM
    | CountryCode_CN
    | CountryCode_CO
    | CountryCode_CR
    | CountryCode_CU
    | CountryCode_CV
    | CountryCode_CX
    | CountryCode_CY
    | CountryCode_CZ
    | CountryCode_DE
    | CountryCode_DJ
    | CountryCode_DK
    | CountryCode_DM
    | CountryCode_DO
    | CountryCode_DZ
    | CountryCode_EC
    | CountryCode_EE
    | CountryCode_EG
    | CountryCode_ER
    | CountryCode_ES
    | CountryCode_ET
    | CountryCode_FI
    | CountryCode_FJ
    | CountryCode_FK
    | CountryCode_FM
    | CountryCode_FO
    | CountryCode_FR
    | CountryCode_GA
    | CountryCode_GB
    | CountryCode_GD
    | CountryCode_GE
    | CountryCode_GH
    | CountryCode_GI
    | CountryCode_GL
    | CountryCode_GM
    | CountryCode_GN
    | CountryCode_GQ
    | CountryCode_GR
    | CountryCode_GT
    | CountryCode_GU
    | CountryCode_GW
    | CountryCode_GY
    | CountryCode_HK
    | CountryCode_HN
    | CountryCode_HR
    | CountryCode_HT
    | CountryCode_HU
    | CountryCode_ID
    | CountryCode_IE
    | CountryCode_IL
    | CountryCode_IM
    | CountryCode_IN
    | CountryCode_IQ
    | CountryCode_IR
    | CountryCode_IS
    | CountryCode_IT
    | CountryCode_JM
    | CountryCode_JO
    | CountryCode_JP
    | CountryCode_KE
    | CountryCode_KG
    | CountryCode_KH
    | CountryCode_KI
    | CountryCode_KM
    | CountryCode_KN
    | CountryCode_KP
    | CountryCode_KR
    | CountryCode_KW
    | CountryCode_KY
    | CountryCode_KZ
    | CountryCode_LA
    | CountryCode_LB
    | CountryCode_LC
    | CountryCode_LI
    | CountryCode_LK
    | CountryCode_LR
    | CountryCode_LS
    | CountryCode_LT
    | CountryCode_LU
    | CountryCode_LV
    | CountryCode_LY
    | CountryCode_MA
    | CountryCode_MC
    | CountryCode_MD
    | CountryCode_ME
    | CountryCode_MF
    | CountryCode_MG
    | CountryCode_MH
    | CountryCode_MK
    | CountryCode_ML
    | CountryCode_MM
    | CountryCode_MN
    | CountryCode_MO
    | CountryCode_MP
    | CountryCode_MR
    | CountryCode_MS
    | CountryCode_MT
    | CountryCode_MU
    | CountryCode_MV
    | CountryCode_MW
    | CountryCode_MX
    | CountryCode_MY
    | CountryCode_MZ
    | CountryCode_NA
    | CountryCode_NC
    | CountryCode_NE
    | CountryCode_NG
    | CountryCode_NI
    | CountryCode_NL
    | CountryCode_NO
    | CountryCode_NP
    | CountryCode_NR
    | CountryCode_NU
    | CountryCode_NZ
    | CountryCode_OM
    | CountryCode_PA
    | CountryCode_PE
    | CountryCode_PF
    | CountryCode_PG
    | CountryCode_PH
    | CountryCode_PK
    | CountryCode_PL
    | CountryCode_PM
    | CountryCode_PN
    | CountryCode_PR
    | CountryCode_PT
    | CountryCode_PW
    | CountryCode_PY
    | CountryCode_QA
    | CountryCode_RO
    | CountryCode_RS
    | CountryCode_RU
    | CountryCode_RW
    | CountryCode_SA
    | CountryCode_SB
    | CountryCode_SC
    | CountryCode_SD
    | CountryCode_SE
    | CountryCode_SG
    | CountryCode_SH
    | CountryCode_SI
    | CountryCode_SK
    | CountryCode_SL
    | CountryCode_SM
    | CountryCode_SN
    | CountryCode_SO
    | CountryCode_SR
    | CountryCode_ST
    | CountryCode_SV
    | CountryCode_SY
    | CountryCode_SZ
    | CountryCode_TC
    | CountryCode_TD
    | CountryCode_TG
    | CountryCode_TH
    | CountryCode_TJ
    | CountryCode_TK
    | CountryCode_TL
    | CountryCode_TM
    | CountryCode_TN
    | CountryCode_TO
    | CountryCode_TR
    | CountryCode_TT
    | CountryCode_TV
    | CountryCode_TW
    | CountryCode_TZ
    | CountryCode_UA
    | CountryCode_UG
    | CountryCode_US
    | CountryCode_UY
    | CountryCode_UZ
    | CountryCode_VA
    | CountryCode_VC
    | CountryCode_VE
    | CountryCode_VG
    | CountryCode_VI
    | CountryCode_VN
    | CountryCode_VU
    | CountryCode_WF
    | CountryCode_WS
    | CountryCode_YE
    | CountryCode_YT
    | CountryCode_ZA
    | CountryCode_ZM
    | CountryCode_ZW


countryCodeDecoder : JD.Decoder CountryCode
countryCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AD" ->
                        JD.succeed CountryCode_AD

                    "AE" ->
                        JD.succeed CountryCode_AE

                    "AF" ->
                        JD.succeed CountryCode_AF

                    "AG" ->
                        JD.succeed CountryCode_AG

                    "AI" ->
                        JD.succeed CountryCode_AI

                    "AL" ->
                        JD.succeed CountryCode_AL

                    "AM" ->
                        JD.succeed CountryCode_AM

                    "AN" ->
                        JD.succeed CountryCode_AN

                    "AO" ->
                        JD.succeed CountryCode_AO

                    "AQ" ->
                        JD.succeed CountryCode_AQ

                    "AR" ->
                        JD.succeed CountryCode_AR

                    "AS" ->
                        JD.succeed CountryCode_AS

                    "AT" ->
                        JD.succeed CountryCode_AT

                    "AU" ->
                        JD.succeed CountryCode_AU

                    "AW" ->
                        JD.succeed CountryCode_AW

                    "AZ" ->
                        JD.succeed CountryCode_AZ

                    "BA" ->
                        JD.succeed CountryCode_BA

                    "BB" ->
                        JD.succeed CountryCode_BB

                    "BD" ->
                        JD.succeed CountryCode_BD

                    "BE" ->
                        JD.succeed CountryCode_BE

                    "BF" ->
                        JD.succeed CountryCode_BF

                    "BG" ->
                        JD.succeed CountryCode_BG

                    "BH" ->
                        JD.succeed CountryCode_BH

                    "BI" ->
                        JD.succeed CountryCode_BI

                    "BJ" ->
                        JD.succeed CountryCode_BJ

                    "BL" ->
                        JD.succeed CountryCode_BL

                    "BM" ->
                        JD.succeed CountryCode_BM

                    "BN" ->
                        JD.succeed CountryCode_BN

                    "BO" ->
                        JD.succeed CountryCode_BO

                    "BR" ->
                        JD.succeed CountryCode_BR

                    "BS" ->
                        JD.succeed CountryCode_BS

                    "BT" ->
                        JD.succeed CountryCode_BT

                    "BW" ->
                        JD.succeed CountryCode_BW

                    "BY" ->
                        JD.succeed CountryCode_BY

                    "BZ" ->
                        JD.succeed CountryCode_BZ

                    "CA" ->
                        JD.succeed CountryCode_CA

                    "CC" ->
                        JD.succeed CountryCode_CC

                    "CD" ->
                        JD.succeed CountryCode_CD

                    "CF" ->
                        JD.succeed CountryCode_CF

                    "CG" ->
                        JD.succeed CountryCode_CG

                    "CH" ->
                        JD.succeed CountryCode_CH

                    "CI" ->
                        JD.succeed CountryCode_CI

                    "CK" ->
                        JD.succeed CountryCode_CK

                    "CL" ->
                        JD.succeed CountryCode_CL

                    "CM" ->
                        JD.succeed CountryCode_CM

                    "CN" ->
                        JD.succeed CountryCode_CN

                    "CO" ->
                        JD.succeed CountryCode_CO

                    "CR" ->
                        JD.succeed CountryCode_CR

                    "CU" ->
                        JD.succeed CountryCode_CU

                    "CV" ->
                        JD.succeed CountryCode_CV

                    "CX" ->
                        JD.succeed CountryCode_CX

                    "CY" ->
                        JD.succeed CountryCode_CY

                    "CZ" ->
                        JD.succeed CountryCode_CZ

                    "DE" ->
                        JD.succeed CountryCode_DE

                    "DJ" ->
                        JD.succeed CountryCode_DJ

                    "DK" ->
                        JD.succeed CountryCode_DK

                    "DM" ->
                        JD.succeed CountryCode_DM

                    "DO" ->
                        JD.succeed CountryCode_DO

                    "DZ" ->
                        JD.succeed CountryCode_DZ

                    "EC" ->
                        JD.succeed CountryCode_EC

                    "EE" ->
                        JD.succeed CountryCode_EE

                    "EG" ->
                        JD.succeed CountryCode_EG

                    "ER" ->
                        JD.succeed CountryCode_ER

                    "ES" ->
                        JD.succeed CountryCode_ES

                    "ET" ->
                        JD.succeed CountryCode_ET

                    "FI" ->
                        JD.succeed CountryCode_FI

                    "FJ" ->
                        JD.succeed CountryCode_FJ

                    "FK" ->
                        JD.succeed CountryCode_FK

                    "FM" ->
                        JD.succeed CountryCode_FM

                    "FO" ->
                        JD.succeed CountryCode_FO

                    "FR" ->
                        JD.succeed CountryCode_FR

                    "GA" ->
                        JD.succeed CountryCode_GA

                    "GB" ->
                        JD.succeed CountryCode_GB

                    "GD" ->
                        JD.succeed CountryCode_GD

                    "GE" ->
                        JD.succeed CountryCode_GE

                    "GH" ->
                        JD.succeed CountryCode_GH

                    "GI" ->
                        JD.succeed CountryCode_GI

                    "GL" ->
                        JD.succeed CountryCode_GL

                    "GM" ->
                        JD.succeed CountryCode_GM

                    "GN" ->
                        JD.succeed CountryCode_GN

                    "GQ" ->
                        JD.succeed CountryCode_GQ

                    "GR" ->
                        JD.succeed CountryCode_GR

                    "GT" ->
                        JD.succeed CountryCode_GT

                    "GU" ->
                        JD.succeed CountryCode_GU

                    "GW" ->
                        JD.succeed CountryCode_GW

                    "GY" ->
                        JD.succeed CountryCode_GY

                    "HK" ->
                        JD.succeed CountryCode_HK

                    "HN" ->
                        JD.succeed CountryCode_HN

                    "HR" ->
                        JD.succeed CountryCode_HR

                    "HT" ->
                        JD.succeed CountryCode_HT

                    "HU" ->
                        JD.succeed CountryCode_HU

                    "ID" ->
                        JD.succeed CountryCode_ID

                    "IE" ->
                        JD.succeed CountryCode_IE

                    "IL" ->
                        JD.succeed CountryCode_IL

                    "IM" ->
                        JD.succeed CountryCode_IM

                    "IN" ->
                        JD.succeed CountryCode_IN

                    "IQ" ->
                        JD.succeed CountryCode_IQ

                    "IR" ->
                        JD.succeed CountryCode_IR

                    "IS" ->
                        JD.succeed CountryCode_IS

                    "IT" ->
                        JD.succeed CountryCode_IT

                    "JM" ->
                        JD.succeed CountryCode_JM

                    "JO" ->
                        JD.succeed CountryCode_JO

                    "JP" ->
                        JD.succeed CountryCode_JP

                    "KE" ->
                        JD.succeed CountryCode_KE

                    "KG" ->
                        JD.succeed CountryCode_KG

                    "KH" ->
                        JD.succeed CountryCode_KH

                    "KI" ->
                        JD.succeed CountryCode_KI

                    "KM" ->
                        JD.succeed CountryCode_KM

                    "KN" ->
                        JD.succeed CountryCode_KN

                    "KP" ->
                        JD.succeed CountryCode_KP

                    "KR" ->
                        JD.succeed CountryCode_KR

                    "KW" ->
                        JD.succeed CountryCode_KW

                    "KY" ->
                        JD.succeed CountryCode_KY

                    "KZ" ->
                        JD.succeed CountryCode_KZ

                    "LA" ->
                        JD.succeed CountryCode_LA

                    "LB" ->
                        JD.succeed CountryCode_LB

                    "LC" ->
                        JD.succeed CountryCode_LC

                    "LI" ->
                        JD.succeed CountryCode_LI

                    "LK" ->
                        JD.succeed CountryCode_LK

                    "LR" ->
                        JD.succeed CountryCode_LR

                    "LS" ->
                        JD.succeed CountryCode_LS

                    "LT" ->
                        JD.succeed CountryCode_LT

                    "LU" ->
                        JD.succeed CountryCode_LU

                    "LV" ->
                        JD.succeed CountryCode_LV

                    "LY" ->
                        JD.succeed CountryCode_LY

                    "MA" ->
                        JD.succeed CountryCode_MA

                    "MC" ->
                        JD.succeed CountryCode_MC

                    "MD" ->
                        JD.succeed CountryCode_MD

                    "ME" ->
                        JD.succeed CountryCode_ME

                    "MF" ->
                        JD.succeed CountryCode_MF

                    "MG" ->
                        JD.succeed CountryCode_MG

                    "MH" ->
                        JD.succeed CountryCode_MH

                    "MK" ->
                        JD.succeed CountryCode_MK

                    "ML" ->
                        JD.succeed CountryCode_ML

                    "MM" ->
                        JD.succeed CountryCode_MM

                    "MN" ->
                        JD.succeed CountryCode_MN

                    "MO" ->
                        JD.succeed CountryCode_MO

                    "MP" ->
                        JD.succeed CountryCode_MP

                    "MR" ->
                        JD.succeed CountryCode_MR

                    "MS" ->
                        JD.succeed CountryCode_MS

                    "MT" ->
                        JD.succeed CountryCode_MT

                    "MU" ->
                        JD.succeed CountryCode_MU

                    "MV" ->
                        JD.succeed CountryCode_MV

                    "MW" ->
                        JD.succeed CountryCode_MW

                    "MX" ->
                        JD.succeed CountryCode_MX

                    "MY" ->
                        JD.succeed CountryCode_MY

                    "MZ" ->
                        JD.succeed CountryCode_MZ

                    "NA" ->
                        JD.succeed CountryCode_NA

                    "NC" ->
                        JD.succeed CountryCode_NC

                    "NE" ->
                        JD.succeed CountryCode_NE

                    "NG" ->
                        JD.succeed CountryCode_NG

                    "NI" ->
                        JD.succeed CountryCode_NI

                    "NL" ->
                        JD.succeed CountryCode_NL

                    "NO" ->
                        JD.succeed CountryCode_NO

                    "NP" ->
                        JD.succeed CountryCode_NP

                    "NR" ->
                        JD.succeed CountryCode_NR

                    "NU" ->
                        JD.succeed CountryCode_NU

                    "NZ" ->
                        JD.succeed CountryCode_NZ

                    "OM" ->
                        JD.succeed CountryCode_OM

                    "PA" ->
                        JD.succeed CountryCode_PA

                    "PE" ->
                        JD.succeed CountryCode_PE

                    "PF" ->
                        JD.succeed CountryCode_PF

                    "PG" ->
                        JD.succeed CountryCode_PG

                    "PH" ->
                        JD.succeed CountryCode_PH

                    "PK" ->
                        JD.succeed CountryCode_PK

                    "PL" ->
                        JD.succeed CountryCode_PL

                    "PM" ->
                        JD.succeed CountryCode_PM

                    "PN" ->
                        JD.succeed CountryCode_PN

                    "PR" ->
                        JD.succeed CountryCode_PR

                    "PT" ->
                        JD.succeed CountryCode_PT

                    "PW" ->
                        JD.succeed CountryCode_PW

                    "PY" ->
                        JD.succeed CountryCode_PY

                    "QA" ->
                        JD.succeed CountryCode_QA

                    "RO" ->
                        JD.succeed CountryCode_RO

                    "RS" ->
                        JD.succeed CountryCode_RS

                    "RU" ->
                        JD.succeed CountryCode_RU

                    "RW" ->
                        JD.succeed CountryCode_RW

                    "SA" ->
                        JD.succeed CountryCode_SA

                    "SB" ->
                        JD.succeed CountryCode_SB

                    "SC" ->
                        JD.succeed CountryCode_SC

                    "SD" ->
                        JD.succeed CountryCode_SD

                    "SE" ->
                        JD.succeed CountryCode_SE

                    "SG" ->
                        JD.succeed CountryCode_SG

                    "SH" ->
                        JD.succeed CountryCode_SH

                    "SI" ->
                        JD.succeed CountryCode_SI

                    "SK" ->
                        JD.succeed CountryCode_SK

                    "SL" ->
                        JD.succeed CountryCode_SL

                    "SM" ->
                        JD.succeed CountryCode_SM

                    "SN" ->
                        JD.succeed CountryCode_SN

                    "SO" ->
                        JD.succeed CountryCode_SO

                    "SR" ->
                        JD.succeed CountryCode_SR

                    "ST" ->
                        JD.succeed CountryCode_ST

                    "SV" ->
                        JD.succeed CountryCode_SV

                    "SY" ->
                        JD.succeed CountryCode_SY

                    "SZ" ->
                        JD.succeed CountryCode_SZ

                    "TC" ->
                        JD.succeed CountryCode_TC

                    "TD" ->
                        JD.succeed CountryCode_TD

                    "TG" ->
                        JD.succeed CountryCode_TG

                    "TH" ->
                        JD.succeed CountryCode_TH

                    "TJ" ->
                        JD.succeed CountryCode_TJ

                    "TK" ->
                        JD.succeed CountryCode_TK

                    "TL" ->
                        JD.succeed CountryCode_TL

                    "TM" ->
                        JD.succeed CountryCode_TM

                    "TN" ->
                        JD.succeed CountryCode_TN

                    "TO" ->
                        JD.succeed CountryCode_TO

                    "TR" ->
                        JD.succeed CountryCode_TR

                    "TT" ->
                        JD.succeed CountryCode_TT

                    "TV" ->
                        JD.succeed CountryCode_TV

                    "TW" ->
                        JD.succeed CountryCode_TW

                    "TZ" ->
                        JD.succeed CountryCode_TZ

                    "UA" ->
                        JD.succeed CountryCode_UA

                    "UG" ->
                        JD.succeed CountryCode_UG

                    "US" ->
                        JD.succeed CountryCode_US

                    "UY" ->
                        JD.succeed CountryCode_UY

                    "UZ" ->
                        JD.succeed CountryCode_UZ

                    "VA" ->
                        JD.succeed CountryCode_VA

                    "VC" ->
                        JD.succeed CountryCode_VC

                    "VE" ->
                        JD.succeed CountryCode_VE

                    "VG" ->
                        JD.succeed CountryCode_VG

                    "VI" ->
                        JD.succeed CountryCode_VI

                    "VN" ->
                        JD.succeed CountryCode_VN

                    "VU" ->
                        JD.succeed CountryCode_VU

                    "WF" ->
                        JD.succeed CountryCode_WF

                    "WS" ->
                        JD.succeed CountryCode_WS

                    "YE" ->
                        JD.succeed CountryCode_YE

                    "YT" ->
                        JD.succeed CountryCode_YT

                    "ZA" ->
                        JD.succeed CountryCode_ZA

                    "ZM" ->
                        JD.succeed CountryCode_ZM

                    "ZW" ->
                        JD.succeed CountryCode_ZW

                    _ ->
                        JD.fail "bad thing"
            )


countryCodeToString : CountryCode -> String
countryCodeToString val =
    case val of
        CountryCode_AD ->
            "AD"

        CountryCode_AE ->
            "AE"

        CountryCode_AF ->
            "AF"

        CountryCode_AG ->
            "AG"

        CountryCode_AI ->
            "AI"

        CountryCode_AL ->
            "AL"

        CountryCode_AM ->
            "AM"

        CountryCode_AN ->
            "AN"

        CountryCode_AO ->
            "AO"

        CountryCode_AQ ->
            "AQ"

        CountryCode_AR ->
            "AR"

        CountryCode_AS ->
            "AS"

        CountryCode_AT ->
            "AT"

        CountryCode_AU ->
            "AU"

        CountryCode_AW ->
            "AW"

        CountryCode_AZ ->
            "AZ"

        CountryCode_BA ->
            "BA"

        CountryCode_BB ->
            "BB"

        CountryCode_BD ->
            "BD"

        CountryCode_BE ->
            "BE"

        CountryCode_BF ->
            "BF"

        CountryCode_BG ->
            "BG"

        CountryCode_BH ->
            "BH"

        CountryCode_BI ->
            "BI"

        CountryCode_BJ ->
            "BJ"

        CountryCode_BL ->
            "BL"

        CountryCode_BM ->
            "BM"

        CountryCode_BN ->
            "BN"

        CountryCode_BO ->
            "BO"

        CountryCode_BR ->
            "BR"

        CountryCode_BS ->
            "BS"

        CountryCode_BT ->
            "BT"

        CountryCode_BW ->
            "BW"

        CountryCode_BY ->
            "BY"

        CountryCode_BZ ->
            "BZ"

        CountryCode_CA ->
            "CA"

        CountryCode_CC ->
            "CC"

        CountryCode_CD ->
            "CD"

        CountryCode_CF ->
            "CF"

        CountryCode_CG ->
            "CG"

        CountryCode_CH ->
            "CH"

        CountryCode_CI ->
            "CI"

        CountryCode_CK ->
            "CK"

        CountryCode_CL ->
            "CL"

        CountryCode_CM ->
            "CM"

        CountryCode_CN ->
            "CN"

        CountryCode_CO ->
            "CO"

        CountryCode_CR ->
            "CR"

        CountryCode_CU ->
            "CU"

        CountryCode_CV ->
            "CV"

        CountryCode_CX ->
            "CX"

        CountryCode_CY ->
            "CY"

        CountryCode_CZ ->
            "CZ"

        CountryCode_DE ->
            "DE"

        CountryCode_DJ ->
            "DJ"

        CountryCode_DK ->
            "DK"

        CountryCode_DM ->
            "DM"

        CountryCode_DO ->
            "DO"

        CountryCode_DZ ->
            "DZ"

        CountryCode_EC ->
            "EC"

        CountryCode_EE ->
            "EE"

        CountryCode_EG ->
            "EG"

        CountryCode_ER ->
            "ER"

        CountryCode_ES ->
            "ES"

        CountryCode_ET ->
            "ET"

        CountryCode_FI ->
            "FI"

        CountryCode_FJ ->
            "FJ"

        CountryCode_FK ->
            "FK"

        CountryCode_FM ->
            "FM"

        CountryCode_FO ->
            "FO"

        CountryCode_FR ->
            "FR"

        CountryCode_GA ->
            "GA"

        CountryCode_GB ->
            "GB"

        CountryCode_GD ->
            "GD"

        CountryCode_GE ->
            "GE"

        CountryCode_GH ->
            "GH"

        CountryCode_GI ->
            "GI"

        CountryCode_GL ->
            "GL"

        CountryCode_GM ->
            "GM"

        CountryCode_GN ->
            "GN"

        CountryCode_GQ ->
            "GQ"

        CountryCode_GR ->
            "GR"

        CountryCode_GT ->
            "GT"

        CountryCode_GU ->
            "GU"

        CountryCode_GW ->
            "GW"

        CountryCode_GY ->
            "GY"

        CountryCode_HK ->
            "HK"

        CountryCode_HN ->
            "HN"

        CountryCode_HR ->
            "HR"

        CountryCode_HT ->
            "HT"

        CountryCode_HU ->
            "HU"

        CountryCode_ID ->
            "ID"

        CountryCode_IE ->
            "IE"

        CountryCode_IL ->
            "IL"

        CountryCode_IM ->
            "IM"

        CountryCode_IN ->
            "IN"

        CountryCode_IQ ->
            "IQ"

        CountryCode_IR ->
            "IR"

        CountryCode_IS ->
            "IS"

        CountryCode_IT ->
            "IT"

        CountryCode_JM ->
            "JM"

        CountryCode_JO ->
            "JO"

        CountryCode_JP ->
            "JP"

        CountryCode_KE ->
            "KE"

        CountryCode_KG ->
            "KG"

        CountryCode_KH ->
            "KH"

        CountryCode_KI ->
            "KI"

        CountryCode_KM ->
            "KM"

        CountryCode_KN ->
            "KN"

        CountryCode_KP ->
            "KP"

        CountryCode_KR ->
            "KR"

        CountryCode_KW ->
            "KW"

        CountryCode_KY ->
            "KY"

        CountryCode_KZ ->
            "KZ"

        CountryCode_LA ->
            "LA"

        CountryCode_LB ->
            "LB"

        CountryCode_LC ->
            "LC"

        CountryCode_LI ->
            "LI"

        CountryCode_LK ->
            "LK"

        CountryCode_LR ->
            "LR"

        CountryCode_LS ->
            "LS"

        CountryCode_LT ->
            "LT"

        CountryCode_LU ->
            "LU"

        CountryCode_LV ->
            "LV"

        CountryCode_LY ->
            "LY"

        CountryCode_MA ->
            "MA"

        CountryCode_MC ->
            "MC"

        CountryCode_MD ->
            "MD"

        CountryCode_ME ->
            "ME"

        CountryCode_MF ->
            "MF"

        CountryCode_MG ->
            "MG"

        CountryCode_MH ->
            "MH"

        CountryCode_MK ->
            "MK"

        CountryCode_ML ->
            "ML"

        CountryCode_MM ->
            "MM"

        CountryCode_MN ->
            "MN"

        CountryCode_MO ->
            "MO"

        CountryCode_MP ->
            "MP"

        CountryCode_MR ->
            "MR"

        CountryCode_MS ->
            "MS"

        CountryCode_MT ->
            "MT"

        CountryCode_MU ->
            "MU"

        CountryCode_MV ->
            "MV"

        CountryCode_MW ->
            "MW"

        CountryCode_MX ->
            "MX"

        CountryCode_MY ->
            "MY"

        CountryCode_MZ ->
            "MZ"

        CountryCode_NA ->
            "NA"

        CountryCode_NC ->
            "NC"

        CountryCode_NE ->
            "NE"

        CountryCode_NG ->
            "NG"

        CountryCode_NI ->
            "NI"

        CountryCode_NL ->
            "NL"

        CountryCode_NO ->
            "NO"

        CountryCode_NP ->
            "NP"

        CountryCode_NR ->
            "NR"

        CountryCode_NU ->
            "NU"

        CountryCode_NZ ->
            "NZ"

        CountryCode_OM ->
            "OM"

        CountryCode_PA ->
            "PA"

        CountryCode_PE ->
            "PE"

        CountryCode_PF ->
            "PF"

        CountryCode_PG ->
            "PG"

        CountryCode_PH ->
            "PH"

        CountryCode_PK ->
            "PK"

        CountryCode_PL ->
            "PL"

        CountryCode_PM ->
            "PM"

        CountryCode_PN ->
            "PN"

        CountryCode_PR ->
            "PR"

        CountryCode_PT ->
            "PT"

        CountryCode_PW ->
            "PW"

        CountryCode_PY ->
            "PY"

        CountryCode_QA ->
            "QA"

        CountryCode_RO ->
            "RO"

        CountryCode_RS ->
            "RS"

        CountryCode_RU ->
            "RU"

        CountryCode_RW ->
            "RW"

        CountryCode_SA ->
            "SA"

        CountryCode_SB ->
            "SB"

        CountryCode_SC ->
            "SC"

        CountryCode_SD ->
            "SD"

        CountryCode_SE ->
            "SE"

        CountryCode_SG ->
            "SG"

        CountryCode_SH ->
            "SH"

        CountryCode_SI ->
            "SI"

        CountryCode_SK ->
            "SK"

        CountryCode_SL ->
            "SL"

        CountryCode_SM ->
            "SM"

        CountryCode_SN ->
            "SN"

        CountryCode_SO ->
            "SO"

        CountryCode_SR ->
            "SR"

        CountryCode_ST ->
            "ST"

        CountryCode_SV ->
            "SV"

        CountryCode_SY ->
            "SY"

        CountryCode_SZ ->
            "SZ"

        CountryCode_TC ->
            "TC"

        CountryCode_TD ->
            "TD"

        CountryCode_TG ->
            "TG"

        CountryCode_TH ->
            "TH"

        CountryCode_TJ ->
            "TJ"

        CountryCode_TK ->
            "TK"

        CountryCode_TL ->
            "TL"

        CountryCode_TM ->
            "TM"

        CountryCode_TN ->
            "TN"

        CountryCode_TO ->
            "TO"

        CountryCode_TR ->
            "TR"

        CountryCode_TT ->
            "TT"

        CountryCode_TV ->
            "TV"

        CountryCode_TW ->
            "TW"

        CountryCode_TZ ->
            "TZ"

        CountryCode_UA ->
            "UA"

        CountryCode_UG ->
            "UG"

        CountryCode_US ->
            "US"

        CountryCode_UY ->
            "UY"

        CountryCode_UZ ->
            "UZ"

        CountryCode_VA ->
            "VA"

        CountryCode_VC ->
            "VC"

        CountryCode_VE ->
            "VE"

        CountryCode_VG ->
            "VG"

        CountryCode_VI ->
            "VI"

        CountryCode_VN ->
            "VN"

        CountryCode_VU ->
            "VU"

        CountryCode_WF ->
            "WF"

        CountryCode_WS ->
            "WS"

        CountryCode_YE ->
            "YE"

        CountryCode_YT ->
            "YT"

        CountryCode_ZA ->
            "ZA"

        CountryCode_ZM ->
            "ZM"

        CountryCode_ZW ->
            "ZW"


{-| Type of HTTP response from deleteTagsForDomain
-}
type alias DeleteTagsForDomainResponse =
    {}


deleteTagsForDomainResponseDecoder : JD.Decoder DeleteTagsForDomainResponse
deleteTagsForDomainResponseDecoder =
    JD.succeed DeleteTagsForDomainResponse


{-| Type of HTTP response from disableDomainAutoRenew
-}
type alias DisableDomainAutoRenewResponse =
    {}


disableDomainAutoRenewResponseDecoder : JD.Decoder DisableDomainAutoRenewResponse
disableDomainAutoRenewResponseDecoder =
    JD.succeed DisableDomainAutoRenewResponse


{-| Type of HTTP response from disableDomainTransferLock
-}
type alias DisableDomainTransferLockResponse =
    { operationId : String
    }


disableDomainTransferLockResponseDecoder : JD.Decoder DisableDomainTransferLockResponse
disableDomainTransferLockResponseDecoder =
    JD.succeed DisableDomainTransferLockResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OperationId", "operationId" ]
                JD.string
            )


{-| One of

  - `DomainAvailability_AVAILABLE`
  - `DomainAvailability_AVAILABLE_RESERVED`
  - `DomainAvailability_AVAILABLE_PREORDER`
  - `DomainAvailability_UNAVAILABLE`
  - `DomainAvailability_UNAVAILABLE_PREMIUM`
  - `DomainAvailability_UNAVAILABLE_RESTRICTED`
  - `DomainAvailability_RESERVED`
  - `DomainAvailability_DONT_KNOW`

-}
type DomainAvailability
    = DomainAvailability_AVAILABLE
    | DomainAvailability_AVAILABLE_RESERVED
    | DomainAvailability_AVAILABLE_PREORDER
    | DomainAvailability_UNAVAILABLE
    | DomainAvailability_UNAVAILABLE_PREMIUM
    | DomainAvailability_UNAVAILABLE_RESTRICTED
    | DomainAvailability_RESERVED
    | DomainAvailability_DONT_KNOW


domainAvailabilityDecoder : JD.Decoder DomainAvailability
domainAvailabilityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AVAILABLE" ->
                        JD.succeed DomainAvailability_AVAILABLE

                    "AVAILABLE_RESERVED" ->
                        JD.succeed DomainAvailability_AVAILABLE_RESERVED

                    "AVAILABLE_PREORDER" ->
                        JD.succeed DomainAvailability_AVAILABLE_PREORDER

                    "UNAVAILABLE" ->
                        JD.succeed DomainAvailability_UNAVAILABLE

                    "UNAVAILABLE_PREMIUM" ->
                        JD.succeed DomainAvailability_UNAVAILABLE_PREMIUM

                    "UNAVAILABLE_RESTRICTED" ->
                        JD.succeed DomainAvailability_UNAVAILABLE_RESTRICTED

                    "RESERVED" ->
                        JD.succeed DomainAvailability_RESERVED

                    "DONT_KNOW" ->
                        JD.succeed DomainAvailability_DONT_KNOW

                    _ ->
                        JD.fail "bad thing"
            )


domainAvailabilityToString : DomainAvailability -> String
domainAvailabilityToString val =
    case val of
        DomainAvailability_AVAILABLE ->
            "AVAILABLE"

        DomainAvailability_AVAILABLE_RESERVED ->
            "AVAILABLE_RESERVED"

        DomainAvailability_AVAILABLE_PREORDER ->
            "AVAILABLE_PREORDER"

        DomainAvailability_UNAVAILABLE ->
            "UNAVAILABLE"

        DomainAvailability_UNAVAILABLE_PREMIUM ->
            "UNAVAILABLE_PREMIUM"

        DomainAvailability_UNAVAILABLE_RESTRICTED ->
            "UNAVAILABLE_RESTRICTED"

        DomainAvailability_RESERVED ->
            "RESERVED"

        DomainAvailability_DONT_KNOW ->
            "DONT_KNOW"


{-|

<p>The number of domains has exceeded the allowed threshold for the account.</p>

-}
type alias DomainLimitExceeded =
    { message : Maybe String
    }


domainLimitExceededDecoder : JD.Decoder DomainLimitExceeded
domainLimitExceededDecoder =
    JD.succeed DomainLimitExceeded
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "message", "Message" ]
                JD.string
            )


{-|

<p>Information about one suggested domain name.</p>

-}
type alias DomainSuggestion =
    { domainName : Maybe String
    , availability : Maybe String
    }


domainSuggestionDecoder : JD.Decoder DomainSuggestion
domainSuggestionDecoder =
    JD.succeed DomainSuggestion
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DomainName", "domainName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Availability", "availability" ]
                JD.string
            )


{-|

<p>Summary information about one domain.</p>

-}
type alias DomainSummary =
    { domainName : String
    , autoRenew : Maybe Bool
    , transferLock : Maybe Bool
    , expiry : Maybe Posix
    }


domainSummaryDecoder : JD.Decoder DomainSummary
domainSummaryDecoder =
    JD.succeed DomainSummary
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DomainName", "domainName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoRenew", "autoRenew" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TransferLock", "transferLock" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Expiry", "expiry" ]
                JDX.datetime
            )


{-|

<p>A complex type that contains information about whether the specified domain can be transferred to Amazon Route 53.</p>

-}
type alias DomainTransferability =
    { transferable : Maybe Transferable
    }


domainTransferabilityDecoder : JD.Decoder DomainTransferability
domainTransferabilityDecoder =
    JD.succeed DomainTransferability
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Transferable", "transferable" ]
                transferableDecoder
            )


{-|

<p>The request is already in progress for the domain.</p>

-}
type alias DuplicateRequest =
    { message : Maybe String
    }


duplicateRequestDecoder : JD.Decoder DuplicateRequest
duplicateRequestDecoder =
    JD.succeed DuplicateRequest
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "message", "Message" ]
                JD.string
            )


{-| Type of HTTP response from enableDomainAutoRenew
-}
type alias EnableDomainAutoRenewResponse =
    {}


enableDomainAutoRenewResponseDecoder : JD.Decoder EnableDomainAutoRenewResponse
enableDomainAutoRenewResponseDecoder =
    JD.succeed EnableDomainAutoRenewResponse


{-| Type of HTTP response from enableDomainTransferLock
-}
type alias EnableDomainTransferLockResponse =
    { operationId : String
    }


enableDomainTransferLockResponseDecoder : JD.Decoder EnableDomainTransferLockResponse
enableDomainTransferLockResponseDecoder =
    JD.succeed EnableDomainTransferLockResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OperationId", "operationId" ]
                JD.string
            )


{-|

<p>ExtraParam includes the following elements.</p>

-}
type alias ExtraParam =
    { name : ExtraParamName
    , value : String
    }


extraParamDecoder : JD.Decoder ExtraParam
extraParamDecoder =
    JD.succeed ExtraParam
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                extraParamNameDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Value", "value" ]
                JD.string
            )


{-| One of

  - `ExtraParamName_DUNS_NUMBER`
  - `ExtraParamName_BRAND_NUMBER`
  - `ExtraParamName_BIRTH_DEPARTMENT`
  - `ExtraParamName_BIRTH_DATE_IN_YYYY_MM_DD`
  - `ExtraParamName_BIRTH_COUNTRY`
  - `ExtraParamName_BIRTH_CITY`
  - `ExtraParamName_DOCUMENT_NUMBER`
  - `ExtraParamName_AU_ID_NUMBER`
  - `ExtraParamName_AU_ID_TYPE`
  - `ExtraParamName_CA_LEGAL_TYPE`
  - `ExtraParamName_CA_BUSINESS_ENTITY_TYPE`
  - `ExtraParamName_ES_IDENTIFICATION`
  - `ExtraParamName_ES_IDENTIFICATION_TYPE`
  - `ExtraParamName_ES_LEGAL_FORM`
  - `ExtraParamName_FI_BUSINESS_NUMBER`
  - `ExtraParamName_FI_ID_NUMBER`
  - `ExtraParamName_FI_NATIONALITY`
  - `ExtraParamName_FI_ORGANIZATION_TYPE`
  - `ExtraParamName_IT_PIN`
  - `ExtraParamName_IT_REGISTRANT_ENTITY_TYPE`
  - `ExtraParamName_RU_PASSPORT_DATA`
  - `ExtraParamName_SE_ID_NUMBER`
  - `ExtraParamName_SG_ID_NUMBER`
  - `ExtraParamName_VAT_NUMBER`
  - `ExtraParamName_UK_CONTACT_TYPE`
  - `ExtraParamName_UK_COMPANY_NUMBER`

-}
type ExtraParamName
    = ExtraParamName_DUNS_NUMBER
    | ExtraParamName_BRAND_NUMBER
    | ExtraParamName_BIRTH_DEPARTMENT
    | ExtraParamName_BIRTH_DATE_IN_YYYY_MM_DD
    | ExtraParamName_BIRTH_COUNTRY
    | ExtraParamName_BIRTH_CITY
    | ExtraParamName_DOCUMENT_NUMBER
    | ExtraParamName_AU_ID_NUMBER
    | ExtraParamName_AU_ID_TYPE
    | ExtraParamName_CA_LEGAL_TYPE
    | ExtraParamName_CA_BUSINESS_ENTITY_TYPE
    | ExtraParamName_ES_IDENTIFICATION
    | ExtraParamName_ES_IDENTIFICATION_TYPE
    | ExtraParamName_ES_LEGAL_FORM
    | ExtraParamName_FI_BUSINESS_NUMBER
    | ExtraParamName_FI_ID_NUMBER
    | ExtraParamName_FI_NATIONALITY
    | ExtraParamName_FI_ORGANIZATION_TYPE
    | ExtraParamName_IT_PIN
    | ExtraParamName_IT_REGISTRANT_ENTITY_TYPE
    | ExtraParamName_RU_PASSPORT_DATA
    | ExtraParamName_SE_ID_NUMBER
    | ExtraParamName_SG_ID_NUMBER
    | ExtraParamName_VAT_NUMBER
    | ExtraParamName_UK_CONTACT_TYPE
    | ExtraParamName_UK_COMPANY_NUMBER


extraParamNameDecoder : JD.Decoder ExtraParamName
extraParamNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DUNS_NUMBER" ->
                        JD.succeed ExtraParamName_DUNS_NUMBER

                    "BRAND_NUMBER" ->
                        JD.succeed ExtraParamName_BRAND_NUMBER

                    "BIRTH_DEPARTMENT" ->
                        JD.succeed ExtraParamName_BIRTH_DEPARTMENT

                    "BIRTH_DATE_IN_YYYY_MM_DD" ->
                        JD.succeed ExtraParamName_BIRTH_DATE_IN_YYYY_MM_DD

                    "BIRTH_COUNTRY" ->
                        JD.succeed ExtraParamName_BIRTH_COUNTRY

                    "BIRTH_CITY" ->
                        JD.succeed ExtraParamName_BIRTH_CITY

                    "DOCUMENT_NUMBER" ->
                        JD.succeed ExtraParamName_DOCUMENT_NUMBER

                    "AU_ID_NUMBER" ->
                        JD.succeed ExtraParamName_AU_ID_NUMBER

                    "AU_ID_TYPE" ->
                        JD.succeed ExtraParamName_AU_ID_TYPE

                    "CA_LEGAL_TYPE" ->
                        JD.succeed ExtraParamName_CA_LEGAL_TYPE

                    "CA_BUSINESS_ENTITY_TYPE" ->
                        JD.succeed ExtraParamName_CA_BUSINESS_ENTITY_TYPE

                    "ES_IDENTIFICATION" ->
                        JD.succeed ExtraParamName_ES_IDENTIFICATION

                    "ES_IDENTIFICATION_TYPE" ->
                        JD.succeed ExtraParamName_ES_IDENTIFICATION_TYPE

                    "ES_LEGAL_FORM" ->
                        JD.succeed ExtraParamName_ES_LEGAL_FORM

                    "FI_BUSINESS_NUMBER" ->
                        JD.succeed ExtraParamName_FI_BUSINESS_NUMBER

                    "FI_ID_NUMBER" ->
                        JD.succeed ExtraParamName_FI_ID_NUMBER

                    "FI_NATIONALITY" ->
                        JD.succeed ExtraParamName_FI_NATIONALITY

                    "FI_ORGANIZATION_TYPE" ->
                        JD.succeed ExtraParamName_FI_ORGANIZATION_TYPE

                    "IT_PIN" ->
                        JD.succeed ExtraParamName_IT_PIN

                    "IT_REGISTRANT_ENTITY_TYPE" ->
                        JD.succeed ExtraParamName_IT_REGISTRANT_ENTITY_TYPE

                    "RU_PASSPORT_DATA" ->
                        JD.succeed ExtraParamName_RU_PASSPORT_DATA

                    "SE_ID_NUMBER" ->
                        JD.succeed ExtraParamName_SE_ID_NUMBER

                    "SG_ID_NUMBER" ->
                        JD.succeed ExtraParamName_SG_ID_NUMBER

                    "VAT_NUMBER" ->
                        JD.succeed ExtraParamName_VAT_NUMBER

                    "UK_CONTACT_TYPE" ->
                        JD.succeed ExtraParamName_UK_CONTACT_TYPE

                    "UK_COMPANY_NUMBER" ->
                        JD.succeed ExtraParamName_UK_COMPANY_NUMBER

                    _ ->
                        JD.fail "bad thing"
            )


extraParamNameToString : ExtraParamName -> String
extraParamNameToString val =
    case val of
        ExtraParamName_DUNS_NUMBER ->
            "DUNS_NUMBER"

        ExtraParamName_BRAND_NUMBER ->
            "BRAND_NUMBER"

        ExtraParamName_BIRTH_DEPARTMENT ->
            "BIRTH_DEPARTMENT"

        ExtraParamName_BIRTH_DATE_IN_YYYY_MM_DD ->
            "BIRTH_DATE_IN_YYYY_MM_DD"

        ExtraParamName_BIRTH_COUNTRY ->
            "BIRTH_COUNTRY"

        ExtraParamName_BIRTH_CITY ->
            "BIRTH_CITY"

        ExtraParamName_DOCUMENT_NUMBER ->
            "DOCUMENT_NUMBER"

        ExtraParamName_AU_ID_NUMBER ->
            "AU_ID_NUMBER"

        ExtraParamName_AU_ID_TYPE ->
            "AU_ID_TYPE"

        ExtraParamName_CA_LEGAL_TYPE ->
            "CA_LEGAL_TYPE"

        ExtraParamName_CA_BUSINESS_ENTITY_TYPE ->
            "CA_BUSINESS_ENTITY_TYPE"

        ExtraParamName_ES_IDENTIFICATION ->
            "ES_IDENTIFICATION"

        ExtraParamName_ES_IDENTIFICATION_TYPE ->
            "ES_IDENTIFICATION_TYPE"

        ExtraParamName_ES_LEGAL_FORM ->
            "ES_LEGAL_FORM"

        ExtraParamName_FI_BUSINESS_NUMBER ->
            "FI_BUSINESS_NUMBER"

        ExtraParamName_FI_ID_NUMBER ->
            "FI_ID_NUMBER"

        ExtraParamName_FI_NATIONALITY ->
            "FI_NATIONALITY"

        ExtraParamName_FI_ORGANIZATION_TYPE ->
            "FI_ORGANIZATION_TYPE"

        ExtraParamName_IT_PIN ->
            "IT_PIN"

        ExtraParamName_IT_REGISTRANT_ENTITY_TYPE ->
            "IT_REGISTRANT_ENTITY_TYPE"

        ExtraParamName_RU_PASSPORT_DATA ->
            "RU_PASSPORT_DATA"

        ExtraParamName_SE_ID_NUMBER ->
            "SE_ID_NUMBER"

        ExtraParamName_SG_ID_NUMBER ->
            "SG_ID_NUMBER"

        ExtraParamName_VAT_NUMBER ->
            "VAT_NUMBER"

        ExtraParamName_UK_CONTACT_TYPE ->
            "UK_CONTACT_TYPE"

        ExtraParamName_UK_COMPANY_NUMBER ->
            "UK_COMPANY_NUMBER"


{-| Type of HTTP response from getContactReachabilityStatus
-}
type alias GetContactReachabilityStatusResponse =
    { domainName : Maybe String
    , status : Maybe ReachabilityStatus
    }


getContactReachabilityStatusResponseDecoder : JD.Decoder GetContactReachabilityStatusResponse
getContactReachabilityStatusResponseDecoder =
    JD.succeed GetContactReachabilityStatusResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "domainName", "DomainName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "status", "Status" ]
                reachabilityStatusDecoder
            )


{-| Type of HTTP response from getDomainDetail
-}
type alias GetDomainDetailResponse =
    { domainName : String
    , nameservers : List Nameserver
    , autoRenew : Maybe Bool
    , adminContact : ContactDetail
    , registrantContact : ContactDetail
    , techContact : ContactDetail
    , adminPrivacy : Maybe Bool
    , registrantPrivacy : Maybe Bool
    , techPrivacy : Maybe Bool
    , registrarName : Maybe String
    , whoIsServer : Maybe String
    , registrarUrl : Maybe String
    , abuseContactEmail : Maybe String
    , abuseContactPhone : Maybe String
    , registryDomainId : Maybe String
    , creationDate : Maybe Posix
    , updatedDate : Maybe Posix
    , expirationDate : Maybe Posix
    , reseller : Maybe String
    , dnsSec : Maybe String
    , statusList : Maybe (List String)
    }


getDomainDetailResponseDecoder : JD.Decoder GetDomainDetailResponse
getDomainDetailResponseDecoder =
    JD.succeed GetDomainDetailResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DomainName", "domainName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Nameservers", "nameservers" ]
                (JD.list nameserverDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AutoRenew", "autoRenew" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AdminContact", "adminContact" ]
                contactDetailDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "RegistrantContact", "registrantContact" ]
                contactDetailDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "TechContact", "techContact" ]
                contactDetailDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AdminPrivacy", "adminPrivacy" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RegistrantPrivacy", "registrantPrivacy" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TechPrivacy", "techPrivacy" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RegistrarName", "registrarName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "WhoIsServer", "whoIsServer" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RegistrarUrl", "registrarUrl" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AbuseContactEmail", "abuseContactEmail" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AbuseContactPhone", "abuseContactPhone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RegistryDomainId", "registryDomainId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreationDate", "creationDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UpdatedDate", "updatedDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExpirationDate", "expirationDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Reseller", "reseller" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DnsSec", "dnsSec" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StatusList", "statusList" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from getDomainSuggestions
-}
type alias GetDomainSuggestionsResponse =
    { suggestionsList : Maybe (List DomainSuggestion)
    }


getDomainSuggestionsResponseDecoder : JD.Decoder GetDomainSuggestionsResponse
getDomainSuggestionsResponseDecoder =
    JD.succeed GetDomainSuggestionsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SuggestionsList", "suggestionsList" ]
                (JD.list domainSuggestionDecoder)
            )


{-| Type of HTTP response from getOperationDetail
-}
type alias GetOperationDetailResponse =
    { operationId : Maybe String
    , status : Maybe OperationStatus
    , message : Maybe String
    , domainName : Maybe String
    , type_ : Maybe OperationType
    , submittedDate : Maybe Posix
    }


getOperationDetailResponseDecoder : JD.Decoder GetOperationDetailResponse
getOperationDetailResponseDecoder =
    JD.succeed GetOperationDetailResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OperationId", "operationId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                operationStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DomainName", "domainName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Type", "type" ]
                operationTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubmittedDate", "submittedDate" ]
                JDX.datetime
            )


{-|

<p>The requested item is not acceptable. For example, for an OperationId it might refer to the ID of an operation that is already completed. For a domain name, it might not be a valid domain name or belong to the requester account.</p>

-}
type alias InvalidInput =
    { message : Maybe String
    }


invalidInputDecoder : JD.Decoder InvalidInput
invalidInputDecoder =
    JD.succeed InvalidInput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "message", "Message" ]
                JD.string
            )


{-| Type of HTTP response from listDomains
-}
type alias ListDomainsResponse =
    { domains : List DomainSummary
    , nextPageMarker : Maybe String
    }


listDomainsResponseDecoder : JD.Decoder ListDomainsResponse
listDomainsResponseDecoder =
    JD.succeed ListDomainsResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Domains", "domains" ]
                (JD.list domainSummaryDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextPageMarker", "nextPageMarker" ]
                JD.string
            )


{-| Type of HTTP response from listOperations
-}
type alias ListOperationsResponse =
    { operations : List OperationSummary
    , nextPageMarker : Maybe String
    }


listOperationsResponseDecoder : JD.Decoder ListOperationsResponse
listOperationsResponseDecoder =
    JD.succeed ListOperationsResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Operations", "operations" ]
                (JD.list operationSummaryDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextPageMarker", "nextPageMarker" ]
                JD.string
            )


{-| Type of HTTP response from listTagsForDomain
-}
type alias ListTagsForDomainResponse =
    { tagList : List Tag
    }


listTagsForDomainResponseDecoder : JD.Decoder ListTagsForDomainResponse
listTagsForDomainResponseDecoder =
    JD.succeed ListTagsForDomainResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "TagList", "tagList" ]
                (JD.list tagDecoder)
            )


{-|

<p>Nameserver includes the following elements.</p>

-}
type alias Nameserver =
    { name : String
    , glueIps : Maybe (List String)
    }


nameserverDecoder : JD.Decoder Nameserver
nameserverDecoder =
    JD.succeed Nameserver
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GlueIps", "glueIps" ]
                (JD.list JD.string)
            )


{-|

<p>The number of operations or jobs running exceeded the allowed threshold for the account.</p>

-}
type alias OperationLimitExceeded =
    { message : Maybe String
    }


operationLimitExceededDecoder : JD.Decoder OperationLimitExceeded
operationLimitExceededDecoder =
    JD.succeed OperationLimitExceeded
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "message", "Message" ]
                JD.string
            )


{-| One of

  - `OperationStatus_SUBMITTED`
  - `OperationStatus_IN_PROGRESS`
  - `OperationStatus_ERROR`
  - `OperationStatus_SUCCESSFUL`
  - `OperationStatus_FAILED`

-}
type OperationStatus
    = OperationStatus_SUBMITTED
    | OperationStatus_IN_PROGRESS
    | OperationStatus_ERROR
    | OperationStatus_SUCCESSFUL
    | OperationStatus_FAILED


operationStatusDecoder : JD.Decoder OperationStatus
operationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUBMITTED" ->
                        JD.succeed OperationStatus_SUBMITTED

                    "IN_PROGRESS" ->
                        JD.succeed OperationStatus_IN_PROGRESS

                    "ERROR" ->
                        JD.succeed OperationStatus_ERROR

                    "SUCCESSFUL" ->
                        JD.succeed OperationStatus_SUCCESSFUL

                    "FAILED" ->
                        JD.succeed OperationStatus_FAILED

                    _ ->
                        JD.fail "bad thing"
            )


operationStatusToString : OperationStatus -> String
operationStatusToString val =
    case val of
        OperationStatus_SUBMITTED ->
            "SUBMITTED"

        OperationStatus_IN_PROGRESS ->
            "IN_PROGRESS"

        OperationStatus_ERROR ->
            "ERROR"

        OperationStatus_SUCCESSFUL ->
            "SUCCESSFUL"

        OperationStatus_FAILED ->
            "FAILED"


{-|

<p>OperationSummary includes the following elements.</p>

-}
type alias OperationSummary =
    { operationId : String
    , status : OperationStatus
    , type_ : OperationType
    , submittedDate : Posix
    }


operationSummaryDecoder : JD.Decoder OperationSummary
operationSummaryDecoder =
    JD.succeed OperationSummary
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OperationId", "operationId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Status", "status" ]
                operationStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Type", "type" ]
                operationTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SubmittedDate", "submittedDate" ]
                JDX.datetime
            )


{-| One of

  - `OperationType_REGISTER_DOMAIN`
  - `OperationType_DELETE_DOMAIN`
  - `OperationType_TRANSFER_IN_DOMAIN`
  - `OperationType_UPDATE_DOMAIN_CONTACT`
  - `OperationType_UPDATE_NAMESERVER`
  - `OperationType_CHANGE_PRIVACY_PROTECTION`
  - `OperationType_DOMAIN_LOCK`
  - `OperationType_ENABLE_AUTORENEW`
  - `OperationType_DISABLE_AUTORENEW`
  - `OperationType_ADD_DNSSEC`
  - `OperationType_REMOVE_DNSSEC`
  - `OperationType_EXPIRE_DOMAIN`
  - `OperationType_TRANSFER_OUT_DOMAIN`
  - `OperationType_CHANGE_DOMAIN_OWNER`
  - `OperationType_RENEW_DOMAIN`
  - `OperationType_PUSH_DOMAIN`

-}
type OperationType
    = OperationType_REGISTER_DOMAIN
    | OperationType_DELETE_DOMAIN
    | OperationType_TRANSFER_IN_DOMAIN
    | OperationType_UPDATE_DOMAIN_CONTACT
    | OperationType_UPDATE_NAMESERVER
    | OperationType_CHANGE_PRIVACY_PROTECTION
    | OperationType_DOMAIN_LOCK
    | OperationType_ENABLE_AUTORENEW
    | OperationType_DISABLE_AUTORENEW
    | OperationType_ADD_DNSSEC
    | OperationType_REMOVE_DNSSEC
    | OperationType_EXPIRE_DOMAIN
    | OperationType_TRANSFER_OUT_DOMAIN
    | OperationType_CHANGE_DOMAIN_OWNER
    | OperationType_RENEW_DOMAIN
    | OperationType_PUSH_DOMAIN


operationTypeDecoder : JD.Decoder OperationType
operationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "REGISTER_DOMAIN" ->
                        JD.succeed OperationType_REGISTER_DOMAIN

                    "DELETE_DOMAIN" ->
                        JD.succeed OperationType_DELETE_DOMAIN

                    "TRANSFER_IN_DOMAIN" ->
                        JD.succeed OperationType_TRANSFER_IN_DOMAIN

                    "UPDATE_DOMAIN_CONTACT" ->
                        JD.succeed OperationType_UPDATE_DOMAIN_CONTACT

                    "UPDATE_NAMESERVER" ->
                        JD.succeed OperationType_UPDATE_NAMESERVER

                    "CHANGE_PRIVACY_PROTECTION" ->
                        JD.succeed OperationType_CHANGE_PRIVACY_PROTECTION

                    "DOMAIN_LOCK" ->
                        JD.succeed OperationType_DOMAIN_LOCK

                    "ENABLE_AUTORENEW" ->
                        JD.succeed OperationType_ENABLE_AUTORENEW

                    "DISABLE_AUTORENEW" ->
                        JD.succeed OperationType_DISABLE_AUTORENEW

                    "ADD_DNSSEC" ->
                        JD.succeed OperationType_ADD_DNSSEC

                    "REMOVE_DNSSEC" ->
                        JD.succeed OperationType_REMOVE_DNSSEC

                    "EXPIRE_DOMAIN" ->
                        JD.succeed OperationType_EXPIRE_DOMAIN

                    "TRANSFER_OUT_DOMAIN" ->
                        JD.succeed OperationType_TRANSFER_OUT_DOMAIN

                    "CHANGE_DOMAIN_OWNER" ->
                        JD.succeed OperationType_CHANGE_DOMAIN_OWNER

                    "RENEW_DOMAIN" ->
                        JD.succeed OperationType_RENEW_DOMAIN

                    "PUSH_DOMAIN" ->
                        JD.succeed OperationType_PUSH_DOMAIN

                    _ ->
                        JD.fail "bad thing"
            )


operationTypeToString : OperationType -> String
operationTypeToString val =
    case val of
        OperationType_REGISTER_DOMAIN ->
            "REGISTER_DOMAIN"

        OperationType_DELETE_DOMAIN ->
            "DELETE_DOMAIN"

        OperationType_TRANSFER_IN_DOMAIN ->
            "TRANSFER_IN_DOMAIN"

        OperationType_UPDATE_DOMAIN_CONTACT ->
            "UPDATE_DOMAIN_CONTACT"

        OperationType_UPDATE_NAMESERVER ->
            "UPDATE_NAMESERVER"

        OperationType_CHANGE_PRIVACY_PROTECTION ->
            "CHANGE_PRIVACY_PROTECTION"

        OperationType_DOMAIN_LOCK ->
            "DOMAIN_LOCK"

        OperationType_ENABLE_AUTORENEW ->
            "ENABLE_AUTORENEW"

        OperationType_DISABLE_AUTORENEW ->
            "DISABLE_AUTORENEW"

        OperationType_ADD_DNSSEC ->
            "ADD_DNSSEC"

        OperationType_REMOVE_DNSSEC ->
            "REMOVE_DNSSEC"

        OperationType_EXPIRE_DOMAIN ->
            "EXPIRE_DOMAIN"

        OperationType_TRANSFER_OUT_DOMAIN ->
            "TRANSFER_OUT_DOMAIN"

        OperationType_CHANGE_DOMAIN_OWNER ->
            "CHANGE_DOMAIN_OWNER"

        OperationType_RENEW_DOMAIN ->
            "RENEW_DOMAIN"

        OperationType_PUSH_DOMAIN ->
            "PUSH_DOMAIN"


{-| One of

  - `ReachabilityStatus_PENDING`
  - `ReachabilityStatus_DONE`
  - `ReachabilityStatus_EXPIRED`

-}
type ReachabilityStatus
    = ReachabilityStatus_PENDING
    | ReachabilityStatus_DONE
    | ReachabilityStatus_EXPIRED


reachabilityStatusDecoder : JD.Decoder ReachabilityStatus
reachabilityStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed ReachabilityStatus_PENDING

                    "DONE" ->
                        JD.succeed ReachabilityStatus_DONE

                    "EXPIRED" ->
                        JD.succeed ReachabilityStatus_EXPIRED

                    _ ->
                        JD.fail "bad thing"
            )


reachabilityStatusToString : ReachabilityStatus -> String
reachabilityStatusToString val =
    case val of
        ReachabilityStatus_PENDING ->
            "PENDING"

        ReachabilityStatus_DONE ->
            "DONE"

        ReachabilityStatus_EXPIRED ->
            "EXPIRED"


{-| Type of HTTP response from registerDomain
-}
type alias RegisterDomainResponse =
    { operationId : String
    }


registerDomainResponseDecoder : JD.Decoder RegisterDomainResponse
registerDomainResponseDecoder =
    JD.succeed RegisterDomainResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OperationId", "operationId" ]
                JD.string
            )


{-| Type of HTTP response from renewDomain
-}
type alias RenewDomainResponse =
    { operationId : String
    }


renewDomainResponseDecoder : JD.Decoder RenewDomainResponse
renewDomainResponseDecoder =
    JD.succeed RenewDomainResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OperationId", "operationId" ]
                JD.string
            )


{-| Type of HTTP response from resendContactReachabilityEmail
-}
type alias ResendContactReachabilityEmailResponse =
    { domainName : Maybe String
    , emailAddress : Maybe String
    , isAlreadyVerified : Maybe Bool
    }


resendContactReachabilityEmailResponseDecoder : JD.Decoder ResendContactReachabilityEmailResponse
resendContactReachabilityEmailResponseDecoder =
    JD.succeed ResendContactReachabilityEmailResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "domainName", "DomainName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "emailAddress", "EmailAddress" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "isAlreadyVerified", "IsAlreadyVerified" ]
                JD.bool
            )


{-| Type of HTTP response from retrieveDomainAuthCode
-}
type alias RetrieveDomainAuthCodeResponse =
    { authCode : String
    }


retrieveDomainAuthCodeResponseDecoder : JD.Decoder RetrieveDomainAuthCodeResponse
retrieveDomainAuthCodeResponseDecoder =
    JD.succeed RetrieveDomainAuthCodeResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AuthCode", "authCode" ]
                JD.string
            )


{-|

<p>The top-level domain does not support this operation.</p>

-}
type alias TLDRulesViolation =
    { message : Maybe String
    }


tLDRulesViolationDecoder : JD.Decoder TLDRulesViolation
tLDRulesViolationDecoder =
    JD.succeed TLDRulesViolation
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "message", "Message" ]
                JD.string
            )


{-|

<p>Each tag includes the following elements.</p>

-}
type alias Tag =
    { key : Maybe String
    , value : Maybe String
    }


tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Key", "key" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Value", "value" ]
                JD.string
            )


{-| Type of HTTP response from transferDomain
-}
type alias TransferDomainResponse =
    { operationId : String
    }


transferDomainResponseDecoder : JD.Decoder TransferDomainResponse
transferDomainResponseDecoder =
    JD.succeed TransferDomainResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OperationId", "operationId" ]
                JD.string
            )


{-| One of

  - `Transferable_TRANSFERABLE`
  - `Transferable_UNTRANSFERABLE`
  - `Transferable_DONT_KNOW`

-}
type Transferable
    = Transferable_TRANSFERABLE
    | Transferable_UNTRANSFERABLE
    | Transferable_DONT_KNOW


transferableDecoder : JD.Decoder Transferable
transferableDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TRANSFERABLE" ->
                        JD.succeed Transferable_TRANSFERABLE

                    "UNTRANSFERABLE" ->
                        JD.succeed Transferable_UNTRANSFERABLE

                    "DONT_KNOW" ->
                        JD.succeed Transferable_DONT_KNOW

                    _ ->
                        JD.fail "bad thing"
            )


transferableToString : Transferable -> String
transferableToString val =
    case val of
        Transferable_TRANSFERABLE ->
            "TRANSFERABLE"

        Transferable_UNTRANSFERABLE ->
            "UNTRANSFERABLE"

        Transferable_DONT_KNOW ->
            "DONT_KNOW"


{-|

<p>Amazon Route 53 does not support this top-level domain (TLD).</p>

-}
type alias UnsupportedTLD =
    { message : Maybe String
    }


unsupportedTLDDecoder : JD.Decoder UnsupportedTLD
unsupportedTLDDecoder =
    JD.succeed UnsupportedTLD
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "message", "Message" ]
                JD.string
            )


{-| Type of HTTP response from updateDomainContactPrivacy
-}
type alias UpdateDomainContactPrivacyResponse =
    { operationId : String
    }


updateDomainContactPrivacyResponseDecoder : JD.Decoder UpdateDomainContactPrivacyResponse
updateDomainContactPrivacyResponseDecoder =
    JD.succeed UpdateDomainContactPrivacyResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OperationId", "operationId" ]
                JD.string
            )


{-| Type of HTTP response from updateDomainContact
-}
type alias UpdateDomainContactResponse =
    { operationId : String
    }


updateDomainContactResponseDecoder : JD.Decoder UpdateDomainContactResponse
updateDomainContactResponseDecoder =
    JD.succeed UpdateDomainContactResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OperationId", "operationId" ]
                JD.string
            )


{-| Type of HTTP response from updateDomainNameservers
-}
type alias UpdateDomainNameserversResponse =
    { operationId : String
    }


updateDomainNameserversResponseDecoder : JD.Decoder UpdateDomainNameserversResponse
updateDomainNameserversResponseDecoder =
    JD.succeed UpdateDomainNameserversResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "OperationId", "operationId" ]
                JD.string
            )


{-| Type of HTTP response from updateTagsForDomain
-}
type alias UpdateTagsForDomainResponse =
    {}


updateTagsForDomainResponseDecoder : JD.Decoder UpdateTagsForDomainResponse
updateTagsForDomainResponseDecoder =
    JD.succeed UpdateTagsForDomainResponse


{-| Type of HTTP response from viewBilling
-}
type alias ViewBillingResponse =
    { nextPageMarker : Maybe String
    , billingRecords : Maybe (List BillingRecord)
    }


viewBillingResponseDecoder : JD.Decoder ViewBillingResponse
viewBillingResponseDecoder =
    JD.succeed ViewBillingResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextPageMarker", "nextPageMarker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BillingRecords", "billingRecords" ]
                (JD.list billingRecordDecoder)
            )


{-|

<p>The CheckDomainAvailability request contains the following elements.</p>

-}
type alias CheckDomainAvailabilityRequest =
    { domainName : String
    , idnLangCode : Maybe String
    }


{-|

<p>The CheckDomainTransferability request contains the following elements.</p>

-}
type alias CheckDomainTransferabilityRequest =
    { domainName : String
    , authCode : Maybe String
    }


{-|

<p>The DeleteTagsForDomainRequest includes the following elements.</p>

-}
type alias DeleteTagsForDomainRequest =
    { domainName : String
    , tagsToDelete : List String
    }


{-| undefined
-}
type alias DisableDomainAutoRenewRequest =
    { domainName : String
    }


{-|

<p>The DisableDomainTransferLock request includes the following element.</p>

-}
type alias DisableDomainTransferLockRequest =
    { domainName : String
    }


{-| undefined
-}
type alias EnableDomainAutoRenewRequest =
    { domainName : String
    }


{-|

<p>A request to set the transfer lock for the specified domain.</p>

-}
type alias EnableDomainTransferLockRequest =
    { domainName : String
    }


{-| undefined
-}
type alias GetContactReachabilityStatusRequest =
    { domainName : Maybe String
    }


{-|

<p>The GetDomainDetail request includes the following element.</p>

-}
type alias GetDomainDetailRequest =
    { domainName : String
    }


{-| undefined
-}
type alias GetDomainSuggestionsRequest =
    { domainName : String
    , suggestionCount : Int
    , onlyAvailable : Bool
    }


{-|

<p>The <a>GetOperationDetail</a> request includes the following element.</p>

-}
type alias GetOperationDetailRequest =
    { operationId : String
    }


{-|

<p>The ListDomains request includes the following elements.</p>

-}
type alias ListDomainsRequest =
    { marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>The ListOperations request includes the following elements.</p>

-}
type alias ListOperationsRequest =
    { submittedSince : Maybe Posix
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>The ListTagsForDomainRequest includes the following elements.</p>

-}
type alias ListTagsForDomainRequest =
    { domainName : String
    }


{-|

<p>The RegisterDomain request includes the following elements.</p>

-}
type alias RegisterDomainRequest =
    { domainName : String
    , idnLangCode : Maybe String
    , durationInYears : Int
    , autoRenew : Maybe Bool
    , adminContact : ContactDetail
    , registrantContact : ContactDetail
    , techContact : ContactDetail
    , privacyProtectAdminContact : Maybe Bool
    , privacyProtectRegistrantContact : Maybe Bool
    , privacyProtectTechContact : Maybe Bool
    }


{-|

<p>A <code>RenewDomain</code> request includes the number of years that you want to renew for and the current expiration year.</p>

-}
type alias RenewDomainRequest =
    { domainName : String
    , durationInYears : Maybe Int
    , currentExpiryYear : Int
    }


{-| undefined
-}
type alias ResendContactReachabilityEmailRequest =
    { domainName : Maybe String
    }


{-|

<p>A request for the authorization code for the specified domain. To transfer a domain to another registrar, you provide this value to the new registrar.</p>

-}
type alias RetrieveDomainAuthCodeRequest =
    { domainName : String
    }


{-|

<p>The TransferDomain request includes the following elements.</p>

-}
type alias TransferDomainRequest =
    { domainName : String
    , idnLangCode : Maybe String
    , durationInYears : Int
    , nameservers : Maybe (List Nameserver)
    , authCode : Maybe String
    , autoRenew : Maybe Bool
    , adminContact : ContactDetail
    , registrantContact : ContactDetail
    , techContact : ContactDetail
    , privacyProtectAdminContact : Maybe Bool
    , privacyProtectRegistrantContact : Maybe Bool
    , privacyProtectTechContact : Maybe Bool
    }


{-|

<p>The UpdateDomainContactPrivacy request includes the following elements.</p>

-}
type alias UpdateDomainContactPrivacyRequest =
    { domainName : String
    , adminPrivacy : Maybe Bool
    , registrantPrivacy : Maybe Bool
    , techPrivacy : Maybe Bool
    }


{-|

<p>The UpdateDomainContact request includes the following elements.</p>

-}
type alias UpdateDomainContactRequest =
    { domainName : String
    , adminContact : Maybe ContactDetail
    , registrantContact : Maybe ContactDetail
    , techContact : Maybe ContactDetail
    }


{-|

<p>Replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain.</p> <p>If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email. </p>

-}
type alias UpdateDomainNameserversRequest =
    { domainName : String
    , fIAuthKey : Maybe String
    , nameservers : List Nameserver
    }


{-|

<p>The UpdateTagsForDomainRequest includes the following elements.</p>

-}
type alias UpdateTagsForDomainRequest =
    { domainName : String
    , tagsToUpdate : Maybe (List Tag)
    }


{-|

<p>The ViewBilling request includes the following elements.</p>

-}
type alias ViewBillingRequest =
    { start : Maybe Posix
    , end : Maybe Posix
    , marker : Maybe String
    , maxItems : Maybe Int
    }


billingRecordEncoder : BillingRecord -> JE.Value
billingRecordEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DomainName", data.domainName )
        |> AWS.Core.Encode.optionalMember
            (operationTypeToString >> JE.string)
            ( "Operation", data.operation )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "InvoiceId", data.invoiceId )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "BillDate", data.billDate )
        |> AWS.Core.Encode.optionalMember
            JE.float
            ( "Price", data.price )
        |> JE.object


checkDomainAvailabilityRequestEncoder : CheckDomainAvailabilityRequest -> JE.Value
checkDomainAvailabilityRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdnLangCode", data.idnLangCode )
        |> JE.object


checkDomainAvailabilityResponseEncoder : CheckDomainAvailabilityResponse -> JE.Value
checkDomainAvailabilityResponseEncoder data =
    []
        |> (::) ( "Availability", data.availability |> (domainAvailabilityToString >> JE.string) )
        |> JE.object


checkDomainTransferabilityRequestEncoder : CheckDomainTransferabilityRequest -> JE.Value
checkDomainTransferabilityRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AuthCode", data.authCode )
        |> JE.object


checkDomainTransferabilityResponseEncoder : CheckDomainTransferabilityResponse -> JE.Value
checkDomainTransferabilityResponseEncoder data =
    []
        |> (::) ( "Transferability", data.transferability |> domainTransferabilityEncoder )
        |> JE.object


contactDetailEncoder : ContactDetail -> JE.Value
contactDetailEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FirstName", data.firstName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LastName", data.lastName )
        |> AWS.Core.Encode.optionalMember
            (contactTypeToString >> JE.string)
            ( "ContactType", data.contactType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "OrganizationName", data.organizationName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AddressLine1", data.addressLine1 )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AddressLine2", data.addressLine2 )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "City", data.city )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "State", data.state )
        |> AWS.Core.Encode.optionalMember
            (countryCodeToString >> JE.string)
            ( "CountryCode", data.countryCode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ZipCode", data.zipCode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PhoneNumber", data.phoneNumber )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Email", data.email )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Fax", data.fax )
        |> AWS.Core.Encode.optionalMember
            (JE.list extraParamEncoder)
            ( "ExtraParams", data.extraParams )
        |> JE.object


deleteTagsForDomainRequestEncoder : DeleteTagsForDomainRequest -> JE.Value
deleteTagsForDomainRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> (::) ( "TagsToDelete", data.tagsToDelete |> JE.list JE.string )
        |> JE.object


deleteTagsForDomainResponseEncoder : DeleteTagsForDomainResponse -> JE.Value
deleteTagsForDomainResponseEncoder data =
    []
        |> JE.object


disableDomainAutoRenewRequestEncoder : DisableDomainAutoRenewRequest -> JE.Value
disableDomainAutoRenewRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> JE.object


disableDomainAutoRenewResponseEncoder : DisableDomainAutoRenewResponse -> JE.Value
disableDomainAutoRenewResponseEncoder data =
    []
        |> JE.object


disableDomainTransferLockRequestEncoder : DisableDomainTransferLockRequest -> JE.Value
disableDomainTransferLockRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> JE.object


disableDomainTransferLockResponseEncoder : DisableDomainTransferLockResponse -> JE.Value
disableDomainTransferLockResponseEncoder data =
    []
        |> (::) ( "OperationId", data.operationId |> JE.string )
        |> JE.object


domainLimitExceededEncoder : DomainLimitExceeded -> JE.Value
domainLimitExceededEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "message", data.message )
        |> JE.object


domainSuggestionEncoder : DomainSuggestion -> JE.Value
domainSuggestionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DomainName", data.domainName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Availability", data.availability )
        |> JE.object


domainSummaryEncoder : DomainSummary -> JE.Value
domainSummaryEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AutoRenew", data.autoRenew )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "TransferLock", data.transferLock )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "Expiry", data.expiry )
        |> JE.object


domainTransferabilityEncoder : DomainTransferability -> JE.Value
domainTransferabilityEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (transferableToString >> JE.string)
            ( "Transferable", data.transferable )
        |> JE.object


duplicateRequestEncoder : DuplicateRequest -> JE.Value
duplicateRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "message", data.message )
        |> JE.object


enableDomainAutoRenewRequestEncoder : EnableDomainAutoRenewRequest -> JE.Value
enableDomainAutoRenewRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> JE.object


enableDomainAutoRenewResponseEncoder : EnableDomainAutoRenewResponse -> JE.Value
enableDomainAutoRenewResponseEncoder data =
    []
        |> JE.object


enableDomainTransferLockRequestEncoder : EnableDomainTransferLockRequest -> JE.Value
enableDomainTransferLockRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> JE.object


enableDomainTransferLockResponseEncoder : EnableDomainTransferLockResponse -> JE.Value
enableDomainTransferLockResponseEncoder data =
    []
        |> (::) ( "OperationId", data.operationId |> JE.string )
        |> JE.object


extraParamEncoder : ExtraParam -> JE.Value
extraParamEncoder data =
    []
        |> (::) ( "Name", data.name |> (extraParamNameToString >> JE.string) )
        |> (::) ( "Value", data.value |> JE.string )
        |> JE.object


getContactReachabilityStatusRequestEncoder : GetContactReachabilityStatusRequest -> JE.Value
getContactReachabilityStatusRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "domainName", data.domainName )
        |> JE.object


getContactReachabilityStatusResponseEncoder : GetContactReachabilityStatusResponse -> JE.Value
getContactReachabilityStatusResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "domainName", data.domainName )
        |> AWS.Core.Encode.optionalMember
            (reachabilityStatusToString >> JE.string)
            ( "status", data.status )
        |> JE.object


getDomainDetailRequestEncoder : GetDomainDetailRequest -> JE.Value
getDomainDetailRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> JE.object


getDomainDetailResponseEncoder : GetDomainDetailResponse -> JE.Value
getDomainDetailResponseEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> (::) ( "Nameservers", data.nameservers |> JE.list nameserverEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AutoRenew", data.autoRenew )
        |> (::) ( "AdminContact", data.adminContact |> contactDetailEncoder )
        |> (::) ( "RegistrantContact", data.registrantContact |> contactDetailEncoder )
        |> (::) ( "TechContact", data.techContact |> contactDetailEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AdminPrivacy", data.adminPrivacy )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "RegistrantPrivacy", data.registrantPrivacy )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "TechPrivacy", data.techPrivacy )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "RegistrarName", data.registrarName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "WhoIsServer", data.whoIsServer )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "RegistrarUrl", data.registrarUrl )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AbuseContactEmail", data.abuseContactEmail )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AbuseContactPhone", data.abuseContactPhone )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "RegistryDomainId", data.registryDomainId )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreationDate", data.creationDate )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "UpdatedDate", data.updatedDate )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "ExpirationDate", data.expirationDate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Reseller", data.reseller )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DnsSec", data.dnsSec )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "StatusList", data.statusList )
        |> JE.object


getDomainSuggestionsRequestEncoder : GetDomainSuggestionsRequest -> JE.Value
getDomainSuggestionsRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> (::) ( "SuggestionCount", data.suggestionCount |> JE.int )
        |> (::) ( "OnlyAvailable", data.onlyAvailable |> JE.bool )
        |> JE.object


getDomainSuggestionsResponseEncoder : GetDomainSuggestionsResponse -> JE.Value
getDomainSuggestionsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list domainSuggestionEncoder)
            ( "SuggestionsList", data.suggestionsList )
        |> JE.object


getOperationDetailRequestEncoder : GetOperationDetailRequest -> JE.Value
getOperationDetailRequestEncoder data =
    []
        |> (::) ( "OperationId", data.operationId |> JE.string )
        |> JE.object


getOperationDetailResponseEncoder : GetOperationDetailResponse -> JE.Value
getOperationDetailResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "OperationId", data.operationId )
        |> AWS.Core.Encode.optionalMember
            (operationStatusToString >> JE.string)
            ( "Status", data.status )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Message", data.message )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DomainName", data.domainName )
        |> AWS.Core.Encode.optionalMember
            (operationTypeToString >> JE.string)
            ( "Type", data.type_ )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "SubmittedDate", data.submittedDate )
        |> JE.object


invalidInputEncoder : InvalidInput -> JE.Value
invalidInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "message", data.message )
        |> JE.object


listDomainsRequestEncoder : ListDomainsRequest -> JE.Value
listDomainsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxItems", data.maxItems )
        |> JE.object


listDomainsResponseEncoder : ListDomainsResponse -> JE.Value
listDomainsResponseEncoder data =
    []
        |> (::) ( "Domains", data.domains |> JE.list domainSummaryEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextPageMarker", data.nextPageMarker )
        |> JE.object


listOperationsRequestEncoder : ListOperationsRequest -> JE.Value
listOperationsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "SubmittedSince", data.submittedSince )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxItems", data.maxItems )
        |> JE.object


listOperationsResponseEncoder : ListOperationsResponse -> JE.Value
listOperationsResponseEncoder data =
    []
        |> (::) ( "Operations", data.operations |> JE.list operationSummaryEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextPageMarker", data.nextPageMarker )
        |> JE.object


listTagsForDomainRequestEncoder : ListTagsForDomainRequest -> JE.Value
listTagsForDomainRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> JE.object


listTagsForDomainResponseEncoder : ListTagsForDomainResponse -> JE.Value
listTagsForDomainResponseEncoder data =
    []
        |> (::) ( "TagList", data.tagList |> JE.list tagEncoder )
        |> JE.object


nameserverEncoder : Nameserver -> JE.Value
nameserverEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "GlueIps", data.glueIps )
        |> JE.object


operationLimitExceededEncoder : OperationLimitExceeded -> JE.Value
operationLimitExceededEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "message", data.message )
        |> JE.object


operationSummaryEncoder : OperationSummary -> JE.Value
operationSummaryEncoder data =
    []
        |> (::) ( "OperationId", data.operationId |> JE.string )
        |> (::) ( "Status", data.status |> (operationStatusToString >> JE.string) )
        |> (::) ( "Type", data.type_ |> (operationTypeToString >> JE.string) )
        |> (::) ( "SubmittedDate", data.submittedDate |> (Iso8601.fromTime >> JE.string) )
        |> JE.object


registerDomainRequestEncoder : RegisterDomainRequest -> JE.Value
registerDomainRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdnLangCode", data.idnLangCode )
        |> (::) ( "DurationInYears", data.durationInYears |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AutoRenew", data.autoRenew )
        |> (::) ( "AdminContact", data.adminContact |> contactDetailEncoder )
        |> (::) ( "RegistrantContact", data.registrantContact |> contactDetailEncoder )
        |> (::) ( "TechContact", data.techContact |> contactDetailEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "PrivacyProtectAdminContact", data.privacyProtectAdminContact )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "PrivacyProtectRegistrantContact", data.privacyProtectRegistrantContact )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "PrivacyProtectTechContact", data.privacyProtectTechContact )
        |> JE.object


registerDomainResponseEncoder : RegisterDomainResponse -> JE.Value
registerDomainResponseEncoder data =
    []
        |> (::) ( "OperationId", data.operationId |> JE.string )
        |> JE.object


renewDomainRequestEncoder : RenewDomainRequest -> JE.Value
renewDomainRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "DurationInYears", data.durationInYears )
        |> (::) ( "CurrentExpiryYear", data.currentExpiryYear |> JE.int )
        |> JE.object


renewDomainResponseEncoder : RenewDomainResponse -> JE.Value
renewDomainResponseEncoder data =
    []
        |> (::) ( "OperationId", data.operationId |> JE.string )
        |> JE.object


resendContactReachabilityEmailRequestEncoder : ResendContactReachabilityEmailRequest -> JE.Value
resendContactReachabilityEmailRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "domainName", data.domainName )
        |> JE.object


resendContactReachabilityEmailResponseEncoder : ResendContactReachabilityEmailResponse -> JE.Value
resendContactReachabilityEmailResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "domainName", data.domainName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "emailAddress", data.emailAddress )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "isAlreadyVerified", data.isAlreadyVerified )
        |> JE.object


retrieveDomainAuthCodeRequestEncoder : RetrieveDomainAuthCodeRequest -> JE.Value
retrieveDomainAuthCodeRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> JE.object


retrieveDomainAuthCodeResponseEncoder : RetrieveDomainAuthCodeResponse -> JE.Value
retrieveDomainAuthCodeResponseEncoder data =
    []
        |> (::) ( "AuthCode", data.authCode |> JE.string )
        |> JE.object


tLDRulesViolationEncoder : TLDRulesViolation -> JE.Value
tLDRulesViolationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "message", data.message )
        |> JE.object


tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Key", data.key )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Value", data.value )
        |> JE.object


transferDomainRequestEncoder : TransferDomainRequest -> JE.Value
transferDomainRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdnLangCode", data.idnLangCode )
        |> (::) ( "DurationInYears", data.durationInYears |> JE.int )
        |> AWS.Core.Encode.optionalMember
            (JE.list nameserverEncoder)
            ( "Nameservers", data.nameservers )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AuthCode", data.authCode )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AutoRenew", data.autoRenew )
        |> (::) ( "AdminContact", data.adminContact |> contactDetailEncoder )
        |> (::) ( "RegistrantContact", data.registrantContact |> contactDetailEncoder )
        |> (::) ( "TechContact", data.techContact |> contactDetailEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "PrivacyProtectAdminContact", data.privacyProtectAdminContact )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "PrivacyProtectRegistrantContact", data.privacyProtectRegistrantContact )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "PrivacyProtectTechContact", data.privacyProtectTechContact )
        |> JE.object


transferDomainResponseEncoder : TransferDomainResponse -> JE.Value
transferDomainResponseEncoder data =
    []
        |> (::) ( "OperationId", data.operationId |> JE.string )
        |> JE.object


unsupportedTLDEncoder : UnsupportedTLD -> JE.Value
unsupportedTLDEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "message", data.message )
        |> JE.object


updateDomainContactPrivacyRequestEncoder : UpdateDomainContactPrivacyRequest -> JE.Value
updateDomainContactPrivacyRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AdminPrivacy", data.adminPrivacy )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "RegistrantPrivacy", data.registrantPrivacy )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "TechPrivacy", data.techPrivacy )
        |> JE.object


updateDomainContactPrivacyResponseEncoder : UpdateDomainContactPrivacyResponse -> JE.Value
updateDomainContactPrivacyResponseEncoder data =
    []
        |> (::) ( "OperationId", data.operationId |> JE.string )
        |> JE.object


updateDomainContactRequestEncoder : UpdateDomainContactRequest -> JE.Value
updateDomainContactRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            contactDetailEncoder
            ( "AdminContact", data.adminContact )
        |> AWS.Core.Encode.optionalMember
            contactDetailEncoder
            ( "RegistrantContact", data.registrantContact )
        |> AWS.Core.Encode.optionalMember
            contactDetailEncoder
            ( "TechContact", data.techContact )
        |> JE.object


updateDomainContactResponseEncoder : UpdateDomainContactResponse -> JE.Value
updateDomainContactResponseEncoder data =
    []
        |> (::) ( "OperationId", data.operationId |> JE.string )
        |> JE.object


updateDomainNameserversRequestEncoder : UpdateDomainNameserversRequest -> JE.Value
updateDomainNameserversRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FIAuthKey", data.fIAuthKey )
        |> (::) ( "Nameservers", data.nameservers |> JE.list nameserverEncoder )
        |> JE.object


updateDomainNameserversResponseEncoder : UpdateDomainNameserversResponse -> JE.Value
updateDomainNameserversResponseEncoder data =
    []
        |> (::) ( "OperationId", data.operationId |> JE.string )
        |> JE.object


updateTagsForDomainRequestEncoder : UpdateTagsForDomainRequest -> JE.Value
updateTagsForDomainRequestEncoder data =
    []
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "TagsToUpdate", data.tagsToUpdate )
        |> JE.object


updateTagsForDomainResponseEncoder : UpdateTagsForDomainResponse -> JE.Value
updateTagsForDomainResponseEncoder data =
    []
        |> JE.object


viewBillingRequestEncoder : ViewBillingRequest -> JE.Value
viewBillingRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "Start", data.start )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "End", data.end )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxItems", data.maxItems )
        |> JE.object


viewBillingResponseEncoder : ViewBillingResponse -> JE.Value
viewBillingResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextPageMarker", data.nextPageMarker )
        |> AWS.Core.Encode.optionalMember
            (JE.list billingRecordEncoder)
            ( "BillingRecords", data.billingRecords )
        |> JE.object
