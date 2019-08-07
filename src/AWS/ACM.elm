module AWS.ACM
    exposing
        ( service
        , addTagsToCertificate
        , deleteCertificate
        , describeCertificate
        , exportCertificate
        , getCertificate
        , importCertificate
        , ImportCertificateOptions
        , listCertificates
        , ListCertificatesOptions
        , listTagsForCertificate
        , removeTagsFromCertificate
        , renewCertificate
        , requestCertificate
        , RequestCertificateOptions
        , resendValidationEmail
        , updateCertificateOptions
        , CertificateDetail
        , CertificateOptions
        , CertificateStatus(..)
        , CertificateSummary
        , CertificateTransparencyLoggingPreference(..)
        , CertificateType(..)
        , DescribeCertificateResponse
        , DomainStatus(..)
        , DomainValidation
        , DomainValidationOption
        , ExportCertificateResponse
        , ExtendedKeyUsage
        , ExtendedKeyUsageName(..)
        , FailureReason(..)
        , Filters
        , GetCertificateResponse
        , ImportCertificateResponse
        , KeyAlgorithm(..)
        , KeyUsage
        , KeyUsageName(..)
        , ListCertificatesResponse
        , ListTagsForCertificateResponse
        , RecordType(..)
        , RenewalEligibility(..)
        , RenewalStatus(..)
        , RenewalSummary
        , RequestCertificateResponse
        , ResourceRecord
        , RevocationReason(..)
        , Tag
        , ValidationMethod(..)
        )

{-| <fullname>AWS Certificate Manager</fullname> <p>Welcome to the AWS Certificate Manager (ACM) API documentation.</p> <p>You can use ACM to manage SSL/TLS certificates for your AWS-based websites and applications. For general information about using ACM, see the <a href="https://docs.aws.amazon.com/acm/latest/userguide/"> <i>AWS Certificate Manager User Guide</i> </a>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [addTagsToCertificate](#addTagsToCertificate)
* [deleteCertificate](#deleteCertificate)
* [describeCertificate](#describeCertificate)
* [exportCertificate](#exportCertificate)
* [getCertificate](#getCertificate)
* [importCertificate](#importCertificate)
* [ImportCertificateOptions](#ImportCertificateOptions)
* [listCertificates](#listCertificates)
* [ListCertificatesOptions](#ListCertificatesOptions)
* [listTagsForCertificate](#listTagsForCertificate)
* [removeTagsFromCertificate](#removeTagsFromCertificate)
* [renewCertificate](#renewCertificate)
* [requestCertificate](#requestCertificate)
* [RequestCertificateOptions](#RequestCertificateOptions)
* [resendValidationEmail](#resendValidationEmail)
* [updateCertificateOptions](#updateCertificateOptions)


@docs addTagsToCertificate,deleteCertificate,describeCertificate,exportCertificate,getCertificate,importCertificate,ImportCertificateOptions,listCertificates,ListCertificatesOptions,listTagsForCertificate,removeTagsFromCertificate,renewCertificate,requestCertificate,RequestCertificateOptions,resendValidationEmail,updateCertificateOptions

## Responses

* [DescribeCertificateResponse](#DescribeCertificateResponse)
* [ExportCertificateResponse](#ExportCertificateResponse)
* [GetCertificateResponse](#GetCertificateResponse)
* [ImportCertificateResponse](#ImportCertificateResponse)
* [ListCertificatesResponse](#ListCertificatesResponse)
* [ListTagsForCertificateResponse](#ListTagsForCertificateResponse)
* [RequestCertificateResponse](#RequestCertificateResponse)


@docs DescribeCertificateResponse,ExportCertificateResponse,GetCertificateResponse,ImportCertificateResponse,ListCertificatesResponse,ListTagsForCertificateResponse,RequestCertificateResponse

## Records

* [CertificateDetail](#CertificateDetail)
* [CertificateOptions](#CertificateOptions)
* [CertificateSummary](#CertificateSummary)
* [DomainValidation](#DomainValidation)
* [DomainValidationOption](#DomainValidationOption)
* [ExtendedKeyUsage](#ExtendedKeyUsage)
* [Filters](#Filters)
* [KeyUsage](#KeyUsage)
* [RenewalSummary](#RenewalSummary)
* [ResourceRecord](#ResourceRecord)
* [Tag](#Tag)


@docs CertificateDetail,CertificateOptions,CertificateSummary,DomainValidation,DomainValidationOption,ExtendedKeyUsage,Filters,KeyUsage,RenewalSummary,ResourceRecord,Tag

## Unions

* [CertificateStatus](#CertificateStatus)
* [CertificateTransparencyLoggingPreference](#CertificateTransparencyLoggingPreference)
* [CertificateType](#CertificateType)
* [DomainStatus](#DomainStatus)
* [ExtendedKeyUsageName](#ExtendedKeyUsageName)
* [FailureReason](#FailureReason)
* [KeyAlgorithm](#KeyAlgorithm)
* [KeyUsageName](#KeyUsageName)
* [RecordType](#RecordType)
* [RenewalEligibility](#RenewalEligibility)
* [RenewalStatus](#RenewalStatus)
* [RevocationReason](#RevocationReason)
* [ValidationMethod](#ValidationMethod)


@docs CertificateStatus,CertificateTransparencyLoggingPreference,CertificateType,DomainStatus,ExtendedKeyUsageName,FailureReason,KeyAlgorithm,KeyUsageName,RecordType,RenewalEligibility,RenewalStatus,RevocationReason,ValidationMethod

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
        "acm"
        "2015-12-08"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "CertificateManager")



-- OPERATIONS

{-| <p>Adds one or more tags to an ACM certificate. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a <code>key</code> and an optional <code>value</code>. You specify the certificate on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair. </p> <p>You can apply a tag to just one certificate if you want to identify a specific characteristic of that certificate, or you can apply the same tag to multiple certificates if you want to filter for a common relationship among those certificates. Similarly, you can apply the same tag to multiple resources if you want to specify a relationship among those resources. For example, you can add the same tag to an ACM certificate and an Elastic Load Balancing load balancer to indicate that they are both used by the same website. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/tags.html">Tagging ACM certificates</a>. </p> <p>To remove one or more tags, use the <a>RemoveTagsFromCertificate</a> action. To view all of the tags that have been applied to the certificate, use the <a>ListTagsForCertificate</a> action. </p>

__Required Parameters__

* `certificateArn` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

addTagsToCertificate :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

addTagsToCertificate certificateArn tags =
    
    let
        requestInput = AddTagsToCertificateRequest
            
            certificateArn
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> addTagsToCertificateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddTagsToCertificate"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a certificate and its associated private key. If this action succeeds, the certificate no longer appears in the list that can be displayed by calling the <a>ListCertificates</a> action or be retrieved by calling the <a>GetCertificate</a> action. The certificate will not be available for use by AWS services integrated with ACM. </p> <note> <p>You cannot delete an ACM certificate that is being used by another AWS service. To delete a certificate that is in use, the certificate association must first be removed.</p> </note>

__Required Parameters__

* `certificateArn` __:__ `String`


-}

deleteCertificate :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteCertificate certificateArn =
    
    let
        requestInput = DeleteCertificateRequest
            
            certificateArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteCertificateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteCertificate"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Returns detailed metadata about the specified ACM certificate.</p>

__Required Parameters__

* `certificateArn` __:__ `String`


-}

describeCertificate :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeCertificateResponse)

describeCertificate certificateArn =
    
    let
        requestInput = DescribeCertificateRequest
            
            certificateArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeCertificateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeCertificate"
                
                (AWS.Core.Decode.ResultDecoder "DescribeCertificateResponse" describeCertificateResponseDecoder)
                
            )





{-| <p>Exports a private certificate issued by a private certificate authority (CA) for use anywhere. You can export the certificate, the certificate chain, and the encrypted private key associated with the public key embedded in the certificate. You must store the private key securely. The private key is a 2048 bit RSA key. You must provide a passphrase for the private key when exporting it. You can use the following OpenSSL command to decrypt it later. Provide the passphrase when prompted. </p> <p> <code>openssl rsa -in encrypted_key.pem -out decrypted_key.pem</code> </p>

__Required Parameters__

* `certificateArn` __:__ `String`
* `passphrase` __:__ `String`


-}

exportCertificate :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ExportCertificateResponse)

exportCertificate certificateArn passphrase =
    
    let
        requestInput = ExportCertificateRequest
            
            certificateArn
            
            passphrase
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> exportCertificateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ExportCertificate"
                
                (AWS.Core.Decode.ResultDecoder "ExportCertificateResponse" exportCertificateResponseDecoder)
                
            )





{-| <p>Retrieves a certificate specified by an ARN and its certificate chain . The chain is an ordered list of certificates that contains the end entity certificate, intermediate certificates of subordinate CAs, and the root certificate in that order. The certificate and certificate chain are base64 encoded. If you want to decode the certificate to see the individual fields, you can use OpenSSL.</p>

__Required Parameters__

* `certificateArn` __:__ `String`


-}

getCertificate :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCertificateResponse)

getCertificate certificateArn =
    
    let
        requestInput = GetCertificateRequest
            
            certificateArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getCertificateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetCertificate"
                
                (AWS.Core.Decode.ResultDecoder "GetCertificateResponse" getCertificateResponseDecoder)
                
            )





{-| <p>Imports a certificate into AWS Certificate Manager (ACM) to use with services that are integrated with ACM. Note that <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-services.html">integrated services</a> allow only certificate types and keys they support to be associated with their resources. Further, their support differs depending on whether the certificate is imported into IAM or into ACM. For more information, see the documentation for each service. For more information about importing certificates into ACM, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing Certificates</a> in the <i>AWS Certificate Manager User Guide</i>. </p> <note> <p>ACM does not provide <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for certificates that you import.</p> </note> <p>Note the following guidelines when importing third party certificates:</p> <ul> <li> <p>You must enter the private key that matches the certificate you are importing.</p> </li> <li> <p>The private key must be unencrypted. You cannot import a private key that is protected by a password or a passphrase.</p> </li> <li> <p>If the certificate you are importing is not self-signed, you must enter its certificate chain.</p> </li> <li> <p>If a certificate chain is included, the issuer must be the subject of one of the certificates in the chain.</p> </li> <li> <p>The certificate, private key, and certificate chain must be PEM-encoded.</p> </li> <li> <p>The current time must be between the <code>Not Before</code> and <code>Not After</code> certificate fields.</p> </li> <li> <p>The <code>Issuer</code> field must not be empty.</p> </li> <li> <p>The OCSP authority URL, if present, must not exceed 1000 characters.</p> </li> <li> <p>To import a new certificate, omit the <code>CertificateArn</code> argument. Include this argument only when you want to replace a previously imported certificate.</p> </li> <li> <p>When you import a certificate by using the CLI, you must specify the certificate, the certificate chain, and the private key by their file names preceded by <code>file://</code>. For example, you can specify a certificate saved in the <code>C:\temp</code> folder as <code>file://C:\temp\certificate_to_import.pem</code>. If you are making an HTTP or HTTPS Query request, include these arguments as BLOBs. </p> </li> <li> <p>When you import a certificate by using an SDK, you must specify the certificate, the certificate chain, and the private key files in the manner required by the programming language you're using. </p> </li> </ul> <p>This operation returns the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the imported certificate.</p>

__Required Parameters__

* `certificate` __:__ `String`
* `privateKey` __:__ `String`


-}

importCertificate :
  
    String ->
  
    String ->
  
  
    ( ImportCertificateOptions -> ImportCertificateOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ImportCertificateResponse)

importCertificate certificate privateKey setOptions =
    
    let
        requestInput = ImportCertificateRequest
            
            options.certificateArn
            
            certificate
            
            privateKey
            
            options.certificateChain
            
        
        options = setOptions (ImportCertificateOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> importCertificateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ImportCertificate"
                
                (AWS.Core.Decode.ResultDecoder "ImportCertificateResponse" importCertificateResponseDecoder)
                
            )



{-| Options for a importCertificate request
-}
type alias ImportCertificateOptions =
    {
    certificateArn : Maybe String,certificateChain : Maybe String
    }



{-| <p>Retrieves a list of certificate ARNs and domain names. You can request that only certificates that match a specific status be listed. You can also filter by specific attributes of the certificate. </p>

__Required Parameters__



-}

listCertificates :
  
  
    ( ListCertificatesOptions -> ListCertificatesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListCertificatesResponse)

listCertificates setOptions =
    
    let
        requestInput = ListCertificatesRequest
            
            options.certificateStatuses
            
            options.includes
            
            options.nextToken
            
            options.maxItems
            
        
        options = setOptions (ListCertificatesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listCertificatesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListCertificates"
                
                (AWS.Core.Decode.ResultDecoder "ListCertificatesResponse" listCertificatesResponseDecoder)
                
            )



{-| Options for a listCertificates request
-}
type alias ListCertificatesOptions =
    {
    certificateStatuses : Maybe (List CertificateStatus),includes : Maybe Filters,nextToken : Maybe String,maxItems : Maybe Int
    }



{-| <p>Lists the tags that have been applied to the ACM certificate. Use the certificate's Amazon Resource Name (ARN) to specify the certificate. To add a tag to an ACM certificate, use the <a>AddTagsToCertificate</a> action. To delete a tag, use the <a>RemoveTagsFromCertificate</a> action. </p>

__Required Parameters__

* `certificateArn` __:__ `String`


-}

listTagsForCertificate :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForCertificateResponse)

listTagsForCertificate certificateArn =
    
    let
        requestInput = ListTagsForCertificateRequest
            
            certificateArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listTagsForCertificateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForCertificate"
                
                (AWS.Core.Decode.ResultDecoder "ListTagsForCertificateResponse" listTagsForCertificateResponseDecoder)
                
            )





{-| <p>Remove one or more tags from an ACM certificate. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this function, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value. </p> <p>To add tags to a certificate, use the <a>AddTagsToCertificate</a> action. To view all of the tags that have been applied to a specific ACM certificate, use the <a>ListTagsForCertificate</a> action. </p>

__Required Parameters__

* `certificateArn` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

removeTagsFromCertificate :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

removeTagsFromCertificate certificateArn tags =
    
    let
        requestInput = RemoveTagsFromCertificateRequest
            
            certificateArn
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> removeTagsFromCertificateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemoveTagsFromCertificate"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Renews an eligable ACM certificate. At this time, only exported private certificates can be renewed with this operation. In order to renew your ACM PCA certificates with ACM, you must first <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaPermissions.html">grant the ACM service principal permission to do so</a>. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/manual-renewal.html">Testing Managed Renewal</a> in the ACM User Guide.</p>

__Required Parameters__

* `certificateArn` __:__ `String`


-}

renewCertificate :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

renewCertificate certificateArn =
    
    let
        requestInput = RenewCertificateRequest
            
            certificateArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> renewCertificateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RenewCertificate"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Requests an ACM certificate for use with other AWS services. To request an ACM certificate, you must specify a fully qualified domain name (FQDN) in the <code>DomainName</code> parameter. You can also specify additional FQDNs in the <code>SubjectAlternativeNames</code> parameter. </p> <p>If you are requesting a private certificate, domain validation is not required. If you are requesting a public certificate, each domain name that you specify must be validated to verify that you own or control the domain. You can use <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html">DNS validation</a> or <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html">email validation</a>. We recommend that you use DNS validation. ACM issues public certificates after receiving approval from the domain owner. </p>

__Required Parameters__

* `domainName` __:__ `String`


-}

requestCertificate :
  
    String ->
  
  
    ( RequestCertificateOptions -> RequestCertificateOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RequestCertificateResponse)

requestCertificate domainName setOptions =
    
    let
        requestInput = RequestCertificateRequest
            
            domainName
            
            options.validationMethod
            
            options.subjectAlternativeNames
            
            options.idempotencyToken
            
            options.domainValidationOptions
            
            options.options
            
            options.certificateAuthorityArn
            
        
        options = setOptions (RequestCertificateOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> requestCertificateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RequestCertificate"
                
                (AWS.Core.Decode.ResultDecoder "RequestCertificateResponse" requestCertificateResponseDecoder)
                
            )



{-| Options for a requestCertificate request
-}
type alias RequestCertificateOptions =
    {
    validationMethod : Maybe ValidationMethod,subjectAlternativeNames : Maybe (List String),idempotencyToken : Maybe String,domainValidationOptions : Maybe (List DomainValidationOption),options : Maybe CertificateOptions,certificateAuthorityArn : Maybe String
    }



{-| <p>Resends the email that requests domain ownership validation. The domain owner or an authorized representative must approve the ACM certificate before it can be issued. The certificate can be approved by clicking a link in the mail to navigate to the Amazon certificate approval website and then clicking <b>I Approve</b>. However, the validation email can be blocked by spam filters. Therefore, if you do not receive the original mail, you can request that the mail be resent within 72 hours of requesting the ACM certificate. If more than 72 hours have elapsed since your original request or since your last attempt to resend validation mail, you must request a new certificate. For more information about setting up your contact email addresses, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/setup-email.html">Configure Email for your Domain</a>. </p>

__Required Parameters__

* `certificateArn` __:__ `String`
* `domain` __:__ `String`
* `validationDomain` __:__ `String`


-}

resendValidationEmail :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

resendValidationEmail certificateArn domain validationDomain =
    
    let
        requestInput = ResendValidationEmailRequest
            
            certificateArn
            
            domain
            
            validationDomain
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> resendValidationEmailRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ResendValidationEmail"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Updates a certificate. Currently, you can use this function to specify whether to opt in to or out of recording your certificate in a certificate transparency log. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency"> Opting Out of Certificate Transparency Logging</a>. </p>

__Required Parameters__

* `certificateArn` __:__ `String`
* `options` __:__ `CertificateOptions`


-}

updateCertificateOptions :
  
    String ->
  
    CertificateOptions ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateCertificateOptions certificateArn options =
    
    let
        requestInput = UpdateCertificateOptionsRequest
            
            certificateArn
            
            options
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateCertificateOptionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateCertificateOptions"
                
                (AWS.Core.Decode.FixedResult ())
                
            )






{-| <p>Contains metadata about an ACM certificate. This structure is returned in the response to a <a>DescribeCertificate</a> request. </p>
-}
type alias CertificateDetail =
    { certificateArn : Maybe String
    , domainName : Maybe String
    , subjectAlternativeNames : Maybe (List String)
    , domainValidationOptions : Maybe (List DomainValidation)
    , serial : Maybe String
    , subject : Maybe String
    , issuer : Maybe String
    , createdAt : Maybe Posix
    , issuedAt : Maybe Posix
    , importedAt : Maybe Posix
    , status : Maybe CertificateStatus
    , revokedAt : Maybe Posix
    , revocationReason : Maybe RevocationReason
    , notBefore : Maybe Posix
    , notAfter : Maybe Posix
    , keyAlgorithm : Maybe KeyAlgorithm
    , signatureAlgorithm : Maybe String
    , inUseBy : Maybe (List String)
    , failureReason : Maybe FailureReason
    , type_ : Maybe CertificateType
    , renewalSummary : Maybe RenewalSummary
    , keyUsages : Maybe (List KeyUsage)
    , extendedKeyUsages : Maybe (List ExtendedKeyUsage)
    , certificateAuthorityArn : Maybe String
    , renewalEligibility : Maybe RenewalEligibility
    , options : Maybe CertificateOptions
    }



certificateDetailDecoder : JD.Decoder CertificateDetail
certificateDetailDecoder =
    JD.succeed CertificateDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CertificateArn", "certificateArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DomainName", "domainName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubjectAlternativeNames", "subjectAlternativeNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DomainValidationOptions", "domainValidationOptions"]
            (JD.list domainValidationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Serial", "serial"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Subject", "subject"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Issuer", "issuer"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IssuedAt", "issuedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImportedAt", "importedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            certificateStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RevokedAt", "revokedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RevocationReason", "revocationReason"]
            revocationReasonDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotBefore", "notBefore"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotAfter", "notAfter"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyAlgorithm", "keyAlgorithm"]
            keyAlgorithmDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SignatureAlgorithm", "signatureAlgorithm"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InUseBy", "inUseBy"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailureReason", "failureReason"]
            failureReasonDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            certificateTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RenewalSummary", "renewalSummary"]
            renewalSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyUsages", "keyUsages"]
            (JD.list keyUsageDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExtendedKeyUsages", "extendedKeyUsages"]
            (JD.list extendedKeyUsageDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CertificateAuthorityArn", "certificateAuthorityArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RenewalEligibility", "renewalEligibility"]
            renewalEligibilityDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Options", "options"]
            certificateOptionsDecoder
        )
        




certificateDetailToString : CertificateDetail -> String -- List (String, String)
certificateDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificateArn" "" -- val.certificateArn
        
    --     |> Dict.insert
    --         "domainName" "" -- val.domainName
        
    --     |> Dict.insert
    --         "subjectAlternativeNames" "" -- val.subjectAlternativeNames
        
    --     |> Dict.insert
    --         "domainValidationOptions" "" -- val.domainValidationOptions
        
    --     |> Dict.insert
    --         "serial" "" -- val.serial
        
    --     |> Dict.insert
    --         "subject" "" -- val.subject
        
    --     |> Dict.insert
    --         "issuer" "" -- val.issuer
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "issuedAt" "" -- val.issuedAt
        
    --     |> Dict.insert
    --         "importedAt" "" -- val.importedAt
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "revokedAt" "" -- val.revokedAt
        
    --     |> Dict.insert
    --         "revocationReason" "" -- val.revocationReason
        
    --     |> Dict.insert
    --         "notBefore" "" -- val.notBefore
        
    --     |> Dict.insert
    --         "notAfter" "" -- val.notAfter
        
    --     |> Dict.insert
    --         "keyAlgorithm" "" -- val.keyAlgorithm
        
    --     |> Dict.insert
    --         "signatureAlgorithm" "" -- val.signatureAlgorithm
        
    --     |> Dict.insert
    --         "inUseBy" "" -- val.inUseBy
        
    --     |> Dict.insert
    --         "failureReason" "" -- val.failureReason
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "renewalSummary" "" -- val.renewalSummary
        
    --     |> Dict.insert
    --         "keyUsages" "" -- val.keyUsages
        
    --     |> Dict.insert
    --         "extendedKeyUsages" "" -- val.extendedKeyUsages
        
    --     |> Dict.insert
    --         "certificateAuthorityArn" "" -- val.certificateAuthorityArn
        
    --     |> Dict.insert
    --         "renewalEligibility" "" -- val.renewalEligibility
        
    --     |> Dict.insert
    --         "options" "" -- val.options
        
    --     |> Dict.toList
    ""



{-| <p>Structure that contains options for your certificate. Currently, you can use this only to specify whether to opt in to or out of certificate transparency logging. Some browsers require that public certificates issued for your domain be recorded in a log. Certificates that are not logged typically generate a browser error. Transparency makes it possible for you to detect SSL/TLS certificates that have been mistakenly or maliciously issued for your domain. For general information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency">Certificate Transparency Logging</a>. </p>
-}
type alias CertificateOptions =
    { certificateTransparencyLoggingPreference : Maybe CertificateTransparencyLoggingPreference
    }



certificateOptionsDecoder : JD.Decoder CertificateOptions
certificateOptionsDecoder =
    JD.succeed CertificateOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CertificateTransparencyLoggingPreference", "certificateTransparencyLoggingPreference"]
            certificateTransparencyLoggingPreferenceDecoder
        )
        




certificateOptionsToString : CertificateOptions -> String -- List (String, String)
certificateOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificateTransparencyLoggingPreference" "" -- val.certificateTransparencyLoggingPreference
        
    --     |> Dict.toList
    ""



{-| One of

* `CertificateStatus_PENDING_VALIDATION`
* `CertificateStatus_ISSUED`
* `CertificateStatus_INACTIVE`
* `CertificateStatus_EXPIRED`
* `CertificateStatus_VALIDATION_TIMED_OUT`
* `CertificateStatus_REVOKED`
* `CertificateStatus_FAILED`

-}
type CertificateStatus
    = CertificateStatus_PENDING_VALIDATION
    | CertificateStatus_ISSUED
    | CertificateStatus_INACTIVE
    | CertificateStatus_EXPIRED
    | CertificateStatus_VALIDATION_TIMED_OUT
    | CertificateStatus_REVOKED
    | CertificateStatus_FAILED



certificateStatusDecoder : JD.Decoder CertificateStatus
certificateStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING_VALIDATION" ->
                        JD.succeed CertificateStatus_PENDING_VALIDATION

                    "ISSUED" ->
                        JD.succeed CertificateStatus_ISSUED

                    "INACTIVE" ->
                        JD.succeed CertificateStatus_INACTIVE

                    "EXPIRED" ->
                        JD.succeed CertificateStatus_EXPIRED

                    "VALIDATION_TIMED_OUT" ->
                        JD.succeed CertificateStatus_VALIDATION_TIMED_OUT

                    "REVOKED" ->
                        JD.succeed CertificateStatus_REVOKED

                    "FAILED" ->
                        JD.succeed CertificateStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




certificateStatusToString : CertificateStatus -> String
certificateStatusToString val =
    case val of
        CertificateStatus_PENDING_VALIDATION ->
            "PENDING_VALIDATION"

        CertificateStatus_ISSUED ->
            "ISSUED"

        CertificateStatus_INACTIVE ->
            "INACTIVE"

        CertificateStatus_EXPIRED ->
            "EXPIRED"

        CertificateStatus_VALIDATION_TIMED_OUT ->
            "VALIDATION_TIMED_OUT"

        CertificateStatus_REVOKED ->
            "REVOKED"

        CertificateStatus_FAILED ->
            "FAILED"




{-| <p>This structure is returned in the response object of <a>ListCertificates</a> action. </p>
-}
type alias CertificateSummary =
    { certificateArn : Maybe String
    , domainName : Maybe String
    }



certificateSummaryDecoder : JD.Decoder CertificateSummary
certificateSummaryDecoder =
    JD.succeed CertificateSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CertificateArn", "certificateArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DomainName", "domainName"]
            JD.string
        )
        




certificateSummaryToString : CertificateSummary -> String -- List (String, String)
certificateSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificateArn" "" -- val.certificateArn
        
    --     |> Dict.insert
    --         "domainName" "" -- val.domainName
        
    --     |> Dict.toList
    ""



{-| One of

* `CertificateTransparencyLoggingPreference_ENABLED`
* `CertificateTransparencyLoggingPreference_DISABLED`

-}
type CertificateTransparencyLoggingPreference
    = CertificateTransparencyLoggingPreference_ENABLED
    | CertificateTransparencyLoggingPreference_DISABLED



certificateTransparencyLoggingPreferenceDecoder : JD.Decoder CertificateTransparencyLoggingPreference
certificateTransparencyLoggingPreferenceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed CertificateTransparencyLoggingPreference_ENABLED

                    "DISABLED" ->
                        JD.succeed CertificateTransparencyLoggingPreference_DISABLED


                    _ ->
                        JD.fail "bad thing"
            )




certificateTransparencyLoggingPreferenceToString : CertificateTransparencyLoggingPreference -> String
certificateTransparencyLoggingPreferenceToString val =
    case val of
        CertificateTransparencyLoggingPreference_ENABLED ->
            "ENABLED"

        CertificateTransparencyLoggingPreference_DISABLED ->
            "DISABLED"




{-| One of

* `CertificateType_IMPORTED`
* `CertificateType_AMAZON_ISSUED`
* `CertificateType_PRIVATE`

-}
type CertificateType
    = CertificateType_IMPORTED
    | CertificateType_AMAZON_ISSUED
    | CertificateType_PRIVATE



certificateTypeDecoder : JD.Decoder CertificateType
certificateTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IMPORTED" ->
                        JD.succeed CertificateType_IMPORTED

                    "AMAZON_ISSUED" ->
                        JD.succeed CertificateType_AMAZON_ISSUED

                    "PRIVATE" ->
                        JD.succeed CertificateType_PRIVATE


                    _ ->
                        JD.fail "bad thing"
            )




certificateTypeToString : CertificateType -> String
certificateTypeToString val =
    case val of
        CertificateType_IMPORTED ->
            "IMPORTED"

        CertificateType_AMAZON_ISSUED ->
            "AMAZON_ISSUED"

        CertificateType_PRIVATE ->
            "PRIVATE"




{-| Type of HTTP response from describeCertificate
-}
type alias DescribeCertificateResponse =
    { certificate : Maybe CertificateDetail
    }



describeCertificateResponseDecoder : JD.Decoder DescribeCertificateResponse
describeCertificateResponseDecoder =
    JD.succeed DescribeCertificateResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Certificate", "certificate"]
            certificateDetailDecoder
        )
        




describeCertificateResponseToString : DescribeCertificateResponse -> String -- List (String, String)
describeCertificateResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificate" "" -- val.certificate
        
    --     |> Dict.toList
    ""



{-| One of

* `DomainStatus_PENDING_VALIDATION`
* `DomainStatus_SUCCESS`
* `DomainStatus_FAILED`

-}
type DomainStatus
    = DomainStatus_PENDING_VALIDATION
    | DomainStatus_SUCCESS
    | DomainStatus_FAILED



domainStatusDecoder : JD.Decoder DomainStatus
domainStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING_VALIDATION" ->
                        JD.succeed DomainStatus_PENDING_VALIDATION

                    "SUCCESS" ->
                        JD.succeed DomainStatus_SUCCESS

                    "FAILED" ->
                        JD.succeed DomainStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




domainStatusToString : DomainStatus -> String
domainStatusToString val =
    case val of
        DomainStatus_PENDING_VALIDATION ->
            "PENDING_VALIDATION"

        DomainStatus_SUCCESS ->
            "SUCCESS"

        DomainStatus_FAILED ->
            "FAILED"




{-| <p>Contains information about the validation of each domain name in the certificate.</p>
-}
type alias DomainValidation =
    { domainName : String
    , validationEmails : Maybe (List String)
    , validationDomain : Maybe String
    , validationStatus : Maybe DomainStatus
    , resourceRecord : Maybe ResourceRecord
    , validationMethod : Maybe ValidationMethod
    }



domainValidationDecoder : JD.Decoder DomainValidation
domainValidationDecoder =
    JD.succeed DomainValidation
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DomainName", "domainName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ValidationEmails", "validationEmails"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ValidationDomain", "validationDomain"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ValidationStatus", "validationStatus"]
            domainStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceRecord", "resourceRecord"]
            resourceRecordDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ValidationMethod", "validationMethod"]
            validationMethodDecoder
        )
        




domainValidationToString : DomainValidation -> String -- List (String, String)
domainValidationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "domainName" "" -- val.domainName
        
    --     |> Dict.insert
    --         "validationEmails" "" -- val.validationEmails
        
    --     |> Dict.insert
    --         "validationDomain" "" -- val.validationDomain
        
    --     |> Dict.insert
    --         "validationStatus" "" -- val.validationStatus
        
    --     |> Dict.insert
    --         "resourceRecord" "" -- val.resourceRecord
        
    --     |> Dict.insert
    --         "validationMethod" "" -- val.validationMethod
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about the domain names that you want ACM to use to send you emails that enable you to validate domain ownership.</p>
-}
type alias DomainValidationOption =
    { domainName : String
    , validationDomain : String
    }



domainValidationOptionDecoder : JD.Decoder DomainValidationOption
domainValidationOptionDecoder =
    JD.succeed DomainValidationOption
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DomainName", "domainName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ValidationDomain", "validationDomain"]
            JD.string
        )
        




domainValidationOptionToString : DomainValidationOption -> String -- List (String, String)
domainValidationOptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "domainName" "" -- val.domainName
        
    --     |> Dict.insert
    --         "validationDomain" "" -- val.validationDomain
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from exportCertificate
-}
type alias ExportCertificateResponse =
    { certificate : Maybe String
    , certificateChain : Maybe String
    , privateKey : Maybe String
    }



exportCertificateResponseDecoder : JD.Decoder ExportCertificateResponse
exportCertificateResponseDecoder =
    JD.succeed ExportCertificateResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Certificate", "certificate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CertificateChain", "certificateChain"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PrivateKey", "privateKey"]
            JD.string
        )
        




exportCertificateResponseToString : ExportCertificateResponse -> String -- List (String, String)
exportCertificateResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificate" "" -- val.certificate
        
    --     |> Dict.insert
    --         "certificateChain" "" -- val.certificateChain
        
    --     |> Dict.insert
    --         "privateKey" "" -- val.privateKey
        
    --     |> Dict.toList
    ""



{-| <p>The Extended Key Usage X.509 v3 extension defines one or more purposes for which the public key can be used. This is in addition to or in place of the basic purposes specified by the Key Usage extension. </p>
-}
type alias ExtendedKeyUsage =
    { name : Maybe ExtendedKeyUsageName
    , oID : Maybe String
    }



extendedKeyUsageDecoder : JD.Decoder ExtendedKeyUsage
extendedKeyUsageDecoder =
    JD.succeed ExtendedKeyUsage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            extendedKeyUsageNameDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OID", "oID"]
            JD.string
        )
        




extendedKeyUsageToString : ExtendedKeyUsage -> String -- List (String, String)
extendedKeyUsageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "oID" "" -- val.oID
        
    --     |> Dict.toList
    ""



{-| One of

* `ExtendedKeyUsageName_TLS_WEB_SERVER_AUTHENTICATION`
* `ExtendedKeyUsageName_TLS_WEB_CLIENT_AUTHENTICATION`
* `ExtendedKeyUsageName_CODE_SIGNING`
* `ExtendedKeyUsageName_EMAIL_PROTECTION`
* `ExtendedKeyUsageName_TIME_STAMPING`
* `ExtendedKeyUsageName_OCSP_SIGNING`
* `ExtendedKeyUsageName_IPSEC_END_SYSTEM`
* `ExtendedKeyUsageName_IPSEC_TUNNEL`
* `ExtendedKeyUsageName_IPSEC_USER`
* `ExtendedKeyUsageName_ANY`
* `ExtendedKeyUsageName_NONE`
* `ExtendedKeyUsageName_CUSTOM`

-}
type ExtendedKeyUsageName
    = ExtendedKeyUsageName_TLS_WEB_SERVER_AUTHENTICATION
    | ExtendedKeyUsageName_TLS_WEB_CLIENT_AUTHENTICATION
    | ExtendedKeyUsageName_CODE_SIGNING
    | ExtendedKeyUsageName_EMAIL_PROTECTION
    | ExtendedKeyUsageName_TIME_STAMPING
    | ExtendedKeyUsageName_OCSP_SIGNING
    | ExtendedKeyUsageName_IPSEC_END_SYSTEM
    | ExtendedKeyUsageName_IPSEC_TUNNEL
    | ExtendedKeyUsageName_IPSEC_USER
    | ExtendedKeyUsageName_ANY
    | ExtendedKeyUsageName_NONE
    | ExtendedKeyUsageName_CUSTOM



extendedKeyUsageNameDecoder : JD.Decoder ExtendedKeyUsageName
extendedKeyUsageNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TLS_WEB_SERVER_AUTHENTICATION" ->
                        JD.succeed ExtendedKeyUsageName_TLS_WEB_SERVER_AUTHENTICATION

                    "TLS_WEB_CLIENT_AUTHENTICATION" ->
                        JD.succeed ExtendedKeyUsageName_TLS_WEB_CLIENT_AUTHENTICATION

                    "CODE_SIGNING" ->
                        JD.succeed ExtendedKeyUsageName_CODE_SIGNING

                    "EMAIL_PROTECTION" ->
                        JD.succeed ExtendedKeyUsageName_EMAIL_PROTECTION

                    "TIME_STAMPING" ->
                        JD.succeed ExtendedKeyUsageName_TIME_STAMPING

                    "OCSP_SIGNING" ->
                        JD.succeed ExtendedKeyUsageName_OCSP_SIGNING

                    "IPSEC_END_SYSTEM" ->
                        JD.succeed ExtendedKeyUsageName_IPSEC_END_SYSTEM

                    "IPSEC_TUNNEL" ->
                        JD.succeed ExtendedKeyUsageName_IPSEC_TUNNEL

                    "IPSEC_USER" ->
                        JD.succeed ExtendedKeyUsageName_IPSEC_USER

                    "ANY" ->
                        JD.succeed ExtendedKeyUsageName_ANY

                    "NONE" ->
                        JD.succeed ExtendedKeyUsageName_NONE

                    "CUSTOM" ->
                        JD.succeed ExtendedKeyUsageName_CUSTOM


                    _ ->
                        JD.fail "bad thing"
            )




extendedKeyUsageNameToString : ExtendedKeyUsageName -> String
extendedKeyUsageNameToString val =
    case val of
        ExtendedKeyUsageName_TLS_WEB_SERVER_AUTHENTICATION ->
            "TLS_WEB_SERVER_AUTHENTICATION"

        ExtendedKeyUsageName_TLS_WEB_CLIENT_AUTHENTICATION ->
            "TLS_WEB_CLIENT_AUTHENTICATION"

        ExtendedKeyUsageName_CODE_SIGNING ->
            "CODE_SIGNING"

        ExtendedKeyUsageName_EMAIL_PROTECTION ->
            "EMAIL_PROTECTION"

        ExtendedKeyUsageName_TIME_STAMPING ->
            "TIME_STAMPING"

        ExtendedKeyUsageName_OCSP_SIGNING ->
            "OCSP_SIGNING"

        ExtendedKeyUsageName_IPSEC_END_SYSTEM ->
            "IPSEC_END_SYSTEM"

        ExtendedKeyUsageName_IPSEC_TUNNEL ->
            "IPSEC_TUNNEL"

        ExtendedKeyUsageName_IPSEC_USER ->
            "IPSEC_USER"

        ExtendedKeyUsageName_ANY ->
            "ANY"

        ExtendedKeyUsageName_NONE ->
            "NONE"

        ExtendedKeyUsageName_CUSTOM ->
            "CUSTOM"




{-| One of

* `FailureReason_NO_AVAILABLE_CONTACTS`
* `FailureReason_ADDITIONAL_VERIFICATION_REQUIRED`
* `FailureReason_DOMAIN_NOT_ALLOWED`
* `FailureReason_INVALID_PUBLIC_DOMAIN`
* `FailureReason_DOMAIN_VALIDATION_DENIED`
* `FailureReason_CAA_ERROR`
* `FailureReason_PCA_LIMIT_EXCEEDED`
* `FailureReason_PCA_INVALID_ARN`
* `FailureReason_PCA_INVALID_STATE`
* `FailureReason_PCA_REQUEST_FAILED`
* `FailureReason_PCA_RESOURCE_NOT_FOUND`
* `FailureReason_PCA_INVALID_ARGS`
* `FailureReason_PCA_INVALID_DURATION`
* `FailureReason_PCA_ACCESS_DENIED`
* `FailureReason_OTHER`

-}
type FailureReason
    = FailureReason_NO_AVAILABLE_CONTACTS
    | FailureReason_ADDITIONAL_VERIFICATION_REQUIRED
    | FailureReason_DOMAIN_NOT_ALLOWED
    | FailureReason_INVALID_PUBLIC_DOMAIN
    | FailureReason_DOMAIN_VALIDATION_DENIED
    | FailureReason_CAA_ERROR
    | FailureReason_PCA_LIMIT_EXCEEDED
    | FailureReason_PCA_INVALID_ARN
    | FailureReason_PCA_INVALID_STATE
    | FailureReason_PCA_REQUEST_FAILED
    | FailureReason_PCA_RESOURCE_NOT_FOUND
    | FailureReason_PCA_INVALID_ARGS
    | FailureReason_PCA_INVALID_DURATION
    | FailureReason_PCA_ACCESS_DENIED
    | FailureReason_OTHER



failureReasonDecoder : JD.Decoder FailureReason
failureReasonDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NO_AVAILABLE_CONTACTS" ->
                        JD.succeed FailureReason_NO_AVAILABLE_CONTACTS

                    "ADDITIONAL_VERIFICATION_REQUIRED" ->
                        JD.succeed FailureReason_ADDITIONAL_VERIFICATION_REQUIRED

                    "DOMAIN_NOT_ALLOWED" ->
                        JD.succeed FailureReason_DOMAIN_NOT_ALLOWED

                    "INVALID_PUBLIC_DOMAIN" ->
                        JD.succeed FailureReason_INVALID_PUBLIC_DOMAIN

                    "DOMAIN_VALIDATION_DENIED" ->
                        JD.succeed FailureReason_DOMAIN_VALIDATION_DENIED

                    "CAA_ERROR" ->
                        JD.succeed FailureReason_CAA_ERROR

                    "PCA_LIMIT_EXCEEDED" ->
                        JD.succeed FailureReason_PCA_LIMIT_EXCEEDED

                    "PCA_INVALID_ARN" ->
                        JD.succeed FailureReason_PCA_INVALID_ARN

                    "PCA_INVALID_STATE" ->
                        JD.succeed FailureReason_PCA_INVALID_STATE

                    "PCA_REQUEST_FAILED" ->
                        JD.succeed FailureReason_PCA_REQUEST_FAILED

                    "PCA_RESOURCE_NOT_FOUND" ->
                        JD.succeed FailureReason_PCA_RESOURCE_NOT_FOUND

                    "PCA_INVALID_ARGS" ->
                        JD.succeed FailureReason_PCA_INVALID_ARGS

                    "PCA_INVALID_DURATION" ->
                        JD.succeed FailureReason_PCA_INVALID_DURATION

                    "PCA_ACCESS_DENIED" ->
                        JD.succeed FailureReason_PCA_ACCESS_DENIED

                    "OTHER" ->
                        JD.succeed FailureReason_OTHER


                    _ ->
                        JD.fail "bad thing"
            )




failureReasonToString : FailureReason -> String
failureReasonToString val =
    case val of
        FailureReason_NO_AVAILABLE_CONTACTS ->
            "NO_AVAILABLE_CONTACTS"

        FailureReason_ADDITIONAL_VERIFICATION_REQUIRED ->
            "ADDITIONAL_VERIFICATION_REQUIRED"

        FailureReason_DOMAIN_NOT_ALLOWED ->
            "DOMAIN_NOT_ALLOWED"

        FailureReason_INVALID_PUBLIC_DOMAIN ->
            "INVALID_PUBLIC_DOMAIN"

        FailureReason_DOMAIN_VALIDATION_DENIED ->
            "DOMAIN_VALIDATION_DENIED"

        FailureReason_CAA_ERROR ->
            "CAA_ERROR"

        FailureReason_PCA_LIMIT_EXCEEDED ->
            "PCA_LIMIT_EXCEEDED"

        FailureReason_PCA_INVALID_ARN ->
            "PCA_INVALID_ARN"

        FailureReason_PCA_INVALID_STATE ->
            "PCA_INVALID_STATE"

        FailureReason_PCA_REQUEST_FAILED ->
            "PCA_REQUEST_FAILED"

        FailureReason_PCA_RESOURCE_NOT_FOUND ->
            "PCA_RESOURCE_NOT_FOUND"

        FailureReason_PCA_INVALID_ARGS ->
            "PCA_INVALID_ARGS"

        FailureReason_PCA_INVALID_DURATION ->
            "PCA_INVALID_DURATION"

        FailureReason_PCA_ACCESS_DENIED ->
            "PCA_ACCESS_DENIED"

        FailureReason_OTHER ->
            "OTHER"




{-| <p>This structure can be used in the <a>ListCertificates</a> action to filter the output of the certificate list. </p>
-}
type alias Filters =
    { extendedKeyUsage : Maybe (List ExtendedKeyUsageName)
    , keyUsage : Maybe (List KeyUsageName)
    , keyTypes : Maybe (List KeyAlgorithm)
    }



filtersDecoder : JD.Decoder Filters
filtersDecoder =
    JD.succeed Filters
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["extendedKeyUsage", "ExtendedKeyUsage"]
            (JD.list extendedKeyUsageNameDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["keyUsage", "KeyUsage"]
            (JD.list keyUsageNameDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["keyTypes", "KeyTypes"]
            (JD.list keyAlgorithmDecoder)
        )
        




filtersToString : Filters -> String -- List (String, String)
filtersToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "extendedKeyUsage" "" -- val.extendedKeyUsage
        
    --     |> Dict.insert
    --         "keyUsage" "" -- val.keyUsage
        
    --     |> Dict.insert
    --         "keyTypes" "" -- val.keyTypes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getCertificate
-}
type alias GetCertificateResponse =
    { certificate : Maybe String
    , certificateChain : Maybe String
    }



getCertificateResponseDecoder : JD.Decoder GetCertificateResponse
getCertificateResponseDecoder =
    JD.succeed GetCertificateResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Certificate", "certificate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CertificateChain", "certificateChain"]
            JD.string
        )
        




getCertificateResponseToString : GetCertificateResponse -> String -- List (String, String)
getCertificateResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificate" "" -- val.certificate
        
    --     |> Dict.insert
    --         "certificateChain" "" -- val.certificateChain
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from importCertificate
-}
type alias ImportCertificateResponse =
    { certificateArn : Maybe String
    }



importCertificateResponseDecoder : JD.Decoder ImportCertificateResponse
importCertificateResponseDecoder =
    JD.succeed ImportCertificateResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CertificateArn", "certificateArn"]
            JD.string
        )
        




importCertificateResponseToString : ImportCertificateResponse -> String -- List (String, String)
importCertificateResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificateArn" "" -- val.certificateArn
        
    --     |> Dict.toList
    ""



{-| One of

* `KeyAlgorithm_RSA_2048`
* `KeyAlgorithm_RSA_1024`
* `KeyAlgorithm_RSA_4096`
* `KeyAlgorithm_EC_prime256v1`
* `KeyAlgorithm_EC_secp384r1`
* `KeyAlgorithm_EC_secp521r1`

-}
type KeyAlgorithm
    = KeyAlgorithm_RSA_2048
    | KeyAlgorithm_RSA_1024
    | KeyAlgorithm_RSA_4096
    | KeyAlgorithm_EC_prime256v1
    | KeyAlgorithm_EC_secp384r1
    | KeyAlgorithm_EC_secp521r1



keyAlgorithmDecoder : JD.Decoder KeyAlgorithm
keyAlgorithmDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RSA_2048" ->
                        JD.succeed KeyAlgorithm_RSA_2048

                    "RSA_1024" ->
                        JD.succeed KeyAlgorithm_RSA_1024

                    "RSA_4096" ->
                        JD.succeed KeyAlgorithm_RSA_4096

                    "EC_prime256v1" ->
                        JD.succeed KeyAlgorithm_EC_prime256v1

                    "EC_secp384r1" ->
                        JD.succeed KeyAlgorithm_EC_secp384r1

                    "EC_secp521r1" ->
                        JD.succeed KeyAlgorithm_EC_secp521r1


                    _ ->
                        JD.fail "bad thing"
            )




keyAlgorithmToString : KeyAlgorithm -> String
keyAlgorithmToString val =
    case val of
        KeyAlgorithm_RSA_2048 ->
            "RSA_2048"

        KeyAlgorithm_RSA_1024 ->
            "RSA_1024"

        KeyAlgorithm_RSA_4096 ->
            "RSA_4096"

        KeyAlgorithm_EC_prime256v1 ->
            "EC_prime256v1"

        KeyAlgorithm_EC_secp384r1 ->
            "EC_secp384r1"

        KeyAlgorithm_EC_secp521r1 ->
            "EC_secp521r1"




{-| <p>The Key Usage X.509 v3 extension defines the purpose of the public key contained in the certificate.</p>
-}
type alias KeyUsage =
    { name : Maybe KeyUsageName
    }



keyUsageDecoder : JD.Decoder KeyUsage
keyUsageDecoder =
    JD.succeed KeyUsage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            keyUsageNameDecoder
        )
        




keyUsageToString : KeyUsage -> String -- List (String, String)
keyUsageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| One of

* `KeyUsageName_DIGITAL_SIGNATURE`
* `KeyUsageName_NON_REPUDIATION`
* `KeyUsageName_KEY_ENCIPHERMENT`
* `KeyUsageName_DATA_ENCIPHERMENT`
* `KeyUsageName_KEY_AGREEMENT`
* `KeyUsageName_CERTIFICATE_SIGNING`
* `KeyUsageName_CRL_SIGNING`
* `KeyUsageName_ENCIPHER_ONLY`
* `KeyUsageName_DECIPHER_ONLY`
* `KeyUsageName_ANY`
* `KeyUsageName_CUSTOM`

-}
type KeyUsageName
    = KeyUsageName_DIGITAL_SIGNATURE
    | KeyUsageName_NON_REPUDIATION
    | KeyUsageName_KEY_ENCIPHERMENT
    | KeyUsageName_DATA_ENCIPHERMENT
    | KeyUsageName_KEY_AGREEMENT
    | KeyUsageName_CERTIFICATE_SIGNING
    | KeyUsageName_CRL_SIGNING
    | KeyUsageName_ENCIPHER_ONLY
    | KeyUsageName_DECIPHER_ONLY
    | KeyUsageName_ANY
    | KeyUsageName_CUSTOM



keyUsageNameDecoder : JD.Decoder KeyUsageName
keyUsageNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DIGITAL_SIGNATURE" ->
                        JD.succeed KeyUsageName_DIGITAL_SIGNATURE

                    "NON_REPUDIATION" ->
                        JD.succeed KeyUsageName_NON_REPUDIATION

                    "KEY_ENCIPHERMENT" ->
                        JD.succeed KeyUsageName_KEY_ENCIPHERMENT

                    "DATA_ENCIPHERMENT" ->
                        JD.succeed KeyUsageName_DATA_ENCIPHERMENT

                    "KEY_AGREEMENT" ->
                        JD.succeed KeyUsageName_KEY_AGREEMENT

                    "CERTIFICATE_SIGNING" ->
                        JD.succeed KeyUsageName_CERTIFICATE_SIGNING

                    "CRL_SIGNING" ->
                        JD.succeed KeyUsageName_CRL_SIGNING

                    "ENCIPHER_ONLY" ->
                        JD.succeed KeyUsageName_ENCIPHER_ONLY

                    "DECIPHER_ONLY" ->
                        JD.succeed KeyUsageName_DECIPHER_ONLY

                    "ANY" ->
                        JD.succeed KeyUsageName_ANY

                    "CUSTOM" ->
                        JD.succeed KeyUsageName_CUSTOM


                    _ ->
                        JD.fail "bad thing"
            )




keyUsageNameToString : KeyUsageName -> String
keyUsageNameToString val =
    case val of
        KeyUsageName_DIGITAL_SIGNATURE ->
            "DIGITAL_SIGNATURE"

        KeyUsageName_NON_REPUDIATION ->
            "NON_REPUDIATION"

        KeyUsageName_KEY_ENCIPHERMENT ->
            "KEY_ENCIPHERMENT"

        KeyUsageName_DATA_ENCIPHERMENT ->
            "DATA_ENCIPHERMENT"

        KeyUsageName_KEY_AGREEMENT ->
            "KEY_AGREEMENT"

        KeyUsageName_CERTIFICATE_SIGNING ->
            "CERTIFICATE_SIGNING"

        KeyUsageName_CRL_SIGNING ->
            "CRL_SIGNING"

        KeyUsageName_ENCIPHER_ONLY ->
            "ENCIPHER_ONLY"

        KeyUsageName_DECIPHER_ONLY ->
            "DECIPHER_ONLY"

        KeyUsageName_ANY ->
            "ANY"

        KeyUsageName_CUSTOM ->
            "CUSTOM"




{-| Type of HTTP response from listCertificates
-}
type alias ListCertificatesResponse =
    { nextToken : Maybe String
    , certificateSummaryList : Maybe (List CertificateSummary)
    }



listCertificatesResponseDecoder : JD.Decoder ListCertificatesResponse
listCertificatesResponseDecoder =
    JD.succeed ListCertificatesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CertificateSummaryList", "certificateSummaryList"]
            (JD.list certificateSummaryDecoder)
        )
        




listCertificatesResponseToString : ListCertificatesResponse -> String -- List (String, String)
listCertificatesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "certificateSummaryList" "" -- val.certificateSummaryList
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForCertificate
-}
type alias ListTagsForCertificateResponse =
    { tags : Maybe (List Tag)
    }



listTagsForCertificateResponseDecoder : JD.Decoder ListTagsForCertificateResponse
listTagsForCertificateResponseDecoder =
    JD.succeed ListTagsForCertificateResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        




listTagsForCertificateResponseToString : ListTagsForCertificateResponse -> String -- List (String, String)
listTagsForCertificateResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| One of

* `RecordType_CNAME`

-}
type RecordType
    = RecordType_CNAME



recordTypeDecoder : JD.Decoder RecordType
recordTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CNAME" ->
                        JD.succeed RecordType_CNAME


                    _ ->
                        JD.fail "bad thing"
            )




recordTypeToString : RecordType -> String
recordTypeToString val =
    case val of
        RecordType_CNAME ->
            "CNAME"




{-| One of

* `RenewalEligibility_ELIGIBLE`
* `RenewalEligibility_INELIGIBLE`

-}
type RenewalEligibility
    = RenewalEligibility_ELIGIBLE
    | RenewalEligibility_INELIGIBLE



renewalEligibilityDecoder : JD.Decoder RenewalEligibility
renewalEligibilityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ELIGIBLE" ->
                        JD.succeed RenewalEligibility_ELIGIBLE

                    "INELIGIBLE" ->
                        JD.succeed RenewalEligibility_INELIGIBLE


                    _ ->
                        JD.fail "bad thing"
            )




renewalEligibilityToString : RenewalEligibility -> String
renewalEligibilityToString val =
    case val of
        RenewalEligibility_ELIGIBLE ->
            "ELIGIBLE"

        RenewalEligibility_INELIGIBLE ->
            "INELIGIBLE"




{-| One of

* `RenewalStatus_PENDING_AUTO_RENEWAL`
* `RenewalStatus_PENDING_VALIDATION`
* `RenewalStatus_SUCCESS`
* `RenewalStatus_FAILED`

-}
type RenewalStatus
    = RenewalStatus_PENDING_AUTO_RENEWAL
    | RenewalStatus_PENDING_VALIDATION
    | RenewalStatus_SUCCESS
    | RenewalStatus_FAILED



renewalStatusDecoder : JD.Decoder RenewalStatus
renewalStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING_AUTO_RENEWAL" ->
                        JD.succeed RenewalStatus_PENDING_AUTO_RENEWAL

                    "PENDING_VALIDATION" ->
                        JD.succeed RenewalStatus_PENDING_VALIDATION

                    "SUCCESS" ->
                        JD.succeed RenewalStatus_SUCCESS

                    "FAILED" ->
                        JD.succeed RenewalStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




renewalStatusToString : RenewalStatus -> String
renewalStatusToString val =
    case val of
        RenewalStatus_PENDING_AUTO_RENEWAL ->
            "PENDING_AUTO_RENEWAL"

        RenewalStatus_PENDING_VALIDATION ->
            "PENDING_VALIDATION"

        RenewalStatus_SUCCESS ->
            "SUCCESS"

        RenewalStatus_FAILED ->
            "FAILED"




{-| <p>Contains information about the status of ACM's <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for the certificate. This structure exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
-}
type alias RenewalSummary =
    { renewalStatus : RenewalStatus
    , domainValidationOptions : (List DomainValidation)
    , renewalStatusReason : Maybe FailureReason
    , updatedAt : Posix
    }



renewalSummaryDecoder : JD.Decoder RenewalSummary
renewalSummaryDecoder =
    JD.succeed RenewalSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RenewalStatus", "renewalStatus"]
            renewalStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DomainValidationOptions", "domainValidationOptions"]
            (JD.list domainValidationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RenewalStatusReason", "renewalStatusReason"]
            failureReasonDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UpdatedAt", "updatedAt"]
            JDX.datetime
        )
        




renewalSummaryToString : RenewalSummary -> String -- List (String, String)
renewalSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "renewalStatus" "" -- val.renewalStatus
        
    --     |> Dict.insert
    --         "domainValidationOptions" "" -- val.domainValidationOptions
        
    --     |> Dict.insert
    --         "renewalStatusReason" "" -- val.renewalStatusReason
        
    --     |> Dict.insert
    --         "updatedAt" "" -- val.updatedAt
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from requestCertificate
-}
type alias RequestCertificateResponse =
    { certificateArn : Maybe String
    }



requestCertificateResponseDecoder : JD.Decoder RequestCertificateResponse
requestCertificateResponseDecoder =
    JD.succeed RequestCertificateResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CertificateArn", "certificateArn"]
            JD.string
        )
        




requestCertificateResponseToString : RequestCertificateResponse -> String -- List (String, String)
requestCertificateResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificateArn" "" -- val.certificateArn
        
    --     |> Dict.toList
    ""



{-| <p>Contains a DNS record value that you can use to can use to validate ownership or control of a domain. This is used by the <a>DescribeCertificate</a> action. </p>
-}
type alias ResourceRecord =
    { name : String
    , type_ : RecordType
    , value : String
    }



resourceRecordDecoder : JD.Decoder ResourceRecord
resourceRecordDecoder =
    JD.succeed ResourceRecord
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Type", "type"]
            recordTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Value", "value"]
            JD.string
        )
        




resourceRecordToString : ResourceRecord -> String -- List (String, String)
resourceRecordToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| One of

* `RevocationReason_UNSPECIFIED`
* `RevocationReason_KEY_COMPROMISE`
* `RevocationReason_CA_COMPROMISE`
* `RevocationReason_AFFILIATION_CHANGED`
* `RevocationReason_SUPERCEDED`
* `RevocationReason_CESSATION_OF_OPERATION`
* `RevocationReason_CERTIFICATE_HOLD`
* `RevocationReason_REMOVE_FROM_CRL`
* `RevocationReason_PRIVILEGE_WITHDRAWN`
* `RevocationReason_A_A_COMPROMISE`

-}
type RevocationReason
    = RevocationReason_UNSPECIFIED
    | RevocationReason_KEY_COMPROMISE
    | RevocationReason_CA_COMPROMISE
    | RevocationReason_AFFILIATION_CHANGED
    | RevocationReason_SUPERCEDED
    | RevocationReason_CESSATION_OF_OPERATION
    | RevocationReason_CERTIFICATE_HOLD
    | RevocationReason_REMOVE_FROM_CRL
    | RevocationReason_PRIVILEGE_WITHDRAWN
    | RevocationReason_A_A_COMPROMISE



revocationReasonDecoder : JD.Decoder RevocationReason
revocationReasonDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNSPECIFIED" ->
                        JD.succeed RevocationReason_UNSPECIFIED

                    "KEY_COMPROMISE" ->
                        JD.succeed RevocationReason_KEY_COMPROMISE

                    "CA_COMPROMISE" ->
                        JD.succeed RevocationReason_CA_COMPROMISE

                    "AFFILIATION_CHANGED" ->
                        JD.succeed RevocationReason_AFFILIATION_CHANGED

                    "SUPERCEDED" ->
                        JD.succeed RevocationReason_SUPERCEDED

                    "CESSATION_OF_OPERATION" ->
                        JD.succeed RevocationReason_CESSATION_OF_OPERATION

                    "CERTIFICATE_HOLD" ->
                        JD.succeed RevocationReason_CERTIFICATE_HOLD

                    "REMOVE_FROM_CRL" ->
                        JD.succeed RevocationReason_REMOVE_FROM_CRL

                    "PRIVILEGE_WITHDRAWN" ->
                        JD.succeed RevocationReason_PRIVILEGE_WITHDRAWN

                    "A_A_COMPROMISE" ->
                        JD.succeed RevocationReason_A_A_COMPROMISE


                    _ ->
                        JD.fail "bad thing"
            )




revocationReasonToString : RevocationReason -> String
revocationReasonToString val =
    case val of
        RevocationReason_UNSPECIFIED ->
            "UNSPECIFIED"

        RevocationReason_KEY_COMPROMISE ->
            "KEY_COMPROMISE"

        RevocationReason_CA_COMPROMISE ->
            "CA_COMPROMISE"

        RevocationReason_AFFILIATION_CHANGED ->
            "AFFILIATION_CHANGED"

        RevocationReason_SUPERCEDED ->
            "SUPERCEDED"

        RevocationReason_CESSATION_OF_OPERATION ->
            "CESSATION_OF_OPERATION"

        RevocationReason_CERTIFICATE_HOLD ->
            "CERTIFICATE_HOLD"

        RevocationReason_REMOVE_FROM_CRL ->
            "REMOVE_FROM_CRL"

        RevocationReason_PRIVILEGE_WITHDRAWN ->
            "PRIVILEGE_WITHDRAWN"

        RevocationReason_A_A_COMPROMISE ->
            "A_A_COMPROMISE"




{-| <p>A key-value pair that identifies or specifies metadata about an ACM resource.</p>
-}
type alias Tag =
    { key : String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
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



{-| One of

* `ValidationMethod_EMAIL`
* `ValidationMethod_DNS`

-}
type ValidationMethod
    = ValidationMethod_EMAIL
    | ValidationMethod_DNS



validationMethodDecoder : JD.Decoder ValidationMethod
validationMethodDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EMAIL" ->
                        JD.succeed ValidationMethod_EMAIL

                    "DNS" ->
                        JD.succeed ValidationMethod_DNS


                    _ ->
                        JD.fail "bad thing"
            )




validationMethodToString : ValidationMethod -> String
validationMethodToString val =
    case val of
        ValidationMethod_EMAIL ->
            "EMAIL"

        ValidationMethod_DNS ->
            "DNS"







{-| undefined
-}
type alias AddTagsToCertificateRequest =
    { certificateArn : String
    , tags : (List Tag)
    }


{-| undefined
-}
type alias DeleteCertificateRequest =
    { certificateArn : String
    }


{-| undefined
-}
type alias DescribeCertificateRequest =
    { certificateArn : String
    }


{-| undefined
-}
type alias ExportCertificateRequest =
    { certificateArn : String
    , passphrase : String
    }


{-| undefined
-}
type alias GetCertificateRequest =
    { certificateArn : String
    }


{-| undefined
-}
type alias ImportCertificateRequest =
    { certificateArn : Maybe String
    , certificate : String
    , privateKey : String
    , certificateChain : Maybe String
    }


{-| undefined
-}
type alias ListCertificatesRequest =
    { certificateStatuses : Maybe (List CertificateStatus)
    , includes : Maybe Filters
    , nextToken : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListTagsForCertificateRequest =
    { certificateArn : String
    }


{-| undefined
-}
type alias RemoveTagsFromCertificateRequest =
    { certificateArn : String
    , tags : (List Tag)
    }


{-| undefined
-}
type alias RenewCertificateRequest =
    { certificateArn : String
    }


{-| undefined
-}
type alias RequestCertificateRequest =
    { domainName : String
    , validationMethod : Maybe ValidationMethod
    , subjectAlternativeNames : Maybe (List String)
    , idempotencyToken : Maybe String
    , domainValidationOptions : Maybe (List DomainValidationOption)
    , options : Maybe CertificateOptions
    , certificateAuthorityArn : Maybe String
    }


{-| undefined
-}
type alias ResendValidationEmailRequest =
    { certificateArn : String
    , domain : String
    , validationDomain : String
    }


{-| undefined
-}
type alias UpdateCertificateOptionsRequest =
    { certificateArn : String
    , options : CertificateOptions
    }






addTagsToCertificateRequestEncoder : AddTagsToCertificateRequest -> JE.Value
addTagsToCertificateRequestEncoder data =
    []
        
        
        |> (::) ("CertificateArn", data.certificateArn |> (JE.string))
        
        
        
        |> (::) ("Tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object






certificateDetailEncoder : CertificateDetail -> JE.Value
certificateDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CertificateArn", data.certificateArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DomainName", data.domainName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SubjectAlternativeNames", data.subjectAlternativeNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (domainValidationEncoder))
            ("DomainValidationOptions", data.domainValidationOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Serial", data.serial)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Subject", data.subject)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Issuer", data.issuer)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("IssuedAt", data.issuedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ImportedAt", data.importedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (certificateStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("RevokedAt", data.revokedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (revocationReasonToString >> JE.string)
            ("RevocationReason", data.revocationReason)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("NotBefore", data.notBefore)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("NotAfter", data.notAfter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (keyAlgorithmToString >> JE.string)
            ("KeyAlgorithm", data.keyAlgorithm)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SignatureAlgorithm", data.signatureAlgorithm)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("InUseBy", data.inUseBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (failureReasonToString >> JE.string)
            ("FailureReason", data.failureReason)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (certificateTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (renewalSummaryEncoder)
            ("RenewalSummary", data.renewalSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (keyUsageEncoder))
            ("KeyUsages", data.keyUsages)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (extendedKeyUsageEncoder))
            ("ExtendedKeyUsages", data.extendedKeyUsages)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CertificateAuthorityArn", data.certificateAuthorityArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (renewalEligibilityToString >> JE.string)
            ("RenewalEligibility", data.renewalEligibility)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (certificateOptionsEncoder)
            ("Options", data.options)
        
        
        |> JE.object






certificateOptionsEncoder : CertificateOptions -> JE.Value
certificateOptionsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (certificateTransparencyLoggingPreferenceToString >> JE.string)
            ("CertificateTransparencyLoggingPreference", data.certificateTransparencyLoggingPreference)
        
        
        |> JE.object










certificateSummaryEncoder : CertificateSummary -> JE.Value
certificateSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CertificateArn", data.certificateArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DomainName", data.domainName)
        
        
        |> JE.object














deleteCertificateRequestEncoder : DeleteCertificateRequest -> JE.Value
deleteCertificateRequestEncoder data =
    []
        
        
        |> (::) ("CertificateArn", data.certificateArn |> (JE.string))
        
        
        |> JE.object






describeCertificateRequestEncoder : DescribeCertificateRequest -> JE.Value
describeCertificateRequestEncoder data =
    []
        
        
        |> (::) ("CertificateArn", data.certificateArn |> (JE.string))
        
        
        |> JE.object






describeCertificateResponseEncoder : DescribeCertificateResponse -> JE.Value
describeCertificateResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (certificateDetailEncoder)
            ("Certificate", data.certificate)
        
        
        |> JE.object










domainValidationEncoder : DomainValidation -> JE.Value
domainValidationEncoder data =
    []
        
        
        |> (::) ("DomainName", data.domainName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ValidationEmails", data.validationEmails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ValidationDomain", data.validationDomain)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (domainStatusToString >> JE.string)
            ("ValidationStatus", data.validationStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceRecordEncoder)
            ("ResourceRecord", data.resourceRecord)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (validationMethodToString >> JE.string)
            ("ValidationMethod", data.validationMethod)
        
        
        |> JE.object






domainValidationOptionEncoder : DomainValidationOption -> JE.Value
domainValidationOptionEncoder data =
    []
        
        
        |> (::) ("DomainName", data.domainName |> (JE.string))
        
        
        
        |> (::) ("ValidationDomain", data.validationDomain |> (JE.string))
        
        
        |> JE.object






exportCertificateRequestEncoder : ExportCertificateRequest -> JE.Value
exportCertificateRequestEncoder data =
    []
        
        
        |> (::) ("CertificateArn", data.certificateArn |> (JE.string))
        
        
        
        |> (::) ("Passphrase", data.passphrase |> (JE.string))
        
        
        |> JE.object






exportCertificateResponseEncoder : ExportCertificateResponse -> JE.Value
exportCertificateResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Certificate", data.certificate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CertificateChain", data.certificateChain)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PrivateKey", data.privateKey)
        
        
        |> JE.object






extendedKeyUsageEncoder : ExtendedKeyUsage -> JE.Value
extendedKeyUsageEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (extendedKeyUsageNameToString >> JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("OID", data.oID)
        
        
        |> JE.object














filtersEncoder : Filters -> JE.Value
filtersEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (extendedKeyUsageNameToString >> JE.string))
            ("extendedKeyUsage", data.extendedKeyUsage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (keyUsageNameToString >> JE.string))
            ("keyUsage", data.keyUsage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (keyAlgorithmToString >> JE.string))
            ("keyTypes", data.keyTypes)
        
        
        |> JE.object






getCertificateRequestEncoder : GetCertificateRequest -> JE.Value
getCertificateRequestEncoder data =
    []
        
        
        |> (::) ("CertificateArn", data.certificateArn |> (JE.string))
        
        
        |> JE.object






getCertificateResponseEncoder : GetCertificateResponse -> JE.Value
getCertificateResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Certificate", data.certificate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CertificateChain", data.certificateChain)
        
        
        |> JE.object






importCertificateRequestEncoder : ImportCertificateRequest -> JE.Value
importCertificateRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CertificateArn", data.certificateArn)
        
        
        
        |> (::) ("Certificate", data.certificate |> (JE.string))
        
        
        
        |> (::) ("PrivateKey", data.privateKey |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CertificateChain", data.certificateChain)
        
        
        |> JE.object






importCertificateResponseEncoder : ImportCertificateResponse -> JE.Value
importCertificateResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CertificateArn", data.certificateArn)
        
        
        |> JE.object










keyUsageEncoder : KeyUsage -> JE.Value
keyUsageEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (keyUsageNameToString >> JE.string)
            ("Name", data.name)
        
        
        |> JE.object










listCertificatesRequestEncoder : ListCertificatesRequest -> JE.Value
listCertificatesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (certificateStatusToString >> JE.string))
            ("CertificateStatuses", data.certificateStatuses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (filtersEncoder)
            ("Includes", data.includes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxItems", data.maxItems)
        
        
        |> JE.object






listCertificatesResponseEncoder : ListCertificatesResponse -> JE.Value
listCertificatesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (certificateSummaryEncoder))
            ("CertificateSummaryList", data.certificateSummaryList)
        
        
        |> JE.object






listTagsForCertificateRequestEncoder : ListTagsForCertificateRequest -> JE.Value
listTagsForCertificateRequestEncoder data =
    []
        
        
        |> (::) ("CertificateArn", data.certificateArn |> (JE.string))
        
        
        |> JE.object






listTagsForCertificateResponseEncoder : ListTagsForCertificateResponse -> JE.Value
listTagsForCertificateResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object










removeTagsFromCertificateRequestEncoder : RemoveTagsFromCertificateRequest -> JE.Value
removeTagsFromCertificateRequestEncoder data =
    []
        
        
        |> (::) ("CertificateArn", data.certificateArn |> (JE.string))
        
        
        
        |> (::) ("Tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object






renewCertificateRequestEncoder : RenewCertificateRequest -> JE.Value
renewCertificateRequestEncoder data =
    []
        
        
        |> (::) ("CertificateArn", data.certificateArn |> (JE.string))
        
        
        |> JE.object














renewalSummaryEncoder : RenewalSummary -> JE.Value
renewalSummaryEncoder data =
    []
        
        
        |> (::) ("RenewalStatus", data.renewalStatus |> (renewalStatusToString >> JE.string))
        
        
        
        |> (::) ("DomainValidationOptions", data.domainValidationOptions |> (JE.list (domainValidationEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (failureReasonToString >> JE.string)
            ("RenewalStatusReason", data.renewalStatusReason)
        
        
        
        |> (::) ("UpdatedAt", data.updatedAt |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






requestCertificateRequestEncoder : RequestCertificateRequest -> JE.Value
requestCertificateRequestEncoder data =
    []
        
        
        |> (::) ("DomainName", data.domainName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (validationMethodToString >> JE.string)
            ("ValidationMethod", data.validationMethod)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SubjectAlternativeNames", data.subjectAlternativeNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IdempotencyToken", data.idempotencyToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (domainValidationOptionEncoder))
            ("DomainValidationOptions", data.domainValidationOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (certificateOptionsEncoder)
            ("Options", data.options)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CertificateAuthorityArn", data.certificateAuthorityArn)
        
        
        |> JE.object






requestCertificateResponseEncoder : RequestCertificateResponse -> JE.Value
requestCertificateResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CertificateArn", data.certificateArn)
        
        
        |> JE.object






resendValidationEmailRequestEncoder : ResendValidationEmailRequest -> JE.Value
resendValidationEmailRequestEncoder data =
    []
        
        
        |> (::) ("CertificateArn", data.certificateArn |> (JE.string))
        
        
        
        |> (::) ("Domain", data.domain |> (JE.string))
        
        
        
        |> (::) ("ValidationDomain", data.validationDomain |> (JE.string))
        
        
        |> JE.object






resourceRecordEncoder : ResourceRecord -> JE.Value
resourceRecordEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("Type", data.type_ |> (recordTypeToString >> JE.string))
        
        
        
        |> (::) ("Value", data.value |> (JE.string))
        
        
        |> JE.object










tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object






updateCertificateOptionsRequestEncoder : UpdateCertificateOptionsRequest -> JE.Value
updateCertificateOptionsRequestEncoder data =
    []
        
        
        |> (::) ("CertificateArn", data.certificateArn |> (JE.string))
        
        
        
        |> (::) ("Options", data.options |> (certificateOptionsEncoder))
        
        
        |> JE.object









