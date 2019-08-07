module AWS.CloudHSM
    exposing
        ( service
        , addTagsToResource
        , createHapg
        , createHsm
        , CreateHsmOptions
        , createLunaClient
        , CreateLunaClientOptions
        , deleteHapg
        , deleteHsm
        , deleteLunaClient
        , describeHapg
        , describeHsm
        , DescribeHsmOptions
        , describeLunaClient
        , DescribeLunaClientOptions
        , getConfig
        , listAvailableZones
        , listHapgs
        , ListHapgsOptions
        , listHsms
        , ListHsmsOptions
        , listLunaClients
        , ListLunaClientsOptions
        , listTagsForResource
        , modifyHapg
        , ModifyHapgOptions
        , modifyHsm
        , ModifyHsmOptions
        , modifyLunaClient
        , removeTagsFromResource
        , AddTagsToResourceResponse
        , ClientVersion(..)
        , CloudHsmInternalException
        , CloudHsmObjectState(..)
        , CloudHsmServiceException
        , CreateHapgResponse
        , CreateHsmResponse
        , CreateLunaClientResponse
        , DeleteHapgResponse
        , DeleteHsmResponse
        , DeleteLunaClientResponse
        , DescribeHapgResponse
        , DescribeHsmResponse
        , DescribeLunaClientResponse
        , GetConfigResponse
        , HsmStatus(..)
        , InvalidRequestException
        , ListAvailableZonesResponse
        , ListHapgsResponse
        , ListHsmsResponse
        , ListLunaClientsResponse
        , ListTagsForResourceResponse
        , ModifyHapgResponse
        , ModifyHsmResponse
        , ModifyLunaClientResponse
        , RemoveTagsFromResourceResponse
        , SubscriptionType(..)
        , Tag
        )

{-| <fullname>AWS CloudHSM Service</fullname> <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addTagsToResource](#addTagsToResource)
* [createHapg](#createHapg)
* [createHsm](#createHsm)
* [CreateHsmOptions](#CreateHsmOptions)
* [createLunaClient](#createLunaClient)
* [CreateLunaClientOptions](#CreateLunaClientOptions)
* [deleteHapg](#deleteHapg)
* [deleteHsm](#deleteHsm)
* [deleteLunaClient](#deleteLunaClient)
* [describeHapg](#describeHapg)
* [describeHsm](#describeHsm)
* [DescribeHsmOptions](#DescribeHsmOptions)
* [describeLunaClient](#describeLunaClient)
* [DescribeLunaClientOptions](#DescribeLunaClientOptions)
* [getConfig](#getConfig)
* [listAvailableZones](#listAvailableZones)
* [listHapgs](#listHapgs)
* [ListHapgsOptions](#ListHapgsOptions)
* [listHsms](#listHsms)
* [ListHsmsOptions](#ListHsmsOptions)
* [listLunaClients](#listLunaClients)
* [ListLunaClientsOptions](#ListLunaClientsOptions)
* [listTagsForResource](#listTagsForResource)
* [modifyHapg](#modifyHapg)
* [ModifyHapgOptions](#ModifyHapgOptions)
* [modifyHsm](#modifyHsm)
* [ModifyHsmOptions](#ModifyHsmOptions)
* [modifyLunaClient](#modifyLunaClient)
* [removeTagsFromResource](#removeTagsFromResource)


@docs addTagsToResource,createHapg,createHsm,CreateHsmOptions,createLunaClient,CreateLunaClientOptions,deleteHapg,deleteHsm,deleteLunaClient,describeHapg,describeHsm,DescribeHsmOptions,describeLunaClient,DescribeLunaClientOptions,getConfig,listAvailableZones,listHapgs,ListHapgsOptions,listHsms,ListHsmsOptions,listLunaClients,ListLunaClientsOptions,listTagsForResource,modifyHapg,ModifyHapgOptions,modifyHsm,ModifyHsmOptions,modifyLunaClient,removeTagsFromResource

## Responses

* [AddTagsToResourceResponse](#AddTagsToResourceResponse)
* [CreateHapgResponse](#CreateHapgResponse)
* [CreateHsmResponse](#CreateHsmResponse)
* [CreateLunaClientResponse](#CreateLunaClientResponse)
* [DeleteHapgResponse](#DeleteHapgResponse)
* [DeleteHsmResponse](#DeleteHsmResponse)
* [DeleteLunaClientResponse](#DeleteLunaClientResponse)
* [DescribeHapgResponse](#DescribeHapgResponse)
* [DescribeHsmResponse](#DescribeHsmResponse)
* [DescribeLunaClientResponse](#DescribeLunaClientResponse)
* [GetConfigResponse](#GetConfigResponse)
* [ListAvailableZonesResponse](#ListAvailableZonesResponse)
* [ListHapgsResponse](#ListHapgsResponse)
* [ListHsmsResponse](#ListHsmsResponse)
* [ListLunaClientsResponse](#ListLunaClientsResponse)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [ModifyHapgResponse](#ModifyHapgResponse)
* [ModifyHsmResponse](#ModifyHsmResponse)
* [ModifyLunaClientResponse](#ModifyLunaClientResponse)
* [RemoveTagsFromResourceResponse](#RemoveTagsFromResourceResponse)


@docs AddTagsToResourceResponse,CreateHapgResponse,CreateHsmResponse,CreateLunaClientResponse,DeleteHapgResponse,DeleteHsmResponse,DeleteLunaClientResponse,DescribeHapgResponse,DescribeHsmResponse,DescribeLunaClientResponse,GetConfigResponse,ListAvailableZonesResponse,ListHapgsResponse,ListHsmsResponse,ListLunaClientsResponse,ListTagsForResourceResponse,ModifyHapgResponse,ModifyHsmResponse,ModifyLunaClientResponse,RemoveTagsFromResourceResponse

## Records

* [Tag](#Tag)


@docs Tag

## Unions

* [ClientVersion](#ClientVersion)
* [CloudHsmObjectState](#CloudHsmObjectState)
* [HsmStatus](#HsmStatus)
* [SubscriptionType](#SubscriptionType)


@docs ClientVersion,CloudHsmObjectState,HsmStatus,SubscriptionType

## Exceptions

* [CloudHsmInternalException](#CloudHsmInternalException)
* [CloudHsmServiceException](#CloudHsmServiceException)
* [InvalidRequestException](#InvalidRequestException)


@docs CloudHsmInternalException,CloudHsmServiceException,InvalidRequestException

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
        "cloudhsm"
        "2014-05-30"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "CloudHsmFrontendService")



-- OPERATIONS

{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Adds or overwrites one or more tags for the specified AWS CloudHSM resource.</p> <p>Each tag consists of a key and a value. Tag keys must be unique to each resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tagList` __:__ `(List Tag)`


-}

addTagsToResource :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddTagsToResourceResponse)

addTagsToResource resourceArn tagList =
    
    let
        requestInput = AddTagsToResourceRequest
            
            resourceArn
            
            tagList
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> addTagsToResourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddTagsToResource"
                
                (AWS.Core.Decode.ResultDecoder "AddTagsToResourceResponse" addTagsToResourceResponseDecoder)
                
            )





{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Creates a high-availability partition group. A high-availability partition group is a group of partitions that spans multiple physical HSMs.</p>

__Required Parameters__

* `label` __:__ `String`


-}

createHapg :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateHapgResponse)

createHapg label =
    
    let
        requestInput = CreateHapgRequest
            
            label
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createHapgRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateHapg"
                
                (AWS.Core.Decode.ResultDecoder "CreateHapgResponse" createHapgResponseDecoder)
                
            )





{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Creates an uninitialized HSM instance.</p> <p>There is an upfront fee charged for each HSM instance that you create with the <code>CreateHsm</code> operation. If you accidentally provision an HSM and want to request a refund, delete the instance using the <a>DeleteHsm</a> operation, go to the <a href="https://console.aws.amazon.com/support/home">AWS Support Center</a>, create a new case, and select <b>Account and Billing Support</b>.</p> <important> <p>It can take up to 20 minutes to create and provision an HSM. You can monitor the status of the HSM with the <a>DescribeHsm</a> operation. The HSM is ready to be initialized when the status changes to <code>RUNNING</code>.</p> </important>

__Required Parameters__

* `subnetId` __:__ `String`
* `sshKey` __:__ `String`
* `iamRoleArn` __:__ `String`
* `subscriptionType` __:__ `SubscriptionType`


-}

createHsm :
  
    String ->
  
    String ->
  
    String ->
  
    SubscriptionType ->
  
  
    ( CreateHsmOptions -> CreateHsmOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateHsmResponse)

createHsm subnetId sshKey iamRoleArn subscriptionType setOptions =
    
    let
        requestInput = CreateHsmRequest
            
            subnetId
            
            sshKey
            
            options.eniIp
            
            iamRoleArn
            
            options.externalId
            
            subscriptionType
            
            options.clientToken
            
            options.syslogIp
            
        
        options = setOptions (CreateHsmOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createHsmRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateHsm"
                
                (AWS.Core.Decode.ResultDecoder "CreateHsmResponse" createHsmResponseDecoder)
                
            )



{-| Options for a createHsm request
-}
type alias CreateHsmOptions =
    {
    eniIp : Maybe String,externalId : Maybe String,clientToken : Maybe String,syslogIp : Maybe String
    }



{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Creates an HSM client.</p>

__Required Parameters__

* `certificate` __:__ `String`


-}

createLunaClient :
  
    String ->
  
  
    ( CreateLunaClientOptions -> CreateLunaClientOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateLunaClientResponse)

createLunaClient certificate setOptions =
    
    let
        requestInput = CreateLunaClientRequest
            
            options.label
            
            certificate
            
        
        options = setOptions (CreateLunaClientOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createLunaClientRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateLunaClient"
                
                (AWS.Core.Decode.ResultDecoder "CreateLunaClientResponse" createLunaClientResponseDecoder)
                
            )



{-| Options for a createLunaClient request
-}
type alias CreateLunaClientOptions =
    {
    label : Maybe String
    }



{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Deletes a high-availability partition group.</p>

__Required Parameters__

* `hapgArn` __:__ `String`


-}

deleteHapg :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteHapgResponse)

deleteHapg hapgArn =
    
    let
        requestInput = DeleteHapgRequest
            
            hapgArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteHapgRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteHapg"
                
                (AWS.Core.Decode.ResultDecoder "DeleteHapgResponse" deleteHapgResponseDecoder)
                
            )





{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Deletes an HSM. After completion, this operation cannot be undone and your key material cannot be recovered.</p>

__Required Parameters__

* `hsmArn` __:__ `String`


-}

deleteHsm :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteHsmResponse)

deleteHsm hsmArn =
    
    let
        requestInput = DeleteHsmRequest
            
            hsmArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteHsmRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteHsm"
                
                (AWS.Core.Decode.ResultDecoder "DeleteHsmResponse" deleteHsmResponseDecoder)
                
            )





{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Deletes a client.</p>

__Required Parameters__

* `clientArn` __:__ `String`


-}

deleteLunaClient :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteLunaClientResponse)

deleteLunaClient clientArn =
    
    let
        requestInput = DeleteLunaClientRequest
            
            clientArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteLunaClientRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteLunaClient"
                
                (AWS.Core.Decode.ResultDecoder "DeleteLunaClientResponse" deleteLunaClientResponseDecoder)
                
            )





{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Retrieves information about a high-availability partition group.</p>

__Required Parameters__

* `hapgArn` __:__ `String`


-}

describeHapg :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeHapgResponse)

describeHapg hapgArn =
    
    let
        requestInput = DescribeHapgRequest
            
            hapgArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeHapgRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeHapg"
                
                (AWS.Core.Decode.ResultDecoder "DescribeHapgResponse" describeHapgResponseDecoder)
                
            )





{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Retrieves information about an HSM. You can identify the HSM by its ARN or its serial number.</p>

__Required Parameters__



-}

describeHsm :
  
  
    ( DescribeHsmOptions -> DescribeHsmOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeHsmResponse)

describeHsm setOptions =
    
    let
        requestInput = DescribeHsmRequest
            
            options.hsmArn
            
            options.hsmSerialNumber
            
        
        options = setOptions (DescribeHsmOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeHsmRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeHsm"
                
                (AWS.Core.Decode.ResultDecoder "DescribeHsmResponse" describeHsmResponseDecoder)
                
            )



{-| Options for a describeHsm request
-}
type alias DescribeHsmOptions =
    {
    hsmArn : Maybe String,hsmSerialNumber : Maybe String
    }



{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Retrieves information about an HSM client.</p>

__Required Parameters__



-}

describeLunaClient :
  
  
    ( DescribeLunaClientOptions -> DescribeLunaClientOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLunaClientResponse)

describeLunaClient setOptions =
    
    let
        requestInput = DescribeLunaClientRequest
            
            options.clientArn
            
            options.certificateFingerprint
            
        
        options = setOptions (DescribeLunaClientOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeLunaClientRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeLunaClient"
                
                (AWS.Core.Decode.ResultDecoder "DescribeLunaClientResponse" describeLunaClientResponseDecoder)
                
            )



{-| Options for a describeLunaClient request
-}
type alias DescribeLunaClientOptions =
    {
    clientArn : Maybe String,certificateFingerprint : Maybe String
    }



{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Gets the configuration files necessary to connect to all high availability partition groups the client is associated with.</p>

__Required Parameters__

* `clientArn` __:__ `String`
* `clientVersion` __:__ `ClientVersion`
* `hapgList` __:__ `(List String)`


-}

getConfig :
  
    String ->
  
    ClientVersion ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetConfigResponse)

getConfig clientArn clientVersion hapgList =
    
    let
        requestInput = GetConfigRequest
            
            clientArn
            
            clientVersion
            
            hapgList
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getConfigRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetConfig"
                
                (AWS.Core.Decode.ResultDecoder "GetConfigResponse" getConfigResponseDecoder)
                
            )





{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Lists the Availability Zones that have available AWS CloudHSM capacity.</p>

__Required Parameters__



-}

listAvailableZones :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAvailableZonesResponse)

listAvailableZones =
    
    let
        requestInput = ListAvailableZonesRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listAvailableZonesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListAvailableZones"
                
                (AWS.Core.Decode.ResultDecoder "ListAvailableZonesResponse" listAvailableZonesResponseDecoder)
                
            )





{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Lists the high-availability partition groups for the account.</p> <p>This operation supports pagination with the use of the <code>NextToken</code> member. If more results are available, the <code>NextToken</code> member of the response contains a token that you pass in the next call to <code>ListHapgs</code> to retrieve the next set of items.</p>

__Required Parameters__



-}

listHapgs :
  
  
    ( ListHapgsOptions -> ListHapgsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListHapgsResponse)

listHapgs setOptions =
    
    let
        requestInput = ListHapgsRequest
            
            options.nextToken
            
        
        options = setOptions (ListHapgsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listHapgsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListHapgs"
                
                (AWS.Core.Decode.ResultDecoder "ListHapgsResponse" listHapgsResponseDecoder)
                
            )



{-| Options for a listHapgs request
-}
type alias ListHapgsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Retrieves the identifiers of all of the HSMs provisioned for the current customer.</p> <p>This operation supports pagination with the use of the <code>NextToken</code> member. If more results are available, the <code>NextToken</code> member of the response contains a token that you pass in the next call to <code>ListHsms</code> to retrieve the next set of items.</p>

__Required Parameters__



-}

listHsms :
  
  
    ( ListHsmsOptions -> ListHsmsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListHsmsResponse)

listHsms setOptions =
    
    let
        requestInput = ListHsmsRequest
            
            options.nextToken
            
        
        options = setOptions (ListHsmsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listHsmsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListHsms"
                
                (AWS.Core.Decode.ResultDecoder "ListHsmsResponse" listHsmsResponseDecoder)
                
            )



{-| Options for a listHsms request
-}
type alias ListHsmsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Lists all of the clients.</p> <p>This operation supports pagination with the use of the <code>NextToken</code> member. If more results are available, the <code>NextToken</code> member of the response contains a token that you pass in the next call to <code>ListLunaClients</code> to retrieve the next set of items.</p>

__Required Parameters__



-}

listLunaClients :
  
  
    ( ListLunaClientsOptions -> ListLunaClientsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListLunaClientsResponse)

listLunaClients setOptions =
    
    let
        requestInput = ListLunaClientsRequest
            
            options.nextToken
            
        
        options = setOptions (ListLunaClientsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listLunaClientsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListLunaClients"
                
                (AWS.Core.Decode.ResultDecoder "ListLunaClientsResponse" listLunaClientsResponseDecoder)
                
            )



{-| Options for a listLunaClients request
-}
type alias ListLunaClientsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Returns a list of all tags for the specified AWS CloudHSM resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

listTagsForResource :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceResponse)

listTagsForResource resourceArn =
    
    let
        requestInput = ListTagsForResourceRequest
            
            resourceArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listTagsForResourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForResource"
                
                (AWS.Core.Decode.ResultDecoder "ListTagsForResourceResponse" listTagsForResourceResponseDecoder)
                
            )





{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Modifies an existing high-availability partition group.</p>

__Required Parameters__

* `hapgArn` __:__ `String`


-}

modifyHapg :
  
    String ->
  
  
    ( ModifyHapgOptions -> ModifyHapgOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyHapgResponse)

modifyHapg hapgArn setOptions =
    
    let
        requestInput = ModifyHapgRequest
            
            hapgArn
            
            options.label
            
            options.partitionSerialList
            
        
        options = setOptions (ModifyHapgOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> modifyHapgRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyHapg"
                
                (AWS.Core.Decode.ResultDecoder "ModifyHapgResponse" modifyHapgResponseDecoder)
                
            )



{-| Options for a modifyHapg request
-}
type alias ModifyHapgOptions =
    {
    label : Maybe String,partitionSerialList : Maybe (List String)
    }



{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Modifies an HSM.</p> <important> <p>This operation can result in the HSM being offline for up to 15 minutes while the AWS CloudHSM service is reconfigured. If you are modifying a production HSM, you should ensure that your AWS CloudHSM service is configured for high availability, and consider executing this operation during a maintenance window.</p> </important>

__Required Parameters__

* `hsmArn` __:__ `String`


-}

modifyHsm :
  
    String ->
  
  
    ( ModifyHsmOptions -> ModifyHsmOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyHsmResponse)

modifyHsm hsmArn setOptions =
    
    let
        requestInput = ModifyHsmRequest
            
            hsmArn
            
            options.subnetId
            
            options.eniIp
            
            options.iamRoleArn
            
            options.externalId
            
            options.syslogIp
            
        
        options = setOptions (ModifyHsmOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> modifyHsmRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyHsm"
                
                (AWS.Core.Decode.ResultDecoder "ModifyHsmResponse" modifyHsmResponseDecoder)
                
            )



{-| Options for a modifyHsm request
-}
type alias ModifyHsmOptions =
    {
    subnetId : Maybe String,eniIp : Maybe String,iamRoleArn : Maybe String,externalId : Maybe String,syslogIp : Maybe String
    }



{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Modifies the certificate used by the client.</p> <p>This action can potentially start a workflow to install the new certificate on the client's HSMs.</p>

__Required Parameters__

* `clientArn` __:__ `String`
* `certificate` __:__ `String`


-}

modifyLunaClient :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyLunaClientResponse)

modifyLunaClient clientArn certificate =
    
    let
        requestInput = ModifyLunaClientRequest
            
            clientArn
            
            certificate
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> modifyLunaClientRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyLunaClient"
                
                (AWS.Core.Decode.ResultDecoder "ModifyLunaClientResponse" modifyLunaClientResponseDecoder)
                
            )





{-| <p>This is documentation for <b>AWS CloudHSM Classic</b>. For more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM Classic FAQs</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS CloudHSM Classic User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p> <p> <b>For information about the current version of AWS CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>, and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API Reference</a>.</p> <p>Removes one or more tags from the specified AWS CloudHSM resource.</p> <p>To remove a tag, specify only the tag key to remove (not the value). To overwrite the value for an existing tag, use <a>AddTagsToResource</a>.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tagKeyList` __:__ `(List String)`


-}

removeTagsFromResource :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveTagsFromResourceResponse)

removeTagsFromResource resourceArn tagKeyList =
    
    let
        requestInput = RemoveTagsFromResourceRequest
            
            resourceArn
            
            tagKeyList
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> removeTagsFromResourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemoveTagsFromResource"
                
                (AWS.Core.Decode.ResultDecoder "RemoveTagsFromResourceResponse" removeTagsFromResourceResponseDecoder)
                
            )






{-| Type of HTTP response from addTagsToResource
-}
type alias AddTagsToResourceResponse =
    { status : String
    }



addTagsToResourceResponseDecoder : JD.Decoder AddTagsToResourceResponse
addTagsToResourceResponseDecoder =
    JD.succeed AddTagsToResourceResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Status", "status"]
            JD.string
        )
        




addTagsToResourceResponseToString : AddTagsToResourceResponse -> String -- List (String, String)
addTagsToResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| One of

* `ClientVersion_5.1`
* `ClientVersion_5.3`

-}
type ClientVersion
    = ClientVersion_5_1
    | ClientVersion_5_3



clientVersionDecoder : JD.Decoder ClientVersion
clientVersionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "5_1" ->
                        JD.succeed ClientVersion_5_1

                    "5_3" ->
                        JD.succeed ClientVersion_5_3


                    _ ->
                        JD.fail "bad thing"
            )




clientVersionToString : ClientVersion -> String
clientVersionToString val =
    case val of
        ClientVersion_5_1 ->
            "5_1"

        ClientVersion_5_3 ->
            "5_3"




{-| <p>Indicates that an internal error occurred.</p>
-}
type alias CloudHsmInternalException =
    { 
    }



cloudHsmInternalExceptionDecoder : JD.Decoder CloudHsmInternalException
cloudHsmInternalExceptionDecoder =
    JD.succeed CloudHsmInternalException
        




cloudHsmInternalExceptionToString : CloudHsmInternalException -> String -- List (String, String)
cloudHsmInternalExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `CloudHsmObjectState_READY`
* `CloudHsmObjectState_UPDATING`
* `CloudHsmObjectState_DEGRADED`

-}
type CloudHsmObjectState
    = CloudHsmObjectState_READY
    | CloudHsmObjectState_UPDATING
    | CloudHsmObjectState_DEGRADED



cloudHsmObjectStateDecoder : JD.Decoder CloudHsmObjectState
cloudHsmObjectStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "READY" ->
                        JD.succeed CloudHsmObjectState_READY

                    "UPDATING" ->
                        JD.succeed CloudHsmObjectState_UPDATING

                    "DEGRADED" ->
                        JD.succeed CloudHsmObjectState_DEGRADED


                    _ ->
                        JD.fail "bad thing"
            )




cloudHsmObjectStateToString : CloudHsmObjectState -> String
cloudHsmObjectStateToString val =
    case val of
        CloudHsmObjectState_READY ->
            "READY"

        CloudHsmObjectState_UPDATING ->
            "UPDATING"

        CloudHsmObjectState_DEGRADED ->
            "DEGRADED"




{-| <p>Indicates that an exception occurred in the AWS CloudHSM service.</p>
-}
type alias CloudHsmServiceException =
    { message : Maybe String
    , retryable : Maybe Bool
    }



cloudHsmServiceExceptionDecoder : JD.Decoder CloudHsmServiceException
cloudHsmServiceExceptionDecoder =
    JD.succeed CloudHsmServiceException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["retryable", "Retryable"]
            JD.bool
        )
        




cloudHsmServiceExceptionToString : CloudHsmServiceException -> String -- List (String, String)
cloudHsmServiceExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "retryable" "" -- val.retryable
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createHapg
-}
type alias CreateHapgResponse =
    { hapgArn : Maybe String
    }



createHapgResponseDecoder : JD.Decoder CreateHapgResponse
createHapgResponseDecoder =
    JD.succeed CreateHapgResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HapgArn", "hapgArn"]
            JD.string
        )
        




createHapgResponseToString : CreateHapgResponse -> String -- List (String, String)
createHapgResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hapgArn" "" -- val.hapgArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createHsm
-}
type alias CreateHsmResponse =
    { hsmArn : Maybe String
    }



createHsmResponseDecoder : JD.Decoder CreateHsmResponse
createHsmResponseDecoder =
    JD.succeed CreateHsmResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HsmArn", "hsmArn"]
            JD.string
        )
        




createHsmResponseToString : CreateHsmResponse -> String -- List (String, String)
createHsmResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hsmArn" "" -- val.hsmArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createLunaClient
-}
type alias CreateLunaClientResponse =
    { clientArn : Maybe String
    }



createLunaClientResponseDecoder : JD.Decoder CreateLunaClientResponse
createLunaClientResponseDecoder =
    JD.succeed CreateLunaClientResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientArn", "clientArn"]
            JD.string
        )
        




createLunaClientResponseToString : CreateLunaClientResponse -> String -- List (String, String)
createLunaClientResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "clientArn" "" -- val.clientArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteHapg
-}
type alias DeleteHapgResponse =
    { status : String
    }



deleteHapgResponseDecoder : JD.Decoder DeleteHapgResponse
deleteHapgResponseDecoder =
    JD.succeed DeleteHapgResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Status", "status"]
            JD.string
        )
        




deleteHapgResponseToString : DeleteHapgResponse -> String -- List (String, String)
deleteHapgResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteHsm
-}
type alias DeleteHsmResponse =
    { status : String
    }



deleteHsmResponseDecoder : JD.Decoder DeleteHsmResponse
deleteHsmResponseDecoder =
    JD.succeed DeleteHsmResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Status", "status"]
            JD.string
        )
        




deleteHsmResponseToString : DeleteHsmResponse -> String -- List (String, String)
deleteHsmResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteLunaClient
-}
type alias DeleteLunaClientResponse =
    { status : String
    }



deleteLunaClientResponseDecoder : JD.Decoder DeleteLunaClientResponse
deleteLunaClientResponseDecoder =
    JD.succeed DeleteLunaClientResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Status", "status"]
            JD.string
        )
        




deleteLunaClientResponseToString : DeleteLunaClientResponse -> String -- List (String, String)
deleteLunaClientResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeHapg
-}
type alias DescribeHapgResponse =
    { hapgArn : Maybe String
    , hapgSerial : Maybe String
    , hsmsLastActionFailed : Maybe (List String)
    , hsmsPendingDeletion : Maybe (List String)
    , hsmsPendingRegistration : Maybe (List String)
    , label : Maybe String
    , lastModifiedTimestamp : Maybe String
    , partitionSerialList : Maybe (List String)
    , state : Maybe CloudHsmObjectState
    }



describeHapgResponseDecoder : JD.Decoder DescribeHapgResponse
describeHapgResponseDecoder =
    JD.succeed DescribeHapgResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HapgArn", "hapgArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HapgSerial", "hapgSerial"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HsmsLastActionFailed", "hsmsLastActionFailed"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HsmsPendingDeletion", "hsmsPendingDeletion"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HsmsPendingRegistration", "hsmsPendingRegistration"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Label", "label"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastModifiedTimestamp", "lastModifiedTimestamp"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PartitionSerialList", "partitionSerialList"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            cloudHsmObjectStateDecoder
        )
        




describeHapgResponseToString : DescribeHapgResponse -> String -- List (String, String)
describeHapgResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hapgArn" "" -- val.hapgArn
        
    --     |> Dict.insert
    --         "hapgSerial" "" -- val.hapgSerial
        
    --     |> Dict.insert
    --         "hsmsLastActionFailed" "" -- val.hsmsLastActionFailed
        
    --     |> Dict.insert
    --         "hsmsPendingDeletion" "" -- val.hsmsPendingDeletion
        
    --     |> Dict.insert
    --         "hsmsPendingRegistration" "" -- val.hsmsPendingRegistration
        
    --     |> Dict.insert
    --         "label" "" -- val.label
        
    --     |> Dict.insert
    --         "lastModifiedTimestamp" "" -- val.lastModifiedTimestamp
        
    --     |> Dict.insert
    --         "partitionSerialList" "" -- val.partitionSerialList
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeHsm
-}
type alias DescribeHsmResponse =
    { hsmArn : Maybe String
    , status : Maybe HsmStatus
    , statusDetails : Maybe String
    , availabilityZone : Maybe String
    , eniId : Maybe String
    , eniIp : Maybe String
    , subscriptionType : Maybe SubscriptionType
    , subscriptionStartDate : Maybe String
    , subscriptionEndDate : Maybe String
    , vpcId : Maybe String
    , subnetId : Maybe String
    , iamRoleArn : Maybe String
    , serialNumber : Maybe String
    , vendorName : Maybe String
    , hsmType : Maybe String
    , softwareVersion : Maybe String
    , sshPublicKey : Maybe String
    , sshKeyLastUpdated : Maybe String
    , serverCertUri : Maybe String
    , serverCertLastUpdated : Maybe String
    , partitions : Maybe (List String)
    }



describeHsmResponseDecoder : JD.Decoder DescribeHsmResponse
describeHsmResponseDecoder =
    JD.succeed DescribeHsmResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HsmArn", "hsmArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            hsmStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusDetails", "statusDetails"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityZone", "availabilityZone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EniId", "eniId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EniIp", "eniIp"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubscriptionType", "subscriptionType"]
            subscriptionTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubscriptionStartDate", "subscriptionStartDate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubscriptionEndDate", "subscriptionEndDate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcId", "vpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetId", "subnetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IamRoleArn", "iamRoleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SerialNumber", "serialNumber"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VendorName", "vendorName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HsmType", "hsmType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SoftwareVersion", "softwareVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SshPublicKey", "sshPublicKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SshKeyLastUpdated", "sshKeyLastUpdated"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServerCertUri", "serverCertUri"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServerCertLastUpdated", "serverCertLastUpdated"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Partitions", "partitions"]
            (JD.list JD.string)
        )
        




describeHsmResponseToString : DescribeHsmResponse -> String -- List (String, String)
describeHsmResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hsmArn" "" -- val.hsmArn
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusDetails" "" -- val.statusDetails
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.insert
    --         "eniId" "" -- val.eniId
        
    --     |> Dict.insert
    --         "eniIp" "" -- val.eniIp
        
    --     |> Dict.insert
    --         "subscriptionType" "" -- val.subscriptionType
        
    --     |> Dict.insert
    --         "subscriptionStartDate" "" -- val.subscriptionStartDate
        
    --     |> Dict.insert
    --         "subscriptionEndDate" "" -- val.subscriptionEndDate
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "subnetId" "" -- val.subnetId
        
    --     |> Dict.insert
    --         "iamRoleArn" "" -- val.iamRoleArn
        
    --     |> Dict.insert
    --         "serialNumber" "" -- val.serialNumber
        
    --     |> Dict.insert
    --         "vendorName" "" -- val.vendorName
        
    --     |> Dict.insert
    --         "hsmType" "" -- val.hsmType
        
    --     |> Dict.insert
    --         "softwareVersion" "" -- val.softwareVersion
        
    --     |> Dict.insert
    --         "sshPublicKey" "" -- val.sshPublicKey
        
    --     |> Dict.insert
    --         "sshKeyLastUpdated" "" -- val.sshKeyLastUpdated
        
    --     |> Dict.insert
    --         "serverCertUri" "" -- val.serverCertUri
        
    --     |> Dict.insert
    --         "serverCertLastUpdated" "" -- val.serverCertLastUpdated
        
    --     |> Dict.insert
    --         "partitions" "" -- val.partitions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeLunaClient
-}
type alias DescribeLunaClientResponse =
    { clientArn : Maybe String
    , certificate : Maybe String
    , certificateFingerprint : Maybe String
    , lastModifiedTimestamp : Maybe String
    , label : Maybe String
    }



describeLunaClientResponseDecoder : JD.Decoder DescribeLunaClientResponse
describeLunaClientResponseDecoder =
    JD.succeed DescribeLunaClientResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientArn", "clientArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Certificate", "certificate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CertificateFingerprint", "certificateFingerprint"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastModifiedTimestamp", "lastModifiedTimestamp"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Label", "label"]
            JD.string
        )
        




describeLunaClientResponseToString : DescribeLunaClientResponse -> String -- List (String, String)
describeLunaClientResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "clientArn" "" -- val.clientArn
        
    --     |> Dict.insert
    --         "certificate" "" -- val.certificate
        
    --     |> Dict.insert
    --         "certificateFingerprint" "" -- val.certificateFingerprint
        
    --     |> Dict.insert
    --         "lastModifiedTimestamp" "" -- val.lastModifiedTimestamp
        
    --     |> Dict.insert
    --         "label" "" -- val.label
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getConfig
-}
type alias GetConfigResponse =
    { configType : Maybe String
    , configFile : Maybe String
    , configCred : Maybe String
    }



getConfigResponseDecoder : JD.Decoder GetConfigResponse
getConfigResponseDecoder =
    JD.succeed GetConfigResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConfigType", "configType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConfigFile", "configFile"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConfigCred", "configCred"]
            JD.string
        )
        




getConfigResponseToString : GetConfigResponse -> String -- List (String, String)
getConfigResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "configType" "" -- val.configType
        
    --     |> Dict.insert
    --         "configFile" "" -- val.configFile
        
    --     |> Dict.insert
    --         "configCred" "" -- val.configCred
        
    --     |> Dict.toList
    ""



{-| One of

* `HsmStatus_PENDING`
* `HsmStatus_RUNNING`
* `HsmStatus_UPDATING`
* `HsmStatus_SUSPENDED`
* `HsmStatus_TERMINATING`
* `HsmStatus_TERMINATED`
* `HsmStatus_DEGRADED`

-}
type HsmStatus
    = HsmStatus_PENDING
    | HsmStatus_RUNNING
    | HsmStatus_UPDATING
    | HsmStatus_SUSPENDED
    | HsmStatus_TERMINATING
    | HsmStatus_TERMINATED
    | HsmStatus_DEGRADED



hsmStatusDecoder : JD.Decoder HsmStatus
hsmStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed HsmStatus_PENDING

                    "RUNNING" ->
                        JD.succeed HsmStatus_RUNNING

                    "UPDATING" ->
                        JD.succeed HsmStatus_UPDATING

                    "SUSPENDED" ->
                        JD.succeed HsmStatus_SUSPENDED

                    "TERMINATING" ->
                        JD.succeed HsmStatus_TERMINATING

                    "TERMINATED" ->
                        JD.succeed HsmStatus_TERMINATED

                    "DEGRADED" ->
                        JD.succeed HsmStatus_DEGRADED


                    _ ->
                        JD.fail "bad thing"
            )




hsmStatusToString : HsmStatus -> String
hsmStatusToString val =
    case val of
        HsmStatus_PENDING ->
            "PENDING"

        HsmStatus_RUNNING ->
            "RUNNING"

        HsmStatus_UPDATING ->
            "UPDATING"

        HsmStatus_SUSPENDED ->
            "SUSPENDED"

        HsmStatus_TERMINATING ->
            "TERMINATING"

        HsmStatus_TERMINATED ->
            "TERMINATED"

        HsmStatus_DEGRADED ->
            "DEGRADED"




{-| <p>Indicates that one or more of the request parameters are not valid.</p>
-}
type alias InvalidRequestException =
    { 
    }



invalidRequestExceptionDecoder : JD.Decoder InvalidRequestException
invalidRequestExceptionDecoder =
    JD.succeed InvalidRequestException
        




invalidRequestExceptionToString : InvalidRequestException -> String -- List (String, String)
invalidRequestExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listAvailableZones
-}
type alias ListAvailableZonesResponse =
    { aZList : Maybe (List String)
    }



listAvailableZonesResponseDecoder : JD.Decoder ListAvailableZonesResponse
listAvailableZonesResponseDecoder =
    JD.succeed ListAvailableZonesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AZList", "aZList"]
            (JD.list JD.string)
        )
        




listAvailableZonesResponseToString : ListAvailableZonesResponse -> String -- List (String, String)
listAvailableZonesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "aZList" "" -- val.aZList
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listHapgs
-}
type alias ListHapgsResponse =
    { hapgList : (List String)
    , nextToken : Maybe String
    }



listHapgsResponseDecoder : JD.Decoder ListHapgsResponse
listHapgsResponseDecoder =
    JD.succeed ListHapgsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HapgList", "hapgList"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listHapgsResponseToString : ListHapgsResponse -> String -- List (String, String)
listHapgsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hapgList" "" -- val.hapgList
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listHsms
-}
type alias ListHsmsResponse =
    { hsmList : Maybe (List String)
    , nextToken : Maybe String
    }



listHsmsResponseDecoder : JD.Decoder ListHsmsResponse
listHsmsResponseDecoder =
    JD.succeed ListHsmsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HsmList", "hsmList"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listHsmsResponseToString : ListHsmsResponse -> String -- List (String, String)
listHsmsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hsmList" "" -- val.hsmList
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listLunaClients
-}
type alias ListLunaClientsResponse =
    { clientList : (List String)
    , nextToken : Maybe String
    }



listLunaClientsResponseDecoder : JD.Decoder ListLunaClientsResponse
listLunaClientsResponseDecoder =
    JD.succeed ListLunaClientsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ClientList", "clientList"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listLunaClientsResponseToString : ListLunaClientsResponse -> String -- List (String, String)
listLunaClientsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "clientList" "" -- val.clientList
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { tagList : (List Tag)
    }



listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JD.succeed ListTagsForResourceResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TagList", "tagList"]
            (JD.list tagDecoder)
        )
        




listTagsForResourceResponseToString : ListTagsForResourceResponse -> String -- List (String, String)
listTagsForResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tagList" "" -- val.tagList
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyHapg
-}
type alias ModifyHapgResponse =
    { hapgArn : Maybe String
    }



modifyHapgResponseDecoder : JD.Decoder ModifyHapgResponse
modifyHapgResponseDecoder =
    JD.succeed ModifyHapgResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HapgArn", "hapgArn"]
            JD.string
        )
        




modifyHapgResponseToString : ModifyHapgResponse -> String -- List (String, String)
modifyHapgResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hapgArn" "" -- val.hapgArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyHsm
-}
type alias ModifyHsmResponse =
    { hsmArn : Maybe String
    }



modifyHsmResponseDecoder : JD.Decoder ModifyHsmResponse
modifyHsmResponseDecoder =
    JD.succeed ModifyHsmResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HsmArn", "hsmArn"]
            JD.string
        )
        




modifyHsmResponseToString : ModifyHsmResponse -> String -- List (String, String)
modifyHsmResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "hsmArn" "" -- val.hsmArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyLunaClient
-}
type alias ModifyLunaClientResponse =
    { clientArn : Maybe String
    }



modifyLunaClientResponseDecoder : JD.Decoder ModifyLunaClientResponse
modifyLunaClientResponseDecoder =
    JD.succeed ModifyLunaClientResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientArn", "clientArn"]
            JD.string
        )
        




modifyLunaClientResponseToString : ModifyLunaClientResponse -> String -- List (String, String)
modifyLunaClientResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "clientArn" "" -- val.clientArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from removeTagsFromResource
-}
type alias RemoveTagsFromResourceResponse =
    { status : String
    }



removeTagsFromResourceResponseDecoder : JD.Decoder RemoveTagsFromResourceResponse
removeTagsFromResourceResponseDecoder =
    JD.succeed RemoveTagsFromResourceResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Status", "status"]
            JD.string
        )
        




removeTagsFromResourceResponseToString : RemoveTagsFromResourceResponse -> String -- List (String, String)
removeTagsFromResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| One of

* `SubscriptionType_PRODUCTION`

-}
type SubscriptionType
    = SubscriptionType_PRODUCTION



subscriptionTypeDecoder : JD.Decoder SubscriptionType
subscriptionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PRODUCTION" ->
                        JD.succeed SubscriptionType_PRODUCTION


                    _ ->
                        JD.fail "bad thing"
            )




subscriptionTypeToString : SubscriptionType -> String
subscriptionTypeToString val =
    case val of
        SubscriptionType_PRODUCTION ->
            "PRODUCTION"




{-| <p>A key-value pair that identifies or specifies metadata about an AWS CloudHSM resource.</p>
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






{-| undefined
-}
type alias AddTagsToResourceRequest =
    { resourceArn : String
    , tagList : (List Tag)
    }


{-| <p>Contains the inputs for the <a>CreateHapgRequest</a> action.</p>
-}
type alias CreateHapgRequest =
    { label : String
    }


{-| <p>Contains the inputs for the <code>CreateHsm</code> operation.</p>
-}
type alias CreateHsmRequest =
    { subnetId : String
    , sshKey : String
    , eniIp : Maybe String
    , iamRoleArn : String
    , externalId : Maybe String
    , subscriptionType : SubscriptionType
    , clientToken : Maybe String
    , syslogIp : Maybe String
    }


{-| <p>Contains the inputs for the <a>CreateLunaClient</a> action.</p>
-}
type alias CreateLunaClientRequest =
    { label : Maybe String
    , certificate : String
    }


{-| <p>Contains the inputs for the <a>DeleteHapg</a> action.</p>
-}
type alias DeleteHapgRequest =
    { hapgArn : String
    }


{-| <p>Contains the inputs for the <a>DeleteHsm</a> operation.</p>
-}
type alias DeleteHsmRequest =
    { hsmArn : String
    }


{-| undefined
-}
type alias DeleteLunaClientRequest =
    { clientArn : String
    }


{-| <p>Contains the inputs for the <a>DescribeHapg</a> action.</p>
-}
type alias DescribeHapgRequest =
    { hapgArn : String
    }


{-| <p>Contains the inputs for the <a>DescribeHsm</a> operation.</p>
-}
type alias DescribeHsmRequest =
    { hsmArn : Maybe String
    , hsmSerialNumber : Maybe String
    }


{-| undefined
-}
type alias DescribeLunaClientRequest =
    { clientArn : Maybe String
    , certificateFingerprint : Maybe String
    }


{-| undefined
-}
type alias GetConfigRequest =
    { clientArn : String
    , clientVersion : ClientVersion
    , hapgList : (List String)
    }


{-| <p>Contains the inputs for the <a>ListAvailableZones</a> action.</p>
-}
type alias ListAvailableZonesRequest =
    { 
    }


{-| undefined
-}
type alias ListHapgsRequest =
    { nextToken : Maybe String
    }


{-| undefined
-}
type alias ListHsmsRequest =
    { nextToken : Maybe String
    }


{-| undefined
-}
type alias ListLunaClientsRequest =
    { nextToken : Maybe String
    }


{-| undefined
-}
type alias ListTagsForResourceRequest =
    { resourceArn : String
    }


{-| undefined
-}
type alias ModifyHapgRequest =
    { hapgArn : String
    , label : Maybe String
    , partitionSerialList : Maybe (List String)
    }


{-| <p>Contains the inputs for the <a>ModifyHsm</a> operation.</p>
-}
type alias ModifyHsmRequest =
    { hsmArn : String
    , subnetId : Maybe String
    , eniIp : Maybe String
    , iamRoleArn : Maybe String
    , externalId : Maybe String
    , syslogIp : Maybe String
    }


{-| undefined
-}
type alias ModifyLunaClientRequest =
    { clientArn : String
    , certificate : String
    }


{-| undefined
-}
type alias RemoveTagsFromResourceRequest =
    { resourceArn : String
    , tagKeyList : (List String)
    }






addTagsToResourceRequestEncoder : AddTagsToResourceRequest -> JE.Value
addTagsToResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("TagList", data.tagList |> (JE.list (tagEncoder)))
        
        
        |> JE.object






addTagsToResourceResponseEncoder : AddTagsToResourceResponse -> JE.Value
addTagsToResourceResponseEncoder data =
    []
        
        
        |> (::) ("Status", data.status |> (JE.string))
        
        
        |> JE.object










cloudHsmInternalExceptionEncoder : CloudHsmInternalException -> JE.Value
cloudHsmInternalExceptionEncoder data =
    []
        
        |> JE.object










cloudHsmServiceExceptionEncoder : CloudHsmServiceException -> JE.Value
cloudHsmServiceExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("retryable", data.retryable)
        
        
        |> JE.object






createHapgRequestEncoder : CreateHapgRequest -> JE.Value
createHapgRequestEncoder data =
    []
        
        
        |> (::) ("Label", data.label |> (JE.string))
        
        
        |> JE.object






createHapgResponseEncoder : CreateHapgResponse -> JE.Value
createHapgResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HapgArn", data.hapgArn)
        
        
        |> JE.object






createHsmRequestEncoder : CreateHsmRequest -> JE.Value
createHsmRequestEncoder data =
    []
        
        
        |> (::) ("SubnetId", data.subnetId |> (JE.string))
        
        
        
        |> (::) ("SshKey", data.sshKey |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EniIp", data.eniIp)
        
        
        
        |> (::) ("IamRoleArn", data.iamRoleArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExternalId", data.externalId)
        
        
        
        |> (::) ("SubscriptionType", data.subscriptionType |> (subscriptionTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientToken", data.clientToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SyslogIp", data.syslogIp)
        
        
        |> JE.object






createHsmResponseEncoder : CreateHsmResponse -> JE.Value
createHsmResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HsmArn", data.hsmArn)
        
        
        |> JE.object






createLunaClientRequestEncoder : CreateLunaClientRequest -> JE.Value
createLunaClientRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Label", data.label)
        
        
        
        |> (::) ("Certificate", data.certificate |> (JE.string))
        
        
        |> JE.object






createLunaClientResponseEncoder : CreateLunaClientResponse -> JE.Value
createLunaClientResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientArn", data.clientArn)
        
        
        |> JE.object






deleteHapgRequestEncoder : DeleteHapgRequest -> JE.Value
deleteHapgRequestEncoder data =
    []
        
        
        |> (::) ("HapgArn", data.hapgArn |> (JE.string))
        
        
        |> JE.object






deleteHapgResponseEncoder : DeleteHapgResponse -> JE.Value
deleteHapgResponseEncoder data =
    []
        
        
        |> (::) ("Status", data.status |> (JE.string))
        
        
        |> JE.object






deleteHsmRequestEncoder : DeleteHsmRequest -> JE.Value
deleteHsmRequestEncoder data =
    []
        
        
        |> (::) ("HsmArn", data.hsmArn |> (JE.string))
        
        
        |> JE.object






deleteHsmResponseEncoder : DeleteHsmResponse -> JE.Value
deleteHsmResponseEncoder data =
    []
        
        
        |> (::) ("Status", data.status |> (JE.string))
        
        
        |> JE.object






deleteLunaClientRequestEncoder : DeleteLunaClientRequest -> JE.Value
deleteLunaClientRequestEncoder data =
    []
        
        
        |> (::) ("ClientArn", data.clientArn |> (JE.string))
        
        
        |> JE.object






deleteLunaClientResponseEncoder : DeleteLunaClientResponse -> JE.Value
deleteLunaClientResponseEncoder data =
    []
        
        
        |> (::) ("Status", data.status |> (JE.string))
        
        
        |> JE.object






describeHapgRequestEncoder : DescribeHapgRequest -> JE.Value
describeHapgRequestEncoder data =
    []
        
        
        |> (::) ("HapgArn", data.hapgArn |> (JE.string))
        
        
        |> JE.object






describeHapgResponseEncoder : DescribeHapgResponse -> JE.Value
describeHapgResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HapgArn", data.hapgArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HapgSerial", data.hapgSerial)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("HsmsLastActionFailed", data.hsmsLastActionFailed)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("HsmsPendingDeletion", data.hsmsPendingDeletion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("HsmsPendingRegistration", data.hsmsPendingRegistration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Label", data.label)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LastModifiedTimestamp", data.lastModifiedTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("PartitionSerialList", data.partitionSerialList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudHsmObjectStateToString >> JE.string)
            ("State", data.state)
        
        
        |> JE.object






describeHsmRequestEncoder : DescribeHsmRequest -> JE.Value
describeHsmRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HsmArn", data.hsmArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HsmSerialNumber", data.hsmSerialNumber)
        
        
        |> JE.object






describeHsmResponseEncoder : DescribeHsmResponse -> JE.Value
describeHsmResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HsmArn", data.hsmArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (hsmStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusDetails", data.statusDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AvailabilityZone", data.availabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EniId", data.eniId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EniIp", data.eniIp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (subscriptionTypeToString >> JE.string)
            ("SubscriptionType", data.subscriptionType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SubscriptionStartDate", data.subscriptionStartDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SubscriptionEndDate", data.subscriptionEndDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VpcId", data.vpcId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SubnetId", data.subnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IamRoleArn", data.iamRoleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SerialNumber", data.serialNumber)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VendorName", data.vendorName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HsmType", data.hsmType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SoftwareVersion", data.softwareVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshPublicKey", data.sshPublicKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SshKeyLastUpdated", data.sshKeyLastUpdated)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ServerCertUri", data.serverCertUri)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ServerCertLastUpdated", data.serverCertLastUpdated)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Partitions", data.partitions)
        
        
        |> JE.object






describeLunaClientRequestEncoder : DescribeLunaClientRequest -> JE.Value
describeLunaClientRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientArn", data.clientArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CertificateFingerprint", data.certificateFingerprint)
        
        
        |> JE.object






describeLunaClientResponseEncoder : DescribeLunaClientResponse -> JE.Value
describeLunaClientResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientArn", data.clientArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Certificate", data.certificate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CertificateFingerprint", data.certificateFingerprint)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LastModifiedTimestamp", data.lastModifiedTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Label", data.label)
        
        
        |> JE.object






getConfigRequestEncoder : GetConfigRequest -> JE.Value
getConfigRequestEncoder data =
    []
        
        
        |> (::) ("ClientArn", data.clientArn |> (JE.string))
        
        
        
        |> (::) ("ClientVersion", data.clientVersion |> (clientVersionToString >> JE.string))
        
        
        
        |> (::) ("HapgList", data.hapgList |> (JE.list (JE.string)))
        
        
        |> JE.object






getConfigResponseEncoder : GetConfigResponse -> JE.Value
getConfigResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ConfigType", data.configType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ConfigFile", data.configFile)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ConfigCred", data.configCred)
        
        
        |> JE.object










invalidRequestExceptionEncoder : InvalidRequestException -> JE.Value
invalidRequestExceptionEncoder data =
    []
        
        |> JE.object






listAvailableZonesRequestEncoder : ListAvailableZonesRequest -> JE.Value
listAvailableZonesRequestEncoder data =
    []
        
        |> JE.object






listAvailableZonesResponseEncoder : ListAvailableZonesResponse -> JE.Value
listAvailableZonesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("AZList", data.aZList)
        
        
        |> JE.object






listHapgsRequestEncoder : ListHapgsRequest -> JE.Value
listHapgsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listHapgsResponseEncoder : ListHapgsResponse -> JE.Value
listHapgsResponseEncoder data =
    []
        
        
        |> (::) ("HapgList", data.hapgList |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listHsmsRequestEncoder : ListHsmsRequest -> JE.Value
listHsmsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listHsmsResponseEncoder : ListHsmsResponse -> JE.Value
listHsmsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("HsmList", data.hsmList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listLunaClientsRequestEncoder : ListLunaClientsRequest -> JE.Value
listLunaClientsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listLunaClientsResponseEncoder : ListLunaClientsResponse -> JE.Value
listLunaClientsResponseEncoder data =
    []
        
        
        |> (::) ("ClientList", data.clientList |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listTagsForResourceRequestEncoder : ListTagsForResourceRequest -> JE.Value
listTagsForResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        |> JE.object






listTagsForResourceResponseEncoder : ListTagsForResourceResponse -> JE.Value
listTagsForResourceResponseEncoder data =
    []
        
        
        |> (::) ("TagList", data.tagList |> (JE.list (tagEncoder)))
        
        
        |> JE.object






modifyHapgRequestEncoder : ModifyHapgRequest -> JE.Value
modifyHapgRequestEncoder data =
    []
        
        
        |> (::) ("HapgArn", data.hapgArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Label", data.label)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("PartitionSerialList", data.partitionSerialList)
        
        
        |> JE.object






modifyHapgResponseEncoder : ModifyHapgResponse -> JE.Value
modifyHapgResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HapgArn", data.hapgArn)
        
        
        |> JE.object






modifyHsmRequestEncoder : ModifyHsmRequest -> JE.Value
modifyHsmRequestEncoder data =
    []
        
        
        |> (::) ("HsmArn", data.hsmArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SubnetId", data.subnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EniIp", data.eniIp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IamRoleArn", data.iamRoleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExternalId", data.externalId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SyslogIp", data.syslogIp)
        
        
        |> JE.object






modifyHsmResponseEncoder : ModifyHsmResponse -> JE.Value
modifyHsmResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HsmArn", data.hsmArn)
        
        
        |> JE.object






modifyLunaClientRequestEncoder : ModifyLunaClientRequest -> JE.Value
modifyLunaClientRequestEncoder data =
    []
        
        
        |> (::) ("ClientArn", data.clientArn |> (JE.string))
        
        
        
        |> (::) ("Certificate", data.certificate |> (JE.string))
        
        
        |> JE.object






modifyLunaClientResponseEncoder : ModifyLunaClientResponse -> JE.Value
modifyLunaClientResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientArn", data.clientArn)
        
        
        |> JE.object






removeTagsFromResourceRequestEncoder : RemoveTagsFromResourceRequest -> JE.Value
removeTagsFromResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("TagKeyList", data.tagKeyList |> (JE.list (JE.string)))
        
        
        |> JE.object






removeTagsFromResourceResponseEncoder : RemoveTagsFromResourceResponse -> JE.Value
removeTagsFromResourceResponseEncoder data =
    []
        
        
        |> (::) ("Status", data.status |> (JE.string))
        
        
        |> JE.object










tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> (::) ("Value", data.value |> (JE.string))
        
        
        |> JE.object





