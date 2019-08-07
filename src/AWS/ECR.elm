module AWS.ECR
    exposing
        ( service
        , batchCheckLayerAvailability
        , BatchCheckLayerAvailabilityOptions
        , batchDeleteImage
        , BatchDeleteImageOptions
        , batchGetImage
        , BatchGetImageOptions
        , completeLayerUpload
        , CompleteLayerUploadOptions
        , createRepository
        , CreateRepositoryOptions
        , deleteLifecyclePolicy
        , DeleteLifecyclePolicyOptions
        , deleteRepository
        , DeleteRepositoryOptions
        , deleteRepositoryPolicy
        , DeleteRepositoryPolicyOptions
        , describeImages
        , DescribeImagesOptions
        , describeRepositories
        , DescribeRepositoriesOptions
        , getAuthorizationToken
        , GetAuthorizationTokenOptions
        , getDownloadUrlForLayer
        , GetDownloadUrlForLayerOptions
        , getLifecyclePolicy
        , GetLifecyclePolicyOptions
        , getLifecyclePolicyPreview
        , GetLifecyclePolicyPreviewOptions
        , getRepositoryPolicy
        , GetRepositoryPolicyOptions
        , initiateLayerUpload
        , InitiateLayerUploadOptions
        , listImages
        , ListImagesOptions
        , listTagsForResource
        , putImage
        , PutImageOptions
        , putImageTagMutability
        , PutImageTagMutabilityOptions
        , putLifecyclePolicy
        , PutLifecyclePolicyOptions
        , setRepositoryPolicy
        , SetRepositoryPolicyOptions
        , startLifecyclePolicyPreview
        , StartLifecyclePolicyPreviewOptions
        , tagResource
        , untagResource
        , uploadLayerPart
        , UploadLayerPartOptions
        , AuthorizationData
        , BatchCheckLayerAvailabilityResponse
        , BatchDeleteImageResponse
        , BatchGetImageResponse
        , CompleteLayerUploadResponse
        , CreateRepositoryResponse
        , DeleteLifecyclePolicyResponse
        , DeleteRepositoryPolicyResponse
        , DeleteRepositoryResponse
        , DescribeImagesFilter
        , DescribeImagesResponse
        , DescribeRepositoriesResponse
        , GetAuthorizationTokenResponse
        , GetDownloadUrlForLayerResponse
        , GetLifecyclePolicyPreviewResponse
        , GetLifecyclePolicyResponse
        , GetRepositoryPolicyResponse
        , Image
        , ImageActionType(..)
        , ImageDetail
        , ImageFailure
        , ImageFailureCode(..)
        , ImageIdentifier
        , ImageTagMutability(..)
        , InitiateLayerUploadResponse
        , Layer
        , LayerAvailability(..)
        , LayerFailure
        , LayerFailureCode(..)
        , LifecyclePolicyPreviewFilter
        , LifecyclePolicyPreviewResult
        , LifecyclePolicyPreviewStatus(..)
        , LifecyclePolicyPreviewSummary
        , LifecyclePolicyRuleAction
        , ListImagesFilter
        , ListImagesResponse
        , ListTagsForResourceResponse
        , PutImageResponse
        , PutImageTagMutabilityResponse
        , PutLifecyclePolicyResponse
        , Repository
        , SetRepositoryPolicyResponse
        , StartLifecyclePolicyPreviewResponse
        , Tag
        , TagResourceResponse
        , TagStatus(..)
        , UntagResourceResponse
        , UploadLayerPartResponse
        )

{-| <fullname>Amazon Elastic Container Registry</fullname> <p>Amazon Elastic Container Registry (Amazon ECR) is a managed Docker registry service. Customers can use the familiar Docker CLI to push, pull, and manage images. Amazon ECR provides a secure, scalable, and reliable registry. Amazon ECR supports private Docker repositories with resource-based permissions using IAM so that specific users or Amazon EC2 instances can access repositories and images. Developers can use the Docker CLI to author and manage images.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [batchCheckLayerAvailability](#batchCheckLayerAvailability)
* [BatchCheckLayerAvailabilityOptions](#BatchCheckLayerAvailabilityOptions)
* [batchDeleteImage](#batchDeleteImage)
* [BatchDeleteImageOptions](#BatchDeleteImageOptions)
* [batchGetImage](#batchGetImage)
* [BatchGetImageOptions](#BatchGetImageOptions)
* [completeLayerUpload](#completeLayerUpload)
* [CompleteLayerUploadOptions](#CompleteLayerUploadOptions)
* [createRepository](#createRepository)
* [CreateRepositoryOptions](#CreateRepositoryOptions)
* [deleteLifecyclePolicy](#deleteLifecyclePolicy)
* [DeleteLifecyclePolicyOptions](#DeleteLifecyclePolicyOptions)
* [deleteRepository](#deleteRepository)
* [DeleteRepositoryOptions](#DeleteRepositoryOptions)
* [deleteRepositoryPolicy](#deleteRepositoryPolicy)
* [DeleteRepositoryPolicyOptions](#DeleteRepositoryPolicyOptions)
* [describeImages](#describeImages)
* [DescribeImagesOptions](#DescribeImagesOptions)
* [describeRepositories](#describeRepositories)
* [DescribeRepositoriesOptions](#DescribeRepositoriesOptions)
* [getAuthorizationToken](#getAuthorizationToken)
* [GetAuthorizationTokenOptions](#GetAuthorizationTokenOptions)
* [getDownloadUrlForLayer](#getDownloadUrlForLayer)
* [GetDownloadUrlForLayerOptions](#GetDownloadUrlForLayerOptions)
* [getLifecyclePolicy](#getLifecyclePolicy)
* [GetLifecyclePolicyOptions](#GetLifecyclePolicyOptions)
* [getLifecyclePolicyPreview](#getLifecyclePolicyPreview)
* [GetLifecyclePolicyPreviewOptions](#GetLifecyclePolicyPreviewOptions)
* [getRepositoryPolicy](#getRepositoryPolicy)
* [GetRepositoryPolicyOptions](#GetRepositoryPolicyOptions)
* [initiateLayerUpload](#initiateLayerUpload)
* [InitiateLayerUploadOptions](#InitiateLayerUploadOptions)
* [listImages](#listImages)
* [ListImagesOptions](#ListImagesOptions)
* [listTagsForResource](#listTagsForResource)
* [putImage](#putImage)
* [PutImageOptions](#PutImageOptions)
* [putImageTagMutability](#putImageTagMutability)
* [PutImageTagMutabilityOptions](#PutImageTagMutabilityOptions)
* [putLifecyclePolicy](#putLifecyclePolicy)
* [PutLifecyclePolicyOptions](#PutLifecyclePolicyOptions)
* [setRepositoryPolicy](#setRepositoryPolicy)
* [SetRepositoryPolicyOptions](#SetRepositoryPolicyOptions)
* [startLifecyclePolicyPreview](#startLifecyclePolicyPreview)
* [StartLifecyclePolicyPreviewOptions](#StartLifecyclePolicyPreviewOptions)
* [tagResource](#tagResource)
* [untagResource](#untagResource)
* [uploadLayerPart](#uploadLayerPart)
* [UploadLayerPartOptions](#UploadLayerPartOptions)


@docs batchCheckLayerAvailability,BatchCheckLayerAvailabilityOptions,batchDeleteImage,BatchDeleteImageOptions,batchGetImage,BatchGetImageOptions,completeLayerUpload,CompleteLayerUploadOptions,createRepository,CreateRepositoryOptions,deleteLifecyclePolicy,DeleteLifecyclePolicyOptions,deleteRepository,DeleteRepositoryOptions,deleteRepositoryPolicy,DeleteRepositoryPolicyOptions,describeImages,DescribeImagesOptions,describeRepositories,DescribeRepositoriesOptions,getAuthorizationToken,GetAuthorizationTokenOptions,getDownloadUrlForLayer,GetDownloadUrlForLayerOptions,getLifecyclePolicy,GetLifecyclePolicyOptions,getLifecyclePolicyPreview,GetLifecyclePolicyPreviewOptions,getRepositoryPolicy,GetRepositoryPolicyOptions,initiateLayerUpload,InitiateLayerUploadOptions,listImages,ListImagesOptions,listTagsForResource,putImage,PutImageOptions,putImageTagMutability,PutImageTagMutabilityOptions,putLifecyclePolicy,PutLifecyclePolicyOptions,setRepositoryPolicy,SetRepositoryPolicyOptions,startLifecyclePolicyPreview,StartLifecyclePolicyPreviewOptions,tagResource,untagResource,uploadLayerPart,UploadLayerPartOptions

## Responses

* [BatchCheckLayerAvailabilityResponse](#BatchCheckLayerAvailabilityResponse)
* [BatchDeleteImageResponse](#BatchDeleteImageResponse)
* [BatchGetImageResponse](#BatchGetImageResponse)
* [CompleteLayerUploadResponse](#CompleteLayerUploadResponse)
* [CreateRepositoryResponse](#CreateRepositoryResponse)
* [DeleteLifecyclePolicyResponse](#DeleteLifecyclePolicyResponse)
* [DeleteRepositoryPolicyResponse](#DeleteRepositoryPolicyResponse)
* [DeleteRepositoryResponse](#DeleteRepositoryResponse)
* [DescribeImagesResponse](#DescribeImagesResponse)
* [DescribeRepositoriesResponse](#DescribeRepositoriesResponse)
* [GetAuthorizationTokenResponse](#GetAuthorizationTokenResponse)
* [GetDownloadUrlForLayerResponse](#GetDownloadUrlForLayerResponse)
* [GetLifecyclePolicyPreviewResponse](#GetLifecyclePolicyPreviewResponse)
* [GetLifecyclePolicyResponse](#GetLifecyclePolicyResponse)
* [GetRepositoryPolicyResponse](#GetRepositoryPolicyResponse)
* [InitiateLayerUploadResponse](#InitiateLayerUploadResponse)
* [ListImagesResponse](#ListImagesResponse)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [PutImageResponse](#PutImageResponse)
* [PutImageTagMutabilityResponse](#PutImageTagMutabilityResponse)
* [PutLifecyclePolicyResponse](#PutLifecyclePolicyResponse)
* [SetRepositoryPolicyResponse](#SetRepositoryPolicyResponse)
* [StartLifecyclePolicyPreviewResponse](#StartLifecyclePolicyPreviewResponse)
* [TagResourceResponse](#TagResourceResponse)
* [UntagResourceResponse](#UntagResourceResponse)
* [UploadLayerPartResponse](#UploadLayerPartResponse)


@docs BatchCheckLayerAvailabilityResponse,BatchDeleteImageResponse,BatchGetImageResponse,CompleteLayerUploadResponse,CreateRepositoryResponse,DeleteLifecyclePolicyResponse,DeleteRepositoryPolicyResponse,DeleteRepositoryResponse,DescribeImagesResponse,DescribeRepositoriesResponse,GetAuthorizationTokenResponse,GetDownloadUrlForLayerResponse,GetLifecyclePolicyPreviewResponse,GetLifecyclePolicyResponse,GetRepositoryPolicyResponse,InitiateLayerUploadResponse,ListImagesResponse,ListTagsForResourceResponse,PutImageResponse,PutImageTagMutabilityResponse,PutLifecyclePolicyResponse,SetRepositoryPolicyResponse,StartLifecyclePolicyPreviewResponse,TagResourceResponse,UntagResourceResponse,UploadLayerPartResponse

## Records

* [AuthorizationData](#AuthorizationData)
* [DescribeImagesFilter](#DescribeImagesFilter)
* [Image](#Image)
* [ImageDetail](#ImageDetail)
* [ImageFailure](#ImageFailure)
* [ImageIdentifier](#ImageIdentifier)
* [Layer](#Layer)
* [LayerFailure](#LayerFailure)
* [LifecyclePolicyPreviewFilter](#LifecyclePolicyPreviewFilter)
* [LifecyclePolicyPreviewResult](#LifecyclePolicyPreviewResult)
* [LifecyclePolicyPreviewSummary](#LifecyclePolicyPreviewSummary)
* [LifecyclePolicyRuleAction](#LifecyclePolicyRuleAction)
* [ListImagesFilter](#ListImagesFilter)
* [Repository](#Repository)
* [Tag](#Tag)


@docs AuthorizationData,DescribeImagesFilter,Image,ImageDetail,ImageFailure,ImageIdentifier,Layer,LayerFailure,LifecyclePolicyPreviewFilter,LifecyclePolicyPreviewResult,LifecyclePolicyPreviewSummary,LifecyclePolicyRuleAction,ListImagesFilter,Repository,Tag

## Unions

* [ImageActionType](#ImageActionType)
* [ImageFailureCode](#ImageFailureCode)
* [ImageTagMutability](#ImageTagMutability)
* [LayerAvailability](#LayerAvailability)
* [LayerFailureCode](#LayerFailureCode)
* [LifecyclePolicyPreviewStatus](#LifecyclePolicyPreviewStatus)
* [TagStatus](#TagStatus)


@docs ImageActionType,ImageFailureCode,ImageTagMutability,LayerAvailability,LayerFailureCode,LifecyclePolicyPreviewStatus,TagStatus

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
        "api.ecr"
        "2015-09-21"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setSigningName "ecr" >> AWS.Core.Service.setTargetPrefix "AmazonEC2ContainerRegistry_V20150921")



-- OPERATIONS

{-| <p>Check the availability of multiple image layers in a specified registry and repository.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `layerDigests` __:__ `(List String)`


-}

batchCheckLayerAvailability :
  
    String ->
  
    (List String) ->
  
  
    ( BatchCheckLayerAvailabilityOptions -> BatchCheckLayerAvailabilityOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchCheckLayerAvailabilityResponse)

batchCheckLayerAvailability repositoryName layerDigests setOptions =
    
    let
        requestInput = BatchCheckLayerAvailabilityRequest
            
            options.registryId
            
            repositoryName
            
            layerDigests
            
        
        options = setOptions (BatchCheckLayerAvailabilityOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchCheckLayerAvailabilityRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchCheckLayerAvailability"
                
                (AWS.Core.Decode.ResultDecoder "BatchCheckLayerAvailabilityResponse" batchCheckLayerAvailabilityResponseDecoder)
                
            )



{-| Options for a batchCheckLayerAvailability request
-}
type alias BatchCheckLayerAvailabilityOptions =
    {
    registryId : Maybe String
    }



{-| <p>Deletes a list of specified images within a specified repository. Images are specified with either <code>imageTag</code> or <code>imageDigest</code>.</p> <p>You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository.</p> <p>You can completely delete an image (and all of its tags) by specifying the image's digest in your request.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `imageIds` __:__ `(List ImageIdentifier)`


-}

batchDeleteImage :
  
    String ->
  
    (List ImageIdentifier) ->
  
  
    ( BatchDeleteImageOptions -> BatchDeleteImageOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchDeleteImageResponse)

batchDeleteImage repositoryName imageIds setOptions =
    
    let
        requestInput = BatchDeleteImageRequest
            
            options.registryId
            
            repositoryName
            
            imageIds
            
        
        options = setOptions (BatchDeleteImageOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchDeleteImageRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchDeleteImage"
                
                (AWS.Core.Decode.ResultDecoder "BatchDeleteImageResponse" batchDeleteImageResponseDecoder)
                
            )



{-| Options for a batchDeleteImage request
-}
type alias BatchDeleteImageOptions =
    {
    registryId : Maybe String
    }



{-| <p>Gets detailed information for specified images within a specified repository. Images are specified with either <code>imageTag</code> or <code>imageDigest</code>.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `imageIds` __:__ `(List ImageIdentifier)`


-}

batchGetImage :
  
    String ->
  
    (List ImageIdentifier) ->
  
  
    ( BatchGetImageOptions -> BatchGetImageOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetImageResponse)

batchGetImage repositoryName imageIds setOptions =
    
    let
        requestInput = BatchGetImageRequest
            
            options.registryId
            
            repositoryName
            
            imageIds
            
            options.acceptedMediaTypes
            
        
        options = setOptions (BatchGetImageOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchGetImageRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchGetImage"
                
                (AWS.Core.Decode.ResultDecoder "BatchGetImageResponse" batchGetImageResponseDecoder)
                
            )



{-| Options for a batchGetImage request
-}
type alias BatchGetImageOptions =
    {
    registryId : Maybe String,acceptedMediaTypes : Maybe (List String)
    }



{-| <p>Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a <code>sha256</code> digest of the image layer for data validation purposes.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `uploadId` __:__ `String`
* `layerDigests` __:__ `(List String)`


-}

completeLayerUpload :
  
    String ->
  
    String ->
  
    (List String) ->
  
  
    ( CompleteLayerUploadOptions -> CompleteLayerUploadOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CompleteLayerUploadResponse)

completeLayerUpload repositoryName uploadId layerDigests setOptions =
    
    let
        requestInput = CompleteLayerUploadRequest
            
            options.registryId
            
            repositoryName
            
            uploadId
            
            layerDigests
            
        
        options = setOptions (CompleteLayerUploadOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> completeLayerUploadRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CompleteLayerUpload"
                
                (AWS.Core.Decode.ResultDecoder "CompleteLayerUploadResponse" completeLayerUploadResponseDecoder)
                
            )



{-| Options for a completeLayerUpload request
-}
type alias CompleteLayerUploadOptions =
    {
    registryId : Maybe String
    }



{-| <p>Creates an image repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

createRepository :
  
    String ->
  
  
    ( CreateRepositoryOptions -> CreateRepositoryOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateRepositoryResponse)

createRepository repositoryName setOptions =
    
    let
        requestInput = CreateRepositoryRequest
            
            repositoryName
            
            options.tags
            
            options.imageTagMutability
            
        
        options = setOptions (CreateRepositoryOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createRepositoryRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateRepository"
                
                (AWS.Core.Decode.ResultDecoder "CreateRepositoryResponse" createRepositoryResponseDecoder)
                
            )



{-| Options for a createRepository request
-}
type alias CreateRepositoryOptions =
    {
    tags : Maybe (List Tag),imageTagMutability : Maybe ImageTagMutability
    }



{-| <p>Deletes the specified lifecycle policy.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

deleteLifecyclePolicy :
  
    String ->
  
  
    ( DeleteLifecyclePolicyOptions -> DeleteLifecyclePolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteLifecyclePolicyResponse)

deleteLifecyclePolicy repositoryName setOptions =
    
    let
        requestInput = DeleteLifecyclePolicyRequest
            
            options.registryId
            
            repositoryName
            
        
        options = setOptions (DeleteLifecyclePolicyOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteLifecyclePolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteLifecyclePolicy"
                
                (AWS.Core.Decode.ResultDecoder "DeleteLifecyclePolicyResponse" deleteLifecyclePolicyResponseDecoder)
                
            )



{-| Options for a deleteLifecyclePolicy request
-}
type alias DeleteLifecyclePolicyOptions =
    {
    registryId : Maybe String
    }



{-| <p>Deletes an existing image repository. If a repository contains images, you must use the <code>force</code> option to delete it.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

deleteRepository :
  
    String ->
  
  
    ( DeleteRepositoryOptions -> DeleteRepositoryOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRepositoryResponse)

deleteRepository repositoryName setOptions =
    
    let
        requestInput = DeleteRepositoryRequest
            
            options.registryId
            
            repositoryName
            
            options.force
            
        
        options = setOptions (DeleteRepositoryOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRepositoryRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRepository"
                
                (AWS.Core.Decode.ResultDecoder "DeleteRepositoryResponse" deleteRepositoryResponseDecoder)
                
            )



{-| Options for a deleteRepository request
-}
type alias DeleteRepositoryOptions =
    {
    registryId : Maybe String,force : Maybe Bool
    }



{-| <p>Deletes the repository policy from a specified repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

deleteRepositoryPolicy :
  
    String ->
  
  
    ( DeleteRepositoryPolicyOptions -> DeleteRepositoryPolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRepositoryPolicyResponse)

deleteRepositoryPolicy repositoryName setOptions =
    
    let
        requestInput = DeleteRepositoryPolicyRequest
            
            options.registryId
            
            repositoryName
            
        
        options = setOptions (DeleteRepositoryPolicyOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRepositoryPolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRepositoryPolicy"
                
                (AWS.Core.Decode.ResultDecoder "DeleteRepositoryPolicyResponse" deleteRepositoryPolicyResponseDecoder)
                
            )



{-| Options for a deleteRepositoryPolicy request
-}
type alias DeleteRepositoryPolicyOptions =
    {
    registryId : Maybe String
    }



{-| <p>Returns metadata about the images in a repository, including image size, image tags, and creation date.</p> <note> <p>Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the <code>docker images</code> command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by <a>DescribeImages</a>.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

describeImages :
  
    String ->
  
  
    ( DescribeImagesOptions -> DescribeImagesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeImagesResponse)

describeImages repositoryName setOptions =
    
    let
        requestInput = DescribeImagesRequest
            
            options.registryId
            
            repositoryName
            
            options.imageIds
            
            options.nextToken
            
            options.maxResults
            
            options.filter
            
        
        options = setOptions (DescribeImagesOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeImagesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeImages"
                
                (AWS.Core.Decode.ResultDecoder "DescribeImagesResponse" describeImagesResponseDecoder)
                
            )



{-| Options for a describeImages request
-}
type alias DescribeImagesOptions =
    {
    registryId : Maybe String,imageIds : Maybe (List ImageIdentifier),nextToken : Maybe String,maxResults : Maybe Int,filter : Maybe DescribeImagesFilter
    }



{-| <p>Describes image repositories in a registry.</p>

__Required Parameters__



-}

describeRepositories :
  
  
    ( DescribeRepositoriesOptions -> DescribeRepositoriesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeRepositoriesResponse)

describeRepositories setOptions =
    
    let
        requestInput = DescribeRepositoriesRequest
            
            options.registryId
            
            options.repositoryNames
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (DescribeRepositoriesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeRepositoriesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeRepositories"
                
                (AWS.Core.Decode.ResultDecoder "DescribeRepositoriesResponse" describeRepositoriesResponseDecoder)
                
            )



{-| Options for a describeRepositories request
-}
type alias DescribeRepositoriesOptions =
    {
    registryId : Maybe String,repositoryNames : Maybe (List String),nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Retrieves a token that is valid for a specified registry for 12 hours. This command allows you to use the <code>docker</code> CLI to push and pull images with Amazon ECR. If you do not specify a registry, the default registry is assumed.</p> <p>The <code>authorizationToken</code> returned for each registry specified is a base64 encoded string that can be decoded and used in a <code>docker login</code> command to authenticate to a registry. The AWS CLI offers an <code>aws ecr get-login</code> command that simplifies the login process.</p>

__Required Parameters__



-}

getAuthorizationToken :
  
  
    ( GetAuthorizationTokenOptions -> GetAuthorizationTokenOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAuthorizationTokenResponse)

getAuthorizationToken setOptions =
    
    let
        requestInput = GetAuthorizationTokenRequest
            
            options.registryIds
            
        
        options = setOptions (GetAuthorizationTokenOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getAuthorizationTokenRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetAuthorizationToken"
                
                (AWS.Core.Decode.ResultDecoder "GetAuthorizationTokenResponse" getAuthorizationTokenResponseDecoder)
                
            )



{-| Options for a getAuthorizationToken request
-}
type alias GetAuthorizationTokenOptions =
    {
    registryIds : Maybe (List String)
    }



{-| <p>Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `layerDigest` __:__ `String`


-}

getDownloadUrlForLayer :
  
    String ->
  
    String ->
  
  
    ( GetDownloadUrlForLayerOptions -> GetDownloadUrlForLayerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDownloadUrlForLayerResponse)

getDownloadUrlForLayer repositoryName layerDigest setOptions =
    
    let
        requestInput = GetDownloadUrlForLayerRequest
            
            options.registryId
            
            repositoryName
            
            layerDigest
            
        
        options = setOptions (GetDownloadUrlForLayerOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDownloadUrlForLayerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDownloadUrlForLayer"
                
                (AWS.Core.Decode.ResultDecoder "GetDownloadUrlForLayerResponse" getDownloadUrlForLayerResponseDecoder)
                
            )



{-| Options for a getDownloadUrlForLayer request
-}
type alias GetDownloadUrlForLayerOptions =
    {
    registryId : Maybe String
    }



{-| <p>Retrieves the specified lifecycle policy.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

getLifecyclePolicy :
  
    String ->
  
  
    ( GetLifecyclePolicyOptions -> GetLifecyclePolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLifecyclePolicyResponse)

getLifecyclePolicy repositoryName setOptions =
    
    let
        requestInput = GetLifecyclePolicyRequest
            
            options.registryId
            
            repositoryName
            
        
        options = setOptions (GetLifecyclePolicyOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getLifecyclePolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetLifecyclePolicy"
                
                (AWS.Core.Decode.ResultDecoder "GetLifecyclePolicyResponse" getLifecyclePolicyResponseDecoder)
                
            )



{-| Options for a getLifecyclePolicy request
-}
type alias GetLifecyclePolicyOptions =
    {
    registryId : Maybe String
    }



{-| <p>Retrieves the results of the specified lifecycle policy preview request.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

getLifecyclePolicyPreview :
  
    String ->
  
  
    ( GetLifecyclePolicyPreviewOptions -> GetLifecyclePolicyPreviewOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLifecyclePolicyPreviewResponse)

getLifecyclePolicyPreview repositoryName setOptions =
    
    let
        requestInput = GetLifecyclePolicyPreviewRequest
            
            options.registryId
            
            repositoryName
            
            options.imageIds
            
            options.nextToken
            
            options.maxResults
            
            options.filter
            
        
        options = setOptions (GetLifecyclePolicyPreviewOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getLifecyclePolicyPreviewRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetLifecyclePolicyPreview"
                
                (AWS.Core.Decode.ResultDecoder "GetLifecyclePolicyPreviewResponse" getLifecyclePolicyPreviewResponseDecoder)
                
            )



{-| Options for a getLifecyclePolicyPreview request
-}
type alias GetLifecyclePolicyPreviewOptions =
    {
    registryId : Maybe String,imageIds : Maybe (List ImageIdentifier),nextToken : Maybe String,maxResults : Maybe Int,filter : Maybe LifecyclePolicyPreviewFilter
    }



{-| <p>Retrieves the repository policy for a specified repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

getRepositoryPolicy :
  
    String ->
  
  
    ( GetRepositoryPolicyOptions -> GetRepositoryPolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRepositoryPolicyResponse)

getRepositoryPolicy repositoryName setOptions =
    
    let
        requestInput = GetRepositoryPolicyRequest
            
            options.registryId
            
            repositoryName
            
        
        options = setOptions (GetRepositoryPolicyOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRepositoryPolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRepositoryPolicy"
                
                (AWS.Core.Decode.ResultDecoder "GetRepositoryPolicyResponse" getRepositoryPolicyResponseDecoder)
                
            )



{-| Options for a getRepositoryPolicy request
-}
type alias GetRepositoryPolicyOptions =
    {
    registryId : Maybe String
    }



{-| <p>Notify Amazon ECR that you intend to upload an image layer.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

initiateLayerUpload :
  
    String ->
  
  
    ( InitiateLayerUploadOptions -> InitiateLayerUploadOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper InitiateLayerUploadResponse)

initiateLayerUpload repositoryName setOptions =
    
    let
        requestInput = InitiateLayerUploadRequest
            
            options.registryId
            
            repositoryName
            
        
        options = setOptions (InitiateLayerUploadOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> initiateLayerUploadRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "InitiateLayerUpload"
                
                (AWS.Core.Decode.ResultDecoder "InitiateLayerUploadResponse" initiateLayerUploadResponseDecoder)
                
            )



{-| Options for a initiateLayerUpload request
-}
type alias InitiateLayerUploadOptions =
    {
    registryId : Maybe String
    }



{-| <p>Lists all the image IDs for a given repository.</p> <p>You can filter images based on whether or not they are tagged by setting the <code>tagStatus</code> parameter to <code>TAGGED</code> or <code>UNTAGGED</code>. For example, you can filter your results to return only <code>UNTAGGED</code> images and then pipe that result to a <a>BatchDeleteImage</a> operation to delete them. Or, you can filter your results to return only <code>TAGGED</code> images to list all of the tags in your repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

listImages :
  
    String ->
  
  
    ( ListImagesOptions -> ListImagesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListImagesResponse)

listImages repositoryName setOptions =
    
    let
        requestInput = ListImagesRequest
            
            options.registryId
            
            repositoryName
            
            options.nextToken
            
            options.maxResults
            
            options.filter
            
        
        options = setOptions (ListImagesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listImagesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListImages"
                
                (AWS.Core.Decode.ResultDecoder "ListImagesResponse" listImagesResponseDecoder)
                
            )



{-| Options for a listImages request
-}
type alias ListImagesOptions =
    {
    registryId : Maybe String,nextToken : Maybe String,maxResults : Maybe Int,filter : Maybe ListImagesFilter
    }



{-| <p>List the tags for an Amazon ECR resource.</p>

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





{-| <p>Creates or updates the image manifest and tags associated with an image.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `imageManifest` __:__ `String`


-}

putImage :
  
    String ->
  
    String ->
  
  
    ( PutImageOptions -> PutImageOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutImageResponse)

putImage repositoryName imageManifest setOptions =
    
    let
        requestInput = PutImageRequest
            
            options.registryId
            
            repositoryName
            
            imageManifest
            
            options.imageTag
            
        
        options = setOptions (PutImageOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putImageRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutImage"
                
                (AWS.Core.Decode.ResultDecoder "PutImageResponse" putImageResponseDecoder)
                
            )



{-| Options for a putImage request
-}
type alias PutImageOptions =
    {
    registryId : Maybe String,imageTag : Maybe String
    }



{-| <p>Updates the image tag mutability settings for a repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `imageTagMutability` __:__ `ImageTagMutability`


-}

putImageTagMutability :
  
    String ->
  
    ImageTagMutability ->
  
  
    ( PutImageTagMutabilityOptions -> PutImageTagMutabilityOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutImageTagMutabilityResponse)

putImageTagMutability repositoryName imageTagMutability setOptions =
    
    let
        requestInput = PutImageTagMutabilityRequest
            
            options.registryId
            
            repositoryName
            
            imageTagMutability
            
        
        options = setOptions (PutImageTagMutabilityOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putImageTagMutabilityRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutImageTagMutability"
                
                (AWS.Core.Decode.ResultDecoder "PutImageTagMutabilityResponse" putImageTagMutabilityResponseDecoder)
                
            )



{-| Options for a putImageTagMutability request
-}
type alias PutImageTagMutabilityOptions =
    {
    registryId : Maybe String
    }



{-| <p>Creates or updates a lifecycle policy. For information about lifecycle policy syntax, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html">Lifecycle Policy Template</a>.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `lifecyclePolicyText` __:__ `String`


-}

putLifecyclePolicy :
  
    String ->
  
    String ->
  
  
    ( PutLifecyclePolicyOptions -> PutLifecyclePolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutLifecyclePolicyResponse)

putLifecyclePolicy repositoryName lifecyclePolicyText setOptions =
    
    let
        requestInput = PutLifecyclePolicyRequest
            
            options.registryId
            
            repositoryName
            
            lifecyclePolicyText
            
        
        options = setOptions (PutLifecyclePolicyOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putLifecyclePolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutLifecyclePolicy"
                
                (AWS.Core.Decode.ResultDecoder "PutLifecyclePolicyResponse" putLifecyclePolicyResponseDecoder)
                
            )



{-| Options for a putLifecyclePolicy request
-}
type alias PutLifecyclePolicyOptions =
    {
    registryId : Maybe String
    }



{-| <p>Applies a repository policy on a specified repository to control access permissions. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/RepositoryPolicies.html">Amazon ECR Repository Policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `policyText` __:__ `String`


-}

setRepositoryPolicy :
  
    String ->
  
    String ->
  
  
    ( SetRepositoryPolicyOptions -> SetRepositoryPolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetRepositoryPolicyResponse)

setRepositoryPolicy repositoryName policyText setOptions =
    
    let
        requestInput = SetRepositoryPolicyRequest
            
            options.registryId
            
            repositoryName
            
            policyText
            
            options.force
            
        
        options = setOptions (SetRepositoryPolicyOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> setRepositoryPolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetRepositoryPolicy"
                
                (AWS.Core.Decode.ResultDecoder "SetRepositoryPolicyResponse" setRepositoryPolicyResponseDecoder)
                
            )



{-| Options for a setRepositoryPolicy request
-}
type alias SetRepositoryPolicyOptions =
    {
    registryId : Maybe String,force : Maybe Bool
    }



{-| <p>Starts a preview of the specified lifecycle policy. This allows you to see the results before creating the lifecycle policy.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

startLifecyclePolicyPreview :
  
    String ->
  
  
    ( StartLifecyclePolicyPreviewOptions -> StartLifecyclePolicyPreviewOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartLifecyclePolicyPreviewResponse)

startLifecyclePolicyPreview repositoryName setOptions =
    
    let
        requestInput = StartLifecyclePolicyPreviewRequest
            
            options.registryId
            
            repositoryName
            
            options.lifecyclePolicyText
            
        
        options = setOptions (StartLifecyclePolicyPreviewOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startLifecyclePolicyPreviewRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartLifecyclePolicyPreview"
                
                (AWS.Core.Decode.ResultDecoder "StartLifecyclePolicyPreviewResponse" startLifecyclePolicyPreviewResponseDecoder)
                
            )



{-| Options for a startLifecyclePolicyPreview request
-}
type alias StartLifecyclePolicyPreviewOptions =
    {
    registryId : Maybe String,lifecyclePolicyText : Maybe String
    }



{-| <p>Adds specified tags to a resource with the specified ARN. Existing tags on a resource are not changed if they are not specified in the request parameters.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

tagResource :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceResponse)

tagResource resourceArn tags =
    
    let
        requestInput = TagResourceRequest
            
            resourceArn
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> tagResourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TagResource"
                
                (AWS.Core.Decode.ResultDecoder "TagResourceResponse" tagResourceResponseDecoder)
                
            )





{-| <p>Deletes specified tags from a resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

untagResource :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceResponse)

untagResource resourceArn tagKeys =
    
    let
        requestInput = UntagResourceRequest
            
            resourceArn
            
            tagKeys
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> untagResourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UntagResource"
                
                (AWS.Core.Decode.ResultDecoder "UntagResourceResponse" untagResourceResponseDecoder)
                
            )





{-| <p>Uploads an image layer part to Amazon ECR.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `uploadId` __:__ `String`
* `partFirstByte` __:__ `Int`
* `partLastByte` __:__ `Int`
* `layerPartBlob` __:__ `String`


-}

uploadLayerPart :
  
    String ->
  
    String ->
  
    Int ->
  
    Int ->
  
    String ->
  
  
    ( UploadLayerPartOptions -> UploadLayerPartOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UploadLayerPartResponse)

uploadLayerPart repositoryName uploadId partFirstByte partLastByte layerPartBlob setOptions =
    
    let
        requestInput = UploadLayerPartRequest
            
            options.registryId
            
            repositoryName
            
            uploadId
            
            partFirstByte
            
            partLastByte
            
            layerPartBlob
            
        
        options = setOptions (UploadLayerPartOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> uploadLayerPartRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UploadLayerPart"
                
                (AWS.Core.Decode.ResultDecoder "UploadLayerPartResponse" uploadLayerPartResponseDecoder)
                
            )



{-| Options for a uploadLayerPart request
-}
type alias UploadLayerPartOptions =
    {
    registryId : Maybe String
    }




{-| <p>An object representing authorization data for an Amazon ECR registry.</p>
-}
type alias AuthorizationData =
    { authorizationToken : Maybe String
    , expiresAt : Maybe Posix
    , proxyEndpoint : Maybe String
    }



authorizationDataDecoder : JD.Decoder AuthorizationData
authorizationDataDecoder =
    JD.succeed AuthorizationData
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["authorizationToken", "AuthorizationToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["expiresAt", "ExpiresAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["proxyEndpoint", "ProxyEndpoint"]
            JD.string
        )
        




authorizationDataToString : AuthorizationData -> String -- List (String, String)
authorizationDataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "authorizationToken" "" -- val.authorizationToken
        
    --     |> Dict.insert
    --         "expiresAt" "" -- val.expiresAt
        
    --     |> Dict.insert
    --         "proxyEndpoint" "" -- val.proxyEndpoint
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchCheckLayerAvailability
-}
type alias BatchCheckLayerAvailabilityResponse =
    { layers : Maybe (List Layer)
    , failures : Maybe (List LayerFailure)
    }



batchCheckLayerAvailabilityResponseDecoder : JD.Decoder BatchCheckLayerAvailabilityResponse
batchCheckLayerAvailabilityResponseDecoder =
    JD.succeed BatchCheckLayerAvailabilityResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["layers", "Layers"]
            (JD.list layerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["failures", "Failures"]
            (JD.list layerFailureDecoder)
        )
        




batchCheckLayerAvailabilityResponseToString : BatchCheckLayerAvailabilityResponse -> String -- List (String, String)
batchCheckLayerAvailabilityResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "layers" "" -- val.layers
        
    --     |> Dict.insert
    --         "failures" "" -- val.failures
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchDeleteImage
-}
type alias BatchDeleteImageResponse =
    { imageIds : Maybe (List ImageIdentifier)
    , failures : Maybe (List ImageFailure)
    }



batchDeleteImageResponseDecoder : JD.Decoder BatchDeleteImageResponse
batchDeleteImageResponseDecoder =
    JD.succeed BatchDeleteImageResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageIds", "ImageIds"]
            (JD.list imageIdentifierDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["failures", "Failures"]
            (JD.list imageFailureDecoder)
        )
        




batchDeleteImageResponseToString : BatchDeleteImageResponse -> String -- List (String, String)
batchDeleteImageResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imageIds" "" -- val.imageIds
        
    --     |> Dict.insert
    --         "failures" "" -- val.failures
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchGetImage
-}
type alias BatchGetImageResponse =
    { images : Maybe (List Image)
    , failures : Maybe (List ImageFailure)
    }



batchGetImageResponseDecoder : JD.Decoder BatchGetImageResponse
batchGetImageResponseDecoder =
    JD.succeed BatchGetImageResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["images", "Images"]
            (JD.list imageDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["failures", "Failures"]
            (JD.list imageFailureDecoder)
        )
        




batchGetImageResponseToString : BatchGetImageResponse -> String -- List (String, String)
batchGetImageResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "images" "" -- val.images
        
    --     |> Dict.insert
    --         "failures" "" -- val.failures
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from completeLayerUpload
-}
type alias CompleteLayerUploadResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , uploadId : Maybe String
    , layerDigest : Maybe String
    }



completeLayerUploadResponseDecoder : JD.Decoder CompleteLayerUploadResponse
completeLayerUploadResponseDecoder =
    JD.succeed CompleteLayerUploadResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryId", "RegistryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["uploadId", "UploadId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["layerDigest", "LayerDigest"]
            JD.string
        )
        




completeLayerUploadResponseToString : CompleteLayerUploadResponse -> String -- List (String, String)
completeLayerUploadResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "registryId" "" -- val.registryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "uploadId" "" -- val.uploadId
        
    --     |> Dict.insert
    --         "layerDigest" "" -- val.layerDigest
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createRepository
-}
type alias CreateRepositoryResponse =
    { repository : Maybe Repository
    }



createRepositoryResponseDecoder : JD.Decoder CreateRepositoryResponse
createRepositoryResponseDecoder =
    JD.succeed CreateRepositoryResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repository", "Repository"]
            repositoryDecoder
        )
        




createRepositoryResponseToString : CreateRepositoryResponse -> String -- List (String, String)
createRepositoryResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repository" "" -- val.repository
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteLifecyclePolicy
-}
type alias DeleteLifecyclePolicyResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , lifecyclePolicyText : Maybe String
    , lastEvaluatedAt : Maybe Posix
    }



deleteLifecyclePolicyResponseDecoder : JD.Decoder DeleteLifecyclePolicyResponse
deleteLifecyclePolicyResponseDecoder =
    JD.succeed DeleteLifecyclePolicyResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryId", "RegistryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lifecyclePolicyText", "LifecyclePolicyText"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastEvaluatedAt", "LastEvaluatedAt"]
            JDX.datetime
        )
        




deleteLifecyclePolicyResponseToString : DeleteLifecyclePolicyResponse -> String -- List (String, String)
deleteLifecyclePolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "registryId" "" -- val.registryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "lifecyclePolicyText" "" -- val.lifecyclePolicyText
        
    --     |> Dict.insert
    --         "lastEvaluatedAt" "" -- val.lastEvaluatedAt
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteRepositoryPolicy
-}
type alias DeleteRepositoryPolicyResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , policyText : Maybe String
    }



deleteRepositoryPolicyResponseDecoder : JD.Decoder DeleteRepositoryPolicyResponse
deleteRepositoryPolicyResponseDecoder =
    JD.succeed DeleteRepositoryPolicyResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryId", "RegistryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["policyText", "PolicyText"]
            JD.string
        )
        




deleteRepositoryPolicyResponseToString : DeleteRepositoryPolicyResponse -> String -- List (String, String)
deleteRepositoryPolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "registryId" "" -- val.registryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "policyText" "" -- val.policyText
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteRepository
-}
type alias DeleteRepositoryResponse =
    { repository : Maybe Repository
    }



deleteRepositoryResponseDecoder : JD.Decoder DeleteRepositoryResponse
deleteRepositoryResponseDecoder =
    JD.succeed DeleteRepositoryResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repository", "Repository"]
            repositoryDecoder
        )
        




deleteRepositoryResponseToString : DeleteRepositoryResponse -> String -- List (String, String)
deleteRepositoryResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repository" "" -- val.repository
        
    --     |> Dict.toList
    ""



{-| <p>An object representing a filter on a <a>DescribeImages</a> operation.</p>
-}
type alias DescribeImagesFilter =
    { tagStatus : Maybe TagStatus
    }



describeImagesFilterDecoder : JD.Decoder DescribeImagesFilter
describeImagesFilterDecoder =
    JD.succeed DescribeImagesFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tagStatus", "TagStatus"]
            tagStatusDecoder
        )
        




describeImagesFilterToString : DescribeImagesFilter -> String -- List (String, String)
describeImagesFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tagStatus" "" -- val.tagStatus
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeImages
-}
type alias DescribeImagesResponse =
    { imageDetails : Maybe (List ImageDetail)
    , nextToken : Maybe String
    }



describeImagesResponseDecoder : JD.Decoder DescribeImagesResponse
describeImagesResponseDecoder =
    JD.succeed DescribeImagesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageDetails", "ImageDetails"]
            (JD.list imageDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeImagesResponseToString : DescribeImagesResponse -> String -- List (String, String)
describeImagesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imageDetails" "" -- val.imageDetails
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeRepositories
-}
type alias DescribeRepositoriesResponse =
    { repositories : Maybe (List Repository)
    , nextToken : Maybe String
    }



describeRepositoriesResponseDecoder : JD.Decoder DescribeRepositoriesResponse
describeRepositoriesResponseDecoder =
    JD.succeed DescribeRepositoriesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositories", "Repositories"]
            (JD.list repositoryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeRepositoriesResponseToString : DescribeRepositoriesResponse -> String -- List (String, String)
describeRepositoriesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositories" "" -- val.repositories
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getAuthorizationToken
-}
type alias GetAuthorizationTokenResponse =
    { authorizationData : Maybe (List AuthorizationData)
    }



getAuthorizationTokenResponseDecoder : JD.Decoder GetAuthorizationTokenResponse
getAuthorizationTokenResponseDecoder =
    JD.succeed GetAuthorizationTokenResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["authorizationData", "AuthorizationData"]
            (JD.list authorizationDataDecoder)
        )
        




getAuthorizationTokenResponseToString : GetAuthorizationTokenResponse -> String -- List (String, String)
getAuthorizationTokenResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "authorizationData" "" -- val.authorizationData
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDownloadUrlForLayer
-}
type alias GetDownloadUrlForLayerResponse =
    { downloadUrl : Maybe String
    , layerDigest : Maybe String
    }



getDownloadUrlForLayerResponseDecoder : JD.Decoder GetDownloadUrlForLayerResponse
getDownloadUrlForLayerResponseDecoder =
    JD.succeed GetDownloadUrlForLayerResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["downloadUrl", "DownloadUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["layerDigest", "LayerDigest"]
            JD.string
        )
        




getDownloadUrlForLayerResponseToString : GetDownloadUrlForLayerResponse -> String -- List (String, String)
getDownloadUrlForLayerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "downloadUrl" "" -- val.downloadUrl
        
    --     |> Dict.insert
    --         "layerDigest" "" -- val.layerDigest
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getLifecyclePolicyPreview
-}
type alias GetLifecyclePolicyPreviewResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , lifecyclePolicyText : Maybe String
    , status : Maybe LifecyclePolicyPreviewStatus
    , nextToken : Maybe String
    , previewResults : Maybe (List LifecyclePolicyPreviewResult)
    , summary : Maybe LifecyclePolicyPreviewSummary
    }



getLifecyclePolicyPreviewResponseDecoder : JD.Decoder GetLifecyclePolicyPreviewResponse
getLifecyclePolicyPreviewResponseDecoder =
    JD.succeed GetLifecyclePolicyPreviewResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryId", "RegistryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lifecyclePolicyText", "LifecyclePolicyText"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            lifecyclePolicyPreviewStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["previewResults", "PreviewResults"]
            (JD.list lifecyclePolicyPreviewResultDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["summary", "Summary"]
            lifecyclePolicyPreviewSummaryDecoder
        )
        




getLifecyclePolicyPreviewResponseToString : GetLifecyclePolicyPreviewResponse -> String -- List (String, String)
getLifecyclePolicyPreviewResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "registryId" "" -- val.registryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "lifecyclePolicyText" "" -- val.lifecyclePolicyText
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "previewResults" "" -- val.previewResults
        
    --     |> Dict.insert
    --         "summary" "" -- val.summary
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getLifecyclePolicy
-}
type alias GetLifecyclePolicyResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , lifecyclePolicyText : Maybe String
    , lastEvaluatedAt : Maybe Posix
    }



getLifecyclePolicyResponseDecoder : JD.Decoder GetLifecyclePolicyResponse
getLifecyclePolicyResponseDecoder =
    JD.succeed GetLifecyclePolicyResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryId", "RegistryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lifecyclePolicyText", "LifecyclePolicyText"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastEvaluatedAt", "LastEvaluatedAt"]
            JDX.datetime
        )
        




getLifecyclePolicyResponseToString : GetLifecyclePolicyResponse -> String -- List (String, String)
getLifecyclePolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "registryId" "" -- val.registryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "lifecyclePolicyText" "" -- val.lifecyclePolicyText
        
    --     |> Dict.insert
    --         "lastEvaluatedAt" "" -- val.lastEvaluatedAt
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRepositoryPolicy
-}
type alias GetRepositoryPolicyResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , policyText : Maybe String
    }



getRepositoryPolicyResponseDecoder : JD.Decoder GetRepositoryPolicyResponse
getRepositoryPolicyResponseDecoder =
    JD.succeed GetRepositoryPolicyResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryId", "RegistryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["policyText", "PolicyText"]
            JD.string
        )
        




getRepositoryPolicyResponseToString : GetRepositoryPolicyResponse -> String -- List (String, String)
getRepositoryPolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "registryId" "" -- val.registryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "policyText" "" -- val.policyText
        
    --     |> Dict.toList
    ""



{-| <p>An object representing an Amazon ECR image.</p>
-}
type alias Image =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , imageId : Maybe ImageIdentifier
    , imageManifest : Maybe String
    }



imageDecoder : JD.Decoder Image
imageDecoder =
    JD.succeed Image
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryId", "RegistryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageId", "ImageId"]
            imageIdentifierDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageManifest", "ImageManifest"]
            JD.string
        )
        




imageToString : Image -> String -- List (String, String)
imageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "registryId" "" -- val.registryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "imageId" "" -- val.imageId
        
    --     |> Dict.insert
    --         "imageManifest" "" -- val.imageManifest
        
    --     |> Dict.toList
    ""



{-| One of

* `ImageActionType_EXPIRE`

-}
type ImageActionType
    = ImageActionType_EXPIRE



imageActionTypeDecoder : JD.Decoder ImageActionType
imageActionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EXPIRE" ->
                        JD.succeed ImageActionType_EXPIRE


                    _ ->
                        JD.fail "bad thing"
            )




imageActionTypeToString : ImageActionType -> String
imageActionTypeToString val =
    case val of
        ImageActionType_EXPIRE ->
            "EXPIRE"




{-| <p>An object that describes an image returned by a <a>DescribeImages</a> operation.</p>
-}
type alias ImageDetail =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , imageDigest : Maybe String
    , imageTags : Maybe (List String)
    , imageSizeInBytes : Maybe Int
    , imagePushedAt : Maybe Posix
    }



imageDetailDecoder : JD.Decoder ImageDetail
imageDetailDecoder =
    JD.succeed ImageDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryId", "RegistryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageDigest", "ImageDigest"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageTags", "ImageTags"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageSizeInBytes", "ImageSizeInBytes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imagePushedAt", "ImagePushedAt"]
            JDX.datetime
        )
        




imageDetailToString : ImageDetail -> String -- List (String, String)
imageDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "registryId" "" -- val.registryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "imageDigest" "" -- val.imageDigest
        
    --     |> Dict.insert
    --         "imageTags" "" -- val.imageTags
        
    --     |> Dict.insert
    --         "imageSizeInBytes" "" -- val.imageSizeInBytes
        
    --     |> Dict.insert
    --         "imagePushedAt" "" -- val.imagePushedAt
        
    --     |> Dict.toList
    ""



{-| <p>An object representing an Amazon ECR image failure.</p>
-}
type alias ImageFailure =
    { imageId : Maybe ImageIdentifier
    , failureCode : Maybe ImageFailureCode
    , failureReason : Maybe String
    }



imageFailureDecoder : JD.Decoder ImageFailure
imageFailureDecoder =
    JD.succeed ImageFailure
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageId", "ImageId"]
            imageIdentifierDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["failureCode", "FailureCode"]
            imageFailureCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["failureReason", "FailureReason"]
            JD.string
        )
        




imageFailureToString : ImageFailure -> String -- List (String, String)
imageFailureToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imageId" "" -- val.imageId
        
    --     |> Dict.insert
    --         "failureCode" "" -- val.failureCode
        
    --     |> Dict.insert
    --         "failureReason" "" -- val.failureReason
        
    --     |> Dict.toList
    ""



{-| One of

* `ImageFailureCode_InvalidImageDigest`
* `ImageFailureCode_InvalidImageTag`
* `ImageFailureCode_ImageTagDoesNotMatchDigest`
* `ImageFailureCode_ImageNotFound`
* `ImageFailureCode_MissingDigestAndTag`

-}
type ImageFailureCode
    = ImageFailureCode_InvalidImageDigest
    | ImageFailureCode_InvalidImageTag
    | ImageFailureCode_ImageTagDoesNotMatchDigest
    | ImageFailureCode_ImageNotFound
    | ImageFailureCode_MissingDigestAndTag



imageFailureCodeDecoder : JD.Decoder ImageFailureCode
imageFailureCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InvalidImageDigest" ->
                        JD.succeed ImageFailureCode_InvalidImageDigest

                    "InvalidImageTag" ->
                        JD.succeed ImageFailureCode_InvalidImageTag

                    "ImageTagDoesNotMatchDigest" ->
                        JD.succeed ImageFailureCode_ImageTagDoesNotMatchDigest

                    "ImageNotFound" ->
                        JD.succeed ImageFailureCode_ImageNotFound

                    "MissingDigestAndTag" ->
                        JD.succeed ImageFailureCode_MissingDigestAndTag


                    _ ->
                        JD.fail "bad thing"
            )




imageFailureCodeToString : ImageFailureCode -> String
imageFailureCodeToString val =
    case val of
        ImageFailureCode_InvalidImageDigest ->
            "InvalidImageDigest"

        ImageFailureCode_InvalidImageTag ->
            "InvalidImageTag"

        ImageFailureCode_ImageTagDoesNotMatchDigest ->
            "ImageTagDoesNotMatchDigest"

        ImageFailureCode_ImageNotFound ->
            "ImageNotFound"

        ImageFailureCode_MissingDigestAndTag ->
            "MissingDigestAndTag"




{-| <p>An object with identifying information for an Amazon ECR image.</p>
-}
type alias ImageIdentifier =
    { imageDigest : Maybe String
    , imageTag : Maybe String
    }



imageIdentifierDecoder : JD.Decoder ImageIdentifier
imageIdentifierDecoder =
    JD.succeed ImageIdentifier
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageDigest", "ImageDigest"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageTag", "ImageTag"]
            JD.string
        )
        




imageIdentifierToString : ImageIdentifier -> String -- List (String, String)
imageIdentifierToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imageDigest" "" -- val.imageDigest
        
    --     |> Dict.insert
    --         "imageTag" "" -- val.imageTag
        
    --     |> Dict.toList
    ""



{-| One of

* `ImageTagMutability_MUTABLE`
* `ImageTagMutability_IMMUTABLE`

-}
type ImageTagMutability
    = ImageTagMutability_MUTABLE
    | ImageTagMutability_IMMUTABLE



imageTagMutabilityDecoder : JD.Decoder ImageTagMutability
imageTagMutabilityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "MUTABLE" ->
                        JD.succeed ImageTagMutability_MUTABLE

                    "IMMUTABLE" ->
                        JD.succeed ImageTagMutability_IMMUTABLE


                    _ ->
                        JD.fail "bad thing"
            )




imageTagMutabilityToString : ImageTagMutability -> String
imageTagMutabilityToString val =
    case val of
        ImageTagMutability_MUTABLE ->
            "MUTABLE"

        ImageTagMutability_IMMUTABLE ->
            "IMMUTABLE"




{-| Type of HTTP response from initiateLayerUpload
-}
type alias InitiateLayerUploadResponse =
    { uploadId : Maybe String
    , partSize : Maybe Int
    }



initiateLayerUploadResponseDecoder : JD.Decoder InitiateLayerUploadResponse
initiateLayerUploadResponseDecoder =
    JD.succeed InitiateLayerUploadResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["uploadId", "UploadId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["partSize", "PartSize"]
            JD.int
        )
        




initiateLayerUploadResponseToString : InitiateLayerUploadResponse -> String -- List (String, String)
initiateLayerUploadResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "uploadId" "" -- val.uploadId
        
    --     |> Dict.insert
    --         "partSize" "" -- val.partSize
        
    --     |> Dict.toList
    ""



{-| <p>An object representing an Amazon ECR image layer.</p>
-}
type alias Layer =
    { layerDigest : Maybe String
    , layerAvailability : Maybe LayerAvailability
    , layerSize : Maybe Int
    , mediaType : Maybe String
    }



layerDecoder : JD.Decoder Layer
layerDecoder =
    JD.succeed Layer
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["layerDigest", "LayerDigest"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["layerAvailability", "LayerAvailability"]
            layerAvailabilityDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["layerSize", "LayerSize"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mediaType", "MediaType"]
            JD.string
        )
        




layerToString : Layer -> String -- List (String, String)
layerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "layerDigest" "" -- val.layerDigest
        
    --     |> Dict.insert
    --         "layerAvailability" "" -- val.layerAvailability
        
    --     |> Dict.insert
    --         "layerSize" "" -- val.layerSize
        
    --     |> Dict.insert
    --         "mediaType" "" -- val.mediaType
        
    --     |> Dict.toList
    ""



{-| One of

* `LayerAvailability_AVAILABLE`
* `LayerAvailability_UNAVAILABLE`

-}
type LayerAvailability
    = LayerAvailability_AVAILABLE
    | LayerAvailability_UNAVAILABLE



layerAvailabilityDecoder : JD.Decoder LayerAvailability
layerAvailabilityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AVAILABLE" ->
                        JD.succeed LayerAvailability_AVAILABLE

                    "UNAVAILABLE" ->
                        JD.succeed LayerAvailability_UNAVAILABLE


                    _ ->
                        JD.fail "bad thing"
            )




layerAvailabilityToString : LayerAvailability -> String
layerAvailabilityToString val =
    case val of
        LayerAvailability_AVAILABLE ->
            "AVAILABLE"

        LayerAvailability_UNAVAILABLE ->
            "UNAVAILABLE"




{-| <p>An object representing an Amazon ECR image layer failure.</p>
-}
type alias LayerFailure =
    { layerDigest : Maybe String
    , failureCode : Maybe LayerFailureCode
    , failureReason : Maybe String
    }



layerFailureDecoder : JD.Decoder LayerFailure
layerFailureDecoder =
    JD.succeed LayerFailure
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["layerDigest", "LayerDigest"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["failureCode", "FailureCode"]
            layerFailureCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["failureReason", "FailureReason"]
            JD.string
        )
        




layerFailureToString : LayerFailure -> String -- List (String, String)
layerFailureToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "layerDigest" "" -- val.layerDigest
        
    --     |> Dict.insert
    --         "failureCode" "" -- val.failureCode
        
    --     |> Dict.insert
    --         "failureReason" "" -- val.failureReason
        
    --     |> Dict.toList
    ""



{-| One of

* `LayerFailureCode_InvalidLayerDigest`
* `LayerFailureCode_MissingLayerDigest`

-}
type LayerFailureCode
    = LayerFailureCode_InvalidLayerDigest
    | LayerFailureCode_MissingLayerDigest



layerFailureCodeDecoder : JD.Decoder LayerFailureCode
layerFailureCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InvalidLayerDigest" ->
                        JD.succeed LayerFailureCode_InvalidLayerDigest

                    "MissingLayerDigest" ->
                        JD.succeed LayerFailureCode_MissingLayerDigest


                    _ ->
                        JD.fail "bad thing"
            )




layerFailureCodeToString : LayerFailureCode -> String
layerFailureCodeToString val =
    case val of
        LayerFailureCode_InvalidLayerDigest ->
            "InvalidLayerDigest"

        LayerFailureCode_MissingLayerDigest ->
            "MissingLayerDigest"




{-| <p>The filter for the lifecycle policy preview.</p>
-}
type alias LifecyclePolicyPreviewFilter =
    { tagStatus : Maybe TagStatus
    }



lifecyclePolicyPreviewFilterDecoder : JD.Decoder LifecyclePolicyPreviewFilter
lifecyclePolicyPreviewFilterDecoder =
    JD.succeed LifecyclePolicyPreviewFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tagStatus", "TagStatus"]
            tagStatusDecoder
        )
        




lifecyclePolicyPreviewFilterToString : LifecyclePolicyPreviewFilter -> String -- List (String, String)
lifecyclePolicyPreviewFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tagStatus" "" -- val.tagStatus
        
    --     |> Dict.toList
    ""



{-| <p>The result of the lifecycle policy preview.</p>
-}
type alias LifecyclePolicyPreviewResult =
    { imageTags : Maybe (List String)
    , imageDigest : Maybe String
    , imagePushedAt : Maybe Posix
    , action : Maybe LifecyclePolicyRuleAction
    , appliedRulePriority : Maybe Int
    }



lifecyclePolicyPreviewResultDecoder : JD.Decoder LifecyclePolicyPreviewResult
lifecyclePolicyPreviewResultDecoder =
    JD.succeed LifecyclePolicyPreviewResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageTags", "ImageTags"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageDigest", "ImageDigest"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imagePushedAt", "ImagePushedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["action", "Action"]
            lifecyclePolicyRuleActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["appliedRulePriority", "AppliedRulePriority"]
            JD.int
        )
        




lifecyclePolicyPreviewResultToString : LifecyclePolicyPreviewResult -> String -- List (String, String)
lifecyclePolicyPreviewResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imageTags" "" -- val.imageTags
        
    --     |> Dict.insert
    --         "imageDigest" "" -- val.imageDigest
        
    --     |> Dict.insert
    --         "imagePushedAt" "" -- val.imagePushedAt
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "appliedRulePriority" "" -- val.appliedRulePriority
        
    --     |> Dict.toList
    ""



{-| One of

* `LifecyclePolicyPreviewStatus_IN_PROGRESS`
* `LifecyclePolicyPreviewStatus_COMPLETE`
* `LifecyclePolicyPreviewStatus_EXPIRED`
* `LifecyclePolicyPreviewStatus_FAILED`

-}
type LifecyclePolicyPreviewStatus
    = LifecyclePolicyPreviewStatus_IN_PROGRESS
    | LifecyclePolicyPreviewStatus_COMPLETE
    | LifecyclePolicyPreviewStatus_EXPIRED
    | LifecyclePolicyPreviewStatus_FAILED



lifecyclePolicyPreviewStatusDecoder : JD.Decoder LifecyclePolicyPreviewStatus
lifecyclePolicyPreviewStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IN_PROGRESS" ->
                        JD.succeed LifecyclePolicyPreviewStatus_IN_PROGRESS

                    "COMPLETE" ->
                        JD.succeed LifecyclePolicyPreviewStatus_COMPLETE

                    "EXPIRED" ->
                        JD.succeed LifecyclePolicyPreviewStatus_EXPIRED

                    "FAILED" ->
                        JD.succeed LifecyclePolicyPreviewStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




lifecyclePolicyPreviewStatusToString : LifecyclePolicyPreviewStatus -> String
lifecyclePolicyPreviewStatusToString val =
    case val of
        LifecyclePolicyPreviewStatus_IN_PROGRESS ->
            "IN_PROGRESS"

        LifecyclePolicyPreviewStatus_COMPLETE ->
            "COMPLETE"

        LifecyclePolicyPreviewStatus_EXPIRED ->
            "EXPIRED"

        LifecyclePolicyPreviewStatus_FAILED ->
            "FAILED"




{-| <p>The summary of the lifecycle policy preview request.</p>
-}
type alias LifecyclePolicyPreviewSummary =
    { expiringImageTotalCount : Maybe Int
    }



lifecyclePolicyPreviewSummaryDecoder : JD.Decoder LifecyclePolicyPreviewSummary
lifecyclePolicyPreviewSummaryDecoder =
    JD.succeed LifecyclePolicyPreviewSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["expiringImageTotalCount", "ExpiringImageTotalCount"]
            JD.int
        )
        




lifecyclePolicyPreviewSummaryToString : LifecyclePolicyPreviewSummary -> String -- List (String, String)
lifecyclePolicyPreviewSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "expiringImageTotalCount" "" -- val.expiringImageTotalCount
        
    --     |> Dict.toList
    ""



{-| <p>The type of action to be taken.</p>
-}
type alias LifecyclePolicyRuleAction =
    { type_ : Maybe ImageActionType
    }



lifecyclePolicyRuleActionDecoder : JD.Decoder LifecyclePolicyRuleAction
lifecyclePolicyRuleActionDecoder =
    JD.succeed LifecyclePolicyRuleAction
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            imageActionTypeDecoder
        )
        




lifecyclePolicyRuleActionToString : LifecyclePolicyRuleAction -> String -- List (String, String)
lifecyclePolicyRuleActionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.toList
    ""



{-| <p>An object representing a filter on a <a>ListImages</a> operation.</p>
-}
type alias ListImagesFilter =
    { tagStatus : Maybe TagStatus
    }



listImagesFilterDecoder : JD.Decoder ListImagesFilter
listImagesFilterDecoder =
    JD.succeed ListImagesFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tagStatus", "TagStatus"]
            tagStatusDecoder
        )
        




listImagesFilterToString : ListImagesFilter -> String -- List (String, String)
listImagesFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tagStatus" "" -- val.tagStatus
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listImages
-}
type alias ListImagesResponse =
    { imageIds : Maybe (List ImageIdentifier)
    , nextToken : Maybe String
    }



listImagesResponseDecoder : JD.Decoder ListImagesResponse
listImagesResponseDecoder =
    JD.succeed ListImagesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageIds", "ImageIds"]
            (JD.list imageIdentifierDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listImagesResponseToString : ListImagesResponse -> String -- List (String, String)
listImagesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imageIds" "" -- val.imageIds
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { tags : Maybe (List Tag)
    }



listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JD.succeed ListTagsForResourceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




listTagsForResourceResponseToString : ListTagsForResourceResponse -> String -- List (String, String)
listTagsForResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putImage
-}
type alias PutImageResponse =
    { image : Maybe Image
    }



putImageResponseDecoder : JD.Decoder PutImageResponse
putImageResponseDecoder =
    JD.succeed PutImageResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["image", "Image"]
            imageDecoder
        )
        




putImageResponseToString : PutImageResponse -> String -- List (String, String)
putImageResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "image" "" -- val.image
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putImageTagMutability
-}
type alias PutImageTagMutabilityResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , imageTagMutability : Maybe ImageTagMutability
    }



putImageTagMutabilityResponseDecoder : JD.Decoder PutImageTagMutabilityResponse
putImageTagMutabilityResponseDecoder =
    JD.succeed PutImageTagMutabilityResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryId", "RegistryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageTagMutability", "ImageTagMutability"]
            imageTagMutabilityDecoder
        )
        




putImageTagMutabilityResponseToString : PutImageTagMutabilityResponse -> String -- List (String, String)
putImageTagMutabilityResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "registryId" "" -- val.registryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "imageTagMutability" "" -- val.imageTagMutability
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putLifecyclePolicy
-}
type alias PutLifecyclePolicyResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , lifecyclePolicyText : Maybe String
    }



putLifecyclePolicyResponseDecoder : JD.Decoder PutLifecyclePolicyResponse
putLifecyclePolicyResponseDecoder =
    JD.succeed PutLifecyclePolicyResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryId", "RegistryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lifecyclePolicyText", "LifecyclePolicyText"]
            JD.string
        )
        




putLifecyclePolicyResponseToString : PutLifecyclePolicyResponse -> String -- List (String, String)
putLifecyclePolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "registryId" "" -- val.registryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "lifecyclePolicyText" "" -- val.lifecyclePolicyText
        
    --     |> Dict.toList
    ""



{-| <p>An object representing a repository.</p>
-}
type alias Repository =
    { repositoryArn : Maybe String
    , registryId : Maybe String
    , repositoryName : Maybe String
    , repositoryUri : Maybe String
    , createdAt : Maybe Posix
    , imageTagMutability : Maybe ImageTagMutability
    }



repositoryDecoder : JD.Decoder Repository
repositoryDecoder =
    JD.succeed Repository
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryArn", "RepositoryArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryId", "RegistryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryUri", "RepositoryUri"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imageTagMutability", "ImageTagMutability"]
            imageTagMutabilityDecoder
        )
        




repositoryToString : Repository -> String -- List (String, String)
repositoryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositoryArn" "" -- val.repositoryArn
        
    --     |> Dict.insert
    --         "registryId" "" -- val.registryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "repositoryUri" "" -- val.repositoryUri
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "imageTagMutability" "" -- val.imageTagMutability
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from setRepositoryPolicy
-}
type alias SetRepositoryPolicyResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , policyText : Maybe String
    }



setRepositoryPolicyResponseDecoder : JD.Decoder SetRepositoryPolicyResponse
setRepositoryPolicyResponseDecoder =
    JD.succeed SetRepositoryPolicyResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryId", "RegistryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["policyText", "PolicyText"]
            JD.string
        )
        




setRepositoryPolicyResponseToString : SetRepositoryPolicyResponse -> String -- List (String, String)
setRepositoryPolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "registryId" "" -- val.registryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "policyText" "" -- val.policyText
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startLifecyclePolicyPreview
-}
type alias StartLifecyclePolicyPreviewResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , lifecyclePolicyText : Maybe String
    , status : Maybe LifecyclePolicyPreviewStatus
    }



startLifecyclePolicyPreviewResponseDecoder : JD.Decoder StartLifecyclePolicyPreviewResponse
startLifecyclePolicyPreviewResponseDecoder =
    JD.succeed StartLifecyclePolicyPreviewResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryId", "RegistryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lifecyclePolicyText", "LifecyclePolicyText"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            lifecyclePolicyPreviewStatusDecoder
        )
        




startLifecyclePolicyPreviewResponseToString : StartLifecyclePolicyPreviewResponse -> String -- List (String, String)
startLifecyclePolicyPreviewResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "registryId" "" -- val.registryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "lifecyclePolicyText" "" -- val.lifecyclePolicyText
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| <p>The metadata that you apply to a resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
-}
type alias Tag =
    { key : Maybe String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.optional
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



{-| Type of HTTP response from tagResource
-}
type alias TagResourceResponse =
    { 
    }



tagResourceResponseDecoder : JD.Decoder TagResourceResponse
tagResourceResponseDecoder =
    JD.succeed TagResourceResponse
        




tagResourceResponseToString : TagResourceResponse -> String -- List (String, String)
tagResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `TagStatus_TAGGED`
* `TagStatus_UNTAGGED`
* `TagStatus_ANY`

-}
type TagStatus
    = TagStatus_TAGGED
    | TagStatus_UNTAGGED
    | TagStatus_ANY



tagStatusDecoder : JD.Decoder TagStatus
tagStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TAGGED" ->
                        JD.succeed TagStatus_TAGGED

                    "UNTAGGED" ->
                        JD.succeed TagStatus_UNTAGGED

                    "ANY" ->
                        JD.succeed TagStatus_ANY


                    _ ->
                        JD.fail "bad thing"
            )




tagStatusToString : TagStatus -> String
tagStatusToString val =
    case val of
        TagStatus_TAGGED ->
            "TAGGED"

        TagStatus_UNTAGGED ->
            "UNTAGGED"

        TagStatus_ANY ->
            "ANY"




{-| Type of HTTP response from untagResource
-}
type alias UntagResourceResponse =
    { 
    }



untagResourceResponseDecoder : JD.Decoder UntagResourceResponse
untagResourceResponseDecoder =
    JD.succeed UntagResourceResponse
        




untagResourceResponseToString : UntagResourceResponse -> String -- List (String, String)
untagResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from uploadLayerPart
-}
type alias UploadLayerPartResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , uploadId : Maybe String
    , lastByteReceived : Maybe Int
    }



uploadLayerPartResponseDecoder : JD.Decoder UploadLayerPartResponse
uploadLayerPartResponseDecoder =
    JD.succeed UploadLayerPartResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryId", "RegistryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["uploadId", "UploadId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastByteReceived", "LastByteReceived"]
            JD.int
        )
        




uploadLayerPartResponseToString : UploadLayerPartResponse -> String -- List (String, String)
uploadLayerPartResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "registryId" "" -- val.registryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "uploadId" "" -- val.uploadId
        
    --     |> Dict.insert
    --         "lastByteReceived" "" -- val.lastByteReceived
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias BatchCheckLayerAvailabilityRequest =
    { registryId : Maybe String
    , repositoryName : String
    , layerDigests : (List String)
    }


{-| <p>Deletes specified images within a specified repository. Images are specified with either the <code>imageTag</code> or <code>imageDigest</code>.</p>
-}
type alias BatchDeleteImageRequest =
    { registryId : Maybe String
    , repositoryName : String
    , imageIds : (List ImageIdentifier)
    }


{-| undefined
-}
type alias BatchGetImageRequest =
    { registryId : Maybe String
    , repositoryName : String
    , imageIds : (List ImageIdentifier)
    , acceptedMediaTypes : Maybe (List String)
    }


{-| undefined
-}
type alias CompleteLayerUploadRequest =
    { registryId : Maybe String
    , repositoryName : String
    , uploadId : String
    , layerDigests : (List String)
    }


{-| undefined
-}
type alias CreateRepositoryRequest =
    { repositoryName : String
    , tags : Maybe (List Tag)
    , imageTagMutability : Maybe ImageTagMutability
    }


{-| undefined
-}
type alias DeleteLifecyclePolicyRequest =
    { registryId : Maybe String
    , repositoryName : String
    }


{-| undefined
-}
type alias DeleteRepositoryPolicyRequest =
    { registryId : Maybe String
    , repositoryName : String
    }


{-| undefined
-}
type alias DeleteRepositoryRequest =
    { registryId : Maybe String
    , repositoryName : String
    , force : Maybe Bool
    }


{-| undefined
-}
type alias DescribeImagesRequest =
    { registryId : Maybe String
    , repositoryName : String
    , imageIds : Maybe (List ImageIdentifier)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , filter : Maybe DescribeImagesFilter
    }


{-| undefined
-}
type alias DescribeRepositoriesRequest =
    { registryId : Maybe String
    , repositoryNames : Maybe (List String)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetAuthorizationTokenRequest =
    { registryIds : Maybe (List String)
    }


{-| undefined
-}
type alias GetDownloadUrlForLayerRequest =
    { registryId : Maybe String
    , repositoryName : String
    , layerDigest : String
    }


{-| undefined
-}
type alias GetLifecyclePolicyPreviewRequest =
    { registryId : Maybe String
    , repositoryName : String
    , imageIds : Maybe (List ImageIdentifier)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , filter : Maybe LifecyclePolicyPreviewFilter
    }


{-| undefined
-}
type alias GetLifecyclePolicyRequest =
    { registryId : Maybe String
    , repositoryName : String
    }


{-| undefined
-}
type alias GetRepositoryPolicyRequest =
    { registryId : Maybe String
    , repositoryName : String
    }


{-| undefined
-}
type alias InitiateLayerUploadRequest =
    { registryId : Maybe String
    , repositoryName : String
    }


{-| undefined
-}
type alias ListImagesRequest =
    { registryId : Maybe String
    , repositoryName : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , filter : Maybe ListImagesFilter
    }


{-| undefined
-}
type alias ListTagsForResourceRequest =
    { resourceArn : String
    }


{-| undefined
-}
type alias PutImageRequest =
    { registryId : Maybe String
    , repositoryName : String
    , imageManifest : String
    , imageTag : Maybe String
    }


{-| undefined
-}
type alias PutImageTagMutabilityRequest =
    { registryId : Maybe String
    , repositoryName : String
    , imageTagMutability : ImageTagMutability
    }


{-| undefined
-}
type alias PutLifecyclePolicyRequest =
    { registryId : Maybe String
    , repositoryName : String
    , lifecyclePolicyText : String
    }


{-| undefined
-}
type alias SetRepositoryPolicyRequest =
    { registryId : Maybe String
    , repositoryName : String
    , policyText : String
    , force : Maybe Bool
    }


{-| undefined
-}
type alias StartLifecyclePolicyPreviewRequest =
    { registryId : Maybe String
    , repositoryName : String
    , lifecyclePolicyText : Maybe String
    }


{-| undefined
-}
type alias TagResourceRequest =
    { resourceArn : String
    , tags : (List Tag)
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { resourceArn : String
    , tagKeys : (List String)
    }


{-| undefined
-}
type alias UploadLayerPartRequest =
    { registryId : Maybe String
    , repositoryName : String
    , uploadId : String
    , partFirstByte : Int
    , partLastByte : Int
    , layerPartBlob : String
    }






authorizationDataEncoder : AuthorizationData -> JE.Value
authorizationDataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authorizationToken", data.authorizationToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("expiresAt", data.expiresAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("proxyEndpoint", data.proxyEndpoint)
        
        
        |> JE.object






batchCheckLayerAvailabilityRequestEncoder : BatchCheckLayerAvailabilityRequest -> JE.Value
batchCheckLayerAvailabilityRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("layerDigests", data.layerDigests |> (JE.list (JE.string)))
        
        
        |> JE.object






batchCheckLayerAvailabilityResponseEncoder : BatchCheckLayerAvailabilityResponse -> JE.Value
batchCheckLayerAvailabilityResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (layerEncoder))
            ("layers", data.layers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (layerFailureEncoder))
            ("failures", data.failures)
        
        
        |> JE.object






batchDeleteImageRequestEncoder : BatchDeleteImageRequest -> JE.Value
batchDeleteImageRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("imageIds", data.imageIds |> (JE.list (imageIdentifierEncoder)))
        
        
        |> JE.object






batchDeleteImageResponseEncoder : BatchDeleteImageResponse -> JE.Value
batchDeleteImageResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (imageIdentifierEncoder))
            ("imageIds", data.imageIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (imageFailureEncoder))
            ("failures", data.failures)
        
        
        |> JE.object






batchGetImageRequestEncoder : BatchGetImageRequest -> JE.Value
batchGetImageRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("imageIds", data.imageIds |> (JE.list (imageIdentifierEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("acceptedMediaTypes", data.acceptedMediaTypes)
        
        
        |> JE.object






batchGetImageResponseEncoder : BatchGetImageResponse -> JE.Value
batchGetImageResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (imageEncoder))
            ("images", data.images)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (imageFailureEncoder))
            ("failures", data.failures)
        
        
        |> JE.object






completeLayerUploadRequestEncoder : CompleteLayerUploadRequest -> JE.Value
completeLayerUploadRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("uploadId", data.uploadId |> (JE.string))
        
        
        
        |> (::) ("layerDigests", data.layerDigests |> (JE.list (JE.string)))
        
        
        |> JE.object






completeLayerUploadResponseEncoder : CompleteLayerUploadResponse -> JE.Value
completeLayerUploadResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("uploadId", data.uploadId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("layerDigest", data.layerDigest)
        
        
        |> JE.object






createRepositoryRequestEncoder : CreateRepositoryRequest -> JE.Value
createRepositoryRequestEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (imageTagMutabilityToString >> JE.string)
            ("imageTagMutability", data.imageTagMutability)
        
        
        |> JE.object






createRepositoryResponseEncoder : CreateRepositoryResponse -> JE.Value
createRepositoryResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (repositoryEncoder)
            ("repository", data.repository)
        
        
        |> JE.object






deleteLifecyclePolicyRequestEncoder : DeleteLifecyclePolicyRequest -> JE.Value
deleteLifecyclePolicyRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        |> JE.object






deleteLifecyclePolicyResponseEncoder : DeleteLifecyclePolicyResponse -> JE.Value
deleteLifecyclePolicyResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lifecyclePolicyText", data.lifecyclePolicyText)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastEvaluatedAt", data.lastEvaluatedAt)
        
        
        |> JE.object






deleteRepositoryPolicyRequestEncoder : DeleteRepositoryPolicyRequest -> JE.Value
deleteRepositoryPolicyRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        |> JE.object






deleteRepositoryPolicyResponseEncoder : DeleteRepositoryPolicyResponse -> JE.Value
deleteRepositoryPolicyResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("policyText", data.policyText)
        
        
        |> JE.object






deleteRepositoryRequestEncoder : DeleteRepositoryRequest -> JE.Value
deleteRepositoryRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("force", data.force)
        
        
        |> JE.object






deleteRepositoryResponseEncoder : DeleteRepositoryResponse -> JE.Value
deleteRepositoryResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (repositoryEncoder)
            ("repository", data.repository)
        
        
        |> JE.object






describeImagesFilterEncoder : DescribeImagesFilter -> JE.Value
describeImagesFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (tagStatusToString >> JE.string)
            ("tagStatus", data.tagStatus)
        
        
        |> JE.object






describeImagesRequestEncoder : DescribeImagesRequest -> JE.Value
describeImagesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (imageIdentifierEncoder))
            ("imageIds", data.imageIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (describeImagesFilterEncoder)
            ("filter", data.filter)
        
        
        |> JE.object






describeImagesResponseEncoder : DescribeImagesResponse -> JE.Value
describeImagesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (imageDetailEncoder))
            ("imageDetails", data.imageDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeRepositoriesRequestEncoder : DescribeRepositoriesRequest -> JE.Value
describeRepositoriesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("repositoryNames", data.repositoryNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






describeRepositoriesResponseEncoder : DescribeRepositoriesResponse -> JE.Value
describeRepositoriesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (repositoryEncoder))
            ("repositories", data.repositories)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






getAuthorizationTokenRequestEncoder : GetAuthorizationTokenRequest -> JE.Value
getAuthorizationTokenRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("registryIds", data.registryIds)
        
        
        |> JE.object






getAuthorizationTokenResponseEncoder : GetAuthorizationTokenResponse -> JE.Value
getAuthorizationTokenResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (authorizationDataEncoder))
            ("authorizationData", data.authorizationData)
        
        
        |> JE.object






getDownloadUrlForLayerRequestEncoder : GetDownloadUrlForLayerRequest -> JE.Value
getDownloadUrlForLayerRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("layerDigest", data.layerDigest |> (JE.string))
        
        
        |> JE.object






getDownloadUrlForLayerResponseEncoder : GetDownloadUrlForLayerResponse -> JE.Value
getDownloadUrlForLayerResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("downloadUrl", data.downloadUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("layerDigest", data.layerDigest)
        
        
        |> JE.object






getLifecyclePolicyPreviewRequestEncoder : GetLifecyclePolicyPreviewRequest -> JE.Value
getLifecyclePolicyPreviewRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (imageIdentifierEncoder))
            ("imageIds", data.imageIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lifecyclePolicyPreviewFilterEncoder)
            ("filter", data.filter)
        
        
        |> JE.object






getLifecyclePolicyPreviewResponseEncoder : GetLifecyclePolicyPreviewResponse -> JE.Value
getLifecyclePolicyPreviewResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lifecyclePolicyText", data.lifecyclePolicyText)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lifecyclePolicyPreviewStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (lifecyclePolicyPreviewResultEncoder))
            ("previewResults", data.previewResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lifecyclePolicyPreviewSummaryEncoder)
            ("summary", data.summary)
        
        
        |> JE.object






getLifecyclePolicyRequestEncoder : GetLifecyclePolicyRequest -> JE.Value
getLifecyclePolicyRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        |> JE.object






getLifecyclePolicyResponseEncoder : GetLifecyclePolicyResponse -> JE.Value
getLifecyclePolicyResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lifecyclePolicyText", data.lifecyclePolicyText)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastEvaluatedAt", data.lastEvaluatedAt)
        
        
        |> JE.object






getRepositoryPolicyRequestEncoder : GetRepositoryPolicyRequest -> JE.Value
getRepositoryPolicyRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        |> JE.object






getRepositoryPolicyResponseEncoder : GetRepositoryPolicyResponse -> JE.Value
getRepositoryPolicyResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("policyText", data.policyText)
        
        
        |> JE.object






imageEncoder : Image -> JE.Value
imageEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (imageIdentifierEncoder)
            ("imageId", data.imageId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("imageManifest", data.imageManifest)
        
        
        |> JE.object










imageDetailEncoder : ImageDetail -> JE.Value
imageDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("imageDigest", data.imageDigest)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("imageTags", data.imageTags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("imageSizeInBytes", data.imageSizeInBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("imagePushedAt", data.imagePushedAt)
        
        
        |> JE.object






imageFailureEncoder : ImageFailure -> JE.Value
imageFailureEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (imageIdentifierEncoder)
            ("imageId", data.imageId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (imageFailureCodeToString >> JE.string)
            ("failureCode", data.failureCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("failureReason", data.failureReason)
        
        
        |> JE.object










imageIdentifierEncoder : ImageIdentifier -> JE.Value
imageIdentifierEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("imageDigest", data.imageDigest)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("imageTag", data.imageTag)
        
        
        |> JE.object










initiateLayerUploadRequestEncoder : InitiateLayerUploadRequest -> JE.Value
initiateLayerUploadRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        |> JE.object






initiateLayerUploadResponseEncoder : InitiateLayerUploadResponse -> JE.Value
initiateLayerUploadResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("uploadId", data.uploadId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("partSize", data.partSize)
        
        
        |> JE.object






layerEncoder : Layer -> JE.Value
layerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("layerDigest", data.layerDigest)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (layerAvailabilityToString >> JE.string)
            ("layerAvailability", data.layerAvailability)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("layerSize", data.layerSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("mediaType", data.mediaType)
        
        
        |> JE.object










layerFailureEncoder : LayerFailure -> JE.Value
layerFailureEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("layerDigest", data.layerDigest)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (layerFailureCodeToString >> JE.string)
            ("failureCode", data.failureCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("failureReason", data.failureReason)
        
        
        |> JE.object










lifecyclePolicyPreviewFilterEncoder : LifecyclePolicyPreviewFilter -> JE.Value
lifecyclePolicyPreviewFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (tagStatusToString >> JE.string)
            ("tagStatus", data.tagStatus)
        
        
        |> JE.object






lifecyclePolicyPreviewResultEncoder : LifecyclePolicyPreviewResult -> JE.Value
lifecyclePolicyPreviewResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("imageTags", data.imageTags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("imageDigest", data.imageDigest)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("imagePushedAt", data.imagePushedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lifecyclePolicyRuleActionEncoder)
            ("action", data.action)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("appliedRulePriority", data.appliedRulePriority)
        
        
        |> JE.object










lifecyclePolicyPreviewSummaryEncoder : LifecyclePolicyPreviewSummary -> JE.Value
lifecyclePolicyPreviewSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("expiringImageTotalCount", data.expiringImageTotalCount)
        
        
        |> JE.object






lifecyclePolicyRuleActionEncoder : LifecyclePolicyRuleAction -> JE.Value
lifecyclePolicyRuleActionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (imageActionTypeToString >> JE.string)
            ("type", data.type_)
        
        
        |> JE.object






listImagesFilterEncoder : ListImagesFilter -> JE.Value
listImagesFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (tagStatusToString >> JE.string)
            ("tagStatus", data.tagStatus)
        
        
        |> JE.object






listImagesRequestEncoder : ListImagesRequest -> JE.Value
listImagesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (listImagesFilterEncoder)
            ("filter", data.filter)
        
        
        |> JE.object






listImagesResponseEncoder : ListImagesResponse -> JE.Value
listImagesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (imageIdentifierEncoder))
            ("imageIds", data.imageIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listTagsForResourceRequestEncoder : ListTagsForResourceRequest -> JE.Value
listTagsForResourceRequestEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        |> JE.object






listTagsForResourceResponseEncoder : ListTagsForResourceResponse -> JE.Value
listTagsForResourceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






putImageRequestEncoder : PutImageRequest -> JE.Value
putImageRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("imageManifest", data.imageManifest |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("imageTag", data.imageTag)
        
        
        |> JE.object






putImageResponseEncoder : PutImageResponse -> JE.Value
putImageResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (imageEncoder)
            ("image", data.image)
        
        
        |> JE.object






putImageTagMutabilityRequestEncoder : PutImageTagMutabilityRequest -> JE.Value
putImageTagMutabilityRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("imageTagMutability", data.imageTagMutability |> (imageTagMutabilityToString >> JE.string))
        
        
        |> JE.object






putImageTagMutabilityResponseEncoder : PutImageTagMutabilityResponse -> JE.Value
putImageTagMutabilityResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (imageTagMutabilityToString >> JE.string)
            ("imageTagMutability", data.imageTagMutability)
        
        
        |> JE.object






putLifecyclePolicyRequestEncoder : PutLifecyclePolicyRequest -> JE.Value
putLifecyclePolicyRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("lifecyclePolicyText", data.lifecyclePolicyText |> (JE.string))
        
        
        |> JE.object






putLifecyclePolicyResponseEncoder : PutLifecyclePolicyResponse -> JE.Value
putLifecyclePolicyResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lifecyclePolicyText", data.lifecyclePolicyText)
        
        
        |> JE.object






repositoryEncoder : Repository -> JE.Value
repositoryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryArn", data.repositoryArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryUri", data.repositoryUri)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (imageTagMutabilityToString >> JE.string)
            ("imageTagMutability", data.imageTagMutability)
        
        
        |> JE.object






setRepositoryPolicyRequestEncoder : SetRepositoryPolicyRequest -> JE.Value
setRepositoryPolicyRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("policyText", data.policyText |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("force", data.force)
        
        
        |> JE.object






setRepositoryPolicyResponseEncoder : SetRepositoryPolicyResponse -> JE.Value
setRepositoryPolicyResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("policyText", data.policyText)
        
        
        |> JE.object






startLifecyclePolicyPreviewRequestEncoder : StartLifecyclePolicyPreviewRequest -> JE.Value
startLifecyclePolicyPreviewRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lifecyclePolicyText", data.lifecyclePolicyText)
        
        
        |> JE.object






startLifecyclePolicyPreviewResponseEncoder : StartLifecyclePolicyPreviewResponse -> JE.Value
startLifecyclePolicyPreviewResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lifecyclePolicyText", data.lifecyclePolicyText)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lifecyclePolicyPreviewStatusToString >> JE.string)
            ("status", data.status)
        
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object






tagResourceRequestEncoder : TagResourceRequest -> JE.Value
tagResourceRequestEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object






tagResourceResponseEncoder : TagResourceResponse -> JE.Value
tagResourceResponseEncoder data =
    []
        
        |> JE.object










untagResourceRequestEncoder : UntagResourceRequest -> JE.Value
untagResourceRequestEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("tagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






untagResourceResponseEncoder : UntagResourceResponse -> JE.Value
untagResourceResponseEncoder data =
    []
        
        |> JE.object






uploadLayerPartRequestEncoder : UploadLayerPartRequest -> JE.Value
uploadLayerPartRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("uploadId", data.uploadId |> (JE.string))
        
        
        
        |> (::) ("partFirstByte", data.partFirstByte |> (JE.int))
        
        
        
        |> (::) ("partLastByte", data.partLastByte |> (JE.int))
        
        
        
        |> (::) ("layerPartBlob", data.layerPartBlob |> (JE.string))
        
        
        |> JE.object






uploadLayerPartResponseEncoder : UploadLayerPartResponse -> JE.Value
uploadLayerPartResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("registryId", data.registryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("uploadId", data.uploadId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("lastByteReceived", data.lastByteReceived)
        
        
        |> JE.object





